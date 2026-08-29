from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


def _load_renderer():
    path = Path(__file__).parents[1] / "scripts" / "render_devai_formula.py"
    spec = importlib.util.spec_from_file_location("render_devai_formula", path)
    if spec is None or spec.loader is None:
        raise RuntimeError("renderer could not be loaded")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class RenderDevaiFormulaTest(unittest.TestCase):
    def test_renders_immutable_architecture_urls_and_checksums(self) -> None:
        renderer = _load_renderer()
        formula = renderer.render("0.1.0", "a" * 64, "b" * 64)

        self.assertIn("devai-v0.1.0/devai-0.1.0-darwin-amd64.tar.gz", formula)
        self.assertIn("devai-v0.1.0/devai-0.1.0-darwin-arm64.tar.gz", formula)
        self.assertIn(f'sha256 "{"a" * 64}"', formula)
        self.assertIn(f'sha256 "{"b" * 64}"', formula)

    def test_rejects_untrusted_render_inputs(self) -> None:
        renderer = _load_renderer()

        with self.assertRaises(ValueError):
            renderer.render("0.1.0\nend", "a" * 64, "b" * 64)
        with self.assertRaises(ValueError):
            renderer.render("0.1.0", "not-a-sha", "b" * 64)


if __name__ == "__main__":
    unittest.main()

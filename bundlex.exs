defmodule Membrane.Element.Mad.BundlexProject do
  use Bundlex.Project
  def project() do
    [
      nif: nif(Bundlex.platform)
    ]
  end

  def nif(_platform) do
    [
      decoder: [
        deps: [membrane_common_c: :log],
        sources: ["decoder.c"],
        pkg_configs: ["mad"]
      ]
    ]
  end
end

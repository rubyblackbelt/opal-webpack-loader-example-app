### Opal Webpack
#
# to get fingerprinted assets in production we need to have this
# this is used by the owl_javascript_tag helper
# assets must be build first for the manifest file to be generated

class OpalWebpackManifest
  def self.manifest
    @manifest ||= JSON.parse(File.read(File.join(Rails.root, 'public', 'packs', 'manifest.json')))
  end

  def self.lookup_path_for(asset)
    manifest[asset]
  end
end

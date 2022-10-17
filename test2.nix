{
webserver =
{ modulesPath, ... }: {
  imports = [ "${modulesPath}/virtualisation/amazon-image.nix" ];
  ec2.hvm = true;

  services.nginx.enable = true;
  networking.firewall.allowedTCPPorts = [ 80 ];
};
}

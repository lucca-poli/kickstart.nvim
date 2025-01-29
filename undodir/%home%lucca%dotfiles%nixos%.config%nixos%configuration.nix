Vim�UnDo� 	�)����L/��d��)r�"��[^Ѳ�   �                                  go;7    _�                     �       ����                                                                                                                                                                                                                                                                                                                                                             gn��     �   �   �   �        �   �   �   �    �   �   �   �        �   �   �   �    5��    �                                           �    �                                           �    �                                          �    �                                          �    �                    .                     �    �              	       1              P      5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             gn��     �   �   �   �      `  description = "Convert 16-bit brightness values to 8-bit before systemd-backlight applies it";5��    �                     W                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             gn��     �   �   �   �      @  before = [ "systemd-backlight@backlight:amdgpu_bl0.service" ];5��    �                     �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             gn��     �   �   �   �      %  wantedBy = [ "multi-user.target" ];5��    �                     �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             gn��     �   �   �   �        serviceConfig = {5��    �                     %                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             gn��     �   �   �   �          Type = "oneshot";5��    �                     =                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             gn��     �   �   �   �      1    ExecStart = [ "/path/to/fix-brightness.sh" ];5��    �                     U                     5�_�      	              �       ����                                                                                                                                                                                                                                                                                                                                                             gn��     �   �   �   �        };5��    �                     �                     5�_�      
           	   �        ����                                                                                                                                                                                                                                                                                                                                                             gn��     �   �   �   �      };5��    �                      �                     5�_�   	              
   �       ����                                                                                                                                                                                                                                                                                                                                                             gn�     �   �   �   �      3      ExecStart = [ "/path/to/fix-brightness.sh" ];5��    �                     f                     5�_�   
                 �       ����                                                                                                                                                                                                                                                                                                                                                             gn�     �   �   �   �      4      ExecStart = [ "~/path/to/fix-brightness.sh" ];5��    �                    h                    �    �                    h                    �    �                    h                    �    �                    h                    �    �                    h                    �    �                    h                    �    �                    p                    �    �                    p                    �    �   %       	       
   v      	       
       �    �   %       
          v      
              �    �   %                 v                    �    �   %                 v                    �    �   %                 v                    5�_�                    �   6    ����                                                                                                                                                                                                                                                                                                                                                             gn�'    �   �   �   �      O      ExecStart = [ "~/.config/nixos/fix-brightness.sh/to/fix-brightness.sh" ];5��    �   6                  �                     5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �   $       �          V   %    go)�     �   �   �   �      %  systemd.services.fix-brightness = {�   �   �   �    �   �   �          b    description = "Convert 16-bit brightness values to 8-bit before systemd-backlight applies it";   B    before = [ "systemd-backlight@backlight:amdgpu_bl0.service" ];   '    wantedBy = [ "multi-user.target" ];       serviceConfig = {         Type = "oneshot";   :      ExecStart = [ "~/.config/nixos/fix-brightness.sh" ];       };     };5��    �                      U      C              �    �          #           1      #               �    �              
       1                    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �                   go)�     �   �   �   �        defaultDependencies = false;     after = [ "final.target" ];      wantedBy = [ "final.target" ];     serviceConfig = {       Type = "oneshot";   1    ExecStart = [ "/path/to/fix-brightness.sh" ];     };   };�   �   �   �      4  description = "Save brightness value from AMDGPU";5��    �                      U                     �    �                      �                     �    �                      �                     �    �                      �                     �    �                      �                     �    �                                           �    �                                           �    �                      R                     �    �                      Y                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �           �                   go)�     �   �   �   �      3      ExecStart = [ "/path/to/fix-brightness.sh" ];5��    �                     4                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �   *       �          v   *    go)�    �   �   �   �      /      ExecStart = [ "//to/fix-brightness.sh" ];5��    �                    3                    �    �                    5                    �    �                    5                    �    �                    5                    �    �                    9                    �    �                    5                    �    �                    5                    �    �                 
   5             
       �    �                    =                    �    �                 	   =             	       �    �   %                 C                    �    �   %                 C                    5�_�                     �        ����                                                                                                                                                                                                                                                                                                                                                             go;6    �   �   �            # Fix in recent amdgpu bug   %  systemd.services.fix-brightness = {   6    description = "Save brightness value from AMDGPU";        defaultDependencies = false;       after = [ "final.target" ];   "    wantedBy = [ "final.target" ];       serviceConfig = {         Type = "oneshot";   :      ExecStart = [ "~/.config/nixos/fix-brightness.sh" ];       };     };            5��    �                            V              5��
#!/bin/bash

## Copyright (c) Mobidelio Professional Services.
## Licensed under the Apache 2.0 License.

## This Mobidelio Software is provided by Mobidelio on an "AS IS" basis. Mobidelio
## MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF    
## NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE
## Mobidelio SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.
##
## IN NO EVENT SHALL Mobidelio BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL
## DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
## OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE,
## REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE Mobidelio SOFTWARE, HOWEVER CAUSED AND
## WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR
## OTHERWISE, EVEN IF Mobidelio HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

##
## Download and install Microsoft apps from a package.
## Version: 1.2
##
# Description: Script to open a system settings pane programatically

# Script variables
preferencePane="$4"

systemSettingsArray=(
"storage,x-apple.systempreferences:com.apple.settings.Storage"
"softwareupdate,x-apple.systempreferences:com.apple.Software-Update-Settings.extension"
"general,x-apple.systempreferences:com.apple.systempreferences.GeneralSettings"
"security,x-apple.systempreferences:com.apple.preference.security"
"privacy,x-apple.systempreferences:com.apple.settings.PrivacySecurity.extension"
"startupdisk,x-apple.systempreferences:com.apple.preference.startupdisk"
"display,x-apple.systempreferences:com.apple.preference.displays"
"wallpaper,x-apple.systempreferences:com.apple.Wallpaper-Settings.extension"
"network,x-apple.systempreferences:com.apple.preference.network"
"wifi,x-apple.systempreferences:com.apple.Network-Settings.extension"
"profiles,x-apple.systempreferences:com.apple.Profiles-Settings.extension"
"transferorreset,x-apple.systempreferences:com.apple.Transfer-Reset-Settings.extension"
"dateandtime,x-apple.systempreferences:com.apple.Date-Time-Settings.extension"
"general,x-apple.systempreferences:com.apple.SystemProfiler.AboutExtension"
"languageandregion,x-apple.systempreferences:com.apple.Localization-Settings.extension"
"loginitems,x-apple.systempreferences:com.apple.LoginItems-Settings.extension"
"sharing,x-apple.systempreferences:com.apple.Sharing-Settings.extension"
"airdrop,x-apple.systempreferences:com.apple.AirDrop-Handoff-Settings.extension"
"timemachine,x-apple.systempreferences:com.apple.Time-Machine-Settings.extension"
"appearance,x-apple.systempreferences:com.apple.Appearance-Settings.extension"
"appleid,x-apple.systempreferences:com.apple.preferences.AppleIDPrefPane"
)

# Script functions
openSystemSettingsPane() {
    for openPane in "${systemSettingsArray[@]}"; do
        settingsPane=$(echo "$openPane" | cut -d ',' -f1)
        openCommand=$(echo "$openPane" | cut -d ',' -f2)
        if [ "$preferencePane" = "$settingsPane" ]; then
            echo -e "Opening $settingsPane..."
            open "$openCommand"
        fi
    done
}

#
# Begin Script
openSystemSettingsPane

exit $?

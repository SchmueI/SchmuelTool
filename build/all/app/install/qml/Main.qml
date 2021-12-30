/*
 * Copyright (C) 2021  Schmuel Odradek
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * schmueltool is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.7
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import io.thp.pyotherside 1.3
import Ubuntu.Components.Popups 1.3

MainView {
	id: root
	objectName: 'mainView'
	applicationName: 'schmueltool.schmuel'
	automaticOrientation: true

	width: units.gu(45)
	height: units.gu(75)

	property string appVersion : "v0.5.0"

	PageStack {
	
		id: pageStack
		Component.onCompleted: push(page0)

		Page {
		
			id: page0
			visible: false
			anchors.fill: parent

			header: PageHeader {
				id: header0
                title: i18n.tr("Schmuel Tool")
			}

			Column {
				anchors.top: header0.bottom
				anchors.bottom: parent.bottom
				anchors.left: parent.left
				anchors.right: parent.right
				ListItem {
					Label {
						text: "Copy to Waydroid"
						anchors.centerIn: parent
						font.pointSize: 35
						wrapMode: Text.WordWrap
					}
					onClicked: {
						pageStack.push(page1)

					}

				}
				ListItem {
					Label {
						text: "Copy from Waydroid"
						anchors.centerIn: parent
						font.pointSize: 35
						wrapMode: Text.WordWrap
					}
					onClicked: {
						pageStack.push(page2)

					}

				}
				ListItem {
					Label {
						text: "Restart Unity8 App"
						anchors.centerIn: parent
						font.pointSize: 35
						wrapMode: Text.WordWrap
					}
					onClicked: {
						pageStack.push(page3)

					}

				}
			}
		}
		
		Page {
			id: page1
			visible: false
			anchors.fill: parent
			header: PageHeader{
				id: header1
				title: i18n.tr('Copy to Waydroid')
			}
			
			Label {
			
				id: u2wExplain
				anchors.top: header1.bottom
				anchors.topMargin: 5
				anchors.horizontalCenter: parent.horizontalCenter
				width: 0.9 * parent.width
				text: "Click 'Copy' to easily copy your Pictures folder from your ubuntu touch storage to a dedicated directory in your waydroid container. Be carefull as this might have an heavy effect on your data usage of your device. \n\n This function will be replaced with a bind mount once I've figured out how to get this to work. Use at your own risk."
				font.pointSize: 40
				wrapMode: Text.WordWrap
			
			}
			
			Button {
				id: u2wREM
				anchors.bottom: parent.bottom
				anchors.bottomMargin: 20
				anchors.left: parent.left
				anchors.leftMargin: parent.width / 8
				color: "red"
				text: "Remove"
				onClicked: {
                    PopupUtils.open(u2wRemPrompt)
				}
			}
			
			Button{
				id: u2wCOP
				anchors.bottom: parent.bottom
				anchors.bottomMargin: 20
				anchors.right: parent.right
				anchors.rightMargin: parent.width / 8
				color: "green"
				text: "Copy"
				onClicked: {
                    PopupUtils.open(u2wCopyPrompt)
				}
			}
		}
		
		Page {
		
			id: page2
			visible: false
			anchors.fill: parent
			header: PageHeader{
				id: header2
				title: i18n.tr('Copy to Ubuntu')
			}
			
			Label {
			
				id: w2uExplain
				anchors.top: header2.bottom
				anchors.topMargin: 5
				anchors.horizontalCenter: parent.horizontalCenter
				width: 0.9 * parent.width
				text: "Click 'Copy' to easily copy your Pictures folder from your wydroid container to a dedicated directory in your ubuntu storage. Be carefull as this might have an heavy effect on your data usage of your device. \n\n This function will be replaced with a bind mount once I've figured out how to get this to work. Use at your own risk."
				font.pointSize: 40
				wrapMode: Text.WordWrap
			
			}
			
			Button {
				id: w2uREM
				anchors.bottom: parent.bottom
				anchors.bottomMargin: 20
				anchors.left: parent.left
				anchors.leftMargin: parent.width / 8
				color: "red"
				text: "Remove"
				onClicked: {
                    PopupUtils.open(w2uRemPrompt)
				}
			}
			
			Button{
				id: w2uCOP
				anchors.bottom: parent.bottom
				anchors.bottomMargin: 20
				anchors.right: parent.right
				anchors.rightMargin: parent.width / 8
				color: "green"
                text: "Copy"
				onClicked: {
                    PopupUtils.open(w2uCopyPrompt)
				}
			}
		
		}
		
		Page {
		
			id: page3
			visible: false
			anchors.fill: parent
			header: PageHeader{
				id: header3
				title: i18n.tr('Restart Unity8 (ST unity8 App)')
			}
			
			Label {
			
				id: unity8Explain
				anchors.top: header3.bottom
				anchors.topMargin: 5
				anchors.horizontalCenter: parent.horizontalCenter
				width: 0.9 * parent.width
				text: "This simple App will restart the current unity8 instance. It might come in handy as an workaround when using the phone in convergence mode or when playing around with some unity patches (such as notch-hax) It is similar to run 'restart unity8' in the terminal or restarting the service using the UT Tweak tool. \n\n However, using this App might be faster."
				font.pointSize: 40
				wrapMode: Text.WordWrap
			
			}
			
			Button {
				id: unity8REM
				anchors.bottom: parent.bottom
				anchors.bottomMargin: 20
				anchors.left: parent.left
				anchors.leftMargin: parent.width / 8
				color: "red"
				text: "Remove"
				onClicked: {
					python.call('restartapp.remove', [], function(returnValue) {
						console.log('remove was executed');
					})
				}
			}
			
			Button{
				id: unity8CRE
				anchors.bottom: parent.bottom
				anchors.bottomMargin: 20
				anchors.right: parent.right
				anchors.rightMargin: parent.width / 8
				color: "green"
				text: "Add"
				onClicked: {
					python.call('restartapp.create', [], function(returnValue) {
						console.log('create was executed');
					})
				}
			}
		
		}
    }

    /*Components for each Passwort promt to do one of the four functions*/

    Component { /*u2w Ubuntu to Waydroid Copying*/
            id: u2wCopyPrompt
            Dialog {
                id: passPrompt
                title: "Password"
                Label {
                    text: i18n.tr("Enter your password:")
                    wrapMode: Text.Wrap
                }
                TextField {
                    id: password
                    placeholderText: "password"
                    echoMode: TextInput.Password
                }

                Button {
                    text: i18n.tr("Ok")
                    color: "green"
                    onClicked: {
                        PopupUtils.close(passPrompt)
                        python.call('u2w.copy', [password.text], function(returnValue) {
                            console.log('Copy Ubuntu photos to Waydroid was executed');
                        })


                    }

                }

            }
    }

    Component { /*u2w Remove copied Ubuntu Photos from Waydroid*/
            id: u2wRemPrompt
            Dialog {
                id: passPrompt
                title: "Password"
                Label {
                    text: i18n.tr("Enter your password:")
                    wrapMode: Text.Wrap
                }
                TextField {
                    id: password
                    placeholderText: "password"
                    echoMode: TextInput.Password
                }

                Button {
                    text: i18n.tr("Ok")
                    color: "green"
                    onClicked: {
                        PopupUtils.close(passPrompt)
                        python.call('u2w.remove', [password.text], function(returnValue) {
                            console.log('Rem Ubuntu Photos on Waydroid was executed');
                        })


                    }

                }

            }
    }

    Component { /*w2u Waydroid to Ubuntu Copying*/
            id: w2uCopyPrompt
            Dialog {
                id: passPrompt
                title: "Password"
                Label {
                    text: i18n.tr("Enter your password:")
                    wrapMode: Text.Wrap
                }
                TextField {
                    id: password
                    placeholderText: "password"
                    echoMode: TextInput.Password
                }

                Button {
                    text: i18n.tr("Ok")
                    color: "green"
                    onClicked: {
                        PopupUtils.close(passPrompt)
                        python.call('w2u.copy', [password.text], function(returnValue) {
                            console.log('Copy Waydroid Photos to Ubuntu was executed');
                        })


                    }

                }

            }
    }

    Component { /*w2u Remove copied Waydroid Photos from Ubuntu*/
            id: w2uRemPrompt
            Dialog {
                id: passPrompt
                title: "Password"
                Label {
                    text: i18n.tr("Enter your password:")
                    wrapMode: Text.Wrap
                }
                TextField {
                    id: password
                    placeholderText: "password"
                    echoMode: TextInput.Password
                }

                Button {
                    text: i18n.tr("Ok")
                    color: "green"
                    onClicked: {
                        PopupUtils.close(passPrompt)
                        python.call('w2u.remove', [password.text], function(returnValue) {
                            console.log('Rem WaydroidPhotos on Ubuntu was executed');
                        })


                    }

                }

            }
    }
	
	Python {
		id: python

		Component.onCompleted: {
			addImportPath(Qt.resolvedUrl('../src/'));
			
			importNames('main', ['restartapp'], function() {
                console.log('restart app module imported from main');
			});

            importNames('copy2waydroid', ['u2w'], function(){
                console.log('u2w module imported from copy2waydroid');
            });

            importNames('copy2waydroid', ['w2u'], function(){
                console.log('w2u module imported from copy2waydroid');
            });
		}

		onError: {
			console.log('python error: ' + traceback);
		}
	}
	
}

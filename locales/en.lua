local Translations = {
    -- client
    lang_0 = 'Admin Menu',
    lang_1 = 'view admin options',
    lang_2 = 'Player Options',
    lang_3 = 'view player options',
    lang_4 = 'Troll Options',
    lang_5 = 'view troll options',
    lang_6 = 'Manage Server',
    lang_7 = 'view server options',
    lang_8 = 'Developer Options',
    lang_9 = 'view developer options',
    lang_10 = 'Admin Options Menu',
    lang_11 = 'Teleport to Marker',
    lang_12 = 'you must have a marker set before doing this',
    lang_13 = 'Self Revive',
    lang_14 = 'revive yourself from the dead',
    lang_15 = 'Go Invisible',
    lang_16 = 'toggle invisible on/off',
    lang_17 = 'God Mode',
    lang_18 = 'toggle god mode on/off',
    lang_19 = 'ID: ',
    lang_20 = '',
    lang_21 = 'Players Menu',
    lang_22 = 'Revive Player',
    lang_23 = 'revive this player',
    lang_24 = 'Player Inventory',
    lang_25 = 'open a players inventory, press [I] when open',
    lang_26 = 'Kick Player',
    lang_27 = 'kick a player from the server with reason',
    lang_28 = 'Ban Player',
    lang_29 = 'ban a player from the server with reason',
    lang_30 = 'GoTo Player',
    lang_31 = 'goto a player',
    lang_32 = 'Bring Player',
    lang_33 = 'bring a player to you',
    lang_34 = 'Toggle Freeze Player',
    lang_35 = 'toggles freeze player on/off',
    lang_36 = 'Toggle Spectate Player',
    lang_37 = 'toggles spectate on another player on/off',
    lang_38 = 'Server Options Menu',
    lang_39 = 'title',
    lang_40 = 'description',
    
    lang_42 = 'Invisible On',
    lang_43 = 'as you can see you are invisible!',
    lang_44 = 'Invisible Off',
    lang_45 = 'as you can see you are not invisible!',
    lang_46 = 'God Mode On',
    lang_47 = 'god mode is now on!',
    lang_48 = 'God Mode Off',
    lang_49 = 'god mode is now off!',
    lang_50 = 'Kick Player : ',
    lang_51 = 'Reason',
    lang_52 = 'Ban Player : ',
    lang_53 = 'Ban Type',
    lang_54 = 'Ban Time',
    lang_55 = "1 Hour",
    lang_56 = "6 Hours",
    lang_57 = "12 Hours",
    lang_58 = "1 Day",
    lang_59 = "3 Days",
    lang_60 = "1 Week",
    lang_61 = "1 Month",
    lang_62 = "3 Months",
    lang_63 = "6 Months",
    lang_64 = "1 Year",
    lang_65 = "Permanent",
    lang_66 = 'Player Banned',
    lang_67 = ' has been banned permanently',
    lang_68 = ' has a temporary ban set',

    -- client-dev
    lang_69 = 'Developer Menu',
    lang_70 = 'Copy Vector 2',
    lang_71 = 'Teleport to Marker',
    lang_72 = 'Copy Vector 3',
    lang_73 = 'copy vector3 coords',
    lang_74 = 'Copy Vector 4',
    lang_75 = 'copy vector4 coords',
    lang_76 = 'Copy Heading',
    lang_77 = 'copy heading',
    lang_78 = 'Coords Copied',
    lang_79 = 'vector2 coords copied to the clipboard',
    lang_80 = 'vector3 coords copied to the clipboard',
    lang_81 = 'vector4 coords copied to the clipboard',
    lang_82 = 'Heading Copied',
    lang_83 = 'heading copied to the clipboard',

    -- client troll
    lang_84 = 'Troll Player',
    lang_85 = 'Troll Options Menu',
    lang_86 = 'Wild Attack',
    lang_87 = 'troll player by activating a wild attack',
    
    lang_88 = 'Player Finances',
    lang_89 = 'adjust player finances',
    lang_90 = 'Finances Options Menu',
    lang_91 = 'Give Money',
    lang_92 = 'give money to player',
    lang_93 = 'Remove Money',
    lang_94 = 'remove money from player',
    lang_95 = 'Type',
    lang_96 = 'chose the type to give to the player',
    lang_97 = 'Amount',
    lang_98 = 'how much do you want to give?',
    lang_99 = 'chose the type to remove from the player',
    lang_115 = 'how much do you want to remove?',
    lang_116 = 'Error',
    lang_117 = 'player does not have enough ',
    lang_118 = ' to remove!',
    lang_119 = 'current players bank ballance',
    lang_120 = 'current players cash ballance',
    lang_121 = 'current players blood money ballance',
    lang_122 = 'Bank : $',
    lang_123 = 'Cash : $',
    lang_124 = 'Blood Money : $',

    -- server
    lang_100 = 'open the admin menu (Admin Only)',
    lang_101 = 'Not Allowed',
    lang_102 = 'you are not allowed to do that!',
    lang_103 = 'You have been kicked from the server',
    lang_104 = '🔸 Check our Discord for more information: ',
    lang_105 = 'You were permanently banned by the server for: Exploiting',
    lang_106 = 'You have been banned:',
    lang_107 = 'Your ban is permanent.',
    lang_108 = '🔸 Check our Discord for more information: ',
    lang_109 = 'Ban expires: ',
    lang_110 = '🔸 Lang:tCheck our Discord for more information: ',
    lang_111 = 'Freeze Player On',
    lang_112 = 'you freezed player ',
    lang_113 = 'Freeze Player Off',
    lang_114 = 'you unfreezed player ',

    lang_41 = 'Spawn Admin Horse',
    lang_125 = 'spawn a admin horse',
    lang_126 = "Spawn Admin Horse",
    lang_127 = 'Arabian White',

    lang_128 = 'Set Player on Fire',
    lang_129 = 'set a player on fire',

    lang_130 = 'Give Item',
    lang_131 = 'given an item to a player',
    lang_132 = "Give Item to Player",
    lang_133 = 'Inventory Item',
    lang_134 = 'Amount',
    lang_135 = 'Item Given',
    lang_136 = 'item successfully sent',
    
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

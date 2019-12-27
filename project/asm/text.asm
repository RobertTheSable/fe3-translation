
org !def_table_savetitles
table_savetitles:
dw savetitles_00
dw savetitles_01
dw savetitles_02
dw savetitles_03
dw savetitles_04
dw savetitles_05
dw savetitles_06
dw savetitles_07
dw savetitles_08
dw savetitles_09
dw savetitles_10
dw savetitles_11
dw savetitles_12
dw savetitles_13
dw savetitles_14
dw savetitles_15
dw savetitles_16
dw savetitles_17
dw savetitles_18
dw savetitles_19
dw savetitles_20
dw savetitles_21
dw savetitles_22
dw savetitles_23
dw savetitles_24
dw savetitles_25
dw savetitles_26
dw savetitles_27
dw savetitles_28
dw savetitles_29
dw savetitles_30
dw savetitles_31
dw savetitles_32
dw savetitles_33
dw savetitles_34
dw savetitles_35
dw savetitles_36
dw savetitles_37
dw savetitles_38
dw savetitles_39
dw savetitles_40
dw savetitles_41
dw savetitles_42
dw savetitles_43
dw savetitles_44

org !def_table_erase
table_erase:
dl erase_00
dl erase_01
dl erase_02

org !def_table_erase2
table_erase2:
dl erase2_00
dl erase2_01
dl erase2_02

org !def_saveMenu_yes
saveMenu_yes:
incbin "bin\\text\\saveMenu_yes.bin"

skip 1
saveMenu_no:
incbin "bin\\text\\saveMenu_no.bin"

org !def_saveMenu_B_C_
saveMenu_B_C_:
incbin "bin\\text\\saveMenu_B_C_.bin"

skip 5
saveMenu_B_C_B_C_old:
incbin "bin\\text\\saveMenu_B_C_B_C_old.bin"

skip 7
saveMenu_F2:
incbin "bin\\text\\saveMenu_F2.bin"

org !def_saveMenu_B_C_old
saveMenu_B_C_old:
incbin "bin\\text\\saveMenu_B_C_old.bin"

org !def_saveMenu_F1
saveMenu_F1:
incbin "bin\\text\\saveMenu_F1.bin"

org !def_miscText_playOpening
miscText_playOpening:
incbin "bin\\text\\miscText_playOpening.bin"

org !def_table_crawls
table_crawls:
dw crawls_00
dw crawls_01
dw crawls_02
dw crawls_03
dw crawls_04
dw crawls_05

org !def_table_arena
table_arena:
dl arena_00
dl arena_01
dl arena_02
dl arena_03
dl arena_04
dl arena_05
dl arena_06
dl arena_07
dl arena_08
dl arena_09

org !def_table_shopping
table_shopping:
dl shopping_00
dl shopping_01
dl shopping_02
dl shopping_03
dl shopping_04
dl shopping_05
dl shopping_06
dl shopping_07
dl shopping_08
dl shopping_09
dl shopping_10
dl shopping_11
dl shopping_12
dl shopping_13
dl shopping_14
dl shopping_15
dl shopping_16
dl shopping_17
dl shopping_18
dl shopping_19
dl shopping_20
dl shopping_21
dl shopping_22
dl shopping_23
dl shopping_24
dl shopping_25
dl shopping_26
dl shopping_27
dl shopping_28
dl shopping_29
dl shopping_30
dl shopping_31
dl shopping_32
dl shopping_33
dl shopping_34
dl shopping_35
dl shopping_36
dl shopping_37
dl shopping_38
dl shopping_39
dl shopping_40
dl shopping_41
dl shopping_42
dl shopping_43
dl shopping_44
dl shopping_45
dl shopping_46
dl shopping_47
dl shopping_48
dl shopping_49
dl shopping_50
dl shopping_51
dl shopping_52
dl shopping_53
dl shopping_54
dl shopping_55
dl shopping_56
dl shopping_57
dl shopping_58
dl shopping_59
dl shopping_60
dl shopping_61
dl shopping_62
dl shopping_63
dl shopping_64
dl shopping_65
dl shopping_66
dl shopping_67
dl shopping_68

org !def_table_storage
table_storage:
dw storage_00
dw storage_01
dw storage_02
dw storage_03
dw storage_04
dw storage_05
dw storage_06
dw storage_07
dw storage_08
dw storage_09
dw storage_10
dw storage_11
dw storage_12
dw storage_13
dw storage_14
dw storage_15
dw storage_16
dw storage_17
dw storage_18
dw storage_19
dw storage_20
dw storage_21
dw storage_22
dw storage_23
dw storage_24
dw storage_25
dw storage_26
dw storage_27
dw storage_28
dw storage_29
dw storage_30
dw storage_31
dw storage_32
dw storage_33
dw storage_34
dw storage_35
dw storage_36
dw storage_37
dw storage_38
dw storage_39
dw storage_40
dw storage_41
dw storage_42
dw storage_43
dw storage_44
dw storage_45
dw storage_46
dw storage_47
dw storage_48
dw storage_49
dw storage_50
dw storage_51
dw storage_52
dw storage_53
dw storage_54
dw storage_55
dw storage_56
dw storage_57
dw storage_58
dw storage_59
dw storage_60
dw storage_61
dw storage_62
dw storage_63
dw storage_64
dw storage_65
dw storage_66
dw storage_67
dw storage_68
dw storage_69
dw storage_70
dw storage_71
dw storage_72
dw storage_73
dw storage_74
dw storage_75
dw storage_76
dw storage_77
dw storage_78
dw storage_79
dw storage_80
dw storage_81
dw storage_82
dw storage_83
dw storage_84
dw storage_85
dw storage_86
dw storage_87
dw storage_88
dw storage_89
dw storage_90
dw storage_91
dw storage_92
dw storage_93
dw storage_94
dw storage_95
dw storage_96
dw storage_97
dw storage_98
dw storage_99
dw storage_100
dw storage_101
dw storage_102
dw storage_103
dw storage_104
dw storage_105
dw storage_106
dw storage_107
dw storage_108
dw storage_109
dw storage_110
dw storage_111
dw storage_112
dw storage_113
dw storage_114
dw storage_115
dw storage_116
dw storage_117
dw storage_118
dw storage_119
dw storage_120
dw storage_121
dw storage_122
dw storage_123
dw storage_124
dw storage_125
dw storage_126

org !def_table_dialogue
table_dialogue:
dl dialogue_01
dl dialogue_02
dl dialogue_03
dl dialogue_04
dl dialogue_05
dl dialogue_06
dl dialogue_07
dl dialogue_08
dl dialogue_09
dl dialogue_10
dl dialogue_11
dl dialogue_12
dl dialogue_13
dl dialogue_14
dl dialogue_15
dl dialogue_16
dl dialogue_17
dl dialogue_18
dl dialogue_19
dl dialogue_20
dl dialogue_21
dl dialogue_22
dl dialogue_23
dl dialogue_24
dl dialogue_25
dl dialogue_26
dl dialogue_27
dl dialogue_28
dl dialogue_29
dl dialogue_30
dl dialogue_31
dl dialogue_32
dl dialogue_33
dl dialogue_34
dl dialogue_35
dl dialogue_36
dl dialogue_37
dl dialogue_38
dl dialogue_39
dl dialogue_40
dl dialogue_41
dl dialogue_42
dl dialogue_43
dl dialogue_44
dl dialogue_45
dl dialogue_46
dl dialogue_47
dl dialogue_48
dl dialogue_49
dl dialogue_50
dl dialogue_51
dl dialogue_52
dl dialogue_53
dl dialogue_54
dl dialogue_55
dl dialogue_56
dl dialogue_57
dl dialogue_58
dl dialogue_59
dl dialogue_60
dl dialogue_61
dl dialogue_62
dl dialogue_63
dl dialogue_64
dl dialogue_65
dl dialogue_66
dl dialogue_67
dl dialogue_68
dl dialogue_69
dl dialogue_70
dl dialogue_71
dl dialogue_72
dl dialogue_73
dl dialogue_74
dl dialogue_75
dl dialogue_76
dl dialogue_77
dl dialogue_78
dl dialogue_79
dl dialogue_80
dl dialogue_81
dl dialogue_82
dl dialogue_83
dl dialogue_84
dl dialogue_85
dl dialogue_86
dl dialogue_87
dl dialogue_88
dl dialogue_89
dl dialogue_90
dl dialogue_91
dl dialogue_92
dl dialogue_93
dl dialogue_94
dl dialogue_95
dl dialogue_96
dl dialogue_97
dl dialogue_98
dl dialogue_99
dl dialogue_100
dl dialogue_101
dl dialogue_102
dl dialogue_103
dl dialogue_104
dl dialogue_105
dl dialogue_106
dl dialogue_107
dl dialogue_108
dl dialogue_109
dl dialogue_110
dl dialogue_111
dl dialogue_112
dl dialogue_113
dl dialogue_114
dl dialogue_115
dl dialogue_116
dl dialogue_117
dl dialogue_118
dl dialogue_119
dl dialogue_120
dl dialogue_121
dl dialogue_122
dl dialogue_123
dl dialogue_124
dl dialogue_125
dl dialogue_126
dl dialogue_127
dl dialogue_128
dl dialogue_129
dl dialogue_130
dl dialogue_131
dl dialogue_132
dl dialogue_133
dl dialogue_134
dl dialogue_135
dl dialogue_136
dl dialogue_137
dl dialogue_138
dl dialogue_139
dl dialogue_140
dl dialogue_141
dl dialogue_142
dl dialogue_143
dl dialogue_144
dl dialogue_145
dl dialogue_146
dl dialogue_147
dl dialogue_148
dl dialogue_149
dl dialogue_150
dl dialogue_151
dl dialogue_152
dl dialogue_153
dl dialogue_154
dl dialogue_155
dl dialogue_156
dl dialogue_157
dl dialogue_158
dl dialogue_159
dl dialogue_160
dl dialogue_161
dl dialogue_162
dl dialogue_163
dl dialogue_164
dl dialogue_165
dl dialogue_166
dl dialogue_167
dl dialogue_168
dl dialogue_169
dl dialogue_170
dl dialogue_171
dl dialogue_172
dl dialogue_173
dl dialogue_174
dl dialogue_175
dl dialogue_176
dl dialogue_177
dl dialogue_178
dl dialogue_179
dl dialogue_180
dl dialogue_181
dl dialogue_182
dl dialogue_183
dl dialogue_184
dl dialogue_185
dl dialogue_186
dl dialogue_187
dl dialogue_188
dl dialogue_189
dl dialogue_190
dl dialogue_191
dl dialogue_192
dl dialogue_193
dl dialogue_194
dl dialogue_195
dl dialogue_196
dl dialogue_197
dl dialogue_198
dl dialogue_199
dl dialogue_200
dl dialogue_201
dl dialogue_202
dl dialogue_203
dl dialogue_204
dl dialogue_205
dl dialogue_206
dl dialogue_207
dl dialogue_208
dl dialogue_209
dl dialogue_210
dl dialogue_211
dl dialogue_212
dl dialogue_213
dl dialogue_214
dl dialogue_215
dl dialogue_216
dl dialogue_217
dl dialogue_218
dl dialogue_219
dl dialogue_220
dl dialogue_221
dl dialogue_222
dl dialogue_223
dl dialogue_224
dl dialogue_225
dl dialogue_226
dl dialogue_227
dl dialogue_228
dl dialogue_229
dl dialogue_230
dl dialogue_231
dl dialogue_232
dl dialogue_233
dl dialogue_234
dl dialogue_235
dl dialogue_236
dl dialogue_237
dl dialogue_238
dl dialogue_239
dl dialogue_240
dl dialogue_241
dl dialogue_242
dl dialogue_243
dl dialogue_244
dl dialogue_245
dl dialogue_246
dl dialogue_247
dl dialogue_248
dl dialogue_249
dl dialogue_250
dl dialogue_251
dl dialogue_252
dl dialogue_253
dl dialogue_254
dl dialogue_255
dl dialogue_256
dl dialogue_257
dl dialogue_258
dl dialogue_259
dl dialogue_260
dl dialogue_261
dl dialogue_262
dl dialogue_263
dl dialogue_264
dl dialogue_265
dl dialogue_266
dl dialogue_267
dl dialogue_268
dl dialogue_269
dl dialogue_270
dl dialogue_271
dl dialogue_272
dl dialogue_273
dl dialogue_274
dl dialogue_275
dl dialogue_276
dl dialogue_277
dl dialogue_278
dl dialogue_279
dl dialogue_280
dl dialogue_281
dl dialogue_282
dl dialogue_283
dl dialogue_284
dl dialogue_285
dl dialogue_286
dl dialogue_287
dl dialogue_288
dl dialogue_289
dl dialogue_290
dl dialogue_291
dl dialogue_292
dl dialogue_293
dl dialogue_294
dl dialogue_295
dl dialogue_296
dl dialogue_297
dl dialogue_298
dl dialogue_299
dl dialogue_300
dl dialogue_301
dl dialogue_302
dl dialogue_303
dl dialogue_304
dl dialogue_305
dl dialogue_306
dl dialogue_307
dl dialogue_308
dl dialogue_309
dl dialogue_310
dl dialogue_311
dl dialogue_312
dl dialogue_313
dl dialogue_314
dl dialogue_315
dl dialogue_316
dl dialogue_317
dl dialogue_318
dl dialogue_319
dl dialogue_320
dl dialogue_321
dl dialogue_322
dl dialogue_323
dl dialogue_324
dl dialogue_325
dl dialogue_326
dl dialogue_327
dl dialogue_328
dl dialogue_329
dl dialogue_330
dl dialogue_331
dl dialogue_332
dl dialogue_333
dl dialogue_334
dl dialogue_335
dl dialogue_336
dl dialogue_337
dl dialogue_338
dl dialogue_339
dl dialogue_340
dl dialogue_341
dl dialogue_342
dl dialogue_343
dl dialogue_344
dl dialogue_345
dl dialogue_346
dl dialogue_347
dl dialogue_348
dl dialogue_349
dl dialogue_350
dl dialogue_351
dl dialogue_352
dl dialogue_353
dl dialogue_354
dl dialogue_355
dl dialogue_356
dl dialogue_357
dl dialogue_358
dl dialogue_359
dl dialogue_360
dl dialogue_361
dl dialogue_362
dl dialogue_363
dl dialogue_364
dl dialogue_365
dl dialogue_366
dl dialogue_367
dl dialogue_368
dl dialogue_369
dl dialogue_370
dl dialogue_371
dl dialogue_372
dl dialogue_373
dl dialogue_374
dl dialogue_375
dl dialogue_376
dl dialogue_377
dl dialogue_378
dl dialogue_379
dl dialogue_380
dl dialogue_381
dl dialogue_382
dl dialogue_383
dl dialogue_384
dl dialogue_385
dl dialogue_386
dl dialogue_387
dl dialogue_388
dl dialogue_389
dl dialogue_390
dl dialogue_391
dl dialogue_392
dl dialogue_393
dl dialogue_394
dl dialogue_395
dl dialogue_396
dl dialogue_397
dl dialogue_398
dl dialogue_399
dl dialogue_400
dl dialogue_401
dl dialogue_402
dl dialogue_403
dl dialogue_404
dl dialogue_405
dl dialogue_406
dl dialogue_407
dl dialogue_408
dl dialogue_409
dl dialogue_410
dl dialogue_411
dl dialogue_412
dl dialogue_413
dl dialogue_414
dl dialogue_415
dl dialogue_416
dl dialogue_417
dl dialogue_418
dl dialogue_419
dl dialogue_420
dl dialogue_421
dl dialogue_422
dl dialogue_423
dl dialogue_424
dl dialogue_425
dl dialogue_426
dl dialogue_427
dl dialogue_428
dl dialogue_429
dl dialogue_430
dl dialogue_431
dl dialogue_432
dl dialogue_433
dl dialogue_434
dl dialogue_435
dl dialogue_436
dl dialogue_437
dl dialogue_438
dl dialogue_439
dl dialogue_440
dl dialogue_441
dl dialogue_442
dl dialogue_443
dl dialogue_444
dl dialogue_445
dl dialogue_446
dl dialogue_447
dl dialogue_448
dl dialogue_449
dl dialogue_450
dl dialogue_451
dl dialogue_452
dl dialogue_453
dl dialogue_454
dl dialogue_455
dl dialogue_456
dl dialogue_457
dl dialogue_458
dl dialogue_459
dl dialogue_460
dl dialogue_461
dl dialogue_462
dl dialogue_463
dl dialogue_464
dl dialogue_465
dl dialogue_466
dl dialogue_467
dl dialogue_468
dl dialogue_469
dl dialogue_470
dl dialogue_471
dl dialogue_472
dl dialogue_473
dl dialogue_474
dl dialogue_475
dl dialogue_476
dl dialogue_477
dl dialogue_478
dl dialogue_479
dl dialogue_480
dl dialogue_481
dl dialogue_482
dl dialogue_483
dl dialogue_484
dl dialogue_485
dl dialogue_486
dl dialogue_487
dl dialogue_488
dl dialogue_489
dl dialogue_490
dl dialogue_491
dl dialogue_492
dl dialogue_493
dl dialogue_494
dl dialogue_495
dl dialogue_496
dl dialogue_497
dl dialogue_498
dl dialogue_499
dl dialogue_500
dl dialogue_501
dl dialogue_502
dl dialogue_503
dl dialogue_504
dl dialogue_505
dl dialogue_506
dl dialogue_507
dl dialogue_508
dl dialogue_509
dl dialogue_510
dl dialogue_511
dl dialogue_512
dl dialogue_513
dl dialogue_514
dl dialogue_515
dl dialogue_516
dl dialogue_517
dl dialogue_518
dl dialogue_519
dl dialogue_520

org !def_dialogue_200
dialogue_200:
incbin "bin\\text\\dialogue_200.bin"

org !def_table_classDescription
table_classDescription:
dl classDescription_00
dl classDescription_01
dl classDescription_02
dl classDescription_03
dl classDescription_04
dl classDescription_05
dl classDescription_06
dl classDescription_07
dl classDescription_08
dl classDescription_09
dl classDescription_10
dl classDescription_11
dl classDescription_12
dl classDescription_13
dl classDescription_14
dl classDescription_15
dl classDescription_16
dl classDescription_17
dl classDescription_18
dl classDescription_19
dl classDescription_20
dl classDescription_21
dl classDescription_22

org !def_table_CharacterEndings
table_CharacterEndings:
dw CharacterEndings_00, $001c
dw CharacterEndings_01, $009c
dw CharacterEndings_02, $001e
dw CharacterEndings_03, $0078
dw CharacterEndings_04, $001e
dw CharacterEndings_05, $0033
dw CharacterEndings_06, $001c
dw CharacterEndings_07, $0049
dw CharacterEndings_08, $001c
dw CharacterEndings_09, $0074
dw CharacterEndings_10, $001c
dw CharacterEndings_11, $0063
dw CharacterEndings_12, $001e
dw CharacterEndings_13, $0085
dw CharacterEndings_14, $001c
dw CharacterEndings_15, $008c
dw CharacterEndings_16, $0019
dw CharacterEndings_17, $0045
dw CharacterEndings_18, $0019
dw CharacterEndings_19, $0045
dw CharacterEndings_20, $001a
dw CharacterEndings_21, $006f
dw CharacterEndings_22, $001d
dw CharacterEndings_23, $0050
dw CharacterEndings_24, $0019
dw CharacterEndings_25, $0038
dw CharacterEndings_26, $001e
dw CharacterEndings_27, $0032
dw CharacterEndings_28, $0018
dw CharacterEndings_29, $0046
dw CharacterEndings_30, $001c
dw CharacterEndings_31, $0057
dw CharacterEndings_32, $001e
dw CharacterEndings_33, $0046
dw CharacterEndings_34, $001e
dw CharacterEndings_35, $005b
dw CharacterEndings_36, $001e
dw CharacterEndings_37, $005b
dw CharacterEndings_38, $001c
dw CharacterEndings_39, $0056
dw CharacterEndings_40, $001d
dw CharacterEndings_41, $005b
dw CharacterEndings_42, $001e
dw CharacterEndings_43, $004c
dw CharacterEndings_44, $001e
dw CharacterEndings_45, $0059
dw CharacterEndings_46, $001e
dw CharacterEndings_47, $002e
dw CharacterEndings_48, $0018
dw CharacterEndings_49, $0046
dw CharacterEndings_50, $001e
dw CharacterEndings_51, $0032
dw CharacterEndings_52, $001d
dw CharacterEndings_53, $005b
dw CharacterEndings_54, $001e
dw CharacterEndings_55, $0032
dw CharacterEndings_56, $001e
dw CharacterEndings_57, $0050
dw CharacterEndings_58, $0016
dw CharacterEndings_59, $008e
dw CharacterEndings_60, $001d
dw CharacterEndings_61, $0068
dw CharacterEndings_62, $001d
dw CharacterEndings_63, $0047
dw CharacterEndings_64, $001c
dw CharacterEndings_65, $003a
dw CharacterEndings_66, $001e
dw CharacterEndings_67, $0062
dw CharacterEndings_68, $001b
dw CharacterEndings_69, $004a
dw CharacterEndings_70, $001e
dw CharacterEndings_71, $0036
dw CharacterEndings_72, $001e
dw CharacterEndings_73, $0041
dw CharacterEndings_74, $001d
dw CharacterEndings_75, $0022
dw CharacterEndings_76, $0017
dw CharacterEndings_77, $00a5
dw CharacterEndings_78, $0019
dw CharacterEndings_79, $0032
dw CharacterEndings_80, $001a
dw CharacterEndings_81, $0048
dw CharacterEndings_82, $001b
dw CharacterEndings_83, $0035
dw CharacterEndings_84, $001b
dw CharacterEndings_85, $0034
dw CharacterEndings_86, $0017
dw CharacterEndings_87, $0057
dw CharacterEndings_88, $001e
dw CharacterEndings_89, $0083
dw CharacterEndings_90, $001e
dw CharacterEndings_91, $0038
dw CharacterEndings_92, $001c
dw CharacterEndings_93, $0099
dw CharacterEndings_94, $001d
dw CharacterEndings_95, $0110
dw CharacterEndings_96, $001d
dw CharacterEndings_97, $009e
dw CharacterEndings_98, $001c
dw CharacterEndings_99, $0082
dw CharacterEndings_100, $001c
dw CharacterEndings_101, $005d
dw CharacterEndings_102, $001c
dw CharacterEndings_103, $0058
dw CharacterEndings_104, $001e
dw CharacterEndings_105, $006a
dw CharacterEndings_106, $001e
dw CharacterEndings_107, $001f
dw CharacterEndings_108, $001c
dw CharacterEndings_109, $004a
dw CharacterEndings_110, $001c
dw CharacterEndings_111, $0076
dw CharacterEndings_112, $001c
dw CharacterEndings_113, $003b
dw CharacterEndings_114, $001e
dw CharacterEndings_115, $0085
dw CharacterEndings_116, $001e
dw CharacterEndings_117, $0038
dw CharacterEndings_118, $0019
dw CharacterEndings_119, $004a
dw CharacterEndings_120, $001c
dw CharacterEndings_121, $004a
dw CharacterEndings_122, $0016
dw CharacterEndings_123, $0041
dw CharacterEndings_124, $001e
dw CharacterEndings_125, $0039
dw CharacterEndings_126, $001e
dw CharacterEndings_127, $0068
dw CharacterEndings_128, $001e
dw CharacterEndings_129, $007e
dw CharacterEndings_130, $001e
dw CharacterEndings_131, $0053
dw CharacterEndings_132, $001c
dw CharacterEndings_133, $0041
dw CharacterEndings_134, $001c
dw CharacterEndings_135, $0044
dw CharacterEndings_136, $0017
dw CharacterEndings_137, $0067
dw CharacterEndings_138, $001e
dw CharacterEndings_139, $0047
dw CharacterEndings_140, $001d
dw CharacterEndings_141, $004c
dw CharacterEndings_142, $001c
dw CharacterEndings_143, $006a
dw CharacterEndings_144, $001c
dw CharacterEndings_145, $0054
dw CharacterEndings_146, $001e
dw CharacterEndings_147, $0059
dw CharacterEndings_148, $001e
dw CharacterEndings_149, $0047
dw CharacterEndings_150, $0016
dw CharacterEndings_151, $0047
dw CharacterEndings_152, $001d
dw CharacterEndings_153, $0050
dw CharacterEndings_154, $0016
dw CharacterEndings_155, $007b
dw CharacterEndings_156, $001c
dw CharacterEndings_157, $005b
dw CharacterEndings_158, $001e
dw CharacterEndings_159, $0042
dw CharacterEndings_160, $001e
dw CharacterEndings_161, $0049
dw CharacterEndings_162, $001c
dw CharacterEndings_163, $003a
dw CharacterEndings_164, $001c
dw CharacterEndings_165, $006b
dw CharacterEndings_166, $001a
dw CharacterEndings_167, $003b
dw CharacterEndings_168, $001e
dw CharacterEndings_169, $0072
dw CharacterEndings_170, $0019
dw CharacterEndings_171, $003b
dw CharacterEndings_172, $0016
dw CharacterEndings_173, $002f
dw CharacterEndings_174, $001b
dw CharacterEndings_175, $0036
dw CharacterEndings_176, $001b
dw CharacterEndings_177, $0050
dw CharacterEndings_178, $0018
dw CharacterEndings_179, $0030
dw CharacterEndings_180, $001e
dw CharacterEndings_181, $0063
dw CharacterEndings_182, $002f
dw CharacterEndings_183, $0031
dw CharacterEndings_184, $002f
dw CharacterEndings_185, $0030
dw CharacterEndings_186, $002f
dw CharacterEndings_187, $0030
dw CharacterEndings_188, $0030
dw CharacterEndings_189, $0030
dw CharacterEndings_190, $002f
dw CharacterEndings_191, $002d
dw CharacterEndings_192, $0033
dw CharacterEndings_193, $0036
dw CharacterEndings_194, $0030
dw CharacterEndings_195, $002e
dw CharacterEndings_196, $0030
dw CharacterEndings_197, $0032
dw CharacterEndings_198, $0030
dw CharacterEndings_199, $0031
dw CharacterEndings_200, $0033
dw CharacterEndings_201, $002f
dw CharacterEndings_202, $0031
dw CharacterEndings_203, $0031
dw CharacterEndings_204, $0031
dw CharacterEndings_205, $002e
dw CharacterEndings_206, $0030
dw CharacterEndings_207, $002c
dw CharacterEndings_208, $0031
dw CharacterEndings_209, $002e
dw CharacterEndings_210, $0034
dw CharacterEndings_211, $0031
dw CharacterEndings_212, $002a
dw CharacterEndings_213, $0030
dw CharacterEndings_214, $002b
dw CharacterEndings_215, $0030
dw CharacterEndings_216, $0034
dw CharacterEndings_217, $0032
dw CharacterEndings_218, $0031
dw CharacterEndings_219, $0032
dw CharacterEndings_220, $002f
dw CharacterEndings_221, $0030
dw CharacterEndings_222, $0031
dw CharacterEndings_223, $0032
dw CharacterEndings_224, $0032
dw CharacterEndings_225, $0032

org !def_endings_W_L_EXP
endings_W_L_EXP:
incbin "bin\\text\\endings_W_L_EXP.bin"

skip 14
endings_Fallen:
incbin "bin\\text\\endings_Fallen.bin"

org !def_endings_Met
endings_Met:
incbin "bin\\text\\endings_Met.bin"

skip 10
endings_book2WarOfHeroes:
incbin "bin\\text\\endings_book2WarOfHeroes.bin"

skip 2
endings_timePasses:
incbin "bin\\text\\endings_timePasses.bin"

skip 8
endings_PersonalRecords:
incbin "bin\\text\\endings_PersonalRecords.bin"

org !def_table_CharacterEndingsAlt
table_CharacterEndingsAlt:
dw $D745, $0000
dw $D745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0000
dw $d745, $0002
dw $d747, $0000
dw $d747, $0000
dw $d747, $0000
dw $d747, $0000
dw CharacterEndingsAlt_00, $005b
dw $d77c, $0000
dw $d77c, $0000
dw $d77c, $0000
dw $d77c, $0000
dw $d77c, $0000
dw $d77c, $0000
dw $d77c, $0000
dw $d77c, $0000
dw CharacterEndingsAlt_01, $0043
dw $d7ab, $0000
dw $d7ab, $0000
dw $d7ab, $0000
dw $d7ab, $0000
dw $d7ab, $0000
dw $d7ab, $0000
dw $d7ab, $0000
dw $d7ab, $0000
dw $d7ab, $0000
dw $d7ab, $0000
dw $d7ab, $0000
dw CharacterEndingsAlt_02, $0039
dw $d7e0, $0000
dw CharacterEndingsAlt_03, $005b
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw $d812, $0000
dw CharacterEndingsAlt_04, $0042
dw CharacterEndingsAlt_05, $0019

org !def_endings_SaveGameDialogue
endings_SaveGameDialogue:
incbin "bin\\text\\endings_SaveGameDialogue.bin"

org !def_endings_toBeContinued
endings_toBeContinued:
incbin "bin\\text\\endings_toBeContinued.bin"

org !def_openings_Book2OP
openings_Book2OP:
incbin "bin\\text\\openings_Book2OP.bin"

org !def_openings_Book1OP
openings_Book1OP:
incbin "bin\\text\\openings_Book1OP.bin"

org !def_table_worldmap
table_worldmap:
dl worldmap_00
dl worldmap_01
dl worldmap_02
dl worldmap_03
dl worldmap_04
dl worldmap_05
dl worldmap_06
dl worldmap_07
dl worldmap_08
dl worldmap_09
dl worldmap_10
dl worldmap_11
dl worldmap_12
dl worldmap_13
dl worldmap_14
dl worldmap_15
dl worldmap_16
dl worldmap_17
dl worldmap_18
dl worldmap_19
dl worldmap_20
dl worldmap_21
dl worldmap_22
dl worldmap_23
dl worldmap_24
dl worldmap_25
dl worldmap_26
dl worldmap_27
dl worldmap_28
dl worldmap_29
dl worldmap_30
dl worldmap_31
dl worldmap_32
dl worldmap_33
dl worldmap_34
dl worldmap_35
dl worldmap_36
dl worldmap_37
dl worldmap_38
dl worldmap_39
dl worldmap_40
dl worldmap_41

org !def_worldmap_00
worldmap_00:
incbin "bin\\text\\worldmap_00.bin"

org !def_worldmap_01
worldmap_01:
incbin "bin\\text\\worldmap_01.bin"

skip 9
worldmap_02:
incbin "bin\\text\\worldmap_02.bin"

skip 13
worldmap_03:
incbin "bin\\text\\worldmap_03.bin"

org !def_worldmap_04
worldmap_04:
incbin "bin\\text\\worldmap_04.bin"

skip 15
worldmap_05:
incbin "bin\\text\\worldmap_05.bin"

skip 12
worldmap_06:
incbin "bin\\text\\worldmap_06.bin"

skip 13
worldmap_07:
incbin "bin\\text\\worldmap_07.bin"

org !def_worldmap_08
worldmap_08:
incbin "bin\\text\\worldmap_08.bin"

skip 9
worldmap_09:
incbin "bin\\text\\worldmap_09.bin"

org !def_worldmap_10
worldmap_10:
incbin "bin\\text\\worldmap_10.bin"

skip 9
worldmap_11:
incbin "bin\\text\\worldmap_11.bin"

skip 3
worldmap_12:
incbin "bin\\text\\worldmap_12.bin"

skip 10
worldmap_13:
incbin "bin\\text\\worldmap_13.bin"

skip 12
worldmap_14:
incbin "bin\\text\\worldmap_14.bin"

skip 7
worldmap_15:
incbin "bin\\text\\worldmap_15.bin"

skip 15
worldmap_16:
incbin "bin\\text\\worldmap_16.bin"

org !def_worldmap_17
worldmap_17:
incbin "bin\\text\\worldmap_17.bin"

skip 12
worldmap_18:
incbin "bin\\text\\worldmap_18.bin"

org !def_worldmap_19
worldmap_19:
incbin "bin\\text\\worldmap_19.bin"

skip 9
worldmap_20:
incbin "bin\\text\\worldmap_20.bin"

org !def_worldmap_21
worldmap_21:
incbin "bin\\text\\worldmap_21.bin"

org !def_worldmap_22
worldmap_22:
incbin "bin\\text\\worldmap_22.bin"

org !def_worldmap_23
worldmap_23:
incbin "bin\\text\\worldmap_23.bin"

skip 12
worldmap_24:
incbin "bin\\text\\worldmap_24.bin"

skip 15
worldmap_25:
incbin "bin\\text\\worldmap_25.bin"

org !def_worldmap_26
worldmap_26:
incbin "bin\\text\\worldmap_26.bin"

skip 13
worldmap_27:
incbin "bin\\text\\worldmap_27.bin"

skip 11
worldmap_28:
incbin "bin\\text\\worldmap_28.bin"

org !def_worldmap_29
worldmap_29:
incbin "bin\\text\\worldmap_29.bin"

org !def_worldmap_30
worldmap_30:
incbin "bin\\text\\worldmap_30.bin"

skip 13
worldmap_31:
incbin "bin\\text\\worldmap_31.bin"

skip 14
worldmap_32:
incbin "bin\\text\\worldmap_32.bin"

skip 15
worldmap_33:
incbin "bin\\text\\worldmap_33.bin"

org !def_worldmap_34
worldmap_34:
incbin "bin\\text\\worldmap_34.bin"

org !def_worldmap_35
worldmap_35:
incbin "bin\\text\\worldmap_35.bin"

org !def_worldmap_36
worldmap_36:
incbin "bin\\text\\worldmap_36.bin"

org !def_worldmap_37
worldmap_37:
incbin "bin\\text\\worldmap_37.bin"

org !def_worldmap_38
worldmap_38:
incbin "bin\\text\\worldmap_38.bin"

org !def_worldmap_39
worldmap_39:
incbin "bin\\text\\worldmap_39.bin"

org !def_worldmap_40
worldmap_40:
incbin "bin\\text\\worldmap_40.bin"

org !def_worldmap_41
worldmap_41:
incbin "bin\\text\\worldmap_41.bin"

skip 13
dialogue_01:
incbin "bin\\text\\dialogue_01.bin"

org !def_dialogue_02
dialogue_02:
incbin "bin\\text\\dialogue_02.bin"

org !def_dialogue_03
dialogue_03:
incbin "bin\\text\\dialogue_03.bin"

skip 6
dialogue_04:
incbin "bin\\text\\dialogue_04.bin"

skip 5
dialogue_05:
incbin "bin\\text\\dialogue_05.bin"

skip 6
dialogue_06:
incbin "bin\\text\\dialogue_06.bin"

skip 7
dialogue_07:
incbin "bin\\text\\dialogue_07.bin"

skip 6
dialogue_08:
incbin "bin\\text\\dialogue_08.bin"

skip 6
dialogue_09:
incbin "bin\\text\\dialogue_09.bin"

skip 14
dialogue_10:
incbin "bin\\text\\dialogue_10.bin"

skip 15
dialogue_11:
incbin "bin\\text\\dialogue_11.bin"

skip 13
dialogue_12:
incbin "bin\\text\\dialogue_12.bin"

skip 3
dialogue_13:
incbin "bin\\text\\dialogue_13.bin"

org !def_dialogue_14
dialogue_14:
incbin "bin\\text\\dialogue_14.bin"

skip 14
dialogue_15:
incbin "bin\\text\\dialogue_15.bin"

skip 9
dialogue_16:
incbin "bin\\text\\dialogue_16.bin"

skip 5
dialogue_17:
incbin "bin\\text\\dialogue_17.bin"
dialogue_18:
incbin "bin\\text\\dialogue_18.bin"

org !def_dialogue_19
dialogue_19:
incbin "bin\\text\\dialogue_19.bin"

org !def_dialogue_20
dialogue_20:
incbin "bin\\text\\dialogue_20.bin"

skip 2
dialogue_21:
incbin "bin\\text\\dialogue_21.bin"

org !def_dialogue_22
dialogue_22:
incbin "bin\\text\\dialogue_22.bin"

skip 2
dialogue_23:
incbin "bin\\text\\dialogue_23.bin"

skip 14
dialogue_24:
incbin "bin\\text\\dialogue_24.bin"

skip 7
dialogue_25:
incbin "bin\\text\\dialogue_25.bin"

org !def_dialogue_26
dialogue_26:
incbin "bin\\text\\dialogue_26.bin"

skip 5
unused_unusedText21:
incbin "bin\\text\\unused_unusedText21.bin"

org $e18000
incbin "bin\\text\\unused_unusedText21bank.bin"

org !def_dialogue_27
dialogue_27:
incbin "bin\\text\\dialogue_27.bin"

org !def_dialogue_28
dialogue_28:
incbin "bin\\text\\dialogue_28.bin"

skip 2
dialogue_29:
incbin "bin\\text\\dialogue_29.bin"

org !def_dialogue_30
dialogue_30:
incbin "bin\\text\\dialogue_30.bin"

skip 7
dialogue_31:
incbin "bin\\text\\dialogue_31.bin"

org !def_dialogue_32
dialogue_32:
incbin "bin\\text\\dialogue_32.bin"

skip 7
dialogue_33:
incbin "bin\\text\\dialogue_33.bin"

org !def_dialogue_34
dialogue_34:
incbin "bin\\text\\dialogue_34.bin"

skip 10
dialogue_35:
incbin "bin\\text\\dialogue_35.bin"

skip 4
dialogue_36:
incbin "bin\\text\\dialogue_36.bin"

skip 7
dialogue_37:
incbin "bin\\text\\dialogue_37.bin"

org !def_dialogue_38
dialogue_38:
incbin "bin\\text\\dialogue_38.bin"

org !def_dialogue_39
dialogue_39:
incbin "bin\\text\\dialogue_39.bin"

skip 11
dialogue_40:
incbin "bin\\text\\dialogue_40.bin"

org !def_dialogue_41
dialogue_41:
incbin "bin\\text\\dialogue_41.bin"

skip 15
dialogue_42:
incbin "bin\\text\\dialogue_42.bin"

org !def_dialogue_43
dialogue_43:
incbin "bin\\text\\dialogue_43.bin"

skip 3
dialogue_44:
incbin "bin\\text\\dialogue_44.bin"

org !def_dialogue_45
dialogue_45:
incbin "bin\\text\\dialogue_45.bin"

org !def_dialogue_46
dialogue_46:
incbin "bin\\text\\dialogue_46.bin"

org !def_dialogue_47
dialogue_47:
incbin "bin\\text\\dialogue_47.bin"

skip 7
dialogue_48:
incbin "bin\\text\\dialogue_48.bin"

org !def_dialogue_49
dialogue_49:
incbin "bin\\text\\dialogue_49.bin"

skip 8
dialogue_50:
incbin "bin\\text\\dialogue_50.bin"

skip 9
dialogue_51:
incbin "bin\\text\\dialogue_51.bin"

org !def_dialogue_52
dialogue_52:
incbin "bin\\text\\dialogue_52.bin"

org !def_dialogue_53
dialogue_53:
incbin "bin\\text\\dialogue_53.bin"

skip 8
dialogue_54:
incbin "bin\\text\\dialogue_54.bin"

org !def_dialogue_55
dialogue_55:
incbin "bin\\text\\dialogue_55.bin"

skip 9
dialogue_56:
incbin "bin\\text\\dialogue_56.bin"

skip 3
dialogue_57:
incbin "bin\\text\\dialogue_57.bin"

org !def_dialogue_58
dialogue_58:
incbin "bin\\text\\dialogue_58.bin"

org !def_dialogue_59
dialogue_59:
incbin "bin\\text\\dialogue_59.bin"

skip 8
dialogue_60:
incbin "bin\\text\\dialogue_60.bin"

org !def_dialogue_61
dialogue_61:
incbin "bin\\text\\dialogue_61.bin"

skip 14
dialogue_62:
incbin "bin\\text\\dialogue_62.bin"

skip 11
dialogue_63:
incbin "bin\\text\\dialogue_63.bin"
dialogue_64:
incbin "bin\\text\\dialogue_64.bin"

skip 11
dialogue_65:
incbin "bin\\text\\dialogue_65.bin"

org !def_dialogue_66
dialogue_66:
incbin "bin\\text\\dialogue_66.bin"

org !def_dialogue_67
dialogue_67:
incbin "bin\\text\\dialogue_67.bin"

org !def_dialogue_68
dialogue_68:
incbin "bin\\text\\dialogue_68.bin"

skip 4
dialogue_69:
incbin "bin\\text\\dialogue_69.bin"

skip 3
dialogue_70:
incbin "bin\\text\\dialogue_70.bin"

skip 8
dialogue_71:
incbin "bin\\text\\dialogue_71.bin"

skip 1
dialogue_72:
incbin "bin\\text\\dialogue_72.bin"

skip 8
dialogue_73:
incbin "bin\\text\\dialogue_73.bin"

skip 8
dialogue_74:
incbin "bin\\text\\dialogue_74.bin"

skip 4
dialogue_75:
incbin "bin\\text\\dialogue_75.bin"

org !def_dialogue_76
dialogue_76:
incbin "bin\\text\\dialogue_76.bin"

org !def_dialogue_77
dialogue_77:
incbin "bin\\text\\dialogue_77.bin"

skip 8
dialogue_78:
incbin "bin\\text\\dialogue_78.bin"

org !def_dialogue_79
dialogue_79:
incbin "bin\\text\\dialogue_79.bin"

org !def_dialogue_80
dialogue_80:
incbin "bin\\text\\dialogue_80.bin"

org !def_dialogue_81
dialogue_81:
incbin "bin\\text\\dialogue_81.bin"

skip 9
dialogue_82:
incbin "bin\\text\\dialogue_82.bin"

org !def_dialogue_83
dialogue_83:
incbin "bin\\text\\dialogue_83.bin"

skip 9
dialogue_84:
incbin "bin\\text\\dialogue_84.bin"

skip 10
dialogue_85:
incbin "bin\\text\\dialogue_85.bin"

skip 15
dialogue_86:
incbin "bin\\text\\dialogue_86.bin"

skip 10
dialogue_87:
incbin "bin\\text\\dialogue_87.bin"

skip 2
dialogue_88:
incbin "bin\\text\\dialogue_88.bin"

skip 10
dialogue_89:
incbin "bin\\text\\dialogue_89.bin"

skip 12
dialogue_90:
incbin "bin\\text\\dialogue_90.bin"

skip 7
dialogue_91:
incbin "bin\\text\\dialogue_91.bin"

skip 5
dialogue_92:
incbin "bin\\text\\dialogue_92.bin"

skip 8
dialogue_93:
incbin "bin\\text\\dialogue_93.bin"

skip 2
dialogue_94:
incbin "bin\\text\\dialogue_94.bin"

org !def_dialogue_95
dialogue_95:
incbin "bin\\text\\dialogue_95.bin"

org !def_dialogue_96
dialogue_96:
incbin "bin\\text\\dialogue_96.bin"

skip 10
dialogue_97:
incbin "bin\\text\\dialogue_97.bin"

org !def_dialogue_98
dialogue_98:
incbin "bin\\text\\dialogue_98.bin"

org !def_dialogue_99
dialogue_99:
incbin "bin\\text\\dialogue_99.bin"

skip 13
dialogue_100:
incbin "bin\\text\\dialogue_100.bin"

skip 10
dialogue_101:
incbin "bin\\text\\dialogue_101.bin"

skip 12
dialogue_102:
incbin "bin\\text\\dialogue_102.bin"

skip 9
dialogue_103:
incbin "bin\\text\\dialogue_103.bin"

skip 8
dialogue_104:
incbin "bin\\text\\dialogue_104.bin"

skip 13
dialogue_105:
incbin "bin\\text\\dialogue_105.bin"

skip 11
dialogue_106:
incbin "bin\\text\\dialogue_106.bin"

org !def_dialogue_107
dialogue_107:
incbin "bin\\text\\dialogue_107.bin"

org !def_dialogue_108
dialogue_108:
incbin "bin\\text\\dialogue_108.bin"

skip 11
dialogue_109:
incbin "bin\\text\\dialogue_109.bin"

skip 7
dialogue_110:
incbin "bin\\text\\dialogue_110.bin"

skip 9
dialogue_111:
incbin "bin\\text\\dialogue_111.bin"

org !def_unused_unusedText22
unused_unusedText22:
incbin "bin\\text\\unused_unusedText22.bin"

org $e28000
incbin "bin\\text\\unused_unusedText22bank.bin"

org !def_dialogue_112
dialogue_112:
incbin "bin\\text\\dialogue_112.bin"

org !def_dialogue_113
dialogue_113:
incbin "bin\\text\\dialogue_113.bin"

skip 5
dialogue_114:
incbin "bin\\text\\dialogue_114.bin"

org !def_dialogue_115
dialogue_115:
incbin "bin\\text\\dialogue_115.bin"

org !def_dialogue_116
dialogue_116:
incbin "bin\\text\\dialogue_116.bin"

org !def_dialogue_117
dialogue_117:
incbin "bin\\text\\dialogue_117.bin"

skip 9
dialogue_118:
incbin "bin\\text\\dialogue_118.bin"

skip 11
dialogue_119:
incbin "bin\\text\\dialogue_119.bin"

skip 8
dialogue_120:
incbin "bin\\text\\dialogue_120.bin"

org !def_dialogue_121
dialogue_121:
incbin "bin\\text\\dialogue_121.bin"

skip 7
dialogue_122:
incbin "bin\\text\\dialogue_122.bin"

org !def_dialogue_123
dialogue_123:
incbin "bin\\text\\dialogue_123.bin"

org !def_dialogue_124
dialogue_124:
incbin "bin\\text\\dialogue_124.bin"

skip 13
dialogue_125:
incbin "bin\\text\\dialogue_125.bin"

skip 12
dialogue_126:
incbin "bin\\text\\dialogue_126.bin"

org !def_dialogue_127
dialogue_127:
incbin "bin\\text\\dialogue_127.bin"

skip 5
dialogue_128:
incbin "bin\\text\\dialogue_128.bin"

skip 15
dialogue_129:
incbin "bin\\text\\dialogue_129.bin"

org !def_dialogue_130
dialogue_130:
incbin "bin\\text\\dialogue_130.bin"

org !def_dialogue_131
dialogue_131:
incbin "bin\\text\\dialogue_131.bin"

skip 7
dialogue_132:
incbin "bin\\text\\dialogue_132.bin"

org !def_dialogue_133
dialogue_133:
incbin "bin\\text\\dialogue_133.bin"

org !def_dialogue_134
dialogue_134:
incbin "bin\\text\\dialogue_134.bin"

skip 5
dialogue_135:
incbin "bin\\text\\dialogue_135.bin"

skip 13
dialogue_136:
incbin "bin\\text\\dialogue_136.bin"

org !def_dialogue_137
dialogue_137:
incbin "bin\\text\\dialogue_137.bin"

org !def_dialogue_138
dialogue_138:
incbin "bin\\text\\dialogue_138.bin"

skip 7
dialogue_139:
incbin "bin\\text\\dialogue_139.bin"

skip 15
dialogue_140:
incbin "bin\\text\\dialogue_140.bin"

org !def_dialogue_141
dialogue_141:
incbin "bin\\text\\dialogue_141.bin"

skip 4
dialogue_142:
incbin "bin\\text\\dialogue_142.bin"

skip 8
dialogue_143:
incbin "bin\\text\\dialogue_143.bin"

skip 12
dialogue_144:
incbin "bin\\text\\dialogue_144.bin"

skip 6
dialogue_145:
incbin "bin\\text\\dialogue_145.bin"

org !def_dialogue_146
dialogue_146:
incbin "bin\\text\\dialogue_146.bin"

skip 10
dialogue_147:
incbin "bin\\text\\dialogue_147.bin"

org !def_dialogue_148
dialogue_148:
incbin "bin\\text\\dialogue_148.bin"

org !def_dialogue_149
dialogue_149:
incbin "bin\\text\\dialogue_149.bin"

skip 15
dialogue_150:
incbin "bin\\text\\dialogue_150.bin"

org !def_dialogue_151
dialogue_151:
incbin "bin\\text\\dialogue_151.bin"

org !def_dialogue_152
dialogue_152:
incbin "bin\\text\\dialogue_152.bin"

org !def_dialogue_153
dialogue_153:
incbin "bin\\text\\dialogue_153.bin"

org !def_dialogue_154
dialogue_154:
incbin "bin\\text\\dialogue_154.bin"

org !def_dialogue_155
dialogue_155:
incbin "bin\\text\\dialogue_155.bin"

org !def_dialogue_156
dialogue_156:
incbin "bin\\text\\dialogue_156.bin"

org !def_dialogue_157
dialogue_157:
incbin "bin\\text\\dialogue_157.bin"

skip 5
dialogue_158:
incbin "bin\\text\\dialogue_158.bin"

org !def_dialogue_159
dialogue_159:
incbin "bin\\text\\dialogue_159.bin"

org !def_dialogue_160
dialogue_160:
incbin "bin\\text\\dialogue_160.bin"

org !def_dialogue_161
dialogue_161:
incbin "bin\\text\\dialogue_161.bin"

org !def_dialogue_162
dialogue_162:
incbin "bin\\text\\dialogue_162.bin"

org !def_unused_unusedText23
unused_unusedText23:
incbin "bin\\text\\unused_unusedText23.bin"

org $e38000
incbin "bin\\text\\unused_unusedText23bank.bin"

org !def_dialogue_163
dialogue_163:
incbin "bin\\text\\dialogue_163.bin"

org !def_dialogue_164
dialogue_164:
incbin "bin\\text\\dialogue_164.bin"

org !def_dialogue_165
dialogue_165:
incbin "bin\\text\\dialogue_165.bin"

org !def_dialogue_166
dialogue_166:
incbin "bin\\text\\dialogue_166.bin"

org !def_dialogue_167
dialogue_167:
incbin "bin\\text\\dialogue_167.bin"

org !def_dialogue_168
dialogue_168:
incbin "bin\\text\\dialogue_168.bin"

org !def_dialogue_169
dialogue_169:
incbin "bin\\text\\dialogue_169.bin"

org !def_dialogue_170
dialogue_170:
incbin "bin\\text\\dialogue_170.bin"

org !def_dialogue_171
dialogue_171:
incbin "bin\\text\\dialogue_171.bin"

org !def_dialogue_172
dialogue_172:
incbin "bin\\text\\dialogue_172.bin"
dialogue_173:
incbin "bin\\text\\dialogue_173.bin"

org !def_dialogue_174
dialogue_174:
incbin "bin\\text\\dialogue_174.bin"

org !def_dialogue_175
dialogue_175:
incbin "bin\\text\\dialogue_175.bin"

org !def_dialogue_176
dialogue_176:
incbin "bin\\text\\dialogue_176.bin"

org !def_dialogue_177
dialogue_177:
incbin "bin\\text\\dialogue_177.bin"

org !def_dialogue_178
dialogue_178:
incbin "bin\\text\\dialogue_178.bin"

org !def_dialogue_179
dialogue_179:
incbin "bin\\text\\dialogue_179.bin"

skip 6
dialogue_180:
incbin "bin\\text\\dialogue_180.bin"

skip 10
dialogue_181:
incbin "bin\\text\\dialogue_181.bin"

org !def_dialogue_182
dialogue_182:
incbin "bin\\text\\dialogue_182.bin"

org !def_dialogue_183
dialogue_183:
incbin "bin\\text\\dialogue_183.bin"

org !def_dialogue_184
dialogue_184:
incbin "bin\\text\\dialogue_184.bin"

skip 12
dialogue_185:
incbin "bin\\text\\dialogue_185.bin"

org !def_dialogue_186
dialogue_186:
incbin "bin\\text\\dialogue_186.bin"

org !def_dialogue_187
dialogue_187:
incbin "bin\\text\\dialogue_187.bin"

org !def_dialogue_188
dialogue_188:
incbin "bin\\text\\dialogue_188.bin"

org !def_dialogue_189
dialogue_189:
incbin "bin\\text\\dialogue_189.bin"

org !def_unused_unusedText24
unused_unusedText24:
incbin "bin\\text\\unused_unusedText24.bin"

org $e48000
incbin "bin\\text\\unused_unusedText24bank.bin"

org !def_dialogue_190
dialogue_190:
incbin "bin\\text\\dialogue_190.bin"

org !def_dialogue_191
dialogue_191:
incbin "bin\\text\\dialogue_191.bin"

org !def_dialogue_192
dialogue_192:
incbin "bin\\text\\dialogue_192.bin"

org !def_dialogue_193
dialogue_193:
incbin "bin\\text\\dialogue_193.bin"

org !def_dialogue_194
dialogue_194:
incbin "bin\\text\\dialogue_194.bin"

org !def_dialogue_195
dialogue_195:
incbin "bin\\text\\dialogue_195.bin"

org !def_dialogue_196
dialogue_196:
incbin "bin\\text\\dialogue_196.bin"

org !def_dialogue_197
dialogue_197:
incbin "bin\\text\\dialogue_197.bin"

skip 15
dialogue_198:
incbin "bin\\text\\dialogue_198.bin"

org !def_dialogue_199
dialogue_199:
incbin "bin\\text\\dialogue_199.bin"

org !def_dialogue_201
dialogue_201:
incbin "bin\\text\\dialogue_201.bin"

org !def_dialogue_202
dialogue_202:
incbin "bin\\text\\dialogue_202.bin"

org !def_dialogue_203
dialogue_203:
incbin "bin\\text\\dialogue_203.bin"

org !def_dialogue_204
dialogue_204:
incbin "bin\\text\\dialogue_204.bin"

skip 14
dialogue_205:
incbin "bin\\text\\dialogue_205.bin"

org !def_dialogue_206
dialogue_206:
incbin "bin\\text\\dialogue_206.bin"

org !def_dialogue_207
dialogue_207:
incbin "bin\\text\\dialogue_207.bin"

org !def_dialogue_208
dialogue_208:
incbin "bin\\text\\dialogue_208.bin"

org !def_dialogue_209
dialogue_209:
incbin "bin\\text\\dialogue_209.bin"

org !def_dialogue_210
dialogue_210:
incbin "bin\\text\\dialogue_210.bin"

org !def_dialogue_211
dialogue_211:
incbin "bin\\text\\dialogue_211.bin"

skip 7
dialogue_212:
incbin "bin\\text\\dialogue_212.bin"

skip 12
dialogue_213:
incbin "bin\\text\\dialogue_213.bin"

skip 8
dialogue_214:
incbin "bin\\text\\dialogue_214.bin"

org !def_unused_unusedText25
unused_unusedText25:
incbin "bin\\text\\unused_unusedText25.bin"

org $e58000
incbin "bin\\text\\unused_unusedText25bank.bin"

org !def_dialogue_215
dialogue_215:
incbin "bin\\text\\dialogue_215.bin"

org !def_dialogue_216
dialogue_216:
incbin "bin\\text\\dialogue_216.bin"

org !def_dialogue_217
dialogue_217:
incbin "bin\\text\\dialogue_217.bin"

org !def_dialogue_218
dialogue_218:
incbin "bin\\text\\dialogue_218.bin"

org !def_dialogue_219
dialogue_219:
incbin "bin\\text\\dialogue_219.bin"

org !def_dialogue_220
dialogue_220:
incbin "bin\\text\\dialogue_220.bin"
dialogue_221:
incbin "bin\\text\\dialogue_221.bin"

org !def_dialogue_222
dialogue_222:
incbin "bin\\text\\dialogue_222.bin"

org !def_dialogue_223
dialogue_223:
incbin "bin\\text\\dialogue_223.bin"

org !def_dialogue_224
dialogue_224:
incbin "bin\\text\\dialogue_224.bin"

skip 14
dialogue_225:
incbin "bin\\text\\dialogue_225.bin"

skip 2
dialogue_226:
incbin "bin\\text\\dialogue_226.bin"

org !def_dialogue_227
dialogue_227:
incbin "bin\\text\\dialogue_227.bin"

org !def_dialogue_228
dialogue_228:
incbin "bin\\text\\dialogue_228.bin"

org !def_dialogue_229
dialogue_229:
incbin "bin\\text\\dialogue_229.bin"

org !def_dialogue_230
dialogue_230:
incbin "bin\\text\\dialogue_230.bin"

org !def_dialogue_231
dialogue_231:
incbin "bin\\text\\dialogue_231.bin"

org !def_dialogue_232
dialogue_232:
incbin "bin\\text\\dialogue_232.bin"

skip 7
dialogue_233:
incbin "bin\\text\\dialogue_233.bin"

org !def_dialogue_234
dialogue_234:
incbin "bin\\text\\dialogue_234.bin"

skip 4
dialogue_235:
incbin "bin\\text\\dialogue_235.bin"

org !def_dialogue_236
dialogue_236:
incbin "bin\\text\\dialogue_236.bin"

org !def_dialogue_237
dialogue_237:
incbin "bin\\text\\dialogue_237.bin"

org !def_dialogue_238
dialogue_238:
incbin "bin\\text\\dialogue_238.bin"

org !def_dialogue_239
dialogue_239:
incbin "bin\\text\\dialogue_239.bin"

org !def_dialogue_240
dialogue_240:
incbin "bin\\text\\dialogue_240.bin"

skip 13
dialogue_241:
incbin "bin\\text\\dialogue_241.bin"

skip 14
dialogue_242:
incbin "bin\\text\\dialogue_242.bin"

skip 9
dialogue_243:
incbin "bin\\text\\dialogue_243.bin"

skip 9
dialogue_244:
incbin "bin\\text\\dialogue_244.bin"

skip 10
dialogue_245:
incbin "bin\\text\\dialogue_245.bin"

skip 8
dialogue_246:
incbin "bin\\text\\dialogue_246.bin"

skip 9
dialogue_247:
incbin "bin\\text\\dialogue_247.bin"

skip 8
dialogue_248:
incbin "bin\\text\\dialogue_248.bin"

skip 13
dialogue_249:
incbin "bin\\text\\dialogue_249.bin"

org !def_dialogue_250
dialogue_250:
incbin "bin\\text\\dialogue_250.bin"

skip 10
dialogue_251:
incbin "bin\\text\\dialogue_251.bin"

skip 10
dialogue_252:
incbin "bin\\text\\dialogue_252.bin"

skip 15
dialogue_253:
incbin "bin\\text\\dialogue_253.bin"

skip 5
dialogue_254:
incbin "bin\\text\\dialogue_254.bin"

skip 10
dialogue_255:
incbin "bin\\text\\dialogue_255.bin"

skip 4
dialogue_256:
incbin "bin\\text\\dialogue_256.bin"

org !def_dialogue_257
dialogue_257:
incbin "bin\\text\\dialogue_257.bin"

skip 6
dialogue_258:
incbin "bin\\text\\dialogue_258.bin"

skip 5
dialogue_259:
incbin "bin\\text\\dialogue_259.bin"

skip 7
dialogue_260:
incbin "bin\\text\\dialogue_260.bin"

skip 3
dialogue_261:
incbin "bin\\text\\dialogue_261.bin"

skip 3
dialogue_262:
incbin "bin\\text\\dialogue_262.bin"

skip 9
dialogue_263:
incbin "bin\\text\\dialogue_263.bin"

skip 4
dialogue_264:
incbin "bin\\text\\dialogue_264.bin"

skip 4
dialogue_265:
incbin "bin\\text\\dialogue_265.bin"

skip 7
dialogue_266:
incbin "bin\\text\\dialogue_266.bin"

skip 7
dialogue_267:
incbin "bin\\text\\dialogue_267.bin"

skip 5
dialogue_268:
incbin "bin\\text\\dialogue_268.bin"

skip 6
dialogue_269:
incbin "bin\\text\\dialogue_269.bin"

skip 7
dialogue_270:
incbin "bin\\text\\dialogue_270.bin"

skip 1
dialogue_271:
incbin "bin\\text\\dialogue_271.bin"

skip 8
dialogue_272:
incbin "bin\\text\\dialogue_272.bin"

skip 2
dialogue_273:
incbin "bin\\text\\dialogue_273.bin"

skip 2
dialogue_274:
incbin "bin\\text\\dialogue_274.bin"

skip 4
dialogue_275:
incbin "bin\\text\\dialogue_275.bin"

skip 4
dialogue_276:
incbin "bin\\text\\dialogue_276.bin"

skip 4
dialogue_277:
incbin "bin\\text\\dialogue_277.bin"

skip 4
dialogue_278:
incbin "bin\\text\\dialogue_278.bin"

skip 2
dialogue_279:
incbin "bin\\text\\dialogue_279.bin"

skip 5
dialogue_280:
incbin "bin\\text\\dialogue_280.bin"

skip 5
dialogue_281:
incbin "bin\\text\\dialogue_281.bin"

skip 5
dialogue_282:
incbin "bin\\text\\dialogue_282.bin"

skip 4
dialogue_283:
incbin "bin\\text\\dialogue_283.bin"

skip 4
dialogue_284:
incbin "bin\\text\\dialogue_284.bin"

skip 2
dialogue_285:
incbin "bin\\text\\dialogue_285.bin"

skip 4
dialogue_286:
incbin "bin\\text\\dialogue_286.bin"

skip 2
dialogue_287:
incbin "bin\\text\\dialogue_287.bin"

skip 4
dialogue_288:
incbin "bin\\text\\dialogue_288.bin"

skip 4
dialogue_289:
incbin "bin\\text\\dialogue_289.bin"

skip 2
dialogue_290:
incbin "bin\\text\\dialogue_290.bin"

skip 2
dialogue_291:
incbin "bin\\text\\dialogue_291.bin"

skip 2
unused_unusedText26:
incbin "bin\\text\\unused_unusedText26.bin"

org $e68000
incbin "bin\\text\\unused_unusedText26bank.bin"

org !def_dialogue_292
dialogue_292:
incbin "bin\\text\\dialogue_292.bin"

org !def_dialogue_293
dialogue_293:
incbin "bin\\text\\dialogue_293.bin"

skip 5
dialogue_294:
incbin "bin\\text\\dialogue_294.bin"

skip 4
dialogue_295:
incbin "bin\\text\\dialogue_295.bin"

skip 3
dialogue_296:
incbin "bin\\text\\dialogue_296.bin"

skip 2
dialogue_297:
incbin "bin\\text\\dialogue_297.bin"

skip 2
dialogue_298:
incbin "bin\\text\\dialogue_298.bin"

skip 4
dialogue_299:
incbin "bin\\text\\dialogue_299.bin"

skip 8
dialogue_300:
incbin "bin\\text\\dialogue_300.bin"

skip 2
dialogue_301:
incbin "bin\\text\\dialogue_301.bin"

skip 4
dialogue_302:
incbin "bin\\text\\dialogue_302.bin"

skip 4
dialogue_303:
incbin "bin\\text\\dialogue_303.bin"

skip 4
dialogue_304:
incbin "bin\\text\\dialogue_304.bin"

skip 4
dialogue_305:
incbin "bin\\text\\dialogue_305.bin"

skip 4
dialogue_306:
incbin "bin\\text\\dialogue_306.bin"

skip 3
dialogue_307:
incbin "bin\\text\\dialogue_307.bin"

skip 3
dialogue_308:
incbin "bin\\text\\dialogue_308.bin"

skip 4
dialogue_309:
incbin "bin\\text\\dialogue_309.bin"

skip 4
dialogue_310:
incbin "bin\\text\\dialogue_310.bin"

skip 2
dialogue_311:
incbin "bin\\text\\dialogue_311.bin"

skip 4
dialogue_312:
incbin "bin\\text\\dialogue_312.bin"

skip 4
dialogue_313:
incbin "bin\\text\\dialogue_313.bin"

skip 3
dialogue_314:
incbin "bin\\text\\dialogue_314.bin"

skip 3
dialogue_315:
incbin "bin\\text\\dialogue_315.bin"

skip 2
dialogue_316:
incbin "bin\\text\\dialogue_316.bin"

skip 4
dialogue_317:
incbin "bin\\text\\dialogue_317.bin"

skip 2
dialogue_318:
incbin "bin\\text\\dialogue_318.bin"

skip 2
dialogue_319:
incbin "bin\\text\\dialogue_319.bin"

skip 4
dialogue_320:
incbin "bin\\text\\dialogue_320.bin"
dialogue_321:
incbin "bin\\text\\dialogue_321.bin"

skip 2
dialogue_322:
incbin "bin\\text\\dialogue_322.bin"

skip 4
dialogue_323:
incbin "bin\\text\\dialogue_323.bin"

skip 2
dialogue_324:
incbin "bin\\text\\dialogue_324.bin"

skip 4
dialogue_325:
incbin "bin\\text\\dialogue_325.bin"

skip 2
dialogue_326:
incbin "bin\\text\\dialogue_326.bin"

skip 4
dialogue_327:
incbin "bin\\text\\dialogue_327.bin"

skip 2
dialogue_328:
incbin "bin\\text\\dialogue_328.bin"

skip 5
dialogue_329:
incbin "bin\\text\\dialogue_329.bin"

skip 2
dialogue_330:
incbin "bin\\text\\dialogue_330.bin"

skip 4
dialogue_331:
incbin "bin\\text\\dialogue_331.bin"

skip 4
dialogue_332:
incbin "bin\\text\\dialogue_332.bin"

skip 2
dialogue_333:
incbin "bin\\text\\dialogue_333.bin"

skip 4
dialogue_334:
incbin "bin\\text\\dialogue_334.bin"

skip 4
dialogue_335:
incbin "bin\\text\\dialogue_335.bin"

skip 4
dialogue_336:
incbin "bin\\text\\dialogue_336.bin"

skip 4
dialogue_337:
incbin "bin\\text\\dialogue_337.bin"

skip 4
dialogue_338:
incbin "bin\\text\\dialogue_338.bin"

skip 2
dialogue_339:
incbin "bin\\text\\dialogue_339.bin"

skip 2
dialogue_340:
incbin "bin\\text\\dialogue_340.bin"

skip 4
dialogue_341:
incbin "bin\\text\\dialogue_341.bin"

skip 3
dialogue_342:
incbin "bin\\text\\dialogue_342.bin"

skip 2
dialogue_343:
incbin "bin\\text\\dialogue_343.bin"

skip 4
dialogue_344:
incbin "bin\\text\\dialogue_344.bin"
dialogue_345:
incbin "bin\\text\\dialogue_345.bin"

skip 4
dialogue_346:
incbin "bin\\text\\dialogue_346.bin"

skip 4
dialogue_347:
incbin "bin\\text\\dialogue_347.bin"

skip 2
dialogue_348:
incbin "bin\\text\\dialogue_348.bin"

skip 2
dialogue_349:
incbin "bin\\text\\dialogue_349.bin"

skip 3
dialogue_350:
incbin "bin\\text\\dialogue_350.bin"
dialogue_350_ex:
incbin "bin\\text\\dialogue_350_ex.bin"

skip 4
dialogue_351:
incbin "bin\\text\\dialogue_351.bin"

skip 4
dialogue_352:
incbin "bin\\text\\dialogue_352.bin"

skip 2
dialogue_353:
incbin "bin\\text\\dialogue_353.bin"

skip 4
dialogue_354:
incbin "bin\\text\\dialogue_354.bin"

skip 2
dialogue_355:
incbin "bin\\text\\dialogue_355.bin"

skip 4
dialogue_356:
incbin "bin\\text\\dialogue_356.bin"

skip 2
dialogue_357:
incbin "bin\\text\\dialogue_357.bin"

skip 4
dialogue_358:
incbin "bin\\text\\dialogue_358.bin"

skip 2
dialogue_359:
incbin "bin\\text\\dialogue_359.bin"

skip 2
dialogue_360:
incbin "bin\\text\\dialogue_360.bin"

skip 2
dialogue_361:
incbin "bin\\text\\dialogue_361.bin"

skip 4
dialogue_362:
incbin "bin\\text\\dialogue_362.bin"

skip 2
dialogue_363:
incbin "bin\\text\\dialogue_363.bin"

skip 2
dialogue_364:
incbin "bin\\text\\dialogue_364.bin"

skip 2
dialogue_365:
incbin "bin\\text\\dialogue_365.bin"

skip 2
dialogue_366:
incbin "bin\\text\\dialogue_366.bin"

skip 2
dialogue_367:
incbin "bin\\text\\dialogue_367.bin"
dialogue_368:
incbin "bin\\text\\dialogue_368.bin"

skip 2
dialogue_369:
incbin "bin\\text\\dialogue_369.bin"

skip 2
dialogue_370:
incbin "bin\\text\\dialogue_370.bin"

skip 4
dialogue_371:
incbin "bin\\text\\dialogue_371.bin"

skip 4
dialogue_372:
incbin "bin\\text\\dialogue_372.bin"

skip 4
dialogue_373:
incbin "bin\\text\\dialogue_373.bin"

skip 4
dialogue_374:
incbin "bin\\text\\dialogue_374.bin"

skip 2
dialogue_375:
incbin "bin\\text\\dialogue_375.bin"

skip 4
dialogue_376:
incbin "bin\\text\\dialogue_376.bin"

skip 2
dialogue_377:
incbin "bin\\text\\dialogue_377.bin"

skip 2
dialogue_378:
incbin "bin\\text\\dialogue_378.bin"

skip 3
dialogue_379:
incbin "bin\\text\\dialogue_379.bin"

skip 2
dialogue_380:
incbin "bin\\text\\dialogue_380.bin"

skip 2
dialogue_381:
incbin "bin\\text\\dialogue_381.bin"

skip 2
dialogue_382:
incbin "bin\\text\\dialogue_382.bin"

skip 2
dialogue_383:
incbin "bin\\text\\dialogue_383.bin"

skip 2
dialogue_384:
incbin "bin\\text\\dialogue_384.bin"

skip 2
dialogue_385:
incbin "bin\\text\\dialogue_385.bin"

skip 2
dialogue_386:
incbin "bin\\text\\dialogue_386.bin"

skip 2
dialogue_387:
incbin "bin\\text\\dialogue_387.bin"

skip 4
dialogue_388:
incbin "bin\\text\\dialogue_388.bin"

skip 4
dialogue_389:
incbin "bin\\text\\dialogue_389.bin"

skip 2
dialogue_390:
incbin "bin\\text\\dialogue_390.bin"

skip 2
dialogue_391:
incbin "bin\\text\\dialogue_391.bin"

skip 2
dialogue_392:
incbin "bin\\text\\dialogue_392.bin"

skip 2
dialogue_393:
incbin "bin\\text\\dialogue_393.bin"

skip 2
dialogue_394:
incbin "bin\\text\\dialogue_394.bin"

skip 4
dialogue_395:
incbin "bin\\text\\dialogue_395.bin"

skip 4
dialogue_396:
incbin "bin\\text\\dialogue_396.bin"

skip 2
dialogue_397:
incbin "bin\\text\\dialogue_397.bin"

skip 4
dialogue_398:
incbin "bin\\text\\dialogue_398.bin"

skip 6
dialogue_399:
incbin "bin\\text\\dialogue_399.bin"

skip 4
dialogue_400:
incbin "bin\\text\\dialogue_400.bin"

skip 2
dialogue_401:
incbin "bin\\text\\dialogue_401.bin"

skip 4
dialogue_402:
incbin "bin\\text\\dialogue_402.bin"

skip 2
dialogue_403:
incbin "bin\\text\\dialogue_403.bin"

skip 8
dialogue_404:
incbin "bin\\text\\dialogue_404.bin"
dialogue_405:
incbin "bin\\text\\dialogue_405.bin"

skip 4
dialogue_406:
incbin "bin\\text\\dialogue_406.bin"

skip 8
dialogue_407:
incbin "bin\\text\\dialogue_407.bin"

skip 2
dialogue_408:
incbin "bin\\text\\dialogue_408.bin"
dialogue_409:
incbin "bin\\text\\dialogue_409.bin"

skip 4
dialogue_410:
incbin "bin\\text\\dialogue_410.bin"

skip 4
dialogue_411:
incbin "bin\\text\\dialogue_411.bin"

skip 4
dialogue_412:
incbin "bin\\text\\dialogue_412.bin"

skip 4
dialogue_413:
incbin "bin\\text\\dialogue_413.bin"

skip 4
dialogue_414:
incbin "bin\\text\\dialogue_414.bin"

skip 5
dialogue_415:
incbin "bin\\text\\dialogue_415.bin"

skip 4
dialogue_416:
incbin "bin\\text\\dialogue_416.bin"

skip 5
dialogue_417:
incbin "bin\\text\\dialogue_417.bin"

skip 4
dialogue_418:
incbin "bin\\text\\dialogue_418.bin"

skip 2
dialogue_419:
incbin "bin\\text\\dialogue_419.bin"

skip 5
dialogue_420:
incbin "bin\\text\\dialogue_420.bin"

skip 4
dialogue_421:
incbin "bin\\text\\dialogue_421.bin"

skip 4
dialogue_422:
incbin "bin\\text\\dialogue_422.bin"

skip 4
dialogue_423:
incbin "bin\\text\\dialogue_423.bin"

skip 6
dialogue_424:
incbin "bin\\text\\dialogue_424.bin"

skip 2
dialogue_425:
incbin "bin\\text\\dialogue_425.bin"

skip 4
dialogue_426:
incbin "bin\\text\\dialogue_426.bin"

skip 4
dialogue_427:
incbin "bin\\text\\dialogue_427.bin"

skip 4
dialogue_428:
incbin "bin\\text\\dialogue_428.bin"

skip 2
dialogue_429:
incbin "bin\\text\\dialogue_429.bin"

skip 5
dialogue_430:
incbin "bin\\text\\dialogue_430.bin"

skip 7
dialogue_431:
incbin "bin\\text\\dialogue_431.bin"

skip 4
dialogue_432:
incbin "bin\\text\\dialogue_432.bin"

skip 10
dialogue_433:
incbin "bin\\text\\dialogue_433.bin"

skip 4
dialogue_434:
incbin "bin\\text\\dialogue_434.bin"

skip 4
dialogue_435:
incbin "bin\\text\\dialogue_435.bin"

skip 4
dialogue_436:
incbin "bin\\text\\dialogue_436.bin"

skip 13
dialogue_437:
incbin "bin\\text\\dialogue_437.bin"

skip 4
dialogue_438:
incbin "bin\\text\\dialogue_438.bin"

skip 5
dialogue_439:
incbin "bin\\text\\dialogue_439.bin"

org !def_dialogue_440
dialogue_440:
incbin "bin\\text\\dialogue_440.bin"

org !def_dialogue_441
dialogue_441:
incbin "bin\\text\\dialogue_441.bin"

org !def_dialogue_442
dialogue_442:
incbin "bin\\text\\dialogue_442.bin"

skip 5
dialogue_443:
incbin "bin\\text\\dialogue_443.bin"

skip 2
dialogue_444:
incbin "bin\\text\\dialogue_444.bin"

skip 2
dialogue_445:
incbin "bin\\text\\dialogue_445.bin"

skip 4
dialogue_446:
incbin "bin\\text\\dialogue_446.bin"

skip 2
dialogue_447:
incbin "bin\\text\\dialogue_447.bin"

skip 2
dialogue_448:
incbin "bin\\text\\dialogue_448.bin"

skip 2
dialogue_449:
incbin "bin\\text\\dialogue_449.bin"

skip 4
dialogue_450:
incbin "bin\\text\\dialogue_450.bin"

skip 4
dialogue_451:
incbin "bin\\text\\dialogue_451.bin"

skip 2
dialogue_452:
incbin "bin\\text\\dialogue_452.bin"

skip 2
dialogue_453:
incbin "bin\\text\\dialogue_453.bin"

skip 2
dialogue_454:
incbin "bin\\text\\dialogue_454.bin"

skip 2
dialogue_455:
incbin "bin\\text\\dialogue_455.bin"

skip 4
dialogue_456:
incbin "bin\\text\\dialogue_456.bin"

skip 2
dialogue_457:
incbin "bin\\text\\dialogue_457.bin"

skip 3
dialogue_458:
incbin "bin\\text\\dialogue_458.bin"

skip 8
dialogue_459:
incbin "bin\\text\\dialogue_459.bin"

skip 12
dialogue_460:
incbin "bin\\text\\dialogue_460.bin"

org !def_dialogue_461
dialogue_461:
incbin "bin\\text\\dialogue_461.bin"

skip 8
dialogue_462:
incbin "bin\\text\\dialogue_462.bin"

skip 6
dialogue_463:
incbin "bin\\text\\dialogue_463.bin"

skip 15
dialogue_464:
incbin "bin\\text\\dialogue_464.bin"

skip 8
dialogue_465:
incbin "bin\\text\\dialogue_465.bin"

skip 7
dialogue_466:
incbin "bin\\text\\dialogue_466.bin"

skip 10
dialogue_467:
incbin "bin\\text\\dialogue_467.bin"

skip 10
dialogue_468:
incbin "bin\\text\\dialogue_468.bin"

skip 14
dialogue_469:
incbin "bin\\text\\dialogue_469.bin"

org !def_dialogue_470
dialogue_470:
incbin "bin\\text\\dialogue_470.bin"

org !def_dialogue_471
dialogue_471:
incbin "bin\\text\\dialogue_471.bin"

skip 14
dialogue_472:
incbin "bin\\text\\dialogue_472.bin"

skip 10
dialogue_473:
incbin "bin\\text\\dialogue_473.bin"

org !def_dialogue_474
dialogue_474:
incbin "bin\\text\\dialogue_474.bin"

org !def_dialogue_475
dialogue_475:
incbin "bin\\text\\dialogue_475.bin"

skip 6
dialogue_476:
incbin "bin\\text\\dialogue_476.bin"

skip 10
dialogue_477:
incbin "bin\\text\\dialogue_477.bin"

skip 4
dialogue_478:
incbin "bin\\text\\dialogue_478.bin"

skip 8
dialogue_479:
incbin "bin\\text\\dialogue_479.bin"

skip 4
dialogue_480:
incbin "bin\\text\\dialogue_480.bin"

skip 6
dialogue_481:
incbin "bin\\text\\dialogue_481.bin"

skip 7
dialogue_482:
incbin "bin\\text\\dialogue_482.bin"

skip 5
dialogue_483:
incbin "bin\\text\\dialogue_483.bin"

org !def_dialogue_484
dialogue_484:
incbin "bin\\text\\dialogue_484.bin"

skip 5
dialogue_485:
incbin "bin\\text\\dialogue_485.bin"

skip 7
dialogue_486:
incbin "bin\\text\\dialogue_486.bin"

skip 13
dialogue_487:
incbin "bin\\text\\dialogue_487.bin"

skip 13
dialogue_488:
incbin "bin\\text\\dialogue_488.bin"

skip 3
dialogue_489:
incbin "bin\\text\\dialogue_489.bin"

skip 8
dialogue_490:
incbin "bin\\text\\dialogue_490.bin"

skip 13
dialogue_491:
incbin "bin\\text\\dialogue_491.bin"

skip 6
dialogue_492:
incbin "bin\\text\\dialogue_492.bin"

skip 9
dialogue_493:
incbin "bin\\text\\dialogue_493.bin"

skip 8
dialogue_494:
incbin "bin\\text\\dialogue_494.bin"

skip 8
dialogue_495:
incbin "bin\\text\\dialogue_495.bin"

skip 3
dialogue_496:
incbin "bin\\text\\dialogue_496.bin"

skip 7
dialogue_497:
incbin "bin\\text\\dialogue_497.bin"

skip 5
dialogue_498:
incbin "bin\\text\\dialogue_498.bin"

org !def_dialogue_499
dialogue_499:
incbin "bin\\text\\dialogue_499.bin"

org !def_dialogue_500
dialogue_500:
incbin "bin\\text\\dialogue_500.bin"

org !def_dialogue_501
dialogue_501:
incbin "bin\\text\\dialogue_501.bin"

skip 5
dialogue_502:
incbin "bin\\text\\dialogue_502.bin"

org !def_dialogue_503
dialogue_503:
incbin "bin\\text\\dialogue_503.bin"

org !def_dialogue_504
dialogue_504:
incbin "bin\\text\\dialogue_504.bin"

skip 14
dialogue_505:
incbin "bin\\text\\dialogue_505.bin"

skip 3
dialogue_506:
incbin "bin\\text\\dialogue_506.bin"

org !def_dialogue_507
dialogue_507:
incbin "bin\\text\\dialogue_507.bin"

skip 3
dialogue_508:
incbin "bin\\text\\dialogue_508.bin"

org !def_dialogue_509
dialogue_509:
incbin "bin\\text\\dialogue_509.bin"

org !def_dialogue_510
dialogue_510:
incbin "bin\\text\\dialogue_510.bin"

org !def_dialogue_511
dialogue_511:
incbin "bin\\text\\dialogue_511.bin"

org !def_dialogue_512
dialogue_512:
incbin "bin\\text\\dialogue_512.bin"

skip 9
dialogue_513:
incbin "bin\\text\\dialogue_513.bin"

skip 5
dialogue_514:
incbin "bin\\text\\dialogue_514.bin"

org !def_dialogue_515
dialogue_515:
incbin "bin\\text\\dialogue_515.bin"

org !def_unused_unusedText27
unused_unusedText27:
incbin "bin\\text\\unused_unusedText27.bin"
unused_unusedText28:
incbin "bin\\text\\unused_unusedText28.bin"

org $e78000
incbin "bin\\text\\unused_unusedText28bank.bin"

org !def_dialogue_516
dialogue_516:
incbin "bin\\text\\dialogue_516.bin"

org !def_dialogue_517
dialogue_517:
incbin "bin\\text\\dialogue_517.bin"

skip 8
dialogue_518:
incbin "bin\\text\\dialogue_518.bin"

org !def_dialogue_519
dialogue_519:
incbin "bin\\text\\dialogue_519.bin"

org !def_dialogue_520
dialogue_520:
incbin "bin\\text\\dialogue_520.bin"

org !def_savetitles_00
savetitles_00:
incbin "bin\\text\\savetitles_00.bin"
savetitles_01:
incbin "bin\\text\\savetitles_01.bin"
savetitles_02:
incbin "bin\\text\\savetitles_02.bin"
savetitles_03:
incbin "bin\\text\\savetitles_03.bin"
savetitles_04:
incbin "bin\\text\\savetitles_04.bin"
savetitles_05:
incbin "bin\\text\\savetitles_05.bin"
savetitles_06:
incbin "bin\\text\\savetitles_06.bin"
savetitles_07:
incbin "bin\\text\\savetitles_07.bin"
savetitles_08:
incbin "bin\\text\\savetitles_08.bin"
savetitles_09:
incbin "bin\\text\\savetitles_09.bin"
savetitles_10:
incbin "bin\\text\\savetitles_10.bin"
savetitles_11:
incbin "bin\\text\\savetitles_11.bin"
savetitles_12:
incbin "bin\\text\\savetitles_12.bin"
savetitles_13:
incbin "bin\\text\\savetitles_13.bin"
savetitles_14:
incbin "bin\\text\\savetitles_14.bin"
savetitles_15:
incbin "bin\\text\\savetitles_15.bin"
savetitles_16:
incbin "bin\\text\\savetitles_16.bin"
savetitles_17:
incbin "bin\\text\\savetitles_17.bin"
savetitles_18:
incbin "bin\\text\\savetitles_18.bin"
savetitles_19:
incbin "bin\\text\\savetitles_19.bin"
savetitles_20:
incbin "bin\\text\\savetitles_20.bin"
savetitles_21:
incbin "bin\\text\\savetitles_21.bin"
savetitles_22:
incbin "bin\\text\\savetitles_22.bin"
savetitles_23:
incbin "bin\\text\\savetitles_23.bin"
savetitles_24:
incbin "bin\\text\\savetitles_24.bin"
savetitles_25:
incbin "bin\\text\\savetitles_25.bin"
savetitles_26:
incbin "bin\\text\\savetitles_26.bin"
savetitles_27:
incbin "bin\\text\\savetitles_27.bin"
savetitles_28:
incbin "bin\\text\\savetitles_28.bin"
savetitles_29:
incbin "bin\\text\\savetitles_29.bin"
savetitles_30:
incbin "bin\\text\\savetitles_30.bin"
savetitles_31:
incbin "bin\\text\\savetitles_31.bin"
savetitles_32:
incbin "bin\\text\\savetitles_32.bin"
savetitles_33:
incbin "bin\\text\\savetitles_33.bin"
savetitles_34:
incbin "bin\\text\\savetitles_34.bin"
savetitles_35:
incbin "bin\\text\\savetitles_35.bin"
savetitles_36:
incbin "bin\\text\\savetitles_36.bin"
savetitles_37:
incbin "bin\\text\\savetitles_37.bin"
savetitles_38:
incbin "bin\\text\\savetitles_38.bin"
savetitles_39:
incbin "bin\\text\\savetitles_39.bin"
savetitles_40:
incbin "bin\\text\\savetitles_40.bin"
savetitles_41:
incbin "bin\\text\\savetitles_41.bin"
savetitles_42:
incbin "bin\\text\\savetitles_42.bin"
savetitles_43:
incbin "bin\\text\\savetitles_43.bin"
savetitles_44:
incbin "bin\\text\\savetitles_44.bin"

org !def_ChapterTitles_00
ChapterTitles_00:
incbin "bin\\text\\ChapterTitles_00.bin"
ChapterTitles_01:
incbin "bin\\text\\ChapterTitles_01.bin"
ChapterTitles_02:
incbin "bin\\text\\ChapterTitles_02.bin"
ChapterTitles_03:
incbin "bin\\text\\ChapterTitles_03.bin"
ChapterTitles_04:
incbin "bin\\text\\ChapterTitles_04.bin"
ChapterTitles_05:
incbin "bin\\text\\ChapterTitles_05.bin"
ChapterTitles_06:
incbin "bin\\text\\ChapterTitles_06.bin"
ChapterTitles_07:
incbin "bin\\text\\ChapterTitles_07.bin"
ChapterTitles_08:
incbin "bin\\text\\ChapterTitles_08.bin"
ChapterTitles_09:
incbin "bin\\text\\ChapterTitles_09.bin"
ChapterTitles_10:
incbin "bin\\text\\ChapterTitles_10.bin"
ChapterTitles_11:
incbin "bin\\text\\ChapterTitles_11.bin"
ChapterTitles_12:
incbin "bin\\text\\ChapterTitles_12.bin"
ChapterTitles_13:
incbin "bin\\text\\ChapterTitles_13.bin"
ChapterTitles_14:
incbin "bin\\text\\ChapterTitles_14.bin"
ChapterTitles_15:
incbin "bin\\text\\ChapterTitles_15.bin"
ChapterTitles_16:
incbin "bin\\text\\ChapterTitles_16.bin"
ChapterTitles_17:
incbin "bin\\text\\ChapterTitles_17.bin"
ChapterTitles_18:
incbin "bin\\text\\ChapterTitles_18.bin"
ChapterTitles_19:
incbin "bin\\text\\ChapterTitles_19.bin"
ChapterTitles_20:
incbin "bin\\text\\ChapterTitles_20.bin"
ChapterTitles_21:
incbin "bin\\text\\ChapterTitles_21.bin"
ChapterTitles_22:
incbin "bin\\text\\ChapterTitles_22.bin"
ChapterTitles_23:
incbin "bin\\text\\ChapterTitles_23.bin"
ChapterTitles_24:
incbin "bin\\text\\ChapterTitles_24.bin"
ChapterTitles_25:
incbin "bin\\text\\ChapterTitles_25.bin"
ChapterTitles_26:
incbin "bin\\text\\ChapterTitles_26.bin"
ChapterTitles_27:
incbin "bin\\text\\ChapterTitles_27.bin"
ChapterTitles_28:
incbin "bin\\text\\ChapterTitles_28.bin"
ChapterTitles_29:
incbin "bin\\text\\ChapterTitles_29.bin"
ChapterTitles_30:
incbin "bin\\text\\ChapterTitles_30.bin"
ChapterTitles_31:
incbin "bin\\text\\ChapterTitles_31.bin"
ChapterTitles_32:
incbin "bin\\text\\ChapterTitles_32.bin"
ChapterTitles_33:
incbin "bin\\text\\ChapterTitles_33.bin"
ChapterTitles_34:
incbin "bin\\text\\ChapterTitles_34.bin"
ChapterTitles_35:
incbin "bin\\text\\ChapterTitles_35.bin"
ChapterTitles_36:
incbin "bin\\text\\ChapterTitles_36.bin"
ChapterTitles_37:
incbin "bin\\text\\ChapterTitles_37.bin"
ChapterTitles_38:
incbin "bin\\text\\ChapterTitles_38.bin"
ChapterTitles_39:
incbin "bin\\text\\ChapterTitles_39.bin"
ChapterTitles_40:
incbin "bin\\text\\ChapterTitles_40.bin"
ChapterTitles_41:
incbin "bin\\text\\ChapterTitles_41.bin"
ChapterTitles_42:
incbin "bin\\text\\ChapterTitles_42.bin"
ChapterTitles_43:
incbin "bin\\text\\ChapterTitles_43.bin"
ChapterTitles0:
incbin "bin\\text\\ChapterTitles0.bin"

org !def_erase_00
erase_00:
incbin "bin\\text\\erase_00.bin"
erase_01:
incbin "bin\\text\\erase_01.bin"
erase_02:
incbin "bin\\text\\erase_02.bin"
erase2_00:
incbin "bin\\text\\erase2_00.bin"
erase2_01:
incbin "bin\\text\\erase2_01.bin"
erase2_02:
incbin "bin\\text\\erase2_02.bin"
classDescription_00:
incbin "bin\\text\\classDescription_00.bin"
classDescription_01:
incbin "bin\\text\\classDescription_01.bin"

skip 2
classDescription_02:
incbin "bin\\text\\classDescription_02.bin"

skip 1
classDescription_03:
incbin "bin\\text\\classDescription_03.bin"

skip 1
classDescription_04:
incbin "bin\\text\\classDescription_04.bin"

skip 1
classDescription_05:
incbin "bin\\text\\classDescription_05.bin"

skip 4
classDescription_06:
incbin "bin\\text\\classDescription_06.bin"

skip 2
classDescription_07:
incbin "bin\\text\\classDescription_07.bin"
classDescription_08:
incbin "bin\\text\\classDescription_08.bin"

skip 5
classDescription_09:
incbin "bin\\text\\classDescription_09.bin"

skip 1
classDescription_10:
incbin "bin\\text\\classDescription_10.bin"
classDescription_11:
incbin "bin\\text\\classDescription_11.bin"

skip 4
classDescription_12:
incbin "bin\\text\\classDescription_12.bin"

skip 4
classDescription_13:
incbin "bin\\text\\classDescription_13.bin"

skip 4
classDescription_14:
incbin "bin\\text\\classDescription_14.bin"

skip 2
classDescription_15:
incbin "bin\\text\\classDescription_15.bin"

skip 4
classDescription_16:
incbin "bin\\text\\classDescription_16.bin"

skip 4
classDescription_17:
incbin "bin\\text\\classDescription_17.bin"

skip 1
classDescription_18:
incbin "bin\\text\\classDescription_18.bin"

skip 2
classDescription_19:
incbin "bin\\text\\classDescription_19.bin"

skip 4
classDescription_20:
incbin "bin\\text\\classDescription_20.bin"

skip 2
classDescription_21:
incbin "bin\\text\\classDescription_21.bin"

skip 2
classDescription_22:
incbin "bin\\text\\classDescription_22.bin"

skip 1
crawls_00:
incbin "bin\\text\\crawls_00.bin"
crawls_01:
incbin "bin\\text\\crawls_01.bin"
crawls_02:
incbin "bin\\text\\crawls_02.bin"
crawls_03:
incbin "bin\\text\\crawls_03.bin"
crawls_04:
incbin "bin\\text\\crawls_04.bin"
crawls_05:
incbin "bin\\text\\crawls_05.bin"
shopping_00:
incbin "bin\\text\\shopping_00.bin"

skip 2
shopping_01:
incbin "bin\\text\\shopping_01.bin"

skip 1
shopping_02:
incbin "bin\\text\\shopping_02.bin"

skip 2
shopping_03:
incbin "bin\\text\\shopping_03.bin"

skip 2
shopping_04:
incbin "bin\\text\\shopping_04.bin"
shopping_05:
incbin "bin\\text\\shopping_05.bin"

skip 2
shopping_06:
incbin "bin\\text\\shopping_06.bin"
shopping_07:
incbin "bin\\text\\shopping_07.bin"

skip 2
shopping_08:
incbin "bin\\text\\shopping_08.bin"
shopping_09:
incbin "bin\\text\\shopping_09.bin"
shopping_10:
incbin "bin\\text\\shopping_10.bin"
shopping_11:
incbin "bin\\text\\shopping_11.bin"
shopping_12:
incbin "bin\\text\\shopping_12.bin"
shopping_13:
incbin "bin\\text\\shopping_13.bin"
shopping_14:
incbin "bin\\text\\shopping_14.bin"
shopping_15:
incbin "bin\\text\\shopping_15.bin"
shopping_16:
incbin "bin\\text\\shopping_16.bin"
shopping_17:
incbin "bin\\text\\shopping_17.bin"
shopping_18:
incbin "bin\\text\\shopping_18.bin"
shopping_19:
incbin "bin\\text\\shopping_19.bin"
shopping_20:
incbin "bin\\text\\shopping_20.bin"
shopping_21:
incbin "bin\\text\\shopping_21.bin"
shopping_22:
incbin "bin\\text\\shopping_22.bin"
shopping_23:
incbin "bin\\text\\shopping_23.bin"
shopping_24:
incbin "bin\\text\\shopping_24.bin"
shopping_25:
incbin "bin\\text\\shopping_25.bin"
shopping_26:
incbin "bin\\text\\shopping_26.bin"
shopping_27:
incbin "bin\\text\\shopping_27.bin"
shopping_28:
incbin "bin\\text\\shopping_28.bin"
shopping_29:
incbin "bin\\text\\shopping_29.bin"
shopping_30:
incbin "bin\\text\\shopping_30.bin"

skip 2
shopping_31:
incbin "bin\\text\\shopping_31.bin"
shopping_32:
incbin "bin\\text\\shopping_32.bin"
shopping_33:
incbin "bin\\text\\shopping_33.bin"
shopping_34:
incbin "bin\\text\\shopping_34.bin"
shopping_35:
incbin "bin\\text\\shopping_35.bin"
shopping_36:
incbin "bin\\text\\shopping_36.bin"
shopping_37:
incbin "bin\\text\\shopping_37.bin"
shopping_38:
incbin "bin\\text\\shopping_38.bin"
shopping_39:
incbin "bin\\text\\shopping_39.bin"
shopping_40:
incbin "bin\\text\\shopping_40.bin"
shopping_41:
incbin "bin\\text\\shopping_41.bin"
shopping_42:
incbin "bin\\text\\shopping_42.bin"
shopping_43:
incbin "bin\\text\\shopping_43.bin"
shopping_44:
incbin "bin\\text\\shopping_44.bin"
shopping_45:
incbin "bin\\text\\shopping_45.bin"
shopping_46:
incbin "bin\\text\\shopping_46.bin"

skip 2
shopping_47:
incbin "bin\\text\\shopping_47.bin"

skip 1
shopping_48:
incbin "bin\\text\\shopping_48.bin"
shopping_49:
incbin "bin\\text\\shopping_49.bin"
shopping_50:
incbin "bin\\text\\shopping_50.bin"
shopping_51:
incbin "bin\\text\\shopping_51.bin"
shopping_52:
incbin "bin\\text\\shopping_52.bin"
shopping_53:
incbin "bin\\text\\shopping_53.bin"

skip 2
shopping_54:
incbin "bin\\text\\shopping_54.bin"
shopping_55:
incbin "bin\\text\\shopping_55.bin"
shopping_56:
incbin "bin\\text\\shopping_56.bin"
shopping_57:
incbin "bin\\text\\shopping_57.bin"
shopping_58:
incbin "bin\\text\\shopping_58.bin"
shopping_59:
incbin "bin\\text\\shopping_59.bin"
shopping_60:
incbin "bin\\text\\shopping_60.bin"

skip 1
shopping_61:
incbin "bin\\text\\shopping_61.bin"
shopping_62:
incbin "bin\\text\\shopping_62.bin"
shopping_63:
incbin "bin\\text\\shopping_63.bin"
shopping_64:
incbin "bin\\text\\shopping_64.bin"
shopping_65:
incbin "bin\\text\\shopping_65.bin"
shopping_66:
incbin "bin\\text\\shopping_66.bin"
shopping_67:
incbin "bin\\text\\shopping_67.bin"
shopping_68:
incbin "bin\\text\\shopping_68.bin"
storage_00:
incbin "bin\\text\\storage_00.bin"
storage_01:
incbin "bin\\text\\storage_01.bin"

skip 2
storage_02:
incbin "bin\\text\\storage_02.bin"

skip 2
storage_03:
incbin "bin\\text\\storage_03.bin"
storage_04:
incbin "bin\\text\\storage_04.bin"
unused_unusedText30:
incbin "bin\\text\\unused_unusedText30.bin"
storage_05:
incbin "bin\\text\\storage_05.bin"

skip 3
storage_06:
incbin "bin\\text\\storage_06.bin"

skip 2
storage_07:
incbin "bin\\text\\storage_07.bin"

skip 2
storage_08:
incbin "bin\\text\\storage_08.bin"
storage_09:
incbin "bin\\text\\storage_09.bin"

skip 4
storage_10:
incbin "bin\\text\\storage_10.bin"

skip 1
storage_11:
incbin "bin\\text\\storage_11.bin"
storage_12:
incbin "bin\\text\\storage_12.bin"

skip 3
storage_13:
incbin "bin\\text\\storage_13.bin"

skip 5
storage_14:
incbin "bin\\text\\storage_14.bin"

skip 3
storage_15:
incbin "bin\\text\\storage_15.bin"
storage_16:
incbin "bin\\text\\storage_16.bin"

skip 2
storage_17:
incbin "bin\\text\\storage_17.bin"

skip 2
storage_18:
incbin "bin\\text\\storage_18.bin"

skip 5
storage_19:
incbin "bin\\text\\storage_19.bin"
storage_20:
incbin "bin\\text\\storage_20.bin"

skip 2
storage_21:
incbin "bin\\text\\storage_21.bin"

skip 2
storage_22:
incbin "bin\\text\\storage_22.bin"
storage_23:
incbin "bin\\text\\storage_23.bin"
storage_24:
incbin "bin\\text\\storage_24.bin"
storage_25:
incbin "bin\\text\\storage_25.bin"
storage_26:
incbin "bin\\text\\storage_26.bin"
storage_27:
incbin "bin\\text\\storage_27.bin"
storage_28:
incbin "bin\\text\\storage_28.bin"
storage_29:
incbin "bin\\text\\storage_29.bin"
storage_30:
incbin "bin\\text\\storage_30.bin"
storage_31:
incbin "bin\\text\\storage_31.bin"
storage_32:
incbin "bin\\text\\storage_32.bin"
storage_33:
incbin "bin\\text\\storage_33.bin"
storage_34:
incbin "bin\\text\\storage_34.bin"
storage_35:
incbin "bin\\text\\storage_35.bin"
storage_36:
incbin "bin\\text\\storage_36.bin"

skip 2
storage_37:
incbin "bin\\text\\storage_37.bin"
storage_38:
incbin "bin\\text\\storage_38.bin"
storage_39:
incbin "bin\\text\\storage_39.bin"
storage_40:
incbin "bin\\text\\storage_40.bin"
storage_41:
incbin "bin\\text\\storage_41.bin"

skip 2
storage_42:
incbin "bin\\text\\storage_42.bin"
storage_43:
incbin "bin\\text\\storage_43.bin"

skip 2
storage_44:
incbin "bin\\text\\storage_44.bin"

skip 3
storage_45:
incbin "bin\\text\\storage_45.bin"

skip 7
storage_46:
incbin "bin\\text\\storage_46.bin"

skip 7
storage_47:
incbin "bin\\text\\storage_47.bin"

skip 5
storage_48:
incbin "bin\\text\\storage_48.bin"

skip 7
storage_49:
incbin "bin\\text\\storage_49.bin"

skip 2
storage_50:
incbin "bin\\text\\storage_50.bin"

skip 7
storage_51:
incbin "bin\\text\\storage_51.bin"

skip 7
storage_52:
incbin "bin\\text\\storage_52.bin"
storage_53:
incbin "bin\\text\\storage_53.bin"

skip 7
storage_54:
incbin "bin\\text\\storage_54.bin"
storage_55:
incbin "bin\\text\\storage_55.bin"

skip 2
storage_56:
incbin "bin\\text\\storage_56.bin"

skip 7
storage_57:
incbin "bin\\text\\storage_57.bin"

skip 4
storage_58:
incbin "bin\\text\\storage_58.bin"

skip 7
storage_59:
incbin "bin\\text\\storage_59.bin"

skip 4
storage_60:
incbin "bin\\text\\storage_60.bin"
storage_61:
incbin "bin\\text\\storage_61.bin"

skip 2
storage_62:
incbin "bin\\text\\storage_62.bin"
storage_63:
incbin "bin\\text\\storage_63.bin"
storage_64:
incbin "bin\\text\\storage_64.bin"
storage_65:
incbin "bin\\text\\storage_65.bin"

skip 2
storage_66:
incbin "bin\\text\\storage_66.bin"

skip 2
storage_67:
incbin "bin\\text\\storage_67.bin"

skip 4
storage_68:
incbin "bin\\text\\storage_68.bin"
storage_69:
incbin "bin\\text\\storage_69.bin"

skip 2
storage_70:
incbin "bin\\text\\storage_70.bin"

skip 2
storage_71:
incbin "bin\\text\\storage_71.bin"

skip 2
storage_72:
incbin "bin\\text\\storage_72.bin"

skip 2
storage_73:
incbin "bin\\text\\storage_73.bin"

skip 2
storage_74:
incbin "bin\\text\\storage_74.bin"
storage_75:
incbin "bin\\text\\storage_75.bin"

skip 2
storage_76:
incbin "bin\\text\\storage_76.bin"

skip 2
storage_77:
incbin "bin\\text\\storage_77.bin"

skip 2
storage_78:
incbin "bin\\text\\storage_78.bin"

skip 2
storage_79:
incbin "bin\\text\\storage_79.bin"

skip 9
storage_80:
incbin "bin\\text\\storage_80.bin"
storage_81:
incbin "bin\\text\\storage_81.bin"

skip 8
storage_82:
incbin "bin\\text\\storage_82.bin"

skip 9
storage_83:
incbin "bin\\text\\storage_83.bin"

skip 9
storage_84:
incbin "bin\\text\\storage_84.bin"

skip 9
storage_85:
incbin "bin\\text\\storage_85.bin"

skip 9
storage_86:
incbin "bin\\text\\storage_86.bin"

skip 10
storage_87:
incbin "bin\\text\\storage_87.bin"
storage_88:
incbin "bin\\text\\storage_88.bin"
storage_89:
incbin "bin\\text\\storage_89.bin"
storage_90:
incbin "bin\\text\\storage_90.bin"
storage_91:
incbin "bin\\text\\storage_91.bin"
storage_92:
incbin "bin\\text\\storage_92.bin"
storage_93:
incbin "bin\\text\\storage_93.bin"

skip 3
storage_94:
incbin "bin\\text\\storage_94.bin"

skip 2
storage_95:
incbin "bin\\text\\storage_95.bin"
storage_96:
incbin "bin\\text\\storage_96.bin"
storage_97:
incbin "bin\\text\\storage_97.bin"

skip 2
storage_98:
incbin "bin\\text\\storage_98.bin"

skip 2
storage_99:
incbin "bin\\text\\storage_99.bin"
storage_100:
incbin "bin\\text\\storage_100.bin"
storage_101:
incbin "bin\\text\\storage_101.bin"
storage_102:
incbin "bin\\text\\storage_102.bin"

skip 2
storage_103:
incbin "bin\\text\\storage_103.bin"
storage_104:
incbin "bin\\text\\storage_104.bin"

skip 1
storage_105:
incbin "bin\\text\\storage_105.bin"

skip 2
storage_106:
incbin "bin\\text\\storage_106.bin"
storage_107:
incbin "bin\\text\\storage_107.bin"
storage_108:
incbin "bin\\text\\storage_108.bin"
storage_109:
incbin "bin\\text\\storage_109.bin"

skip 1
storage_110:
incbin "bin\\text\\storage_110.bin"
storage_111:
incbin "bin\\text\\storage_111.bin"
storage_112:
incbin "bin\\text\\storage_112.bin"

skip 2
storage_113:
incbin "bin\\text\\storage_113.bin"
storage_114:
incbin "bin\\text\\storage_114.bin"
storage_115:
incbin "bin\\text\\storage_115.bin"
storage_116:
incbin "bin\\text\\storage_116.bin"

skip 1
storage_117:
incbin "bin\\text\\storage_117.bin"

skip 2
storage_118:
incbin "bin\\text\\storage_118.bin"

skip 2
storage_119:
incbin "bin\\text\\storage_119.bin"

skip 1
storage_120:
incbin "bin\\text\\storage_120.bin"

skip 2
storage_121:
incbin "bin\\text\\storage_121.bin"
storage_122:
incbin "bin\\text\\storage_122.bin"
storage_123:
incbin "bin\\text\\storage_123.bin"

skip 2
storage_124:
incbin "bin\\text\\storage_124.bin"

skip 5
storage_125:
incbin "bin\\text\\storage_125.bin"
storage_126:
incbin "bin\\text\\storage_126.bin"
arena_00:
incbin "bin\\text\\arena_00.bin"

skip 9
arena_01:
incbin "bin\\text\\arena_01.bin"
arena_02:
incbin "bin\\text\\arena_02.bin"

skip 12
arena_03:
incbin "bin\\text\\arena_03.bin"

skip 2
arena_04:
incbin "bin\\text\\arena_04.bin"

skip 2
arena_05:
incbin "bin\\text\\arena_05.bin"

skip 2
arena_06:
incbin "bin\\text\\arena_06.bin"
arena_07:
incbin "bin\\text\\arena_07.bin"

skip 2
arena_08:
incbin "bin\\text\\arena_08.bin"

skip 2
arena_09:
incbin "bin\\text\\arena_09.bin"
endings_Book1Turns:
incbin "bin\\text\\endings_Book1Turns.bin"
endings_Book2BadTurns:
incbin "bin\\text\\endings_Book2BadTurns.bin"
endings_Book2GoodTurns:
incbin "bin\\text\\endings_Book2GoodTurns.bin"
endings_warOfDarknessRecords:
incbin "bin\\text\\endings_warOfDarknessRecords.bin"
endings_warOfHeroesRecords:
incbin "bin\\text\\endings_warOfHeroesRecords.bin"
endings_Book2ED:
incbin "bin\\text\\endings_Book2ED.bin"
endings_Book2History:
incbin "bin\\text\\endings_Book2History.bin"

org $e88000
incbin "bin\\text\\endings_Book2Historybank.bin"

org !def_saveMenu_resumeCh
saveMenu_resumeCh:
incbin "bin\\text\\saveMenu_resumeCh.bin"
saveMenu_restartCh:
incbin "bin\\text\\saveMenu_restartCh.bin"
saveMenu_newGame:
incbin "bin\\text\\saveMenu_newGame.bin"
saveMenu_copyFile:
incbin "bin\\text\\saveMenu_copyFile.bin"
saveMenu_eraseFile:
incbin "bin\\text\\saveMenu_eraseFile.bin"

skip 6
saveMenu_emptyFile:
incbin "bin\\text\\saveMenu_emptyFile.bin"
saveMenu_book1Start:
incbin "bin\\text\\saveMenu_book1Start.bin"
saveMenu_book2Start:
incbin "bin\\text\\saveMenu_book2Start.bin"

org !def_table_ChapterTitles
table_ChapterTitles:
dw ChapterTitles_00
dw ChapterTitles_01
dw ChapterTitles_02
dw ChapterTitles_03
dw ChapterTitles_04
dw ChapterTitles_05
dw ChapterTitles_06
dw ChapterTitles_07
dw ChapterTitles_08
dw ChapterTitles_09
dw ChapterTitles_10
dw ChapterTitles_11
dw ChapterTitles_12
dw ChapterTitles_13
dw ChapterTitles_14
dw ChapterTitles_15
dw ChapterTitles_16
dw ChapterTitles_17
dw ChapterTitles_18
dw ChapterTitles_19
dw ChapterTitles_20
dw ChapterTitles_21
dw ChapterTitles_22
dw ChapterTitles_23
dw ChapterTitles_24
dw ChapterTitles_25
dw ChapterTitles_26
dw ChapterTitles_27
dw ChapterTitles_28
dw ChapterTitles_29
dw ChapterTitles_30
dw ChapterTitles_31
dw ChapterTitles_32
dw ChapterTitles_33
dw ChapterTitles_34
dw ChapterTitles_35
dw ChapterTitles_36
dw ChapterTitles_37
dw ChapterTitles_38
dw ChapterTitles_39
dw ChapterTitles_40
dw ChapterTitles_41
dw ChapterTitles_42
dw ChapterTitles_43

org !def_table_charnames
table_charnames:
dw charnames_00
dw charnames_01
dw charnames_02
dw charnames_03
dw charnames_04
dw charnames_05
dw charnames_06
dw charnames_07
dw charnames_08
dw charnames_09
dw charnames_10
dw charnames_11
dw charnames_12
dw charnames_13
dw charnames_14
dw charnames_15
dw charnames_16
dw charnames_17
dw charnames_18
dw charnames_19
dw charnames_20
dw charnames_21
dw charnames_22
dw charnames_23
dw charnames_24
dw charnames_25
dw charnames_26
dw charnames_27
dw charnames_28
dw charnames_29
dw charnames_30
dw charnames_31
dw charnames_32
dw charnames_33
dw charnames_34
dw charnames_35
dw charnames_36
dw charnames_37
dw charnames_38
dw charnames_39
dw charnames_40
dw charnames_41
dw charnames_42
dw charnames_43
dw charnames_44
dw charnames_45
dw charnames_46
dw charnames_47
dw charnames_48
dw charnames_49
dw charnames_50
dw charnames_51
dw charnames_52
dw charnames_53
dw charnames_54
dw charnames_55
dw charnames_56
dw charnames_57
dw charnames_58
dw charnames_59
dw charnames_60
dw charnames_61
dw charnames_62
dw charnames_63
dw charnames_64
dw charnames_65
dw charnames_66
dw charnames_67
dw charnames_68
dw charnames_69
dw charnames_70
dw charnames_71
dw charnames_72
dw charnames_73
dw charnames_74
dw charnames_75
dw charnames_76
dw charnames_77
dw charnames_78
dw charnames_79
dw charnames_80
dw charnames_81
dw charnames_82
dw charnames_83
dw charnames_84
dw charnames_85
dw charnames_86
dw charnames_87
dw charnames_88
dw charnames_89
dw charnames_90
dw charnames_91
dw charnames_92
dw charnames_93
dw charnames_94
dw charnames_95
dw charnames_78
dw charnames_96
dw charnames_97
dw charnames_98
dw charnames_99
dw charnames_100
dw charnames_101
dw charnames_102
dw charnames_103
dw charnames_104
dw charnames_105
dw charnames_106
dw charnames_107
dw charnames_108
dw charnames_109
dw charnames_110
dw charnames_111
dw charnames_112
dw charnames_113
dw charnames_114
dw charnames_115
dw charnames_116
dw charnames_117
dw charnames_118
dw charnames_119
dw charnames_120
dw charnames_121
dw charnames_122
dw charnames_123
dw charnames_124
dw charnames_125
dw charnames_126
dw charnames_127
dw charnames_128
dw charnames_129
dw charnames_130
dw charnames_131
dw charnames_132
dw charnames_133
dw charnames_85
dw charnames_134
dw charnames_135
dw charnames_136
dw charnames_137
dw charnames_138
dw charnames_139
charnames_00:
incbin "bin\\text\\charnames_00.bin"
charnames_01:
incbin "bin\\text\\charnames_01.bin"
charnames_02:
incbin "bin\\text\\charnames_02.bin"
charnames_03:
incbin "bin\\text\\charnames_03.bin"
charnames_04:
incbin "bin\\text\\charnames_04.bin"
unused_01:
incbin "bin\\text\\unused_01.bin"
charnames_06:
incbin "bin\\text\\charnames_06.bin"
charnames_07:
incbin "bin\\text\\charnames_07.bin"
charnames_08:
incbin "bin\\text\\charnames_08.bin"
charnames_09:
incbin "bin\\text\\charnames_09.bin"
charnames_10:
incbin "bin\\text\\charnames_10.bin"
charnames_11:
incbin "bin\\text\\charnames_11.bin"
charnames_12:
incbin "bin\\text\\charnames_12.bin"
charnames_13:
incbin "bin\\text\\charnames_13.bin"
charnames_14:
incbin "bin\\text\\charnames_14.bin"
charnames_15:
incbin "bin\\text\\charnames_15.bin"
charnames_16:
incbin "bin\\text\\charnames_16.bin"
charnames_17:
incbin "bin\\text\\charnames_17.bin"
charnames_18:
incbin "bin\\text\\charnames_18.bin"
charnames_19:
incbin "bin\\text\\charnames_19.bin"
charnames_20:
incbin "bin\\text\\charnames_20.bin"
charnames_21:
incbin "bin\\text\\charnames_21.bin"
unused_02:
incbin "bin\\text\\unused_02.bin"
charnames_23:
incbin "bin\\text\\charnames_23.bin"
charnames_24:
incbin "bin\\text\\charnames_24.bin"
charnames_25:
incbin "bin\\text\\charnames_25.bin"
charnames_26:
incbin "bin\\text\\charnames_26.bin"
charnames_27:
incbin "bin\\text\\charnames_27.bin"
unused_03:
incbin "bin\\text\\unused_03.bin"
charnames_29:
incbin "bin\\text\\charnames_29.bin"
charnames_30:
incbin "bin\\text\\charnames_30.bin"
charnames_31:
incbin "bin\\text\\charnames_31.bin"
charnames_32:
incbin "bin\\text\\charnames_32.bin"
charnames_33:
incbin "bin\\text\\charnames_33.bin"
charnames_34:
incbin "bin\\text\\charnames_34.bin"
charnames_35:
incbin "bin\\text\\charnames_35.bin"
unused_04:
incbin "bin\\text\\unused_04.bin"
unused_05:
incbin "bin\\text\\unused_05.bin"
charnames_38:
incbin "bin\\text\\charnames_38.bin"
charnames_39:
incbin "bin\\text\\charnames_39.bin"
charnames_40:
incbin "bin\\text\\charnames_40.bin"
unused_06:
incbin "bin\\text\\unused_06.bin"
charnames_42:
incbin "bin\\text\\charnames_42.bin"
charnames_43:
incbin "bin\\text\\charnames_43.bin"
unused_07:
incbin "bin\\text\\unused_07.bin"
charnames_45:
incbin "bin\\text\\charnames_45.bin"
charnames_46:
incbin "bin\\text\\charnames_46.bin"
charnames_47:
incbin "bin\\text\\charnames_47.bin"
charnames_48:
incbin "bin\\text\\charnames_48.bin"
charnames_49:
incbin "bin\\text\\charnames_49.bin"
charnames_50:
incbin "bin\\text\\charnames_50.bin"
charnames_51:
incbin "bin\\text\\charnames_51.bin"
charnames_52:
incbin "bin\\text\\charnames_52.bin"
charnames_53:
incbin "bin\\text\\charnames_53.bin"
charnames_54:
incbin "bin\\text\\charnames_54.bin"
charnames_55:
incbin "bin\\text\\charnames_55.bin"
unused_08:
incbin "bin\\text\\unused_08.bin"
charnames_57:
incbin "bin\\text\\charnames_57.bin"
unused_09:
incbin "bin\\text\\unused_09.bin"
charnames_59:
incbin "bin\\text\\charnames_59.bin"
unused_10:
incbin "bin\\text\\unused_10.bin"
charnames_61:
incbin "bin\\text\\charnames_61.bin"
unused_11:
incbin "bin\\text\\unused_11.bin"
charnames_63:
incbin "bin\\text\\charnames_63.bin"
unused_12:
incbin "bin\\text\\unused_12.bin"
charnames_65:
incbin "bin\\text\\charnames_65.bin"
charnames_66:
incbin "bin\\text\\charnames_66.bin"
charnames_67:
incbin "bin\\text\\charnames_67.bin"
charnames_68:
incbin "bin\\text\\charnames_68.bin"
unused_13:
incbin "bin\\text\\unused_13.bin"
unused_14:
incbin "bin\\text\\unused_14.bin"
charnames_71:
incbin "bin\\text\\charnames_71.bin"
unused_15:
incbin "bin\\text\\unused_15.bin"
charnames_73:
incbin "bin\\text\\charnames_73.bin"
charnames_74:
incbin "bin\\text\\charnames_74.bin"
charnames_75:
incbin "bin\\text\\charnames_75.bin"
unused_16:
incbin "bin\\text\\unused_16.bin"
unused_17:
incbin "bin\\text\\unused_17.bin"
unused_18:
incbin "bin\\text\\unused_18.bin"
charnames_79:
incbin "bin\\text\\charnames_79.bin"
charnames_80:
incbin "bin\\text\\charnames_80.bin"
charnames_81:
incbin "bin\\text\\charnames_81.bin"
unused_19:
incbin "bin\\text\\unused_19.bin"
charnames_83:
incbin "bin\\text\\charnames_83.bin"
charnames_84:
incbin "bin\\text\\charnames_84.bin"
charnames_85:
incbin "bin\\text\\charnames_85.bin"
charnames_86:
incbin "bin\\text\\charnames_86.bin"
charnames_87:
incbin "bin\\text\\charnames_87.bin"
charnames_88:
incbin "bin\\text\\charnames_88.bin"
charnames_89:
incbin "bin\\text\\charnames_89.bin"
charnames_90:
incbin "bin\\text\\charnames_90.bin"
charnames_91:
incbin "bin\\text\\charnames_91.bin"
charnames_92:
incbin "bin\\text\\charnames_92.bin"
charnames_93:
incbin "bin\\text\\charnames_93.bin"
charnames_94:
incbin "bin\\text\\charnames_94.bin"
charnames_95:
incbin "bin\\text\\charnames_95.bin"
unused_20:
incbin "bin\\text\\unused_20.bin"
charnames_97:
incbin "bin\\text\\charnames_97.bin"
charnames_98:
incbin "bin\\text\\charnames_98.bin"
charnames_99:
incbin "bin\\text\\charnames_99.bin"
charnames_100:
incbin "bin\\text\\charnames_100.bin"
charnames_101:
incbin "bin\\text\\charnames_101.bin"
charnames_102:
incbin "bin\\text\\charnames_102.bin"
charnames_103:
incbin "bin\\text\\charnames_103.bin"
charnames_104:
incbin "bin\\text\\charnames_104.bin"
charnames_105:
incbin "bin\\text\\charnames_105.bin"
charnames_106:
incbin "bin\\text\\charnames_106.bin"
unused_21:
incbin "bin\\text\\unused_21.bin"
charnames_108:
incbin "bin\\text\\charnames_108.bin"
charnames_109:
incbin "bin\\text\\charnames_109.bin"
charnames_110:
incbin "bin\\text\\charnames_110.bin"
charnames_111:
incbin "bin\\text\\charnames_111.bin"
charnames_112:
incbin "bin\\text\\charnames_112.bin"
charnames_113:
incbin "bin\\text\\charnames_113.bin"
charnames_114:
incbin "bin\\text\\charnames_114.bin"
charnames_115:
incbin "bin\\text\\charnames_115.bin"
charnames_116:
incbin "bin\\text\\charnames_116.bin"
charnames_117:
incbin "bin\\text\\charnames_117.bin"
charnames_118:
incbin "bin\\text\\charnames_118.bin"
charnames_119:
incbin "bin\\text\\charnames_119.bin"
charnames_120:
incbin "bin\\text\\charnames_120.bin"
charnames_121:
incbin "bin\\text\\charnames_121.bin"
charnames_122:
incbin "bin\\text\\charnames_122.bin"
charnames_123:
incbin "bin\\text\\charnames_123.bin"
charnames_124:
incbin "bin\\text\\charnames_124.bin"
charnames_125:
incbin "bin\\text\\charnames_125.bin"
charnames_126:
incbin "bin\\text\\charnames_126.bin"
charnames_127:
incbin "bin\\text\\charnames_127.bin"
charnames_128:
incbin "bin\\text\\charnames_128.bin"
charnames_129:
incbin "bin\\text\\charnames_129.bin"
charnames_130:
incbin "bin\\text\\charnames_130.bin"
charnames_131:
incbin "bin\\text\\charnames_131.bin"
charnames_132:
incbin "bin\\text\\charnames_132.bin"
charnames_133:
incbin "bin\\text\\charnames_133.bin"
charnames_134:
incbin "bin\\text\\charnames_134.bin"
charnames_135:
incbin "bin\\text\\charnames_135.bin"
charnames_136:
incbin "bin\\text\\charnames_136.bin"
charnames_137:
incbin "bin\\text\\charnames_137.bin"
charnames_138:
incbin "bin\\text\\charnames_138.bin"
charnames_139:
incbin "bin\\text\\charnames_139.bin"
table_classnames:
dw classnames_00
dw classnames_01
dw classnames_02
dw classnames_03
dw classnames_04
dw classnames_05
dw classnames_05
dw classnames_06
dw classnames_07
dw classnames_08
dw classnames_09
dw classnames_10
dw classnames_11
dw classnames_12
dw classnames_13
dw classnames_14
dw classnames_15
dw classnames_16
dw classnames_17
dw classnames_18
dw classnames_19
dw classnames_20
dw classnames_21
dw classnames_22
dw classnames_23
dw classnames_22
dw classnames_23
dw classnames_23
dw classnames_14
dw classnames_24
dw classnames_25
dw classnames_26
dw classnames_27
dw classnames_28
dw classnames_29
dw classnames_30
dw classnames_31
dw classnames_32
dw classnames_33
dw classnames_34
dw classnames_35
dw classnames_36
dw classnames_37
dw classnames_38
dw classnames_39
classnames_00:
incbin "bin\\text\\classnames_00.bin"
classnames_01:
incbin "bin\\text\\classnames_01.bin"
classnames_02:
incbin "bin\\text\\classnames_02.bin"
unused_unusedText00:
incbin "bin\\text\\unused_unusedText00.bin"
classnames_04:
incbin "bin\\text\\classnames_04.bin"
classnames_05:
incbin "bin\\text\\classnames_05.bin"
classnames_06:
incbin "bin\\text\\classnames_06.bin"
classnames_07:
incbin "bin\\text\\classnames_07.bin"
classnames_08:
incbin "bin\\text\\classnames_08.bin"
unused_unusedText01:
incbin "bin\\text\\unused_unusedText01.bin"
classnames_10:
incbin "bin\\text\\classnames_10.bin"
classnames_11:
incbin "bin\\text\\classnames_11.bin"
classnames_12:
incbin "bin\\text\\classnames_12.bin"
classnames_13:
incbin "bin\\text\\classnames_13.bin"
classnames_14:
incbin "bin\\text\\classnames_14.bin"
classnames_15:
incbin "bin\\text\\classnames_15.bin"
unused_unusedText12:
incbin "bin\\text\\unused_unusedText12.bin"
classnames_17:
incbin "bin\\text\\classnames_17.bin"
classnames_18:
incbin "bin\\text\\classnames_18.bin"
classnames_19:
incbin "bin\\text\\classnames_19.bin"
classnames_20:
incbin "bin\\text\\classnames_20.bin"
classnames_21:
incbin "bin\\text\\classnames_21.bin"
classnames_22:
incbin "bin\\text\\classnames_22.bin"
classnames_23:
incbin "bin\\text\\classnames_23.bin"
classnames_24:
incbin "bin\\text\\classnames_24.bin"
classnames_25:
incbin "bin\\text\\classnames_25.bin"
classnames_26:
incbin "bin\\text\\classnames_26.bin"
classnames_27:
incbin "bin\\text\\classnames_27.bin"
classnames_28:
incbin "bin\\text\\classnames_28.bin"
unused_unusedText13:
incbin "bin\\text\\unused_unusedText13.bin"
classnames_29:
incbin "bin\\text\\classnames_29.bin"
unused_unusedText02:
incbin "bin\\text\\unused_unusedText02.bin"
classnames_31:
incbin "bin\\text\\classnames_31.bin"
classnames_32:
incbin "bin\\text\\classnames_32.bin"
classnames_33:
incbin "bin\\text\\classnames_33.bin"
classnames_34:
incbin "bin\\text\\classnames_34.bin"
classnames_35:
incbin "bin\\text\\classnames_35.bin"
classnames_36:
incbin "bin\\text\\classnames_36.bin"
classnames_37:
incbin "bin\\text\\classnames_37.bin"
classnames_38:
incbin "bin\\text\\classnames_38.bin"
classnames_39:
incbin "bin\\text\\classnames_39.bin"
table_classnames2:
dw classnames2_00
dw classnames2_01
dw classnames2_02
dw classnames2_03
dw classnames2_04
dw classnames2_05
dw classnames2_06
dw classnames2_07
dw classnames2_08
classnames2_00:
incbin "bin\\text\\classnames2_00.bin"
classnames2_01:
incbin "bin\\text\\classnames2_01.bin"
classnames2_02:
incbin "bin\\text\\classnames2_02.bin"
classnames2_03:
incbin "bin\\text\\classnames2_03.bin"
classnames2_04:
incbin "bin\\text\\classnames2_04.bin"
classnames2_05:
incbin "bin\\text\\classnames2_05.bin"
classnames2_06:
incbin "bin\\text\\classnames2_06.bin"
classnames2_07:
incbin "bin\\text\\classnames2_07.bin"
classnames2_08:
incbin "bin\\text\\classnames2_08.bin"

skip 10
table_classnames3:
dw classnames3_00
dw classnames3_01
dw classnames3_02
dw classnames3_03
classnames3_00:
incbin "bin\\text\\classnames3_00.bin"
classnames3_01:
incbin "bin\\text\\classnames3_01.bin"
classnames3_02:
incbin "bin\\text\\classnames3_02.bin"
classnames3_03:
incbin "bin\\text\\classnames3_03.bin"

skip 14
table_itemNames:
dw itemNames_00
dw itemNames_01
dw itemNames_02
dw itemNames_03
dw itemNames_04
dw itemNames_05
dw itemNames_06
dw itemNames_07
dw itemNames_08
dw itemNames_09
dw itemNames_10
dw itemNames_11
dw itemNames_12
dw itemNames_13
dw itemNames_14
dw itemNames_00
dw itemNames_01
dw itemNames_02
dw itemNames_15
dw itemNames_16
dw itemNames_06
dw itemNames_17
dw itemNames_18
dw itemNames_19
dw itemNames_00
dw itemNames_06
dw itemNames_01
dw itemNames_02
dw itemNames_17
dw itemNames_20
dw itemNames_00
dw itemNames_01
dw itemNames_21
dw itemNames_02
dw itemNames_05
dw itemNames_06
dw itemNames_22
dw itemNames_23
dw itemNames_24
dw itemNames_25
dw itemNames_26
dw itemNames_27
dw itemNames_28
dw itemNames_29
dw itemNames_30
dw itemNames_31
dw itemNames_32
dw itemNames_33
dw itemNames_34
dw itemNames_35
dw itemNames_36
dw itemNames_37
dw itemNames_38
dw itemNames_39
dw itemNames_40
dw itemNames_41
dw itemNames_42
dw itemNames_43
dw itemNames_44
dw itemNames_45
dw itemNames_46
dw itemNames_47
dw itemNames_48
dw itemNames_49
dw itemNames_50
dw itemNames_51
dw itemNames_52
dw itemNames_53
dw itemNames_54
dw itemNames_55
dw itemNames_56
dw itemNames_57
dw itemNames_58
dw itemNames_59
dw itemNames_60
dw itemNames_61
dw itemNames_62
dw itemNames_63
dw itemNames_64
dw itemNames_65
dw itemNames_60
dw itemNames_66
dw itemNames_67
dw itemNames_68
dw itemNames_69
dw itemNames_70
dw itemNames_71
dw itemNames_72
dw itemNames_73
dw itemNames_74
dw itemNames_75
dw itemNames_76
dw itemNames_77
dw itemNames_78
dw itemNames_79
dw itemNames_80
dw itemNames_81
dw itemNames_82
dw itemNames_83
dw itemNames_84
dw itemNames_85
dw itemNames_86
dw itemNames_87
dw itemNames_88
dw itemNames_89
dw itemNames_90
dw itemNames_91
dw itemNames_46
dw itemNames_92
dw itemNames_93
dw itemNames_94
dw itemNames_95
dw itemNames_96
dw itemNames_97
dw itemNames_98
dw itemNames_99
dw itemNames_100
dw itemNames_101
dw itemNames_102
dw itemNames_103
dw itemNames_104
dw itemNames_105
dw itemNames_106
dw itemNames_107
dw itemNames_108
dw itemNames_109
dw itemNames_110
itemNames_00:
incbin "bin\\text\\itemNames_00.bin"
itemNames_01:
incbin "bin\\text\\itemNames_01.bin"
itemNames_02:
incbin "bin\\text\\itemNames_02.bin"
itemNames_03:
incbin "bin\\text\\itemNames_03.bin"
unused_unusedText03:
incbin "bin\\text\\unused_unusedText03.bin"
itemNames_05:
incbin "bin\\text\\itemNames_05.bin"
itemNames_06:
incbin "bin\\text\\itemNames_06.bin"
itemNames_07:
incbin "bin\\text\\itemNames_07.bin"
itemNames_08:
incbin "bin\\text\\itemNames_08.bin"
itemNames_32:
incbin "bin\\text\\itemNames_32.bin"
itemNames_10:
incbin "bin\\text\\itemNames_10.bin"
itemNames_11:
incbin "bin\\text\\itemNames_11.bin"
itemNames_12:
incbin "bin\\text\\itemNames_12.bin"
itemNames_13:
incbin "bin\\text\\itemNames_13.bin"
itemNames_14:
incbin "bin\\text\\itemNames_14.bin"
itemNames_15:
incbin "bin\\text\\itemNames_15.bin"
itemNames_16:
incbin "bin\\text\\itemNames_16.bin"
itemNames_17:
incbin "bin\\text\\itemNames_17.bin"
itemNames_18:
incbin "bin\\text\\itemNames_18.bin"
unused_unusedText04:
incbin "bin\\text\\unused_unusedText04.bin"
unused_unusedText05:
incbin "bin\\text\\unused_unusedText05.bin"
itemNames_21:
incbin "bin\\text\\itemNames_21.bin"
unused_unusedText06:
incbin "bin\\text\\unused_unusedText06.bin"
unused_unusedText07:
incbin "bin\\text\\unused_unusedText07.bin"
unused_unusedText08:
incbin "bin\\text\\unused_unusedText08.bin"
itemNames_25:
incbin "bin\\text\\itemNames_25.bin"
itemNames_26:
incbin "bin\\text\\itemNames_26.bin"
itemNames_27:
incbin "bin\\text\\itemNames_27.bin"
itemNames_28:
incbin "bin\\text\\itemNames_28.bin"
itemNames_29:
incbin "bin\\text\\itemNames_29.bin"
itemNames_30:
incbin "bin\\text\\itemNames_30.bin"
itemNames_31:
incbin "bin\\text\\itemNames_31.bin"
itemNames_33:
incbin "bin\\text\\itemNames_33.bin"
itemNames_34:
incbin "bin\\text\\itemNames_34.bin"
itemNames_35:
incbin "bin\\text\\itemNames_35.bin"
itemNames_36:
incbin "bin\\text\\itemNames_36.bin"
itemNames_37:
incbin "bin\\text\\itemNames_37.bin"
itemNames_38:
incbin "bin\\text\\itemNames_38.bin"
itemNames_39:
incbin "bin\\text\\itemNames_39.bin"
itemNames_40:
incbin "bin\\text\\itemNames_40.bin"
unused_unusedText09:
incbin "bin\\text\\unused_unusedText09.bin"
itemNames_42:
incbin "bin\\text\\itemNames_42.bin"
unused_unusedText10:
incbin "bin\\text\\unused_unusedText10.bin"
itemNames_44:
incbin "bin\\text\\itemNames_44.bin"
unused_unusedText11:
incbin "bin\\text\\unused_unusedText11.bin"
itemNames_46:
incbin "bin\\text\\itemNames_46.bin"
unused_unusedText14:
incbin "bin\\text\\unused_unusedText14.bin"
itemNames_47:
incbin "bin\\text\\itemNames_47.bin"
itemNames_48:
incbin "bin\\text\\itemNames_48.bin"
itemNames_49:
incbin "bin\\text\\itemNames_49.bin"
itemNames_50:
incbin "bin\\text\\itemNames_50.bin"
itemNames_51:
incbin "bin\\text\\itemNames_51.bin"
itemNames_52:
incbin "bin\\text\\itemNames_52.bin"
itemNames_53:
incbin "bin\\text\\itemNames_53.bin"
unused_unusedText15:
incbin "bin\\text\\unused_unusedText15.bin"
unused_unusedText16:
incbin "bin\\text\\unused_unusedText16.bin"
itemNames_54:
incbin "bin\\text\\itemNames_54.bin"
itemNames_55:
incbin "bin\\text\\itemNames_55.bin"
itemNames_56:
incbin "bin\\text\\itemNames_56.bin"
itemNames_57:
incbin "bin\\text\\itemNames_57.bin"
itemNames_58:
incbin "bin\\text\\itemNames_58.bin"
itemNames_59:
incbin "bin\\text\\itemNames_59.bin"
itemNames_60:
incbin "bin\\text\\itemNames_60.bin"
itemNames_61:
incbin "bin\\text\\itemNames_61.bin"
itemNames_62:
incbin "bin\\text\\itemNames_62.bin"
itemNames_63:
incbin "bin\\text\\itemNames_63.bin"
itemNames_64:
incbin "bin\\text\\itemNames_64.bin"
itemNames_65:
incbin "bin\\text\\itemNames_65.bin"
itemNames_66:
incbin "bin\\text\\itemNames_66.bin"
itemNames_67:
incbin "bin\\text\\itemNames_67.bin"
itemNames_68:
incbin "bin\\text\\itemNames_68.bin"
itemNames_69:
incbin "bin\\text\\itemNames_69.bin"
itemNames_70:
incbin "bin\\text\\itemNames_70.bin"
itemNames_71:
incbin "bin\\text\\itemNames_71.bin"
itemNames_72:
incbin "bin\\text\\itemNames_72.bin"
itemNames_73:
incbin "bin\\text\\itemNames_73.bin"
itemNames_74:
incbin "bin\\text\\itemNames_74.bin"
itemNames_75:
incbin "bin\\text\\itemNames_75.bin"
itemNames_76:
incbin "bin\\text\\itemNames_76.bin"
itemNames_77:
incbin "bin\\text\\itemNames_77.bin"
itemNames_78:
incbin "bin\\text\\itemNames_78.bin"
itemNames_79:
incbin "bin\\text\\itemNames_79.bin"
itemNames_80:
incbin "bin\\text\\itemNames_80.bin"
itemNames_81:
incbin "bin\\text\\itemNames_81.bin"
itemNames_82:
incbin "bin\\text\\itemNames_82.bin"
itemNames_83:
incbin "bin\\text\\itemNames_83.bin"
itemNames_84:
incbin "bin\\text\\itemNames_84.bin"
itemNames_85:
incbin "bin\\text\\itemNames_85.bin"
itemNames_86:
incbin "bin\\text\\itemNames_86.bin"
itemNames_87:
incbin "bin\\text\\itemNames_87.bin"
itemNames_88:
incbin "bin\\text\\itemNames_88.bin"
itemNames_89:
incbin "bin\\text\\itemNames_89.bin"
itemNames_90:
incbin "bin\\text\\itemNames_90.bin"
itemNames_91:
incbin "bin\\text\\itemNames_91.bin"
itemNames_92:
incbin "bin\\text\\itemNames_92.bin"
itemNames_93:
incbin "bin\\text\\itemNames_93.bin"
itemNames_94:
incbin "bin\\text\\itemNames_94.bin"
itemNames_95:
incbin "bin\\text\\itemNames_95.bin"
itemNames_96:
incbin "bin\\text\\itemNames_96.bin"
itemNames_97:
incbin "bin\\text\\itemNames_97.bin"
itemNames_98:
incbin "bin\\text\\itemNames_98.bin"
itemNames_99:
incbin "bin\\text\\itemNames_99.bin"
itemNames_100:
incbin "bin\\text\\itemNames_100.bin"
itemNames_101:
incbin "bin\\text\\itemNames_101.bin"
itemNames_102:
incbin "bin\\text\\itemNames_102.bin"
itemNames_103:
incbin "bin\\text\\itemNames_103.bin"
itemNames_104:
incbin "bin\\text\\itemNames_104.bin"
itemNames_105:
incbin "bin\\text\\itemNames_105.bin"
itemNames_106:
incbin "bin\\text\\itemNames_106.bin"
itemNames_107:
incbin "bin\\text\\itemNames_107.bin"
itemNames_108:
incbin "bin\\text\\itemNames_108.bin"
itemNames_109:
incbin "bin\\text\\itemNames_109.bin"
itemNames_110:
incbin "bin\\text\\itemNames_110.bin"
table_itemDescription:
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_01
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_00
dw itemDescription_02
dw itemDescription_02
dw itemDescription_02
dw itemDescription_03
dw itemDescription_04
dw itemDescription_05
dw itemDescription_06
dw itemDescription_07
dw itemDescription_08
dw itemDescription_09
dw itemDescription_10
dw itemDescription_11
dw itemDescription_12
dw itemDescription_13
dw itemDescription_14
dw itemDescription_15
dw itemDescription_16
dw itemDescription_17
dw itemDescription_18
dw itemDescription_19
dw itemDescription_20
dw itemDescription_21
dw itemDescription_22
dw itemDescription_23
dw itemDescription_24
dw itemDescription_25
dw itemDescription_26
dw itemDescription_27
dw itemDescription_28
dw itemDescription_29
dw itemDescription_30
dw itemDescription_31
dw itemDescription_32
dw itemDescription_33
dw itemDescription_34
dw itemDescription_35
dw itemDescription_36
dw itemDescription_37
dw itemDescription_38
dw itemDescription_39
dw itemDescription_40
dw itemDescription_41
dw itemDescription_42
dw itemDescription_43
dw itemDescription_44
dw itemDescription_45
dw itemDescription_46
dw itemDescription_02
dw itemDescription_02
dw itemDescription_47
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_48
dw itemDescription_49
dw itemDescription_50
dw itemDescription_51
dw itemDescription_02
dw itemDescription_02
dw itemDescription_02
dw itemDescription_03
itemDescription_00:
incbin "bin\\text\\itemDescription_00.bin"
itemDescription_01:
incbin "bin\\text\\itemDescription_01.bin"
itemDescription_02:
incbin "bin\\text\\itemDescription_02.bin"
itemDescription_03:
incbin "bin\\text\\itemDescription_03.bin"
itemDescription_04:
incbin "bin\\text\\itemDescription_04.bin"
itemDescription_05:
incbin "bin\\text\\itemDescription_05.bin"
itemDescription_06:
incbin "bin\\text\\itemDescription_06.bin"
itemDescription_07:
incbin "bin\\text\\itemDescription_07.bin"
itemDescription_08:
incbin "bin\\text\\itemDescription_08.bin"
itemDescription_09:
incbin "bin\\text\\itemDescription_09.bin"
itemDescription_10:
incbin "bin\\text\\itemDescription_10.bin"
itemDescription_11:
incbin "bin\\text\\itemDescription_11.bin"
itemDescription_12:
incbin "bin\\text\\itemDescription_12.bin"
itemDescription_13:
incbin "bin\\text\\itemDescription_13.bin"
itemDescription_14:
incbin "bin\\text\\itemDescription_14.bin"
itemDescription_15:
incbin "bin\\text\\itemDescription_15.bin"
itemDescription_16:
incbin "bin\\text\\itemDescription_16.bin"
itemDescription_17:
incbin "bin\\text\\itemDescription_17.bin"
itemDescription_18:
incbin "bin\\text\\itemDescription_18.bin"
itemDescription_19:
incbin "bin\\text\\itemDescription_19.bin"
itemDescription_20:
incbin "bin\\text\\itemDescription_20.bin"
itemDescription_21:
incbin "bin\\text\\itemDescription_21.bin"
itemDescription_22:
incbin "bin\\text\\itemDescription_22.bin"
itemDescription_23:
incbin "bin\\text\\itemDescription_23.bin"
itemDescription_24:
incbin "bin\\text\\itemDescription_24.bin"
itemDescription_25:
incbin "bin\\text\\itemDescription_25.bin"
itemDescription_26:
incbin "bin\\text\\itemDescription_26.bin"
itemDescription_27:
incbin "bin\\text\\itemDescription_27.bin"
itemDescription_28:
incbin "bin\\text\\itemDescription_28.bin"
itemDescription_29:
incbin "bin\\text\\itemDescription_29.bin"
itemDescription_30:
incbin "bin\\text\\itemDescription_30.bin"
itemDescription_31:
incbin "bin\\text\\itemDescription_31.bin"
itemDescription_32:
incbin "bin\\text\\itemDescription_32.bin"
itemDescription_33:
incbin "bin\\text\\itemDescription_33.bin"
itemDescription_34:
incbin "bin\\text\\itemDescription_34.bin"
itemDescription_35:
incbin "bin\\text\\itemDescription_35.bin"
itemDescription_36:
incbin "bin\\text\\itemDescription_36.bin"
itemDescription_37:
incbin "bin\\text\\itemDescription_37.bin"
itemDescription_38:
incbin "bin\\text\\itemDescription_38.bin"
itemDescription_39:
incbin "bin\\text\\itemDescription_39.bin"
itemDescription_40:
incbin "bin\\text\\itemDescription_40.bin"
itemDescription_41:
incbin "bin\\text\\itemDescription_41.bin"
itemDescription_42:
incbin "bin\\text\\itemDescription_42.bin"
itemDescription_43:
incbin "bin\\text\\itemDescription_43.bin"
itemDescription_44:
incbin "bin\\text\\itemDescription_44.bin"
itemDescription_45:
incbin "bin\\text\\itemDescription_45.bin"
itemDescription_46:
incbin "bin\\text\\itemDescription_46.bin"
itemDescription_47:
incbin "bin\\text\\itemDescription_47.bin"
itemDescription_48:
incbin "bin\\text\\itemDescription_48.bin"
itemDescription_49:
incbin "bin\\text\\itemDescription_49.bin"
itemDescription_50:
incbin "bin\\text\\itemDescription_50.bin"
itemDescription_51:
incbin "bin\\text\\itemDescription_51.bin"

org !def_table_statusTitles
table_statusTitles:
dw statusTitles_00
dw statusTitles_01
dw statusTitles_02
dw statusTitles_03
dw statusTitles_04
dw statusTitles_05
dw statusTitles_06
dw statusTitles_07
dw statusTitles_08
dw statusTitles_09
dw statusTitles_10
dw statusTitles_11
dw statusTitles_12
dw statusTitles_13
dw statusTitles_14
dw statusTitles_15
dw statusTitles_16
dw statusTitles_17
dw statusTitles_18
dw statusTitles_19
dw statusTitles_20
dw statusTitles_21
dw statusTitles_22
dw statusTitles_23
dw statusTitles_24
dw statusTitles_25
dw statusTitles_26
dw statusTitles_27
dw statusTitles_28
dw statusTitles_29
dw statusTitles_30
dw statusTitles_31
dw statusTitles_32
dw statusTitles_33
dw statusTitles_34
dw statusTitles_35
dw statusTitles_36
dw statusTitles_37
dw statusTitles_38
dw statusTitles_39
dw statusTitles_40
dw statusTitles_41
dw statusTitles_42
dw statusTitles_42
dw statusTitles_42
statusTitles_00:
incbin "bin\\text\\statusTitles_00.bin"
statusTitles_01:
incbin "bin\\text\\statusTitles_01.bin"
statusTitles_02:
incbin "bin\\text\\statusTitles_02.bin"
statusTitles_03:
incbin "bin\\text\\statusTitles_03.bin"
statusTitles_04:
incbin "bin\\text\\statusTitles_04.bin"
statusTitles_05:
incbin "bin\\text\\statusTitles_05.bin"
statusTitles_06:
incbin "bin\\text\\statusTitles_06.bin"
statusTitles_07:
incbin "bin\\text\\statusTitles_07.bin"
statusTitles_08:
incbin "bin\\text\\statusTitles_08.bin"
statusTitles_09:
incbin "bin\\text\\statusTitles_09.bin"
statusTitles_10:
incbin "bin\\text\\statusTitles_10.bin"
statusTitles_11:
incbin "bin\\text\\statusTitles_11.bin"
statusTitles_12:
incbin "bin\\text\\statusTitles_12.bin"
statusTitles_13:
incbin "bin\\text\\statusTitles_13.bin"
statusTitles_14:
incbin "bin\\text\\statusTitles_14.bin"
statusTitles_15:
incbin "bin\\text\\statusTitles_15.bin"
statusTitles_16:
incbin "bin\\text\\statusTitles_16.bin"
statusTitles_17:
incbin "bin\\text\\statusTitles_17.bin"
statusTitles_18:
incbin "bin\\text\\statusTitles_18.bin"
statusTitles_19:
incbin "bin\\text\\statusTitles_19.bin"
statusTitles_20:
incbin "bin\\text\\statusTitles_20.bin"
statusTitles_21:
incbin "bin\\text\\statusTitles_21.bin"
statusTitles_22:
incbin "bin\\text\\statusTitles_22.bin"
statusTitles_23:
incbin "bin\\text\\statusTitles_23.bin"
statusTitles_24:
incbin "bin\\text\\statusTitles_24.bin"
statusTitles_25:
incbin "bin\\text\\statusTitles_25.bin"
statusTitles_26:
incbin "bin\\text\\statusTitles_26.bin"
statusTitles_27:
incbin "bin\\text\\statusTitles_27.bin"
statusTitles_28:
incbin "bin\\text\\statusTitles_28.bin"
statusTitles_29:
incbin "bin\\text\\statusTitles_29.bin"
statusTitles_30:
incbin "bin\\text\\statusTitles_30.bin"
statusTitles_31:
incbin "bin\\text\\statusTitles_31.bin"
statusTitles_32:
incbin "bin\\text\\statusTitles_32.bin"
statusTitles_33:
incbin "bin\\text\\statusTitles_33.bin"
statusTitles_34:
incbin "bin\\text\\statusTitles_34.bin"
statusTitles_35:
incbin "bin\\text\\statusTitles_35.bin"
statusTitles_36:
incbin "bin\\text\\statusTitles_36.bin"
statusTitles_37:
incbin "bin\\text\\statusTitles_37.bin"
statusTitles_38:
incbin "bin\\text\\statusTitles_38.bin"
statusTitles_39:
incbin "bin\\text\\statusTitles_39.bin"
statusTitles_40:
incbin "bin\\text\\statusTitles_40.bin"
statusTitles_41:
incbin "bin\\text\\statusTitles_41.bin"
statusTitles_42:
incbin "bin\\text\\statusTitles_42.bin"

org !def_table_statusObjectives
table_statusObjectives:
dw statusObjectives_00
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_01
dw statusObjectives_02
dw statusObjectives_02
dw statusObjectives_03
statusObjectives_00:
incbin "bin\\text\\statusObjectives_00.bin"
statusObjectives_01:
incbin "bin\\text\\statusObjectives_01.bin"
statusObjectives_02:
incbin "bin\\text\\statusObjectives_02.bin"
statusObjectives_03:
incbin "bin\\text\\statusObjectives_03.bin"
table_terrain:
dw terrain_00
dw terrain_01
dw terrain_02
dw terrain_03
dw terrain_04
dw terrain_05
dw terrain_06
dw terrain_07
dw terrain_08
dw terrain_09
dw terrain_10
dw terrain_11
dw terrain_00
dw terrain_01
dw terrain_02
dw terrain_03
dw terrain_04
dw terrain_05
dw terrain_06
dw terrain_07
dw terrain_05
dw terrain_12
dw terrain_12
dw terrain_04
dw terrain_13
dw terrain_14
dw terrain_15
dw terrain_15
dw terrain_15
dw terrain_15
dw terrain_15
dw terrain_16
dw terrain_15
dw terrain_15
dw terrain_16
dw terrain_16
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_14
dw terrain_13
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_19
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_20
dw terrain_20
dw terrain_21
dw terrain_22
dw terrain_23
dw terrain_21
dw terrain_24
dw terrain_16
dw terrain_25
dw terrain_20
dw terrain_20
dw terrain_26
dw terrain_26
dw terrain_27
dw terrain_08
dw terrain_09
dw terrain_13
dw terrain_28
dw terrain_21
dw terrain_14
dw terrain_22
dw terrain_27
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_23
dw terrain_22
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_20
dw terrain_23
dw terrain_15
dw terrain_16
dw terrain_17
dw terrain_18
dw terrain_22
dw terrain_23
dw terrain_20
dw terrain_20
dw terrain_29
dw terrain_30
dw terrain_28
dw terrain_31
dw terrain_17
dw terrain_22
dw terrain_32
dw terrain_17
dw terrain_33
terrain_00:
incbin "bin\\text\\terrain_00.bin"
terrain_01:
incbin "bin\\text\\terrain_01.bin"
terrain_02:
incbin "bin\\text\\terrain_02.bin"
terrain_03:
incbin "bin\\text\\terrain_03.bin"
terrain_04:
incbin "bin\\text\\terrain_04.bin"
terrain_05:
incbin "bin\\text\\terrain_05.bin"
terrain_06:
incbin "bin\\text\\terrain_06.bin"
terrain_07:
incbin "bin\\text\\terrain_07.bin"
terrain_08:
incbin "bin\\text\\terrain_08.bin"
terrain_09:
incbin "bin\\text\\terrain_09.bin"
terrain_10:
incbin "bin\\text\\terrain_10.bin"
terrain_11:
incbin "bin\\text\\terrain_11.bin"
terrain_12:
incbin "bin\\text\\terrain_12.bin"
terrain_13:
incbin "bin\\text\\terrain_13.bin"
terrain_14:
incbin "bin\\text\\terrain_14.bin"
terrain_15:
incbin "bin\\text\\terrain_15.bin"
terrain_16:
incbin "bin\\text\\terrain_16.bin"
terrain_17:
incbin "bin\\text\\terrain_17.bin"
terrain_18:
incbin "bin\\text\\terrain_18.bin"
terrain_19:
incbin "bin\\text\\terrain_19.bin"
terrain_20:
incbin "bin\\text\\terrain_20.bin"
terrain_21:
incbin "bin\\text\\terrain_21.bin"
terrain_22:
incbin "bin\\text\\terrain_22.bin"
terrain_23:
incbin "bin\\text\\terrain_23.bin"
terrain_24:
incbin "bin\\text\\terrain_24.bin"
terrain_25:
incbin "bin\\text\\terrain_25.bin"
terrain_26:
incbin "bin\\text\\terrain_26.bin"
terrain_27:
incbin "bin\\text\\terrain_27.bin"
terrain_28:
incbin "bin\\text\\terrain_28.bin"
terrain_29:
incbin "bin\\text\\terrain_29.bin"
terrain_30:
incbin "bin\\text\\terrain_30.bin"

skip 4
terrain_31:
incbin "bin\\text\\terrain_31.bin"
terrain_32:
incbin "bin\\text\\terrain_32.bin"
terrain_33:
incbin "bin\\text\\terrain_33.bin"
table_menuCommands:
dw menuCommands_00
dw menuCommands_01
dw menuCommands_02
dw menuCommands_03
dw menuCommands_04
dw menuCommands_05
dw menuCommands_06
dw menuCommands_07
dw menuCommands_08
dw menuCommands_09
dw menuCommands_10
dw menuCommands_11
dw menuCommands_12
dw menuCommands_13
dw menuCommands_14
dw menuCommands_15
dw menuCommands_16
dw menuCommands_17
dw menuCommands_18
dw menuCommands_19
dw menuCommands_20
dw menuCommands_21
dw menuCommands_22
dw menuCommands_23
menuCommands_00:
incbin "bin\\text\\menuCommands_00.bin"
menuCommands_01:
incbin "bin\\text\\menuCommands_01.bin"
menuCommands_02:
incbin "bin\\text\\menuCommands_02.bin"
menuCommands_03:
incbin "bin\\text\\menuCommands_03.bin"
menuCommands_04:
incbin "bin\\text\\menuCommands_04.bin"
menuCommands_05:
incbin "bin\\text\\menuCommands_05.bin"
menuCommands_06:
incbin "bin\\text\\menuCommands_06.bin"
menuCommands_07:
incbin "bin\\text\\menuCommands_07.bin"
menuCommands_08:
incbin "bin\\text\\menuCommands_08.bin"
menuCommands_09:
incbin "bin\\text\\menuCommands_09.bin"
menuCommands_10:
incbin "bin\\text\\menuCommands_10.bin"
menuCommands_11:
incbin "bin\\text\\menuCommands_11.bin"
menuCommands_12:
incbin "bin\\text\\menuCommands_12.bin"
menuCommands_13:
incbin "bin\\text\\menuCommands_13.bin"
menuCommands_14:
incbin "bin\\text\\menuCommands_14.bin"
menuCommands_15:
incbin "bin\\text\\menuCommands_15.bin"
menuCommands_16:
incbin "bin\\text\\menuCommands_16.bin"
menuCommands_17:
incbin "bin\\text\\menuCommands_17.bin"
menuCommands_18:
incbin "bin\\text\\menuCommands_18.bin"
menuCommands_19:
incbin "bin\\text\\menuCommands_19.bin"
menuCommands_20:
incbin "bin\\text\\menuCommands_20.bin"
menuCommands_21:
incbin "bin\\text\\menuCommands_21.bin"
menuCommands_22:
incbin "bin\\text\\menuCommands_22.bin"
menuCommands_23:
incbin "bin\\text\\menuCommands_23.bin"
table_menuStats:
dw menuStats_00
dw menuStats_01
dw menuStats_02
dw menuStats_03
dw menuStats_04
dw menuStats_05
dw menuStats_06
dw menuStats_07
dw menuStats_08
dw menuStats_09
dw menuStats_10
dw menuStats_11
dw menuStats_12
dw menuStats_13
dw menuStats_14
dw menuStats_15
menuStats_00:
incbin "bin\\text\\menuStats_00.bin"
menuStats_01:
incbin "bin\\text\\menuStats_01.bin"
menuStats_02:
incbin "bin\\text\\menuStats_02.bin"
menuStats_03:
incbin "bin\\text\\menuStats_03.bin"
menuStats_04:
incbin "bin\\text\\menuStats_04.bin"
menuStats_05:
incbin "bin\\text\\menuStats_05.bin"
menuStats_06:
incbin "bin\\text\\menuStats_06.bin"
menuStats_07:
incbin "bin\\text\\menuStats_07.bin"
menuStats_08:
incbin "bin\\text\\menuStats_08.bin"
menuStats_09:
incbin "bin\\text\\menuStats_09.bin"
menuStats_10:
incbin "bin\\text\\menuStats_10.bin"
menuStats_11:
incbin "bin\\text\\menuStats_11.bin"
menuStats_12:
incbin "bin\\text\\menuStats_12.bin"
menuStats_13:
incbin "bin\\text\\menuStats_13.bin"
menuStats_14:
incbin "bin\\text\\menuStats_14.bin"
menuStats_15:
incbin "bin\\text\\menuStats_15.bin"
table_suspend:
dw suspend_00
dw suspend_01
dw suspend_02
dw suspend_03
dw suspend_04
dw suspend_05
dw suspend_06
dw suspend_07
dw suspend_08
dw suspend_09
dw suspend_10
dw suspend_11
dw suspend_12
dw suspend_13
suspend_00:
incbin "bin\\text\\suspend_00.bin"
suspend_01:
incbin "bin\\text\\suspend_01.bin"
suspend_02:
incbin "bin\\text\\suspend_02.bin"
suspend_03:
incbin "bin\\text\\suspend_03.bin"
suspend_04:
incbin "bin\\text\\suspend_04.bin"
suspend_05:
incbin "bin\\text\\suspend_05.bin"
suspend_06:
incbin "bin\\text\\suspend_06.bin"
suspend_07:
incbin "bin\\text\\suspend_07.bin"
suspend_08:
incbin "bin\\text\\suspend_08.bin"
suspend_09:
incbin "bin\\text\\suspend_09.bin"
suspend_10:
incbin "bin\\text\\suspend_10.bin"
suspend_11:
incbin "bin\\text\\suspend_11.bin"
suspend_12:
incbin "bin\\text\\suspend_12.bin"
unused_unusedText17:
incbin "bin\\text\\unused_unusedText17.bin"
unused_unusedText18:
incbin "bin\\text\\unused_unusedText18.bin"
unused_unusedText19:
incbin "bin\\text\\unused_unusedText19.bin"
suspend_13:
incbin "bin\\text\\suspend_13.bin"
table_unitsMenu:
dw unitsMenu_00
dw unitsMenu_01
dw unitsMenu_02
dw unitsMenu_03
dw unitsMenu_04
unitsMenu_00:
incbin "bin\\text\\unitsMenu_00.bin"
unitsMenu_01:
incbin "bin\\text\\unitsMenu_01.bin"
unitsMenu_02:
incbin "bin\\text\\unitsMenu_02.bin"
unitsMenu_03:
incbin "bin\\text\\unitsMenu_03.bin"
unitsMenu_04:
incbin "bin\\text\\unitsMenu_04.bin"
table_selectMenu:
dw selectMenu_00
dw selectMenu_01
dw selectMenu_02
dw selectMenu_03
dw selectMenu_04
dw selectMenu_05
selectMenu_00:
incbin "bin\\text\\selectMenu_00.bin"
selectMenu_01:
incbin "bin\\text\\selectMenu_01.bin"
selectMenu_02:
incbin "bin\\text\\selectMenu_02.bin"
selectMenu_03:
incbin "bin\\text\\selectMenu_03.bin"
selectMenu_04:
incbin "bin\\text\\selectMenu_04.bin"
selectMenu_05:
incbin "bin\\text\\selectMenu_05.bin"
table_configMenu:
dw configMenu_00
dw configMenu_01
dw configMenu_02
dw configMenu_03
dw configMenu_04
dw configMenu_05
configMenu_00:
incbin "bin\\text\\configMenu_00.bin"
configMenu_01:
incbin "bin\\text\\configMenu_01.bin"
configMenu_02:
incbin "bin\\text\\configMenu_02.bin"
configMenu_03:
incbin "bin\\text\\configMenu_03.bin"
configMenu_04:
incbin "bin\\text\\configMenu_04.bin"
configMenu_05:
incbin "bin\\text\\configMenu_05.bin"
table_shopMenu:
dw shopMenu_00
dw shopMenu_01
dw shopMenu_02
dw shopMenu_03
dw shopMenu_04
shopMenu_00:
incbin "bin\\text\\shopMenu_00.bin"
shopMenu_01:
incbin "bin\\text\\shopMenu_01.bin"
shopMenu_02:
incbin "bin\\text\\shopMenu_02.bin"
shopMenu_03:
incbin "bin\\text\\shopMenu_03.bin"
shopMenu_04:
incbin "bin\\text\\shopMenu_04.bin"
table_prepMenu:
dw prepMenu_00
prepMenu_00:
incbin "bin\\text\\prepMenu_00.bin"
table_prepMenu2:
dw prepMenu2_00
prepMenu2_00:
incbin "bin\\text\\prepMenu2_00.bin"
table_phases:
dw phases_00
dw phases_01
dw phases_02
phases_00:
incbin "bin\\text\\phases_00.bin"
phases_01:
incbin "bin\\text\\phases_01.bin"
phases_02:
incbin "bin\\text\\phases_02.bin"
table_supplyMenu:
dw supplyMenu_00
supplyMenu_00:
incbin "bin\\text\\supplyMenu_00.bin"
table_animMenu:
dw animMenu_00
dw animMenu_01
animMenu_00:
incbin "bin\\text\\animMenu_00.bin"
animMenu_01:
incbin "bin\\text\\animMenu_01.bin"
table_itemMenu:
dw itemMenu_00
dw itemMenu_01
dw itemMenu_02
dw itemMenu_03
dw itemMenu_04
dw itemMenu_05
itemMenu_00:
incbin "bin\\text\\itemMenu_00.bin"
itemMenu_01:
incbin "bin\\text\\itemMenu_01.bin"
itemMenu_02:
incbin "bin\\text\\itemMenu_02.bin"
itemMenu_03:
incbin "bin\\text\\itemMenu_03.bin"
itemMenu_04:
incbin "bin\\text\\itemMenu_04.bin"
itemMenu_05:
incbin "bin\\text\\itemMenu_05.bin"
table_itemDiscarding:
dw itemDiscarding_00
dw itemDiscarding_01
dw itemDiscarding_02
dw itemDiscarding_03
dw itemDiscarding_04
dw itemDiscarding_05
itemDiscarding_00:
incbin "bin\\text\\itemDiscarding_00.bin"
itemDiscarding_01:
incbin "bin\\text\\itemDiscarding_01.bin"
itemDiscarding_02:
incbin "bin\\text\\itemDiscarding_02.bin"
itemDiscarding_03:
incbin "bin\\text\\itemDiscarding_03.bin"
itemDiscarding_04:
incbin "bin\\text\\itemDiscarding_04.bin"
itemDiscarding_05:
incbin "bin\\text\\itemDiscarding_05.bin"
table_menuEtc1:
dw menuEtc1_00
dw menuEtc1_01
dw menuEtc1_02
dw menuEtc1_03
dw menuEtc1_03
dw menuEtc1_03
dw menuEtc1_03
dw menuEtc1_03
dw menuEtc1_04
dw menuEtc1_05
dw menuEtc1_06
dw menuEtc1_03
dw menuEtc1_03
dw menuEtc1_03
dw menuEtc1_03
dw menuEtc1_07
dw menuEtc1_08
dw menuEtc1_09
dw menuEtc1_10
dw menuEtc1_11
dw menuEtc1_12
dw menuEtc1_13
dw menuEtc1_14
dw menuEtc1_15
dw menuEtc1_16
menuEtc1_00:
incbin "bin\\text\\menuEtc1_00.bin"

org !def_menuEtc1_01
menuEtc1_01:
incbin "bin\\text\\menuEtc1_01.bin"
menuEtc1_02:
incbin "bin\\text\\menuEtc1_02.bin"
menuEtc1_03:
incbin "bin\\text\\menuEtc1_03.bin"
menuEtc1_04:
incbin "bin\\text\\menuEtc1_04.bin"
menuEtc1_05:
incbin "bin\\text\\menuEtc1_05.bin"
menuEtc1_06:
incbin "bin\\text\\menuEtc1_06.bin"
menuEtc1_07:
incbin "bin\\text\\menuEtc1_07.bin"
menuEtc1_08:
incbin "bin\\text\\menuEtc1_08.bin"
menuEtc1_09:
incbin "bin\\text\\menuEtc1_09.bin"
menuEtc1_10:
incbin "bin\\text\\menuEtc1_10.bin"
menuEtc1_11:
incbin "bin\\text\\menuEtc1_11.bin"
menuEtc1_12:
incbin "bin\\text\\menuEtc1_12.bin"

skip 4
menuEtc1_13:
incbin "bin\\text\\menuEtc1_13.bin"
menuEtc1_14:
incbin "bin\\text\\menuEtc1_14.bin"
menuEtc1_15:
incbin "bin\\text\\menuEtc1_15.bin"
menuEtc1_16:
incbin "bin\\text\\menuEtc1_16.bin"
table_supply:
dw supply_00
dw supply_01
dw supply_02
dw supply_03
dw supply_04
dw supply_05
dw supply_06
dw supply_07
dw supply_08
dw supply_09
dw supply_10
dw supply_11
dw supply_12
supply_00:
incbin "bin\\text\\supply_00.bin"
supply_01:
incbin "bin\\text\\supply_01.bin"
supply_02:
incbin "bin\\text\\supply_02.bin"
supply_03:
incbin "bin\\text\\supply_03.bin"
supply_04:
incbin "bin\\text\\supply_04.bin"
supply_05:
incbin "bin\\text\\supply_05.bin"
supply_06:
incbin "bin\\text\\supply_06.bin"
supply_07:
incbin "bin\\text\\supply_07.bin"
supply_08:
incbin "bin\\text\\supply_08.bin"
supply_09:
incbin "bin\\text\\supply_09.bin"
supply_10:
incbin "bin\\text\\supply_10.bin"
supply_11:
incbin "bin\\text\\supply_11.bin"
supply_12:
incbin "bin\\text\\supply_12.bin"
table_menuEtc2:
dw menuEtc2_00
dw menuEtc2_01
dw menuEtc2_02
dw menuEtc2_03
dw menuEtc2_04
dw menuEtc2_05
dw menuEtc2_06
dw menuEtc2_07
dw menuEtc2_08
dw menuEtc2_09
dw menuEtc2_10
dw menuEtc2_11
dw menuEtc2_07
dw menuEtc2_12
dw menuEtc2_13
menuEtc2_00:
incbin "bin\\text\\menuEtc2_00.bin"
menuEtc2_01:
incbin "bin\\text\\menuEtc2_01.bin"
menuEtc2_02:
incbin "bin\\text\\menuEtc2_02.bin"
menuEtc2_03:
incbin "bin\\text\\menuEtc2_03.bin"
menuEtc2_04:
incbin "bin\\text\\menuEtc2_04.bin"
menuEtc2_05:
incbin "bin\\text\\menuEtc2_05.bin"
menuEtc2_06:
incbin "bin\\text\\menuEtc2_06.bin"
menuEtc2_07:
incbin "bin\\text\\menuEtc2_07.bin"
menuEtc2_08:
incbin "bin\\text\\menuEtc2_08.bin"
menuEtc2_09:
incbin "bin\\text\\menuEtc2_09.bin"
menuEtc2_10:
incbin "bin\\text\\menuEtc2_10.bin"
menuEtc2_11:
incbin "bin\\text\\menuEtc2_11.bin"
menuEtc2_12:
incbin "bin\\text\\menuEtc2_12.bin"
menuEtc2_13:
incbin "bin\\text\\menuEtc2_13.bin"
table_battleText:
dw battleText_00
dw battleText_01
dw battleText_02
dw battleText_03
dw battleText_04
dw battleText_05
dw battleText_06
dw battleText_07
dw battleText_08
dw battleText_09
dw battleText_10
dw battleText_11
dw battleText_12
dw battleText_13
dw battleText_14
dw battleText_15
dw battleText_16
dw battleText_17
dw battleText_18
dw battleText_19
dw battleText_20
dw battleText_21
dw battleText_22
dw battleText_23
dw battleText_24
dw battleText_25
dw battleText_26
dw battleText_27
dw battleText_28
dw battleText_29
dw battleText_30
dw battleText_31
dw battleText_32
dw battleText_33
dw battleText_34
dw battleText_35
dw battleText_36
dw battleText_37
dw battleText_38
dw battleText_39
dw battleText_40
dw battleText_41
dw battleText_42
dw battleText_43
dw battleText_44
dw battleText_06
dw battleText_45
dw battleText_46
dw battleText_47
dw battleText_48
dw battleText_49
dw battleText_50
dw battleText_51
dw battleText_52
dw battleText_53
dw battleText_54
dw battleText_55
dw battleText_56
dw battleText_57
dw battleText_58
dw battleText_59
dw battleText_60
dw battleText_61
dw battleText_62
dw battleText_63
dw battleText_31
dw battleText_64
dw battleText_35
dw battleText_65
battleText_00:
incbin "bin\\text\\battleText_00.bin"
battleText_01:
incbin "bin\\text\\battleText_01.bin"
battleText_02:
incbin "bin\\text\\battleText_02.bin"
battleText_03:
incbin "bin\\text\\battleText_03.bin"
battleText_04:
incbin "bin\\text\\battleText_04.bin"
battleText_05:
incbin "bin\\text\\battleText_05.bin"
battleText_06:
incbin "bin\\text\\battleText_06.bin"
battleText_07:
incbin "bin\\text\\battleText_07.bin"
battleText_08:
incbin "bin\\text\\battleText_08.bin"
battleText_09:
incbin "bin\\text\\battleText_09.bin"
battleText_10:
incbin "bin\\text\\battleText_10.bin"
battleText_11:
incbin "bin\\text\\battleText_11.bin"
battleText_12:
incbin "bin\\text\\battleText_12.bin"
battleText_13:
incbin "bin\\text\\battleText_13.bin"
battleText_14:
incbin "bin\\text\\battleText_14.bin"
battleText_15:
incbin "bin\\text\\battleText_15.bin"
battleText_16:
incbin "bin\\text\\battleText_16.bin"
battleText_17:
incbin "bin\\text\\battleText_17.bin"
battleText_18:
incbin "bin\\text\\battleText_18.bin"
battleText_19:
incbin "bin\\text\\battleText_19.bin"
battleText_20:
incbin "bin\\text\\battleText_20.bin"
battleText_21:
incbin "bin\\text\\battleText_21.bin"
battleText_22:
incbin "bin\\text\\battleText_22.bin"
battleText_23:
incbin "bin\\text\\battleText_23.bin"
battleText_24:
incbin "bin\\text\\battleText_24.bin"
battleText_25:
incbin "bin\\text\\battleText_25.bin"
battleText_26:
incbin "bin\\text\\battleText_26.bin"
battleText_27:
incbin "bin\\text\\battleText_27.bin"
battleText_28:
incbin "bin\\text\\battleText_28.bin"
battleText_29:
incbin "bin\\text\\battleText_29.bin"
battleText_30:
incbin "bin\\text\\battleText_30.bin"
battleText_31:
incbin "bin\\text\\battleText_31.bin"
battleText_32:
incbin "bin\\text\\battleText_32.bin"
battleText_33:
incbin "bin\\text\\battleText_33.bin"
battleText_34:
incbin "bin\\text\\battleText_34.bin"
battleText_35:
incbin "bin\\text\\battleText_35.bin"
battleText_36:
incbin "bin\\text\\battleText_36.bin"
battleText_37:
incbin "bin\\text\\battleText_37.bin"
battleText_38:
incbin "bin\\text\\battleText_38.bin"
battleText_39:
incbin "bin\\text\\battleText_39.bin"
battleText_40:
incbin "bin\\text\\battleText_40.bin"
battleText_41:
incbin "bin\\text\\battleText_41.bin"
battleText_42:
incbin "bin\\text\\battleText_42.bin"
battleText_43:
incbin "bin\\text\\battleText_43.bin"
battleText_44:
incbin "bin\\text\\battleText_44.bin"
battleText_45:
incbin "bin\\text\\battleText_45.bin"
battleText_46:
incbin "bin\\text\\battleText_46.bin"
battleText_47:
incbin "bin\\text\\battleText_47.bin"
battleText_48:
incbin "bin\\text\\battleText_48.bin"

skip 6
battleText_49:
incbin "bin\\text\\battleText_49.bin"
battleText_50:
incbin "bin\\text\\battleText_50.bin"
battleText_51:
incbin "bin\\text\\battleText_51.bin"
battleText_52:
incbin "bin\\text\\battleText_52.bin"
battleText_53:
incbin "bin\\text\\battleText_53.bin"
battleText_54:
incbin "bin\\text\\battleText_54.bin"
battleText_55:
incbin "bin\\text\\battleText_55.bin"
battleText_56:
incbin "bin\\text\\battleText_56.bin"
battleText_57:
incbin "bin\\text\\battleText_57.bin"
battleText_58:
incbin "bin\\text\\battleText_58.bin"
battleText_59:
incbin "bin\\text\\battleText_59.bin"
battleText_60:
incbin "bin\\text\\battleText_60.bin"
battleText_61:
incbin "bin\\text\\battleText_61.bin"
battleText_62:
incbin "bin\\text\\battleText_62.bin"
battleText_63:
incbin "bin\\text\\battleText_63.bin"
battleText_64:
incbin "bin\\text\\battleText_64.bin"
battleText_65:
incbin "bin\\text\\battleText_65.bin"

skip 8
charnames_05:
incbin "bin\\text\\charnames_05.bin"
charnames_56:
incbin "bin\\text\\charnames_56.bin"
classnames_03:
incbin "bin\\text\\classnames_03.bin"
charnames_72:
incbin "bin\\text\\charnames_72.bin"
charnames_58:
incbin "bin\\text\\charnames_58.bin"
charnames_60:
incbin "bin\\text\\charnames_60.bin"
charnames_41:
incbin "bin\\text\\charnames_41.bin"
charnames_44:
incbin "bin\\text\\charnames_44.bin"
charnames_22:
incbin "bin\\text\\charnames_22.bin"
unused_unusedText20:
incbin "bin\\text\\unused_unusedText20.bin"
charnames_36:
incbin "bin\\text\\charnames_36.bin"
charnames_28:
incbin "bin\\text\\charnames_28.bin"
charnames_37:
incbin "bin\\text\\charnames_37.bin"
charnames_96:
incbin "bin\\text\\charnames_96.bin"
itemNames_09:
incbin "bin\\text\\itemNames_09.bin"
charnames_82:
incbin "bin\\text\\charnames_82.bin"
charnames_62:
incbin "bin\\text\\charnames_62.bin"
charnames_64:
incbin "bin\\text\\charnames_64.bin"
itemNames_45:
incbin "bin\\text\\itemNames_45.bin"
itemNames_20:
incbin "bin\\text\\itemNames_20.bin"
itemNames_19:
incbin "bin\\text\\itemNames_19.bin"
itemNames_23:
incbin "bin\\text\\itemNames_23.bin"
itemNames_22:
incbin "bin\\text\\itemNames_22.bin"
itemNames_24:
incbin "bin\\text\\itemNames_24.bin"
charnames_69:
incbin "bin\\text\\charnames_69.bin"
charnames_78:
incbin "bin\\text\\charnames_78.bin"
itemNames_41:
incbin "bin\\text\\itemNames_41.bin"
charnames_70:
incbin "bin\\text\\charnames_70.bin"
charnames_77:
incbin "bin\\text\\charnames_77.bin"
classnames_30:
incbin "bin\\text\\classnames_30.bin"
classnames_16:
incbin "bin\\text\\classnames_16.bin"
charnames_76:
incbin "bin\\text\\charnames_76.bin"
itemNames_04:
incbin "bin\\text\\itemNames_04.bin"
classnames_09:
incbin "bin\\text\\classnames_09.bin"
itemNames_43:
incbin "bin\\text\\itemNames_43.bin"
charnames_107:
incbin "bin\\text\\charnames_107.bin"

org !def_CharacterEndings_00
CharacterEndings_00:
incbin "bin\\text\\CharacterEndings_00.bin"
CharacterEndings_01:
incbin "bin\\text\\CharacterEndings_01.bin"
CharacterEndings_02:
incbin "bin\\text\\CharacterEndings_02.bin"
CharacterEndings_03:
incbin "bin\\text\\CharacterEndings_03.bin"
CharacterEndings_04:
incbin "bin\\text\\CharacterEndings_04.bin"
CharacterEndings_05:
incbin "bin\\text\\CharacterEndings_05.bin"
CharacterEndings_06:
incbin "bin\\text\\CharacterEndings_06.bin"
CharacterEndings_07:
incbin "bin\\text\\CharacterEndings_07.bin"
CharacterEndings_08:
incbin "bin\\text\\CharacterEndings_08.bin"
CharacterEndings_09:
incbin "bin\\text\\CharacterEndings_09.bin"
CharacterEndings_10:
incbin "bin\\text\\CharacterEndings_10.bin"
CharacterEndings_11:
incbin "bin\\text\\CharacterEndings_11.bin"
CharacterEndings_12:
incbin "bin\\text\\CharacterEndings_12.bin"
CharacterEndings_13:
incbin "bin\\text\\CharacterEndings_13.bin"
CharacterEndings_14:
incbin "bin\\text\\CharacterEndings_14.bin"
CharacterEndings_15:
incbin "bin\\text\\CharacterEndings_15.bin"
CharacterEndings_16:
incbin "bin\\text\\CharacterEndings_16.bin"
CharacterEndings_17:
incbin "bin\\text\\CharacterEndings_17.bin"
CharacterEndings_18:
incbin "bin\\text\\CharacterEndings_18.bin"
CharacterEndings_19:
incbin "bin\\text\\CharacterEndings_19.bin"
CharacterEndings_20:
incbin "bin\\text\\CharacterEndings_20.bin"
CharacterEndings_21:
incbin "bin\\text\\CharacterEndings_21.bin"
CharacterEndings_22:
incbin "bin\\text\\CharacterEndings_22.bin"
CharacterEndings_23:
incbin "bin\\text\\CharacterEndings_23.bin"
CharacterEndings_24:
incbin "bin\\text\\CharacterEndings_24.bin"
CharacterEndings_25:
incbin "bin\\text\\CharacterEndings_25.bin"
CharacterEndings_26:
incbin "bin\\text\\CharacterEndings_26.bin"
CharacterEndings_27:
incbin "bin\\text\\CharacterEndings_27.bin"
CharacterEndings_28:
incbin "bin\\text\\CharacterEndings_28.bin"
CharacterEndings_29:
incbin "bin\\text\\CharacterEndings_29.bin"
CharacterEndings_30:
incbin "bin\\text\\CharacterEndings_30.bin"
CharacterEndings_31:
incbin "bin\\text\\CharacterEndings_31.bin"
CharacterEndings_32:
incbin "bin\\text\\CharacterEndings_32.bin"
CharacterEndings_33:
incbin "bin\\text\\CharacterEndings_33.bin"
CharacterEndings_34:
incbin "bin\\text\\CharacterEndings_34.bin"
CharacterEndings_35:
incbin "bin\\text\\CharacterEndings_35.bin"
CharacterEndings_36:
incbin "bin\\text\\CharacterEndings_36.bin"
CharacterEndings_37:
incbin "bin\\text\\CharacterEndings_37.bin"
CharacterEndings_38:
incbin "bin\\text\\CharacterEndings_38.bin"
CharacterEndings_39:
incbin "bin\\text\\CharacterEndings_39.bin"
CharacterEndings_40:
incbin "bin\\text\\CharacterEndings_40.bin"
CharacterEndings_41:
incbin "bin\\text\\CharacterEndings_41.bin"
CharacterEndings_42:
incbin "bin\\text\\CharacterEndings_42.bin"
CharacterEndings_43:
incbin "bin\\text\\CharacterEndings_43.bin"
CharacterEndings_44:
incbin "bin\\text\\CharacterEndings_44.bin"
CharacterEndings_45:
incbin "bin\\text\\CharacterEndings_45.bin"
CharacterEndings_46:
incbin "bin\\text\\CharacterEndings_46.bin"
CharacterEndings_47:
incbin "bin\\text\\CharacterEndings_47.bin"
CharacterEndings_48:
incbin "bin\\text\\CharacterEndings_48.bin"
CharacterEndings_49:
incbin "bin\\text\\CharacterEndings_49.bin"
CharacterEndings_50:
incbin "bin\\text\\CharacterEndings_50.bin"
CharacterEndings_51:
incbin "bin\\text\\CharacterEndings_51.bin"
CharacterEndings_52:
incbin "bin\\text\\CharacterEndings_52.bin"
CharacterEndings_53:
incbin "bin\\text\\CharacterEndings_53.bin"
CharacterEndings_54:
incbin "bin\\text\\CharacterEndings_54.bin"
CharacterEndings_55:
incbin "bin\\text\\CharacterEndings_55.bin"
CharacterEndings_56:
incbin "bin\\text\\CharacterEndings_56.bin"
CharacterEndings_57:
incbin "bin\\text\\CharacterEndings_57.bin"
CharacterEndings_58:
incbin "bin\\text\\CharacterEndings_58.bin"
CharacterEndings_59:
incbin "bin\\text\\CharacterEndings_59.bin"
CharacterEndings_60:
incbin "bin\\text\\CharacterEndings_60.bin"
CharacterEndings_61:
incbin "bin\\text\\CharacterEndings_61.bin"
CharacterEndings_62:
incbin "bin\\text\\CharacterEndings_62.bin"
CharacterEndings_63:
incbin "bin\\text\\CharacterEndings_63.bin"
CharacterEndings_64:
incbin "bin\\text\\CharacterEndings_64.bin"
CharacterEndings_65:
incbin "bin\\text\\CharacterEndings_65.bin"
CharacterEndings_66:
incbin "bin\\text\\CharacterEndings_66.bin"
CharacterEndings_67:
incbin "bin\\text\\CharacterEndings_67.bin"
CharacterEndings_68:
incbin "bin\\text\\CharacterEndings_68.bin"
CharacterEndings_69:
incbin "bin\\text\\CharacterEndings_69.bin"
CharacterEndings_70:
incbin "bin\\text\\CharacterEndings_70.bin"
CharacterEndings_71:
incbin "bin\\text\\CharacterEndings_71.bin"
CharacterEndings_72:
incbin "bin\\text\\CharacterEndings_72.bin"
CharacterEndings_73:
incbin "bin\\text\\CharacterEndings_73.bin"
CharacterEndings_74:
incbin "bin\\text\\CharacterEndings_74.bin"
CharacterEndings_75:
incbin "bin\\text\\CharacterEndings_75.bin"
CharacterEndings_76:
incbin "bin\\text\\CharacterEndings_76.bin"
CharacterEndings_77:
incbin "bin\\text\\CharacterEndings_77.bin"
CharacterEndings_78:
incbin "bin\\text\\CharacterEndings_78.bin"
CharacterEndings_79:
incbin "bin\\text\\CharacterEndings_79.bin"
CharacterEndings_80:
incbin "bin\\text\\CharacterEndings_80.bin"
CharacterEndings_81:
incbin "bin\\text\\CharacterEndings_81.bin"
CharacterEndings_82:
incbin "bin\\text\\CharacterEndings_82.bin"
CharacterEndings_83:
incbin "bin\\text\\CharacterEndings_83.bin"
CharacterEndings_84:
incbin "bin\\text\\CharacterEndings_84.bin"
CharacterEndings_85:
incbin "bin\\text\\CharacterEndings_85.bin"
CharacterEndings_86:
incbin "bin\\text\\CharacterEndings_86.bin"
CharacterEndings_87:
incbin "bin\\text\\CharacterEndings_87.bin"
CharacterEndings_88:
incbin "bin\\text\\CharacterEndings_88.bin"
CharacterEndings_89:
incbin "bin\\text\\CharacterEndings_89.bin"
CharacterEndings_90:
incbin "bin\\text\\CharacterEndings_90.bin"
CharacterEndings_91:
incbin "bin\\text\\CharacterEndings_91.bin"
CharacterEndings_92:
incbin "bin\\text\\CharacterEndings_92.bin"
CharacterEndings_93:
incbin "bin\\text\\CharacterEndings_93.bin"
CharacterEndings_94:
incbin "bin\\text\\CharacterEndings_94.bin"
CharacterEndings_95:
incbin "bin\\text\\CharacterEndings_95.bin"
CharacterEndings_96:
incbin "bin\\text\\CharacterEndings_96.bin"
CharacterEndings_97:
incbin "bin\\text\\CharacterEndings_97.bin"
CharacterEndings_98:
incbin "bin\\text\\CharacterEndings_98.bin"
CharacterEndings_99:
incbin "bin\\text\\CharacterEndings_99.bin"
CharacterEndings_100:
incbin "bin\\text\\CharacterEndings_100.bin"
CharacterEndings_101:
incbin "bin\\text\\CharacterEndings_101.bin"
CharacterEndings_102:
incbin "bin\\text\\CharacterEndings_102.bin"
CharacterEndings_103:
incbin "bin\\text\\CharacterEndings_103.bin"
CharacterEndings_104:
incbin "bin\\text\\CharacterEndings_104.bin"
CharacterEndings_105:
incbin "bin\\text\\CharacterEndings_105.bin"
CharacterEndings_106:
incbin "bin\\text\\CharacterEndings_106.bin"
CharacterEndings_107:
incbin "bin\\text\\CharacterEndings_107.bin"
CharacterEndings_108:
incbin "bin\\text\\CharacterEndings_108.bin"
CharacterEndings_109:
incbin "bin\\text\\CharacterEndings_109.bin"
CharacterEndings_110:
incbin "bin\\text\\CharacterEndings_110.bin"
CharacterEndings_111:
incbin "bin\\text\\CharacterEndings_111.bin"
CharacterEndings_112:
incbin "bin\\text\\CharacterEndings_112.bin"
CharacterEndings_113:
incbin "bin\\text\\CharacterEndings_113.bin"
CharacterEndings_114:
incbin "bin\\text\\CharacterEndings_114.bin"
CharacterEndings_115:
incbin "bin\\text\\CharacterEndings_115.bin"
CharacterEndings_116:
incbin "bin\\text\\CharacterEndings_116.bin"
CharacterEndings_117:
incbin "bin\\text\\CharacterEndings_117.bin"
CharacterEndings_118:
incbin "bin\\text\\CharacterEndings_118.bin"
CharacterEndings_119:
incbin "bin\\text\\CharacterEndings_119.bin"
CharacterEndings_120:
incbin "bin\\text\\CharacterEndings_120.bin"
CharacterEndings_121:
incbin "bin\\text\\CharacterEndings_121.bin"
CharacterEndings_122:
incbin "bin\\text\\CharacterEndings_122.bin"
CharacterEndings_123:
incbin "bin\\text\\CharacterEndings_123.bin"
CharacterEndings_124:
incbin "bin\\text\\CharacterEndings_124.bin"
CharacterEndings_125:
incbin "bin\\text\\CharacterEndings_125.bin"
CharacterEndings_126:
incbin "bin\\text\\CharacterEndings_126.bin"
CharacterEndings_127:
incbin "bin\\text\\CharacterEndings_127.bin"
CharacterEndings_128:
incbin "bin\\text\\CharacterEndings_128.bin"
CharacterEndings_129:
incbin "bin\\text\\CharacterEndings_129.bin"
CharacterEndings_130:
incbin "bin\\text\\CharacterEndings_130.bin"
CharacterEndings_131:
incbin "bin\\text\\CharacterEndings_131.bin"
CharacterEndings_132:
incbin "bin\\text\\CharacterEndings_132.bin"
CharacterEndings_133:
incbin "bin\\text\\CharacterEndings_133.bin"
CharacterEndings_134:
incbin "bin\\text\\CharacterEndings_134.bin"
CharacterEndings_135:
incbin "bin\\text\\CharacterEndings_135.bin"
CharacterEndings_136:
incbin "bin\\text\\CharacterEndings_136.bin"
CharacterEndings_137:
incbin "bin\\text\\CharacterEndings_137.bin"
CharacterEndings_138:
incbin "bin\\text\\CharacterEndings_138.bin"
CharacterEndings_139:
incbin "bin\\text\\CharacterEndings_139.bin"
CharacterEndings_140:
incbin "bin\\text\\CharacterEndings_140.bin"
CharacterEndings_141:
incbin "bin\\text\\CharacterEndings_141.bin"
CharacterEndings_142:
incbin "bin\\text\\CharacterEndings_142.bin"
CharacterEndings_143:
incbin "bin\\text\\CharacterEndings_143.bin"
CharacterEndings_144:
incbin "bin\\text\\CharacterEndings_144.bin"
CharacterEndings_145:
incbin "bin\\text\\CharacterEndings_145.bin"
CharacterEndings_146:
incbin "bin\\text\\CharacterEndings_146.bin"
CharacterEndings_147:
incbin "bin\\text\\CharacterEndings_147.bin"
CharacterEndings_148:
incbin "bin\\text\\CharacterEndings_148.bin"
CharacterEndings_149:
incbin "bin\\text\\CharacterEndings_149.bin"
CharacterEndings_150:
incbin "bin\\text\\CharacterEndings_150.bin"
CharacterEndings_151:
incbin "bin\\text\\CharacterEndings_151.bin"
CharacterEndings_152:
incbin "bin\\text\\CharacterEndings_152.bin"
CharacterEndings_153:
incbin "bin\\text\\CharacterEndings_153.bin"
CharacterEndings_154:
incbin "bin\\text\\CharacterEndings_154.bin"
CharacterEndings_155:
incbin "bin\\text\\CharacterEndings_155.bin"
CharacterEndings_156:
incbin "bin\\text\\CharacterEndings_156.bin"
CharacterEndings_157:
incbin "bin\\text\\CharacterEndings_157.bin"
CharacterEndings_158:
incbin "bin\\text\\CharacterEndings_158.bin"
CharacterEndings_159:
incbin "bin\\text\\CharacterEndings_159.bin"
CharacterEndings_160:
incbin "bin\\text\\CharacterEndings_160.bin"
CharacterEndings_161:
incbin "bin\\text\\CharacterEndings_161.bin"
CharacterEndings_162:
incbin "bin\\text\\CharacterEndings_162.bin"
CharacterEndings_163:
incbin "bin\\text\\CharacterEndings_163.bin"
CharacterEndings_164:
incbin "bin\\text\\CharacterEndings_164.bin"
CharacterEndings_165:
incbin "bin\\text\\CharacterEndings_165.bin"
CharacterEndings_166:
incbin "bin\\text\\CharacterEndings_166.bin"
CharacterEndings_167:
incbin "bin\\text\\CharacterEndings_167.bin"
CharacterEndings_168:
incbin "bin\\text\\CharacterEndings_168.bin"
CharacterEndings_169:
incbin "bin\\text\\CharacterEndings_169.bin"
CharacterEndings_170:
incbin "bin\\text\\CharacterEndings_170.bin"
CharacterEndings_171:
incbin "bin\\text\\CharacterEndings_171.bin"
CharacterEndings_172:
incbin "bin\\text\\CharacterEndings_172.bin"
CharacterEndings_173:
incbin "bin\\text\\CharacterEndings_173.bin"
CharacterEndings_174:
incbin "bin\\text\\CharacterEndings_174.bin"
CharacterEndings_175:
incbin "bin\\text\\CharacterEndings_175.bin"
CharacterEndings_176:
incbin "bin\\text\\CharacterEndings_176.bin"
CharacterEndings_177:
incbin "bin\\text\\CharacterEndings_177.bin"
CharacterEndings_178:
incbin "bin\\text\\CharacterEndings_178.bin"
CharacterEndings_179:
incbin "bin\\text\\CharacterEndings_179.bin"
CharacterEndings_180:
incbin "bin\\text\\CharacterEndings_180.bin"
CharacterEndings_181:
incbin "bin\\text\\CharacterEndings_181.bin"
CharacterEndings_182:
incbin "bin\\text\\CharacterEndings_182.bin"

org !def_CharacterEndings_183
CharacterEndings_183:
incbin "bin\\text\\CharacterEndings_183.bin"

org !def_CharacterEndings_184
CharacterEndings_184:
incbin "bin\\text\\CharacterEndings_184.bin"

org !def_CharacterEndings_185
CharacterEndings_185:
incbin "bin\\text\\CharacterEndings_185.bin"

org !def_CharacterEndings_186
CharacterEndings_186:
incbin "bin\\text\\CharacterEndings_186.bin"

org !def_CharacterEndings_187
CharacterEndings_187:
incbin "bin\\text\\CharacterEndings_187.bin"

org !def_CharacterEndings_188
CharacterEndings_188:
incbin "bin\\text\\CharacterEndings_188.bin"

org !def_CharacterEndings_189
CharacterEndings_189:
incbin "bin\\text\\CharacterEndings_189.bin"

org !def_CharacterEndings_190
CharacterEndings_190:
incbin "bin\\text\\CharacterEndings_190.bin"

org !def_CharacterEndings_191
CharacterEndings_191:
incbin "bin\\text\\CharacterEndings_191.bin"

org !def_CharacterEndings_192
CharacterEndings_192:
incbin "bin\\text\\CharacterEndings_192.bin"

org !def_CharacterEndings_193
CharacterEndings_193:
incbin "bin\\text\\CharacterEndings_193.bin"

org !def_CharacterEndings_194
CharacterEndings_194:
incbin "bin\\text\\CharacterEndings_194.bin"

org !def_CharacterEndings_195
CharacterEndings_195:
incbin "bin\\text\\CharacterEndings_195.bin"

org !def_CharacterEndings_196
CharacterEndings_196:
incbin "bin\\text\\CharacterEndings_196.bin"

org !def_CharacterEndings_197
CharacterEndings_197:
incbin "bin\\text\\CharacterEndings_197.bin"

org !def_CharacterEndings_198
CharacterEndings_198:
incbin "bin\\text\\CharacterEndings_198.bin"

org !def_CharacterEndings_199
CharacterEndings_199:
incbin "bin\\text\\CharacterEndings_199.bin"

org !def_CharacterEndings_200
CharacterEndings_200:
incbin "bin\\text\\CharacterEndings_200.bin"

org !def_CharacterEndings_201
CharacterEndings_201:
incbin "bin\\text\\CharacterEndings_201.bin"

org !def_CharacterEndings_202
CharacterEndings_202:
incbin "bin\\text\\CharacterEndings_202.bin"

org !def_CharacterEndings_203
CharacterEndings_203:
incbin "bin\\text\\CharacterEndings_203.bin"

org !def_CharacterEndings_204
CharacterEndings_204:
incbin "bin\\text\\CharacterEndings_204.bin"

org !def_CharacterEndings_205
CharacterEndings_205:
incbin "bin\\text\\CharacterEndings_205.bin"

org !def_CharacterEndings_206
CharacterEndings_206:
incbin "bin\\text\\CharacterEndings_206.bin"

org !def_CharacterEndings_207
CharacterEndings_207:
incbin "bin\\text\\CharacterEndings_207.bin"

org !def_CharacterEndings_208
CharacterEndings_208:
incbin "bin\\text\\CharacterEndings_208.bin"

org !def_CharacterEndings_209
CharacterEndings_209:
incbin "bin\\text\\CharacterEndings_209.bin"

org !def_CharacterEndings_210
CharacterEndings_210:
incbin "bin\\text\\CharacterEndings_210.bin"

org !def_CharacterEndings_211
CharacterEndings_211:
incbin "bin\\text\\CharacterEndings_211.bin"

org !def_CharacterEndings_212
CharacterEndings_212:
incbin "bin\\text\\CharacterEndings_212.bin"

org !def_CharacterEndings_213
CharacterEndings_213:
incbin "bin\\text\\CharacterEndings_213.bin"

org !def_CharacterEndings_214
CharacterEndings_214:
incbin "bin\\text\\CharacterEndings_214.bin"

org !def_CharacterEndings_215
CharacterEndings_215:
incbin "bin\\text\\CharacterEndings_215.bin"

org !def_CharacterEndings_216
CharacterEndings_216:
incbin "bin\\text\\CharacterEndings_216.bin"

org !def_CharacterEndings_217
CharacterEndings_217:
incbin "bin\\text\\CharacterEndings_217.bin"

org !def_CharacterEndings_218
CharacterEndings_218:
incbin "bin\\text\\CharacterEndings_218.bin"

org !def_CharacterEndings_219
CharacterEndings_219:
incbin "bin\\text\\CharacterEndings_219.bin"

org !def_CharacterEndings_220
CharacterEndings_220:
incbin "bin\\text\\CharacterEndings_220.bin"

org !def_CharacterEndings_221
CharacterEndings_221:
incbin "bin\\text\\CharacterEndings_221.bin"

org !def_CharacterEndings_222
CharacterEndings_222:
incbin "bin\\text\\CharacterEndings_222.bin"

org !def_CharacterEndings_223
CharacterEndings_223:
incbin "bin\\text\\CharacterEndings_223.bin"

org !def_CharacterEndings_224
CharacterEndings_224:
incbin "bin\\text\\CharacterEndings_224.bin"

org !def_CharacterEndings_225
CharacterEndings_225:
incbin "bin\\text\\CharacterEndings_225.bin"

org !def_CharacterEndingsAlt_00
CharacterEndingsAlt_00:
incbin "bin\\text\\CharacterEndingsAlt_00.bin"

org !def_CharacterEndingsAlt_01
CharacterEndingsAlt_01:
incbin "bin\\text\\CharacterEndingsAlt_01.bin"

org !def_CharacterEndingsAlt_02
CharacterEndingsAlt_02:
incbin "bin\\text\\CharacterEndingsAlt_02.bin"

org !def_CharacterEndingsAlt_03
CharacterEndingsAlt_03:
incbin "bin\\text\\CharacterEndingsAlt_03.bin"

org !def_CharacterEndingsAlt_04
CharacterEndingsAlt_04:
incbin "bin\\text\\CharacterEndingsAlt_04.bin"

org !def_CharacterEndingsAlt_05
CharacterEndingsAlt_05:
incbin "bin\\text\\CharacterEndingsAlt_05.bin"

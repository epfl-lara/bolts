; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376776 () Bool)

(assert start!376776)

(declare-fun b!4003020 () Bool)

(declare-fun b_free!111305 () Bool)

(declare-fun b_next!112009 () Bool)

(assert (=> b!4003020 (= b_free!111305 (not b_next!112009))))

(declare-fun tp!1218360 () Bool)

(declare-fun b_and!307391 () Bool)

(assert (=> b!4003020 (= tp!1218360 b_and!307391)))

(declare-fun b_free!111307 () Bool)

(declare-fun b_next!112011 () Bool)

(assert (=> b!4003020 (= b_free!111307 (not b_next!112011))))

(declare-fun tp!1218361 () Bool)

(declare-fun b_and!307393 () Bool)

(assert (=> b!4003020 (= tp!1218361 b_and!307393)))

(declare-fun b!4003015 () Bool)

(declare-fun b_free!111309 () Bool)

(declare-fun b_next!112013 () Bool)

(assert (=> b!4003015 (= b_free!111309 (not b_next!112013))))

(declare-fun tp!1218363 () Bool)

(declare-fun b_and!307395 () Bool)

(assert (=> b!4003015 (= tp!1218363 b_and!307395)))

(declare-fun b_free!111311 () Bool)

(declare-fun b_next!112015 () Bool)

(assert (=> b!4003015 (= b_free!111311 (not b_next!112015))))

(declare-fun tp!1218359 () Bool)

(declare-fun b_and!307397 () Bool)

(assert (=> b!4003015 (= tp!1218359 b_and!307397)))

(declare-fun b!4003011 () Bool)

(declare-fun e!2482298 () Bool)

(declare-datatypes ((C!23604 0))(
  ( (C!23605 (val!13896 Int)) )
))
(declare-datatypes ((List!42968 0))(
  ( (Nil!42844) (Cons!42844 (h!48264 C!23604) (t!332309 List!42968)) )
))
(declare-datatypes ((IArray!26035 0))(
  ( (IArray!26036 (innerList!13075 List!42968)) )
))
(declare-datatypes ((Conc!13015 0))(
  ( (Node!13015 (left!32335 Conc!13015) (right!32665 Conc!13015) (csize!26260 Int) (cheight!13226 Int)) (Leaf!20124 (xs!16321 IArray!26035) (csize!26261 Int)) (Empty!13015) )
))
(declare-datatypes ((BalanceConc!25624 0))(
  ( (BalanceConc!25625 (c!692224 Conc!13015)) )
))
(declare-datatypes ((List!42969 0))(
  ( (Nil!42845) (Cons!42845 (h!48265 (_ BitVec 16)) (t!332310 List!42969)) )
))
(declare-datatypes ((TokenValue!7034 0))(
  ( (FloatLiteralValue!14068 (text!49683 List!42969)) (TokenValueExt!7033 (__x!26285 Int)) (Broken!35170 (value!214522 List!42969)) (Object!7157) (End!7034) (Def!7034) (Underscore!7034) (Match!7034) (Else!7034) (Error!7034) (Case!7034) (If!7034) (Extends!7034) (Abstract!7034) (Class!7034) (Val!7034) (DelimiterValue!14068 (del!7094 List!42969)) (KeywordValue!7040 (value!214523 List!42969)) (CommentValue!14068 (value!214524 List!42969)) (WhitespaceValue!14068 (value!214525 List!42969)) (IndentationValue!7034 (value!214526 List!42969)) (String!48887) (Int32!7034) (Broken!35171 (value!214527 List!42969)) (Boolean!7035) (Unit!61833) (OperatorValue!7037 (op!7094 List!42969)) (IdentifierValue!14068 (value!214528 List!42969)) (IdentifierValue!14069 (value!214529 List!42969)) (WhitespaceValue!14069 (value!214530 List!42969)) (True!14068) (False!14068) (Broken!35172 (value!214531 List!42969)) (Broken!35173 (value!214532 List!42969)) (True!14069) (RightBrace!7034) (RightBracket!7034) (Colon!7034) (Null!7034) (Comma!7034) (LeftBracket!7034) (False!14069) (LeftBrace!7034) (ImaginaryLiteralValue!7034 (text!49684 List!42969)) (StringLiteralValue!21102 (value!214533 List!42969)) (EOFValue!7034 (value!214534 List!42969)) (IdentValue!7034 (value!214535 List!42969)) (DelimiterValue!14069 (value!214536 List!42969)) (DedentValue!7034 (value!214537 List!42969)) (NewLineValue!7034 (value!214538 List!42969)) (IntegerValue!21102 (value!214539 (_ BitVec 32)) (text!49685 List!42969)) (IntegerValue!21103 (value!214540 Int) (text!49686 List!42969)) (Times!7034) (Or!7034) (Equal!7034) (Minus!7034) (Broken!35174 (value!214541 List!42969)) (And!7034) (Div!7034) (LessEqual!7034) (Mod!7034) (Concat!18743) (Not!7034) (Plus!7034) (SpaceValue!7034 (value!214542 List!42969)) (IntegerValue!21104 (value!214543 Int) (text!49687 List!42969)) (StringLiteralValue!21103 (text!49688 List!42969)) (FloatLiteralValue!14069 (text!49689 List!42969)) (BytesLiteralValue!7034 (value!214544 List!42969)) (CommentValue!14069 (value!214545 List!42969)) (StringLiteralValue!21104 (value!214546 List!42969)) (ErrorTokenValue!7034 (msg!7095 List!42969)) )
))
(declare-datatypes ((Regex!11709 0))(
  ( (ElementMatch!11709 (c!692225 C!23604)) (Concat!18744 (regOne!23930 Regex!11709) (regTwo!23930 Regex!11709)) (EmptyExpr!11709) (Star!11709 (reg!12038 Regex!11709)) (EmptyLang!11709) (Union!11709 (regOne!23931 Regex!11709) (regTwo!23931 Regex!11709)) )
))
(declare-datatypes ((String!48888 0))(
  ( (String!48889 (value!214547 String)) )
))
(declare-datatypes ((TokenValueInjection!13496 0))(
  ( (TokenValueInjection!13497 (toValue!9296 Int) (toChars!9155 Int)) )
))
(declare-datatypes ((Rule!13408 0))(
  ( (Rule!13409 (regex!6804 Regex!11709) (tag!7664 String!48888) (isSeparator!6804 Bool) (transformation!6804 TokenValueInjection!13496)) )
))
(declare-datatypes ((Token!12746 0))(
  ( (Token!12747 (value!214548 TokenValue!7034) (rule!9838 Rule!13408) (size!32033 Int) (originalCharacters!7404 List!42968)) )
))
(declare-fun token!484 () Token!12746)

(declare-fun e!2482313 () Bool)

(declare-fun tp!1218365 () Bool)

(declare-fun inv!21 (TokenValue!7034) Bool)

(assert (=> b!4003011 (= e!2482313 (and (inv!21 (value!214548 token!484)) e!2482298 tp!1218365))))

(declare-fun b!4003012 () Bool)

(declare-fun e!2482296 () Bool)

(declare-fun tp_is_empty!20389 () Bool)

(declare-fun tp!1218355 () Bool)

(assert (=> b!4003012 (= e!2482296 (and tp_is_empty!20389 tp!1218355))))

(declare-fun b!4003013 () Bool)

(declare-fun e!2482300 () Bool)

(declare-fun e!2482303 () Bool)

(assert (=> b!4003013 (= e!2482300 e!2482303)))

(declare-fun res!1626545 () Bool)

(assert (=> b!4003013 (=> res!1626545 e!2482303)))

(declare-fun lt!1415665 () List!42968)

(declare-fun prefix!494 () List!42968)

(assert (=> b!4003013 (= res!1626545 (not (= lt!1415665 prefix!494)))))

(declare-fun lt!1415656 () List!42968)

(declare-fun lt!1415661 () List!42968)

(declare-fun ++!11206 (List!42968 List!42968) List!42968)

(assert (=> b!4003013 (= lt!1415665 (++!11206 lt!1415656 lt!1415661))))

(declare-fun getSuffix!2316 (List!42968 List!42968) List!42968)

(assert (=> b!4003013 (= lt!1415661 (getSuffix!2316 prefix!494 lt!1415656))))

(declare-fun isPrefix!3891 (List!42968 List!42968) Bool)

(assert (=> b!4003013 (isPrefix!3891 lt!1415656 prefix!494)))

(declare-datatypes ((Unit!61834 0))(
  ( (Unit!61835) )
))
(declare-fun lt!1415655 () Unit!61834)

(declare-fun lt!1415663 () List!42968)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!463 (List!42968 List!42968 List!42968) Unit!61834)

(assert (=> b!4003013 (= lt!1415655 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!463 prefix!494 lt!1415656 lt!1415663))))

(declare-fun b!4003014 () Bool)

(declare-fun e!2482311 () Bool)

(declare-fun tp!1218354 () Bool)

(assert (=> b!4003014 (= e!2482311 (and tp_is_empty!20389 tp!1218354))))

(declare-fun e!2482309 () Bool)

(assert (=> b!4003015 (= e!2482309 (and tp!1218363 tp!1218359))))

(declare-fun res!1626542 () Bool)

(declare-fun e!2482302 () Bool)

(assert (=> start!376776 (=> (not res!1626542) (not e!2482302))))

(declare-datatypes ((LexerInterface!6393 0))(
  ( (LexerInterfaceExt!6390 (__x!26286 Int)) (Lexer!6391) )
))
(declare-fun thiss!21717 () LexerInterface!6393)

(get-info :version)

(assert (=> start!376776 (= res!1626542 ((_ is Lexer!6391) thiss!21717))))

(assert (=> start!376776 e!2482302))

(declare-fun e!2482308 () Bool)

(assert (=> start!376776 e!2482308))

(declare-fun inv!57216 (Token!12746) Bool)

(assert (=> start!376776 (and (inv!57216 token!484) e!2482313)))

(assert (=> start!376776 e!2482311))

(declare-fun e!2482295 () Bool)

(assert (=> start!376776 e!2482295))

(assert (=> start!376776 e!2482296))

(assert (=> start!376776 true))

(declare-fun e!2482299 () Bool)

(assert (=> start!376776 e!2482299))

(declare-fun e!2482307 () Bool)

(assert (=> start!376776 e!2482307))

(declare-fun b!4003016 () Bool)

(declare-fun tp!1218362 () Bool)

(assert (=> b!4003016 (= e!2482307 (and tp_is_empty!20389 tp!1218362))))

(declare-fun b!4003017 () Bool)

(declare-fun e!2482312 () Bool)

(assert (=> b!4003017 (= e!2482302 e!2482312)))

(declare-fun res!1626543 () Bool)

(assert (=> b!4003017 (=> (not res!1626543) (not e!2482312))))

(declare-fun size!32034 (List!42968) Int)

(assert (=> b!4003017 (= res!1626543 (>= (size!32034 prefix!494) (size!32034 lt!1415656)))))

(declare-fun list!15914 (BalanceConc!25624) List!42968)

(declare-fun charsOf!4620 (Token!12746) BalanceConc!25624)

(assert (=> b!4003017 (= lt!1415656 (list!15914 (charsOf!4620 token!484)))))

(declare-fun b!4003018 () Bool)

(declare-fun res!1626548 () Bool)

(assert (=> b!4003018 (=> (not res!1626548) (not e!2482302))))

(declare-fun newSuffix!27 () List!42968)

(declare-fun suffix!1299 () List!42968)

(assert (=> b!4003018 (= res!1626548 (isPrefix!3891 newSuffix!27 suffix!1299))))

(declare-fun b!4003019 () Bool)

(declare-fun e!2482297 () Bool)

(assert (=> b!4003019 (= e!2482312 e!2482297)))

(declare-fun res!1626547 () Bool)

(assert (=> b!4003019 (=> (not res!1626547) (not e!2482297))))

(declare-datatypes ((List!42970 0))(
  ( (Nil!42846) (Cons!42846 (h!48266 Rule!13408) (t!332311 List!42970)) )
))
(declare-fun rules!2999 () List!42970)

(declare-fun suffixResult!105 () List!42968)

(declare-datatypes ((tuple2!42010 0))(
  ( (tuple2!42011 (_1!24139 Token!12746) (_2!24139 List!42968)) )
))
(declare-datatypes ((Option!9218 0))(
  ( (None!9217) (Some!9217 (v!39579 tuple2!42010)) )
))
(declare-fun maxPrefix!3691 (LexerInterface!6393 List!42970 List!42968) Option!9218)

(assert (=> b!4003019 (= res!1626547 (= (maxPrefix!3691 thiss!21717 rules!2999 lt!1415663) (Some!9217 (tuple2!42011 token!484 suffixResult!105))))))

(assert (=> b!4003019 (= lt!1415663 (++!11206 prefix!494 suffix!1299))))

(declare-fun e!2482304 () Bool)

(assert (=> b!4003020 (= e!2482304 (and tp!1218360 tp!1218361))))

(declare-fun b!4003021 () Bool)

(declare-fun lt!1415660 () List!42968)

(assert (=> b!4003021 (= e!2482303 (= lt!1415663 lt!1415660))))

(declare-fun lt!1415657 () List!42968)

(assert (=> b!4003021 (= lt!1415660 (++!11206 lt!1415656 lt!1415657))))

(assert (=> b!4003021 (= lt!1415660 (++!11206 lt!1415665 suffix!1299))))

(assert (=> b!4003021 (= lt!1415657 (++!11206 lt!1415661 suffix!1299))))

(declare-fun lt!1415664 () Unit!61834)

(declare-fun lemmaConcatAssociativity!2516 (List!42968 List!42968 List!42968) Unit!61834)

(assert (=> b!4003021 (= lt!1415664 (lemmaConcatAssociativity!2516 lt!1415656 lt!1415661 suffix!1299))))

(declare-fun b!4003022 () Bool)

(declare-fun e!2482301 () Bool)

(declare-fun tp!1218366 () Bool)

(assert (=> b!4003022 (= e!2482299 (and e!2482301 tp!1218366))))

(declare-fun b!4003023 () Bool)

(declare-fun tp!1218358 () Bool)

(assert (=> b!4003023 (= e!2482295 (and tp_is_empty!20389 tp!1218358))))

(declare-fun b!4003024 () Bool)

(declare-fun tp!1218357 () Bool)

(declare-fun inv!57213 (String!48888) Bool)

(declare-fun inv!57217 (TokenValueInjection!13496) Bool)

(assert (=> b!4003024 (= e!2482298 (and tp!1218357 (inv!57213 (tag!7664 (rule!9838 token!484))) (inv!57217 (transformation!6804 (rule!9838 token!484))) e!2482304))))

(declare-fun b!4003025 () Bool)

(declare-fun e!2482306 () Bool)

(assert (=> b!4003025 (= e!2482297 (not e!2482306))))

(declare-fun res!1626551 () Bool)

(assert (=> b!4003025 (=> res!1626551 e!2482306)))

(declare-fun lt!1415658 () List!42968)

(assert (=> b!4003025 (= res!1626551 (not (= lt!1415658 lt!1415663)))))

(assert (=> b!4003025 (= lt!1415658 (++!11206 lt!1415656 suffixResult!105))))

(declare-fun lt!1415667 () Unit!61834)

(declare-fun lemmaInv!1019 (TokenValueInjection!13496) Unit!61834)

(assert (=> b!4003025 (= lt!1415667 (lemmaInv!1019 (transformation!6804 (rule!9838 token!484))))))

(declare-fun ruleValid!2736 (LexerInterface!6393 Rule!13408) Bool)

(assert (=> b!4003025 (ruleValid!2736 thiss!21717 (rule!9838 token!484))))

(declare-fun lt!1415666 () Unit!61834)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1810 (LexerInterface!6393 Rule!13408 List!42970) Unit!61834)

(assert (=> b!4003025 (= lt!1415666 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1810 thiss!21717 (rule!9838 token!484) rules!2999))))

(declare-fun b!4003026 () Bool)

(declare-fun res!1626549 () Bool)

(assert (=> b!4003026 (=> (not res!1626549) (not e!2482312))))

(declare-fun newSuffixResult!27 () List!42968)

(assert (=> b!4003026 (= res!1626549 (= (++!11206 lt!1415656 newSuffixResult!27) (++!11206 prefix!494 newSuffix!27)))))

(declare-fun b!4003027 () Bool)

(declare-fun res!1626544 () Bool)

(assert (=> b!4003027 (=> (not res!1626544) (not e!2482302))))

(assert (=> b!4003027 (= res!1626544 (>= (size!32034 suffix!1299) (size!32034 newSuffix!27)))))

(declare-fun b!4003028 () Bool)

(declare-fun tp!1218356 () Bool)

(assert (=> b!4003028 (= e!2482308 (and tp_is_empty!20389 tp!1218356))))

(declare-fun b!4003029 () Bool)

(assert (=> b!4003029 (= e!2482306 e!2482300)))

(declare-fun res!1626546 () Bool)

(assert (=> b!4003029 (=> res!1626546 e!2482300)))

(assert (=> b!4003029 (= res!1626546 (not (isPrefix!3891 lt!1415656 lt!1415663)))))

(assert (=> b!4003029 (isPrefix!3891 prefix!494 lt!1415663)))

(declare-fun lt!1415659 () Unit!61834)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2732 (List!42968 List!42968) Unit!61834)

(assert (=> b!4003029 (= lt!1415659 (lemmaConcatTwoListThenFirstIsPrefix!2732 prefix!494 suffix!1299))))

(assert (=> b!4003029 (isPrefix!3891 lt!1415656 lt!1415658)))

(declare-fun lt!1415662 () Unit!61834)

(assert (=> b!4003029 (= lt!1415662 (lemmaConcatTwoListThenFirstIsPrefix!2732 lt!1415656 suffixResult!105))))

(declare-fun b!4003030 () Bool)

(declare-fun res!1626541 () Bool)

(assert (=> b!4003030 (=> (not res!1626541) (not e!2482302))))

(declare-fun isEmpty!25600 (List!42970) Bool)

(assert (=> b!4003030 (= res!1626541 (not (isEmpty!25600 rules!2999)))))

(declare-fun b!4003031 () Bool)

(declare-fun res!1626550 () Bool)

(assert (=> b!4003031 (=> (not res!1626550) (not e!2482302))))

(declare-fun rulesInvariant!5736 (LexerInterface!6393 List!42970) Bool)

(assert (=> b!4003031 (= res!1626550 (rulesInvariant!5736 thiss!21717 rules!2999))))

(declare-fun b!4003032 () Bool)

(declare-fun tp!1218364 () Bool)

(assert (=> b!4003032 (= e!2482301 (and tp!1218364 (inv!57213 (tag!7664 (h!48266 rules!2999))) (inv!57217 (transformation!6804 (h!48266 rules!2999))) e!2482309))))

(assert (= (and start!376776 res!1626542) b!4003030))

(assert (= (and b!4003030 res!1626541) b!4003031))

(assert (= (and b!4003031 res!1626550) b!4003027))

(assert (= (and b!4003027 res!1626544) b!4003018))

(assert (= (and b!4003018 res!1626548) b!4003017))

(assert (= (and b!4003017 res!1626543) b!4003026))

(assert (= (and b!4003026 res!1626549) b!4003019))

(assert (= (and b!4003019 res!1626547) b!4003025))

(assert (= (and b!4003025 (not res!1626551)) b!4003029))

(assert (= (and b!4003029 (not res!1626546)) b!4003013))

(assert (= (and b!4003013 (not res!1626545)) b!4003021))

(assert (= (and start!376776 ((_ is Cons!42844) prefix!494)) b!4003028))

(assert (= b!4003024 b!4003020))

(assert (= b!4003011 b!4003024))

(assert (= start!376776 b!4003011))

(assert (= (and start!376776 ((_ is Cons!42844) suffixResult!105)) b!4003014))

(assert (= (and start!376776 ((_ is Cons!42844) suffix!1299)) b!4003023))

(assert (= (and start!376776 ((_ is Cons!42844) newSuffix!27)) b!4003012))

(assert (= b!4003032 b!4003015))

(assert (= b!4003022 b!4003032))

(assert (= (and start!376776 ((_ is Cons!42846) rules!2999)) b!4003022))

(assert (= (and start!376776 ((_ is Cons!42844) newSuffixResult!27)) b!4003016))

(declare-fun m!4585429 () Bool)

(assert (=> b!4003029 m!4585429))

(declare-fun m!4585431 () Bool)

(assert (=> b!4003029 m!4585431))

(declare-fun m!4585433 () Bool)

(assert (=> b!4003029 m!4585433))

(declare-fun m!4585435 () Bool)

(assert (=> b!4003029 m!4585435))

(declare-fun m!4585437 () Bool)

(assert (=> b!4003029 m!4585437))

(declare-fun m!4585439 () Bool)

(assert (=> b!4003018 m!4585439))

(declare-fun m!4585441 () Bool)

(assert (=> start!376776 m!4585441))

(declare-fun m!4585443 () Bool)

(assert (=> b!4003027 m!4585443))

(declare-fun m!4585445 () Bool)

(assert (=> b!4003027 m!4585445))

(declare-fun m!4585447 () Bool)

(assert (=> b!4003025 m!4585447))

(declare-fun m!4585449 () Bool)

(assert (=> b!4003025 m!4585449))

(declare-fun m!4585451 () Bool)

(assert (=> b!4003025 m!4585451))

(declare-fun m!4585453 () Bool)

(assert (=> b!4003025 m!4585453))

(declare-fun m!4585455 () Bool)

(assert (=> b!4003017 m!4585455))

(declare-fun m!4585457 () Bool)

(assert (=> b!4003017 m!4585457))

(declare-fun m!4585459 () Bool)

(assert (=> b!4003017 m!4585459))

(assert (=> b!4003017 m!4585459))

(declare-fun m!4585461 () Bool)

(assert (=> b!4003017 m!4585461))

(declare-fun m!4585463 () Bool)

(assert (=> b!4003026 m!4585463))

(declare-fun m!4585465 () Bool)

(assert (=> b!4003026 m!4585465))

(declare-fun m!4585467 () Bool)

(assert (=> b!4003032 m!4585467))

(declare-fun m!4585469 () Bool)

(assert (=> b!4003032 m!4585469))

(declare-fun m!4585471 () Bool)

(assert (=> b!4003024 m!4585471))

(declare-fun m!4585473 () Bool)

(assert (=> b!4003024 m!4585473))

(declare-fun m!4585475 () Bool)

(assert (=> b!4003030 m!4585475))

(declare-fun m!4585477 () Bool)

(assert (=> b!4003011 m!4585477))

(declare-fun m!4585479 () Bool)

(assert (=> b!4003031 m!4585479))

(declare-fun m!4585481 () Bool)

(assert (=> b!4003013 m!4585481))

(declare-fun m!4585483 () Bool)

(assert (=> b!4003013 m!4585483))

(declare-fun m!4585485 () Bool)

(assert (=> b!4003013 m!4585485))

(declare-fun m!4585487 () Bool)

(assert (=> b!4003013 m!4585487))

(declare-fun m!4585489 () Bool)

(assert (=> b!4003021 m!4585489))

(declare-fun m!4585491 () Bool)

(assert (=> b!4003021 m!4585491))

(declare-fun m!4585493 () Bool)

(assert (=> b!4003021 m!4585493))

(declare-fun m!4585495 () Bool)

(assert (=> b!4003021 m!4585495))

(declare-fun m!4585497 () Bool)

(assert (=> b!4003019 m!4585497))

(declare-fun m!4585499 () Bool)

(assert (=> b!4003019 m!4585499))

(check-sat b_and!307395 (not b_next!112011) (not b!4003027) (not b!4003025) (not b!4003031) (not b!4003029) (not b!4003017) (not b!4003013) b_and!307393 (not b!4003014) (not b!4003019) (not b!4003028) (not b!4003030) b_and!307391 (not b_next!112015) (not b!4003024) (not b!4003022) (not b!4003023) (not b!4003011) (not b!4003032) (not b!4003021) (not b!4003016) b_and!307397 (not start!376776) (not b!4003026) (not b!4003018) (not b_next!112009) (not b!4003012) tp_is_empty!20389 (not b_next!112013))
(check-sat b_and!307395 (not b_next!112011) b_and!307391 (not b_next!112015) b_and!307397 b_and!307393 (not b_next!112009) (not b_next!112013))

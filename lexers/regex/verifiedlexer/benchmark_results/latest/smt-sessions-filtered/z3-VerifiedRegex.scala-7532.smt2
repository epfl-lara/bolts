; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397654 () Bool)

(assert start!397654)

(declare-fun b!4171015 () Bool)

(declare-fun b_free!120727 () Bool)

(declare-fun b_next!121431 () Bool)

(assert (=> b!4171015 (= b_free!120727 (not b_next!121431))))

(declare-fun tp!1274394 () Bool)

(declare-fun b_and!325693 () Bool)

(assert (=> b!4171015 (= tp!1274394 b_and!325693)))

(declare-fun b_free!120729 () Bool)

(declare-fun b_next!121433 () Bool)

(assert (=> b!4171015 (= b_free!120729 (not b_next!121433))))

(declare-fun tp!1274389 () Bool)

(declare-fun b_and!325695 () Bool)

(assert (=> b!4171015 (= tp!1274389 b_and!325695)))

(declare-fun b!4171017 () Bool)

(declare-fun b_free!120731 () Bool)

(declare-fun b_next!121435 () Bool)

(assert (=> b!4171017 (= b_free!120731 (not b_next!121435))))

(declare-fun tp!1274395 () Bool)

(declare-fun b_and!325697 () Bool)

(assert (=> b!4171017 (= tp!1274395 b_and!325697)))

(declare-fun b_free!120733 () Bool)

(declare-fun b_next!121437 () Bool)

(assert (=> b!4171017 (= b_free!120733 (not b_next!121437))))

(declare-fun tp!1274392 () Bool)

(declare-fun b_and!325699 () Bool)

(assert (=> b!4171017 (= tp!1274392 b_and!325699)))

(declare-fun b!4171028 () Bool)

(declare-fun b_free!120735 () Bool)

(declare-fun b_next!121439 () Bool)

(assert (=> b!4171028 (= b_free!120735 (not b_next!121439))))

(declare-fun tp!1274397 () Bool)

(declare-fun b_and!325701 () Bool)

(assert (=> b!4171028 (= tp!1274397 b_and!325701)))

(declare-fun b_free!120737 () Bool)

(declare-fun b_next!121441 () Bool)

(assert (=> b!4171028 (= b_free!120737 (not b_next!121441))))

(declare-fun tp!1274398 () Bool)

(declare-fun b_and!325703 () Bool)

(assert (=> b!4171028 (= tp!1274398 b_and!325703)))

(declare-fun b!4171014 () Bool)

(declare-fun res!1709113 () Bool)

(declare-fun e!2589462 () Bool)

(assert (=> b!4171014 (=> (not res!1709113) (not e!2589462))))

(declare-datatypes ((C!25160 0))(
  ( (C!25161 (val!14742 Int)) )
))
(declare-datatypes ((List!45835 0))(
  ( (Nil!45711) (Cons!45711 (h!51131 C!25160) (t!344378 List!45835)) )
))
(declare-fun p!2959 () List!45835)

(declare-fun input!3342 () List!45835)

(declare-fun isPrefix!4437 (List!45835 List!45835) Bool)

(assert (=> b!4171014 (= res!1709113 (isPrefix!4437 p!2959 input!3342))))

(declare-fun e!2589466 () Bool)

(assert (=> b!4171015 (= e!2589466 (and tp!1274394 tp!1274389))))

(declare-fun b!4171016 () Bool)

(declare-fun e!2589461 () Bool)

(declare-fun e!2589460 () Bool)

(declare-fun tp!1274388 () Bool)

(assert (=> b!4171016 (= e!2589461 (and e!2589460 tp!1274388))))

(declare-fun e!2589456 () Bool)

(assert (=> b!4171017 (= e!2589456 (and tp!1274395 tp!1274392))))

(declare-fun b!4171018 () Bool)

(declare-fun res!1709110 () Bool)

(assert (=> b!4171018 (=> (not res!1709110) (not e!2589462))))

(declare-datatypes ((List!45836 0))(
  ( (Nil!45712) (Cons!45712 (h!51132 (_ BitVec 16)) (t!344379 List!45836)) )
))
(declare-datatypes ((TokenValue!7810 0))(
  ( (FloatLiteralValue!15620 (text!55115 List!45836)) (TokenValueExt!7809 (__x!27841 Int)) (Broken!39050 (value!236536 List!45836)) (Object!7933) (End!7810) (Def!7810) (Underscore!7810) (Match!7810) (Else!7810) (Error!7810) (Case!7810) (If!7810) (Extends!7810) (Abstract!7810) (Class!7810) (Val!7810) (DelimiterValue!15620 (del!7870 List!45836)) (KeywordValue!7816 (value!236537 List!45836)) (CommentValue!15620 (value!236538 List!45836)) (WhitespaceValue!15620 (value!236539 List!45836)) (IndentationValue!7810 (value!236540 List!45836)) (String!52915) (Int32!7810) (Broken!39051 (value!236541 List!45836)) (Boolean!7811) (Unit!64778) (OperatorValue!7813 (op!7870 List!45836)) (IdentifierValue!15620 (value!236542 List!45836)) (IdentifierValue!15621 (value!236543 List!45836)) (WhitespaceValue!15621 (value!236544 List!45836)) (True!15620) (False!15620) (Broken!39052 (value!236545 List!45836)) (Broken!39053 (value!236546 List!45836)) (True!15621) (RightBrace!7810) (RightBracket!7810) (Colon!7810) (Null!7810) (Comma!7810) (LeftBracket!7810) (False!15621) (LeftBrace!7810) (ImaginaryLiteralValue!7810 (text!55116 List!45836)) (StringLiteralValue!23430 (value!236547 List!45836)) (EOFValue!7810 (value!236548 List!45836)) (IdentValue!7810 (value!236549 List!45836)) (DelimiterValue!15621 (value!236550 List!45836)) (DedentValue!7810 (value!236551 List!45836)) (NewLineValue!7810 (value!236552 List!45836)) (IntegerValue!23430 (value!236553 (_ BitVec 32)) (text!55117 List!45836)) (IntegerValue!23431 (value!236554 Int) (text!55118 List!45836)) (Times!7810) (Or!7810) (Equal!7810) (Minus!7810) (Broken!39054 (value!236555 List!45836)) (And!7810) (Div!7810) (LessEqual!7810) (Mod!7810) (Concat!20295) (Not!7810) (Plus!7810) (SpaceValue!7810 (value!236556 List!45836)) (IntegerValue!23432 (value!236557 Int) (text!55119 List!45836)) (StringLiteralValue!23431 (text!55120 List!45836)) (FloatLiteralValue!15621 (text!55121 List!45836)) (BytesLiteralValue!7810 (value!236558 List!45836)) (CommentValue!15621 (value!236559 List!45836)) (StringLiteralValue!23432 (value!236560 List!45836)) (ErrorTokenValue!7810 (msg!7871 List!45836)) )
))
(declare-datatypes ((IArray!27587 0))(
  ( (IArray!27588 (innerList!13851 List!45835)) )
))
(declare-datatypes ((Conc!13791 0))(
  ( (Node!13791 (left!34071 Conc!13791) (right!34401 Conc!13791) (csize!27812 Int) (cheight!14002 Int)) (Leaf!21324 (xs!17097 IArray!27587) (csize!27813 Int)) (Empty!13791) )
))
(declare-datatypes ((BalanceConc!27176 0))(
  ( (BalanceConc!27177 (c!712908 Conc!13791)) )
))
(declare-datatypes ((Regex!12485 0))(
  ( (ElementMatch!12485 (c!712909 C!25160)) (Concat!20296 (regOne!25482 Regex!12485) (regTwo!25482 Regex!12485)) (EmptyExpr!12485) (Star!12485 (reg!12814 Regex!12485)) (EmptyLang!12485) (Union!12485 (regOne!25483 Regex!12485) (regTwo!25483 Regex!12485)) )
))
(declare-datatypes ((String!52916 0))(
  ( (String!52917 (value!236561 String)) )
))
(declare-datatypes ((TokenValueInjection!15048 0))(
  ( (TokenValueInjection!15049 (toValue!10260 Int) (toChars!10119 Int)) )
))
(declare-datatypes ((Rule!14960 0))(
  ( (Rule!14961 (regex!7580 Regex!12485) (tag!8444 String!52916) (isSeparator!7580 Bool) (transformation!7580 TokenValueInjection!15048)) )
))
(declare-datatypes ((List!45837 0))(
  ( (Nil!45713) (Cons!45713 (h!51133 Rule!14960) (t!344380 List!45837)) )
))
(declare-fun rules!3843 () List!45837)

(declare-fun isEmpty!27041 (List!45837) Bool)

(assert (=> b!4171018 (= res!1709110 (not (isEmpty!27041 rules!3843)))))

(declare-fun b!4171019 () Bool)

(declare-fun e!2589459 () Bool)

(declare-fun tp_is_empty!21933 () Bool)

(declare-fun tp!1274390 () Bool)

(assert (=> b!4171019 (= e!2589459 (and tp_is_empty!21933 tp!1274390))))

(declare-fun b!4171020 () Bool)

(declare-fun res!1709114 () Bool)

(declare-fun e!2589454 () Bool)

(assert (=> b!4171020 (=> res!1709114 e!2589454)))

(declare-datatypes ((LexerInterface!7173 0))(
  ( (LexerInterfaceExt!7170 (__x!27842 Int)) (Lexer!7171) )
))
(declare-fun thiss!25986 () LexerInterface!7173)

(declare-fun rBis!167 () Rule!14960)

(declare-fun ruleValid!3298 (LexerInterface!7173 Rule!14960) Bool)

(assert (=> b!4171020 (= res!1709114 (not (ruleValid!3298 thiss!25986 rBis!167)))))

(declare-fun b!4171022 () Bool)

(assert (=> b!4171022 (= e!2589462 (not e!2589454))))

(declare-fun res!1709106 () Bool)

(assert (=> b!4171022 (=> res!1709106 e!2589454)))

(declare-fun lt!1485294 () Int)

(declare-fun r!4142 () Rule!14960)

(declare-fun lt!1485298 () TokenValue!7810)

(declare-datatypes ((Token!13874 0))(
  ( (Token!13875 (value!236562 TokenValue!7810) (rule!10626 Rule!14960) (size!33553 Int) (originalCharacters!7968 List!45835)) )
))
(declare-datatypes ((tuple2!43570 0))(
  ( (tuple2!43571 (_1!24919 Token!13874) (_2!24919 List!45835)) )
))
(declare-datatypes ((Option!9776 0))(
  ( (None!9775) (Some!9775 (v!40567 tuple2!43570)) )
))
(declare-fun maxPrefixOneRule!3184 (LexerInterface!7173 Rule!14960 List!45835) Option!9776)

(declare-fun getSuffix!2732 (List!45835 List!45835) List!45835)

(assert (=> b!4171022 (= res!1709106 (not (= (maxPrefixOneRule!3184 thiss!25986 r!4142 input!3342) (Some!9775 (tuple2!43571 (Token!13875 lt!1485298 r!4142 lt!1485294 p!2959) (getSuffix!2732 input!3342 p!2959))))))))

(declare-fun size!33554 (List!45835) Int)

(assert (=> b!4171022 (= lt!1485294 (size!33554 p!2959))))

(declare-fun lt!1485297 () BalanceConc!27176)

(declare-fun apply!10545 (TokenValueInjection!15048 BalanceConc!27176) TokenValue!7810)

(assert (=> b!4171022 (= lt!1485298 (apply!10545 (transformation!7580 r!4142) lt!1485297))))

(assert (=> b!4171022 (isPrefix!4437 input!3342 input!3342)))

(declare-datatypes ((Unit!64779 0))(
  ( (Unit!64780) )
))
(declare-fun lt!1485295 () Unit!64779)

(declare-fun lemmaIsPrefixRefl!2866 (List!45835 List!45835) Unit!64779)

(assert (=> b!4171022 (= lt!1485295 (lemmaIsPrefixRefl!2866 input!3342 input!3342))))

(declare-fun lt!1485296 () Unit!64779)

(declare-fun lemmaSemiInverse!2346 (TokenValueInjection!15048 BalanceConc!27176) Unit!64779)

(assert (=> b!4171022 (= lt!1485296 (lemmaSemiInverse!2346 (transformation!7580 r!4142) lt!1485297))))

(declare-fun seqFromList!5605 (List!45835) BalanceConc!27176)

(assert (=> b!4171022 (= lt!1485297 (seqFromList!5605 p!2959))))

(declare-fun b!4171023 () Bool)

(declare-fun e!2589465 () Bool)

(declare-fun tp!1274396 () Bool)

(assert (=> b!4171023 (= e!2589465 (and tp_is_empty!21933 tp!1274396))))

(declare-fun b!4171024 () Bool)

(declare-fun res!1709118 () Bool)

(assert (=> b!4171024 (=> (not res!1709118) (not e!2589462))))

(declare-fun contains!9381 (List!45837 Rule!14960) Bool)

(assert (=> b!4171024 (= res!1709118 (contains!9381 rules!3843 rBis!167))))

(declare-fun tp!1274400 () Bool)

(declare-fun b!4171025 () Bool)

(declare-fun inv!60237 (String!52916) Bool)

(declare-fun inv!60239 (TokenValueInjection!15048) Bool)

(assert (=> b!4171025 (= e!2589460 (and tp!1274400 (inv!60237 (tag!8444 (h!51133 rules!3843))) (inv!60239 (transformation!7580 (h!51133 rules!3843))) e!2589466))))

(declare-fun b!4171026 () Bool)

(declare-fun res!1709111 () Bool)

(assert (=> b!4171026 (=> (not res!1709111) (not e!2589462))))

(assert (=> b!4171026 (= res!1709111 (ruleValid!3298 thiss!25986 r!4142))))

(declare-fun res!1709109 () Bool)

(assert (=> start!397654 (=> (not res!1709109) (not e!2589462))))

(get-info :version)

(assert (=> start!397654 (= res!1709109 ((_ is Lexer!7171) thiss!25986))))

(assert (=> start!397654 e!2589462))

(assert (=> start!397654 true))

(declare-fun e!2589464 () Bool)

(assert (=> start!397654 e!2589464))

(declare-fun e!2589458 () Bool)

(assert (=> start!397654 e!2589458))

(assert (=> start!397654 e!2589461))

(assert (=> start!397654 e!2589465))

(assert (=> start!397654 e!2589459))

(declare-fun e!2589463 () Bool)

(assert (=> start!397654 e!2589463))

(declare-fun b!4171021 () Bool)

(declare-fun res!1709116 () Bool)

(assert (=> b!4171021 (=> (not res!1709116) (not e!2589462))))

(declare-fun rulesInvariant!6386 (LexerInterface!7173 List!45837) Bool)

(assert (=> b!4171021 (= res!1709116 (rulesInvariant!6386 thiss!25986 rules!3843))))

(declare-fun b!4171027 () Bool)

(declare-fun res!1709115 () Bool)

(assert (=> b!4171027 (=> (not res!1709115) (not e!2589462))))

(assert (=> b!4171027 (= res!1709115 (contains!9381 rules!3843 r!4142))))

(declare-fun e!2589467 () Bool)

(assert (=> b!4171028 (= e!2589467 (and tp!1274397 tp!1274398))))

(declare-fun b!4171029 () Bool)

(declare-fun res!1709117 () Bool)

(assert (=> b!4171029 (=> (not res!1709117) (not e!2589462))))

(declare-fun validRegex!5602 (Regex!12485) Bool)

(assert (=> b!4171029 (= res!1709117 (validRegex!5602 (regex!7580 r!4142)))))

(declare-fun b!4171030 () Bool)

(declare-fun tp!1274399 () Bool)

(assert (=> b!4171030 (= e!2589463 (and tp_is_empty!21933 tp!1274399))))

(declare-fun b!4171031 () Bool)

(declare-fun res!1709107 () Bool)

(assert (=> b!4171031 (=> (not res!1709107) (not e!2589462))))

(declare-fun pBis!107 () List!45835)

(assert (=> b!4171031 (= res!1709107 (isPrefix!4437 pBis!107 input!3342))))

(declare-fun b!4171032 () Bool)

(declare-fun rulesValidInductive!2792 (LexerInterface!7173 List!45837) Bool)

(assert (=> b!4171032 (= e!2589454 (rulesValidInductive!2792 thiss!25986 rules!3843))))

(declare-fun b!4171033 () Bool)

(declare-fun tp!1274393 () Bool)

(assert (=> b!4171033 (= e!2589464 (and tp!1274393 (inv!60237 (tag!8444 rBis!167)) (inv!60239 (transformation!7580 rBis!167)) e!2589456))))

(declare-fun tp!1274391 () Bool)

(declare-fun b!4171034 () Bool)

(assert (=> b!4171034 (= e!2589458 (and tp!1274391 (inv!60237 (tag!8444 r!4142)) (inv!60239 (transformation!7580 r!4142)) e!2589467))))

(declare-fun b!4171035 () Bool)

(declare-fun res!1709112 () Bool)

(assert (=> b!4171035 (=> (not res!1709112) (not e!2589462))))

(declare-fun matchR!6224 (Regex!12485 List!45835) Bool)

(assert (=> b!4171035 (= res!1709112 (matchR!6224 (regex!7580 r!4142) p!2959))))

(declare-fun b!4171036 () Bool)

(declare-fun res!1709108 () Bool)

(assert (=> b!4171036 (=> res!1709108 e!2589454)))

(assert (=> b!4171036 (= res!1709108 (<= (size!33554 pBis!107) lt!1485294))))

(assert (= (and start!397654 res!1709109) b!4171014))

(assert (= (and b!4171014 res!1709113) b!4171031))

(assert (= (and b!4171031 res!1709107) b!4171018))

(assert (= (and b!4171018 res!1709110) b!4171021))

(assert (= (and b!4171021 res!1709116) b!4171027))

(assert (= (and b!4171027 res!1709115) b!4171024))

(assert (= (and b!4171024 res!1709118) b!4171029))

(assert (= (and b!4171029 res!1709117) b!4171035))

(assert (= (and b!4171035 res!1709112) b!4171026))

(assert (= (and b!4171026 res!1709111) b!4171022))

(assert (= (and b!4171022 (not res!1709106)) b!4171036))

(assert (= (and b!4171036 (not res!1709108)) b!4171020))

(assert (= (and b!4171020 (not res!1709114)) b!4171032))

(assert (= b!4171033 b!4171017))

(assert (= start!397654 b!4171033))

(assert (= b!4171034 b!4171028))

(assert (= start!397654 b!4171034))

(assert (= b!4171025 b!4171015))

(assert (= b!4171016 b!4171025))

(assert (= (and start!397654 ((_ is Cons!45713) rules!3843)) b!4171016))

(assert (= (and start!397654 ((_ is Cons!45711) input!3342)) b!4171023))

(assert (= (and start!397654 ((_ is Cons!45711) pBis!107)) b!4171019))

(assert (= (and start!397654 ((_ is Cons!45711) p!2959)) b!4171030))

(declare-fun m!4761483 () Bool)

(assert (=> b!4171020 m!4761483))

(declare-fun m!4761485 () Bool)

(assert (=> b!4171029 m!4761485))

(declare-fun m!4761487 () Bool)

(assert (=> b!4171032 m!4761487))

(declare-fun m!4761489 () Bool)

(assert (=> b!4171022 m!4761489))

(declare-fun m!4761491 () Bool)

(assert (=> b!4171022 m!4761491))

(declare-fun m!4761493 () Bool)

(assert (=> b!4171022 m!4761493))

(declare-fun m!4761495 () Bool)

(assert (=> b!4171022 m!4761495))

(declare-fun m!4761497 () Bool)

(assert (=> b!4171022 m!4761497))

(declare-fun m!4761499 () Bool)

(assert (=> b!4171022 m!4761499))

(declare-fun m!4761501 () Bool)

(assert (=> b!4171022 m!4761501))

(declare-fun m!4761503 () Bool)

(assert (=> b!4171022 m!4761503))

(declare-fun m!4761505 () Bool)

(assert (=> b!4171025 m!4761505))

(declare-fun m!4761507 () Bool)

(assert (=> b!4171025 m!4761507))

(declare-fun m!4761509 () Bool)

(assert (=> b!4171033 m!4761509))

(declare-fun m!4761511 () Bool)

(assert (=> b!4171033 m!4761511))

(declare-fun m!4761513 () Bool)

(assert (=> b!4171014 m!4761513))

(declare-fun m!4761515 () Bool)

(assert (=> b!4171024 m!4761515))

(declare-fun m!4761517 () Bool)

(assert (=> b!4171021 m!4761517))

(declare-fun m!4761519 () Bool)

(assert (=> b!4171035 m!4761519))

(declare-fun m!4761521 () Bool)

(assert (=> b!4171034 m!4761521))

(declare-fun m!4761523 () Bool)

(assert (=> b!4171034 m!4761523))

(declare-fun m!4761525 () Bool)

(assert (=> b!4171027 m!4761525))

(declare-fun m!4761527 () Bool)

(assert (=> b!4171031 m!4761527))

(declare-fun m!4761529 () Bool)

(assert (=> b!4171026 m!4761529))

(declare-fun m!4761531 () Bool)

(assert (=> b!4171018 m!4761531))

(declare-fun m!4761533 () Bool)

(assert (=> b!4171036 m!4761533))

(check-sat b_and!325693 (not b!4171033) (not b!4171018) (not b!4171020) b_and!325703 b_and!325695 b_and!325701 (not b_next!121433) (not b_next!121439) (not b!4171016) b_and!325697 (not b_next!121441) (not b!4171014) (not b!4171030) (not b!4171019) (not b!4171024) (not b!4171032) (not b!4171029) (not b!4171027) (not b!4171031) (not b!4171034) (not b!4171035) (not b_next!121431) (not b!4171021) tp_is_empty!21933 (not b_next!121435) (not b!4171026) b_and!325699 (not b!4171025) (not b_next!121437) (not b!4171036) (not b!4171023) (not b!4171022))
(check-sat b_and!325693 b_and!325703 b_and!325695 b_and!325701 (not b_next!121431) (not b_next!121435) (not b_next!121433) (not b_next!121439) b_and!325699 (not b_next!121437) b_and!325697 (not b_next!121441))
(get-model)

(declare-fun d!1232135 () Bool)

(declare-fun res!1709152 () Bool)

(declare-fun e!2589489 () Bool)

(assert (=> d!1232135 (=> (not res!1709152) (not e!2589489))))

(assert (=> d!1232135 (= res!1709152 (validRegex!5602 (regex!7580 rBis!167)))))

(assert (=> d!1232135 (= (ruleValid!3298 thiss!25986 rBis!167) e!2589489)))

(declare-fun b!4171062 () Bool)

(declare-fun res!1709153 () Bool)

(assert (=> b!4171062 (=> (not res!1709153) (not e!2589489))))

(declare-fun nullable!4379 (Regex!12485) Bool)

(assert (=> b!4171062 (= res!1709153 (not (nullable!4379 (regex!7580 rBis!167))))))

(declare-fun b!4171063 () Bool)

(assert (=> b!4171063 (= e!2589489 (not (= (tag!8444 rBis!167) (String!52917 ""))))))

(assert (= (and d!1232135 res!1709152) b!4171062))

(assert (= (and b!4171062 res!1709153) b!4171063))

(declare-fun m!4761557 () Bool)

(assert (=> d!1232135 m!4761557))

(declare-fun m!4761559 () Bool)

(assert (=> b!4171062 m!4761559))

(assert (=> b!4171020 d!1232135))

(declare-fun b!4171076 () Bool)

(declare-fun e!2589502 () Bool)

(declare-fun e!2589501 () Bool)

(assert (=> b!4171076 (= e!2589502 e!2589501)))

(declare-fun res!1709167 () Bool)

(assert (=> b!4171076 (=> (not res!1709167) (not e!2589501))))

(assert (=> b!4171076 (= res!1709167 (not ((_ is Nil!45711) input!3342)))))

(declare-fun b!4171078 () Bool)

(declare-fun tail!6703 (List!45835) List!45835)

(assert (=> b!4171078 (= e!2589501 (isPrefix!4437 (tail!6703 pBis!107) (tail!6703 input!3342)))))

(declare-fun d!1232141 () Bool)

(declare-fun e!2589500 () Bool)

(assert (=> d!1232141 e!2589500))

(declare-fun res!1709168 () Bool)

(assert (=> d!1232141 (=> res!1709168 e!2589500)))

(declare-fun lt!1485309 () Bool)

(assert (=> d!1232141 (= res!1709168 (not lt!1485309))))

(assert (=> d!1232141 (= lt!1485309 e!2589502)))

(declare-fun res!1709166 () Bool)

(assert (=> d!1232141 (=> res!1709166 e!2589502)))

(assert (=> d!1232141 (= res!1709166 ((_ is Nil!45711) pBis!107))))

(assert (=> d!1232141 (= (isPrefix!4437 pBis!107 input!3342) lt!1485309)))

(declare-fun b!4171079 () Bool)

(assert (=> b!4171079 (= e!2589500 (>= (size!33554 input!3342) (size!33554 pBis!107)))))

(declare-fun b!4171077 () Bool)

(declare-fun res!1709169 () Bool)

(assert (=> b!4171077 (=> (not res!1709169) (not e!2589501))))

(declare-fun head!8856 (List!45835) C!25160)

(assert (=> b!4171077 (= res!1709169 (= (head!8856 pBis!107) (head!8856 input!3342)))))

(assert (= (and d!1232141 (not res!1709166)) b!4171076))

(assert (= (and b!4171076 res!1709167) b!4171077))

(assert (= (and b!4171077 res!1709169) b!4171078))

(assert (= (and d!1232141 (not res!1709168)) b!4171079))

(declare-fun m!4761561 () Bool)

(assert (=> b!4171078 m!4761561))

(declare-fun m!4761563 () Bool)

(assert (=> b!4171078 m!4761563))

(assert (=> b!4171078 m!4761561))

(assert (=> b!4171078 m!4761563))

(declare-fun m!4761565 () Bool)

(assert (=> b!4171078 m!4761565))

(declare-fun m!4761567 () Bool)

(assert (=> b!4171079 m!4761567))

(assert (=> b!4171079 m!4761533))

(declare-fun m!4761569 () Bool)

(assert (=> b!4171077 m!4761569))

(declare-fun m!4761571 () Bool)

(assert (=> b!4171077 m!4761571))

(assert (=> b!4171031 d!1232141))

(declare-fun d!1232143 () Bool)

(assert (=> d!1232143 true))

(declare-fun lt!1485346 () Bool)

(declare-fun lambda!129238 () Int)

(declare-fun forall!8470 (List!45837 Int) Bool)

(assert (=> d!1232143 (= lt!1485346 (forall!8470 rules!3843 lambda!129238))))

(declare-fun e!2589588 () Bool)

(assert (=> d!1232143 (= lt!1485346 e!2589588)))

(declare-fun res!1709249 () Bool)

(assert (=> d!1232143 (=> res!1709249 e!2589588)))

(assert (=> d!1232143 (= res!1709249 (not ((_ is Cons!45713) rules!3843)))))

(assert (=> d!1232143 (= (rulesValidInductive!2792 thiss!25986 rules!3843) lt!1485346)))

(declare-fun b!4171220 () Bool)

(declare-fun e!2589589 () Bool)

(assert (=> b!4171220 (= e!2589588 e!2589589)))

(declare-fun res!1709248 () Bool)

(assert (=> b!4171220 (=> (not res!1709248) (not e!2589589))))

(assert (=> b!4171220 (= res!1709248 (ruleValid!3298 thiss!25986 (h!51133 rules!3843)))))

(declare-fun b!4171221 () Bool)

(assert (=> b!4171221 (= e!2589589 (rulesValidInductive!2792 thiss!25986 (t!344380 rules!3843)))))

(assert (= (and d!1232143 (not res!1709249)) b!4171220))

(assert (= (and b!4171220 res!1709248) b!4171221))

(declare-fun m!4761681 () Bool)

(assert (=> d!1232143 m!4761681))

(declare-fun m!4761683 () Bool)

(assert (=> b!4171220 m!4761683))

(declare-fun m!4761685 () Bool)

(assert (=> b!4171221 m!4761685))

(assert (=> b!4171032 d!1232143))

(declare-fun d!1232179 () Bool)

(declare-fun res!1709256 () Bool)

(declare-fun e!2589595 () Bool)

(assert (=> d!1232179 (=> (not res!1709256) (not e!2589595))))

(declare-fun rulesValid!2955 (LexerInterface!7173 List!45837) Bool)

(assert (=> d!1232179 (= res!1709256 (rulesValid!2955 thiss!25986 rules!3843))))

(assert (=> d!1232179 (= (rulesInvariant!6386 thiss!25986 rules!3843) e!2589595)))

(declare-fun b!4171232 () Bool)

(declare-datatypes ((List!45838 0))(
  ( (Nil!45714) (Cons!45714 (h!51134 String!52916) (t!344413 List!45838)) )
))
(declare-fun noDuplicateTag!3116 (LexerInterface!7173 List!45837 List!45838) Bool)

(assert (=> b!4171232 (= e!2589595 (noDuplicateTag!3116 thiss!25986 rules!3843 Nil!45714))))

(assert (= (and d!1232179 res!1709256) b!4171232))

(declare-fun m!4761691 () Bool)

(assert (=> d!1232179 m!4761691))

(declare-fun m!4761693 () Bool)

(assert (=> b!4171232 m!4761693))

(assert (=> b!4171021 d!1232179))

(declare-fun d!1232185 () Bool)

(declare-fun lt!1485350 () List!45835)

(declare-fun ++!11670 (List!45835 List!45835) List!45835)

(assert (=> d!1232185 (= (++!11670 p!2959 lt!1485350) input!3342)))

(declare-fun e!2589605 () List!45835)

(assert (=> d!1232185 (= lt!1485350 e!2589605)))

(declare-fun c!712938 () Bool)

(assert (=> d!1232185 (= c!712938 ((_ is Cons!45711) p!2959))))

(assert (=> d!1232185 (>= (size!33554 input!3342) (size!33554 p!2959))))

(assert (=> d!1232185 (= (getSuffix!2732 input!3342 p!2959) lt!1485350)))

(declare-fun b!4171248 () Bool)

(assert (=> b!4171248 (= e!2589605 (getSuffix!2732 (tail!6703 input!3342) (t!344378 p!2959)))))

(declare-fun b!4171249 () Bool)

(assert (=> b!4171249 (= e!2589605 input!3342)))

(assert (= (and d!1232185 c!712938) b!4171248))

(assert (= (and d!1232185 (not c!712938)) b!4171249))

(declare-fun m!4761703 () Bool)

(assert (=> d!1232185 m!4761703))

(assert (=> d!1232185 m!4761567))

(assert (=> d!1232185 m!4761499))

(assert (=> b!4171248 m!4761563))

(assert (=> b!4171248 m!4761563))

(declare-fun m!4761705 () Bool)

(assert (=> b!4171248 m!4761705))

(assert (=> b!4171022 d!1232185))

(declare-fun b!4171261 () Bool)

(declare-fun e!2589611 () Bool)

(declare-fun e!2589610 () Bool)

(assert (=> b!4171261 (= e!2589611 e!2589610)))

(declare-fun res!1709265 () Bool)

(assert (=> b!4171261 (=> (not res!1709265) (not e!2589610))))

(assert (=> b!4171261 (= res!1709265 (not ((_ is Nil!45711) input!3342)))))

(declare-fun b!4171263 () Bool)

(assert (=> b!4171263 (= e!2589610 (isPrefix!4437 (tail!6703 input!3342) (tail!6703 input!3342)))))

(declare-fun d!1232191 () Bool)

(declare-fun e!2589609 () Bool)

(assert (=> d!1232191 e!2589609))

(declare-fun res!1709266 () Bool)

(assert (=> d!1232191 (=> res!1709266 e!2589609)))

(declare-fun lt!1485351 () Bool)

(assert (=> d!1232191 (= res!1709266 (not lt!1485351))))

(assert (=> d!1232191 (= lt!1485351 e!2589611)))

(declare-fun res!1709264 () Bool)

(assert (=> d!1232191 (=> res!1709264 e!2589611)))

(assert (=> d!1232191 (= res!1709264 ((_ is Nil!45711) input!3342))))

(assert (=> d!1232191 (= (isPrefix!4437 input!3342 input!3342) lt!1485351)))

(declare-fun b!4171264 () Bool)

(assert (=> b!4171264 (= e!2589609 (>= (size!33554 input!3342) (size!33554 input!3342)))))

(declare-fun b!4171262 () Bool)

(declare-fun res!1709267 () Bool)

(assert (=> b!4171262 (=> (not res!1709267) (not e!2589610))))

(assert (=> b!4171262 (= res!1709267 (= (head!8856 input!3342) (head!8856 input!3342)))))

(assert (= (and d!1232191 (not res!1709264)) b!4171261))

(assert (= (and b!4171261 res!1709265) b!4171262))

(assert (= (and b!4171262 res!1709267) b!4171263))

(assert (= (and d!1232191 (not res!1709266)) b!4171264))

(assert (=> b!4171263 m!4761563))

(assert (=> b!4171263 m!4761563))

(assert (=> b!4171263 m!4761563))

(assert (=> b!4171263 m!4761563))

(declare-fun m!4761707 () Bool)

(assert (=> b!4171263 m!4761707))

(assert (=> b!4171264 m!4761567))

(assert (=> b!4171264 m!4761567))

(assert (=> b!4171262 m!4761571))

(assert (=> b!4171262 m!4761571))

(assert (=> b!4171022 d!1232191))

(declare-fun d!1232193 () Bool)

(declare-fun fromListB!2571 (List!45835) BalanceConc!27176)

(assert (=> d!1232193 (= (seqFromList!5605 p!2959) (fromListB!2571 p!2959))))

(declare-fun bs!596016 () Bool)

(assert (= bs!596016 d!1232193))

(declare-fun m!4761709 () Bool)

(assert (=> bs!596016 m!4761709))

(assert (=> b!4171022 d!1232193))

(declare-fun d!1232195 () Bool)

(assert (=> d!1232195 (isPrefix!4437 input!3342 input!3342)))

(declare-fun lt!1485354 () Unit!64779)

(declare-fun choose!25532 (List!45835 List!45835) Unit!64779)

(assert (=> d!1232195 (= lt!1485354 (choose!25532 input!3342 input!3342))))

(assert (=> d!1232195 (= (lemmaIsPrefixRefl!2866 input!3342 input!3342) lt!1485354)))

(declare-fun bs!596017 () Bool)

(assert (= bs!596017 d!1232195))

(assert (=> bs!596017 m!4761491))

(declare-fun m!4761715 () Bool)

(assert (=> bs!596017 m!4761715))

(assert (=> b!4171022 d!1232195))

(declare-fun b!4171294 () Bool)

(declare-fun e!2589631 () Bool)

(assert (=> b!4171294 (= e!2589631 true)))

(declare-fun d!1232197 () Bool)

(assert (=> d!1232197 e!2589631))

(assert (= d!1232197 b!4171294))

(declare-fun order!24107 () Int)

(declare-fun lambda!129241 () Int)

(declare-fun order!24105 () Int)

(declare-fun dynLambda!19597 (Int Int) Int)

(declare-fun dynLambda!19598 (Int Int) Int)

(assert (=> b!4171294 (< (dynLambda!19597 order!24105 (toValue!10260 (transformation!7580 r!4142))) (dynLambda!19598 order!24107 lambda!129241))))

(declare-fun order!24109 () Int)

(declare-fun dynLambda!19599 (Int Int) Int)

(assert (=> b!4171294 (< (dynLambda!19599 order!24109 (toChars!10119 (transformation!7580 r!4142))) (dynLambda!19598 order!24107 lambda!129241))))

(declare-fun list!16525 (BalanceConc!27176) List!45835)

(declare-fun dynLambda!19600 (Int TokenValue!7810) BalanceConc!27176)

(declare-fun dynLambda!19601 (Int BalanceConc!27176) TokenValue!7810)

(assert (=> d!1232197 (= (list!16525 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))) (list!16525 lt!1485297))))

(declare-fun lt!1485357 () Unit!64779)

(declare-fun ForallOf!1022 (Int BalanceConc!27176) Unit!64779)

(assert (=> d!1232197 (= lt!1485357 (ForallOf!1022 lambda!129241 lt!1485297))))

(assert (=> d!1232197 (= (lemmaSemiInverse!2346 (transformation!7580 r!4142) lt!1485297) lt!1485357)))

(declare-fun b_lambda!122515 () Bool)

(assert (=> (not b_lambda!122515) (not d!1232197)))

(declare-fun tb!249779 () Bool)

(declare-fun t!344398 () Bool)

(assert (=> (and b!4171015 (= (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toChars!10119 (transformation!7580 r!4142))) t!344398) tb!249779))

(declare-fun e!2589634 () Bool)

(declare-fun b!4171299 () Bool)

(declare-fun tp!1274448 () Bool)

(declare-fun inv!60242 (Conc!13791) Bool)

(assert (=> b!4171299 (= e!2589634 (and (inv!60242 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))) tp!1274448))))

(declare-fun result!304298 () Bool)

(declare-fun inv!60243 (BalanceConc!27176) Bool)

(assert (=> tb!249779 (= result!304298 (and (inv!60243 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))) e!2589634))))

(assert (= tb!249779 b!4171299))

(declare-fun m!4761717 () Bool)

(assert (=> b!4171299 m!4761717))

(declare-fun m!4761719 () Bool)

(assert (=> tb!249779 m!4761719))

(assert (=> d!1232197 t!344398))

(declare-fun b_and!325727 () Bool)

(assert (= b_and!325695 (and (=> t!344398 result!304298) b_and!325727)))

(declare-fun tb!249781 () Bool)

(declare-fun t!344400 () Bool)

(assert (=> (and b!4171017 (= (toChars!10119 (transformation!7580 rBis!167)) (toChars!10119 (transformation!7580 r!4142))) t!344400) tb!249781))

(declare-fun result!304302 () Bool)

(assert (= result!304302 result!304298))

(assert (=> d!1232197 t!344400))

(declare-fun b_and!325729 () Bool)

(assert (= b_and!325699 (and (=> t!344400 result!304302) b_and!325729)))

(declare-fun t!344402 () Bool)

(declare-fun tb!249783 () Bool)

(assert (=> (and b!4171028 (= (toChars!10119 (transformation!7580 r!4142)) (toChars!10119 (transformation!7580 r!4142))) t!344402) tb!249783))

(declare-fun result!304304 () Bool)

(assert (= result!304304 result!304298))

(assert (=> d!1232197 t!344402))

(declare-fun b_and!325731 () Bool)

(assert (= b_and!325703 (and (=> t!344402 result!304304) b_and!325731)))

(declare-fun b_lambda!122517 () Bool)

(assert (=> (not b_lambda!122517) (not d!1232197)))

(declare-fun tb!249785 () Bool)

(declare-fun t!344404 () Bool)

(assert (=> (and b!4171015 (= (toValue!10260 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 r!4142))) t!344404) tb!249785))

(declare-fun result!304306 () Bool)

(declare-fun inv!21 (TokenValue!7810) Bool)

(assert (=> tb!249785 (= result!304306 (inv!21 (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))

(declare-fun m!4761721 () Bool)

(assert (=> tb!249785 m!4761721))

(assert (=> d!1232197 t!344404))

(declare-fun b_and!325733 () Bool)

(assert (= b_and!325693 (and (=> t!344404 result!304306) b_and!325733)))

(declare-fun tb!249787 () Bool)

(declare-fun t!344406 () Bool)

(assert (=> (and b!4171017 (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 r!4142))) t!344406) tb!249787))

(declare-fun result!304310 () Bool)

(assert (= result!304310 result!304306))

(assert (=> d!1232197 t!344406))

(declare-fun b_and!325735 () Bool)

(assert (= b_and!325697 (and (=> t!344406 result!304310) b_and!325735)))

(declare-fun t!344408 () Bool)

(declare-fun tb!249789 () Bool)

(assert (=> (and b!4171028 (= (toValue!10260 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 r!4142))) t!344408) tb!249789))

(declare-fun result!304312 () Bool)

(assert (= result!304312 result!304306))

(assert (=> d!1232197 t!344408))

(declare-fun b_and!325737 () Bool)

(assert (= b_and!325701 (and (=> t!344408 result!304312) b_and!325737)))

(declare-fun m!4761723 () Bool)

(assert (=> d!1232197 m!4761723))

(declare-fun m!4761725 () Bool)

(assert (=> d!1232197 m!4761725))

(declare-fun m!4761727 () Bool)

(assert (=> d!1232197 m!4761727))

(assert (=> d!1232197 m!4761725))

(declare-fun m!4761729 () Bool)

(assert (=> d!1232197 m!4761729))

(assert (=> d!1232197 m!4761729))

(declare-fun m!4761731 () Bool)

(assert (=> d!1232197 m!4761731))

(assert (=> b!4171022 d!1232197))

(declare-fun d!1232199 () Bool)

(assert (=> d!1232199 (= (apply!10545 (transformation!7580 r!4142) lt!1485297) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))))

(declare-fun b_lambda!122519 () Bool)

(assert (=> (not b_lambda!122519) (not d!1232199)))

(assert (=> d!1232199 t!344404))

(declare-fun b_and!325739 () Bool)

(assert (= b_and!325733 (and (=> t!344404 result!304306) b_and!325739)))

(assert (=> d!1232199 t!344406))

(declare-fun b_and!325741 () Bool)

(assert (= b_and!325735 (and (=> t!344406 result!304310) b_and!325741)))

(assert (=> d!1232199 t!344408))

(declare-fun b_and!325743 () Bool)

(assert (= b_and!325737 (and (=> t!344408 result!304312) b_and!325743)))

(assert (=> d!1232199 m!4761725))

(assert (=> b!4171022 d!1232199))

(declare-fun d!1232201 () Bool)

(declare-fun e!2589649 () Bool)

(assert (=> d!1232201 e!2589649))

(declare-fun res!1709285 () Bool)

(assert (=> d!1232201 (=> res!1709285 e!2589649)))

(declare-fun lt!1485372 () Option!9776)

(declare-fun isEmpty!27044 (Option!9776) Bool)

(assert (=> d!1232201 (= res!1709285 (isEmpty!27044 lt!1485372))))

(declare-fun e!2589647 () Option!9776)

(assert (=> d!1232201 (= lt!1485372 e!2589647)))

(declare-fun c!712942 () Bool)

(declare-datatypes ((tuple2!43574 0))(
  ( (tuple2!43575 (_1!24921 List!45835) (_2!24921 List!45835)) )
))
(declare-fun lt!1485368 () tuple2!43574)

(declare-fun isEmpty!27045 (List!45835) Bool)

(assert (=> d!1232201 (= c!712942 (isEmpty!27045 (_1!24921 lt!1485368)))))

(declare-fun findLongestMatch!1484 (Regex!12485 List!45835) tuple2!43574)

(assert (=> d!1232201 (= lt!1485368 (findLongestMatch!1484 (regex!7580 r!4142) input!3342))))

(assert (=> d!1232201 (ruleValid!3298 thiss!25986 r!4142)))

(assert (=> d!1232201 (= (maxPrefixOneRule!3184 thiss!25986 r!4142 input!3342) lt!1485372)))

(declare-fun b!4171320 () Bool)

(declare-fun res!1709287 () Bool)

(declare-fun e!2589646 () Bool)

(assert (=> b!4171320 (=> (not res!1709287) (not e!2589646))))

(declare-fun get!14847 (Option!9776) tuple2!43570)

(assert (=> b!4171320 (= res!1709287 (= (value!236562 (_1!24919 (get!14847 lt!1485372))) (apply!10545 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))) (seqFromList!5605 (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372)))))))))

(declare-fun b!4171321 () Bool)

(declare-fun res!1709288 () Bool)

(assert (=> b!4171321 (=> (not res!1709288) (not e!2589646))))

(declare-fun charsOf!5033 (Token!13874) BalanceConc!27176)

(assert (=> b!4171321 (= res!1709288 (= (++!11670 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372)))) (_2!24919 (get!14847 lt!1485372))) input!3342))))

(declare-fun b!4171322 () Bool)

(declare-fun res!1709283 () Bool)

(assert (=> b!4171322 (=> (not res!1709283) (not e!2589646))))

(assert (=> b!4171322 (= res!1709283 (< (size!33554 (_2!24919 (get!14847 lt!1485372))) (size!33554 input!3342)))))

(declare-fun b!4171323 () Bool)

(declare-fun e!2589648 () Bool)

(declare-fun findLongestMatchInner!1571 (Regex!12485 List!45835 Int List!45835 List!45835 Int) tuple2!43574)

(assert (=> b!4171323 (= e!2589648 (matchR!6224 (regex!7580 r!4142) (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))))))

(declare-fun b!4171324 () Bool)

(assert (=> b!4171324 (= e!2589646 (= (size!33553 (_1!24919 (get!14847 lt!1485372))) (size!33554 (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372))))))))

(declare-fun b!4171325 () Bool)

(declare-fun res!1709284 () Bool)

(assert (=> b!4171325 (=> (not res!1709284) (not e!2589646))))

(assert (=> b!4171325 (= res!1709284 (= (rule!10626 (_1!24919 (get!14847 lt!1485372))) r!4142))))

(declare-fun b!4171326 () Bool)

(declare-fun size!33556 (BalanceConc!27176) Int)

(assert (=> b!4171326 (= e!2589647 (Some!9775 (tuple2!43571 (Token!13875 (apply!10545 (transformation!7580 r!4142) (seqFromList!5605 (_1!24921 lt!1485368))) r!4142 (size!33556 (seqFromList!5605 (_1!24921 lt!1485368))) (_1!24921 lt!1485368)) (_2!24921 lt!1485368))))))

(declare-fun lt!1485371 () Unit!64779)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1544 (Regex!12485 List!45835) Unit!64779)

(assert (=> b!4171326 (= lt!1485371 (longestMatchIsAcceptedByMatchOrIsEmpty!1544 (regex!7580 r!4142) input!3342))))

(declare-fun res!1709282 () Bool)

(assert (=> b!4171326 (= res!1709282 (isEmpty!27045 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))))))

(assert (=> b!4171326 (=> res!1709282 e!2589648)))

(assert (=> b!4171326 e!2589648))

(declare-fun lt!1485370 () Unit!64779)

(assert (=> b!4171326 (= lt!1485370 lt!1485371)))

(declare-fun lt!1485369 () Unit!64779)

(assert (=> b!4171326 (= lt!1485369 (lemmaSemiInverse!2346 (transformation!7580 r!4142) (seqFromList!5605 (_1!24921 lt!1485368))))))

(declare-fun b!4171327 () Bool)

(assert (=> b!4171327 (= e!2589647 None!9775)))

(declare-fun b!4171328 () Bool)

(assert (=> b!4171328 (= e!2589649 e!2589646)))

(declare-fun res!1709286 () Bool)

(assert (=> b!4171328 (=> (not res!1709286) (not e!2589646))))

(assert (=> b!4171328 (= res!1709286 (matchR!6224 (regex!7580 r!4142) (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))))))

(assert (= (and d!1232201 c!712942) b!4171327))

(assert (= (and d!1232201 (not c!712942)) b!4171326))

(assert (= (and b!4171326 (not res!1709282)) b!4171323))

(assert (= (and d!1232201 (not res!1709285)) b!4171328))

(assert (= (and b!4171328 res!1709286) b!4171321))

(assert (= (and b!4171321 res!1709288) b!4171322))

(assert (= (and b!4171322 res!1709283) b!4171325))

(assert (= (and b!4171325 res!1709284) b!4171320))

(assert (= (and b!4171320 res!1709287) b!4171324))

(declare-fun m!4761733 () Bool)

(assert (=> b!4171321 m!4761733))

(declare-fun m!4761735 () Bool)

(assert (=> b!4171321 m!4761735))

(assert (=> b!4171321 m!4761735))

(declare-fun m!4761737 () Bool)

(assert (=> b!4171321 m!4761737))

(assert (=> b!4171321 m!4761737))

(declare-fun m!4761739 () Bool)

(assert (=> b!4171321 m!4761739))

(assert (=> b!4171325 m!4761733))

(declare-fun m!4761741 () Bool)

(assert (=> b!4171323 m!4761741))

(assert (=> b!4171323 m!4761567))

(assert (=> b!4171323 m!4761741))

(assert (=> b!4171323 m!4761567))

(declare-fun m!4761743 () Bool)

(assert (=> b!4171323 m!4761743))

(declare-fun m!4761745 () Bool)

(assert (=> b!4171323 m!4761745))

(declare-fun m!4761747 () Bool)

(assert (=> d!1232201 m!4761747))

(declare-fun m!4761749 () Bool)

(assert (=> d!1232201 m!4761749))

(declare-fun m!4761751 () Bool)

(assert (=> d!1232201 m!4761751))

(assert (=> d!1232201 m!4761529))

(assert (=> b!4171322 m!4761733))

(declare-fun m!4761753 () Bool)

(assert (=> b!4171322 m!4761753))

(assert (=> b!4171322 m!4761567))

(assert (=> b!4171326 m!4761567))

(declare-fun m!4761755 () Bool)

(assert (=> b!4171326 m!4761755))

(assert (=> b!4171326 m!4761741))

(assert (=> b!4171326 m!4761567))

(assert (=> b!4171326 m!4761743))

(declare-fun m!4761757 () Bool)

(assert (=> b!4171326 m!4761757))

(declare-fun m!4761759 () Bool)

(assert (=> b!4171326 m!4761759))

(declare-fun m!4761761 () Bool)

(assert (=> b!4171326 m!4761761))

(assert (=> b!4171326 m!4761757))

(declare-fun m!4761763 () Bool)

(assert (=> b!4171326 m!4761763))

(assert (=> b!4171326 m!4761757))

(declare-fun m!4761765 () Bool)

(assert (=> b!4171326 m!4761765))

(assert (=> b!4171326 m!4761741))

(assert (=> b!4171326 m!4761757))

(assert (=> b!4171320 m!4761733))

(declare-fun m!4761767 () Bool)

(assert (=> b!4171320 m!4761767))

(assert (=> b!4171320 m!4761767))

(declare-fun m!4761769 () Bool)

(assert (=> b!4171320 m!4761769))

(assert (=> b!4171328 m!4761733))

(assert (=> b!4171328 m!4761735))

(assert (=> b!4171328 m!4761735))

(assert (=> b!4171328 m!4761737))

(assert (=> b!4171328 m!4761737))

(declare-fun m!4761771 () Bool)

(assert (=> b!4171328 m!4761771))

(assert (=> b!4171324 m!4761733))

(declare-fun m!4761773 () Bool)

(assert (=> b!4171324 m!4761773))

(assert (=> b!4171022 d!1232201))

(declare-fun d!1232203 () Bool)

(declare-fun lt!1485375 () Int)

(assert (=> d!1232203 (>= lt!1485375 0)))

(declare-fun e!2589652 () Int)

(assert (=> d!1232203 (= lt!1485375 e!2589652)))

(declare-fun c!712945 () Bool)

(assert (=> d!1232203 (= c!712945 ((_ is Nil!45711) p!2959))))

(assert (=> d!1232203 (= (size!33554 p!2959) lt!1485375)))

(declare-fun b!4171333 () Bool)

(assert (=> b!4171333 (= e!2589652 0)))

(declare-fun b!4171334 () Bool)

(assert (=> b!4171334 (= e!2589652 (+ 1 (size!33554 (t!344378 p!2959))))))

(assert (= (and d!1232203 c!712945) b!4171333))

(assert (= (and d!1232203 (not c!712945)) b!4171334))

(declare-fun m!4761775 () Bool)

(assert (=> b!4171334 m!4761775))

(assert (=> b!4171022 d!1232203))

(declare-fun d!1232205 () Bool)

(assert (=> d!1232205 (= (inv!60237 (tag!8444 rBis!167)) (= (mod (str.len (value!236561 (tag!8444 rBis!167))) 2) 0))))

(assert (=> b!4171033 d!1232205))

(declare-fun d!1232207 () Bool)

(declare-fun res!1709291 () Bool)

(declare-fun e!2589655 () Bool)

(assert (=> d!1232207 (=> (not res!1709291) (not e!2589655))))

(declare-fun semiInverseModEq!3288 (Int Int) Bool)

(assert (=> d!1232207 (= res!1709291 (semiInverseModEq!3288 (toChars!10119 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 rBis!167))))))

(assert (=> d!1232207 (= (inv!60239 (transformation!7580 rBis!167)) e!2589655)))

(declare-fun b!4171337 () Bool)

(declare-fun equivClasses!3187 (Int Int) Bool)

(assert (=> b!4171337 (= e!2589655 (equivClasses!3187 (toChars!10119 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 rBis!167))))))

(assert (= (and d!1232207 res!1709291) b!4171337))

(declare-fun m!4761777 () Bool)

(assert (=> d!1232207 m!4761777))

(declare-fun m!4761779 () Bool)

(assert (=> b!4171337 m!4761779))

(assert (=> b!4171033 d!1232207))

(declare-fun d!1232209 () Bool)

(assert (=> d!1232209 (= (inv!60237 (tag!8444 r!4142)) (= (mod (str.len (value!236561 (tag!8444 r!4142))) 2) 0))))

(assert (=> b!4171034 d!1232209))

(declare-fun d!1232211 () Bool)

(declare-fun res!1709292 () Bool)

(declare-fun e!2589656 () Bool)

(assert (=> d!1232211 (=> (not res!1709292) (not e!2589656))))

(assert (=> d!1232211 (= res!1709292 (semiInverseModEq!3288 (toChars!10119 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 r!4142))))))

(assert (=> d!1232211 (= (inv!60239 (transformation!7580 r!4142)) e!2589656)))

(declare-fun b!4171338 () Bool)

(assert (=> b!4171338 (= e!2589656 (equivClasses!3187 (toChars!10119 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 r!4142))))))

(assert (= (and d!1232211 res!1709292) b!4171338))

(declare-fun m!4761781 () Bool)

(assert (=> d!1232211 m!4761781))

(declare-fun m!4761783 () Bool)

(assert (=> b!4171338 m!4761783))

(assert (=> b!4171034 d!1232211))

(declare-fun d!1232213 () Bool)

(declare-fun lt!1485378 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7104 (List!45837) (InoxSet Rule!14960))

(assert (=> d!1232213 (= lt!1485378 (select (content!7104 rules!3843) rBis!167))))

(declare-fun e!2589662 () Bool)

(assert (=> d!1232213 (= lt!1485378 e!2589662)))

(declare-fun res!1709298 () Bool)

(assert (=> d!1232213 (=> (not res!1709298) (not e!2589662))))

(assert (=> d!1232213 (= res!1709298 ((_ is Cons!45713) rules!3843))))

(assert (=> d!1232213 (= (contains!9381 rules!3843 rBis!167) lt!1485378)))

(declare-fun b!4171343 () Bool)

(declare-fun e!2589661 () Bool)

(assert (=> b!4171343 (= e!2589662 e!2589661)))

(declare-fun res!1709297 () Bool)

(assert (=> b!4171343 (=> res!1709297 e!2589661)))

(assert (=> b!4171343 (= res!1709297 (= (h!51133 rules!3843) rBis!167))))

(declare-fun b!4171344 () Bool)

(assert (=> b!4171344 (= e!2589661 (contains!9381 (t!344380 rules!3843) rBis!167))))

(assert (= (and d!1232213 res!1709298) b!4171343))

(assert (= (and b!4171343 (not res!1709297)) b!4171344))

(declare-fun m!4761785 () Bool)

(assert (=> d!1232213 m!4761785))

(declare-fun m!4761787 () Bool)

(assert (=> d!1232213 m!4761787))

(declare-fun m!4761789 () Bool)

(assert (=> b!4171344 m!4761789))

(assert (=> b!4171024 d!1232213))

(declare-fun b!4171345 () Bool)

(declare-fun e!2589665 () Bool)

(declare-fun e!2589664 () Bool)

(assert (=> b!4171345 (= e!2589665 e!2589664)))

(declare-fun res!1709300 () Bool)

(assert (=> b!4171345 (=> (not res!1709300) (not e!2589664))))

(assert (=> b!4171345 (= res!1709300 (not ((_ is Nil!45711) input!3342)))))

(declare-fun b!4171347 () Bool)

(assert (=> b!4171347 (= e!2589664 (isPrefix!4437 (tail!6703 p!2959) (tail!6703 input!3342)))))

(declare-fun d!1232215 () Bool)

(declare-fun e!2589663 () Bool)

(assert (=> d!1232215 e!2589663))

(declare-fun res!1709301 () Bool)

(assert (=> d!1232215 (=> res!1709301 e!2589663)))

(declare-fun lt!1485379 () Bool)

(assert (=> d!1232215 (= res!1709301 (not lt!1485379))))

(assert (=> d!1232215 (= lt!1485379 e!2589665)))

(declare-fun res!1709299 () Bool)

(assert (=> d!1232215 (=> res!1709299 e!2589665)))

(assert (=> d!1232215 (= res!1709299 ((_ is Nil!45711) p!2959))))

(assert (=> d!1232215 (= (isPrefix!4437 p!2959 input!3342) lt!1485379)))

(declare-fun b!4171348 () Bool)

(assert (=> b!4171348 (= e!2589663 (>= (size!33554 input!3342) (size!33554 p!2959)))))

(declare-fun b!4171346 () Bool)

(declare-fun res!1709302 () Bool)

(assert (=> b!4171346 (=> (not res!1709302) (not e!2589664))))

(assert (=> b!4171346 (= res!1709302 (= (head!8856 p!2959) (head!8856 input!3342)))))

(assert (= (and d!1232215 (not res!1709299)) b!4171345))

(assert (= (and b!4171345 res!1709300) b!4171346))

(assert (= (and b!4171346 res!1709302) b!4171347))

(assert (= (and d!1232215 (not res!1709301)) b!4171348))

(declare-fun m!4761791 () Bool)

(assert (=> b!4171347 m!4761791))

(assert (=> b!4171347 m!4761563))

(assert (=> b!4171347 m!4761791))

(assert (=> b!4171347 m!4761563))

(declare-fun m!4761793 () Bool)

(assert (=> b!4171347 m!4761793))

(assert (=> b!4171348 m!4761567))

(assert (=> b!4171348 m!4761499))

(declare-fun m!4761795 () Bool)

(assert (=> b!4171346 m!4761795))

(assert (=> b!4171346 m!4761571))

(assert (=> b!4171014 d!1232215))

(declare-fun b!4171377 () Bool)

(declare-fun e!2589686 () Bool)

(declare-fun derivativeStep!3769 (Regex!12485 C!25160) Regex!12485)

(assert (=> b!4171377 (= e!2589686 (matchR!6224 (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959)) (tail!6703 p!2959)))))

(declare-fun b!4171378 () Bool)

(declare-fun e!2589684 () Bool)

(declare-fun lt!1485382 () Bool)

(declare-fun call!291229 () Bool)

(assert (=> b!4171378 (= e!2589684 (= lt!1485382 call!291229))))

(declare-fun b!4171379 () Bool)

(declare-fun res!1709321 () Bool)

(declare-fun e!2589681 () Bool)

(assert (=> b!4171379 (=> res!1709321 e!2589681)))

(assert (=> b!4171379 (= res!1709321 (not (isEmpty!27045 (tail!6703 p!2959))))))

(declare-fun b!4171380 () Bool)

(declare-fun e!2589682 () Bool)

(assert (=> b!4171380 (= e!2589682 (= (head!8856 p!2959) (c!712909 (regex!7580 r!4142))))))

(declare-fun b!4171381 () Bool)

(declare-fun e!2589680 () Bool)

(assert (=> b!4171381 (= e!2589680 (not lt!1485382))))

(declare-fun b!4171382 () Bool)

(assert (=> b!4171382 (= e!2589686 (nullable!4379 (regex!7580 r!4142)))))

(declare-fun b!4171383 () Bool)

(declare-fun res!1709319 () Bool)

(declare-fun e!2589685 () Bool)

(assert (=> b!4171383 (=> res!1709319 e!2589685)))

(assert (=> b!4171383 (= res!1709319 e!2589682)))

(declare-fun res!1709326 () Bool)

(assert (=> b!4171383 (=> (not res!1709326) (not e!2589682))))

(assert (=> b!4171383 (= res!1709326 lt!1485382)))

(declare-fun d!1232217 () Bool)

(assert (=> d!1232217 e!2589684))

(declare-fun c!712952 () Bool)

(assert (=> d!1232217 (= c!712952 ((_ is EmptyExpr!12485) (regex!7580 r!4142)))))

(assert (=> d!1232217 (= lt!1485382 e!2589686)))

(declare-fun c!712953 () Bool)

(assert (=> d!1232217 (= c!712953 (isEmpty!27045 p!2959))))

(assert (=> d!1232217 (validRegex!5602 (regex!7580 r!4142))))

(assert (=> d!1232217 (= (matchR!6224 (regex!7580 r!4142) p!2959) lt!1485382)))

(declare-fun b!4171384 () Bool)

(declare-fun res!1709324 () Bool)

(assert (=> b!4171384 (=> (not res!1709324) (not e!2589682))))

(assert (=> b!4171384 (= res!1709324 (not call!291229))))

(declare-fun bm!291224 () Bool)

(assert (=> bm!291224 (= call!291229 (isEmpty!27045 p!2959))))

(declare-fun b!4171385 () Bool)

(declare-fun e!2589683 () Bool)

(assert (=> b!4171385 (= e!2589685 e!2589683)))

(declare-fun res!1709320 () Bool)

(assert (=> b!4171385 (=> (not res!1709320) (not e!2589683))))

(assert (=> b!4171385 (= res!1709320 (not lt!1485382))))

(declare-fun b!4171386 () Bool)

(declare-fun res!1709322 () Bool)

(assert (=> b!4171386 (=> res!1709322 e!2589685)))

(assert (=> b!4171386 (= res!1709322 (not ((_ is ElementMatch!12485) (regex!7580 r!4142))))))

(assert (=> b!4171386 (= e!2589680 e!2589685)))

(declare-fun b!4171387 () Bool)

(assert (=> b!4171387 (= e!2589681 (not (= (head!8856 p!2959) (c!712909 (regex!7580 r!4142)))))))

(declare-fun b!4171388 () Bool)

(assert (=> b!4171388 (= e!2589683 e!2589681)))

(declare-fun res!1709323 () Bool)

(assert (=> b!4171388 (=> res!1709323 e!2589681)))

(assert (=> b!4171388 (= res!1709323 call!291229)))

(declare-fun b!4171389 () Bool)

(declare-fun res!1709325 () Bool)

(assert (=> b!4171389 (=> (not res!1709325) (not e!2589682))))

(assert (=> b!4171389 (= res!1709325 (isEmpty!27045 (tail!6703 p!2959)))))

(declare-fun b!4171390 () Bool)

(assert (=> b!4171390 (= e!2589684 e!2589680)))

(declare-fun c!712954 () Bool)

(assert (=> b!4171390 (= c!712954 ((_ is EmptyLang!12485) (regex!7580 r!4142)))))

(assert (= (and d!1232217 c!712953) b!4171382))

(assert (= (and d!1232217 (not c!712953)) b!4171377))

(assert (= (and d!1232217 c!712952) b!4171378))

(assert (= (and d!1232217 (not c!712952)) b!4171390))

(assert (= (and b!4171390 c!712954) b!4171381))

(assert (= (and b!4171390 (not c!712954)) b!4171386))

(assert (= (and b!4171386 (not res!1709322)) b!4171383))

(assert (= (and b!4171383 res!1709326) b!4171384))

(assert (= (and b!4171384 res!1709324) b!4171389))

(assert (= (and b!4171389 res!1709325) b!4171380))

(assert (= (and b!4171383 (not res!1709319)) b!4171385))

(assert (= (and b!4171385 res!1709320) b!4171388))

(assert (= (and b!4171388 (not res!1709323)) b!4171379))

(assert (= (and b!4171379 (not res!1709321)) b!4171387))

(assert (= (or b!4171378 b!4171384 b!4171388) bm!291224))

(assert (=> b!4171380 m!4761795))

(assert (=> b!4171377 m!4761795))

(assert (=> b!4171377 m!4761795))

(declare-fun m!4761797 () Bool)

(assert (=> b!4171377 m!4761797))

(assert (=> b!4171377 m!4761791))

(assert (=> b!4171377 m!4761797))

(assert (=> b!4171377 m!4761791))

(declare-fun m!4761799 () Bool)

(assert (=> b!4171377 m!4761799))

(assert (=> b!4171389 m!4761791))

(assert (=> b!4171389 m!4761791))

(declare-fun m!4761801 () Bool)

(assert (=> b!4171389 m!4761801))

(assert (=> b!4171387 m!4761795))

(declare-fun m!4761803 () Bool)

(assert (=> d!1232217 m!4761803))

(assert (=> d!1232217 m!4761485))

(declare-fun m!4761805 () Bool)

(assert (=> b!4171382 m!4761805))

(assert (=> b!4171379 m!4761791))

(assert (=> b!4171379 m!4761791))

(assert (=> b!4171379 m!4761801))

(assert (=> bm!291224 m!4761803))

(assert (=> b!4171035 d!1232217))

(declare-fun d!1232219 () Bool)

(declare-fun lt!1485383 () Int)

(assert (=> d!1232219 (>= lt!1485383 0)))

(declare-fun e!2589687 () Int)

(assert (=> d!1232219 (= lt!1485383 e!2589687)))

(declare-fun c!712955 () Bool)

(assert (=> d!1232219 (= c!712955 ((_ is Nil!45711) pBis!107))))

(assert (=> d!1232219 (= (size!33554 pBis!107) lt!1485383)))

(declare-fun b!4171391 () Bool)

(assert (=> b!4171391 (= e!2589687 0)))

(declare-fun b!4171392 () Bool)

(assert (=> b!4171392 (= e!2589687 (+ 1 (size!33554 (t!344378 pBis!107))))))

(assert (= (and d!1232219 c!712955) b!4171391))

(assert (= (and d!1232219 (not c!712955)) b!4171392))

(declare-fun m!4761807 () Bool)

(assert (=> b!4171392 m!4761807))

(assert (=> b!4171036 d!1232219))

(declare-fun d!1232221 () Bool)

(assert (=> d!1232221 (= (inv!60237 (tag!8444 (h!51133 rules!3843))) (= (mod (str.len (value!236561 (tag!8444 (h!51133 rules!3843)))) 2) 0))))

(assert (=> b!4171025 d!1232221))

(declare-fun d!1232223 () Bool)

(declare-fun res!1709327 () Bool)

(declare-fun e!2589688 () Bool)

(assert (=> d!1232223 (=> (not res!1709327) (not e!2589688))))

(assert (=> d!1232223 (= res!1709327 (semiInverseModEq!3288 (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 (h!51133 rules!3843)))))))

(assert (=> d!1232223 (= (inv!60239 (transformation!7580 (h!51133 rules!3843))) e!2589688)))

(declare-fun b!4171393 () Bool)

(assert (=> b!4171393 (= e!2589688 (equivClasses!3187 (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 (h!51133 rules!3843)))))))

(assert (= (and d!1232223 res!1709327) b!4171393))

(declare-fun m!4761809 () Bool)

(assert (=> d!1232223 m!4761809))

(declare-fun m!4761811 () Bool)

(assert (=> b!4171393 m!4761811))

(assert (=> b!4171025 d!1232223))

(declare-fun d!1232225 () Bool)

(declare-fun res!1709328 () Bool)

(declare-fun e!2589689 () Bool)

(assert (=> d!1232225 (=> (not res!1709328) (not e!2589689))))

(assert (=> d!1232225 (= res!1709328 (validRegex!5602 (regex!7580 r!4142)))))

(assert (=> d!1232225 (= (ruleValid!3298 thiss!25986 r!4142) e!2589689)))

(declare-fun b!4171394 () Bool)

(declare-fun res!1709329 () Bool)

(assert (=> b!4171394 (=> (not res!1709329) (not e!2589689))))

(assert (=> b!4171394 (= res!1709329 (not (nullable!4379 (regex!7580 r!4142))))))

(declare-fun b!4171395 () Bool)

(assert (=> b!4171395 (= e!2589689 (not (= (tag!8444 r!4142) (String!52917 ""))))))

(assert (= (and d!1232225 res!1709328) b!4171394))

(assert (= (and b!4171394 res!1709329) b!4171395))

(assert (=> d!1232225 m!4761485))

(assert (=> b!4171394 m!4761805))

(assert (=> b!4171026 d!1232225))

(declare-fun d!1232227 () Bool)

(declare-fun lt!1485384 () Bool)

(assert (=> d!1232227 (= lt!1485384 (select (content!7104 rules!3843) r!4142))))

(declare-fun e!2589691 () Bool)

(assert (=> d!1232227 (= lt!1485384 e!2589691)))

(declare-fun res!1709331 () Bool)

(assert (=> d!1232227 (=> (not res!1709331) (not e!2589691))))

(assert (=> d!1232227 (= res!1709331 ((_ is Cons!45713) rules!3843))))

(assert (=> d!1232227 (= (contains!9381 rules!3843 r!4142) lt!1485384)))

(declare-fun b!4171396 () Bool)

(declare-fun e!2589690 () Bool)

(assert (=> b!4171396 (= e!2589691 e!2589690)))

(declare-fun res!1709330 () Bool)

(assert (=> b!4171396 (=> res!1709330 e!2589690)))

(assert (=> b!4171396 (= res!1709330 (= (h!51133 rules!3843) r!4142))))

(declare-fun b!4171397 () Bool)

(assert (=> b!4171397 (= e!2589690 (contains!9381 (t!344380 rules!3843) r!4142))))

(assert (= (and d!1232227 res!1709331) b!4171396))

(assert (= (and b!4171396 (not res!1709330)) b!4171397))

(assert (=> d!1232227 m!4761785))

(declare-fun m!4761813 () Bool)

(assert (=> d!1232227 m!4761813))

(declare-fun m!4761815 () Bool)

(assert (=> b!4171397 m!4761815))

(assert (=> b!4171027 d!1232227))

(declare-fun d!1232229 () Bool)

(assert (=> d!1232229 (= (isEmpty!27041 rules!3843) ((_ is Nil!45713) rules!3843))))

(assert (=> b!4171018 d!1232229))

(declare-fun b!4171416 () Bool)

(declare-fun res!1709343 () Bool)

(declare-fun e!2589708 () Bool)

(assert (=> b!4171416 (=> (not res!1709343) (not e!2589708))))

(declare-fun call!291236 () Bool)

(assert (=> b!4171416 (= res!1709343 call!291236)))

(declare-fun e!2589711 () Bool)

(assert (=> b!4171416 (= e!2589711 e!2589708)))

(declare-fun b!4171417 () Bool)

(declare-fun res!1709342 () Bool)

(declare-fun e!2589707 () Bool)

(assert (=> b!4171417 (=> res!1709342 e!2589707)))

(assert (=> b!4171417 (= res!1709342 (not ((_ is Concat!20296) (regex!7580 r!4142))))))

(assert (=> b!4171417 (= e!2589711 e!2589707)))

(declare-fun b!4171418 () Bool)

(declare-fun e!2589712 () Bool)

(declare-fun e!2589706 () Bool)

(assert (=> b!4171418 (= e!2589712 e!2589706)))

(declare-fun c!712961 () Bool)

(assert (=> b!4171418 (= c!712961 ((_ is Star!12485) (regex!7580 r!4142)))))

(declare-fun bm!291231 () Bool)

(declare-fun call!291238 () Bool)

(declare-fun c!712960 () Bool)

(assert (=> bm!291231 (= call!291238 (validRegex!5602 (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))))))

(declare-fun b!4171419 () Bool)

(declare-fun e!2589710 () Bool)

(assert (=> b!4171419 (= e!2589710 call!291238)))

(declare-fun b!4171420 () Bool)

(assert (=> b!4171420 (= e!2589706 e!2589711)))

(assert (=> b!4171420 (= c!712960 ((_ is Union!12485) (regex!7580 r!4142)))))

(declare-fun b!4171421 () Bool)

(declare-fun call!291237 () Bool)

(assert (=> b!4171421 (= e!2589708 call!291237)))

(declare-fun b!4171423 () Bool)

(declare-fun e!2589709 () Bool)

(assert (=> b!4171423 (= e!2589709 call!291237)))

(declare-fun bm!291232 () Bool)

(assert (=> bm!291232 (= call!291236 call!291238)))

(declare-fun d!1232231 () Bool)

(declare-fun res!1709345 () Bool)

(assert (=> d!1232231 (=> res!1709345 e!2589712)))

(assert (=> d!1232231 (= res!1709345 ((_ is ElementMatch!12485) (regex!7580 r!4142)))))

(assert (=> d!1232231 (= (validRegex!5602 (regex!7580 r!4142)) e!2589712)))

(declare-fun b!4171422 () Bool)

(assert (=> b!4171422 (= e!2589706 e!2589710)))

(declare-fun res!1709346 () Bool)

(assert (=> b!4171422 (= res!1709346 (not (nullable!4379 (reg!12814 (regex!7580 r!4142)))))))

(assert (=> b!4171422 (=> (not res!1709346) (not e!2589710))))

(declare-fun bm!291233 () Bool)

(assert (=> bm!291233 (= call!291237 (validRegex!5602 (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))))))

(declare-fun b!4171424 () Bool)

(assert (=> b!4171424 (= e!2589707 e!2589709)))

(declare-fun res!1709344 () Bool)

(assert (=> b!4171424 (=> (not res!1709344) (not e!2589709))))

(assert (=> b!4171424 (= res!1709344 call!291236)))

(assert (= (and d!1232231 (not res!1709345)) b!4171418))

(assert (= (and b!4171418 c!712961) b!4171422))

(assert (= (and b!4171418 (not c!712961)) b!4171420))

(assert (= (and b!4171422 res!1709346) b!4171419))

(assert (= (and b!4171420 c!712960) b!4171416))

(assert (= (and b!4171420 (not c!712960)) b!4171417))

(assert (= (and b!4171416 res!1709343) b!4171421))

(assert (= (and b!4171417 (not res!1709342)) b!4171424))

(assert (= (and b!4171424 res!1709344) b!4171423))

(assert (= (or b!4171421 b!4171423) bm!291233))

(assert (= (or b!4171416 b!4171424) bm!291232))

(assert (= (or b!4171419 bm!291232) bm!291231))

(declare-fun m!4761817 () Bool)

(assert (=> bm!291231 m!4761817))

(declare-fun m!4761819 () Bool)

(assert (=> b!4171422 m!4761819))

(declare-fun m!4761821 () Bool)

(assert (=> bm!291233 m!4761821))

(assert (=> b!4171029 d!1232231))

(declare-fun b!4171435 () Bool)

(declare-fun e!2589715 () Bool)

(assert (=> b!4171435 (= e!2589715 tp_is_empty!21933)))

(declare-fun b!4171437 () Bool)

(declare-fun tp!1274459 () Bool)

(assert (=> b!4171437 (= e!2589715 tp!1274459)))

(declare-fun b!4171438 () Bool)

(declare-fun tp!1274463 () Bool)

(declare-fun tp!1274461 () Bool)

(assert (=> b!4171438 (= e!2589715 (and tp!1274463 tp!1274461))))

(assert (=> b!4171025 (= tp!1274400 e!2589715)))

(declare-fun b!4171436 () Bool)

(declare-fun tp!1274460 () Bool)

(declare-fun tp!1274462 () Bool)

(assert (=> b!4171436 (= e!2589715 (and tp!1274460 tp!1274462))))

(assert (= (and b!4171025 ((_ is ElementMatch!12485) (regex!7580 (h!51133 rules!3843)))) b!4171435))

(assert (= (and b!4171025 ((_ is Concat!20296) (regex!7580 (h!51133 rules!3843)))) b!4171436))

(assert (= (and b!4171025 ((_ is Star!12485) (regex!7580 (h!51133 rules!3843)))) b!4171437))

(assert (= (and b!4171025 ((_ is Union!12485) (regex!7580 (h!51133 rules!3843)))) b!4171438))

(declare-fun b!4171449 () Bool)

(declare-fun b_free!120743 () Bool)

(declare-fun b_next!121447 () Bool)

(assert (=> b!4171449 (= b_free!120743 (not b_next!121447))))

(declare-fun tb!249791 () Bool)

(declare-fun t!344410 () Bool)

(assert (=> (and b!4171449 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toValue!10260 (transformation!7580 r!4142))) t!344410) tb!249791))

(declare-fun result!304318 () Bool)

(assert (= result!304318 result!304306))

(assert (=> d!1232197 t!344410))

(assert (=> d!1232199 t!344410))

(declare-fun tp!1274473 () Bool)

(declare-fun b_and!325745 () Bool)

(assert (=> b!4171449 (= tp!1274473 (and (=> t!344410 result!304318) b_and!325745))))

(declare-fun b_free!120745 () Bool)

(declare-fun b_next!121449 () Bool)

(assert (=> b!4171449 (= b_free!120745 (not b_next!121449))))

(declare-fun tb!249793 () Bool)

(declare-fun t!344412 () Bool)

(assert (=> (and b!4171449 (= (toChars!10119 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toChars!10119 (transformation!7580 r!4142))) t!344412) tb!249793))

(declare-fun result!304320 () Bool)

(assert (= result!304320 result!304298))

(assert (=> d!1232197 t!344412))

(declare-fun b_and!325747 () Bool)

(declare-fun tp!1274472 () Bool)

(assert (=> b!4171449 (= tp!1274472 (and (=> t!344412 result!304320) b_and!325747))))

(declare-fun e!2589725 () Bool)

(assert (=> b!4171449 (= e!2589725 (and tp!1274473 tp!1274472))))

(declare-fun b!4171448 () Bool)

(declare-fun e!2589727 () Bool)

(declare-fun tp!1274475 () Bool)

(assert (=> b!4171448 (= e!2589727 (and tp!1274475 (inv!60237 (tag!8444 (h!51133 (t!344380 rules!3843)))) (inv!60239 (transformation!7580 (h!51133 (t!344380 rules!3843)))) e!2589725))))

(declare-fun b!4171447 () Bool)

(declare-fun e!2589724 () Bool)

(declare-fun tp!1274474 () Bool)

(assert (=> b!4171447 (= e!2589724 (and e!2589727 tp!1274474))))

(assert (=> b!4171016 (= tp!1274388 e!2589724)))

(assert (= b!4171448 b!4171449))

(assert (= b!4171447 b!4171448))

(assert (= (and b!4171016 ((_ is Cons!45713) (t!344380 rules!3843))) b!4171447))

(declare-fun m!4761823 () Bool)

(assert (=> b!4171448 m!4761823))

(declare-fun m!4761825 () Bool)

(assert (=> b!4171448 m!4761825))

(declare-fun b!4171450 () Bool)

(declare-fun e!2589728 () Bool)

(assert (=> b!4171450 (= e!2589728 tp_is_empty!21933)))

(declare-fun b!4171452 () Bool)

(declare-fun tp!1274476 () Bool)

(assert (=> b!4171452 (= e!2589728 tp!1274476)))

(declare-fun b!4171453 () Bool)

(declare-fun tp!1274480 () Bool)

(declare-fun tp!1274478 () Bool)

(assert (=> b!4171453 (= e!2589728 (and tp!1274480 tp!1274478))))

(assert (=> b!4171033 (= tp!1274393 e!2589728)))

(declare-fun b!4171451 () Bool)

(declare-fun tp!1274477 () Bool)

(declare-fun tp!1274479 () Bool)

(assert (=> b!4171451 (= e!2589728 (and tp!1274477 tp!1274479))))

(assert (= (and b!4171033 ((_ is ElementMatch!12485) (regex!7580 rBis!167))) b!4171450))

(assert (= (and b!4171033 ((_ is Concat!20296) (regex!7580 rBis!167))) b!4171451))

(assert (= (and b!4171033 ((_ is Star!12485) (regex!7580 rBis!167))) b!4171452))

(assert (= (and b!4171033 ((_ is Union!12485) (regex!7580 rBis!167))) b!4171453))

(declare-fun b!4171454 () Bool)

(declare-fun e!2589729 () Bool)

(assert (=> b!4171454 (= e!2589729 tp_is_empty!21933)))

(declare-fun b!4171456 () Bool)

(declare-fun tp!1274481 () Bool)

(assert (=> b!4171456 (= e!2589729 tp!1274481)))

(declare-fun b!4171457 () Bool)

(declare-fun tp!1274485 () Bool)

(declare-fun tp!1274483 () Bool)

(assert (=> b!4171457 (= e!2589729 (and tp!1274485 tp!1274483))))

(assert (=> b!4171034 (= tp!1274391 e!2589729)))

(declare-fun b!4171455 () Bool)

(declare-fun tp!1274482 () Bool)

(declare-fun tp!1274484 () Bool)

(assert (=> b!4171455 (= e!2589729 (and tp!1274482 tp!1274484))))

(assert (= (and b!4171034 ((_ is ElementMatch!12485) (regex!7580 r!4142))) b!4171454))

(assert (= (and b!4171034 ((_ is Concat!20296) (regex!7580 r!4142))) b!4171455))

(assert (= (and b!4171034 ((_ is Star!12485) (regex!7580 r!4142))) b!4171456))

(assert (= (and b!4171034 ((_ is Union!12485) (regex!7580 r!4142))) b!4171457))

(declare-fun b!4171462 () Bool)

(declare-fun e!2589732 () Bool)

(declare-fun tp!1274488 () Bool)

(assert (=> b!4171462 (= e!2589732 (and tp_is_empty!21933 tp!1274488))))

(assert (=> b!4171023 (= tp!1274396 e!2589732)))

(assert (= (and b!4171023 ((_ is Cons!45711) (t!344378 input!3342))) b!4171462))

(declare-fun b!4171463 () Bool)

(declare-fun e!2589733 () Bool)

(declare-fun tp!1274489 () Bool)

(assert (=> b!4171463 (= e!2589733 (and tp_is_empty!21933 tp!1274489))))

(assert (=> b!4171030 (= tp!1274399 e!2589733)))

(assert (= (and b!4171030 ((_ is Cons!45711) (t!344378 p!2959))) b!4171463))

(declare-fun b!4171464 () Bool)

(declare-fun e!2589734 () Bool)

(declare-fun tp!1274490 () Bool)

(assert (=> b!4171464 (= e!2589734 (and tp_is_empty!21933 tp!1274490))))

(assert (=> b!4171019 (= tp!1274390 e!2589734)))

(assert (= (and b!4171019 ((_ is Cons!45711) (t!344378 pBis!107))) b!4171464))

(declare-fun b_lambda!122521 () Bool)

(assert (= b_lambda!122519 (or (and b!4171015 b_free!120727 (= (toValue!10260 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171017 b_free!120731 (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171028 b_free!120735) (and b!4171449 b_free!120743 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toValue!10260 (transformation!7580 r!4142)))) b_lambda!122521)))

(declare-fun b_lambda!122523 () Bool)

(assert (= b_lambda!122515 (or (and b!4171015 b_free!120729 (= (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toChars!10119 (transformation!7580 r!4142)))) (and b!4171017 b_free!120733 (= (toChars!10119 (transformation!7580 rBis!167)) (toChars!10119 (transformation!7580 r!4142)))) (and b!4171028 b_free!120737) (and b!4171449 b_free!120745 (= (toChars!10119 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toChars!10119 (transformation!7580 r!4142)))) b_lambda!122523)))

(declare-fun b_lambda!122525 () Bool)

(assert (= b_lambda!122517 (or (and b!4171015 b_free!120727 (= (toValue!10260 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171017 b_free!120731 (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171028 b_free!120735) (and b!4171449 b_free!120743 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toValue!10260 (transformation!7580 r!4142)))) b_lambda!122525)))

(check-sat (not b_lambda!122525) (not b!4171263) (not b!4171380) b_and!325739 (not b!4171334) (not b!4171320) (not bm!291233) (not d!1232213) (not b!4171077) (not b!4171324) (not b!4171457) (not d!1232197) (not b!4171453) (not b!4171393) (not b!4171377) (not b!4171323) b_and!325727 (not b!4171299) (not b!4171394) (not bm!291231) (not b!4171328) (not b!4171338) (not b!4171387) (not b!4171262) (not b!4171220) (not b_lambda!122523) (not b!4171325) (not b!4171264) (not b!4171463) (not b!4171448) (not b!4171326) (not b!4171079) (not b!4171389) (not tb!249779) (not b!4171348) (not b!4171382) (not b!4171078) (not b!4171221) (not d!1232211) (not b!4171422) (not b!4171455) (not b!4171437) (not d!1232179) (not b!4171392) (not b!4171462) (not b!4171447) (not tb!249785) (not b_next!121447) (not d!1232193) (not b!4171451) b_and!325747 (not d!1232223) (not d!1232185) b_and!325743 (not bm!291224) (not b!4171379) (not d!1232225) (not b!4171438) b_and!325741 (not b!4171248) (not d!1232195) (not b!4171337) (not b!4171347) (not b_next!121431) tp_is_empty!21933 (not b_next!121435) (not b!4171397) (not d!1232217) (not b_next!121433) (not b!4171456) (not d!1232201) (not b_next!121449) (not b!4171464) (not b!4171062) (not b_next!121439) b_and!325731 (not d!1232143) (not b_lambda!122521) (not b!4171322) (not d!1232227) (not b_next!121437) (not b!4171232) (not b!4171344) (not b!4171346) (not b!4171321) b_and!325745 (not d!1232135) (not b!4171452) (not b!4171436) (not b_next!121441) b_and!325729 (not d!1232207))
(check-sat b_and!325727 b_and!325739 (not b_next!121447) b_and!325747 b_and!325743 b_and!325741 (not b_next!121431) (not b_next!121435) (not b_next!121433) b_and!325731 (not b_next!121437) b_and!325745 (not b_next!121449) (not b_next!121439) (not b_next!121441) b_and!325729)
(get-model)

(declare-fun b!4171542 () Bool)

(declare-fun res!1709394 () Bool)

(declare-fun e!2589788 () Bool)

(assert (=> b!4171542 (=> (not res!1709394) (not e!2589788))))

(declare-fun lt!1485400 () List!45835)

(assert (=> b!4171542 (= res!1709394 (= (size!33554 lt!1485400) (+ (size!33554 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))) (size!33554 (_2!24919 (get!14847 lt!1485372))))))))

(declare-fun b!4171541 () Bool)

(declare-fun e!2589787 () List!45835)

(assert (=> b!4171541 (= e!2589787 (Cons!45711 (h!51131 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))) (++!11670 (t!344378 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))) (_2!24919 (get!14847 lt!1485372)))))))

(declare-fun b!4171540 () Bool)

(assert (=> b!4171540 (= e!2589787 (_2!24919 (get!14847 lt!1485372)))))

(declare-fun b!4171543 () Bool)

(assert (=> b!4171543 (= e!2589788 (or (not (= (_2!24919 (get!14847 lt!1485372)) Nil!45711)) (= lt!1485400 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372)))))))))

(declare-fun d!1232287 () Bool)

(assert (=> d!1232287 e!2589788))

(declare-fun res!1709395 () Bool)

(assert (=> d!1232287 (=> (not res!1709395) (not e!2589788))))

(declare-fun content!7105 (List!45835) (InoxSet C!25160))

(assert (=> d!1232287 (= res!1709395 (= (content!7105 lt!1485400) ((_ map or) (content!7105 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))) (content!7105 (_2!24919 (get!14847 lt!1485372))))))))

(assert (=> d!1232287 (= lt!1485400 e!2589787)))

(declare-fun c!712976 () Bool)

(assert (=> d!1232287 (= c!712976 ((_ is Nil!45711) (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))))))

(assert (=> d!1232287 (= (++!11670 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372)))) (_2!24919 (get!14847 lt!1485372))) lt!1485400)))

(assert (= (and d!1232287 c!712976) b!4171540))

(assert (= (and d!1232287 (not c!712976)) b!4171541))

(assert (= (and d!1232287 res!1709395) b!4171542))

(assert (= (and b!4171542 res!1709394) b!4171543))

(declare-fun m!4761911 () Bool)

(assert (=> b!4171542 m!4761911))

(assert (=> b!4171542 m!4761737))

(declare-fun m!4761913 () Bool)

(assert (=> b!4171542 m!4761913))

(assert (=> b!4171542 m!4761753))

(declare-fun m!4761915 () Bool)

(assert (=> b!4171541 m!4761915))

(declare-fun m!4761917 () Bool)

(assert (=> d!1232287 m!4761917))

(assert (=> d!1232287 m!4761737))

(declare-fun m!4761919 () Bool)

(assert (=> d!1232287 m!4761919))

(declare-fun m!4761921 () Bool)

(assert (=> d!1232287 m!4761921))

(assert (=> b!4171321 d!1232287))

(declare-fun d!1232289 () Bool)

(declare-fun list!16526 (Conc!13791) List!45835)

(assert (=> d!1232289 (= (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372)))) (list!16526 (c!712908 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))))))

(declare-fun bs!596026 () Bool)

(assert (= bs!596026 d!1232289))

(declare-fun m!4761923 () Bool)

(assert (=> bs!596026 m!4761923))

(assert (=> b!4171321 d!1232289))

(declare-fun d!1232291 () Bool)

(declare-fun lt!1485403 () BalanceConc!27176)

(assert (=> d!1232291 (= (list!16525 lt!1485403) (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372))))))

(assert (=> d!1232291 (= lt!1485403 (dynLambda!19600 (toChars!10119 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372))))) (value!236562 (_1!24919 (get!14847 lt!1485372)))))))

(assert (=> d!1232291 (= (charsOf!5033 (_1!24919 (get!14847 lt!1485372))) lt!1485403)))

(declare-fun b_lambda!122531 () Bool)

(assert (=> (not b_lambda!122531) (not d!1232291)))

(declare-fun t!344424 () Bool)

(declare-fun tb!249803 () Bool)

(assert (=> (and b!4171015 (= (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toChars!10119 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344424) tb!249803))

(declare-fun b!4171544 () Bool)

(declare-fun e!2589789 () Bool)

(declare-fun tp!1274491 () Bool)

(assert (=> b!4171544 (= e!2589789 (and (inv!60242 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372))))) (value!236562 (_1!24919 (get!14847 lt!1485372)))))) tp!1274491))))

(declare-fun result!304332 () Bool)

(assert (=> tb!249803 (= result!304332 (and (inv!60243 (dynLambda!19600 (toChars!10119 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372))))) (value!236562 (_1!24919 (get!14847 lt!1485372))))) e!2589789))))

(assert (= tb!249803 b!4171544))

(declare-fun m!4761925 () Bool)

(assert (=> b!4171544 m!4761925))

(declare-fun m!4761927 () Bool)

(assert (=> tb!249803 m!4761927))

(assert (=> d!1232291 t!344424))

(declare-fun b_and!325757 () Bool)

(assert (= b_and!325727 (and (=> t!344424 result!304332) b_and!325757)))

(declare-fun t!344426 () Bool)

(declare-fun tb!249805 () Bool)

(assert (=> (and b!4171017 (= (toChars!10119 (transformation!7580 rBis!167)) (toChars!10119 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344426) tb!249805))

(declare-fun result!304334 () Bool)

(assert (= result!304334 result!304332))

(assert (=> d!1232291 t!344426))

(declare-fun b_and!325759 () Bool)

(assert (= b_and!325729 (and (=> t!344426 result!304334) b_and!325759)))

(declare-fun t!344428 () Bool)

(declare-fun tb!249807 () Bool)

(assert (=> (and b!4171028 (= (toChars!10119 (transformation!7580 r!4142)) (toChars!10119 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344428) tb!249807))

(declare-fun result!304336 () Bool)

(assert (= result!304336 result!304332))

(assert (=> d!1232291 t!344428))

(declare-fun b_and!325761 () Bool)

(assert (= b_and!325731 (and (=> t!344428 result!304336) b_and!325761)))

(declare-fun tb!249809 () Bool)

(declare-fun t!344430 () Bool)

(assert (=> (and b!4171449 (= (toChars!10119 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toChars!10119 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344430) tb!249809))

(declare-fun result!304338 () Bool)

(assert (= result!304338 result!304332))

(assert (=> d!1232291 t!344430))

(declare-fun b_and!325763 () Bool)

(assert (= b_and!325747 (and (=> t!344430 result!304338) b_and!325763)))

(declare-fun m!4761929 () Bool)

(assert (=> d!1232291 m!4761929))

(declare-fun m!4761931 () Bool)

(assert (=> d!1232291 m!4761931))

(assert (=> b!4171321 d!1232291))

(declare-fun d!1232293 () Bool)

(assert (=> d!1232293 (= (get!14847 lt!1485372) (v!40567 lt!1485372))))

(assert (=> b!4171321 d!1232293))

(declare-fun d!1232295 () Bool)

(declare-fun c!712979 () Bool)

(assert (=> d!1232295 (= c!712979 ((_ is Nil!45713) rules!3843))))

(declare-fun e!2589792 () (InoxSet Rule!14960))

(assert (=> d!1232295 (= (content!7104 rules!3843) e!2589792)))

(declare-fun b!4171549 () Bool)

(assert (=> b!4171549 (= e!2589792 ((as const (Array Rule!14960 Bool)) false))))

(declare-fun b!4171550 () Bool)

(assert (=> b!4171550 (= e!2589792 ((_ map or) (store ((as const (Array Rule!14960 Bool)) false) (h!51133 rules!3843) true) (content!7104 (t!344380 rules!3843))))))

(assert (= (and d!1232295 c!712979) b!4171549))

(assert (= (and d!1232295 (not c!712979)) b!4171550))

(declare-fun m!4761933 () Bool)

(assert (=> b!4171550 m!4761933))

(declare-fun m!4761935 () Bool)

(assert (=> b!4171550 m!4761935))

(assert (=> d!1232227 d!1232295))

(declare-fun bs!596027 () Bool)

(declare-fun d!1232297 () Bool)

(assert (= bs!596027 (and d!1232297 d!1232143)))

(declare-fun lambda!129249 () Int)

(assert (=> bs!596027 (= lambda!129249 lambda!129238)))

(assert (=> d!1232297 true))

(declare-fun lt!1485404 () Bool)

(assert (=> d!1232297 (= lt!1485404 (forall!8470 (t!344380 rules!3843) lambda!129249))))

(declare-fun e!2589793 () Bool)

(assert (=> d!1232297 (= lt!1485404 e!2589793)))

(declare-fun res!1709397 () Bool)

(assert (=> d!1232297 (=> res!1709397 e!2589793)))

(assert (=> d!1232297 (= res!1709397 (not ((_ is Cons!45713) (t!344380 rules!3843))))))

(assert (=> d!1232297 (= (rulesValidInductive!2792 thiss!25986 (t!344380 rules!3843)) lt!1485404)))

(declare-fun b!4171551 () Bool)

(declare-fun e!2589794 () Bool)

(assert (=> b!4171551 (= e!2589793 e!2589794)))

(declare-fun res!1709396 () Bool)

(assert (=> b!4171551 (=> (not res!1709396) (not e!2589794))))

(assert (=> b!4171551 (= res!1709396 (ruleValid!3298 thiss!25986 (h!51133 (t!344380 rules!3843))))))

(declare-fun b!4171552 () Bool)

(assert (=> b!4171552 (= e!2589794 (rulesValidInductive!2792 thiss!25986 (t!344380 (t!344380 rules!3843))))))

(assert (= (and d!1232297 (not res!1709397)) b!4171551))

(assert (= (and b!4171551 res!1709396) b!4171552))

(declare-fun m!4761937 () Bool)

(assert (=> d!1232297 m!4761937))

(declare-fun m!4761939 () Bool)

(assert (=> b!4171551 m!4761939))

(declare-fun m!4761941 () Bool)

(assert (=> b!4171552 m!4761941))

(assert (=> b!4171221 d!1232297))

(declare-fun d!1232299 () Bool)

(declare-fun nullableFct!1210 (Regex!12485) Bool)

(assert (=> d!1232299 (= (nullable!4379 (regex!7580 r!4142)) (nullableFct!1210 (regex!7580 r!4142)))))

(declare-fun bs!596028 () Bool)

(assert (= bs!596028 d!1232299))

(declare-fun m!4761943 () Bool)

(assert (=> bs!596028 m!4761943))

(assert (=> b!4171394 d!1232299))

(declare-fun d!1232301 () Bool)

(declare-fun lt!1485419 () Int)

(assert (=> d!1232301 (>= lt!1485419 0)))

(declare-fun e!2589795 () Int)

(assert (=> d!1232301 (= lt!1485419 e!2589795)))

(declare-fun c!712980 () Bool)

(assert (=> d!1232301 (= c!712980 ((_ is Nil!45711) (t!344378 p!2959)))))

(assert (=> d!1232301 (= (size!33554 (t!344378 p!2959)) lt!1485419)))

(declare-fun b!4171553 () Bool)

(assert (=> b!4171553 (= e!2589795 0)))

(declare-fun b!4171554 () Bool)

(assert (=> b!4171554 (= e!2589795 (+ 1 (size!33554 (t!344378 (t!344378 p!2959)))))))

(assert (= (and d!1232301 c!712980) b!4171553))

(assert (= (and d!1232301 (not c!712980)) b!4171554))

(declare-fun m!4761945 () Bool)

(assert (=> b!4171554 m!4761945))

(assert (=> b!4171334 d!1232301))

(declare-fun b!4171557 () Bool)

(declare-fun e!2589798 () Bool)

(declare-fun e!2589797 () Bool)

(assert (=> b!4171557 (= e!2589798 e!2589797)))

(declare-fun res!1709399 () Bool)

(assert (=> b!4171557 (=> (not res!1709399) (not e!2589797))))

(assert (=> b!4171557 (= res!1709399 (not ((_ is Nil!45711) (tail!6703 input!3342))))))

(declare-fun b!4171559 () Bool)

(assert (=> b!4171559 (= e!2589797 (isPrefix!4437 (tail!6703 (tail!6703 pBis!107)) (tail!6703 (tail!6703 input!3342))))))

(declare-fun d!1232303 () Bool)

(declare-fun e!2589796 () Bool)

(assert (=> d!1232303 e!2589796))

(declare-fun res!1709400 () Bool)

(assert (=> d!1232303 (=> res!1709400 e!2589796)))

(declare-fun lt!1485420 () Bool)

(assert (=> d!1232303 (= res!1709400 (not lt!1485420))))

(assert (=> d!1232303 (= lt!1485420 e!2589798)))

(declare-fun res!1709398 () Bool)

(assert (=> d!1232303 (=> res!1709398 e!2589798)))

(assert (=> d!1232303 (= res!1709398 ((_ is Nil!45711) (tail!6703 pBis!107)))))

(assert (=> d!1232303 (= (isPrefix!4437 (tail!6703 pBis!107) (tail!6703 input!3342)) lt!1485420)))

(declare-fun b!4171560 () Bool)

(assert (=> b!4171560 (= e!2589796 (>= (size!33554 (tail!6703 input!3342)) (size!33554 (tail!6703 pBis!107))))))

(declare-fun b!4171558 () Bool)

(declare-fun res!1709401 () Bool)

(assert (=> b!4171558 (=> (not res!1709401) (not e!2589797))))

(assert (=> b!4171558 (= res!1709401 (= (head!8856 (tail!6703 pBis!107)) (head!8856 (tail!6703 input!3342))))))

(assert (= (and d!1232303 (not res!1709398)) b!4171557))

(assert (= (and b!4171557 res!1709399) b!4171558))

(assert (= (and b!4171558 res!1709401) b!4171559))

(assert (= (and d!1232303 (not res!1709400)) b!4171560))

(assert (=> b!4171559 m!4761561))

(declare-fun m!4761947 () Bool)

(assert (=> b!4171559 m!4761947))

(assert (=> b!4171559 m!4761563))

(declare-fun m!4761949 () Bool)

(assert (=> b!4171559 m!4761949))

(assert (=> b!4171559 m!4761947))

(assert (=> b!4171559 m!4761949))

(declare-fun m!4761951 () Bool)

(assert (=> b!4171559 m!4761951))

(assert (=> b!4171560 m!4761563))

(declare-fun m!4761953 () Bool)

(assert (=> b!4171560 m!4761953))

(assert (=> b!4171560 m!4761561))

(declare-fun m!4761955 () Bool)

(assert (=> b!4171560 m!4761955))

(assert (=> b!4171558 m!4761561))

(declare-fun m!4761957 () Bool)

(assert (=> b!4171558 m!4761957))

(assert (=> b!4171558 m!4761563))

(declare-fun m!4761959 () Bool)

(assert (=> b!4171558 m!4761959))

(assert (=> b!4171078 d!1232303))

(declare-fun d!1232305 () Bool)

(assert (=> d!1232305 (= (tail!6703 pBis!107) (t!344378 pBis!107))))

(assert (=> b!4171078 d!1232305))

(declare-fun d!1232307 () Bool)

(assert (=> d!1232307 (= (tail!6703 input!3342) (t!344378 input!3342))))

(assert (=> b!4171078 d!1232307))

(declare-fun d!1232309 () Bool)

(declare-fun c!712995 () Bool)

(assert (=> d!1232309 (= c!712995 ((_ is Node!13791) (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))))

(declare-fun e!2589815 () Bool)

(assert (=> d!1232309 (= (inv!60242 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))) e!2589815)))

(declare-fun b!4171589 () Bool)

(declare-fun inv!60244 (Conc!13791) Bool)

(assert (=> b!4171589 (= e!2589815 (inv!60244 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))))

(declare-fun b!4171590 () Bool)

(declare-fun e!2589816 () Bool)

(assert (=> b!4171590 (= e!2589815 e!2589816)))

(declare-fun res!1709404 () Bool)

(assert (=> b!4171590 (= res!1709404 (not ((_ is Leaf!21324) (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))))))))

(assert (=> b!4171590 (=> res!1709404 e!2589816)))

(declare-fun b!4171591 () Bool)

(declare-fun inv!60245 (Conc!13791) Bool)

(assert (=> b!4171591 (= e!2589816 (inv!60245 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))))

(assert (= (and d!1232309 c!712995) b!4171589))

(assert (= (and d!1232309 (not c!712995)) b!4171590))

(assert (= (and b!4171590 (not res!1709404)) b!4171591))

(declare-fun m!4761961 () Bool)

(assert (=> b!4171589 m!4761961))

(declare-fun m!4761963 () Bool)

(assert (=> b!4171591 m!4761963))

(assert (=> b!4171299 d!1232309))

(assert (=> b!4171325 d!1232293))

(declare-fun d!1232311 () Bool)

(declare-fun res!1709409 () Bool)

(declare-fun e!2589821 () Bool)

(assert (=> d!1232311 (=> res!1709409 e!2589821)))

(assert (=> d!1232311 (= res!1709409 ((_ is Nil!45713) rules!3843))))

(assert (=> d!1232311 (= (noDuplicateTag!3116 thiss!25986 rules!3843 Nil!45714) e!2589821)))

(declare-fun b!4171596 () Bool)

(declare-fun e!2589822 () Bool)

(assert (=> b!4171596 (= e!2589821 e!2589822)))

(declare-fun res!1709410 () Bool)

(assert (=> b!4171596 (=> (not res!1709410) (not e!2589822))))

(declare-fun contains!9383 (List!45838 String!52916) Bool)

(assert (=> b!4171596 (= res!1709410 (not (contains!9383 Nil!45714 (tag!8444 (h!51133 rules!3843)))))))

(declare-fun b!4171597 () Bool)

(assert (=> b!4171597 (= e!2589822 (noDuplicateTag!3116 thiss!25986 (t!344380 rules!3843) (Cons!45714 (tag!8444 (h!51133 rules!3843)) Nil!45714)))))

(assert (= (and d!1232311 (not res!1709409)) b!4171596))

(assert (= (and b!4171596 res!1709410) b!4171597))

(declare-fun m!4761965 () Bool)

(assert (=> b!4171596 m!4761965))

(declare-fun m!4761967 () Bool)

(assert (=> b!4171597 m!4761967))

(assert (=> b!4171232 d!1232311))

(declare-fun d!1232313 () Bool)

(declare-fun lt!1485463 () Int)

(assert (=> d!1232313 (>= lt!1485463 0)))

(declare-fun e!2589823 () Int)

(assert (=> d!1232313 (= lt!1485463 e!2589823)))

(declare-fun c!712996 () Bool)

(assert (=> d!1232313 (= c!712996 ((_ is Nil!45711) input!3342))))

(assert (=> d!1232313 (= (size!33554 input!3342) lt!1485463)))

(declare-fun b!4171598 () Bool)

(assert (=> b!4171598 (= e!2589823 0)))

(declare-fun b!4171599 () Bool)

(assert (=> b!4171599 (= e!2589823 (+ 1 (size!33554 (t!344378 input!3342))))))

(assert (= (and d!1232313 c!712996) b!4171598))

(assert (= (and d!1232313 (not c!712996)) b!4171599))

(declare-fun m!4761969 () Bool)

(assert (=> b!4171599 m!4761969))

(assert (=> b!4171348 d!1232313))

(assert (=> b!4171348 d!1232203))

(declare-fun bs!596029 () Bool)

(declare-fun d!1232315 () Bool)

(assert (= bs!596029 (and d!1232315 d!1232197)))

(declare-fun lambda!129252 () Int)

(assert (=> bs!596029 (= (and (= (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toChars!10119 (transformation!7580 r!4142))) (= (toValue!10260 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 r!4142)))) (= lambda!129252 lambda!129241))))

(assert (=> d!1232315 true))

(assert (=> d!1232315 (< (dynLambda!19599 order!24109 (toChars!10119 (transformation!7580 (h!51133 rules!3843)))) (dynLambda!19598 order!24107 lambda!129252))))

(assert (=> d!1232315 true))

(assert (=> d!1232315 (< (dynLambda!19597 order!24105 (toValue!10260 (transformation!7580 (h!51133 rules!3843)))) (dynLambda!19598 order!24107 lambda!129252))))

(declare-fun Forall!1559 (Int) Bool)

(assert (=> d!1232315 (= (semiInverseModEq!3288 (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 (h!51133 rules!3843)))) (Forall!1559 lambda!129252))))

(declare-fun bs!596030 () Bool)

(assert (= bs!596030 d!1232315))

(declare-fun m!4761971 () Bool)

(assert (=> bs!596030 m!4761971))

(assert (=> d!1232223 d!1232315))

(declare-fun b!4171608 () Bool)

(declare-fun res!1709416 () Bool)

(declare-fun e!2589830 () Bool)

(assert (=> b!4171608 (=> (not res!1709416) (not e!2589830))))

(declare-fun call!291259 () Bool)

(assert (=> b!4171608 (= res!1709416 call!291259)))

(declare-fun e!2589833 () Bool)

(assert (=> b!4171608 (= e!2589833 e!2589830)))

(declare-fun b!4171609 () Bool)

(declare-fun res!1709415 () Bool)

(declare-fun e!2589829 () Bool)

(assert (=> b!4171609 (=> res!1709415 e!2589829)))

(assert (=> b!4171609 (= res!1709415 (not ((_ is Concat!20296) (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142))))))))

(assert (=> b!4171609 (= e!2589833 e!2589829)))

(declare-fun b!4171610 () Bool)

(declare-fun e!2589834 () Bool)

(declare-fun e!2589828 () Bool)

(assert (=> b!4171610 (= e!2589834 e!2589828)))

(declare-fun c!712998 () Bool)

(assert (=> b!4171610 (= c!712998 ((_ is Star!12485) (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))))))

(declare-fun c!712997 () Bool)

(declare-fun call!291261 () Bool)

(declare-fun bm!291254 () Bool)

(assert (=> bm!291254 (= call!291261 (validRegex!5602 (ite c!712998 (reg!12814 (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))) (ite c!712997 (regOne!25483 (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))) (regOne!25482 (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142))))))))))

(declare-fun b!4171611 () Bool)

(declare-fun e!2589832 () Bool)

(assert (=> b!4171611 (= e!2589832 call!291261)))

(declare-fun b!4171612 () Bool)

(assert (=> b!4171612 (= e!2589828 e!2589833)))

(assert (=> b!4171612 (= c!712997 ((_ is Union!12485) (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))))))

(declare-fun b!4171613 () Bool)

(declare-fun call!291260 () Bool)

(assert (=> b!4171613 (= e!2589830 call!291260)))

(declare-fun b!4171615 () Bool)

(declare-fun e!2589831 () Bool)

(assert (=> b!4171615 (= e!2589831 call!291260)))

(declare-fun bm!291255 () Bool)

(assert (=> bm!291255 (= call!291259 call!291261)))

(declare-fun d!1232317 () Bool)

(declare-fun res!1709418 () Bool)

(assert (=> d!1232317 (=> res!1709418 e!2589834)))

(assert (=> d!1232317 (= res!1709418 ((_ is ElementMatch!12485) (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))))))

(assert (=> d!1232317 (= (validRegex!5602 (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))) e!2589834)))

(declare-fun b!4171614 () Bool)

(assert (=> b!4171614 (= e!2589828 e!2589832)))

(declare-fun res!1709419 () Bool)

(assert (=> b!4171614 (= res!1709419 (not (nullable!4379 (reg!12814 (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))))))))

(assert (=> b!4171614 (=> (not res!1709419) (not e!2589832))))

(declare-fun bm!291256 () Bool)

(assert (=> bm!291256 (= call!291260 (validRegex!5602 (ite c!712997 (regTwo!25483 (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))) (regTwo!25482 (ite c!712960 (regTwo!25483 (regex!7580 r!4142)) (regTwo!25482 (regex!7580 r!4142)))))))))

(declare-fun b!4171616 () Bool)

(assert (=> b!4171616 (= e!2589829 e!2589831)))

(declare-fun res!1709417 () Bool)

(assert (=> b!4171616 (=> (not res!1709417) (not e!2589831))))

(assert (=> b!4171616 (= res!1709417 call!291259)))

(assert (= (and d!1232317 (not res!1709418)) b!4171610))

(assert (= (and b!4171610 c!712998) b!4171614))

(assert (= (and b!4171610 (not c!712998)) b!4171612))

(assert (= (and b!4171614 res!1709419) b!4171611))

(assert (= (and b!4171612 c!712997) b!4171608))

(assert (= (and b!4171612 (not c!712997)) b!4171609))

(assert (= (and b!4171608 res!1709416) b!4171613))

(assert (= (and b!4171609 (not res!1709415)) b!4171616))

(assert (= (and b!4171616 res!1709417) b!4171615))

(assert (= (or b!4171613 b!4171615) bm!291256))

(assert (= (or b!4171608 b!4171616) bm!291255))

(assert (= (or b!4171611 bm!291255) bm!291254))

(declare-fun m!4761973 () Bool)

(assert (=> bm!291254 m!4761973))

(declare-fun m!4761975 () Bool)

(assert (=> b!4171614 m!4761975))

(declare-fun m!4761977 () Bool)

(assert (=> bm!291256 m!4761977))

(assert (=> bm!291233 d!1232317))

(declare-fun bs!596031 () Bool)

(declare-fun d!1232319 () Bool)

(assert (= bs!596031 (and d!1232319 d!1232143)))

(declare-fun lambda!129255 () Int)

(assert (=> bs!596031 (= lambda!129255 lambda!129238)))

(declare-fun bs!596032 () Bool)

(assert (= bs!596032 (and d!1232319 d!1232297)))

(assert (=> bs!596032 (= lambda!129255 lambda!129249)))

(assert (=> d!1232319 true))

(declare-fun lt!1485466 () Bool)

(assert (=> d!1232319 (= lt!1485466 (rulesValidInductive!2792 thiss!25986 rules!3843))))

(assert (=> d!1232319 (= lt!1485466 (forall!8470 rules!3843 lambda!129255))))

(assert (=> d!1232319 (= (rulesValid!2955 thiss!25986 rules!3843) lt!1485466)))

(declare-fun bs!596033 () Bool)

(assert (= bs!596033 d!1232319))

(assert (=> bs!596033 m!4761487))

(declare-fun m!4761979 () Bool)

(assert (=> bs!596033 m!4761979))

(assert (=> d!1232179 d!1232319))

(declare-fun b!4171617 () Bool)

(declare-fun e!2589848 () Bool)

(assert (=> b!4171617 (= e!2589848 (matchR!6224 (derivativeStep!3769 (regex!7580 r!4142) (head!8856 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342))))) (tail!6703 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342))))))))

(declare-fun b!4171618 () Bool)

(declare-fun e!2589846 () Bool)

(declare-fun lt!1485490 () Bool)

(declare-fun call!291266 () Bool)

(assert (=> b!4171618 (= e!2589846 (= lt!1485490 call!291266))))

(declare-fun b!4171619 () Bool)

(declare-fun res!1709423 () Bool)

(declare-fun e!2589841 () Bool)

(assert (=> b!4171619 (=> res!1709423 e!2589841)))

(assert (=> b!4171619 (= res!1709423 (not (isEmpty!27045 (tail!6703 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))))))))

(declare-fun b!4171620 () Bool)

(declare-fun e!2589842 () Bool)

(assert (=> b!4171620 (= e!2589842 (= (head!8856 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))) (c!712909 (regex!7580 r!4142))))))

(declare-fun b!4171622 () Bool)

(declare-fun e!2589840 () Bool)

(assert (=> b!4171622 (= e!2589840 (not lt!1485490))))

(declare-fun b!4171624 () Bool)

(assert (=> b!4171624 (= e!2589848 (nullable!4379 (regex!7580 r!4142)))))

(declare-fun b!4171626 () Bool)

(declare-fun res!1709421 () Bool)

(declare-fun e!2589847 () Bool)

(assert (=> b!4171626 (=> res!1709421 e!2589847)))

(assert (=> b!4171626 (= res!1709421 e!2589842)))

(declare-fun res!1709429 () Bool)

(assert (=> b!4171626 (=> (not res!1709429) (not e!2589842))))

(assert (=> b!4171626 (= res!1709429 lt!1485490)))

(declare-fun d!1232321 () Bool)

(assert (=> d!1232321 e!2589846))

(declare-fun c!713003 () Bool)

(assert (=> d!1232321 (= c!713003 ((_ is EmptyExpr!12485) (regex!7580 r!4142)))))

(assert (=> d!1232321 (= lt!1485490 e!2589848)))

(declare-fun c!713005 () Bool)

(assert (=> d!1232321 (= c!713005 (isEmpty!27045 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))))))

(assert (=> d!1232321 (validRegex!5602 (regex!7580 r!4142))))

(assert (=> d!1232321 (= (matchR!6224 (regex!7580 r!4142) (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))) lt!1485490)))

(declare-fun b!4171627 () Bool)

(declare-fun res!1709426 () Bool)

(assert (=> b!4171627 (=> (not res!1709426) (not e!2589842))))

(assert (=> b!4171627 (= res!1709426 (not call!291266))))

(declare-fun bm!291259 () Bool)

(assert (=> bm!291259 (= call!291266 (isEmpty!27045 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))))))

(declare-fun b!4171629 () Bool)

(declare-fun e!2589843 () Bool)

(assert (=> b!4171629 (= e!2589847 e!2589843)))

(declare-fun res!1709422 () Bool)

(assert (=> b!4171629 (=> (not res!1709422) (not e!2589843))))

(assert (=> b!4171629 (= res!1709422 (not lt!1485490))))

(declare-fun b!4171631 () Bool)

(declare-fun res!1709424 () Bool)

(assert (=> b!4171631 (=> res!1709424 e!2589847)))

(assert (=> b!4171631 (= res!1709424 (not ((_ is ElementMatch!12485) (regex!7580 r!4142))))))

(assert (=> b!4171631 (= e!2589840 e!2589847)))

(declare-fun b!4171633 () Bool)

(assert (=> b!4171633 (= e!2589841 (not (= (head!8856 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))) (c!712909 (regex!7580 r!4142)))))))

(declare-fun b!4171635 () Bool)

(assert (=> b!4171635 (= e!2589843 e!2589841)))

(declare-fun res!1709425 () Bool)

(assert (=> b!4171635 (=> res!1709425 e!2589841)))

(assert (=> b!4171635 (= res!1709425 call!291266)))

(declare-fun b!4171637 () Bool)

(declare-fun res!1709428 () Bool)

(assert (=> b!4171637 (=> (not res!1709428) (not e!2589842))))

(assert (=> b!4171637 (= res!1709428 (isEmpty!27045 (tail!6703 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342))))))))

(declare-fun b!4171638 () Bool)

(assert (=> b!4171638 (= e!2589846 e!2589840)))

(declare-fun c!713006 () Bool)

(assert (=> b!4171638 (= c!713006 ((_ is EmptyLang!12485) (regex!7580 r!4142)))))

(assert (= (and d!1232321 c!713005) b!4171624))

(assert (= (and d!1232321 (not c!713005)) b!4171617))

(assert (= (and d!1232321 c!713003) b!4171618))

(assert (= (and d!1232321 (not c!713003)) b!4171638))

(assert (= (and b!4171638 c!713006) b!4171622))

(assert (= (and b!4171638 (not c!713006)) b!4171631))

(assert (= (and b!4171631 (not res!1709424)) b!4171626))

(assert (= (and b!4171626 res!1709429) b!4171627))

(assert (= (and b!4171627 res!1709426) b!4171637))

(assert (= (and b!4171637 res!1709428) b!4171620))

(assert (= (and b!4171626 (not res!1709421)) b!4171629))

(assert (= (and b!4171629 res!1709422) b!4171635))

(assert (= (and b!4171635 (not res!1709425)) b!4171619))

(assert (= (and b!4171619 (not res!1709423)) b!4171633))

(assert (= (or b!4171618 b!4171627 b!4171635) bm!291259))

(declare-fun m!4761981 () Bool)

(assert (=> b!4171620 m!4761981))

(assert (=> b!4171617 m!4761981))

(assert (=> b!4171617 m!4761981))

(declare-fun m!4761983 () Bool)

(assert (=> b!4171617 m!4761983))

(declare-fun m!4761985 () Bool)

(assert (=> b!4171617 m!4761985))

(assert (=> b!4171617 m!4761983))

(assert (=> b!4171617 m!4761985))

(declare-fun m!4761987 () Bool)

(assert (=> b!4171617 m!4761987))

(assert (=> b!4171637 m!4761985))

(assert (=> b!4171637 m!4761985))

(declare-fun m!4761989 () Bool)

(assert (=> b!4171637 m!4761989))

(assert (=> b!4171633 m!4761981))

(assert (=> d!1232321 m!4761755))

(assert (=> d!1232321 m!4761485))

(assert (=> b!4171624 m!4761805))

(assert (=> b!4171619 m!4761985))

(assert (=> b!4171619 m!4761985))

(assert (=> b!4171619 m!4761989))

(assert (=> bm!291259 m!4761755))

(assert (=> b!4171323 d!1232321))

(declare-fun bm!291298 () Bool)

(declare-fun call!291304 () Regex!12485)

(declare-fun call!291306 () C!25160)

(assert (=> bm!291298 (= call!291304 (derivativeStep!3769 (regex!7580 r!4142) call!291306))))

(declare-fun bm!291299 () Bool)

(declare-fun call!291308 () Unit!64779)

(assert (=> bm!291299 (= call!291308 (lemmaIsPrefixRefl!2866 input!3342 input!3342))))

(declare-fun bm!291300 () Bool)

(assert (=> bm!291300 (= call!291306 (head!8856 input!3342))))

(declare-fun bm!291301 () Bool)

(declare-fun call!291309 () Unit!64779)

(declare-fun lemmaIsPrefixSameLengthThenSameList!981 (List!45835 List!45835 List!45835) Unit!64779)

(assert (=> bm!291301 (= call!291309 (lemmaIsPrefixSameLengthThenSameList!981 input!3342 Nil!45711 input!3342))))

(declare-fun b!4171793 () Bool)

(declare-fun c!713061 () Bool)

(declare-fun call!291303 () Bool)

(assert (=> b!4171793 (= c!713061 call!291303)))

(declare-fun lt!1485615 () Unit!64779)

(declare-fun lt!1485616 () Unit!64779)

(assert (=> b!4171793 (= lt!1485615 lt!1485616)))

(declare-fun lt!1485604 () C!25160)

(declare-fun lt!1485618 () List!45835)

(assert (=> b!4171793 (= (++!11670 (++!11670 Nil!45711 (Cons!45711 lt!1485604 Nil!45711)) lt!1485618) input!3342)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1287 (List!45835 C!25160 List!45835 List!45835) Unit!64779)

(assert (=> b!4171793 (= lt!1485616 (lemmaMoveElementToOtherListKeepsConcatEq!1287 Nil!45711 lt!1485604 lt!1485618 input!3342))))

(assert (=> b!4171793 (= lt!1485618 (tail!6703 input!3342))))

(assert (=> b!4171793 (= lt!1485604 (head!8856 input!3342))))

(declare-fun lt!1485626 () Unit!64779)

(declare-fun lt!1485624 () Unit!64779)

(assert (=> b!4171793 (= lt!1485626 lt!1485624)))

(assert (=> b!4171793 (isPrefix!4437 (++!11670 Nil!45711 (Cons!45711 (head!8856 (getSuffix!2732 input!3342 Nil!45711)) Nil!45711)) input!3342)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!669 (List!45835 List!45835) Unit!64779)

(assert (=> b!4171793 (= lt!1485624 (lemmaAddHeadSuffixToPrefixStillPrefix!669 Nil!45711 input!3342))))

(declare-fun lt!1485622 () Unit!64779)

(declare-fun lt!1485613 () Unit!64779)

(assert (=> b!4171793 (= lt!1485622 lt!1485613)))

(assert (=> b!4171793 (= lt!1485613 (lemmaAddHeadSuffixToPrefixStillPrefix!669 Nil!45711 input!3342))))

(declare-fun lt!1485612 () List!45835)

(assert (=> b!4171793 (= lt!1485612 (++!11670 Nil!45711 (Cons!45711 (head!8856 input!3342) Nil!45711)))))

(declare-fun lt!1485605 () Unit!64779)

(declare-fun e!2589938 () Unit!64779)

(assert (=> b!4171793 (= lt!1485605 e!2589938)))

(declare-fun c!713059 () Bool)

(assert (=> b!4171793 (= c!713059 (= (size!33554 Nil!45711) (size!33554 input!3342)))))

(declare-fun lt!1485620 () Unit!64779)

(declare-fun lt!1485627 () Unit!64779)

(assert (=> b!4171793 (= lt!1485620 lt!1485627)))

(assert (=> b!4171793 (<= (size!33554 Nil!45711) (size!33554 input!3342))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!477 (List!45835 List!45835) Unit!64779)

(assert (=> b!4171793 (= lt!1485627 (lemmaIsPrefixThenSmallerEqSize!477 Nil!45711 input!3342))))

(declare-fun e!2589943 () tuple2!43574)

(declare-fun e!2589940 () tuple2!43574)

(assert (=> b!4171793 (= e!2589943 e!2589940)))

(declare-fun call!291307 () List!45835)

(declare-fun call!291305 () tuple2!43574)

(declare-fun bm!291302 () Bool)

(assert (=> bm!291302 (= call!291305 (findLongestMatchInner!1571 call!291304 lt!1485612 (+ (size!33554 Nil!45711) 1) call!291307 input!3342 (size!33554 input!3342)))))

(declare-fun b!4171794 () Bool)

(declare-fun e!2589942 () tuple2!43574)

(assert (=> b!4171794 (= e!2589942 (tuple2!43575 Nil!45711 input!3342))))

(declare-fun bm!291303 () Bool)

(assert (=> bm!291303 (= call!291307 (tail!6703 input!3342))))

(declare-fun b!4171795 () Bool)

(assert (=> b!4171795 (= e!2589940 call!291305)))

(declare-fun b!4171796 () Bool)

(declare-fun Unit!64784 () Unit!64779)

(assert (=> b!4171796 (= e!2589938 Unit!64784)))

(declare-fun lt!1485623 () Unit!64779)

(assert (=> b!4171796 (= lt!1485623 call!291308)))

(declare-fun call!291310 () Bool)

(assert (=> b!4171796 call!291310))

(declare-fun lt!1485614 () Unit!64779)

(assert (=> b!4171796 (= lt!1485614 lt!1485623)))

(declare-fun lt!1485606 () Unit!64779)

(assert (=> b!4171796 (= lt!1485606 call!291309)))

(assert (=> b!4171796 (= input!3342 Nil!45711)))

(declare-fun lt!1485602 () Unit!64779)

(assert (=> b!4171796 (= lt!1485602 lt!1485606)))

(assert (=> b!4171796 false))

(declare-fun b!4171797 () Bool)

(declare-fun c!713062 () Bool)

(assert (=> b!4171797 (= c!713062 call!291303)))

(declare-fun lt!1485601 () Unit!64779)

(declare-fun lt!1485610 () Unit!64779)

(assert (=> b!4171797 (= lt!1485601 lt!1485610)))

(assert (=> b!4171797 (= input!3342 Nil!45711)))

(assert (=> b!4171797 (= lt!1485610 call!291309)))

(declare-fun lt!1485609 () Unit!64779)

(declare-fun lt!1485617 () Unit!64779)

(assert (=> b!4171797 (= lt!1485609 lt!1485617)))

(assert (=> b!4171797 call!291310))

(assert (=> b!4171797 (= lt!1485617 call!291308)))

(declare-fun e!2589941 () tuple2!43574)

(assert (=> b!4171797 (= e!2589943 e!2589941)))

(declare-fun bm!291304 () Bool)

(assert (=> bm!291304 (= call!291303 (nullable!4379 (regex!7580 r!4142)))))

(declare-fun b!4171792 () Bool)

(declare-fun e!2589937 () tuple2!43574)

(assert (=> b!4171792 (= e!2589937 (tuple2!43575 Nil!45711 input!3342))))

(declare-fun d!1232323 () Bool)

(declare-fun e!2589939 () Bool)

(assert (=> d!1232323 e!2589939))

(declare-fun res!1709473 () Bool)

(assert (=> d!1232323 (=> (not res!1709473) (not e!2589939))))

(declare-fun lt!1485611 () tuple2!43574)

(assert (=> d!1232323 (= res!1709473 (= (++!11670 (_1!24921 lt!1485611) (_2!24921 lt!1485611)) input!3342))))

(assert (=> d!1232323 (= lt!1485611 e!2589937)))

(declare-fun c!713060 () Bool)

(declare-fun lostCause!1043 (Regex!12485) Bool)

(assert (=> d!1232323 (= c!713060 (lostCause!1043 (regex!7580 r!4142)))))

(declare-fun lt!1485607 () Unit!64779)

(declare-fun Unit!64785 () Unit!64779)

(assert (=> d!1232323 (= lt!1485607 Unit!64785)))

(assert (=> d!1232323 (= (getSuffix!2732 input!3342 Nil!45711) input!3342)))

(declare-fun lt!1485603 () Unit!64779)

(declare-fun lt!1485625 () Unit!64779)

(assert (=> d!1232323 (= lt!1485603 lt!1485625)))

(declare-fun lt!1485621 () List!45835)

(assert (=> d!1232323 (= input!3342 lt!1485621)))

(declare-fun lemmaSamePrefixThenSameSuffix!2260 (List!45835 List!45835 List!45835 List!45835 List!45835) Unit!64779)

(assert (=> d!1232323 (= lt!1485625 (lemmaSamePrefixThenSameSuffix!2260 Nil!45711 input!3342 Nil!45711 lt!1485621 input!3342))))

(assert (=> d!1232323 (= lt!1485621 (getSuffix!2732 input!3342 Nil!45711))))

(declare-fun lt!1485619 () Unit!64779)

(declare-fun lt!1485608 () Unit!64779)

(assert (=> d!1232323 (= lt!1485619 lt!1485608)))

(assert (=> d!1232323 (isPrefix!4437 Nil!45711 (++!11670 Nil!45711 input!3342))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2962 (List!45835 List!45835) Unit!64779)

(assert (=> d!1232323 (= lt!1485608 (lemmaConcatTwoListThenFirstIsPrefix!2962 Nil!45711 input!3342))))

(assert (=> d!1232323 (validRegex!5602 (regex!7580 r!4142))))

(assert (=> d!1232323 (= (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)) lt!1485611)))

(declare-fun b!4171798 () Bool)

(declare-fun Unit!64786 () Unit!64779)

(assert (=> b!4171798 (= e!2589938 Unit!64786)))

(declare-fun b!4171799 () Bool)

(assert (=> b!4171799 (= e!2589941 (tuple2!43575 Nil!45711 input!3342))))

(declare-fun b!4171800 () Bool)

(declare-fun e!2589936 () Bool)

(assert (=> b!4171800 (= e!2589939 e!2589936)))

(declare-fun res!1709472 () Bool)

(assert (=> b!4171800 (=> res!1709472 e!2589936)))

(assert (=> b!4171800 (= res!1709472 (isEmpty!27045 (_1!24921 lt!1485611)))))

(declare-fun bm!291305 () Bool)

(assert (=> bm!291305 (= call!291310 (isPrefix!4437 input!3342 input!3342))))

(declare-fun b!4171801 () Bool)

(assert (=> b!4171801 (= e!2589936 (>= (size!33554 (_1!24921 lt!1485611)) (size!33554 Nil!45711)))))

(declare-fun b!4171802 () Bool)

(assert (=> b!4171802 (= e!2589940 e!2589942)))

(declare-fun lt!1485628 () tuple2!43574)

(assert (=> b!4171802 (= lt!1485628 call!291305)))

(declare-fun c!713058 () Bool)

(assert (=> b!4171802 (= c!713058 (isEmpty!27045 (_1!24921 lt!1485628)))))

(declare-fun b!4171803 () Bool)

(assert (=> b!4171803 (= e!2589937 e!2589943)))

(declare-fun c!713057 () Bool)

(assert (=> b!4171803 (= c!713057 (= (size!33554 Nil!45711) (size!33554 input!3342)))))

(declare-fun b!4171804 () Bool)

(assert (=> b!4171804 (= e!2589941 (tuple2!43575 Nil!45711 Nil!45711))))

(declare-fun b!4171805 () Bool)

(assert (=> b!4171805 (= e!2589942 lt!1485628)))

(assert (= (and d!1232323 c!713060) b!4171792))

(assert (= (and d!1232323 (not c!713060)) b!4171803))

(assert (= (and b!4171803 c!713057) b!4171797))

(assert (= (and b!4171803 (not c!713057)) b!4171793))

(assert (= (and b!4171797 c!713062) b!4171804))

(assert (= (and b!4171797 (not c!713062)) b!4171799))

(assert (= (and b!4171793 c!713059) b!4171796))

(assert (= (and b!4171793 (not c!713059)) b!4171798))

(assert (= (and b!4171793 c!713061) b!4171802))

(assert (= (and b!4171793 (not c!713061)) b!4171795))

(assert (= (and b!4171802 c!713058) b!4171794))

(assert (= (and b!4171802 (not c!713058)) b!4171805))

(assert (= (or b!4171802 b!4171795) bm!291303))

(assert (= (or b!4171802 b!4171795) bm!291300))

(assert (= (or b!4171802 b!4171795) bm!291298))

(assert (= (or b!4171802 b!4171795) bm!291302))

(assert (= (or b!4171797 b!4171796) bm!291299))

(assert (= (or b!4171797 b!4171793) bm!291304))

(assert (= (or b!4171797 b!4171796) bm!291301))

(assert (= (or b!4171797 b!4171796) bm!291305))

(assert (= (and d!1232323 res!1709473) b!4171800))

(assert (= (and b!4171800 (not res!1709472)) b!4171801))

(declare-fun m!4762199 () Bool)

(assert (=> bm!291298 m!4762199))

(declare-fun m!4762201 () Bool)

(assert (=> b!4171802 m!4762201))

(assert (=> bm!291303 m!4761563))

(declare-fun m!4762203 () Bool)

(assert (=> b!4171793 m!4762203))

(declare-fun m!4762205 () Bool)

(assert (=> b!4171793 m!4762205))

(declare-fun m!4762207 () Bool)

(assert (=> b!4171793 m!4762207))

(declare-fun m!4762209 () Bool)

(assert (=> b!4171793 m!4762209))

(assert (=> b!4171793 m!4761567))

(declare-fun m!4762211 () Bool)

(assert (=> b!4171793 m!4762211))

(declare-fun m!4762213 () Bool)

(assert (=> b!4171793 m!4762213))

(declare-fun m!4762215 () Bool)

(assert (=> b!4171793 m!4762215))

(assert (=> b!4171793 m!4761563))

(assert (=> b!4171793 m!4762207))

(declare-fun m!4762217 () Bool)

(assert (=> b!4171793 m!4762217))

(declare-fun m!4762219 () Bool)

(assert (=> b!4171793 m!4762219))

(declare-fun m!4762221 () Bool)

(assert (=> b!4171793 m!4762221))

(assert (=> b!4171793 m!4762211))

(assert (=> b!4171793 m!4761741))

(assert (=> b!4171793 m!4762219))

(assert (=> b!4171793 m!4761571))

(assert (=> bm!291302 m!4761567))

(declare-fun m!4762223 () Bool)

(assert (=> bm!291302 m!4762223))

(assert (=> bm!291299 m!4761495))

(assert (=> bm!291305 m!4761491))

(declare-fun m!4762225 () Bool)

(assert (=> b!4171801 m!4762225))

(assert (=> b!4171801 m!4761741))

(declare-fun m!4762227 () Bool)

(assert (=> bm!291301 m!4762227))

(declare-fun m!4762229 () Bool)

(assert (=> d!1232323 m!4762229))

(declare-fun m!4762231 () Bool)

(assert (=> d!1232323 m!4762231))

(declare-fun m!4762233 () Bool)

(assert (=> d!1232323 m!4762233))

(declare-fun m!4762235 () Bool)

(assert (=> d!1232323 m!4762235))

(assert (=> d!1232323 m!4762235))

(declare-fun m!4762237 () Bool)

(assert (=> d!1232323 m!4762237))

(assert (=> d!1232323 m!4761485))

(declare-fun m!4762239 () Bool)

(assert (=> d!1232323 m!4762239))

(assert (=> d!1232323 m!4762211))

(assert (=> bm!291300 m!4761571))

(declare-fun m!4762241 () Bool)

(assert (=> b!4171800 m!4762241))

(assert (=> bm!291304 m!4761805))

(assert (=> b!4171323 d!1232323))

(declare-fun d!1232409 () Bool)

(declare-fun lt!1485633 () Int)

(assert (=> d!1232409 (>= lt!1485633 0)))

(declare-fun e!2589958 () Int)

(assert (=> d!1232409 (= lt!1485633 e!2589958)))

(declare-fun c!713068 () Bool)

(assert (=> d!1232409 (= c!713068 ((_ is Nil!45711) Nil!45711))))

(assert (=> d!1232409 (= (size!33554 Nil!45711) lt!1485633)))

(declare-fun b!4171829 () Bool)

(assert (=> b!4171829 (= e!2589958 0)))

(declare-fun b!4171830 () Bool)

(assert (=> b!4171830 (= e!2589958 (+ 1 (size!33554 (t!344378 Nil!45711))))))

(assert (= (and d!1232409 c!713068) b!4171829))

(assert (= (and d!1232409 (not c!713068)) b!4171830))

(declare-fun m!4762253 () Bool)

(assert (=> b!4171830 m!4762253))

(assert (=> b!4171323 d!1232409))

(assert (=> b!4171323 d!1232313))

(declare-fun d!1232411 () Bool)

(assert (=> d!1232411 (= (head!8856 p!2959) (h!51131 p!2959))))

(assert (=> b!4171346 d!1232411))

(declare-fun d!1232413 () Bool)

(assert (=> d!1232413 (= (head!8856 input!3342) (h!51131 input!3342))))

(assert (=> b!4171346 d!1232413))

(declare-fun d!1232415 () Bool)

(declare-fun lt!1485634 () List!45835)

(assert (=> d!1232415 (= (++!11670 (t!344378 p!2959) lt!1485634) (tail!6703 input!3342))))

(declare-fun e!2589961 () List!45835)

(assert (=> d!1232415 (= lt!1485634 e!2589961)))

(declare-fun c!713069 () Bool)

(assert (=> d!1232415 (= c!713069 ((_ is Cons!45711) (t!344378 p!2959)))))

(assert (=> d!1232415 (>= (size!33554 (tail!6703 input!3342)) (size!33554 (t!344378 p!2959)))))

(assert (=> d!1232415 (= (getSuffix!2732 (tail!6703 input!3342) (t!344378 p!2959)) lt!1485634)))

(declare-fun b!4171831 () Bool)

(assert (=> b!4171831 (= e!2589961 (getSuffix!2732 (tail!6703 (tail!6703 input!3342)) (t!344378 (t!344378 p!2959))))))

(declare-fun b!4171832 () Bool)

(assert (=> b!4171832 (= e!2589961 (tail!6703 input!3342))))

(assert (= (and d!1232415 c!713069) b!4171831))

(assert (= (and d!1232415 (not c!713069)) b!4171832))

(declare-fun m!4762257 () Bool)

(assert (=> d!1232415 m!4762257))

(assert (=> d!1232415 m!4761563))

(assert (=> d!1232415 m!4761953))

(assert (=> d!1232415 m!4761775))

(assert (=> b!4171831 m!4761563))

(assert (=> b!4171831 m!4761949))

(assert (=> b!4171831 m!4761949))

(declare-fun m!4762259 () Bool)

(assert (=> b!4171831 m!4762259))

(assert (=> b!4171248 d!1232415))

(assert (=> b!4171248 d!1232307))

(declare-fun b!4171838 () Bool)

(declare-fun res!1709487 () Bool)

(declare-fun e!2589965 () Bool)

(assert (=> b!4171838 (=> (not res!1709487) (not e!2589965))))

(declare-fun lt!1485635 () List!45835)

(assert (=> b!4171838 (= res!1709487 (= (size!33554 lt!1485635) (+ (size!33554 p!2959) (size!33554 lt!1485350))))))

(declare-fun b!4171837 () Bool)

(declare-fun e!2589964 () List!45835)

(assert (=> b!4171837 (= e!2589964 (Cons!45711 (h!51131 p!2959) (++!11670 (t!344378 p!2959) lt!1485350)))))

(declare-fun b!4171836 () Bool)

(assert (=> b!4171836 (= e!2589964 lt!1485350)))

(declare-fun b!4171839 () Bool)

(assert (=> b!4171839 (= e!2589965 (or (not (= lt!1485350 Nil!45711)) (= lt!1485635 p!2959)))))

(declare-fun d!1232417 () Bool)

(assert (=> d!1232417 e!2589965))

(declare-fun res!1709488 () Bool)

(assert (=> d!1232417 (=> (not res!1709488) (not e!2589965))))

(assert (=> d!1232417 (= res!1709488 (= (content!7105 lt!1485635) ((_ map or) (content!7105 p!2959) (content!7105 lt!1485350))))))

(assert (=> d!1232417 (= lt!1485635 e!2589964)))

(declare-fun c!713070 () Bool)

(assert (=> d!1232417 (= c!713070 ((_ is Nil!45711) p!2959))))

(assert (=> d!1232417 (= (++!11670 p!2959 lt!1485350) lt!1485635)))

(assert (= (and d!1232417 c!713070) b!4171836))

(assert (= (and d!1232417 (not c!713070)) b!4171837))

(assert (= (and d!1232417 res!1709488) b!4171838))

(assert (= (and b!4171838 res!1709487) b!4171839))

(declare-fun m!4762261 () Bool)

(assert (=> b!4171838 m!4762261))

(assert (=> b!4171838 m!4761499))

(declare-fun m!4762263 () Bool)

(assert (=> b!4171838 m!4762263))

(declare-fun m!4762265 () Bool)

(assert (=> b!4171837 m!4762265))

(declare-fun m!4762267 () Bool)

(assert (=> d!1232417 m!4762267))

(declare-fun m!4762269 () Bool)

(assert (=> d!1232417 m!4762269))

(declare-fun m!4762271 () Bool)

(assert (=> d!1232417 m!4762271))

(assert (=> d!1232185 d!1232417))

(assert (=> d!1232185 d!1232313))

(assert (=> d!1232185 d!1232203))

(declare-fun d!1232419 () Bool)

(declare-fun isBalanced!3730 (Conc!13791) Bool)

(assert (=> d!1232419 (= (inv!60243 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))) (isBalanced!3730 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))))

(declare-fun bs!596062 () Bool)

(assert (= bs!596062 d!1232419))

(declare-fun m!4762277 () Bool)

(assert (=> bs!596062 m!4762277))

(assert (=> tb!249779 d!1232419))

(assert (=> b!4171382 d!1232299))

(declare-fun b!4171861 () Bool)

(declare-fun res!1709490 () Bool)

(declare-fun e!2589974 () Bool)

(assert (=> b!4171861 (=> (not res!1709490) (not e!2589974))))

(declare-fun call!291315 () Bool)

(assert (=> b!4171861 (= res!1709490 call!291315)))

(declare-fun e!2589977 () Bool)

(assert (=> b!4171861 (= e!2589977 e!2589974)))

(declare-fun b!4171862 () Bool)

(declare-fun res!1709489 () Bool)

(declare-fun e!2589973 () Bool)

(assert (=> b!4171862 (=> res!1709489 e!2589973)))

(assert (=> b!4171862 (= res!1709489 (not ((_ is Concat!20296) (regex!7580 rBis!167))))))

(assert (=> b!4171862 (= e!2589977 e!2589973)))

(declare-fun b!4171863 () Bool)

(declare-fun e!2589978 () Bool)

(declare-fun e!2589972 () Bool)

(assert (=> b!4171863 (= e!2589978 e!2589972)))

(declare-fun c!713072 () Bool)

(assert (=> b!4171863 (= c!713072 ((_ is Star!12485) (regex!7580 rBis!167)))))

(declare-fun bm!291310 () Bool)

(declare-fun c!713071 () Bool)

(declare-fun call!291317 () Bool)

(assert (=> bm!291310 (= call!291317 (validRegex!5602 (ite c!713072 (reg!12814 (regex!7580 rBis!167)) (ite c!713071 (regOne!25483 (regex!7580 rBis!167)) (regOne!25482 (regex!7580 rBis!167))))))))

(declare-fun b!4171864 () Bool)

(declare-fun e!2589976 () Bool)

(assert (=> b!4171864 (= e!2589976 call!291317)))

(declare-fun b!4171865 () Bool)

(assert (=> b!4171865 (= e!2589972 e!2589977)))

(assert (=> b!4171865 (= c!713071 ((_ is Union!12485) (regex!7580 rBis!167)))))

(declare-fun b!4171866 () Bool)

(declare-fun call!291316 () Bool)

(assert (=> b!4171866 (= e!2589974 call!291316)))

(declare-fun b!4171868 () Bool)

(declare-fun e!2589975 () Bool)

(assert (=> b!4171868 (= e!2589975 call!291316)))

(declare-fun bm!291311 () Bool)

(assert (=> bm!291311 (= call!291315 call!291317)))

(declare-fun d!1232421 () Bool)

(declare-fun res!1709492 () Bool)

(assert (=> d!1232421 (=> res!1709492 e!2589978)))

(assert (=> d!1232421 (= res!1709492 ((_ is ElementMatch!12485) (regex!7580 rBis!167)))))

(assert (=> d!1232421 (= (validRegex!5602 (regex!7580 rBis!167)) e!2589978)))

(declare-fun b!4171867 () Bool)

(assert (=> b!4171867 (= e!2589972 e!2589976)))

(declare-fun res!1709493 () Bool)

(assert (=> b!4171867 (= res!1709493 (not (nullable!4379 (reg!12814 (regex!7580 rBis!167)))))))

(assert (=> b!4171867 (=> (not res!1709493) (not e!2589976))))

(declare-fun bm!291312 () Bool)

(assert (=> bm!291312 (= call!291316 (validRegex!5602 (ite c!713071 (regTwo!25483 (regex!7580 rBis!167)) (regTwo!25482 (regex!7580 rBis!167)))))))

(declare-fun b!4171869 () Bool)

(assert (=> b!4171869 (= e!2589973 e!2589975)))

(declare-fun res!1709491 () Bool)

(assert (=> b!4171869 (=> (not res!1709491) (not e!2589975))))

(assert (=> b!4171869 (= res!1709491 call!291315)))

(assert (= (and d!1232421 (not res!1709492)) b!4171863))

(assert (= (and b!4171863 c!713072) b!4171867))

(assert (= (and b!4171863 (not c!713072)) b!4171865))

(assert (= (and b!4171867 res!1709493) b!4171864))

(assert (= (and b!4171865 c!713071) b!4171861))

(assert (= (and b!4171865 (not c!713071)) b!4171862))

(assert (= (and b!4171861 res!1709490) b!4171866))

(assert (= (and b!4171862 (not res!1709489)) b!4171869))

(assert (= (and b!4171869 res!1709491) b!4171868))

(assert (= (or b!4171866 b!4171868) bm!291312))

(assert (= (or b!4171861 b!4171869) bm!291311))

(assert (= (or b!4171864 bm!291311) bm!291310))

(declare-fun m!4762279 () Bool)

(assert (=> bm!291310 m!4762279))

(declare-fun m!4762281 () Bool)

(assert (=> b!4171867 m!4762281))

(declare-fun m!4762283 () Bool)

(assert (=> bm!291312 m!4762283))

(assert (=> d!1232135 d!1232421))

(declare-fun d!1232423 () Bool)

(assert (=> d!1232423 (= (nullable!4379 (regex!7580 rBis!167)) (nullableFct!1210 (regex!7580 rBis!167)))))

(declare-fun bs!596063 () Bool)

(assert (= bs!596063 d!1232423))

(declare-fun m!4762285 () Bool)

(assert (=> bs!596063 m!4762285))

(assert (=> b!4171062 d!1232423))

(assert (=> b!4171380 d!1232411))

(declare-fun d!1232425 () Bool)

(assert (=> d!1232425 (= (head!8856 pBis!107) (h!51131 pBis!107))))

(assert (=> b!4171077 d!1232425))

(assert (=> b!4171077 d!1232413))

(declare-fun d!1232427 () Bool)

(assert (=> d!1232427 (= (isEmpty!27045 (tail!6703 p!2959)) ((_ is Nil!45711) (tail!6703 p!2959)))))

(assert (=> b!4171389 d!1232427))

(declare-fun d!1232429 () Bool)

(assert (=> d!1232429 (= (tail!6703 p!2959) (t!344378 p!2959))))

(assert (=> b!4171389 d!1232429))

(declare-fun bs!596064 () Bool)

(declare-fun d!1232431 () Bool)

(assert (= bs!596064 (and d!1232431 d!1232197)))

(declare-fun lambda!129264 () Int)

(assert (=> bs!596064 (= (and (= (toChars!10119 (transformation!7580 rBis!167)) (toChars!10119 (transformation!7580 r!4142))) (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 r!4142)))) (= lambda!129264 lambda!129241))))

(declare-fun bs!596065 () Bool)

(assert (= bs!596065 (and d!1232431 d!1232315)))

(assert (=> bs!596065 (= (and (= (toChars!10119 (transformation!7580 rBis!167)) (toChars!10119 (transformation!7580 (h!51133 rules!3843)))) (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 (h!51133 rules!3843))))) (= lambda!129264 lambda!129252))))

(assert (=> d!1232431 true))

(assert (=> d!1232431 (< (dynLambda!19599 order!24109 (toChars!10119 (transformation!7580 rBis!167))) (dynLambda!19598 order!24107 lambda!129264))))

(assert (=> d!1232431 true))

(assert (=> d!1232431 (< (dynLambda!19597 order!24105 (toValue!10260 (transformation!7580 rBis!167))) (dynLambda!19598 order!24107 lambda!129264))))

(assert (=> d!1232431 (= (semiInverseModEq!3288 (toChars!10119 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 rBis!167))) (Forall!1559 lambda!129264))))

(declare-fun bs!596066 () Bool)

(assert (= bs!596066 d!1232431))

(declare-fun m!4762287 () Bool)

(assert (=> bs!596066 m!4762287))

(assert (=> d!1232207 d!1232431))

(assert (=> b!4171264 d!1232313))

(assert (=> b!4171387 d!1232411))

(assert (=> b!4171262 d!1232413))

(declare-fun d!1232433 () Bool)

(assert (=> d!1232433 (= (list!16525 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))) (list!16526 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))))

(declare-fun bs!596067 () Bool)

(assert (= bs!596067 d!1232433))

(declare-fun m!4762289 () Bool)

(assert (=> bs!596067 m!4762289))

(assert (=> d!1232197 d!1232433))

(declare-fun d!1232435 () Bool)

(assert (=> d!1232435 (= (list!16525 lt!1485297) (list!16526 (c!712908 lt!1485297)))))

(declare-fun bs!596068 () Bool)

(assert (= bs!596068 d!1232435))

(declare-fun m!4762291 () Bool)

(assert (=> bs!596068 m!4762291))

(assert (=> d!1232197 d!1232435))

(declare-fun d!1232437 () Bool)

(declare-fun dynLambda!19604 (Int BalanceConc!27176) Bool)

(assert (=> d!1232437 (dynLambda!19604 lambda!129241 lt!1485297)))

(declare-fun lt!1485638 () Unit!64779)

(declare-fun choose!25533 (Int BalanceConc!27176) Unit!64779)

(assert (=> d!1232437 (= lt!1485638 (choose!25533 lambda!129241 lt!1485297))))

(assert (=> d!1232437 (Forall!1559 lambda!129241)))

(assert (=> d!1232437 (= (ForallOf!1022 lambda!129241 lt!1485297) lt!1485638)))

(declare-fun b_lambda!122553 () Bool)

(assert (=> (not b_lambda!122553) (not d!1232437)))

(declare-fun bs!596069 () Bool)

(assert (= bs!596069 d!1232437))

(declare-fun m!4762299 () Bool)

(assert (=> bs!596069 m!4762299))

(declare-fun m!4762301 () Bool)

(assert (=> bs!596069 m!4762301))

(declare-fun m!4762303 () Bool)

(assert (=> bs!596069 m!4762303))

(assert (=> d!1232197 d!1232437))

(declare-fun d!1232441 () Bool)

(assert (=> d!1232441 (= (isEmpty!27045 p!2959) ((_ is Nil!45711) p!2959))))

(assert (=> d!1232217 d!1232441))

(assert (=> d!1232217 d!1232231))

(declare-fun d!1232443 () Bool)

(assert (=> d!1232443 (= (inv!60237 (tag!8444 (h!51133 (t!344380 rules!3843)))) (= (mod (str.len (value!236561 (tag!8444 (h!51133 (t!344380 rules!3843))))) 2) 0))))

(assert (=> b!4171448 d!1232443))

(declare-fun d!1232447 () Bool)

(declare-fun res!1709494 () Bool)

(declare-fun e!2589998 () Bool)

(assert (=> d!1232447 (=> (not res!1709494) (not e!2589998))))

(assert (=> d!1232447 (= res!1709494 (semiInverseModEq!3288 (toChars!10119 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toValue!10260 (transformation!7580 (h!51133 (t!344380 rules!3843))))))))

(assert (=> d!1232447 (= (inv!60239 (transformation!7580 (h!51133 (t!344380 rules!3843)))) e!2589998)))

(declare-fun b!4171927 () Bool)

(assert (=> b!4171927 (= e!2589998 (equivClasses!3187 (toChars!10119 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toValue!10260 (transformation!7580 (h!51133 (t!344380 rules!3843))))))))

(assert (= (and d!1232447 res!1709494) b!4171927))

(declare-fun m!4762305 () Bool)

(assert (=> d!1232447 m!4762305))

(declare-fun m!4762307 () Bool)

(assert (=> b!4171927 m!4762307))

(assert (=> b!4171448 d!1232447))

(assert (=> b!4171320 d!1232293))

(declare-fun d!1232449 () Bool)

(assert (=> d!1232449 (= (apply!10545 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))) (seqFromList!5605 (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372))))) (dynLambda!19601 (toValue!10260 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372))))) (seqFromList!5605 (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372))))))))

(declare-fun b_lambda!122559 () Bool)

(assert (=> (not b_lambda!122559) (not d!1232449)))

(declare-fun tb!249847 () Bool)

(declare-fun t!344468 () Bool)

(assert (=> (and b!4171015 (= (toValue!10260 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344468) tb!249847))

(declare-fun result!304378 () Bool)

(assert (=> tb!249847 (= result!304378 (inv!21 (dynLambda!19601 (toValue!10260 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372))))) (seqFromList!5605 (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372)))))))))

(declare-fun m!4762309 () Bool)

(assert (=> tb!249847 m!4762309))

(assert (=> d!1232449 t!344468))

(declare-fun b_and!325821 () Bool)

(assert (= b_and!325739 (and (=> t!344468 result!304378) b_and!325821)))

(declare-fun t!344470 () Bool)

(declare-fun tb!249849 () Bool)

(assert (=> (and b!4171017 (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344470) tb!249849))

(declare-fun result!304380 () Bool)

(assert (= result!304380 result!304378))

(assert (=> d!1232449 t!344470))

(declare-fun b_and!325823 () Bool)

(assert (= b_and!325741 (and (=> t!344470 result!304380) b_and!325823)))

(declare-fun t!344472 () Bool)

(declare-fun tb!249851 () Bool)

(assert (=> (and b!4171028 (= (toValue!10260 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344472) tb!249851))

(declare-fun result!304382 () Bool)

(assert (= result!304382 result!304378))

(assert (=> d!1232449 t!344472))

(declare-fun b_and!325825 () Bool)

(assert (= b_and!325743 (and (=> t!344472 result!304382) b_and!325825)))

(declare-fun tb!249853 () Bool)

(declare-fun t!344474 () Bool)

(assert (=> (and b!4171449 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toValue!10260 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344474) tb!249853))

(declare-fun result!304384 () Bool)

(assert (= result!304384 result!304378))

(assert (=> d!1232449 t!344474))

(declare-fun b_and!325827 () Bool)

(assert (= b_and!325745 (and (=> t!344474 result!304384) b_and!325827)))

(assert (=> d!1232449 m!4761767))

(declare-fun m!4762311 () Bool)

(assert (=> d!1232449 m!4762311))

(assert (=> b!4171320 d!1232449))

(declare-fun d!1232451 () Bool)

(assert (=> d!1232451 (= (seqFromList!5605 (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372)))) (fromListB!2571 (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372)))))))

(declare-fun bs!596072 () Bool)

(assert (= bs!596072 d!1232451))

(declare-fun m!4762313 () Bool)

(assert (=> bs!596072 m!4762313))

(assert (=> b!4171320 d!1232451))

(declare-fun d!1232453 () Bool)

(declare-fun e!2590002 () Bool)

(assert (=> d!1232453 e!2590002))

(declare-fun res!1709497 () Bool)

(assert (=> d!1232453 (=> (not res!1709497) (not e!2590002))))

(declare-fun lt!1485641 () BalanceConc!27176)

(assert (=> d!1232453 (= res!1709497 (= (list!16525 lt!1485641) p!2959))))

(declare-fun fromList!909 (List!45835) Conc!13791)

(assert (=> d!1232453 (= lt!1485641 (BalanceConc!27177 (fromList!909 p!2959)))))

(assert (=> d!1232453 (= (fromListB!2571 p!2959) lt!1485641)))

(declare-fun b!4171930 () Bool)

(assert (=> b!4171930 (= e!2590002 (isBalanced!3730 (fromList!909 p!2959)))))

(assert (= (and d!1232453 res!1709497) b!4171930))

(declare-fun m!4762315 () Bool)

(assert (=> d!1232453 m!4762315))

(declare-fun m!4762317 () Bool)

(assert (=> d!1232453 m!4762317))

(assert (=> b!4171930 m!4762317))

(assert (=> b!4171930 m!4762317))

(declare-fun m!4762319 () Bool)

(assert (=> b!4171930 m!4762319))

(assert (=> d!1232193 d!1232453))

(declare-fun b!4171931 () Bool)

(declare-fun res!1709499 () Bool)

(declare-fun e!2590005 () Bool)

(assert (=> b!4171931 (=> (not res!1709499) (not e!2590005))))

(declare-fun call!291318 () Bool)

(assert (=> b!4171931 (= res!1709499 call!291318)))

(declare-fun e!2590008 () Bool)

(assert (=> b!4171931 (= e!2590008 e!2590005)))

(declare-fun b!4171932 () Bool)

(declare-fun res!1709498 () Bool)

(declare-fun e!2590004 () Bool)

(assert (=> b!4171932 (=> res!1709498 e!2590004)))

(assert (=> b!4171932 (= res!1709498 (not ((_ is Concat!20296) (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142)))))))))

(assert (=> b!4171932 (= e!2590008 e!2590004)))

(declare-fun b!4171933 () Bool)

(declare-fun e!2590009 () Bool)

(declare-fun e!2590003 () Bool)

(assert (=> b!4171933 (= e!2590009 e!2590003)))

(declare-fun c!713075 () Bool)

(assert (=> b!4171933 (= c!713075 ((_ is Star!12485) (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))))))

(declare-fun c!713074 () Bool)

(declare-fun bm!291313 () Bool)

(declare-fun call!291320 () Bool)

(assert (=> bm!291313 (= call!291320 (validRegex!5602 (ite c!713075 (reg!12814 (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))) (ite c!713074 (regOne!25483 (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))) (regOne!25482 (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142)))))))))))

(declare-fun b!4171934 () Bool)

(declare-fun e!2590007 () Bool)

(assert (=> b!4171934 (= e!2590007 call!291320)))

(declare-fun b!4171935 () Bool)

(assert (=> b!4171935 (= e!2590003 e!2590008)))

(assert (=> b!4171935 (= c!713074 ((_ is Union!12485) (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))))))

(declare-fun b!4171936 () Bool)

(declare-fun call!291319 () Bool)

(assert (=> b!4171936 (= e!2590005 call!291319)))

(declare-fun b!4171938 () Bool)

(declare-fun e!2590006 () Bool)

(assert (=> b!4171938 (= e!2590006 call!291319)))

(declare-fun bm!291314 () Bool)

(assert (=> bm!291314 (= call!291318 call!291320)))

(declare-fun d!1232455 () Bool)

(declare-fun res!1709501 () Bool)

(assert (=> d!1232455 (=> res!1709501 e!2590009)))

(assert (=> d!1232455 (= res!1709501 ((_ is ElementMatch!12485) (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))))))

(assert (=> d!1232455 (= (validRegex!5602 (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))) e!2590009)))

(declare-fun b!4171937 () Bool)

(assert (=> b!4171937 (= e!2590003 e!2590007)))

(declare-fun res!1709502 () Bool)

(assert (=> b!4171937 (= res!1709502 (not (nullable!4379 (reg!12814 (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))))))))

(assert (=> b!4171937 (=> (not res!1709502) (not e!2590007))))

(declare-fun bm!291315 () Bool)

(assert (=> bm!291315 (= call!291319 (validRegex!5602 (ite c!713074 (regTwo!25483 (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))) (regTwo!25482 (ite c!712961 (reg!12814 (regex!7580 r!4142)) (ite c!712960 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))))))))

(declare-fun b!4171939 () Bool)

(assert (=> b!4171939 (= e!2590004 e!2590006)))

(declare-fun res!1709500 () Bool)

(assert (=> b!4171939 (=> (not res!1709500) (not e!2590006))))

(assert (=> b!4171939 (= res!1709500 call!291318)))

(assert (= (and d!1232455 (not res!1709501)) b!4171933))

(assert (= (and b!4171933 c!713075) b!4171937))

(assert (= (and b!4171933 (not c!713075)) b!4171935))

(assert (= (and b!4171937 res!1709502) b!4171934))

(assert (= (and b!4171935 c!713074) b!4171931))

(assert (= (and b!4171935 (not c!713074)) b!4171932))

(assert (= (and b!4171931 res!1709499) b!4171936))

(assert (= (and b!4171932 (not res!1709498)) b!4171939))

(assert (= (and b!4171939 res!1709500) b!4171938))

(assert (= (or b!4171936 b!4171938) bm!291315))

(assert (= (or b!4171931 b!4171939) bm!291314))

(assert (= (or b!4171934 bm!291314) bm!291313))

(declare-fun m!4762321 () Bool)

(assert (=> bm!291313 m!4762321))

(declare-fun m!4762323 () Bool)

(assert (=> b!4171937 m!4762323))

(declare-fun m!4762325 () Bool)

(assert (=> bm!291315 m!4762325))

(assert (=> bm!291231 d!1232455))

(declare-fun d!1232457 () Bool)

(declare-fun res!1709503 () Bool)

(declare-fun e!2590010 () Bool)

(assert (=> d!1232457 (=> (not res!1709503) (not e!2590010))))

(assert (=> d!1232457 (= res!1709503 (validRegex!5602 (regex!7580 (h!51133 rules!3843))))))

(assert (=> d!1232457 (= (ruleValid!3298 thiss!25986 (h!51133 rules!3843)) e!2590010)))

(declare-fun b!4171940 () Bool)

(declare-fun res!1709504 () Bool)

(assert (=> b!4171940 (=> (not res!1709504) (not e!2590010))))

(assert (=> b!4171940 (= res!1709504 (not (nullable!4379 (regex!7580 (h!51133 rules!3843)))))))

(declare-fun b!4171941 () Bool)

(assert (=> b!4171941 (= e!2590010 (not (= (tag!8444 (h!51133 rules!3843)) (String!52917 ""))))))

(assert (= (and d!1232457 res!1709503) b!4171940))

(assert (= (and b!4171940 res!1709504) b!4171941))

(declare-fun m!4762327 () Bool)

(assert (=> d!1232457 m!4762327))

(declare-fun m!4762329 () Bool)

(assert (=> b!4171940 m!4762329))

(assert (=> b!4171220 d!1232457))

(declare-fun d!1232459 () Bool)

(assert (=> d!1232459 true))

(declare-fun lambda!129267 () Int)

(declare-fun order!24113 () Int)

(declare-fun dynLambda!19605 (Int Int) Int)

(assert (=> d!1232459 (< (dynLambda!19597 order!24105 (toValue!10260 (transformation!7580 r!4142))) (dynLambda!19605 order!24113 lambda!129267))))

(declare-fun Forall2!1159 (Int) Bool)

(assert (=> d!1232459 (= (equivClasses!3187 (toChars!10119 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 r!4142))) (Forall2!1159 lambda!129267))))

(declare-fun bs!596073 () Bool)

(assert (= bs!596073 d!1232459))

(declare-fun m!4762331 () Bool)

(assert (=> bs!596073 m!4762331))

(assert (=> b!4171338 d!1232459))

(declare-fun d!1232461 () Bool)

(declare-fun lt!1485642 () Bool)

(assert (=> d!1232461 (= lt!1485642 (select (content!7104 (t!344380 rules!3843)) rBis!167))))

(declare-fun e!2590014 () Bool)

(assert (=> d!1232461 (= lt!1485642 e!2590014)))

(declare-fun res!1709508 () Bool)

(assert (=> d!1232461 (=> (not res!1709508) (not e!2590014))))

(assert (=> d!1232461 (= res!1709508 ((_ is Cons!45713) (t!344380 rules!3843)))))

(assert (=> d!1232461 (= (contains!9381 (t!344380 rules!3843) rBis!167) lt!1485642)))

(declare-fun b!4171946 () Bool)

(declare-fun e!2590013 () Bool)

(assert (=> b!4171946 (= e!2590014 e!2590013)))

(declare-fun res!1709507 () Bool)

(assert (=> b!4171946 (=> res!1709507 e!2590013)))

(assert (=> b!4171946 (= res!1709507 (= (h!51133 (t!344380 rules!3843)) rBis!167))))

(declare-fun b!4171947 () Bool)

(assert (=> b!4171947 (= e!2590013 (contains!9381 (t!344380 (t!344380 rules!3843)) rBis!167))))

(assert (= (and d!1232461 res!1709508) b!4171946))

(assert (= (and b!4171946 (not res!1709507)) b!4171947))

(assert (=> d!1232461 m!4761935))

(declare-fun m!4762333 () Bool)

(assert (=> d!1232461 m!4762333))

(declare-fun m!4762335 () Bool)

(assert (=> b!4171947 m!4762335))

(assert (=> b!4171344 d!1232461))

(assert (=> b!4171379 d!1232427))

(assert (=> b!4171379 d!1232429))

(declare-fun bs!596074 () Bool)

(declare-fun d!1232463 () Bool)

(assert (= bs!596074 (and d!1232463 d!1232197)))

(declare-fun lambda!129268 () Int)

(assert (=> bs!596074 (= lambda!129268 lambda!129241)))

(declare-fun bs!596075 () Bool)

(assert (= bs!596075 (and d!1232463 d!1232315)))

(assert (=> bs!596075 (= (and (= (toChars!10119 (transformation!7580 r!4142)) (toChars!10119 (transformation!7580 (h!51133 rules!3843)))) (= (toValue!10260 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 (h!51133 rules!3843))))) (= lambda!129268 lambda!129252))))

(declare-fun bs!596076 () Bool)

(assert (= bs!596076 (and d!1232463 d!1232431)))

(assert (=> bs!596076 (= (and (= (toChars!10119 (transformation!7580 r!4142)) (toChars!10119 (transformation!7580 rBis!167))) (= (toValue!10260 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 rBis!167)))) (= lambda!129268 lambda!129264))))

(declare-fun b!4171948 () Bool)

(declare-fun e!2590015 () Bool)

(assert (=> b!4171948 (= e!2590015 true)))

(assert (=> d!1232463 e!2590015))

(assert (= d!1232463 b!4171948))

(assert (=> b!4171948 (< (dynLambda!19597 order!24105 (toValue!10260 (transformation!7580 r!4142))) (dynLambda!19598 order!24107 lambda!129268))))

(assert (=> b!4171948 (< (dynLambda!19599 order!24109 (toChars!10119 (transformation!7580 r!4142))) (dynLambda!19598 order!24107 lambda!129268))))

(assert (=> d!1232463 (= (list!16525 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) (seqFromList!5605 (_1!24921 lt!1485368))))) (list!16525 (seqFromList!5605 (_1!24921 lt!1485368))))))

(declare-fun lt!1485643 () Unit!64779)

(assert (=> d!1232463 (= lt!1485643 (ForallOf!1022 lambda!129268 (seqFromList!5605 (_1!24921 lt!1485368))))))

(assert (=> d!1232463 (= (lemmaSemiInverse!2346 (transformation!7580 r!4142) (seqFromList!5605 (_1!24921 lt!1485368))) lt!1485643)))

(declare-fun b_lambda!122561 () Bool)

(assert (=> (not b_lambda!122561) (not d!1232463)))

(declare-fun t!344476 () Bool)

(declare-fun tb!249855 () Bool)

(assert (=> (and b!4171015 (= (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toChars!10119 (transformation!7580 r!4142))) t!344476) tb!249855))

(declare-fun b!4171949 () Bool)

(declare-fun e!2590016 () Bool)

(declare-fun tp!1274590 () Bool)

(assert (=> b!4171949 (= e!2590016 (and (inv!60242 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) (seqFromList!5605 (_1!24921 lt!1485368)))))) tp!1274590))))

(declare-fun result!304386 () Bool)

(assert (=> tb!249855 (= result!304386 (and (inv!60243 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) (seqFromList!5605 (_1!24921 lt!1485368))))) e!2590016))))

(assert (= tb!249855 b!4171949))

(declare-fun m!4762337 () Bool)

(assert (=> b!4171949 m!4762337))

(declare-fun m!4762339 () Bool)

(assert (=> tb!249855 m!4762339))

(assert (=> d!1232463 t!344476))

(declare-fun b_and!325829 () Bool)

(assert (= b_and!325757 (and (=> t!344476 result!304386) b_and!325829)))

(declare-fun t!344478 () Bool)

(declare-fun tb!249857 () Bool)

(assert (=> (and b!4171017 (= (toChars!10119 (transformation!7580 rBis!167)) (toChars!10119 (transformation!7580 r!4142))) t!344478) tb!249857))

(declare-fun result!304388 () Bool)

(assert (= result!304388 result!304386))

(assert (=> d!1232463 t!344478))

(declare-fun b_and!325831 () Bool)

(assert (= b_and!325759 (and (=> t!344478 result!304388) b_and!325831)))

(declare-fun t!344480 () Bool)

(declare-fun tb!249859 () Bool)

(assert (=> (and b!4171028 (= (toChars!10119 (transformation!7580 r!4142)) (toChars!10119 (transformation!7580 r!4142))) t!344480) tb!249859))

(declare-fun result!304390 () Bool)

(assert (= result!304390 result!304386))

(assert (=> d!1232463 t!344480))

(declare-fun b_and!325833 () Bool)

(assert (= b_and!325761 (and (=> t!344480 result!304390) b_and!325833)))

(declare-fun tb!249861 () Bool)

(declare-fun t!344482 () Bool)

(assert (=> (and b!4171449 (= (toChars!10119 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toChars!10119 (transformation!7580 r!4142))) t!344482) tb!249861))

(declare-fun result!304392 () Bool)

(assert (= result!304392 result!304386))

(assert (=> d!1232463 t!344482))

(declare-fun b_and!325835 () Bool)

(assert (= b_and!325763 (and (=> t!344482 result!304392) b_and!325835)))

(declare-fun b_lambda!122563 () Bool)

(assert (=> (not b_lambda!122563) (not d!1232463)))

(declare-fun t!344484 () Bool)

(declare-fun tb!249863 () Bool)

(assert (=> (and b!4171015 (= (toValue!10260 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 r!4142))) t!344484) tb!249863))

(declare-fun result!304394 () Bool)

(assert (=> tb!249863 (= result!304394 (inv!21 (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) (seqFromList!5605 (_1!24921 lt!1485368)))))))

(declare-fun m!4762341 () Bool)

(assert (=> tb!249863 m!4762341))

(assert (=> d!1232463 t!344484))

(declare-fun b_and!325837 () Bool)

(assert (= b_and!325821 (and (=> t!344484 result!304394) b_and!325837)))

(declare-fun t!344486 () Bool)

(declare-fun tb!249865 () Bool)

(assert (=> (and b!4171017 (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 r!4142))) t!344486) tb!249865))

(declare-fun result!304396 () Bool)

(assert (= result!304396 result!304394))

(assert (=> d!1232463 t!344486))

(declare-fun b_and!325839 () Bool)

(assert (= b_and!325823 (and (=> t!344486 result!304396) b_and!325839)))

(declare-fun t!344488 () Bool)

(declare-fun tb!249867 () Bool)

(assert (=> (and b!4171028 (= (toValue!10260 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 r!4142))) t!344488) tb!249867))

(declare-fun result!304398 () Bool)

(assert (= result!304398 result!304394))

(assert (=> d!1232463 t!344488))

(declare-fun b_and!325841 () Bool)

(assert (= b_and!325825 (and (=> t!344488 result!304398) b_and!325841)))

(declare-fun t!344490 () Bool)

(declare-fun tb!249869 () Bool)

(assert (=> (and b!4171449 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toValue!10260 (transformation!7580 r!4142))) t!344490) tb!249869))

(declare-fun result!304400 () Bool)

(assert (= result!304400 result!304394))

(assert (=> d!1232463 t!344490))

(declare-fun b_and!325843 () Bool)

(assert (= b_and!325827 (and (=> t!344490 result!304400) b_and!325843)))

(assert (=> d!1232463 m!4761757))

(declare-fun m!4762343 () Bool)

(assert (=> d!1232463 m!4762343))

(assert (=> d!1232463 m!4761757))

(declare-fun m!4762345 () Bool)

(assert (=> d!1232463 m!4762345))

(assert (=> d!1232463 m!4761757))

(declare-fun m!4762347 () Bool)

(assert (=> d!1232463 m!4762347))

(assert (=> d!1232463 m!4762345))

(declare-fun m!4762349 () Bool)

(assert (=> d!1232463 m!4762349))

(assert (=> d!1232463 m!4762349))

(declare-fun m!4762351 () Bool)

(assert (=> d!1232463 m!4762351))

(assert (=> b!4171326 d!1232463))

(assert (=> b!4171326 d!1232323))

(assert (=> b!4171326 d!1232409))

(declare-fun d!1232465 () Bool)

(declare-fun lt!1485646 () Int)

(assert (=> d!1232465 (= lt!1485646 (size!33554 (list!16525 (seqFromList!5605 (_1!24921 lt!1485368)))))))

(declare-fun size!33557 (Conc!13791) Int)

(assert (=> d!1232465 (= lt!1485646 (size!33557 (c!712908 (seqFromList!5605 (_1!24921 lt!1485368)))))))

(assert (=> d!1232465 (= (size!33556 (seqFromList!5605 (_1!24921 lt!1485368))) lt!1485646)))

(declare-fun bs!596077 () Bool)

(assert (= bs!596077 d!1232465))

(assert (=> bs!596077 m!4761757))

(assert (=> bs!596077 m!4762343))

(assert (=> bs!596077 m!4762343))

(declare-fun m!4762353 () Bool)

(assert (=> bs!596077 m!4762353))

(declare-fun m!4762355 () Bool)

(assert (=> bs!596077 m!4762355))

(assert (=> b!4171326 d!1232465))

(declare-fun d!1232467 () Bool)

(assert (=> d!1232467 (= (seqFromList!5605 (_1!24921 lt!1485368)) (fromListB!2571 (_1!24921 lt!1485368)))))

(declare-fun bs!596078 () Bool)

(assert (= bs!596078 d!1232467))

(declare-fun m!4762357 () Bool)

(assert (=> bs!596078 m!4762357))

(assert (=> b!4171326 d!1232467))

(declare-fun d!1232469 () Bool)

(assert (=> d!1232469 (= (apply!10545 (transformation!7580 r!4142) (seqFromList!5605 (_1!24921 lt!1485368))) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) (seqFromList!5605 (_1!24921 lt!1485368))))))

(declare-fun b_lambda!122565 () Bool)

(assert (=> (not b_lambda!122565) (not d!1232469)))

(assert (=> d!1232469 t!344484))

(declare-fun b_and!325845 () Bool)

(assert (= b_and!325837 (and (=> t!344484 result!304394) b_and!325845)))

(assert (=> d!1232469 t!344486))

(declare-fun b_and!325847 () Bool)

(assert (= b_and!325839 (and (=> t!344486 result!304396) b_and!325847)))

(assert (=> d!1232469 t!344488))

(declare-fun b_and!325849 () Bool)

(assert (= b_and!325841 (and (=> t!344488 result!304398) b_and!325849)))

(assert (=> d!1232469 t!344490))

(declare-fun b_and!325851 () Bool)

(assert (= b_and!325843 (and (=> t!344490 result!304400) b_and!325851)))

(assert (=> d!1232469 m!4761757))

(assert (=> d!1232469 m!4762345))

(assert (=> b!4171326 d!1232469))

(declare-fun d!1232471 () Bool)

(assert (=> d!1232471 (= (isEmpty!27045 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))) ((_ is Nil!45711) (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))))))

(assert (=> b!4171326 d!1232471))

(assert (=> b!4171326 d!1232313))

(declare-fun d!1232473 () Bool)

(declare-fun e!2590020 () Bool)

(assert (=> d!1232473 e!2590020))

(declare-fun res!1709511 () Bool)

(assert (=> d!1232473 (=> res!1709511 e!2590020)))

(assert (=> d!1232473 (= res!1709511 (isEmpty!27045 (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))))))

(declare-fun lt!1485649 () Unit!64779)

(declare-fun choose!25534 (Regex!12485 List!45835) Unit!64779)

(assert (=> d!1232473 (= lt!1485649 (choose!25534 (regex!7580 r!4142) input!3342))))

(assert (=> d!1232473 (validRegex!5602 (regex!7580 r!4142))))

(assert (=> d!1232473 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1544 (regex!7580 r!4142) input!3342) lt!1485649)))

(declare-fun b!4171952 () Bool)

(assert (=> b!4171952 (= e!2590020 (matchR!6224 (regex!7580 r!4142) (_1!24921 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 (size!33554 Nil!45711) input!3342 input!3342 (size!33554 input!3342)))))))

(assert (= (and d!1232473 (not res!1709511)) b!4171952))

(assert (=> d!1232473 m!4761567))

(assert (=> d!1232473 m!4761755))

(declare-fun m!4762359 () Bool)

(assert (=> d!1232473 m!4762359))

(assert (=> d!1232473 m!4761741))

(assert (=> d!1232473 m!4761567))

(assert (=> d!1232473 m!4761743))

(assert (=> d!1232473 m!4761485))

(assert (=> d!1232473 m!4761741))

(assert (=> b!4171952 m!4761741))

(assert (=> b!4171952 m!4761567))

(assert (=> b!4171952 m!4761741))

(assert (=> b!4171952 m!4761567))

(assert (=> b!4171952 m!4761743))

(assert (=> b!4171952 m!4761745))

(assert (=> b!4171326 d!1232473))

(declare-fun d!1232475 () Bool)

(assert (=> d!1232475 (= (isEmpty!27044 lt!1485372) (not ((_ is Some!9775) lt!1485372)))))

(assert (=> d!1232201 d!1232475))

(declare-fun d!1232477 () Bool)

(assert (=> d!1232477 (= (isEmpty!27045 (_1!24921 lt!1485368)) ((_ is Nil!45711) (_1!24921 lt!1485368)))))

(assert (=> d!1232201 d!1232477))

(declare-fun d!1232479 () Bool)

(declare-fun lt!1485667 () tuple2!43574)

(assert (=> d!1232479 (= (++!11670 (_1!24921 lt!1485667) (_2!24921 lt!1485667)) input!3342)))

(declare-fun sizeTr!306 (List!45835 Int) Int)

(assert (=> d!1232479 (= lt!1485667 (findLongestMatchInner!1571 (regex!7580 r!4142) Nil!45711 0 input!3342 input!3342 (sizeTr!306 input!3342 0)))))

(declare-fun lt!1485671 () Unit!64779)

(declare-fun lt!1485666 () Unit!64779)

(assert (=> d!1232479 (= lt!1485671 lt!1485666)))

(declare-fun lt!1485670 () List!45835)

(declare-fun lt!1485669 () Int)

(assert (=> d!1232479 (= (sizeTr!306 lt!1485670 lt!1485669) (+ (size!33554 lt!1485670) lt!1485669))))

(declare-fun lemmaSizeTrEqualsSize!305 (List!45835 Int) Unit!64779)

(assert (=> d!1232479 (= lt!1485666 (lemmaSizeTrEqualsSize!305 lt!1485670 lt!1485669))))

(assert (=> d!1232479 (= lt!1485669 0)))

(assert (=> d!1232479 (= lt!1485670 Nil!45711)))

(declare-fun lt!1485668 () Unit!64779)

(declare-fun lt!1485673 () Unit!64779)

(assert (=> d!1232479 (= lt!1485668 lt!1485673)))

(declare-fun lt!1485672 () Int)

(assert (=> d!1232479 (= (sizeTr!306 input!3342 lt!1485672) (+ (size!33554 input!3342) lt!1485672))))

(assert (=> d!1232479 (= lt!1485673 (lemmaSizeTrEqualsSize!305 input!3342 lt!1485672))))

(assert (=> d!1232479 (= lt!1485672 0)))

(assert (=> d!1232479 (validRegex!5602 (regex!7580 r!4142))))

(assert (=> d!1232479 (= (findLongestMatch!1484 (regex!7580 r!4142) input!3342) lt!1485667)))

(declare-fun bs!596079 () Bool)

(assert (= bs!596079 d!1232479))

(declare-fun m!4762361 () Bool)

(assert (=> bs!596079 m!4762361))

(assert (=> bs!596079 m!4761567))

(assert (=> bs!596079 m!4761485))

(declare-fun m!4762363 () Bool)

(assert (=> bs!596079 m!4762363))

(declare-fun m!4762365 () Bool)

(assert (=> bs!596079 m!4762365))

(declare-fun m!4762367 () Bool)

(assert (=> bs!596079 m!4762367))

(assert (=> bs!596079 m!4762363))

(declare-fun m!4762369 () Bool)

(assert (=> bs!596079 m!4762369))

(declare-fun m!4762371 () Bool)

(assert (=> bs!596079 m!4762371))

(declare-fun m!4762373 () Bool)

(assert (=> bs!596079 m!4762373))

(declare-fun m!4762375 () Bool)

(assert (=> bs!596079 m!4762375))

(assert (=> d!1232201 d!1232479))

(assert (=> d!1232201 d!1232225))

(assert (=> b!4171079 d!1232313))

(assert (=> b!4171079 d!1232219))

(declare-fun b!4171953 () Bool)

(declare-fun e!2590027 () Bool)

(assert (=> b!4171953 (= e!2590027 (matchR!6224 (derivativeStep!3769 (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959)) (head!8856 (tail!6703 p!2959))) (tail!6703 (tail!6703 p!2959))))))

(declare-fun b!4171954 () Bool)

(declare-fun e!2590025 () Bool)

(declare-fun lt!1485674 () Bool)

(declare-fun call!291321 () Bool)

(assert (=> b!4171954 (= e!2590025 (= lt!1485674 call!291321))))

(declare-fun b!4171955 () Bool)

(declare-fun res!1709514 () Bool)

(declare-fun e!2590022 () Bool)

(assert (=> b!4171955 (=> res!1709514 e!2590022)))

(assert (=> b!4171955 (= res!1709514 (not (isEmpty!27045 (tail!6703 (tail!6703 p!2959)))))))

(declare-fun b!4171956 () Bool)

(declare-fun e!2590023 () Bool)

(assert (=> b!4171956 (= e!2590023 (= (head!8856 (tail!6703 p!2959)) (c!712909 (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959)))))))

(declare-fun b!4171957 () Bool)

(declare-fun e!2590021 () Bool)

(assert (=> b!4171957 (= e!2590021 (not lt!1485674))))

(declare-fun b!4171958 () Bool)

(assert (=> b!4171958 (= e!2590027 (nullable!4379 (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959))))))

(declare-fun b!4171959 () Bool)

(declare-fun res!1709512 () Bool)

(declare-fun e!2590026 () Bool)

(assert (=> b!4171959 (=> res!1709512 e!2590026)))

(assert (=> b!4171959 (= res!1709512 e!2590023)))

(declare-fun res!1709519 () Bool)

(assert (=> b!4171959 (=> (not res!1709519) (not e!2590023))))

(assert (=> b!4171959 (= res!1709519 lt!1485674)))

(declare-fun d!1232481 () Bool)

(assert (=> d!1232481 e!2590025))

(declare-fun c!713076 () Bool)

(assert (=> d!1232481 (= c!713076 ((_ is EmptyExpr!12485) (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959))))))

(assert (=> d!1232481 (= lt!1485674 e!2590027)))

(declare-fun c!713077 () Bool)

(assert (=> d!1232481 (= c!713077 (isEmpty!27045 (tail!6703 p!2959)))))

(assert (=> d!1232481 (validRegex!5602 (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959)))))

(assert (=> d!1232481 (= (matchR!6224 (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959)) (tail!6703 p!2959)) lt!1485674)))

(declare-fun b!4171960 () Bool)

(declare-fun res!1709517 () Bool)

(assert (=> b!4171960 (=> (not res!1709517) (not e!2590023))))

(assert (=> b!4171960 (= res!1709517 (not call!291321))))

(declare-fun bm!291316 () Bool)

(assert (=> bm!291316 (= call!291321 (isEmpty!27045 (tail!6703 p!2959)))))

(declare-fun b!4171961 () Bool)

(declare-fun e!2590024 () Bool)

(assert (=> b!4171961 (= e!2590026 e!2590024)))

(declare-fun res!1709513 () Bool)

(assert (=> b!4171961 (=> (not res!1709513) (not e!2590024))))

(assert (=> b!4171961 (= res!1709513 (not lt!1485674))))

(declare-fun b!4171962 () Bool)

(declare-fun res!1709515 () Bool)

(assert (=> b!4171962 (=> res!1709515 e!2590026)))

(assert (=> b!4171962 (= res!1709515 (not ((_ is ElementMatch!12485) (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959)))))))

(assert (=> b!4171962 (= e!2590021 e!2590026)))

(declare-fun b!4171963 () Bool)

(assert (=> b!4171963 (= e!2590022 (not (= (head!8856 (tail!6703 p!2959)) (c!712909 (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959))))))))

(declare-fun b!4171964 () Bool)

(assert (=> b!4171964 (= e!2590024 e!2590022)))

(declare-fun res!1709516 () Bool)

(assert (=> b!4171964 (=> res!1709516 e!2590022)))

(assert (=> b!4171964 (= res!1709516 call!291321)))

(declare-fun b!4171965 () Bool)

(declare-fun res!1709518 () Bool)

(assert (=> b!4171965 (=> (not res!1709518) (not e!2590023))))

(assert (=> b!4171965 (= res!1709518 (isEmpty!27045 (tail!6703 (tail!6703 p!2959))))))

(declare-fun b!4171966 () Bool)

(assert (=> b!4171966 (= e!2590025 e!2590021)))

(declare-fun c!713078 () Bool)

(assert (=> b!4171966 (= c!713078 ((_ is EmptyLang!12485) (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959))))))

(assert (= (and d!1232481 c!713077) b!4171958))

(assert (= (and d!1232481 (not c!713077)) b!4171953))

(assert (= (and d!1232481 c!713076) b!4171954))

(assert (= (and d!1232481 (not c!713076)) b!4171966))

(assert (= (and b!4171966 c!713078) b!4171957))

(assert (= (and b!4171966 (not c!713078)) b!4171962))

(assert (= (and b!4171962 (not res!1709515)) b!4171959))

(assert (= (and b!4171959 res!1709519) b!4171960))

(assert (= (and b!4171960 res!1709517) b!4171965))

(assert (= (and b!4171965 res!1709518) b!4171956))

(assert (= (and b!4171959 (not res!1709512)) b!4171961))

(assert (= (and b!4171961 res!1709513) b!4171964))

(assert (= (and b!4171964 (not res!1709516)) b!4171955))

(assert (= (and b!4171955 (not res!1709514)) b!4171963))

(assert (= (or b!4171954 b!4171960 b!4171964) bm!291316))

(assert (=> b!4171956 m!4761791))

(declare-fun m!4762377 () Bool)

(assert (=> b!4171956 m!4762377))

(assert (=> b!4171953 m!4761791))

(assert (=> b!4171953 m!4762377))

(assert (=> b!4171953 m!4761797))

(assert (=> b!4171953 m!4762377))

(declare-fun m!4762379 () Bool)

(assert (=> b!4171953 m!4762379))

(assert (=> b!4171953 m!4761791))

(declare-fun m!4762381 () Bool)

(assert (=> b!4171953 m!4762381))

(assert (=> b!4171953 m!4762379))

(assert (=> b!4171953 m!4762381))

(declare-fun m!4762383 () Bool)

(assert (=> b!4171953 m!4762383))

(assert (=> b!4171965 m!4761791))

(assert (=> b!4171965 m!4762381))

(assert (=> b!4171965 m!4762381))

(declare-fun m!4762385 () Bool)

(assert (=> b!4171965 m!4762385))

(assert (=> b!4171963 m!4761791))

(assert (=> b!4171963 m!4762377))

(assert (=> d!1232481 m!4761791))

(assert (=> d!1232481 m!4761801))

(assert (=> d!1232481 m!4761797))

(declare-fun m!4762387 () Bool)

(assert (=> d!1232481 m!4762387))

(assert (=> b!4171958 m!4761797))

(declare-fun m!4762389 () Bool)

(assert (=> b!4171958 m!4762389))

(assert (=> b!4171955 m!4761791))

(assert (=> b!4171955 m!4762381))

(assert (=> b!4171955 m!4762381))

(assert (=> b!4171955 m!4762385))

(assert (=> bm!291316 m!4761791))

(assert (=> bm!291316 m!4761801))

(assert (=> b!4171377 d!1232481))

(declare-fun e!2590039 () Regex!12485)

(declare-fun b!4171987 () Bool)

(declare-fun call!291333 () Regex!12485)

(declare-fun call!291331 () Regex!12485)

(assert (=> b!4171987 (= e!2590039 (Union!12485 (Concat!20296 call!291331 (regTwo!25482 (regex!7580 r!4142))) call!291333))))

(declare-fun d!1232483 () Bool)

(declare-fun lt!1485677 () Regex!12485)

(assert (=> d!1232483 (validRegex!5602 lt!1485677)))

(declare-fun e!2590042 () Regex!12485)

(assert (=> d!1232483 (= lt!1485677 e!2590042)))

(declare-fun c!713091 () Bool)

(assert (=> d!1232483 (= c!713091 (or ((_ is EmptyExpr!12485) (regex!7580 r!4142)) ((_ is EmptyLang!12485) (regex!7580 r!4142))))))

(assert (=> d!1232483 (validRegex!5602 (regex!7580 r!4142))))

(assert (=> d!1232483 (= (derivativeStep!3769 (regex!7580 r!4142) (head!8856 p!2959)) lt!1485677)))

(declare-fun bm!291325 () Bool)

(declare-fun call!291332 () Regex!12485)

(assert (=> bm!291325 (= call!291333 call!291332)))

(declare-fun b!4171988 () Bool)

(assert (=> b!4171988 (= e!2590042 EmptyLang!12485)))

(declare-fun b!4171989 () Bool)

(declare-fun e!2590038 () Regex!12485)

(assert (=> b!4171989 (= e!2590038 (Concat!20296 call!291332 (regex!7580 r!4142)))))

(declare-fun bm!291326 () Bool)

(declare-fun c!713093 () Bool)

(assert (=> bm!291326 (= call!291331 (derivativeStep!3769 (ite c!713093 (regOne!25483 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))) (head!8856 p!2959)))))

(declare-fun b!4171990 () Bool)

(assert (=> b!4171990 (= c!713093 ((_ is Union!12485) (regex!7580 r!4142)))))

(declare-fun e!2590041 () Regex!12485)

(declare-fun e!2590040 () Regex!12485)

(assert (=> b!4171990 (= e!2590041 e!2590040)))

(declare-fun b!4171991 () Bool)

(assert (=> b!4171991 (= e!2590041 (ite (= (head!8856 p!2959) (c!712909 (regex!7580 r!4142))) EmptyExpr!12485 EmptyLang!12485))))

(declare-fun b!4171992 () Bool)

(assert (=> b!4171992 (= e!2590042 e!2590041)))

(declare-fun c!713089 () Bool)

(assert (=> b!4171992 (= c!713089 ((_ is ElementMatch!12485) (regex!7580 r!4142)))))

(declare-fun c!713092 () Bool)

(declare-fun c!713090 () Bool)

(declare-fun call!291330 () Regex!12485)

(declare-fun bm!291327 () Bool)

(assert (=> bm!291327 (= call!291330 (derivativeStep!3769 (ite c!713093 (regTwo!25483 (regex!7580 r!4142)) (ite c!713092 (reg!12814 (regex!7580 r!4142)) (ite c!713090 (regTwo!25482 (regex!7580 r!4142)) (regOne!25482 (regex!7580 r!4142))))) (head!8856 p!2959)))))

(declare-fun bm!291328 () Bool)

(assert (=> bm!291328 (= call!291332 call!291330)))

(declare-fun b!4171993 () Bool)

(assert (=> b!4171993 (= e!2590039 (Union!12485 (Concat!20296 call!291333 (regTwo!25482 (regex!7580 r!4142))) EmptyLang!12485))))

(declare-fun b!4171994 () Bool)

(assert (=> b!4171994 (= c!713090 (nullable!4379 (regOne!25482 (regex!7580 r!4142))))))

(assert (=> b!4171994 (= e!2590038 e!2590039)))

(declare-fun b!4171995 () Bool)

(assert (=> b!4171995 (= e!2590040 (Union!12485 call!291331 call!291330))))

(declare-fun b!4171996 () Bool)

(assert (=> b!4171996 (= e!2590040 e!2590038)))

(assert (=> b!4171996 (= c!713092 ((_ is Star!12485) (regex!7580 r!4142)))))

(assert (= (and d!1232483 c!713091) b!4171988))

(assert (= (and d!1232483 (not c!713091)) b!4171992))

(assert (= (and b!4171992 c!713089) b!4171991))

(assert (= (and b!4171992 (not c!713089)) b!4171990))

(assert (= (and b!4171990 c!713093) b!4171995))

(assert (= (and b!4171990 (not c!713093)) b!4171996))

(assert (= (and b!4171996 c!713092) b!4171989))

(assert (= (and b!4171996 (not c!713092)) b!4171994))

(assert (= (and b!4171994 c!713090) b!4171987))

(assert (= (and b!4171994 (not c!713090)) b!4171993))

(assert (= (or b!4171987 b!4171993) bm!291325))

(assert (= (or b!4171989 bm!291325) bm!291328))

(assert (= (or b!4171995 bm!291328) bm!291327))

(assert (= (or b!4171995 b!4171987) bm!291326))

(declare-fun m!4762391 () Bool)

(assert (=> d!1232483 m!4762391))

(assert (=> d!1232483 m!4761485))

(assert (=> bm!291326 m!4761795))

(declare-fun m!4762393 () Bool)

(assert (=> bm!291326 m!4762393))

(assert (=> bm!291327 m!4761795))

(declare-fun m!4762395 () Bool)

(assert (=> bm!291327 m!4762395))

(declare-fun m!4762397 () Bool)

(assert (=> b!4171994 m!4762397))

(assert (=> b!4171377 d!1232483))

(assert (=> b!4171377 d!1232411))

(assert (=> b!4171377 d!1232429))

(assert (=> b!4171324 d!1232293))

(declare-fun d!1232485 () Bool)

(declare-fun lt!1485678 () Int)

(assert (=> d!1232485 (>= lt!1485678 0)))

(declare-fun e!2590043 () Int)

(assert (=> d!1232485 (= lt!1485678 e!2590043)))

(declare-fun c!713094 () Bool)

(assert (=> d!1232485 (= c!713094 ((_ is Nil!45711) (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372)))))))

(assert (=> d!1232485 (= (size!33554 (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372)))) lt!1485678)))

(declare-fun b!4171997 () Bool)

(assert (=> b!4171997 (= e!2590043 0)))

(declare-fun b!4171998 () Bool)

(assert (=> b!4171998 (= e!2590043 (+ 1 (size!33554 (t!344378 (originalCharacters!7968 (_1!24919 (get!14847 lt!1485372)))))))))

(assert (= (and d!1232485 c!713094) b!4171997))

(assert (= (and d!1232485 (not c!713094)) b!4171998))

(declare-fun m!4762399 () Bool)

(assert (=> b!4171998 m!4762399))

(assert (=> b!4171324 d!1232485))

(declare-fun b!4171999 () Bool)

(declare-fun e!2590046 () Bool)

(declare-fun e!2590045 () Bool)

(assert (=> b!4171999 (= e!2590046 e!2590045)))

(declare-fun res!1709521 () Bool)

(assert (=> b!4171999 (=> (not res!1709521) (not e!2590045))))

(assert (=> b!4171999 (= res!1709521 (not ((_ is Nil!45711) (tail!6703 input!3342))))))

(declare-fun b!4172001 () Bool)

(assert (=> b!4172001 (= e!2590045 (isPrefix!4437 (tail!6703 (tail!6703 p!2959)) (tail!6703 (tail!6703 input!3342))))))

(declare-fun d!1232487 () Bool)

(declare-fun e!2590044 () Bool)

(assert (=> d!1232487 e!2590044))

(declare-fun res!1709522 () Bool)

(assert (=> d!1232487 (=> res!1709522 e!2590044)))

(declare-fun lt!1485679 () Bool)

(assert (=> d!1232487 (= res!1709522 (not lt!1485679))))

(assert (=> d!1232487 (= lt!1485679 e!2590046)))

(declare-fun res!1709520 () Bool)

(assert (=> d!1232487 (=> res!1709520 e!2590046)))

(assert (=> d!1232487 (= res!1709520 ((_ is Nil!45711) (tail!6703 p!2959)))))

(assert (=> d!1232487 (= (isPrefix!4437 (tail!6703 p!2959) (tail!6703 input!3342)) lt!1485679)))

(declare-fun b!4172002 () Bool)

(assert (=> b!4172002 (= e!2590044 (>= (size!33554 (tail!6703 input!3342)) (size!33554 (tail!6703 p!2959))))))

(declare-fun b!4172000 () Bool)

(declare-fun res!1709523 () Bool)

(assert (=> b!4172000 (=> (not res!1709523) (not e!2590045))))

(assert (=> b!4172000 (= res!1709523 (= (head!8856 (tail!6703 p!2959)) (head!8856 (tail!6703 input!3342))))))

(assert (= (and d!1232487 (not res!1709520)) b!4171999))

(assert (= (and b!4171999 res!1709521) b!4172000))

(assert (= (and b!4172000 res!1709523) b!4172001))

(assert (= (and d!1232487 (not res!1709522)) b!4172002))

(assert (=> b!4172001 m!4761791))

(assert (=> b!4172001 m!4762381))

(assert (=> b!4172001 m!4761563))

(assert (=> b!4172001 m!4761949))

(assert (=> b!4172001 m!4762381))

(assert (=> b!4172001 m!4761949))

(declare-fun m!4762401 () Bool)

(assert (=> b!4172001 m!4762401))

(assert (=> b!4172002 m!4761563))

(assert (=> b!4172002 m!4761953))

(assert (=> b!4172002 m!4761791))

(declare-fun m!4762403 () Bool)

(assert (=> b!4172002 m!4762403))

(assert (=> b!4172000 m!4761791))

(assert (=> b!4172000 m!4762377))

(assert (=> b!4172000 m!4761563))

(assert (=> b!4172000 m!4761959))

(assert (=> b!4171347 d!1232487))

(assert (=> b!4171347 d!1232429))

(assert (=> b!4171347 d!1232307))

(assert (=> d!1232213 d!1232295))

(declare-fun d!1232489 () Bool)

(declare-fun lt!1485680 () Int)

(assert (=> d!1232489 (>= lt!1485680 0)))

(declare-fun e!2590047 () Int)

(assert (=> d!1232489 (= lt!1485680 e!2590047)))

(declare-fun c!713095 () Bool)

(assert (=> d!1232489 (= c!713095 ((_ is Nil!45711) (_2!24919 (get!14847 lt!1485372))))))

(assert (=> d!1232489 (= (size!33554 (_2!24919 (get!14847 lt!1485372))) lt!1485680)))

(declare-fun b!4172003 () Bool)

(assert (=> b!4172003 (= e!2590047 0)))

(declare-fun b!4172004 () Bool)

(assert (=> b!4172004 (= e!2590047 (+ 1 (size!33554 (t!344378 (_2!24919 (get!14847 lt!1485372))))))))

(assert (= (and d!1232489 c!713095) b!4172003))

(assert (= (and d!1232489 (not c!713095)) b!4172004))

(declare-fun m!4762405 () Bool)

(assert (=> b!4172004 m!4762405))

(assert (=> b!4171322 d!1232489))

(assert (=> b!4171322 d!1232293))

(assert (=> b!4171322 d!1232313))

(declare-fun d!1232491 () Bool)

(assert (=> d!1232491 (= (nullable!4379 (reg!12814 (regex!7580 r!4142))) (nullableFct!1210 (reg!12814 (regex!7580 r!4142))))))

(declare-fun bs!596080 () Bool)

(assert (= bs!596080 d!1232491))

(declare-fun m!4762407 () Bool)

(assert (=> bs!596080 m!4762407))

(assert (=> b!4171422 d!1232491))

(declare-fun b!4172005 () Bool)

(declare-fun e!2590054 () Bool)

(assert (=> b!4172005 (= e!2590054 (matchR!6224 (derivativeStep!3769 (regex!7580 r!4142) (head!8856 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372)))))) (tail!6703 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372)))))))))

(declare-fun b!4172006 () Bool)

(declare-fun e!2590052 () Bool)

(declare-fun lt!1485681 () Bool)

(declare-fun call!291334 () Bool)

(assert (=> b!4172006 (= e!2590052 (= lt!1485681 call!291334))))

(declare-fun b!4172007 () Bool)

(declare-fun res!1709526 () Bool)

(declare-fun e!2590049 () Bool)

(assert (=> b!4172007 (=> res!1709526 e!2590049)))

(assert (=> b!4172007 (= res!1709526 (not (isEmpty!27045 (tail!6703 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))))))))

(declare-fun b!4172008 () Bool)

(declare-fun e!2590050 () Bool)

(assert (=> b!4172008 (= e!2590050 (= (head!8856 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))) (c!712909 (regex!7580 r!4142))))))

(declare-fun b!4172009 () Bool)

(declare-fun e!2590048 () Bool)

(assert (=> b!4172009 (= e!2590048 (not lt!1485681))))

(declare-fun b!4172010 () Bool)

(assert (=> b!4172010 (= e!2590054 (nullable!4379 (regex!7580 r!4142)))))

(declare-fun b!4172011 () Bool)

(declare-fun res!1709524 () Bool)

(declare-fun e!2590053 () Bool)

(assert (=> b!4172011 (=> res!1709524 e!2590053)))

(assert (=> b!4172011 (= res!1709524 e!2590050)))

(declare-fun res!1709531 () Bool)

(assert (=> b!4172011 (=> (not res!1709531) (not e!2590050))))

(assert (=> b!4172011 (= res!1709531 lt!1485681)))

(declare-fun d!1232493 () Bool)

(assert (=> d!1232493 e!2590052))

(declare-fun c!713096 () Bool)

(assert (=> d!1232493 (= c!713096 ((_ is EmptyExpr!12485) (regex!7580 r!4142)))))

(assert (=> d!1232493 (= lt!1485681 e!2590054)))

(declare-fun c!713097 () Bool)

(assert (=> d!1232493 (= c!713097 (isEmpty!27045 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))))))

(assert (=> d!1232493 (validRegex!5602 (regex!7580 r!4142))))

(assert (=> d!1232493 (= (matchR!6224 (regex!7580 r!4142) (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))) lt!1485681)))

(declare-fun b!4172012 () Bool)

(declare-fun res!1709529 () Bool)

(assert (=> b!4172012 (=> (not res!1709529) (not e!2590050))))

(assert (=> b!4172012 (= res!1709529 (not call!291334))))

(declare-fun bm!291329 () Bool)

(assert (=> bm!291329 (= call!291334 (isEmpty!27045 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))))))

(declare-fun b!4172013 () Bool)

(declare-fun e!2590051 () Bool)

(assert (=> b!4172013 (= e!2590053 e!2590051)))

(declare-fun res!1709525 () Bool)

(assert (=> b!4172013 (=> (not res!1709525) (not e!2590051))))

(assert (=> b!4172013 (= res!1709525 (not lt!1485681))))

(declare-fun b!4172014 () Bool)

(declare-fun res!1709527 () Bool)

(assert (=> b!4172014 (=> res!1709527 e!2590053)))

(assert (=> b!4172014 (= res!1709527 (not ((_ is ElementMatch!12485) (regex!7580 r!4142))))))

(assert (=> b!4172014 (= e!2590048 e!2590053)))

(declare-fun b!4172015 () Bool)

(assert (=> b!4172015 (= e!2590049 (not (= (head!8856 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372))))) (c!712909 (regex!7580 r!4142)))))))

(declare-fun b!4172016 () Bool)

(assert (=> b!4172016 (= e!2590051 e!2590049)))

(declare-fun res!1709528 () Bool)

(assert (=> b!4172016 (=> res!1709528 e!2590049)))

(assert (=> b!4172016 (= res!1709528 call!291334)))

(declare-fun b!4172017 () Bool)

(declare-fun res!1709530 () Bool)

(assert (=> b!4172017 (=> (not res!1709530) (not e!2590050))))

(assert (=> b!4172017 (= res!1709530 (isEmpty!27045 (tail!6703 (list!16525 (charsOf!5033 (_1!24919 (get!14847 lt!1485372)))))))))

(declare-fun b!4172018 () Bool)

(assert (=> b!4172018 (= e!2590052 e!2590048)))

(declare-fun c!713098 () Bool)

(assert (=> b!4172018 (= c!713098 ((_ is EmptyLang!12485) (regex!7580 r!4142)))))

(assert (= (and d!1232493 c!713097) b!4172010))

(assert (= (and d!1232493 (not c!713097)) b!4172005))

(assert (= (and d!1232493 c!713096) b!4172006))

(assert (= (and d!1232493 (not c!713096)) b!4172018))

(assert (= (and b!4172018 c!713098) b!4172009))

(assert (= (and b!4172018 (not c!713098)) b!4172014))

(assert (= (and b!4172014 (not res!1709527)) b!4172011))

(assert (= (and b!4172011 res!1709531) b!4172012))

(assert (= (and b!4172012 res!1709529) b!4172017))

(assert (= (and b!4172017 res!1709530) b!4172008))

(assert (= (and b!4172011 (not res!1709524)) b!4172013))

(assert (= (and b!4172013 res!1709525) b!4172016))

(assert (= (and b!4172016 (not res!1709528)) b!4172007))

(assert (= (and b!4172007 (not res!1709526)) b!4172015))

(assert (= (or b!4172006 b!4172012 b!4172016) bm!291329))

(assert (=> b!4172008 m!4761737))

(declare-fun m!4762409 () Bool)

(assert (=> b!4172008 m!4762409))

(assert (=> b!4172005 m!4761737))

(assert (=> b!4172005 m!4762409))

(assert (=> b!4172005 m!4762409))

(declare-fun m!4762411 () Bool)

(assert (=> b!4172005 m!4762411))

(assert (=> b!4172005 m!4761737))

(declare-fun m!4762413 () Bool)

(assert (=> b!4172005 m!4762413))

(assert (=> b!4172005 m!4762411))

(assert (=> b!4172005 m!4762413))

(declare-fun m!4762415 () Bool)

(assert (=> b!4172005 m!4762415))

(assert (=> b!4172017 m!4761737))

(assert (=> b!4172017 m!4762413))

(assert (=> b!4172017 m!4762413))

(declare-fun m!4762417 () Bool)

(assert (=> b!4172017 m!4762417))

(assert (=> b!4172015 m!4761737))

(assert (=> b!4172015 m!4762409))

(assert (=> d!1232493 m!4761737))

(declare-fun m!4762419 () Bool)

(assert (=> d!1232493 m!4762419))

(assert (=> d!1232493 m!4761485))

(assert (=> b!4172010 m!4761805))

(assert (=> b!4172007 m!4761737))

(assert (=> b!4172007 m!4762413))

(assert (=> b!4172007 m!4762413))

(assert (=> b!4172007 m!4762417))

(assert (=> bm!291329 m!4761737))

(assert (=> bm!291329 m!4762419))

(assert (=> b!4171328 d!1232493))

(assert (=> b!4171328 d!1232289))

(assert (=> b!4171328 d!1232291))

(assert (=> b!4171328 d!1232293))

(declare-fun bs!596081 () Bool)

(declare-fun d!1232495 () Bool)

(assert (= bs!596081 (and d!1232495 d!1232459)))

(declare-fun lambda!129269 () Int)

(assert (=> bs!596081 (= (= (toValue!10260 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 r!4142))) (= lambda!129269 lambda!129267))))

(assert (=> d!1232495 true))

(assert (=> d!1232495 (< (dynLambda!19597 order!24105 (toValue!10260 (transformation!7580 (h!51133 rules!3843)))) (dynLambda!19605 order!24113 lambda!129269))))

(assert (=> d!1232495 (= (equivClasses!3187 (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 (h!51133 rules!3843)))) (Forall2!1159 lambda!129269))))

(declare-fun bs!596082 () Bool)

(assert (= bs!596082 d!1232495))

(declare-fun m!4762421 () Bool)

(assert (=> bs!596082 m!4762421))

(assert (=> b!4171393 d!1232495))

(declare-fun d!1232497 () Bool)

(declare-fun lt!1485682 () Bool)

(assert (=> d!1232497 (= lt!1485682 (select (content!7104 (t!344380 rules!3843)) r!4142))))

(declare-fun e!2590056 () Bool)

(assert (=> d!1232497 (= lt!1485682 e!2590056)))

(declare-fun res!1709533 () Bool)

(assert (=> d!1232497 (=> (not res!1709533) (not e!2590056))))

(assert (=> d!1232497 (= res!1709533 ((_ is Cons!45713) (t!344380 rules!3843)))))

(assert (=> d!1232497 (= (contains!9381 (t!344380 rules!3843) r!4142) lt!1485682)))

(declare-fun b!4172019 () Bool)

(declare-fun e!2590055 () Bool)

(assert (=> b!4172019 (= e!2590056 e!2590055)))

(declare-fun res!1709532 () Bool)

(assert (=> b!4172019 (=> res!1709532 e!2590055)))

(assert (=> b!4172019 (= res!1709532 (= (h!51133 (t!344380 rules!3843)) r!4142))))

(declare-fun b!4172020 () Bool)

(assert (=> b!4172020 (= e!2590055 (contains!9381 (t!344380 (t!344380 rules!3843)) r!4142))))

(assert (= (and d!1232497 res!1709533) b!4172019))

(assert (= (and b!4172019 (not res!1709532)) b!4172020))

(assert (=> d!1232497 m!4761935))

(declare-fun m!4762423 () Bool)

(assert (=> d!1232497 m!4762423))

(declare-fun m!4762425 () Bool)

(assert (=> b!4172020 m!4762425))

(assert (=> b!4171397 d!1232497))

(declare-fun bs!596083 () Bool)

(declare-fun d!1232499 () Bool)

(assert (= bs!596083 (and d!1232499 d!1232459)))

(declare-fun lambda!129270 () Int)

(assert (=> bs!596083 (= (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 r!4142))) (= lambda!129270 lambda!129267))))

(declare-fun bs!596084 () Bool)

(assert (= bs!596084 (and d!1232499 d!1232495)))

(assert (=> bs!596084 (= (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 (h!51133 rules!3843)))) (= lambda!129270 lambda!129269))))

(assert (=> d!1232499 true))

(assert (=> d!1232499 (< (dynLambda!19597 order!24105 (toValue!10260 (transformation!7580 rBis!167))) (dynLambda!19605 order!24113 lambda!129270))))

(assert (=> d!1232499 (= (equivClasses!3187 (toChars!10119 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 rBis!167))) (Forall2!1159 lambda!129270))))

(declare-fun bs!596085 () Bool)

(assert (= bs!596085 d!1232499))

(declare-fun m!4762427 () Bool)

(assert (=> bs!596085 m!4762427))

(assert (=> b!4171337 d!1232499))

(declare-fun d!1232501 () Bool)

(declare-fun lt!1485683 () Int)

(assert (=> d!1232501 (>= lt!1485683 0)))

(declare-fun e!2590057 () Int)

(assert (=> d!1232501 (= lt!1485683 e!2590057)))

(declare-fun c!713099 () Bool)

(assert (=> d!1232501 (= c!713099 ((_ is Nil!45711) (t!344378 pBis!107)))))

(assert (=> d!1232501 (= (size!33554 (t!344378 pBis!107)) lt!1485683)))

(declare-fun b!4172021 () Bool)

(assert (=> b!4172021 (= e!2590057 0)))

(declare-fun b!4172022 () Bool)

(assert (=> b!4172022 (= e!2590057 (+ 1 (size!33554 (t!344378 (t!344378 pBis!107)))))))

(assert (= (and d!1232501 c!713099) b!4172021))

(assert (= (and d!1232501 (not c!713099)) b!4172022))

(declare-fun m!4762429 () Bool)

(assert (=> b!4172022 m!4762429))

(assert (=> b!4171392 d!1232501))

(declare-fun bs!596086 () Bool)

(declare-fun d!1232503 () Bool)

(assert (= bs!596086 (and d!1232503 d!1232197)))

(declare-fun lambda!129271 () Int)

(assert (=> bs!596086 (= lambda!129271 lambda!129241)))

(declare-fun bs!596087 () Bool)

(assert (= bs!596087 (and d!1232503 d!1232315)))

(assert (=> bs!596087 (= (and (= (toChars!10119 (transformation!7580 r!4142)) (toChars!10119 (transformation!7580 (h!51133 rules!3843)))) (= (toValue!10260 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 (h!51133 rules!3843))))) (= lambda!129271 lambda!129252))))

(declare-fun bs!596088 () Bool)

(assert (= bs!596088 (and d!1232503 d!1232431)))

(assert (=> bs!596088 (= (and (= (toChars!10119 (transformation!7580 r!4142)) (toChars!10119 (transformation!7580 rBis!167))) (= (toValue!10260 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 rBis!167)))) (= lambda!129271 lambda!129264))))

(declare-fun bs!596089 () Bool)

(assert (= bs!596089 (and d!1232503 d!1232463)))

(assert (=> bs!596089 (= lambda!129271 lambda!129268)))

(assert (=> d!1232503 true))

(assert (=> d!1232503 (< (dynLambda!19599 order!24109 (toChars!10119 (transformation!7580 r!4142))) (dynLambda!19598 order!24107 lambda!129271))))

(assert (=> d!1232503 true))

(assert (=> d!1232503 (< (dynLambda!19597 order!24105 (toValue!10260 (transformation!7580 r!4142))) (dynLambda!19598 order!24107 lambda!129271))))

(assert (=> d!1232503 (= (semiInverseModEq!3288 (toChars!10119 (transformation!7580 r!4142)) (toValue!10260 (transformation!7580 r!4142))) (Forall!1559 lambda!129271))))

(declare-fun bs!596090 () Bool)

(assert (= bs!596090 d!1232503))

(declare-fun m!4762431 () Bool)

(assert (=> bs!596090 m!4762431))

(assert (=> d!1232211 d!1232503))

(declare-fun b!4172023 () Bool)

(declare-fun e!2590060 () Bool)

(declare-fun e!2590059 () Bool)

(assert (=> b!4172023 (= e!2590060 e!2590059)))

(declare-fun res!1709535 () Bool)

(assert (=> b!4172023 (=> (not res!1709535) (not e!2590059))))

(assert (=> b!4172023 (= res!1709535 (not ((_ is Nil!45711) (tail!6703 input!3342))))))

(declare-fun b!4172025 () Bool)

(assert (=> b!4172025 (= e!2590059 (isPrefix!4437 (tail!6703 (tail!6703 input!3342)) (tail!6703 (tail!6703 input!3342))))))

(declare-fun d!1232505 () Bool)

(declare-fun e!2590058 () Bool)

(assert (=> d!1232505 e!2590058))

(declare-fun res!1709536 () Bool)

(assert (=> d!1232505 (=> res!1709536 e!2590058)))

(declare-fun lt!1485684 () Bool)

(assert (=> d!1232505 (= res!1709536 (not lt!1485684))))

(assert (=> d!1232505 (= lt!1485684 e!2590060)))

(declare-fun res!1709534 () Bool)

(assert (=> d!1232505 (=> res!1709534 e!2590060)))

(assert (=> d!1232505 (= res!1709534 ((_ is Nil!45711) (tail!6703 input!3342)))))

(assert (=> d!1232505 (= (isPrefix!4437 (tail!6703 input!3342) (tail!6703 input!3342)) lt!1485684)))

(declare-fun b!4172026 () Bool)

(assert (=> b!4172026 (= e!2590058 (>= (size!33554 (tail!6703 input!3342)) (size!33554 (tail!6703 input!3342))))))

(declare-fun b!4172024 () Bool)

(declare-fun res!1709537 () Bool)

(assert (=> b!4172024 (=> (not res!1709537) (not e!2590059))))

(assert (=> b!4172024 (= res!1709537 (= (head!8856 (tail!6703 input!3342)) (head!8856 (tail!6703 input!3342))))))

(assert (= (and d!1232505 (not res!1709534)) b!4172023))

(assert (= (and b!4172023 res!1709535) b!4172024))

(assert (= (and b!4172024 res!1709537) b!4172025))

(assert (= (and d!1232505 (not res!1709536)) b!4172026))

(assert (=> b!4172025 m!4761563))

(assert (=> b!4172025 m!4761949))

(assert (=> b!4172025 m!4761563))

(assert (=> b!4172025 m!4761949))

(assert (=> b!4172025 m!4761949))

(assert (=> b!4172025 m!4761949))

(declare-fun m!4762433 () Bool)

(assert (=> b!4172025 m!4762433))

(assert (=> b!4172026 m!4761563))

(assert (=> b!4172026 m!4761953))

(assert (=> b!4172026 m!4761563))

(assert (=> b!4172026 m!4761953))

(assert (=> b!4172024 m!4761563))

(assert (=> b!4172024 m!4761959))

(assert (=> b!4172024 m!4761563))

(assert (=> b!4172024 m!4761959))

(assert (=> b!4171263 d!1232505))

(assert (=> b!4171263 d!1232307))

(assert (=> d!1232225 d!1232231))

(assert (=> d!1232195 d!1232191))

(declare-fun d!1232507 () Bool)

(assert (=> d!1232507 (isPrefix!4437 input!3342 input!3342)))

(assert (=> d!1232507 true))

(declare-fun _$45!2045 () Unit!64779)

(assert (=> d!1232507 (= (choose!25532 input!3342 input!3342) _$45!2045)))

(declare-fun bs!596091 () Bool)

(assert (= bs!596091 d!1232507))

(assert (=> bs!596091 m!4761491))

(assert (=> d!1232195 d!1232507))

(declare-fun b!4172037 () Bool)

(declare-fun e!2590067 () Bool)

(declare-fun inv!16 (TokenValue!7810) Bool)

(assert (=> b!4172037 (= e!2590067 (inv!16 (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))

(declare-fun b!4172038 () Bool)

(declare-fun res!1709540 () Bool)

(declare-fun e!2590068 () Bool)

(assert (=> b!4172038 (=> res!1709540 e!2590068)))

(assert (=> b!4172038 (= res!1709540 (not ((_ is IntegerValue!23432) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))))))

(declare-fun e!2590069 () Bool)

(assert (=> b!4172038 (= e!2590069 e!2590068)))

(declare-fun d!1232509 () Bool)

(declare-fun c!713104 () Bool)

(assert (=> d!1232509 (= c!713104 ((_ is IntegerValue!23430) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))

(assert (=> d!1232509 (= (inv!21 (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)) e!2590067)))

(declare-fun b!4172039 () Bool)

(declare-fun inv!15 (TokenValue!7810) Bool)

(assert (=> b!4172039 (= e!2590068 (inv!15 (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))

(declare-fun b!4172040 () Bool)

(declare-fun inv!17 (TokenValue!7810) Bool)

(assert (=> b!4172040 (= e!2590069 (inv!17 (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))

(declare-fun b!4172041 () Bool)

(assert (=> b!4172041 (= e!2590067 e!2590069)))

(declare-fun c!713105 () Bool)

(assert (=> b!4172041 (= c!713105 ((_ is IntegerValue!23431) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))))

(assert (= (and d!1232509 c!713104) b!4172037))

(assert (= (and d!1232509 (not c!713104)) b!4172041))

(assert (= (and b!4172041 c!713105) b!4172040))

(assert (= (and b!4172041 (not c!713105)) b!4172038))

(assert (= (and b!4172038 (not res!1709540)) b!4172039))

(declare-fun m!4762435 () Bool)

(assert (=> b!4172037 m!4762435))

(declare-fun m!4762437 () Bool)

(assert (=> b!4172039 m!4762437))

(declare-fun m!4762439 () Bool)

(assert (=> b!4172040 m!4762439))

(assert (=> tb!249785 d!1232509))

(declare-fun d!1232511 () Bool)

(declare-fun res!1709545 () Bool)

(declare-fun e!2590074 () Bool)

(assert (=> d!1232511 (=> res!1709545 e!2590074)))

(assert (=> d!1232511 (= res!1709545 ((_ is Nil!45713) rules!3843))))

(assert (=> d!1232511 (= (forall!8470 rules!3843 lambda!129238) e!2590074)))

(declare-fun b!4172046 () Bool)

(declare-fun e!2590075 () Bool)

(assert (=> b!4172046 (= e!2590074 e!2590075)))

(declare-fun res!1709546 () Bool)

(assert (=> b!4172046 (=> (not res!1709546) (not e!2590075))))

(declare-fun dynLambda!19607 (Int Rule!14960) Bool)

(assert (=> b!4172046 (= res!1709546 (dynLambda!19607 lambda!129238 (h!51133 rules!3843)))))

(declare-fun b!4172047 () Bool)

(assert (=> b!4172047 (= e!2590075 (forall!8470 (t!344380 rules!3843) lambda!129238))))

(assert (= (and d!1232511 (not res!1709545)) b!4172046))

(assert (= (and b!4172046 res!1709546) b!4172047))

(declare-fun b_lambda!122567 () Bool)

(assert (=> (not b_lambda!122567) (not b!4172046)))

(declare-fun m!4762441 () Bool)

(assert (=> b!4172046 m!4762441))

(declare-fun m!4762443 () Bool)

(assert (=> b!4172047 m!4762443))

(assert (=> d!1232143 d!1232511))

(assert (=> bm!291224 d!1232441))

(declare-fun b!4172048 () Bool)

(declare-fun e!2590076 () Bool)

(assert (=> b!4172048 (= e!2590076 tp_is_empty!21933)))

(declare-fun b!4172050 () Bool)

(declare-fun tp!1274591 () Bool)

(assert (=> b!4172050 (= e!2590076 tp!1274591)))

(declare-fun b!4172051 () Bool)

(declare-fun tp!1274595 () Bool)

(declare-fun tp!1274593 () Bool)

(assert (=> b!4172051 (= e!2590076 (and tp!1274595 tp!1274593))))

(assert (=> b!4171448 (= tp!1274475 e!2590076)))

(declare-fun b!4172049 () Bool)

(declare-fun tp!1274592 () Bool)

(declare-fun tp!1274594 () Bool)

(assert (=> b!4172049 (= e!2590076 (and tp!1274592 tp!1274594))))

(assert (= (and b!4171448 ((_ is ElementMatch!12485) (regex!7580 (h!51133 (t!344380 rules!3843))))) b!4172048))

(assert (= (and b!4171448 ((_ is Concat!20296) (regex!7580 (h!51133 (t!344380 rules!3843))))) b!4172049))

(assert (= (and b!4171448 ((_ is Star!12485) (regex!7580 (h!51133 (t!344380 rules!3843))))) b!4172050))

(assert (= (and b!4171448 ((_ is Union!12485) (regex!7580 (h!51133 (t!344380 rules!3843))))) b!4172051))

(declare-fun b!4172052 () Bool)

(declare-fun e!2590077 () Bool)

(declare-fun tp!1274596 () Bool)

(assert (=> b!4172052 (= e!2590077 (and tp_is_empty!21933 tp!1274596))))

(assert (=> b!4171462 (= tp!1274488 e!2590077)))

(assert (= (and b!4171462 ((_ is Cons!45711) (t!344378 (t!344378 input!3342)))) b!4172052))

(declare-fun b!4172055 () Bool)

(declare-fun b_free!120751 () Bool)

(declare-fun b_next!121455 () Bool)

(assert (=> b!4172055 (= b_free!120751 (not b_next!121455))))

(declare-fun tb!249871 () Bool)

(declare-fun t!344492 () Bool)

(assert (=> (and b!4172055 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) (toValue!10260 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344492) tb!249871))

(declare-fun result!304402 () Bool)

(assert (= result!304402 result!304378))

(assert (=> d!1232449 t!344492))

(declare-fun tb!249873 () Bool)

(declare-fun t!344494 () Bool)

(assert (=> (and b!4172055 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) (toValue!10260 (transformation!7580 r!4142))) t!344494) tb!249873))

(declare-fun result!304404 () Bool)

(assert (= result!304404 result!304306))

(assert (=> d!1232197 t!344494))

(declare-fun t!344496 () Bool)

(declare-fun tb!249875 () Bool)

(assert (=> (and b!4172055 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) (toValue!10260 (transformation!7580 r!4142))) t!344496) tb!249875))

(declare-fun result!304406 () Bool)

(assert (= result!304406 result!304394))

(assert (=> d!1232463 t!344496))

(assert (=> d!1232199 t!344494))

(assert (=> d!1232469 t!344496))

(declare-fun tp!1274598 () Bool)

(declare-fun b_and!325853 () Bool)

(assert (=> b!4172055 (= tp!1274598 (and (=> t!344494 result!304404) (=> t!344492 result!304402) (=> t!344496 result!304406) b_and!325853))))

(declare-fun b_free!120753 () Bool)

(declare-fun b_next!121457 () Bool)

(assert (=> b!4172055 (= b_free!120753 (not b_next!121457))))

(declare-fun tb!249877 () Bool)

(declare-fun t!344498 () Bool)

(assert (=> (and b!4172055 (= (toChars!10119 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) (toChars!10119 (transformation!7580 r!4142))) t!344498) tb!249877))

(declare-fun result!304408 () Bool)

(assert (= result!304408 result!304298))

(assert (=> d!1232197 t!344498))

(declare-fun t!344500 () Bool)

(declare-fun tb!249879 () Bool)

(assert (=> (and b!4172055 (= (toChars!10119 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) (toChars!10119 (transformation!7580 (rule!10626 (_1!24919 (get!14847 lt!1485372)))))) t!344500) tb!249879))

(declare-fun result!304410 () Bool)

(assert (= result!304410 result!304332))

(assert (=> d!1232291 t!344500))

(declare-fun t!344502 () Bool)

(declare-fun tb!249881 () Bool)

(assert (=> (and b!4172055 (= (toChars!10119 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) (toChars!10119 (transformation!7580 r!4142))) t!344502) tb!249881))

(declare-fun result!304412 () Bool)

(assert (= result!304412 result!304386))

(assert (=> d!1232463 t!344502))

(declare-fun b_and!325855 () Bool)

(declare-fun tp!1274597 () Bool)

(assert (=> b!4172055 (= tp!1274597 (and (=> t!344498 result!304408) (=> t!344500 result!304410) (=> t!344502 result!304412) b_and!325855))))

(declare-fun e!2590079 () Bool)

(assert (=> b!4172055 (= e!2590079 (and tp!1274598 tp!1274597))))

(declare-fun e!2590081 () Bool)

(declare-fun b!4172054 () Bool)

(declare-fun tp!1274600 () Bool)

(assert (=> b!4172054 (= e!2590081 (and tp!1274600 (inv!60237 (tag!8444 (h!51133 (t!344380 (t!344380 rules!3843))))) (inv!60239 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) e!2590079))))

(declare-fun b!4172053 () Bool)

(declare-fun e!2590078 () Bool)

(declare-fun tp!1274599 () Bool)

(assert (=> b!4172053 (= e!2590078 (and e!2590081 tp!1274599))))

(assert (=> b!4171447 (= tp!1274474 e!2590078)))

(assert (= b!4172054 b!4172055))

(assert (= b!4172053 b!4172054))

(assert (= (and b!4171447 ((_ is Cons!45713) (t!344380 (t!344380 rules!3843)))) b!4172053))

(declare-fun m!4762445 () Bool)

(assert (=> b!4172054 m!4762445))

(declare-fun m!4762447 () Bool)

(assert (=> b!4172054 m!4762447))

(declare-fun b!4172056 () Bool)

(declare-fun e!2590082 () Bool)

(assert (=> b!4172056 (= e!2590082 tp_is_empty!21933)))

(declare-fun b!4172058 () Bool)

(declare-fun tp!1274601 () Bool)

(assert (=> b!4172058 (= e!2590082 tp!1274601)))

(declare-fun b!4172059 () Bool)

(declare-fun tp!1274605 () Bool)

(declare-fun tp!1274603 () Bool)

(assert (=> b!4172059 (= e!2590082 (and tp!1274605 tp!1274603))))

(assert (=> b!4171453 (= tp!1274480 e!2590082)))

(declare-fun b!4172057 () Bool)

(declare-fun tp!1274602 () Bool)

(declare-fun tp!1274604 () Bool)

(assert (=> b!4172057 (= e!2590082 (and tp!1274602 tp!1274604))))

(assert (= (and b!4171453 ((_ is ElementMatch!12485) (regOne!25483 (regex!7580 rBis!167)))) b!4172056))

(assert (= (and b!4171453 ((_ is Concat!20296) (regOne!25483 (regex!7580 rBis!167)))) b!4172057))

(assert (= (and b!4171453 ((_ is Star!12485) (regOne!25483 (regex!7580 rBis!167)))) b!4172058))

(assert (= (and b!4171453 ((_ is Union!12485) (regOne!25483 (regex!7580 rBis!167)))) b!4172059))

(declare-fun b!4172060 () Bool)

(declare-fun e!2590083 () Bool)

(assert (=> b!4172060 (= e!2590083 tp_is_empty!21933)))

(declare-fun b!4172062 () Bool)

(declare-fun tp!1274606 () Bool)

(assert (=> b!4172062 (= e!2590083 tp!1274606)))

(declare-fun b!4172063 () Bool)

(declare-fun tp!1274610 () Bool)

(declare-fun tp!1274608 () Bool)

(assert (=> b!4172063 (= e!2590083 (and tp!1274610 tp!1274608))))

(assert (=> b!4171453 (= tp!1274478 e!2590083)))

(declare-fun b!4172061 () Bool)

(declare-fun tp!1274607 () Bool)

(declare-fun tp!1274609 () Bool)

(assert (=> b!4172061 (= e!2590083 (and tp!1274607 tp!1274609))))

(assert (= (and b!4171453 ((_ is ElementMatch!12485) (regTwo!25483 (regex!7580 rBis!167)))) b!4172060))

(assert (= (and b!4171453 ((_ is Concat!20296) (regTwo!25483 (regex!7580 rBis!167)))) b!4172061))

(assert (= (and b!4171453 ((_ is Star!12485) (regTwo!25483 (regex!7580 rBis!167)))) b!4172062))

(assert (= (and b!4171453 ((_ is Union!12485) (regTwo!25483 (regex!7580 rBis!167)))) b!4172063))

(declare-fun b!4172064 () Bool)

(declare-fun e!2590084 () Bool)

(assert (=> b!4172064 (= e!2590084 tp_is_empty!21933)))

(declare-fun b!4172066 () Bool)

(declare-fun tp!1274611 () Bool)

(assert (=> b!4172066 (= e!2590084 tp!1274611)))

(declare-fun b!4172067 () Bool)

(declare-fun tp!1274615 () Bool)

(declare-fun tp!1274613 () Bool)

(assert (=> b!4172067 (= e!2590084 (and tp!1274615 tp!1274613))))

(assert (=> b!4171452 (= tp!1274476 e!2590084)))

(declare-fun b!4172065 () Bool)

(declare-fun tp!1274612 () Bool)

(declare-fun tp!1274614 () Bool)

(assert (=> b!4172065 (= e!2590084 (and tp!1274612 tp!1274614))))

(assert (= (and b!4171452 ((_ is ElementMatch!12485) (reg!12814 (regex!7580 rBis!167)))) b!4172064))

(assert (= (and b!4171452 ((_ is Concat!20296) (reg!12814 (regex!7580 rBis!167)))) b!4172065))

(assert (= (and b!4171452 ((_ is Star!12485) (reg!12814 (regex!7580 rBis!167)))) b!4172066))

(assert (= (and b!4171452 ((_ is Union!12485) (reg!12814 (regex!7580 rBis!167)))) b!4172067))

(declare-fun b!4172068 () Bool)

(declare-fun e!2590085 () Bool)

(declare-fun tp!1274616 () Bool)

(assert (=> b!4172068 (= e!2590085 (and tp_is_empty!21933 tp!1274616))))

(assert (=> b!4171464 (= tp!1274490 e!2590085)))

(assert (= (and b!4171464 ((_ is Cons!45711) (t!344378 (t!344378 pBis!107)))) b!4172068))

(declare-fun b!4172069 () Bool)

(declare-fun e!2590086 () Bool)

(assert (=> b!4172069 (= e!2590086 tp_is_empty!21933)))

(declare-fun b!4172071 () Bool)

(declare-fun tp!1274617 () Bool)

(assert (=> b!4172071 (= e!2590086 tp!1274617)))

(declare-fun b!4172072 () Bool)

(declare-fun tp!1274621 () Bool)

(declare-fun tp!1274619 () Bool)

(assert (=> b!4172072 (= e!2590086 (and tp!1274621 tp!1274619))))

(assert (=> b!4171457 (= tp!1274485 e!2590086)))

(declare-fun b!4172070 () Bool)

(declare-fun tp!1274618 () Bool)

(declare-fun tp!1274620 () Bool)

(assert (=> b!4172070 (= e!2590086 (and tp!1274618 tp!1274620))))

(assert (= (and b!4171457 ((_ is ElementMatch!12485) (regOne!25483 (regex!7580 r!4142)))) b!4172069))

(assert (= (and b!4171457 ((_ is Concat!20296) (regOne!25483 (regex!7580 r!4142)))) b!4172070))

(assert (= (and b!4171457 ((_ is Star!12485) (regOne!25483 (regex!7580 r!4142)))) b!4172071))

(assert (= (and b!4171457 ((_ is Union!12485) (regOne!25483 (regex!7580 r!4142)))) b!4172072))

(declare-fun b!4172073 () Bool)

(declare-fun e!2590087 () Bool)

(assert (=> b!4172073 (= e!2590087 tp_is_empty!21933)))

(declare-fun b!4172075 () Bool)

(declare-fun tp!1274622 () Bool)

(assert (=> b!4172075 (= e!2590087 tp!1274622)))

(declare-fun b!4172076 () Bool)

(declare-fun tp!1274626 () Bool)

(declare-fun tp!1274624 () Bool)

(assert (=> b!4172076 (= e!2590087 (and tp!1274626 tp!1274624))))

(assert (=> b!4171457 (= tp!1274483 e!2590087)))

(declare-fun b!4172074 () Bool)

(declare-fun tp!1274623 () Bool)

(declare-fun tp!1274625 () Bool)

(assert (=> b!4172074 (= e!2590087 (and tp!1274623 tp!1274625))))

(assert (= (and b!4171457 ((_ is ElementMatch!12485) (regTwo!25483 (regex!7580 r!4142)))) b!4172073))

(assert (= (and b!4171457 ((_ is Concat!20296) (regTwo!25483 (regex!7580 r!4142)))) b!4172074))

(assert (= (and b!4171457 ((_ is Star!12485) (regTwo!25483 (regex!7580 r!4142)))) b!4172075))

(assert (= (and b!4171457 ((_ is Union!12485) (regTwo!25483 (regex!7580 r!4142)))) b!4172076))

(declare-fun tp!1274634 () Bool)

(declare-fun tp!1274635 () Bool)

(declare-fun b!4172085 () Bool)

(declare-fun e!2590092 () Bool)

(assert (=> b!4172085 (= e!2590092 (and (inv!60242 (left!34071 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))))) tp!1274634 (inv!60242 (right!34401 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))))) tp!1274635))))

(declare-fun b!4172087 () Bool)

(declare-fun e!2590093 () Bool)

(declare-fun tp!1274633 () Bool)

(assert (=> b!4172087 (= e!2590093 tp!1274633)))

(declare-fun b!4172086 () Bool)

(declare-fun inv!60249 (IArray!27587) Bool)

(assert (=> b!4172086 (= e!2590092 (and (inv!60249 (xs!17097 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))))) e!2590093))))

(assert (=> b!4171299 (= tp!1274448 (and (inv!60242 (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297)))) e!2590092))))

(assert (= (and b!4171299 ((_ is Node!13791) (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))))) b!4172085))

(assert (= b!4172086 b!4172087))

(assert (= (and b!4171299 ((_ is Leaf!21324) (c!712908 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))))) b!4172086))

(declare-fun m!4762449 () Bool)

(assert (=> b!4172085 m!4762449))

(declare-fun m!4762451 () Bool)

(assert (=> b!4172085 m!4762451))

(declare-fun m!4762453 () Bool)

(assert (=> b!4172086 m!4762453))

(assert (=> b!4171299 m!4761717))

(declare-fun b!4172088 () Bool)

(declare-fun e!2590094 () Bool)

(assert (=> b!4172088 (= e!2590094 tp_is_empty!21933)))

(declare-fun b!4172090 () Bool)

(declare-fun tp!1274636 () Bool)

(assert (=> b!4172090 (= e!2590094 tp!1274636)))

(declare-fun b!4172091 () Bool)

(declare-fun tp!1274640 () Bool)

(declare-fun tp!1274638 () Bool)

(assert (=> b!4172091 (= e!2590094 (and tp!1274640 tp!1274638))))

(assert (=> b!4171456 (= tp!1274481 e!2590094)))

(declare-fun b!4172089 () Bool)

(declare-fun tp!1274637 () Bool)

(declare-fun tp!1274639 () Bool)

(assert (=> b!4172089 (= e!2590094 (and tp!1274637 tp!1274639))))

(assert (= (and b!4171456 ((_ is ElementMatch!12485) (reg!12814 (regex!7580 r!4142)))) b!4172088))

(assert (= (and b!4171456 ((_ is Concat!20296) (reg!12814 (regex!7580 r!4142)))) b!4172089))

(assert (= (and b!4171456 ((_ is Star!12485) (reg!12814 (regex!7580 r!4142)))) b!4172090))

(assert (= (and b!4171456 ((_ is Union!12485) (reg!12814 (regex!7580 r!4142)))) b!4172091))

(declare-fun b!4172092 () Bool)

(declare-fun e!2590095 () Bool)

(assert (=> b!4172092 (= e!2590095 tp_is_empty!21933)))

(declare-fun b!4172094 () Bool)

(declare-fun tp!1274641 () Bool)

(assert (=> b!4172094 (= e!2590095 tp!1274641)))

(declare-fun b!4172095 () Bool)

(declare-fun tp!1274645 () Bool)

(declare-fun tp!1274643 () Bool)

(assert (=> b!4172095 (= e!2590095 (and tp!1274645 tp!1274643))))

(assert (=> b!4171438 (= tp!1274463 e!2590095)))

(declare-fun b!4172093 () Bool)

(declare-fun tp!1274642 () Bool)

(declare-fun tp!1274644 () Bool)

(assert (=> b!4172093 (= e!2590095 (and tp!1274642 tp!1274644))))

(assert (= (and b!4171438 ((_ is ElementMatch!12485) (regOne!25483 (regex!7580 (h!51133 rules!3843))))) b!4172092))

(assert (= (and b!4171438 ((_ is Concat!20296) (regOne!25483 (regex!7580 (h!51133 rules!3843))))) b!4172093))

(assert (= (and b!4171438 ((_ is Star!12485) (regOne!25483 (regex!7580 (h!51133 rules!3843))))) b!4172094))

(assert (= (and b!4171438 ((_ is Union!12485) (regOne!25483 (regex!7580 (h!51133 rules!3843))))) b!4172095))

(declare-fun b!4172096 () Bool)

(declare-fun e!2590096 () Bool)

(assert (=> b!4172096 (= e!2590096 tp_is_empty!21933)))

(declare-fun b!4172098 () Bool)

(declare-fun tp!1274646 () Bool)

(assert (=> b!4172098 (= e!2590096 tp!1274646)))

(declare-fun b!4172099 () Bool)

(declare-fun tp!1274650 () Bool)

(declare-fun tp!1274648 () Bool)

(assert (=> b!4172099 (= e!2590096 (and tp!1274650 tp!1274648))))

(assert (=> b!4171438 (= tp!1274461 e!2590096)))

(declare-fun b!4172097 () Bool)

(declare-fun tp!1274647 () Bool)

(declare-fun tp!1274649 () Bool)

(assert (=> b!4172097 (= e!2590096 (and tp!1274647 tp!1274649))))

(assert (= (and b!4171438 ((_ is ElementMatch!12485) (regTwo!25483 (regex!7580 (h!51133 rules!3843))))) b!4172096))

(assert (= (and b!4171438 ((_ is Concat!20296) (regTwo!25483 (regex!7580 (h!51133 rules!3843))))) b!4172097))

(assert (= (and b!4171438 ((_ is Star!12485) (regTwo!25483 (regex!7580 (h!51133 rules!3843))))) b!4172098))

(assert (= (and b!4171438 ((_ is Union!12485) (regTwo!25483 (regex!7580 (h!51133 rules!3843))))) b!4172099))

(declare-fun b!4172100 () Bool)

(declare-fun e!2590097 () Bool)

(assert (=> b!4172100 (= e!2590097 tp_is_empty!21933)))

(declare-fun b!4172102 () Bool)

(declare-fun tp!1274651 () Bool)

(assert (=> b!4172102 (= e!2590097 tp!1274651)))

(declare-fun b!4172103 () Bool)

(declare-fun tp!1274655 () Bool)

(declare-fun tp!1274653 () Bool)

(assert (=> b!4172103 (= e!2590097 (and tp!1274655 tp!1274653))))

(assert (=> b!4171451 (= tp!1274477 e!2590097)))

(declare-fun b!4172101 () Bool)

(declare-fun tp!1274652 () Bool)

(declare-fun tp!1274654 () Bool)

(assert (=> b!4172101 (= e!2590097 (and tp!1274652 tp!1274654))))

(assert (= (and b!4171451 ((_ is ElementMatch!12485) (regOne!25482 (regex!7580 rBis!167)))) b!4172100))

(assert (= (and b!4171451 ((_ is Concat!20296) (regOne!25482 (regex!7580 rBis!167)))) b!4172101))

(assert (= (and b!4171451 ((_ is Star!12485) (regOne!25482 (regex!7580 rBis!167)))) b!4172102))

(assert (= (and b!4171451 ((_ is Union!12485) (regOne!25482 (regex!7580 rBis!167)))) b!4172103))

(declare-fun b!4172104 () Bool)

(declare-fun e!2590098 () Bool)

(assert (=> b!4172104 (= e!2590098 tp_is_empty!21933)))

(declare-fun b!4172106 () Bool)

(declare-fun tp!1274656 () Bool)

(assert (=> b!4172106 (= e!2590098 tp!1274656)))

(declare-fun b!4172107 () Bool)

(declare-fun tp!1274660 () Bool)

(declare-fun tp!1274658 () Bool)

(assert (=> b!4172107 (= e!2590098 (and tp!1274660 tp!1274658))))

(assert (=> b!4171451 (= tp!1274479 e!2590098)))

(declare-fun b!4172105 () Bool)

(declare-fun tp!1274657 () Bool)

(declare-fun tp!1274659 () Bool)

(assert (=> b!4172105 (= e!2590098 (and tp!1274657 tp!1274659))))

(assert (= (and b!4171451 ((_ is ElementMatch!12485) (regTwo!25482 (regex!7580 rBis!167)))) b!4172104))

(assert (= (and b!4171451 ((_ is Concat!20296) (regTwo!25482 (regex!7580 rBis!167)))) b!4172105))

(assert (= (and b!4171451 ((_ is Star!12485) (regTwo!25482 (regex!7580 rBis!167)))) b!4172106))

(assert (= (and b!4171451 ((_ is Union!12485) (regTwo!25482 (regex!7580 rBis!167)))) b!4172107))

(declare-fun b!4172108 () Bool)

(declare-fun e!2590099 () Bool)

(assert (=> b!4172108 (= e!2590099 tp_is_empty!21933)))

(declare-fun b!4172110 () Bool)

(declare-fun tp!1274661 () Bool)

(assert (=> b!4172110 (= e!2590099 tp!1274661)))

(declare-fun b!4172111 () Bool)

(declare-fun tp!1274665 () Bool)

(declare-fun tp!1274663 () Bool)

(assert (=> b!4172111 (= e!2590099 (and tp!1274665 tp!1274663))))

(assert (=> b!4171455 (= tp!1274482 e!2590099)))

(declare-fun b!4172109 () Bool)

(declare-fun tp!1274662 () Bool)

(declare-fun tp!1274664 () Bool)

(assert (=> b!4172109 (= e!2590099 (and tp!1274662 tp!1274664))))

(assert (= (and b!4171455 ((_ is ElementMatch!12485) (regOne!25482 (regex!7580 r!4142)))) b!4172108))

(assert (= (and b!4171455 ((_ is Concat!20296) (regOne!25482 (regex!7580 r!4142)))) b!4172109))

(assert (= (and b!4171455 ((_ is Star!12485) (regOne!25482 (regex!7580 r!4142)))) b!4172110))

(assert (= (and b!4171455 ((_ is Union!12485) (regOne!25482 (regex!7580 r!4142)))) b!4172111))

(declare-fun b!4172112 () Bool)

(declare-fun e!2590100 () Bool)

(assert (=> b!4172112 (= e!2590100 tp_is_empty!21933)))

(declare-fun b!4172114 () Bool)

(declare-fun tp!1274666 () Bool)

(assert (=> b!4172114 (= e!2590100 tp!1274666)))

(declare-fun b!4172115 () Bool)

(declare-fun tp!1274670 () Bool)

(declare-fun tp!1274668 () Bool)

(assert (=> b!4172115 (= e!2590100 (and tp!1274670 tp!1274668))))

(assert (=> b!4171455 (= tp!1274484 e!2590100)))

(declare-fun b!4172113 () Bool)

(declare-fun tp!1274667 () Bool)

(declare-fun tp!1274669 () Bool)

(assert (=> b!4172113 (= e!2590100 (and tp!1274667 tp!1274669))))

(assert (= (and b!4171455 ((_ is ElementMatch!12485) (regTwo!25482 (regex!7580 r!4142)))) b!4172112))

(assert (= (and b!4171455 ((_ is Concat!20296) (regTwo!25482 (regex!7580 r!4142)))) b!4172113))

(assert (= (and b!4171455 ((_ is Star!12485) (regTwo!25482 (regex!7580 r!4142)))) b!4172114))

(assert (= (and b!4171455 ((_ is Union!12485) (regTwo!25482 (regex!7580 r!4142)))) b!4172115))

(declare-fun b!4172116 () Bool)

(declare-fun e!2590101 () Bool)

(assert (=> b!4172116 (= e!2590101 tp_is_empty!21933)))

(declare-fun b!4172118 () Bool)

(declare-fun tp!1274671 () Bool)

(assert (=> b!4172118 (= e!2590101 tp!1274671)))

(declare-fun b!4172119 () Bool)

(declare-fun tp!1274675 () Bool)

(declare-fun tp!1274673 () Bool)

(assert (=> b!4172119 (= e!2590101 (and tp!1274675 tp!1274673))))

(assert (=> b!4171437 (= tp!1274459 e!2590101)))

(declare-fun b!4172117 () Bool)

(declare-fun tp!1274672 () Bool)

(declare-fun tp!1274674 () Bool)

(assert (=> b!4172117 (= e!2590101 (and tp!1274672 tp!1274674))))

(assert (= (and b!4171437 ((_ is ElementMatch!12485) (reg!12814 (regex!7580 (h!51133 rules!3843))))) b!4172116))

(assert (= (and b!4171437 ((_ is Concat!20296) (reg!12814 (regex!7580 (h!51133 rules!3843))))) b!4172117))

(assert (= (and b!4171437 ((_ is Star!12485) (reg!12814 (regex!7580 (h!51133 rules!3843))))) b!4172118))

(assert (= (and b!4171437 ((_ is Union!12485) (reg!12814 (regex!7580 (h!51133 rules!3843))))) b!4172119))

(declare-fun b!4172120 () Bool)

(declare-fun e!2590102 () Bool)

(assert (=> b!4172120 (= e!2590102 tp_is_empty!21933)))

(declare-fun b!4172122 () Bool)

(declare-fun tp!1274676 () Bool)

(assert (=> b!4172122 (= e!2590102 tp!1274676)))

(declare-fun b!4172123 () Bool)

(declare-fun tp!1274680 () Bool)

(declare-fun tp!1274678 () Bool)

(assert (=> b!4172123 (= e!2590102 (and tp!1274680 tp!1274678))))

(assert (=> b!4171436 (= tp!1274460 e!2590102)))

(declare-fun b!4172121 () Bool)

(declare-fun tp!1274677 () Bool)

(declare-fun tp!1274679 () Bool)

(assert (=> b!4172121 (= e!2590102 (and tp!1274677 tp!1274679))))

(assert (= (and b!4171436 ((_ is ElementMatch!12485) (regOne!25482 (regex!7580 (h!51133 rules!3843))))) b!4172120))

(assert (= (and b!4171436 ((_ is Concat!20296) (regOne!25482 (regex!7580 (h!51133 rules!3843))))) b!4172121))

(assert (= (and b!4171436 ((_ is Star!12485) (regOne!25482 (regex!7580 (h!51133 rules!3843))))) b!4172122))

(assert (= (and b!4171436 ((_ is Union!12485) (regOne!25482 (regex!7580 (h!51133 rules!3843))))) b!4172123))

(declare-fun b!4172124 () Bool)

(declare-fun e!2590103 () Bool)

(assert (=> b!4172124 (= e!2590103 tp_is_empty!21933)))

(declare-fun b!4172126 () Bool)

(declare-fun tp!1274681 () Bool)

(assert (=> b!4172126 (= e!2590103 tp!1274681)))

(declare-fun b!4172127 () Bool)

(declare-fun tp!1274685 () Bool)

(declare-fun tp!1274683 () Bool)

(assert (=> b!4172127 (= e!2590103 (and tp!1274685 tp!1274683))))

(assert (=> b!4171436 (= tp!1274462 e!2590103)))

(declare-fun b!4172125 () Bool)

(declare-fun tp!1274682 () Bool)

(declare-fun tp!1274684 () Bool)

(assert (=> b!4172125 (= e!2590103 (and tp!1274682 tp!1274684))))

(assert (= (and b!4171436 ((_ is ElementMatch!12485) (regTwo!25482 (regex!7580 (h!51133 rules!3843))))) b!4172124))

(assert (= (and b!4171436 ((_ is Concat!20296) (regTwo!25482 (regex!7580 (h!51133 rules!3843))))) b!4172125))

(assert (= (and b!4171436 ((_ is Star!12485) (regTwo!25482 (regex!7580 (h!51133 rules!3843))))) b!4172126))

(assert (= (and b!4171436 ((_ is Union!12485) (regTwo!25482 (regex!7580 (h!51133 rules!3843))))) b!4172127))

(declare-fun b!4172128 () Bool)

(declare-fun e!2590104 () Bool)

(declare-fun tp!1274686 () Bool)

(assert (=> b!4172128 (= e!2590104 (and tp_is_empty!21933 tp!1274686))))

(assert (=> b!4171463 (= tp!1274489 e!2590104)))

(assert (= (and b!4171463 ((_ is Cons!45711) (t!344378 (t!344378 p!2959)))) b!4172128))

(declare-fun b_lambda!122569 () Bool)

(assert (= b_lambda!122563 (or (and b!4172055 b_free!120751 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171449 b_free!120743 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171017 b_free!120731 (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171028 b_free!120735) (and b!4171015 b_free!120727 (= (toValue!10260 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 r!4142)))) b_lambda!122569)))

(declare-fun b_lambda!122571 () Bool)

(assert (= b_lambda!122567 (or d!1232143 b_lambda!122571)))

(declare-fun bs!596092 () Bool)

(declare-fun d!1232513 () Bool)

(assert (= bs!596092 (and d!1232513 d!1232143)))

(assert (=> bs!596092 (= (dynLambda!19607 lambda!129238 (h!51133 rules!3843)) (ruleValid!3298 thiss!25986 (h!51133 rules!3843)))))

(assert (=> bs!596092 m!4761683))

(assert (=> b!4172046 d!1232513))

(declare-fun b_lambda!122573 () Bool)

(assert (= b_lambda!122565 (or (and b!4172055 b_free!120751 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171449 b_free!120743 (= (toValue!10260 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171017 b_free!120731 (= (toValue!10260 (transformation!7580 rBis!167)) (toValue!10260 (transformation!7580 r!4142)))) (and b!4171028 b_free!120735) (and b!4171015 b_free!120727 (= (toValue!10260 (transformation!7580 (h!51133 rules!3843))) (toValue!10260 (transformation!7580 r!4142)))) b_lambda!122573)))

(declare-fun b_lambda!122575 () Bool)

(assert (= b_lambda!122553 (or d!1232197 b_lambda!122575)))

(declare-fun bs!596093 () Bool)

(declare-fun d!1232515 () Bool)

(assert (= bs!596093 (and d!1232515 d!1232197)))

(assert (=> bs!596093 (= (dynLambda!19604 lambda!129241 lt!1485297) (= (list!16525 (dynLambda!19600 (toChars!10119 (transformation!7580 r!4142)) (dynLambda!19601 (toValue!10260 (transformation!7580 r!4142)) lt!1485297))) (list!16525 lt!1485297)))))

(declare-fun b_lambda!122579 () Bool)

(assert (=> (not b_lambda!122579) (not bs!596093)))

(assert (=> bs!596093 t!344498))

(declare-fun b_and!325857 () Bool)

(assert (= b_and!325855 (and (=> t!344498 result!304408) b_and!325857)))

(assert (=> bs!596093 t!344412))

(declare-fun b_and!325859 () Bool)

(assert (= b_and!325835 (and (=> t!344412 result!304320) b_and!325859)))

(assert (=> bs!596093 t!344402))

(declare-fun b_and!325861 () Bool)

(assert (= b_and!325833 (and (=> t!344402 result!304304) b_and!325861)))

(assert (=> bs!596093 t!344398))

(declare-fun b_and!325863 () Bool)

(assert (= b_and!325829 (and (=> t!344398 result!304298) b_and!325863)))

(assert (=> bs!596093 t!344400))

(declare-fun b_and!325865 () Bool)

(assert (= b_and!325831 (and (=> t!344400 result!304302) b_and!325865)))

(declare-fun b_lambda!122581 () Bool)

(assert (=> (not b_lambda!122581) (not bs!596093)))

(assert (=> bs!596093 t!344408))

(declare-fun b_and!325867 () Bool)

(assert (= b_and!325849 (and (=> t!344408 result!304312) b_and!325867)))

(assert (=> bs!596093 t!344404))

(declare-fun b_and!325869 () Bool)

(assert (= b_and!325845 (and (=> t!344404 result!304306) b_and!325869)))

(assert (=> bs!596093 t!344494))

(declare-fun b_and!325871 () Bool)

(assert (= b_and!325853 (and (=> t!344494 result!304404) b_and!325871)))

(assert (=> bs!596093 t!344410))

(declare-fun b_and!325873 () Bool)

(assert (= b_and!325851 (and (=> t!344410 result!304318) b_and!325873)))

(assert (=> bs!596093 t!344406))

(declare-fun b_and!325875 () Bool)

(assert (= b_and!325847 (and (=> t!344406 result!304310) b_and!325875)))

(assert (=> bs!596093 m!4761725))

(assert (=> bs!596093 m!4761723))

(assert (=> bs!596093 m!4761729))

(assert (=> bs!596093 m!4761731))

(assert (=> bs!596093 m!4761725))

(assert (=> bs!596093 m!4761729))

(assert (=> d!1232437 d!1232515))

(declare-fun b_lambda!122577 () Bool)

(assert (= b_lambda!122561 (or (and b!4171017 b_free!120733 (= (toChars!10119 (transformation!7580 rBis!167)) (toChars!10119 (transformation!7580 r!4142)))) (and b!4171449 b_free!120745 (= (toChars!10119 (transformation!7580 (h!51133 (t!344380 rules!3843)))) (toChars!10119 (transformation!7580 r!4142)))) (and b!4171015 b_free!120729 (= (toChars!10119 (transformation!7580 (h!51133 rules!3843))) (toChars!10119 (transformation!7580 r!4142)))) (and b!4171028 b_free!120737) (and b!4172055 b_free!120753 (= (toChars!10119 (transformation!7580 (h!51133 (t!344380 (t!344380 rules!3843))))) (toChars!10119 (transformation!7580 r!4142)))) b_lambda!122577)))

(check-sat (not bm!291313) (not b!4172097) b_and!325865 (not d!1232453) (not b!4172106) (not b!4172126) (not b!4172087) (not b!4172115) (not b!4171994) (not b!4172040) (not b!4172015) (not bm!291310) b_and!325859 (not d!1232323) (not b!4172110) (not bm!291300) (not b!4172063) (not bm!291312) (not b!4171953) (not b!4172105) b_and!325871 (not b!4172093) (not d!1232465) (not d!1232415) (not b!4171837) (not b!4171937) (not b!4171831) b_and!325875 (not b!4172119) (not b!4171963) (not b!4172121) (not b!4171955) (not b!4172113) (not b!4171949) (not b!4172007) (not bm!291315) (not d!1232435) (not bs!596093) (not b!4172000) (not d!1232495) (not b_next!121455) (not b!4171952) (not b!4172086) b_and!325867 (not b!4171614) (not b!4171838) (not b!4172072) (not b!4171552) (not b!4171541) (not b!4171867) (not bm!291305) (not b!4172099) (not b_lambda!122525) (not b!4172122) (not b!4172005) (not bm!291256) (not b!4172004) (not b!4171299) (not d!1232299) (not b!4172061) (not b!4172052) (not d!1232321) (not b!4172059) (not d!1232423) (not b!4172022) (not d!1232467) (not b!4172025) (not b_lambda!122523) (not d!1232297) (not b!4171965) (not b!4172076) (not d!1232447) (not tb!249855) (not b!4171551) (not b!4171591) (not b!4172107) (not d!1232289) (not b!4171802) (not bm!291259) (not b!4172102) b_and!325857 (not b!4171554) (not b!4171558) (not b!4172074) (not d!1232451) (not b!4172017) (not b!4172095) (not b!4172062) (not b!4172039) (not b!4171542) (not b!4171624) (not b!4172020) (not b_lambda!122531) (not bm!291326) (not b!4172075) (not d!1232315) (not b!4172002) b_and!325863 (not b!4172090) (not d!1232483) (not b_lambda!122571) (not tb!249803) (not b!4171800) (not b!4172125) b_and!325869 (not d!1232493) (not b_lambda!122577) (not b_lambda!122573) (not d!1232319) (not b!4172054) (not b!4172085) (not bs!596092) (not b!4171617) (not b!4171947) (not d!1232481) (not d!1232479) (not b!4171544) (not b_next!121457) (not b!4172094) (not bm!291299) (not b!4171793) (not b!4172098) (not b_next!121447) (not b!4171633) (not d!1232473) (not b!4172114) (not d!1232431) (not b_lambda!122569) (not b!4171559) (not b!4171940) (not b!4171550) (not b!4172118) (not b!4172128) (not b_lambda!122559) (not d!1232461) (not b!4172057) (not b!4171596) (not b!4171597) (not d!1232433) (not bm!291302) (not b!4172101) (not b!4171927) (not d!1232417) (not b_lambda!122575) b_and!325861 (not d!1232287) (not b!4171930) (not b_next!121431) (not b!4172051) (not d!1232503) (not d!1232457) (not b!4172001) (not bm!291254) (not b_next!121435) (not b!4172111) b_and!325873 (not bm!291304) (not d!1232437) (not b!4171801) tp_is_empty!21933 (not b!4171619) (not b!4171560) (not b!4172058) (not bm!291329) (not b!4171958) (not b!4172127) (not b_next!121433) (not d!1232419) (not b_next!121449) (not b!4172067) (not b!4172068) (not bm!291316) (not b!4172070) (not b_next!121439) (not b!4172123) (not b!4171998) (not b_lambda!122521) (not tb!249863) (not d!1232291) (not d!1232499) (not b_next!121437) (not bm!291301) (not b!4172049) (not b!4171589) (not b!4171599) (not b!4172050) (not b!4172053) (not tb!249847) (not b!4172109) (not b!4172066) (not bm!291327) (not b!4172071) (not bm!291303) (not b!4172024) (not b!4172091) (not b_lambda!122581) (not b!4172089) (not bm!291298) (not d!1232459) (not b!4171620) (not b!4172047) (not b!4172026) (not d!1232463) (not b!4171830) (not b!4172008) (not b!4172010) (not b!4171956) (not b!4172117) (not b!4172065) (not b_lambda!122579) (not b!4171637) (not b!4172103) (not d!1232507) (not b_next!121441) (not d!1232491) (not b!4172037) (not d!1232497))
(check-sat b_and!325865 b_and!325859 b_and!325871 b_and!325875 b_and!325857 b_and!325863 b_and!325869 (not b_next!121457) (not b_next!121447) b_and!325861 (not b_next!121431) (not b_next!121433) (not b_next!121437) (not b_next!121441) (not b_next!121455) b_and!325867 (not b_next!121435) b_and!325873 (not b_next!121449) (not b_next!121439))

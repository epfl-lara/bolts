; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522934 () Bool)

(assert start!522934)

(declare-fun b!4960034 () Bool)

(declare-fun b_free!132503 () Bool)

(declare-fun b_next!133293 () Bool)

(assert (=> b!4960034 (= b_free!132503 (not b_next!133293))))

(declare-fun tp!1391170 () Bool)

(declare-fun b_and!347355 () Bool)

(assert (=> b!4960034 (= tp!1391170 b_and!347355)))

(declare-fun b_free!132505 () Bool)

(declare-fun b_next!133295 () Bool)

(assert (=> b!4960034 (= b_free!132505 (not b_next!133295))))

(declare-fun tp!1391171 () Bool)

(declare-fun b_and!347357 () Bool)

(assert (=> b!4960034 (= tp!1391171 b_and!347357)))

(declare-fun b!4960032 () Bool)

(declare-fun res!2116902 () Bool)

(declare-fun e!3100017 () Bool)

(assert (=> b!4960032 (=> (not res!2116902) (not e!3100017))))

(declare-datatypes ((List!57466 0))(
  ( (Nil!57342) (Cons!57342 (h!63790 (_ BitVec 16)) (t!368032 List!57466)) )
))
(declare-datatypes ((TokenValue!8670 0))(
  ( (FloatLiteralValue!17340 (text!61135 List!57466)) (TokenValueExt!8669 (__x!34633 Int)) (Broken!43350 (value!267676 List!57466)) (Object!8793) (End!8670) (Def!8670) (Underscore!8670) (Match!8670) (Else!8670) (Error!8670) (Case!8670) (If!8670) (Extends!8670) (Abstract!8670) (Class!8670) (Val!8670) (DelimiterValue!17340 (del!8730 List!57466)) (KeywordValue!8676 (value!267677 List!57466)) (CommentValue!17340 (value!267678 List!57466)) (WhitespaceValue!17340 (value!267679 List!57466)) (IndentationValue!8670 (value!267680 List!57466)) (String!65223) (Int32!8670) (Broken!43351 (value!267681 List!57466)) (Boolean!8671) (Unit!148236) (OperatorValue!8673 (op!8730 List!57466)) (IdentifierValue!17340 (value!267682 List!57466)) (IdentifierValue!17341 (value!267683 List!57466)) (WhitespaceValue!17341 (value!267684 List!57466)) (True!17340) (False!17340) (Broken!43352 (value!267685 List!57466)) (Broken!43353 (value!267686 List!57466)) (True!17341) (RightBrace!8670) (RightBracket!8670) (Colon!8670) (Null!8670) (Comma!8670) (LeftBracket!8670) (False!17341) (LeftBrace!8670) (ImaginaryLiteralValue!8670 (text!61136 List!57466)) (StringLiteralValue!26010 (value!267687 List!57466)) (EOFValue!8670 (value!267688 List!57466)) (IdentValue!8670 (value!267689 List!57466)) (DelimiterValue!17341 (value!267690 List!57466)) (DedentValue!8670 (value!267691 List!57466)) (NewLineValue!8670 (value!267692 List!57466)) (IntegerValue!26010 (value!267693 (_ BitVec 32)) (text!61137 List!57466)) (IntegerValue!26011 (value!267694 Int) (text!61138 List!57466)) (Times!8670) (Or!8670) (Equal!8670) (Minus!8670) (Broken!43354 (value!267695 List!57466)) (And!8670) (Div!8670) (LessEqual!8670) (Mod!8670) (Concat!22263) (Not!8670) (Plus!8670) (SpaceValue!8670 (value!267696 List!57466)) (IntegerValue!26012 (value!267697 Int) (text!61139 List!57466)) (StringLiteralValue!26011 (text!61140 List!57466)) (FloatLiteralValue!17341 (text!61141 List!57466)) (BytesLiteralValue!8670 (value!267698 List!57466)) (CommentValue!17341 (value!267699 List!57466)) (StringLiteralValue!26012 (value!267700 List!57466)) (ErrorTokenValue!8670 (msg!8731 List!57466)) )
))
(declare-datatypes ((C!27436 0))(
  ( (C!27437 (val!23084 Int)) )
))
(declare-datatypes ((List!57467 0))(
  ( (Nil!57343) (Cons!57343 (h!63791 C!27436) (t!368033 List!57467)) )
))
(declare-datatypes ((IArray!30285 0))(
  ( (IArray!30286 (innerList!15200 List!57467)) )
))
(declare-datatypes ((Regex!13593 0))(
  ( (ElementMatch!13593 (c!846479 C!27436)) (Concat!22264 (regOne!27698 Regex!13593) (regTwo!27698 Regex!13593)) (EmptyExpr!13593) (Star!13593 (reg!13922 Regex!13593)) (EmptyLang!13593) (Union!13593 (regOne!27699 Regex!13593) (regTwo!27699 Regex!13593)) )
))
(declare-datatypes ((String!65224 0))(
  ( (String!65225 (value!267701 String)) )
))
(declare-datatypes ((Conc!15112 0))(
  ( (Node!15112 (left!41818 Conc!15112) (right!42148 Conc!15112) (csize!30454 Int) (cheight!15323 Int)) (Leaf!25117 (xs!18438 IArray!30285) (csize!30455 Int)) (Empty!15112) )
))
(declare-datatypes ((BalanceConc!29654 0))(
  ( (BalanceConc!29655 (c!846480 Conc!15112)) )
))
(declare-datatypes ((TokenValueInjection!16648 0))(
  ( (TokenValueInjection!16649 (toValue!11311 Int) (toChars!11170 Int)) )
))
(declare-datatypes ((Rule!16520 0))(
  ( (Rule!16521 (regex!8360 Regex!13593) (tag!9224 String!65224) (isSeparator!8360 Bool) (transformation!8360 TokenValueInjection!16648)) )
))
(declare-datatypes ((List!57468 0))(
  ( (Nil!57344) (Cons!57344 (h!63792 Rule!16520) (t!368034 List!57468)) )
))
(declare-fun rulesArg!259 () List!57468)

(declare-fun isEmpty!30848 (List!57468) Bool)

(assert (=> b!4960032 (= res!2116902 (not (isEmpty!30848 rulesArg!259)))))

(declare-fun res!2116900 () Bool)

(assert (=> start!522934 (=> (not res!2116900) (not e!3100017))))

(declare-datatypes ((LexerInterface!7952 0))(
  ( (LexerInterfaceExt!7949 (__x!34634 Int)) (Lexer!7950) )
))
(declare-fun thiss!15247 () LexerInterface!7952)

(get-info :version)

(assert (=> start!522934 (= res!2116900 ((_ is Lexer!7950) thiss!15247))))

(assert (=> start!522934 e!3100017))

(assert (=> start!522934 true))

(declare-fun e!3100021 () Bool)

(assert (=> start!522934 e!3100021))

(declare-fun input!1342 () BalanceConc!29654)

(declare-fun e!3100016 () Bool)

(declare-fun inv!74867 (BalanceConc!29654) Bool)

(assert (=> start!522934 (and (inv!74867 input!1342) e!3100016)))

(declare-fun totalInput!464 () BalanceConc!29654)

(declare-fun e!3100019 () Bool)

(assert (=> start!522934 (and (inv!74867 totalInput!464) e!3100019)))

(declare-fun b!4960033 () Bool)

(declare-fun tp!1391172 () Bool)

(declare-fun inv!74868 (Conc!15112) Bool)

(assert (=> b!4960033 (= e!3100019 (and (inv!74868 (c!846480 totalInput!464)) tp!1391172))))

(declare-fun e!3100023 () Bool)

(assert (=> b!4960034 (= e!3100023 (and tp!1391170 tp!1391171))))

(declare-fun b!4960035 () Bool)

(declare-fun e!3100020 () Bool)

(declare-fun lt!2047766 () Bool)

(declare-fun lt!2047767 () Bool)

(assert (=> b!4960035 (= e!3100020 (or (not (= lt!2047766 lt!2047767)) (not lt!2047766) lt!2047767))))

(declare-fun lt!2047765 () List!57467)

(declare-datatypes ((Token!15220 0))(
  ( (Token!15221 (value!267702 TokenValue!8670) (rule!11588 Rule!16520) (size!38006 Int) (originalCharacters!8641 List!57467)) )
))
(declare-datatypes ((tuple2!62004 0))(
  ( (tuple2!62005 (_1!34305 Token!15220) (_2!34305 List!57467)) )
))
(declare-datatypes ((Option!14389 0))(
  ( (None!14388) (Some!14388 (v!50373 tuple2!62004)) )
))
(declare-fun isDefined!11304 (Option!14389) Bool)

(declare-fun maxPrefixZipper!757 (LexerInterface!7952 List!57468 List!57467) Option!14389)

(assert (=> b!4960035 (= lt!2047767 (isDefined!11304 (maxPrefixZipper!757 thiss!15247 rulesArg!259 lt!2047765)))))

(declare-datatypes ((tuple2!62006 0))(
  ( (tuple2!62007 (_1!34306 Token!15220) (_2!34306 BalanceConc!29654)) )
))
(declare-datatypes ((Option!14390 0))(
  ( (None!14389) (Some!14389 (v!50374 tuple2!62006)) )
))
(declare-fun lt!2047768 () Option!14390)

(declare-fun isDefined!11305 (Option!14390) Bool)

(assert (=> b!4960035 (= lt!2047766 (isDefined!11305 lt!2047768))))

(declare-fun b!4960036 () Bool)

(declare-fun e!3100018 () Bool)

(declare-fun e!3100015 () Bool)

(assert (=> b!4960036 (= e!3100018 (not e!3100015))))

(declare-fun res!2116903 () Bool)

(assert (=> b!4960036 (=> res!2116903 e!3100015)))

(assert (=> b!4960036 (= res!2116903 (or (and ((_ is Cons!57344) rulesArg!259) ((_ is Nil!57344) (t!368034 rulesArg!259))) (not ((_ is Cons!57344) rulesArg!259))))))

(declare-fun isPrefix!5213 (List!57467 List!57467) Bool)

(assert (=> b!4960036 (isPrefix!5213 lt!2047765 lt!2047765)))

(declare-datatypes ((Unit!148237 0))(
  ( (Unit!148238) )
))
(declare-fun lt!2047769 () Unit!148237)

(declare-fun lemmaIsPrefixRefl!3537 (List!57467 List!57467) Unit!148237)

(assert (=> b!4960036 (= lt!2047769 (lemmaIsPrefixRefl!3537 lt!2047765 lt!2047765))))

(declare-fun b!4960037 () Bool)

(declare-fun tp!1391169 () Bool)

(assert (=> b!4960037 (= e!3100016 (and (inv!74868 (c!846480 input!1342)) tp!1391169))))

(declare-fun b!4960038 () Bool)

(assert (=> b!4960038 (= e!3100017 e!3100018)))

(declare-fun res!2116899 () Bool)

(assert (=> b!4960038 (=> (not res!2116899) (not e!3100018))))

(declare-fun isSuffix!1159 (List!57467 List!57467) Bool)

(declare-fun list!18313 (BalanceConc!29654) List!57467)

(assert (=> b!4960038 (= res!2116899 (isSuffix!1159 lt!2047765 (list!18313 totalInput!464)))))

(assert (=> b!4960038 (= lt!2047765 (list!18313 input!1342))))

(declare-fun tp!1391168 () Bool)

(declare-fun b!4960039 () Bool)

(declare-fun e!3100014 () Bool)

(declare-fun inv!74863 (String!65224) Bool)

(declare-fun inv!74869 (TokenValueInjection!16648) Bool)

(assert (=> b!4960039 (= e!3100014 (and tp!1391168 (inv!74863 (tag!9224 (h!63792 rulesArg!259))) (inv!74869 (transformation!8360 (h!63792 rulesArg!259))) e!3100023))))

(declare-fun b!4960040 () Bool)

(declare-fun res!2116904 () Bool)

(assert (=> b!4960040 (=> (not res!2116904) (not e!3100017))))

(declare-fun rulesValidInductive!3263 (LexerInterface!7952 List!57468) Bool)

(assert (=> b!4960040 (= res!2116904 (rulesValidInductive!3263 thiss!15247 rulesArg!259))))

(declare-fun b!4960041 () Bool)

(declare-fun tp!1391167 () Bool)

(assert (=> b!4960041 (= e!3100021 (and e!3100014 tp!1391167))))

(declare-fun b!4960042 () Bool)

(assert (=> b!4960042 (= e!3100015 e!3100020)))

(declare-fun res!2116901 () Bool)

(assert (=> b!4960042 (=> res!2116901 e!3100020)))

(declare-fun lt!2047770 () Option!14390)

(assert (=> b!4960042 (= res!2116901 (or (and ((_ is None!14389) lt!2047770) ((_ is None!14389) lt!2047768)) ((_ is None!14389) lt!2047768) ((_ is None!14389) lt!2047770) (>= (size!38006 (_1!34306 (v!50374 lt!2047770))) (size!38006 (_1!34306 (v!50374 lt!2047768))))))))

(declare-fun maxPrefixZipperSequenceV2!691 (LexerInterface!7952 List!57468 BalanceConc!29654 BalanceConc!29654) Option!14390)

(assert (=> b!4960042 (= lt!2047768 (maxPrefixZipperSequenceV2!691 thiss!15247 (t!368034 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!344 (LexerInterface!7952 Rule!16520 BalanceConc!29654 BalanceConc!29654) Option!14390)

(assert (=> b!4960042 (= lt!2047770 (maxPrefixOneRuleZipperSequenceV2!344 thiss!15247 (h!63792 rulesArg!259) input!1342 totalInput!464))))

(assert (= (and start!522934 res!2116900) b!4960040))

(assert (= (and b!4960040 res!2116904) b!4960032))

(assert (= (and b!4960032 res!2116902) b!4960038))

(assert (= (and b!4960038 res!2116899) b!4960036))

(assert (= (and b!4960036 (not res!2116903)) b!4960042))

(assert (= (and b!4960042 (not res!2116901)) b!4960035))

(assert (= b!4960039 b!4960034))

(assert (= b!4960041 b!4960039))

(assert (= (and start!522934 ((_ is Cons!57344) rulesArg!259)) b!4960041))

(assert (= start!522934 b!4960037))

(assert (= start!522934 b!4960033))

(declare-fun m!5984600 () Bool)

(assert (=> b!4960032 m!5984600))

(declare-fun m!5984602 () Bool)

(assert (=> b!4960037 m!5984602))

(declare-fun m!5984604 () Bool)

(assert (=> b!4960033 m!5984604))

(declare-fun m!5984606 () Bool)

(assert (=> b!4960036 m!5984606))

(declare-fun m!5984608 () Bool)

(assert (=> b!4960036 m!5984608))

(declare-fun m!5984610 () Bool)

(assert (=> b!4960035 m!5984610))

(assert (=> b!4960035 m!5984610))

(declare-fun m!5984612 () Bool)

(assert (=> b!4960035 m!5984612))

(declare-fun m!5984614 () Bool)

(assert (=> b!4960035 m!5984614))

(declare-fun m!5984616 () Bool)

(assert (=> b!4960039 m!5984616))

(declare-fun m!5984618 () Bool)

(assert (=> b!4960039 m!5984618))

(declare-fun m!5984620 () Bool)

(assert (=> b!4960038 m!5984620))

(assert (=> b!4960038 m!5984620))

(declare-fun m!5984622 () Bool)

(assert (=> b!4960038 m!5984622))

(declare-fun m!5984624 () Bool)

(assert (=> b!4960038 m!5984624))

(declare-fun m!5984626 () Bool)

(assert (=> b!4960040 m!5984626))

(declare-fun m!5984628 () Bool)

(assert (=> b!4960042 m!5984628))

(declare-fun m!5984630 () Bool)

(assert (=> b!4960042 m!5984630))

(declare-fun m!5984632 () Bool)

(assert (=> start!522934 m!5984632))

(declare-fun m!5984634 () Bool)

(assert (=> start!522934 m!5984634))

(check-sat (not b!4960037) (not b!4960032) b_and!347355 (not b!4960041) b_and!347357 (not b!4960040) (not b!4960038) (not b!4960042) (not b!4960035) (not b!4960039) (not b_next!133293) (not b!4960036) (not b!4960033) (not start!522934) (not b_next!133295))
(check-sat b_and!347355 b_and!347357 (not b_next!133293) (not b_next!133295))

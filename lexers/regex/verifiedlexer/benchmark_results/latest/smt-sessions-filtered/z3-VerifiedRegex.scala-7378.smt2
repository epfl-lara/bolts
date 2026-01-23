; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392286 () Bool)

(assert start!392286)

(declare-fun b!4132125 () Bool)

(declare-fun b_free!117251 () Bool)

(declare-fun b_next!117955 () Bool)

(assert (=> b!4132125 (= b_free!117251 (not b_next!117955))))

(declare-fun tp!1259434 () Bool)

(declare-fun b_and!320341 () Bool)

(assert (=> b!4132125 (= tp!1259434 b_and!320341)))

(declare-fun b_free!117253 () Bool)

(declare-fun b_next!117957 () Bool)

(assert (=> b!4132125 (= b_free!117253 (not b_next!117957))))

(declare-fun tp!1259433 () Bool)

(declare-fun b_and!320343 () Bool)

(assert (=> b!4132125 (= tp!1259433 b_and!320343)))

(declare-fun b!4132132 () Bool)

(declare-fun b_free!117255 () Bool)

(declare-fun b_next!117959 () Bool)

(assert (=> b!4132132 (= b_free!117255 (not b_next!117959))))

(declare-fun tp!1259442 () Bool)

(declare-fun b_and!320345 () Bool)

(assert (=> b!4132132 (= tp!1259442 b_and!320345)))

(declare-fun b_free!117257 () Bool)

(declare-fun b_next!117961 () Bool)

(assert (=> b!4132132 (= b_free!117257 (not b_next!117961))))

(declare-fun tp!1259436 () Bool)

(declare-fun b_and!320347 () Bool)

(assert (=> b!4132132 (= tp!1259436 b_and!320347)))

(declare-fun b!4132144 () Bool)

(declare-fun b_free!117259 () Bool)

(declare-fun b_next!117963 () Bool)

(assert (=> b!4132144 (= b_free!117259 (not b_next!117963))))

(declare-fun tp!1259444 () Bool)

(declare-fun b_and!320349 () Bool)

(assert (=> b!4132144 (= tp!1259444 b_and!320349)))

(declare-fun b_free!117261 () Bool)

(declare-fun b_next!117965 () Bool)

(assert (=> b!4132144 (= b_free!117261 (not b_next!117965))))

(declare-fun tp!1259439 () Bool)

(declare-fun b_and!320351 () Bool)

(assert (=> b!4132144 (= tp!1259439 b_and!320351)))

(declare-fun e!2563819 () Bool)

(assert (=> b!4132125 (= e!2563819 (and tp!1259434 tp!1259433))))

(declare-fun b!4132126 () Bool)

(declare-fun res!1689280 () Bool)

(declare-fun e!2563829 () Bool)

(assert (=> b!4132126 (=> (not res!1689280) (not e!2563829))))

(declare-datatypes ((LexerInterface!6917 0))(
  ( (LexerInterfaceExt!6914 (__x!27333 Int)) (Lexer!6915) )
))
(declare-fun thiss!25645 () LexerInterface!6917)

(declare-datatypes ((List!44867 0))(
  ( (Nil!44743) (Cons!44743 (h!50163 (_ BitVec 16)) (t!341664 List!44867)) )
))
(declare-datatypes ((TokenValue!7558 0))(
  ( (FloatLiteralValue!15116 (text!53351 List!44867)) (TokenValueExt!7557 (__x!27334 Int)) (Broken!37790 (value!229376 List!44867)) (Object!7681) (End!7558) (Def!7558) (Underscore!7558) (Match!7558) (Else!7558) (Error!7558) (Case!7558) (If!7558) (Extends!7558) (Abstract!7558) (Class!7558) (Val!7558) (DelimiterValue!15116 (del!7618 List!44867)) (KeywordValue!7564 (value!229377 List!44867)) (CommentValue!15116 (value!229378 List!44867)) (WhitespaceValue!15116 (value!229379 List!44867)) (IndentationValue!7558 (value!229380 List!44867)) (String!51539) (Int32!7558) (Broken!37791 (value!229381 List!44867)) (Boolean!7559) (Unit!64066) (OperatorValue!7561 (op!7618 List!44867)) (IdentifierValue!15116 (value!229382 List!44867)) (IdentifierValue!15117 (value!229383 List!44867)) (WhitespaceValue!15117 (value!229384 List!44867)) (True!15116) (False!15116) (Broken!37792 (value!229385 List!44867)) (Broken!37793 (value!229386 List!44867)) (True!15117) (RightBrace!7558) (RightBracket!7558) (Colon!7558) (Null!7558) (Comma!7558) (LeftBracket!7558) (False!15117) (LeftBrace!7558) (ImaginaryLiteralValue!7558 (text!53352 List!44867)) (StringLiteralValue!22674 (value!229387 List!44867)) (EOFValue!7558 (value!229388 List!44867)) (IdentValue!7558 (value!229389 List!44867)) (DelimiterValue!15117 (value!229390 List!44867)) (DedentValue!7558 (value!229391 List!44867)) (NewLineValue!7558 (value!229392 List!44867)) (IntegerValue!22674 (value!229393 (_ BitVec 32)) (text!53353 List!44867)) (IntegerValue!22675 (value!229394 Int) (text!53354 List!44867)) (Times!7558) (Or!7558) (Equal!7558) (Minus!7558) (Broken!37794 (value!229395 List!44867)) (And!7558) (Div!7558) (LessEqual!7558) (Mod!7558) (Concat!19791) (Not!7558) (Plus!7558) (SpaceValue!7558 (value!229396 List!44867)) (IntegerValue!22676 (value!229397 Int) (text!53355 List!44867)) (StringLiteralValue!22675 (text!53356 List!44867)) (FloatLiteralValue!15117 (text!53357 List!44867)) (BytesLiteralValue!7558 (value!229398 List!44867)) (CommentValue!15117 (value!229399 List!44867)) (StringLiteralValue!22676 (value!229400 List!44867)) (ErrorTokenValue!7558 (msg!7619 List!44867)) )
))
(declare-datatypes ((C!24652 0))(
  ( (C!24653 (val!14436 Int)) )
))
(declare-datatypes ((List!44868 0))(
  ( (Nil!44744) (Cons!44744 (h!50164 C!24652) (t!341665 List!44868)) )
))
(declare-datatypes ((IArray!27083 0))(
  ( (IArray!27084 (innerList!13599 List!44868)) )
))
(declare-datatypes ((Conc!13539 0))(
  ( (Node!13539 (left!33509 Conc!13539) (right!33839 Conc!13539) (csize!27308 Int) (cheight!13750 Int)) (Leaf!20918 (xs!16845 IArray!27083) (csize!27309 Int)) (Empty!13539) )
))
(declare-datatypes ((BalanceConc!26672 0))(
  ( (BalanceConc!26673 (c!708934 Conc!13539)) )
))
(declare-datatypes ((String!51540 0))(
  ( (String!51541 (value!229401 String)) )
))
(declare-datatypes ((Regex!12233 0))(
  ( (ElementMatch!12233 (c!708935 C!24652)) (Concat!19792 (regOne!24978 Regex!12233) (regTwo!24978 Regex!12233)) (EmptyExpr!12233) (Star!12233 (reg!12562 Regex!12233)) (EmptyLang!12233) (Union!12233 (regOne!24979 Regex!12233) (regTwo!24979 Regex!12233)) )
))
(declare-datatypes ((TokenValueInjection!14544 0))(
  ( (TokenValueInjection!14545 (toValue!9992 Int) (toChars!9851 Int)) )
))
(declare-datatypes ((Rule!14456 0))(
  ( (Rule!14457 (regex!7328 Regex!12233) (tag!8188 String!51540) (isSeparator!7328 Bool) (transformation!7328 TokenValueInjection!14544)) )
))
(declare-fun r!4008 () Rule!14456)

(declare-fun ruleValid!3134 (LexerInterface!6917 Rule!14456) Bool)

(assert (=> b!4132126 (= res!1689280 (ruleValid!3134 thiss!25645 r!4008))))

(declare-fun b!4132127 () Bool)

(declare-fun e!2563830 () Bool)

(declare-fun tp_is_empty!21389 () Bool)

(declare-fun tp!1259435 () Bool)

(assert (=> b!4132127 (= e!2563830 (and tp_is_empty!21389 tp!1259435))))

(declare-fun b!4132128 () Bool)

(declare-fun res!1689282 () Bool)

(declare-fun e!2563823 () Bool)

(assert (=> b!4132128 (=> (not res!1689282) (not e!2563823))))

(declare-datatypes ((List!44869 0))(
  ( (Nil!44745) (Cons!44745 (h!50165 Rule!14456) (t!341666 List!44869)) )
))
(declare-fun rules!3756 () List!44869)

(declare-fun isEmpty!26642 (List!44869) Bool)

(assert (=> b!4132128 (= res!1689282 (not (isEmpty!26642 rules!3756)))))

(declare-fun e!2563825 () Bool)

(declare-fun b!4132129 () Bool)

(declare-fun e!2563827 () Bool)

(declare-fun tp!1259440 () Bool)

(declare-fun inv!59345 (String!51540) Bool)

(declare-fun inv!59347 (TokenValueInjection!14544) Bool)

(assert (=> b!4132129 (= e!2563827 (and tp!1259440 (inv!59345 (tag!8188 r!4008)) (inv!59347 (transformation!7328 r!4008)) e!2563825))))

(declare-fun b!4132130 () Bool)

(declare-fun res!1689281 () Bool)

(assert (=> b!4132130 (=> (not res!1689281) (not e!2563823))))

(declare-fun contains!9006 (List!44869 Rule!14456) Bool)

(assert (=> b!4132130 (= res!1689281 (contains!9006 rules!3756 r!4008))))

(declare-fun rBis!149 () Rule!14456)

(declare-fun e!2563818 () Bool)

(declare-fun tp!1259441 () Bool)

(declare-fun b!4132131 () Bool)

(declare-fun e!2563822 () Bool)

(assert (=> b!4132131 (= e!2563822 (and tp!1259441 (inv!59345 (tag!8188 rBis!149)) (inv!59347 (transformation!7328 rBis!149)) e!2563818))))

(assert (=> b!4132132 (= e!2563818 (and tp!1259442 tp!1259436))))

(declare-fun b!4132133 () Bool)

(declare-fun res!1689288 () Bool)

(assert (=> b!4132133 (=> (not res!1689288) (not e!2563829))))

(declare-fun p!2912 () List!44868)

(declare-fun matchR!6062 (Regex!12233 List!44868) Bool)

(assert (=> b!4132133 (= res!1689288 (matchR!6062 (regex!7328 r!4008) p!2912))))

(declare-fun res!1689285 () Bool)

(assert (=> start!392286 (=> (not res!1689285) (not e!2563823))))

(get-info :version)

(assert (=> start!392286 (= res!1689285 ((_ is Lexer!6915) thiss!25645))))

(assert (=> start!392286 e!2563823))

(declare-fun e!2563820 () Bool)

(assert (=> start!392286 e!2563820))

(assert (=> start!392286 e!2563830))

(assert (=> start!392286 true))

(assert (=> start!392286 e!2563827))

(declare-fun e!2563821 () Bool)

(assert (=> start!392286 e!2563821))

(assert (=> start!392286 e!2563822))

(declare-fun b!4132134 () Bool)

(declare-fun res!1689283 () Bool)

(assert (=> b!4132134 (=> (not res!1689283) (not e!2563823))))

(assert (=> b!4132134 (= res!1689283 (contains!9006 rules!3756 rBis!149))))

(declare-fun b!4132135 () Bool)

(declare-fun tp!1259437 () Bool)

(assert (=> b!4132135 (= e!2563821 (and tp_is_empty!21389 tp!1259437))))

(declare-fun b!4132136 () Bool)

(declare-fun res!1689286 () Bool)

(assert (=> b!4132136 (=> (not res!1689286) (not e!2563823))))

(declare-fun rulesInvariant!6214 (LexerInterface!6917 List!44869) Bool)

(assert (=> b!4132136 (= res!1689286 (rulesInvariant!6214 thiss!25645 rules!3756))))

(declare-fun b!4132137 () Bool)

(declare-fun res!1689287 () Bool)

(assert (=> b!4132137 (=> (not res!1689287) (not e!2563823))))

(declare-fun input!3238 () List!44868)

(declare-fun isPrefix!4263 (List!44868 List!44868) Bool)

(assert (=> b!4132137 (= res!1689287 (isPrefix!4263 p!2912 input!3238))))

(declare-fun b!4132138 () Bool)

(declare-fun res!1689284 () Bool)

(assert (=> b!4132138 (=> (not res!1689284) (not e!2563829))))

(declare-fun getIndex!674 (List!44869 Rule!14456) Int)

(assert (=> b!4132138 (= res!1689284 (< (getIndex!674 rules!3756 rBis!149) (getIndex!674 rules!3756 r!4008)))))

(declare-fun b!4132139 () Bool)

(assert (=> b!4132139 (= e!2563823 e!2563829)))

(declare-fun res!1689290 () Bool)

(assert (=> b!4132139 (=> (not res!1689290) (not e!2563829))))

(declare-fun lt!1473482 () BalanceConc!26672)

(declare-datatypes ((Token!13586 0))(
  ( (Token!13587 (value!229402 TokenValue!7558) (rule!10420 Rule!14456) (size!33121 Int) (originalCharacters!7824 List!44868)) )
))
(declare-datatypes ((tuple2!43162 0))(
  ( (tuple2!43163 (_1!24715 Token!13586) (_2!24715 List!44868)) )
))
(declare-datatypes ((Option!9634 0))(
  ( (None!9633) (Some!9633 (v!40247 tuple2!43162)) )
))
(declare-fun maxPrefix!4107 (LexerInterface!6917 List!44869 List!44868) Option!9634)

(declare-fun apply!10401 (TokenValueInjection!14544 BalanceConc!26672) TokenValue!7558)

(declare-fun size!33122 (List!44868) Int)

(declare-fun getSuffix!2590 (List!44868 List!44868) List!44868)

(assert (=> b!4132139 (= res!1689290 (= (maxPrefix!4107 thiss!25645 rules!3756 input!3238) (Some!9633 (tuple2!43163 (Token!13587 (apply!10401 (transformation!7328 r!4008) lt!1473482) r!4008 (size!33122 p!2912) p!2912) (getSuffix!2590 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64067 0))(
  ( (Unit!64068) )
))
(declare-fun lt!1473484 () Unit!64067)

(declare-fun lemmaSemiInverse!2186 (TokenValueInjection!14544 BalanceConc!26672) Unit!64067)

(assert (=> b!4132139 (= lt!1473484 (lemmaSemiInverse!2186 (transformation!7328 r!4008) lt!1473482))))

(declare-fun seqFromList!5445 (List!44868) BalanceConc!26672)

(assert (=> b!4132139 (= lt!1473482 (seqFromList!5445 p!2912))))

(declare-fun b!4132140 () Bool)

(declare-fun e!2563826 () Bool)

(declare-fun tp!1259438 () Bool)

(assert (=> b!4132140 (= e!2563820 (and e!2563826 tp!1259438))))

(declare-fun b!4132141 () Bool)

(declare-fun res!1689289 () Bool)

(assert (=> b!4132141 (=> (not res!1689289) (not e!2563823))))

(declare-fun isEmpty!26643 (List!44868) Bool)

(assert (=> b!4132141 (= res!1689289 (not (isEmpty!26643 p!2912)))))

(declare-fun tp!1259443 () Bool)

(declare-fun b!4132142 () Bool)

(assert (=> b!4132142 (= e!2563826 (and tp!1259443 (inv!59345 (tag!8188 (h!50165 rules!3756))) (inv!59347 (transformation!7328 (h!50165 rules!3756))) e!2563819))))

(declare-fun b!4132143 () Bool)

(assert (=> b!4132143 (= e!2563829 (not true))))

(assert (=> b!4132143 (ruleValid!3134 thiss!25645 rBis!149)))

(declare-fun lt!1473483 () Unit!64067)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2174 (LexerInterface!6917 Rule!14456 List!44869) Unit!64067)

(assert (=> b!4132143 (= lt!1473483 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2174 thiss!25645 rBis!149 rules!3756))))

(assert (=> b!4132144 (= e!2563825 (and tp!1259444 tp!1259439))))

(assert (= (and start!392286 res!1689285) b!4132137))

(assert (= (and b!4132137 res!1689287) b!4132128))

(assert (= (and b!4132128 res!1689282) b!4132136))

(assert (= (and b!4132136 res!1689286) b!4132130))

(assert (= (and b!4132130 res!1689281) b!4132134))

(assert (= (and b!4132134 res!1689283) b!4132141))

(assert (= (and b!4132141 res!1689289) b!4132139))

(assert (= (and b!4132139 res!1689290) b!4132133))

(assert (= (and b!4132133 res!1689288) b!4132138))

(assert (= (and b!4132138 res!1689284) b!4132126))

(assert (= (and b!4132126 res!1689280) b!4132143))

(assert (= b!4132142 b!4132125))

(assert (= b!4132140 b!4132142))

(assert (= (and start!392286 ((_ is Cons!44745) rules!3756)) b!4132140))

(assert (= (and start!392286 ((_ is Cons!44744) p!2912)) b!4132127))

(assert (= b!4132129 b!4132144))

(assert (= start!392286 b!4132129))

(assert (= (and start!392286 ((_ is Cons!44744) input!3238)) b!4132135))

(assert (= b!4132131 b!4132132))

(assert (= start!392286 b!4132131))

(declare-fun m!4729409 () Bool)

(assert (=> b!4132130 m!4729409))

(declare-fun m!4729411 () Bool)

(assert (=> b!4132128 m!4729411))

(declare-fun m!4729413 () Bool)

(assert (=> b!4132139 m!4729413))

(declare-fun m!4729415 () Bool)

(assert (=> b!4132139 m!4729415))

(declare-fun m!4729417 () Bool)

(assert (=> b!4132139 m!4729417))

(declare-fun m!4729419 () Bool)

(assert (=> b!4132139 m!4729419))

(declare-fun m!4729421 () Bool)

(assert (=> b!4132139 m!4729421))

(declare-fun m!4729423 () Bool)

(assert (=> b!4132139 m!4729423))

(declare-fun m!4729425 () Bool)

(assert (=> b!4132143 m!4729425))

(declare-fun m!4729427 () Bool)

(assert (=> b!4132143 m!4729427))

(declare-fun m!4729429 () Bool)

(assert (=> b!4132131 m!4729429))

(declare-fun m!4729431 () Bool)

(assert (=> b!4132131 m!4729431))

(declare-fun m!4729433 () Bool)

(assert (=> b!4132129 m!4729433))

(declare-fun m!4729435 () Bool)

(assert (=> b!4132129 m!4729435))

(declare-fun m!4729437 () Bool)

(assert (=> b!4132134 m!4729437))

(declare-fun m!4729439 () Bool)

(assert (=> b!4132141 m!4729439))

(declare-fun m!4729441 () Bool)

(assert (=> b!4132138 m!4729441))

(declare-fun m!4729443 () Bool)

(assert (=> b!4132138 m!4729443))

(declare-fun m!4729445 () Bool)

(assert (=> b!4132136 m!4729445))

(declare-fun m!4729447 () Bool)

(assert (=> b!4132137 m!4729447))

(declare-fun m!4729449 () Bool)

(assert (=> b!4132133 m!4729449))

(declare-fun m!4729451 () Bool)

(assert (=> b!4132126 m!4729451))

(declare-fun m!4729453 () Bool)

(assert (=> b!4132142 m!4729453))

(declare-fun m!4729455 () Bool)

(assert (=> b!4132142 m!4729455))

(check-sat b_and!320351 (not b!4132130) (not b!4132142) (not b!4132127) (not b!4132138) (not b!4132143) (not b_next!117963) b_and!320349 (not b!4132139) (not b!4132126) (not b!4132141) tp_is_empty!21389 (not b!4132136) (not b!4132135) (not b!4132134) (not b!4132128) b_and!320341 b_and!320345 (not b_next!117957) b_and!320343 (not b!4132133) (not b_next!117965) (not b_next!117961) (not b_next!117955) (not b_next!117959) (not b!4132131) (not b!4132140) b_and!320347 (not b!4132137) (not b!4132129))
(check-sat b_and!320351 b_and!320341 b_and!320343 (not b_next!117963) b_and!320349 b_and!320345 (not b_next!117957) (not b_next!117965) (not b_next!117961) (not b_next!117955) (not b_next!117959) b_and!320347)

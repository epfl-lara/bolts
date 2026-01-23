; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404446 () Bool)

(assert start!404446)

(declare-fun b!4229555 () Bool)

(declare-fun b_free!124923 () Bool)

(declare-fun b_next!125627 () Bool)

(assert (=> b!4229555 (= b_free!124923 (not b_next!125627))))

(declare-fun tp!1295655 () Bool)

(declare-fun b_and!334177 () Bool)

(assert (=> b!4229555 (= tp!1295655 b_and!334177)))

(declare-fun b_free!124925 () Bool)

(declare-fun b_next!125629 () Bool)

(assert (=> b!4229555 (= b_free!124925 (not b_next!125629))))

(declare-fun tp!1295660 () Bool)

(declare-fun b_and!334179 () Bool)

(assert (=> b!4229555 (= tp!1295660 b_and!334179)))

(declare-fun b!4229546 () Bool)

(declare-fun b_free!124927 () Bool)

(declare-fun b_next!125631 () Bool)

(assert (=> b!4229546 (= b_free!124927 (not b_next!125631))))

(declare-fun tp!1295661 () Bool)

(declare-fun b_and!334181 () Bool)

(assert (=> b!4229546 (= tp!1295661 b_and!334181)))

(declare-fun b_free!124929 () Bool)

(declare-fun b_next!125633 () Bool)

(assert (=> b!4229546 (= b_free!124929 (not b_next!125633))))

(declare-fun tp!1295662 () Bool)

(declare-fun b_and!334183 () Bool)

(assert (=> b!4229546 (= tp!1295662 b_and!334183)))

(declare-fun b!4229536 () Bool)

(declare-fun res!1739367 () Bool)

(declare-fun e!2626316 () Bool)

(assert (=> b!4229536 (=> (not res!1739367) (not e!2626316))))

(declare-datatypes ((C!25764 0))(
  ( (C!25765 (val!15044 Int)) )
))
(declare-datatypes ((List!46820 0))(
  ( (Nil!46696) (Cons!46696 (h!52116 C!25764) (t!349449 List!46820)) )
))
(declare-fun p!3014 () List!46820)

(declare-fun suffix!1590 () List!46820)

(declare-fun input!3586 () List!46820)

(declare-fun ++!11908 (List!46820 List!46820) List!46820)

(assert (=> b!4229536 (= res!1739367 (= (++!11908 p!3014 suffix!1590) input!3586))))

(declare-fun tp!1295659 () Bool)

(declare-fun e!2626328 () Bool)

(declare-datatypes ((List!46821 0))(
  ( (Nil!46697) (Cons!46697 (h!52117 (_ BitVec 16)) (t!349450 List!46821)) )
))
(declare-datatypes ((TokenValue!8108 0))(
  ( (FloatLiteralValue!16216 (text!57201 List!46821)) (TokenValueExt!8107 (__x!28439 Int)) (Broken!40540 (value!244995 List!46821)) (Object!8231) (End!8108) (Def!8108) (Underscore!8108) (Match!8108) (Else!8108) (Error!8108) (Case!8108) (If!8108) (Extends!8108) (Abstract!8108) (Class!8108) (Val!8108) (DelimiterValue!16216 (del!8168 List!46821)) (KeywordValue!8114 (value!244996 List!46821)) (CommentValue!16216 (value!244997 List!46821)) (WhitespaceValue!16216 (value!244998 List!46821)) (IndentationValue!8108 (value!244999 List!46821)) (String!54413) (Int32!8108) (Broken!40541 (value!245000 List!46821)) (Boolean!8109) (Unit!65804) (OperatorValue!8111 (op!8168 List!46821)) (IdentifierValue!16216 (value!245001 List!46821)) (IdentifierValue!16217 (value!245002 List!46821)) (WhitespaceValue!16217 (value!245003 List!46821)) (True!16216) (False!16216) (Broken!40542 (value!245004 List!46821)) (Broken!40543 (value!245005 List!46821)) (True!16217) (RightBrace!8108) (RightBracket!8108) (Colon!8108) (Null!8108) (Comma!8108) (LeftBracket!8108) (False!16217) (LeftBrace!8108) (ImaginaryLiteralValue!8108 (text!57202 List!46821)) (StringLiteralValue!24324 (value!245006 List!46821)) (EOFValue!8108 (value!245007 List!46821)) (IdentValue!8108 (value!245008 List!46821)) (DelimiterValue!16217 (value!245009 List!46821)) (DedentValue!8108 (value!245010 List!46821)) (NewLineValue!8108 (value!245011 List!46821)) (IntegerValue!24324 (value!245012 (_ BitVec 32)) (text!57203 List!46821)) (IntegerValue!24325 (value!245013 Int) (text!57204 List!46821)) (Times!8108) (Or!8108) (Equal!8108) (Minus!8108) (Broken!40544 (value!245014 List!46821)) (And!8108) (Div!8108) (LessEqual!8108) (Mod!8108) (Concat!20891) (Not!8108) (Plus!8108) (SpaceValue!8108 (value!245015 List!46821)) (IntegerValue!24326 (value!245016 Int) (text!57205 List!46821)) (StringLiteralValue!24325 (text!57206 List!46821)) (FloatLiteralValue!16217 (text!57207 List!46821)) (BytesLiteralValue!8108 (value!245017 List!46821)) (CommentValue!16217 (value!245018 List!46821)) (StringLiteralValue!24326 (value!245019 List!46821)) (ErrorTokenValue!8108 (msg!8169 List!46821)) )
))
(declare-datatypes ((String!54414 0))(
  ( (String!54415 (value!245020 String)) )
))
(declare-datatypes ((IArray!28183 0))(
  ( (IArray!28184 (innerList!14149 List!46820)) )
))
(declare-datatypes ((Conc!14089 0))(
  ( (Node!14089 (left!34732 Conc!14089) (right!35062 Conc!14089) (csize!28408 Int) (cheight!14300 Int)) (Leaf!21773 (xs!17395 IArray!28183) (csize!28409 Int)) (Empty!14089) )
))
(declare-datatypes ((Regex!12783 0))(
  ( (ElementMatch!12783 (c!718870 C!25764)) (Concat!20892 (regOne!26078 Regex!12783) (regTwo!26078 Regex!12783)) (EmptyExpr!12783) (Star!12783 (reg!13112 Regex!12783)) (EmptyLang!12783) (Union!12783 (regOne!26079 Regex!12783) (regTwo!26079 Regex!12783)) )
))
(declare-datatypes ((BalanceConc!27772 0))(
  ( (BalanceConc!27773 (c!718871 Conc!14089)) )
))
(declare-datatypes ((TokenValueInjection!15644 0))(
  ( (TokenValueInjection!15645 (toValue!10606 Int) (toChars!10465 Int)) )
))
(declare-datatypes ((Rule!15556 0))(
  ( (Rule!15557 (regex!7878 Regex!12783) (tag!8742 String!54414) (isSeparator!7878 Bool) (transformation!7878 TokenValueInjection!15644)) )
))
(declare-datatypes ((Token!14390 0))(
  ( (Token!14391 (value!245021 TokenValue!8108) (rule!10994 Rule!15556) (size!34216 Int) (originalCharacters!8226 List!46820)) )
))
(declare-fun t!8425 () Token!14390)

(declare-fun e!2626317 () Bool)

(declare-fun b!4229537 () Bool)

(declare-fun inv!61378 (String!54414) Bool)

(declare-fun inv!61381 (TokenValueInjection!15644) Bool)

(assert (=> b!4229537 (= e!2626328 (and tp!1295659 (inv!61378 (tag!8742 (rule!10994 t!8425))) (inv!61381 (transformation!7878 (rule!10994 t!8425))) e!2626317))))

(declare-fun b!4229538 () Bool)

(declare-fun e!2626322 () Bool)

(declare-fun tp_is_empty!22501 () Bool)

(declare-fun tp!1295654 () Bool)

(assert (=> b!4229538 (= e!2626322 (and tp_is_empty!22501 tp!1295654))))

(declare-fun b!4229539 () Bool)

(declare-fun res!1739364 () Bool)

(assert (=> b!4229539 (=> (not res!1739364) (not e!2626316))))

(declare-fun pBis!134 () List!46820)

(declare-fun isPrefix!4693 (List!46820 List!46820) Bool)

(assert (=> b!4229539 (= res!1739364 (isPrefix!4693 pBis!134 input!3586))))

(declare-fun b!4229540 () Bool)

(declare-fun res!1739366 () Bool)

(declare-fun e!2626320 () Bool)

(assert (=> b!4229540 (=> (not res!1739366) (not e!2626320))))

(declare-fun r!4334 () Rule!15556)

(declare-fun matchR!6422 (Regex!12783 List!46820) Bool)

(assert (=> b!4229540 (= res!1739366 (matchR!6422 (regex!7878 r!4334) p!3014))))

(declare-fun b!4229541 () Bool)

(declare-fun res!1739363 () Bool)

(assert (=> b!4229541 (=> (not res!1739363) (not e!2626320))))

(declare-fun validRegex!5801 (Regex!12783) Bool)

(assert (=> b!4229541 (= res!1739363 (validRegex!5801 (regex!7878 r!4334)))))

(declare-fun b!4229542 () Bool)

(declare-fun e!2626314 () Bool)

(assert (=> b!4229542 (= e!2626316 e!2626314)))

(declare-fun res!1739373 () Bool)

(assert (=> b!4229542 (=> (not res!1739373) (not e!2626314))))

(declare-fun lt!1503557 () Int)

(declare-fun lt!1503558 () Int)

(assert (=> b!4229542 (= res!1739373 (<= lt!1503557 lt!1503558))))

(declare-fun size!34217 (List!46820) Int)

(assert (=> b!4229542 (= lt!1503558 (size!34217 input!3586))))

(assert (=> b!4229542 (= lt!1503557 (size!34217 pBis!134))))

(declare-fun b!4229543 () Bool)

(declare-fun e!2626326 () Bool)

(declare-fun tp!1295656 () Bool)

(declare-fun inv!21 (TokenValue!8108) Bool)

(assert (=> b!4229543 (= e!2626326 (and (inv!21 (value!245021 t!8425)) e!2626328 tp!1295656))))

(declare-fun b!4229544 () Bool)

(declare-fun res!1739369 () Bool)

(assert (=> b!4229544 (=> (not res!1739369) (not e!2626316))))

(assert (=> b!4229544 (= res!1739369 (isPrefix!4693 p!3014 input!3586))))

(declare-fun e!2626327 () Bool)

(declare-fun b!4229545 () Bool)

(declare-fun tp!1295658 () Bool)

(declare-fun e!2626325 () Bool)

(assert (=> b!4229545 (= e!2626327 (and tp!1295658 (inv!61378 (tag!8742 r!4334)) (inv!61381 (transformation!7878 r!4334)) e!2626325))))

(assert (=> b!4229546 (= e!2626325 (and tp!1295661 tp!1295662))))

(declare-fun b!4229547 () Bool)

(declare-fun e!2626324 () Bool)

(assert (=> b!4229547 (= e!2626320 (not e!2626324))))

(declare-fun res!1739365 () Bool)

(assert (=> b!4229547 (=> res!1739365 e!2626324)))

(declare-datatypes ((LexerInterface!7473 0))(
  ( (LexerInterfaceExt!7470 (__x!28440 Int)) (Lexer!7471) )
))
(declare-fun thiss!26785 () LexerInterface!7473)

(declare-datatypes ((tuple2!44300 0))(
  ( (tuple2!44301 (_1!25284 Token!14390) (_2!25284 List!46820)) )
))
(declare-datatypes ((Option!10026 0))(
  ( (None!10025) (Some!10025 (v!40953 tuple2!44300)) )
))
(declare-fun maxPrefixOneRule!3420 (LexerInterface!7473 Rule!15556 List!46820) Option!10026)

(assert (=> b!4229547 (= res!1739365 (not (= (maxPrefixOneRule!3420 thiss!26785 r!4334 input!3586) (Some!10025 (tuple2!44301 t!8425 suffix!1590)))))))

(assert (=> b!4229547 (isPrefix!4693 input!3586 input!3586)))

(declare-datatypes ((Unit!65805 0))(
  ( (Unit!65806) )
))
(declare-fun lt!1503556 () Unit!65805)

(declare-fun lemmaIsPrefixRefl!3104 (List!46820 List!46820) Unit!65805)

(assert (=> b!4229547 (= lt!1503556 (lemmaIsPrefixRefl!3104 input!3586 input!3586))))

(declare-fun b!4229548 () Bool)

(declare-fun res!1739371 () Bool)

(assert (=> b!4229548 (=> (not res!1739371) (not e!2626320))))

(declare-fun list!16858 (BalanceConc!27772) List!46820)

(declare-fun charsOf!5253 (Token!14390) BalanceConc!27772)

(assert (=> b!4229548 (= res!1739371 (= (list!16858 (charsOf!5253 t!8425)) p!3014))))

(declare-fun b!4229550 () Bool)

(declare-fun res!1739370 () Bool)

(assert (=> b!4229550 (=> res!1739370 e!2626324)))

(declare-fun lt!1503555 () Int)

(assert (=> b!4229550 (= res!1739370 (< lt!1503557 lt!1503555))))

(declare-fun res!1739372 () Bool)

(assert (=> start!404446 (=> (not res!1739372) (not e!2626316))))

(get-info :version)

(assert (=> start!404446 (= res!1739372 ((_ is Lexer!7471) thiss!26785))))

(assert (=> start!404446 e!2626316))

(assert (=> start!404446 true))

(declare-fun e!2626313 () Bool)

(assert (=> start!404446 e!2626313))

(declare-fun inv!61382 (Token!14390) Bool)

(assert (=> start!404446 (and (inv!61382 t!8425) e!2626326)))

(assert (=> start!404446 e!2626327))

(assert (=> start!404446 e!2626322))

(declare-fun e!2626321 () Bool)

(assert (=> start!404446 e!2626321))

(declare-fun e!2626323 () Bool)

(assert (=> start!404446 e!2626323))

(declare-fun b!4229549 () Bool)

(declare-fun tp!1295653 () Bool)

(assert (=> b!4229549 (= e!2626313 (and tp_is_empty!22501 tp!1295653))))

(declare-fun b!4229551 () Bool)

(declare-fun tp!1295652 () Bool)

(assert (=> b!4229551 (= e!2626323 (and tp_is_empty!22501 tp!1295652))))

(declare-fun b!4229552 () Bool)

(assert (=> b!4229552 (= e!2626314 e!2626320)))

(declare-fun res!1739368 () Bool)

(assert (=> b!4229552 (=> (not res!1739368) (not e!2626320))))

(assert (=> b!4229552 (= res!1739368 (> lt!1503557 lt!1503555))))

(assert (=> b!4229552 (= lt!1503555 (size!34217 p!3014))))

(declare-fun b!4229553 () Bool)

(declare-datatypes ((tuple2!44302 0))(
  ( (tuple2!44303 (_1!25285 List!46820) (_2!25285 List!46820)) )
))
(declare-fun findLongestMatchInner!1685 (Regex!12783 List!46820 Int List!46820 List!46820 Int) tuple2!44302)

(assert (=> b!4229553 (= e!2626324 (= (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 lt!1503558)) p!3014))))

(declare-fun b!4229554 () Bool)

(declare-fun tp!1295657 () Bool)

(assert (=> b!4229554 (= e!2626321 (and tp_is_empty!22501 tp!1295657))))

(assert (=> b!4229555 (= e!2626317 (and tp!1295655 tp!1295660))))

(declare-fun b!4229556 () Bool)

(declare-fun res!1739362 () Bool)

(assert (=> b!4229556 (=> (not res!1739362) (not e!2626320))))

(declare-fun ruleValid!3574 (LexerInterface!7473 Rule!15556) Bool)

(assert (=> b!4229556 (= res!1739362 (ruleValid!3574 thiss!26785 r!4334))))

(assert (= (and start!404446 res!1739372) b!4229536))

(assert (= (and b!4229536 res!1739367) b!4229544))

(assert (= (and b!4229544 res!1739369) b!4229539))

(assert (= (and b!4229539 res!1739364) b!4229542))

(assert (= (and b!4229542 res!1739373) b!4229552))

(assert (= (and b!4229552 res!1739368) b!4229556))

(assert (= (and b!4229556 res!1739362) b!4229541))

(assert (= (and b!4229541 res!1739363) b!4229540))

(assert (= (and b!4229540 res!1739366) b!4229548))

(assert (= (and b!4229548 res!1739371) b!4229547))

(assert (= (and b!4229547 (not res!1739365)) b!4229550))

(assert (= (and b!4229550 (not res!1739370)) b!4229553))

(assert (= (and start!404446 ((_ is Cons!46696) p!3014)) b!4229549))

(assert (= b!4229537 b!4229555))

(assert (= b!4229543 b!4229537))

(assert (= start!404446 b!4229543))

(assert (= b!4229545 b!4229546))

(assert (= start!404446 b!4229545))

(assert (= (and start!404446 ((_ is Cons!46696) input!3586)) b!4229538))

(assert (= (and start!404446 ((_ is Cons!46696) pBis!134)) b!4229554))

(assert (= (and start!404446 ((_ is Cons!46696) suffix!1590)) b!4229551))

(declare-fun m!4816159 () Bool)

(assert (=> b!4229547 m!4816159))

(declare-fun m!4816161 () Bool)

(assert (=> b!4229547 m!4816161))

(declare-fun m!4816163 () Bool)

(assert (=> b!4229547 m!4816163))

(declare-fun m!4816165 () Bool)

(assert (=> b!4229542 m!4816165))

(declare-fun m!4816167 () Bool)

(assert (=> b!4229542 m!4816167))

(declare-fun m!4816169 () Bool)

(assert (=> b!4229552 m!4816169))

(declare-fun m!4816171 () Bool)

(assert (=> b!4229540 m!4816171))

(declare-fun m!4816173 () Bool)

(assert (=> b!4229544 m!4816173))

(declare-fun m!4816175 () Bool)

(assert (=> b!4229537 m!4816175))

(declare-fun m!4816177 () Bool)

(assert (=> b!4229537 m!4816177))

(declare-fun m!4816179 () Bool)

(assert (=> b!4229536 m!4816179))

(declare-fun m!4816181 () Bool)

(assert (=> b!4229541 m!4816181))

(declare-fun m!4816183 () Bool)

(assert (=> b!4229548 m!4816183))

(assert (=> b!4229548 m!4816183))

(declare-fun m!4816185 () Bool)

(assert (=> b!4229548 m!4816185))

(declare-fun m!4816187 () Bool)

(assert (=> start!404446 m!4816187))

(declare-fun m!4816189 () Bool)

(assert (=> b!4229553 m!4816189))

(assert (=> b!4229553 m!4816189))

(declare-fun m!4816191 () Bool)

(assert (=> b!4229553 m!4816191))

(declare-fun m!4816193 () Bool)

(assert (=> b!4229545 m!4816193))

(declare-fun m!4816195 () Bool)

(assert (=> b!4229545 m!4816195))

(declare-fun m!4816197 () Bool)

(assert (=> b!4229556 m!4816197))

(declare-fun m!4816199 () Bool)

(assert (=> b!4229543 m!4816199))

(declare-fun m!4816201 () Bool)

(assert (=> b!4229539 m!4816201))

(check-sat (not b_next!125633) (not b!4229542) (not b_next!125631) (not b!4229540) (not b!4229545) (not b!4229537) (not b!4229551) (not b!4229547) (not b_next!125629) (not start!404446) (not b!4229536) (not b!4229552) (not b_next!125627) (not b!4229539) (not b!4229554) (not b!4229541) b_and!334183 tp_is_empty!22501 b_and!334181 (not b!4229543) (not b!4229548) (not b!4229556) (not b!4229549) (not b!4229538) (not b!4229553) b_and!334179 b_and!334177 (not b!4229544))
(check-sat (not b_next!125633) (not b_next!125631) b_and!334183 b_and!334181 (not b_next!125629) (not b_next!125627) b_and!334179 b_and!334177)
(get-model)

(declare-fun b!4229567 () Bool)

(declare-fun e!2626337 () Bool)

(declare-fun tail!6813 (List!46820) List!46820)

(assert (=> b!4229567 (= e!2626337 (isPrefix!4693 (tail!6813 p!3014) (tail!6813 input!3586)))))

(declare-fun b!4229566 () Bool)

(declare-fun res!1739389 () Bool)

(assert (=> b!4229566 (=> (not res!1739389) (not e!2626337))))

(declare-fun head!8966 (List!46820) C!25764)

(assert (=> b!4229566 (= res!1739389 (= (head!8966 p!3014) (head!8966 input!3586)))))

(declare-fun b!4229565 () Bool)

(declare-fun e!2626335 () Bool)

(assert (=> b!4229565 (= e!2626335 e!2626337)))

(declare-fun res!1739391 () Bool)

(assert (=> b!4229565 (=> (not res!1739391) (not e!2626337))))

(assert (=> b!4229565 (= res!1739391 (not ((_ is Nil!46696) input!3586)))))

(declare-fun b!4229568 () Bool)

(declare-fun e!2626336 () Bool)

(assert (=> b!4229568 (= e!2626336 (>= (size!34217 input!3586) (size!34217 p!3014)))))

(declare-fun d!1244680 () Bool)

(assert (=> d!1244680 e!2626336))

(declare-fun res!1739392 () Bool)

(assert (=> d!1244680 (=> res!1739392 e!2626336)))

(declare-fun lt!1503561 () Bool)

(assert (=> d!1244680 (= res!1739392 (not lt!1503561))))

(assert (=> d!1244680 (= lt!1503561 e!2626335)))

(declare-fun res!1739390 () Bool)

(assert (=> d!1244680 (=> res!1739390 e!2626335)))

(assert (=> d!1244680 (= res!1739390 ((_ is Nil!46696) p!3014))))

(assert (=> d!1244680 (= (isPrefix!4693 p!3014 input!3586) lt!1503561)))

(assert (= (and d!1244680 (not res!1739390)) b!4229565))

(assert (= (and b!4229565 res!1739391) b!4229566))

(assert (= (and b!4229566 res!1739389) b!4229567))

(assert (= (and d!1244680 (not res!1739392)) b!4229568))

(declare-fun m!4816203 () Bool)

(assert (=> b!4229567 m!4816203))

(declare-fun m!4816205 () Bool)

(assert (=> b!4229567 m!4816205))

(assert (=> b!4229567 m!4816203))

(assert (=> b!4229567 m!4816205))

(declare-fun m!4816207 () Bool)

(assert (=> b!4229567 m!4816207))

(declare-fun m!4816209 () Bool)

(assert (=> b!4229566 m!4816209))

(declare-fun m!4816211 () Bool)

(assert (=> b!4229566 m!4816211))

(assert (=> b!4229568 m!4816165))

(assert (=> b!4229568 m!4816169))

(assert (=> b!4229544 d!1244680))

(declare-fun b!4229585 () Bool)

(declare-fun e!2626348 () Bool)

(declare-fun inv!17 (TokenValue!8108) Bool)

(assert (=> b!4229585 (= e!2626348 (inv!17 (value!245021 t!8425)))))

(declare-fun b!4229586 () Bool)

(declare-fun res!1739395 () Bool)

(declare-fun e!2626347 () Bool)

(assert (=> b!4229586 (=> res!1739395 e!2626347)))

(assert (=> b!4229586 (= res!1739395 (not ((_ is IntegerValue!24326) (value!245021 t!8425))))))

(assert (=> b!4229586 (= e!2626348 e!2626347)))

(declare-fun d!1244682 () Bool)

(declare-fun c!718879 () Bool)

(assert (=> d!1244682 (= c!718879 ((_ is IntegerValue!24324) (value!245021 t!8425)))))

(declare-fun e!2626349 () Bool)

(assert (=> d!1244682 (= (inv!21 (value!245021 t!8425)) e!2626349)))

(declare-fun b!4229587 () Bool)

(assert (=> b!4229587 (= e!2626349 e!2626348)))

(declare-fun c!718880 () Bool)

(assert (=> b!4229587 (= c!718880 ((_ is IntegerValue!24325) (value!245021 t!8425)))))

(declare-fun b!4229588 () Bool)

(declare-fun inv!15 (TokenValue!8108) Bool)

(assert (=> b!4229588 (= e!2626347 (inv!15 (value!245021 t!8425)))))

(declare-fun b!4229589 () Bool)

(declare-fun inv!16 (TokenValue!8108) Bool)

(assert (=> b!4229589 (= e!2626349 (inv!16 (value!245021 t!8425)))))

(assert (= (and d!1244682 c!718879) b!4229589))

(assert (= (and d!1244682 (not c!718879)) b!4229587))

(assert (= (and b!4229587 c!718880) b!4229585))

(assert (= (and b!4229587 (not c!718880)) b!4229586))

(assert (= (and b!4229586 (not res!1739395)) b!4229588))

(declare-fun m!4816215 () Bool)

(assert (=> b!4229585 m!4816215))

(declare-fun m!4816217 () Bool)

(assert (=> b!4229588 m!4816217))

(declare-fun m!4816219 () Bool)

(assert (=> b!4229589 m!4816219))

(assert (=> b!4229543 d!1244682))

(declare-fun d!1244688 () Bool)

(declare-fun res!1739402 () Bool)

(declare-fun e!2626355 () Bool)

(assert (=> d!1244688 (=> (not res!1739402) (not e!2626355))))

(declare-fun isEmpty!27608 (List!46820) Bool)

(assert (=> d!1244688 (= res!1739402 (not (isEmpty!27608 (originalCharacters!8226 t!8425))))))

(assert (=> d!1244688 (= (inv!61382 t!8425) e!2626355)))

(declare-fun b!4229598 () Bool)

(declare-fun res!1739403 () Bool)

(assert (=> b!4229598 (=> (not res!1739403) (not e!2626355))))

(declare-fun dynLambda!20025 (Int TokenValue!8108) BalanceConc!27772)

(assert (=> b!4229598 (= res!1739403 (= (originalCharacters!8226 t!8425) (list!16858 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))))))

(declare-fun b!4229599 () Bool)

(assert (=> b!4229599 (= e!2626355 (= (size!34216 t!8425) (size!34217 (originalCharacters!8226 t!8425))))))

(assert (= (and d!1244688 res!1739402) b!4229598))

(assert (= (and b!4229598 res!1739403) b!4229599))

(declare-fun b_lambda!124531 () Bool)

(assert (=> (not b_lambda!124531) (not b!4229598)))

(declare-fun t!349452 () Bool)

(declare-fun tb!253823 () Bool)

(assert (=> (and b!4229555 (= (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (toChars!10465 (transformation!7878 (rule!10994 t!8425)))) t!349452) tb!253823))

(declare-fun b!4229605 () Bool)

(declare-fun e!2626359 () Bool)

(declare-fun tp!1295665 () Bool)

(declare-fun inv!61383 (Conc!14089) Bool)

(assert (=> b!4229605 (= e!2626359 (and (inv!61383 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))) tp!1295665))))

(declare-fun result!309536 () Bool)

(declare-fun inv!61384 (BalanceConc!27772) Bool)

(assert (=> tb!253823 (= result!309536 (and (inv!61384 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425))) e!2626359))))

(assert (= tb!253823 b!4229605))

(declare-fun m!4816227 () Bool)

(assert (=> b!4229605 m!4816227))

(declare-fun m!4816229 () Bool)

(assert (=> tb!253823 m!4816229))

(assert (=> b!4229598 t!349452))

(declare-fun b_and!334185 () Bool)

(assert (= b_and!334179 (and (=> t!349452 result!309536) b_and!334185)))

(declare-fun t!349454 () Bool)

(declare-fun tb!253825 () Bool)

(assert (=> (and b!4229546 (= (toChars!10465 (transformation!7878 r!4334)) (toChars!10465 (transformation!7878 (rule!10994 t!8425)))) t!349454) tb!253825))

(declare-fun result!309540 () Bool)

(assert (= result!309540 result!309536))

(assert (=> b!4229598 t!349454))

(declare-fun b_and!334187 () Bool)

(assert (= b_and!334183 (and (=> t!349454 result!309540) b_and!334187)))

(declare-fun m!4816231 () Bool)

(assert (=> d!1244688 m!4816231))

(declare-fun m!4816233 () Bool)

(assert (=> b!4229598 m!4816233))

(assert (=> b!4229598 m!4816233))

(declare-fun m!4816235 () Bool)

(assert (=> b!4229598 m!4816235))

(declare-fun m!4816237 () Bool)

(assert (=> b!4229599 m!4816237))

(assert (=> start!404446 d!1244688))

(declare-fun b!4229796 () Bool)

(declare-fun e!2626471 () tuple2!44302)

(assert (=> b!4229796 (= e!2626471 (tuple2!44303 Nil!46696 input!3586))))

(declare-fun b!4229797 () Bool)

(declare-fun e!2626474 () tuple2!44302)

(declare-fun lt!1503660 () tuple2!44302)

(assert (=> b!4229797 (= e!2626474 lt!1503660)))

(declare-fun b!4229798 () Bool)

(declare-fun e!2626477 () Bool)

(declare-fun lt!1503670 () tuple2!44302)

(assert (=> b!4229798 (= e!2626477 (>= (size!34217 (_1!25285 lt!1503670)) (size!34217 Nil!46696)))))

(declare-fun b!4229799 () Bool)

(declare-fun e!2626470 () tuple2!44302)

(assert (=> b!4229799 (= e!2626471 e!2626470)))

(declare-fun c!718928 () Bool)

(assert (=> b!4229799 (= c!718928 (= (size!34217 Nil!46696) lt!1503558))))

(declare-fun bm!293298 () Bool)

(declare-fun call!293303 () Bool)

(declare-fun nullable!4502 (Regex!12783) Bool)

(assert (=> bm!293298 (= call!293303 (nullable!4502 (regex!7878 r!4334)))))

(declare-fun bm!293299 () Bool)

(declare-fun call!293308 () List!46820)

(assert (=> bm!293299 (= call!293308 (tail!6813 input!3586))))

(declare-fun b!4229800 () Bool)

(declare-fun e!2626476 () Unit!65805)

(declare-fun Unit!65807 () Unit!65805)

(assert (=> b!4229800 (= e!2626476 Unit!65807)))

(declare-fun lt!1503674 () Unit!65805)

(declare-fun call!293306 () Unit!65805)

(assert (=> b!4229800 (= lt!1503674 call!293306)))

(declare-fun call!293304 () Bool)

(assert (=> b!4229800 call!293304))

(declare-fun lt!1503665 () Unit!65805)

(assert (=> b!4229800 (= lt!1503665 lt!1503674)))

(declare-fun lt!1503680 () Unit!65805)

(declare-fun call!293309 () Unit!65805)

(assert (=> b!4229800 (= lt!1503680 call!293309)))

(assert (=> b!4229800 (= input!3586 Nil!46696)))

(declare-fun lt!1503682 () Unit!65805)

(assert (=> b!4229800 (= lt!1503682 lt!1503680)))

(assert (=> b!4229800 false))

(declare-fun b!4229801 () Bool)

(declare-fun e!2626472 () tuple2!44302)

(assert (=> b!4229801 (= e!2626472 (tuple2!44303 Nil!46696 Nil!46696))))

(declare-fun b!4229802 () Bool)

(assert (=> b!4229802 (= e!2626474 (tuple2!44303 Nil!46696 input!3586))))

(declare-fun bm!293300 () Bool)

(declare-fun call!293307 () C!25764)

(assert (=> bm!293300 (= call!293307 (head!8966 input!3586))))

(declare-fun b!4229803 () Bool)

(declare-fun Unit!65808 () Unit!65805)

(assert (=> b!4229803 (= e!2626476 Unit!65808)))

(declare-fun b!4229804 () Bool)

(declare-fun e!2626475 () Bool)

(assert (=> b!4229804 (= e!2626475 e!2626477)))

(declare-fun res!1739510 () Bool)

(assert (=> b!4229804 (=> res!1739510 e!2626477)))

(assert (=> b!4229804 (= res!1739510 (isEmpty!27608 (_1!25285 lt!1503670)))))

(declare-fun bm!293301 () Bool)

(assert (=> bm!293301 (= call!293304 (isPrefix!4693 input!3586 input!3586))))

(declare-fun bm!293302 () Bool)

(assert (=> bm!293302 (= call!293306 (lemmaIsPrefixRefl!3104 input!3586 input!3586))))

(declare-fun call!293310 () tuple2!44302)

(declare-fun call!293305 () Regex!12783)

(declare-fun lt!1503677 () List!46820)

(declare-fun bm!293303 () Bool)

(assert (=> bm!293303 (= call!293310 (findLongestMatchInner!1685 call!293305 lt!1503677 (+ (size!34217 Nil!46696) 1) call!293308 input!3586 lt!1503558))))

(declare-fun b!4229805 () Bool)

(declare-fun c!718927 () Bool)

(assert (=> b!4229805 (= c!718927 call!293303)))

(declare-fun lt!1503668 () Unit!65805)

(declare-fun lt!1503663 () Unit!65805)

(assert (=> b!4229805 (= lt!1503668 lt!1503663)))

(declare-fun lt!1503681 () C!25764)

(declare-fun lt!1503667 () List!46820)

(assert (=> b!4229805 (= (++!11908 (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696)) lt!1503667) input!3586)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1304 (List!46820 C!25764 List!46820 List!46820) Unit!65805)

(assert (=> b!4229805 (= lt!1503663 (lemmaMoveElementToOtherListKeepsConcatEq!1304 Nil!46696 lt!1503681 lt!1503667 input!3586))))

(assert (=> b!4229805 (= lt!1503667 (tail!6813 input!3586))))

(assert (=> b!4229805 (= lt!1503681 (head!8966 input!3586))))

(declare-fun lt!1503675 () Unit!65805)

(declare-fun lt!1503659 () Unit!65805)

(assert (=> b!4229805 (= lt!1503675 lt!1503659)))

(declare-fun getSuffix!2861 (List!46820 List!46820) List!46820)

(assert (=> b!4229805 (isPrefix!4693 (++!11908 Nil!46696 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696)) input!3586)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!686 (List!46820 List!46820) Unit!65805)

(assert (=> b!4229805 (= lt!1503659 (lemmaAddHeadSuffixToPrefixStillPrefix!686 Nil!46696 input!3586))))

(declare-fun lt!1503669 () Unit!65805)

(declare-fun lt!1503673 () Unit!65805)

(assert (=> b!4229805 (= lt!1503669 lt!1503673)))

(assert (=> b!4229805 (= lt!1503673 (lemmaAddHeadSuffixToPrefixStillPrefix!686 Nil!46696 input!3586))))

(assert (=> b!4229805 (= lt!1503677 (++!11908 Nil!46696 (Cons!46696 (head!8966 input!3586) Nil!46696)))))

(declare-fun lt!1503656 () Unit!65805)

(assert (=> b!4229805 (= lt!1503656 e!2626476)))

(declare-fun c!718925 () Bool)

(assert (=> b!4229805 (= c!718925 (= (size!34217 Nil!46696) (size!34217 input!3586)))))

(declare-fun lt!1503666 () Unit!65805)

(declare-fun lt!1503676 () Unit!65805)

(assert (=> b!4229805 (= lt!1503666 lt!1503676)))

(assert (=> b!4229805 (<= (size!34217 Nil!46696) (size!34217 input!3586))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!598 (List!46820 List!46820) Unit!65805)

(assert (=> b!4229805 (= lt!1503676 (lemmaIsPrefixThenSmallerEqSize!598 Nil!46696 input!3586))))

(declare-fun e!2626473 () tuple2!44302)

(assert (=> b!4229805 (= e!2626470 e!2626473)))

(declare-fun bm!293304 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1032 (List!46820 List!46820 List!46820) Unit!65805)

(assert (=> bm!293304 (= call!293309 (lemmaIsPrefixSameLengthThenSameList!1032 input!3586 Nil!46696 input!3586))))

(declare-fun b!4229806 () Bool)

(assert (=> b!4229806 (= e!2626473 e!2626474)))

(assert (=> b!4229806 (= lt!1503660 call!293310)))

(declare-fun c!718923 () Bool)

(assert (=> b!4229806 (= c!718923 (isEmpty!27608 (_1!25285 lt!1503660)))))

(declare-fun bm!293305 () Bool)

(declare-fun derivativeStep!3840 (Regex!12783 C!25764) Regex!12783)

(assert (=> bm!293305 (= call!293305 (derivativeStep!3840 (regex!7878 r!4334) call!293307))))

(declare-fun b!4229807 () Bool)

(assert (=> b!4229807 (= e!2626473 call!293310)))

(declare-fun b!4229808 () Bool)

(assert (=> b!4229808 (= e!2626472 (tuple2!44303 Nil!46696 input!3586))))

(declare-fun b!4229809 () Bool)

(declare-fun c!718924 () Bool)

(assert (=> b!4229809 (= c!718924 call!293303)))

(declare-fun lt!1503664 () Unit!65805)

(declare-fun lt!1503655 () Unit!65805)

(assert (=> b!4229809 (= lt!1503664 lt!1503655)))

(assert (=> b!4229809 (= input!3586 Nil!46696)))

(assert (=> b!4229809 (= lt!1503655 call!293309)))

(declare-fun lt!1503671 () Unit!65805)

(declare-fun lt!1503658 () Unit!65805)

(assert (=> b!4229809 (= lt!1503671 lt!1503658)))

(assert (=> b!4229809 call!293304))

(assert (=> b!4229809 (= lt!1503658 call!293306)))

(assert (=> b!4229809 (= e!2626470 e!2626472)))

(declare-fun d!1244696 () Bool)

(assert (=> d!1244696 e!2626475))

(declare-fun res!1739511 () Bool)

(assert (=> d!1244696 (=> (not res!1739511) (not e!2626475))))

(assert (=> d!1244696 (= res!1739511 (= (++!11908 (_1!25285 lt!1503670) (_2!25285 lt!1503670)) input!3586))))

(assert (=> d!1244696 (= lt!1503670 e!2626471)))

(declare-fun c!718926 () Bool)

(declare-fun lostCause!1060 (Regex!12783) Bool)

(assert (=> d!1244696 (= c!718926 (lostCause!1060 (regex!7878 r!4334)))))

(declare-fun lt!1503657 () Unit!65805)

(declare-fun Unit!65809 () Unit!65805)

(assert (=> d!1244696 (= lt!1503657 Unit!65809)))

(assert (=> d!1244696 (= (getSuffix!2861 input!3586 Nil!46696) input!3586)))

(declare-fun lt!1503678 () Unit!65805)

(declare-fun lt!1503672 () Unit!65805)

(assert (=> d!1244696 (= lt!1503678 lt!1503672)))

(declare-fun lt!1503662 () List!46820)

(assert (=> d!1244696 (= input!3586 lt!1503662)))

(declare-fun lemmaSamePrefixThenSameSuffix!2277 (List!46820 List!46820 List!46820 List!46820 List!46820) Unit!65805)

(assert (=> d!1244696 (= lt!1503672 (lemmaSamePrefixThenSameSuffix!2277 Nil!46696 input!3586 Nil!46696 lt!1503662 input!3586))))

(assert (=> d!1244696 (= lt!1503662 (getSuffix!2861 input!3586 Nil!46696))))

(declare-fun lt!1503661 () Unit!65805)

(declare-fun lt!1503679 () Unit!65805)

(assert (=> d!1244696 (= lt!1503661 lt!1503679)))

(assert (=> d!1244696 (isPrefix!4693 Nil!46696 (++!11908 Nil!46696 input!3586))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3097 (List!46820 List!46820) Unit!65805)

(assert (=> d!1244696 (= lt!1503679 (lemmaConcatTwoListThenFirstIsPrefix!3097 Nil!46696 input!3586))))

(assert (=> d!1244696 (validRegex!5801 (regex!7878 r!4334))))

(assert (=> d!1244696 (= (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 lt!1503558) lt!1503670)))

(assert (= (and d!1244696 c!718926) b!4229796))

(assert (= (and d!1244696 (not c!718926)) b!4229799))

(assert (= (and b!4229799 c!718928) b!4229809))

(assert (= (and b!4229799 (not c!718928)) b!4229805))

(assert (= (and b!4229809 c!718924) b!4229801))

(assert (= (and b!4229809 (not c!718924)) b!4229808))

(assert (= (and b!4229805 c!718925) b!4229800))

(assert (= (and b!4229805 (not c!718925)) b!4229803))

(assert (= (and b!4229805 c!718927) b!4229806))

(assert (= (and b!4229805 (not c!718927)) b!4229807))

(assert (= (and b!4229806 c!718923) b!4229802))

(assert (= (and b!4229806 (not c!718923)) b!4229797))

(assert (= (or b!4229806 b!4229807) bm!293300))

(assert (= (or b!4229806 b!4229807) bm!293299))

(assert (= (or b!4229806 b!4229807) bm!293305))

(assert (= (or b!4229806 b!4229807) bm!293303))

(assert (= (or b!4229809 b!4229800) bm!293301))

(assert (= (or b!4229809 b!4229800) bm!293302))

(assert (= (or b!4229809 b!4229805) bm!293298))

(assert (= (or b!4229809 b!4229800) bm!293304))

(assert (= (and d!1244696 res!1739511) b!4229804))

(assert (= (and b!4229804 (not res!1739510)) b!4229798))

(declare-fun m!4816351 () Bool)

(assert (=> b!4229806 m!4816351))

(declare-fun m!4816353 () Bool)

(assert (=> bm!293298 m!4816353))

(declare-fun m!4816355 () Bool)

(assert (=> b!4229805 m!4816355))

(declare-fun m!4816357 () Bool)

(assert (=> b!4229805 m!4816357))

(assert (=> b!4229805 m!4816205))

(assert (=> b!4229805 m!4816189))

(assert (=> b!4229805 m!4816355))

(declare-fun m!4816359 () Bool)

(assert (=> b!4229805 m!4816359))

(declare-fun m!4816361 () Bool)

(assert (=> b!4229805 m!4816361))

(assert (=> b!4229805 m!4816211))

(declare-fun m!4816363 () Bool)

(assert (=> b!4229805 m!4816363))

(declare-fun m!4816365 () Bool)

(assert (=> b!4229805 m!4816365))

(assert (=> b!4229805 m!4816363))

(declare-fun m!4816367 () Bool)

(assert (=> b!4229805 m!4816367))

(declare-fun m!4816369 () Bool)

(assert (=> b!4229805 m!4816369))

(declare-fun m!4816371 () Bool)

(assert (=> b!4229805 m!4816371))

(assert (=> b!4229805 m!4816165))

(assert (=> b!4229805 m!4816361))

(declare-fun m!4816373 () Bool)

(assert (=> b!4229805 m!4816373))

(assert (=> bm!293299 m!4816205))

(assert (=> bm!293301 m!4816161))

(assert (=> bm!293302 m!4816163))

(declare-fun m!4816375 () Bool)

(assert (=> b!4229798 m!4816375))

(assert (=> b!4229798 m!4816189))

(declare-fun m!4816377 () Bool)

(assert (=> bm!293303 m!4816377))

(declare-fun m!4816379 () Bool)

(assert (=> bm!293304 m!4816379))

(assert (=> bm!293300 m!4816211))

(declare-fun m!4816381 () Bool)

(assert (=> bm!293305 m!4816381))

(declare-fun m!4816383 () Bool)

(assert (=> d!1244696 m!4816383))

(declare-fun m!4816385 () Bool)

(assert (=> d!1244696 m!4816385))

(declare-fun m!4816387 () Bool)

(assert (=> d!1244696 m!4816387))

(assert (=> d!1244696 m!4816181))

(declare-fun m!4816389 () Bool)

(assert (=> d!1244696 m!4816389))

(declare-fun m!4816391 () Bool)

(assert (=> d!1244696 m!4816391))

(declare-fun m!4816393 () Bool)

(assert (=> d!1244696 m!4816393))

(assert (=> d!1244696 m!4816363))

(assert (=> d!1244696 m!4816391))

(declare-fun m!4816395 () Bool)

(assert (=> b!4229804 m!4816395))

(assert (=> b!4229553 d!1244696))

(declare-fun d!1244726 () Bool)

(declare-fun lt!1503685 () Int)

(assert (=> d!1244726 (>= lt!1503685 0)))

(declare-fun e!2626480 () Int)

(assert (=> d!1244726 (= lt!1503685 e!2626480)))

(declare-fun c!718931 () Bool)

(assert (=> d!1244726 (= c!718931 ((_ is Nil!46696) Nil!46696))))

(assert (=> d!1244726 (= (size!34217 Nil!46696) lt!1503685)))

(declare-fun b!4229814 () Bool)

(assert (=> b!4229814 (= e!2626480 0)))

(declare-fun b!4229815 () Bool)

(assert (=> b!4229815 (= e!2626480 (+ 1 (size!34217 (t!349449 Nil!46696))))))

(assert (= (and d!1244726 c!718931) b!4229814))

(assert (= (and d!1244726 (not c!718931)) b!4229815))

(declare-fun m!4816397 () Bool)

(assert (=> b!4229815 m!4816397))

(assert (=> b!4229553 d!1244726))

(declare-fun d!1244728 () Bool)

(declare-fun lt!1503686 () Int)

(assert (=> d!1244728 (>= lt!1503686 0)))

(declare-fun e!2626481 () Int)

(assert (=> d!1244728 (= lt!1503686 e!2626481)))

(declare-fun c!718932 () Bool)

(assert (=> d!1244728 (= c!718932 ((_ is Nil!46696) input!3586))))

(assert (=> d!1244728 (= (size!34217 input!3586) lt!1503686)))

(declare-fun b!4229816 () Bool)

(assert (=> b!4229816 (= e!2626481 0)))

(declare-fun b!4229817 () Bool)

(assert (=> b!4229817 (= e!2626481 (+ 1 (size!34217 (t!349449 input!3586))))))

(assert (= (and d!1244728 c!718932) b!4229816))

(assert (= (and d!1244728 (not c!718932)) b!4229817))

(declare-fun m!4816399 () Bool)

(assert (=> b!4229817 m!4816399))

(assert (=> b!4229542 d!1244728))

(declare-fun d!1244730 () Bool)

(declare-fun lt!1503687 () Int)

(assert (=> d!1244730 (>= lt!1503687 0)))

(declare-fun e!2626482 () Int)

(assert (=> d!1244730 (= lt!1503687 e!2626482)))

(declare-fun c!718933 () Bool)

(assert (=> d!1244730 (= c!718933 ((_ is Nil!46696) pBis!134))))

(assert (=> d!1244730 (= (size!34217 pBis!134) lt!1503687)))

(declare-fun b!4229818 () Bool)

(assert (=> b!4229818 (= e!2626482 0)))

(declare-fun b!4229819 () Bool)

(assert (=> b!4229819 (= e!2626482 (+ 1 (size!34217 (t!349449 pBis!134))))))

(assert (= (and d!1244730 c!718933) b!4229818))

(assert (= (and d!1244730 (not c!718933)) b!4229819))

(declare-fun m!4816401 () Bool)

(assert (=> b!4229819 m!4816401))

(assert (=> b!4229542 d!1244730))

(declare-fun b!4229839 () Bool)

(declare-fun e!2626501 () Bool)

(declare-fun e!2626497 () Bool)

(assert (=> b!4229839 (= e!2626501 e!2626497)))

(declare-fun res!1739524 () Bool)

(assert (=> b!4229839 (=> (not res!1739524) (not e!2626497))))

(declare-fun call!293318 () Bool)

(assert (=> b!4229839 (= res!1739524 call!293318)))

(declare-fun bm!293312 () Bool)

(declare-fun call!293319 () Bool)

(declare-fun call!293317 () Bool)

(assert (=> bm!293312 (= call!293319 call!293317)))

(declare-fun b!4229840 () Bool)

(declare-fun e!2626499 () Bool)

(declare-fun e!2626498 () Bool)

(assert (=> b!4229840 (= e!2626499 e!2626498)))

(declare-fun c!718938 () Bool)

(assert (=> b!4229840 (= c!718938 ((_ is Union!12783) (regex!7878 r!4334)))))

(declare-fun c!718939 () Bool)

(declare-fun bm!293313 () Bool)

(assert (=> bm!293313 (= call!293317 (validRegex!5801 (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))))))

(declare-fun b!4229841 () Bool)

(declare-fun res!1739522 () Bool)

(declare-fun e!2626502 () Bool)

(assert (=> b!4229841 (=> (not res!1739522) (not e!2626502))))

(assert (=> b!4229841 (= res!1739522 call!293318)))

(assert (=> b!4229841 (= e!2626498 e!2626502)))

(declare-fun b!4229842 () Bool)

(assert (=> b!4229842 (= e!2626502 call!293319)))

(declare-fun bm!293314 () Bool)

(assert (=> bm!293314 (= call!293318 (validRegex!5801 (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))))))

(declare-fun b!4229843 () Bool)

(declare-fun e!2626500 () Bool)

(assert (=> b!4229843 (= e!2626499 e!2626500)))

(declare-fun res!1739526 () Bool)

(assert (=> b!4229843 (= res!1739526 (not (nullable!4502 (reg!13112 (regex!7878 r!4334)))))))

(assert (=> b!4229843 (=> (not res!1739526) (not e!2626500))))

(declare-fun b!4229844 () Bool)

(assert (=> b!4229844 (= e!2626497 call!293319)))

(declare-fun b!4229845 () Bool)

(declare-fun e!2626503 () Bool)

(assert (=> b!4229845 (= e!2626503 e!2626499)))

(assert (=> b!4229845 (= c!718939 ((_ is Star!12783) (regex!7878 r!4334)))))

(declare-fun b!4229846 () Bool)

(assert (=> b!4229846 (= e!2626500 call!293317)))

(declare-fun b!4229838 () Bool)

(declare-fun res!1739523 () Bool)

(assert (=> b!4229838 (=> res!1739523 e!2626501)))

(assert (=> b!4229838 (= res!1739523 (not ((_ is Concat!20892) (regex!7878 r!4334))))))

(assert (=> b!4229838 (= e!2626498 e!2626501)))

(declare-fun d!1244732 () Bool)

(declare-fun res!1739525 () Bool)

(assert (=> d!1244732 (=> res!1739525 e!2626503)))

(assert (=> d!1244732 (= res!1739525 ((_ is ElementMatch!12783) (regex!7878 r!4334)))))

(assert (=> d!1244732 (= (validRegex!5801 (regex!7878 r!4334)) e!2626503)))

(assert (= (and d!1244732 (not res!1739525)) b!4229845))

(assert (= (and b!4229845 c!718939) b!4229843))

(assert (= (and b!4229845 (not c!718939)) b!4229840))

(assert (= (and b!4229843 res!1739526) b!4229846))

(assert (= (and b!4229840 c!718938) b!4229841))

(assert (= (and b!4229840 (not c!718938)) b!4229838))

(assert (= (and b!4229841 res!1739522) b!4229842))

(assert (= (and b!4229838 (not res!1739523)) b!4229839))

(assert (= (and b!4229839 res!1739524) b!4229844))

(assert (= (or b!4229841 b!4229839) bm!293314))

(assert (= (or b!4229842 b!4229844) bm!293312))

(assert (= (or b!4229846 bm!293312) bm!293313))

(declare-fun m!4816403 () Bool)

(assert (=> bm!293313 m!4816403))

(declare-fun m!4816405 () Bool)

(assert (=> bm!293314 m!4816405))

(declare-fun m!4816407 () Bool)

(assert (=> b!4229843 m!4816407))

(assert (=> b!4229541 d!1244732))

(declare-fun d!1244734 () Bool)

(declare-fun lt!1503688 () Int)

(assert (=> d!1244734 (>= lt!1503688 0)))

(declare-fun e!2626504 () Int)

(assert (=> d!1244734 (= lt!1503688 e!2626504)))

(declare-fun c!718940 () Bool)

(assert (=> d!1244734 (= c!718940 ((_ is Nil!46696) p!3014))))

(assert (=> d!1244734 (= (size!34217 p!3014) lt!1503688)))

(declare-fun b!4229847 () Bool)

(assert (=> b!4229847 (= e!2626504 0)))

(declare-fun b!4229848 () Bool)

(assert (=> b!4229848 (= e!2626504 (+ 1 (size!34217 (t!349449 p!3014))))))

(assert (= (and d!1244734 c!718940) b!4229847))

(assert (= (and d!1244734 (not c!718940)) b!4229848))

(declare-fun m!4816409 () Bool)

(assert (=> b!4229848 m!4816409))

(assert (=> b!4229552 d!1244734))

(declare-fun b!4229879 () Bool)

(declare-fun e!2626520 () Bool)

(declare-fun e!2626524 () Bool)

(assert (=> b!4229879 (= e!2626520 e!2626524)))

(declare-fun res!1739549 () Bool)

(assert (=> b!4229879 (=> (not res!1739549) (not e!2626524))))

(declare-fun lt!1503705 () Bool)

(assert (=> b!4229879 (= res!1739549 (not lt!1503705))))

(declare-fun b!4229880 () Bool)

(declare-fun e!2626519 () Bool)

(assert (=> b!4229880 (= e!2626519 (= (head!8966 p!3014) (c!718870 (regex!7878 r!4334))))))

(declare-fun b!4229881 () Bool)

(declare-fun res!1739550 () Bool)

(assert (=> b!4229881 (=> res!1739550 e!2626520)))

(assert (=> b!4229881 (= res!1739550 e!2626519)))

(declare-fun res!1739547 () Bool)

(assert (=> b!4229881 (=> (not res!1739547) (not e!2626519))))

(assert (=> b!4229881 (= res!1739547 lt!1503705)))

(declare-fun b!4229882 () Bool)

(declare-fun res!1739546 () Bool)

(assert (=> b!4229882 (=> res!1739546 e!2626520)))

(assert (=> b!4229882 (= res!1739546 (not ((_ is ElementMatch!12783) (regex!7878 r!4334))))))

(declare-fun e!2626523 () Bool)

(assert (=> b!4229882 (= e!2626523 e!2626520)))

(declare-fun b!4229883 () Bool)

(declare-fun e!2626521 () Bool)

(declare-fun call!293322 () Bool)

(assert (=> b!4229883 (= e!2626521 (= lt!1503705 call!293322))))

(declare-fun b!4229884 () Bool)

(declare-fun res!1739545 () Bool)

(declare-fun e!2626522 () Bool)

(assert (=> b!4229884 (=> res!1739545 e!2626522)))

(assert (=> b!4229884 (= res!1739545 (not (isEmpty!27608 (tail!6813 p!3014))))))

(declare-fun b!4229885 () Bool)

(declare-fun res!1739543 () Bool)

(assert (=> b!4229885 (=> (not res!1739543) (not e!2626519))))

(assert (=> b!4229885 (= res!1739543 (not call!293322))))

(declare-fun d!1244736 () Bool)

(assert (=> d!1244736 e!2626521))

(declare-fun c!718949 () Bool)

(assert (=> d!1244736 (= c!718949 ((_ is EmptyExpr!12783) (regex!7878 r!4334)))))

(declare-fun e!2626525 () Bool)

(assert (=> d!1244736 (= lt!1503705 e!2626525)))

(declare-fun c!718948 () Bool)

(assert (=> d!1244736 (= c!718948 (isEmpty!27608 p!3014))))

(assert (=> d!1244736 (validRegex!5801 (regex!7878 r!4334))))

(assert (=> d!1244736 (= (matchR!6422 (regex!7878 r!4334) p!3014) lt!1503705)))

(declare-fun b!4229886 () Bool)

(assert (=> b!4229886 (= e!2626522 (not (= (head!8966 p!3014) (c!718870 (regex!7878 r!4334)))))))

(declare-fun b!4229887 () Bool)

(assert (=> b!4229887 (= e!2626525 (matchR!6422 (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014)) (tail!6813 p!3014)))))

(declare-fun b!4229888 () Bool)

(assert (=> b!4229888 (= e!2626525 (nullable!4502 (regex!7878 r!4334)))))

(declare-fun bm!293317 () Bool)

(assert (=> bm!293317 (= call!293322 (isEmpty!27608 p!3014))))

(declare-fun b!4229889 () Bool)

(assert (=> b!4229889 (= e!2626523 (not lt!1503705))))

(declare-fun b!4229890 () Bool)

(assert (=> b!4229890 (= e!2626521 e!2626523)))

(declare-fun c!718947 () Bool)

(assert (=> b!4229890 (= c!718947 ((_ is EmptyLang!12783) (regex!7878 r!4334)))))

(declare-fun b!4229891 () Bool)

(assert (=> b!4229891 (= e!2626524 e!2626522)))

(declare-fun res!1739548 () Bool)

(assert (=> b!4229891 (=> res!1739548 e!2626522)))

(assert (=> b!4229891 (= res!1739548 call!293322)))

(declare-fun b!4229892 () Bool)

(declare-fun res!1739544 () Bool)

(assert (=> b!4229892 (=> (not res!1739544) (not e!2626519))))

(assert (=> b!4229892 (= res!1739544 (isEmpty!27608 (tail!6813 p!3014)))))

(assert (= (and d!1244736 c!718948) b!4229888))

(assert (= (and d!1244736 (not c!718948)) b!4229887))

(assert (= (and d!1244736 c!718949) b!4229883))

(assert (= (and d!1244736 (not c!718949)) b!4229890))

(assert (= (and b!4229890 c!718947) b!4229889))

(assert (= (and b!4229890 (not c!718947)) b!4229882))

(assert (= (and b!4229882 (not res!1739546)) b!4229881))

(assert (= (and b!4229881 res!1739547) b!4229885))

(assert (= (and b!4229885 res!1739543) b!4229892))

(assert (= (and b!4229892 res!1739544) b!4229880))

(assert (= (and b!4229881 (not res!1739550)) b!4229879))

(assert (= (and b!4229879 res!1739549) b!4229891))

(assert (= (and b!4229891 (not res!1739548)) b!4229884))

(assert (= (and b!4229884 (not res!1739545)) b!4229886))

(assert (= (or b!4229883 b!4229885 b!4229891) bm!293317))

(assert (=> b!4229884 m!4816203))

(assert (=> b!4229884 m!4816203))

(declare-fun m!4816411 () Bool)

(assert (=> b!4229884 m!4816411))

(assert (=> b!4229886 m!4816209))

(declare-fun m!4816413 () Bool)

(assert (=> d!1244736 m!4816413))

(assert (=> d!1244736 m!4816181))

(assert (=> bm!293317 m!4816413))

(assert (=> b!4229880 m!4816209))

(assert (=> b!4229887 m!4816209))

(assert (=> b!4229887 m!4816209))

(declare-fun m!4816415 () Bool)

(assert (=> b!4229887 m!4816415))

(assert (=> b!4229887 m!4816203))

(assert (=> b!4229887 m!4816415))

(assert (=> b!4229887 m!4816203))

(declare-fun m!4816417 () Bool)

(assert (=> b!4229887 m!4816417))

(assert (=> b!4229892 m!4816203))

(assert (=> b!4229892 m!4816203))

(assert (=> b!4229892 m!4816411))

(assert (=> b!4229888 m!4816353))

(assert (=> b!4229540 d!1244736))

(declare-fun b!4229909 () Bool)

(declare-fun e!2626536 () Bool)

(assert (=> b!4229909 (= e!2626536 (isPrefix!4693 (tail!6813 pBis!134) (tail!6813 input!3586)))))

(declare-fun b!4229908 () Bool)

(declare-fun res!1739551 () Bool)

(assert (=> b!4229908 (=> (not res!1739551) (not e!2626536))))

(assert (=> b!4229908 (= res!1739551 (= (head!8966 pBis!134) (head!8966 input!3586)))))

(declare-fun b!4229907 () Bool)

(declare-fun e!2626534 () Bool)

(assert (=> b!4229907 (= e!2626534 e!2626536)))

(declare-fun res!1739553 () Bool)

(assert (=> b!4229907 (=> (not res!1739553) (not e!2626536))))

(assert (=> b!4229907 (= res!1739553 (not ((_ is Nil!46696) input!3586)))))

(declare-fun b!4229910 () Bool)

(declare-fun e!2626535 () Bool)

(assert (=> b!4229910 (= e!2626535 (>= (size!34217 input!3586) (size!34217 pBis!134)))))

(declare-fun d!1244738 () Bool)

(assert (=> d!1244738 e!2626535))

(declare-fun res!1739554 () Bool)

(assert (=> d!1244738 (=> res!1739554 e!2626535)))

(declare-fun lt!1503728 () Bool)

(assert (=> d!1244738 (= res!1739554 (not lt!1503728))))

(assert (=> d!1244738 (= lt!1503728 e!2626534)))

(declare-fun res!1739552 () Bool)

(assert (=> d!1244738 (=> res!1739552 e!2626534)))

(assert (=> d!1244738 (= res!1739552 ((_ is Nil!46696) pBis!134))))

(assert (=> d!1244738 (= (isPrefix!4693 pBis!134 input!3586) lt!1503728)))

(assert (= (and d!1244738 (not res!1739552)) b!4229907))

(assert (= (and b!4229907 res!1739553) b!4229908))

(assert (= (and b!4229908 res!1739551) b!4229909))

(assert (= (and d!1244738 (not res!1739554)) b!4229910))

(declare-fun m!4816419 () Bool)

(assert (=> b!4229909 m!4816419))

(assert (=> b!4229909 m!4816205))

(assert (=> b!4229909 m!4816419))

(assert (=> b!4229909 m!4816205))

(declare-fun m!4816421 () Bool)

(assert (=> b!4229909 m!4816421))

(declare-fun m!4816423 () Bool)

(assert (=> b!4229908 m!4816423))

(assert (=> b!4229908 m!4816211))

(assert (=> b!4229910 m!4816165))

(assert (=> b!4229910 m!4816167))

(assert (=> b!4229539 d!1244738))

(declare-fun d!1244740 () Bool)

(assert (=> d!1244740 (= (inv!61378 (tag!8742 (rule!10994 t!8425))) (= (mod (str.len (value!245020 (tag!8742 (rule!10994 t!8425)))) 2) 0))))

(assert (=> b!4229537 d!1244740))

(declare-fun d!1244742 () Bool)

(declare-fun res!1739557 () Bool)

(declare-fun e!2626543 () Bool)

(assert (=> d!1244742 (=> (not res!1739557) (not e!2626543))))

(declare-fun semiInverseModEq!3427 (Int Int) Bool)

(assert (=> d!1244742 (= res!1739557 (semiInverseModEq!3427 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (toValue!10606 (transformation!7878 (rule!10994 t!8425)))))))

(assert (=> d!1244742 (= (inv!61381 (transformation!7878 (rule!10994 t!8425))) e!2626543)))

(declare-fun b!4229921 () Bool)

(declare-fun equivClasses!3326 (Int Int) Bool)

(assert (=> b!4229921 (= e!2626543 (equivClasses!3326 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (toValue!10606 (transformation!7878 (rule!10994 t!8425)))))))

(assert (= (and d!1244742 res!1739557) b!4229921))

(declare-fun m!4816425 () Bool)

(assert (=> d!1244742 m!4816425))

(declare-fun m!4816427 () Bool)

(assert (=> b!4229921 m!4816427))

(assert (=> b!4229537 d!1244742))

(declare-fun d!1244744 () Bool)

(declare-fun list!16860 (Conc!14089) List!46820)

(assert (=> d!1244744 (= (list!16858 (charsOf!5253 t!8425)) (list!16860 (c!718871 (charsOf!5253 t!8425))))))

(declare-fun bs!597906 () Bool)

(assert (= bs!597906 d!1244744))

(declare-fun m!4816429 () Bool)

(assert (=> bs!597906 m!4816429))

(assert (=> b!4229548 d!1244744))

(declare-fun d!1244746 () Bool)

(declare-fun lt!1503751 () BalanceConc!27772)

(assert (=> d!1244746 (= (list!16858 lt!1503751) (originalCharacters!8226 t!8425))))

(assert (=> d!1244746 (= lt!1503751 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))))

(assert (=> d!1244746 (= (charsOf!5253 t!8425) lt!1503751)))

(declare-fun b_lambda!124537 () Bool)

(assert (=> (not b_lambda!124537) (not d!1244746)))

(assert (=> d!1244746 t!349452))

(declare-fun b_and!334197 () Bool)

(assert (= b_and!334185 (and (=> t!349452 result!309536) b_and!334197)))

(assert (=> d!1244746 t!349454))

(declare-fun b_and!334199 () Bool)

(assert (= b_and!334187 (and (=> t!349454 result!309540) b_and!334199)))

(declare-fun m!4816431 () Bool)

(assert (=> d!1244746 m!4816431))

(assert (=> d!1244746 m!4816233))

(assert (=> b!4229548 d!1244746))

(declare-fun b!4229988 () Bool)

(declare-fun e!2626577 () Bool)

(declare-fun lt!1503795 () Option!10026)

(declare-fun get!15186 (Option!10026) tuple2!44300)

(assert (=> b!4229988 (= e!2626577 (= (size!34216 (_1!25284 (get!15186 lt!1503795))) (size!34217 (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795))))))))

(declare-fun b!4229989 () Bool)

(declare-fun res!1739581 () Bool)

(assert (=> b!4229989 (=> (not res!1739581) (not e!2626577))))

(declare-fun apply!10731 (TokenValueInjection!15644 BalanceConc!27772) TokenValue!8108)

(declare-fun seqFromList!5791 (List!46820) BalanceConc!27772)

(assert (=> b!4229989 (= res!1739581 (= (value!245021 (_1!25284 (get!15186 lt!1503795))) (apply!10731 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795)))) (seqFromList!5791 (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795)))))))))

(declare-fun b!4229990 () Bool)

(declare-fun e!2626579 () Bool)

(assert (=> b!4229990 (= e!2626579 e!2626577)))

(declare-fun res!1739582 () Bool)

(assert (=> b!4229990 (=> (not res!1739582) (not e!2626577))))

(assert (=> b!4229990 (= res!1739582 (matchR!6422 (regex!7878 r!4334) (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))))))

(declare-fun b!4229991 () Bool)

(declare-fun e!2626580 () Bool)

(assert (=> b!4229991 (= e!2626580 (matchR!6422 (regex!7878 r!4334) (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))))))

(declare-fun b!4229992 () Bool)

(declare-fun res!1739580 () Bool)

(assert (=> b!4229992 (=> (not res!1739580) (not e!2626577))))

(assert (=> b!4229992 (= res!1739580 (= (++!11908 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795)))) (_2!25284 (get!15186 lt!1503795))) input!3586))))

(declare-fun b!4229993 () Bool)

(declare-fun e!2626578 () Option!10026)

(declare-fun lt!1503793 () tuple2!44302)

(declare-fun size!34219 (BalanceConc!27772) Int)

(assert (=> b!4229993 (= e!2626578 (Some!10025 (tuple2!44301 (Token!14391 (apply!10731 (transformation!7878 r!4334) (seqFromList!5791 (_1!25285 lt!1503793))) r!4334 (size!34219 (seqFromList!5791 (_1!25285 lt!1503793))) (_1!25285 lt!1503793)) (_2!25285 lt!1503793))))))

(declare-fun lt!1503794 () Unit!65805)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1654 (Regex!12783 List!46820) Unit!65805)

(assert (=> b!4229993 (= lt!1503794 (longestMatchIsAcceptedByMatchOrIsEmpty!1654 (regex!7878 r!4334) input!3586))))

(declare-fun res!1739583 () Bool)

(assert (=> b!4229993 (= res!1739583 (isEmpty!27608 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))))))

(assert (=> b!4229993 (=> res!1739583 e!2626580)))

(assert (=> b!4229993 e!2626580))

(declare-fun lt!1503791 () Unit!65805)

(assert (=> b!4229993 (= lt!1503791 lt!1503794)))

(declare-fun lt!1503792 () Unit!65805)

(declare-fun lemmaSemiInverse!2522 (TokenValueInjection!15644 BalanceConc!27772) Unit!65805)

(assert (=> b!4229993 (= lt!1503792 (lemmaSemiInverse!2522 (transformation!7878 r!4334) (seqFromList!5791 (_1!25285 lt!1503793))))))

(declare-fun b!4229994 () Bool)

(declare-fun res!1739579 () Bool)

(assert (=> b!4229994 (=> (not res!1739579) (not e!2626577))))

(assert (=> b!4229994 (= res!1739579 (= (rule!10994 (_1!25284 (get!15186 lt!1503795))) r!4334))))

(declare-fun b!4229996 () Bool)

(declare-fun res!1739584 () Bool)

(assert (=> b!4229996 (=> (not res!1739584) (not e!2626577))))

(assert (=> b!4229996 (= res!1739584 (< (size!34217 (_2!25284 (get!15186 lt!1503795))) (size!34217 input!3586)))))

(declare-fun b!4229995 () Bool)

(assert (=> b!4229995 (= e!2626578 None!10025)))

(declare-fun d!1244748 () Bool)

(assert (=> d!1244748 e!2626579))

(declare-fun res!1739585 () Bool)

(assert (=> d!1244748 (=> res!1739585 e!2626579)))

(declare-fun isEmpty!27609 (Option!10026) Bool)

(assert (=> d!1244748 (= res!1739585 (isEmpty!27609 lt!1503795))))

(assert (=> d!1244748 (= lt!1503795 e!2626578)))

(declare-fun c!718972 () Bool)

(assert (=> d!1244748 (= c!718972 (isEmpty!27608 (_1!25285 lt!1503793)))))

(declare-fun findLongestMatch!1594 (Regex!12783 List!46820) tuple2!44302)

(assert (=> d!1244748 (= lt!1503793 (findLongestMatch!1594 (regex!7878 r!4334) input!3586))))

(assert (=> d!1244748 (ruleValid!3574 thiss!26785 r!4334)))

(assert (=> d!1244748 (= (maxPrefixOneRule!3420 thiss!26785 r!4334 input!3586) lt!1503795)))

(assert (= (and d!1244748 c!718972) b!4229995))

(assert (= (and d!1244748 (not c!718972)) b!4229993))

(assert (= (and b!4229993 (not res!1739583)) b!4229991))

(assert (= (and d!1244748 (not res!1739585)) b!4229990))

(assert (= (and b!4229990 res!1739582) b!4229992))

(assert (= (and b!4229992 res!1739580) b!4229996))

(assert (= (and b!4229996 res!1739584) b!4229994))

(assert (= (and b!4229994 res!1739579) b!4229989))

(assert (= (and b!4229989 res!1739581) b!4229988))

(declare-fun m!4816483 () Bool)

(assert (=> b!4229994 m!4816483))

(assert (=> b!4229991 m!4816189))

(assert (=> b!4229991 m!4816165))

(assert (=> b!4229991 m!4816189))

(assert (=> b!4229991 m!4816165))

(declare-fun m!4816485 () Bool)

(assert (=> b!4229991 m!4816485))

(declare-fun m!4816487 () Bool)

(assert (=> b!4229991 m!4816487))

(assert (=> b!4229996 m!4816483))

(declare-fun m!4816489 () Bool)

(assert (=> b!4229996 m!4816489))

(assert (=> b!4229996 m!4816165))

(assert (=> b!4229989 m!4816483))

(declare-fun m!4816491 () Bool)

(assert (=> b!4229989 m!4816491))

(assert (=> b!4229989 m!4816491))

(declare-fun m!4816493 () Bool)

(assert (=> b!4229989 m!4816493))

(assert (=> b!4229988 m!4816483))

(declare-fun m!4816495 () Bool)

(assert (=> b!4229988 m!4816495))

(declare-fun m!4816497 () Bool)

(assert (=> d!1244748 m!4816497))

(declare-fun m!4816499 () Bool)

(assert (=> d!1244748 m!4816499))

(declare-fun m!4816501 () Bool)

(assert (=> d!1244748 m!4816501))

(assert (=> d!1244748 m!4816197))

(assert (=> b!4229990 m!4816483))

(declare-fun m!4816503 () Bool)

(assert (=> b!4229990 m!4816503))

(assert (=> b!4229990 m!4816503))

(declare-fun m!4816505 () Bool)

(assert (=> b!4229990 m!4816505))

(assert (=> b!4229990 m!4816505))

(declare-fun m!4816507 () Bool)

(assert (=> b!4229990 m!4816507))

(assert (=> b!4229992 m!4816483))

(assert (=> b!4229992 m!4816503))

(assert (=> b!4229992 m!4816503))

(assert (=> b!4229992 m!4816505))

(assert (=> b!4229992 m!4816505))

(declare-fun m!4816509 () Bool)

(assert (=> b!4229992 m!4816509))

(declare-fun m!4816511 () Bool)

(assert (=> b!4229993 m!4816511))

(declare-fun m!4816513 () Bool)

(assert (=> b!4229993 m!4816513))

(declare-fun m!4816515 () Bool)

(assert (=> b!4229993 m!4816515))

(assert (=> b!4229993 m!4816515))

(declare-fun m!4816517 () Bool)

(assert (=> b!4229993 m!4816517))

(assert (=> b!4229993 m!4816515))

(declare-fun m!4816519 () Bool)

(assert (=> b!4229993 m!4816519))

(assert (=> b!4229993 m!4816189))

(assert (=> b!4229993 m!4816165))

(assert (=> b!4229993 m!4816515))

(declare-fun m!4816521 () Bool)

(assert (=> b!4229993 m!4816521))

(assert (=> b!4229993 m!4816189))

(assert (=> b!4229993 m!4816165))

(assert (=> b!4229993 m!4816485))

(assert (=> b!4229547 d!1244748))

(declare-fun b!4229999 () Bool)

(declare-fun e!2626583 () Bool)

(assert (=> b!4229999 (= e!2626583 (isPrefix!4693 (tail!6813 input!3586) (tail!6813 input!3586)))))

(declare-fun b!4229998 () Bool)

(declare-fun res!1739586 () Bool)

(assert (=> b!4229998 (=> (not res!1739586) (not e!2626583))))

(assert (=> b!4229998 (= res!1739586 (= (head!8966 input!3586) (head!8966 input!3586)))))

(declare-fun b!4229997 () Bool)

(declare-fun e!2626581 () Bool)

(assert (=> b!4229997 (= e!2626581 e!2626583)))

(declare-fun res!1739588 () Bool)

(assert (=> b!4229997 (=> (not res!1739588) (not e!2626583))))

(assert (=> b!4229997 (= res!1739588 (not ((_ is Nil!46696) input!3586)))))

(declare-fun b!4230000 () Bool)

(declare-fun e!2626582 () Bool)

(assert (=> b!4230000 (= e!2626582 (>= (size!34217 input!3586) (size!34217 input!3586)))))

(declare-fun d!1244756 () Bool)

(assert (=> d!1244756 e!2626582))

(declare-fun res!1739589 () Bool)

(assert (=> d!1244756 (=> res!1739589 e!2626582)))

(declare-fun lt!1503796 () Bool)

(assert (=> d!1244756 (= res!1739589 (not lt!1503796))))

(assert (=> d!1244756 (= lt!1503796 e!2626581)))

(declare-fun res!1739587 () Bool)

(assert (=> d!1244756 (=> res!1739587 e!2626581)))

(assert (=> d!1244756 (= res!1739587 ((_ is Nil!46696) input!3586))))

(assert (=> d!1244756 (= (isPrefix!4693 input!3586 input!3586) lt!1503796)))

(assert (= (and d!1244756 (not res!1739587)) b!4229997))

(assert (= (and b!4229997 res!1739588) b!4229998))

(assert (= (and b!4229998 res!1739586) b!4229999))

(assert (= (and d!1244756 (not res!1739589)) b!4230000))

(assert (=> b!4229999 m!4816205))

(assert (=> b!4229999 m!4816205))

(assert (=> b!4229999 m!4816205))

(assert (=> b!4229999 m!4816205))

(declare-fun m!4816523 () Bool)

(assert (=> b!4229999 m!4816523))

(assert (=> b!4229998 m!4816211))

(assert (=> b!4229998 m!4816211))

(assert (=> b!4230000 m!4816165))

(assert (=> b!4230000 m!4816165))

(assert (=> b!4229547 d!1244756))

(declare-fun d!1244758 () Bool)

(assert (=> d!1244758 (isPrefix!4693 input!3586 input!3586)))

(declare-fun lt!1503799 () Unit!65805)

(declare-fun choose!25894 (List!46820 List!46820) Unit!65805)

(assert (=> d!1244758 (= lt!1503799 (choose!25894 input!3586 input!3586))))

(assert (=> d!1244758 (= (lemmaIsPrefixRefl!3104 input!3586 input!3586) lt!1503799)))

(declare-fun bs!597907 () Bool)

(assert (= bs!597907 d!1244758))

(assert (=> bs!597907 m!4816161))

(declare-fun m!4816525 () Bool)

(assert (=> bs!597907 m!4816525))

(assert (=> b!4229547 d!1244758))

(declare-fun b!4230010 () Bool)

(declare-fun e!2626588 () List!46820)

(assert (=> b!4230010 (= e!2626588 (Cons!46696 (h!52116 p!3014) (++!11908 (t!349449 p!3014) suffix!1590)))))

(declare-fun d!1244760 () Bool)

(declare-fun e!2626589 () Bool)

(assert (=> d!1244760 e!2626589))

(declare-fun res!1739594 () Bool)

(assert (=> d!1244760 (=> (not res!1739594) (not e!2626589))))

(declare-fun lt!1503802 () List!46820)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7337 (List!46820) (InoxSet C!25764))

(assert (=> d!1244760 (= res!1739594 (= (content!7337 lt!1503802) ((_ map or) (content!7337 p!3014) (content!7337 suffix!1590))))))

(assert (=> d!1244760 (= lt!1503802 e!2626588)))

(declare-fun c!718975 () Bool)

(assert (=> d!1244760 (= c!718975 ((_ is Nil!46696) p!3014))))

(assert (=> d!1244760 (= (++!11908 p!3014 suffix!1590) lt!1503802)))

(declare-fun b!4230012 () Bool)

(assert (=> b!4230012 (= e!2626589 (or (not (= suffix!1590 Nil!46696)) (= lt!1503802 p!3014)))))

(declare-fun b!4230009 () Bool)

(assert (=> b!4230009 (= e!2626588 suffix!1590)))

(declare-fun b!4230011 () Bool)

(declare-fun res!1739595 () Bool)

(assert (=> b!4230011 (=> (not res!1739595) (not e!2626589))))

(assert (=> b!4230011 (= res!1739595 (= (size!34217 lt!1503802) (+ (size!34217 p!3014) (size!34217 suffix!1590))))))

(assert (= (and d!1244760 c!718975) b!4230009))

(assert (= (and d!1244760 (not c!718975)) b!4230010))

(assert (= (and d!1244760 res!1739594) b!4230011))

(assert (= (and b!4230011 res!1739595) b!4230012))

(declare-fun m!4816527 () Bool)

(assert (=> b!4230010 m!4816527))

(declare-fun m!4816529 () Bool)

(assert (=> d!1244760 m!4816529))

(declare-fun m!4816531 () Bool)

(assert (=> d!1244760 m!4816531))

(declare-fun m!4816533 () Bool)

(assert (=> d!1244760 m!4816533))

(declare-fun m!4816535 () Bool)

(assert (=> b!4230011 m!4816535))

(assert (=> b!4230011 m!4816169))

(declare-fun m!4816537 () Bool)

(assert (=> b!4230011 m!4816537))

(assert (=> b!4229536 d!1244760))

(declare-fun d!1244762 () Bool)

(assert (=> d!1244762 (= (inv!61378 (tag!8742 r!4334)) (= (mod (str.len (value!245020 (tag!8742 r!4334))) 2) 0))))

(assert (=> b!4229545 d!1244762))

(declare-fun d!1244764 () Bool)

(declare-fun res!1739596 () Bool)

(declare-fun e!2626590 () Bool)

(assert (=> d!1244764 (=> (not res!1739596) (not e!2626590))))

(assert (=> d!1244764 (= res!1739596 (semiInverseModEq!3427 (toChars!10465 (transformation!7878 r!4334)) (toValue!10606 (transformation!7878 r!4334))))))

(assert (=> d!1244764 (= (inv!61381 (transformation!7878 r!4334)) e!2626590)))

(declare-fun b!4230013 () Bool)

(assert (=> b!4230013 (= e!2626590 (equivClasses!3326 (toChars!10465 (transformation!7878 r!4334)) (toValue!10606 (transformation!7878 r!4334))))))

(assert (= (and d!1244764 res!1739596) b!4230013))

(declare-fun m!4816539 () Bool)

(assert (=> d!1244764 m!4816539))

(declare-fun m!4816541 () Bool)

(assert (=> b!4230013 m!4816541))

(assert (=> b!4229545 d!1244764))

(declare-fun d!1244766 () Bool)

(declare-fun res!1739601 () Bool)

(declare-fun e!2626593 () Bool)

(assert (=> d!1244766 (=> (not res!1739601) (not e!2626593))))

(assert (=> d!1244766 (= res!1739601 (validRegex!5801 (regex!7878 r!4334)))))

(assert (=> d!1244766 (= (ruleValid!3574 thiss!26785 r!4334) e!2626593)))

(declare-fun b!4230018 () Bool)

(declare-fun res!1739602 () Bool)

(assert (=> b!4230018 (=> (not res!1739602) (not e!2626593))))

(assert (=> b!4230018 (= res!1739602 (not (nullable!4502 (regex!7878 r!4334))))))

(declare-fun b!4230019 () Bool)

(assert (=> b!4230019 (= e!2626593 (not (= (tag!8742 r!4334) (String!54415 ""))))))

(assert (= (and d!1244766 res!1739601) b!4230018))

(assert (= (and b!4230018 res!1739602) b!4230019))

(assert (=> d!1244766 m!4816181))

(assert (=> b!4230018 m!4816353))

(assert (=> b!4229556 d!1244766))

(declare-fun b!4230024 () Bool)

(declare-fun e!2626596 () Bool)

(declare-fun tp!1295698 () Bool)

(assert (=> b!4230024 (= e!2626596 (and tp_is_empty!22501 tp!1295698))))

(assert (=> b!4229549 (= tp!1295653 e!2626596)))

(assert (= (and b!4229549 ((_ is Cons!46696) (t!349449 p!3014))) b!4230024))

(declare-fun b!4230025 () Bool)

(declare-fun e!2626597 () Bool)

(declare-fun tp!1295699 () Bool)

(assert (=> b!4230025 (= e!2626597 (and tp_is_empty!22501 tp!1295699))))

(assert (=> b!4229543 (= tp!1295656 e!2626597)))

(assert (= (and b!4229543 ((_ is Cons!46696) (originalCharacters!8226 t!8425))) b!4230025))

(declare-fun b!4230026 () Bool)

(declare-fun e!2626598 () Bool)

(declare-fun tp!1295700 () Bool)

(assert (=> b!4230026 (= e!2626598 (and tp_is_empty!22501 tp!1295700))))

(assert (=> b!4229554 (= tp!1295657 e!2626598)))

(assert (= (and b!4229554 ((_ is Cons!46696) (t!349449 pBis!134))) b!4230026))

(declare-fun b!4230027 () Bool)

(declare-fun e!2626599 () Bool)

(declare-fun tp!1295701 () Bool)

(assert (=> b!4230027 (= e!2626599 (and tp_is_empty!22501 tp!1295701))))

(assert (=> b!4229538 (= tp!1295654 e!2626599)))

(assert (= (and b!4229538 ((_ is Cons!46696) (t!349449 input!3586))) b!4230027))

(declare-fun e!2626602 () Bool)

(assert (=> b!4229537 (= tp!1295659 e!2626602)))

(declare-fun b!4230039 () Bool)

(declare-fun tp!1295714 () Bool)

(declare-fun tp!1295715 () Bool)

(assert (=> b!4230039 (= e!2626602 (and tp!1295714 tp!1295715))))

(declare-fun b!4230041 () Bool)

(declare-fun tp!1295716 () Bool)

(declare-fun tp!1295713 () Bool)

(assert (=> b!4230041 (= e!2626602 (and tp!1295716 tp!1295713))))

(declare-fun b!4230038 () Bool)

(assert (=> b!4230038 (= e!2626602 tp_is_empty!22501)))

(declare-fun b!4230040 () Bool)

(declare-fun tp!1295712 () Bool)

(assert (=> b!4230040 (= e!2626602 tp!1295712)))

(assert (= (and b!4229537 ((_ is ElementMatch!12783) (regex!7878 (rule!10994 t!8425)))) b!4230038))

(assert (= (and b!4229537 ((_ is Concat!20892) (regex!7878 (rule!10994 t!8425)))) b!4230039))

(assert (= (and b!4229537 ((_ is Star!12783) (regex!7878 (rule!10994 t!8425)))) b!4230040))

(assert (= (and b!4229537 ((_ is Union!12783) (regex!7878 (rule!10994 t!8425)))) b!4230041))

(declare-fun b!4230042 () Bool)

(declare-fun e!2626603 () Bool)

(declare-fun tp!1295717 () Bool)

(assert (=> b!4230042 (= e!2626603 (and tp_is_empty!22501 tp!1295717))))

(assert (=> b!4229551 (= tp!1295652 e!2626603)))

(assert (= (and b!4229551 ((_ is Cons!46696) (t!349449 suffix!1590))) b!4230042))

(declare-fun e!2626604 () Bool)

(assert (=> b!4229545 (= tp!1295658 e!2626604)))

(declare-fun b!4230044 () Bool)

(declare-fun tp!1295720 () Bool)

(declare-fun tp!1295721 () Bool)

(assert (=> b!4230044 (= e!2626604 (and tp!1295720 tp!1295721))))

(declare-fun b!4230046 () Bool)

(declare-fun tp!1295722 () Bool)

(declare-fun tp!1295719 () Bool)

(assert (=> b!4230046 (= e!2626604 (and tp!1295722 tp!1295719))))

(declare-fun b!4230043 () Bool)

(assert (=> b!4230043 (= e!2626604 tp_is_empty!22501)))

(declare-fun b!4230045 () Bool)

(declare-fun tp!1295718 () Bool)

(assert (=> b!4230045 (= e!2626604 tp!1295718)))

(assert (= (and b!4229545 ((_ is ElementMatch!12783) (regex!7878 r!4334))) b!4230043))

(assert (= (and b!4229545 ((_ is Concat!20892) (regex!7878 r!4334))) b!4230044))

(assert (= (and b!4229545 ((_ is Star!12783) (regex!7878 r!4334))) b!4230045))

(assert (= (and b!4229545 ((_ is Union!12783) (regex!7878 r!4334))) b!4230046))

(declare-fun b_lambda!124543 () Bool)

(assert (= b_lambda!124531 (or (and b!4229555 b_free!124925) (and b!4229546 b_free!124929 (= (toChars!10465 (transformation!7878 r!4334)) (toChars!10465 (transformation!7878 (rule!10994 t!8425))))) b_lambda!124543)))

(declare-fun b_lambda!124545 () Bool)

(assert (= b_lambda!124537 (or (and b!4229555 b_free!124925) (and b!4229546 b_free!124929 (= (toChars!10465 (transformation!7878 r!4334)) (toChars!10465 (transformation!7878 (rule!10994 t!8425))))) b_lambda!124545)))

(check-sat (not bm!293300) (not b!4230024) (not b!4229990) (not b!4229998) (not b!4230027) b_and!334177 (not bm!293317) (not bm!293313) b_and!334197 (not b_next!125633) (not d!1244696) (not b!4229908) (not bm!293302) (not d!1244688) (not b!4230044) (not b!4229996) (not b!4230018) (not b!4229806) (not b!4229843) (not d!1244758) (not b_next!125631) (not bm!293299) (not b!4230041) (not b!4229605) (not bm!293301) (not b!4229804) (not bm!293304) tp_is_empty!22501 (not b!4229910) b_and!334181 (not b_lambda!124543) (not d!1244748) (not b_lambda!124545) (not b!4230040) (not b!4229909) (not b!4229880) (not b!4230011) (not b!4229991) (not bm!293303) (not b!4229848) (not b!4229599) (not b!4230039) (not b!4230026) (not b!4229589) (not b!4229585) (not tb!253823) (not b!4229887) (not b!4229992) (not b!4230025) (not b_next!125629) (not b!4229993) (not b!4229989) (not b!4229888) (not b!4230010) (not d!1244744) (not b!4229886) (not d!1244764) (not b!4229921) (not b!4229588) (not b!4229817) (not b!4230013) (not b!4229566) (not d!1244746) (not b!4229994) (not b!4230046) (not b!4229805) (not bm!293298) (not b_next!125627) (not d!1244760) (not b!4229884) (not b!4229892) (not bm!293314) (not d!1244742) (not d!1244736) (not b!4229819) (not b!4230042) (not b!4229815) (not b!4229999) (not b!4230000) (not b!4229568) (not b!4229798) b_and!334199 (not b!4229988) (not b!4229598) (not bm!293305) (not d!1244766) (not b!4229567) (not b!4230045))
(check-sat b_and!334197 (not b_next!125633) (not b_next!125631) b_and!334181 (not b_next!125629) (not b_next!125627) b_and!334199 b_and!334177)
(get-model)

(declare-fun d!1244768 () Bool)

(declare-fun charsToBigInt!0 (List!46821 Int) Int)

(assert (=> d!1244768 (= (inv!15 (value!245021 t!8425)) (= (charsToBigInt!0 (text!57205 (value!245021 t!8425)) 0) (value!245016 (value!245021 t!8425))))))

(declare-fun bs!597908 () Bool)

(assert (= bs!597908 d!1244768))

(declare-fun m!4816543 () Bool)

(assert (=> bs!597908 m!4816543))

(assert (=> b!4229588 d!1244768))

(declare-fun b!4230047 () Bool)

(declare-fun e!2626606 () Bool)

(declare-fun e!2626610 () Bool)

(assert (=> b!4230047 (= e!2626606 e!2626610)))

(declare-fun res!1739610 () Bool)

(assert (=> b!4230047 (=> (not res!1739610) (not e!2626610))))

(declare-fun lt!1503803 () Bool)

(assert (=> b!4230047 (= res!1739610 (not lt!1503803))))

(declare-fun b!4230048 () Bool)

(declare-fun e!2626605 () Bool)

(assert (=> b!4230048 (= e!2626605 (= (head!8966 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))) (c!718870 (regex!7878 r!4334))))))

(declare-fun b!4230049 () Bool)

(declare-fun res!1739611 () Bool)

(assert (=> b!4230049 (=> res!1739611 e!2626606)))

(assert (=> b!4230049 (= res!1739611 e!2626605)))

(declare-fun res!1739608 () Bool)

(assert (=> b!4230049 (=> (not res!1739608) (not e!2626605))))

(assert (=> b!4230049 (= res!1739608 lt!1503803)))

(declare-fun b!4230050 () Bool)

(declare-fun res!1739607 () Bool)

(assert (=> b!4230050 (=> res!1739607 e!2626606)))

(assert (=> b!4230050 (= res!1739607 (not ((_ is ElementMatch!12783) (regex!7878 r!4334))))))

(declare-fun e!2626609 () Bool)

(assert (=> b!4230050 (= e!2626609 e!2626606)))

(declare-fun b!4230051 () Bool)

(declare-fun e!2626607 () Bool)

(declare-fun call!293347 () Bool)

(assert (=> b!4230051 (= e!2626607 (= lt!1503803 call!293347))))

(declare-fun b!4230052 () Bool)

(declare-fun res!1739606 () Bool)

(declare-fun e!2626608 () Bool)

(assert (=> b!4230052 (=> res!1739606 e!2626608)))

(assert (=> b!4230052 (= res!1739606 (not (isEmpty!27608 (tail!6813 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))))))))

(declare-fun b!4230053 () Bool)

(declare-fun res!1739604 () Bool)

(assert (=> b!4230053 (=> (not res!1739604) (not e!2626605))))

(assert (=> b!4230053 (= res!1739604 (not call!293347))))

(declare-fun d!1244770 () Bool)

(assert (=> d!1244770 e!2626607))

(declare-fun c!718978 () Bool)

(assert (=> d!1244770 (= c!718978 ((_ is EmptyExpr!12783) (regex!7878 r!4334)))))

(declare-fun e!2626611 () Bool)

(assert (=> d!1244770 (= lt!1503803 e!2626611)))

(declare-fun c!718977 () Bool)

(assert (=> d!1244770 (= c!718977 (isEmpty!27608 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))))))

(assert (=> d!1244770 (validRegex!5801 (regex!7878 r!4334))))

(assert (=> d!1244770 (= (matchR!6422 (regex!7878 r!4334) (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))) lt!1503803)))

(declare-fun b!4230054 () Bool)

(assert (=> b!4230054 (= e!2626608 (not (= (head!8966 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))) (c!718870 (regex!7878 r!4334)))))))

(declare-fun b!4230055 () Bool)

(assert (=> b!4230055 (= e!2626611 (matchR!6422 (derivativeStep!3840 (regex!7878 r!4334) (head!8966 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795)))))) (tail!6813 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795)))))))))

(declare-fun b!4230056 () Bool)

(assert (=> b!4230056 (= e!2626611 (nullable!4502 (regex!7878 r!4334)))))

(declare-fun bm!293342 () Bool)

(assert (=> bm!293342 (= call!293347 (isEmpty!27608 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))))))

(declare-fun b!4230057 () Bool)

(assert (=> b!4230057 (= e!2626609 (not lt!1503803))))

(declare-fun b!4230058 () Bool)

(assert (=> b!4230058 (= e!2626607 e!2626609)))

(declare-fun c!718976 () Bool)

(assert (=> b!4230058 (= c!718976 ((_ is EmptyLang!12783) (regex!7878 r!4334)))))

(declare-fun b!4230059 () Bool)

(assert (=> b!4230059 (= e!2626610 e!2626608)))

(declare-fun res!1739609 () Bool)

(assert (=> b!4230059 (=> res!1739609 e!2626608)))

(assert (=> b!4230059 (= res!1739609 call!293347)))

(declare-fun b!4230060 () Bool)

(declare-fun res!1739605 () Bool)

(assert (=> b!4230060 (=> (not res!1739605) (not e!2626605))))

(assert (=> b!4230060 (= res!1739605 (isEmpty!27608 (tail!6813 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795)))))))))

(assert (= (and d!1244770 c!718977) b!4230056))

(assert (= (and d!1244770 (not c!718977)) b!4230055))

(assert (= (and d!1244770 c!718978) b!4230051))

(assert (= (and d!1244770 (not c!718978)) b!4230058))

(assert (= (and b!4230058 c!718976) b!4230057))

(assert (= (and b!4230058 (not c!718976)) b!4230050))

(assert (= (and b!4230050 (not res!1739607)) b!4230049))

(assert (= (and b!4230049 res!1739608) b!4230053))

(assert (= (and b!4230053 res!1739604) b!4230060))

(assert (= (and b!4230060 res!1739605) b!4230048))

(assert (= (and b!4230049 (not res!1739611)) b!4230047))

(assert (= (and b!4230047 res!1739610) b!4230059))

(assert (= (and b!4230059 (not res!1739609)) b!4230052))

(assert (= (and b!4230052 (not res!1739606)) b!4230054))

(assert (= (or b!4230051 b!4230053 b!4230059) bm!293342))

(assert (=> b!4230052 m!4816505))

(declare-fun m!4816545 () Bool)

(assert (=> b!4230052 m!4816545))

(assert (=> b!4230052 m!4816545))

(declare-fun m!4816547 () Bool)

(assert (=> b!4230052 m!4816547))

(assert (=> b!4230054 m!4816505))

(declare-fun m!4816549 () Bool)

(assert (=> b!4230054 m!4816549))

(assert (=> d!1244770 m!4816505))

(declare-fun m!4816551 () Bool)

(assert (=> d!1244770 m!4816551))

(assert (=> d!1244770 m!4816181))

(assert (=> bm!293342 m!4816505))

(assert (=> bm!293342 m!4816551))

(assert (=> b!4230048 m!4816505))

(assert (=> b!4230048 m!4816549))

(assert (=> b!4230055 m!4816505))

(assert (=> b!4230055 m!4816549))

(assert (=> b!4230055 m!4816549))

(declare-fun m!4816553 () Bool)

(assert (=> b!4230055 m!4816553))

(assert (=> b!4230055 m!4816505))

(assert (=> b!4230055 m!4816545))

(assert (=> b!4230055 m!4816553))

(assert (=> b!4230055 m!4816545))

(declare-fun m!4816555 () Bool)

(assert (=> b!4230055 m!4816555))

(assert (=> b!4230060 m!4816505))

(assert (=> b!4230060 m!4816545))

(assert (=> b!4230060 m!4816545))

(assert (=> b!4230060 m!4816547))

(assert (=> b!4230056 m!4816353))

(assert (=> b!4229990 d!1244770))

(declare-fun d!1244772 () Bool)

(assert (=> d!1244772 (= (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795)))) (list!16860 (c!718871 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))))))

(declare-fun bs!597909 () Bool)

(assert (= bs!597909 d!1244772))

(declare-fun m!4816557 () Bool)

(assert (=> bs!597909 m!4816557))

(assert (=> b!4229990 d!1244772))

(declare-fun d!1244774 () Bool)

(declare-fun lt!1503804 () BalanceConc!27772)

(assert (=> d!1244774 (= (list!16858 lt!1503804) (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795))))))

(assert (=> d!1244774 (= lt!1503804 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795))))) (value!245021 (_1!25284 (get!15186 lt!1503795)))))))

(assert (=> d!1244774 (= (charsOf!5253 (_1!25284 (get!15186 lt!1503795))) lt!1503804)))

(declare-fun b_lambda!124547 () Bool)

(assert (=> (not b_lambda!124547) (not d!1244774)))

(declare-fun tb!253831 () Bool)

(declare-fun t!349460 () Bool)

(assert (=> (and b!4229555 (= (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (toChars!10465 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795)))))) t!349460) tb!253831))

(declare-fun b!4230061 () Bool)

(declare-fun e!2626612 () Bool)

(declare-fun tp!1295723 () Bool)

(assert (=> b!4230061 (= e!2626612 (and (inv!61383 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795))))) (value!245021 (_1!25284 (get!15186 lt!1503795)))))) tp!1295723))))

(declare-fun result!309556 () Bool)

(assert (=> tb!253831 (= result!309556 (and (inv!61384 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795))))) (value!245021 (_1!25284 (get!15186 lt!1503795))))) e!2626612))))

(assert (= tb!253831 b!4230061))

(declare-fun m!4816559 () Bool)

(assert (=> b!4230061 m!4816559))

(declare-fun m!4816561 () Bool)

(assert (=> tb!253831 m!4816561))

(assert (=> d!1244774 t!349460))

(declare-fun b_and!334201 () Bool)

(assert (= b_and!334197 (and (=> t!349460 result!309556) b_and!334201)))

(declare-fun t!349462 () Bool)

(declare-fun tb!253833 () Bool)

(assert (=> (and b!4229546 (= (toChars!10465 (transformation!7878 r!4334)) (toChars!10465 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795)))))) t!349462) tb!253833))

(declare-fun result!309558 () Bool)

(assert (= result!309558 result!309556))

(assert (=> d!1244774 t!349462))

(declare-fun b_and!334203 () Bool)

(assert (= b_and!334199 (and (=> t!349462 result!309558) b_and!334203)))

(declare-fun m!4816563 () Bool)

(assert (=> d!1244774 m!4816563))

(declare-fun m!4816565 () Bool)

(assert (=> d!1244774 m!4816565))

(assert (=> b!4229990 d!1244774))

(declare-fun d!1244776 () Bool)

(assert (=> d!1244776 (= (get!15186 lt!1503795) (v!40953 lt!1503795))))

(assert (=> b!4229990 d!1244776))

(declare-fun d!1244778 () Bool)

(declare-fun nullableFct!1231 (Regex!12783) Bool)

(assert (=> d!1244778 (= (nullable!4502 (reg!13112 (regex!7878 r!4334))) (nullableFct!1231 (reg!13112 (regex!7878 r!4334))))))

(declare-fun bs!597910 () Bool)

(assert (= bs!597910 d!1244778))

(declare-fun m!4816567 () Bool)

(assert (=> bs!597910 m!4816567))

(assert (=> b!4229843 d!1244778))

(declare-fun d!1244780 () Bool)

(assert (=> d!1244780 (= (tail!6813 input!3586) (t!349449 input!3586))))

(assert (=> bm!293299 d!1244780))

(assert (=> b!4230000 d!1244728))

(assert (=> b!4229568 d!1244728))

(assert (=> b!4229568 d!1244734))

(declare-fun d!1244782 () Bool)

(assert (=> d!1244782 (= (head!8966 input!3586) (h!52116 input!3586))))

(assert (=> b!4229998 d!1244782))

(declare-fun d!1244784 () Bool)

(assert (=> d!1244784 (= (isEmpty!27608 p!3014) ((_ is Nil!46696) p!3014))))

(assert (=> bm!293317 d!1244784))

(assert (=> b!4229988 d!1244776))

(declare-fun d!1244786 () Bool)

(declare-fun lt!1503805 () Int)

(assert (=> d!1244786 (>= lt!1503805 0)))

(declare-fun e!2626613 () Int)

(assert (=> d!1244786 (= lt!1503805 e!2626613)))

(declare-fun c!718979 () Bool)

(assert (=> d!1244786 (= c!718979 ((_ is Nil!46696) (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795)))))))

(assert (=> d!1244786 (= (size!34217 (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795)))) lt!1503805)))

(declare-fun b!4230062 () Bool)

(assert (=> b!4230062 (= e!2626613 0)))

(declare-fun b!4230063 () Bool)

(assert (=> b!4230063 (= e!2626613 (+ 1 (size!34217 (t!349449 (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795)))))))))

(assert (= (and d!1244786 c!718979) b!4230062))

(assert (= (and d!1244786 (not c!718979)) b!4230063))

(declare-fun m!4816569 () Bool)

(assert (=> b!4230063 m!4816569))

(assert (=> b!4229988 d!1244786))

(declare-fun d!1244788 () Bool)

(assert (not d!1244788))

(assert (=> b!4229815 d!1244788))

(declare-fun b!4230064 () Bool)

(declare-fun e!2626615 () Bool)

(declare-fun e!2626619 () Bool)

(assert (=> b!4230064 (= e!2626615 e!2626619)))

(declare-fun res!1739618 () Bool)

(assert (=> b!4230064 (=> (not res!1739618) (not e!2626619))))

(declare-fun lt!1503806 () Bool)

(assert (=> b!4230064 (= res!1739618 (not lt!1503806))))

(declare-fun b!4230065 () Bool)

(declare-fun e!2626614 () Bool)

(assert (=> b!4230065 (= e!2626614 (= (head!8966 (tail!6813 p!3014)) (c!718870 (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014)))))))

(declare-fun b!4230066 () Bool)

(declare-fun res!1739619 () Bool)

(assert (=> b!4230066 (=> res!1739619 e!2626615)))

(assert (=> b!4230066 (= res!1739619 e!2626614)))

(declare-fun res!1739616 () Bool)

(assert (=> b!4230066 (=> (not res!1739616) (not e!2626614))))

(assert (=> b!4230066 (= res!1739616 lt!1503806)))

(declare-fun b!4230067 () Bool)

(declare-fun res!1739615 () Bool)

(assert (=> b!4230067 (=> res!1739615 e!2626615)))

(assert (=> b!4230067 (= res!1739615 (not ((_ is ElementMatch!12783) (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014)))))))

(declare-fun e!2626618 () Bool)

(assert (=> b!4230067 (= e!2626618 e!2626615)))

(declare-fun b!4230068 () Bool)

(declare-fun e!2626616 () Bool)

(declare-fun call!293348 () Bool)

(assert (=> b!4230068 (= e!2626616 (= lt!1503806 call!293348))))

(declare-fun b!4230069 () Bool)

(declare-fun res!1739614 () Bool)

(declare-fun e!2626617 () Bool)

(assert (=> b!4230069 (=> res!1739614 e!2626617)))

(assert (=> b!4230069 (= res!1739614 (not (isEmpty!27608 (tail!6813 (tail!6813 p!3014)))))))

(declare-fun b!4230070 () Bool)

(declare-fun res!1739612 () Bool)

(assert (=> b!4230070 (=> (not res!1739612) (not e!2626614))))

(assert (=> b!4230070 (= res!1739612 (not call!293348))))

(declare-fun d!1244790 () Bool)

(assert (=> d!1244790 e!2626616))

(declare-fun c!718982 () Bool)

(assert (=> d!1244790 (= c!718982 ((_ is EmptyExpr!12783) (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014))))))

(declare-fun e!2626620 () Bool)

(assert (=> d!1244790 (= lt!1503806 e!2626620)))

(declare-fun c!718981 () Bool)

(assert (=> d!1244790 (= c!718981 (isEmpty!27608 (tail!6813 p!3014)))))

(assert (=> d!1244790 (validRegex!5801 (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014)))))

(assert (=> d!1244790 (= (matchR!6422 (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014)) (tail!6813 p!3014)) lt!1503806)))

(declare-fun b!4230071 () Bool)

(assert (=> b!4230071 (= e!2626617 (not (= (head!8966 (tail!6813 p!3014)) (c!718870 (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014))))))))

(declare-fun b!4230072 () Bool)

(assert (=> b!4230072 (= e!2626620 (matchR!6422 (derivativeStep!3840 (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014)) (head!8966 (tail!6813 p!3014))) (tail!6813 (tail!6813 p!3014))))))

(declare-fun b!4230073 () Bool)

(assert (=> b!4230073 (= e!2626620 (nullable!4502 (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014))))))

(declare-fun bm!293343 () Bool)

(assert (=> bm!293343 (= call!293348 (isEmpty!27608 (tail!6813 p!3014)))))

(declare-fun b!4230074 () Bool)

(assert (=> b!4230074 (= e!2626618 (not lt!1503806))))

(declare-fun b!4230075 () Bool)

(assert (=> b!4230075 (= e!2626616 e!2626618)))

(declare-fun c!718980 () Bool)

(assert (=> b!4230075 (= c!718980 ((_ is EmptyLang!12783) (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014))))))

(declare-fun b!4230076 () Bool)

(assert (=> b!4230076 (= e!2626619 e!2626617)))

(declare-fun res!1739617 () Bool)

(assert (=> b!4230076 (=> res!1739617 e!2626617)))

(assert (=> b!4230076 (= res!1739617 call!293348)))

(declare-fun b!4230077 () Bool)

(declare-fun res!1739613 () Bool)

(assert (=> b!4230077 (=> (not res!1739613) (not e!2626614))))

(assert (=> b!4230077 (= res!1739613 (isEmpty!27608 (tail!6813 (tail!6813 p!3014))))))

(assert (= (and d!1244790 c!718981) b!4230073))

(assert (= (and d!1244790 (not c!718981)) b!4230072))

(assert (= (and d!1244790 c!718982) b!4230068))

(assert (= (and d!1244790 (not c!718982)) b!4230075))

(assert (= (and b!4230075 c!718980) b!4230074))

(assert (= (and b!4230075 (not c!718980)) b!4230067))

(assert (= (and b!4230067 (not res!1739615)) b!4230066))

(assert (= (and b!4230066 res!1739616) b!4230070))

(assert (= (and b!4230070 res!1739612) b!4230077))

(assert (= (and b!4230077 res!1739613) b!4230065))

(assert (= (and b!4230066 (not res!1739619)) b!4230064))

(assert (= (and b!4230064 res!1739618) b!4230076))

(assert (= (and b!4230076 (not res!1739617)) b!4230069))

(assert (= (and b!4230069 (not res!1739614)) b!4230071))

(assert (= (or b!4230068 b!4230070 b!4230076) bm!293343))

(assert (=> b!4230069 m!4816203))

(declare-fun m!4816571 () Bool)

(assert (=> b!4230069 m!4816571))

(assert (=> b!4230069 m!4816571))

(declare-fun m!4816573 () Bool)

(assert (=> b!4230069 m!4816573))

(assert (=> b!4230071 m!4816203))

(declare-fun m!4816575 () Bool)

(assert (=> b!4230071 m!4816575))

(assert (=> d!1244790 m!4816203))

(assert (=> d!1244790 m!4816411))

(assert (=> d!1244790 m!4816415))

(declare-fun m!4816577 () Bool)

(assert (=> d!1244790 m!4816577))

(assert (=> bm!293343 m!4816203))

(assert (=> bm!293343 m!4816411))

(assert (=> b!4230065 m!4816203))

(assert (=> b!4230065 m!4816575))

(assert (=> b!4230072 m!4816203))

(assert (=> b!4230072 m!4816575))

(assert (=> b!4230072 m!4816415))

(assert (=> b!4230072 m!4816575))

(declare-fun m!4816579 () Bool)

(assert (=> b!4230072 m!4816579))

(assert (=> b!4230072 m!4816203))

(assert (=> b!4230072 m!4816571))

(assert (=> b!4230072 m!4816579))

(assert (=> b!4230072 m!4816571))

(declare-fun m!4816581 () Bool)

(assert (=> b!4230072 m!4816581))

(assert (=> b!4230077 m!4816203))

(assert (=> b!4230077 m!4816571))

(assert (=> b!4230077 m!4816571))

(assert (=> b!4230077 m!4816573))

(assert (=> b!4230073 m!4816415))

(declare-fun m!4816583 () Bool)

(assert (=> b!4230073 m!4816583))

(assert (=> b!4229887 d!1244790))

(declare-fun call!293359 () Regex!12783)

(declare-fun b!4230098 () Bool)

(declare-fun e!2626634 () Regex!12783)

(declare-fun call!293357 () Regex!12783)

(assert (=> b!4230098 (= e!2626634 (Union!12783 (Concat!20892 call!293359 (regTwo!26078 (regex!7878 r!4334))) call!293357))))

(declare-fun b!4230099 () Bool)

(declare-fun e!2626633 () Regex!12783)

(declare-fun call!293360 () Regex!12783)

(assert (=> b!4230099 (= e!2626633 (Concat!20892 call!293360 (regex!7878 r!4334)))))

(declare-fun b!4230100 () Bool)

(assert (=> b!4230100 (= e!2626634 (Union!12783 (Concat!20892 call!293359 (regTwo!26078 (regex!7878 r!4334))) EmptyLang!12783))))

(declare-fun b!4230101 () Bool)

(declare-fun e!2626632 () Regex!12783)

(assert (=> b!4230101 (= e!2626632 (ite (= (head!8966 p!3014) (c!718870 (regex!7878 r!4334))) EmptyExpr!12783 EmptyLang!12783))))

(declare-fun b!4230102 () Bool)

(declare-fun e!2626635 () Regex!12783)

(assert (=> b!4230102 (= e!2626635 e!2626633)))

(declare-fun c!718994 () Bool)

(assert (=> b!4230102 (= c!718994 ((_ is Star!12783) (regex!7878 r!4334)))))

(declare-fun b!4230103 () Bool)

(declare-fun e!2626631 () Regex!12783)

(assert (=> b!4230103 (= e!2626631 e!2626632)))

(declare-fun c!718997 () Bool)

(assert (=> b!4230103 (= c!718997 ((_ is ElementMatch!12783) (regex!7878 r!4334)))))

(declare-fun d!1244792 () Bool)

(declare-fun lt!1503809 () Regex!12783)

(assert (=> d!1244792 (validRegex!5801 lt!1503809)))

(assert (=> d!1244792 (= lt!1503809 e!2626631)))

(declare-fun c!718993 () Bool)

(assert (=> d!1244792 (= c!718993 (or ((_ is EmptyExpr!12783) (regex!7878 r!4334)) ((_ is EmptyLang!12783) (regex!7878 r!4334))))))

(assert (=> d!1244792 (validRegex!5801 (regex!7878 r!4334))))

(assert (=> d!1244792 (= (derivativeStep!3840 (regex!7878 r!4334) (head!8966 p!3014)) lt!1503809)))

(declare-fun b!4230104 () Bool)

(assert (=> b!4230104 (= e!2626631 EmptyLang!12783)))

(declare-fun bm!293352 () Bool)

(declare-fun call!293358 () Regex!12783)

(declare-fun c!718996 () Bool)

(assert (=> bm!293352 (= call!293358 (derivativeStep!3840 (ite c!718996 (regOne!26079 (regex!7878 r!4334)) (ite c!718994 (reg!13112 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))) (head!8966 p!3014)))))

(declare-fun bm!293353 () Bool)

(assert (=> bm!293353 (= call!293357 (derivativeStep!3840 (ite c!718996 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))) (head!8966 p!3014)))))

(declare-fun b!4230105 () Bool)

(assert (=> b!4230105 (= e!2626635 (Union!12783 call!293358 call!293357))))

(declare-fun b!4230106 () Bool)

(assert (=> b!4230106 (= c!718996 ((_ is Union!12783) (regex!7878 r!4334)))))

(assert (=> b!4230106 (= e!2626632 e!2626635)))

(declare-fun bm!293354 () Bool)

(assert (=> bm!293354 (= call!293360 call!293358)))

(declare-fun bm!293355 () Bool)

(assert (=> bm!293355 (= call!293359 call!293360)))

(declare-fun b!4230107 () Bool)

(declare-fun c!718995 () Bool)

(assert (=> b!4230107 (= c!718995 (nullable!4502 (regOne!26078 (regex!7878 r!4334))))))

(assert (=> b!4230107 (= e!2626633 e!2626634)))

(assert (= (and d!1244792 c!718993) b!4230104))

(assert (= (and d!1244792 (not c!718993)) b!4230103))

(assert (= (and b!4230103 c!718997) b!4230101))

(assert (= (and b!4230103 (not c!718997)) b!4230106))

(assert (= (and b!4230106 c!718996) b!4230105))

(assert (= (and b!4230106 (not c!718996)) b!4230102))

(assert (= (and b!4230102 c!718994) b!4230099))

(assert (= (and b!4230102 (not c!718994)) b!4230107))

(assert (= (and b!4230107 c!718995) b!4230098))

(assert (= (and b!4230107 (not c!718995)) b!4230100))

(assert (= (or b!4230098 b!4230100) bm!293355))

(assert (= (or b!4230099 bm!293355) bm!293354))

(assert (= (or b!4230105 bm!293354) bm!293352))

(assert (= (or b!4230105 b!4230098) bm!293353))

(declare-fun m!4816585 () Bool)

(assert (=> d!1244792 m!4816585))

(assert (=> d!1244792 m!4816181))

(assert (=> bm!293352 m!4816209))

(declare-fun m!4816587 () Bool)

(assert (=> bm!293352 m!4816587))

(assert (=> bm!293353 m!4816209))

(declare-fun m!4816589 () Bool)

(assert (=> bm!293353 m!4816589))

(declare-fun m!4816591 () Bool)

(assert (=> b!4230107 m!4816591))

(assert (=> b!4229887 d!1244792))

(declare-fun d!1244794 () Bool)

(assert (=> d!1244794 (= (head!8966 p!3014) (h!52116 p!3014))))

(assert (=> b!4229887 d!1244794))

(declare-fun d!1244796 () Bool)

(assert (=> d!1244796 (= (tail!6813 p!3014) (t!349449 p!3014))))

(assert (=> b!4229887 d!1244796))

(assert (=> b!4229566 d!1244794))

(assert (=> b!4229566 d!1244782))

(declare-fun d!1244798 () Bool)

(assert (=> d!1244798 (= (isEmpty!27608 (_1!25285 lt!1503670)) ((_ is Nil!46696) (_1!25285 lt!1503670)))))

(assert (=> b!4229804 d!1244798))

(declare-fun d!1244800 () Bool)

(declare-fun lt!1503810 () Int)

(assert (=> d!1244800 (>= lt!1503810 0)))

(declare-fun e!2626636 () Int)

(assert (=> d!1244800 (= lt!1503810 e!2626636)))

(declare-fun c!718998 () Bool)

(assert (=> d!1244800 (= c!718998 ((_ is Nil!46696) (_2!25284 (get!15186 lt!1503795))))))

(assert (=> d!1244800 (= (size!34217 (_2!25284 (get!15186 lt!1503795))) lt!1503810)))

(declare-fun b!4230108 () Bool)

(assert (=> b!4230108 (= e!2626636 0)))

(declare-fun b!4230109 () Bool)

(assert (=> b!4230109 (= e!2626636 (+ 1 (size!34217 (t!349449 (_2!25284 (get!15186 lt!1503795))))))))

(assert (= (and d!1244800 c!718998) b!4230108))

(assert (= (and d!1244800 (not c!718998)) b!4230109))

(declare-fun m!4816593 () Bool)

(assert (=> b!4230109 m!4816593))

(assert (=> b!4229996 d!1244800))

(assert (=> b!4229996 d!1244776))

(assert (=> b!4229996 d!1244728))

(assert (=> b!4229994 d!1244776))

(declare-fun d!1244802 () Bool)

(assert (=> d!1244802 true))

(declare-fun lambda!129964 () Int)

(declare-fun order!24581 () Int)

(declare-fun order!24579 () Int)

(declare-fun dynLambda!20027 (Int Int) Int)

(declare-fun dynLambda!20028 (Int Int) Int)

(assert (=> d!1244802 (< (dynLambda!20027 order!24579 (toValue!10606 (transformation!7878 r!4334))) (dynLambda!20028 order!24581 lambda!129964))))

(declare-fun Forall2!1182 (Int) Bool)

(assert (=> d!1244802 (= (equivClasses!3326 (toChars!10465 (transformation!7878 r!4334)) (toValue!10606 (transformation!7878 r!4334))) (Forall2!1182 lambda!129964))))

(declare-fun bs!597911 () Bool)

(assert (= bs!597911 d!1244802))

(declare-fun m!4816595 () Bool)

(assert (=> bs!597911 m!4816595))

(assert (=> b!4230013 d!1244802))

(declare-fun b!4230115 () Bool)

(declare-fun e!2626639 () List!46820)

(assert (=> b!4230115 (= e!2626639 (Cons!46696 (h!52116 (t!349449 p!3014)) (++!11908 (t!349449 (t!349449 p!3014)) suffix!1590)))))

(declare-fun d!1244806 () Bool)

(declare-fun e!2626640 () Bool)

(assert (=> d!1244806 e!2626640))

(declare-fun res!1739623 () Bool)

(assert (=> d!1244806 (=> (not res!1739623) (not e!2626640))))

(declare-fun lt!1503811 () List!46820)

(assert (=> d!1244806 (= res!1739623 (= (content!7337 lt!1503811) ((_ map or) (content!7337 (t!349449 p!3014)) (content!7337 suffix!1590))))))

(assert (=> d!1244806 (= lt!1503811 e!2626639)))

(declare-fun c!718999 () Bool)

(assert (=> d!1244806 (= c!718999 ((_ is Nil!46696) (t!349449 p!3014)))))

(assert (=> d!1244806 (= (++!11908 (t!349449 p!3014) suffix!1590) lt!1503811)))

(declare-fun b!4230117 () Bool)

(assert (=> b!4230117 (= e!2626640 (or (not (= suffix!1590 Nil!46696)) (= lt!1503811 (t!349449 p!3014))))))

(declare-fun b!4230114 () Bool)

(assert (=> b!4230114 (= e!2626639 suffix!1590)))

(declare-fun b!4230116 () Bool)

(declare-fun res!1739624 () Bool)

(assert (=> b!4230116 (=> (not res!1739624) (not e!2626640))))

(assert (=> b!4230116 (= res!1739624 (= (size!34217 lt!1503811) (+ (size!34217 (t!349449 p!3014)) (size!34217 suffix!1590))))))

(assert (= (and d!1244806 c!718999) b!4230114))

(assert (= (and d!1244806 (not c!718999)) b!4230115))

(assert (= (and d!1244806 res!1739623) b!4230116))

(assert (= (and b!4230116 res!1739624) b!4230117))

(declare-fun m!4816597 () Bool)

(assert (=> b!4230115 m!4816597))

(declare-fun m!4816599 () Bool)

(assert (=> d!1244806 m!4816599))

(declare-fun m!4816601 () Bool)

(assert (=> d!1244806 m!4816601))

(assert (=> d!1244806 m!4816533))

(declare-fun m!4816603 () Bool)

(assert (=> b!4230116 m!4816603))

(assert (=> b!4230116 m!4816409))

(assert (=> b!4230116 m!4816537))

(assert (=> b!4230010 d!1244806))

(assert (=> bm!293300 d!1244782))

(assert (=> d!1244758 d!1244756))

(declare-fun d!1244808 () Bool)

(assert (=> d!1244808 (isPrefix!4693 input!3586 input!3586)))

(assert (=> d!1244808 true))

(declare-fun _$45!2102 () Unit!65805)

(assert (=> d!1244808 (= (choose!25894 input!3586 input!3586) _$45!2102)))

(declare-fun bs!597912 () Bool)

(assert (= bs!597912 d!1244808))

(assert (=> bs!597912 m!4816161))

(assert (=> d!1244758 d!1244808))

(declare-fun d!1244810 () Bool)

(declare-fun c!719002 () Bool)

(assert (=> d!1244810 (= c!719002 ((_ is Node!14089) (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))))))

(declare-fun e!2626645 () Bool)

(assert (=> d!1244810 (= (inv!61383 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))) e!2626645)))

(declare-fun b!4230124 () Bool)

(declare-fun inv!61387 (Conc!14089) Bool)

(assert (=> b!4230124 (= e!2626645 (inv!61387 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))))))

(declare-fun b!4230125 () Bool)

(declare-fun e!2626646 () Bool)

(assert (=> b!4230125 (= e!2626645 e!2626646)))

(declare-fun res!1739627 () Bool)

(assert (=> b!4230125 (= res!1739627 (not ((_ is Leaf!21773) (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425))))))))

(assert (=> b!4230125 (=> res!1739627 e!2626646)))

(declare-fun b!4230126 () Bool)

(declare-fun inv!61388 (Conc!14089) Bool)

(assert (=> b!4230126 (= e!2626646 (inv!61388 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))))))

(assert (= (and d!1244810 c!719002) b!4230124))

(assert (= (and d!1244810 (not c!719002)) b!4230125))

(assert (= (and b!4230125 (not res!1739627)) b!4230126))

(declare-fun m!4816605 () Bool)

(assert (=> b!4230124 m!4816605))

(declare-fun m!4816607 () Bool)

(assert (=> b!4230126 m!4816607))

(assert (=> b!4229605 d!1244810))

(declare-fun d!1244812 () Bool)

(assert (=> d!1244812 (= (isEmpty!27608 (tail!6813 p!3014)) ((_ is Nil!46696) (tail!6813 p!3014)))))

(assert (=> b!4229892 d!1244812))

(assert (=> b!4229892 d!1244796))

(declare-fun b!4230128 () Bool)

(declare-fun e!2626647 () List!46820)

(assert (=> b!4230128 (= e!2626647 (Cons!46696 (h!52116 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))) (++!11908 (t!349449 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))) (_2!25284 (get!15186 lt!1503795)))))))

(declare-fun d!1244814 () Bool)

(declare-fun e!2626648 () Bool)

(assert (=> d!1244814 e!2626648))

(declare-fun res!1739628 () Bool)

(assert (=> d!1244814 (=> (not res!1739628) (not e!2626648))))

(declare-fun lt!1503812 () List!46820)

(assert (=> d!1244814 (= res!1739628 (= (content!7337 lt!1503812) ((_ map or) (content!7337 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))) (content!7337 (_2!25284 (get!15186 lt!1503795))))))))

(assert (=> d!1244814 (= lt!1503812 e!2626647)))

(declare-fun c!719003 () Bool)

(assert (=> d!1244814 (= c!719003 ((_ is Nil!46696) (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))))))

(assert (=> d!1244814 (= (++!11908 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795)))) (_2!25284 (get!15186 lt!1503795))) lt!1503812)))

(declare-fun b!4230130 () Bool)

(assert (=> b!4230130 (= e!2626648 (or (not (= (_2!25284 (get!15186 lt!1503795)) Nil!46696)) (= lt!1503812 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795)))))))))

(declare-fun b!4230127 () Bool)

(assert (=> b!4230127 (= e!2626647 (_2!25284 (get!15186 lt!1503795)))))

(declare-fun b!4230129 () Bool)

(declare-fun res!1739629 () Bool)

(assert (=> b!4230129 (=> (not res!1739629) (not e!2626648))))

(assert (=> b!4230129 (= res!1739629 (= (size!34217 lt!1503812) (+ (size!34217 (list!16858 (charsOf!5253 (_1!25284 (get!15186 lt!1503795))))) (size!34217 (_2!25284 (get!15186 lt!1503795))))))))

(assert (= (and d!1244814 c!719003) b!4230127))

(assert (= (and d!1244814 (not c!719003)) b!4230128))

(assert (= (and d!1244814 res!1739628) b!4230129))

(assert (= (and b!4230129 res!1739629) b!4230130))

(declare-fun m!4816609 () Bool)

(assert (=> b!4230128 m!4816609))

(declare-fun m!4816611 () Bool)

(assert (=> d!1244814 m!4816611))

(assert (=> d!1244814 m!4816505))

(declare-fun m!4816613 () Bool)

(assert (=> d!1244814 m!4816613))

(declare-fun m!4816615 () Bool)

(assert (=> d!1244814 m!4816615))

(declare-fun m!4816617 () Bool)

(assert (=> b!4230129 m!4816617))

(assert (=> b!4230129 m!4816505))

(declare-fun m!4816619 () Bool)

(assert (=> b!4230129 m!4816619))

(assert (=> b!4230129 m!4816489))

(assert (=> b!4229992 d!1244814))

(assert (=> b!4229992 d!1244772))

(assert (=> b!4229992 d!1244774))

(assert (=> b!4229992 d!1244776))

(declare-fun d!1244816 () Bool)

(assert (=> d!1244816 (= (list!16858 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425))) (list!16860 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))))))

(declare-fun bs!597913 () Bool)

(assert (= bs!597913 d!1244816))

(declare-fun m!4816621 () Bool)

(assert (=> bs!597913 m!4816621))

(assert (=> b!4229598 d!1244816))

(declare-fun d!1244818 () Bool)

(assert (=> d!1244818 (= input!3586 Nil!46696)))

(declare-fun lt!1503815 () Unit!65805)

(declare-fun choose!25897 (List!46820 List!46820 List!46820) Unit!65805)

(assert (=> d!1244818 (= lt!1503815 (choose!25897 input!3586 Nil!46696 input!3586))))

(assert (=> d!1244818 (isPrefix!4693 input!3586 input!3586)))

(assert (=> d!1244818 (= (lemmaIsPrefixSameLengthThenSameList!1032 input!3586 Nil!46696 input!3586) lt!1503815)))

(declare-fun bs!597914 () Bool)

(assert (= bs!597914 d!1244818))

(declare-fun m!4816623 () Bool)

(assert (=> bs!597914 m!4816623))

(assert (=> bs!597914 m!4816161))

(assert (=> bm!293304 d!1244818))

(declare-fun d!1244820 () Bool)

(assert (=> d!1244820 (= (head!8966 pBis!134) (h!52116 pBis!134))))

(assert (=> b!4229908 d!1244820))

(assert (=> b!4229908 d!1244782))

(declare-fun b!4230131 () Bool)

(declare-fun e!2626650 () tuple2!44302)

(assert (=> b!4230131 (= e!2626650 (tuple2!44303 Nil!46696 input!3586))))

(declare-fun b!4230132 () Bool)

(declare-fun e!2626653 () tuple2!44302)

(declare-fun lt!1503821 () tuple2!44302)

(assert (=> b!4230132 (= e!2626653 lt!1503821)))

(declare-fun b!4230133 () Bool)

(declare-fun e!2626656 () Bool)

(declare-fun lt!1503831 () tuple2!44302)

(assert (=> b!4230133 (= e!2626656 (>= (size!34217 (_1!25285 lt!1503831)) (size!34217 lt!1503677)))))

(declare-fun b!4230134 () Bool)

(declare-fun e!2626649 () tuple2!44302)

(assert (=> b!4230134 (= e!2626650 e!2626649)))

(declare-fun c!719009 () Bool)

(assert (=> b!4230134 (= c!719009 (= (+ (size!34217 Nil!46696) 1) lt!1503558))))

(declare-fun bm!293356 () Bool)

(declare-fun call!293361 () Bool)

(assert (=> bm!293356 (= call!293361 (nullable!4502 call!293305))))

(declare-fun bm!293357 () Bool)

(declare-fun call!293366 () List!46820)

(assert (=> bm!293357 (= call!293366 (tail!6813 call!293308))))

(declare-fun b!4230135 () Bool)

(declare-fun e!2626655 () Unit!65805)

(declare-fun Unit!65813 () Unit!65805)

(assert (=> b!4230135 (= e!2626655 Unit!65813)))

(declare-fun lt!1503835 () Unit!65805)

(declare-fun call!293364 () Unit!65805)

(assert (=> b!4230135 (= lt!1503835 call!293364)))

(declare-fun call!293362 () Bool)

(assert (=> b!4230135 call!293362))

(declare-fun lt!1503826 () Unit!65805)

(assert (=> b!4230135 (= lt!1503826 lt!1503835)))

(declare-fun lt!1503841 () Unit!65805)

(declare-fun call!293367 () Unit!65805)

(assert (=> b!4230135 (= lt!1503841 call!293367)))

(assert (=> b!4230135 (= input!3586 lt!1503677)))

(declare-fun lt!1503843 () Unit!65805)

(assert (=> b!4230135 (= lt!1503843 lt!1503841)))

(assert (=> b!4230135 false))

(declare-fun b!4230136 () Bool)

(declare-fun e!2626651 () tuple2!44302)

(assert (=> b!4230136 (= e!2626651 (tuple2!44303 lt!1503677 Nil!46696))))

(declare-fun b!4230137 () Bool)

(assert (=> b!4230137 (= e!2626653 (tuple2!44303 lt!1503677 call!293308))))

(declare-fun bm!293358 () Bool)

(declare-fun call!293365 () C!25764)

(assert (=> bm!293358 (= call!293365 (head!8966 call!293308))))

(declare-fun b!4230138 () Bool)

(declare-fun Unit!65814 () Unit!65805)

(assert (=> b!4230138 (= e!2626655 Unit!65814)))

(declare-fun b!4230139 () Bool)

(declare-fun e!2626654 () Bool)

(assert (=> b!4230139 (= e!2626654 e!2626656)))

(declare-fun res!1739630 () Bool)

(assert (=> b!4230139 (=> res!1739630 e!2626656)))

(assert (=> b!4230139 (= res!1739630 (isEmpty!27608 (_1!25285 lt!1503831)))))

(declare-fun bm!293359 () Bool)

(assert (=> bm!293359 (= call!293362 (isPrefix!4693 input!3586 input!3586))))

(declare-fun bm!293360 () Bool)

(assert (=> bm!293360 (= call!293364 (lemmaIsPrefixRefl!3104 input!3586 input!3586))))

(declare-fun lt!1503838 () List!46820)

(declare-fun call!293368 () tuple2!44302)

(declare-fun bm!293361 () Bool)

(declare-fun call!293363 () Regex!12783)

(assert (=> bm!293361 (= call!293368 (findLongestMatchInner!1685 call!293363 lt!1503838 (+ (size!34217 Nil!46696) 1 1) call!293366 input!3586 lt!1503558))))

(declare-fun b!4230140 () Bool)

(declare-fun c!719008 () Bool)

(assert (=> b!4230140 (= c!719008 call!293361)))

(declare-fun lt!1503829 () Unit!65805)

(declare-fun lt!1503824 () Unit!65805)

(assert (=> b!4230140 (= lt!1503829 lt!1503824)))

(declare-fun lt!1503828 () List!46820)

(declare-fun lt!1503842 () C!25764)

(assert (=> b!4230140 (= (++!11908 (++!11908 lt!1503677 (Cons!46696 lt!1503842 Nil!46696)) lt!1503828) input!3586)))

(assert (=> b!4230140 (= lt!1503824 (lemmaMoveElementToOtherListKeepsConcatEq!1304 lt!1503677 lt!1503842 lt!1503828 input!3586))))

(assert (=> b!4230140 (= lt!1503828 (tail!6813 call!293308))))

(assert (=> b!4230140 (= lt!1503842 (head!8966 call!293308))))

(declare-fun lt!1503836 () Unit!65805)

(declare-fun lt!1503820 () Unit!65805)

(assert (=> b!4230140 (= lt!1503836 lt!1503820)))

(assert (=> b!4230140 (isPrefix!4693 (++!11908 lt!1503677 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 lt!1503677)) Nil!46696)) input!3586)))

(assert (=> b!4230140 (= lt!1503820 (lemmaAddHeadSuffixToPrefixStillPrefix!686 lt!1503677 input!3586))))

(declare-fun lt!1503830 () Unit!65805)

(declare-fun lt!1503834 () Unit!65805)

(assert (=> b!4230140 (= lt!1503830 lt!1503834)))

(assert (=> b!4230140 (= lt!1503834 (lemmaAddHeadSuffixToPrefixStillPrefix!686 lt!1503677 input!3586))))

(assert (=> b!4230140 (= lt!1503838 (++!11908 lt!1503677 (Cons!46696 (head!8966 call!293308) Nil!46696)))))

(declare-fun lt!1503817 () Unit!65805)

(assert (=> b!4230140 (= lt!1503817 e!2626655)))

(declare-fun c!719006 () Bool)

(assert (=> b!4230140 (= c!719006 (= (size!34217 lt!1503677) (size!34217 input!3586)))))

(declare-fun lt!1503827 () Unit!65805)

(declare-fun lt!1503837 () Unit!65805)

(assert (=> b!4230140 (= lt!1503827 lt!1503837)))

(assert (=> b!4230140 (<= (size!34217 lt!1503677) (size!34217 input!3586))))

(assert (=> b!4230140 (= lt!1503837 (lemmaIsPrefixThenSmallerEqSize!598 lt!1503677 input!3586))))

(declare-fun e!2626652 () tuple2!44302)

(assert (=> b!4230140 (= e!2626649 e!2626652)))

(declare-fun bm!293362 () Bool)

(assert (=> bm!293362 (= call!293367 (lemmaIsPrefixSameLengthThenSameList!1032 input!3586 lt!1503677 input!3586))))

(declare-fun b!4230141 () Bool)

(assert (=> b!4230141 (= e!2626652 e!2626653)))

(assert (=> b!4230141 (= lt!1503821 call!293368)))

(declare-fun c!719004 () Bool)

(assert (=> b!4230141 (= c!719004 (isEmpty!27608 (_1!25285 lt!1503821)))))

(declare-fun bm!293363 () Bool)

(assert (=> bm!293363 (= call!293363 (derivativeStep!3840 call!293305 call!293365))))

(declare-fun b!4230142 () Bool)

(assert (=> b!4230142 (= e!2626652 call!293368)))

(declare-fun b!4230143 () Bool)

(assert (=> b!4230143 (= e!2626651 (tuple2!44303 Nil!46696 input!3586))))

(declare-fun b!4230144 () Bool)

(declare-fun c!719005 () Bool)

(assert (=> b!4230144 (= c!719005 call!293361)))

(declare-fun lt!1503825 () Unit!65805)

(declare-fun lt!1503816 () Unit!65805)

(assert (=> b!4230144 (= lt!1503825 lt!1503816)))

(assert (=> b!4230144 (= input!3586 lt!1503677)))

(assert (=> b!4230144 (= lt!1503816 call!293367)))

(declare-fun lt!1503832 () Unit!65805)

(declare-fun lt!1503819 () Unit!65805)

(assert (=> b!4230144 (= lt!1503832 lt!1503819)))

(assert (=> b!4230144 call!293362))

(assert (=> b!4230144 (= lt!1503819 call!293364)))

(assert (=> b!4230144 (= e!2626649 e!2626651)))

(declare-fun d!1244822 () Bool)

(assert (=> d!1244822 e!2626654))

(declare-fun res!1739631 () Bool)

(assert (=> d!1244822 (=> (not res!1739631) (not e!2626654))))

(assert (=> d!1244822 (= res!1739631 (= (++!11908 (_1!25285 lt!1503831) (_2!25285 lt!1503831)) input!3586))))

(assert (=> d!1244822 (= lt!1503831 e!2626650)))

(declare-fun c!719007 () Bool)

(assert (=> d!1244822 (= c!719007 (lostCause!1060 call!293305))))

(declare-fun lt!1503818 () Unit!65805)

(declare-fun Unit!65815 () Unit!65805)

(assert (=> d!1244822 (= lt!1503818 Unit!65815)))

(assert (=> d!1244822 (= (getSuffix!2861 input!3586 lt!1503677) call!293308)))

(declare-fun lt!1503839 () Unit!65805)

(declare-fun lt!1503833 () Unit!65805)

(assert (=> d!1244822 (= lt!1503839 lt!1503833)))

(declare-fun lt!1503823 () List!46820)

(assert (=> d!1244822 (= call!293308 lt!1503823)))

(assert (=> d!1244822 (= lt!1503833 (lemmaSamePrefixThenSameSuffix!2277 lt!1503677 call!293308 lt!1503677 lt!1503823 input!3586))))

(assert (=> d!1244822 (= lt!1503823 (getSuffix!2861 input!3586 lt!1503677))))

(declare-fun lt!1503822 () Unit!65805)

(declare-fun lt!1503840 () Unit!65805)

(assert (=> d!1244822 (= lt!1503822 lt!1503840)))

(assert (=> d!1244822 (isPrefix!4693 lt!1503677 (++!11908 lt!1503677 call!293308))))

(assert (=> d!1244822 (= lt!1503840 (lemmaConcatTwoListThenFirstIsPrefix!3097 lt!1503677 call!293308))))

(assert (=> d!1244822 (validRegex!5801 call!293305)))

(assert (=> d!1244822 (= (findLongestMatchInner!1685 call!293305 lt!1503677 (+ (size!34217 Nil!46696) 1) call!293308 input!3586 lt!1503558) lt!1503831)))

(assert (= (and d!1244822 c!719007) b!4230131))

(assert (= (and d!1244822 (not c!719007)) b!4230134))

(assert (= (and b!4230134 c!719009) b!4230144))

(assert (= (and b!4230134 (not c!719009)) b!4230140))

(assert (= (and b!4230144 c!719005) b!4230136))

(assert (= (and b!4230144 (not c!719005)) b!4230143))

(assert (= (and b!4230140 c!719006) b!4230135))

(assert (= (and b!4230140 (not c!719006)) b!4230138))

(assert (= (and b!4230140 c!719008) b!4230141))

(assert (= (and b!4230140 (not c!719008)) b!4230142))

(assert (= (and b!4230141 c!719004) b!4230137))

(assert (= (and b!4230141 (not c!719004)) b!4230132))

(assert (= (or b!4230141 b!4230142) bm!293358))

(assert (= (or b!4230141 b!4230142) bm!293357))

(assert (= (or b!4230141 b!4230142) bm!293363))

(assert (= (or b!4230141 b!4230142) bm!293361))

(assert (= (or b!4230144 b!4230135) bm!293359))

(assert (= (or b!4230144 b!4230135) bm!293360))

(assert (= (or b!4230144 b!4230140) bm!293356))

(assert (= (or b!4230144 b!4230135) bm!293362))

(assert (= (and d!1244822 res!1739631) b!4230139))

(assert (= (and b!4230139 (not res!1739630)) b!4230133))

(declare-fun m!4816625 () Bool)

(assert (=> b!4230141 m!4816625))

(declare-fun m!4816627 () Bool)

(assert (=> bm!293356 m!4816627))

(declare-fun m!4816629 () Bool)

(assert (=> b!4230140 m!4816629))

(declare-fun m!4816631 () Bool)

(assert (=> b!4230140 m!4816631))

(declare-fun m!4816633 () Bool)

(assert (=> b!4230140 m!4816633))

(declare-fun m!4816635 () Bool)

(assert (=> b!4230140 m!4816635))

(assert (=> b!4230140 m!4816629))

(declare-fun m!4816637 () Bool)

(assert (=> b!4230140 m!4816637))

(declare-fun m!4816639 () Bool)

(assert (=> b!4230140 m!4816639))

(declare-fun m!4816641 () Bool)

(assert (=> b!4230140 m!4816641))

(declare-fun m!4816643 () Bool)

(assert (=> b!4230140 m!4816643))

(declare-fun m!4816645 () Bool)

(assert (=> b!4230140 m!4816645))

(assert (=> b!4230140 m!4816643))

(declare-fun m!4816647 () Bool)

(assert (=> b!4230140 m!4816647))

(declare-fun m!4816649 () Bool)

(assert (=> b!4230140 m!4816649))

(declare-fun m!4816651 () Bool)

(assert (=> b!4230140 m!4816651))

(assert (=> b!4230140 m!4816165))

(assert (=> b!4230140 m!4816639))

(declare-fun m!4816653 () Bool)

(assert (=> b!4230140 m!4816653))

(assert (=> bm!293357 m!4816633))

(assert (=> bm!293359 m!4816161))

(assert (=> bm!293360 m!4816163))

(declare-fun m!4816655 () Bool)

(assert (=> b!4230133 m!4816655))

(assert (=> b!4230133 m!4816635))

(declare-fun m!4816657 () Bool)

(assert (=> bm!293361 m!4816657))

(declare-fun m!4816659 () Bool)

(assert (=> bm!293362 m!4816659))

(assert (=> bm!293358 m!4816641))

(declare-fun m!4816661 () Bool)

(assert (=> bm!293363 m!4816661))

(declare-fun m!4816663 () Bool)

(assert (=> d!1244822 m!4816663))

(declare-fun m!4816665 () Bool)

(assert (=> d!1244822 m!4816665))

(declare-fun m!4816667 () Bool)

(assert (=> d!1244822 m!4816667))

(declare-fun m!4816669 () Bool)

(assert (=> d!1244822 m!4816669))

(declare-fun m!4816671 () Bool)

(assert (=> d!1244822 m!4816671))

(declare-fun m!4816673 () Bool)

(assert (=> d!1244822 m!4816673))

(declare-fun m!4816675 () Bool)

(assert (=> d!1244822 m!4816675))

(assert (=> d!1244822 m!4816643))

(assert (=> d!1244822 m!4816673))

(declare-fun m!4816677 () Bool)

(assert (=> b!4230139 m!4816677))

(assert (=> bm!293303 d!1244822))

(assert (=> bm!293301 d!1244756))

(declare-fun d!1244824 () Bool)

(assert (=> d!1244824 (= (nullable!4502 (regex!7878 r!4334)) (nullableFct!1231 (regex!7878 r!4334)))))

(declare-fun bs!597915 () Bool)

(assert (= bs!597915 d!1244824))

(declare-fun m!4816679 () Bool)

(assert (=> bs!597915 m!4816679))

(assert (=> b!4230018 d!1244824))

(declare-fun b!4230146 () Bool)

(declare-fun e!2626661 () Bool)

(declare-fun e!2626657 () Bool)

(assert (=> b!4230146 (= e!2626661 e!2626657)))

(declare-fun res!1739634 () Bool)

(assert (=> b!4230146 (=> (not res!1739634) (not e!2626657))))

(declare-fun call!293370 () Bool)

(assert (=> b!4230146 (= res!1739634 call!293370)))

(declare-fun bm!293364 () Bool)

(declare-fun call!293371 () Bool)

(declare-fun call!293369 () Bool)

(assert (=> bm!293364 (= call!293371 call!293369)))

(declare-fun b!4230147 () Bool)

(declare-fun e!2626659 () Bool)

(declare-fun e!2626658 () Bool)

(assert (=> b!4230147 (= e!2626659 e!2626658)))

(declare-fun c!719010 () Bool)

(assert (=> b!4230147 (= c!719010 ((_ is Union!12783) (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))))))

(declare-fun c!719011 () Bool)

(declare-fun bm!293365 () Bool)

(assert (=> bm!293365 (= call!293369 (validRegex!5801 (ite c!719011 (reg!13112 (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))) (ite c!719010 (regTwo!26079 (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))) (regTwo!26078 (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334)))))))))))

(declare-fun b!4230148 () Bool)

(declare-fun res!1739632 () Bool)

(declare-fun e!2626662 () Bool)

(assert (=> b!4230148 (=> (not res!1739632) (not e!2626662))))

(assert (=> b!4230148 (= res!1739632 call!293370)))

(assert (=> b!4230148 (= e!2626658 e!2626662)))

(declare-fun b!4230149 () Bool)

(assert (=> b!4230149 (= e!2626662 call!293371)))

(declare-fun bm!293366 () Bool)

(assert (=> bm!293366 (= call!293370 (validRegex!5801 (ite c!719010 (regOne!26079 (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))) (regOne!26078 (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))))))))

(declare-fun b!4230150 () Bool)

(declare-fun e!2626660 () Bool)

(assert (=> b!4230150 (= e!2626659 e!2626660)))

(declare-fun res!1739636 () Bool)

(assert (=> b!4230150 (= res!1739636 (not (nullable!4502 (reg!13112 (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))))))))

(assert (=> b!4230150 (=> (not res!1739636) (not e!2626660))))

(declare-fun b!4230151 () Bool)

(assert (=> b!4230151 (= e!2626657 call!293371)))

(declare-fun b!4230152 () Bool)

(declare-fun e!2626663 () Bool)

(assert (=> b!4230152 (= e!2626663 e!2626659)))

(assert (=> b!4230152 (= c!719011 ((_ is Star!12783) (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))))))

(declare-fun b!4230153 () Bool)

(assert (=> b!4230153 (= e!2626660 call!293369)))

(declare-fun b!4230145 () Bool)

(declare-fun res!1739633 () Bool)

(assert (=> b!4230145 (=> res!1739633 e!2626661)))

(assert (=> b!4230145 (= res!1739633 (not ((_ is Concat!20892) (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334)))))))))

(assert (=> b!4230145 (= e!2626658 e!2626661)))

(declare-fun d!1244826 () Bool)

(declare-fun res!1739635 () Bool)

(assert (=> d!1244826 (=> res!1739635 e!2626663)))

(assert (=> d!1244826 (= res!1739635 ((_ is ElementMatch!12783) (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))))))

(assert (=> d!1244826 (= (validRegex!5801 (ite c!718939 (reg!13112 (regex!7878 r!4334)) (ite c!718938 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))))) e!2626663)))

(assert (= (and d!1244826 (not res!1739635)) b!4230152))

(assert (= (and b!4230152 c!719011) b!4230150))

(assert (= (and b!4230152 (not c!719011)) b!4230147))

(assert (= (and b!4230150 res!1739636) b!4230153))

(assert (= (and b!4230147 c!719010) b!4230148))

(assert (= (and b!4230147 (not c!719010)) b!4230145))

(assert (= (and b!4230148 res!1739632) b!4230149))

(assert (= (and b!4230145 (not res!1739633)) b!4230146))

(assert (= (and b!4230146 res!1739634) b!4230151))

(assert (= (or b!4230148 b!4230146) bm!293366))

(assert (= (or b!4230149 b!4230151) bm!293364))

(assert (= (or b!4230153 bm!293364) bm!293365))

(declare-fun m!4816681 () Bool)

(assert (=> bm!293365 m!4816681))

(declare-fun m!4816683 () Bool)

(assert (=> bm!293366 m!4816683))

(declare-fun m!4816685 () Bool)

(assert (=> b!4230150 m!4816685))

(assert (=> bm!293313 d!1244826))

(assert (=> b!4229910 d!1244728))

(assert (=> b!4229910 d!1244730))

(declare-fun d!1244828 () Bool)

(assert (=> d!1244828 (= (list!16858 lt!1503751) (list!16860 (c!718871 lt!1503751)))))

(declare-fun bs!597916 () Bool)

(assert (= bs!597916 d!1244828))

(declare-fun m!4816687 () Bool)

(assert (=> bs!597916 m!4816687))

(assert (=> d!1244746 d!1244828))

(declare-fun call!293374 () Regex!12783)

(declare-fun b!4230154 () Bool)

(declare-fun e!2626667 () Regex!12783)

(declare-fun call!293372 () Regex!12783)

(assert (=> b!4230154 (= e!2626667 (Union!12783 (Concat!20892 call!293374 (regTwo!26078 (regex!7878 r!4334))) call!293372))))

(declare-fun b!4230155 () Bool)

(declare-fun e!2626666 () Regex!12783)

(declare-fun call!293375 () Regex!12783)

(assert (=> b!4230155 (= e!2626666 (Concat!20892 call!293375 (regex!7878 r!4334)))))

(declare-fun b!4230156 () Bool)

(assert (=> b!4230156 (= e!2626667 (Union!12783 (Concat!20892 call!293374 (regTwo!26078 (regex!7878 r!4334))) EmptyLang!12783))))

(declare-fun b!4230157 () Bool)

(declare-fun e!2626665 () Regex!12783)

(assert (=> b!4230157 (= e!2626665 (ite (= call!293307 (c!718870 (regex!7878 r!4334))) EmptyExpr!12783 EmptyLang!12783))))

(declare-fun b!4230158 () Bool)

(declare-fun e!2626668 () Regex!12783)

(assert (=> b!4230158 (= e!2626668 e!2626666)))

(declare-fun c!719013 () Bool)

(assert (=> b!4230158 (= c!719013 ((_ is Star!12783) (regex!7878 r!4334)))))

(declare-fun b!4230159 () Bool)

(declare-fun e!2626664 () Regex!12783)

(assert (=> b!4230159 (= e!2626664 e!2626665)))

(declare-fun c!719016 () Bool)

(assert (=> b!4230159 (= c!719016 ((_ is ElementMatch!12783) (regex!7878 r!4334)))))

(declare-fun d!1244830 () Bool)

(declare-fun lt!1503844 () Regex!12783)

(assert (=> d!1244830 (validRegex!5801 lt!1503844)))

(assert (=> d!1244830 (= lt!1503844 e!2626664)))

(declare-fun c!719012 () Bool)

(assert (=> d!1244830 (= c!719012 (or ((_ is EmptyExpr!12783) (regex!7878 r!4334)) ((_ is EmptyLang!12783) (regex!7878 r!4334))))))

(assert (=> d!1244830 (validRegex!5801 (regex!7878 r!4334))))

(assert (=> d!1244830 (= (derivativeStep!3840 (regex!7878 r!4334) call!293307) lt!1503844)))

(declare-fun b!4230160 () Bool)

(assert (=> b!4230160 (= e!2626664 EmptyLang!12783)))

(declare-fun c!719015 () Bool)

(declare-fun call!293373 () Regex!12783)

(declare-fun bm!293367 () Bool)

(assert (=> bm!293367 (= call!293373 (derivativeStep!3840 (ite c!719015 (regOne!26079 (regex!7878 r!4334)) (ite c!719013 (reg!13112 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))) call!293307))))

(declare-fun bm!293368 () Bool)

(assert (=> bm!293368 (= call!293372 (derivativeStep!3840 (ite c!719015 (regTwo!26079 (regex!7878 r!4334)) (regTwo!26078 (regex!7878 r!4334))) call!293307))))

(declare-fun b!4230161 () Bool)

(assert (=> b!4230161 (= e!2626668 (Union!12783 call!293373 call!293372))))

(declare-fun b!4230162 () Bool)

(assert (=> b!4230162 (= c!719015 ((_ is Union!12783) (regex!7878 r!4334)))))

(assert (=> b!4230162 (= e!2626665 e!2626668)))

(declare-fun bm!293369 () Bool)

(assert (=> bm!293369 (= call!293375 call!293373)))

(declare-fun bm!293370 () Bool)

(assert (=> bm!293370 (= call!293374 call!293375)))

(declare-fun b!4230163 () Bool)

(declare-fun c!719014 () Bool)

(assert (=> b!4230163 (= c!719014 (nullable!4502 (regOne!26078 (regex!7878 r!4334))))))

(assert (=> b!4230163 (= e!2626666 e!2626667)))

(assert (= (and d!1244830 c!719012) b!4230160))

(assert (= (and d!1244830 (not c!719012)) b!4230159))

(assert (= (and b!4230159 c!719016) b!4230157))

(assert (= (and b!4230159 (not c!719016)) b!4230162))

(assert (= (and b!4230162 c!719015) b!4230161))

(assert (= (and b!4230162 (not c!719015)) b!4230158))

(assert (= (and b!4230158 c!719013) b!4230155))

(assert (= (and b!4230158 (not c!719013)) b!4230163))

(assert (= (and b!4230163 c!719014) b!4230154))

(assert (= (and b!4230163 (not c!719014)) b!4230156))

(assert (= (or b!4230154 b!4230156) bm!293370))

(assert (= (or b!4230155 bm!293370) bm!293369))

(assert (= (or b!4230161 bm!293369) bm!293367))

(assert (= (or b!4230161 b!4230154) bm!293368))

(declare-fun m!4816689 () Bool)

(assert (=> d!1244830 m!4816689))

(assert (=> d!1244830 m!4816181))

(declare-fun m!4816691 () Bool)

(assert (=> bm!293367 m!4816691))

(declare-fun m!4816693 () Bool)

(assert (=> bm!293368 m!4816693))

(assert (=> b!4230163 m!4816591))

(assert (=> bm!293305 d!1244830))

(assert (=> bm!293298 d!1244824))

(declare-fun d!1244832 () Bool)

(assert (=> d!1244832 true))

(declare-fun lambda!129967 () Int)

(declare-fun order!24583 () Int)

(declare-fun order!24585 () Int)

(declare-fun dynLambda!20032 (Int Int) Int)

(declare-fun dynLambda!20033 (Int Int) Int)

(assert (=> d!1244832 (< (dynLambda!20032 order!24583 (toChars!10465 (transformation!7878 (rule!10994 t!8425)))) (dynLambda!20033 order!24585 lambda!129967))))

(assert (=> d!1244832 true))

(assert (=> d!1244832 (< (dynLambda!20027 order!24579 (toValue!10606 (transformation!7878 (rule!10994 t!8425)))) (dynLambda!20033 order!24585 lambda!129967))))

(declare-fun Forall!1584 (Int) Bool)

(assert (=> d!1244832 (= (semiInverseModEq!3427 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (toValue!10606 (transformation!7878 (rule!10994 t!8425)))) (Forall!1584 lambda!129967))))

(declare-fun bs!597917 () Bool)

(assert (= bs!597917 d!1244832))

(declare-fun m!4816695 () Bool)

(assert (=> bs!597917 m!4816695))

(assert (=> d!1244742 d!1244832))

(assert (=> b!4229989 d!1244776))

(declare-fun d!1244834 () Bool)

(declare-fun dynLambda!20034 (Int BalanceConc!27772) TokenValue!8108)

(assert (=> d!1244834 (= (apply!10731 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795)))) (seqFromList!5791 (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795))))) (dynLambda!20034 (toValue!10606 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795))))) (seqFromList!5791 (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795))))))))

(declare-fun b_lambda!124549 () Bool)

(assert (=> (not b_lambda!124549) (not d!1244834)))

(declare-fun tb!253835 () Bool)

(declare-fun t!349464 () Bool)

(assert (=> (and b!4229555 (= (toValue!10606 (transformation!7878 (rule!10994 t!8425))) (toValue!10606 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795)))))) t!349464) tb!253835))

(declare-fun result!309560 () Bool)

(assert (=> tb!253835 (= result!309560 (inv!21 (dynLambda!20034 (toValue!10606 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795))))) (seqFromList!5791 (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795)))))))))

(declare-fun m!4816697 () Bool)

(assert (=> tb!253835 m!4816697))

(assert (=> d!1244834 t!349464))

(declare-fun b_and!334205 () Bool)

(assert (= b_and!334177 (and (=> t!349464 result!309560) b_and!334205)))

(declare-fun tb!253837 () Bool)

(declare-fun t!349466 () Bool)

(assert (=> (and b!4229546 (= (toValue!10606 (transformation!7878 r!4334)) (toValue!10606 (transformation!7878 (rule!10994 (_1!25284 (get!15186 lt!1503795)))))) t!349466) tb!253837))

(declare-fun result!309564 () Bool)

(assert (= result!309564 result!309560))

(assert (=> d!1244834 t!349466))

(declare-fun b_and!334207 () Bool)

(assert (= b_and!334181 (and (=> t!349466 result!309564) b_and!334207)))

(assert (=> d!1244834 m!4816491))

(declare-fun m!4816699 () Bool)

(assert (=> d!1244834 m!4816699))

(assert (=> b!4229989 d!1244834))

(declare-fun d!1244836 () Bool)

(declare-fun fromListB!2639 (List!46820) BalanceConc!27772)

(assert (=> d!1244836 (= (seqFromList!5791 (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795)))) (fromListB!2639 (originalCharacters!8226 (_1!25284 (get!15186 lt!1503795)))))))

(declare-fun bs!597918 () Bool)

(assert (= bs!597918 d!1244836))

(declare-fun m!4816701 () Bool)

(assert (=> bs!597918 m!4816701))

(assert (=> b!4229989 d!1244836))

(declare-fun d!1244838 () Bool)

(declare-fun charsToBigInt!1 (List!46821) Int)

(assert (=> d!1244838 (= (inv!17 (value!245021 t!8425)) (= (charsToBigInt!1 (text!57204 (value!245021 t!8425))) (value!245013 (value!245021 t!8425))))))

(declare-fun bs!597919 () Bool)

(assert (= bs!597919 d!1244838))

(declare-fun m!4816703 () Bool)

(assert (=> bs!597919 m!4816703))

(assert (=> b!4229585 d!1244838))

(declare-fun b!4230171 () Bool)

(declare-fun e!2626676 () Bool)

(declare-fun e!2626672 () Bool)

(assert (=> b!4230171 (= e!2626676 e!2626672)))

(declare-fun res!1739639 () Bool)

(assert (=> b!4230171 (=> (not res!1739639) (not e!2626672))))

(declare-fun call!293377 () Bool)

(assert (=> b!4230171 (= res!1739639 call!293377)))

(declare-fun bm!293371 () Bool)

(declare-fun call!293378 () Bool)

(declare-fun call!293376 () Bool)

(assert (=> bm!293371 (= call!293378 call!293376)))

(declare-fun b!4230172 () Bool)

(declare-fun e!2626674 () Bool)

(declare-fun e!2626673 () Bool)

(assert (=> b!4230172 (= e!2626674 e!2626673)))

(declare-fun c!719017 () Bool)

(assert (=> b!4230172 (= c!719017 ((_ is Union!12783) (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))))))

(declare-fun bm!293372 () Bool)

(declare-fun c!719018 () Bool)

(assert (=> bm!293372 (= call!293376 (validRegex!5801 (ite c!719018 (reg!13112 (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))) (ite c!719017 (regTwo!26079 (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))) (regTwo!26078 (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334))))))))))

(declare-fun b!4230173 () Bool)

(declare-fun res!1739637 () Bool)

(declare-fun e!2626677 () Bool)

(assert (=> b!4230173 (=> (not res!1739637) (not e!2626677))))

(assert (=> b!4230173 (= res!1739637 call!293377)))

(assert (=> b!4230173 (= e!2626673 e!2626677)))

(declare-fun b!4230174 () Bool)

(assert (=> b!4230174 (= e!2626677 call!293378)))

(declare-fun bm!293373 () Bool)

(assert (=> bm!293373 (= call!293377 (validRegex!5801 (ite c!719017 (regOne!26079 (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))) (regOne!26078 (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))))))))

(declare-fun b!4230175 () Bool)

(declare-fun e!2626675 () Bool)

(assert (=> b!4230175 (= e!2626674 e!2626675)))

(declare-fun res!1739641 () Bool)

(assert (=> b!4230175 (= res!1739641 (not (nullable!4502 (reg!13112 (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))))))))

(assert (=> b!4230175 (=> (not res!1739641) (not e!2626675))))

(declare-fun b!4230176 () Bool)

(assert (=> b!4230176 (= e!2626672 call!293378)))

(declare-fun b!4230177 () Bool)

(declare-fun e!2626678 () Bool)

(assert (=> b!4230177 (= e!2626678 e!2626674)))

(assert (=> b!4230177 (= c!719018 ((_ is Star!12783) (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))))))

(declare-fun b!4230178 () Bool)

(assert (=> b!4230178 (= e!2626675 call!293376)))

(declare-fun b!4230170 () Bool)

(declare-fun res!1739638 () Bool)

(assert (=> b!4230170 (=> res!1739638 e!2626676)))

(assert (=> b!4230170 (= res!1739638 (not ((_ is Concat!20892) (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334))))))))

(assert (=> b!4230170 (= e!2626673 e!2626676)))

(declare-fun d!1244840 () Bool)

(declare-fun res!1739640 () Bool)

(assert (=> d!1244840 (=> res!1739640 e!2626678)))

(assert (=> d!1244840 (= res!1739640 ((_ is ElementMatch!12783) (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))))))

(assert (=> d!1244840 (= (validRegex!5801 (ite c!718938 (regOne!26079 (regex!7878 r!4334)) (regOne!26078 (regex!7878 r!4334)))) e!2626678)))

(assert (= (and d!1244840 (not res!1739640)) b!4230177))

(assert (= (and b!4230177 c!719018) b!4230175))

(assert (= (and b!4230177 (not c!719018)) b!4230172))

(assert (= (and b!4230175 res!1739641) b!4230178))

(assert (= (and b!4230172 c!719017) b!4230173))

(assert (= (and b!4230172 (not c!719017)) b!4230170))

(assert (= (and b!4230173 res!1739637) b!4230174))

(assert (= (and b!4230170 (not res!1739638)) b!4230171))

(assert (= (and b!4230171 res!1739639) b!4230176))

(assert (= (or b!4230173 b!4230171) bm!293373))

(assert (= (or b!4230174 b!4230176) bm!293371))

(assert (= (or b!4230178 bm!293371) bm!293372))

(declare-fun m!4816705 () Bool)

(assert (=> bm!293372 m!4816705))

(declare-fun m!4816707 () Bool)

(assert (=> bm!293373 m!4816707))

(declare-fun m!4816709 () Bool)

(assert (=> b!4230175 m!4816709))

(assert (=> bm!293314 d!1244840))

(assert (=> b!4229888 d!1244824))

(assert (=> d!1244736 d!1244784))

(assert (=> d!1244736 d!1244732))

(declare-fun d!1244842 () Bool)

(assert (=> d!1244842 (= (isEmpty!27609 lt!1503795) (not ((_ is Some!10025) lt!1503795)))))

(assert (=> d!1244748 d!1244842))

(declare-fun d!1244844 () Bool)

(assert (=> d!1244844 (= (isEmpty!27608 (_1!25285 lt!1503793)) ((_ is Nil!46696) (_1!25285 lt!1503793)))))

(assert (=> d!1244748 d!1244844))

(declare-fun d!1244846 () Bool)

(declare-fun lt!1503866 () tuple2!44302)

(assert (=> d!1244846 (= (++!11908 (_1!25285 lt!1503866) (_2!25285 lt!1503866)) input!3586)))

(declare-fun sizeTr!323 (List!46820 Int) Int)

(assert (=> d!1244846 (= lt!1503866 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 0 input!3586 input!3586 (sizeTr!323 input!3586 0)))))

(declare-fun lt!1503862 () Unit!65805)

(declare-fun lt!1503865 () Unit!65805)

(assert (=> d!1244846 (= lt!1503862 lt!1503865)))

(declare-fun lt!1503861 () List!46820)

(declare-fun lt!1503864 () Int)

(assert (=> d!1244846 (= (sizeTr!323 lt!1503861 lt!1503864) (+ (size!34217 lt!1503861) lt!1503864))))

(declare-fun lemmaSizeTrEqualsSize!322 (List!46820 Int) Unit!65805)

(assert (=> d!1244846 (= lt!1503865 (lemmaSizeTrEqualsSize!322 lt!1503861 lt!1503864))))

(assert (=> d!1244846 (= lt!1503864 0)))

(assert (=> d!1244846 (= lt!1503861 Nil!46696)))

(declare-fun lt!1503867 () Unit!65805)

(declare-fun lt!1503863 () Unit!65805)

(assert (=> d!1244846 (= lt!1503867 lt!1503863)))

(declare-fun lt!1503868 () Int)

(assert (=> d!1244846 (= (sizeTr!323 input!3586 lt!1503868) (+ (size!34217 input!3586) lt!1503868))))

(assert (=> d!1244846 (= lt!1503863 (lemmaSizeTrEqualsSize!322 input!3586 lt!1503868))))

(assert (=> d!1244846 (= lt!1503868 0)))

(assert (=> d!1244846 (validRegex!5801 (regex!7878 r!4334))))

(assert (=> d!1244846 (= (findLongestMatch!1594 (regex!7878 r!4334) input!3586) lt!1503866)))

(declare-fun bs!597920 () Bool)

(assert (= bs!597920 d!1244846))

(declare-fun m!4816711 () Bool)

(assert (=> bs!597920 m!4816711))

(declare-fun m!4816713 () Bool)

(assert (=> bs!597920 m!4816713))

(declare-fun m!4816715 () Bool)

(assert (=> bs!597920 m!4816715))

(declare-fun m!4816717 () Bool)

(assert (=> bs!597920 m!4816717))

(declare-fun m!4816719 () Bool)

(assert (=> bs!597920 m!4816719))

(declare-fun m!4816721 () Bool)

(assert (=> bs!597920 m!4816721))

(assert (=> bs!597920 m!4816181))

(declare-fun m!4816723 () Bool)

(assert (=> bs!597920 m!4816723))

(declare-fun m!4816725 () Bool)

(assert (=> bs!597920 m!4816725))

(assert (=> bs!597920 m!4816165))

(assert (=> bs!597920 m!4816717))

(assert (=> d!1244748 d!1244846))

(assert (=> d!1244748 d!1244766))

(declare-fun d!1244848 () Bool)

(assert (=> d!1244848 (= (isEmpty!27608 (originalCharacters!8226 t!8425)) ((_ is Nil!46696) (originalCharacters!8226 t!8425)))))

(assert (=> d!1244688 d!1244848))

(declare-fun b!4230181 () Bool)

(declare-fun e!2626681 () Bool)

(assert (=> b!4230181 (= e!2626681 (isPrefix!4693 (tail!6813 (tail!6813 input!3586)) (tail!6813 (tail!6813 input!3586))))))

(declare-fun b!4230180 () Bool)

(declare-fun res!1739642 () Bool)

(assert (=> b!4230180 (=> (not res!1739642) (not e!2626681))))

(assert (=> b!4230180 (= res!1739642 (= (head!8966 (tail!6813 input!3586)) (head!8966 (tail!6813 input!3586))))))

(declare-fun b!4230179 () Bool)

(declare-fun e!2626679 () Bool)

(assert (=> b!4230179 (= e!2626679 e!2626681)))

(declare-fun res!1739644 () Bool)

(assert (=> b!4230179 (=> (not res!1739644) (not e!2626681))))

(assert (=> b!4230179 (= res!1739644 (not ((_ is Nil!46696) (tail!6813 input!3586))))))

(declare-fun b!4230182 () Bool)

(declare-fun e!2626680 () Bool)

(assert (=> b!4230182 (= e!2626680 (>= (size!34217 (tail!6813 input!3586)) (size!34217 (tail!6813 input!3586))))))

(declare-fun d!1244850 () Bool)

(assert (=> d!1244850 e!2626680))

(declare-fun res!1739645 () Bool)

(assert (=> d!1244850 (=> res!1739645 e!2626680)))

(declare-fun lt!1503869 () Bool)

(assert (=> d!1244850 (= res!1739645 (not lt!1503869))))

(assert (=> d!1244850 (= lt!1503869 e!2626679)))

(declare-fun res!1739643 () Bool)

(assert (=> d!1244850 (=> res!1739643 e!2626679)))

(assert (=> d!1244850 (= res!1739643 ((_ is Nil!46696) (tail!6813 input!3586)))))

(assert (=> d!1244850 (= (isPrefix!4693 (tail!6813 input!3586) (tail!6813 input!3586)) lt!1503869)))

(assert (= (and d!1244850 (not res!1739643)) b!4230179))

(assert (= (and b!4230179 res!1739644) b!4230180))

(assert (= (and b!4230180 res!1739642) b!4230181))

(assert (= (and d!1244850 (not res!1739645)) b!4230182))

(assert (=> b!4230181 m!4816205))

(declare-fun m!4816727 () Bool)

(assert (=> b!4230181 m!4816727))

(assert (=> b!4230181 m!4816205))

(assert (=> b!4230181 m!4816727))

(assert (=> b!4230181 m!4816727))

(assert (=> b!4230181 m!4816727))

(declare-fun m!4816729 () Bool)

(assert (=> b!4230181 m!4816729))

(assert (=> b!4230180 m!4816205))

(declare-fun m!4816731 () Bool)

(assert (=> b!4230180 m!4816731))

(assert (=> b!4230180 m!4816205))

(assert (=> b!4230180 m!4816731))

(assert (=> b!4230182 m!4816205))

(declare-fun m!4816733 () Bool)

(assert (=> b!4230182 m!4816733))

(assert (=> b!4230182 m!4816205))

(assert (=> b!4230182 m!4816733))

(assert (=> b!4229999 d!1244850))

(assert (=> b!4229999 d!1244780))

(declare-fun b!4230185 () Bool)

(declare-fun e!2626684 () Bool)

(assert (=> b!4230185 (= e!2626684 (isPrefix!4693 (tail!6813 (tail!6813 p!3014)) (tail!6813 (tail!6813 input!3586))))))

(declare-fun b!4230184 () Bool)

(declare-fun res!1739646 () Bool)

(assert (=> b!4230184 (=> (not res!1739646) (not e!2626684))))

(assert (=> b!4230184 (= res!1739646 (= (head!8966 (tail!6813 p!3014)) (head!8966 (tail!6813 input!3586))))))

(declare-fun b!4230183 () Bool)

(declare-fun e!2626682 () Bool)

(assert (=> b!4230183 (= e!2626682 e!2626684)))

(declare-fun res!1739648 () Bool)

(assert (=> b!4230183 (=> (not res!1739648) (not e!2626684))))

(assert (=> b!4230183 (= res!1739648 (not ((_ is Nil!46696) (tail!6813 input!3586))))))

(declare-fun b!4230186 () Bool)

(declare-fun e!2626683 () Bool)

(assert (=> b!4230186 (= e!2626683 (>= (size!34217 (tail!6813 input!3586)) (size!34217 (tail!6813 p!3014))))))

(declare-fun d!1244852 () Bool)

(assert (=> d!1244852 e!2626683))

(declare-fun res!1739649 () Bool)

(assert (=> d!1244852 (=> res!1739649 e!2626683)))

(declare-fun lt!1503870 () Bool)

(assert (=> d!1244852 (= res!1739649 (not lt!1503870))))

(assert (=> d!1244852 (= lt!1503870 e!2626682)))

(declare-fun res!1739647 () Bool)

(assert (=> d!1244852 (=> res!1739647 e!2626682)))

(assert (=> d!1244852 (= res!1739647 ((_ is Nil!46696) (tail!6813 p!3014)))))

(assert (=> d!1244852 (= (isPrefix!4693 (tail!6813 p!3014) (tail!6813 input!3586)) lt!1503870)))

(assert (= (and d!1244852 (not res!1739647)) b!4230183))

(assert (= (and b!4230183 res!1739648) b!4230184))

(assert (= (and b!4230184 res!1739646) b!4230185))

(assert (= (and d!1244852 (not res!1739649)) b!4230186))

(assert (=> b!4230185 m!4816203))

(assert (=> b!4230185 m!4816571))

(assert (=> b!4230185 m!4816205))

(assert (=> b!4230185 m!4816727))

(assert (=> b!4230185 m!4816571))

(assert (=> b!4230185 m!4816727))

(declare-fun m!4816735 () Bool)

(assert (=> b!4230185 m!4816735))

(assert (=> b!4230184 m!4816203))

(assert (=> b!4230184 m!4816575))

(assert (=> b!4230184 m!4816205))

(assert (=> b!4230184 m!4816731))

(assert (=> b!4230186 m!4816205))

(assert (=> b!4230186 m!4816733))

(assert (=> b!4230186 m!4816203))

(declare-fun m!4816737 () Bool)

(assert (=> b!4230186 m!4816737))

(assert (=> b!4229567 d!1244852))

(assert (=> b!4229567 d!1244796))

(assert (=> b!4229567 d!1244780))

(declare-fun d!1244854 () Bool)

(declare-fun isBalanced!3749 (Conc!14089) Bool)

(assert (=> d!1244854 (= (inv!61384 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425))) (isBalanced!3749 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))))))

(declare-fun bs!597921 () Bool)

(assert (= bs!597921 d!1244854))

(declare-fun m!4816739 () Bool)

(assert (=> bs!597921 m!4816739))

(assert (=> tb!253823 d!1244854))

(declare-fun d!1244856 () Bool)

(declare-fun lt!1503871 () Int)

(assert (=> d!1244856 (>= lt!1503871 0)))

(declare-fun e!2626685 () Int)

(assert (=> d!1244856 (= lt!1503871 e!2626685)))

(declare-fun c!719019 () Bool)

(assert (=> d!1244856 (= c!719019 ((_ is Nil!46696) (_1!25285 lt!1503670)))))

(assert (=> d!1244856 (= (size!34217 (_1!25285 lt!1503670)) lt!1503871)))

(declare-fun b!4230187 () Bool)

(assert (=> b!4230187 (= e!2626685 0)))

(declare-fun b!4230188 () Bool)

(assert (=> b!4230188 (= e!2626685 (+ 1 (size!34217 (t!349449 (_1!25285 lt!1503670)))))))

(assert (= (and d!1244856 c!719019) b!4230187))

(assert (= (and d!1244856 (not c!719019)) b!4230188))

(declare-fun m!4816741 () Bool)

(assert (=> b!4230188 m!4816741))

(assert (=> b!4229798 d!1244856))

(assert (=> b!4229798 d!1244726))

(declare-fun d!1244858 () Bool)

(declare-fun lt!1503872 () Int)

(assert (=> d!1244858 (>= lt!1503872 0)))

(declare-fun e!2626686 () Int)

(assert (=> d!1244858 (= lt!1503872 e!2626686)))

(declare-fun c!719020 () Bool)

(assert (=> d!1244858 (= c!719020 ((_ is Nil!46696) (t!349449 input!3586)))))

(assert (=> d!1244858 (= (size!34217 (t!349449 input!3586)) lt!1503872)))

(declare-fun b!4230189 () Bool)

(assert (=> b!4230189 (= e!2626686 0)))

(declare-fun b!4230190 () Bool)

(assert (=> b!4230190 (= e!2626686 (+ 1 (size!34217 (t!349449 (t!349449 input!3586)))))))

(assert (= (and d!1244858 c!719020) b!4230189))

(assert (= (and d!1244858 (not c!719020)) b!4230190))

(declare-fun m!4816743 () Bool)

(assert (=> b!4230190 m!4816743))

(assert (=> b!4229817 d!1244858))

(declare-fun d!1244860 () Bool)

(declare-fun lt!1503873 () Int)

(assert (=> d!1244860 (>= lt!1503873 0)))

(declare-fun e!2626687 () Int)

(assert (=> d!1244860 (= lt!1503873 e!2626687)))

(declare-fun c!719021 () Bool)

(assert (=> d!1244860 (= c!719021 ((_ is Nil!46696) lt!1503802))))

(assert (=> d!1244860 (= (size!34217 lt!1503802) lt!1503873)))

(declare-fun b!4230191 () Bool)

(assert (=> b!4230191 (= e!2626687 0)))

(declare-fun b!4230192 () Bool)

(assert (=> b!4230192 (= e!2626687 (+ 1 (size!34217 (t!349449 lt!1503802))))))

(assert (= (and d!1244860 c!719021) b!4230191))

(assert (= (and d!1244860 (not c!719021)) b!4230192))

(declare-fun m!4816745 () Bool)

(assert (=> b!4230192 m!4816745))

(assert (=> b!4230011 d!1244860))

(assert (=> b!4230011 d!1244734))

(declare-fun d!1244862 () Bool)

(declare-fun lt!1503874 () Int)

(assert (=> d!1244862 (>= lt!1503874 0)))

(declare-fun e!2626688 () Int)

(assert (=> d!1244862 (= lt!1503874 e!2626688)))

(declare-fun c!719022 () Bool)

(assert (=> d!1244862 (= c!719022 ((_ is Nil!46696) suffix!1590))))

(assert (=> d!1244862 (= (size!34217 suffix!1590) lt!1503874)))

(declare-fun b!4230193 () Bool)

(assert (=> b!4230193 (= e!2626688 0)))

(declare-fun b!4230194 () Bool)

(assert (=> b!4230194 (= e!2626688 (+ 1 (size!34217 (t!349449 suffix!1590))))))

(assert (= (and d!1244862 c!719022) b!4230193))

(assert (= (and d!1244862 (not c!719022)) b!4230194))

(declare-fun m!4816747 () Bool)

(assert (=> b!4230194 m!4816747))

(assert (=> b!4230011 d!1244862))

(declare-fun b!4230197 () Bool)

(declare-fun e!2626691 () Bool)

(assert (=> b!4230197 (= e!2626691 (isPrefix!4693 (tail!6813 Nil!46696) (tail!6813 (++!11908 Nil!46696 input!3586))))))

(declare-fun b!4230196 () Bool)

(declare-fun res!1739650 () Bool)

(assert (=> b!4230196 (=> (not res!1739650) (not e!2626691))))

(assert (=> b!4230196 (= res!1739650 (= (head!8966 Nil!46696) (head!8966 (++!11908 Nil!46696 input!3586))))))

(declare-fun b!4230195 () Bool)

(declare-fun e!2626689 () Bool)

(assert (=> b!4230195 (= e!2626689 e!2626691)))

(declare-fun res!1739652 () Bool)

(assert (=> b!4230195 (=> (not res!1739652) (not e!2626691))))

(assert (=> b!4230195 (= res!1739652 (not ((_ is Nil!46696) (++!11908 Nil!46696 input!3586))))))

(declare-fun b!4230198 () Bool)

(declare-fun e!2626690 () Bool)

(assert (=> b!4230198 (= e!2626690 (>= (size!34217 (++!11908 Nil!46696 input!3586)) (size!34217 Nil!46696)))))

(declare-fun d!1244864 () Bool)

(assert (=> d!1244864 e!2626690))

(declare-fun res!1739653 () Bool)

(assert (=> d!1244864 (=> res!1739653 e!2626690)))

(declare-fun lt!1503875 () Bool)

(assert (=> d!1244864 (= res!1739653 (not lt!1503875))))

(assert (=> d!1244864 (= lt!1503875 e!2626689)))

(declare-fun res!1739651 () Bool)

(assert (=> d!1244864 (=> res!1739651 e!2626689)))

(assert (=> d!1244864 (= res!1739651 ((_ is Nil!46696) Nil!46696))))

(assert (=> d!1244864 (= (isPrefix!4693 Nil!46696 (++!11908 Nil!46696 input!3586)) lt!1503875)))

(assert (= (and d!1244864 (not res!1739651)) b!4230195))

(assert (= (and b!4230195 res!1739652) b!4230196))

(assert (= (and b!4230196 res!1739650) b!4230197))

(assert (= (and d!1244864 (not res!1739653)) b!4230198))

(declare-fun m!4816749 () Bool)

(assert (=> b!4230197 m!4816749))

(assert (=> b!4230197 m!4816391))

(declare-fun m!4816751 () Bool)

(assert (=> b!4230197 m!4816751))

(assert (=> b!4230197 m!4816749))

(assert (=> b!4230197 m!4816751))

(declare-fun m!4816753 () Bool)

(assert (=> b!4230197 m!4816753))

(declare-fun m!4816755 () Bool)

(assert (=> b!4230196 m!4816755))

(assert (=> b!4230196 m!4816391))

(declare-fun m!4816757 () Bool)

(assert (=> b!4230196 m!4816757))

(assert (=> b!4230198 m!4816391))

(declare-fun m!4816759 () Bool)

(assert (=> b!4230198 m!4816759))

(assert (=> b!4230198 m!4816189))

(assert (=> d!1244696 d!1244864))

(assert (=> d!1244696 d!1244732))

(declare-fun d!1244866 () Bool)

(declare-fun lt!1503879 () List!46820)

(assert (=> d!1244866 (= (++!11908 Nil!46696 lt!1503879) input!3586)))

(declare-fun e!2626697 () List!46820)

(assert (=> d!1244866 (= lt!1503879 e!2626697)))

(declare-fun c!719025 () Bool)

(assert (=> d!1244866 (= c!719025 ((_ is Cons!46696) Nil!46696))))

(assert (=> d!1244866 (>= (size!34217 input!3586) (size!34217 Nil!46696))))

(assert (=> d!1244866 (= (getSuffix!2861 input!3586 Nil!46696) lt!1503879)))

(declare-fun b!4230211 () Bool)

(assert (=> b!4230211 (= e!2626697 (getSuffix!2861 (tail!6813 input!3586) (t!349449 Nil!46696)))))

(declare-fun b!4230212 () Bool)

(assert (=> b!4230212 (= e!2626697 input!3586)))

(assert (= (and d!1244866 c!719025) b!4230211))

(assert (= (and d!1244866 (not c!719025)) b!4230212))

(declare-fun m!4816775 () Bool)

(assert (=> d!1244866 m!4816775))

(assert (=> d!1244866 m!4816165))

(assert (=> d!1244866 m!4816189))

(assert (=> b!4230211 m!4816205))

(assert (=> b!4230211 m!4816205))

(declare-fun m!4816777 () Bool)

(assert (=> b!4230211 m!4816777))

(assert (=> d!1244696 d!1244866))

(declare-fun b!4230214 () Bool)

(declare-fun e!2626698 () List!46820)

(assert (=> b!4230214 (= e!2626698 (Cons!46696 (h!52116 (_1!25285 lt!1503670)) (++!11908 (t!349449 (_1!25285 lt!1503670)) (_2!25285 lt!1503670))))))

(declare-fun d!1244874 () Bool)

(declare-fun e!2626699 () Bool)

(assert (=> d!1244874 e!2626699))

(declare-fun res!1739658 () Bool)

(assert (=> d!1244874 (=> (not res!1739658) (not e!2626699))))

(declare-fun lt!1503880 () List!46820)

(assert (=> d!1244874 (= res!1739658 (= (content!7337 lt!1503880) ((_ map or) (content!7337 (_1!25285 lt!1503670)) (content!7337 (_2!25285 lt!1503670)))))))

(assert (=> d!1244874 (= lt!1503880 e!2626698)))

(declare-fun c!719026 () Bool)

(assert (=> d!1244874 (= c!719026 ((_ is Nil!46696) (_1!25285 lt!1503670)))))

(assert (=> d!1244874 (= (++!11908 (_1!25285 lt!1503670) (_2!25285 lt!1503670)) lt!1503880)))

(declare-fun b!4230216 () Bool)

(assert (=> b!4230216 (= e!2626699 (or (not (= (_2!25285 lt!1503670) Nil!46696)) (= lt!1503880 (_1!25285 lt!1503670))))))

(declare-fun b!4230213 () Bool)

(assert (=> b!4230213 (= e!2626698 (_2!25285 lt!1503670))))

(declare-fun b!4230215 () Bool)

(declare-fun res!1739659 () Bool)

(assert (=> b!4230215 (=> (not res!1739659) (not e!2626699))))

(assert (=> b!4230215 (= res!1739659 (= (size!34217 lt!1503880) (+ (size!34217 (_1!25285 lt!1503670)) (size!34217 (_2!25285 lt!1503670)))))))

(assert (= (and d!1244874 c!719026) b!4230213))

(assert (= (and d!1244874 (not c!719026)) b!4230214))

(assert (= (and d!1244874 res!1739658) b!4230215))

(assert (= (and b!4230215 res!1739659) b!4230216))

(declare-fun m!4816779 () Bool)

(assert (=> b!4230214 m!4816779))

(declare-fun m!4816781 () Bool)

(assert (=> d!1244874 m!4816781))

(declare-fun m!4816783 () Bool)

(assert (=> d!1244874 m!4816783))

(declare-fun m!4816785 () Bool)

(assert (=> d!1244874 m!4816785))

(declare-fun m!4816787 () Bool)

(assert (=> b!4230215 m!4816787))

(assert (=> b!4230215 m!4816375))

(declare-fun m!4816789 () Bool)

(assert (=> b!4230215 m!4816789))

(assert (=> d!1244696 d!1244874))

(declare-fun b!4230218 () Bool)

(declare-fun e!2626700 () List!46820)

(assert (=> b!4230218 (= e!2626700 (Cons!46696 (h!52116 Nil!46696) (++!11908 (t!349449 Nil!46696) input!3586)))))

(declare-fun d!1244876 () Bool)

(declare-fun e!2626701 () Bool)

(assert (=> d!1244876 e!2626701))

(declare-fun res!1739660 () Bool)

(assert (=> d!1244876 (=> (not res!1739660) (not e!2626701))))

(declare-fun lt!1503881 () List!46820)

(assert (=> d!1244876 (= res!1739660 (= (content!7337 lt!1503881) ((_ map or) (content!7337 Nil!46696) (content!7337 input!3586))))))

(assert (=> d!1244876 (= lt!1503881 e!2626700)))

(declare-fun c!719027 () Bool)

(assert (=> d!1244876 (= c!719027 ((_ is Nil!46696) Nil!46696))))

(assert (=> d!1244876 (= (++!11908 Nil!46696 input!3586) lt!1503881)))

(declare-fun b!4230220 () Bool)

(assert (=> b!4230220 (= e!2626701 (or (not (= input!3586 Nil!46696)) (= lt!1503881 Nil!46696)))))

(declare-fun b!4230217 () Bool)

(assert (=> b!4230217 (= e!2626700 input!3586)))

(declare-fun b!4230219 () Bool)

(declare-fun res!1739661 () Bool)

(assert (=> b!4230219 (=> (not res!1739661) (not e!2626701))))

(assert (=> b!4230219 (= res!1739661 (= (size!34217 lt!1503881) (+ (size!34217 Nil!46696) (size!34217 input!3586))))))

(assert (= (and d!1244876 c!719027) b!4230217))

(assert (= (and d!1244876 (not c!719027)) b!4230218))

(assert (= (and d!1244876 res!1739660) b!4230219))

(assert (= (and b!4230219 res!1739661) b!4230220))

(declare-fun m!4816791 () Bool)

(assert (=> b!4230218 m!4816791))

(declare-fun m!4816793 () Bool)

(assert (=> d!1244876 m!4816793))

(declare-fun m!4816795 () Bool)

(assert (=> d!1244876 m!4816795))

(declare-fun m!4816797 () Bool)

(assert (=> d!1244876 m!4816797))

(declare-fun m!4816799 () Bool)

(assert (=> b!4230219 m!4816799))

(assert (=> b!4230219 m!4816189))

(assert (=> b!4230219 m!4816165))

(assert (=> d!1244696 d!1244876))

(declare-fun d!1244878 () Bool)

(declare-fun lostCauseFct!266 (Regex!12783) Bool)

(assert (=> d!1244878 (= (lostCause!1060 (regex!7878 r!4334)) (lostCauseFct!266 (regex!7878 r!4334)))))

(declare-fun bs!597923 () Bool)

(assert (= bs!597923 d!1244878))

(declare-fun m!4816801 () Bool)

(assert (=> bs!597923 m!4816801))

(assert (=> d!1244696 d!1244878))

(declare-fun d!1244880 () Bool)

(assert (=> d!1244880 (isPrefix!4693 Nil!46696 (++!11908 Nil!46696 input!3586))))

(declare-fun lt!1503887 () Unit!65805)

(declare-fun choose!25898 (List!46820 List!46820) Unit!65805)

(assert (=> d!1244880 (= lt!1503887 (choose!25898 Nil!46696 input!3586))))

(assert (=> d!1244880 (= (lemmaConcatTwoListThenFirstIsPrefix!3097 Nil!46696 input!3586) lt!1503887)))

(declare-fun bs!597924 () Bool)

(assert (= bs!597924 d!1244880))

(assert (=> bs!597924 m!4816391))

(assert (=> bs!597924 m!4816391))

(assert (=> bs!597924 m!4816393))

(declare-fun m!4816807 () Bool)

(assert (=> bs!597924 m!4816807))

(assert (=> d!1244696 d!1244880))

(declare-fun d!1244884 () Bool)

(assert (=> d!1244884 (= input!3586 lt!1503662)))

(declare-fun lt!1503893 () Unit!65805)

(declare-fun choose!25899 (List!46820 List!46820 List!46820 List!46820 List!46820) Unit!65805)

(assert (=> d!1244884 (= lt!1503893 (choose!25899 Nil!46696 input!3586 Nil!46696 lt!1503662 input!3586))))

(assert (=> d!1244884 (isPrefix!4693 Nil!46696 input!3586)))

(assert (=> d!1244884 (= (lemmaSamePrefixThenSameSuffix!2277 Nil!46696 input!3586 Nil!46696 lt!1503662 input!3586) lt!1503893)))

(declare-fun bs!597926 () Bool)

(assert (= bs!597926 d!1244884))

(declare-fun m!4816813 () Bool)

(assert (=> bs!597926 m!4816813))

(declare-fun m!4816815 () Bool)

(assert (=> bs!597926 m!4816815))

(assert (=> d!1244696 d!1244884))

(declare-fun d!1244888 () Bool)

(declare-fun c!719036 () Bool)

(assert (=> d!1244888 (= c!719036 ((_ is Empty!14089) (c!718871 (charsOf!5253 t!8425))))))

(declare-fun e!2626711 () List!46820)

(assert (=> d!1244888 (= (list!16860 (c!718871 (charsOf!5253 t!8425))) e!2626711)))

(declare-fun b!4230242 () Bool)

(declare-fun e!2626712 () List!46820)

(assert (=> b!4230242 (= e!2626712 (++!11908 (list!16860 (left!34732 (c!718871 (charsOf!5253 t!8425)))) (list!16860 (right!35062 (c!718871 (charsOf!5253 t!8425))))))))

(declare-fun b!4230240 () Bool)

(assert (=> b!4230240 (= e!2626711 e!2626712)))

(declare-fun c!719037 () Bool)

(assert (=> b!4230240 (= c!719037 ((_ is Leaf!21773) (c!718871 (charsOf!5253 t!8425))))))

(declare-fun b!4230241 () Bool)

(declare-fun list!16861 (IArray!28183) List!46820)

(assert (=> b!4230241 (= e!2626712 (list!16861 (xs!17395 (c!718871 (charsOf!5253 t!8425)))))))

(declare-fun b!4230239 () Bool)

(assert (=> b!4230239 (= e!2626711 Nil!46696)))

(assert (= (and d!1244888 c!719036) b!4230239))

(assert (= (and d!1244888 (not c!719036)) b!4230240))

(assert (= (and b!4230240 c!719037) b!4230241))

(assert (= (and b!4230240 (not c!719037)) b!4230242))

(declare-fun m!4816831 () Bool)

(assert (=> b!4230242 m!4816831))

(declare-fun m!4816833 () Bool)

(assert (=> b!4230242 m!4816833))

(assert (=> b!4230242 m!4816831))

(assert (=> b!4230242 m!4816833))

(declare-fun m!4816835 () Bool)

(assert (=> b!4230242 m!4816835))

(declare-fun m!4816837 () Bool)

(assert (=> b!4230241 m!4816837))

(assert (=> d!1244744 d!1244888))

(declare-fun d!1244896 () Bool)

(assert (=> d!1244896 (= (isEmpty!27608 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))) ((_ is Nil!46696) (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))))))

(assert (=> b!4229993 d!1244896))

(declare-fun bs!597929 () Bool)

(declare-fun d!1244898 () Bool)

(assert (= bs!597929 (and d!1244898 d!1244832)))

(declare-fun lambda!129973 () Int)

(assert (=> bs!597929 (= (and (= (toChars!10465 (transformation!7878 r!4334)) (toChars!10465 (transformation!7878 (rule!10994 t!8425)))) (= (toValue!10606 (transformation!7878 r!4334)) (toValue!10606 (transformation!7878 (rule!10994 t!8425))))) (= lambda!129973 lambda!129967))))

(declare-fun b!4230269 () Bool)

(declare-fun e!2626727 () Bool)

(assert (=> b!4230269 (= e!2626727 true)))

(assert (=> d!1244898 e!2626727))

(assert (= d!1244898 b!4230269))

(assert (=> b!4230269 (< (dynLambda!20027 order!24579 (toValue!10606 (transformation!7878 r!4334))) (dynLambda!20033 order!24585 lambda!129973))))

(assert (=> b!4230269 (< (dynLambda!20032 order!24583 (toChars!10465 (transformation!7878 r!4334))) (dynLambda!20033 order!24585 lambda!129973))))

(assert (=> d!1244898 (= (list!16858 (dynLambda!20025 (toChars!10465 (transformation!7878 r!4334)) (dynLambda!20034 (toValue!10606 (transformation!7878 r!4334)) (seqFromList!5791 (_1!25285 lt!1503793))))) (list!16858 (seqFromList!5791 (_1!25285 lt!1503793))))))

(declare-fun lt!1503903 () Unit!65805)

(declare-fun ForallOf!1089 (Int BalanceConc!27772) Unit!65805)

(assert (=> d!1244898 (= lt!1503903 (ForallOf!1089 lambda!129973 (seqFromList!5791 (_1!25285 lt!1503793))))))

(assert (=> d!1244898 (= (lemmaSemiInverse!2522 (transformation!7878 r!4334) (seqFromList!5791 (_1!25285 lt!1503793))) lt!1503903)))

(declare-fun b_lambda!124551 () Bool)

(assert (=> (not b_lambda!124551) (not d!1244898)))

(declare-fun t!349469 () Bool)

(declare-fun tb!253839 () Bool)

(assert (=> (and b!4229555 (= (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (toChars!10465 (transformation!7878 r!4334))) t!349469) tb!253839))

(declare-fun b!4230270 () Bool)

(declare-fun e!2626728 () Bool)

(declare-fun tp!1295724 () Bool)

(assert (=> b!4230270 (= e!2626728 (and (inv!61383 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 r!4334)) (dynLambda!20034 (toValue!10606 (transformation!7878 r!4334)) (seqFromList!5791 (_1!25285 lt!1503793)))))) tp!1295724))))

(declare-fun result!309566 () Bool)

(assert (=> tb!253839 (= result!309566 (and (inv!61384 (dynLambda!20025 (toChars!10465 (transformation!7878 r!4334)) (dynLambda!20034 (toValue!10606 (transformation!7878 r!4334)) (seqFromList!5791 (_1!25285 lt!1503793))))) e!2626728))))

(assert (= tb!253839 b!4230270))

(declare-fun m!4816873 () Bool)

(assert (=> b!4230270 m!4816873))

(declare-fun m!4816875 () Bool)

(assert (=> tb!253839 m!4816875))

(assert (=> d!1244898 t!349469))

(declare-fun b_and!334209 () Bool)

(assert (= b_and!334201 (and (=> t!349469 result!309566) b_and!334209)))

(declare-fun t!349471 () Bool)

(declare-fun tb!253841 () Bool)

(assert (=> (and b!4229546 (= (toChars!10465 (transformation!7878 r!4334)) (toChars!10465 (transformation!7878 r!4334))) t!349471) tb!253841))

(declare-fun result!309568 () Bool)

(assert (= result!309568 result!309566))

(assert (=> d!1244898 t!349471))

(declare-fun b_and!334211 () Bool)

(assert (= b_and!334203 (and (=> t!349471 result!309568) b_and!334211)))

(declare-fun b_lambda!124553 () Bool)

(assert (=> (not b_lambda!124553) (not d!1244898)))

(declare-fun tb!253843 () Bool)

(declare-fun t!349473 () Bool)

(assert (=> (and b!4229555 (= (toValue!10606 (transformation!7878 (rule!10994 t!8425))) (toValue!10606 (transformation!7878 r!4334))) t!349473) tb!253843))

(declare-fun result!309570 () Bool)

(assert (=> tb!253843 (= result!309570 (inv!21 (dynLambda!20034 (toValue!10606 (transformation!7878 r!4334)) (seqFromList!5791 (_1!25285 lt!1503793)))))))

(declare-fun m!4816877 () Bool)

(assert (=> tb!253843 m!4816877))

(assert (=> d!1244898 t!349473))

(declare-fun b_and!334213 () Bool)

(assert (= b_and!334205 (and (=> t!349473 result!309570) b_and!334213)))

(declare-fun t!349475 () Bool)

(declare-fun tb!253845 () Bool)

(assert (=> (and b!4229546 (= (toValue!10606 (transformation!7878 r!4334)) (toValue!10606 (transformation!7878 r!4334))) t!349475) tb!253845))

(declare-fun result!309572 () Bool)

(assert (= result!309572 result!309570))

(assert (=> d!1244898 t!349475))

(declare-fun b_and!334215 () Bool)

(assert (= b_and!334207 (and (=> t!349475 result!309572) b_and!334215)))

(assert (=> d!1244898 m!4816515))

(declare-fun m!4816879 () Bool)

(assert (=> d!1244898 m!4816879))

(declare-fun m!4816881 () Bool)

(assert (=> d!1244898 m!4816881))

(declare-fun m!4816883 () Bool)

(assert (=> d!1244898 m!4816883))

(assert (=> d!1244898 m!4816879))

(assert (=> d!1244898 m!4816881))

(assert (=> d!1244898 m!4816515))

(declare-fun m!4816885 () Bool)

(assert (=> d!1244898 m!4816885))

(assert (=> d!1244898 m!4816515))

(declare-fun m!4816887 () Bool)

(assert (=> d!1244898 m!4816887))

(assert (=> b!4229993 d!1244898))

(declare-fun d!1244908 () Bool)

(assert (=> d!1244908 (= (seqFromList!5791 (_1!25285 lt!1503793)) (fromListB!2639 (_1!25285 lt!1503793)))))

(declare-fun bs!597930 () Bool)

(assert (= bs!597930 d!1244908))

(declare-fun m!4816889 () Bool)

(assert (=> bs!597930 m!4816889))

(assert (=> b!4229993 d!1244908))

(declare-fun d!1244910 () Bool)

(declare-fun lt!1503908 () Int)

(assert (=> d!1244910 (= lt!1503908 (size!34217 (list!16858 (seqFromList!5791 (_1!25285 lt!1503793)))))))

(declare-fun size!34221 (Conc!14089) Int)

(assert (=> d!1244910 (= lt!1503908 (size!34221 (c!718871 (seqFromList!5791 (_1!25285 lt!1503793)))))))

(assert (=> d!1244910 (= (size!34219 (seqFromList!5791 (_1!25285 lt!1503793))) lt!1503908)))

(declare-fun bs!597931 () Bool)

(assert (= bs!597931 d!1244910))

(assert (=> bs!597931 m!4816515))

(assert (=> bs!597931 m!4816885))

(assert (=> bs!597931 m!4816885))

(declare-fun m!4816891 () Bool)

(assert (=> bs!597931 m!4816891))

(declare-fun m!4816893 () Bool)

(assert (=> bs!597931 m!4816893))

(assert (=> b!4229993 d!1244910))

(declare-fun b!4230291 () Bool)

(declare-fun e!2626741 () tuple2!44302)

(assert (=> b!4230291 (= e!2626741 (tuple2!44303 Nil!46696 input!3586))))

(declare-fun b!4230292 () Bool)

(declare-fun e!2626744 () tuple2!44302)

(declare-fun lt!1503914 () tuple2!44302)

(assert (=> b!4230292 (= e!2626744 lt!1503914)))

(declare-fun b!4230293 () Bool)

(declare-fun e!2626747 () Bool)

(declare-fun lt!1503924 () tuple2!44302)

(assert (=> b!4230293 (= e!2626747 (>= (size!34217 (_1!25285 lt!1503924)) (size!34217 Nil!46696)))))

(declare-fun b!4230294 () Bool)

(declare-fun e!2626740 () tuple2!44302)

(assert (=> b!4230294 (= e!2626741 e!2626740)))

(declare-fun c!719058 () Bool)

(assert (=> b!4230294 (= c!719058 (= (size!34217 Nil!46696) (size!34217 input!3586)))))

(declare-fun bm!293383 () Bool)

(declare-fun call!293388 () Bool)

(assert (=> bm!293383 (= call!293388 (nullable!4502 (regex!7878 r!4334)))))

(declare-fun bm!293384 () Bool)

(declare-fun call!293393 () List!46820)

(assert (=> bm!293384 (= call!293393 (tail!6813 input!3586))))

(declare-fun b!4230295 () Bool)

(declare-fun e!2626746 () Unit!65805)

(declare-fun Unit!65821 () Unit!65805)

(assert (=> b!4230295 (= e!2626746 Unit!65821)))

(declare-fun lt!1503928 () Unit!65805)

(declare-fun call!293391 () Unit!65805)

(assert (=> b!4230295 (= lt!1503928 call!293391)))

(declare-fun call!293389 () Bool)

(assert (=> b!4230295 call!293389))

(declare-fun lt!1503919 () Unit!65805)

(assert (=> b!4230295 (= lt!1503919 lt!1503928)))

(declare-fun lt!1503934 () Unit!65805)

(declare-fun call!293394 () Unit!65805)

(assert (=> b!4230295 (= lt!1503934 call!293394)))

(assert (=> b!4230295 (= input!3586 Nil!46696)))

(declare-fun lt!1503936 () Unit!65805)

(assert (=> b!4230295 (= lt!1503936 lt!1503934)))

(assert (=> b!4230295 false))

(declare-fun b!4230296 () Bool)

(declare-fun e!2626742 () tuple2!44302)

(assert (=> b!4230296 (= e!2626742 (tuple2!44303 Nil!46696 Nil!46696))))

(declare-fun b!4230297 () Bool)

(assert (=> b!4230297 (= e!2626744 (tuple2!44303 Nil!46696 input!3586))))

(declare-fun bm!293385 () Bool)

(declare-fun call!293392 () C!25764)

(assert (=> bm!293385 (= call!293392 (head!8966 input!3586))))

(declare-fun b!4230298 () Bool)

(declare-fun Unit!65822 () Unit!65805)

(assert (=> b!4230298 (= e!2626746 Unit!65822)))

(declare-fun b!4230299 () Bool)

(declare-fun e!2626745 () Bool)

(assert (=> b!4230299 (= e!2626745 e!2626747)))

(declare-fun res!1739678 () Bool)

(assert (=> b!4230299 (=> res!1739678 e!2626747)))

(assert (=> b!4230299 (= res!1739678 (isEmpty!27608 (_1!25285 lt!1503924)))))

(declare-fun bm!293386 () Bool)

(assert (=> bm!293386 (= call!293389 (isPrefix!4693 input!3586 input!3586))))

(declare-fun bm!293387 () Bool)

(assert (=> bm!293387 (= call!293391 (lemmaIsPrefixRefl!3104 input!3586 input!3586))))

(declare-fun call!293395 () tuple2!44302)

(declare-fun bm!293388 () Bool)

(declare-fun lt!1503931 () List!46820)

(declare-fun call!293390 () Regex!12783)

(assert (=> bm!293388 (= call!293395 (findLongestMatchInner!1685 call!293390 lt!1503931 (+ (size!34217 Nil!46696) 1) call!293393 input!3586 (size!34217 input!3586)))))

(declare-fun b!4230300 () Bool)

(declare-fun c!719057 () Bool)

(assert (=> b!4230300 (= c!719057 call!293388)))

(declare-fun lt!1503922 () Unit!65805)

(declare-fun lt!1503917 () Unit!65805)

(assert (=> b!4230300 (= lt!1503922 lt!1503917)))

(declare-fun lt!1503935 () C!25764)

(declare-fun lt!1503921 () List!46820)

(assert (=> b!4230300 (= (++!11908 (++!11908 Nil!46696 (Cons!46696 lt!1503935 Nil!46696)) lt!1503921) input!3586)))

(assert (=> b!4230300 (= lt!1503917 (lemmaMoveElementToOtherListKeepsConcatEq!1304 Nil!46696 lt!1503935 lt!1503921 input!3586))))

(assert (=> b!4230300 (= lt!1503921 (tail!6813 input!3586))))

(assert (=> b!4230300 (= lt!1503935 (head!8966 input!3586))))

(declare-fun lt!1503929 () Unit!65805)

(declare-fun lt!1503913 () Unit!65805)

(assert (=> b!4230300 (= lt!1503929 lt!1503913)))

(assert (=> b!4230300 (isPrefix!4693 (++!11908 Nil!46696 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696)) input!3586)))

(assert (=> b!4230300 (= lt!1503913 (lemmaAddHeadSuffixToPrefixStillPrefix!686 Nil!46696 input!3586))))

(declare-fun lt!1503923 () Unit!65805)

(declare-fun lt!1503927 () Unit!65805)

(assert (=> b!4230300 (= lt!1503923 lt!1503927)))

(assert (=> b!4230300 (= lt!1503927 (lemmaAddHeadSuffixToPrefixStillPrefix!686 Nil!46696 input!3586))))

(assert (=> b!4230300 (= lt!1503931 (++!11908 Nil!46696 (Cons!46696 (head!8966 input!3586) Nil!46696)))))

(declare-fun lt!1503910 () Unit!65805)

(assert (=> b!4230300 (= lt!1503910 e!2626746)))

(declare-fun c!719055 () Bool)

(assert (=> b!4230300 (= c!719055 (= (size!34217 Nil!46696) (size!34217 input!3586)))))

(declare-fun lt!1503920 () Unit!65805)

(declare-fun lt!1503930 () Unit!65805)

(assert (=> b!4230300 (= lt!1503920 lt!1503930)))

(assert (=> b!4230300 (<= (size!34217 Nil!46696) (size!34217 input!3586))))

(assert (=> b!4230300 (= lt!1503930 (lemmaIsPrefixThenSmallerEqSize!598 Nil!46696 input!3586))))

(declare-fun e!2626743 () tuple2!44302)

(assert (=> b!4230300 (= e!2626740 e!2626743)))

(declare-fun bm!293389 () Bool)

(assert (=> bm!293389 (= call!293394 (lemmaIsPrefixSameLengthThenSameList!1032 input!3586 Nil!46696 input!3586))))

(declare-fun b!4230301 () Bool)

(assert (=> b!4230301 (= e!2626743 e!2626744)))

(assert (=> b!4230301 (= lt!1503914 call!293395)))

(declare-fun c!719053 () Bool)

(assert (=> b!4230301 (= c!719053 (isEmpty!27608 (_1!25285 lt!1503914)))))

(declare-fun bm!293390 () Bool)

(assert (=> bm!293390 (= call!293390 (derivativeStep!3840 (regex!7878 r!4334) call!293392))))

(declare-fun b!4230302 () Bool)

(assert (=> b!4230302 (= e!2626743 call!293395)))

(declare-fun b!4230303 () Bool)

(assert (=> b!4230303 (= e!2626742 (tuple2!44303 Nil!46696 input!3586))))

(declare-fun b!4230304 () Bool)

(declare-fun c!719054 () Bool)

(assert (=> b!4230304 (= c!719054 call!293388)))

(declare-fun lt!1503918 () Unit!65805)

(declare-fun lt!1503909 () Unit!65805)

(assert (=> b!4230304 (= lt!1503918 lt!1503909)))

(assert (=> b!4230304 (= input!3586 Nil!46696)))

(assert (=> b!4230304 (= lt!1503909 call!293394)))

(declare-fun lt!1503925 () Unit!65805)

(declare-fun lt!1503912 () Unit!65805)

(assert (=> b!4230304 (= lt!1503925 lt!1503912)))

(assert (=> b!4230304 call!293389))

(assert (=> b!4230304 (= lt!1503912 call!293391)))

(assert (=> b!4230304 (= e!2626740 e!2626742)))

(declare-fun d!1244912 () Bool)

(assert (=> d!1244912 e!2626745))

(declare-fun res!1739679 () Bool)

(assert (=> d!1244912 (=> (not res!1739679) (not e!2626745))))

(assert (=> d!1244912 (= res!1739679 (= (++!11908 (_1!25285 lt!1503924) (_2!25285 lt!1503924)) input!3586))))

(assert (=> d!1244912 (= lt!1503924 e!2626741)))

(declare-fun c!719056 () Bool)

(assert (=> d!1244912 (= c!719056 (lostCause!1060 (regex!7878 r!4334)))))

(declare-fun lt!1503911 () Unit!65805)

(declare-fun Unit!65824 () Unit!65805)

(assert (=> d!1244912 (= lt!1503911 Unit!65824)))

(assert (=> d!1244912 (= (getSuffix!2861 input!3586 Nil!46696) input!3586)))

(declare-fun lt!1503932 () Unit!65805)

(declare-fun lt!1503926 () Unit!65805)

(assert (=> d!1244912 (= lt!1503932 lt!1503926)))

(declare-fun lt!1503916 () List!46820)

(assert (=> d!1244912 (= input!3586 lt!1503916)))

(assert (=> d!1244912 (= lt!1503926 (lemmaSamePrefixThenSameSuffix!2277 Nil!46696 input!3586 Nil!46696 lt!1503916 input!3586))))

(assert (=> d!1244912 (= lt!1503916 (getSuffix!2861 input!3586 Nil!46696))))

(declare-fun lt!1503915 () Unit!65805)

(declare-fun lt!1503933 () Unit!65805)

(assert (=> d!1244912 (= lt!1503915 lt!1503933)))

(assert (=> d!1244912 (isPrefix!4693 Nil!46696 (++!11908 Nil!46696 input!3586))))

(assert (=> d!1244912 (= lt!1503933 (lemmaConcatTwoListThenFirstIsPrefix!3097 Nil!46696 input!3586))))

(assert (=> d!1244912 (validRegex!5801 (regex!7878 r!4334))))

(assert (=> d!1244912 (= (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)) lt!1503924)))

(assert (= (and d!1244912 c!719056) b!4230291))

(assert (= (and d!1244912 (not c!719056)) b!4230294))

(assert (= (and b!4230294 c!719058) b!4230304))

(assert (= (and b!4230294 (not c!719058)) b!4230300))

(assert (= (and b!4230304 c!719054) b!4230296))

(assert (= (and b!4230304 (not c!719054)) b!4230303))

(assert (= (and b!4230300 c!719055) b!4230295))

(assert (= (and b!4230300 (not c!719055)) b!4230298))

(assert (= (and b!4230300 c!719057) b!4230301))

(assert (= (and b!4230300 (not c!719057)) b!4230302))

(assert (= (and b!4230301 c!719053) b!4230297))

(assert (= (and b!4230301 (not c!719053)) b!4230292))

(assert (= (or b!4230301 b!4230302) bm!293385))

(assert (= (or b!4230301 b!4230302) bm!293384))

(assert (= (or b!4230301 b!4230302) bm!293390))

(assert (= (or b!4230301 b!4230302) bm!293388))

(assert (= (or b!4230304 b!4230295) bm!293386))

(assert (= (or b!4230304 b!4230295) bm!293387))

(assert (= (or b!4230304 b!4230300) bm!293383))

(assert (= (or b!4230304 b!4230295) bm!293389))

(assert (= (and d!1244912 res!1739679) b!4230299))

(assert (= (and b!4230299 (not res!1739678)) b!4230293))

(declare-fun m!4816895 () Bool)

(assert (=> b!4230301 m!4816895))

(assert (=> bm!293383 m!4816353))

(declare-fun m!4816897 () Bool)

(assert (=> b!4230300 m!4816897))

(declare-fun m!4816899 () Bool)

(assert (=> b!4230300 m!4816899))

(assert (=> b!4230300 m!4816205))

(assert (=> b!4230300 m!4816189))

(assert (=> b!4230300 m!4816897))

(assert (=> b!4230300 m!4816359))

(assert (=> b!4230300 m!4816361))

(assert (=> b!4230300 m!4816211))

(assert (=> b!4230300 m!4816363))

(assert (=> b!4230300 m!4816365))

(assert (=> b!4230300 m!4816363))

(assert (=> b!4230300 m!4816367))

(assert (=> b!4230300 m!4816369))

(declare-fun m!4816901 () Bool)

(assert (=> b!4230300 m!4816901))

(assert (=> b!4230300 m!4816165))

(assert (=> b!4230300 m!4816361))

(assert (=> b!4230300 m!4816373))

(assert (=> bm!293384 m!4816205))

(assert (=> bm!293386 m!4816161))

(assert (=> bm!293387 m!4816163))

(declare-fun m!4816903 () Bool)

(assert (=> b!4230293 m!4816903))

(assert (=> b!4230293 m!4816189))

(assert (=> bm!293388 m!4816165))

(declare-fun m!4816905 () Bool)

(assert (=> bm!293388 m!4816905))

(assert (=> bm!293389 m!4816379))

(assert (=> bm!293385 m!4816211))

(declare-fun m!4816907 () Bool)

(assert (=> bm!293390 m!4816907))

(declare-fun m!4816909 () Bool)

(assert (=> d!1244912 m!4816909))

(assert (=> d!1244912 m!4816385))

(assert (=> d!1244912 m!4816387))

(assert (=> d!1244912 m!4816181))

(declare-fun m!4816911 () Bool)

(assert (=> d!1244912 m!4816911))

(assert (=> d!1244912 m!4816391))

(assert (=> d!1244912 m!4816393))

(assert (=> d!1244912 m!4816363))

(assert (=> d!1244912 m!4816391))

(declare-fun m!4816913 () Bool)

(assert (=> b!4230299 m!4816913))

(assert (=> b!4229993 d!1244912))

(declare-fun d!1244914 () Bool)

(declare-fun e!2626771 () Bool)

(assert (=> d!1244914 e!2626771))

(declare-fun res!1739689 () Bool)

(assert (=> d!1244914 (=> res!1739689 e!2626771)))

(assert (=> d!1244914 (= res!1739689 (isEmpty!27608 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))))))

(declare-fun lt!1503943 () Unit!65805)

(declare-fun choose!25901 (Regex!12783 List!46820) Unit!65805)

(assert (=> d!1244914 (= lt!1503943 (choose!25901 (regex!7878 r!4334) input!3586))))

(assert (=> d!1244914 (validRegex!5801 (regex!7878 r!4334))))

(assert (=> d!1244914 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1654 (regex!7878 r!4334) input!3586) lt!1503943)))

(declare-fun b!4230343 () Bool)

(assert (=> b!4230343 (= e!2626771 (matchR!6422 (regex!7878 r!4334) (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))))))

(assert (= (and d!1244914 (not res!1739689)) b!4230343))

(assert (=> d!1244914 m!4816165))

(assert (=> d!1244914 m!4816181))

(declare-fun m!4816971 () Bool)

(assert (=> d!1244914 m!4816971))

(assert (=> d!1244914 m!4816189))

(assert (=> d!1244914 m!4816165))

(assert (=> d!1244914 m!4816485))

(assert (=> d!1244914 m!4816189))

(assert (=> d!1244914 m!4816513))

(assert (=> b!4230343 m!4816189))

(assert (=> b!4230343 m!4816165))

(assert (=> b!4230343 m!4816189))

(assert (=> b!4230343 m!4816165))

(assert (=> b!4230343 m!4816485))

(assert (=> b!4230343 m!4816487))

(assert (=> b!4229993 d!1244914))

(assert (=> b!4229993 d!1244726))

(declare-fun d!1244950 () Bool)

(assert (=> d!1244950 (= (apply!10731 (transformation!7878 r!4334) (seqFromList!5791 (_1!25285 lt!1503793))) (dynLambda!20034 (toValue!10606 (transformation!7878 r!4334)) (seqFromList!5791 (_1!25285 lt!1503793))))))

(declare-fun b_lambda!124557 () Bool)

(assert (=> (not b_lambda!124557) (not d!1244950)))

(assert (=> d!1244950 t!349473))

(declare-fun b_and!334221 () Bool)

(assert (= b_and!334213 (and (=> t!349473 result!309570) b_and!334221)))

(assert (=> d!1244950 t!349475))

(declare-fun b_and!334223 () Bool)

(assert (= b_and!334215 (and (=> t!349475 result!309572) b_and!334223)))

(assert (=> d!1244950 m!4816515))

(assert (=> d!1244950 m!4816879))

(assert (=> b!4229993 d!1244950))

(assert (=> b!4229993 d!1244728))

(declare-fun d!1244952 () Bool)

(declare-fun charsToInt!0 (List!46821) (_ BitVec 32))

(assert (=> d!1244952 (= (inv!16 (value!245021 t!8425)) (= (charsToInt!0 (text!57203 (value!245021 t!8425))) (value!245012 (value!245021 t!8425))))))

(declare-fun bs!597936 () Bool)

(assert (= bs!597936 d!1244952))

(declare-fun m!4816973 () Bool)

(assert (=> bs!597936 m!4816973))

(assert (=> b!4229589 d!1244952))

(declare-fun b!4230344 () Bool)

(declare-fun e!2626773 () Bool)

(declare-fun e!2626777 () Bool)

(assert (=> b!4230344 (= e!2626773 e!2626777)))

(declare-fun res!1739696 () Bool)

(assert (=> b!4230344 (=> (not res!1739696) (not e!2626777))))

(declare-fun lt!1503946 () Bool)

(assert (=> b!4230344 (= res!1739696 (not lt!1503946))))

(declare-fun b!4230345 () Bool)

(declare-fun e!2626772 () Bool)

(assert (=> b!4230345 (= e!2626772 (= (head!8966 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))) (c!718870 (regex!7878 r!4334))))))

(declare-fun b!4230346 () Bool)

(declare-fun res!1739697 () Bool)

(assert (=> b!4230346 (=> res!1739697 e!2626773)))

(assert (=> b!4230346 (= res!1739697 e!2626772)))

(declare-fun res!1739694 () Bool)

(assert (=> b!4230346 (=> (not res!1739694) (not e!2626772))))

(assert (=> b!4230346 (= res!1739694 lt!1503946)))

(declare-fun b!4230347 () Bool)

(declare-fun res!1739693 () Bool)

(assert (=> b!4230347 (=> res!1739693 e!2626773)))

(assert (=> b!4230347 (= res!1739693 (not ((_ is ElementMatch!12783) (regex!7878 r!4334))))))

(declare-fun e!2626776 () Bool)

(assert (=> b!4230347 (= e!2626776 e!2626773)))

(declare-fun b!4230348 () Bool)

(declare-fun e!2626774 () Bool)

(declare-fun call!293403 () Bool)

(assert (=> b!4230348 (= e!2626774 (= lt!1503946 call!293403))))

(declare-fun b!4230349 () Bool)

(declare-fun res!1739692 () Bool)

(declare-fun e!2626775 () Bool)

(assert (=> b!4230349 (=> res!1739692 e!2626775)))

(assert (=> b!4230349 (= res!1739692 (not (isEmpty!27608 (tail!6813 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))))))))

(declare-fun b!4230350 () Bool)

(declare-fun res!1739690 () Bool)

(assert (=> b!4230350 (=> (not res!1739690) (not e!2626772))))

(assert (=> b!4230350 (= res!1739690 (not call!293403))))

(declare-fun d!1244954 () Bool)

(assert (=> d!1244954 e!2626774))

(declare-fun c!719076 () Bool)

(assert (=> d!1244954 (= c!719076 ((_ is EmptyExpr!12783) (regex!7878 r!4334)))))

(declare-fun e!2626778 () Bool)

(assert (=> d!1244954 (= lt!1503946 e!2626778)))

(declare-fun c!719075 () Bool)

(assert (=> d!1244954 (= c!719075 (isEmpty!27608 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))))))

(assert (=> d!1244954 (validRegex!5801 (regex!7878 r!4334))))

(assert (=> d!1244954 (= (matchR!6422 (regex!7878 r!4334) (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))) lt!1503946)))

(declare-fun b!4230351 () Bool)

(assert (=> b!4230351 (= e!2626775 (not (= (head!8966 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))) (c!718870 (regex!7878 r!4334)))))))

(declare-fun b!4230352 () Bool)

(assert (=> b!4230352 (= e!2626778 (matchR!6422 (derivativeStep!3840 (regex!7878 r!4334) (head!8966 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586))))) (tail!6813 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586))))))))

(declare-fun b!4230353 () Bool)

(assert (=> b!4230353 (= e!2626778 (nullable!4502 (regex!7878 r!4334)))))

(declare-fun bm!293398 () Bool)

(assert (=> bm!293398 (= call!293403 (isEmpty!27608 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586)))))))

(declare-fun b!4230354 () Bool)

(assert (=> b!4230354 (= e!2626776 (not lt!1503946))))

(declare-fun b!4230355 () Bool)

(assert (=> b!4230355 (= e!2626774 e!2626776)))

(declare-fun c!719074 () Bool)

(assert (=> b!4230355 (= c!719074 ((_ is EmptyLang!12783) (regex!7878 r!4334)))))

(declare-fun b!4230356 () Bool)

(assert (=> b!4230356 (= e!2626777 e!2626775)))

(declare-fun res!1739695 () Bool)

(assert (=> b!4230356 (=> res!1739695 e!2626775)))

(assert (=> b!4230356 (= res!1739695 call!293403)))

(declare-fun b!4230357 () Bool)

(declare-fun res!1739691 () Bool)

(assert (=> b!4230357 (=> (not res!1739691) (not e!2626772))))

(assert (=> b!4230357 (= res!1739691 (isEmpty!27608 (tail!6813 (_1!25285 (findLongestMatchInner!1685 (regex!7878 r!4334) Nil!46696 (size!34217 Nil!46696) input!3586 input!3586 (size!34217 input!3586))))))))

(assert (= (and d!1244954 c!719075) b!4230353))

(assert (= (and d!1244954 (not c!719075)) b!4230352))

(assert (= (and d!1244954 c!719076) b!4230348))

(assert (= (and d!1244954 (not c!719076)) b!4230355))

(assert (= (and b!4230355 c!719074) b!4230354))

(assert (= (and b!4230355 (not c!719074)) b!4230347))

(assert (= (and b!4230347 (not res!1739693)) b!4230346))

(assert (= (and b!4230346 res!1739694) b!4230350))

(assert (= (and b!4230350 res!1739690) b!4230357))

(assert (= (and b!4230357 res!1739691) b!4230345))

(assert (= (and b!4230346 (not res!1739697)) b!4230344))

(assert (= (and b!4230344 res!1739696) b!4230356))

(assert (= (and b!4230356 (not res!1739695)) b!4230349))

(assert (= (and b!4230349 (not res!1739692)) b!4230351))

(assert (= (or b!4230348 b!4230350 b!4230356) bm!293398))

(declare-fun m!4816975 () Bool)

(assert (=> b!4230349 m!4816975))

(assert (=> b!4230349 m!4816975))

(declare-fun m!4816977 () Bool)

(assert (=> b!4230349 m!4816977))

(declare-fun m!4816979 () Bool)

(assert (=> b!4230351 m!4816979))

(assert (=> d!1244954 m!4816513))

(assert (=> d!1244954 m!4816181))

(assert (=> bm!293398 m!4816513))

(assert (=> b!4230345 m!4816979))

(assert (=> b!4230352 m!4816979))

(assert (=> b!4230352 m!4816979))

(declare-fun m!4816981 () Bool)

(assert (=> b!4230352 m!4816981))

(assert (=> b!4230352 m!4816975))

(assert (=> b!4230352 m!4816981))

(assert (=> b!4230352 m!4816975))

(declare-fun m!4816983 () Bool)

(assert (=> b!4230352 m!4816983))

(assert (=> b!4230357 m!4816975))

(assert (=> b!4230357 m!4816975))

(assert (=> b!4230357 m!4816977))

(assert (=> b!4230353 m!4816353))

(assert (=> b!4229991 d!1244954))

(assert (=> b!4229991 d!1244912))

(assert (=> b!4229991 d!1244726))

(assert (=> b!4229991 d!1244728))

(declare-fun bs!597937 () Bool)

(declare-fun d!1244956 () Bool)

(assert (= bs!597937 (and d!1244956 d!1244832)))

(declare-fun lambda!129976 () Int)

(assert (=> bs!597937 (= (and (= (toChars!10465 (transformation!7878 r!4334)) (toChars!10465 (transformation!7878 (rule!10994 t!8425)))) (= (toValue!10606 (transformation!7878 r!4334)) (toValue!10606 (transformation!7878 (rule!10994 t!8425))))) (= lambda!129976 lambda!129967))))

(declare-fun bs!597938 () Bool)

(assert (= bs!597938 (and d!1244956 d!1244898)))

(assert (=> bs!597938 (= lambda!129976 lambda!129973)))

(assert (=> d!1244956 true))

(assert (=> d!1244956 (< (dynLambda!20032 order!24583 (toChars!10465 (transformation!7878 r!4334))) (dynLambda!20033 order!24585 lambda!129976))))

(assert (=> d!1244956 true))

(assert (=> d!1244956 (< (dynLambda!20027 order!24579 (toValue!10606 (transformation!7878 r!4334))) (dynLambda!20033 order!24585 lambda!129976))))

(assert (=> d!1244956 (= (semiInverseModEq!3427 (toChars!10465 (transformation!7878 r!4334)) (toValue!10606 (transformation!7878 r!4334))) (Forall!1584 lambda!129976))))

(declare-fun bs!597939 () Bool)

(assert (= bs!597939 d!1244956))

(declare-fun m!4816985 () Bool)

(assert (=> bs!597939 m!4816985))

(assert (=> d!1244764 d!1244956))

(assert (=> b!4229880 d!1244794))

(declare-fun d!1244958 () Bool)

(assert (=> d!1244958 (= (isEmpty!27608 (_1!25285 lt!1503660)) ((_ is Nil!46696) (_1!25285 lt!1503660)))))

(assert (=> b!4229806 d!1244958))

(declare-fun b!4230362 () Bool)

(declare-fun e!2626781 () Bool)

(assert (=> b!4230362 (= e!2626781 (isPrefix!4693 (tail!6813 (tail!6813 pBis!134)) (tail!6813 (tail!6813 input!3586))))))

(declare-fun b!4230361 () Bool)

(declare-fun res!1739698 () Bool)

(assert (=> b!4230361 (=> (not res!1739698) (not e!2626781))))

(assert (=> b!4230361 (= res!1739698 (= (head!8966 (tail!6813 pBis!134)) (head!8966 (tail!6813 input!3586))))))

(declare-fun b!4230360 () Bool)

(declare-fun e!2626779 () Bool)

(assert (=> b!4230360 (= e!2626779 e!2626781)))

(declare-fun res!1739700 () Bool)

(assert (=> b!4230360 (=> (not res!1739700) (not e!2626781))))

(assert (=> b!4230360 (= res!1739700 (not ((_ is Nil!46696) (tail!6813 input!3586))))))

(declare-fun b!4230363 () Bool)

(declare-fun e!2626780 () Bool)

(assert (=> b!4230363 (= e!2626780 (>= (size!34217 (tail!6813 input!3586)) (size!34217 (tail!6813 pBis!134))))))

(declare-fun d!1244960 () Bool)

(assert (=> d!1244960 e!2626780))

(declare-fun res!1739701 () Bool)

(assert (=> d!1244960 (=> res!1739701 e!2626780)))

(declare-fun lt!1503948 () Bool)

(assert (=> d!1244960 (= res!1739701 (not lt!1503948))))

(assert (=> d!1244960 (= lt!1503948 e!2626779)))

(declare-fun res!1739699 () Bool)

(assert (=> d!1244960 (=> res!1739699 e!2626779)))

(assert (=> d!1244960 (= res!1739699 ((_ is Nil!46696) (tail!6813 pBis!134)))))

(assert (=> d!1244960 (= (isPrefix!4693 (tail!6813 pBis!134) (tail!6813 input!3586)) lt!1503948)))

(assert (= (and d!1244960 (not res!1739699)) b!4230360))

(assert (= (and b!4230360 res!1739700) b!4230361))

(assert (= (and b!4230361 res!1739698) b!4230362))

(assert (= (and d!1244960 (not res!1739701)) b!4230363))

(assert (=> b!4230362 m!4816419))

(declare-fun m!4816987 () Bool)

(assert (=> b!4230362 m!4816987))

(assert (=> b!4230362 m!4816205))

(assert (=> b!4230362 m!4816727))

(assert (=> b!4230362 m!4816987))

(assert (=> b!4230362 m!4816727))

(declare-fun m!4816989 () Bool)

(assert (=> b!4230362 m!4816989))

(assert (=> b!4230361 m!4816419))

(declare-fun m!4816991 () Bool)

(assert (=> b!4230361 m!4816991))

(assert (=> b!4230361 m!4816205))

(assert (=> b!4230361 m!4816731))

(assert (=> b!4230363 m!4816205))

(assert (=> b!4230363 m!4816733))

(assert (=> b!4230363 m!4816419))

(declare-fun m!4816993 () Bool)

(assert (=> b!4230363 m!4816993))

(assert (=> b!4229909 d!1244960))

(declare-fun d!1244962 () Bool)

(assert (=> d!1244962 (= (tail!6813 pBis!134) (t!349449 pBis!134))))

(assert (=> b!4229909 d!1244962))

(assert (=> b!4229909 d!1244780))

(declare-fun b!4230369 () Bool)

(declare-fun e!2626787 () Bool)

(assert (=> b!4230369 (= e!2626787 (isPrefix!4693 (tail!6813 (++!11908 Nil!46696 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696))) (tail!6813 input!3586)))))

(declare-fun b!4230368 () Bool)

(declare-fun res!1739702 () Bool)

(assert (=> b!4230368 (=> (not res!1739702) (not e!2626787))))

(assert (=> b!4230368 (= res!1739702 (= (head!8966 (++!11908 Nil!46696 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696))) (head!8966 input!3586)))))

(declare-fun b!4230367 () Bool)

(declare-fun e!2626785 () Bool)

(assert (=> b!4230367 (= e!2626785 e!2626787)))

(declare-fun res!1739704 () Bool)

(assert (=> b!4230367 (=> (not res!1739704) (not e!2626787))))

(assert (=> b!4230367 (= res!1739704 (not ((_ is Nil!46696) input!3586)))))

(declare-fun b!4230370 () Bool)

(declare-fun e!2626786 () Bool)

(assert (=> b!4230370 (= e!2626786 (>= (size!34217 input!3586) (size!34217 (++!11908 Nil!46696 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696)))))))

(declare-fun d!1244964 () Bool)

(assert (=> d!1244964 e!2626786))

(declare-fun res!1739705 () Bool)

(assert (=> d!1244964 (=> res!1739705 e!2626786)))

(declare-fun lt!1503949 () Bool)

(assert (=> d!1244964 (= res!1739705 (not lt!1503949))))

(assert (=> d!1244964 (= lt!1503949 e!2626785)))

(declare-fun res!1739703 () Bool)

(assert (=> d!1244964 (=> res!1739703 e!2626785)))

(assert (=> d!1244964 (= res!1739703 ((_ is Nil!46696) (++!11908 Nil!46696 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696))))))

(assert (=> d!1244964 (= (isPrefix!4693 (++!11908 Nil!46696 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696)) input!3586) lt!1503949)))

(assert (= (and d!1244964 (not res!1739703)) b!4230367))

(assert (= (and b!4230367 res!1739704) b!4230368))

(assert (= (and b!4230368 res!1739702) b!4230369))

(assert (= (and d!1244964 (not res!1739705)) b!4230370))

(assert (=> b!4230369 m!4816361))

(declare-fun m!4816995 () Bool)

(assert (=> b!4230369 m!4816995))

(assert (=> b!4230369 m!4816205))

(assert (=> b!4230369 m!4816995))

(assert (=> b!4230369 m!4816205))

(declare-fun m!4816997 () Bool)

(assert (=> b!4230369 m!4816997))

(assert (=> b!4230368 m!4816361))

(declare-fun m!4816999 () Bool)

(assert (=> b!4230368 m!4816999))

(assert (=> b!4230368 m!4816211))

(assert (=> b!4230370 m!4816165))

(assert (=> b!4230370 m!4816361))

(declare-fun m!4817001 () Bool)

(assert (=> b!4230370 m!4817001))

(assert (=> b!4229805 d!1244964))

(declare-fun d!1244966 () Bool)

(assert (=> d!1244966 (= (++!11908 (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696)) lt!1503667) input!3586)))

(declare-fun lt!1503952 () Unit!65805)

(declare-fun choose!25902 (List!46820 C!25764 List!46820 List!46820) Unit!65805)

(assert (=> d!1244966 (= lt!1503952 (choose!25902 Nil!46696 lt!1503681 lt!1503667 input!3586))))

(assert (=> d!1244966 (= (++!11908 Nil!46696 (Cons!46696 lt!1503681 lt!1503667)) input!3586)))

(assert (=> d!1244966 (= (lemmaMoveElementToOtherListKeepsConcatEq!1304 Nil!46696 lt!1503681 lt!1503667 input!3586) lt!1503952)))

(declare-fun bs!597941 () Bool)

(assert (= bs!597941 d!1244966))

(assert (=> bs!597941 m!4816355))

(assert (=> bs!597941 m!4816355))

(assert (=> bs!597941 m!4816357))

(declare-fun m!4817021 () Bool)

(assert (=> bs!597941 m!4817021))

(declare-fun m!4817023 () Bool)

(assert (=> bs!597941 m!4817023))

(assert (=> b!4229805 d!1244966))

(declare-fun d!1244972 () Bool)

(assert (=> d!1244972 (<= (size!34217 Nil!46696) (size!34217 input!3586))))

(declare-fun lt!1503983 () Unit!65805)

(declare-fun choose!25903 (List!46820 List!46820) Unit!65805)

(assert (=> d!1244972 (= lt!1503983 (choose!25903 Nil!46696 input!3586))))

(assert (=> d!1244972 (isPrefix!4693 Nil!46696 input!3586)))

(assert (=> d!1244972 (= (lemmaIsPrefixThenSmallerEqSize!598 Nil!46696 input!3586) lt!1503983)))

(declare-fun bs!597943 () Bool)

(assert (= bs!597943 d!1244972))

(assert (=> bs!597943 m!4816189))

(assert (=> bs!597943 m!4816165))

(declare-fun m!4817025 () Bool)

(assert (=> bs!597943 m!4817025))

(assert (=> bs!597943 m!4816815))

(assert (=> b!4229805 d!1244972))

(declare-fun b!4230389 () Bool)

(declare-fun e!2626800 () List!46820)

(assert (=> b!4230389 (= e!2626800 (Cons!46696 (h!52116 Nil!46696) (++!11908 (t!349449 Nil!46696) (Cons!46696 (head!8966 input!3586) Nil!46696))))))

(declare-fun d!1244976 () Bool)

(declare-fun e!2626801 () Bool)

(assert (=> d!1244976 e!2626801))

(declare-fun res!1739708 () Bool)

(assert (=> d!1244976 (=> (not res!1739708) (not e!2626801))))

(declare-fun lt!1503984 () List!46820)

(assert (=> d!1244976 (= res!1739708 (= (content!7337 lt!1503984) ((_ map or) (content!7337 Nil!46696) (content!7337 (Cons!46696 (head!8966 input!3586) Nil!46696)))))))

(assert (=> d!1244976 (= lt!1503984 e!2626800)))

(declare-fun c!719083 () Bool)

(assert (=> d!1244976 (= c!719083 ((_ is Nil!46696) Nil!46696))))

(assert (=> d!1244976 (= (++!11908 Nil!46696 (Cons!46696 (head!8966 input!3586) Nil!46696)) lt!1503984)))

(declare-fun b!4230391 () Bool)

(assert (=> b!4230391 (= e!2626801 (or (not (= (Cons!46696 (head!8966 input!3586) Nil!46696) Nil!46696)) (= lt!1503984 Nil!46696)))))

(declare-fun b!4230388 () Bool)

(assert (=> b!4230388 (= e!2626800 (Cons!46696 (head!8966 input!3586) Nil!46696))))

(declare-fun b!4230390 () Bool)

(declare-fun res!1739709 () Bool)

(assert (=> b!4230390 (=> (not res!1739709) (not e!2626801))))

(assert (=> b!4230390 (= res!1739709 (= (size!34217 lt!1503984) (+ (size!34217 Nil!46696) (size!34217 (Cons!46696 (head!8966 input!3586) Nil!46696)))))))

(assert (= (and d!1244976 c!719083) b!4230388))

(assert (= (and d!1244976 (not c!719083)) b!4230389))

(assert (= (and d!1244976 res!1739708) b!4230390))

(assert (= (and b!4230390 res!1739709) b!4230391))

(declare-fun m!4817027 () Bool)

(assert (=> b!4230389 m!4817027))

(declare-fun m!4817029 () Bool)

(assert (=> d!1244976 m!4817029))

(assert (=> d!1244976 m!4816795))

(declare-fun m!4817031 () Bool)

(assert (=> d!1244976 m!4817031))

(declare-fun m!4817033 () Bool)

(assert (=> b!4230390 m!4817033))

(assert (=> b!4230390 m!4816189))

(declare-fun m!4817035 () Bool)

(assert (=> b!4230390 m!4817035))

(assert (=> b!4229805 d!1244976))

(declare-fun b!4230393 () Bool)

(declare-fun e!2626802 () List!46820)

(assert (=> b!4230393 (= e!2626802 (Cons!46696 (h!52116 Nil!46696) (++!11908 (t!349449 Nil!46696) (Cons!46696 lt!1503681 Nil!46696))))))

(declare-fun d!1244978 () Bool)

(declare-fun e!2626803 () Bool)

(assert (=> d!1244978 e!2626803))

(declare-fun res!1739710 () Bool)

(assert (=> d!1244978 (=> (not res!1739710) (not e!2626803))))

(declare-fun lt!1503985 () List!46820)

(assert (=> d!1244978 (= res!1739710 (= (content!7337 lt!1503985) ((_ map or) (content!7337 Nil!46696) (content!7337 (Cons!46696 lt!1503681 Nil!46696)))))))

(assert (=> d!1244978 (= lt!1503985 e!2626802)))

(declare-fun c!719084 () Bool)

(assert (=> d!1244978 (= c!719084 ((_ is Nil!46696) Nil!46696))))

(assert (=> d!1244978 (= (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696)) lt!1503985)))

(declare-fun b!4230395 () Bool)

(assert (=> b!4230395 (= e!2626803 (or (not (= (Cons!46696 lt!1503681 Nil!46696) Nil!46696)) (= lt!1503985 Nil!46696)))))

(declare-fun b!4230392 () Bool)

(assert (=> b!4230392 (= e!2626802 (Cons!46696 lt!1503681 Nil!46696))))

(declare-fun b!4230394 () Bool)

(declare-fun res!1739711 () Bool)

(assert (=> b!4230394 (=> (not res!1739711) (not e!2626803))))

(assert (=> b!4230394 (= res!1739711 (= (size!34217 lt!1503985) (+ (size!34217 Nil!46696) (size!34217 (Cons!46696 lt!1503681 Nil!46696)))))))

(assert (= (and d!1244978 c!719084) b!4230392))

(assert (= (and d!1244978 (not c!719084)) b!4230393))

(assert (= (and d!1244978 res!1739710) b!4230394))

(assert (= (and b!4230394 res!1739711) b!4230395))

(declare-fun m!4817037 () Bool)

(assert (=> b!4230393 m!4817037))

(declare-fun m!4817039 () Bool)

(assert (=> d!1244978 m!4817039))

(assert (=> d!1244978 m!4816795))

(declare-fun m!4817041 () Bool)

(assert (=> d!1244978 m!4817041))

(declare-fun m!4817043 () Bool)

(assert (=> b!4230394 m!4817043))

(assert (=> b!4230394 m!4816189))

(declare-fun m!4817045 () Bool)

(assert (=> b!4230394 m!4817045))

(assert (=> b!4229805 d!1244978))

(assert (=> b!4229805 d!1244780))

(declare-fun d!1244980 () Bool)

(assert (=> d!1244980 (= (head!8966 (getSuffix!2861 input!3586 Nil!46696)) (h!52116 (getSuffix!2861 input!3586 Nil!46696)))))

(assert (=> b!4229805 d!1244980))

(assert (=> b!4229805 d!1244866))

(declare-fun b!4230397 () Bool)

(declare-fun e!2626804 () List!46820)

(assert (=> b!4230397 (= e!2626804 (Cons!46696 (h!52116 Nil!46696) (++!11908 (t!349449 Nil!46696) (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696))))))

(declare-fun d!1244982 () Bool)

(declare-fun e!2626805 () Bool)

(assert (=> d!1244982 e!2626805))

(declare-fun res!1739712 () Bool)

(assert (=> d!1244982 (=> (not res!1739712) (not e!2626805))))

(declare-fun lt!1503986 () List!46820)

(assert (=> d!1244982 (= res!1739712 (= (content!7337 lt!1503986) ((_ map or) (content!7337 Nil!46696) (content!7337 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696)))))))

(assert (=> d!1244982 (= lt!1503986 e!2626804)))

(declare-fun c!719085 () Bool)

(assert (=> d!1244982 (= c!719085 ((_ is Nil!46696) Nil!46696))))

(assert (=> d!1244982 (= (++!11908 Nil!46696 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696)) lt!1503986)))

(declare-fun b!4230399 () Bool)

(assert (=> b!4230399 (= e!2626805 (or (not (= (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696) Nil!46696)) (= lt!1503986 Nil!46696)))))

(declare-fun b!4230396 () Bool)

(assert (=> b!4230396 (= e!2626804 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696))))

(declare-fun b!4230398 () Bool)

(declare-fun res!1739713 () Bool)

(assert (=> b!4230398 (=> (not res!1739713) (not e!2626805))))

(assert (=> b!4230398 (= res!1739713 (= (size!34217 lt!1503986) (+ (size!34217 Nil!46696) (size!34217 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696)))))))

(assert (= (and d!1244982 c!719085) b!4230396))

(assert (= (and d!1244982 (not c!719085)) b!4230397))

(assert (= (and d!1244982 res!1739712) b!4230398))

(assert (= (and b!4230398 res!1739713) b!4230399))

(declare-fun m!4817053 () Bool)

(assert (=> b!4230397 m!4817053))

(declare-fun m!4817055 () Bool)

(assert (=> d!1244982 m!4817055))

(assert (=> d!1244982 m!4816795))

(declare-fun m!4817059 () Bool)

(assert (=> d!1244982 m!4817059))

(declare-fun m!4817061 () Bool)

(assert (=> b!4230398 m!4817061))

(assert (=> b!4230398 m!4816189))

(declare-fun m!4817063 () Bool)

(assert (=> b!4230398 m!4817063))

(assert (=> b!4229805 d!1244982))

(assert (=> b!4229805 d!1244782))

(declare-fun d!1244984 () Bool)

(assert (=> d!1244984 (isPrefix!4693 (++!11908 Nil!46696 (Cons!46696 (head!8966 (getSuffix!2861 input!3586 Nil!46696)) Nil!46696)) input!3586)))

(declare-fun lt!1503989 () Unit!65805)

(declare-fun choose!25904 (List!46820 List!46820) Unit!65805)

(assert (=> d!1244984 (= lt!1503989 (choose!25904 Nil!46696 input!3586))))

(assert (=> d!1244984 (isPrefix!4693 Nil!46696 input!3586)))

(assert (=> d!1244984 (= (lemmaAddHeadSuffixToPrefixStillPrefix!686 Nil!46696 input!3586) lt!1503989)))

(declare-fun bs!597944 () Bool)

(assert (= bs!597944 d!1244984))

(declare-fun m!4817077 () Bool)

(assert (=> bs!597944 m!4817077))

(assert (=> bs!597944 m!4816363))

(assert (=> bs!597944 m!4816367))

(assert (=> bs!597944 m!4816361))

(assert (=> bs!597944 m!4816363))

(assert (=> bs!597944 m!4816815))

(assert (=> bs!597944 m!4816361))

(assert (=> bs!597944 m!4816373))

(assert (=> b!4229805 d!1244984))

(declare-fun b!4230401 () Bool)

(declare-fun e!2626806 () List!46820)

(assert (=> b!4230401 (= e!2626806 (Cons!46696 (h!52116 (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696))) (++!11908 (t!349449 (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696))) lt!1503667)))))

(declare-fun d!1244988 () Bool)

(declare-fun e!2626807 () Bool)

(assert (=> d!1244988 e!2626807))

(declare-fun res!1739714 () Bool)

(assert (=> d!1244988 (=> (not res!1739714) (not e!2626807))))

(declare-fun lt!1503990 () List!46820)

(assert (=> d!1244988 (= res!1739714 (= (content!7337 lt!1503990) ((_ map or) (content!7337 (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696))) (content!7337 lt!1503667))))))

(assert (=> d!1244988 (= lt!1503990 e!2626806)))

(declare-fun c!719086 () Bool)

(assert (=> d!1244988 (= c!719086 ((_ is Nil!46696) (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696))))))

(assert (=> d!1244988 (= (++!11908 (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696)) lt!1503667) lt!1503990)))

(declare-fun b!4230403 () Bool)

(assert (=> b!4230403 (= e!2626807 (or (not (= lt!1503667 Nil!46696)) (= lt!1503990 (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696)))))))

(declare-fun b!4230400 () Bool)

(assert (=> b!4230400 (= e!2626806 lt!1503667)))

(declare-fun b!4230402 () Bool)

(declare-fun res!1739715 () Bool)

(assert (=> b!4230402 (=> (not res!1739715) (not e!2626807))))

(assert (=> b!4230402 (= res!1739715 (= (size!34217 lt!1503990) (+ (size!34217 (++!11908 Nil!46696 (Cons!46696 lt!1503681 Nil!46696))) (size!34217 lt!1503667))))))

(assert (= (and d!1244988 c!719086) b!4230400))

(assert (= (and d!1244988 (not c!719086)) b!4230401))

(assert (= (and d!1244988 res!1739714) b!4230402))

(assert (= (and b!4230402 res!1739715) b!4230403))

(declare-fun m!4817079 () Bool)

(assert (=> b!4230401 m!4817079))

(declare-fun m!4817081 () Bool)

(assert (=> d!1244988 m!4817081))

(assert (=> d!1244988 m!4816355))

(declare-fun m!4817083 () Bool)

(assert (=> d!1244988 m!4817083))

(declare-fun m!4817085 () Bool)

(assert (=> d!1244988 m!4817085))

(declare-fun m!4817087 () Bool)

(assert (=> b!4230402 m!4817087))

(assert (=> b!4230402 m!4816355))

(declare-fun m!4817089 () Bool)

(assert (=> b!4230402 m!4817089))

(declare-fun m!4817091 () Bool)

(assert (=> b!4230402 m!4817091))

(assert (=> b!4229805 d!1244988))

(assert (=> b!4229805 d!1244726))

(assert (=> b!4229805 d!1244728))

(assert (=> d!1244766 d!1244732))

(assert (=> bm!293302 d!1244758))

(assert (=> b!4229886 d!1244794))

(assert (=> b!4229884 d!1244812))

(assert (=> b!4229884 d!1244796))

(declare-fun d!1244990 () Bool)

(declare-fun lt!1503991 () Int)

(assert (=> d!1244990 (>= lt!1503991 0)))

(declare-fun e!2626808 () Int)

(assert (=> d!1244990 (= lt!1503991 e!2626808)))

(declare-fun c!719087 () Bool)

(assert (=> d!1244990 (= c!719087 ((_ is Nil!46696) (t!349449 p!3014)))))

(assert (=> d!1244990 (= (size!34217 (t!349449 p!3014)) lt!1503991)))

(declare-fun b!4230404 () Bool)

(assert (=> b!4230404 (= e!2626808 0)))

(declare-fun b!4230405 () Bool)

(assert (=> b!4230405 (= e!2626808 (+ 1 (size!34217 (t!349449 (t!349449 p!3014)))))))

(assert (= (and d!1244990 c!719087) b!4230404))

(assert (= (and d!1244990 (not c!719087)) b!4230405))

(declare-fun m!4817093 () Bool)

(assert (=> b!4230405 m!4817093))

(assert (=> b!4229848 d!1244990))

(declare-fun d!1244992 () Bool)

(declare-fun c!719090 () Bool)

(assert (=> d!1244992 (= c!719090 ((_ is Nil!46696) lt!1503802))))

(declare-fun e!2626811 () (InoxSet C!25764))

(assert (=> d!1244992 (= (content!7337 lt!1503802) e!2626811)))

(declare-fun b!4230410 () Bool)

(assert (=> b!4230410 (= e!2626811 ((as const (Array C!25764 Bool)) false))))

(declare-fun b!4230411 () Bool)

(assert (=> b!4230411 (= e!2626811 ((_ map or) (store ((as const (Array C!25764 Bool)) false) (h!52116 lt!1503802) true) (content!7337 (t!349449 lt!1503802))))))

(assert (= (and d!1244992 c!719090) b!4230410))

(assert (= (and d!1244992 (not c!719090)) b!4230411))

(declare-fun m!4817095 () Bool)

(assert (=> b!4230411 m!4817095))

(declare-fun m!4817097 () Bool)

(assert (=> b!4230411 m!4817097))

(assert (=> d!1244760 d!1244992))

(declare-fun d!1244994 () Bool)

(declare-fun c!719091 () Bool)

(assert (=> d!1244994 (= c!719091 ((_ is Nil!46696) p!3014))))

(declare-fun e!2626812 () (InoxSet C!25764))

(assert (=> d!1244994 (= (content!7337 p!3014) e!2626812)))

(declare-fun b!4230412 () Bool)

(assert (=> b!4230412 (= e!2626812 ((as const (Array C!25764 Bool)) false))))

(declare-fun b!4230413 () Bool)

(assert (=> b!4230413 (= e!2626812 ((_ map or) (store ((as const (Array C!25764 Bool)) false) (h!52116 p!3014) true) (content!7337 (t!349449 p!3014))))))

(assert (= (and d!1244994 c!719091) b!4230412))

(assert (= (and d!1244994 (not c!719091)) b!4230413))

(declare-fun m!4817099 () Bool)

(assert (=> b!4230413 m!4817099))

(assert (=> b!4230413 m!4816601))

(assert (=> d!1244760 d!1244994))

(declare-fun d!1244996 () Bool)

(declare-fun c!719092 () Bool)

(assert (=> d!1244996 (= c!719092 ((_ is Nil!46696) suffix!1590))))

(declare-fun e!2626813 () (InoxSet C!25764))

(assert (=> d!1244996 (= (content!7337 suffix!1590) e!2626813)))

(declare-fun b!4230414 () Bool)

(assert (=> b!4230414 (= e!2626813 ((as const (Array C!25764 Bool)) false))))

(declare-fun b!4230415 () Bool)

(assert (=> b!4230415 (= e!2626813 ((_ map or) (store ((as const (Array C!25764 Bool)) false) (h!52116 suffix!1590) true) (content!7337 (t!349449 suffix!1590))))))

(assert (= (and d!1244996 c!719092) b!4230414))

(assert (= (and d!1244996 (not c!719092)) b!4230415))

(declare-fun m!4817101 () Bool)

(assert (=> b!4230415 m!4817101))

(declare-fun m!4817103 () Bool)

(assert (=> b!4230415 m!4817103))

(assert (=> d!1244760 d!1244996))

(declare-fun d!1244998 () Bool)

(declare-fun lt!1503992 () Int)

(assert (=> d!1244998 (>= lt!1503992 0)))

(declare-fun e!2626814 () Int)

(assert (=> d!1244998 (= lt!1503992 e!2626814)))

(declare-fun c!719093 () Bool)

(assert (=> d!1244998 (= c!719093 ((_ is Nil!46696) (t!349449 pBis!134)))))

(assert (=> d!1244998 (= (size!34217 (t!349449 pBis!134)) lt!1503992)))

(declare-fun b!4230416 () Bool)

(assert (=> b!4230416 (= e!2626814 0)))

(declare-fun b!4230417 () Bool)

(assert (=> b!4230417 (= e!2626814 (+ 1 (size!34217 (t!349449 (t!349449 pBis!134)))))))

(assert (= (and d!1244998 c!719093) b!4230416))

(assert (= (and d!1244998 (not c!719093)) b!4230417))

(declare-fun m!4817105 () Bool)

(assert (=> b!4230417 m!4817105))

(assert (=> b!4229819 d!1244998))

(declare-fun bs!597945 () Bool)

(declare-fun d!1245000 () Bool)

(assert (= bs!597945 (and d!1245000 d!1244802)))

(declare-fun lambda!129978 () Int)

(assert (=> bs!597945 (= (= (toValue!10606 (transformation!7878 (rule!10994 t!8425))) (toValue!10606 (transformation!7878 r!4334))) (= lambda!129978 lambda!129964))))

(assert (=> d!1245000 true))

(assert (=> d!1245000 (< (dynLambda!20027 order!24579 (toValue!10606 (transformation!7878 (rule!10994 t!8425)))) (dynLambda!20028 order!24581 lambda!129978))))

(assert (=> d!1245000 (= (equivClasses!3326 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (toValue!10606 (transformation!7878 (rule!10994 t!8425)))) (Forall2!1182 lambda!129978))))

(declare-fun bs!597946 () Bool)

(assert (= bs!597946 d!1245000))

(declare-fun m!4817107 () Bool)

(assert (=> bs!597946 m!4817107))

(assert (=> b!4229921 d!1245000))

(declare-fun d!1245002 () Bool)

(declare-fun lt!1503993 () Int)

(assert (=> d!1245002 (>= lt!1503993 0)))

(declare-fun e!2626815 () Int)

(assert (=> d!1245002 (= lt!1503993 e!2626815)))

(declare-fun c!719094 () Bool)

(assert (=> d!1245002 (= c!719094 ((_ is Nil!46696) (originalCharacters!8226 t!8425)))))

(assert (=> d!1245002 (= (size!34217 (originalCharacters!8226 t!8425)) lt!1503993)))

(declare-fun b!4230418 () Bool)

(assert (=> b!4230418 (= e!2626815 0)))

(declare-fun b!4230419 () Bool)

(assert (=> b!4230419 (= e!2626815 (+ 1 (size!34217 (t!349449 (originalCharacters!8226 t!8425)))))))

(assert (= (and d!1245002 c!719094) b!4230418))

(assert (= (and d!1245002 (not c!719094)) b!4230419))

(declare-fun m!4817109 () Bool)

(assert (=> b!4230419 m!4817109))

(assert (=> b!4229599 d!1245002))

(declare-fun b!4230422 () Bool)

(declare-fun e!2626818 () Bool)

(declare-fun tp!1295727 () Bool)

(assert (=> b!4230422 (= e!2626818 (and tp_is_empty!22501 tp!1295727))))

(assert (=> b!4230027 (= tp!1295701 e!2626818)))

(assert (= (and b!4230027 ((_ is Cons!46696) (t!349449 (t!349449 input!3586)))) b!4230422))

(declare-fun e!2626819 () Bool)

(assert (=> b!4230046 (= tp!1295722 e!2626819)))

(declare-fun b!4230424 () Bool)

(declare-fun tp!1295730 () Bool)

(declare-fun tp!1295731 () Bool)

(assert (=> b!4230424 (= e!2626819 (and tp!1295730 tp!1295731))))

(declare-fun b!4230426 () Bool)

(declare-fun tp!1295732 () Bool)

(declare-fun tp!1295729 () Bool)

(assert (=> b!4230426 (= e!2626819 (and tp!1295732 tp!1295729))))

(declare-fun b!4230423 () Bool)

(assert (=> b!4230423 (= e!2626819 tp_is_empty!22501)))

(declare-fun b!4230425 () Bool)

(declare-fun tp!1295728 () Bool)

(assert (=> b!4230425 (= e!2626819 tp!1295728)))

(assert (= (and b!4230046 ((_ is ElementMatch!12783) (regOne!26079 (regex!7878 r!4334)))) b!4230423))

(assert (= (and b!4230046 ((_ is Concat!20892) (regOne!26079 (regex!7878 r!4334)))) b!4230424))

(assert (= (and b!4230046 ((_ is Star!12783) (regOne!26079 (regex!7878 r!4334)))) b!4230425))

(assert (= (and b!4230046 ((_ is Union!12783) (regOne!26079 (regex!7878 r!4334)))) b!4230426))

(declare-fun e!2626820 () Bool)

(assert (=> b!4230046 (= tp!1295719 e!2626820)))

(declare-fun b!4230428 () Bool)

(declare-fun tp!1295735 () Bool)

(declare-fun tp!1295736 () Bool)

(assert (=> b!4230428 (= e!2626820 (and tp!1295735 tp!1295736))))

(declare-fun b!4230430 () Bool)

(declare-fun tp!1295737 () Bool)

(declare-fun tp!1295734 () Bool)

(assert (=> b!4230430 (= e!2626820 (and tp!1295737 tp!1295734))))

(declare-fun b!4230427 () Bool)

(assert (=> b!4230427 (= e!2626820 tp_is_empty!22501)))

(declare-fun b!4230429 () Bool)

(declare-fun tp!1295733 () Bool)

(assert (=> b!4230429 (= e!2626820 tp!1295733)))

(assert (= (and b!4230046 ((_ is ElementMatch!12783) (regTwo!26079 (regex!7878 r!4334)))) b!4230427))

(assert (= (and b!4230046 ((_ is Concat!20892) (regTwo!26079 (regex!7878 r!4334)))) b!4230428))

(assert (= (and b!4230046 ((_ is Star!12783) (regTwo!26079 (regex!7878 r!4334)))) b!4230429))

(assert (= (and b!4230046 ((_ is Union!12783) (regTwo!26079 (regex!7878 r!4334)))) b!4230430))

(declare-fun b!4230431 () Bool)

(declare-fun e!2626821 () Bool)

(declare-fun tp!1295738 () Bool)

(assert (=> b!4230431 (= e!2626821 (and tp_is_empty!22501 tp!1295738))))

(assert (=> b!4230026 (= tp!1295700 e!2626821)))

(assert (= (and b!4230026 ((_ is Cons!46696) (t!349449 (t!349449 pBis!134)))) b!4230431))

(declare-fun b!4230432 () Bool)

(declare-fun e!2626822 () Bool)

(declare-fun tp!1295739 () Bool)

(assert (=> b!4230432 (= e!2626822 (and tp_is_empty!22501 tp!1295739))))

(assert (=> b!4230042 (= tp!1295717 e!2626822)))

(assert (= (and b!4230042 ((_ is Cons!46696) (t!349449 (t!349449 suffix!1590)))) b!4230432))

(declare-fun e!2626823 () Bool)

(assert (=> b!4230045 (= tp!1295718 e!2626823)))

(declare-fun b!4230434 () Bool)

(declare-fun tp!1295742 () Bool)

(declare-fun tp!1295743 () Bool)

(assert (=> b!4230434 (= e!2626823 (and tp!1295742 tp!1295743))))

(declare-fun b!4230436 () Bool)

(declare-fun tp!1295744 () Bool)

(declare-fun tp!1295741 () Bool)

(assert (=> b!4230436 (= e!2626823 (and tp!1295744 tp!1295741))))

(declare-fun b!4230433 () Bool)

(assert (=> b!4230433 (= e!2626823 tp_is_empty!22501)))

(declare-fun b!4230435 () Bool)

(declare-fun tp!1295740 () Bool)

(assert (=> b!4230435 (= e!2626823 tp!1295740)))

(assert (= (and b!4230045 ((_ is ElementMatch!12783) (reg!13112 (regex!7878 r!4334)))) b!4230433))

(assert (= (and b!4230045 ((_ is Concat!20892) (reg!13112 (regex!7878 r!4334)))) b!4230434))

(assert (= (and b!4230045 ((_ is Star!12783) (reg!13112 (regex!7878 r!4334)))) b!4230435))

(assert (= (and b!4230045 ((_ is Union!12783) (reg!13112 (regex!7878 r!4334)))) b!4230436))

(declare-fun b!4230437 () Bool)

(declare-fun e!2626824 () Bool)

(declare-fun tp!1295745 () Bool)

(assert (=> b!4230437 (= e!2626824 (and tp_is_empty!22501 tp!1295745))))

(assert (=> b!4230025 (= tp!1295699 e!2626824)))

(assert (= (and b!4230025 ((_ is Cons!46696) (t!349449 (originalCharacters!8226 t!8425)))) b!4230437))

(declare-fun e!2626825 () Bool)

(assert (=> b!4230041 (= tp!1295716 e!2626825)))

(declare-fun b!4230439 () Bool)

(declare-fun tp!1295748 () Bool)

(declare-fun tp!1295749 () Bool)

(assert (=> b!4230439 (= e!2626825 (and tp!1295748 tp!1295749))))

(declare-fun b!4230441 () Bool)

(declare-fun tp!1295750 () Bool)

(declare-fun tp!1295747 () Bool)

(assert (=> b!4230441 (= e!2626825 (and tp!1295750 tp!1295747))))

(declare-fun b!4230438 () Bool)

(assert (=> b!4230438 (= e!2626825 tp_is_empty!22501)))

(declare-fun b!4230440 () Bool)

(declare-fun tp!1295746 () Bool)

(assert (=> b!4230440 (= e!2626825 tp!1295746)))

(assert (= (and b!4230041 ((_ is ElementMatch!12783) (regOne!26079 (regex!7878 (rule!10994 t!8425))))) b!4230438))

(assert (= (and b!4230041 ((_ is Concat!20892) (regOne!26079 (regex!7878 (rule!10994 t!8425))))) b!4230439))

(assert (= (and b!4230041 ((_ is Star!12783) (regOne!26079 (regex!7878 (rule!10994 t!8425))))) b!4230440))

(assert (= (and b!4230041 ((_ is Union!12783) (regOne!26079 (regex!7878 (rule!10994 t!8425))))) b!4230441))

(declare-fun e!2626826 () Bool)

(assert (=> b!4230041 (= tp!1295713 e!2626826)))

(declare-fun b!4230443 () Bool)

(declare-fun tp!1295753 () Bool)

(declare-fun tp!1295754 () Bool)

(assert (=> b!4230443 (= e!2626826 (and tp!1295753 tp!1295754))))

(declare-fun b!4230445 () Bool)

(declare-fun tp!1295755 () Bool)

(declare-fun tp!1295752 () Bool)

(assert (=> b!4230445 (= e!2626826 (and tp!1295755 tp!1295752))))

(declare-fun b!4230442 () Bool)

(assert (=> b!4230442 (= e!2626826 tp_is_empty!22501)))

(declare-fun b!4230444 () Bool)

(declare-fun tp!1295751 () Bool)

(assert (=> b!4230444 (= e!2626826 tp!1295751)))

(assert (= (and b!4230041 ((_ is ElementMatch!12783) (regTwo!26079 (regex!7878 (rule!10994 t!8425))))) b!4230442))

(assert (= (and b!4230041 ((_ is Concat!20892) (regTwo!26079 (regex!7878 (rule!10994 t!8425))))) b!4230443))

(assert (= (and b!4230041 ((_ is Star!12783) (regTwo!26079 (regex!7878 (rule!10994 t!8425))))) b!4230444))

(assert (= (and b!4230041 ((_ is Union!12783) (regTwo!26079 (regex!7878 (rule!10994 t!8425))))) b!4230445))

(declare-fun e!2626828 () Bool)

(assert (=> b!4230044 (= tp!1295720 e!2626828)))

(declare-fun b!4230448 () Bool)

(declare-fun tp!1295758 () Bool)

(declare-fun tp!1295759 () Bool)

(assert (=> b!4230448 (= e!2626828 (and tp!1295758 tp!1295759))))

(declare-fun b!4230450 () Bool)

(declare-fun tp!1295760 () Bool)

(declare-fun tp!1295757 () Bool)

(assert (=> b!4230450 (= e!2626828 (and tp!1295760 tp!1295757))))

(declare-fun b!4230447 () Bool)

(assert (=> b!4230447 (= e!2626828 tp_is_empty!22501)))

(declare-fun b!4230449 () Bool)

(declare-fun tp!1295756 () Bool)

(assert (=> b!4230449 (= e!2626828 tp!1295756)))

(assert (= (and b!4230044 ((_ is ElementMatch!12783) (regOne!26078 (regex!7878 r!4334)))) b!4230447))

(assert (= (and b!4230044 ((_ is Concat!20892) (regOne!26078 (regex!7878 r!4334)))) b!4230448))

(assert (= (and b!4230044 ((_ is Star!12783) (regOne!26078 (regex!7878 r!4334)))) b!4230449))

(assert (= (and b!4230044 ((_ is Union!12783) (regOne!26078 (regex!7878 r!4334)))) b!4230450))

(declare-fun e!2626829 () Bool)

(assert (=> b!4230044 (= tp!1295721 e!2626829)))

(declare-fun b!4230452 () Bool)

(declare-fun tp!1295763 () Bool)

(declare-fun tp!1295764 () Bool)

(assert (=> b!4230452 (= e!2626829 (and tp!1295763 tp!1295764))))

(declare-fun b!4230454 () Bool)

(declare-fun tp!1295765 () Bool)

(declare-fun tp!1295762 () Bool)

(assert (=> b!4230454 (= e!2626829 (and tp!1295765 tp!1295762))))

(declare-fun b!4230451 () Bool)

(assert (=> b!4230451 (= e!2626829 tp_is_empty!22501)))

(declare-fun b!4230453 () Bool)

(declare-fun tp!1295761 () Bool)

(assert (=> b!4230453 (= e!2626829 tp!1295761)))

(assert (= (and b!4230044 ((_ is ElementMatch!12783) (regTwo!26078 (regex!7878 r!4334)))) b!4230451))

(assert (= (and b!4230044 ((_ is Concat!20892) (regTwo!26078 (regex!7878 r!4334)))) b!4230452))

(assert (= (and b!4230044 ((_ is Star!12783) (regTwo!26078 (regex!7878 r!4334)))) b!4230453))

(assert (= (and b!4230044 ((_ is Union!12783) (regTwo!26078 (regex!7878 r!4334)))) b!4230454))

(declare-fun e!2626830 () Bool)

(assert (=> b!4230039 (= tp!1295714 e!2626830)))

(declare-fun b!4230456 () Bool)

(declare-fun tp!1295768 () Bool)

(declare-fun tp!1295769 () Bool)

(assert (=> b!4230456 (= e!2626830 (and tp!1295768 tp!1295769))))

(declare-fun b!4230458 () Bool)

(declare-fun tp!1295770 () Bool)

(declare-fun tp!1295767 () Bool)

(assert (=> b!4230458 (= e!2626830 (and tp!1295770 tp!1295767))))

(declare-fun b!4230455 () Bool)

(assert (=> b!4230455 (= e!2626830 tp_is_empty!22501)))

(declare-fun b!4230457 () Bool)

(declare-fun tp!1295766 () Bool)

(assert (=> b!4230457 (= e!2626830 tp!1295766)))

(assert (= (and b!4230039 ((_ is ElementMatch!12783) (regOne!26078 (regex!7878 (rule!10994 t!8425))))) b!4230455))

(assert (= (and b!4230039 ((_ is Concat!20892) (regOne!26078 (regex!7878 (rule!10994 t!8425))))) b!4230456))

(assert (= (and b!4230039 ((_ is Star!12783) (regOne!26078 (regex!7878 (rule!10994 t!8425))))) b!4230457))

(assert (= (and b!4230039 ((_ is Union!12783) (regOne!26078 (regex!7878 (rule!10994 t!8425))))) b!4230458))

(declare-fun e!2626831 () Bool)

(assert (=> b!4230039 (= tp!1295715 e!2626831)))

(declare-fun b!4230460 () Bool)

(declare-fun tp!1295773 () Bool)

(declare-fun tp!1295774 () Bool)

(assert (=> b!4230460 (= e!2626831 (and tp!1295773 tp!1295774))))

(declare-fun b!4230462 () Bool)

(declare-fun tp!1295775 () Bool)

(declare-fun tp!1295772 () Bool)

(assert (=> b!4230462 (= e!2626831 (and tp!1295775 tp!1295772))))

(declare-fun b!4230459 () Bool)

(assert (=> b!4230459 (= e!2626831 tp_is_empty!22501)))

(declare-fun b!4230461 () Bool)

(declare-fun tp!1295771 () Bool)

(assert (=> b!4230461 (= e!2626831 tp!1295771)))

(assert (= (and b!4230039 ((_ is ElementMatch!12783) (regTwo!26078 (regex!7878 (rule!10994 t!8425))))) b!4230459))

(assert (= (and b!4230039 ((_ is Concat!20892) (regTwo!26078 (regex!7878 (rule!10994 t!8425))))) b!4230460))

(assert (= (and b!4230039 ((_ is Star!12783) (regTwo!26078 (regex!7878 (rule!10994 t!8425))))) b!4230461))

(assert (= (and b!4230039 ((_ is Union!12783) (regTwo!26078 (regex!7878 (rule!10994 t!8425))))) b!4230462))

(declare-fun e!2626832 () Bool)

(assert (=> b!4230040 (= tp!1295712 e!2626832)))

(declare-fun b!4230464 () Bool)

(declare-fun tp!1295778 () Bool)

(declare-fun tp!1295779 () Bool)

(assert (=> b!4230464 (= e!2626832 (and tp!1295778 tp!1295779))))

(declare-fun b!4230466 () Bool)

(declare-fun tp!1295780 () Bool)

(declare-fun tp!1295777 () Bool)

(assert (=> b!4230466 (= e!2626832 (and tp!1295780 tp!1295777))))

(declare-fun b!4230463 () Bool)

(assert (=> b!4230463 (= e!2626832 tp_is_empty!22501)))

(declare-fun b!4230465 () Bool)

(declare-fun tp!1295776 () Bool)

(assert (=> b!4230465 (= e!2626832 tp!1295776)))

(assert (= (and b!4230040 ((_ is ElementMatch!12783) (reg!13112 (regex!7878 (rule!10994 t!8425))))) b!4230463))

(assert (= (and b!4230040 ((_ is Concat!20892) (reg!13112 (regex!7878 (rule!10994 t!8425))))) b!4230464))

(assert (= (and b!4230040 ((_ is Star!12783) (reg!13112 (regex!7878 (rule!10994 t!8425))))) b!4230465))

(assert (= (and b!4230040 ((_ is Union!12783) (reg!13112 (regex!7878 (rule!10994 t!8425))))) b!4230466))

(declare-fun b!4230467 () Bool)

(declare-fun e!2626833 () Bool)

(declare-fun tp!1295781 () Bool)

(assert (=> b!4230467 (= e!2626833 (and tp_is_empty!22501 tp!1295781))))

(assert (=> b!4230024 (= tp!1295698 e!2626833)))

(assert (= (and b!4230024 ((_ is Cons!46696) (t!349449 (t!349449 p!3014)))) b!4230467))

(declare-fun b!4230476 () Bool)

(declare-fun tp!1295790 () Bool)

(declare-fun tp!1295789 () Bool)

(declare-fun e!2626838 () Bool)

(assert (=> b!4230476 (= e!2626838 (and (inv!61383 (left!34732 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425))))) tp!1295790 (inv!61383 (right!35062 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425))))) tp!1295789))))

(declare-fun b!4230478 () Bool)

(declare-fun e!2626839 () Bool)

(declare-fun tp!1295788 () Bool)

(assert (=> b!4230478 (= e!2626839 tp!1295788)))

(declare-fun b!4230477 () Bool)

(declare-fun inv!61389 (IArray!28183) Bool)

(assert (=> b!4230477 (= e!2626838 (and (inv!61389 (xs!17395 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425))))) e!2626839))))

(assert (=> b!4229605 (= tp!1295665 (and (inv!61383 (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425)))) e!2626838))))

(assert (= (and b!4229605 ((_ is Node!14089) (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425))))) b!4230476))

(assert (= b!4230477 b!4230478))

(assert (= (and b!4229605 ((_ is Leaf!21773) (c!718871 (dynLambda!20025 (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (value!245021 t!8425))))) b!4230477))

(declare-fun m!4817117 () Bool)

(assert (=> b!4230476 m!4817117))

(declare-fun m!4817119 () Bool)

(assert (=> b!4230476 m!4817119))

(declare-fun m!4817121 () Bool)

(assert (=> b!4230477 m!4817121))

(assert (=> b!4229605 m!4816227))

(declare-fun b_lambda!124565 () Bool)

(assert (= b_lambda!124551 (or (and b!4229555 b_free!124925 (= (toChars!10465 (transformation!7878 (rule!10994 t!8425))) (toChars!10465 (transformation!7878 r!4334)))) (and b!4229546 b_free!124929) b_lambda!124565)))

(declare-fun b_lambda!124567 () Bool)

(assert (= b_lambda!124553 (or (and b!4229555 b_free!124923 (= (toValue!10606 (transformation!7878 (rule!10994 t!8425))) (toValue!10606 (transformation!7878 r!4334)))) (and b!4229546 b_free!124927) b_lambda!124567)))

(declare-fun b_lambda!124569 () Bool)

(assert (= b_lambda!124557 (or (and b!4229555 b_free!124923 (= (toValue!10606 (transformation!7878 (rule!10994 t!8425))) (toValue!10606 (transformation!7878 r!4334)))) (and b!4229546 b_free!124927) b_lambda!124569)))

(check-sat (not b!4230449) (not b!4230432) (not d!1244978) (not d!1244908) (not bm!293361) (not b!4230460) (not b!4230477) (not b_next!125633) (not b!4230453) (not b!4230211) (not d!1244952) (not bm!293363) (not b!4230060) (not b!4230440) (not d!1244814) (not tb!253843) (not b!4230184) (not b!4230141) (not tb!253835) (not d!1244838) (not b!4230476) (not b!4230458) (not b!4230363) (not b!4230424) (not b_lambda!124569) (not b_next!125631) (not b!4230115) (not b!4230464) (not d!1244982) (not b!4230431) (not d!1244774) (not b!4229605) (not b!4230353) (not b!4230443) (not b!4230107) (not d!1244818) (not b!4230425) tp_is_empty!22501 (not b!4230128) (not b!4230430) (not d!1244770) (not b_lambda!124543) (not d!1244854) (not bm!293352) (not b!4230401) b_and!334211 (not b!4230299) (not bm!293365) (not b!4230345) (not b!4230185) (not d!1244914) (not b!4230215) (not d!1244972) (not b!4230402) (not b!4230461) (not b!4230357) (not bm!293362) (not bm!293373) (not b!4230415) (not b!4230054) (not d!1244988) (not b!4230124) (not d!1244876) (not bm!293385) (not b!4230270) (not b!4230188) (not b!4230466) (not b!4230398) (not d!1244874) (not b_lambda!124567) (not b!4230393) (not b_lambda!124545) (not b!4230413) (not d!1244880) (not b!4230411) (not b!4230194) (not b!4230072) (not b!4230218) (not b!4230452) (not b!4230300) (not d!1244802) (not d!1244808) (not b!4230069) (not b!4230352) (not b!4230129) (not b!4230435) (not d!1244836) (not bm!293353) (not d!1245000) (not b_lambda!124549) (not d!1244898) (not tb!253831) (not d!1244832) (not b!4230419) (not b!4230163) (not b!4230293) (not bm!293383) (not bm!293386) (not b!4230467) (not b!4230065) (not d!1244790) (not b!4230441) (not b!4230197) (not b!4230450) (not tb!253839) (not b!4230139) (not b!4230457) (not bm!293366) (not d!1244878) (not b!4230180) (not b!4230048) (not bm!293384) (not b!4230448) (not b_lambda!124565) b_and!334223 (not bm!293389) (not bm!293358) (not b_next!125629) b_and!334209 (not b!4230454) (not d!1244778) (not b!4230434) (not b!4230073) (not bm!293368) (not b!4230390) (not d!1244984) (not b!4230349) (not b!4230219) (not bm!293390) (not b!4230301) (not b!4230369) (not b!4230426) (not b!4230465) (not b!4230361) (not bm!293372) (not d!1244884) (not b!4230394) (not b!4230126) (not b!4230055) (not bm!293356) (not b!4230186) (not b!4230437) (not b!4230150) (not b!4230116) (not d!1244846) (not bm!293367) (not d!1244830) (not b!4230181) (not b!4230362) (not b!4230140) (not b!4230242) (not b!4230109) (not d!1244866) (not b!4230182) (not b!4230428) (not b!4230052) (not b!4230436) b_and!334221 (not b_next!125627) (not b!4230351) (not b!4230198) (not b_lambda!124547) (not b!4230429) (not b!4230192) (not b!4230405) (not b!4230478) (not bm!293398) (not b!4230214) (not b!4230397) (not d!1244822) (not d!1244956) (not d!1244806) (not b!4230462) (not d!1244966) (not bm!293343) (not d!1244828) (not d!1244824) (not b!4230077) (not b!4230456) (not b!4230389) (not d!1244768) (not d!1244792) (not b!4230439) (not b!4230343) (not b!4230241) (not bm!293387) (not b!4230175) (not b!4230444) (not b!4230445) (not b!4230196) (not bm!293342) (not b!4230417) (not b!4230071) (not b!4230422) (not b!4230190) (not b!4230370) (not b!4230368) (not bm!293359) (not b!4230133) (not d!1244954) (not bm!293360) (not d!1244772) (not d!1244816) (not b!4230063) (not d!1244912) (not bm!293388) (not d!1244976) (not b!4230061) (not d!1244910) (not b!4230056) (not bm!293357))
(check-sat (not b_next!125633) (not b_next!125631) b_and!334211 b_and!334223 (not b_next!125629) b_and!334209 b_and!334221 (not b_next!125627))

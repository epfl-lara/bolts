; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382296 () Bool)

(assert start!382296)

(declare-fun b!4053534 () Bool)

(declare-fun b_free!112777 () Bool)

(declare-fun b_next!113481 () Bool)

(assert (=> b!4053534 (= b_free!112777 (not b_next!113481))))

(declare-fun tp!1228847 () Bool)

(declare-fun b_and!311731 () Bool)

(assert (=> b!4053534 (= tp!1228847 b_and!311731)))

(declare-fun b_free!112779 () Bool)

(declare-fun b_next!113483 () Bool)

(assert (=> b!4053534 (= b_free!112779 (not b_next!113483))))

(declare-fun tp!1228852 () Bool)

(declare-fun b_and!311733 () Bool)

(assert (=> b!4053534 (= tp!1228852 b_and!311733)))

(declare-fun b!4053507 () Bool)

(declare-fun b_free!112781 () Bool)

(declare-fun b_next!113485 () Bool)

(assert (=> b!4053507 (= b_free!112781 (not b_next!113485))))

(declare-fun tp!1228840 () Bool)

(declare-fun b_and!311735 () Bool)

(assert (=> b!4053507 (= tp!1228840 b_and!311735)))

(declare-fun b_free!112783 () Bool)

(declare-fun b_next!113487 () Bool)

(assert (=> b!4053507 (= b_free!112783 (not b_next!113487))))

(declare-fun tp!1228846 () Bool)

(declare-fun b_and!311737 () Bool)

(assert (=> b!4053507 (= tp!1228846 b_and!311737)))

(declare-fun b!4053497 () Bool)

(declare-datatypes ((Unit!62630 0))(
  ( (Unit!62631) )
))
(declare-fun e!2515108 () Unit!62630)

(declare-fun Unit!62632 () Unit!62630)

(assert (=> b!4053497 (= e!2515108 Unit!62632)))

(declare-fun b!4053498 () Bool)

(declare-fun res!1652197 () Bool)

(declare-fun e!2515109 () Bool)

(assert (=> b!4053498 (=> res!1652197 e!2515109)))

(declare-datatypes ((C!23884 0))(
  ( (C!23885 (val!14036 Int)) )
))
(declare-datatypes ((List!43443 0))(
  ( (Nil!43319) (Cons!43319 (h!48739 C!23884) (t!336152 List!43443)) )
))
(declare-datatypes ((IArray!26315 0))(
  ( (IArray!26316 (innerList!13215 List!43443)) )
))
(declare-datatypes ((Conc!13155 0))(
  ( (Node!13155 (left!32617 Conc!13155) (right!32947 Conc!13155) (csize!26540 Int) (cheight!13366 Int)) (Leaf!20334 (xs!16461 IArray!26315) (csize!26541 Int)) (Empty!13155) )
))
(declare-datatypes ((BalanceConc!25904 0))(
  ( (BalanceConc!25905 (c!700258 Conc!13155)) )
))
(declare-datatypes ((List!43444 0))(
  ( (Nil!43320) (Cons!43320 (h!48740 (_ BitVec 16)) (t!336153 List!43444)) )
))
(declare-datatypes ((TokenValue!7174 0))(
  ( (FloatLiteralValue!14348 (text!50663 List!43444)) (TokenValueExt!7173 (__x!26565 Int)) (Broken!35870 (value!218512 List!43444)) (Object!7297) (End!7174) (Def!7174) (Underscore!7174) (Match!7174) (Else!7174) (Error!7174) (Case!7174) (If!7174) (Extends!7174) (Abstract!7174) (Class!7174) (Val!7174) (DelimiterValue!14348 (del!7234 List!43444)) (KeywordValue!7180 (value!218513 List!43444)) (CommentValue!14348 (value!218514 List!43444)) (WhitespaceValue!14348 (value!218515 List!43444)) (IndentationValue!7174 (value!218516 List!43444)) (String!49587) (Int32!7174) (Broken!35871 (value!218517 List!43444)) (Boolean!7175) (Unit!62633) (OperatorValue!7177 (op!7234 List!43444)) (IdentifierValue!14348 (value!218518 List!43444)) (IdentifierValue!14349 (value!218519 List!43444)) (WhitespaceValue!14349 (value!218520 List!43444)) (True!14348) (False!14348) (Broken!35872 (value!218521 List!43444)) (Broken!35873 (value!218522 List!43444)) (True!14349) (RightBrace!7174) (RightBracket!7174) (Colon!7174) (Null!7174) (Comma!7174) (LeftBracket!7174) (False!14349) (LeftBrace!7174) (ImaginaryLiteralValue!7174 (text!50664 List!43444)) (StringLiteralValue!21522 (value!218523 List!43444)) (EOFValue!7174 (value!218524 List!43444)) (IdentValue!7174 (value!218525 List!43444)) (DelimiterValue!14349 (value!218526 List!43444)) (DedentValue!7174 (value!218527 List!43444)) (NewLineValue!7174 (value!218528 List!43444)) (IntegerValue!21522 (value!218529 (_ BitVec 32)) (text!50665 List!43444)) (IntegerValue!21523 (value!218530 Int) (text!50666 List!43444)) (Times!7174) (Or!7174) (Equal!7174) (Minus!7174) (Broken!35874 (value!218531 List!43444)) (And!7174) (Div!7174) (LessEqual!7174) (Mod!7174) (Concat!19023) (Not!7174) (Plus!7174) (SpaceValue!7174 (value!218532 List!43444)) (IntegerValue!21524 (value!218533 Int) (text!50667 List!43444)) (StringLiteralValue!21523 (text!50668 List!43444)) (FloatLiteralValue!14349 (text!50669 List!43444)) (BytesLiteralValue!7174 (value!218534 List!43444)) (CommentValue!14349 (value!218535 List!43444)) (StringLiteralValue!21524 (value!218536 List!43444)) (ErrorTokenValue!7174 (msg!7235 List!43444)) )
))
(declare-datatypes ((Regex!11849 0))(
  ( (ElementMatch!11849 (c!700259 C!23884)) (Concat!19024 (regOne!24210 Regex!11849) (regTwo!24210 Regex!11849)) (EmptyExpr!11849) (Star!11849 (reg!12178 Regex!11849)) (EmptyLang!11849) (Union!11849 (regOne!24211 Regex!11849) (regTwo!24211 Regex!11849)) )
))
(declare-datatypes ((String!49588 0))(
  ( (String!49589 (value!218537 String)) )
))
(declare-datatypes ((TokenValueInjection!13776 0))(
  ( (TokenValueInjection!13777 (toValue!9500 Int) (toChars!9359 Int)) )
))
(declare-datatypes ((Rule!13688 0))(
  ( (Rule!13689 (regex!6944 Regex!11849) (tag!7804 String!49588) (isSeparator!6944 Bool) (transformation!6944 TokenValueInjection!13776)) )
))
(declare-datatypes ((List!43445 0))(
  ( (Nil!43321) (Cons!43321 (h!48741 Rule!13688) (t!336154 List!43445)) )
))
(declare-fun rules!2999 () List!43445)

(declare-datatypes ((Token!13026 0))(
  ( (Token!13027 (value!218538 TokenValue!7174) (rule!10028 Rule!13688) (size!32389 Int) (originalCharacters!7544 List!43443)) )
))
(declare-fun token!484 () Token!13026)

(declare-fun contains!8618 (List!43445 Rule!13688) Bool)

(assert (=> b!4053498 (= res!1652197 (not (contains!8618 rules!2999 (rule!10028 token!484))))))

(declare-fun b!4053499 () Bool)

(declare-fun Unit!62634 () Unit!62630)

(assert (=> b!4053499 (= e!2515108 Unit!62634)))

(declare-datatypes ((LexerInterface!6533 0))(
  ( (LexerInterfaceExt!6530 (__x!26566 Int)) (Lexer!6531) )
))
(declare-fun thiss!21717 () LexerInterface!6533)

(declare-fun lt!1445423 () List!43443)

(declare-datatypes ((tuple2!42390 0))(
  ( (tuple2!42391 (_1!24329 Token!13026) (_2!24329 List!43443)) )
))
(declare-datatypes ((Option!9358 0))(
  ( (None!9357) (Some!9357 (v!39769 tuple2!42390)) )
))
(declare-fun lt!1445453 () Option!9358)

(declare-fun lt!1445417 () List!43443)

(declare-fun lt!1445448 () List!43443)

(declare-fun lt!1445430 () Unit!62630)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!470 (LexerInterface!6533 List!43445 Rule!13688 List!43443 List!43443 List!43443 Rule!13688) Unit!62630)

(assert (=> b!4053499 (= lt!1445430 (lemmaMaxPrefixOutputsMaxPrefix!470 thiss!21717 rules!2999 (rule!10028 token!484) lt!1445423 lt!1445448 lt!1445417 (rule!10028 (_1!24329 (v!39769 lt!1445453)))))))

(declare-fun res!1652198 () Bool)

(declare-fun matchR!5802 (Regex!11849 List!43443) Bool)

(assert (=> b!4053499 (= res!1652198 (not (matchR!5802 (regex!6944 (rule!10028 (_1!24329 (v!39769 lt!1445453)))) lt!1445417)))))

(declare-fun e!2515129 () Bool)

(assert (=> b!4053499 (=> (not res!1652198) (not e!2515129))))

(assert (=> b!4053499 e!2515129))

(declare-fun b!4053500 () Bool)

(declare-fun e!2515118 () Bool)

(declare-fun e!2515105 () Bool)

(assert (=> b!4053500 (= e!2515118 e!2515105)))

(declare-fun res!1652210 () Bool)

(assert (=> b!4053500 (=> res!1652210 e!2515105)))

(assert (=> b!4053500 (= res!1652210 (not (matchR!5802 (regex!6944 (rule!10028 token!484)) lt!1445423)))))

(declare-fun lt!1445396 () List!43443)

(declare-fun isPrefix!4031 (List!43443 List!43443) Bool)

(assert (=> b!4053500 (isPrefix!4031 lt!1445423 lt!1445396)))

(declare-fun prefix!494 () List!43443)

(declare-fun newSuffix!27 () List!43443)

(declare-fun lt!1445416 () Unit!62630)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!824 (List!43443 List!43443 List!43443) Unit!62630)

(assert (=> b!4053500 (= lt!1445416 (lemmaPrefixStaysPrefixWhenAddingToSuffix!824 lt!1445423 prefix!494 newSuffix!27))))

(declare-fun lt!1445421 () Unit!62630)

(declare-fun suffix!1299 () List!43443)

(assert (=> b!4053500 (= lt!1445421 (lemmaPrefixStaysPrefixWhenAddingToSuffix!824 lt!1445423 prefix!494 suffix!1299))))

(declare-fun b!4053501 () Bool)

(declare-fun e!2515110 () Bool)

(declare-fun e!2515112 () Bool)

(assert (=> b!4053501 (= e!2515110 e!2515112)))

(declare-fun res!1652186 () Bool)

(assert (=> b!4053501 (=> res!1652186 e!2515112)))

(assert (=> b!4053501 (= res!1652186 (not (isPrefix!4031 lt!1445423 lt!1445448)))))

(assert (=> b!4053501 (isPrefix!4031 prefix!494 lt!1445448)))

(declare-fun lt!1445395 () Unit!62630)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2866 (List!43443 List!43443) Unit!62630)

(assert (=> b!4053501 (= lt!1445395 (lemmaConcatTwoListThenFirstIsPrefix!2866 prefix!494 suffix!1299))))

(declare-fun lt!1445402 () List!43443)

(assert (=> b!4053501 (isPrefix!4031 lt!1445423 lt!1445402)))

(declare-fun lt!1445447 () Unit!62630)

(declare-fun suffixResult!105 () List!43443)

(assert (=> b!4053501 (= lt!1445447 (lemmaConcatTwoListThenFirstIsPrefix!2866 lt!1445423 suffixResult!105))))

(declare-fun b!4053502 () Bool)

(declare-fun e!2515113 () Bool)

(assert (=> b!4053502 (= e!2515112 e!2515113)))

(declare-fun res!1652188 () Bool)

(assert (=> b!4053502 (=> res!1652188 e!2515113)))

(declare-fun lt!1445394 () List!43443)

(assert (=> b!4053502 (= res!1652188 (not (= lt!1445394 prefix!494)))))

(declare-fun lt!1445431 () List!43443)

(declare-fun ++!11346 (List!43443 List!43443) List!43443)

(assert (=> b!4053502 (= lt!1445394 (++!11346 lt!1445423 lt!1445431))))

(declare-fun getSuffix!2448 (List!43443 List!43443) List!43443)

(assert (=> b!4053502 (= lt!1445431 (getSuffix!2448 prefix!494 lt!1445423))))

(assert (=> b!4053502 (isPrefix!4031 lt!1445423 prefix!494)))

(declare-fun lt!1445451 () Unit!62630)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!595 (List!43443 List!43443 List!43443) Unit!62630)

(assert (=> b!4053502 (= lt!1445451 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!595 prefix!494 lt!1445423 lt!1445448))))

(declare-fun e!2515099 () Bool)

(declare-fun tp!1228850 () Bool)

(declare-fun b!4053503 () Bool)

(declare-fun e!2515124 () Bool)

(declare-fun inv!57910 (String!49588) Bool)

(declare-fun inv!57913 (TokenValueInjection!13776) Bool)

(assert (=> b!4053503 (= e!2515124 (and tp!1228850 (inv!57910 (tag!7804 (h!48741 rules!2999))) (inv!57913 (transformation!6944 (h!48741 rules!2999))) e!2515099))))

(declare-fun b!4053504 () Bool)

(declare-fun res!1652184 () Bool)

(declare-fun e!2515098 () Bool)

(assert (=> b!4053504 (=> (not res!1652184) (not e!2515098))))

(declare-fun size!32390 (List!43443) Int)

(assert (=> b!4053504 (= res!1652184 (= (size!32389 token!484) (size!32390 (originalCharacters!7544 token!484))))))

(declare-fun e!2515106 () Bool)

(declare-fun b!4053505 () Bool)

(declare-fun e!2515123 () Bool)

(declare-fun tp!1228841 () Bool)

(declare-fun inv!21 (TokenValue!7174) Bool)

(assert (=> b!4053505 (= e!2515123 (and (inv!21 (value!218538 token!484)) e!2515106 tp!1228841))))

(declare-fun e!2515111 () Bool)

(assert (=> b!4053507 (= e!2515111 (and tp!1228840 tp!1228846))))

(declare-fun b!4053508 () Bool)

(declare-fun e!2515127 () Bool)

(declare-fun tp_is_empty!20669 () Bool)

(declare-fun tp!1228849 () Bool)

(assert (=> b!4053508 (= e!2515127 (and tp_is_empty!20669 tp!1228849))))

(declare-fun b!4053509 () Bool)

(declare-fun e!2515122 () Bool)

(assert (=> b!4053509 (= e!2515113 e!2515122)))

(declare-fun res!1652190 () Bool)

(assert (=> b!4053509 (=> res!1652190 e!2515122)))

(declare-fun lt!1445411 () List!43443)

(declare-fun lt!1445397 () List!43443)

(assert (=> b!4053509 (= res!1652190 (or (not (= lt!1445448 lt!1445397)) (not (= lt!1445448 lt!1445411))))))

(assert (=> b!4053509 (= lt!1445397 lt!1445411)))

(declare-fun lt!1445393 () List!43443)

(assert (=> b!4053509 (= lt!1445411 (++!11346 lt!1445423 lt!1445393))))

(assert (=> b!4053509 (= lt!1445397 (++!11346 lt!1445394 suffix!1299))))

(assert (=> b!4053509 (= lt!1445393 (++!11346 lt!1445431 suffix!1299))))

(declare-fun lt!1445419 () Unit!62630)

(declare-fun lemmaConcatAssociativity!2648 (List!43443 List!43443 List!43443) Unit!62630)

(assert (=> b!4053509 (= lt!1445419 (lemmaConcatAssociativity!2648 lt!1445423 lt!1445431 suffix!1299))))

(declare-fun b!4053510 () Bool)

(declare-fun tp!1228844 () Bool)

(assert (=> b!4053510 (= e!2515106 (and tp!1228844 (inv!57910 (tag!7804 (rule!10028 token!484))) (inv!57913 (transformation!6944 (rule!10028 token!484))) e!2515111))))

(declare-fun b!4053511 () Bool)

(declare-fun res!1652213 () Bool)

(assert (=> b!4053511 (=> (not res!1652213) (not e!2515098))))

(declare-fun lt!1445439 () TokenValue!7174)

(assert (=> b!4053511 (= res!1652213 (= (value!218538 token!484) lt!1445439))))

(declare-fun b!4053512 () Bool)

(declare-fun lt!1445446 () List!43443)

(declare-fun lt!1445437 () Int)

(declare-fun lt!1445449 () Token!13026)

(declare-fun lt!1445452 () Int)

(declare-fun lt!1445401 () Option!9358)

(assert (=> b!4053512 (= e!2515109 (or (not (= lt!1445401 (Some!9357 (tuple2!42391 lt!1445449 lt!1445446)))) (> lt!1445437 lt!1445452)))))

(assert (=> b!4053512 (isPrefix!4031 lt!1445396 lt!1445396)))

(declare-fun lt!1445427 () Unit!62630)

(declare-fun lemmaIsPrefixRefl!2598 (List!43443 List!43443) Unit!62630)

(assert (=> b!4053512 (= lt!1445427 (lemmaIsPrefixRefl!2598 lt!1445396 lt!1445396))))

(declare-fun lt!1445418 () Unit!62630)

(declare-fun lt!1445398 () BalanceConc!25904)

(declare-fun lemmaSemiInverse!1923 (TokenValueInjection!13776 BalanceConc!25904) Unit!62630)

(assert (=> b!4053512 (= lt!1445418 (lemmaSemiInverse!1923 (transformation!6944 (rule!10028 (_1!24329 (v!39769 lt!1445453)))) lt!1445398))))

(declare-fun b!4053513 () Bool)

(declare-fun res!1652196 () Bool)

(assert (=> b!4053513 (=> res!1652196 e!2515109)))

(assert (=> b!4053513 (= res!1652196 (not (matchR!5802 (regex!6944 (rule!10028 (_1!24329 (v!39769 lt!1445453)))) lt!1445417)))))

(declare-fun b!4053514 () Bool)

(declare-fun e!2515116 () Bool)

(declare-fun e!2515132 () Bool)

(assert (=> b!4053514 (= e!2515116 e!2515132)))

(declare-fun res!1652191 () Bool)

(assert (=> b!4053514 (=> (not res!1652191) (not e!2515132))))

(declare-fun lt!1445443 () Int)

(assert (=> b!4053514 (= res!1652191 (>= lt!1445443 lt!1445437))))

(assert (=> b!4053514 (= lt!1445437 (size!32390 lt!1445423))))

(assert (=> b!4053514 (= lt!1445443 (size!32390 prefix!494))))

(declare-fun list!16142 (BalanceConc!25904) List!43443)

(declare-fun charsOf!4760 (Token!13026) BalanceConc!25904)

(assert (=> b!4053514 (= lt!1445423 (list!16142 (charsOf!4760 token!484)))))

(declare-fun b!4053515 () Bool)

(declare-fun e!2515130 () Bool)

(declare-fun e!2515102 () Bool)

(assert (=> b!4053515 (= e!2515130 e!2515102)))

(declare-fun res!1652211 () Bool)

(assert (=> b!4053515 (=> res!1652211 e!2515102)))

(get-info :version)

(assert (=> b!4053515 (= res!1652211 (not ((_ is Some!9357) lt!1445453)))))

(declare-fun maxPrefix!3831 (LexerInterface!6533 List!43445 List!43443) Option!9358)

(assert (=> b!4053515 (= lt!1445453 (maxPrefix!3831 thiss!21717 rules!2999 lt!1445396))))

(declare-fun lt!1445432 () tuple2!42390)

(declare-fun lt!1445426 () List!43443)

(declare-fun lt!1445409 () Token!13026)

(assert (=> b!4053515 (and (= suffixResult!105 lt!1445426) (= lt!1445432 (tuple2!42391 lt!1445409 lt!1445426)))))

(declare-fun lt!1445413 () Unit!62630)

(declare-fun lemmaSamePrefixThenSameSuffix!2192 (List!43443 List!43443 List!43443 List!43443 List!43443) Unit!62630)

(assert (=> b!4053515 (= lt!1445413 (lemmaSamePrefixThenSameSuffix!2192 lt!1445423 suffixResult!105 lt!1445423 lt!1445426 lt!1445448))))

(declare-fun lt!1445435 () List!43443)

(assert (=> b!4053515 (isPrefix!4031 lt!1445423 lt!1445435)))

(declare-fun lt!1445438 () Unit!62630)

(assert (=> b!4053515 (= lt!1445438 (lemmaConcatTwoListThenFirstIsPrefix!2866 lt!1445423 lt!1445426))))

(declare-fun b!4053516 () Bool)

(declare-fun e!2515114 () Bool)

(declare-fun e!2515107 () Bool)

(assert (=> b!4053516 (= e!2515114 e!2515107)))

(declare-fun res!1652193 () Bool)

(assert (=> b!4053516 (=> res!1652193 e!2515107)))

(declare-fun lt!1445408 () List!43443)

(assert (=> b!4053516 (= res!1652193 (not (= lt!1445408 lt!1445396)))))

(assert (=> b!4053516 (= lt!1445408 (++!11346 lt!1445417 lt!1445446))))

(assert (=> b!4053516 (= lt!1445446 (getSuffix!2448 lt!1445396 lt!1445417))))

(declare-fun b!4053517 () Bool)

(declare-fun res!1652201 () Bool)

(assert (=> b!4053517 (=> res!1652201 e!2515109)))

(assert (=> b!4053517 (= res!1652201 (not (isPrefix!4031 lt!1445417 lt!1445396)))))

(declare-fun b!4053518 () Bool)

(declare-fun e!2515119 () Bool)

(declare-fun e!2515101 () Bool)

(assert (=> b!4053518 (= e!2515119 e!2515101)))

(declare-fun res!1652189 () Bool)

(assert (=> b!4053518 (=> (not res!1652189) (not e!2515101))))

(declare-fun lt!1445450 () Option!9358)

(assert (=> b!4053518 (= res!1652189 (= (maxPrefix!3831 thiss!21717 rules!2999 lt!1445448) lt!1445450))))

(assert (=> b!4053518 (= lt!1445450 (Some!9357 lt!1445432))))

(assert (=> b!4053518 (= lt!1445432 (tuple2!42391 token!484 suffixResult!105))))

(assert (=> b!4053518 (= lt!1445448 (++!11346 prefix!494 suffix!1299))))

(declare-fun b!4053519 () Bool)

(assert (=> b!4053519 (= e!2515132 e!2515119)))

(declare-fun res!1652208 () Bool)

(assert (=> b!4053519 (=> (not res!1652208) (not e!2515119))))

(declare-fun lt!1445400 () List!43443)

(assert (=> b!4053519 (= res!1652208 (= lt!1445400 lt!1445396))))

(assert (=> b!4053519 (= lt!1445396 (++!11346 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43443)

(assert (=> b!4053519 (= lt!1445400 (++!11346 lt!1445423 newSuffixResult!27))))

(declare-fun b!4053520 () Bool)

(assert (=> b!4053520 (= e!2515107 e!2515109)))

(declare-fun res!1652202 () Bool)

(assert (=> b!4053520 (=> res!1652202 e!2515109)))

(assert (=> b!4053520 (= res!1652202 (>= lt!1445452 lt!1445437))))

(declare-fun lt!1445406 () Unit!62630)

(assert (=> b!4053520 (= lt!1445406 e!2515108)))

(declare-fun c!700257 () Bool)

(assert (=> b!4053520 (= c!700257 (> lt!1445452 lt!1445437))))

(assert (=> b!4053520 (= (_2!24329 (v!39769 lt!1445453)) lt!1445446)))

(declare-fun lt!1445407 () Unit!62630)

(assert (=> b!4053520 (= lt!1445407 (lemmaSamePrefixThenSameSuffix!2192 lt!1445417 (_2!24329 (v!39769 lt!1445453)) lt!1445417 lt!1445446 lt!1445396))))

(assert (=> b!4053520 (isPrefix!4031 lt!1445417 lt!1445408)))

(declare-fun lt!1445424 () Unit!62630)

(assert (=> b!4053520 (= lt!1445424 (lemmaConcatTwoListThenFirstIsPrefix!2866 lt!1445417 lt!1445446))))

(declare-fun b!4053521 () Bool)

(declare-fun e!2515125 () Bool)

(declare-fun e!2515131 () Bool)

(assert (=> b!4053521 (= e!2515125 e!2515131)))

(declare-fun res!1652199 () Bool)

(assert (=> b!4053521 (=> res!1652199 e!2515131)))

(declare-fun lt!1445404 () List!43443)

(assert (=> b!4053521 (= res!1652199 (not (= lt!1445404 suffix!1299)))))

(declare-fun lt!1445445 () List!43443)

(assert (=> b!4053521 (= lt!1445404 (++!11346 newSuffix!27 lt!1445445))))

(assert (=> b!4053521 (= lt!1445445 (getSuffix!2448 suffix!1299 newSuffix!27))))

(declare-fun b!4053522 () Bool)

(declare-fun res!1652187 () Bool)

(assert (=> b!4053522 (=> (not res!1652187) (not e!2515116))))

(declare-fun isEmpty!25853 (List!43445) Bool)

(assert (=> b!4053522 (= res!1652187 (not (isEmpty!25853 rules!2999)))))

(declare-fun b!4053523 () Bool)

(declare-fun res!1652209 () Bool)

(assert (=> b!4053523 (=> res!1652209 e!2515109)))

(assert (=> b!4053523 (= res!1652209 (not (contains!8618 rules!2999 (rule!10028 (_1!24329 (v!39769 lt!1445453))))))))

(declare-fun b!4053524 () Bool)

(declare-fun e!2515103 () Bool)

(assert (=> b!4053524 (= e!2515131 e!2515103)))

(declare-fun res!1652194 () Bool)

(assert (=> b!4053524 (=> res!1652194 e!2515103)))

(declare-fun lt!1445405 () List!43443)

(assert (=> b!4053524 (= res!1652194 (not (= lt!1445405 lt!1445448)))))

(assert (=> b!4053524 (= lt!1445405 (++!11346 prefix!494 lt!1445404))))

(assert (=> b!4053524 (= lt!1445405 (++!11346 lt!1445396 lt!1445445))))

(declare-fun lt!1445425 () Unit!62630)

(assert (=> b!4053524 (= lt!1445425 (lemmaConcatAssociativity!2648 prefix!494 newSuffix!27 lt!1445445))))

(declare-fun b!4053525 () Bool)

(assert (=> b!4053525 (= e!2515102 e!2515125)))

(declare-fun res!1652206 () Bool)

(assert (=> b!4053525 (=> res!1652206 e!2515125)))

(assert (=> b!4053525 (= res!1652206 (not (= lt!1445401 (Some!9357 (v!39769 lt!1445453)))))))

(assert (=> b!4053525 (isPrefix!4031 lt!1445417 (++!11346 lt!1445417 newSuffixResult!27))))

(declare-fun lt!1445420 () Unit!62630)

(assert (=> b!4053525 (= lt!1445420 (lemmaConcatTwoListThenFirstIsPrefix!2866 lt!1445417 newSuffixResult!27))))

(declare-fun lt!1445436 () List!43443)

(assert (=> b!4053525 (isPrefix!4031 lt!1445417 lt!1445436)))

(assert (=> b!4053525 (= lt!1445436 (++!11346 lt!1445417 (_2!24329 (v!39769 lt!1445453))))))

(declare-fun lt!1445403 () Unit!62630)

(assert (=> b!4053525 (= lt!1445403 (lemmaConcatTwoListThenFirstIsPrefix!2866 lt!1445417 (_2!24329 (v!39769 lt!1445453))))))

(assert (=> b!4053525 (= lt!1445401 (Some!9357 (tuple2!42391 lt!1445449 (_2!24329 (v!39769 lt!1445453)))))))

(declare-fun maxPrefixOneRule!2843 (LexerInterface!6533 Rule!13688 List!43443) Option!9358)

(assert (=> b!4053525 (= lt!1445401 (maxPrefixOneRule!2843 thiss!21717 (rule!10028 (_1!24329 (v!39769 lt!1445453))) lt!1445396))))

(declare-fun lt!1445442 () TokenValue!7174)

(assert (=> b!4053525 (= lt!1445449 (Token!13027 lt!1445442 (rule!10028 (_1!24329 (v!39769 lt!1445453))) lt!1445452 lt!1445417))))

(assert (=> b!4053525 (= lt!1445452 (size!32390 lt!1445417))))

(declare-fun apply!10133 (TokenValueInjection!13776 BalanceConc!25904) TokenValue!7174)

(assert (=> b!4053525 (= lt!1445442 (apply!10133 (transformation!6944 (rule!10028 (_1!24329 (v!39769 lt!1445453)))) lt!1445398))))

(declare-fun seqFromList!5161 (List!43443) BalanceConc!25904)

(assert (=> b!4053525 (= lt!1445398 (seqFromList!5161 lt!1445417))))

(declare-fun lt!1445433 () Unit!62630)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1649 (LexerInterface!6533 List!43445 List!43443 List!43443 List!43443 Rule!13688) Unit!62630)

(assert (=> b!4053525 (= lt!1445433 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1649 thiss!21717 rules!2999 lt!1445417 lt!1445396 (_2!24329 (v!39769 lt!1445453)) (rule!10028 (_1!24329 (v!39769 lt!1445453)))))))

(assert (=> b!4053525 (= lt!1445417 (list!16142 (charsOf!4760 (_1!24329 (v!39769 lt!1445453)))))))

(declare-fun lt!1445434 () Unit!62630)

(declare-fun lemmaInv!1153 (TokenValueInjection!13776) Unit!62630)

(assert (=> b!4053525 (= lt!1445434 (lemmaInv!1153 (transformation!6944 (rule!10028 (_1!24329 (v!39769 lt!1445453))))))))

(declare-fun ruleValid!2874 (LexerInterface!6533 Rule!13688) Bool)

(assert (=> b!4053525 (ruleValid!2874 thiss!21717 (rule!10028 (_1!24329 (v!39769 lt!1445453))))))

(declare-fun lt!1445441 () Unit!62630)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1944 (LexerInterface!6533 Rule!13688 List!43445) Unit!62630)

(assert (=> b!4053525 (= lt!1445441 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1944 thiss!21717 (rule!10028 (_1!24329 (v!39769 lt!1445453))) rules!2999))))

(declare-fun lt!1445444 () Unit!62630)

(declare-fun lemmaCharactersSize!1463 (Token!13026) Unit!62630)

(assert (=> b!4053525 (= lt!1445444 (lemmaCharactersSize!1463 token!484))))

(declare-fun lt!1445429 () Unit!62630)

(assert (=> b!4053525 (= lt!1445429 (lemmaCharactersSize!1463 (_1!24329 (v!39769 lt!1445453))))))

(declare-fun b!4053526 () Bool)

(assert (=> b!4053526 (= e!2515122 e!2515118)))

(declare-fun res!1652192 () Bool)

(assert (=> b!4053526 (=> res!1652192 e!2515118)))

(declare-fun lt!1445410 () Option!9358)

(assert (=> b!4053526 (= res!1652192 (not (= lt!1445410 lt!1445450)))))

(assert (=> b!4053526 (= lt!1445410 (Some!9357 (tuple2!42391 lt!1445409 suffixResult!105)))))

(assert (=> b!4053526 (= lt!1445410 (maxPrefixOneRule!2843 thiss!21717 (rule!10028 token!484) lt!1445448))))

(assert (=> b!4053526 (= lt!1445409 (Token!13027 lt!1445439 (rule!10028 token!484) lt!1445437 lt!1445423))))

(assert (=> b!4053526 (= lt!1445439 (apply!10133 (transformation!6944 (rule!10028 token!484)) (seqFromList!5161 lt!1445423)))))

(declare-fun lt!1445428 () Unit!62630)

(assert (=> b!4053526 (= lt!1445428 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1649 thiss!21717 rules!2999 lt!1445423 lt!1445448 suffixResult!105 (rule!10028 token!484)))))

(assert (=> b!4053526 (= lt!1445393 suffixResult!105)))

(declare-fun lt!1445440 () Unit!62630)

(assert (=> b!4053526 (= lt!1445440 (lemmaSamePrefixThenSameSuffix!2192 lt!1445423 lt!1445393 lt!1445423 suffixResult!105 lt!1445448))))

(assert (=> b!4053526 (isPrefix!4031 lt!1445423 lt!1445411)))

(declare-fun lt!1445412 () Unit!62630)

(assert (=> b!4053526 (= lt!1445412 (lemmaConcatTwoListThenFirstIsPrefix!2866 lt!1445423 lt!1445393))))

(declare-fun b!4053527 () Bool)

(declare-fun e!2515120 () Bool)

(declare-fun tp!1228851 () Bool)

(assert (=> b!4053527 (= e!2515120 (and e!2515124 tp!1228851))))

(declare-fun b!4053528 () Bool)

(assert (=> b!4053528 (= e!2515101 (not e!2515110))))

(declare-fun res!1652200 () Bool)

(assert (=> b!4053528 (=> res!1652200 e!2515110)))

(assert (=> b!4053528 (= res!1652200 (not (= lt!1445402 lt!1445448)))))

(assert (=> b!4053528 (= lt!1445402 (++!11346 lt!1445423 suffixResult!105))))

(declare-fun lt!1445399 () Unit!62630)

(assert (=> b!4053528 (= lt!1445399 (lemmaInv!1153 (transformation!6944 (rule!10028 token!484))))))

(assert (=> b!4053528 (ruleValid!2874 thiss!21717 (rule!10028 token!484))))

(declare-fun lt!1445415 () Unit!62630)

(assert (=> b!4053528 (= lt!1445415 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1944 thiss!21717 (rule!10028 token!484) rules!2999))))

(declare-fun b!4053529 () Bool)

(declare-fun res!1652212 () Bool)

(assert (=> b!4053529 (=> (not res!1652212) (not e!2515116))))

(assert (=> b!4053529 (= res!1652212 (>= (size!32390 suffix!1299) (size!32390 newSuffix!27)))))

(declare-fun b!4053530 () Bool)

(assert (=> b!4053530 (= e!2515103 e!2515114)))

(declare-fun res!1652203 () Bool)

(assert (=> b!4053530 (=> res!1652203 e!2515114)))

(assert (=> b!4053530 (= res!1652203 (not (isPrefix!4031 lt!1445417 lt!1445448)))))

(assert (=> b!4053530 (isPrefix!4031 lt!1445417 lt!1445405)))

(declare-fun lt!1445422 () Unit!62630)

(assert (=> b!4053530 (= lt!1445422 (lemmaPrefixStaysPrefixWhenAddingToSuffix!824 lt!1445417 lt!1445396 lt!1445445))))

(declare-fun b!4053531 () Bool)

(declare-fun e!2515126 () Bool)

(declare-fun tp!1228843 () Bool)

(assert (=> b!4053531 (= e!2515126 (and tp_is_empty!20669 tp!1228843))))

(declare-fun b!4053532 () Bool)

(assert (=> b!4053532 (= e!2515129 false)))

(declare-fun b!4053533 () Bool)

(declare-fun e!2515128 () Bool)

(declare-fun tp!1228845 () Bool)

(assert (=> b!4053533 (= e!2515128 (and tp_is_empty!20669 tp!1228845))))

(assert (=> b!4053534 (= e!2515099 (and tp!1228847 tp!1228852))))

(declare-fun b!4053535 () Bool)

(declare-fun res!1652185 () Bool)

(assert (=> b!4053535 (=> res!1652185 e!2515114)))

(assert (=> b!4053535 (= res!1652185 (not (= lt!1445436 lt!1445396)))))

(declare-fun b!4053536 () Bool)

(declare-fun res!1652207 () Bool)

(assert (=> b!4053536 (=> (not res!1652207) (not e!2515116))))

(declare-fun rulesInvariant!5876 (LexerInterface!6533 List!43445) Bool)

(assert (=> b!4053536 (= res!1652207 (rulesInvariant!5876 thiss!21717 rules!2999))))

(declare-fun b!4053537 () Bool)

(declare-fun e!2515100 () Bool)

(declare-fun tp!1228848 () Bool)

(assert (=> b!4053537 (= e!2515100 (and tp_is_empty!20669 tp!1228848))))

(declare-fun b!4053538 () Bool)

(declare-fun res!1652183 () Bool)

(assert (=> b!4053538 (=> (not res!1652183) (not e!2515116))))

(assert (=> b!4053538 (= res!1652183 (isPrefix!4031 newSuffix!27 suffix!1299))))

(declare-fun b!4053539 () Bool)

(assert (=> b!4053539 (= e!2515098 (and (= (size!32389 token!484) lt!1445437) (= (originalCharacters!7544 token!484) lt!1445423)))))

(declare-fun b!4053540 () Bool)

(declare-fun e!2515115 () Bool)

(declare-fun tp!1228842 () Bool)

(assert (=> b!4053540 (= e!2515115 (and tp_is_empty!20669 tp!1228842))))

(declare-fun res!1652195 () Bool)

(assert (=> start!382296 (=> (not res!1652195) (not e!2515116))))

(assert (=> start!382296 (= res!1652195 ((_ is Lexer!6531) thiss!21717))))

(assert (=> start!382296 e!2515116))

(assert (=> start!382296 e!2515126))

(declare-fun inv!57914 (Token!13026) Bool)

(assert (=> start!382296 (and (inv!57914 token!484) e!2515123)))

(assert (=> start!382296 e!2515100))

(assert (=> start!382296 e!2515115))

(assert (=> start!382296 e!2515128))

(assert (=> start!382296 true))

(assert (=> start!382296 e!2515120))

(assert (=> start!382296 e!2515127))

(declare-fun b!4053506 () Bool)

(assert (=> b!4053506 (= e!2515105 e!2515130)))

(declare-fun res!1652204 () Bool)

(assert (=> b!4053506 (=> res!1652204 e!2515130)))

(assert (=> b!4053506 (= res!1652204 (not (= lt!1445435 lt!1445448)))))

(assert (=> b!4053506 (= lt!1445435 (++!11346 lt!1445423 lt!1445426))))

(assert (=> b!4053506 (= lt!1445426 (getSuffix!2448 lt!1445448 lt!1445423))))

(assert (=> b!4053506 e!2515098))

(declare-fun res!1652205 () Bool)

(assert (=> b!4053506 (=> (not res!1652205) (not e!2515098))))

(assert (=> b!4053506 (= res!1652205 (isPrefix!4031 lt!1445448 lt!1445448))))

(declare-fun lt!1445414 () Unit!62630)

(assert (=> b!4053506 (= lt!1445414 (lemmaIsPrefixRefl!2598 lt!1445448 lt!1445448))))

(assert (= (and start!382296 res!1652195) b!4053522))

(assert (= (and b!4053522 res!1652187) b!4053536))

(assert (= (and b!4053536 res!1652207) b!4053529))

(assert (= (and b!4053529 res!1652212) b!4053538))

(assert (= (and b!4053538 res!1652183) b!4053514))

(assert (= (and b!4053514 res!1652191) b!4053519))

(assert (= (and b!4053519 res!1652208) b!4053518))

(assert (= (and b!4053518 res!1652189) b!4053528))

(assert (= (and b!4053528 (not res!1652200)) b!4053501))

(assert (= (and b!4053501 (not res!1652186)) b!4053502))

(assert (= (and b!4053502 (not res!1652188)) b!4053509))

(assert (= (and b!4053509 (not res!1652190)) b!4053526))

(assert (= (and b!4053526 (not res!1652192)) b!4053500))

(assert (= (and b!4053500 (not res!1652210)) b!4053506))

(assert (= (and b!4053506 res!1652205) b!4053511))

(assert (= (and b!4053511 res!1652213) b!4053504))

(assert (= (and b!4053504 res!1652184) b!4053539))

(assert (= (and b!4053506 (not res!1652204)) b!4053515))

(assert (= (and b!4053515 (not res!1652211)) b!4053525))

(assert (= (and b!4053525 (not res!1652206)) b!4053521))

(assert (= (and b!4053521 (not res!1652199)) b!4053524))

(assert (= (and b!4053524 (not res!1652194)) b!4053530))

(assert (= (and b!4053530 (not res!1652203)) b!4053535))

(assert (= (and b!4053535 (not res!1652185)) b!4053516))

(assert (= (and b!4053516 (not res!1652193)) b!4053520))

(assert (= (and b!4053520 c!700257) b!4053499))

(assert (= (and b!4053520 (not c!700257)) b!4053497))

(assert (= (and b!4053499 res!1652198) b!4053532))

(assert (= (and b!4053520 (not res!1652202)) b!4053517))

(assert (= (and b!4053517 (not res!1652201)) b!4053523))

(assert (= (and b!4053523 (not res!1652209)) b!4053498))

(assert (= (and b!4053498 (not res!1652197)) b!4053513))

(assert (= (and b!4053513 (not res!1652196)) b!4053512))

(assert (= (and start!382296 ((_ is Cons!43319) prefix!494)) b!4053531))

(assert (= b!4053510 b!4053507))

(assert (= b!4053505 b!4053510))

(assert (= start!382296 b!4053505))

(assert (= (and start!382296 ((_ is Cons!43319) suffixResult!105)) b!4053537))

(assert (= (and start!382296 ((_ is Cons!43319) suffix!1299)) b!4053540))

(assert (= (and start!382296 ((_ is Cons!43319) newSuffix!27)) b!4053533))

(assert (= b!4053503 b!4053534))

(assert (= b!4053527 b!4053503))

(assert (= (and start!382296 ((_ is Cons!43321) rules!2999)) b!4053527))

(assert (= (and start!382296 ((_ is Cons!43319) newSuffixResult!27)) b!4053508))

(declare-fun m!4655843 () Bool)

(assert (=> b!4053498 m!4655843))

(declare-fun m!4655845 () Bool)

(assert (=> b!4053528 m!4655845))

(declare-fun m!4655847 () Bool)

(assert (=> b!4053528 m!4655847))

(declare-fun m!4655849 () Bool)

(assert (=> b!4053528 m!4655849))

(declare-fun m!4655851 () Bool)

(assert (=> b!4053528 m!4655851))

(declare-fun m!4655853 () Bool)

(assert (=> b!4053501 m!4655853))

(declare-fun m!4655855 () Bool)

(assert (=> b!4053501 m!4655855))

(declare-fun m!4655857 () Bool)

(assert (=> b!4053501 m!4655857))

(declare-fun m!4655859 () Bool)

(assert (=> b!4053501 m!4655859))

(declare-fun m!4655861 () Bool)

(assert (=> b!4053501 m!4655861))

(declare-fun m!4655863 () Bool)

(assert (=> b!4053521 m!4655863))

(declare-fun m!4655865 () Bool)

(assert (=> b!4053521 m!4655865))

(declare-fun m!4655867 () Bool)

(assert (=> b!4053502 m!4655867))

(declare-fun m!4655869 () Bool)

(assert (=> b!4053502 m!4655869))

(declare-fun m!4655871 () Bool)

(assert (=> b!4053502 m!4655871))

(declare-fun m!4655873 () Bool)

(assert (=> b!4053502 m!4655873))

(declare-fun m!4655875 () Bool)

(assert (=> b!4053526 m!4655875))

(declare-fun m!4655877 () Bool)

(assert (=> b!4053526 m!4655877))

(declare-fun m!4655879 () Bool)

(assert (=> b!4053526 m!4655879))

(assert (=> b!4053526 m!4655875))

(declare-fun m!4655881 () Bool)

(assert (=> b!4053526 m!4655881))

(declare-fun m!4655883 () Bool)

(assert (=> b!4053526 m!4655883))

(declare-fun m!4655885 () Bool)

(assert (=> b!4053526 m!4655885))

(declare-fun m!4655887 () Bool)

(assert (=> b!4053526 m!4655887))

(declare-fun m!4655889 () Bool)

(assert (=> b!4053505 m!4655889))

(declare-fun m!4655891 () Bool)

(assert (=> b!4053509 m!4655891))

(declare-fun m!4655893 () Bool)

(assert (=> b!4053509 m!4655893))

(declare-fun m!4655895 () Bool)

(assert (=> b!4053509 m!4655895))

(declare-fun m!4655897 () Bool)

(assert (=> b!4053509 m!4655897))

(declare-fun m!4655899 () Bool)

(assert (=> b!4053520 m!4655899))

(declare-fun m!4655901 () Bool)

(assert (=> b!4053520 m!4655901))

(declare-fun m!4655903 () Bool)

(assert (=> b!4053520 m!4655903))

(declare-fun m!4655905 () Bool)

(assert (=> b!4053499 m!4655905))

(declare-fun m!4655907 () Bool)

(assert (=> b!4053499 m!4655907))

(declare-fun m!4655909 () Bool)

(assert (=> b!4053524 m!4655909))

(declare-fun m!4655911 () Bool)

(assert (=> b!4053524 m!4655911))

(declare-fun m!4655913 () Bool)

(assert (=> b!4053524 m!4655913))

(declare-fun m!4655915 () Bool)

(assert (=> b!4053538 m!4655915))

(declare-fun m!4655917 () Bool)

(assert (=> b!4053503 m!4655917))

(declare-fun m!4655919 () Bool)

(assert (=> b!4053503 m!4655919))

(declare-fun m!4655921 () Bool)

(assert (=> start!382296 m!4655921))

(declare-fun m!4655923 () Bool)

(assert (=> b!4053517 m!4655923))

(declare-fun m!4655925 () Bool)

(assert (=> b!4053514 m!4655925))

(declare-fun m!4655927 () Bool)

(assert (=> b!4053514 m!4655927))

(declare-fun m!4655929 () Bool)

(assert (=> b!4053514 m!4655929))

(assert (=> b!4053514 m!4655929))

(declare-fun m!4655931 () Bool)

(assert (=> b!4053514 m!4655931))

(declare-fun m!4655933 () Bool)

(assert (=> b!4053522 m!4655933))

(declare-fun m!4655935 () Bool)

(assert (=> b!4053516 m!4655935))

(declare-fun m!4655937 () Bool)

(assert (=> b!4053516 m!4655937))

(declare-fun m!4655939 () Bool)

(assert (=> b!4053525 m!4655939))

(declare-fun m!4655941 () Bool)

(assert (=> b!4053525 m!4655941))

(declare-fun m!4655943 () Bool)

(assert (=> b!4053525 m!4655943))

(declare-fun m!4655945 () Bool)

(assert (=> b!4053525 m!4655945))

(declare-fun m!4655947 () Bool)

(assert (=> b!4053525 m!4655947))

(declare-fun m!4655949 () Bool)

(assert (=> b!4053525 m!4655949))

(declare-fun m!4655951 () Bool)

(assert (=> b!4053525 m!4655951))

(declare-fun m!4655953 () Bool)

(assert (=> b!4053525 m!4655953))

(declare-fun m!4655955 () Bool)

(assert (=> b!4053525 m!4655955))

(declare-fun m!4655957 () Bool)

(assert (=> b!4053525 m!4655957))

(declare-fun m!4655959 () Bool)

(assert (=> b!4053525 m!4655959))

(declare-fun m!4655961 () Bool)

(assert (=> b!4053525 m!4655961))

(declare-fun m!4655963 () Bool)

(assert (=> b!4053525 m!4655963))

(assert (=> b!4053525 m!4655949))

(declare-fun m!4655965 () Bool)

(assert (=> b!4053525 m!4655965))

(declare-fun m!4655967 () Bool)

(assert (=> b!4053525 m!4655967))

(assert (=> b!4053525 m!4655955))

(declare-fun m!4655969 () Bool)

(assert (=> b!4053525 m!4655969))

(declare-fun m!4655971 () Bool)

(assert (=> b!4053525 m!4655971))

(declare-fun m!4655973 () Bool)

(assert (=> b!4053525 m!4655973))

(declare-fun m!4655975 () Bool)

(assert (=> b!4053504 m!4655975))

(declare-fun m!4655977 () Bool)

(assert (=> b!4053506 m!4655977))

(declare-fun m!4655979 () Bool)

(assert (=> b!4053506 m!4655979))

(declare-fun m!4655981 () Bool)

(assert (=> b!4053506 m!4655981))

(declare-fun m!4655983 () Bool)

(assert (=> b!4053506 m!4655983))

(assert (=> b!4053513 m!4655907))

(declare-fun m!4655985 () Bool)

(assert (=> b!4053512 m!4655985))

(declare-fun m!4655987 () Bool)

(assert (=> b!4053512 m!4655987))

(declare-fun m!4655989 () Bool)

(assert (=> b!4053512 m!4655989))

(declare-fun m!4655991 () Bool)

(assert (=> b!4053523 m!4655991))

(declare-fun m!4655993 () Bool)

(assert (=> b!4053519 m!4655993))

(declare-fun m!4655995 () Bool)

(assert (=> b!4053519 m!4655995))

(declare-fun m!4655997 () Bool)

(assert (=> b!4053529 m!4655997))

(declare-fun m!4655999 () Bool)

(assert (=> b!4053529 m!4655999))

(declare-fun m!4656001 () Bool)

(assert (=> b!4053536 m!4656001))

(declare-fun m!4656003 () Bool)

(assert (=> b!4053510 m!4656003))

(declare-fun m!4656005 () Bool)

(assert (=> b!4053510 m!4656005))

(declare-fun m!4656007 () Bool)

(assert (=> b!4053518 m!4656007))

(declare-fun m!4656009 () Bool)

(assert (=> b!4053518 m!4656009))

(declare-fun m!4656011 () Bool)

(assert (=> b!4053500 m!4656011))

(declare-fun m!4656013 () Bool)

(assert (=> b!4053500 m!4656013))

(declare-fun m!4656015 () Bool)

(assert (=> b!4053500 m!4656015))

(declare-fun m!4656017 () Bool)

(assert (=> b!4053500 m!4656017))

(declare-fun m!4656019 () Bool)

(assert (=> b!4053530 m!4656019))

(declare-fun m!4656021 () Bool)

(assert (=> b!4053530 m!4656021))

(declare-fun m!4656023 () Bool)

(assert (=> b!4053530 m!4656023))

(declare-fun m!4656025 () Bool)

(assert (=> b!4053515 m!4656025))

(declare-fun m!4656027 () Bool)

(assert (=> b!4053515 m!4656027))

(declare-fun m!4656029 () Bool)

(assert (=> b!4053515 m!4656029))

(declare-fun m!4656031 () Bool)

(assert (=> b!4053515 m!4656031))

(check-sat (not b_next!113487) (not b!4053499) (not b!4053517) (not b!4053506) (not b!4053515) (not b!4053500) (not b!4053518) (not b_next!113483) (not b!4053520) (not b!4053502) (not b!4053509) (not b!4053505) (not b!4053514) (not b_next!113485) (not b!4053537) (not b_next!113481) (not b!4053527) (not b!4053513) (not b!4053540) (not b!4053504) (not b!4053510) (not start!382296) (not b!4053512) b_and!311731 (not b!4053516) tp_is_empty!20669 (not b!4053530) (not b!4053529) (not b!4053521) (not b!4053522) (not b!4053524) (not b!4053523) (not b!4053538) (not b!4053536) (not b!4053531) b_and!311735 (not b!4053503) (not b!4053519) (not b!4053501) (not b!4053526) (not b!4053525) b_and!311733 (not b!4053498) (not b!4053508) b_and!311737 (not b!4053533) (not b!4053528))
(check-sat (not b_next!113487) (not b_next!113485) (not b_next!113481) b_and!311731 b_and!311735 (not b_next!113483) b_and!311733 b_and!311737)

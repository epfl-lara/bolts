; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384496 () Bool)

(assert start!384496)

(declare-fun b!4073401 () Bool)

(declare-fun b_free!113425 () Bool)

(declare-fun b_next!114129 () Bool)

(assert (=> b!4073401 (= b_free!113425 (not b_next!114129))))

(declare-fun tp!1232941 () Bool)

(declare-fun b_and!313075 () Bool)

(assert (=> b!4073401 (= tp!1232941 b_and!313075)))

(declare-fun b_free!113427 () Bool)

(declare-fun b_next!114131 () Bool)

(assert (=> b!4073401 (= b_free!113427 (not b_next!114131))))

(declare-fun tp!1232937 () Bool)

(declare-fun b_and!313077 () Bool)

(assert (=> b!4073401 (= tp!1232937 b_and!313077)))

(declare-fun b!4073410 () Bool)

(declare-fun b_free!113429 () Bool)

(declare-fun b_next!114133 () Bool)

(assert (=> b!4073410 (= b_free!113429 (not b_next!114133))))

(declare-fun tp!1232938 () Bool)

(declare-fun b_and!313079 () Bool)

(assert (=> b!4073410 (= tp!1232938 b_and!313079)))

(declare-fun b_free!113431 () Bool)

(declare-fun b_next!114135 () Bool)

(assert (=> b!4073410 (= b_free!113431 (not b_next!114135))))

(declare-fun tp!1232942 () Bool)

(declare-fun b_and!313081 () Bool)

(assert (=> b!4073410 (= tp!1232942 b_and!313081)))

(declare-fun b!4073397 () Bool)

(declare-fun res!1663406 () Bool)

(declare-fun e!2528188 () Bool)

(assert (=> b!4073397 (=> (not res!1663406) (not e!2528188))))

(declare-datatypes ((C!24012 0))(
  ( (C!24013 (val!14116 Int)) )
))
(declare-datatypes ((List!43681 0))(
  ( (Nil!43557) (Cons!43557 (h!48977 C!24012) (t!337184 List!43681)) )
))
(declare-fun suffix!1518 () List!43681)

(declare-fun p!2988 () List!43681)

(declare-fun input!3411 () List!43681)

(declare-fun ++!11414 (List!43681 List!43681) List!43681)

(assert (=> b!4073397 (= res!1663406 (= input!3411 (++!11414 p!2988 suffix!1518)))))

(declare-fun b!4073398 () Bool)

(declare-fun res!1663411 () Bool)

(assert (=> b!4073398 (=> (not res!1663411) (not e!2528188))))

(declare-fun isEmpty!25995 (List!43681) Bool)

(assert (=> b!4073398 (= res!1663411 (not (isEmpty!25995 p!2988)))))

(declare-fun b!4073399 () Bool)

(declare-fun e!2528177 () Bool)

(declare-datatypes ((List!43682 0))(
  ( (Nil!43558) (Cons!43558 (h!48978 (_ BitVec 16)) (t!337185 List!43682)) )
))
(declare-datatypes ((TokenValue!7238 0))(
  ( (FloatLiteralValue!14476 (text!51111 List!43682)) (TokenValueExt!7237 (__x!26693 Int)) (Broken!36190 (value!220354 List!43682)) (Object!7361) (End!7238) (Def!7238) (Underscore!7238) (Match!7238) (Else!7238) (Error!7238) (Case!7238) (If!7238) (Extends!7238) (Abstract!7238) (Class!7238) (Val!7238) (DelimiterValue!14476 (del!7298 List!43682)) (KeywordValue!7244 (value!220355 List!43682)) (CommentValue!14476 (value!220356 List!43682)) (WhitespaceValue!14476 (value!220357 List!43682)) (IndentationValue!7238 (value!220358 List!43682)) (String!49939) (Int32!7238) (Broken!36191 (value!220359 List!43682)) (Boolean!7239) (Unit!63108) (OperatorValue!7241 (op!7298 List!43682)) (IdentifierValue!14476 (value!220360 List!43682)) (IdentifierValue!14477 (value!220361 List!43682)) (WhitespaceValue!14477 (value!220362 List!43682)) (True!14476) (False!14476) (Broken!36192 (value!220363 List!43682)) (Broken!36193 (value!220364 List!43682)) (True!14477) (RightBrace!7238) (RightBracket!7238) (Colon!7238) (Null!7238) (Comma!7238) (LeftBracket!7238) (False!14477) (LeftBrace!7238) (ImaginaryLiteralValue!7238 (text!51112 List!43682)) (StringLiteralValue!21714 (value!220365 List!43682)) (EOFValue!7238 (value!220366 List!43682)) (IdentValue!7238 (value!220367 List!43682)) (DelimiterValue!14477 (value!220368 List!43682)) (DedentValue!7238 (value!220369 List!43682)) (NewLineValue!7238 (value!220370 List!43682)) (IntegerValue!21714 (value!220371 (_ BitVec 32)) (text!51113 List!43682)) (IntegerValue!21715 (value!220372 Int) (text!51114 List!43682)) (Times!7238) (Or!7238) (Equal!7238) (Minus!7238) (Broken!36194 (value!220373 List!43682)) (And!7238) (Div!7238) (LessEqual!7238) (Mod!7238) (Concat!19151) (Not!7238) (Plus!7238) (SpaceValue!7238 (value!220374 List!43682)) (IntegerValue!21716 (value!220375 Int) (text!51115 List!43682)) (StringLiteralValue!21715 (text!51116 List!43682)) (FloatLiteralValue!14477 (text!51117 List!43682)) (BytesLiteralValue!7238 (value!220376 List!43682)) (CommentValue!14477 (value!220377 List!43682)) (StringLiteralValue!21716 (value!220378 List!43682)) (ErrorTokenValue!7238 (msg!7299 List!43682)) )
))
(declare-datatypes ((Regex!11913 0))(
  ( (ElementMatch!11913 (c!702916 C!24012)) (Concat!19152 (regOne!24338 Regex!11913) (regTwo!24338 Regex!11913)) (EmptyExpr!11913) (Star!11913 (reg!12242 Regex!11913)) (EmptyLang!11913) (Union!11913 (regOne!24339 Regex!11913) (regTwo!24339 Regex!11913)) )
))
(declare-datatypes ((String!49940 0))(
  ( (String!49941 (value!220379 String)) )
))
(declare-datatypes ((IArray!26443 0))(
  ( (IArray!26444 (innerList!13279 List!43681)) )
))
(declare-datatypes ((Conc!13219 0))(
  ( (Node!13219 (left!32745 Conc!13219) (right!33075 Conc!13219) (csize!26668 Int) (cheight!13430 Int)) (Leaf!20438 (xs!16525 IArray!26443) (csize!26669 Int)) (Empty!13219) )
))
(declare-datatypes ((BalanceConc!26032 0))(
  ( (BalanceConc!26033 (c!702917 Conc!13219)) )
))
(declare-datatypes ((TokenValueInjection!13904 0))(
  ( (TokenValueInjection!13905 (toValue!9572 Int) (toChars!9431 Int)) )
))
(declare-datatypes ((Rule!13816 0))(
  ( (Rule!13817 (regex!7008 Regex!11913) (tag!7868 String!49940) (isSeparator!7008 Bool) (transformation!7008 TokenValueInjection!13904)) )
))
(declare-datatypes ((Token!13142 0))(
  ( (Token!13143 (value!220380 TokenValue!7238) (rule!10112 Rule!13816) (size!32547 Int) (originalCharacters!7602 List!43681)) )
))
(declare-datatypes ((tuple2!42558 0))(
  ( (tuple2!42559 (_1!24413 Token!13142) (_2!24413 List!43681)) )
))
(declare-datatypes ((Option!9416 0))(
  ( (None!9415) (Some!9415 (v!39853 tuple2!42558)) )
))
(declare-fun lt!1457883 () Option!9416)

(declare-datatypes ((List!43683 0))(
  ( (Nil!43559) (Cons!43559 (h!48979 Rule!13816) (t!337186 List!43683)) )
))
(declare-fun rules!3870 () List!43683)

(declare-fun get!14280 (Option!9416) tuple2!42558)

(assert (=> b!4073399 (= e!2528177 (not (= (rule!10112 (_1!24413 (get!14280 lt!1457883))) (h!48979 rules!3870))))))

(declare-fun b!4073400 () Bool)

(declare-fun e!2528181 () Bool)

(declare-fun e!2528180 () Bool)

(assert (=> b!4073400 (= e!2528181 (not e!2528180))))

(declare-fun res!1663409 () Bool)

(assert (=> b!4073400 (=> res!1663409 e!2528180)))

(declare-fun r!4213 () Rule!13816)

(declare-fun matchR!5858 (Regex!11913 List!43681) Bool)

(assert (=> b!4073400 (= res!1663409 (not (matchR!5858 (regex!7008 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6597 0))(
  ( (LexerInterfaceExt!6594 (__x!26694 Int)) (Lexer!6595) )
))
(declare-fun thiss!26199 () LexerInterface!6597)

(declare-fun ruleValid!2932 (LexerInterface!6597 Rule!13816) Bool)

(assert (=> b!4073400 (ruleValid!2932 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63109 0))(
  ( (Unit!63110) )
))
(declare-fun lt!1457887 () Unit!63109)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2000 (LexerInterface!6597 Rule!13816 List!43683) Unit!63109)

(assert (=> b!4073400 (= lt!1457887 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2000 thiss!26199 r!4213 rules!3870))))

(declare-fun e!2528182 () Bool)

(assert (=> b!4073401 (= e!2528182 (and tp!1232941 tp!1232937))))

(declare-fun e!2528176 () Bool)

(declare-fun tp!1232940 () Bool)

(declare-fun b!4073402 () Bool)

(declare-fun e!2528184 () Bool)

(declare-fun inv!58208 (String!49940) Bool)

(declare-fun inv!58210 (TokenValueInjection!13904) Bool)

(assert (=> b!4073402 (= e!2528184 (and tp!1232940 (inv!58208 (tag!7868 r!4213)) (inv!58210 (transformation!7008 r!4213)) e!2528176))))

(declare-fun b!4073403 () Bool)

(declare-fun e!2528178 () Bool)

(declare-fun e!2528186 () Bool)

(declare-fun tp!1232933 () Bool)

(assert (=> b!4073403 (= e!2528178 (and e!2528186 tp!1232933))))

(declare-fun b!4073404 () Bool)

(declare-fun e!2528183 () Bool)

(assert (=> b!4073404 (= e!2528180 e!2528183)))

(declare-fun res!1663412 () Bool)

(assert (=> b!4073404 (=> res!1663412 e!2528183)))

(declare-fun isEmpty!25996 (List!43683) Bool)

(assert (=> b!4073404 (= res!1663412 (isEmpty!25996 (t!337186 rules!3870)))))

(declare-fun rulesInvariant!5940 (LexerInterface!6597 List!43683) Bool)

(assert (=> b!4073404 (rulesInvariant!5940 thiss!26199 (t!337186 rules!3870))))

(declare-fun lt!1457882 () Unit!63109)

(declare-fun lemmaInvariantOnRulesThenOnTail!728 (LexerInterface!6597 Rule!13816 List!43683) Unit!63109)

(assert (=> b!4073404 (= lt!1457882 (lemmaInvariantOnRulesThenOnTail!728 thiss!26199 (h!48979 rules!3870) (t!337186 rules!3870)))))

(declare-fun b!4073405 () Bool)

(assert (=> b!4073405 (= e!2528188 e!2528181)))

(declare-fun res!1663403 () Bool)

(assert (=> b!4073405 (=> (not res!1663403) (not e!2528181))))

(declare-fun lt!1457885 () BalanceConc!26032)

(declare-fun maxPrefix!3889 (LexerInterface!6597 List!43683 List!43681) Option!9416)

(declare-fun apply!10191 (TokenValueInjection!13904 BalanceConc!26032) TokenValue!7238)

(declare-fun size!32548 (List!43681) Int)

(assert (=> b!4073405 (= res!1663403 (= (maxPrefix!3889 thiss!26199 rules!3870 input!3411) (Some!9415 (tuple2!42559 (Token!13143 (apply!10191 (transformation!7008 r!4213) lt!1457885) r!4213 (size!32548 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1457884 () Unit!63109)

(declare-fun lemmaSemiInverse!1975 (TokenValueInjection!13904 BalanceConc!26032) Unit!63109)

(assert (=> b!4073405 (= lt!1457884 (lemmaSemiInverse!1975 (transformation!7008 r!4213) lt!1457885))))

(declare-fun seqFromList!5225 (List!43681) BalanceConc!26032)

(assert (=> b!4073405 (= lt!1457885 (seqFromList!5225 p!2988))))

(declare-fun b!4073406 () Bool)

(declare-fun tp!1232939 () Bool)

(assert (=> b!4073406 (= e!2528186 (and tp!1232939 (inv!58208 (tag!7868 (h!48979 rules!3870))) (inv!58210 (transformation!7008 (h!48979 rules!3870))) e!2528182))))

(declare-fun b!4073407 () Bool)

(declare-fun res!1663408 () Bool)

(assert (=> b!4073407 (=> (not res!1663408) (not e!2528188))))

(declare-fun contains!8675 (List!43683 Rule!13816) Bool)

(assert (=> b!4073407 (= res!1663408 (contains!8675 rules!3870 r!4213))))

(declare-fun b!4073408 () Bool)

(declare-fun res!1663407 () Bool)

(assert (=> b!4073408 (=> res!1663407 e!2528180)))

(get-info :version)

(assert (=> b!4073408 (= res!1663407 (or (not ((_ is Cons!43559) rules!3870)) (not (= (h!48979 rules!3870) r!4213))))))

(declare-fun b!4073409 () Bool)

(declare-fun res!1663402 () Bool)

(assert (=> b!4073409 (=> (not res!1663402) (not e!2528188))))

(assert (=> b!4073409 (= res!1663402 (rulesInvariant!5940 thiss!26199 rules!3870))))

(declare-fun res!1663410 () Bool)

(assert (=> start!384496 (=> (not res!1663410) (not e!2528188))))

(assert (=> start!384496 (= res!1663410 ((_ is Lexer!6595) thiss!26199))))

(assert (=> start!384496 e!2528188))

(assert (=> start!384496 true))

(declare-fun e!2528179 () Bool)

(assert (=> start!384496 e!2528179))

(assert (=> start!384496 e!2528178))

(declare-fun e!2528185 () Bool)

(assert (=> start!384496 e!2528185))

(declare-fun e!2528187 () Bool)

(assert (=> start!384496 e!2528187))

(assert (=> start!384496 e!2528184))

(declare-fun b!4073396 () Bool)

(declare-fun tp_is_empty!20829 () Bool)

(declare-fun tp!1232934 () Bool)

(assert (=> b!4073396 (= e!2528179 (and tp_is_empty!20829 tp!1232934))))

(assert (=> b!4073410 (= e!2528176 (and tp!1232938 tp!1232942))))

(declare-fun b!4073411 () Bool)

(declare-fun tp!1232936 () Bool)

(assert (=> b!4073411 (= e!2528185 (and tp_is_empty!20829 tp!1232936))))

(declare-fun b!4073412 () Bool)

(assert (=> b!4073412 (= e!2528183 true)))

(assert (=> b!4073412 e!2528177))

(declare-fun res!1663405 () Bool)

(assert (=> b!4073412 (=> res!1663405 e!2528177)))

(declare-fun isEmpty!25997 (Option!9416) Bool)

(assert (=> b!4073412 (= res!1663405 (isEmpty!25997 lt!1457883))))

(assert (=> b!4073412 (= lt!1457883 (maxPrefix!3889 thiss!26199 (t!337186 rules!3870) input!3411))))

(declare-fun lt!1457886 () Unit!63109)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!2 (LexerInterface!6597 Rule!13816 List!43683 List!43681) Unit!63109)

(assert (=> b!4073412 (= lt!1457886 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!2 thiss!26199 (h!48979 rules!3870) (t!337186 rules!3870) input!3411))))

(declare-fun b!4073413 () Bool)

(declare-fun tp!1232935 () Bool)

(assert (=> b!4073413 (= e!2528187 (and tp_is_empty!20829 tp!1232935))))

(declare-fun b!4073414 () Bool)

(declare-fun res!1663404 () Bool)

(assert (=> b!4073414 (=> (not res!1663404) (not e!2528188))))

(assert (=> b!4073414 (= res!1663404 (not (isEmpty!25996 rules!3870)))))

(assert (= (and start!384496 res!1663410) b!4073414))

(assert (= (and b!4073414 res!1663404) b!4073409))

(assert (= (and b!4073409 res!1663402) b!4073407))

(assert (= (and b!4073407 res!1663408) b!4073397))

(assert (= (and b!4073397 res!1663406) b!4073398))

(assert (= (and b!4073398 res!1663411) b!4073405))

(assert (= (and b!4073405 res!1663403) b!4073400))

(assert (= (and b!4073400 (not res!1663409)) b!4073408))

(assert (= (and b!4073408 (not res!1663407)) b!4073404))

(assert (= (and b!4073404 (not res!1663412)) b!4073412))

(assert (= (and b!4073412 (not res!1663405)) b!4073399))

(assert (= (and start!384496 ((_ is Cons!43557) suffix!1518)) b!4073396))

(assert (= b!4073406 b!4073401))

(assert (= b!4073403 b!4073406))

(assert (= (and start!384496 ((_ is Cons!43559) rules!3870)) b!4073403))

(assert (= (and start!384496 ((_ is Cons!43557) p!2988)) b!4073411))

(assert (= (and start!384496 ((_ is Cons!43557) input!3411)) b!4073413))

(assert (= b!4073402 b!4073410))

(assert (= start!384496 b!4073402))

(declare-fun m!4682177 () Bool)

(assert (=> b!4073402 m!4682177))

(declare-fun m!4682179 () Bool)

(assert (=> b!4073402 m!4682179))

(declare-fun m!4682181 () Bool)

(assert (=> b!4073406 m!4682181))

(declare-fun m!4682183 () Bool)

(assert (=> b!4073406 m!4682183))

(declare-fun m!4682185 () Bool)

(assert (=> b!4073405 m!4682185))

(declare-fun m!4682187 () Bool)

(assert (=> b!4073405 m!4682187))

(declare-fun m!4682189 () Bool)

(assert (=> b!4073405 m!4682189))

(declare-fun m!4682191 () Bool)

(assert (=> b!4073405 m!4682191))

(declare-fun m!4682193 () Bool)

(assert (=> b!4073405 m!4682193))

(declare-fun m!4682195 () Bool)

(assert (=> b!4073397 m!4682195))

(declare-fun m!4682197 () Bool)

(assert (=> b!4073404 m!4682197))

(declare-fun m!4682199 () Bool)

(assert (=> b!4073404 m!4682199))

(declare-fun m!4682201 () Bool)

(assert (=> b!4073404 m!4682201))

(declare-fun m!4682203 () Bool)

(assert (=> b!4073400 m!4682203))

(declare-fun m!4682205 () Bool)

(assert (=> b!4073400 m!4682205))

(declare-fun m!4682207 () Bool)

(assert (=> b!4073400 m!4682207))

(declare-fun m!4682209 () Bool)

(assert (=> b!4073412 m!4682209))

(declare-fun m!4682211 () Bool)

(assert (=> b!4073412 m!4682211))

(declare-fun m!4682213 () Bool)

(assert (=> b!4073412 m!4682213))

(declare-fun m!4682215 () Bool)

(assert (=> b!4073414 m!4682215))

(declare-fun m!4682217 () Bool)

(assert (=> b!4073409 m!4682217))

(declare-fun m!4682219 () Bool)

(assert (=> b!4073399 m!4682219))

(declare-fun m!4682221 () Bool)

(assert (=> b!4073407 m!4682221))

(declare-fun m!4682223 () Bool)

(assert (=> b!4073398 m!4682223))

(check-sat b_and!313081 (not b!4073399) (not b!4073409) (not b_next!114135) tp_is_empty!20829 (not b!4073400) (not b!4073404) (not b!4073411) (not b!4073396) (not b!4073403) (not b!4073413) (not b!4073398) (not b!4073405) b_and!313077 (not b!4073414) (not b!4073406) b_and!313075 (not b_next!114133) b_and!313079 (not b_next!114131) (not b!4073402) (not b!4073412) (not b_next!114129) (not b!4073397) (not b!4073407))
(check-sat b_and!313081 b_and!313077 (not b_next!114135) (not b_next!114129) b_and!313075 (not b_next!114133) b_and!313079 (not b_next!114131))

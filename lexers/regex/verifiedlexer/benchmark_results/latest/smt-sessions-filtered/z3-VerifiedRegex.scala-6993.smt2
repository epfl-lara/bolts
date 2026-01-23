; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371468 () Bool)

(assert start!371468)

(declare-fun b!3950896 () Bool)

(declare-fun b_free!108545 () Bool)

(declare-fun b_next!109249 () Bool)

(assert (=> b!3950896 (= b_free!108545 (not b_next!109249))))

(declare-fun tp!1203490 () Bool)

(declare-fun b_and!302707 () Bool)

(assert (=> b!3950896 (= tp!1203490 b_and!302707)))

(declare-fun b_free!108547 () Bool)

(declare-fun b_next!109251 () Bool)

(assert (=> b!3950896 (= b_free!108547 (not b_next!109251))))

(declare-fun tp!1203482 () Bool)

(declare-fun b_and!302709 () Bool)

(assert (=> b!3950896 (= tp!1203482 b_and!302709)))

(declare-fun b!3950874 () Bool)

(declare-fun b_free!108549 () Bool)

(declare-fun b_next!109253 () Bool)

(assert (=> b!3950874 (= b_free!108549 (not b_next!109253))))

(declare-fun tp!1203480 () Bool)

(declare-fun b_and!302711 () Bool)

(assert (=> b!3950874 (= tp!1203480 b_and!302711)))

(declare-fun b_free!108551 () Bool)

(declare-fun b_next!109255 () Bool)

(assert (=> b!3950874 (= b_free!108551 (not b_next!109255))))

(declare-fun tp!1203492 () Bool)

(declare-fun b_and!302713 () Bool)

(assert (=> b!3950874 (= tp!1203492 b_and!302713)))

(declare-fun b!3950875 () Bool)

(declare-fun b_free!108553 () Bool)

(declare-fun b_next!109257 () Bool)

(assert (=> b!3950875 (= b_free!108553 (not b_next!109257))))

(declare-fun tp!1203489 () Bool)

(declare-fun b_and!302715 () Bool)

(assert (=> b!3950875 (= tp!1203489 b_and!302715)))

(declare-fun b_free!108555 () Bool)

(declare-fun b_next!109259 () Bool)

(assert (=> b!3950875 (= b_free!108555 (not b_next!109259))))

(declare-fun tp!1203475 () Bool)

(declare-fun b_and!302717 () Bool)

(assert (=> b!3950875 (= tp!1203475 b_and!302717)))

(declare-fun b!3950895 () Bool)

(declare-fun b_free!108557 () Bool)

(declare-fun b_next!109261 () Bool)

(assert (=> b!3950895 (= b_free!108557 (not b_next!109261))))

(declare-fun tp!1203486 () Bool)

(declare-fun b_and!302719 () Bool)

(assert (=> b!3950895 (= tp!1203486 b_and!302719)))

(declare-fun b_free!108559 () Bool)

(declare-fun b_next!109263 () Bool)

(assert (=> b!3950895 (= b_free!108559 (not b_next!109263))))

(declare-fun tp!1203485 () Bool)

(declare-fun b_and!302721 () Bool)

(assert (=> b!3950895 (= tp!1203485 b_and!302721)))

(declare-fun tp!1203487 () Bool)

(declare-fun b!3950867 () Bool)

(declare-fun e!2445332 () Bool)

(declare-fun e!2445326 () Bool)

(declare-datatypes ((List!42129 0))(
  ( (Nil!42005) (Cons!42005 (h!47425 (_ BitVec 16)) (t!328630 List!42129)) )
))
(declare-datatypes ((TokenValue!6804 0))(
  ( (FloatLiteralValue!13608 (text!48073 List!42129)) (TokenValueExt!6803 (__x!25825 Int)) (Broken!34020 (value!207967 List!42129)) (Object!6927) (End!6804) (Def!6804) (Underscore!6804) (Match!6804) (Else!6804) (Error!6804) (Case!6804) (If!6804) (Extends!6804) (Abstract!6804) (Class!6804) (Val!6804) (DelimiterValue!13608 (del!6864 List!42129)) (KeywordValue!6810 (value!207968 List!42129)) (CommentValue!13608 (value!207969 List!42129)) (WhitespaceValue!13608 (value!207970 List!42129)) (IndentationValue!6804 (value!207971 List!42129)) (String!47737) (Int32!6804) (Broken!34021 (value!207972 List!42129)) (Boolean!6805) (Unit!60521) (OperatorValue!6807 (op!6864 List!42129)) (IdentifierValue!13608 (value!207973 List!42129)) (IdentifierValue!13609 (value!207974 List!42129)) (WhitespaceValue!13609 (value!207975 List!42129)) (True!13608) (False!13608) (Broken!34022 (value!207976 List!42129)) (Broken!34023 (value!207977 List!42129)) (True!13609) (RightBrace!6804) (RightBracket!6804) (Colon!6804) (Null!6804) (Comma!6804) (LeftBracket!6804) (False!13609) (LeftBrace!6804) (ImaginaryLiteralValue!6804 (text!48074 List!42129)) (StringLiteralValue!20412 (value!207978 List!42129)) (EOFValue!6804 (value!207979 List!42129)) (IdentValue!6804 (value!207980 List!42129)) (DelimiterValue!13609 (value!207981 List!42129)) (DedentValue!6804 (value!207982 List!42129)) (NewLineValue!6804 (value!207983 List!42129)) (IntegerValue!20412 (value!207984 (_ BitVec 32)) (text!48075 List!42129)) (IntegerValue!20413 (value!207985 Int) (text!48076 List!42129)) (Times!6804) (Or!6804) (Equal!6804) (Minus!6804) (Broken!34024 (value!207986 List!42129)) (And!6804) (Div!6804) (LessEqual!6804) (Mod!6804) (Concat!18283) (Not!6804) (Plus!6804) (SpaceValue!6804 (value!207987 List!42129)) (IntegerValue!20414 (value!207988 Int) (text!48077 List!42129)) (StringLiteralValue!20413 (text!48078 List!42129)) (FloatLiteralValue!13609 (text!48079 List!42129)) (BytesLiteralValue!6804 (value!207989 List!42129)) (CommentValue!13609 (value!207990 List!42129)) (StringLiteralValue!20414 (value!207991 List!42129)) (ErrorTokenValue!6804 (msg!6865 List!42129)) )
))
(declare-datatypes ((C!23144 0))(
  ( (C!23145 (val!13666 Int)) )
))
(declare-datatypes ((Regex!11479 0))(
  ( (ElementMatch!11479 (c!686026 C!23144)) (Concat!18284 (regOne!23470 Regex!11479) (regTwo!23470 Regex!11479)) (EmptyExpr!11479) (Star!11479 (reg!11808 Regex!11479)) (EmptyLang!11479) (Union!11479 (regOne!23471 Regex!11479) (regTwo!23471 Regex!11479)) )
))
(declare-datatypes ((String!47738 0))(
  ( (String!47739 (value!207992 String)) )
))
(declare-datatypes ((List!42130 0))(
  ( (Nil!42006) (Cons!42006 (h!47426 C!23144) (t!328631 List!42130)) )
))
(declare-datatypes ((IArray!25575 0))(
  ( (IArray!25576 (innerList!12845 List!42130)) )
))
(declare-datatypes ((Conc!12785 0))(
  ( (Node!12785 (left!31950 Conc!12785) (right!32280 Conc!12785) (csize!25800 Int) (cheight!12996 Int)) (Leaf!19779 (xs!16091 IArray!25575) (csize!25801 Int)) (Empty!12785) )
))
(declare-datatypes ((BalanceConc!25164 0))(
  ( (BalanceConc!25165 (c!686027 Conc!12785)) )
))
(declare-datatypes ((TokenValueInjection!13036 0))(
  ( (TokenValueInjection!13037 (toValue!9050 Int) (toChars!8909 Int)) )
))
(declare-datatypes ((Rule!12948 0))(
  ( (Rule!12949 (regex!6574 Regex!11479) (tag!7434 String!47738) (isSeparator!6574 Bool) (transformation!6574 TokenValueInjection!13036)) )
))
(declare-datatypes ((Token!12286 0))(
  ( (Token!12287 (value!207993 TokenValue!6804) (rule!9542 Rule!12948) (size!31482 Int) (originalCharacters!7174 List!42130)) )
))
(declare-datatypes ((List!42131 0))(
  ( (Nil!42007) (Cons!42007 (h!47427 Token!12286) (t!328632 List!42131)) )
))
(declare-fun suffixTokens!72 () List!42131)

(declare-fun inv!56232 (String!47738) Bool)

(declare-fun inv!56235 (TokenValueInjection!13036) Bool)

(assert (=> b!3950867 (= e!2445326 (and tp!1203487 (inv!56232 (tag!7434 (rule!9542 (h!47427 suffixTokens!72)))) (inv!56235 (transformation!6574 (rule!9542 (h!47427 suffixTokens!72)))) e!2445332))))

(declare-fun b!3950868 () Bool)

(declare-fun e!2445307 () Bool)

(declare-fun tp!1203484 () Bool)

(declare-fun inv!21 (TokenValue!6804) Bool)

(assert (=> b!3950868 (= e!2445307 (and (inv!21 (value!207993 (h!47427 suffixTokens!72))) e!2445326 tp!1203484))))

(declare-fun b!3950869 () Bool)

(declare-fun e!2445321 () Bool)

(declare-fun e!2445320 () Bool)

(assert (=> b!3950869 (= e!2445321 e!2445320)))

(declare-fun res!1598591 () Bool)

(assert (=> b!3950869 (=> (not res!1598591) (not e!2445320))))

(declare-datatypes ((tuple2!41290 0))(
  ( (tuple2!41291 (_1!23779 Token!12286) (_2!23779 List!42130)) )
))
(declare-datatypes ((Option!8994 0))(
  ( (None!8993) (Some!8993 (v!39333 tuple2!41290)) )
))
(declare-fun lt!1381058 () Option!8994)

(get-info :version)

(assert (=> b!3950869 (= res!1598591 ((_ is Some!8993) lt!1381058))))

(declare-fun lt!1381056 () List!42130)

(declare-datatypes ((LexerInterface!6163 0))(
  ( (LexerInterfaceExt!6160 (__x!25826 Int)) (Lexer!6161) )
))
(declare-fun thiss!20629 () LexerInterface!6163)

(declare-datatypes ((List!42132 0))(
  ( (Nil!42008) (Cons!42008 (h!47428 Rule!12948) (t!328633 List!42132)) )
))
(declare-fun rules!2768 () List!42132)

(declare-fun maxPrefix!3467 (LexerInterface!6163 List!42132 List!42130) Option!8994)

(assert (=> b!3950869 (= lt!1381058 (maxPrefix!3467 thiss!20629 rules!2768 lt!1381056))))

(declare-fun tp!1203479 () Bool)

(declare-fun err!4425 () Option!8994)

(declare-fun e!2445331 () Bool)

(declare-fun e!2445308 () Bool)

(declare-fun b!3950870 () Bool)

(declare-fun inv!56236 (Token!12286) Bool)

(assert (=> b!3950870 (= e!2445308 (and (inv!56236 (_1!23779 (v!39333 err!4425))) e!2445331 tp!1203479))))

(declare-fun b!3950871 () Bool)

(declare-fun res!1598583 () Bool)

(declare-fun e!2445335 () Bool)

(assert (=> b!3950871 (=> (not res!1598583) (not e!2445335))))

(declare-fun rulesInvariant!5506 (LexerInterface!6163 List!42132) Bool)

(assert (=> b!3950871 (= res!1598583 (rulesInvariant!5506 thiss!20629 rules!2768))))

(declare-fun b!3950872 () Bool)

(declare-fun res!1598584 () Bool)

(assert (=> b!3950872 (=> (not res!1598584) (not e!2445321))))

(declare-fun suffixResult!91 () List!42130)

(declare-fun suffix!1176 () List!42130)

(declare-datatypes ((tuple2!41292 0))(
  ( (tuple2!41293 (_1!23780 List!42131) (_2!23780 List!42130)) )
))
(declare-fun lexList!1931 (LexerInterface!6163 List!42132 List!42130) tuple2!41292)

(assert (=> b!3950872 (= res!1598584 (= (lexList!1931 thiss!20629 rules!2768 suffix!1176) (tuple2!41293 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3950873 () Bool)

(declare-fun e!2445304 () Bool)

(declare-fun tp!1203474 () Bool)

(assert (=> b!3950873 (= e!2445331 (and (inv!21 (value!207993 (_1!23779 (v!39333 err!4425)))) e!2445304 tp!1203474))))

(declare-fun e!2445329 () Bool)

(assert (=> b!3950875 (= e!2445329 (and tp!1203489 tp!1203475))))

(declare-fun b!3950876 () Bool)

(declare-fun e!2445312 () Bool)

(assert (=> b!3950876 (= e!2445312 true)))

(declare-fun lt!1381070 () Bool)

(declare-fun isPrefix!3663 (List!42130 List!42130) Bool)

(assert (=> b!3950876 (= lt!1381070 (isPrefix!3663 Nil!42006 suffix!1176))))

(declare-fun b!3950877 () Bool)

(assert (=> b!3950877 (= e!2445335 e!2445321)))

(declare-fun res!1598587 () Bool)

(assert (=> b!3950877 (=> (not res!1598587) (not e!2445321))))

(declare-fun lt!1381069 () List!42131)

(declare-fun lt!1381053 () tuple2!41292)

(assert (=> b!3950877 (= res!1598587 (= lt!1381053 (tuple2!41293 lt!1381069 suffixResult!91)))))

(assert (=> b!3950877 (= lt!1381053 (lexList!1931 thiss!20629 rules!2768 lt!1381056))))

(declare-fun prefixTokens!80 () List!42131)

(declare-fun ++!10905 (List!42131 List!42131) List!42131)

(assert (=> b!3950877 (= lt!1381069 (++!10905 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42130)

(declare-fun ++!10906 (List!42130 List!42130) List!42130)

(assert (=> b!3950877 (= lt!1381056 (++!10906 prefix!426 suffix!1176))))

(declare-fun b!3950878 () Bool)

(declare-fun e!2445303 () Bool)

(declare-fun tp_is_empty!19929 () Bool)

(declare-fun tp!1203491 () Bool)

(assert (=> b!3950878 (= e!2445303 (and tp_is_empty!19929 tp!1203491))))

(declare-fun b!3950879 () Bool)

(declare-fun e!2445322 () Bool)

(assert (=> b!3950879 (= e!2445322 e!2445312)))

(declare-fun res!1598593 () Bool)

(assert (=> b!3950879 (=> res!1598593 e!2445312)))

(declare-fun lt!1381063 () List!42131)

(declare-fun lt!1381052 () List!42130)

(declare-fun lt!1381060 () List!42131)

(assert (=> b!3950879 (= res!1598593 (or (not (= lt!1381069 (_1!23780 lt!1381053))) (not (= lt!1381069 lt!1381060)) (not (= prefixTokens!80 lt!1381063)) (not (= prefix!426 lt!1381052))))))

(assert (=> b!3950879 (= lt!1381052 prefix!426)))

(declare-datatypes ((Unit!60522 0))(
  ( (Unit!60523) )
))
(declare-fun lt!1381065 () Unit!60522)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!584 (List!42130 List!42130 List!42130 List!42130) Unit!60522)

(assert (=> b!3950879 (= lt!1381065 (lemmaConcatSameAndSameSizesThenSameLists!584 lt!1381052 (_2!23779 (v!39333 lt!1381058)) prefix!426 suffix!1176))))

(declare-fun b!3950880 () Bool)

(declare-fun e!2445325 () Bool)

(declare-fun tp!1203477 () Bool)

(assert (=> b!3950880 (= e!2445304 (and tp!1203477 (inv!56232 (tag!7434 (rule!9542 (_1!23779 (v!39333 err!4425))))) (inv!56235 (transformation!6574 (rule!9542 (_1!23779 (v!39333 err!4425))))) e!2445325))))

(declare-fun e!2445338 () Bool)

(declare-fun e!2445323 () Bool)

(declare-fun b!3950881 () Bool)

(declare-fun tp!1203493 () Bool)

(assert (=> b!3950881 (= e!2445338 (and (inv!56236 (h!47427 prefixTokens!80)) e!2445323 tp!1203493))))

(declare-fun b!3950882 () Bool)

(declare-fun e!2445336 () Option!8994)

(declare-fun e!2445319 () Option!8994)

(assert (=> b!3950882 (= e!2445336 e!2445319)))

(declare-fun c!686025 () Bool)

(assert (=> b!3950882 (= c!686025 ((_ is Cons!42008) rules!2768))))

(declare-fun b!3950883 () Bool)

(declare-fun e!2445318 () Bool)

(declare-fun tp!1203483 () Bool)

(assert (=> b!3950883 (= e!2445318 (and tp_is_empty!19929 tp!1203483))))

(declare-fun b!3950884 () Bool)

(declare-fun res!1598590 () Bool)

(assert (=> b!3950884 (=> (not res!1598590) (not e!2445335))))

(declare-fun isEmpty!25088 (List!42130) Bool)

(assert (=> b!3950884 (= res!1598590 (not (isEmpty!25088 prefix!426)))))

(declare-fun b!3950885 () Bool)

(declare-fun e!2445315 () Bool)

(assert (=> b!3950885 (= e!2445320 (not e!2445315))))

(declare-fun res!1598586 () Bool)

(assert (=> b!3950885 (=> res!1598586 e!2445315)))

(declare-fun lt!1381062 () List!42130)

(assert (=> b!3950885 (= res!1598586 (not (= lt!1381062 lt!1381056)))))

(declare-fun lt!1381066 () tuple2!41292)

(assert (=> b!3950885 (= lt!1381066 (lexList!1931 thiss!20629 rules!2768 (_2!23779 (v!39333 lt!1381058))))))

(declare-fun lt!1381057 () Int)

(declare-fun lt!1381071 () TokenValue!6804)

(declare-fun lt!1381059 () List!42130)

(assert (=> b!3950885 (and (= (size!31482 (_1!23779 (v!39333 lt!1381058))) lt!1381057) (= (originalCharacters!7174 (_1!23779 (v!39333 lt!1381058))) lt!1381052) (= (tuple2!41291 (_1!23779 (v!39333 lt!1381058)) (_2!23779 (v!39333 lt!1381058))) (tuple2!41291 (Token!12287 lt!1381071 (rule!9542 (_1!23779 (v!39333 lt!1381058))) lt!1381057 lt!1381052) lt!1381059)))))

(declare-fun size!31483 (List!42130) Int)

(assert (=> b!3950885 (= lt!1381057 (size!31483 lt!1381052))))

(declare-fun e!2445337 () Bool)

(assert (=> b!3950885 e!2445337))

(declare-fun res!1598596 () Bool)

(assert (=> b!3950885 (=> (not res!1598596) (not e!2445337))))

(assert (=> b!3950885 (= res!1598596 (= (value!207993 (_1!23779 (v!39333 lt!1381058))) lt!1381071))))

(declare-fun apply!9805 (TokenValueInjection!13036 BalanceConc!25164) TokenValue!6804)

(declare-fun seqFromList!4833 (List!42130) BalanceConc!25164)

(assert (=> b!3950885 (= lt!1381071 (apply!9805 (transformation!6574 (rule!9542 (_1!23779 (v!39333 lt!1381058)))) (seqFromList!4833 lt!1381052)))))

(assert (=> b!3950885 (= (_2!23779 (v!39333 lt!1381058)) lt!1381059)))

(declare-fun lt!1381051 () Unit!60522)

(declare-fun lemmaSamePrefixThenSameSuffix!1872 (List!42130 List!42130 List!42130 List!42130 List!42130) Unit!60522)

(assert (=> b!3950885 (= lt!1381051 (lemmaSamePrefixThenSameSuffix!1872 lt!1381052 (_2!23779 (v!39333 lt!1381058)) lt!1381052 lt!1381059 lt!1381056))))

(declare-fun getSuffix!2114 (List!42130 List!42130) List!42130)

(assert (=> b!3950885 (= lt!1381059 (getSuffix!2114 lt!1381056 lt!1381052))))

(assert (=> b!3950885 (isPrefix!3663 lt!1381052 lt!1381062)))

(assert (=> b!3950885 (= lt!1381062 (++!10906 lt!1381052 (_2!23779 (v!39333 lt!1381058))))))

(declare-fun lt!1381064 () Unit!60522)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2522 (List!42130 List!42130) Unit!60522)

(assert (=> b!3950885 (= lt!1381064 (lemmaConcatTwoListThenFirstIsPrefix!2522 lt!1381052 (_2!23779 (v!39333 lt!1381058))))))

(declare-fun list!15602 (BalanceConc!25164) List!42130)

(declare-fun charsOf!4392 (Token!12286) BalanceConc!25164)

(assert (=> b!3950885 (= lt!1381052 (list!15602 (charsOf!4392 (_1!23779 (v!39333 lt!1381058)))))))

(declare-fun ruleValid!2516 (LexerInterface!6163 Rule!12948) Bool)

(assert (=> b!3950885 (ruleValid!2516 thiss!20629 (rule!9542 (_1!23779 (v!39333 lt!1381058))))))

(declare-fun lt!1381054 () Unit!60522)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1592 (LexerInterface!6163 Rule!12948 List!42132) Unit!60522)

(assert (=> b!3950885 (= lt!1381054 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1592 thiss!20629 (rule!9542 (_1!23779 (v!39333 lt!1381058))) rules!2768))))

(declare-fun lt!1381055 () Unit!60522)

(declare-fun lemmaCharactersSize!1227 (Token!12286) Unit!60522)

(assert (=> b!3950885 (= lt!1381055 (lemmaCharactersSize!1227 (_1!23779 (v!39333 lt!1381058))))))

(declare-fun b!3950886 () Bool)

(declare-fun res!1598589 () Bool)

(assert (=> b!3950886 (=> (not res!1598589) (not e!2445335))))

(declare-fun isEmpty!25089 (List!42131) Bool)

(assert (=> b!3950886 (= res!1598589 (not (isEmpty!25089 prefixTokens!80)))))

(declare-fun b!3950887 () Bool)

(assert (=> b!3950887 true))

(assert (=> b!3950887 e!2445308))

(assert (=> b!3950887 (= e!2445319 err!4425)))

(declare-fun bm!285215 () Bool)

(declare-fun call!285220 () Option!8994)

(declare-fun maxPrefixOneRule!2521 (LexerInterface!6163 Rule!12948 List!42130) Option!8994)

(assert (=> bm!285215 (= call!285220 (maxPrefixOneRule!2521 thiss!20629 (h!47428 rules!2768) lt!1381056))))

(declare-fun e!2445311 () Bool)

(declare-fun tp!1203488 () Bool)

(declare-fun b!3950888 () Bool)

(assert (=> b!3950888 (= e!2445311 (and tp!1203488 (inv!56232 (tag!7434 (h!47428 rules!2768))) (inv!56235 (transformation!6574 (h!47428 rules!2768))) e!2445329))))

(declare-fun b!3950889 () Bool)

(declare-fun e!2445309 () Bool)

(assert (=> b!3950889 (= e!2445315 e!2445309)))

(declare-fun res!1598592 () Bool)

(assert (=> b!3950889 (=> res!1598592 e!2445309)))

(assert (=> b!3950889 (= res!1598592 (or (not (= lt!1381053 (tuple2!41293 lt!1381060 (_2!23780 lt!1381066)))) (not (= lt!1381066 (tuple2!41293 (_1!23780 lt!1381066) (_2!23780 lt!1381066)))) (not (= (_2!23779 (v!39333 lt!1381058)) suffix!1176))))))

(assert (=> b!3950889 (= lt!1381060 (++!10905 lt!1381063 (_1!23780 lt!1381066)))))

(assert (=> b!3950889 (= lt!1381063 (Cons!42007 (_1!23779 (v!39333 lt!1381058)) Nil!42007))))

(declare-fun b!3950890 () Bool)

(declare-fun lt!1381061 () Option!8994)

(assert (=> b!3950890 (= lt!1381061 (maxPrefix!3467 thiss!20629 (t!328633 rules!2768) lt!1381056))))

(declare-fun lt!1381067 () Option!8994)

(assert (=> b!3950890 (= lt!1381067 call!285220)))

(assert (=> b!3950890 (= e!2445319 (ite (and ((_ is None!8993) lt!1381067) ((_ is None!8993) lt!1381061)) None!8993 (ite ((_ is None!8993) lt!1381061) lt!1381067 (ite ((_ is None!8993) lt!1381067) lt!1381061 (ite (>= (size!31482 (_1!23779 (v!39333 lt!1381067))) (size!31482 (_1!23779 (v!39333 lt!1381061)))) (Some!8993 (v!39333 lt!1381067)) lt!1381061)))))))

(declare-fun b!3950891 () Bool)

(declare-fun tp!1203494 () Bool)

(declare-fun e!2445324 () Bool)

(declare-fun e!2445330 () Bool)

(assert (=> b!3950891 (= e!2445324 (and tp!1203494 (inv!56232 (tag!7434 (rule!9542 (h!47427 prefixTokens!80)))) (inv!56235 (transformation!6574 (rule!9542 (h!47427 prefixTokens!80)))) e!2445330))))

(declare-fun tp!1203478 () Bool)

(declare-fun e!2445314 () Bool)

(declare-fun b!3950892 () Bool)

(assert (=> b!3950892 (= e!2445314 (and (inv!56236 (h!47427 suffixTokens!72)) e!2445307 tp!1203478))))

(declare-fun b!3950893 () Bool)

(declare-fun res!1598594 () Bool)

(assert (=> b!3950893 (=> (not res!1598594) (not e!2445335))))

(declare-fun isEmpty!25090 (List!42132) Bool)

(assert (=> b!3950893 (= res!1598594 (not (isEmpty!25090 rules!2768)))))

(declare-fun res!1598588 () Bool)

(assert (=> start!371468 (=> (not res!1598588) (not e!2445335))))

(assert (=> start!371468 (= res!1598588 ((_ is Lexer!6161) thiss!20629))))

(assert (=> start!371468 e!2445335))

(declare-fun e!2445334 () Bool)

(assert (=> start!371468 e!2445334))

(assert (=> start!371468 true))

(assert (=> start!371468 e!2445318))

(declare-fun e!2445328 () Bool)

(assert (=> start!371468 e!2445328))

(assert (=> start!371468 e!2445338))

(assert (=> start!371468 e!2445314))

(assert (=> start!371468 e!2445303))

(assert (=> b!3950874 (= e!2445330 (and tp!1203480 tp!1203492))))

(declare-fun b!3950894 () Bool)

(declare-fun tp!1203481 () Bool)

(assert (=> b!3950894 (= e!2445334 (and tp_is_empty!19929 tp!1203481))))

(assert (=> b!3950895 (= e!2445325 (and tp!1203486 tp!1203485))))

(assert (=> b!3950896 (= e!2445332 (and tp!1203490 tp!1203482))))

(declare-fun b!3950897 () Bool)

(assert (=> b!3950897 (= e!2445336 call!285220)))

(declare-fun b!3950898 () Bool)

(declare-fun e!2445310 () Bool)

(assert (=> b!3950898 (= e!2445310 (= lt!1381058 e!2445336))))

(declare-fun c!686024 () Bool)

(assert (=> b!3950898 (= c!686024 (and ((_ is Cons!42008) rules!2768) ((_ is Nil!42008) (t!328633 rules!2768))))))

(declare-fun tp!1203476 () Bool)

(declare-fun b!3950899 () Bool)

(assert (=> b!3950899 (= e!2445323 (and (inv!21 (value!207993 (h!47427 prefixTokens!80))) e!2445324 tp!1203476))))

(declare-fun b!3950900 () Bool)

(assert (=> b!3950900 (= e!2445337 (= (size!31482 (_1!23779 (v!39333 lt!1381058))) (size!31483 (originalCharacters!7174 (_1!23779 (v!39333 lt!1381058))))))))

(declare-fun b!3950901 () Bool)

(declare-fun tp!1203473 () Bool)

(assert (=> b!3950901 (= e!2445328 (and e!2445311 tp!1203473))))

(declare-fun b!3950902 () Bool)

(assert (=> b!3950902 (= e!2445309 e!2445322)))

(declare-fun res!1598585 () Bool)

(assert (=> b!3950902 (=> res!1598585 e!2445322)))

(assert (=> b!3950902 (= res!1598585 (not (= lt!1381058 (Some!8993 (tuple2!41291 (_1!23779 (v!39333 lt!1381058)) (_2!23779 (v!39333 lt!1381058)))))))))

(assert (=> b!3950902 e!2445310))

(declare-fun res!1598595 () Bool)

(assert (=> b!3950902 (=> (not res!1598595) (not e!2445310))))

(assert (=> b!3950902 (= res!1598595 (isPrefix!3663 lt!1381056 lt!1381056))))

(declare-fun lt!1381068 () Unit!60522)

(declare-fun lemmaIsPrefixRefl!2314 (List!42130 List!42130) Unit!60522)

(assert (=> b!3950902 (= lt!1381068 (lemmaIsPrefixRefl!2314 lt!1381056 lt!1381056))))

(assert (=> b!3950902 (= lt!1381053 (tuple2!41293 (Cons!42007 (_1!23779 (v!39333 lt!1381058)) (_1!23780 lt!1381066)) (_2!23780 lt!1381066)))))

(assert (= (and start!371468 res!1598588) b!3950893))

(assert (= (and b!3950893 res!1598594) b!3950871))

(assert (= (and b!3950871 res!1598583) b!3950886))

(assert (= (and b!3950886 res!1598589) b!3950884))

(assert (= (and b!3950884 res!1598590) b!3950877))

(assert (= (and b!3950877 res!1598587) b!3950872))

(assert (= (and b!3950872 res!1598584) b!3950869))

(assert (= (and b!3950869 res!1598591) b!3950885))

(assert (= (and b!3950885 res!1598596) b!3950900))

(assert (= (and b!3950885 (not res!1598586)) b!3950889))

(assert (= (and b!3950889 (not res!1598592)) b!3950902))

(assert (= (and b!3950902 res!1598595) b!3950898))

(assert (= (and b!3950898 c!686024) b!3950897))

(assert (= (and b!3950898 (not c!686024)) b!3950882))

(assert (= (and b!3950882 c!686025) b!3950890))

(assert (= (and b!3950882 (not c!686025)) b!3950887))

(assert (= b!3950880 b!3950895))

(assert (= b!3950873 b!3950880))

(assert (= b!3950870 b!3950873))

(assert (= (and b!3950887 ((_ is Some!8993) err!4425)) b!3950870))

(assert (= (or b!3950897 b!3950890) bm!285215))

(assert (= (and b!3950902 (not res!1598585)) b!3950879))

(assert (= (and b!3950879 (not res!1598593)) b!3950876))

(assert (= (and start!371468 ((_ is Cons!42006) suffixResult!91)) b!3950894))

(assert (= (and start!371468 ((_ is Cons!42006) suffix!1176)) b!3950883))

(assert (= b!3950888 b!3950875))

(assert (= b!3950901 b!3950888))

(assert (= (and start!371468 ((_ is Cons!42008) rules!2768)) b!3950901))

(assert (= b!3950891 b!3950874))

(assert (= b!3950899 b!3950891))

(assert (= b!3950881 b!3950899))

(assert (= (and start!371468 ((_ is Cons!42007) prefixTokens!80)) b!3950881))

(assert (= b!3950867 b!3950896))

(assert (= b!3950868 b!3950867))

(assert (= b!3950892 b!3950868))

(assert (= (and start!371468 ((_ is Cons!42007) suffixTokens!72)) b!3950892))

(assert (= (and start!371468 ((_ is Cons!42006) prefix!426)) b!3950878))

(declare-fun m!4519727 () Bool)

(assert (=> b!3950892 m!4519727))

(declare-fun m!4519729 () Bool)

(assert (=> b!3950899 m!4519729))

(declare-fun m!4519731 () Bool)

(assert (=> b!3950868 m!4519731))

(declare-fun m!4519733 () Bool)

(assert (=> b!3950886 m!4519733))

(declare-fun m!4519735 () Bool)

(assert (=> b!3950885 m!4519735))

(declare-fun m!4519737 () Bool)

(assert (=> b!3950885 m!4519737))

(declare-fun m!4519739 () Bool)

(assert (=> b!3950885 m!4519739))

(declare-fun m!4519741 () Bool)

(assert (=> b!3950885 m!4519741))

(declare-fun m!4519743 () Bool)

(assert (=> b!3950885 m!4519743))

(declare-fun m!4519745 () Bool)

(assert (=> b!3950885 m!4519745))

(declare-fun m!4519747 () Bool)

(assert (=> b!3950885 m!4519747))

(assert (=> b!3950885 m!4519743))

(declare-fun m!4519749 () Bool)

(assert (=> b!3950885 m!4519749))

(declare-fun m!4519751 () Bool)

(assert (=> b!3950885 m!4519751))

(declare-fun m!4519753 () Bool)

(assert (=> b!3950885 m!4519753))

(assert (=> b!3950885 m!4519735))

(declare-fun m!4519755 () Bool)

(assert (=> b!3950885 m!4519755))

(declare-fun m!4519757 () Bool)

(assert (=> b!3950885 m!4519757))

(declare-fun m!4519759 () Bool)

(assert (=> b!3950885 m!4519759))

(declare-fun m!4519761 () Bool)

(assert (=> b!3950885 m!4519761))

(declare-fun m!4519763 () Bool)

(assert (=> b!3950888 m!4519763))

(declare-fun m!4519765 () Bool)

(assert (=> b!3950888 m!4519765))

(declare-fun m!4519767 () Bool)

(assert (=> b!3950876 m!4519767))

(declare-fun m!4519769 () Bool)

(assert (=> b!3950902 m!4519769))

(declare-fun m!4519771 () Bool)

(assert (=> b!3950902 m!4519771))

(declare-fun m!4519773 () Bool)

(assert (=> b!3950867 m!4519773))

(declare-fun m!4519775 () Bool)

(assert (=> b!3950867 m!4519775))

(declare-fun m!4519777 () Bool)

(assert (=> b!3950889 m!4519777))

(declare-fun m!4519779 () Bool)

(assert (=> bm!285215 m!4519779))

(declare-fun m!4519781 () Bool)

(assert (=> b!3950871 m!4519781))

(declare-fun m!4519783 () Bool)

(assert (=> b!3950881 m!4519783))

(declare-fun m!4519785 () Bool)

(assert (=> b!3950870 m!4519785))

(declare-fun m!4519787 () Bool)

(assert (=> b!3950884 m!4519787))

(declare-fun m!4519789 () Bool)

(assert (=> b!3950873 m!4519789))

(declare-fun m!4519791 () Bool)

(assert (=> b!3950880 m!4519791))

(declare-fun m!4519793 () Bool)

(assert (=> b!3950880 m!4519793))

(declare-fun m!4519795 () Bool)

(assert (=> b!3950872 m!4519795))

(declare-fun m!4519797 () Bool)

(assert (=> b!3950869 m!4519797))

(declare-fun m!4519799 () Bool)

(assert (=> b!3950877 m!4519799))

(declare-fun m!4519801 () Bool)

(assert (=> b!3950877 m!4519801))

(declare-fun m!4519803 () Bool)

(assert (=> b!3950877 m!4519803))

(declare-fun m!4519805 () Bool)

(assert (=> b!3950893 m!4519805))

(declare-fun m!4519807 () Bool)

(assert (=> b!3950900 m!4519807))

(declare-fun m!4519809 () Bool)

(assert (=> b!3950891 m!4519809))

(declare-fun m!4519811 () Bool)

(assert (=> b!3950891 m!4519811))

(declare-fun m!4519813 () Bool)

(assert (=> b!3950890 m!4519813))

(declare-fun m!4519815 () Bool)

(assert (=> b!3950879 m!4519815))

(check-sat (not b!3950888) (not b!3950885) b_and!302711 (not b!3950893) (not b_next!109251) (not b!3950890) (not b!3950892) (not b!3950884) (not b!3950899) (not b!3950879) b_and!302717 (not b_next!109253) (not b!3950891) b_and!302709 (not b!3950870) (not b_next!109255) b_and!302707 (not b!3950877) (not b!3950894) (not b!3950869) (not b_next!109257) b_and!302715 (not b_next!109249) (not b!3950900) (not b!3950878) (not b!3950902) (not b_next!109261) (not b!3950883) (not b!3950901) (not b!3950871) (not b!3950876) (not b!3950886) b_and!302719 (not b_next!109263) (not b_next!109259) (not b!3950872) b_and!302713 b_and!302721 (not b!3950880) tp_is_empty!19929 (not b!3950881) (not b!3950889) (not bm!285215) (not b!3950867) (not b!3950868) (not b!3950873))
(check-sat b_and!302709 b_and!302711 (not b_next!109257) (not b_next!109251) (not b_next!109261) b_and!302717 (not b_next!109253) (not b_next!109255) b_and!302707 b_and!302715 (not b_next!109249) b_and!302719 (not b_next!109263) (not b_next!109259) b_and!302713 b_and!302721)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297766 () Bool)

(assert start!297766)

(declare-fun b!3179269 () Bool)

(declare-fun b_free!83729 () Bool)

(declare-fun b_next!84433 () Bool)

(assert (=> b!3179269 (= b_free!83729 (not b_next!84433))))

(declare-fun tp!1005826 () Bool)

(declare-fun b_and!210059 () Bool)

(assert (=> b!3179269 (= tp!1005826 b_and!210059)))

(declare-fun b_free!83731 () Bool)

(declare-fun b_next!84435 () Bool)

(assert (=> b!3179269 (= b_free!83731 (not b_next!84435))))

(declare-fun tp!1005831 () Bool)

(declare-fun b_and!210061 () Bool)

(assert (=> b!3179269 (= tp!1005831 b_and!210061)))

(declare-fun b!3179283 () Bool)

(declare-fun b_free!83733 () Bool)

(declare-fun b_next!84437 () Bool)

(assert (=> b!3179283 (= b_free!83733 (not b_next!84437))))

(declare-fun tp!1005830 () Bool)

(declare-fun b_and!210063 () Bool)

(assert (=> b!3179283 (= tp!1005830 b_and!210063)))

(declare-fun b_free!83735 () Bool)

(declare-fun b_next!84439 () Bool)

(assert (=> b!3179283 (= b_free!83735 (not b_next!84439))))

(declare-fun tp!1005835 () Bool)

(declare-fun b_and!210065 () Bool)

(assert (=> b!3179283 (= tp!1005835 b_and!210065)))

(declare-fun b!3179277 () Bool)

(declare-fun b_free!83737 () Bool)

(declare-fun b_next!84441 () Bool)

(assert (=> b!3179277 (= b_free!83737 (not b_next!84441))))

(declare-fun tp!1005838 () Bool)

(declare-fun b_and!210067 () Bool)

(assert (=> b!3179277 (= tp!1005838 b_and!210067)))

(declare-fun b_free!83739 () Bool)

(declare-fun b_next!84443 () Bool)

(assert (=> b!3179277 (= b_free!83739 (not b_next!84443))))

(declare-fun tp!1005833 () Bool)

(declare-fun b_and!210069 () Bool)

(assert (=> b!3179277 (= tp!1005833 b_and!210069)))

(declare-fun b!3179267 () Bool)

(declare-fun e!1980528 () Bool)

(declare-fun e!1980511 () Bool)

(assert (=> b!3179267 (= e!1980528 e!1980511)))

(declare-fun res!1291837 () Bool)

(assert (=> b!3179267 (=> res!1291837 e!1980511)))

(declare-datatypes ((C!19924 0))(
  ( (C!19925 (val!12010 Int)) )
))
(declare-datatypes ((List!35818 0))(
  ( (Nil!35694) (Cons!35694 (h!41114 C!19924) (t!234989 List!35818)) )
))
(declare-fun lt!1068509 () List!35818)

(declare-fun lt!1068511 () List!35818)

(declare-fun lt!1068507 () List!35818)

(assert (=> b!3179267 (= res!1291837 (or (not (= lt!1068507 lt!1068509)) (not (= lt!1068511 lt!1068509))))))

(declare-datatypes ((Regex!9869 0))(
  ( (ElementMatch!9869 (c!534098 C!19924)) (Concat!15209 (regOne!20250 Regex!9869) (regTwo!20250 Regex!9869)) (EmptyExpr!9869) (Star!9869 (reg!10198 Regex!9869)) (EmptyLang!9869) (Union!9869 (regOne!20251 Regex!9869) (regTwo!20251 Regex!9869)) )
))
(declare-datatypes ((List!35819 0))(
  ( (Nil!35695) (Cons!35695 (h!41115 (_ BitVec 16)) (t!234990 List!35819)) )
))
(declare-datatypes ((TokenValue!5340 0))(
  ( (FloatLiteralValue!10680 (text!37825 List!35819)) (TokenValueExt!5339 (__x!22897 Int)) (Broken!26700 (value!166069 List!35819)) (Object!5463) (End!5340) (Def!5340) (Underscore!5340) (Match!5340) (Else!5340) (Error!5340) (Case!5340) (If!5340) (Extends!5340) (Abstract!5340) (Class!5340) (Val!5340) (DelimiterValue!10680 (del!5400 List!35819)) (KeywordValue!5346 (value!166070 List!35819)) (CommentValue!10680 (value!166071 List!35819)) (WhitespaceValue!10680 (value!166072 List!35819)) (IndentationValue!5340 (value!166073 List!35819)) (String!40033) (Int32!5340) (Broken!26701 (value!166074 List!35819)) (Boolean!5341) (Unit!50111) (OperatorValue!5343 (op!5400 List!35819)) (IdentifierValue!10680 (value!166075 List!35819)) (IdentifierValue!10681 (value!166076 List!35819)) (WhitespaceValue!10681 (value!166077 List!35819)) (True!10680) (False!10680) (Broken!26702 (value!166078 List!35819)) (Broken!26703 (value!166079 List!35819)) (True!10681) (RightBrace!5340) (RightBracket!5340) (Colon!5340) (Null!5340) (Comma!5340) (LeftBracket!5340) (False!10681) (LeftBrace!5340) (ImaginaryLiteralValue!5340 (text!37826 List!35819)) (StringLiteralValue!16020 (value!166080 List!35819)) (EOFValue!5340 (value!166081 List!35819)) (IdentValue!5340 (value!166082 List!35819)) (DelimiterValue!10681 (value!166083 List!35819)) (DedentValue!5340 (value!166084 List!35819)) (NewLineValue!5340 (value!166085 List!35819)) (IntegerValue!16020 (value!166086 (_ BitVec 32)) (text!37827 List!35819)) (IntegerValue!16021 (value!166087 Int) (text!37828 List!35819)) (Times!5340) (Or!5340) (Equal!5340) (Minus!5340) (Broken!26704 (value!166088 List!35819)) (And!5340) (Div!5340) (LessEqual!5340) (Mod!5340) (Concat!15210) (Not!5340) (Plus!5340) (SpaceValue!5340 (value!166089 List!35819)) (IntegerValue!16022 (value!166090 Int) (text!37829 List!35819)) (StringLiteralValue!16021 (text!37830 List!35819)) (FloatLiteralValue!10681 (text!37831 List!35819)) (BytesLiteralValue!5340 (value!166091 List!35819)) (CommentValue!10681 (value!166092 List!35819)) (StringLiteralValue!16022 (value!166093 List!35819)) (ErrorTokenValue!5340 (msg!5401 List!35819)) )
))
(declare-datatypes ((IArray!21195 0))(
  ( (IArray!21196 (innerList!10655 List!35818)) )
))
(declare-datatypes ((Conc!10595 0))(
  ( (Node!10595 (left!27764 Conc!10595) (right!28094 Conc!10595) (csize!21420 Int) (cheight!10806 Int)) (Leaf!16761 (xs!13713 IArray!21195) (csize!21421 Int)) (Empty!10595) )
))
(declare-datatypes ((BalanceConc!20804 0))(
  ( (BalanceConc!20805 (c!534099 Conc!10595)) )
))
(declare-datatypes ((String!40034 0))(
  ( (String!40035 (value!166094 String)) )
))
(declare-datatypes ((TokenValueInjection!10108 0))(
  ( (TokenValueInjection!10109 (toValue!7170 Int) (toChars!7029 Int)) )
))
(declare-datatypes ((Rule!10020 0))(
  ( (Rule!10021 (regex!5110 Regex!9869) (tag!5614 String!40034) (isSeparator!5110 Bool) (transformation!5110 TokenValueInjection!10108)) )
))
(declare-datatypes ((Token!9586 0))(
  ( (Token!9587 (value!166095 TokenValue!5340) (rule!7520 Rule!10020) (size!26945 Int) (originalCharacters!5824 List!35818)) )
))
(declare-datatypes ((List!35820 0))(
  ( (Nil!35696) (Cons!35696 (h!41116 Token!9586) (t!234991 List!35820)) )
))
(declare-fun tokens!494 () List!35820)

(declare-fun list!12667 (BalanceConc!20804) List!35818)

(declare-fun charsOf!3132 (Token!9586) BalanceConc!20804)

(assert (=> b!3179267 (= lt!1068509 (list!12667 (charsOf!3132 (h!41116 tokens!494))))))

(declare-fun e!1980520 () Bool)

(declare-fun tp!1005832 () Bool)

(declare-datatypes ((List!35821 0))(
  ( (Nil!35697) (Cons!35697 (h!41117 Rule!10020) (t!234992 List!35821)) )
))
(declare-fun rules!2135 () List!35821)

(declare-fun e!1980517 () Bool)

(declare-fun b!3179268 () Bool)

(declare-fun inv!48545 (String!40034) Bool)

(declare-fun inv!48548 (TokenValueInjection!10108) Bool)

(assert (=> b!3179268 (= e!1980520 (and tp!1005832 (inv!48545 (tag!5614 (h!41117 rules!2135))) (inv!48548 (transformation!5110 (h!41117 rules!2135))) e!1980517))))

(assert (=> b!3179269 (= e!1980517 (and tp!1005826 tp!1005831))))

(declare-fun b!3179270 () Bool)

(declare-fun res!1291831 () Bool)

(declare-fun e!1980529 () Bool)

(assert (=> b!3179270 (=> (not res!1291831) (not e!1980529))))

(declare-fun separatorToken!241 () Token!9586)

(assert (=> b!3179270 (= res!1291831 (isSeparator!5110 (rule!7520 separatorToken!241)))))

(declare-fun e!1980512 () Bool)

(declare-fun e!1980530 () Bool)

(declare-fun b!3179266 () Bool)

(declare-fun tp!1005834 () Bool)

(declare-fun inv!21 (TokenValue!5340) Bool)

(assert (=> b!3179266 (= e!1980512 (and (inv!21 (value!166095 separatorToken!241)) e!1980530 tp!1005834))))

(declare-fun res!1291827 () Bool)

(declare-fun e!1980523 () Bool)

(assert (=> start!297766 (=> (not res!1291827) (not e!1980523))))

(declare-datatypes ((LexerInterface!4699 0))(
  ( (LexerInterfaceExt!4696 (__x!22898 Int)) (Lexer!4697) )
))
(declare-fun thiss!18206 () LexerInterface!4699)

(get-info :version)

(assert (=> start!297766 (= res!1291827 ((_ is Lexer!4697) thiss!18206))))

(assert (=> start!297766 e!1980523))

(assert (=> start!297766 true))

(declare-fun e!1980521 () Bool)

(assert (=> start!297766 e!1980521))

(declare-fun inv!48549 (Token!9586) Bool)

(assert (=> start!297766 (and (inv!48549 separatorToken!241) e!1980512)))

(declare-fun e!1980513 () Bool)

(assert (=> start!297766 e!1980513))

(declare-fun b!3179271 () Bool)

(declare-fun tp!1005828 () Bool)

(assert (=> b!3179271 (= e!1980521 (and e!1980520 tp!1005828))))

(declare-fun e!1980526 () Bool)

(declare-fun tp!1005827 () Bool)

(declare-fun b!3179272 () Bool)

(assert (=> b!3179272 (= e!1980513 (and (inv!48549 (h!41116 tokens!494)) e!1980526 tp!1005827))))

(declare-fun e!1980527 () Bool)

(declare-fun tp!1005829 () Bool)

(declare-fun b!3179273 () Bool)

(assert (=> b!3179273 (= e!1980526 (and (inv!21 (value!166095 (h!41116 tokens!494))) e!1980527 tp!1005829))))

(declare-fun b!3179274 () Bool)

(assert (=> b!3179274 (= e!1980529 (not e!1980528))))

(declare-fun res!1291829 () Bool)

(assert (=> b!3179274 (=> res!1291829 e!1980528)))

(assert (=> b!3179274 (= res!1291829 (not (= lt!1068511 lt!1068507)))))

(declare-fun printList!1253 (LexerInterface!4699 List!35820) List!35818)

(assert (=> b!3179274 (= lt!1068507 (printList!1253 thiss!18206 (Cons!35696 (h!41116 tokens!494) Nil!35696)))))

(declare-fun lt!1068510 () BalanceConc!20804)

(assert (=> b!3179274 (= lt!1068511 (list!12667 lt!1068510))))

(declare-datatypes ((IArray!21197 0))(
  ( (IArray!21198 (innerList!10656 List!35820)) )
))
(declare-datatypes ((Conc!10596 0))(
  ( (Node!10596 (left!27765 Conc!10596) (right!28095 Conc!10596) (csize!21422 Int) (cheight!10807 Int)) (Leaf!16762 (xs!13714 IArray!21197) (csize!21423 Int)) (Empty!10596) )
))
(declare-datatypes ((BalanceConc!20806 0))(
  ( (BalanceConc!20807 (c!534100 Conc!10596)) )
))
(declare-fun lt!1068508 () BalanceConc!20806)

(declare-fun printTailRec!1198 (LexerInterface!4699 BalanceConc!20806 Int BalanceConc!20804) BalanceConc!20804)

(assert (=> b!3179274 (= lt!1068510 (printTailRec!1198 thiss!18206 lt!1068508 0 (BalanceConc!20805 Empty!10595)))))

(declare-fun print!1766 (LexerInterface!4699 BalanceConc!20806) BalanceConc!20804)

(assert (=> b!3179274 (= lt!1068510 (print!1766 thiss!18206 lt!1068508))))

(declare-fun singletonSeq!2206 (Token!9586) BalanceConc!20806)

(assert (=> b!3179274 (= lt!1068508 (singletonSeq!2206 (h!41116 tokens!494)))))

(declare-fun b!3179275 () Bool)

(assert (=> b!3179275 (= e!1980523 e!1980529)))

(declare-fun res!1291841 () Bool)

(assert (=> b!3179275 (=> (not res!1291841) (not e!1980529))))

(declare-fun lt!1068514 () BalanceConc!20806)

(declare-fun rulesProduceEachTokenIndividually!1150 (LexerInterface!4699 List!35821 BalanceConc!20806) Bool)

(assert (=> b!3179275 (= res!1291841 (rulesProduceEachTokenIndividually!1150 thiss!18206 rules!2135 lt!1068514))))

(declare-fun seqFromList!3299 (List!35820) BalanceConc!20806)

(assert (=> b!3179275 (= lt!1068514 (seqFromList!3299 tokens!494))))

(declare-fun b!3179276 () Bool)

(declare-fun e!1980515 () Bool)

(assert (=> b!3179276 (= e!1980515 true)))

(declare-datatypes ((tuple2!35022 0))(
  ( (tuple2!35023 (_1!20645 Token!9586) (_2!20645 List!35818)) )
))
(declare-datatypes ((Option!6952 0))(
  ( (None!6951) (Some!6951 (v!35391 tuple2!35022)) )
))
(declare-fun lt!1068512 () Option!6952)

(declare-fun maxPrefix!2389 (LexerInterface!4699 List!35821 List!35818) Option!6952)

(assert (=> b!3179276 (= lt!1068512 (maxPrefix!2389 thiss!18206 rules!2135 lt!1068509))))

(declare-datatypes ((Unit!50112 0))(
  ( (Unit!50113) )
))
(declare-fun lt!1068513 () Unit!50112)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!760 (LexerInterface!4699 List!35821 List!35820 Token!9586) Unit!50112)

(assert (=> b!3179276 (= lt!1068513 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!760 thiss!18206 rules!2135 tokens!494 (h!41116 tokens!494)))))

(declare-fun isEmpty!19809 (List!35818) Bool)

(declare-fun getSuffix!1326 (List!35818 List!35818) List!35818)

(assert (=> b!3179276 (isEmpty!19809 (getSuffix!1326 lt!1068509 lt!1068509))))

(declare-fun lt!1068515 () Unit!50112)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!4 (List!35818) Unit!50112)

(assert (=> b!3179276 (= lt!1068515 (lemmaGetSuffixOnListWithItSelfIsEmpty!4 lt!1068509))))

(declare-fun e!1980514 () Bool)

(assert (=> b!3179277 (= e!1980514 (and tp!1005838 tp!1005833))))

(declare-fun b!3179278 () Bool)

(declare-fun res!1291835 () Bool)

(assert (=> b!3179278 (=> (not res!1291835) (not e!1980529))))

(declare-fun sepAndNonSepRulesDisjointChars!1304 (List!35821 List!35821) Bool)

(assert (=> b!3179278 (= res!1291835 (sepAndNonSepRulesDisjointChars!1304 rules!2135 rules!2135))))

(declare-fun b!3179279 () Bool)

(declare-fun res!1291840 () Bool)

(assert (=> b!3179279 (=> (not res!1291840) (not e!1980523))))

(declare-fun isEmpty!19810 (List!35821) Bool)

(assert (=> b!3179279 (= res!1291840 (not (isEmpty!19810 rules!2135)))))

(declare-fun b!3179280 () Bool)

(declare-fun res!1291828 () Bool)

(assert (=> b!3179280 (=> (not res!1291828) (not e!1980529))))

(declare-fun rulesProduceIndividualToken!2191 (LexerInterface!4699 List!35821 Token!9586) Bool)

(assert (=> b!3179280 (= res!1291828 (rulesProduceIndividualToken!2191 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3179281 () Bool)

(assert (=> b!3179281 (= e!1980511 e!1980515)))

(declare-fun res!1291832 () Bool)

(assert (=> b!3179281 (=> res!1291832 e!1980515)))

(assert (=> b!3179281 (= res!1291832 (isSeparator!5110 (rule!7520 (h!41116 tokens!494))))))

(declare-fun lt!1068516 () Unit!50112)

(declare-fun lambda!116343 () Int)

(declare-fun forallContained!1093 (List!35820 Int Token!9586) Unit!50112)

(assert (=> b!3179281 (= lt!1068516 (forallContained!1093 tokens!494 lambda!116343 (h!41116 tokens!494)))))

(declare-fun b!3179282 () Bool)

(declare-fun res!1291830 () Bool)

(assert (=> b!3179282 (=> res!1291830 e!1980511)))

(assert (=> b!3179282 (= res!1291830 (not (rulesProduceIndividualToken!2191 thiss!18206 rules!2135 (h!41116 tokens!494))))))

(declare-fun e!1980524 () Bool)

(assert (=> b!3179283 (= e!1980524 (and tp!1005830 tp!1005835))))

(declare-fun b!3179284 () Bool)

(declare-fun res!1291839 () Bool)

(assert (=> b!3179284 (=> res!1291839 e!1980511)))

(declare-fun isEmpty!19811 (BalanceConc!20806) Bool)

(declare-datatypes ((tuple2!35024 0))(
  ( (tuple2!35025 (_1!20646 BalanceConc!20806) (_2!20646 BalanceConc!20804)) )
))
(declare-fun lex!2039 (LexerInterface!4699 List!35821 BalanceConc!20804) tuple2!35024)

(declare-fun seqFromList!3300 (List!35818) BalanceConc!20804)

(assert (=> b!3179284 (= res!1291839 (isEmpty!19811 (_1!20646 (lex!2039 thiss!18206 rules!2135 (seqFromList!3300 lt!1068509)))))))

(declare-fun b!3179285 () Bool)

(declare-fun res!1291833 () Bool)

(assert (=> b!3179285 (=> res!1291833 e!1980515)))

(declare-fun printWithSeparatorToken!8 (LexerInterface!4699 BalanceConc!20806 Token!9586) BalanceConc!20804)

(declare-fun ++!8530 (List!35818 List!35818) List!35818)

(assert (=> b!3179285 (= res!1291833 (not (= (list!12667 (printWithSeparatorToken!8 thiss!18206 lt!1068514 separatorToken!241)) (++!8530 lt!1068509 (list!12667 (charsOf!3132 separatorToken!241))))))))

(declare-fun b!3179286 () Bool)

(declare-fun tp!1005836 () Bool)

(assert (=> b!3179286 (= e!1980530 (and tp!1005836 (inv!48545 (tag!5614 (rule!7520 separatorToken!241))) (inv!48548 (transformation!5110 (rule!7520 separatorToken!241))) e!1980524))))

(declare-fun b!3179287 () Bool)

(declare-fun res!1291834 () Bool)

(assert (=> b!3179287 (=> (not res!1291834) (not e!1980523))))

(declare-fun rulesInvariant!4096 (LexerInterface!4699 List!35821) Bool)

(assert (=> b!3179287 (= res!1291834 (rulesInvariant!4096 thiss!18206 rules!2135))))

(declare-fun b!3179288 () Bool)

(declare-fun res!1291836 () Bool)

(assert (=> b!3179288 (=> (not res!1291836) (not e!1980529))))

(assert (=> b!3179288 (= res!1291836 (and (not ((_ is Nil!35696) tokens!494)) ((_ is Nil!35696) (t!234991 tokens!494))))))

(declare-fun b!3179289 () Bool)

(declare-fun res!1291838 () Bool)

(assert (=> b!3179289 (=> (not res!1291838) (not e!1980529))))

(declare-fun forall!7220 (List!35820 Int) Bool)

(assert (=> b!3179289 (= res!1291838 (forall!7220 tokens!494 lambda!116343))))

(declare-fun tp!1005837 () Bool)

(declare-fun b!3179290 () Bool)

(assert (=> b!3179290 (= e!1980527 (and tp!1005837 (inv!48545 (tag!5614 (rule!7520 (h!41116 tokens!494)))) (inv!48548 (transformation!5110 (rule!7520 (h!41116 tokens!494)))) e!1980514))))

(assert (= (and start!297766 res!1291827) b!3179279))

(assert (= (and b!3179279 res!1291840) b!3179287))

(assert (= (and b!3179287 res!1291834) b!3179275))

(assert (= (and b!3179275 res!1291841) b!3179280))

(assert (= (and b!3179280 res!1291828) b!3179270))

(assert (= (and b!3179270 res!1291831) b!3179289))

(assert (= (and b!3179289 res!1291838) b!3179278))

(assert (= (and b!3179278 res!1291835) b!3179288))

(assert (= (and b!3179288 res!1291836) b!3179274))

(assert (= (and b!3179274 (not res!1291829)) b!3179267))

(assert (= (and b!3179267 (not res!1291837)) b!3179282))

(assert (= (and b!3179282 (not res!1291830)) b!3179284))

(assert (= (and b!3179284 (not res!1291839)) b!3179281))

(assert (= (and b!3179281 (not res!1291832)) b!3179285))

(assert (= (and b!3179285 (not res!1291833)) b!3179276))

(assert (= b!3179268 b!3179269))

(assert (= b!3179271 b!3179268))

(assert (= (and start!297766 ((_ is Cons!35697) rules!2135)) b!3179271))

(assert (= b!3179286 b!3179283))

(assert (= b!3179266 b!3179286))

(assert (= start!297766 b!3179266))

(assert (= b!3179290 b!3179277))

(assert (= b!3179273 b!3179290))

(assert (= b!3179272 b!3179273))

(assert (= (and start!297766 ((_ is Cons!35696) tokens!494)) b!3179272))

(declare-fun m!3435729 () Bool)

(assert (=> b!3179281 m!3435729))

(declare-fun m!3435731 () Bool)

(assert (=> b!3179279 m!3435731))

(declare-fun m!3435733 () Bool)

(assert (=> b!3179286 m!3435733))

(declare-fun m!3435735 () Bool)

(assert (=> b!3179286 m!3435735))

(declare-fun m!3435737 () Bool)

(assert (=> b!3179272 m!3435737))

(declare-fun m!3435739 () Bool)

(assert (=> b!3179278 m!3435739))

(declare-fun m!3435741 () Bool)

(assert (=> b!3179273 m!3435741))

(declare-fun m!3435743 () Bool)

(assert (=> b!3179289 m!3435743))

(declare-fun m!3435745 () Bool)

(assert (=> b!3179280 m!3435745))

(declare-fun m!3435747 () Bool)

(assert (=> b!3179284 m!3435747))

(assert (=> b!3179284 m!3435747))

(declare-fun m!3435749 () Bool)

(assert (=> b!3179284 m!3435749))

(declare-fun m!3435751 () Bool)

(assert (=> b!3179284 m!3435751))

(declare-fun m!3435753 () Bool)

(assert (=> b!3179275 m!3435753))

(declare-fun m!3435755 () Bool)

(assert (=> b!3179275 m!3435755))

(declare-fun m!3435757 () Bool)

(assert (=> b!3179290 m!3435757))

(declare-fun m!3435759 () Bool)

(assert (=> b!3179290 m!3435759))

(declare-fun m!3435761 () Bool)

(assert (=> b!3179282 m!3435761))

(declare-fun m!3435763 () Bool)

(assert (=> start!297766 m!3435763))

(declare-fun m!3435765 () Bool)

(assert (=> b!3179276 m!3435765))

(declare-fun m!3435767 () Bool)

(assert (=> b!3179276 m!3435767))

(declare-fun m!3435769 () Bool)

(assert (=> b!3179276 m!3435769))

(declare-fun m!3435771 () Bool)

(assert (=> b!3179276 m!3435771))

(declare-fun m!3435773 () Bool)

(assert (=> b!3179276 m!3435773))

(assert (=> b!3179276 m!3435767))

(declare-fun m!3435775 () Bool)

(assert (=> b!3179287 m!3435775))

(declare-fun m!3435777 () Bool)

(assert (=> b!3179266 m!3435777))

(declare-fun m!3435779 () Bool)

(assert (=> b!3179285 m!3435779))

(declare-fun m!3435781 () Bool)

(assert (=> b!3179285 m!3435781))

(declare-fun m!3435783 () Bool)

(assert (=> b!3179285 m!3435783))

(declare-fun m!3435785 () Bool)

(assert (=> b!3179285 m!3435785))

(declare-fun m!3435787 () Bool)

(assert (=> b!3179285 m!3435787))

(assert (=> b!3179285 m!3435781))

(assert (=> b!3179285 m!3435779))

(assert (=> b!3179285 m!3435785))

(declare-fun m!3435789 () Bool)

(assert (=> b!3179267 m!3435789))

(assert (=> b!3179267 m!3435789))

(declare-fun m!3435791 () Bool)

(assert (=> b!3179267 m!3435791))

(declare-fun m!3435793 () Bool)

(assert (=> b!3179274 m!3435793))

(declare-fun m!3435795 () Bool)

(assert (=> b!3179274 m!3435795))

(declare-fun m!3435797 () Bool)

(assert (=> b!3179274 m!3435797))

(declare-fun m!3435799 () Bool)

(assert (=> b!3179274 m!3435799))

(declare-fun m!3435801 () Bool)

(assert (=> b!3179274 m!3435801))

(declare-fun m!3435803 () Bool)

(assert (=> b!3179268 m!3435803))

(declare-fun m!3435805 () Bool)

(assert (=> b!3179268 m!3435805))

(check-sat (not b_next!84437) (not b_next!84443) (not b!3179289) (not b!3179276) b_and!210065 (not b_next!84441) (not b!3179279) b_and!210059 (not b!3179267) (not b!3179282) (not b!3179266) (not b!3179290) (not b!3179275) (not b!3179284) (not b!3179273) (not b_next!84433) (not b!3179286) (not b!3179285) (not b!3179280) (not b_next!84435) (not b!3179278) b_and!210067 (not b!3179287) (not start!297766) (not b!3179274) (not b!3179268) b_and!210061 (not b!3179281) b_and!210063 (not b!3179271) (not b!3179272) b_and!210069 (not b_next!84439))
(check-sat (not b_next!84433) (not b_next!84437) (not b_next!84443) b_and!210065 (not b_next!84441) (not b_next!84435) b_and!210059 b_and!210067 b_and!210061 b_and!210063 b_and!210069 (not b_next!84439))

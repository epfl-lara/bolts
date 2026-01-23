; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32754 () Bool)

(assert start!32754)

(declare-fun b!303998 () Bool)

(declare-fun b_free!10793 () Bool)

(declare-fun b_next!10793 () Bool)

(assert (=> b!303998 (= b_free!10793 (not b_next!10793))))

(declare-fun tp!108096 () Bool)

(declare-fun b_and!25645 () Bool)

(assert (=> b!303998 (= tp!108096 b_and!25645)))

(declare-fun b_free!10795 () Bool)

(declare-fun b_next!10795 () Bool)

(assert (=> b!303998 (= b_free!10795 (not b_next!10795))))

(declare-fun tp!108093 () Bool)

(declare-fun b_and!25647 () Bool)

(assert (=> b!303998 (= tp!108093 b_and!25647)))

(declare-fun b!304001 () Bool)

(declare-fun b_free!10797 () Bool)

(declare-fun b_next!10797 () Bool)

(assert (=> b!304001 (= b_free!10797 (not b_next!10797))))

(declare-fun tp!108104 () Bool)

(declare-fun b_and!25649 () Bool)

(assert (=> b!304001 (= tp!108104 b_and!25649)))

(declare-fun b_free!10799 () Bool)

(declare-fun b_next!10799 () Bool)

(assert (=> b!304001 (= b_free!10799 (not b_next!10799))))

(declare-fun tp!108095 () Bool)

(declare-fun b_and!25651 () Bool)

(assert (=> b!304001 (= tp!108095 b_and!25651)))

(declare-fun b!303996 () Bool)

(declare-fun b_free!10801 () Bool)

(declare-fun b_next!10801 () Bool)

(assert (=> b!303996 (= b_free!10801 (not b_next!10801))))

(declare-fun tp!108103 () Bool)

(declare-fun b_and!25653 () Bool)

(assert (=> b!303996 (= tp!108103 b_and!25653)))

(declare-fun b_free!10803 () Bool)

(declare-fun b_next!10803 () Bool)

(assert (=> b!303996 (= b_free!10803 (not b_next!10803))))

(declare-fun tp!108101 () Bool)

(declare-fun b_and!25655 () Bool)

(assert (=> b!303996 (= tp!108101 b_and!25655)))

(declare-fun bs!35256 () Bool)

(declare-fun b!303981 () Bool)

(declare-fun b!303979 () Bool)

(assert (= bs!35256 (and b!303981 b!303979)))

(declare-fun lambda!10324 () Int)

(declare-fun lambda!10323 () Int)

(assert (=> bs!35256 (not (= lambda!10324 lambda!10323))))

(declare-fun b!304020 () Bool)

(declare-fun e!188760 () Bool)

(assert (=> b!304020 (= e!188760 true)))

(declare-fun b!304019 () Bool)

(declare-fun e!188759 () Bool)

(assert (=> b!304019 (= e!188759 e!188760)))

(declare-fun b!304018 () Bool)

(declare-fun e!188758 () Bool)

(assert (=> b!304018 (= e!188758 e!188759)))

(assert (=> b!303981 e!188758))

(assert (= b!304019 b!304020))

(assert (= b!304018 b!304019))

(declare-datatypes ((List!4002 0))(
  ( (Nil!3992) (Cons!3992 (h!9389 (_ BitVec 16)) (t!43074 List!4002)) )
))
(declare-datatypes ((TokenValue!787 0))(
  ( (FloatLiteralValue!1574 (text!5954 List!4002)) (TokenValueExt!786 (__x!3061 Int)) (Broken!3935 (value!26092 List!4002)) (Object!796) (End!787) (Def!787) (Underscore!787) (Match!787) (Else!787) (Error!787) (Case!787) (If!787) (Extends!787) (Abstract!787) (Class!787) (Val!787) (DelimiterValue!1574 (del!847 List!4002)) (KeywordValue!793 (value!26093 List!4002)) (CommentValue!1574 (value!26094 List!4002)) (WhitespaceValue!1574 (value!26095 List!4002)) (IndentationValue!787 (value!26096 List!4002)) (String!5014) (Int32!787) (Broken!3936 (value!26097 List!4002)) (Boolean!788) (Unit!5603) (OperatorValue!790 (op!847 List!4002)) (IdentifierValue!1574 (value!26098 List!4002)) (IdentifierValue!1575 (value!26099 List!4002)) (WhitespaceValue!1575 (value!26100 List!4002)) (True!1574) (False!1574) (Broken!3937 (value!26101 List!4002)) (Broken!3938 (value!26102 List!4002)) (True!1575) (RightBrace!787) (RightBracket!787) (Colon!787) (Null!787) (Comma!787) (LeftBracket!787) (False!1575) (LeftBrace!787) (ImaginaryLiteralValue!787 (text!5955 List!4002)) (StringLiteralValue!2361 (value!26103 List!4002)) (EOFValue!787 (value!26104 List!4002)) (IdentValue!787 (value!26105 List!4002)) (DelimiterValue!1575 (value!26106 List!4002)) (DedentValue!787 (value!26107 List!4002)) (NewLineValue!787 (value!26108 List!4002)) (IntegerValue!2361 (value!26109 (_ BitVec 32)) (text!5956 List!4002)) (IntegerValue!2362 (value!26110 Int) (text!5957 List!4002)) (Times!787) (Or!787) (Equal!787) (Minus!787) (Broken!3939 (value!26111 List!4002)) (And!787) (Div!787) (LessEqual!787) (Mod!787) (Concat!1776) (Not!787) (Plus!787) (SpaceValue!787 (value!26112 List!4002)) (IntegerValue!2363 (value!26113 Int) (text!5958 List!4002)) (StringLiteralValue!2362 (text!5959 List!4002)) (FloatLiteralValue!1575 (text!5960 List!4002)) (BytesLiteralValue!787 (value!26114 List!4002)) (CommentValue!1575 (value!26115 List!4002)) (StringLiteralValue!2363 (value!26116 List!4002)) (ErrorTokenValue!787 (msg!848 List!4002)) )
))
(declare-datatypes ((C!2900 0))(
  ( (C!2901 (val!1336 Int)) )
))
(declare-datatypes ((List!4003 0))(
  ( (Nil!3993) (Cons!3993 (h!9390 C!2900) (t!43075 List!4003)) )
))
(declare-datatypes ((IArray!2705 0))(
  ( (IArray!2706 (innerList!1410 List!4003)) )
))
(declare-datatypes ((Conc!1352 0))(
  ( (Node!1352 (left!3305 Conc!1352) (right!3635 Conc!1352) (csize!2934 Int) (cheight!1563 Int)) (Leaf!2074 (xs!3955 IArray!2705) (csize!2935 Int)) (Empty!1352) )
))
(declare-datatypes ((BalanceConc!2712 0))(
  ( (BalanceConc!2713 (c!57916 Conc!1352)) )
))
(declare-datatypes ((String!5015 0))(
  ( (String!5016 (value!26117 String)) )
))
(declare-datatypes ((TokenValueInjection!1346 0))(
  ( (TokenValueInjection!1347 (toValue!1524 Int) (toChars!1383 Int)) )
))
(declare-datatypes ((Regex!989 0))(
  ( (ElementMatch!989 (c!57917 C!2900)) (Concat!1777 (regOne!2490 Regex!989) (regTwo!2490 Regex!989)) (EmptyExpr!989) (Star!989 (reg!1318 Regex!989)) (EmptyLang!989) (Union!989 (regOne!2491 Regex!989) (regTwo!2491 Regex!989)) )
))
(declare-datatypes ((Rule!1330 0))(
  ( (Rule!1331 (regex!765 Regex!989) (tag!983 String!5015) (isSeparator!765 Bool) (transformation!765 TokenValueInjection!1346)) )
))
(declare-datatypes ((List!4004 0))(
  ( (Nil!3994) (Cons!3994 (h!9391 Rule!1330) (t!43076 List!4004)) )
))
(declare-fun rules!1920 () List!4004)

(get-info :version)

(assert (= (and b!303981 ((_ is Cons!3994) rules!1920)) b!304018))

(declare-fun order!3203 () Int)

(declare-fun order!3201 () Int)

(declare-fun dynLambda!2163 (Int Int) Int)

(declare-fun dynLambda!2164 (Int Int) Int)

(assert (=> b!304020 (< (dynLambda!2163 order!3201 (toValue!1524 (transformation!765 (h!9391 rules!1920)))) (dynLambda!2164 order!3203 lambda!10324))))

(declare-fun order!3205 () Int)

(declare-fun dynLambda!2165 (Int Int) Int)

(assert (=> b!304020 (< (dynLambda!2165 order!3205 (toChars!1383 (transformation!765 (h!9391 rules!1920)))) (dynLambda!2164 order!3203 lambda!10324))))

(assert (=> b!303981 true))

(declare-fun res!137892 () Bool)

(declare-fun e!188740 () Bool)

(assert (=> b!303979 (=> (not res!137892) (not e!188740))))

(declare-datatypes ((Token!1274 0))(
  ( (Token!1275 (value!26118 TokenValue!787) (rule!1378 Rule!1330) (size!3215 Int) (originalCharacters!808 List!4003)) )
))
(declare-datatypes ((List!4005 0))(
  ( (Nil!3995) (Cons!3995 (h!9392 Token!1274) (t!43077 List!4005)) )
))
(declare-fun tokens!465 () List!4005)

(declare-fun forall!1052 (List!4005 Int) Bool)

(assert (=> b!303979 (= res!137892 (forall!1052 tokens!465 lambda!10323))))

(declare-fun separatorToken!170 () Token!1274)

(declare-fun e!188735 () Bool)

(declare-fun tp!108097 () Bool)

(declare-fun b!303980 () Bool)

(declare-fun e!188730 () Bool)

(declare-fun inv!4948 (String!5015) Bool)

(declare-fun inv!4951 (TokenValueInjection!1346) Bool)

(assert (=> b!303980 (= e!188735 (and tp!108097 (inv!4948 (tag!983 (rule!1378 separatorToken!170))) (inv!4951 (transformation!765 (rule!1378 separatorToken!170))) e!188730))))

(declare-fun e!188734 () Bool)

(declare-fun e!188747 () Bool)

(assert (=> b!303981 (= e!188734 e!188747)))

(declare-fun res!137897 () Bool)

(assert (=> b!303981 (=> res!137897 e!188747)))

(declare-datatypes ((LexerInterface!651 0))(
  ( (LexerInterfaceExt!648 (__x!3062 Int)) (Lexer!649) )
))
(declare-fun thiss!17480 () LexerInterface!651)

(declare-datatypes ((tuple2!4586 0))(
  ( (tuple2!4587 (_1!2509 Token!1274) (_2!2509 BalanceConc!2712)) )
))
(declare-datatypes ((Option!896 0))(
  ( (None!895) (Some!895 (v!14888 tuple2!4586)) )
))
(declare-fun isDefined!735 (Option!896) Bool)

(declare-fun maxPrefixZipperSequence!330 (LexerInterface!651 List!4004 BalanceConc!2712) Option!896)

(declare-fun seqFromList!895 (List!4003) BalanceConc!2712)

(assert (=> b!303981 (= res!137897 (not (isDefined!735 (maxPrefixZipperSequence!330 thiss!17480 rules!1920 (seqFromList!895 (originalCharacters!808 (h!9392 tokens!465)))))))))

(declare-datatypes ((Unit!5604 0))(
  ( (Unit!5605) )
))
(declare-fun lt!129261 () Unit!5604)

(declare-fun forallContained!318 (List!4005 Int Token!1274) Unit!5604)

(assert (=> b!303981 (= lt!129261 (forallContained!318 tokens!465 lambda!10324 (h!9392 tokens!465)))))

(declare-fun lt!129271 () List!4003)

(assert (=> b!303981 (= lt!129271 (originalCharacters!808 (h!9392 tokens!465)))))

(declare-fun e!188751 () Bool)

(declare-fun tp!108102 () Bool)

(declare-fun b!303982 () Bool)

(declare-fun e!188743 () Bool)

(assert (=> b!303982 (= e!188743 (and tp!108102 (inv!4948 (tag!983 (h!9391 rules!1920))) (inv!4951 (transformation!765 (h!9391 rules!1920))) e!188751))))

(declare-fun b!303983 () Bool)

(declare-fun res!137895 () Bool)

(assert (=> b!303983 (=> (not res!137895) (not e!188740))))

(declare-fun sepAndNonSepRulesDisjointChars!354 (List!4004 List!4004) Bool)

(assert (=> b!303983 (= res!137895 (sepAndNonSepRulesDisjointChars!354 rules!1920 rules!1920))))

(declare-fun b!303984 () Bool)

(declare-fun e!188746 () Bool)

(assert (=> b!303984 (= e!188746 e!188740)))

(declare-fun res!137910 () Bool)

(assert (=> b!303984 (=> (not res!137910) (not e!188740))))

(declare-datatypes ((IArray!2707 0))(
  ( (IArray!2708 (innerList!1411 List!4005)) )
))
(declare-datatypes ((Conc!1353 0))(
  ( (Node!1353 (left!3306 Conc!1353) (right!3636 Conc!1353) (csize!2936 Int) (cheight!1564 Int)) (Leaf!2075 (xs!3956 IArray!2707) (csize!2937 Int)) (Empty!1353) )
))
(declare-datatypes ((BalanceConc!2714 0))(
  ( (BalanceConc!2715 (c!57918 Conc!1353)) )
))
(declare-fun lt!129262 () BalanceConc!2714)

(declare-fun rulesProduceEachTokenIndividually!443 (LexerInterface!651 List!4004 BalanceConc!2714) Bool)

(assert (=> b!303984 (= res!137910 (rulesProduceEachTokenIndividually!443 thiss!17480 rules!1920 lt!129262))))

(declare-fun seqFromList!896 (List!4005) BalanceConc!2714)

(assert (=> b!303984 (= lt!129262 (seqFromList!896 tokens!465))))

(declare-fun b!303985 () Bool)

(declare-fun res!137900 () Bool)

(declare-fun e!188728 () Bool)

(assert (=> b!303985 (=> (not res!137900) (not e!188728))))

(declare-fun lt!129276 () List!4003)

(declare-fun lt!129275 () List!4003)

(declare-fun list!1689 (BalanceConc!2712) List!4003)

(assert (=> b!303985 (= res!137900 (= (list!1689 (seqFromList!895 lt!129276)) lt!129275))))

(declare-fun b!303987 () Bool)

(declare-fun e!188742 () Bool)

(assert (=> b!303987 (= e!188742 true)))

(declare-fun lt!129273 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!259 (LexerInterface!651 List!4004 List!4005) Bool)

(assert (=> b!303987 (= lt!129273 (rulesProduceEachTokenIndividuallyList!259 thiss!17480 rules!1920 tokens!465))))

(declare-fun b!303988 () Bool)

(declare-fun e!188732 () Bool)

(declare-fun tp!108099 () Bool)

(assert (=> b!303988 (= e!188732 (and e!188743 tp!108099))))

(declare-fun b!303989 () Bool)

(declare-fun e!188738 () Bool)

(assert (=> b!303989 (= e!188738 e!188734)))

(declare-fun res!137893 () Bool)

(assert (=> b!303989 (=> res!137893 e!188734)))

(declare-fun lt!129268 () List!4003)

(declare-fun lt!129264 () List!4003)

(assert (=> b!303989 (= res!137893 (or (not (= lt!129264 lt!129268)) (not (= lt!129268 lt!129271)) (not (= lt!129264 lt!129271))))))

(declare-fun printList!325 (LexerInterface!651 List!4005) List!4003)

(assert (=> b!303989 (= lt!129268 (printList!325 thiss!17480 (Cons!3995 (h!9392 tokens!465) Nil!3995)))))

(declare-fun lt!129274 () BalanceConc!2712)

(assert (=> b!303989 (= lt!129264 (list!1689 lt!129274))))

(declare-fun lt!129269 () BalanceConc!2714)

(declare-fun printTailRec!337 (LexerInterface!651 BalanceConc!2714 Int BalanceConc!2712) BalanceConc!2712)

(assert (=> b!303989 (= lt!129274 (printTailRec!337 thiss!17480 lt!129269 0 (BalanceConc!2713 Empty!1352)))))

(declare-fun print!376 (LexerInterface!651 BalanceConc!2714) BalanceConc!2712)

(assert (=> b!303989 (= lt!129274 (print!376 thiss!17480 lt!129269))))

(declare-fun singletonSeq!311 (Token!1274) BalanceConc!2714)

(assert (=> b!303989 (= lt!129269 (singletonSeq!311 (h!9392 tokens!465)))))

(declare-fun b!303990 () Bool)

(declare-fun res!137902 () Bool)

(assert (=> b!303990 (=> (not res!137902) (not e!188740))))

(assert (=> b!303990 (= res!137902 ((_ is Cons!3995) tokens!465))))

(declare-fun b!303991 () Bool)

(assert (=> b!303991 (= e!188747 e!188742)))

(declare-fun res!137903 () Bool)

(assert (=> b!303991 (=> res!137903 e!188742)))

(declare-fun lt!129265 () Bool)

(assert (=> b!303991 (= res!137903 (not lt!129265))))

(declare-fun e!188736 () Bool)

(assert (=> b!303991 e!188736))

(declare-fun res!137911 () Bool)

(assert (=> b!303991 (=> (not res!137911) (not e!188736))))

(declare-datatypes ((tuple2!4588 0))(
  ( (tuple2!4589 (_1!2510 Token!1274) (_2!2510 List!4003)) )
))
(declare-fun lt!129272 () tuple2!4588)

(assert (=> b!303991 (= res!137911 (= (_1!2510 lt!129272) (h!9392 tokens!465)))))

(declare-datatypes ((Option!897 0))(
  ( (None!896) (Some!896 (v!14889 tuple2!4588)) )
))
(declare-fun lt!129270 () Option!897)

(declare-fun get!1360 (Option!897) tuple2!4588)

(assert (=> b!303991 (= lt!129272 (get!1360 lt!129270))))

(declare-fun isDefined!736 (Option!897) Bool)

(assert (=> b!303991 (isDefined!736 lt!129270)))

(declare-fun maxPrefix!367 (LexerInterface!651 List!4004 List!4003) Option!897)

(assert (=> b!303991 (= lt!129270 (maxPrefix!367 thiss!17480 rules!1920 lt!129271))))

(declare-fun e!188741 () Bool)

(declare-fun b!303992 () Bool)

(declare-fun tp!108100 () Bool)

(declare-fun e!188737 () Bool)

(declare-fun inv!21 (TokenValue!787) Bool)

(assert (=> b!303992 (= e!188737 (and (inv!21 (value!26118 (h!9392 tokens!465))) e!188741 tp!108100))))

(declare-fun b!303993 () Bool)

(declare-fun matchR!307 (Regex!989 List!4003) Bool)

(assert (=> b!303993 (= e!188736 (matchR!307 (regex!765 (rule!1378 (h!9392 tokens!465))) lt!129271))))

(declare-fun b!303994 () Bool)

(declare-fun res!137904 () Bool)

(assert (=> b!303994 (=> res!137904 e!188734)))

(declare-fun isEmpty!2698 (BalanceConc!2714) Bool)

(declare-datatypes ((tuple2!4590 0))(
  ( (tuple2!4591 (_1!2511 BalanceConc!2714) (_2!2511 BalanceConc!2712)) )
))
(declare-fun lex!443 (LexerInterface!651 List!4004 BalanceConc!2712) tuple2!4590)

(assert (=> b!303994 (= res!137904 (isEmpty!2698 (_1!2511 (lex!443 thiss!17480 rules!1920 (seqFromList!895 lt!129271)))))))

(declare-fun b!303995 () Bool)

(declare-fun e!188748 () Bool)

(declare-fun lt!129259 () List!4003)

(declare-fun ++!1082 (List!4003 List!4003) List!4003)

(assert (=> b!303995 (= e!188748 (not (= lt!129276 (++!1082 lt!129271 lt!129259))))))

(assert (=> b!303996 (= e!188730 (and tp!108103 tp!108101))))

(declare-fun b!303997 () Bool)

(declare-fun res!137905 () Bool)

(assert (=> b!303997 (=> (not res!137905) (not e!188736))))

(declare-fun isEmpty!2699 (List!4003) Bool)

(assert (=> b!303997 (= res!137905 (isEmpty!2699 (_2!2510 lt!129272)))))

(declare-fun e!188731 () Bool)

(assert (=> b!303998 (= e!188731 (and tp!108096 tp!108093))))

(declare-fun b!303999 () Bool)

(declare-fun res!137906 () Bool)

(assert (=> b!303999 (=> (not res!137906) (not e!188746))))

(declare-fun isEmpty!2700 (List!4004) Bool)

(assert (=> b!303999 (= res!137906 (not (isEmpty!2700 rules!1920)))))

(declare-fun b!304000 () Bool)

(declare-fun res!137898 () Bool)

(assert (=> b!304000 (=> (not res!137898) (not e!188740))))

(assert (=> b!304000 (= res!137898 (isSeparator!765 (rule!1378 separatorToken!170)))))

(assert (=> b!304001 (= e!188751 (and tp!108104 tp!108095))))

(declare-fun b!304002 () Bool)

(assert (=> b!304002 (= e!188740 e!188728)))

(declare-fun res!137896 () Bool)

(assert (=> b!304002 (=> (not res!137896) (not e!188728))))

(assert (=> b!304002 (= res!137896 (= lt!129276 lt!129275))))

(declare-fun printWithSeparatorTokenWhenNeededRec!324 (LexerInterface!651 List!4004 BalanceConc!2714 Token!1274 Int) BalanceConc!2712)

(assert (=> b!304002 (= lt!129275 (list!1689 (printWithSeparatorTokenWhenNeededRec!324 thiss!17480 rules!1920 lt!129262 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!332 (LexerInterface!651 List!4004 List!4005 Token!1274) List!4003)

(assert (=> b!304002 (= lt!129276 (printWithSeparatorTokenWhenNeededList!332 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!304003 () Bool)

(declare-fun e!188749 () Bool)

(assert (=> b!304003 (= e!188728 (not e!188749))))

(declare-fun res!137909 () Bool)

(assert (=> b!304003 (=> res!137909 e!188749)))

(assert (=> b!304003 (= res!137909 (not (= lt!129259 (list!1689 (printWithSeparatorTokenWhenNeededRec!324 thiss!17480 rules!1920 (seqFromList!896 (t!43077 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!129263 () List!4003)

(declare-fun lt!129258 () List!4003)

(assert (=> b!304003 (= lt!129263 lt!129258)))

(declare-fun lt!129260 () List!4003)

(assert (=> b!304003 (= lt!129258 (++!1082 lt!129271 lt!129260))))

(declare-fun lt!129266 () List!4003)

(assert (=> b!304003 (= lt!129263 (++!1082 (++!1082 lt!129271 lt!129266) lt!129259))))

(declare-fun lt!129267 () Unit!5604)

(declare-fun lemmaConcatAssociativity!472 (List!4003 List!4003 List!4003) Unit!5604)

(assert (=> b!304003 (= lt!129267 (lemmaConcatAssociativity!472 lt!129271 lt!129266 lt!129259))))

(declare-fun charsOf!408 (Token!1274) BalanceConc!2712)

(assert (=> b!304003 (= lt!129271 (list!1689 (charsOf!408 (h!9392 tokens!465))))))

(assert (=> b!304003 (= lt!129260 (++!1082 lt!129266 lt!129259))))

(assert (=> b!304003 (= lt!129259 (printWithSeparatorTokenWhenNeededList!332 thiss!17480 rules!1920 (t!43077 tokens!465) separatorToken!170))))

(assert (=> b!304003 (= lt!129266 (list!1689 (charsOf!408 separatorToken!170)))))

(declare-fun b!304004 () Bool)

(declare-fun e!188729 () Bool)

(declare-fun tp!108094 () Bool)

(assert (=> b!304004 (= e!188729 (and (inv!21 (value!26118 separatorToken!170)) e!188735 tp!108094))))

(declare-fun res!137901 () Bool)

(assert (=> start!32754 (=> (not res!137901) (not e!188746))))

(assert (=> start!32754 (= res!137901 ((_ is Lexer!649) thiss!17480))))

(assert (=> start!32754 e!188746))

(assert (=> start!32754 true))

(assert (=> start!32754 e!188732))

(declare-fun inv!4952 (Token!1274) Bool)

(assert (=> start!32754 (and (inv!4952 separatorToken!170) e!188729)))

(declare-fun e!188739 () Bool)

(assert (=> start!32754 e!188739))

(declare-fun b!303986 () Bool)

(declare-fun res!137899 () Bool)

(assert (=> b!303986 (=> (not res!137899) (not e!188746))))

(declare-fun rulesInvariant!617 (LexerInterface!651 List!4004) Bool)

(assert (=> b!303986 (= res!137899 (rulesInvariant!617 thiss!17480 rules!1920))))

(declare-fun b!304005 () Bool)

(assert (=> b!304005 (= e!188749 e!188738)))

(declare-fun res!137908 () Bool)

(assert (=> b!304005 (=> res!137908 e!188738)))

(assert (=> b!304005 (= res!137908 e!188748)))

(declare-fun res!137894 () Bool)

(assert (=> b!304005 (=> (not res!137894) (not e!188748))))

(assert (=> b!304005 (= res!137894 (not lt!129265))))

(assert (=> b!304005 (= lt!129265 (= lt!129276 lt!129258))))

(declare-fun b!304006 () Bool)

(declare-fun res!137907 () Bool)

(assert (=> b!304006 (=> res!137907 e!188734)))

(declare-fun rulesProduceIndividualToken!400 (LexerInterface!651 List!4004 Token!1274) Bool)

(assert (=> b!304006 (= res!137907 (not (rulesProduceIndividualToken!400 thiss!17480 rules!1920 (h!9392 tokens!465))))))

(declare-fun b!304007 () Bool)

(declare-fun res!137891 () Bool)

(assert (=> b!304007 (=> (not res!137891) (not e!188740))))

(assert (=> b!304007 (= res!137891 (rulesProduceIndividualToken!400 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!108098 () Bool)

(declare-fun b!304008 () Bool)

(assert (=> b!304008 (= e!188741 (and tp!108098 (inv!4948 (tag!983 (rule!1378 (h!9392 tokens!465)))) (inv!4951 (transformation!765 (rule!1378 (h!9392 tokens!465)))) e!188731))))

(declare-fun tp!108105 () Bool)

(declare-fun b!304009 () Bool)

(assert (=> b!304009 (= e!188739 (and (inv!4952 (h!9392 tokens!465)) e!188737 tp!108105))))

(assert (= (and start!32754 res!137901) b!303999))

(assert (= (and b!303999 res!137906) b!303986))

(assert (= (and b!303986 res!137899) b!303984))

(assert (= (and b!303984 res!137910) b!304007))

(assert (= (and b!304007 res!137891) b!304000))

(assert (= (and b!304000 res!137898) b!303979))

(assert (= (and b!303979 res!137892) b!303983))

(assert (= (and b!303983 res!137895) b!303990))

(assert (= (and b!303990 res!137902) b!304002))

(assert (= (and b!304002 res!137896) b!303985))

(assert (= (and b!303985 res!137900) b!304003))

(assert (= (and b!304003 (not res!137909)) b!304005))

(assert (= (and b!304005 res!137894) b!303995))

(assert (= (and b!304005 (not res!137908)) b!303989))

(assert (= (and b!303989 (not res!137893)) b!304006))

(assert (= (and b!304006 (not res!137907)) b!303994))

(assert (= (and b!303994 (not res!137904)) b!303981))

(assert (= (and b!303981 (not res!137897)) b!303991))

(assert (= (and b!303991 res!137911) b!303997))

(assert (= (and b!303997 res!137905) b!303993))

(assert (= (and b!303991 (not res!137903)) b!303987))

(assert (= b!303982 b!304001))

(assert (= b!303988 b!303982))

(assert (= (and start!32754 ((_ is Cons!3994) rules!1920)) b!303988))

(assert (= b!303980 b!303996))

(assert (= b!304004 b!303980))

(assert (= start!32754 b!304004))

(assert (= b!304008 b!303998))

(assert (= b!303992 b!304008))

(assert (= b!304009 b!303992))

(assert (= (and start!32754 ((_ is Cons!3995) tokens!465)) b!304009))

(declare-fun m!405797 () Bool)

(assert (=> b!303980 m!405797))

(declare-fun m!405799 () Bool)

(assert (=> b!303980 m!405799))

(declare-fun m!405801 () Bool)

(assert (=> b!304006 m!405801))

(declare-fun m!405803 () Bool)

(assert (=> b!303994 m!405803))

(assert (=> b!303994 m!405803))

(declare-fun m!405805 () Bool)

(assert (=> b!303994 m!405805))

(declare-fun m!405807 () Bool)

(assert (=> b!303994 m!405807))

(declare-fun m!405809 () Bool)

(assert (=> b!303981 m!405809))

(assert (=> b!303981 m!405809))

(declare-fun m!405811 () Bool)

(assert (=> b!303981 m!405811))

(assert (=> b!303981 m!405811))

(declare-fun m!405813 () Bool)

(assert (=> b!303981 m!405813))

(declare-fun m!405815 () Bool)

(assert (=> b!303981 m!405815))

(declare-fun m!405817 () Bool)

(assert (=> b!303983 m!405817))

(declare-fun m!405819 () Bool)

(assert (=> b!304009 m!405819))

(declare-fun m!405821 () Bool)

(assert (=> b!303979 m!405821))

(declare-fun m!405823 () Bool)

(assert (=> b!304007 m!405823))

(declare-fun m!405825 () Bool)

(assert (=> b!304004 m!405825))

(declare-fun m!405827 () Bool)

(assert (=> b!303986 m!405827))

(declare-fun m!405829 () Bool)

(assert (=> b!303999 m!405829))

(declare-fun m!405831 () Bool)

(assert (=> b!304003 m!405831))

(declare-fun m!405833 () Bool)

(assert (=> b!304003 m!405833))

(declare-fun m!405835 () Bool)

(assert (=> b!304003 m!405835))

(declare-fun m!405837 () Bool)

(assert (=> b!304003 m!405837))

(declare-fun m!405839 () Bool)

(assert (=> b!304003 m!405839))

(declare-fun m!405841 () Bool)

(assert (=> b!304003 m!405841))

(assert (=> b!304003 m!405837))

(declare-fun m!405843 () Bool)

(assert (=> b!304003 m!405843))

(declare-fun m!405845 () Bool)

(assert (=> b!304003 m!405845))

(declare-fun m!405847 () Bool)

(assert (=> b!304003 m!405847))

(declare-fun m!405849 () Bool)

(assert (=> b!304003 m!405849))

(assert (=> b!304003 m!405841))

(declare-fun m!405851 () Bool)

(assert (=> b!304003 m!405851))

(assert (=> b!304003 m!405845))

(assert (=> b!304003 m!405849))

(declare-fun m!405853 () Bool)

(assert (=> b!304003 m!405853))

(assert (=> b!304003 m!405847))

(declare-fun m!405855 () Bool)

(assert (=> b!304003 m!405855))

(declare-fun m!405857 () Bool)

(assert (=> b!303997 m!405857))

(declare-fun m!405859 () Bool)

(assert (=> b!303992 m!405859))

(declare-fun m!405861 () Bool)

(assert (=> start!32754 m!405861))

(declare-fun m!405863 () Bool)

(assert (=> b!304002 m!405863))

(assert (=> b!304002 m!405863))

(declare-fun m!405865 () Bool)

(assert (=> b!304002 m!405865))

(declare-fun m!405867 () Bool)

(assert (=> b!304002 m!405867))

(declare-fun m!405869 () Bool)

(assert (=> b!303991 m!405869))

(declare-fun m!405871 () Bool)

(assert (=> b!303991 m!405871))

(declare-fun m!405873 () Bool)

(assert (=> b!303991 m!405873))

(declare-fun m!405875 () Bool)

(assert (=> b!303987 m!405875))

(declare-fun m!405877 () Bool)

(assert (=> b!303984 m!405877))

(declare-fun m!405879 () Bool)

(assert (=> b!303984 m!405879))

(declare-fun m!405881 () Bool)

(assert (=> b!303989 m!405881))

(declare-fun m!405883 () Bool)

(assert (=> b!303989 m!405883))

(declare-fun m!405885 () Bool)

(assert (=> b!303989 m!405885))

(declare-fun m!405887 () Bool)

(assert (=> b!303989 m!405887))

(declare-fun m!405889 () Bool)

(assert (=> b!303989 m!405889))

(declare-fun m!405891 () Bool)

(assert (=> b!303995 m!405891))

(declare-fun m!405893 () Bool)

(assert (=> b!303993 m!405893))

(declare-fun m!405895 () Bool)

(assert (=> b!304008 m!405895))

(declare-fun m!405897 () Bool)

(assert (=> b!304008 m!405897))

(declare-fun m!405899 () Bool)

(assert (=> b!303985 m!405899))

(assert (=> b!303985 m!405899))

(declare-fun m!405901 () Bool)

(assert (=> b!303985 m!405901))

(declare-fun m!405903 () Bool)

(assert (=> b!303982 m!405903))

(declare-fun m!405905 () Bool)

(assert (=> b!303982 m!405905))

(check-sat b_and!25651 (not b!303987) (not b!304007) (not b!304002) (not b!304004) (not b!303985) (not b!304006) (not b_next!10801) (not b!303995) (not b!303992) (not b!303979) (not b_next!10799) b_and!25653 (not b!303982) b_and!25655 (not b_next!10797) (not b!304009) (not b!303983) b_and!25647 (not start!32754) (not b_next!10803) (not b!303989) (not b!304003) (not b!303997) (not b!303993) b_and!25649 (not b!303994) (not b!303999) (not b!304018) (not b!303991) (not b_next!10795) b_and!25645 (not b!303986) (not b!303988) (not b_next!10793) (not b!303981) (not b!303984) (not b!304008) (not b!303980))
(check-sat b_and!25651 (not b_next!10797) b_and!25647 (not b_next!10803) b_and!25649 (not b_next!10801) (not b_next!10793) (not b_next!10799) b_and!25653 b_and!25655 b_and!25645 (not b_next!10795))

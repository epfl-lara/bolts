; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20322 () Bool)

(assert start!20322)

(declare-fun b!187092 () Bool)

(declare-fun b_free!7337 () Bool)

(declare-fun b_next!7337 () Bool)

(assert (=> b!187092 (= b_free!7337 (not b_next!7337))))

(declare-fun tp!87725 () Bool)

(declare-fun b_and!12893 () Bool)

(assert (=> b!187092 (= tp!87725 b_and!12893)))

(declare-fun b_free!7339 () Bool)

(declare-fun b_next!7339 () Bool)

(assert (=> b!187092 (= b_free!7339 (not b_next!7339))))

(declare-fun tp!87720 () Bool)

(declare-fun b_and!12895 () Bool)

(assert (=> b!187092 (= tp!87720 b_and!12895)))

(declare-fun b!187103 () Bool)

(declare-fun b_free!7341 () Bool)

(declare-fun b_next!7341 () Bool)

(assert (=> b!187103 (= b_free!7341 (not b_next!7341))))

(declare-fun tp!87714 () Bool)

(declare-fun b_and!12897 () Bool)

(assert (=> b!187103 (= tp!87714 b_and!12897)))

(declare-fun b_free!7343 () Bool)

(declare-fun b_next!7343 () Bool)

(assert (=> b!187103 (= b_free!7343 (not b_next!7343))))

(declare-fun tp!87724 () Bool)

(declare-fun b_and!12899 () Bool)

(assert (=> b!187103 (= tp!87724 b_and!12899)))

(declare-fun b!187091 () Bool)

(declare-fun b_free!7345 () Bool)

(declare-fun b_next!7345 () Bool)

(assert (=> b!187091 (= b_free!7345 (not b_next!7345))))

(declare-fun tp!87713 () Bool)

(declare-fun b_and!12901 () Bool)

(assert (=> b!187091 (= tp!87713 b_and!12901)))

(declare-fun b_free!7347 () Bool)

(declare-fun b_next!7347 () Bool)

(assert (=> b!187091 (= b_free!7347 (not b_next!7347))))

(declare-fun tp!87723 () Bool)

(declare-fun b_and!12903 () Bool)

(assert (=> b!187091 (= tp!87723 b_and!12903)))

(declare-fun bs!18618 () Bool)

(declare-fun b!187085 () Bool)

(declare-fun b!187106 () Bool)

(assert (= bs!18618 (and b!187085 b!187106)))

(declare-fun lambda!5654 () Int)

(declare-fun lambda!5653 () Int)

(assert (=> bs!18618 (not (= lambda!5654 lambda!5653))))

(declare-fun b!187124 () Bool)

(declare-fun e!114531 () Bool)

(assert (=> b!187124 (= e!114531 true)))

(declare-fun b!187123 () Bool)

(declare-fun e!114530 () Bool)

(assert (=> b!187123 (= e!114530 e!114531)))

(declare-fun b!187122 () Bool)

(declare-fun e!114529 () Bool)

(assert (=> b!187122 (= e!114529 e!114530)))

(assert (=> b!187085 e!114529))

(assert (= b!187123 b!187124))

(assert (= b!187122 b!187123))

(declare-datatypes ((List!3129 0))(
  ( (Nil!3119) (Cons!3119 (h!8516 (_ BitVec 16)) (t!28715 List!3129)) )
))
(declare-datatypes ((TokenValue!591 0))(
  ( (FloatLiteralValue!1182 (text!4582 List!3129)) (TokenValueExt!590 (__x!2669 Int)) (Broken!2955 (value!20506 List!3129)) (Object!600) (End!591) (Def!591) (Underscore!591) (Match!591) (Else!591) (Error!591) (Case!591) (If!591) (Extends!591) (Abstract!591) (Class!591) (Val!591) (DelimiterValue!1182 (del!651 List!3129)) (KeywordValue!597 (value!20507 List!3129)) (CommentValue!1182 (value!20508 List!3129)) (WhitespaceValue!1182 (value!20509 List!3129)) (IndentationValue!591 (value!20510 List!3129)) (String!4034) (Int32!591) (Broken!2956 (value!20511 List!3129)) (Boolean!592) (Unit!2909) (OperatorValue!594 (op!651 List!3129)) (IdentifierValue!1182 (value!20512 List!3129)) (IdentifierValue!1183 (value!20513 List!3129)) (WhitespaceValue!1183 (value!20514 List!3129)) (True!1182) (False!1182) (Broken!2957 (value!20515 List!3129)) (Broken!2958 (value!20516 List!3129)) (True!1183) (RightBrace!591) (RightBracket!591) (Colon!591) (Null!591) (Comma!591) (LeftBracket!591) (False!1183) (LeftBrace!591) (ImaginaryLiteralValue!591 (text!4583 List!3129)) (StringLiteralValue!1773 (value!20517 List!3129)) (EOFValue!591 (value!20518 List!3129)) (IdentValue!591 (value!20519 List!3129)) (DelimiterValue!1183 (value!20520 List!3129)) (DedentValue!591 (value!20521 List!3129)) (NewLineValue!591 (value!20522 List!3129)) (IntegerValue!1773 (value!20523 (_ BitVec 32)) (text!4584 List!3129)) (IntegerValue!1774 (value!20524 Int) (text!4585 List!3129)) (Times!591) (Or!591) (Equal!591) (Minus!591) (Broken!2959 (value!20525 List!3129)) (And!591) (Div!591) (LessEqual!591) (Mod!591) (Concat!1384) (Not!591) (Plus!591) (SpaceValue!591 (value!20526 List!3129)) (IntegerValue!1775 (value!20527 Int) (text!4586 List!3129)) (StringLiteralValue!1774 (text!4587 List!3129)) (FloatLiteralValue!1183 (text!4588 List!3129)) (BytesLiteralValue!591 (value!20528 List!3129)) (CommentValue!1183 (value!20529 List!3129)) (StringLiteralValue!1775 (value!20530 List!3129)) (ErrorTokenValue!591 (msg!652 List!3129)) )
))
(declare-datatypes ((C!2508 0))(
  ( (C!2509 (val!1140 Int)) )
))
(declare-datatypes ((List!3130 0))(
  ( (Nil!3120) (Cons!3120 (h!8517 C!2508) (t!28716 List!3130)) )
))
(declare-datatypes ((IArray!1921 0))(
  ( (IArray!1922 (innerList!1018 List!3130)) )
))
(declare-datatypes ((Conc!960 0))(
  ( (Node!960 (left!2439 Conc!960) (right!2769 Conc!960) (csize!2150 Int) (cheight!1171 Int)) (Leaf!1584 (xs!3555 IArray!1921) (csize!2151 Int)) (Empty!960) )
))
(declare-datatypes ((BalanceConc!1928 0))(
  ( (BalanceConc!1929 (c!36115 Conc!960)) )
))
(declare-datatypes ((TokenValueInjection!954 0))(
  ( (TokenValueInjection!955 (toValue!1240 Int) (toChars!1099 Int)) )
))
(declare-datatypes ((Regex!793 0))(
  ( (ElementMatch!793 (c!36116 C!2508)) (Concat!1385 (regOne!2098 Regex!793) (regTwo!2098 Regex!793)) (EmptyExpr!793) (Star!793 (reg!1122 Regex!793)) (EmptyLang!793) (Union!793 (regOne!2099 Regex!793) (regTwo!2099 Regex!793)) )
))
(declare-datatypes ((String!4035 0))(
  ( (String!4036 (value!20531 String)) )
))
(declare-datatypes ((Rule!938 0))(
  ( (Rule!939 (regex!569 Regex!793) (tag!747 String!4035) (isSeparator!569 Bool) (transformation!569 TokenValueInjection!954)) )
))
(declare-datatypes ((List!3131 0))(
  ( (Nil!3121) (Cons!3121 (h!8518 Rule!938) (t!28717 List!3131)) )
))
(declare-fun rules!1920 () List!3131)

(get-info :version)

(assert (= (and b!187085 ((_ is Cons!3121) rules!1920)) b!187122))

(declare-fun order!1891 () Int)

(declare-fun order!1889 () Int)

(declare-fun dynLambda!1293 (Int Int) Int)

(declare-fun dynLambda!1294 (Int Int) Int)

(assert (=> b!187124 (< (dynLambda!1293 order!1889 (toValue!1240 (transformation!569 (h!8518 rules!1920)))) (dynLambda!1294 order!1891 lambda!5654))))

(declare-fun order!1893 () Int)

(declare-fun dynLambda!1295 (Int Int) Int)

(assert (=> b!187124 (< (dynLambda!1295 order!1893 (toChars!1099 (transformation!569 (h!8518 rules!1920)))) (dynLambda!1294 order!1891 lambda!5654))))

(assert (=> b!187085 true))

(declare-datatypes ((Token!882 0))(
  ( (Token!883 (value!20532 TokenValue!591) (rule!1084 Rule!938) (size!2523 Int) (originalCharacters!612 List!3130)) )
))
(declare-datatypes ((List!3132 0))(
  ( (Nil!3122) (Cons!3122 (h!8519 Token!882) (t!28718 List!3132)) )
))
(declare-fun tokens!465 () List!3132)

(declare-fun b!187078 () Bool)

(declare-fun tp!87719 () Bool)

(declare-fun e!114515 () Bool)

(declare-fun e!114510 () Bool)

(declare-fun inv!3952 (Token!882) Bool)

(assert (=> b!187078 (= e!114515 (and (inv!3952 (h!8519 tokens!465)) e!114510 tp!87719))))

(declare-fun b!187079 () Bool)

(declare-fun e!114513 () Bool)

(declare-fun tp!87715 () Bool)

(declare-fun e!114506 () Bool)

(declare-fun inv!3949 (String!4035) Bool)

(declare-fun inv!3953 (TokenValueInjection!954) Bool)

(assert (=> b!187079 (= e!114513 (and tp!87715 (inv!3949 (tag!747 (rule!1084 (h!8519 tokens!465)))) (inv!3953 (transformation!569 (rule!1084 (h!8519 tokens!465)))) e!114506))))

(declare-fun b!187080 () Bool)

(declare-fun res!85290 () Bool)

(declare-fun e!114514 () Bool)

(assert (=> b!187080 (=> (not res!85290) (not e!114514))))

(declare-fun sepAndNonSepRulesDisjointChars!158 (List!3131 List!3131) Bool)

(assert (=> b!187080 (= res!85290 (sepAndNonSepRulesDisjointChars!158 rules!1920 rules!1920))))

(declare-fun b!187081 () Bool)

(declare-fun res!85282 () Bool)

(declare-fun e!114500 () Bool)

(assert (=> b!187081 (=> res!85282 e!114500)))

(declare-fun lt!62886 () List!3130)

(declare-fun isEmpty!1495 (List!3130) Bool)

(assert (=> b!187081 (= res!85282 (not (isEmpty!1495 lt!62886)))))

(declare-fun tp!87717 () Bool)

(declare-fun e!114518 () Bool)

(declare-fun b!187082 () Bool)

(declare-fun e!114497 () Bool)

(assert (=> b!187082 (= e!114518 (and tp!87717 (inv!3949 (tag!747 (h!8518 rules!1920))) (inv!3953 (transformation!569 (h!8518 rules!1920))) e!114497))))

(declare-fun b!187083 () Bool)

(declare-fun e!114517 () Bool)

(assert (=> b!187083 (= e!114517 e!114500)))

(declare-fun res!85279 () Bool)

(assert (=> b!187083 (=> res!85279 e!114500)))

(declare-fun isEmpty!1496 (List!3132) Bool)

(assert (=> b!187083 (= res!85279 (not (isEmpty!1496 (t!28718 tokens!465))))))

(declare-datatypes ((LexerInterface!455 0))(
  ( (LexerInterfaceExt!452 (__x!2670 Int)) (Lexer!453) )
))
(declare-fun thiss!17480 () LexerInterface!455)

(declare-datatypes ((tuple2!3154 0))(
  ( (tuple2!3155 (_1!1793 Token!882) (_2!1793 List!3130)) )
))
(declare-datatypes ((Option!416 0))(
  ( (None!415) (Some!415 (v!13920 tuple2!3154)) )
))
(declare-fun lt!62885 () Option!416)

(declare-fun lt!62902 () List!3130)

(declare-fun maxPrefix!185 (LexerInterface!455 List!3131 List!3130) Option!416)

(assert (=> b!187083 (= lt!62885 (maxPrefix!185 thiss!17480 rules!1920 lt!62902))))

(declare-fun lt!62893 () tuple2!3154)

(assert (=> b!187083 (= lt!62902 (_2!1793 lt!62893))))

(declare-fun lt!62891 () List!3130)

(declare-fun lt!62889 () List!3130)

(declare-datatypes ((Unit!2910 0))(
  ( (Unit!2911) )
))
(declare-fun lt!62883 () Unit!2910)

(declare-fun lemmaSamePrefixThenSameSuffix!90 (List!3130 List!3130 List!3130 List!3130 List!3130) Unit!2910)

(assert (=> b!187083 (= lt!62883 (lemmaSamePrefixThenSameSuffix!90 lt!62891 lt!62902 lt!62891 (_2!1793 lt!62893) lt!62889))))

(declare-fun get!892 (Option!416) tuple2!3154)

(assert (=> b!187083 (= lt!62893 (get!892 (maxPrefix!185 thiss!17480 rules!1920 lt!62889)))))

(declare-fun lt!62904 () List!3130)

(declare-fun isPrefix!265 (List!3130 List!3130) Bool)

(assert (=> b!187083 (isPrefix!265 lt!62891 lt!62904)))

(declare-fun lt!62899 () Unit!2910)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!160 (List!3130 List!3130) Unit!2910)

(assert (=> b!187083 (= lt!62899 (lemmaConcatTwoListThenFirstIsPrefix!160 lt!62891 lt!62902))))

(declare-fun e!114502 () Bool)

(assert (=> b!187083 e!114502))

(declare-fun res!85302 () Bool)

(assert (=> b!187083 (=> res!85302 e!114502)))

(assert (=> b!187083 (= res!85302 (isEmpty!1496 tokens!465))))

(declare-fun separatorToken!170 () Token!882)

(declare-fun lt!62892 () Unit!2910)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!30 (LexerInterface!455 List!3131 List!3132 Token!882) Unit!2910)

(assert (=> b!187083 (= lt!62892 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!30 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!187084 () Bool)

(declare-fun res!85289 () Bool)

(assert (=> b!187084 (=> res!85289 e!114500)))

(declare-fun lt!62906 () List!3132)

(assert (=> b!187084 (= res!85289 (not (= tokens!465 lt!62906)))))

(declare-fun e!114499 () Bool)

(declare-fun e!114498 () Bool)

(assert (=> b!187085 (= e!114499 e!114498)))

(declare-fun res!85292 () Bool)

(assert (=> b!187085 (=> res!85292 e!114498)))

(declare-datatypes ((tuple2!3156 0))(
  ( (tuple2!3157 (_1!1794 Token!882) (_2!1794 BalanceConc!1928)) )
))
(declare-datatypes ((Option!417 0))(
  ( (None!416) (Some!416 (v!13921 tuple2!3156)) )
))
(declare-fun isDefined!267 (Option!417) Bool)

(declare-fun maxPrefixZipperSequence!148 (LexerInterface!455 List!3131 BalanceConc!1928) Option!417)

(declare-fun seqFromList!515 (List!3130) BalanceConc!1928)

(assert (=> b!187085 (= res!85292 (not (isDefined!267 (maxPrefixZipperSequence!148 thiss!17480 rules!1920 (seqFromList!515 (originalCharacters!612 (h!8519 tokens!465)))))))))

(declare-fun lt!62898 () Unit!2910)

(declare-fun forallContained!136 (List!3132 Int Token!882) Unit!2910)

(assert (=> b!187085 (= lt!62898 (forallContained!136 tokens!465 lambda!5654 (h!8519 tokens!465)))))

(assert (=> b!187085 (= lt!62891 (originalCharacters!612 (h!8519 tokens!465)))))

(declare-fun e!114521 () Bool)

(declare-fun e!114504 () Bool)

(declare-fun tp!87716 () Bool)

(declare-fun b!187086 () Bool)

(assert (=> b!187086 (= e!114504 (and tp!87716 (inv!3949 (tag!747 (rule!1084 separatorToken!170))) (inv!3953 (transformation!569 (rule!1084 separatorToken!170))) e!114521))))

(declare-fun b!187087 () Bool)

(declare-fun e!114508 () Bool)

(assert (=> b!187087 (= e!114508 e!114514)))

(declare-fun res!85286 () Bool)

(assert (=> b!187087 (=> (not res!85286) (not e!114514))))

(declare-datatypes ((IArray!1923 0))(
  ( (IArray!1924 (innerList!1019 List!3132)) )
))
(declare-datatypes ((Conc!961 0))(
  ( (Node!961 (left!2440 Conc!961) (right!2770 Conc!961) (csize!2152 Int) (cheight!1172 Int)) (Leaf!1585 (xs!3556 IArray!1923) (csize!2153 Int)) (Empty!961) )
))
(declare-datatypes ((BalanceConc!1930 0))(
  ( (BalanceConc!1931 (c!36117 Conc!961)) )
))
(declare-fun lt!62887 () BalanceConc!1930)

(declare-fun rulesProduceEachTokenIndividually!247 (LexerInterface!455 List!3131 BalanceConc!1930) Bool)

(assert (=> b!187087 (= res!85286 (rulesProduceEachTokenIndividually!247 thiss!17480 rules!1920 lt!62887))))

(declare-fun seqFromList!516 (List!3132) BalanceConc!1930)

(assert (=> b!187087 (= lt!62887 (seqFromList!516 tokens!465))))

(declare-fun b!187088 () Bool)

(declare-fun e!114520 () Bool)

(declare-fun lt!62900 () Option!416)

(declare-fun head!656 (List!3132) Token!882)

(assert (=> b!187088 (= e!114520 (= (_1!1793 (get!892 lt!62900)) (head!656 tokens!465)))))

(declare-fun b!187089 () Bool)

(declare-fun res!85303 () Bool)

(assert (=> b!187089 (=> (not res!85303) (not e!114508))))

(declare-fun rulesInvariant!421 (LexerInterface!455 List!3131) Bool)

(assert (=> b!187089 (= res!85303 (rulesInvariant!421 thiss!17480 rules!1920))))

(declare-fun b!187090 () Bool)

(declare-fun e!114501 () Bool)

(assert (=> b!187090 (= e!114501 e!114499)))

(declare-fun res!85295 () Bool)

(assert (=> b!187090 (=> res!85295 e!114499)))

(declare-fun lt!62901 () List!3130)

(declare-fun lt!62895 () List!3130)

(assert (=> b!187090 (= res!85295 (or (not (= lt!62901 lt!62895)) (not (= lt!62895 lt!62891)) (not (= lt!62901 lt!62891))))))

(declare-fun printList!139 (LexerInterface!455 List!3132) List!3130)

(assert (=> b!187090 (= lt!62895 (printList!139 thiss!17480 lt!62906))))

(declare-fun lt!62890 () BalanceConc!1928)

(declare-fun list!1151 (BalanceConc!1928) List!3130)

(assert (=> b!187090 (= lt!62901 (list!1151 lt!62890))))

(assert (=> b!187090 (= lt!62906 (Cons!3122 (h!8519 tokens!465) Nil!3122))))

(declare-fun lt!62903 () BalanceConc!1930)

(declare-fun printTailRec!149 (LexerInterface!455 BalanceConc!1930 Int BalanceConc!1928) BalanceConc!1928)

(assert (=> b!187090 (= lt!62890 (printTailRec!149 thiss!17480 lt!62903 0 (BalanceConc!1929 Empty!960)))))

(declare-fun print!186 (LexerInterface!455 BalanceConc!1930) BalanceConc!1928)

(assert (=> b!187090 (= lt!62890 (print!186 thiss!17480 lt!62903))))

(declare-fun singletonSeq!121 (Token!882) BalanceConc!1930)

(assert (=> b!187090 (= lt!62903 (singletonSeq!121 (h!8519 tokens!465)))))

(assert (=> b!187091 (= e!114506 (and tp!87713 tp!87723))))

(declare-fun res!85285 () Bool)

(assert (=> start!20322 (=> (not res!85285) (not e!114508))))

(assert (=> start!20322 (= res!85285 ((_ is Lexer!453) thiss!17480))))

(assert (=> start!20322 e!114508))

(assert (=> start!20322 true))

(declare-fun e!114503 () Bool)

(assert (=> start!20322 e!114503))

(declare-fun e!114495 () Bool)

(assert (=> start!20322 (and (inv!3952 separatorToken!170) e!114495)))

(assert (=> start!20322 e!114515))

(assert (=> b!187092 (= e!114521 (and tp!87725 tp!87720))))

(declare-fun b!187093 () Bool)

(declare-fun res!85299 () Bool)

(assert (=> b!187093 (=> res!85299 e!114499)))

(declare-fun rulesProduceIndividualToken!204 (LexerInterface!455 List!3131 Token!882) Bool)

(assert (=> b!187093 (= res!85299 (not (rulesProduceIndividualToken!204 thiss!17480 rules!1920 (h!8519 tokens!465))))))

(declare-fun b!187094 () Bool)

(declare-fun res!85293 () Bool)

(assert (=> b!187094 (=> (not res!85293) (not e!114514))))

(assert (=> b!187094 (= res!85293 ((_ is Cons!3122) tokens!465))))

(declare-fun b!187095 () Bool)

(declare-fun e!114511 () Bool)

(assert (=> b!187095 (= e!114514 e!114511)))

(declare-fun res!85284 () Bool)

(assert (=> b!187095 (=> (not res!85284) (not e!114511))))

(declare-fun lt!62888 () List!3130)

(assert (=> b!187095 (= res!85284 (= lt!62889 lt!62888))))

(declare-fun printWithSeparatorTokenWhenNeededRec!138 (LexerInterface!455 List!3131 BalanceConc!1930 Token!882 Int) BalanceConc!1928)

(assert (=> b!187095 (= lt!62888 (list!1151 (printWithSeparatorTokenWhenNeededRec!138 thiss!17480 rules!1920 lt!62887 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!148 (LexerInterface!455 List!3131 List!3132 Token!882) List!3130)

(assert (=> b!187095 (= lt!62889 (printWithSeparatorTokenWhenNeededList!148 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!187096 () Bool)

(declare-fun res!85291 () Bool)

(assert (=> b!187096 (=> (not res!85291) (not e!114508))))

(declare-fun isEmpty!1497 (List!3131) Bool)

(assert (=> b!187096 (= res!85291 (not (isEmpty!1497 rules!1920)))))

(declare-fun b!187097 () Bool)

(declare-fun e!114516 () Bool)

(declare-fun matchR!131 (Regex!793 List!3130) Bool)

(assert (=> b!187097 (= e!114516 (matchR!131 (regex!569 (rule!1084 (h!8519 tokens!465))) lt!62891))))

(declare-fun b!187098 () Bool)

(declare-fun res!85300 () Bool)

(assert (=> b!187098 (=> (not res!85300) (not e!114514))))

(assert (=> b!187098 (= res!85300 (rulesProduceIndividualToken!204 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!187099 () Bool)

(assert (=> b!187099 (= e!114500 true)))

(declare-fun lt!62882 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!145 (LexerInterface!455 List!3131 List!3132) Bool)

(assert (=> b!187099 (= lt!62882 (rulesProduceEachTokenIndividuallyList!145 thiss!17480 rules!1920 tokens!465))))

(declare-fun b!187100 () Bool)

(declare-fun res!85297 () Bool)

(assert (=> b!187100 (=> res!85297 e!114499)))

(declare-fun isEmpty!1498 (BalanceConc!1930) Bool)

(declare-datatypes ((tuple2!3158 0))(
  ( (tuple2!3159 (_1!1795 BalanceConc!1930) (_2!1795 BalanceConc!1928)) )
))
(declare-fun lex!255 (LexerInterface!455 List!3131 BalanceConc!1928) tuple2!3158)

(assert (=> b!187100 (= res!85297 (isEmpty!1498 (_1!1795 (lex!255 thiss!17480 rules!1920 (seqFromList!515 lt!62891)))))))

(declare-fun b!187101 () Bool)

(declare-fun e!114522 () Bool)

(assert (=> b!187101 (= e!114511 (not e!114522))))

(declare-fun res!85304 () Bool)

(assert (=> b!187101 (=> res!85304 e!114522)))

(assert (=> b!187101 (= res!85304 (not (= lt!62886 (list!1151 (printWithSeparatorTokenWhenNeededRec!138 thiss!17480 rules!1920 (seqFromList!516 (t!28718 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!62905 () List!3130)

(assert (=> b!187101 (= lt!62905 lt!62904)))

(declare-fun ++!742 (List!3130 List!3130) List!3130)

(assert (=> b!187101 (= lt!62904 (++!742 lt!62891 lt!62902))))

(declare-fun lt!62884 () List!3130)

(assert (=> b!187101 (= lt!62905 (++!742 (++!742 lt!62891 lt!62884) lt!62886))))

(declare-fun lt!62896 () Unit!2910)

(declare-fun lemmaConcatAssociativity!258 (List!3130 List!3130 List!3130) Unit!2910)

(assert (=> b!187101 (= lt!62896 (lemmaConcatAssociativity!258 lt!62891 lt!62884 lt!62886))))

(declare-fun charsOf!224 (Token!882) BalanceConc!1928)

(assert (=> b!187101 (= lt!62891 (list!1151 (charsOf!224 (h!8519 tokens!465))))))

(assert (=> b!187101 (= lt!62902 (++!742 lt!62884 lt!62886))))

(assert (=> b!187101 (= lt!62886 (printWithSeparatorTokenWhenNeededList!148 thiss!17480 rules!1920 (t!28718 tokens!465) separatorToken!170))))

(assert (=> b!187101 (= lt!62884 (list!1151 (charsOf!224 separatorToken!170)))))

(declare-fun b!187102 () Bool)

(declare-fun tp!87722 () Bool)

(declare-fun inv!21 (TokenValue!591) Bool)

(assert (=> b!187102 (= e!114510 (and (inv!21 (value!20532 (h!8519 tokens!465))) e!114513 tp!87722))))

(assert (=> b!187103 (= e!114497 (and tp!87714 tp!87724))))

(declare-fun tp!87721 () Bool)

(declare-fun b!187104 () Bool)

(assert (=> b!187104 (= e!114495 (and (inv!21 (value!20532 separatorToken!170)) e!114504 tp!87721))))

(declare-fun b!187105 () Bool)

(declare-fun res!85281 () Bool)

(assert (=> b!187105 (=> (not res!85281) (not e!114516))))

(declare-fun lt!62897 () tuple2!3154)

(assert (=> b!187105 (= res!85281 (isEmpty!1495 (_2!1793 lt!62897)))))

(declare-fun res!85296 () Bool)

(assert (=> b!187106 (=> (not res!85296) (not e!114514))))

(declare-fun forall!649 (List!3132 Int) Bool)

(assert (=> b!187106 (= res!85296 (forall!649 tokens!465 lambda!5653))))

(declare-fun b!187107 () Bool)

(assert (=> b!187107 (= e!114502 e!114520)))

(declare-fun res!85280 () Bool)

(assert (=> b!187107 (=> (not res!85280) (not e!114520))))

(declare-fun isDefined!268 (Option!416) Bool)

(assert (=> b!187107 (= res!85280 (isDefined!268 lt!62900))))

(assert (=> b!187107 (= lt!62900 (maxPrefix!185 thiss!17480 rules!1920 lt!62889))))

(declare-fun b!187108 () Bool)

(declare-fun res!85288 () Bool)

(assert (=> b!187108 (=> (not res!85288) (not e!114511))))

(assert (=> b!187108 (= res!85288 (= (list!1151 (seqFromList!515 lt!62889)) lt!62888))))

(declare-fun b!187109 () Bool)

(declare-fun tp!87718 () Bool)

(assert (=> b!187109 (= e!114503 (and e!114518 tp!87718))))

(declare-fun b!187110 () Bool)

(declare-fun e!114507 () Bool)

(assert (=> b!187110 (= e!114507 (not (= lt!62889 (++!742 lt!62891 lt!62886))))))

(declare-fun b!187111 () Bool)

(declare-fun res!85301 () Bool)

(assert (=> b!187111 (=> (not res!85301) (not e!114514))))

(assert (=> b!187111 (= res!85301 (isSeparator!569 (rule!1084 separatorToken!170)))))

(declare-fun b!187112 () Bool)

(assert (=> b!187112 (= e!114498 e!114517)))

(declare-fun res!85283 () Bool)

(assert (=> b!187112 (=> res!85283 e!114517)))

(declare-fun lt!62894 () Bool)

(assert (=> b!187112 (= res!85283 (not lt!62894))))

(assert (=> b!187112 e!114516))

(declare-fun res!85298 () Bool)

(assert (=> b!187112 (=> (not res!85298) (not e!114516))))

(assert (=> b!187112 (= res!85298 (= (_1!1793 lt!62897) (h!8519 tokens!465)))))

(declare-fun lt!62881 () Option!416)

(assert (=> b!187112 (= lt!62897 (get!892 lt!62881))))

(assert (=> b!187112 (isDefined!268 lt!62881)))

(assert (=> b!187112 (= lt!62881 (maxPrefix!185 thiss!17480 rules!1920 lt!62891))))

(declare-fun b!187113 () Bool)

(assert (=> b!187113 (= e!114522 e!114501)))

(declare-fun res!85287 () Bool)

(assert (=> b!187113 (=> res!85287 e!114501)))

(assert (=> b!187113 (= res!85287 e!114507)))

(declare-fun res!85294 () Bool)

(assert (=> b!187113 (=> (not res!85294) (not e!114507))))

(assert (=> b!187113 (= res!85294 (not lt!62894))))

(assert (=> b!187113 (= lt!62894 (= lt!62889 lt!62904))))

(assert (= (and start!20322 res!85285) b!187096))

(assert (= (and b!187096 res!85291) b!187089))

(assert (= (and b!187089 res!85303) b!187087))

(assert (= (and b!187087 res!85286) b!187098))

(assert (= (and b!187098 res!85300) b!187111))

(assert (= (and b!187111 res!85301) b!187106))

(assert (= (and b!187106 res!85296) b!187080))

(assert (= (and b!187080 res!85290) b!187094))

(assert (= (and b!187094 res!85293) b!187095))

(assert (= (and b!187095 res!85284) b!187108))

(assert (= (and b!187108 res!85288) b!187101))

(assert (= (and b!187101 (not res!85304)) b!187113))

(assert (= (and b!187113 res!85294) b!187110))

(assert (= (and b!187113 (not res!85287)) b!187090))

(assert (= (and b!187090 (not res!85295)) b!187093))

(assert (= (and b!187093 (not res!85299)) b!187100))

(assert (= (and b!187100 (not res!85297)) b!187085))

(assert (= (and b!187085 (not res!85292)) b!187112))

(assert (= (and b!187112 res!85298) b!187105))

(assert (= (and b!187105 res!85281) b!187097))

(assert (= (and b!187112 (not res!85283)) b!187083))

(assert (= (and b!187083 (not res!85302)) b!187107))

(assert (= (and b!187107 res!85280) b!187088))

(assert (= (and b!187083 (not res!85279)) b!187084))

(assert (= (and b!187084 (not res!85289)) b!187081))

(assert (= (and b!187081 (not res!85282)) b!187099))

(assert (= b!187082 b!187103))

(assert (= b!187109 b!187082))

(assert (= (and start!20322 ((_ is Cons!3121) rules!1920)) b!187109))

(assert (= b!187086 b!187092))

(assert (= b!187104 b!187086))

(assert (= start!20322 b!187104))

(assert (= b!187079 b!187091))

(assert (= b!187102 b!187079))

(assert (= b!187078 b!187102))

(assert (= (and start!20322 ((_ is Cons!3122) tokens!465)) b!187078))

(declare-fun m!191615 () Bool)

(assert (=> b!187082 m!191615))

(declare-fun m!191617 () Bool)

(assert (=> b!187082 m!191617))

(declare-fun m!191619 () Bool)

(assert (=> b!187102 m!191619))

(declare-fun m!191621 () Bool)

(assert (=> b!187088 m!191621))

(declare-fun m!191623 () Bool)

(assert (=> b!187088 m!191623))

(declare-fun m!191625 () Bool)

(assert (=> b!187090 m!191625))

(declare-fun m!191627 () Bool)

(assert (=> b!187090 m!191627))

(declare-fun m!191629 () Bool)

(assert (=> b!187090 m!191629))

(declare-fun m!191631 () Bool)

(assert (=> b!187090 m!191631))

(declare-fun m!191633 () Bool)

(assert (=> b!187090 m!191633))

(declare-fun m!191635 () Bool)

(assert (=> b!187086 m!191635))

(declare-fun m!191637 () Bool)

(assert (=> b!187086 m!191637))

(declare-fun m!191639 () Bool)

(assert (=> b!187087 m!191639))

(declare-fun m!191641 () Bool)

(assert (=> b!187087 m!191641))

(declare-fun m!191643 () Bool)

(assert (=> b!187097 m!191643))

(declare-fun m!191645 () Bool)

(assert (=> b!187083 m!191645))

(declare-fun m!191647 () Bool)

(assert (=> b!187083 m!191647))

(declare-fun m!191649 () Bool)

(assert (=> b!187083 m!191649))

(declare-fun m!191651 () Bool)

(assert (=> b!187083 m!191651))

(declare-fun m!191653 () Bool)

(assert (=> b!187083 m!191653))

(declare-fun m!191655 () Bool)

(assert (=> b!187083 m!191655))

(declare-fun m!191657 () Bool)

(assert (=> b!187083 m!191657))

(declare-fun m!191659 () Bool)

(assert (=> b!187083 m!191659))

(assert (=> b!187083 m!191647))

(declare-fun m!191661 () Bool)

(assert (=> b!187083 m!191661))

(declare-fun m!191663 () Bool)

(assert (=> b!187080 m!191663))

(declare-fun m!191665 () Bool)

(assert (=> b!187095 m!191665))

(assert (=> b!187095 m!191665))

(declare-fun m!191667 () Bool)

(assert (=> b!187095 m!191667))

(declare-fun m!191669 () Bool)

(assert (=> b!187095 m!191669))

(declare-fun m!191671 () Bool)

(assert (=> b!187112 m!191671))

(declare-fun m!191673 () Bool)

(assert (=> b!187112 m!191673))

(declare-fun m!191675 () Bool)

(assert (=> b!187112 m!191675))

(declare-fun m!191677 () Bool)

(assert (=> b!187085 m!191677))

(assert (=> b!187085 m!191677))

(declare-fun m!191679 () Bool)

(assert (=> b!187085 m!191679))

(assert (=> b!187085 m!191679))

(declare-fun m!191681 () Bool)

(assert (=> b!187085 m!191681))

(declare-fun m!191683 () Bool)

(assert (=> b!187085 m!191683))

(declare-fun m!191685 () Bool)

(assert (=> b!187100 m!191685))

(assert (=> b!187100 m!191685))

(declare-fun m!191687 () Bool)

(assert (=> b!187100 m!191687))

(declare-fun m!191689 () Bool)

(assert (=> b!187100 m!191689))

(declare-fun m!191691 () Bool)

(assert (=> b!187104 m!191691))

(declare-fun m!191693 () Bool)

(assert (=> b!187106 m!191693))

(declare-fun m!191695 () Bool)

(assert (=> b!187107 m!191695))

(assert (=> b!187107 m!191647))

(declare-fun m!191697 () Bool)

(assert (=> b!187081 m!191697))

(declare-fun m!191699 () Bool)

(assert (=> b!187101 m!191699))

(declare-fun m!191701 () Bool)

(assert (=> b!187101 m!191701))

(declare-fun m!191703 () Bool)

(assert (=> b!187101 m!191703))

(declare-fun m!191705 () Bool)

(assert (=> b!187101 m!191705))

(declare-fun m!191707 () Bool)

(assert (=> b!187101 m!191707))

(declare-fun m!191709 () Bool)

(assert (=> b!187101 m!191709))

(declare-fun m!191711 () Bool)

(assert (=> b!187101 m!191711))

(declare-fun m!191713 () Bool)

(assert (=> b!187101 m!191713))

(declare-fun m!191715 () Bool)

(assert (=> b!187101 m!191715))

(assert (=> b!187101 m!191709))

(assert (=> b!187101 m!191699))

(declare-fun m!191717 () Bool)

(assert (=> b!187101 m!191717))

(declare-fun m!191719 () Bool)

(assert (=> b!187101 m!191719))

(assert (=> b!187101 m!191701))

(assert (=> b!187101 m!191719))

(declare-fun m!191721 () Bool)

(assert (=> b!187101 m!191721))

(assert (=> b!187101 m!191717))

(declare-fun m!191723 () Bool)

(assert (=> b!187101 m!191723))

(declare-fun m!191725 () Bool)

(assert (=> b!187093 m!191725))

(declare-fun m!191727 () Bool)

(assert (=> b!187096 m!191727))

(declare-fun m!191729 () Bool)

(assert (=> b!187098 m!191729))

(declare-fun m!191731 () Bool)

(assert (=> b!187110 m!191731))

(declare-fun m!191733 () Bool)

(assert (=> b!187099 m!191733))

(declare-fun m!191735 () Bool)

(assert (=> b!187105 m!191735))

(declare-fun m!191737 () Bool)

(assert (=> b!187078 m!191737))

(declare-fun m!191739 () Bool)

(assert (=> b!187108 m!191739))

(assert (=> b!187108 m!191739))

(declare-fun m!191741 () Bool)

(assert (=> b!187108 m!191741))

(declare-fun m!191743 () Bool)

(assert (=> start!20322 m!191743))

(declare-fun m!191745 () Bool)

(assert (=> b!187079 m!191745))

(declare-fun m!191747 () Bool)

(assert (=> b!187079 m!191747))

(declare-fun m!191749 () Bool)

(assert (=> b!187089 m!191749))

(check-sat b_and!12903 (not b!187086) (not b_next!7347) (not b!187100) (not b!187110) (not b!187096) (not b!187105) (not b!187106) (not b!187078) (not b!187093) (not b!187085) (not b_next!7343) (not b!187112) (not b!187088) (not b!187090) (not start!20322) (not b!187104) (not b!187081) (not b!187097) b_and!12899 (not b!187082) (not b!187087) (not b!187095) (not b!187099) b_and!12893 (not b!187079) (not b_next!7337) b_and!12897 (not b_next!7345) (not b_next!7339) (not b!187083) b_and!12901 (not b!187098) (not b!187109) (not b!187089) (not b!187108) (not b!187101) (not b!187122) (not b!187107) (not b!187102) (not b_next!7341) (not b!187080) b_and!12895)
(check-sat b_and!12903 (not b_next!7343) b_and!12899 (not b_next!7347) b_and!12893 b_and!12901 (not b_next!7337) b_and!12897 (not b_next!7345) (not b_next!7339) (not b_next!7341) b_and!12895)

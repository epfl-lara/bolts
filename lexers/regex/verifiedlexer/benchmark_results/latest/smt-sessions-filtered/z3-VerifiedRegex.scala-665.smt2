; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24506 () Bool)

(assert start!24506)

(declare-fun b!229909 () Bool)

(declare-fun b_free!8633 () Bool)

(declare-fun b_next!8633 () Bool)

(assert (=> b!229909 (= b_free!8633 (not b_next!8633))))

(declare-fun tp!93962 () Bool)

(declare-fun b_and!17045 () Bool)

(assert (=> b!229909 (= tp!93962 b_and!17045)))

(declare-fun b_free!8635 () Bool)

(declare-fun b_next!8635 () Bool)

(assert (=> b!229909 (= b_free!8635 (not b_next!8635))))

(declare-fun tp!93958 () Bool)

(declare-fun b_and!17047 () Bool)

(assert (=> b!229909 (= tp!93958 b_and!17047)))

(declare-fun b!229914 () Bool)

(declare-fun b_free!8637 () Bool)

(declare-fun b_next!8637 () Bool)

(assert (=> b!229914 (= b_free!8637 (not b_next!8637))))

(declare-fun tp!93967 () Bool)

(declare-fun b_and!17049 () Bool)

(assert (=> b!229914 (= tp!93967 b_and!17049)))

(declare-fun b_free!8639 () Bool)

(declare-fun b_next!8639 () Bool)

(assert (=> b!229914 (= b_free!8639 (not b_next!8639))))

(declare-fun tp!93956 () Bool)

(declare-fun b_and!17051 () Bool)

(assert (=> b!229914 (= tp!93956 b_and!17051)))

(declare-fun b!229902 () Bool)

(declare-fun b_free!8641 () Bool)

(declare-fun b_next!8641 () Bool)

(assert (=> b!229902 (= b_free!8641 (not b_next!8641))))

(declare-fun tp!93955 () Bool)

(declare-fun b_and!17053 () Bool)

(assert (=> b!229902 (= tp!93955 b_and!17053)))

(declare-fun b_free!8643 () Bool)

(declare-fun b_next!8643 () Bool)

(assert (=> b!229902 (= b_free!8643 (not b_next!8643))))

(declare-fun tp!93964 () Bool)

(declare-fun b_and!17055 () Bool)

(assert (=> b!229902 (= tp!93964 b_and!17055)))

(declare-fun bs!24354 () Bool)

(declare-fun b!229934 () Bool)

(declare-fun b!229893 () Bool)

(assert (= bs!24354 (and b!229934 b!229893)))

(declare-fun lambda!7336 () Int)

(declare-fun lambda!7335 () Int)

(assert (=> bs!24354 (not (= lambda!7336 lambda!7335))))

(declare-fun b!229954 () Bool)

(declare-fun e!142293 () Bool)

(assert (=> b!229954 (= e!142293 true)))

(declare-fun b!229953 () Bool)

(declare-fun e!142292 () Bool)

(assert (=> b!229953 (= e!142292 e!142293)))

(declare-fun b!229952 () Bool)

(declare-fun e!142291 () Bool)

(assert (=> b!229952 (= e!142291 e!142292)))

(assert (=> b!229934 e!142291))

(assert (= b!229953 b!229954))

(assert (= b!229952 b!229953))

(declare-datatypes ((List!3489 0))(
  ( (Nil!3479) (Cons!3479 (h!8876 (_ BitVec 16)) (t!33485 List!3489)) )
))
(declare-datatypes ((TokenValue!675 0))(
  ( (FloatLiteralValue!1350 (text!5170 List!3489)) (TokenValueExt!674 (__x!2837 Int)) (Broken!3375 (value!22900 List!3489)) (Object!684) (End!675) (Def!675) (Underscore!675) (Match!675) (Else!675) (Error!675) (Case!675) (If!675) (Extends!675) (Abstract!675) (Class!675) (Val!675) (DelimiterValue!1350 (del!735 List!3489)) (KeywordValue!681 (value!22901 List!3489)) (CommentValue!1350 (value!22902 List!3489)) (WhitespaceValue!1350 (value!22903 List!3489)) (IndentationValue!675 (value!22904 List!3489)) (String!4454) (Int32!675) (Broken!3376 (value!22905 List!3489)) (Boolean!676) (Unit!4011) (OperatorValue!678 (op!735 List!3489)) (IdentifierValue!1350 (value!22906 List!3489)) (IdentifierValue!1351 (value!22907 List!3489)) (WhitespaceValue!1351 (value!22908 List!3489)) (True!1350) (False!1350) (Broken!3377 (value!22909 List!3489)) (Broken!3378 (value!22910 List!3489)) (True!1351) (RightBrace!675) (RightBracket!675) (Colon!675) (Null!675) (Comma!675) (LeftBracket!675) (False!1351) (LeftBrace!675) (ImaginaryLiteralValue!675 (text!5171 List!3489)) (StringLiteralValue!2025 (value!22911 List!3489)) (EOFValue!675 (value!22912 List!3489)) (IdentValue!675 (value!22913 List!3489)) (DelimiterValue!1351 (value!22914 List!3489)) (DedentValue!675 (value!22915 List!3489)) (NewLineValue!675 (value!22916 List!3489)) (IntegerValue!2025 (value!22917 (_ BitVec 32)) (text!5172 List!3489)) (IntegerValue!2026 (value!22918 Int) (text!5173 List!3489)) (Times!675) (Or!675) (Equal!675) (Minus!675) (Broken!3379 (value!22919 List!3489)) (And!675) (Div!675) (LessEqual!675) (Mod!675) (Concat!1552) (Not!675) (Plus!675) (SpaceValue!675 (value!22920 List!3489)) (IntegerValue!2027 (value!22921 Int) (text!5174 List!3489)) (StringLiteralValue!2026 (text!5175 List!3489)) (FloatLiteralValue!1351 (text!5176 List!3489)) (BytesLiteralValue!675 (value!22922 List!3489)) (CommentValue!1351 (value!22923 List!3489)) (StringLiteralValue!2027 (value!22924 List!3489)) (ErrorTokenValue!675 (msg!736 List!3489)) )
))
(declare-datatypes ((C!2676 0))(
  ( (C!2677 (val!1224 Int)) )
))
(declare-datatypes ((List!3490 0))(
  ( (Nil!3480) (Cons!3480 (h!8877 C!2676) (t!33486 List!3490)) )
))
(declare-datatypes ((IArray!2257 0))(
  ( (IArray!2258 (innerList!1186 List!3490)) )
))
(declare-datatypes ((Conc!1128 0))(
  ( (Node!1128 (left!2817 Conc!1128) (right!3147 Conc!1128) (csize!2486 Int) (cheight!1339 Int)) (Leaf!1794 (xs!3723 IArray!2257) (csize!2487 Int)) (Empty!1128) )
))
(declare-datatypes ((BalanceConc!2264 0))(
  ( (BalanceConc!2265 (c!43933 Conc!1128)) )
))
(declare-datatypes ((TokenValueInjection!1122 0))(
  ( (TokenValueInjection!1123 (toValue!1348 Int) (toChars!1207 Int)) )
))
(declare-datatypes ((Regex!877 0))(
  ( (ElementMatch!877 (c!43934 C!2676)) (Concat!1553 (regOne!2266 Regex!877) (regTwo!2266 Regex!877)) (EmptyExpr!877) (Star!877 (reg!1206 Regex!877)) (EmptyLang!877) (Union!877 (regOne!2267 Regex!877) (regTwo!2267 Regex!877)) )
))
(declare-datatypes ((String!4455 0))(
  ( (String!4456 (value!22925 String)) )
))
(declare-datatypes ((Rule!1106 0))(
  ( (Rule!1107 (regex!653 Regex!877) (tag!853 String!4455) (isSeparator!653 Bool) (transformation!653 TokenValueInjection!1122)) )
))
(declare-datatypes ((List!3491 0))(
  ( (Nil!3481) (Cons!3481 (h!8878 Rule!1106) (t!33487 List!3491)) )
))
(declare-fun rules!1920 () List!3491)

(get-info :version)

(assert (= (and b!229934 ((_ is Cons!3481) rules!1920)) b!229952))

(declare-fun order!2441 () Int)

(declare-fun order!2443 () Int)

(declare-fun dynLambda!1629 (Int Int) Int)

(declare-fun dynLambda!1630 (Int Int) Int)

(assert (=> b!229954 (< (dynLambda!1629 order!2441 (toValue!1348 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7336))))

(declare-fun order!2445 () Int)

(declare-fun dynLambda!1631 (Int Int) Int)

(assert (=> b!229954 (< (dynLambda!1631 order!2445 (toChars!1207 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7336))))

(assert (=> b!229934 true))

(declare-fun res!106093 () Bool)

(declare-fun e!142255 () Bool)

(assert (=> b!229893 (=> (not res!106093) (not e!142255))))

(declare-datatypes ((Token!1050 0))(
  ( (Token!1051 (value!22926 TokenValue!675) (rule!1210 Rule!1106) (size!2782 Int) (originalCharacters!696 List!3490)) )
))
(declare-datatypes ((List!3492 0))(
  ( (Nil!3482) (Cons!3482 (h!8879 Token!1050) (t!33488 List!3492)) )
))
(declare-fun tokens!465 () List!3492)

(declare-fun forall!785 (List!3492 Int) Bool)

(assert (=> b!229893 (= res!106093 (forall!785 tokens!465 lambda!7335))))

(declare-fun b!229894 () Bool)

(declare-fun res!106106 () Bool)

(declare-fun e!142261 () Bool)

(assert (=> b!229894 (=> (not res!106106) (not e!142261))))

(declare-datatypes ((IArray!2259 0))(
  ( (IArray!2260 (innerList!1187 List!3492)) )
))
(declare-datatypes ((Conc!1129 0))(
  ( (Node!1129 (left!2818 Conc!1129) (right!3148 Conc!1129) (csize!2488 Int) (cheight!1340 Int)) (Leaf!1795 (xs!3724 IArray!2259) (csize!2489 Int)) (Empty!1129) )
))
(declare-datatypes ((BalanceConc!2266 0))(
  ( (BalanceConc!2267 (c!43935 Conc!1129)) )
))
(declare-datatypes ((tuple2!3776 0))(
  ( (tuple2!3777 (_1!2104 BalanceConc!2266) (_2!2104 BalanceConc!2264)) )
))
(declare-fun lt!90107 () tuple2!3776)

(declare-fun separatorToken!170 () Token!1050)

(declare-fun apply!630 (BalanceConc!2266 Int) Token!1050)

(assert (=> b!229894 (= res!106106 (= (apply!630 (_1!2104 lt!90107) 0) separatorToken!170))))

(declare-fun b!229895 () Bool)

(declare-datatypes ((Unit!4012 0))(
  ( (Unit!4013) )
))
(declare-fun e!142256 () Unit!4012)

(declare-fun Unit!4014 () Unit!4012)

(assert (=> b!229895 (= e!142256 Unit!4014)))

(declare-fun b!229896 () Bool)

(declare-fun e!142277 () Bool)

(declare-fun lt!90143 () Token!1050)

(declare-fun lt!90116 () Rule!1106)

(assert (=> b!229896 (= e!142277 (= (rule!1210 lt!90143) lt!90116))))

(declare-fun b!229897 () Bool)

(declare-fun Unit!4015 () Unit!4012)

(assert (=> b!229897 (= e!142256 Unit!4015)))

(declare-fun lt!90102 () Unit!4012)

(declare-fun lt!90142 () C!2676)

(declare-datatypes ((LexerInterface!539 0))(
  ( (LexerInterfaceExt!536 (__x!2838 Int)) (Lexer!537) )
))
(declare-fun thiss!17480 () LexerInterface!539)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!46 (LexerInterface!539 List!3491 List!3491 Rule!1106 Rule!1106 C!2676) Unit!4012)

(assert (=> b!229897 (= lt!90102 (lemmaSepRuleNotContainsCharContainedInANonSepRule!46 thiss!17480 rules!1920 rules!1920 (rule!1210 lt!90143) (rule!1210 separatorToken!170) lt!90142))))

(assert (=> b!229897 false))

(declare-fun b!229898 () Bool)

(declare-fun e!142258 () Bool)

(declare-fun lt!90127 () List!3490)

(declare-fun matchR!215 (Regex!877 List!3490) Bool)

(assert (=> b!229898 (= e!142258 (matchR!215 (regex!653 (rule!1210 (h!8879 tokens!465))) lt!90127))))

(declare-fun tp!93961 () Bool)

(declare-fun e!142276 () Bool)

(declare-fun e!142257 () Bool)

(declare-fun b!229899 () Bool)

(declare-fun inv!4327 (String!4455) Bool)

(declare-fun inv!4330 (TokenValueInjection!1122) Bool)

(assert (=> b!229899 (= e!142276 (and tp!93961 (inv!4327 (tag!853 (rule!1210 (h!8879 tokens!465)))) (inv!4330 (transformation!653 (rule!1210 (h!8879 tokens!465)))) e!142257))))

(declare-fun b!229900 () Bool)

(declare-fun res!106105 () Bool)

(declare-fun e!142269 () Bool)

(assert (=> b!229900 (=> (not res!106105) (not e!142269))))

(declare-fun isEmpty!2018 (List!3491) Bool)

(assert (=> b!229900 (= res!106105 (not (isEmpty!2018 rules!1920)))))

(declare-fun b!229901 () Bool)

(declare-fun res!106094 () Bool)

(declare-fun e!142247 () Bool)

(assert (=> b!229901 (=> res!106094 e!142247)))

(declare-fun isEmpty!2019 (BalanceConc!2266) Bool)

(declare-fun lex!339 (LexerInterface!539 List!3491 BalanceConc!2264) tuple2!3776)

(declare-fun seqFromList!683 (List!3490) BalanceConc!2264)

(assert (=> b!229901 (= res!106094 (isEmpty!2019 (_1!2104 (lex!339 thiss!17480 rules!1920 (seqFromList!683 lt!90127)))))))

(assert (=> b!229902 (= e!142257 (and tp!93955 tp!93964))))

(declare-fun b!229903 () Bool)

(declare-fun res!106079 () Bool)

(assert (=> b!229903 (=> (not res!106079) (not e!142255))))

(declare-fun rulesProduceIndividualToken!288 (LexerInterface!539 List!3491 Token!1050) Bool)

(assert (=> b!229903 (= res!106079 (rulesProduceIndividualToken!288 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!229904 () Bool)

(declare-fun e!142266 () Bool)

(declare-fun lt!90112 () BalanceConc!2266)

(declare-fun size!2783 (BalanceConc!2266) Int)

(assert (=> b!229904 (= e!142266 (<= 0 (size!2783 lt!90112)))))

(declare-fun b!229905 () Bool)

(declare-fun res!106082 () Bool)

(assert (=> b!229905 (=> (not res!106082) (not e!142255))))

(assert (=> b!229905 (= res!106082 (isSeparator!653 (rule!1210 separatorToken!170)))))

(declare-fun b!229906 () Bool)

(declare-fun e!142263 () Bool)

(declare-fun lt!90108 () tuple2!3776)

(declare-fun isEmpty!2020 (BalanceConc!2264) Bool)

(assert (=> b!229906 (= e!142263 (isEmpty!2020 (_2!2104 lt!90108)))))

(declare-fun b!229907 () Bool)

(declare-fun e!142262 () Bool)

(declare-fun e!142273 () Bool)

(assert (=> b!229907 (= e!142262 e!142273)))

(declare-fun res!106078 () Bool)

(assert (=> b!229907 (=> (not res!106078) (not e!142273))))

(declare-datatypes ((tuple2!3778 0))(
  ( (tuple2!3779 (_1!2105 Token!1050) (_2!2105 List!3490)) )
))
(declare-datatypes ((Option!651 0))(
  ( (None!650) (Some!650 (v!14341 tuple2!3778)) )
))
(declare-fun lt!90145 () Option!651)

(declare-fun isDefined!502 (Option!651) Bool)

(assert (=> b!229907 (= res!106078 (isDefined!502 lt!90145))))

(declare-fun lt!90147 () List!3490)

(declare-fun maxPrefix!269 (LexerInterface!539 List!3491 List!3490) Option!651)

(assert (=> b!229907 (= lt!90145 (maxPrefix!269 thiss!17480 rules!1920 lt!90147))))

(declare-fun b!229908 () Bool)

(declare-fun res!106100 () Bool)

(assert (=> b!229908 (=> (not res!106100) (not e!142269))))

(declare-fun rulesInvariant!505 (LexerInterface!539 List!3491) Bool)

(assert (=> b!229908 (= res!106100 (rulesInvariant!505 thiss!17480 rules!1920))))

(declare-fun e!142270 () Bool)

(assert (=> b!229909 (= e!142270 (and tp!93962 tp!93958))))

(declare-fun b!229910 () Bool)

(declare-fun e!142248 () Unit!4012)

(declare-fun Unit!4016 () Unit!4012)

(assert (=> b!229910 (= e!142248 Unit!4016)))

(declare-fun b!229911 () Bool)

(assert (=> b!229911 (= e!142261 (isEmpty!2020 (_2!2104 lt!90107)))))

(declare-fun e!142268 () Bool)

(declare-fun b!229912 () Bool)

(declare-fun tp!93966 () Bool)

(declare-fun e!142280 () Bool)

(declare-fun inv!4331 (Token!1050) Bool)

(assert (=> b!229912 (= e!142280 (and (inv!4331 (h!8879 tokens!465)) e!142268 tp!93966))))

(declare-fun e!142274 () Bool)

(declare-fun b!229913 () Bool)

(declare-fun tp!93960 () Bool)

(assert (=> b!229913 (= e!142274 (and tp!93960 (inv!4327 (tag!853 (h!8878 rules!1920))) (inv!4330 (transformation!653 (h!8878 rules!1920))) e!142270))))

(declare-fun e!142254 () Bool)

(assert (=> b!229914 (= e!142254 (and tp!93967 tp!93956))))

(declare-fun b!229915 () Bool)

(declare-fun e!142275 () Bool)

(declare-fun e!142283 () Bool)

(assert (=> b!229915 (= e!142275 e!142283)))

(declare-fun res!106107 () Bool)

(assert (=> b!229915 (=> res!106107 e!142283)))

(declare-fun e!142250 () Bool)

(assert (=> b!229915 (= res!106107 e!142250)))

(declare-fun res!106097 () Bool)

(assert (=> b!229915 (=> (not res!106097) (not e!142250))))

(declare-fun lt!90105 () Bool)

(assert (=> b!229915 (= res!106097 (not lt!90105))))

(declare-fun lt!90118 () List!3490)

(assert (=> b!229915 (= lt!90105 (= lt!90147 lt!90118))))

(declare-fun b!229916 () Bool)

(declare-fun res!106091 () Bool)

(declare-fun e!142249 () Bool)

(assert (=> b!229916 (=> (not res!106091) (not e!142249))))

(declare-fun lt!90120 () List!3490)

(declare-fun list!1344 (BalanceConc!2264) List!3490)

(assert (=> b!229916 (= res!106091 (= (list!1344 (seqFromList!683 lt!90147)) lt!90120))))

(declare-fun b!229917 () Bool)

(declare-fun res!106083 () Bool)

(assert (=> b!229917 (=> res!106083 e!142266)))

(declare-fun lt!90134 () List!3490)

(declare-fun filter!47 (List!3492 Int) List!3492)

(declare-datatypes ((tuple2!3780 0))(
  ( (tuple2!3781 (_1!2106 List!3492) (_2!2106 List!3490)) )
))
(declare-fun lexList!167 (LexerInterface!539 List!3491 List!3490) tuple2!3780)

(assert (=> b!229917 (= res!106083 (not (= (filter!47 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134)) lambda!7335) (t!33488 tokens!465))))))

(declare-fun b!229918 () Bool)

(assert (=> b!229918 (= e!142269 e!142255)))

(declare-fun res!106101 () Bool)

(assert (=> b!229918 (=> (not res!106101) (not e!142255))))

(declare-fun rulesProduceEachTokenIndividually!331 (LexerInterface!539 List!3491 BalanceConc!2266) Bool)

(assert (=> b!229918 (= res!106101 (rulesProduceEachTokenIndividually!331 thiss!17480 rules!1920 lt!90112))))

(declare-fun seqFromList!684 (List!3492) BalanceConc!2266)

(assert (=> b!229918 (= lt!90112 (seqFromList!684 tokens!465))))

(declare-fun b!229919 () Bool)

(declare-fun e!142265 () Bool)

(declare-fun tp!93965 () Bool)

(assert (=> b!229919 (= e!142265 (and e!142274 tp!93965))))

(declare-fun b!229920 () Bool)

(declare-fun tp!93959 () Bool)

(declare-fun inv!21 (TokenValue!675) Bool)

(assert (=> b!229920 (= e!142268 (and (inv!21 (value!22926 (h!8879 tokens!465))) e!142276 tp!93959))))

(declare-fun b!229921 () Bool)

(declare-fun e!142253 () Bool)

(assert (=> b!229921 (= e!142253 false)))

(declare-fun b!229922 () Bool)

(assert (=> b!229922 (= e!142283 e!142247)))

(declare-fun res!106095 () Bool)

(assert (=> b!229922 (=> res!106095 e!142247)))

(declare-fun lt!90135 () List!3490)

(declare-fun lt!90150 () List!3490)

(assert (=> b!229922 (= res!106095 (or (not (= lt!90150 lt!90135)) (not (= lt!90135 lt!90127)) (not (= lt!90150 lt!90127))))))

(declare-fun printList!223 (LexerInterface!539 List!3492) List!3490)

(assert (=> b!229922 (= lt!90135 (printList!223 thiss!17480 (Cons!3482 (h!8879 tokens!465) Nil!3482)))))

(declare-fun lt!90100 () BalanceConc!2264)

(assert (=> b!229922 (= lt!90150 (list!1344 lt!90100))))

(declare-fun lt!90131 () BalanceConc!2266)

(declare-fun printTailRec!233 (LexerInterface!539 BalanceConc!2266 Int BalanceConc!2264) BalanceConc!2264)

(assert (=> b!229922 (= lt!90100 (printTailRec!233 thiss!17480 lt!90131 0 (BalanceConc!2265 Empty!1128)))))

(declare-fun print!270 (LexerInterface!539 BalanceConc!2266) BalanceConc!2264)

(assert (=> b!229922 (= lt!90100 (print!270 thiss!17480 lt!90131))))

(declare-fun singletonSeq!205 (Token!1050) BalanceConc!2266)

(assert (=> b!229922 (= lt!90131 (singletonSeq!205 (h!8879 tokens!465)))))

(declare-fun b!229923 () Bool)

(declare-fun e!142282 () Unit!4012)

(declare-fun Unit!4017 () Unit!4012)

(assert (=> b!229923 (= e!142282 Unit!4017)))

(assert (=> b!229923 false))

(declare-fun b!229924 () Bool)

(declare-fun e!142267 () Bool)

(assert (=> b!229924 (= e!142267 e!142266)))

(declare-fun res!106102 () Bool)

(assert (=> b!229924 (=> res!106102 e!142266)))

(declare-fun lt!90139 () List!3492)

(assert (=> b!229924 (= res!106102 (not (= (filter!47 lt!90139 lambda!7335) (t!33488 tokens!465))))))

(assert (=> b!229924 (= (filter!47 lt!90139 lambda!7335) (t!33488 tokens!465))))

(declare-fun lt!90114 () BalanceConc!2264)

(declare-fun list!1345 (BalanceConc!2266) List!3492)

(assert (=> b!229924 (= lt!90139 (list!1345 (_1!2104 (lex!339 thiss!17480 rules!1920 lt!90114))))))

(declare-fun lt!90123 () Unit!4012)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!38 (LexerInterface!539 List!3491 List!3492 Token!1050) Unit!4012)

(assert (=> b!229924 (= lt!90123 (theoremInvertabilityFromTokensSepTokenWhenNeeded!38 thiss!17480 rules!1920 (t!33488 tokens!465) separatorToken!170))))

(declare-fun lt!90136 () Option!651)

(assert (=> b!229924 (= lt!90136 (Some!650 (tuple2!3779 separatorToken!170 lt!90134)))))

(declare-fun lt!90130 () Unit!4012)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!44 (LexerInterface!539 List!3491 Token!1050 Rule!1106 List!3490 Rule!1106) Unit!4012)

(assert (=> b!229924 (= lt!90130 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!44 thiss!17480 rules!1920 separatorToken!170 (rule!1210 separatorToken!170) lt!90134 (rule!1210 lt!90143)))))

(declare-fun lt!90109 () Unit!4012)

(assert (=> b!229924 (= lt!90109 e!142256)))

(declare-fun c!43930 () Bool)

(declare-fun contains!628 (List!3490 C!2676) Bool)

(declare-fun usedCharacters!58 (Regex!877) List!3490)

(assert (=> b!229924 (= c!43930 (contains!628 (usedCharacters!58 (regex!653 (rule!1210 separatorToken!170))) lt!90142))))

(declare-fun head!801 (List!3490) C!2676)

(assert (=> b!229924 (= lt!90142 (head!801 lt!90134))))

(declare-fun lt!90122 () Unit!4012)

(assert (=> b!229924 (= lt!90122 e!142248)))

(declare-fun c!43931 () Bool)

(declare-fun lt!90138 () C!2676)

(assert (=> b!229924 (= c!43931 (not (contains!628 (usedCharacters!58 (regex!653 (rule!1210 lt!90143))) lt!90138)))))

(declare-fun lt!90117 () List!3490)

(assert (=> b!229924 (= lt!90138 (head!801 lt!90117))))

(declare-fun e!142251 () Bool)

(assert (=> b!229924 e!142251))

(declare-fun res!106109 () Bool)

(assert (=> b!229924 (=> (not res!106109) (not e!142251))))

(declare-datatypes ((Option!652 0))(
  ( (None!651) (Some!651 (v!14342 Rule!1106)) )
))
(declare-fun lt!90126 () Option!652)

(declare-fun isDefined!503 (Option!652) Bool)

(assert (=> b!229924 (= res!106109 (isDefined!503 lt!90126))))

(declare-fun getRuleFromTag!94 (LexerInterface!539 List!3491 String!4455) Option!652)

(assert (=> b!229924 (= lt!90126 (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 lt!90143))))))

(declare-fun lt!90129 () Unit!4012)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!94 (LexerInterface!539 List!3491 List!3490 Token!1050) Unit!4012)

(assert (=> b!229924 (= lt!90129 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!94 thiss!17480 rules!1920 lt!90117 lt!90143))))

(declare-fun charsOf!308 (Token!1050) BalanceConc!2264)

(assert (=> b!229924 (= lt!90117 (list!1344 (charsOf!308 lt!90143)))))

(declare-fun lt!90119 () Unit!4012)

(declare-fun forallContained!220 (List!3492 Int Token!1050) Unit!4012)

(assert (=> b!229924 (= lt!90119 (forallContained!220 tokens!465 lambda!7336 lt!90143))))

(assert (=> b!229924 e!142263))

(declare-fun res!106085 () Bool)

(assert (=> b!229924 (=> (not res!106085) (not e!142263))))

(assert (=> b!229924 (= res!106085 (= (size!2783 (_1!2104 lt!90108)) 1))))

(declare-fun lt!90144 () BalanceConc!2264)

(assert (=> b!229924 (= lt!90108 (lex!339 thiss!17480 rules!1920 lt!90144))))

(declare-fun lt!90132 () BalanceConc!2266)

(assert (=> b!229924 (= lt!90144 (printTailRec!233 thiss!17480 lt!90132 0 (BalanceConc!2265 Empty!1128)))))

(assert (=> b!229924 (= lt!90144 (print!270 thiss!17480 lt!90132))))

(assert (=> b!229924 (= lt!90132 (singletonSeq!205 lt!90143))))

(declare-fun e!142279 () Bool)

(assert (=> b!229924 e!142279))

(declare-fun res!106089 () Bool)

(assert (=> b!229924 (=> (not res!106089) (not e!142279))))

(declare-fun lt!90110 () Option!652)

(assert (=> b!229924 (= res!106089 (isDefined!503 lt!90110))))

(assert (=> b!229924 (= lt!90110 (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 separatorToken!170))))))

(declare-fun lt!90121 () List!3490)

(declare-fun lt!90128 () Unit!4012)

(assert (=> b!229924 (= lt!90128 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!94 thiss!17480 rules!1920 lt!90121 separatorToken!170))))

(assert (=> b!229924 e!142261))

(declare-fun res!106077 () Bool)

(assert (=> b!229924 (=> (not res!106077) (not e!142261))))

(assert (=> b!229924 (= res!106077 (= (size!2783 (_1!2104 lt!90107)) 1))))

(declare-fun lt!90111 () BalanceConc!2264)

(assert (=> b!229924 (= lt!90107 (lex!339 thiss!17480 rules!1920 lt!90111))))

(declare-fun lt!90146 () BalanceConc!2266)

(assert (=> b!229924 (= lt!90111 (printTailRec!233 thiss!17480 lt!90146 0 (BalanceConc!2265 Empty!1128)))))

(assert (=> b!229924 (= lt!90111 (print!270 thiss!17480 lt!90146))))

(assert (=> b!229924 (= lt!90146 (singletonSeq!205 separatorToken!170))))

(assert (=> b!229924 (rulesProduceIndividualToken!288 thiss!17480 rules!1920 lt!90143)))

(declare-fun lt!90101 () Unit!4012)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!106 (LexerInterface!539 List!3491 List!3492 Token!1050) Unit!4012)

(assert (=> b!229924 (= lt!90101 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!106 thiss!17480 rules!1920 tokens!465 lt!90143))))

(declare-fun head!802 (List!3492) Token!1050)

(assert (=> b!229924 (= lt!90143 (head!802 (t!33488 tokens!465)))))

(declare-fun lt!90137 () Unit!4012)

(assert (=> b!229924 (= lt!90137 e!142282)))

(declare-fun c!43932 () Bool)

(declare-fun isEmpty!2021 (List!3492) Bool)

(assert (=> b!229924 (= c!43932 (isEmpty!2021 (t!33488 tokens!465)))))

(declare-fun lt!90124 () List!3490)

(assert (=> b!229924 (= lt!90136 (maxPrefix!269 thiss!17480 rules!1920 lt!90124))))

(declare-fun lt!90103 () tuple2!3778)

(assert (=> b!229924 (= lt!90124 (_2!2105 lt!90103))))

(declare-fun lt!90141 () Unit!4012)

(declare-fun lemmaSamePrefixThenSameSuffix!174 (List!3490 List!3490 List!3490 List!3490 List!3490) Unit!4012)

(assert (=> b!229924 (= lt!90141 (lemmaSamePrefixThenSameSuffix!174 lt!90127 lt!90124 lt!90127 (_2!2105 lt!90103) lt!90147))))

(declare-fun get!1109 (Option!651) tuple2!3778)

(assert (=> b!229924 (= lt!90103 (get!1109 (maxPrefix!269 thiss!17480 rules!1920 lt!90147)))))

(declare-fun isPrefix!349 (List!3490 List!3490) Bool)

(assert (=> b!229924 (isPrefix!349 lt!90127 lt!90118)))

(declare-fun lt!90104 () Unit!4012)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!244 (List!3490 List!3490) Unit!4012)

(assert (=> b!229924 (= lt!90104 (lemmaConcatTwoListThenFirstIsPrefix!244 lt!90127 lt!90124))))

(assert (=> b!229924 e!142262))

(declare-fun res!106103 () Bool)

(assert (=> b!229924 (=> res!106103 e!142262)))

(assert (=> b!229924 (= res!106103 (isEmpty!2021 tokens!465))))

(declare-fun lt!90149 () Unit!4012)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!114 (LexerInterface!539 List!3491 List!3492 Token!1050) Unit!4012)

(assert (=> b!229924 (= lt!90149 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!114 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!229925 () Bool)

(declare-fun Unit!4018 () Unit!4012)

(assert (=> b!229925 (= e!142282 Unit!4018)))

(declare-fun b!229926 () Bool)

(declare-fun e!142271 () Bool)

(declare-fun lt!90115 () Rule!1106)

(assert (=> b!229926 (= e!142271 (= (rule!1210 separatorToken!170) lt!90115))))

(declare-fun b!229927 () Bool)

(declare-fun e!142264 () Bool)

(declare-fun tp!93957 () Bool)

(assert (=> b!229927 (= e!142264 (and tp!93957 (inv!4327 (tag!853 (rule!1210 separatorToken!170))) (inv!4330 (transformation!653 (rule!1210 separatorToken!170))) e!142254))))

(declare-fun e!142272 () Bool)

(declare-fun tp!93963 () Bool)

(declare-fun b!229928 () Bool)

(assert (=> b!229928 (= e!142272 (and (inv!21 (value!22926 separatorToken!170)) e!142264 tp!93963))))

(declare-fun b!229929 () Bool)

(assert (=> b!229929 (= e!142255 e!142249)))

(declare-fun res!106108 () Bool)

(assert (=> b!229929 (=> (not res!106108) (not e!142249))))

(assert (=> b!229929 (= res!106108 (= lt!90147 lt!90120))))

(declare-fun printWithSeparatorTokenWhenNeededRec!222 (LexerInterface!539 List!3491 BalanceConc!2266 Token!1050 Int) BalanceConc!2264)

(assert (=> b!229929 (= lt!90120 (list!1344 (printWithSeparatorTokenWhenNeededRec!222 thiss!17480 rules!1920 lt!90112 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!232 (LexerInterface!539 List!3491 List!3492 Token!1050) List!3490)

(assert (=> b!229929 (= lt!90147 (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!106110 () Bool)

(assert (=> start!24506 (=> (not res!106110) (not e!142269))))

(assert (=> start!24506 (= res!106110 ((_ is Lexer!537) thiss!17480))))

(assert (=> start!24506 e!142269))

(assert (=> start!24506 true))

(assert (=> start!24506 e!142265))

(assert (=> start!24506 (and (inv!4331 separatorToken!170) e!142272)))

(assert (=> start!24506 e!142280))

(declare-fun b!229930 () Bool)

(assert (=> b!229930 (= e!142279 e!142271)))

(declare-fun res!106104 () Bool)

(assert (=> b!229930 (=> (not res!106104) (not e!142271))))

(assert (=> b!229930 (= res!106104 (matchR!215 (regex!653 lt!90115) lt!90121))))

(declare-fun get!1110 (Option!652) Rule!1106)

(assert (=> b!229930 (= lt!90115 (get!1110 lt!90110))))

(declare-fun b!229931 () Bool)

(declare-fun ++!874 (List!3490 List!3490) List!3490)

(assert (=> b!229931 (= e!142250 (not (= lt!90147 (++!874 lt!90127 lt!90134))))))

(declare-fun b!229932 () Bool)

(declare-fun res!106084 () Bool)

(assert (=> b!229932 (=> (not res!106084) (not e!142255))))

(assert (=> b!229932 (= res!106084 ((_ is Cons!3482) tokens!465))))

(declare-fun b!229933 () Bool)

(declare-fun Unit!4019 () Unit!4012)

(assert (=> b!229933 (= e!142248 Unit!4019)))

(declare-fun lt!90125 () Unit!4012)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!52 (Regex!877 List!3490 C!2676) Unit!4012)

(assert (=> b!229933 (= lt!90125 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!52 (regex!653 (rule!1210 lt!90143)) lt!90117 lt!90138))))

(declare-fun res!106098 () Bool)

(assert (=> b!229933 (= res!106098 (not (matchR!215 (regex!653 (rule!1210 lt!90143)) lt!90117)))))

(assert (=> b!229933 (=> (not res!106098) (not e!142253))))

(assert (=> b!229933 e!142253))

(declare-fun e!142278 () Bool)

(assert (=> b!229934 (= e!142247 e!142278)))

(declare-fun res!106076 () Bool)

(assert (=> b!229934 (=> res!106076 e!142278)))

(declare-datatypes ((tuple2!3782 0))(
  ( (tuple2!3783 (_1!2107 Token!1050) (_2!2107 BalanceConc!2264)) )
))
(declare-datatypes ((Option!653 0))(
  ( (None!652) (Some!652 (v!14343 tuple2!3782)) )
))
(declare-fun isDefined!504 (Option!653) Bool)

(declare-fun maxPrefixZipperSequence!232 (LexerInterface!539 List!3491 BalanceConc!2264) Option!653)

(assert (=> b!229934 (= res!106076 (not (isDefined!504 (maxPrefixZipperSequence!232 thiss!17480 rules!1920 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))))

(declare-fun lt!90140 () Unit!4012)

(assert (=> b!229934 (= lt!90140 (forallContained!220 tokens!465 lambda!7336 (h!8879 tokens!465)))))

(assert (=> b!229934 (= lt!90127 (originalCharacters!696 (h!8879 tokens!465)))))

(declare-fun b!229935 () Bool)

(assert (=> b!229935 (= e!142251 e!142277)))

(declare-fun res!106099 () Bool)

(assert (=> b!229935 (=> (not res!106099) (not e!142277))))

(assert (=> b!229935 (= res!106099 (matchR!215 (regex!653 lt!90116) lt!90117))))

(assert (=> b!229935 (= lt!90116 (get!1110 lt!90126))))

(declare-fun b!229936 () Bool)

(declare-fun res!106096 () Bool)

(assert (=> b!229936 (=> (not res!106096) (not e!142263))))

(assert (=> b!229936 (= res!106096 (= (apply!630 (_1!2104 lt!90108) 0) lt!90143))))

(declare-fun b!229937 () Bool)

(declare-fun res!106087 () Bool)

(assert (=> b!229937 (=> (not res!106087) (not e!142258))))

(declare-fun lt!90113 () tuple2!3778)

(declare-fun isEmpty!2022 (List!3490) Bool)

(assert (=> b!229937 (= res!106087 (isEmpty!2022 (_2!2105 lt!90113)))))

(declare-fun b!229938 () Bool)

(declare-fun res!106080 () Bool)

(assert (=> b!229938 (=> res!106080 e!142266)))

(assert (=> b!229938 (= res!106080 (not (= (filter!47 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147)) lambda!7335) tokens!465)))))

(declare-fun b!229939 () Bool)

(assert (=> b!229939 (= e!142249 (not e!142275))))

(declare-fun res!106088 () Bool)

(assert (=> b!229939 (=> res!106088 e!142275)))

(assert (=> b!229939 (= res!106088 (not (= lt!90134 (list!1344 lt!90114))))))

(assert (=> b!229939 (= lt!90114 (printWithSeparatorTokenWhenNeededRec!222 thiss!17480 rules!1920 (seqFromList!684 (t!33488 tokens!465)) separatorToken!170 0))))

(declare-fun lt!90133 () List!3490)

(assert (=> b!229939 (= lt!90133 lt!90118)))

(assert (=> b!229939 (= lt!90118 (++!874 lt!90127 lt!90124))))

(assert (=> b!229939 (= lt!90133 (++!874 (++!874 lt!90127 lt!90121) lt!90134))))

(declare-fun lt!90106 () Unit!4012)

(declare-fun lemmaConcatAssociativity!354 (List!3490 List!3490 List!3490) Unit!4012)

(assert (=> b!229939 (= lt!90106 (lemmaConcatAssociativity!354 lt!90127 lt!90121 lt!90134))))

(assert (=> b!229939 (= lt!90127 (list!1344 (charsOf!308 (h!8879 tokens!465))))))

(assert (=> b!229939 (= lt!90124 (++!874 lt!90121 lt!90134))))

(assert (=> b!229939 (= lt!90134 (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 (t!33488 tokens!465) separatorToken!170))))

(assert (=> b!229939 (= lt!90121 (list!1344 (charsOf!308 separatorToken!170)))))

(declare-fun b!229940 () Bool)

(declare-fun res!106086 () Bool)

(assert (=> b!229940 (=> res!106086 e!142247)))

(assert (=> b!229940 (= res!106086 (not (rulesProduceIndividualToken!288 thiss!17480 rules!1920 (h!8879 tokens!465))))))

(declare-fun b!229941 () Bool)

(declare-fun res!106090 () Bool)

(assert (=> b!229941 (=> (not res!106090) (not e!142255))))

(declare-fun sepAndNonSepRulesDisjointChars!242 (List!3491 List!3491) Bool)

(assert (=> b!229941 (= res!106090 (sepAndNonSepRulesDisjointChars!242 rules!1920 rules!1920))))

(declare-fun b!229942 () Bool)

(assert (=> b!229942 (= e!142273 (= (_1!2105 (get!1109 lt!90145)) (head!802 tokens!465)))))

(declare-fun b!229943 () Bool)

(assert (=> b!229943 (= e!142278 e!142267)))

(declare-fun res!106081 () Bool)

(assert (=> b!229943 (=> res!106081 e!142267)))

(assert (=> b!229943 (= res!106081 (not lt!90105))))

(assert (=> b!229943 e!142258))

(declare-fun res!106092 () Bool)

(assert (=> b!229943 (=> (not res!106092) (not e!142258))))

(assert (=> b!229943 (= res!106092 (= (_1!2105 lt!90113) (h!8879 tokens!465)))))

(declare-fun lt!90148 () Option!651)

(assert (=> b!229943 (= lt!90113 (get!1109 lt!90148))))

(assert (=> b!229943 (isDefined!502 lt!90148)))

(assert (=> b!229943 (= lt!90148 (maxPrefix!269 thiss!17480 rules!1920 lt!90127))))

(assert (= (and start!24506 res!106110) b!229900))

(assert (= (and b!229900 res!106105) b!229908))

(assert (= (and b!229908 res!106100) b!229918))

(assert (= (and b!229918 res!106101) b!229903))

(assert (= (and b!229903 res!106079) b!229905))

(assert (= (and b!229905 res!106082) b!229893))

(assert (= (and b!229893 res!106093) b!229941))

(assert (= (and b!229941 res!106090) b!229932))

(assert (= (and b!229932 res!106084) b!229929))

(assert (= (and b!229929 res!106108) b!229916))

(assert (= (and b!229916 res!106091) b!229939))

(assert (= (and b!229939 (not res!106088)) b!229915))

(assert (= (and b!229915 res!106097) b!229931))

(assert (= (and b!229915 (not res!106107)) b!229922))

(assert (= (and b!229922 (not res!106095)) b!229940))

(assert (= (and b!229940 (not res!106086)) b!229901))

(assert (= (and b!229901 (not res!106094)) b!229934))

(assert (= (and b!229934 (not res!106076)) b!229943))

(assert (= (and b!229943 res!106092) b!229937))

(assert (= (and b!229937 res!106087) b!229898))

(assert (= (and b!229943 (not res!106081)) b!229924))

(assert (= (and b!229924 (not res!106103)) b!229907))

(assert (= (and b!229907 res!106078) b!229942))

(assert (= (and b!229924 c!43932) b!229923))

(assert (= (and b!229924 (not c!43932)) b!229925))

(assert (= (and b!229924 res!106077) b!229894))

(assert (= (and b!229894 res!106106) b!229911))

(assert (= (and b!229924 res!106089) b!229930))

(assert (= (and b!229930 res!106104) b!229926))

(assert (= (and b!229924 res!106085) b!229936))

(assert (= (and b!229936 res!106096) b!229906))

(assert (= (and b!229924 res!106109) b!229935))

(assert (= (and b!229935 res!106099) b!229896))

(assert (= (and b!229924 c!43931) b!229933))

(assert (= (and b!229924 (not c!43931)) b!229910))

(assert (= (and b!229933 res!106098) b!229921))

(assert (= (and b!229924 c!43930) b!229897))

(assert (= (and b!229924 (not c!43930)) b!229895))

(assert (= (and b!229924 (not res!106102)) b!229917))

(assert (= (and b!229917 (not res!106083)) b!229938))

(assert (= (and b!229938 (not res!106080)) b!229904))

(assert (= b!229913 b!229909))

(assert (= b!229919 b!229913))

(assert (= (and start!24506 ((_ is Cons!3481) rules!1920)) b!229919))

(assert (= b!229927 b!229914))

(assert (= b!229928 b!229927))

(assert (= start!24506 b!229928))

(assert (= b!229899 b!229902))

(assert (= b!229920 b!229899))

(assert (= b!229912 b!229920))

(assert (= (and start!24506 ((_ is Cons!3482) tokens!465)) b!229912))

(declare-fun m!271245 () Bool)

(assert (=> b!229943 m!271245))

(declare-fun m!271247 () Bool)

(assert (=> b!229943 m!271247))

(declare-fun m!271249 () Bool)

(assert (=> b!229943 m!271249))

(declare-fun m!271251 () Bool)

(assert (=> b!229937 m!271251))

(declare-fun m!271253 () Bool)

(assert (=> b!229935 m!271253))

(declare-fun m!271255 () Bool)

(assert (=> b!229935 m!271255))

(declare-fun m!271257 () Bool)

(assert (=> b!229927 m!271257))

(declare-fun m!271259 () Bool)

(assert (=> b!229927 m!271259))

(declare-fun m!271261 () Bool)

(assert (=> b!229904 m!271261))

(declare-fun m!271263 () Bool)

(assert (=> b!229907 m!271263))

(declare-fun m!271265 () Bool)

(assert (=> b!229907 m!271265))

(declare-fun m!271267 () Bool)

(assert (=> b!229899 m!271267))

(declare-fun m!271269 () Bool)

(assert (=> b!229899 m!271269))

(declare-fun m!271271 () Bool)

(assert (=> b!229897 m!271271))

(declare-fun m!271273 () Bool)

(assert (=> b!229929 m!271273))

(assert (=> b!229929 m!271273))

(declare-fun m!271275 () Bool)

(assert (=> b!229929 m!271275))

(declare-fun m!271277 () Bool)

(assert (=> b!229929 m!271277))

(declare-fun m!271279 () Bool)

(assert (=> b!229898 m!271279))

(declare-fun m!271281 () Bool)

(assert (=> b!229920 m!271281))

(declare-fun m!271283 () Bool)

(assert (=> b!229940 m!271283))

(declare-fun m!271285 () Bool)

(assert (=> b!229911 m!271285))

(declare-fun m!271287 () Bool)

(assert (=> b!229934 m!271287))

(assert (=> b!229934 m!271287))

(declare-fun m!271289 () Bool)

(assert (=> b!229934 m!271289))

(assert (=> b!229934 m!271289))

(declare-fun m!271291 () Bool)

(assert (=> b!229934 m!271291))

(declare-fun m!271293 () Bool)

(assert (=> b!229934 m!271293))

(declare-fun m!271295 () Bool)

(assert (=> b!229930 m!271295))

(declare-fun m!271297 () Bool)

(assert (=> b!229930 m!271297))

(declare-fun m!271299 () Bool)

(assert (=> b!229916 m!271299))

(assert (=> b!229916 m!271299))

(declare-fun m!271301 () Bool)

(assert (=> b!229916 m!271301))

(declare-fun m!271303 () Bool)

(assert (=> b!229939 m!271303))

(declare-fun m!271305 () Bool)

(assert (=> b!229939 m!271305))

(declare-fun m!271307 () Bool)

(assert (=> b!229939 m!271307))

(declare-fun m!271309 () Bool)

(assert (=> b!229939 m!271309))

(declare-fun m!271311 () Bool)

(assert (=> b!229939 m!271311))

(declare-fun m!271313 () Bool)

(assert (=> b!229939 m!271313))

(declare-fun m!271315 () Bool)

(assert (=> b!229939 m!271315))

(declare-fun m!271317 () Bool)

(assert (=> b!229939 m!271317))

(declare-fun m!271319 () Bool)

(assert (=> b!229939 m!271319))

(assert (=> b!229939 m!271311))

(declare-fun m!271321 () Bool)

(assert (=> b!229939 m!271321))

(assert (=> b!229939 m!271317))

(declare-fun m!271323 () Bool)

(assert (=> b!229939 m!271323))

(assert (=> b!229939 m!271303))

(assert (=> b!229939 m!271315))

(declare-fun m!271325 () Bool)

(assert (=> b!229939 m!271325))

(declare-fun m!271327 () Bool)

(assert (=> b!229939 m!271327))

(declare-fun m!271329 () Bool)

(assert (=> b!229942 m!271329))

(declare-fun m!271331 () Bool)

(assert (=> b!229942 m!271331))

(declare-fun m!271333 () Bool)

(assert (=> b!229901 m!271333))

(assert (=> b!229901 m!271333))

(declare-fun m!271335 () Bool)

(assert (=> b!229901 m!271335))

(declare-fun m!271337 () Bool)

(assert (=> b!229901 m!271337))

(declare-fun m!271339 () Bool)

(assert (=> b!229936 m!271339))

(declare-fun m!271341 () Bool)

(assert (=> b!229917 m!271341))

(declare-fun m!271343 () Bool)

(assert (=> b!229917 m!271343))

(declare-fun m!271345 () Bool)

(assert (=> b!229924 m!271345))

(declare-fun m!271347 () Bool)

(assert (=> b!229924 m!271347))

(declare-fun m!271349 () Bool)

(assert (=> b!229924 m!271349))

(declare-fun m!271351 () Bool)

(assert (=> b!229924 m!271351))

(declare-fun m!271353 () Bool)

(assert (=> b!229924 m!271353))

(assert (=> b!229924 m!271353))

(declare-fun m!271355 () Bool)

(assert (=> b!229924 m!271355))

(declare-fun m!271357 () Bool)

(assert (=> b!229924 m!271357))

(declare-fun m!271359 () Bool)

(assert (=> b!229924 m!271359))

(declare-fun m!271361 () Bool)

(assert (=> b!229924 m!271361))

(declare-fun m!271363 () Bool)

(assert (=> b!229924 m!271363))

(declare-fun m!271365 () Bool)

(assert (=> b!229924 m!271365))

(declare-fun m!271367 () Bool)

(assert (=> b!229924 m!271367))

(declare-fun m!271369 () Bool)

(assert (=> b!229924 m!271369))

(declare-fun m!271371 () Bool)

(assert (=> b!229924 m!271371))

(declare-fun m!271373 () Bool)

(assert (=> b!229924 m!271373))

(declare-fun m!271375 () Bool)

(assert (=> b!229924 m!271375))

(declare-fun m!271377 () Bool)

(assert (=> b!229924 m!271377))

(declare-fun m!271379 () Bool)

(assert (=> b!229924 m!271379))

(declare-fun m!271381 () Bool)

(assert (=> b!229924 m!271381))

(declare-fun m!271383 () Bool)

(assert (=> b!229924 m!271383))

(declare-fun m!271385 () Bool)

(assert (=> b!229924 m!271385))

(declare-fun m!271387 () Bool)

(assert (=> b!229924 m!271387))

(declare-fun m!271389 () Bool)

(assert (=> b!229924 m!271389))

(declare-fun m!271391 () Bool)

(assert (=> b!229924 m!271391))

(declare-fun m!271393 () Bool)

(assert (=> b!229924 m!271393))

(assert (=> b!229924 m!271265))

(declare-fun m!271395 () Bool)

(assert (=> b!229924 m!271395))

(assert (=> b!229924 m!271265))

(declare-fun m!271397 () Bool)

(assert (=> b!229924 m!271397))

(declare-fun m!271399 () Bool)

(assert (=> b!229924 m!271399))

(declare-fun m!271401 () Bool)

(assert (=> b!229924 m!271401))

(assert (=> b!229924 m!271349))

(declare-fun m!271403 () Bool)

(assert (=> b!229924 m!271403))

(declare-fun m!271405 () Bool)

(assert (=> b!229924 m!271405))

(declare-fun m!271407 () Bool)

(assert (=> b!229924 m!271407))

(declare-fun m!271409 () Bool)

(assert (=> b!229924 m!271409))

(assert (=> b!229924 m!271407))

(declare-fun m!271411 () Bool)

(assert (=> b!229924 m!271411))

(declare-fun m!271413 () Bool)

(assert (=> b!229924 m!271413))

(declare-fun m!271415 () Bool)

(assert (=> b!229924 m!271415))

(declare-fun m!271417 () Bool)

(assert (=> b!229924 m!271417))

(declare-fun m!271419 () Bool)

(assert (=> b!229924 m!271419))

(assert (=> b!229924 m!271377))

(declare-fun m!271421 () Bool)

(assert (=> b!229924 m!271421))

(declare-fun m!271423 () Bool)

(assert (=> b!229924 m!271423))

(declare-fun m!271425 () Bool)

(assert (=> b!229924 m!271425))

(declare-fun m!271427 () Bool)

(assert (=> b!229933 m!271427))

(declare-fun m!271429 () Bool)

(assert (=> b!229933 m!271429))

(declare-fun m!271431 () Bool)

(assert (=> b!229931 m!271431))

(declare-fun m!271433 () Bool)

(assert (=> b!229906 m!271433))

(declare-fun m!271435 () Bool)

(assert (=> b!229908 m!271435))

(declare-fun m!271437 () Bool)

(assert (=> b!229928 m!271437))

(declare-fun m!271439 () Bool)

(assert (=> b!229894 m!271439))

(declare-fun m!271441 () Bool)

(assert (=> b!229941 m!271441))

(declare-fun m!271443 () Bool)

(assert (=> b!229918 m!271443))

(declare-fun m!271445 () Bool)

(assert (=> b!229918 m!271445))

(declare-fun m!271447 () Bool)

(assert (=> b!229903 m!271447))

(declare-fun m!271449 () Bool)

(assert (=> b!229900 m!271449))

(declare-fun m!271451 () Bool)

(assert (=> b!229893 m!271451))

(declare-fun m!271453 () Bool)

(assert (=> b!229913 m!271453))

(declare-fun m!271455 () Bool)

(assert (=> b!229913 m!271455))

(declare-fun m!271457 () Bool)

(assert (=> b!229922 m!271457))

(declare-fun m!271459 () Bool)

(assert (=> b!229922 m!271459))

(declare-fun m!271461 () Bool)

(assert (=> b!229922 m!271461))

(declare-fun m!271463 () Bool)

(assert (=> b!229922 m!271463))

(declare-fun m!271465 () Bool)

(assert (=> b!229922 m!271465))

(declare-fun m!271467 () Bool)

(assert (=> b!229912 m!271467))

(declare-fun m!271469 () Bool)

(assert (=> b!229938 m!271469))

(declare-fun m!271471 () Bool)

(assert (=> b!229938 m!271471))

(declare-fun m!271473 () Bool)

(assert (=> start!24506 m!271473))

(check-sat (not b_next!8641) (not b!229904) (not start!24506) (not b!229929) (not b!229920) (not b!229939) (not b_next!8635) (not b!229913) (not b!229911) (not b!229922) (not b!229903) (not b!229894) (not b!229897) (not b!229942) (not b!229899) (not b!229908) (not b!229943) b_and!17053 (not b!229924) (not b_next!8637) b_and!17055 b_and!17045 (not b!229900) (not b!229936) (not b!229930) (not b!229952) (not b!229933) (not b!229938) (not b_next!8633) (not b!229940) (not b!229907) b_and!17047 (not b!229898) (not b!229928) b_and!17049 (not b!229916) (not b_next!8639) (not b_next!8643) (not b!229919) (not b!229912) (not b!229934) (not b!229941) b_and!17051 (not b!229918) (not b!229901) (not b!229937) (not b!229917) (not b!229927) (not b!229931) (not b!229893) (not b!229906) (not b!229935))
(check-sat (not b_next!8641) b_and!17053 b_and!17045 (not b_next!8633) (not b_next!8635) b_and!17047 b_and!17049 b_and!17051 (not b_next!8637) b_and!17055 (not b_next!8639) (not b_next!8643))
(get-model)

(declare-fun b!230068 () Bool)

(declare-fun e!142365 () Bool)

(declare-fun inv!17 (TokenValue!675) Bool)

(assert (=> b!230068 (= e!142365 (inv!17 (value!22926 (h!8879 tokens!465))))))

(declare-fun b!230069 () Bool)

(declare-fun e!142364 () Bool)

(assert (=> b!230069 (= e!142364 e!142365)))

(declare-fun c!43958 () Bool)

(assert (=> b!230069 (= c!43958 ((_ is IntegerValue!2026) (value!22926 (h!8879 tokens!465))))))

(declare-fun d!63228 () Bool)

(declare-fun c!43959 () Bool)

(assert (=> d!63228 (= c!43959 ((_ is IntegerValue!2025) (value!22926 (h!8879 tokens!465))))))

(assert (=> d!63228 (= (inv!21 (value!22926 (h!8879 tokens!465))) e!142364)))

(declare-fun b!230070 () Bool)

(declare-fun e!142366 () Bool)

(declare-fun inv!15 (TokenValue!675) Bool)

(assert (=> b!230070 (= e!142366 (inv!15 (value!22926 (h!8879 tokens!465))))))

(declare-fun b!230071 () Bool)

(declare-fun res!106190 () Bool)

(assert (=> b!230071 (=> res!106190 e!142366)))

(assert (=> b!230071 (= res!106190 (not ((_ is IntegerValue!2027) (value!22926 (h!8879 tokens!465)))))))

(assert (=> b!230071 (= e!142365 e!142366)))

(declare-fun b!230072 () Bool)

(declare-fun inv!16 (TokenValue!675) Bool)

(assert (=> b!230072 (= e!142364 (inv!16 (value!22926 (h!8879 tokens!465))))))

(assert (= (and d!63228 c!43959) b!230072))

(assert (= (and d!63228 (not c!43959)) b!230069))

(assert (= (and b!230069 c!43958) b!230068))

(assert (= (and b!230069 (not c!43958)) b!230071))

(assert (= (and b!230071 (not res!106190)) b!230070))

(declare-fun m!271597 () Bool)

(assert (=> b!230068 m!271597))

(declare-fun m!271599 () Bool)

(assert (=> b!230070 m!271599))

(declare-fun m!271601 () Bool)

(assert (=> b!230072 m!271601))

(assert (=> b!229920 d!63228))

(declare-fun d!63230 () Bool)

(assert (=> d!63230 (= (inv!4327 (tag!853 (rule!1210 (h!8879 tokens!465)))) (= (mod (str.len (value!22925 (tag!853 (rule!1210 (h!8879 tokens!465))))) 2) 0))))

(assert (=> b!229899 d!63230))

(declare-fun d!63232 () Bool)

(declare-fun res!106195 () Bool)

(declare-fun e!142373 () Bool)

(assert (=> d!63232 (=> (not res!106195) (not e!142373))))

(declare-fun semiInverseModEq!223 (Int Int) Bool)

(assert (=> d!63232 (= res!106195 (semiInverseModEq!223 (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (toValue!1348 (transformation!653 (rule!1210 (h!8879 tokens!465))))))))

(assert (=> d!63232 (= (inv!4330 (transformation!653 (rule!1210 (h!8879 tokens!465)))) e!142373)))

(declare-fun b!230081 () Bool)

(declare-fun equivClasses!206 (Int Int) Bool)

(assert (=> b!230081 (= e!142373 (equivClasses!206 (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (toValue!1348 (transformation!653 (rule!1210 (h!8879 tokens!465))))))))

(assert (= (and d!63232 res!106195) b!230081))

(declare-fun m!271603 () Bool)

(assert (=> d!63232 m!271603))

(declare-fun m!271605 () Bool)

(assert (=> b!230081 m!271605))

(assert (=> b!229899 d!63232))

(declare-fun b!230155 () Bool)

(declare-fun e!142412 () Bool)

(declare-fun derivativeStep!115 (Regex!877 C!2676) Regex!877)

(declare-fun tail!428 (List!3490) List!3490)

(assert (=> b!230155 (= e!142412 (matchR!215 (derivativeStep!115 (regex!653 (rule!1210 (h!8879 tokens!465))) (head!801 lt!90127)) (tail!428 lt!90127)))))

(declare-fun b!230156 () Bool)

(declare-fun e!142413 () Bool)

(declare-fun lt!90225 () Bool)

(assert (=> b!230156 (= e!142413 (not lt!90225))))

(declare-fun b!230157 () Bool)

(declare-fun e!142417 () Bool)

(assert (=> b!230157 (= e!142417 e!142413)))

(declare-fun c!43989 () Bool)

(assert (=> b!230157 (= c!43989 ((_ is EmptyLang!877) (regex!653 (rule!1210 (h!8879 tokens!465)))))))

(declare-fun b!230158 () Bool)

(declare-fun res!106219 () Bool)

(declare-fun e!142416 () Bool)

(assert (=> b!230158 (=> res!106219 e!142416)))

(assert (=> b!230158 (= res!106219 (not ((_ is ElementMatch!877) (regex!653 (rule!1210 (h!8879 tokens!465))))))))

(assert (=> b!230158 (= e!142413 e!142416)))

(declare-fun b!230159 () Bool)

(declare-fun res!106220 () Bool)

(assert (=> b!230159 (=> res!106220 e!142416)))

(declare-fun e!142414 () Bool)

(assert (=> b!230159 (= res!106220 e!142414)))

(declare-fun res!106224 () Bool)

(assert (=> b!230159 (=> (not res!106224) (not e!142414))))

(assert (=> b!230159 (= res!106224 lt!90225)))

(declare-fun d!63234 () Bool)

(assert (=> d!63234 e!142417))

(declare-fun c!43987 () Bool)

(assert (=> d!63234 (= c!43987 ((_ is EmptyExpr!877) (regex!653 (rule!1210 (h!8879 tokens!465)))))))

(assert (=> d!63234 (= lt!90225 e!142412)))

(declare-fun c!43988 () Bool)

(assert (=> d!63234 (= c!43988 (isEmpty!2022 lt!90127))))

(declare-fun validRegex!224 (Regex!877) Bool)

(assert (=> d!63234 (validRegex!224 (regex!653 (rule!1210 (h!8879 tokens!465))))))

(assert (=> d!63234 (= (matchR!215 (regex!653 (rule!1210 (h!8879 tokens!465))) lt!90127) lt!90225)))

(declare-fun b!230160 () Bool)

(declare-fun e!142415 () Bool)

(assert (=> b!230160 (= e!142416 e!142415)))

(declare-fun res!106223 () Bool)

(assert (=> b!230160 (=> (not res!106223) (not e!142415))))

(assert (=> b!230160 (= res!106223 (not lt!90225))))

(declare-fun b!230161 () Bool)

(declare-fun call!11727 () Bool)

(assert (=> b!230161 (= e!142417 (= lt!90225 call!11727))))

(declare-fun b!230162 () Bool)

(declare-fun e!142411 () Bool)

(assert (=> b!230162 (= e!142415 e!142411)))

(declare-fun res!106222 () Bool)

(assert (=> b!230162 (=> res!106222 e!142411)))

(assert (=> b!230162 (= res!106222 call!11727)))

(declare-fun bm!11722 () Bool)

(assert (=> bm!11722 (= call!11727 (isEmpty!2022 lt!90127))))

(declare-fun b!230163 () Bool)

(declare-fun nullable!149 (Regex!877) Bool)

(assert (=> b!230163 (= e!142412 (nullable!149 (regex!653 (rule!1210 (h!8879 tokens!465)))))))

(declare-fun b!230164 () Bool)

(assert (=> b!230164 (= e!142411 (not (= (head!801 lt!90127) (c!43934 (regex!653 (rule!1210 (h!8879 tokens!465)))))))))

(declare-fun b!230165 () Bool)

(declare-fun res!106225 () Bool)

(assert (=> b!230165 (=> (not res!106225) (not e!142414))))

(assert (=> b!230165 (= res!106225 (isEmpty!2022 (tail!428 lt!90127)))))

(declare-fun b!230166 () Bool)

(declare-fun res!106221 () Bool)

(assert (=> b!230166 (=> (not res!106221) (not e!142414))))

(assert (=> b!230166 (= res!106221 (not call!11727))))

(declare-fun b!230167 () Bool)

(declare-fun res!106226 () Bool)

(assert (=> b!230167 (=> res!106226 e!142411)))

(assert (=> b!230167 (= res!106226 (not (isEmpty!2022 (tail!428 lt!90127))))))

(declare-fun b!230168 () Bool)

(assert (=> b!230168 (= e!142414 (= (head!801 lt!90127) (c!43934 (regex!653 (rule!1210 (h!8879 tokens!465))))))))

(assert (= (and d!63234 c!43988) b!230163))

(assert (= (and d!63234 (not c!43988)) b!230155))

(assert (= (and d!63234 c!43987) b!230161))

(assert (= (and d!63234 (not c!43987)) b!230157))

(assert (= (and b!230157 c!43989) b!230156))

(assert (= (and b!230157 (not c!43989)) b!230158))

(assert (= (and b!230158 (not res!106219)) b!230159))

(assert (= (and b!230159 res!106224) b!230166))

(assert (= (and b!230166 res!106221) b!230165))

(assert (= (and b!230165 res!106225) b!230168))

(assert (= (and b!230159 (not res!106220)) b!230160))

(assert (= (and b!230160 res!106223) b!230162))

(assert (= (and b!230162 (not res!106222)) b!230167))

(assert (= (and b!230167 (not res!106226)) b!230164))

(assert (= (or b!230161 b!230162 b!230166) bm!11722))

(declare-fun m!271663 () Bool)

(assert (=> b!230163 m!271663))

(declare-fun m!271665 () Bool)

(assert (=> b!230155 m!271665))

(assert (=> b!230155 m!271665))

(declare-fun m!271667 () Bool)

(assert (=> b!230155 m!271667))

(declare-fun m!271669 () Bool)

(assert (=> b!230155 m!271669))

(assert (=> b!230155 m!271667))

(assert (=> b!230155 m!271669))

(declare-fun m!271671 () Bool)

(assert (=> b!230155 m!271671))

(declare-fun m!271673 () Bool)

(assert (=> d!63234 m!271673))

(declare-fun m!271675 () Bool)

(assert (=> d!63234 m!271675))

(assert (=> b!230167 m!271669))

(assert (=> b!230167 m!271669))

(declare-fun m!271677 () Bool)

(assert (=> b!230167 m!271677))

(assert (=> bm!11722 m!271673))

(assert (=> b!230164 m!271665))

(assert (=> b!230165 m!271669))

(assert (=> b!230165 m!271669))

(assert (=> b!230165 m!271677))

(assert (=> b!230168 m!271665))

(assert (=> b!229898 d!63234))

(declare-fun d!63242 () Bool)

(declare-fun res!106238 () Bool)

(declare-fun e!142427 () Bool)

(assert (=> d!63242 (=> res!106238 e!142427)))

(assert (=> d!63242 (= res!106238 (not ((_ is Cons!3481) rules!1920)))))

(assert (=> d!63242 (= (sepAndNonSepRulesDisjointChars!242 rules!1920 rules!1920) e!142427)))

(declare-fun b!230182 () Bool)

(declare-fun e!142428 () Bool)

(assert (=> b!230182 (= e!142427 e!142428)))

(declare-fun res!106239 () Bool)

(assert (=> b!230182 (=> (not res!106239) (not e!142428))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!82 (Rule!1106 List!3491) Bool)

(assert (=> b!230182 (= res!106239 (ruleDisjointCharsFromAllFromOtherType!82 (h!8878 rules!1920) rules!1920))))

(declare-fun b!230183 () Bool)

(assert (=> b!230183 (= e!142428 (sepAndNonSepRulesDisjointChars!242 rules!1920 (t!33487 rules!1920)))))

(assert (= (and d!63242 (not res!106238)) b!230182))

(assert (= (and b!230182 res!106239) b!230183))

(declare-fun m!271719 () Bool)

(assert (=> b!230182 m!271719))

(declare-fun m!271723 () Bool)

(assert (=> b!230183 m!271723))

(assert (=> b!229941 d!63242))

(declare-fun d!63252 () Bool)

(declare-fun lt!90241 () Bool)

(declare-fun e!142434 () Bool)

(assert (=> d!63252 (= lt!90241 e!142434)))

(declare-fun res!106246 () Bool)

(assert (=> d!63252 (=> (not res!106246) (not e!142434))))

(assert (=> d!63252 (= res!106246 (= (list!1345 (_1!2104 (lex!339 thiss!17480 rules!1920 (print!270 thiss!17480 (singletonSeq!205 (h!8879 tokens!465)))))) (list!1345 (singletonSeq!205 (h!8879 tokens!465)))))))

(declare-fun e!142433 () Bool)

(assert (=> d!63252 (= lt!90241 e!142433)))

(declare-fun res!106247 () Bool)

(assert (=> d!63252 (=> (not res!106247) (not e!142433))))

(declare-fun lt!90240 () tuple2!3776)

(assert (=> d!63252 (= res!106247 (= (size!2783 (_1!2104 lt!90240)) 1))))

(assert (=> d!63252 (= lt!90240 (lex!339 thiss!17480 rules!1920 (print!270 thiss!17480 (singletonSeq!205 (h!8879 tokens!465)))))))

(assert (=> d!63252 (not (isEmpty!2018 rules!1920))))

(assert (=> d!63252 (= (rulesProduceIndividualToken!288 thiss!17480 rules!1920 (h!8879 tokens!465)) lt!90241)))

(declare-fun b!230190 () Bool)

(declare-fun res!106248 () Bool)

(assert (=> b!230190 (=> (not res!106248) (not e!142433))))

(assert (=> b!230190 (= res!106248 (= (apply!630 (_1!2104 lt!90240) 0) (h!8879 tokens!465)))))

(declare-fun b!230191 () Bool)

(assert (=> b!230191 (= e!142433 (isEmpty!2020 (_2!2104 lt!90240)))))

(declare-fun b!230192 () Bool)

(assert (=> b!230192 (= e!142434 (isEmpty!2020 (_2!2104 (lex!339 thiss!17480 rules!1920 (print!270 thiss!17480 (singletonSeq!205 (h!8879 tokens!465)))))))))

(assert (= (and d!63252 res!106247) b!230190))

(assert (= (and b!230190 res!106248) b!230191))

(assert (= (and d!63252 res!106246) b!230192))

(declare-fun m!271725 () Bool)

(assert (=> d!63252 m!271725))

(declare-fun m!271727 () Bool)

(assert (=> d!63252 m!271727))

(assert (=> d!63252 m!271461))

(assert (=> d!63252 m!271725))

(assert (=> d!63252 m!271449))

(declare-fun m!271729 () Bool)

(assert (=> d!63252 m!271729))

(assert (=> d!63252 m!271461))

(assert (=> d!63252 m!271461))

(declare-fun m!271731 () Bool)

(assert (=> d!63252 m!271731))

(declare-fun m!271733 () Bool)

(assert (=> d!63252 m!271733))

(declare-fun m!271735 () Bool)

(assert (=> b!230190 m!271735))

(declare-fun m!271737 () Bool)

(assert (=> b!230191 m!271737))

(assert (=> b!230192 m!271461))

(assert (=> b!230192 m!271461))

(assert (=> b!230192 m!271725))

(assert (=> b!230192 m!271725))

(assert (=> b!230192 m!271727))

(declare-fun m!271739 () Bool)

(assert (=> b!230192 m!271739))

(assert (=> b!229940 d!63252))

(declare-fun bs!24365 () Bool)

(declare-fun d!63254 () Bool)

(assert (= bs!24365 (and d!63254 b!229893)))

(declare-fun lambda!7344 () Int)

(assert (=> bs!24365 (not (= lambda!7344 lambda!7335))))

(declare-fun bs!24366 () Bool)

(assert (= bs!24366 (and d!63254 b!229934)))

(assert (=> bs!24366 (= lambda!7344 lambda!7336)))

(declare-fun b!230229 () Bool)

(declare-fun e!142458 () Bool)

(assert (=> b!230229 (= e!142458 true)))

(declare-fun b!230228 () Bool)

(declare-fun e!142457 () Bool)

(assert (=> b!230228 (= e!142457 e!142458)))

(declare-fun b!230227 () Bool)

(declare-fun e!142456 () Bool)

(assert (=> b!230227 (= e!142456 e!142457)))

(assert (=> d!63254 e!142456))

(assert (= b!230228 b!230229))

(assert (= b!230227 b!230228))

(assert (= (and d!63254 ((_ is Cons!3481) rules!1920)) b!230227))

(assert (=> b!230229 (< (dynLambda!1629 order!2441 (toValue!1348 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7344))))

(assert (=> b!230229 (< (dynLambda!1631 order!2445 (toChars!1207 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7344))))

(assert (=> d!63254 true))

(declare-fun e!142451 () Bool)

(assert (=> d!63254 e!142451))

(declare-fun res!106266 () Bool)

(assert (=> d!63254 (=> (not res!106266) (not e!142451))))

(declare-fun lt!90257 () Bool)

(assert (=> d!63254 (= res!106266 (= lt!90257 (forall!785 (list!1345 lt!90112) lambda!7344)))))

(declare-fun forall!786 (BalanceConc!2266 Int) Bool)

(assert (=> d!63254 (= lt!90257 (forall!786 lt!90112 lambda!7344))))

(assert (=> d!63254 (not (isEmpty!2018 rules!1920))))

(assert (=> d!63254 (= (rulesProduceEachTokenIndividually!331 thiss!17480 rules!1920 lt!90112) lt!90257)))

(declare-fun b!230218 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!186 (LexerInterface!539 List!3491 List!3492) Bool)

(assert (=> b!230218 (= e!142451 (= lt!90257 (rulesProduceEachTokenIndividuallyList!186 thiss!17480 rules!1920 (list!1345 lt!90112))))))

(assert (= (and d!63254 res!106266) b!230218))

(declare-fun m!271817 () Bool)

(assert (=> d!63254 m!271817))

(assert (=> d!63254 m!271817))

(declare-fun m!271819 () Bool)

(assert (=> d!63254 m!271819))

(declare-fun m!271821 () Bool)

(assert (=> d!63254 m!271821))

(assert (=> d!63254 m!271449))

(assert (=> b!230218 m!271817))

(assert (=> b!230218 m!271817))

(declare-fun m!271823 () Bool)

(assert (=> b!230218 m!271823))

(assert (=> b!229918 d!63254))

(declare-fun d!63278 () Bool)

(declare-fun fromListB!250 (List!3492) BalanceConc!2266)

(assert (=> d!63278 (= (seqFromList!684 tokens!465) (fromListB!250 tokens!465))))

(declare-fun bs!24369 () Bool)

(assert (= bs!24369 d!63278))

(declare-fun m!271831 () Bool)

(assert (=> bs!24369 m!271831))

(assert (=> b!229918 d!63278))

(declare-fun d!63282 () Bool)

(assert (=> d!63282 (not (contains!628 (usedCharacters!58 (regex!653 (rule!1210 separatorToken!170))) lt!90142))))

(declare-fun lt!90265 () Unit!4012)

(declare-fun choose!2212 (LexerInterface!539 List!3491 List!3491 Rule!1106 Rule!1106 C!2676) Unit!4012)

(assert (=> d!63282 (= lt!90265 (choose!2212 thiss!17480 rules!1920 rules!1920 (rule!1210 lt!90143) (rule!1210 separatorToken!170) lt!90142))))

(assert (=> d!63282 (rulesInvariant!505 thiss!17480 rules!1920)))

(assert (=> d!63282 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!46 thiss!17480 rules!1920 rules!1920 (rule!1210 lt!90143) (rule!1210 separatorToken!170) lt!90142) lt!90265)))

(declare-fun bs!24370 () Bool)

(assert (= bs!24370 d!63282))

(assert (=> bs!24370 m!271407))

(assert (=> bs!24370 m!271407))

(assert (=> bs!24370 m!271411))

(declare-fun m!271835 () Bool)

(assert (=> bs!24370 m!271835))

(assert (=> bs!24370 m!271435))

(assert (=> b!229897 d!63282))

(declare-fun d!63286 () Bool)

(assert (=> d!63286 (= (seqFromList!684 (t!33488 tokens!465)) (fromListB!250 (t!33488 tokens!465)))))

(declare-fun bs!24371 () Bool)

(assert (= bs!24371 d!63286))

(declare-fun m!271837 () Bool)

(assert (=> bs!24371 m!271837))

(assert (=> b!229939 d!63286))

(declare-fun d!63288 () Bool)

(declare-fun list!1347 (Conc!1128) List!3490)

(assert (=> d!63288 (= (list!1344 lt!90114) (list!1347 (c!43933 lt!90114)))))

(declare-fun bs!24372 () Bool)

(assert (= bs!24372 d!63288))

(declare-fun m!271839 () Bool)

(assert (=> bs!24372 m!271839))

(assert (=> b!229939 d!63288))

(declare-fun d!63290 () Bool)

(assert (=> d!63290 (= (list!1344 (charsOf!308 separatorToken!170)) (list!1347 (c!43933 (charsOf!308 separatorToken!170))))))

(declare-fun bs!24373 () Bool)

(assert (= bs!24373 d!63290))

(declare-fun m!271841 () Bool)

(assert (=> bs!24373 m!271841))

(assert (=> b!229939 d!63290))

(declare-fun e!142466 () List!3490)

(declare-fun b!230241 () Bool)

(assert (=> b!230241 (= e!142466 (Cons!3480 (h!8877 (++!874 lt!90127 lt!90121)) (++!874 (t!33486 (++!874 lt!90127 lt!90121)) lt!90134)))))

(declare-fun d!63292 () Bool)

(declare-fun e!142465 () Bool)

(assert (=> d!63292 e!142465))

(declare-fun res!106273 () Bool)

(assert (=> d!63292 (=> (not res!106273) (not e!142465))))

(declare-fun lt!90268 () List!3490)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!482 (List!3490) (InoxSet C!2676))

(assert (=> d!63292 (= res!106273 (= (content!482 lt!90268) ((_ map or) (content!482 (++!874 lt!90127 lt!90121)) (content!482 lt!90134))))))

(assert (=> d!63292 (= lt!90268 e!142466)))

(declare-fun c!44002 () Bool)

(assert (=> d!63292 (= c!44002 ((_ is Nil!3480) (++!874 lt!90127 lt!90121)))))

(assert (=> d!63292 (= (++!874 (++!874 lt!90127 lt!90121) lt!90134) lt!90268)))

(declare-fun b!230242 () Bool)

(declare-fun res!106274 () Bool)

(assert (=> b!230242 (=> (not res!106274) (not e!142465))))

(declare-fun size!2788 (List!3490) Int)

(assert (=> b!230242 (= res!106274 (= (size!2788 lt!90268) (+ (size!2788 (++!874 lt!90127 lt!90121)) (size!2788 lt!90134))))))

(declare-fun b!230240 () Bool)

(assert (=> b!230240 (= e!142466 lt!90134)))

(declare-fun b!230243 () Bool)

(assert (=> b!230243 (= e!142465 (or (not (= lt!90134 Nil!3480)) (= lt!90268 (++!874 lt!90127 lt!90121))))))

(assert (= (and d!63292 c!44002) b!230240))

(assert (= (and d!63292 (not c!44002)) b!230241))

(assert (= (and d!63292 res!106273) b!230242))

(assert (= (and b!230242 res!106274) b!230243))

(declare-fun m!271843 () Bool)

(assert (=> b!230241 m!271843))

(declare-fun m!271845 () Bool)

(assert (=> d!63292 m!271845))

(assert (=> d!63292 m!271317))

(declare-fun m!271847 () Bool)

(assert (=> d!63292 m!271847))

(declare-fun m!271849 () Bool)

(assert (=> d!63292 m!271849))

(declare-fun m!271851 () Bool)

(assert (=> b!230242 m!271851))

(assert (=> b!230242 m!271317))

(declare-fun m!271853 () Bool)

(assert (=> b!230242 m!271853))

(declare-fun m!271855 () Bool)

(assert (=> b!230242 m!271855))

(assert (=> b!229939 d!63292))

(declare-fun bs!24377 () Bool)

(declare-fun b!230286 () Bool)

(assert (= bs!24377 (and b!230286 b!229893)))

(declare-fun lambda!7347 () Int)

(assert (=> bs!24377 (not (= lambda!7347 lambda!7335))))

(declare-fun bs!24378 () Bool)

(assert (= bs!24378 (and b!230286 b!229934)))

(assert (=> bs!24378 (= lambda!7347 lambda!7336)))

(declare-fun bs!24379 () Bool)

(assert (= bs!24379 (and b!230286 d!63254)))

(assert (=> bs!24379 (= lambda!7347 lambda!7344)))

(declare-fun b!230292 () Bool)

(declare-fun e!142497 () Bool)

(assert (=> b!230292 (= e!142497 true)))

(declare-fun b!230291 () Bool)

(declare-fun e!142496 () Bool)

(assert (=> b!230291 (= e!142496 e!142497)))

(declare-fun b!230290 () Bool)

(declare-fun e!142495 () Bool)

(assert (=> b!230290 (= e!142495 e!142496)))

(assert (=> b!230286 e!142495))

(assert (= b!230291 b!230292))

(assert (= b!230290 b!230291))

(assert (= (and b!230286 ((_ is Cons!3481) rules!1920)) b!230290))

(assert (=> b!230292 (< (dynLambda!1629 order!2441 (toValue!1348 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7347))))

(assert (=> b!230292 (< (dynLambda!1631 order!2445 (toChars!1207 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7347))))

(assert (=> b!230286 true))

(declare-fun b!230282 () Bool)

(declare-fun e!142493 () List!3490)

(declare-fun call!11745 () List!3490)

(declare-fun lt!90299 () List!3490)

(assert (=> b!230282 (= e!142493 (++!874 call!11745 lt!90299))))

(declare-fun b!230283 () Bool)

(assert (=> b!230283 (= e!142493 Nil!3480)))

(assert (=> b!230283 (= (print!270 thiss!17480 (singletonSeq!205 (h!8879 (t!33488 tokens!465)))) (printTailRec!233 thiss!17480 (singletonSeq!205 (h!8879 (t!33488 tokens!465))) 0 (BalanceConc!2265 Empty!1128)))))

(declare-fun lt!90298 () Unit!4012)

(declare-fun Unit!4020 () Unit!4012)

(assert (=> b!230283 (= lt!90298 Unit!4020)))

(declare-fun lt!90296 () Unit!4012)

(declare-fun call!11742 () List!3490)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!79 (LexerInterface!539 List!3491 List!3490 List!3490) Unit!4012)

(assert (=> b!230283 (= lt!90296 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!79 thiss!17480 rules!1920 call!11742 lt!90299))))

(assert (=> b!230283 false))

(declare-fun lt!90300 () Unit!4012)

(declare-fun Unit!4021 () Unit!4012)

(assert (=> b!230283 (= lt!90300 Unit!4021)))

(declare-fun b!230284 () Bool)

(declare-fun e!142494 () List!3490)

(assert (=> b!230284 (= e!142494 call!11745)))

(declare-fun call!11744 () BalanceConc!2264)

(declare-fun call!11746 () BalanceConc!2264)

(declare-fun c!44014 () Bool)

(declare-fun call!11743 () List!3490)

(declare-fun bm!11737 () Bool)

(assert (=> bm!11737 (= call!11743 (list!1344 (ite c!44014 call!11746 call!11744)))))

(declare-fun b!230285 () Bool)

(declare-fun e!142491 () List!3490)

(assert (=> b!230285 (= e!142491 Nil!3480)))

(declare-fun d!63294 () Bool)

(declare-fun c!44011 () Bool)

(assert (=> d!63294 (= c!44011 ((_ is Cons!3482) (t!33488 tokens!465)))))

(assert (=> d!63294 (= (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 (t!33488 tokens!465) separatorToken!170) e!142491)))

(declare-fun bm!11738 () Bool)

(assert (=> bm!11738 (= call!11745 (++!874 call!11743 (ite c!44014 lt!90299 call!11742)))))

(declare-fun bm!11739 () Bool)

(declare-fun e!142492 () BalanceConc!2264)

(assert (=> bm!11739 (= call!11742 (list!1344 e!142492))))

(declare-fun c!44013 () Bool)

(declare-fun c!44012 () Bool)

(assert (=> bm!11739 (= c!44013 c!44012)))

(assert (=> b!230286 (= e!142491 e!142494)))

(declare-fun lt!90297 () Unit!4012)

(assert (=> b!230286 (= lt!90297 (forallContained!220 (t!33488 tokens!465) lambda!7347 (h!8879 (t!33488 tokens!465))))))

(assert (=> b!230286 (= lt!90299 (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 (t!33488 (t!33488 tokens!465)) separatorToken!170))))

(declare-fun lt!90301 () Option!651)

(assert (=> b!230286 (= lt!90301 (maxPrefix!269 thiss!17480 rules!1920 (++!874 (list!1344 (charsOf!308 (h!8879 (t!33488 tokens!465)))) lt!90299)))))

(assert (=> b!230286 (= c!44014 (and ((_ is Some!650) lt!90301) (= (_1!2105 (v!14341 lt!90301)) (h!8879 (t!33488 tokens!465)))))))

(declare-fun b!230287 () Bool)

(assert (=> b!230287 (= e!142492 call!11744)))

(declare-fun bm!11740 () Bool)

(assert (=> bm!11740 (= call!11744 call!11746)))

(declare-fun bm!11741 () Bool)

(assert (=> bm!11741 (= call!11746 (charsOf!308 (h!8879 (t!33488 tokens!465))))))

(declare-fun b!230288 () Bool)

(assert (=> b!230288 (= c!44012 (and ((_ is Some!650) lt!90301) (not (= (_1!2105 (v!14341 lt!90301)) (h!8879 (t!33488 tokens!465))))))))

(assert (=> b!230288 (= e!142494 e!142493)))

(declare-fun b!230289 () Bool)

(assert (=> b!230289 (= e!142492 (charsOf!308 separatorToken!170))))

(assert (= (and d!63294 c!44011) b!230286))

(assert (= (and d!63294 (not c!44011)) b!230285))

(assert (= (and b!230286 c!44014) b!230284))

(assert (= (and b!230286 (not c!44014)) b!230288))

(assert (= (and b!230288 c!44012) b!230282))

(assert (= (and b!230288 (not c!44012)) b!230283))

(assert (= (or b!230282 b!230283) bm!11740))

(assert (= (or b!230282 b!230283) bm!11739))

(assert (= (and bm!11739 c!44013) b!230289))

(assert (= (and bm!11739 (not c!44013)) b!230287))

(assert (= (or b!230284 bm!11740) bm!11741))

(assert (= (or b!230284 b!230282) bm!11737))

(assert (= (or b!230284 b!230282) bm!11738))

(declare-fun m!271905 () Bool)

(assert (=> bm!11741 m!271905))

(declare-fun m!271907 () Bool)

(assert (=> bm!11738 m!271907))

(assert (=> b!230289 m!271303))

(declare-fun m!271909 () Bool)

(assert (=> bm!11739 m!271909))

(declare-fun m!271911 () Bool)

(assert (=> b!230282 m!271911))

(declare-fun m!271913 () Bool)

(assert (=> b!230283 m!271913))

(assert (=> b!230283 m!271913))

(declare-fun m!271915 () Bool)

(assert (=> b!230283 m!271915))

(assert (=> b!230283 m!271913))

(declare-fun m!271917 () Bool)

(assert (=> b!230283 m!271917))

(declare-fun m!271919 () Bool)

(assert (=> b!230283 m!271919))

(assert (=> b!230286 m!271905))

(declare-fun m!271921 () Bool)

(assert (=> b!230286 m!271921))

(declare-fun m!271923 () Bool)

(assert (=> b!230286 m!271923))

(assert (=> b!230286 m!271905))

(declare-fun m!271925 () Bool)

(assert (=> b!230286 m!271925))

(declare-fun m!271927 () Bool)

(assert (=> b!230286 m!271927))

(declare-fun m!271929 () Bool)

(assert (=> b!230286 m!271929))

(assert (=> b!230286 m!271925))

(assert (=> b!230286 m!271921))

(declare-fun m!271931 () Bool)

(assert (=> bm!11737 m!271931))

(assert (=> b!229939 d!63294))

(declare-fun bs!24380 () Bool)

(declare-fun d!63308 () Bool)

(assert (= bs!24380 (and d!63308 b!229893)))

(declare-fun lambda!7352 () Int)

(assert (=> bs!24380 (= lambda!7352 lambda!7335)))

(declare-fun bs!24381 () Bool)

(assert (= bs!24381 (and d!63308 b!229934)))

(assert (=> bs!24381 (not (= lambda!7352 lambda!7336))))

(declare-fun bs!24382 () Bool)

(assert (= bs!24382 (and d!63308 d!63254)))

(assert (=> bs!24382 (not (= lambda!7352 lambda!7344))))

(declare-fun bs!24383 () Bool)

(assert (= bs!24383 (and d!63308 b!230286)))

(assert (=> bs!24383 (not (= lambda!7352 lambda!7347))))

(declare-fun bs!24384 () Bool)

(declare-fun b!230338 () Bool)

(assert (= bs!24384 (and b!230338 d!63308)))

(declare-fun lambda!7353 () Int)

(assert (=> bs!24384 (not (= lambda!7353 lambda!7352))))

(declare-fun bs!24385 () Bool)

(assert (= bs!24385 (and b!230338 b!229893)))

(assert (=> bs!24385 (not (= lambda!7353 lambda!7335))))

(declare-fun bs!24386 () Bool)

(assert (= bs!24386 (and b!230338 b!229934)))

(assert (=> bs!24386 (= lambda!7353 lambda!7336)))

(declare-fun bs!24387 () Bool)

(assert (= bs!24387 (and b!230338 d!63254)))

(assert (=> bs!24387 (= lambda!7353 lambda!7344)))

(declare-fun bs!24388 () Bool)

(assert (= bs!24388 (and b!230338 b!230286)))

(assert (=> bs!24388 (= lambda!7353 lambda!7347)))

(declare-fun b!230342 () Bool)

(declare-fun e!142530 () Bool)

(assert (=> b!230342 (= e!142530 true)))

(declare-fun b!230341 () Bool)

(declare-fun e!142529 () Bool)

(assert (=> b!230341 (= e!142529 e!142530)))

(declare-fun b!230340 () Bool)

(declare-fun e!142528 () Bool)

(assert (=> b!230340 (= e!142528 e!142529)))

(assert (=> b!230338 e!142528))

(assert (= b!230341 b!230342))

(assert (= b!230340 b!230341))

(assert (= (and b!230338 ((_ is Cons!3481) rules!1920)) b!230340))

(assert (=> b!230342 (< (dynLambda!1629 order!2441 (toValue!1348 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7353))))

(assert (=> b!230342 (< (dynLambda!1631 order!2445 (toChars!1207 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7353))))

(assert (=> b!230338 true))

(declare-fun b!230331 () Bool)

(declare-fun e!142524 () Bool)

(declare-fun lt!90345 () Option!653)

(declare-fun call!11758 () Token!1050)

(assert (=> b!230331 (= e!142524 (not (= (_1!2107 (v!14343 lt!90345)) call!11758)))))

(declare-fun b!230332 () Bool)

(declare-fun e!142522 () BalanceConc!2264)

(assert (=> b!230332 (= e!142522 (BalanceConc!2265 Empty!1128))))

(declare-fun call!11761 () Token!1050)

(assert (=> b!230332 (= (print!270 thiss!17480 (singletonSeq!205 call!11761)) (printTailRec!233 thiss!17480 (singletonSeq!205 call!11761) 0 (BalanceConc!2265 Empty!1128)))))

(declare-fun lt!90346 () Unit!4012)

(declare-fun Unit!4022 () Unit!4012)

(assert (=> b!230332 (= lt!90346 Unit!4022)))

(declare-fun lt!90343 () BalanceConc!2264)

(declare-fun lt!90342 () Unit!4012)

(declare-fun call!11760 () BalanceConc!2264)

(assert (=> b!230332 (= lt!90342 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!79 thiss!17480 rules!1920 (list!1344 call!11760) (list!1344 lt!90343)))))

(assert (=> b!230332 false))

(declare-fun lt!90352 () Unit!4012)

(declare-fun Unit!4023 () Unit!4012)

(assert (=> b!230332 (= lt!90352 Unit!4023)))

(declare-fun b!230333 () Bool)

(declare-fun call!11762 () BalanceConc!2264)

(declare-fun ++!876 (BalanceConc!2264 BalanceConc!2264) BalanceConc!2264)

(assert (=> b!230333 (= e!142522 (++!876 call!11762 lt!90343))))

(declare-fun b!230334 () Bool)

(declare-fun e!142527 () BalanceConc!2264)

(assert (=> b!230334 (= e!142527 call!11762)))

(declare-fun call!11759 () BalanceConc!2264)

(declare-fun c!44023 () Bool)

(declare-fun bm!11753 () Bool)

(assert (=> bm!11753 (= call!11762 (++!876 call!11759 (ite c!44023 lt!90343 call!11760)))))

(declare-fun lt!90339 () BalanceConc!2264)

(declare-fun dropList!132 (BalanceConc!2266 Int) List!3492)

(assert (=> d!63308 (= (list!1344 lt!90339) (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 (dropList!132 (seqFromList!684 (t!33488 tokens!465)) 0) separatorToken!170))))

(declare-fun e!142526 () BalanceConc!2264)

(assert (=> d!63308 (= lt!90339 e!142526)))

(declare-fun c!44024 () Bool)

(assert (=> d!63308 (= c!44024 (>= 0 (size!2783 (seqFromList!684 (t!33488 tokens!465)))))))

(declare-fun lt!90348 () Unit!4012)

(declare-fun lemmaContentSubsetPreservesForall!75 (List!3492 List!3492 Int) Unit!4012)

(assert (=> d!63308 (= lt!90348 (lemmaContentSubsetPreservesForall!75 (list!1345 (seqFromList!684 (t!33488 tokens!465))) (dropList!132 (seqFromList!684 (t!33488 tokens!465)) 0) lambda!7352))))

(declare-fun e!142523 () Bool)

(assert (=> d!63308 e!142523))

(declare-fun res!106320 () Bool)

(assert (=> d!63308 (=> (not res!106320) (not e!142523))))

(assert (=> d!63308 (= res!106320 (>= 0 0))))

(assert (=> d!63308 (= (printWithSeparatorTokenWhenNeededRec!222 thiss!17480 rules!1920 (seqFromList!684 (t!33488 tokens!465)) separatorToken!170 0) lt!90339)))

(declare-fun bm!11754 () Bool)

(assert (=> bm!11754 (= call!11759 (charsOf!308 (ite c!44023 call!11758 call!11761)))))

(declare-fun b!230335 () Bool)

(declare-fun e!142525 () Bool)

(assert (=> b!230335 (= e!142525 (= (_1!2107 (v!14343 lt!90345)) (apply!630 (seqFromList!684 (t!33488 tokens!465)) 0)))))

(declare-fun b!230336 () Bool)

(assert (=> b!230336 (= e!142526 (BalanceConc!2265 Empty!1128))))

(declare-fun b!230337 () Bool)

(assert (=> b!230337 (= e!142523 (<= 0 (size!2783 (seqFromList!684 (t!33488 tokens!465)))))))

(declare-fun c!44025 () Bool)

(declare-fun bm!11755 () Bool)

(assert (=> bm!11755 (= call!11760 (charsOf!308 (ite c!44025 separatorToken!170 call!11761)))))

(declare-fun bm!11756 () Bool)

(assert (=> bm!11756 (= call!11758 (apply!630 (seqFromList!684 (t!33488 tokens!465)) 0))))

(assert (=> b!230338 (= e!142526 e!142527)))

(declare-fun lt!90350 () List!3492)

(assert (=> b!230338 (= lt!90350 (list!1345 (seqFromList!684 (t!33488 tokens!465))))))

(declare-fun lt!90351 () Unit!4012)

(declare-fun lemmaDropApply!172 (List!3492 Int) Unit!4012)

(assert (=> b!230338 (= lt!90351 (lemmaDropApply!172 lt!90350 0))))

(declare-fun drop!185 (List!3492 Int) List!3492)

(declare-fun apply!634 (List!3492 Int) Token!1050)

(assert (=> b!230338 (= (head!802 (drop!185 lt!90350 0)) (apply!634 lt!90350 0))))

(declare-fun lt!90341 () Unit!4012)

(assert (=> b!230338 (= lt!90341 lt!90351)))

(declare-fun lt!90349 () List!3492)

(assert (=> b!230338 (= lt!90349 (list!1345 (seqFromList!684 (t!33488 tokens!465))))))

(declare-fun lt!90344 () Unit!4012)

(declare-fun lemmaDropTail!164 (List!3492 Int) Unit!4012)

(assert (=> b!230338 (= lt!90344 (lemmaDropTail!164 lt!90349 0))))

(declare-fun tail!430 (List!3492) List!3492)

(assert (=> b!230338 (= (tail!430 (drop!185 lt!90349 0)) (drop!185 lt!90349 (+ 0 1)))))

(declare-fun lt!90347 () Unit!4012)

(assert (=> b!230338 (= lt!90347 lt!90344)))

(declare-fun lt!90340 () Unit!4012)

(assert (=> b!230338 (= lt!90340 (forallContained!220 (list!1345 (seqFromList!684 (t!33488 tokens!465))) lambda!7353 (apply!630 (seqFromList!684 (t!33488 tokens!465)) 0)))))

(assert (=> b!230338 (= lt!90343 (printWithSeparatorTokenWhenNeededRec!222 thiss!17480 rules!1920 (seqFromList!684 (t!33488 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!230338 (= lt!90345 (maxPrefixZipperSequence!232 thiss!17480 rules!1920 (++!876 (charsOf!308 (apply!630 (seqFromList!684 (t!33488 tokens!465)) 0)) lt!90343)))))

(declare-fun res!106319 () Bool)

(assert (=> b!230338 (= res!106319 ((_ is Some!652) lt!90345))))

(assert (=> b!230338 (=> (not res!106319) (not e!142525))))

(assert (=> b!230338 (= c!44023 e!142525)))

(declare-fun b!230339 () Bool)

(assert (=> b!230339 (= c!44025 e!142524)))

(declare-fun res!106318 () Bool)

(assert (=> b!230339 (=> (not res!106318) (not e!142524))))

(assert (=> b!230339 (= res!106318 ((_ is Some!652) lt!90345))))

(assert (=> b!230339 (= e!142527 e!142522)))

(declare-fun bm!11757 () Bool)

(assert (=> bm!11757 (= call!11761 call!11758)))

(assert (= (and d!63308 res!106320) b!230337))

(assert (= (and d!63308 c!44024) b!230336))

(assert (= (and d!63308 (not c!44024)) b!230338))

(assert (= (and b!230338 res!106319) b!230335))

(assert (= (and b!230338 c!44023) b!230334))

(assert (= (and b!230338 (not c!44023)) b!230339))

(assert (= (and b!230339 res!106318) b!230331))

(assert (= (and b!230339 c!44025) b!230333))

(assert (= (and b!230339 (not c!44025)) b!230332))

(assert (= (or b!230333 b!230332) bm!11757))

(assert (= (or b!230333 b!230332) bm!11755))

(assert (= (or b!230334 b!230331 bm!11757) bm!11756))

(assert (= (or b!230334 b!230333) bm!11754))

(assert (= (or b!230334 b!230333) bm!11753))

(assert (=> bm!11756 m!271311))

(declare-fun m!271991 () Bool)

(assert (=> bm!11756 m!271991))

(declare-fun m!271993 () Bool)

(assert (=> bm!11753 m!271993))

(declare-fun m!271995 () Bool)

(assert (=> d!63308 m!271995))

(declare-fun m!271997 () Bool)

(assert (=> d!63308 m!271997))

(declare-fun m!271999 () Bool)

(assert (=> d!63308 m!271999))

(assert (=> d!63308 m!271311))

(declare-fun m!272001 () Bool)

(assert (=> d!63308 m!272001))

(assert (=> d!63308 m!271311))

(declare-fun m!272003 () Bool)

(assert (=> d!63308 m!272003))

(assert (=> d!63308 m!272001))

(assert (=> d!63308 m!271995))

(declare-fun m!272005 () Bool)

(assert (=> d!63308 m!272005))

(assert (=> d!63308 m!271311))

(assert (=> d!63308 m!271995))

(assert (=> b!230337 m!271311))

(assert (=> b!230337 m!272003))

(assert (=> b!230338 m!271991))

(declare-fun m!272007 () Bool)

(assert (=> b!230338 m!272007))

(declare-fun m!272009 () Bool)

(assert (=> b!230338 m!272009))

(assert (=> b!230338 m!272001))

(assert (=> b!230338 m!271991))

(declare-fun m!272011 () Bool)

(assert (=> b!230338 m!272011))

(declare-fun m!272013 () Bool)

(assert (=> b!230338 m!272013))

(declare-fun m!272015 () Bool)

(assert (=> b!230338 m!272015))

(assert (=> b!230338 m!272009))

(declare-fun m!272017 () Bool)

(assert (=> b!230338 m!272017))

(assert (=> b!230338 m!271311))

(declare-fun m!272019 () Bool)

(assert (=> b!230338 m!272019))

(declare-fun m!272021 () Bool)

(assert (=> b!230338 m!272021))

(assert (=> b!230338 m!271311))

(assert (=> b!230338 m!272001))

(declare-fun m!272023 () Bool)

(assert (=> b!230338 m!272023))

(declare-fun m!272025 () Bool)

(assert (=> b!230338 m!272025))

(assert (=> b!230338 m!272015))

(declare-fun m!272027 () Bool)

(assert (=> b!230338 m!272027))

(assert (=> b!230338 m!271311))

(assert (=> b!230338 m!271991))

(declare-fun m!272029 () Bool)

(assert (=> b!230338 m!272029))

(assert (=> b!230338 m!272007))

(assert (=> b!230338 m!272023))

(declare-fun m!272031 () Bool)

(assert (=> b!230338 m!272031))

(assert (=> b!230335 m!271311))

(assert (=> b!230335 m!271991))

(declare-fun m!272033 () Bool)

(assert (=> bm!11754 m!272033))

(declare-fun m!272035 () Bool)

(assert (=> b!230333 m!272035))

(declare-fun m!272037 () Bool)

(assert (=> bm!11755 m!272037))

(declare-fun m!272039 () Bool)

(assert (=> b!230332 m!272039))

(declare-fun m!272041 () Bool)

(assert (=> b!230332 m!272041))

(assert (=> b!230332 m!272041))

(declare-fun m!272043 () Bool)

(assert (=> b!230332 m!272043))

(declare-fun m!272045 () Bool)

(assert (=> b!230332 m!272045))

(assert (=> b!230332 m!272039))

(declare-fun m!272047 () Bool)

(assert (=> b!230332 m!272047))

(assert (=> b!230332 m!272039))

(declare-fun m!272049 () Bool)

(assert (=> b!230332 m!272049))

(assert (=> b!230332 m!272043))

(assert (=> b!229939 d!63308))

(declare-fun d!63320 () Bool)

(declare-fun lt!90355 () BalanceConc!2264)

(assert (=> d!63320 (= (list!1344 lt!90355) (originalCharacters!696 separatorToken!170))))

(declare-fun dynLambda!1634 (Int TokenValue!675) BalanceConc!2264)

(assert (=> d!63320 (= lt!90355 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (value!22926 separatorToken!170)))))

(assert (=> d!63320 (= (charsOf!308 separatorToken!170) lt!90355)))

(declare-fun b_lambda!6363 () Bool)

(assert (=> (not b_lambda!6363) (not d!63320)))

(declare-fun t!33515 () Bool)

(declare-fun tb!11421 () Bool)

(assert (=> (and b!229909 (= (toChars!1207 (transformation!653 (h!8878 rules!1920))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170)))) t!33515) tb!11421))

(declare-fun b!230347 () Bool)

(declare-fun e!142533 () Bool)

(declare-fun tp!93974 () Bool)

(declare-fun inv!4334 (Conc!1128) Bool)

(assert (=> b!230347 (= e!142533 (and (inv!4334 (c!43933 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (value!22926 separatorToken!170)))) tp!93974))))

(declare-fun result!14610 () Bool)

(declare-fun inv!4335 (BalanceConc!2264) Bool)

(assert (=> tb!11421 (= result!14610 (and (inv!4335 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (value!22926 separatorToken!170))) e!142533))))

(assert (= tb!11421 b!230347))

(declare-fun m!272051 () Bool)

(assert (=> b!230347 m!272051))

(declare-fun m!272053 () Bool)

(assert (=> tb!11421 m!272053))

(assert (=> d!63320 t!33515))

(declare-fun b_and!17069 () Bool)

(assert (= b_and!17047 (and (=> t!33515 result!14610) b_and!17069)))

(declare-fun t!33517 () Bool)

(declare-fun tb!11423 () Bool)

(assert (=> (and b!229914 (= (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170)))) t!33517) tb!11423))

(declare-fun result!14614 () Bool)

(assert (= result!14614 result!14610))

(assert (=> d!63320 t!33517))

(declare-fun b_and!17071 () Bool)

(assert (= b_and!17051 (and (=> t!33517 result!14614) b_and!17071)))

(declare-fun tb!11425 () Bool)

(declare-fun t!33519 () Bool)

(assert (=> (and b!229902 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170)))) t!33519) tb!11425))

(declare-fun result!14616 () Bool)

(assert (= result!14616 result!14610))

(assert (=> d!63320 t!33519))

(declare-fun b_and!17073 () Bool)

(assert (= b_and!17055 (and (=> t!33519 result!14616) b_and!17073)))

(declare-fun m!272055 () Bool)

(assert (=> d!63320 m!272055))

(declare-fun m!272057 () Bool)

(assert (=> d!63320 m!272057))

(assert (=> b!229939 d!63320))

(declare-fun d!63322 () Bool)

(assert (=> d!63322 (= (list!1344 (charsOf!308 (h!8879 tokens!465))) (list!1347 (c!43933 (charsOf!308 (h!8879 tokens!465)))))))

(declare-fun bs!24389 () Bool)

(assert (= bs!24389 d!63322))

(declare-fun m!272059 () Bool)

(assert (=> bs!24389 m!272059))

(assert (=> b!229939 d!63322))

(declare-fun d!63324 () Bool)

(declare-fun lt!90356 () BalanceConc!2264)

(assert (=> d!63324 (= (list!1344 lt!90356) (originalCharacters!696 (h!8879 tokens!465)))))

(assert (=> d!63324 (= lt!90356 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (value!22926 (h!8879 tokens!465))))))

(assert (=> d!63324 (= (charsOf!308 (h!8879 tokens!465)) lt!90356)))

(declare-fun b_lambda!6365 () Bool)

(assert (=> (not b_lambda!6365) (not d!63324)))

(declare-fun tb!11427 () Bool)

(declare-fun t!33521 () Bool)

(assert (=> (and b!229909 (= (toChars!1207 (transformation!653 (h!8878 rules!1920))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465))))) t!33521) tb!11427))

(declare-fun b!230348 () Bool)

(declare-fun e!142534 () Bool)

(declare-fun tp!93975 () Bool)

(assert (=> b!230348 (= e!142534 (and (inv!4334 (c!43933 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (value!22926 (h!8879 tokens!465))))) tp!93975))))

(declare-fun result!14618 () Bool)

(assert (=> tb!11427 (= result!14618 (and (inv!4335 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (value!22926 (h!8879 tokens!465)))) e!142534))))

(assert (= tb!11427 b!230348))

(declare-fun m!272061 () Bool)

(assert (=> b!230348 m!272061))

(declare-fun m!272063 () Bool)

(assert (=> tb!11427 m!272063))

(assert (=> d!63324 t!33521))

(declare-fun b_and!17075 () Bool)

(assert (= b_and!17069 (and (=> t!33521 result!14618) b_and!17075)))

(declare-fun tb!11429 () Bool)

(declare-fun t!33523 () Bool)

(assert (=> (and b!229914 (= (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465))))) t!33523) tb!11429))

(declare-fun result!14620 () Bool)

(assert (= result!14620 result!14618))

(assert (=> d!63324 t!33523))

(declare-fun b_and!17077 () Bool)

(assert (= b_and!17071 (and (=> t!33523 result!14620) b_and!17077)))

(declare-fun t!33525 () Bool)

(declare-fun tb!11431 () Bool)

(assert (=> (and b!229902 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465))))) t!33525) tb!11431))

(declare-fun result!14622 () Bool)

(assert (= result!14622 result!14618))

(assert (=> d!63324 t!33525))

(declare-fun b_and!17079 () Bool)

(assert (= b_and!17073 (and (=> t!33525 result!14622) b_and!17079)))

(declare-fun m!272065 () Bool)

(assert (=> d!63324 m!272065))

(declare-fun m!272067 () Bool)

(assert (=> d!63324 m!272067))

(assert (=> b!229939 d!63324))

(declare-fun b!230350 () Bool)

(declare-fun e!142536 () List!3490)

(assert (=> b!230350 (= e!142536 (Cons!3480 (h!8877 lt!90127) (++!874 (t!33486 lt!90127) lt!90121)))))

(declare-fun d!63326 () Bool)

(declare-fun e!142535 () Bool)

(assert (=> d!63326 e!142535))

(declare-fun res!106321 () Bool)

(assert (=> d!63326 (=> (not res!106321) (not e!142535))))

(declare-fun lt!90357 () List!3490)

(assert (=> d!63326 (= res!106321 (= (content!482 lt!90357) ((_ map or) (content!482 lt!90127) (content!482 lt!90121))))))

(assert (=> d!63326 (= lt!90357 e!142536)))

(declare-fun c!44026 () Bool)

(assert (=> d!63326 (= c!44026 ((_ is Nil!3480) lt!90127))))

(assert (=> d!63326 (= (++!874 lt!90127 lt!90121) lt!90357)))

(declare-fun b!230351 () Bool)

(declare-fun res!106322 () Bool)

(assert (=> b!230351 (=> (not res!106322) (not e!142535))))

(assert (=> b!230351 (= res!106322 (= (size!2788 lt!90357) (+ (size!2788 lt!90127) (size!2788 lt!90121))))))

(declare-fun b!230349 () Bool)

(assert (=> b!230349 (= e!142536 lt!90121)))

(declare-fun b!230352 () Bool)

(assert (=> b!230352 (= e!142535 (or (not (= lt!90121 Nil!3480)) (= lt!90357 lt!90127)))))

(assert (= (and d!63326 c!44026) b!230349))

(assert (= (and d!63326 (not c!44026)) b!230350))

(assert (= (and d!63326 res!106321) b!230351))

(assert (= (and b!230351 res!106322) b!230352))

(declare-fun m!272069 () Bool)

(assert (=> b!230350 m!272069))

(declare-fun m!272071 () Bool)

(assert (=> d!63326 m!272071))

(declare-fun m!272073 () Bool)

(assert (=> d!63326 m!272073))

(declare-fun m!272075 () Bool)

(assert (=> d!63326 m!272075))

(declare-fun m!272077 () Bool)

(assert (=> b!230351 m!272077))

(declare-fun m!272079 () Bool)

(assert (=> b!230351 m!272079))

(declare-fun m!272081 () Bool)

(assert (=> b!230351 m!272081))

(assert (=> b!229939 d!63326))

(declare-fun b!230354 () Bool)

(declare-fun e!142538 () List!3490)

(assert (=> b!230354 (= e!142538 (Cons!3480 (h!8877 lt!90121) (++!874 (t!33486 lt!90121) lt!90134)))))

(declare-fun d!63328 () Bool)

(declare-fun e!142537 () Bool)

(assert (=> d!63328 e!142537))

(declare-fun res!106323 () Bool)

(assert (=> d!63328 (=> (not res!106323) (not e!142537))))

(declare-fun lt!90358 () List!3490)

(assert (=> d!63328 (= res!106323 (= (content!482 lt!90358) ((_ map or) (content!482 lt!90121) (content!482 lt!90134))))))

(assert (=> d!63328 (= lt!90358 e!142538)))

(declare-fun c!44027 () Bool)

(assert (=> d!63328 (= c!44027 ((_ is Nil!3480) lt!90121))))

(assert (=> d!63328 (= (++!874 lt!90121 lt!90134) lt!90358)))

(declare-fun b!230355 () Bool)

(declare-fun res!106324 () Bool)

(assert (=> b!230355 (=> (not res!106324) (not e!142537))))

(assert (=> b!230355 (= res!106324 (= (size!2788 lt!90358) (+ (size!2788 lt!90121) (size!2788 lt!90134))))))

(declare-fun b!230353 () Bool)

(assert (=> b!230353 (= e!142538 lt!90134)))

(declare-fun b!230356 () Bool)

(assert (=> b!230356 (= e!142537 (or (not (= lt!90134 Nil!3480)) (= lt!90358 lt!90121)))))

(assert (= (and d!63328 c!44027) b!230353))

(assert (= (and d!63328 (not c!44027)) b!230354))

(assert (= (and d!63328 res!106323) b!230355))

(assert (= (and b!230355 res!106324) b!230356))

(declare-fun m!272083 () Bool)

(assert (=> b!230354 m!272083))

(declare-fun m!272085 () Bool)

(assert (=> d!63328 m!272085))

(assert (=> d!63328 m!272075))

(assert (=> d!63328 m!271849))

(declare-fun m!272087 () Bool)

(assert (=> b!230355 m!272087))

(assert (=> b!230355 m!272081))

(assert (=> b!230355 m!271855))

(assert (=> b!229939 d!63328))

(declare-fun b!230358 () Bool)

(declare-fun e!142540 () List!3490)

(assert (=> b!230358 (= e!142540 (Cons!3480 (h!8877 lt!90127) (++!874 (t!33486 lt!90127) lt!90124)))))

(declare-fun d!63330 () Bool)

(declare-fun e!142539 () Bool)

(assert (=> d!63330 e!142539))

(declare-fun res!106325 () Bool)

(assert (=> d!63330 (=> (not res!106325) (not e!142539))))

(declare-fun lt!90359 () List!3490)

(assert (=> d!63330 (= res!106325 (= (content!482 lt!90359) ((_ map or) (content!482 lt!90127) (content!482 lt!90124))))))

(assert (=> d!63330 (= lt!90359 e!142540)))

(declare-fun c!44028 () Bool)

(assert (=> d!63330 (= c!44028 ((_ is Nil!3480) lt!90127))))

(assert (=> d!63330 (= (++!874 lt!90127 lt!90124) lt!90359)))

(declare-fun b!230359 () Bool)

(declare-fun res!106326 () Bool)

(assert (=> b!230359 (=> (not res!106326) (not e!142539))))

(assert (=> b!230359 (= res!106326 (= (size!2788 lt!90359) (+ (size!2788 lt!90127) (size!2788 lt!90124))))))

(declare-fun b!230357 () Bool)

(assert (=> b!230357 (= e!142540 lt!90124)))

(declare-fun b!230360 () Bool)

(assert (=> b!230360 (= e!142539 (or (not (= lt!90124 Nil!3480)) (= lt!90359 lt!90127)))))

(assert (= (and d!63330 c!44028) b!230357))

(assert (= (and d!63330 (not c!44028)) b!230358))

(assert (= (and d!63330 res!106325) b!230359))

(assert (= (and b!230359 res!106326) b!230360))

(declare-fun m!272089 () Bool)

(assert (=> b!230358 m!272089))

(declare-fun m!272091 () Bool)

(assert (=> d!63330 m!272091))

(assert (=> d!63330 m!272073))

(declare-fun m!272093 () Bool)

(assert (=> d!63330 m!272093))

(declare-fun m!272095 () Bool)

(assert (=> b!230359 m!272095))

(assert (=> b!230359 m!272079))

(declare-fun m!272097 () Bool)

(assert (=> b!230359 m!272097))

(assert (=> b!229939 d!63330))

(declare-fun d!63332 () Bool)

(assert (=> d!63332 (= (++!874 (++!874 lt!90127 lt!90121) lt!90134) (++!874 lt!90127 (++!874 lt!90121 lt!90134)))))

(declare-fun lt!90362 () Unit!4012)

(declare-fun choose!2217 (List!3490 List!3490 List!3490) Unit!4012)

(assert (=> d!63332 (= lt!90362 (choose!2217 lt!90127 lt!90121 lt!90134))))

(assert (=> d!63332 (= (lemmaConcatAssociativity!354 lt!90127 lt!90121 lt!90134) lt!90362)))

(declare-fun bs!24390 () Bool)

(assert (= bs!24390 d!63332))

(assert (=> bs!24390 m!271309))

(declare-fun m!272099 () Bool)

(assert (=> bs!24390 m!272099))

(assert (=> bs!24390 m!271317))

(assert (=> bs!24390 m!271319))

(assert (=> bs!24390 m!271309))

(declare-fun m!272101 () Bool)

(assert (=> bs!24390 m!272101))

(assert (=> bs!24390 m!271317))

(assert (=> b!229939 d!63332))

(declare-fun b!230373 () Bool)

(declare-fun e!142548 () List!3492)

(declare-fun e!142549 () List!3492)

(assert (=> b!230373 (= e!142548 e!142549)))

(declare-fun c!44034 () Bool)

(declare-fun dynLambda!1635 (Int Token!1050) Bool)

(assert (=> b!230373 (= c!44034 (dynLambda!1635 lambda!7335 (h!8879 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147)))))))

(declare-fun d!63334 () Bool)

(declare-fun e!142547 () Bool)

(assert (=> d!63334 e!142547))

(declare-fun res!106332 () Bool)

(assert (=> d!63334 (=> (not res!106332) (not e!142547))))

(declare-fun lt!90365 () List!3492)

(declare-fun size!2789 (List!3492) Int)

(assert (=> d!63334 (= res!106332 (<= (size!2789 lt!90365) (size!2789 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147)))))))

(assert (=> d!63334 (= lt!90365 e!142548)))

(declare-fun c!44033 () Bool)

(assert (=> d!63334 (= c!44033 ((_ is Nil!3482) (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147))))))

(assert (=> d!63334 (= (filter!47 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147)) lambda!7335) lt!90365)))

(declare-fun call!11765 () List!3492)

(declare-fun bm!11760 () Bool)

(assert (=> bm!11760 (= call!11765 (filter!47 (t!33488 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147))) lambda!7335))))

(declare-fun b!230374 () Bool)

(declare-fun res!106331 () Bool)

(assert (=> b!230374 (=> (not res!106331) (not e!142547))))

(declare-fun content!483 (List!3492) (InoxSet Token!1050))

(assert (=> b!230374 (= res!106331 (= ((_ map implies) (content!483 lt!90365) (content!483 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147)))) ((as const (InoxSet Token!1050)) true)))))

(declare-fun b!230375 () Bool)

(assert (=> b!230375 (= e!142548 Nil!3482)))

(declare-fun b!230376 () Bool)

(assert (=> b!230376 (= e!142549 (Cons!3482 (h!8879 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147))) call!11765))))

(declare-fun b!230377 () Bool)

(assert (=> b!230377 (= e!142549 call!11765)))

(declare-fun b!230378 () Bool)

(assert (=> b!230378 (= e!142547 (forall!785 lt!90365 lambda!7335))))

(assert (= (and d!63334 c!44033) b!230375))

(assert (= (and d!63334 (not c!44033)) b!230373))

(assert (= (and b!230373 c!44034) b!230376))

(assert (= (and b!230373 (not c!44034)) b!230377))

(assert (= (or b!230376 b!230377) bm!11760))

(assert (= (and d!63334 res!106332) b!230374))

(assert (= (and b!230374 res!106331) b!230378))

(declare-fun b_lambda!6367 () Bool)

(assert (=> (not b_lambda!6367) (not b!230373)))

(declare-fun m!272103 () Bool)

(assert (=> d!63334 m!272103))

(declare-fun m!272105 () Bool)

(assert (=> d!63334 m!272105))

(declare-fun m!272107 () Bool)

(assert (=> b!230378 m!272107))

(declare-fun m!272109 () Bool)

(assert (=> b!230373 m!272109))

(declare-fun m!272111 () Bool)

(assert (=> bm!11760 m!272111))

(declare-fun m!272113 () Bool)

(assert (=> b!230374 m!272113))

(declare-fun m!272115 () Bool)

(assert (=> b!230374 m!272115))

(assert (=> b!229938 d!63334))

(declare-fun b!230390 () Bool)

(declare-fun e!142558 () tuple2!3780)

(declare-fun lt!90377 () Option!651)

(declare-fun lt!90375 () tuple2!3780)

(assert (=> b!230390 (= e!142558 (tuple2!3781 (Cons!3482 (_1!2105 (v!14341 lt!90377)) (_1!2106 lt!90375)) (_2!2106 lt!90375)))))

(assert (=> b!230390 (= lt!90375 (lexList!167 thiss!17480 rules!1920 (_2!2105 (v!14341 lt!90377))))))

(declare-fun b!230391 () Bool)

(declare-fun e!142557 () Bool)

(declare-fun lt!90376 () tuple2!3780)

(assert (=> b!230391 (= e!142557 (= (_2!2106 lt!90376) lt!90147))))

(declare-fun b!230392 () Bool)

(declare-fun e!142556 () Bool)

(assert (=> b!230392 (= e!142557 e!142556)))

(declare-fun res!106335 () Bool)

(assert (=> b!230392 (= res!106335 (< (size!2788 (_2!2106 lt!90376)) (size!2788 lt!90147)))))

(assert (=> b!230392 (=> (not res!106335) (not e!142556))))

(declare-fun b!230393 () Bool)

(assert (=> b!230393 (= e!142556 (not (isEmpty!2021 (_1!2106 lt!90376))))))

(declare-fun d!63336 () Bool)

(assert (=> d!63336 e!142557))

(declare-fun c!44040 () Bool)

(assert (=> d!63336 (= c!44040 (> (size!2789 (_1!2106 lt!90376)) 0))))

(assert (=> d!63336 (= lt!90376 e!142558)))

(declare-fun c!44039 () Bool)

(assert (=> d!63336 (= c!44039 ((_ is Some!650) lt!90377))))

(assert (=> d!63336 (= lt!90377 (maxPrefix!269 thiss!17480 rules!1920 lt!90147))))

(assert (=> d!63336 (= (lexList!167 thiss!17480 rules!1920 lt!90147) lt!90376)))

(declare-fun b!230389 () Bool)

(assert (=> b!230389 (= e!142558 (tuple2!3781 Nil!3482 lt!90147))))

(assert (= (and d!63336 c!44039) b!230390))

(assert (= (and d!63336 (not c!44039)) b!230389))

(assert (= (and d!63336 c!44040) b!230392))

(assert (= (and d!63336 (not c!44040)) b!230391))

(assert (= (and b!230392 res!106335) b!230393))

(declare-fun m!272119 () Bool)

(assert (=> b!230390 m!272119))

(declare-fun m!272121 () Bool)

(assert (=> b!230392 m!272121))

(declare-fun m!272123 () Bool)

(assert (=> b!230392 m!272123))

(declare-fun m!272125 () Bool)

(assert (=> b!230393 m!272125))

(declare-fun m!272127 () Bool)

(assert (=> d!63336 m!272127))

(assert (=> d!63336 m!271265))

(assert (=> b!229938 d!63336))

(declare-fun b!230394 () Bool)

(declare-fun e!142560 () List!3492)

(declare-fun e!142561 () List!3492)

(assert (=> b!230394 (= e!142560 e!142561)))

(declare-fun c!44042 () Bool)

(assert (=> b!230394 (= c!44042 (dynLambda!1635 lambda!7335 (h!8879 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134)))))))

(declare-fun d!63340 () Bool)

(declare-fun e!142559 () Bool)

(assert (=> d!63340 e!142559))

(declare-fun res!106337 () Bool)

(assert (=> d!63340 (=> (not res!106337) (not e!142559))))

(declare-fun lt!90378 () List!3492)

(assert (=> d!63340 (= res!106337 (<= (size!2789 lt!90378) (size!2789 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134)))))))

(assert (=> d!63340 (= lt!90378 e!142560)))

(declare-fun c!44041 () Bool)

(assert (=> d!63340 (= c!44041 ((_ is Nil!3482) (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134))))))

(assert (=> d!63340 (= (filter!47 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134)) lambda!7335) lt!90378)))

(declare-fun bm!11761 () Bool)

(declare-fun call!11766 () List!3492)

(assert (=> bm!11761 (= call!11766 (filter!47 (t!33488 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134))) lambda!7335))))

(declare-fun b!230395 () Bool)

(declare-fun res!106336 () Bool)

(assert (=> b!230395 (=> (not res!106336) (not e!142559))))

(assert (=> b!230395 (= res!106336 (= ((_ map implies) (content!483 lt!90378) (content!483 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134)))) ((as const (InoxSet Token!1050)) true)))))

(declare-fun b!230396 () Bool)

(assert (=> b!230396 (= e!142560 Nil!3482)))

(declare-fun b!230397 () Bool)

(assert (=> b!230397 (= e!142561 (Cons!3482 (h!8879 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134))) call!11766))))

(declare-fun b!230398 () Bool)

(assert (=> b!230398 (= e!142561 call!11766)))

(declare-fun b!230399 () Bool)

(assert (=> b!230399 (= e!142559 (forall!785 lt!90378 lambda!7335))))

(assert (= (and d!63340 c!44041) b!230396))

(assert (= (and d!63340 (not c!44041)) b!230394))

(assert (= (and b!230394 c!44042) b!230397))

(assert (= (and b!230394 (not c!44042)) b!230398))

(assert (= (or b!230397 b!230398) bm!11761))

(assert (= (and d!63340 res!106337) b!230395))

(assert (= (and b!230395 res!106336) b!230399))

(declare-fun b_lambda!6369 () Bool)

(assert (=> (not b_lambda!6369) (not b!230394)))

(declare-fun m!272129 () Bool)

(assert (=> d!63340 m!272129))

(declare-fun m!272131 () Bool)

(assert (=> d!63340 m!272131))

(declare-fun m!272133 () Bool)

(assert (=> b!230399 m!272133))

(declare-fun m!272135 () Bool)

(assert (=> b!230394 m!272135))

(declare-fun m!272137 () Bool)

(assert (=> bm!11761 m!272137))

(declare-fun m!272139 () Bool)

(assert (=> b!230395 m!272139))

(declare-fun m!272141 () Bool)

(assert (=> b!230395 m!272141))

(assert (=> b!229917 d!63340))

(declare-fun b!230401 () Bool)

(declare-fun e!142564 () tuple2!3780)

(declare-fun lt!90381 () Option!651)

(declare-fun lt!90379 () tuple2!3780)

(assert (=> b!230401 (= e!142564 (tuple2!3781 (Cons!3482 (_1!2105 (v!14341 lt!90381)) (_1!2106 lt!90379)) (_2!2106 lt!90379)))))

(assert (=> b!230401 (= lt!90379 (lexList!167 thiss!17480 rules!1920 (_2!2105 (v!14341 lt!90381))))))

(declare-fun b!230402 () Bool)

(declare-fun e!142563 () Bool)

(declare-fun lt!90380 () tuple2!3780)

(assert (=> b!230402 (= e!142563 (= (_2!2106 lt!90380) lt!90134))))

(declare-fun b!230403 () Bool)

(declare-fun e!142562 () Bool)

(assert (=> b!230403 (= e!142563 e!142562)))

(declare-fun res!106338 () Bool)

(assert (=> b!230403 (= res!106338 (< (size!2788 (_2!2106 lt!90380)) (size!2788 lt!90134)))))

(assert (=> b!230403 (=> (not res!106338) (not e!142562))))

(declare-fun b!230404 () Bool)

(assert (=> b!230404 (= e!142562 (not (isEmpty!2021 (_1!2106 lt!90380))))))

(declare-fun d!63342 () Bool)

(assert (=> d!63342 e!142563))

(declare-fun c!44044 () Bool)

(assert (=> d!63342 (= c!44044 (> (size!2789 (_1!2106 lt!90380)) 0))))

(assert (=> d!63342 (= lt!90380 e!142564)))

(declare-fun c!44043 () Bool)

(assert (=> d!63342 (= c!44043 ((_ is Some!650) lt!90381))))

(assert (=> d!63342 (= lt!90381 (maxPrefix!269 thiss!17480 rules!1920 lt!90134))))

(assert (=> d!63342 (= (lexList!167 thiss!17480 rules!1920 lt!90134) lt!90380)))

(declare-fun b!230400 () Bool)

(assert (=> b!230400 (= e!142564 (tuple2!3781 Nil!3482 lt!90134))))

(assert (= (and d!63342 c!44043) b!230401))

(assert (= (and d!63342 (not c!44043)) b!230400))

(assert (= (and d!63342 c!44044) b!230403))

(assert (= (and d!63342 (not c!44044)) b!230402))

(assert (= (and b!230403 res!106338) b!230404))

(declare-fun m!272143 () Bool)

(assert (=> b!230401 m!272143))

(declare-fun m!272145 () Bool)

(assert (=> b!230403 m!272145))

(assert (=> b!230403 m!271855))

(declare-fun m!272147 () Bool)

(assert (=> b!230404 m!272147))

(declare-fun m!272149 () Bool)

(assert (=> d!63342 m!272149))

(declare-fun m!272151 () Bool)

(assert (=> d!63342 m!272151))

(assert (=> b!229917 d!63342))

(declare-fun d!63344 () Bool)

(assert (=> d!63344 (= (list!1344 (seqFromList!683 lt!90147)) (list!1347 (c!43933 (seqFromList!683 lt!90147))))))

(declare-fun bs!24392 () Bool)

(assert (= bs!24392 d!63344))

(declare-fun m!272153 () Bool)

(assert (=> bs!24392 m!272153))

(assert (=> b!229916 d!63344))

(declare-fun d!63346 () Bool)

(declare-fun fromListB!252 (List!3490) BalanceConc!2264)

(assert (=> d!63346 (= (seqFromList!683 lt!90147) (fromListB!252 lt!90147))))

(declare-fun bs!24393 () Bool)

(assert (= bs!24393 d!63346))

(declare-fun m!272155 () Bool)

(assert (=> bs!24393 m!272155))

(assert (=> b!229916 d!63346))

(declare-fun d!63348 () Bool)

(declare-fun lt!90384 () Token!1050)

(assert (=> d!63348 (= lt!90384 (apply!634 (list!1345 (_1!2104 lt!90107)) 0))))

(declare-fun apply!635 (Conc!1129 Int) Token!1050)

(assert (=> d!63348 (= lt!90384 (apply!635 (c!43935 (_1!2104 lt!90107)) 0))))

(declare-fun e!142567 () Bool)

(assert (=> d!63348 e!142567))

(declare-fun res!106341 () Bool)

(assert (=> d!63348 (=> (not res!106341) (not e!142567))))

(assert (=> d!63348 (= res!106341 (<= 0 0))))

(assert (=> d!63348 (= (apply!630 (_1!2104 lt!90107) 0) lt!90384)))

(declare-fun b!230407 () Bool)

(assert (=> b!230407 (= e!142567 (< 0 (size!2783 (_1!2104 lt!90107))))))

(assert (= (and d!63348 res!106341) b!230407))

(declare-fun m!272157 () Bool)

(assert (=> d!63348 m!272157))

(assert (=> d!63348 m!272157))

(declare-fun m!272159 () Bool)

(assert (=> d!63348 m!272159))

(declare-fun m!272161 () Bool)

(assert (=> d!63348 m!272161))

(assert (=> b!230407 m!271365))

(assert (=> b!229894 d!63348))

(declare-fun d!63350 () Bool)

(assert (=> d!63350 (= (isEmpty!2022 (_2!2105 lt!90113)) ((_ is Nil!3480) (_2!2105 lt!90113)))))

(assert (=> b!229937 d!63350))

(declare-fun d!63352 () Bool)

(declare-fun lt!90387 () Int)

(assert (=> d!63352 (= lt!90387 (size!2789 (list!1345 lt!90112)))))

(declare-fun size!2790 (Conc!1129) Int)

(assert (=> d!63352 (= lt!90387 (size!2790 (c!43935 lt!90112)))))

(assert (=> d!63352 (= (size!2783 lt!90112) lt!90387)))

(declare-fun bs!24394 () Bool)

(assert (= bs!24394 d!63352))

(assert (=> bs!24394 m!271817))

(assert (=> bs!24394 m!271817))

(declare-fun m!272163 () Bool)

(assert (=> bs!24394 m!272163))

(declare-fun m!272165 () Bool)

(assert (=> bs!24394 m!272165))

(assert (=> b!229904 d!63352))

(declare-fun d!63354 () Bool)

(declare-fun lt!90390 () BalanceConc!2264)

(assert (=> d!63354 (= (list!1344 lt!90390) (printList!223 thiss!17480 (list!1345 lt!90146)))))

(assert (=> d!63354 (= lt!90390 (printTailRec!233 thiss!17480 lt!90146 0 (BalanceConc!2265 Empty!1128)))))

(assert (=> d!63354 (= (print!270 thiss!17480 lt!90146) lt!90390)))

(declare-fun bs!24395 () Bool)

(assert (= bs!24395 d!63354))

(declare-fun m!272167 () Bool)

(assert (=> bs!24395 m!272167))

(declare-fun m!272169 () Bool)

(assert (=> bs!24395 m!272169))

(assert (=> bs!24395 m!272169))

(declare-fun m!272171 () Bool)

(assert (=> bs!24395 m!272171))

(assert (=> bs!24395 m!271345))

(assert (=> b!229924 d!63354))

(declare-fun b!230469 () Bool)

(declare-fun res!106380 () Bool)

(declare-fun e!142605 () Bool)

(assert (=> b!230469 (=> (not res!106380) (not e!142605))))

(declare-fun lt!90402 () tuple2!3776)

(assert (=> b!230469 (= res!106380 (= (list!1345 (_1!2104 lt!90402)) (_1!2106 (lexList!167 thiss!17480 rules!1920 (list!1344 lt!90144)))))))

(declare-fun d!63356 () Bool)

(assert (=> d!63356 e!142605))

(declare-fun res!106379 () Bool)

(assert (=> d!63356 (=> (not res!106379) (not e!142605))))

(declare-fun e!142606 () Bool)

(assert (=> d!63356 (= res!106379 e!142606)))

(declare-fun c!44056 () Bool)

(assert (=> d!63356 (= c!44056 (> (size!2783 (_1!2104 lt!90402)) 0))))

(declare-fun lexTailRecV2!144 (LexerInterface!539 List!3491 BalanceConc!2264 BalanceConc!2264 BalanceConc!2264 BalanceConc!2266) tuple2!3776)

(assert (=> d!63356 (= lt!90402 (lexTailRecV2!144 thiss!17480 rules!1920 lt!90144 (BalanceConc!2265 Empty!1128) lt!90144 (BalanceConc!2267 Empty!1129)))))

(assert (=> d!63356 (= (lex!339 thiss!17480 rules!1920 lt!90144) lt!90402)))

(declare-fun b!230470 () Bool)

(declare-fun e!142604 () Bool)

(assert (=> b!230470 (= e!142604 (not (isEmpty!2019 (_1!2104 lt!90402))))))

(declare-fun b!230471 () Bool)

(assert (=> b!230471 (= e!142606 (= (_2!2104 lt!90402) lt!90144))))

(declare-fun b!230472 () Bool)

(assert (=> b!230472 (= e!142605 (= (list!1344 (_2!2104 lt!90402)) (_2!2106 (lexList!167 thiss!17480 rules!1920 (list!1344 lt!90144)))))))

(declare-fun b!230473 () Bool)

(assert (=> b!230473 (= e!142606 e!142604)))

(declare-fun res!106378 () Bool)

(declare-fun size!2791 (BalanceConc!2264) Int)

(assert (=> b!230473 (= res!106378 (< (size!2791 (_2!2104 lt!90402)) (size!2791 lt!90144)))))

(assert (=> b!230473 (=> (not res!106378) (not e!142604))))

(assert (= (and d!63356 c!44056) b!230473))

(assert (= (and d!63356 (not c!44056)) b!230471))

(assert (= (and b!230473 res!106378) b!230470))

(assert (= (and d!63356 res!106379) b!230469))

(assert (= (and b!230469 res!106380) b!230472))

(declare-fun m!272207 () Bool)

(assert (=> b!230469 m!272207))

(declare-fun m!272209 () Bool)

(assert (=> b!230469 m!272209))

(assert (=> b!230469 m!272209))

(declare-fun m!272211 () Bool)

(assert (=> b!230469 m!272211))

(declare-fun m!272215 () Bool)

(assert (=> b!230472 m!272215))

(assert (=> b!230472 m!272209))

(assert (=> b!230472 m!272209))

(assert (=> b!230472 m!272211))

(declare-fun m!272221 () Bool)

(assert (=> d!63356 m!272221))

(declare-fun m!272227 () Bool)

(assert (=> d!63356 m!272227))

(declare-fun m!272233 () Bool)

(assert (=> b!230473 m!272233))

(declare-fun m!272235 () Bool)

(assert (=> b!230473 m!272235))

(declare-fun m!272237 () Bool)

(assert (=> b!230470 m!272237))

(assert (=> b!229924 d!63356))

(declare-fun d!63372 () Bool)

(assert (=> d!63372 (= (isEmpty!2021 (t!33488 tokens!465)) ((_ is Nil!3482) (t!33488 tokens!465)))))

(assert (=> b!229924 d!63372))

(declare-fun b!230480 () Bool)

(declare-fun e!142611 () List!3492)

(declare-fun e!142612 () List!3492)

(assert (=> b!230480 (= e!142611 e!142612)))

(declare-fun c!44060 () Bool)

(assert (=> b!230480 (= c!44060 (dynLambda!1635 lambda!7335 (h!8879 lt!90139)))))

(declare-fun d!63374 () Bool)

(declare-fun e!142610 () Bool)

(assert (=> d!63374 e!142610))

(declare-fun res!106384 () Bool)

(assert (=> d!63374 (=> (not res!106384) (not e!142610))))

(declare-fun lt!90404 () List!3492)

(assert (=> d!63374 (= res!106384 (<= (size!2789 lt!90404) (size!2789 lt!90139)))))

(assert (=> d!63374 (= lt!90404 e!142611)))

(declare-fun c!44059 () Bool)

(assert (=> d!63374 (= c!44059 ((_ is Nil!3482) lt!90139))))

(assert (=> d!63374 (= (filter!47 lt!90139 lambda!7335) lt!90404)))

(declare-fun bm!11766 () Bool)

(declare-fun call!11771 () List!3492)

(assert (=> bm!11766 (= call!11771 (filter!47 (t!33488 lt!90139) lambda!7335))))

(declare-fun b!230481 () Bool)

(declare-fun res!106383 () Bool)

(assert (=> b!230481 (=> (not res!106383) (not e!142610))))

(assert (=> b!230481 (= res!106383 (= ((_ map implies) (content!483 lt!90404) (content!483 lt!90139)) ((as const (InoxSet Token!1050)) true)))))

(declare-fun b!230482 () Bool)

(assert (=> b!230482 (= e!142611 Nil!3482)))

(declare-fun b!230483 () Bool)

(assert (=> b!230483 (= e!142612 (Cons!3482 (h!8879 lt!90139) call!11771))))

(declare-fun b!230484 () Bool)

(assert (=> b!230484 (= e!142612 call!11771)))

(declare-fun b!230485 () Bool)

(assert (=> b!230485 (= e!142610 (forall!785 lt!90404 lambda!7335))))

(assert (= (and d!63374 c!44059) b!230482))

(assert (= (and d!63374 (not c!44059)) b!230480))

(assert (= (and b!230480 c!44060) b!230483))

(assert (= (and b!230480 (not c!44060)) b!230484))

(assert (= (or b!230483 b!230484) bm!11766))

(assert (= (and d!63374 res!106384) b!230481))

(assert (= (and b!230481 res!106383) b!230485))

(declare-fun b_lambda!6373 () Bool)

(assert (=> (not b_lambda!6373) (not b!230480)))

(declare-fun m!272239 () Bool)

(assert (=> d!63374 m!272239))

(declare-fun m!272241 () Bool)

(assert (=> d!63374 m!272241))

(declare-fun m!272243 () Bool)

(assert (=> b!230485 m!272243))

(declare-fun m!272245 () Bool)

(assert (=> b!230480 m!272245))

(declare-fun m!272247 () Bool)

(assert (=> bm!11766 m!272247))

(declare-fun m!272249 () Bool)

(assert (=> b!230481 m!272249))

(declare-fun m!272251 () Bool)

(assert (=> b!230481 m!272251))

(assert (=> b!229924 d!63374))

(declare-fun d!63376 () Bool)

(assert (=> d!63376 (= lt!90124 (_2!2105 lt!90103))))

(declare-fun lt!90407 () Unit!4012)

(declare-fun choose!2218 (List!3490 List!3490 List!3490 List!3490 List!3490) Unit!4012)

(assert (=> d!63376 (= lt!90407 (choose!2218 lt!90127 lt!90124 lt!90127 (_2!2105 lt!90103) lt!90147))))

(assert (=> d!63376 (isPrefix!349 lt!90127 lt!90147)))

(assert (=> d!63376 (= (lemmaSamePrefixThenSameSuffix!174 lt!90127 lt!90124 lt!90127 (_2!2105 lt!90103) lt!90147) lt!90407)))

(declare-fun bs!24401 () Bool)

(assert (= bs!24401 d!63376))

(declare-fun m!272253 () Bool)

(assert (=> bs!24401 m!272253))

(declare-fun m!272255 () Bool)

(assert (=> bs!24401 m!272255))

(assert (=> b!229924 d!63376))

(declare-fun d!63378 () Bool)

(declare-fun isEmpty!2027 (Option!652) Bool)

(assert (=> d!63378 (= (isDefined!503 lt!90110) (not (isEmpty!2027 lt!90110)))))

(declare-fun bs!24402 () Bool)

(assert (= bs!24402 d!63378))

(declare-fun m!272257 () Bool)

(assert (=> bs!24402 m!272257))

(assert (=> b!229924 d!63378))

(declare-fun d!63380 () Bool)

(declare-fun lt!90410 () Bool)

(assert (=> d!63380 (= lt!90410 (select (content!482 (usedCharacters!58 (regex!653 (rule!1210 lt!90143)))) lt!90138))))

(declare-fun e!142617 () Bool)

(assert (=> d!63380 (= lt!90410 e!142617)))

(declare-fun res!106389 () Bool)

(assert (=> d!63380 (=> (not res!106389) (not e!142617))))

(assert (=> d!63380 (= res!106389 ((_ is Cons!3480) (usedCharacters!58 (regex!653 (rule!1210 lt!90143)))))))

(assert (=> d!63380 (= (contains!628 (usedCharacters!58 (regex!653 (rule!1210 lt!90143))) lt!90138) lt!90410)))

(declare-fun b!230490 () Bool)

(declare-fun e!142618 () Bool)

(assert (=> b!230490 (= e!142617 e!142618)))

(declare-fun res!106390 () Bool)

(assert (=> b!230490 (=> res!106390 e!142618)))

(assert (=> b!230490 (= res!106390 (= (h!8877 (usedCharacters!58 (regex!653 (rule!1210 lt!90143)))) lt!90138))))

(declare-fun b!230491 () Bool)

(assert (=> b!230491 (= e!142618 (contains!628 (t!33486 (usedCharacters!58 (regex!653 (rule!1210 lt!90143)))) lt!90138))))

(assert (= (and d!63380 res!106389) b!230490))

(assert (= (and b!230490 (not res!106390)) b!230491))

(assert (=> d!63380 m!271377))

(declare-fun m!272259 () Bool)

(assert (=> d!63380 m!272259))

(declare-fun m!272261 () Bool)

(assert (=> d!63380 m!272261))

(declare-fun m!272263 () Bool)

(assert (=> b!230491 m!272263))

(assert (=> b!229924 d!63380))

(declare-fun d!63382 () Bool)

(declare-fun lt!90411 () BalanceConc!2264)

(assert (=> d!63382 (= (list!1344 lt!90411) (originalCharacters!696 lt!90143))))

(assert (=> d!63382 (= lt!90411 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 lt!90143))) (value!22926 lt!90143)))))

(assert (=> d!63382 (= (charsOf!308 lt!90143) lt!90411)))

(declare-fun b_lambda!6375 () Bool)

(assert (=> (not b_lambda!6375) (not d!63382)))

(declare-fun tb!11433 () Bool)

(declare-fun t!33532 () Bool)

(assert (=> (and b!229909 (= (toChars!1207 (transformation!653 (h!8878 rules!1920))) (toChars!1207 (transformation!653 (rule!1210 lt!90143)))) t!33532) tb!11433))

(declare-fun b!230492 () Bool)

(declare-fun e!142619 () Bool)

(declare-fun tp!93976 () Bool)

(assert (=> b!230492 (= e!142619 (and (inv!4334 (c!43933 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 lt!90143))) (value!22926 lt!90143)))) tp!93976))))

(declare-fun result!14624 () Bool)

(assert (=> tb!11433 (= result!14624 (and (inv!4335 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 lt!90143))) (value!22926 lt!90143))) e!142619))))

(assert (= tb!11433 b!230492))

(declare-fun m!272265 () Bool)

(assert (=> b!230492 m!272265))

(declare-fun m!272267 () Bool)

(assert (=> tb!11433 m!272267))

(assert (=> d!63382 t!33532))

(declare-fun b_and!17081 () Bool)

(assert (= b_and!17075 (and (=> t!33532 result!14624) b_and!17081)))

(declare-fun t!33534 () Bool)

(declare-fun tb!11435 () Bool)

(assert (=> (and b!229914 (= (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (toChars!1207 (transformation!653 (rule!1210 lt!90143)))) t!33534) tb!11435))

(declare-fun result!14626 () Bool)

(assert (= result!14626 result!14624))

(assert (=> d!63382 t!33534))

(declare-fun b_and!17083 () Bool)

(assert (= b_and!17077 (and (=> t!33534 result!14626) b_and!17083)))

(declare-fun tb!11437 () Bool)

(declare-fun t!33536 () Bool)

(assert (=> (and b!229902 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (toChars!1207 (transformation!653 (rule!1210 lt!90143)))) t!33536) tb!11437))

(declare-fun result!14628 () Bool)

(assert (= result!14628 result!14624))

(assert (=> d!63382 t!33536))

(declare-fun b_and!17085 () Bool)

(assert (= b_and!17079 (and (=> t!33536 result!14628) b_and!17085)))

(declare-fun m!272269 () Bool)

(assert (=> d!63382 m!272269))

(declare-fun m!272271 () Bool)

(assert (=> d!63382 m!272271))

(assert (=> b!229924 d!63382))

(declare-fun d!63384 () Bool)

(declare-fun lt!90412 () Int)

(assert (=> d!63384 (= lt!90412 (size!2789 (list!1345 (_1!2104 lt!90108))))))

(assert (=> d!63384 (= lt!90412 (size!2790 (c!43935 (_1!2104 lt!90108))))))

(assert (=> d!63384 (= (size!2783 (_1!2104 lt!90108)) lt!90412)))

(declare-fun bs!24403 () Bool)

(assert (= bs!24403 d!63384))

(declare-fun m!272273 () Bool)

(assert (=> bs!24403 m!272273))

(assert (=> bs!24403 m!272273))

(declare-fun m!272275 () Bool)

(assert (=> bs!24403 m!272275))

(declare-fun m!272277 () Bool)

(assert (=> bs!24403 m!272277))

(assert (=> b!229924 d!63384))

(declare-fun b!230520 () Bool)

(declare-fun e!142637 () Option!652)

(assert (=> b!230520 (= e!142637 (Some!651 (h!8878 rules!1920)))))

(declare-fun b!230521 () Bool)

(declare-fun e!142638 () Bool)

(declare-fun lt!90428 () Option!652)

(assert (=> b!230521 (= e!142638 (= (tag!853 (get!1110 lt!90428)) (tag!853 (rule!1210 separatorToken!170))))))

(declare-fun b!230522 () Bool)

(declare-fun e!142639 () Bool)

(assert (=> b!230522 (= e!142639 e!142638)))

(declare-fun res!106399 () Bool)

(assert (=> b!230522 (=> (not res!106399) (not e!142638))))

(declare-fun contains!631 (List!3491 Rule!1106) Bool)

(assert (=> b!230522 (= res!106399 (contains!631 rules!1920 (get!1110 lt!90428)))))

(declare-fun b!230523 () Bool)

(declare-fun lt!90430 () Unit!4012)

(declare-fun lt!90429 () Unit!4012)

(assert (=> b!230523 (= lt!90430 lt!90429)))

(assert (=> b!230523 (rulesInvariant!505 thiss!17480 (t!33487 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!24 (LexerInterface!539 Rule!1106 List!3491) Unit!4012)

(assert (=> b!230523 (= lt!90429 (lemmaInvariantOnRulesThenOnTail!24 thiss!17480 (h!8878 rules!1920) (t!33487 rules!1920)))))

(declare-fun e!142640 () Option!652)

(assert (=> b!230523 (= e!142640 (getRuleFromTag!94 thiss!17480 (t!33487 rules!1920) (tag!853 (rule!1210 separatorToken!170))))))

(declare-fun d!63386 () Bool)

(assert (=> d!63386 e!142639))

(declare-fun res!106398 () Bool)

(assert (=> d!63386 (=> res!106398 e!142639)))

(assert (=> d!63386 (= res!106398 (isEmpty!2027 lt!90428))))

(assert (=> d!63386 (= lt!90428 e!142637)))

(declare-fun c!44071 () Bool)

(assert (=> d!63386 (= c!44071 (and ((_ is Cons!3481) rules!1920) (= (tag!853 (h!8878 rules!1920)) (tag!853 (rule!1210 separatorToken!170)))))))

(assert (=> d!63386 (rulesInvariant!505 thiss!17480 rules!1920)))

(assert (=> d!63386 (= (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 separatorToken!170))) lt!90428)))

(declare-fun b!230524 () Bool)

(assert (=> b!230524 (= e!142637 e!142640)))

(declare-fun c!44072 () Bool)

(assert (=> b!230524 (= c!44072 (and ((_ is Cons!3481) rules!1920) (not (= (tag!853 (h!8878 rules!1920)) (tag!853 (rule!1210 separatorToken!170))))))))

(declare-fun b!230525 () Bool)

(assert (=> b!230525 (= e!142640 None!651)))

(assert (= (and d!63386 c!44071) b!230520))

(assert (= (and d!63386 (not c!44071)) b!230524))

(assert (= (and b!230524 c!44072) b!230523))

(assert (= (and b!230524 (not c!44072)) b!230525))

(assert (= (and d!63386 (not res!106398)) b!230522))

(assert (= (and b!230522 res!106399) b!230521))

(declare-fun m!272291 () Bool)

(assert (=> b!230521 m!272291))

(assert (=> b!230522 m!272291))

(assert (=> b!230522 m!272291))

(declare-fun m!272293 () Bool)

(assert (=> b!230522 m!272293))

(declare-fun m!272295 () Bool)

(assert (=> b!230523 m!272295))

(declare-fun m!272297 () Bool)

(assert (=> b!230523 m!272297))

(declare-fun m!272299 () Bool)

(assert (=> b!230523 m!272299))

(declare-fun m!272301 () Bool)

(assert (=> d!63386 m!272301))

(assert (=> d!63386 m!271435))

(assert (=> b!229924 d!63386))

(declare-fun d!63390 () Bool)

(declare-fun lt!90431 () BalanceConc!2264)

(assert (=> d!63390 (= (list!1344 lt!90431) (printList!223 thiss!17480 (list!1345 lt!90132)))))

(assert (=> d!63390 (= lt!90431 (printTailRec!233 thiss!17480 lt!90132 0 (BalanceConc!2265 Empty!1128)))))

(assert (=> d!63390 (= (print!270 thiss!17480 lt!90132) lt!90431)))

(declare-fun bs!24404 () Bool)

(assert (= bs!24404 d!63390))

(declare-fun m!272303 () Bool)

(assert (=> bs!24404 m!272303))

(declare-fun m!272305 () Bool)

(assert (=> bs!24404 m!272305))

(assert (=> bs!24404 m!272305))

(declare-fun m!272307 () Bool)

(assert (=> bs!24404 m!272307))

(assert (=> bs!24404 m!271385))

(assert (=> b!229924 d!63390))

(declare-fun b!230548 () Bool)

(declare-fun e!142657 () List!3490)

(assert (=> b!230548 (= e!142657 (Cons!3480 (c!43934 (regex!653 (rule!1210 separatorToken!170))) Nil!3480))))

(declare-fun b!230549 () Bool)

(declare-fun e!142658 () List!3490)

(declare-fun call!11782 () List!3490)

(assert (=> b!230549 (= e!142658 call!11782)))

(declare-fun b!230550 () Bool)

(declare-fun e!142656 () List!3490)

(assert (=> b!230550 (= e!142656 e!142657)))

(declare-fun c!44081 () Bool)

(assert (=> b!230550 (= c!44081 ((_ is ElementMatch!877) (regex!653 (rule!1210 separatorToken!170))))))

(declare-fun bm!11775 () Bool)

(declare-fun call!11781 () List!3490)

(declare-fun call!11780 () List!3490)

(declare-fun call!11783 () List!3490)

(assert (=> bm!11775 (= call!11781 (++!874 call!11780 call!11783))))

(declare-fun d!63392 () Bool)

(declare-fun c!44083 () Bool)

(assert (=> d!63392 (= c!44083 (or ((_ is EmptyExpr!877) (regex!653 (rule!1210 separatorToken!170))) ((_ is EmptyLang!877) (regex!653 (rule!1210 separatorToken!170)))))))

(assert (=> d!63392 (= (usedCharacters!58 (regex!653 (rule!1210 separatorToken!170))) e!142656)))

(declare-fun b!230551 () Bool)

(declare-fun e!142655 () List!3490)

(assert (=> b!230551 (= e!142655 call!11781)))

(declare-fun bm!11776 () Bool)

(declare-fun c!44082 () Bool)

(assert (=> bm!11776 (= call!11783 (usedCharacters!58 (ite c!44082 (regTwo!2267 (regex!653 (rule!1210 separatorToken!170))) (regTwo!2266 (regex!653 (rule!1210 separatorToken!170))))))))

(declare-fun b!230552 () Bool)

(assert (=> b!230552 (= e!142658 e!142655)))

(assert (=> b!230552 (= c!44082 ((_ is Union!877) (regex!653 (rule!1210 separatorToken!170))))))

(declare-fun bm!11777 () Bool)

(assert (=> bm!11777 (= call!11780 call!11782)))

(declare-fun bm!11778 () Bool)

(declare-fun c!44084 () Bool)

(assert (=> bm!11778 (= call!11782 (usedCharacters!58 (ite c!44084 (reg!1206 (regex!653 (rule!1210 separatorToken!170))) (ite c!44082 (regOne!2267 (regex!653 (rule!1210 separatorToken!170))) (regOne!2266 (regex!653 (rule!1210 separatorToken!170)))))))))

(declare-fun b!230553 () Bool)

(assert (=> b!230553 (= e!142655 call!11781)))

(declare-fun b!230554 () Bool)

(assert (=> b!230554 (= e!142656 Nil!3480)))

(declare-fun b!230555 () Bool)

(assert (=> b!230555 (= c!44084 ((_ is Star!877) (regex!653 (rule!1210 separatorToken!170))))))

(assert (=> b!230555 (= e!142657 e!142658)))

(assert (= (and d!63392 c!44083) b!230554))

(assert (= (and d!63392 (not c!44083)) b!230550))

(assert (= (and b!230550 c!44081) b!230548))

(assert (= (and b!230550 (not c!44081)) b!230555))

(assert (= (and b!230555 c!44084) b!230549))

(assert (= (and b!230555 (not c!44084)) b!230552))

(assert (= (and b!230552 c!44082) b!230551))

(assert (= (and b!230552 (not c!44082)) b!230553))

(assert (= (or b!230551 b!230553) bm!11777))

(assert (= (or b!230551 b!230553) bm!11776))

(assert (= (or b!230551 b!230553) bm!11775))

(assert (= (or b!230549 bm!11777) bm!11778))

(declare-fun m!272315 () Bool)

(assert (=> bm!11775 m!272315))

(declare-fun m!272317 () Bool)

(assert (=> bm!11776 m!272317))

(declare-fun m!272319 () Bool)

(assert (=> bm!11778 m!272319))

(assert (=> b!229924 d!63392))

(declare-fun d!63398 () Bool)

(assert (=> d!63398 (= (get!1109 (maxPrefix!269 thiss!17480 rules!1920 lt!90147)) (v!14341 (maxPrefix!269 thiss!17480 rules!1920 lt!90147)))))

(assert (=> b!229924 d!63398))

(declare-fun d!63400 () Bool)

(declare-fun e!142665 () Bool)

(assert (=> d!63400 e!142665))

(declare-fun res!106426 () Bool)

(assert (=> d!63400 (=> res!106426 e!142665)))

(declare-fun lt!90442 () Option!651)

(declare-fun isEmpty!2029 (Option!651) Bool)

(assert (=> d!63400 (= res!106426 (isEmpty!2029 lt!90442))))

(declare-fun e!142666 () Option!651)

(assert (=> d!63400 (= lt!90442 e!142666)))

(declare-fun c!44087 () Bool)

(assert (=> d!63400 (= c!44087 (and ((_ is Cons!3481) rules!1920) ((_ is Nil!3481) (t!33487 rules!1920))))))

(declare-fun lt!90444 () Unit!4012)

(declare-fun lt!90445 () Unit!4012)

(assert (=> d!63400 (= lt!90444 lt!90445)))

(assert (=> d!63400 (isPrefix!349 lt!90147 lt!90147)))

(declare-fun lemmaIsPrefixRefl!181 (List!3490 List!3490) Unit!4012)

(assert (=> d!63400 (= lt!90445 (lemmaIsPrefixRefl!181 lt!90147 lt!90147))))

(declare-fun rulesValidInductive!170 (LexerInterface!539 List!3491) Bool)

(assert (=> d!63400 (rulesValidInductive!170 thiss!17480 rules!1920)))

(assert (=> d!63400 (= (maxPrefix!269 thiss!17480 rules!1920 lt!90147) lt!90442)))

(declare-fun b!230574 () Bool)

(declare-fun lt!90443 () Option!651)

(declare-fun lt!90446 () Option!651)

(assert (=> b!230574 (= e!142666 (ite (and ((_ is None!650) lt!90443) ((_ is None!650) lt!90446)) None!650 (ite ((_ is None!650) lt!90446) lt!90443 (ite ((_ is None!650) lt!90443) lt!90446 (ite (>= (size!2782 (_1!2105 (v!14341 lt!90443))) (size!2782 (_1!2105 (v!14341 lt!90446)))) lt!90443 lt!90446)))))))

(declare-fun call!11786 () Option!651)

(assert (=> b!230574 (= lt!90443 call!11786)))

(assert (=> b!230574 (= lt!90446 (maxPrefix!269 thiss!17480 (t!33487 rules!1920) lt!90147))))

(declare-fun bm!11781 () Bool)

(declare-fun maxPrefixOneRule!115 (LexerInterface!539 Rule!1106 List!3490) Option!651)

(assert (=> bm!11781 (= call!11786 (maxPrefixOneRule!115 thiss!17480 (h!8878 rules!1920) lt!90147))))

(declare-fun b!230575 () Bool)

(declare-fun res!106423 () Bool)

(declare-fun e!142667 () Bool)

(assert (=> b!230575 (=> (not res!106423) (not e!142667))))

(assert (=> b!230575 (= res!106423 (= (++!874 (list!1344 (charsOf!308 (_1!2105 (get!1109 lt!90442)))) (_2!2105 (get!1109 lt!90442))) lt!90147))))

(declare-fun b!230576 () Bool)

(declare-fun res!106422 () Bool)

(assert (=> b!230576 (=> (not res!106422) (not e!142667))))

(declare-fun apply!636 (TokenValueInjection!1122 BalanceConc!2264) TokenValue!675)

(assert (=> b!230576 (= res!106422 (= (value!22926 (_1!2105 (get!1109 lt!90442))) (apply!636 (transformation!653 (rule!1210 (_1!2105 (get!1109 lt!90442)))) (seqFromList!683 (originalCharacters!696 (_1!2105 (get!1109 lt!90442)))))))))

(declare-fun b!230577 () Bool)

(declare-fun res!106421 () Bool)

(assert (=> b!230577 (=> (not res!106421) (not e!142667))))

(assert (=> b!230577 (= res!106421 (< (size!2788 (_2!2105 (get!1109 lt!90442))) (size!2788 lt!90147)))))

(declare-fun b!230578 () Bool)

(declare-fun res!106424 () Bool)

(assert (=> b!230578 (=> (not res!106424) (not e!142667))))

(assert (=> b!230578 (= res!106424 (= (list!1344 (charsOf!308 (_1!2105 (get!1109 lt!90442)))) (originalCharacters!696 (_1!2105 (get!1109 lt!90442)))))))

(declare-fun b!230579 () Bool)

(assert (=> b!230579 (= e!142666 call!11786)))

(declare-fun b!230580 () Bool)

(declare-fun res!106425 () Bool)

(assert (=> b!230580 (=> (not res!106425) (not e!142667))))

(assert (=> b!230580 (= res!106425 (matchR!215 (regex!653 (rule!1210 (_1!2105 (get!1109 lt!90442)))) (list!1344 (charsOf!308 (_1!2105 (get!1109 lt!90442))))))))

(declare-fun b!230581 () Bool)

(assert (=> b!230581 (= e!142667 (contains!631 rules!1920 (rule!1210 (_1!2105 (get!1109 lt!90442)))))))

(declare-fun b!230582 () Bool)

(assert (=> b!230582 (= e!142665 e!142667)))

(declare-fun res!106420 () Bool)

(assert (=> b!230582 (=> (not res!106420) (not e!142667))))

(assert (=> b!230582 (= res!106420 (isDefined!502 lt!90442))))

(assert (= (and d!63400 c!44087) b!230579))

(assert (= (and d!63400 (not c!44087)) b!230574))

(assert (= (or b!230579 b!230574) bm!11781))

(assert (= (and d!63400 (not res!106426)) b!230582))

(assert (= (and b!230582 res!106420) b!230578))

(assert (= (and b!230578 res!106424) b!230577))

(assert (= (and b!230577 res!106421) b!230575))

(assert (= (and b!230575 res!106423) b!230576))

(assert (= (and b!230576 res!106422) b!230580))

(assert (= (and b!230580 res!106425) b!230581))

(declare-fun m!272321 () Bool)

(assert (=> b!230576 m!272321))

(declare-fun m!272323 () Bool)

(assert (=> b!230576 m!272323))

(assert (=> b!230576 m!272323))

(declare-fun m!272325 () Bool)

(assert (=> b!230576 m!272325))

(declare-fun m!272327 () Bool)

(assert (=> bm!11781 m!272327))

(declare-fun m!272329 () Bool)

(assert (=> b!230574 m!272329))

(assert (=> b!230578 m!272321))

(declare-fun m!272331 () Bool)

(assert (=> b!230578 m!272331))

(assert (=> b!230578 m!272331))

(declare-fun m!272333 () Bool)

(assert (=> b!230578 m!272333))

(assert (=> b!230575 m!272321))

(assert (=> b!230575 m!272331))

(assert (=> b!230575 m!272331))

(assert (=> b!230575 m!272333))

(assert (=> b!230575 m!272333))

(declare-fun m!272335 () Bool)

(assert (=> b!230575 m!272335))

(declare-fun m!272337 () Bool)

(assert (=> d!63400 m!272337))

(declare-fun m!272339 () Bool)

(assert (=> d!63400 m!272339))

(declare-fun m!272341 () Bool)

(assert (=> d!63400 m!272341))

(declare-fun m!272343 () Bool)

(assert (=> d!63400 m!272343))

(assert (=> b!230581 m!272321))

(declare-fun m!272345 () Bool)

(assert (=> b!230581 m!272345))

(assert (=> b!230580 m!272321))

(assert (=> b!230580 m!272331))

(assert (=> b!230580 m!272331))

(assert (=> b!230580 m!272333))

(assert (=> b!230580 m!272333))

(declare-fun m!272347 () Bool)

(assert (=> b!230580 m!272347))

(assert (=> b!230577 m!272321))

(declare-fun m!272349 () Bool)

(assert (=> b!230577 m!272349))

(assert (=> b!230577 m!272123))

(declare-fun m!272351 () Bool)

(assert (=> b!230582 m!272351))

(assert (=> b!229924 d!63400))

(declare-fun d!63402 () Bool)

(declare-fun lt!90447 () Int)

(assert (=> d!63402 (= lt!90447 (size!2789 (list!1345 (_1!2104 lt!90107))))))

(assert (=> d!63402 (= lt!90447 (size!2790 (c!43935 (_1!2104 lt!90107))))))

(assert (=> d!63402 (= (size!2783 (_1!2104 lt!90107)) lt!90447)))

(declare-fun bs!24406 () Bool)

(assert (= bs!24406 d!63402))

(assert (=> bs!24406 m!272157))

(assert (=> bs!24406 m!272157))

(declare-fun m!272353 () Bool)

(assert (=> bs!24406 m!272353))

(declare-fun m!272355 () Bool)

(assert (=> bs!24406 m!272355))

(assert (=> b!229924 d!63402))

(declare-fun d!63404 () Bool)

(assert (=> d!63404 (= (maxPrefix!269 thiss!17480 rules!1920 (++!874 (list!1344 (charsOf!308 separatorToken!170)) lt!90134)) (Some!650 (tuple2!3779 separatorToken!170 lt!90134)))))

(declare-fun lt!90464 () Unit!4012)

(declare-fun choose!2219 (LexerInterface!539 List!3491 Token!1050 Rule!1106 List!3490 Rule!1106) Unit!4012)

(assert (=> d!63404 (= lt!90464 (choose!2219 thiss!17480 rules!1920 separatorToken!170 (rule!1210 separatorToken!170) lt!90134 (rule!1210 lt!90143)))))

(assert (=> d!63404 (not (isEmpty!2018 rules!1920))))

(assert (=> d!63404 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!44 thiss!17480 rules!1920 separatorToken!170 (rule!1210 separatorToken!170) lt!90134 (rule!1210 lt!90143)) lt!90464)))

(declare-fun bs!24407 () Bool)

(assert (= bs!24407 d!63404))

(assert (=> bs!24407 m!271303))

(assert (=> bs!24407 m!271303))

(assert (=> bs!24407 m!271305))

(declare-fun m!272357 () Bool)

(assert (=> bs!24407 m!272357))

(assert (=> bs!24407 m!271305))

(declare-fun m!272359 () Bool)

(assert (=> bs!24407 m!272359))

(assert (=> bs!24407 m!271449))

(assert (=> bs!24407 m!272359))

(declare-fun m!272361 () Bool)

(assert (=> bs!24407 m!272361))

(assert (=> b!229924 d!63404))

(declare-fun d!63406 () Bool)

(declare-fun lt!90496 () BalanceConc!2264)

(declare-fun printListTailRec!100 (LexerInterface!539 List!3492 List!3490) List!3490)

(assert (=> d!63406 (= (list!1344 lt!90496) (printListTailRec!100 thiss!17480 (dropList!132 lt!90132 0) (list!1344 (BalanceConc!2265 Empty!1128))))))

(declare-fun e!142700 () BalanceConc!2264)

(assert (=> d!63406 (= lt!90496 e!142700)))

(declare-fun c!44096 () Bool)

(assert (=> d!63406 (= c!44096 (>= 0 (size!2783 lt!90132)))))

(declare-fun e!142701 () Bool)

(assert (=> d!63406 e!142701))

(declare-fun res!106456 () Bool)

(assert (=> d!63406 (=> (not res!106456) (not e!142701))))

(assert (=> d!63406 (= res!106456 (>= 0 0))))

(assert (=> d!63406 (= (printTailRec!233 thiss!17480 lt!90132 0 (BalanceConc!2265 Empty!1128)) lt!90496)))

(declare-fun b!230628 () Bool)

(assert (=> b!230628 (= e!142701 (<= 0 (size!2783 lt!90132)))))

(declare-fun b!230629 () Bool)

(assert (=> b!230629 (= e!142700 (BalanceConc!2265 Empty!1128))))

(declare-fun b!230630 () Bool)

(assert (=> b!230630 (= e!142700 (printTailRec!233 thiss!17480 lt!90132 (+ 0 1) (++!876 (BalanceConc!2265 Empty!1128) (charsOf!308 (apply!630 lt!90132 0)))))))

(declare-fun lt!90498 () List!3492)

(assert (=> b!230630 (= lt!90498 (list!1345 lt!90132))))

(declare-fun lt!90495 () Unit!4012)

(assert (=> b!230630 (= lt!90495 (lemmaDropApply!172 lt!90498 0))))

(assert (=> b!230630 (= (head!802 (drop!185 lt!90498 0)) (apply!634 lt!90498 0))))

(declare-fun lt!90499 () Unit!4012)

(assert (=> b!230630 (= lt!90499 lt!90495)))

(declare-fun lt!90493 () List!3492)

(assert (=> b!230630 (= lt!90493 (list!1345 lt!90132))))

(declare-fun lt!90494 () Unit!4012)

(assert (=> b!230630 (= lt!90494 (lemmaDropTail!164 lt!90493 0))))

(assert (=> b!230630 (= (tail!430 (drop!185 lt!90493 0)) (drop!185 lt!90493 (+ 0 1)))))

(declare-fun lt!90497 () Unit!4012)

(assert (=> b!230630 (= lt!90497 lt!90494)))

(assert (= (and d!63406 res!106456) b!230628))

(assert (= (and d!63406 c!44096) b!230629))

(assert (= (and d!63406 (not c!44096)) b!230630))

(declare-fun m!272457 () Bool)

(assert (=> d!63406 m!272457))

(declare-fun m!272459 () Bool)

(assert (=> d!63406 m!272459))

(declare-fun m!272461 () Bool)

(assert (=> d!63406 m!272461))

(declare-fun m!272463 () Bool)

(assert (=> d!63406 m!272463))

(assert (=> d!63406 m!272457))

(assert (=> d!63406 m!272459))

(declare-fun m!272465 () Bool)

(assert (=> d!63406 m!272465))

(assert (=> b!230628 m!272465))

(declare-fun m!272467 () Bool)

(assert (=> b!230630 m!272467))

(declare-fun m!272469 () Bool)

(assert (=> b!230630 m!272469))

(declare-fun m!272471 () Bool)

(assert (=> b!230630 m!272471))

(declare-fun m!272473 () Bool)

(assert (=> b!230630 m!272473))

(declare-fun m!272475 () Bool)

(assert (=> b!230630 m!272475))

(declare-fun m!272477 () Bool)

(assert (=> b!230630 m!272477))

(declare-fun m!272479 () Bool)

(assert (=> b!230630 m!272479))

(assert (=> b!230630 m!272305))

(declare-fun m!272481 () Bool)

(assert (=> b!230630 m!272481))

(assert (=> b!230630 m!272477))

(declare-fun m!272483 () Bool)

(assert (=> b!230630 m!272483))

(assert (=> b!230630 m!272481))

(declare-fun m!272485 () Bool)

(assert (=> b!230630 m!272485))

(declare-fun m!272487 () Bool)

(assert (=> b!230630 m!272487))

(assert (=> b!230630 m!272479))

(assert (=> b!230630 m!272467))

(declare-fun m!272489 () Bool)

(assert (=> b!230630 m!272489))

(assert (=> b!230630 m!272473))

(assert (=> b!229924 d!63406))

(declare-fun d!63436 () Bool)

(declare-fun list!1349 (Conc!1129) List!3492)

(assert (=> d!63436 (= (list!1345 (_1!2104 (lex!339 thiss!17480 rules!1920 lt!90114))) (list!1349 (c!43935 (_1!2104 (lex!339 thiss!17480 rules!1920 lt!90114)))))))

(declare-fun bs!24415 () Bool)

(assert (= bs!24415 d!63436))

(declare-fun m!272491 () Bool)

(assert (=> bs!24415 m!272491))

(assert (=> b!229924 d!63436))

(declare-fun bs!24416 () Bool)

(declare-fun d!63438 () Bool)

(assert (= bs!24416 (and d!63438 d!63308)))

(declare-fun lambda!7361 () Int)

(assert (=> bs!24416 (= lambda!7361 lambda!7352)))

(declare-fun bs!24417 () Bool)

(assert (= bs!24417 (and d!63438 b!229893)))

(assert (=> bs!24417 (= lambda!7361 lambda!7335)))

(declare-fun bs!24418 () Bool)

(assert (= bs!24418 (and d!63438 b!229934)))

(assert (=> bs!24418 (not (= lambda!7361 lambda!7336))))

(declare-fun bs!24419 () Bool)

(assert (= bs!24419 (and d!63438 d!63254)))

(assert (=> bs!24419 (not (= lambda!7361 lambda!7344))))

(declare-fun bs!24420 () Bool)

(assert (= bs!24420 (and d!63438 b!230286)))

(assert (=> bs!24420 (not (= lambda!7361 lambda!7347))))

(declare-fun bs!24421 () Bool)

(assert (= bs!24421 (and d!63438 b!230338)))

(assert (=> bs!24421 (not (= lambda!7361 lambda!7353))))

(assert (=> d!63438 (= (filter!47 (list!1345 (_1!2104 (lex!339 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!222 thiss!17480 rules!1920 (seqFromList!684 (t!33488 tokens!465)) separatorToken!170 0)))) lambda!7361) (t!33488 tokens!465))))

(declare-fun lt!90502 () Unit!4012)

(declare-fun choose!2220 (LexerInterface!539 List!3491 List!3492 Token!1050) Unit!4012)

(assert (=> d!63438 (= lt!90502 (choose!2220 thiss!17480 rules!1920 (t!33488 tokens!465) separatorToken!170))))

(assert (=> d!63438 (not (isEmpty!2018 rules!1920))))

(assert (=> d!63438 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!38 thiss!17480 rules!1920 (t!33488 tokens!465) separatorToken!170) lt!90502)))

(declare-fun bs!24422 () Bool)

(assert (= bs!24422 d!63438))

(assert (=> bs!24422 m!271313))

(declare-fun m!272493 () Bool)

(assert (=> bs!24422 m!272493))

(assert (=> bs!24422 m!271449))

(declare-fun m!272495 () Bool)

(assert (=> bs!24422 m!272495))

(declare-fun m!272497 () Bool)

(assert (=> bs!24422 m!272497))

(declare-fun m!272499 () Bool)

(assert (=> bs!24422 m!272499))

(assert (=> bs!24422 m!272495))

(assert (=> bs!24422 m!271311))

(assert (=> bs!24422 m!271313))

(assert (=> bs!24422 m!271311))

(assert (=> b!229924 d!63438))

(declare-fun d!63440 () Bool)

(assert (=> d!63440 (rulesProduceIndividualToken!288 thiss!17480 rules!1920 lt!90143)))

(declare-fun lt!90547 () Unit!4012)

(declare-fun choose!2221 (LexerInterface!539 List!3491 List!3492 Token!1050) Unit!4012)

(assert (=> d!63440 (= lt!90547 (choose!2221 thiss!17480 rules!1920 tokens!465 lt!90143))))

(assert (=> d!63440 (not (isEmpty!2018 rules!1920))))

(assert (=> d!63440 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!106 thiss!17480 rules!1920 tokens!465 lt!90143) lt!90547)))

(declare-fun bs!24432 () Bool)

(assert (= bs!24432 d!63440))

(assert (=> bs!24432 m!271389))

(declare-fun m!272557 () Bool)

(assert (=> bs!24432 m!272557))

(assert (=> bs!24432 m!271449))

(assert (=> b!229924 d!63440))

(declare-fun b!230661 () Bool)

(declare-fun e!142725 () List!3490)

(assert (=> b!230661 (= e!142725 (Cons!3480 (c!43934 (regex!653 (rule!1210 lt!90143))) Nil!3480))))

(declare-fun b!230662 () Bool)

(declare-fun e!142726 () List!3490)

(declare-fun call!11807 () List!3490)

(assert (=> b!230662 (= e!142726 call!11807)))

(declare-fun b!230663 () Bool)

(declare-fun e!142724 () List!3490)

(assert (=> b!230663 (= e!142724 e!142725)))

(declare-fun c!44106 () Bool)

(assert (=> b!230663 (= c!44106 ((_ is ElementMatch!877) (regex!653 (rule!1210 lt!90143))))))

(declare-fun bm!11800 () Bool)

(declare-fun call!11806 () List!3490)

(declare-fun call!11805 () List!3490)

(declare-fun call!11808 () List!3490)

(assert (=> bm!11800 (= call!11806 (++!874 call!11805 call!11808))))

(declare-fun d!63444 () Bool)

(declare-fun c!44108 () Bool)

(assert (=> d!63444 (= c!44108 (or ((_ is EmptyExpr!877) (regex!653 (rule!1210 lt!90143))) ((_ is EmptyLang!877) (regex!653 (rule!1210 lt!90143)))))))

(assert (=> d!63444 (= (usedCharacters!58 (regex!653 (rule!1210 lt!90143))) e!142724)))

(declare-fun b!230664 () Bool)

(declare-fun e!142723 () List!3490)

(assert (=> b!230664 (= e!142723 call!11806)))

(declare-fun bm!11801 () Bool)

(declare-fun c!44107 () Bool)

(assert (=> bm!11801 (= call!11808 (usedCharacters!58 (ite c!44107 (regTwo!2267 (regex!653 (rule!1210 lt!90143))) (regTwo!2266 (regex!653 (rule!1210 lt!90143))))))))

(declare-fun b!230665 () Bool)

(assert (=> b!230665 (= e!142726 e!142723)))

(assert (=> b!230665 (= c!44107 ((_ is Union!877) (regex!653 (rule!1210 lt!90143))))))

(declare-fun bm!11802 () Bool)

(assert (=> bm!11802 (= call!11805 call!11807)))

(declare-fun c!44109 () Bool)

(declare-fun bm!11803 () Bool)

(assert (=> bm!11803 (= call!11807 (usedCharacters!58 (ite c!44109 (reg!1206 (regex!653 (rule!1210 lt!90143))) (ite c!44107 (regOne!2267 (regex!653 (rule!1210 lt!90143))) (regOne!2266 (regex!653 (rule!1210 lt!90143)))))))))

(declare-fun b!230666 () Bool)

(assert (=> b!230666 (= e!142723 call!11806)))

(declare-fun b!230667 () Bool)

(assert (=> b!230667 (= e!142724 Nil!3480)))

(declare-fun b!230668 () Bool)

(assert (=> b!230668 (= c!44109 ((_ is Star!877) (regex!653 (rule!1210 lt!90143))))))

(assert (=> b!230668 (= e!142725 e!142726)))

(assert (= (and d!63444 c!44108) b!230667))

(assert (= (and d!63444 (not c!44108)) b!230663))

(assert (= (and b!230663 c!44106) b!230661))

(assert (= (and b!230663 (not c!44106)) b!230668))

(assert (= (and b!230668 c!44109) b!230662))

(assert (= (and b!230668 (not c!44109)) b!230665))

(assert (= (and b!230665 c!44107) b!230664))

(assert (= (and b!230665 (not c!44107)) b!230666))

(assert (= (or b!230664 b!230666) bm!11802))

(assert (= (or b!230664 b!230666) bm!11801))

(assert (= (or b!230664 b!230666) bm!11800))

(assert (= (or b!230662 bm!11802) bm!11803))

(declare-fun m!272559 () Bool)

(assert (=> bm!11800 m!272559))

(declare-fun m!272561 () Bool)

(assert (=> bm!11801 m!272561))

(declare-fun m!272563 () Bool)

(assert (=> bm!11803 m!272563))

(assert (=> b!229924 d!63444))

(declare-fun d!63446 () Bool)

(declare-fun e!142729 () Bool)

(assert (=> d!63446 e!142729))

(declare-fun res!106468 () Bool)

(assert (=> d!63446 (=> (not res!106468) (not e!142729))))

(declare-fun lt!90550 () BalanceConc!2266)

(assert (=> d!63446 (= res!106468 (= (list!1345 lt!90550) (Cons!3482 separatorToken!170 Nil!3482)))))

(declare-fun singleton!81 (Token!1050) BalanceConc!2266)

(assert (=> d!63446 (= lt!90550 (singleton!81 separatorToken!170))))

(assert (=> d!63446 (= (singletonSeq!205 separatorToken!170) lt!90550)))

(declare-fun b!230671 () Bool)

(declare-fun isBalanced!298 (Conc!1129) Bool)

(assert (=> b!230671 (= e!142729 (isBalanced!298 (c!43935 lt!90550)))))

(assert (= (and d!63446 res!106468) b!230671))

(declare-fun m!272565 () Bool)

(assert (=> d!63446 m!272565))

(declare-fun m!272567 () Bool)

(assert (=> d!63446 m!272567))

(declare-fun m!272569 () Bool)

(assert (=> b!230671 m!272569))

(assert (=> b!229924 d!63446))

(declare-fun d!63448 () Bool)

(declare-fun e!142732 () Bool)

(assert (=> d!63448 e!142732))

(declare-fun res!106473 () Bool)

(assert (=> d!63448 (=> (not res!106473) (not e!142732))))

(assert (=> d!63448 (= res!106473 (isDefined!503 (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 lt!90143)))))))

(declare-fun lt!90553 () Unit!4012)

(declare-fun choose!2222 (LexerInterface!539 List!3491 List!3490 Token!1050) Unit!4012)

(assert (=> d!63448 (= lt!90553 (choose!2222 thiss!17480 rules!1920 lt!90117 lt!90143))))

(assert (=> d!63448 (rulesInvariant!505 thiss!17480 rules!1920)))

(assert (=> d!63448 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!94 thiss!17480 rules!1920 lt!90117 lt!90143) lt!90553)))

(declare-fun b!230676 () Bool)

(declare-fun res!106474 () Bool)

(assert (=> b!230676 (=> (not res!106474) (not e!142732))))

(assert (=> b!230676 (= res!106474 (matchR!215 (regex!653 (get!1110 (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 lt!90143))))) (list!1344 (charsOf!308 lt!90143))))))

(declare-fun b!230677 () Bool)

(assert (=> b!230677 (= e!142732 (= (rule!1210 lt!90143) (get!1110 (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 lt!90143))))))))

(assert (= (and d!63448 res!106473) b!230676))

(assert (= (and b!230676 res!106474) b!230677))

(assert (=> d!63448 m!271413))

(assert (=> d!63448 m!271413))

(declare-fun m!272571 () Bool)

(assert (=> d!63448 m!272571))

(declare-fun m!272573 () Bool)

(assert (=> d!63448 m!272573))

(assert (=> d!63448 m!271435))

(assert (=> b!230676 m!271355))

(declare-fun m!272575 () Bool)

(assert (=> b!230676 m!272575))

(assert (=> b!230676 m!271413))

(declare-fun m!272577 () Bool)

(assert (=> b!230676 m!272577))

(assert (=> b!230676 m!271413))

(assert (=> b!230676 m!271353))

(assert (=> b!230676 m!271355))

(assert (=> b!230676 m!271353))

(assert (=> b!230677 m!271413))

(assert (=> b!230677 m!271413))

(assert (=> b!230677 m!272577))

(assert (=> b!229924 d!63448))

(declare-fun d!63450 () Bool)

(declare-fun lt!90555 () Bool)

(declare-fun e!142734 () Bool)

(assert (=> d!63450 (= lt!90555 e!142734)))

(declare-fun res!106475 () Bool)

(assert (=> d!63450 (=> (not res!106475) (not e!142734))))

(assert (=> d!63450 (= res!106475 (= (list!1345 (_1!2104 (lex!339 thiss!17480 rules!1920 (print!270 thiss!17480 (singletonSeq!205 lt!90143))))) (list!1345 (singletonSeq!205 lt!90143))))))

(declare-fun e!142733 () Bool)

(assert (=> d!63450 (= lt!90555 e!142733)))

(declare-fun res!106476 () Bool)

(assert (=> d!63450 (=> (not res!106476) (not e!142733))))

(declare-fun lt!90554 () tuple2!3776)

(assert (=> d!63450 (= res!106476 (= (size!2783 (_1!2104 lt!90554)) 1))))

(assert (=> d!63450 (= lt!90554 (lex!339 thiss!17480 rules!1920 (print!270 thiss!17480 (singletonSeq!205 lt!90143))))))

(assert (=> d!63450 (not (isEmpty!2018 rules!1920))))

(assert (=> d!63450 (= (rulesProduceIndividualToken!288 thiss!17480 rules!1920 lt!90143) lt!90555)))

(declare-fun b!230678 () Bool)

(declare-fun res!106477 () Bool)

(assert (=> b!230678 (=> (not res!106477) (not e!142733))))

(assert (=> b!230678 (= res!106477 (= (apply!630 (_1!2104 lt!90554) 0) lt!90143))))

(declare-fun b!230679 () Bool)

(assert (=> b!230679 (= e!142733 (isEmpty!2020 (_2!2104 lt!90554)))))

(declare-fun b!230680 () Bool)

(assert (=> b!230680 (= e!142734 (isEmpty!2020 (_2!2104 (lex!339 thiss!17480 rules!1920 (print!270 thiss!17480 (singletonSeq!205 lt!90143))))))))

(assert (= (and d!63450 res!106476) b!230678))

(assert (= (and b!230678 res!106477) b!230679))

(assert (= (and d!63450 res!106475) b!230680))

(declare-fun m!272579 () Bool)

(assert (=> d!63450 m!272579))

(declare-fun m!272581 () Bool)

(assert (=> d!63450 m!272581))

(assert (=> d!63450 m!271383))

(assert (=> d!63450 m!272579))

(assert (=> d!63450 m!271449))

(declare-fun m!272583 () Bool)

(assert (=> d!63450 m!272583))

(assert (=> d!63450 m!271383))

(assert (=> d!63450 m!271383))

(declare-fun m!272585 () Bool)

(assert (=> d!63450 m!272585))

(declare-fun m!272587 () Bool)

(assert (=> d!63450 m!272587))

(declare-fun m!272589 () Bool)

(assert (=> b!230678 m!272589))

(declare-fun m!272591 () Bool)

(assert (=> b!230679 m!272591))

(assert (=> b!230680 m!271383))

(assert (=> b!230680 m!271383))

(assert (=> b!230680 m!272579))

(assert (=> b!230680 m!272579))

(assert (=> b!230680 m!272581))

(declare-fun m!272593 () Bool)

(assert (=> b!230680 m!272593))

(assert (=> b!229924 d!63450))

(declare-fun d!63452 () Bool)

(declare-fun e!142735 () Bool)

(assert (=> d!63452 e!142735))

(declare-fun res!106478 () Bool)

(assert (=> d!63452 (=> (not res!106478) (not e!142735))))

(assert (=> d!63452 (= res!106478 (isDefined!503 (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 separatorToken!170)))))))

(declare-fun lt!90556 () Unit!4012)

(assert (=> d!63452 (= lt!90556 (choose!2222 thiss!17480 rules!1920 lt!90121 separatorToken!170))))

(assert (=> d!63452 (rulesInvariant!505 thiss!17480 rules!1920)))

(assert (=> d!63452 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!94 thiss!17480 rules!1920 lt!90121 separatorToken!170) lt!90556)))

(declare-fun b!230681 () Bool)

(declare-fun res!106479 () Bool)

(assert (=> b!230681 (=> (not res!106479) (not e!142735))))

(assert (=> b!230681 (= res!106479 (matchR!215 (regex!653 (get!1110 (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 separatorToken!170))))) (list!1344 (charsOf!308 separatorToken!170))))))

(declare-fun b!230682 () Bool)

(assert (=> b!230682 (= e!142735 (= (rule!1210 separatorToken!170) (get!1110 (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 separatorToken!170))))))))

(assert (= (and d!63452 res!106478) b!230681))

(assert (= (and b!230681 res!106479) b!230682))

(assert (=> d!63452 m!271361))

(assert (=> d!63452 m!271361))

(declare-fun m!272595 () Bool)

(assert (=> d!63452 m!272595))

(declare-fun m!272597 () Bool)

(assert (=> d!63452 m!272597))

(assert (=> d!63452 m!271435))

(assert (=> b!230681 m!271305))

(declare-fun m!272599 () Bool)

(assert (=> b!230681 m!272599))

(assert (=> b!230681 m!271361))

(declare-fun m!272601 () Bool)

(assert (=> b!230681 m!272601))

(assert (=> b!230681 m!271361))

(assert (=> b!230681 m!271303))

(assert (=> b!230681 m!271305))

(assert (=> b!230681 m!271303))

(assert (=> b!230682 m!271361))

(assert (=> b!230682 m!271361))

(assert (=> b!230682 m!272601))

(assert (=> b!229924 d!63452))

(declare-fun b!230683 () Bool)

(declare-fun res!106482 () Bool)

(declare-fun e!142737 () Bool)

(assert (=> b!230683 (=> (not res!106482) (not e!142737))))

(declare-fun lt!90557 () tuple2!3776)

(assert (=> b!230683 (= res!106482 (= (list!1345 (_1!2104 lt!90557)) (_1!2106 (lexList!167 thiss!17480 rules!1920 (list!1344 lt!90111)))))))

(declare-fun d!63454 () Bool)

(assert (=> d!63454 e!142737))

(declare-fun res!106481 () Bool)

(assert (=> d!63454 (=> (not res!106481) (not e!142737))))

(declare-fun e!142738 () Bool)

(assert (=> d!63454 (= res!106481 e!142738)))

(declare-fun c!44110 () Bool)

(assert (=> d!63454 (= c!44110 (> (size!2783 (_1!2104 lt!90557)) 0))))

(assert (=> d!63454 (= lt!90557 (lexTailRecV2!144 thiss!17480 rules!1920 lt!90111 (BalanceConc!2265 Empty!1128) lt!90111 (BalanceConc!2267 Empty!1129)))))

(assert (=> d!63454 (= (lex!339 thiss!17480 rules!1920 lt!90111) lt!90557)))

(declare-fun b!230684 () Bool)

(declare-fun e!142736 () Bool)

(assert (=> b!230684 (= e!142736 (not (isEmpty!2019 (_1!2104 lt!90557))))))

(declare-fun b!230685 () Bool)

(assert (=> b!230685 (= e!142738 (= (_2!2104 lt!90557) lt!90111))))

(declare-fun b!230686 () Bool)

(assert (=> b!230686 (= e!142737 (= (list!1344 (_2!2104 lt!90557)) (_2!2106 (lexList!167 thiss!17480 rules!1920 (list!1344 lt!90111)))))))

(declare-fun b!230687 () Bool)

(assert (=> b!230687 (= e!142738 e!142736)))

(declare-fun res!106480 () Bool)

(assert (=> b!230687 (= res!106480 (< (size!2791 (_2!2104 lt!90557)) (size!2791 lt!90111)))))

(assert (=> b!230687 (=> (not res!106480) (not e!142736))))

(assert (= (and d!63454 c!44110) b!230687))

(assert (= (and d!63454 (not c!44110)) b!230685))

(assert (= (and b!230687 res!106480) b!230684))

(assert (= (and d!63454 res!106481) b!230683))

(assert (= (and b!230683 res!106482) b!230686))

(declare-fun m!272603 () Bool)

(assert (=> b!230683 m!272603))

(declare-fun m!272605 () Bool)

(assert (=> b!230683 m!272605))

(assert (=> b!230683 m!272605))

(declare-fun m!272607 () Bool)

(assert (=> b!230683 m!272607))

(declare-fun m!272609 () Bool)

(assert (=> b!230686 m!272609))

(assert (=> b!230686 m!272605))

(assert (=> b!230686 m!272605))

(assert (=> b!230686 m!272607))

(declare-fun m!272611 () Bool)

(assert (=> d!63454 m!272611))

(declare-fun m!272613 () Bool)

(assert (=> d!63454 m!272613))

(declare-fun m!272615 () Bool)

(assert (=> b!230687 m!272615))

(declare-fun m!272617 () Bool)

(assert (=> b!230687 m!272617))

(declare-fun m!272619 () Bool)

(assert (=> b!230684 m!272619))

(assert (=> b!229924 d!63454))

(declare-fun b!230688 () Bool)

(declare-fun e!142739 () Option!652)

(assert (=> b!230688 (= e!142739 (Some!651 (h!8878 rules!1920)))))

(declare-fun b!230689 () Bool)

(declare-fun e!142740 () Bool)

(declare-fun lt!90558 () Option!652)

(assert (=> b!230689 (= e!142740 (= (tag!853 (get!1110 lt!90558)) (tag!853 (rule!1210 lt!90143))))))

(declare-fun b!230690 () Bool)

(declare-fun e!142741 () Bool)

(assert (=> b!230690 (= e!142741 e!142740)))

(declare-fun res!106484 () Bool)

(assert (=> b!230690 (=> (not res!106484) (not e!142740))))

(assert (=> b!230690 (= res!106484 (contains!631 rules!1920 (get!1110 lt!90558)))))

(declare-fun b!230691 () Bool)

(declare-fun lt!90560 () Unit!4012)

(declare-fun lt!90559 () Unit!4012)

(assert (=> b!230691 (= lt!90560 lt!90559)))

(assert (=> b!230691 (rulesInvariant!505 thiss!17480 (t!33487 rules!1920))))

(assert (=> b!230691 (= lt!90559 (lemmaInvariantOnRulesThenOnTail!24 thiss!17480 (h!8878 rules!1920) (t!33487 rules!1920)))))

(declare-fun e!142742 () Option!652)

(assert (=> b!230691 (= e!142742 (getRuleFromTag!94 thiss!17480 (t!33487 rules!1920) (tag!853 (rule!1210 lt!90143))))))

(declare-fun d!63456 () Bool)

(assert (=> d!63456 e!142741))

(declare-fun res!106483 () Bool)

(assert (=> d!63456 (=> res!106483 e!142741)))

(assert (=> d!63456 (= res!106483 (isEmpty!2027 lt!90558))))

(assert (=> d!63456 (= lt!90558 e!142739)))

(declare-fun c!44111 () Bool)

(assert (=> d!63456 (= c!44111 (and ((_ is Cons!3481) rules!1920) (= (tag!853 (h!8878 rules!1920)) (tag!853 (rule!1210 lt!90143)))))))

(assert (=> d!63456 (rulesInvariant!505 thiss!17480 rules!1920)))

(assert (=> d!63456 (= (getRuleFromTag!94 thiss!17480 rules!1920 (tag!853 (rule!1210 lt!90143))) lt!90558)))

(declare-fun b!230692 () Bool)

(assert (=> b!230692 (= e!142739 e!142742)))

(declare-fun c!44112 () Bool)

(assert (=> b!230692 (= c!44112 (and ((_ is Cons!3481) rules!1920) (not (= (tag!853 (h!8878 rules!1920)) (tag!853 (rule!1210 lt!90143))))))))

(declare-fun b!230693 () Bool)

(assert (=> b!230693 (= e!142742 None!651)))

(assert (= (and d!63456 c!44111) b!230688))

(assert (= (and d!63456 (not c!44111)) b!230692))

(assert (= (and b!230692 c!44112) b!230691))

(assert (= (and b!230692 (not c!44112)) b!230693))

(assert (= (and d!63456 (not res!106483)) b!230690))

(assert (= (and b!230690 res!106484) b!230689))

(declare-fun m!272621 () Bool)

(assert (=> b!230689 m!272621))

(assert (=> b!230690 m!272621))

(assert (=> b!230690 m!272621))

(declare-fun m!272623 () Bool)

(assert (=> b!230690 m!272623))

(assert (=> b!230691 m!272295))

(assert (=> b!230691 m!272297))

(declare-fun m!272625 () Bool)

(assert (=> b!230691 m!272625))

(declare-fun m!272627 () Bool)

(assert (=> d!63456 m!272627))

(assert (=> d!63456 m!271435))

(assert (=> b!229924 d!63456))

(declare-fun d!63458 () Bool)

(assert (=> d!63458 (dynLambda!1635 lambda!7336 lt!90143)))

(declare-fun lt!90563 () Unit!4012)

(declare-fun choose!2223 (List!3492 Int Token!1050) Unit!4012)

(assert (=> d!63458 (= lt!90563 (choose!2223 tokens!465 lambda!7336 lt!90143))))

(declare-fun e!142745 () Bool)

(assert (=> d!63458 e!142745))

(declare-fun res!106487 () Bool)

(assert (=> d!63458 (=> (not res!106487) (not e!142745))))

(assert (=> d!63458 (= res!106487 (forall!785 tokens!465 lambda!7336))))

(assert (=> d!63458 (= (forallContained!220 tokens!465 lambda!7336 lt!90143) lt!90563)))

(declare-fun b!230696 () Bool)

(declare-fun contains!632 (List!3492 Token!1050) Bool)

(assert (=> b!230696 (= e!142745 (contains!632 tokens!465 lt!90143))))

(assert (= (and d!63458 res!106487) b!230696))

(declare-fun b_lambda!6381 () Bool)

(assert (=> (not b_lambda!6381) (not d!63458)))

(declare-fun m!272629 () Bool)

(assert (=> d!63458 m!272629))

(declare-fun m!272631 () Bool)

(assert (=> d!63458 m!272631))

(declare-fun m!272633 () Bool)

(assert (=> d!63458 m!272633))

(declare-fun m!272635 () Bool)

(assert (=> b!230696 m!272635))

(assert (=> b!229924 d!63458))

(declare-fun d!63460 () Bool)

(declare-fun lt!90564 () Bool)

(assert (=> d!63460 (= lt!90564 (select (content!482 (usedCharacters!58 (regex!653 (rule!1210 separatorToken!170)))) lt!90142))))

(declare-fun e!142746 () Bool)

(assert (=> d!63460 (= lt!90564 e!142746)))

(declare-fun res!106488 () Bool)

(assert (=> d!63460 (=> (not res!106488) (not e!142746))))

(assert (=> d!63460 (= res!106488 ((_ is Cons!3480) (usedCharacters!58 (regex!653 (rule!1210 separatorToken!170)))))))

(assert (=> d!63460 (= (contains!628 (usedCharacters!58 (regex!653 (rule!1210 separatorToken!170))) lt!90142) lt!90564)))

(declare-fun b!230697 () Bool)

(declare-fun e!142747 () Bool)

(assert (=> b!230697 (= e!142746 e!142747)))

(declare-fun res!106489 () Bool)

(assert (=> b!230697 (=> res!106489 e!142747)))

(assert (=> b!230697 (= res!106489 (= (h!8877 (usedCharacters!58 (regex!653 (rule!1210 separatorToken!170)))) lt!90142))))

(declare-fun b!230698 () Bool)

(assert (=> b!230698 (= e!142747 (contains!628 (t!33486 (usedCharacters!58 (regex!653 (rule!1210 separatorToken!170)))) lt!90142))))

(assert (= (and d!63460 res!106488) b!230697))

(assert (= (and b!230697 (not res!106489)) b!230698))

(assert (=> d!63460 m!271407))

(declare-fun m!272637 () Bool)

(assert (=> d!63460 m!272637))

(declare-fun m!272639 () Bool)

(assert (=> d!63460 m!272639))

(declare-fun m!272641 () Bool)

(assert (=> b!230698 m!272641))

(assert (=> b!229924 d!63460))

(declare-fun d!63462 () Bool)

(assert (=> d!63462 (= (isEmpty!2021 tokens!465) ((_ is Nil!3482) tokens!465))))

(assert (=> b!229924 d!63462))

(declare-fun d!63464 () Bool)

(assert (=> d!63464 (= (head!801 lt!90134) (h!8877 lt!90134))))

(assert (=> b!229924 d!63464))

(declare-fun d!63466 () Bool)

(declare-fun lt!90568 () BalanceConc!2264)

(assert (=> d!63466 (= (list!1344 lt!90568) (printListTailRec!100 thiss!17480 (dropList!132 lt!90146 0) (list!1344 (BalanceConc!2265 Empty!1128))))))

(declare-fun e!142748 () BalanceConc!2264)

(assert (=> d!63466 (= lt!90568 e!142748)))

(declare-fun c!44113 () Bool)

(assert (=> d!63466 (= c!44113 (>= 0 (size!2783 lt!90146)))))

(declare-fun e!142749 () Bool)

(assert (=> d!63466 e!142749))

(declare-fun res!106490 () Bool)

(assert (=> d!63466 (=> (not res!106490) (not e!142749))))

(assert (=> d!63466 (= res!106490 (>= 0 0))))

(assert (=> d!63466 (= (printTailRec!233 thiss!17480 lt!90146 0 (BalanceConc!2265 Empty!1128)) lt!90568)))

(declare-fun b!230699 () Bool)

(assert (=> b!230699 (= e!142749 (<= 0 (size!2783 lt!90146)))))

(declare-fun b!230700 () Bool)

(assert (=> b!230700 (= e!142748 (BalanceConc!2265 Empty!1128))))

(declare-fun b!230701 () Bool)

(assert (=> b!230701 (= e!142748 (printTailRec!233 thiss!17480 lt!90146 (+ 0 1) (++!876 (BalanceConc!2265 Empty!1128) (charsOf!308 (apply!630 lt!90146 0)))))))

(declare-fun lt!90570 () List!3492)

(assert (=> b!230701 (= lt!90570 (list!1345 lt!90146))))

(declare-fun lt!90567 () Unit!4012)

(assert (=> b!230701 (= lt!90567 (lemmaDropApply!172 lt!90570 0))))

(assert (=> b!230701 (= (head!802 (drop!185 lt!90570 0)) (apply!634 lt!90570 0))))

(declare-fun lt!90571 () Unit!4012)

(assert (=> b!230701 (= lt!90571 lt!90567)))

(declare-fun lt!90565 () List!3492)

(assert (=> b!230701 (= lt!90565 (list!1345 lt!90146))))

(declare-fun lt!90566 () Unit!4012)

(assert (=> b!230701 (= lt!90566 (lemmaDropTail!164 lt!90565 0))))

(assert (=> b!230701 (= (tail!430 (drop!185 lt!90565 0)) (drop!185 lt!90565 (+ 0 1)))))

(declare-fun lt!90569 () Unit!4012)

(assert (=> b!230701 (= lt!90569 lt!90566)))

(assert (= (and d!63466 res!106490) b!230699))

(assert (= (and d!63466 c!44113) b!230700))

(assert (= (and d!63466 (not c!44113)) b!230701))

(declare-fun m!272643 () Bool)

(assert (=> d!63466 m!272643))

(assert (=> d!63466 m!272459))

(declare-fun m!272645 () Bool)

(assert (=> d!63466 m!272645))

(declare-fun m!272647 () Bool)

(assert (=> d!63466 m!272647))

(assert (=> d!63466 m!272643))

(assert (=> d!63466 m!272459))

(declare-fun m!272649 () Bool)

(assert (=> d!63466 m!272649))

(assert (=> b!230699 m!272649))

(declare-fun m!272651 () Bool)

(assert (=> b!230701 m!272651))

(declare-fun m!272653 () Bool)

(assert (=> b!230701 m!272653))

(declare-fun m!272655 () Bool)

(assert (=> b!230701 m!272655))

(declare-fun m!272657 () Bool)

(assert (=> b!230701 m!272657))

(declare-fun m!272659 () Bool)

(assert (=> b!230701 m!272659))

(declare-fun m!272661 () Bool)

(assert (=> b!230701 m!272661))

(declare-fun m!272663 () Bool)

(assert (=> b!230701 m!272663))

(assert (=> b!230701 m!272169))

(declare-fun m!272665 () Bool)

(assert (=> b!230701 m!272665))

(assert (=> b!230701 m!272661))

(declare-fun m!272667 () Bool)

(assert (=> b!230701 m!272667))

(assert (=> b!230701 m!272665))

(declare-fun m!272669 () Bool)

(assert (=> b!230701 m!272669))

(declare-fun m!272671 () Bool)

(assert (=> b!230701 m!272671))

(assert (=> b!230701 m!272663))

(assert (=> b!230701 m!272651))

(declare-fun m!272673 () Bool)

(assert (=> b!230701 m!272673))

(assert (=> b!230701 m!272657))

(assert (=> b!229924 d!63466))

(declare-fun b!230702 () Bool)

(declare-fun res!106493 () Bool)

(declare-fun e!142751 () Bool)

(assert (=> b!230702 (=> (not res!106493) (not e!142751))))

(declare-fun lt!90572 () tuple2!3776)

(assert (=> b!230702 (= res!106493 (= (list!1345 (_1!2104 lt!90572)) (_1!2106 (lexList!167 thiss!17480 rules!1920 (list!1344 lt!90114)))))))

(declare-fun d!63468 () Bool)

(assert (=> d!63468 e!142751))

(declare-fun res!106492 () Bool)

(assert (=> d!63468 (=> (not res!106492) (not e!142751))))

(declare-fun e!142752 () Bool)

(assert (=> d!63468 (= res!106492 e!142752)))

(declare-fun c!44114 () Bool)

(assert (=> d!63468 (= c!44114 (> (size!2783 (_1!2104 lt!90572)) 0))))

(assert (=> d!63468 (= lt!90572 (lexTailRecV2!144 thiss!17480 rules!1920 lt!90114 (BalanceConc!2265 Empty!1128) lt!90114 (BalanceConc!2267 Empty!1129)))))

(assert (=> d!63468 (= (lex!339 thiss!17480 rules!1920 lt!90114) lt!90572)))

(declare-fun b!230703 () Bool)

(declare-fun e!142750 () Bool)

(assert (=> b!230703 (= e!142750 (not (isEmpty!2019 (_1!2104 lt!90572))))))

(declare-fun b!230704 () Bool)

(assert (=> b!230704 (= e!142752 (= (_2!2104 lt!90572) lt!90114))))

(declare-fun b!230705 () Bool)

(assert (=> b!230705 (= e!142751 (= (list!1344 (_2!2104 lt!90572)) (_2!2106 (lexList!167 thiss!17480 rules!1920 (list!1344 lt!90114)))))))

(declare-fun b!230706 () Bool)

(assert (=> b!230706 (= e!142752 e!142750)))

(declare-fun res!106491 () Bool)

(assert (=> b!230706 (= res!106491 (< (size!2791 (_2!2104 lt!90572)) (size!2791 lt!90114)))))

(assert (=> b!230706 (=> (not res!106491) (not e!142750))))

(assert (= (and d!63468 c!44114) b!230706))

(assert (= (and d!63468 (not c!44114)) b!230704))

(assert (= (and b!230706 res!106491) b!230703))

(assert (= (and d!63468 res!106492) b!230702))

(assert (= (and b!230702 res!106493) b!230705))

(declare-fun m!272675 () Bool)

(assert (=> b!230702 m!272675))

(assert (=> b!230702 m!271327))

(assert (=> b!230702 m!271327))

(declare-fun m!272677 () Bool)

(assert (=> b!230702 m!272677))

(declare-fun m!272679 () Bool)

(assert (=> b!230705 m!272679))

(assert (=> b!230705 m!271327))

(assert (=> b!230705 m!271327))

(assert (=> b!230705 m!272677))

(declare-fun m!272681 () Bool)

(assert (=> d!63468 m!272681))

(declare-fun m!272683 () Bool)

(assert (=> d!63468 m!272683))

(declare-fun m!272685 () Bool)

(assert (=> b!230706 m!272685))

(declare-fun m!272687 () Bool)

(assert (=> b!230706 m!272687))

(declare-fun m!272689 () Bool)

(assert (=> b!230703 m!272689))

(assert (=> b!229924 d!63468))

(declare-fun d!63470 () Bool)

(assert (=> d!63470 (= (head!801 lt!90117) (h!8877 lt!90117))))

(assert (=> b!229924 d!63470))

(declare-fun d!63472 () Bool)

(declare-fun e!142753 () Bool)

(assert (=> d!63472 e!142753))

(declare-fun res!106494 () Bool)

(assert (=> d!63472 (=> (not res!106494) (not e!142753))))

(declare-fun lt!90573 () BalanceConc!2266)

(assert (=> d!63472 (= res!106494 (= (list!1345 lt!90573) (Cons!3482 lt!90143 Nil!3482)))))

(assert (=> d!63472 (= lt!90573 (singleton!81 lt!90143))))

(assert (=> d!63472 (= (singletonSeq!205 lt!90143) lt!90573)))

(declare-fun b!230707 () Bool)

(assert (=> b!230707 (= e!142753 (isBalanced!298 (c!43935 lt!90573)))))

(assert (= (and d!63472 res!106494) b!230707))

(declare-fun m!272691 () Bool)

(assert (=> d!63472 m!272691))

(declare-fun m!272693 () Bool)

(assert (=> d!63472 m!272693))

(declare-fun m!272695 () Bool)

(assert (=> b!230707 m!272695))

(assert (=> b!229924 d!63472))

(declare-fun d!63474 () Bool)

(assert (=> d!63474 (isPrefix!349 lt!90127 (++!874 lt!90127 lt!90124))))

(declare-fun lt!90576 () Unit!4012)

(declare-fun choose!2224 (List!3490 List!3490) Unit!4012)

(assert (=> d!63474 (= lt!90576 (choose!2224 lt!90127 lt!90124))))

(assert (=> d!63474 (= (lemmaConcatTwoListThenFirstIsPrefix!244 lt!90127 lt!90124) lt!90576)))

(declare-fun bs!24433 () Bool)

(assert (= bs!24433 d!63474))

(assert (=> bs!24433 m!271323))

(assert (=> bs!24433 m!271323))

(declare-fun m!272697 () Bool)

(assert (=> bs!24433 m!272697))

(declare-fun m!272699 () Bool)

(assert (=> bs!24433 m!272699))

(assert (=> b!229924 d!63474))

(declare-fun d!63476 () Bool)

(assert (=> d!63476 (= (isDefined!503 lt!90126) (not (isEmpty!2027 lt!90126)))))

(declare-fun bs!24434 () Bool)

(assert (= bs!24434 d!63476))

(declare-fun m!272701 () Bool)

(assert (=> bs!24434 m!272701))

(assert (=> b!229924 d!63476))

(declare-fun d!63478 () Bool)

(assert (=> d!63478 (= (list!1344 (charsOf!308 lt!90143)) (list!1347 (c!43933 (charsOf!308 lt!90143))))))

(declare-fun bs!24435 () Bool)

(assert (= bs!24435 d!63478))

(declare-fun m!272703 () Bool)

(assert (=> bs!24435 m!272703))

(assert (=> b!229924 d!63478))

(declare-fun d!63480 () Bool)

(declare-fun e!142872 () Bool)

(assert (=> d!63480 e!142872))

(declare-fun res!106560 () Bool)

(assert (=> d!63480 (=> res!106560 e!142872)))

(assert (=> d!63480 (= res!106560 (isEmpty!2021 tokens!465))))

(declare-fun lt!90658 () Unit!4012)

(declare-fun choose!2225 (LexerInterface!539 List!3491 List!3492 Token!1050) Unit!4012)

(assert (=> d!63480 (= lt!90658 (choose!2225 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!63480 (not (isEmpty!2018 rules!1920))))

(assert (=> d!63480 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!114 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!90658)))

(declare-fun b!230911 () Bool)

(declare-fun e!142873 () Bool)

(assert (=> b!230911 (= e!142872 e!142873)))

(declare-fun res!106559 () Bool)

(assert (=> b!230911 (=> (not res!106559) (not e!142873))))

(assert (=> b!230911 (= res!106559 (isDefined!502 (maxPrefix!269 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!230912 () Bool)

(assert (=> b!230912 (= e!142873 (= (_1!2105 (get!1109 (maxPrefix!269 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!802 tokens!465)))))

(assert (= (and d!63480 (not res!106560)) b!230911))

(assert (= (and b!230911 res!106559) b!230912))

(assert (=> d!63480 m!271363))

(declare-fun m!273071 () Bool)

(assert (=> d!63480 m!273071))

(assert (=> d!63480 m!271449))

(assert (=> b!230911 m!271277))

(assert (=> b!230911 m!271277))

(declare-fun m!273073 () Bool)

(assert (=> b!230911 m!273073))

(assert (=> b!230911 m!273073))

(declare-fun m!273075 () Bool)

(assert (=> b!230911 m!273075))

(assert (=> b!230912 m!271277))

(assert (=> b!230912 m!271277))

(assert (=> b!230912 m!273073))

(assert (=> b!230912 m!273073))

(declare-fun m!273077 () Bool)

(assert (=> b!230912 m!273077))

(assert (=> b!230912 m!271331))

(assert (=> b!229924 d!63480))

(declare-fun b!230938 () Bool)

(declare-fun e!142895 () Bool)

(assert (=> b!230938 (= e!142895 (isPrefix!349 (tail!428 lt!90127) (tail!428 lt!90118)))))

(declare-fun b!230939 () Bool)

(declare-fun e!142896 () Bool)

(assert (=> b!230939 (= e!142896 (>= (size!2788 lt!90118) (size!2788 lt!90127)))))

(declare-fun d!63560 () Bool)

(assert (=> d!63560 e!142896))

(declare-fun res!106572 () Bool)

(assert (=> d!63560 (=> res!106572 e!142896)))

(declare-fun lt!90661 () Bool)

(assert (=> d!63560 (= res!106572 (not lt!90661))))

(declare-fun e!142897 () Bool)

(assert (=> d!63560 (= lt!90661 e!142897)))

(declare-fun res!106570 () Bool)

(assert (=> d!63560 (=> res!106570 e!142897)))

(assert (=> d!63560 (= res!106570 ((_ is Nil!3480) lt!90127))))

(assert (=> d!63560 (= (isPrefix!349 lt!90127 lt!90118) lt!90661)))

(declare-fun b!230936 () Bool)

(assert (=> b!230936 (= e!142897 e!142895)))

(declare-fun res!106571 () Bool)

(assert (=> b!230936 (=> (not res!106571) (not e!142895))))

(assert (=> b!230936 (= res!106571 (not ((_ is Nil!3480) lt!90118)))))

(declare-fun b!230937 () Bool)

(declare-fun res!106569 () Bool)

(assert (=> b!230937 (=> (not res!106569) (not e!142895))))

(assert (=> b!230937 (= res!106569 (= (head!801 lt!90127) (head!801 lt!90118)))))

(assert (= (and d!63560 (not res!106570)) b!230936))

(assert (= (and b!230936 res!106571) b!230937))

(assert (= (and b!230937 res!106569) b!230938))

(assert (= (and d!63560 (not res!106572)) b!230939))

(assert (=> b!230938 m!271669))

(declare-fun m!273083 () Bool)

(assert (=> b!230938 m!273083))

(assert (=> b!230938 m!271669))

(assert (=> b!230938 m!273083))

(declare-fun m!273085 () Bool)

(assert (=> b!230938 m!273085))

(declare-fun m!273087 () Bool)

(assert (=> b!230939 m!273087))

(assert (=> b!230939 m!272079))

(assert (=> b!230937 m!271665))

(declare-fun m!273089 () Bool)

(assert (=> b!230937 m!273089))

(assert (=> b!229924 d!63560))

(declare-fun d!63574 () Bool)

(declare-fun e!142898 () Bool)

(assert (=> d!63574 e!142898))

(declare-fun res!106579 () Bool)

(assert (=> d!63574 (=> res!106579 e!142898)))

(declare-fun lt!90662 () Option!651)

(assert (=> d!63574 (= res!106579 (isEmpty!2029 lt!90662))))

(declare-fun e!142899 () Option!651)

(assert (=> d!63574 (= lt!90662 e!142899)))

(declare-fun c!44160 () Bool)

(assert (=> d!63574 (= c!44160 (and ((_ is Cons!3481) rules!1920) ((_ is Nil!3481) (t!33487 rules!1920))))))

(declare-fun lt!90664 () Unit!4012)

(declare-fun lt!90665 () Unit!4012)

(assert (=> d!63574 (= lt!90664 lt!90665)))

(assert (=> d!63574 (isPrefix!349 lt!90124 lt!90124)))

(assert (=> d!63574 (= lt!90665 (lemmaIsPrefixRefl!181 lt!90124 lt!90124))))

(assert (=> d!63574 (rulesValidInductive!170 thiss!17480 rules!1920)))

(assert (=> d!63574 (= (maxPrefix!269 thiss!17480 rules!1920 lt!90124) lt!90662)))

(declare-fun b!230940 () Bool)

(declare-fun lt!90663 () Option!651)

(declare-fun lt!90666 () Option!651)

(assert (=> b!230940 (= e!142899 (ite (and ((_ is None!650) lt!90663) ((_ is None!650) lt!90666)) None!650 (ite ((_ is None!650) lt!90666) lt!90663 (ite ((_ is None!650) lt!90663) lt!90666 (ite (>= (size!2782 (_1!2105 (v!14341 lt!90663))) (size!2782 (_1!2105 (v!14341 lt!90666)))) lt!90663 lt!90666)))))))

(declare-fun call!11839 () Option!651)

(assert (=> b!230940 (= lt!90663 call!11839)))

(assert (=> b!230940 (= lt!90666 (maxPrefix!269 thiss!17480 (t!33487 rules!1920) lt!90124))))

(declare-fun bm!11834 () Bool)

(assert (=> bm!11834 (= call!11839 (maxPrefixOneRule!115 thiss!17480 (h!8878 rules!1920) lt!90124))))

(declare-fun b!230941 () Bool)

(declare-fun res!106576 () Bool)

(declare-fun e!142900 () Bool)

(assert (=> b!230941 (=> (not res!106576) (not e!142900))))

(assert (=> b!230941 (= res!106576 (= (++!874 (list!1344 (charsOf!308 (_1!2105 (get!1109 lt!90662)))) (_2!2105 (get!1109 lt!90662))) lt!90124))))

(declare-fun b!230942 () Bool)

(declare-fun res!106575 () Bool)

(assert (=> b!230942 (=> (not res!106575) (not e!142900))))

(assert (=> b!230942 (= res!106575 (= (value!22926 (_1!2105 (get!1109 lt!90662))) (apply!636 (transformation!653 (rule!1210 (_1!2105 (get!1109 lt!90662)))) (seqFromList!683 (originalCharacters!696 (_1!2105 (get!1109 lt!90662)))))))))

(declare-fun b!230943 () Bool)

(declare-fun res!106574 () Bool)

(assert (=> b!230943 (=> (not res!106574) (not e!142900))))

(assert (=> b!230943 (= res!106574 (< (size!2788 (_2!2105 (get!1109 lt!90662))) (size!2788 lt!90124)))))

(declare-fun b!230944 () Bool)

(declare-fun res!106577 () Bool)

(assert (=> b!230944 (=> (not res!106577) (not e!142900))))

(assert (=> b!230944 (= res!106577 (= (list!1344 (charsOf!308 (_1!2105 (get!1109 lt!90662)))) (originalCharacters!696 (_1!2105 (get!1109 lt!90662)))))))

(declare-fun b!230945 () Bool)

(assert (=> b!230945 (= e!142899 call!11839)))

(declare-fun b!230946 () Bool)

(declare-fun res!106578 () Bool)

(assert (=> b!230946 (=> (not res!106578) (not e!142900))))

(assert (=> b!230946 (= res!106578 (matchR!215 (regex!653 (rule!1210 (_1!2105 (get!1109 lt!90662)))) (list!1344 (charsOf!308 (_1!2105 (get!1109 lt!90662))))))))

(declare-fun b!230947 () Bool)

(assert (=> b!230947 (= e!142900 (contains!631 rules!1920 (rule!1210 (_1!2105 (get!1109 lt!90662)))))))

(declare-fun b!230948 () Bool)

(assert (=> b!230948 (= e!142898 e!142900)))

(declare-fun res!106573 () Bool)

(assert (=> b!230948 (=> (not res!106573) (not e!142900))))

(assert (=> b!230948 (= res!106573 (isDefined!502 lt!90662))))

(assert (= (and d!63574 c!44160) b!230945))

(assert (= (and d!63574 (not c!44160)) b!230940))

(assert (= (or b!230945 b!230940) bm!11834))

(assert (= (and d!63574 (not res!106579)) b!230948))

(assert (= (and b!230948 res!106573) b!230944))

(assert (= (and b!230944 res!106577) b!230943))

(assert (= (and b!230943 res!106574) b!230941))

(assert (= (and b!230941 res!106576) b!230942))

(assert (= (and b!230942 res!106575) b!230946))

(assert (= (and b!230946 res!106578) b!230947))

(declare-fun m!273091 () Bool)

(assert (=> b!230942 m!273091))

(declare-fun m!273093 () Bool)

(assert (=> b!230942 m!273093))

(assert (=> b!230942 m!273093))

(declare-fun m!273095 () Bool)

(assert (=> b!230942 m!273095))

(declare-fun m!273097 () Bool)

(assert (=> bm!11834 m!273097))

(declare-fun m!273099 () Bool)

(assert (=> b!230940 m!273099))

(assert (=> b!230944 m!273091))

(declare-fun m!273101 () Bool)

(assert (=> b!230944 m!273101))

(assert (=> b!230944 m!273101))

(declare-fun m!273103 () Bool)

(assert (=> b!230944 m!273103))

(assert (=> b!230941 m!273091))

(assert (=> b!230941 m!273101))

(assert (=> b!230941 m!273101))

(assert (=> b!230941 m!273103))

(assert (=> b!230941 m!273103))

(declare-fun m!273105 () Bool)

(assert (=> b!230941 m!273105))

(declare-fun m!273107 () Bool)

(assert (=> d!63574 m!273107))

(declare-fun m!273109 () Bool)

(assert (=> d!63574 m!273109))

(declare-fun m!273111 () Bool)

(assert (=> d!63574 m!273111))

(assert (=> d!63574 m!272343))

(assert (=> b!230947 m!273091))

(declare-fun m!273113 () Bool)

(assert (=> b!230947 m!273113))

(assert (=> b!230946 m!273091))

(assert (=> b!230946 m!273101))

(assert (=> b!230946 m!273101))

(assert (=> b!230946 m!273103))

(assert (=> b!230946 m!273103))

(declare-fun m!273115 () Bool)

(assert (=> b!230946 m!273115))

(assert (=> b!230943 m!273091))

(declare-fun m!273117 () Bool)

(assert (=> b!230943 m!273117))

(assert (=> b!230943 m!272097))

(declare-fun m!273119 () Bool)

(assert (=> b!230948 m!273119))

(assert (=> b!229924 d!63574))

(declare-fun d!63576 () Bool)

(assert (=> d!63576 (= (head!802 (t!33488 tokens!465)) (h!8879 (t!33488 tokens!465)))))

(assert (=> b!229924 d!63576))

(declare-fun d!63578 () Bool)

(declare-fun lt!90668 () Bool)

(declare-fun e!142902 () Bool)

(assert (=> d!63578 (= lt!90668 e!142902)))

(declare-fun res!106580 () Bool)

(assert (=> d!63578 (=> (not res!106580) (not e!142902))))

(assert (=> d!63578 (= res!106580 (= (list!1345 (_1!2104 (lex!339 thiss!17480 rules!1920 (print!270 thiss!17480 (singletonSeq!205 separatorToken!170))))) (list!1345 (singletonSeq!205 separatorToken!170))))))

(declare-fun e!142901 () Bool)

(assert (=> d!63578 (= lt!90668 e!142901)))

(declare-fun res!106581 () Bool)

(assert (=> d!63578 (=> (not res!106581) (not e!142901))))

(declare-fun lt!90667 () tuple2!3776)

(assert (=> d!63578 (= res!106581 (= (size!2783 (_1!2104 lt!90667)) 1))))

(assert (=> d!63578 (= lt!90667 (lex!339 thiss!17480 rules!1920 (print!270 thiss!17480 (singletonSeq!205 separatorToken!170))))))

(assert (=> d!63578 (not (isEmpty!2018 rules!1920))))

(assert (=> d!63578 (= (rulesProduceIndividualToken!288 thiss!17480 rules!1920 separatorToken!170) lt!90668)))

(declare-fun b!230949 () Bool)

(declare-fun res!106582 () Bool)

(assert (=> b!230949 (=> (not res!106582) (not e!142901))))

(assert (=> b!230949 (= res!106582 (= (apply!630 (_1!2104 lt!90667) 0) separatorToken!170))))

(declare-fun b!230950 () Bool)

(assert (=> b!230950 (= e!142901 (isEmpty!2020 (_2!2104 lt!90667)))))

(declare-fun b!230951 () Bool)

(assert (=> b!230951 (= e!142902 (isEmpty!2020 (_2!2104 (lex!339 thiss!17480 rules!1920 (print!270 thiss!17480 (singletonSeq!205 separatorToken!170))))))))

(assert (= (and d!63578 res!106581) b!230949))

(assert (= (and b!230949 res!106582) b!230950))

(assert (= (and d!63578 res!106580) b!230951))

(declare-fun m!273121 () Bool)

(assert (=> d!63578 m!273121))

(declare-fun m!273123 () Bool)

(assert (=> d!63578 m!273123))

(assert (=> d!63578 m!271391))

(assert (=> d!63578 m!273121))

(assert (=> d!63578 m!271449))

(declare-fun m!273125 () Bool)

(assert (=> d!63578 m!273125))

(assert (=> d!63578 m!271391))

(assert (=> d!63578 m!271391))

(declare-fun m!273127 () Bool)

(assert (=> d!63578 m!273127))

(declare-fun m!273129 () Bool)

(assert (=> d!63578 m!273129))

(declare-fun m!273131 () Bool)

(assert (=> b!230949 m!273131))

(declare-fun m!273133 () Bool)

(assert (=> b!230950 m!273133))

(assert (=> b!230951 m!271391))

(assert (=> b!230951 m!271391))

(assert (=> b!230951 m!273121))

(assert (=> b!230951 m!273121))

(assert (=> b!230951 m!273123))

(declare-fun m!273135 () Bool)

(assert (=> b!230951 m!273135))

(assert (=> b!229903 d!63578))

(declare-fun d!63580 () Bool)

(declare-fun res!106587 () Bool)

(declare-fun e!142905 () Bool)

(assert (=> d!63580 (=> (not res!106587) (not e!142905))))

(assert (=> d!63580 (= res!106587 (not (isEmpty!2022 (originalCharacters!696 separatorToken!170))))))

(assert (=> d!63580 (= (inv!4331 separatorToken!170) e!142905)))

(declare-fun b!230956 () Bool)

(declare-fun res!106588 () Bool)

(assert (=> b!230956 (=> (not res!106588) (not e!142905))))

(assert (=> b!230956 (= res!106588 (= (originalCharacters!696 separatorToken!170) (list!1344 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (value!22926 separatorToken!170)))))))

(declare-fun b!230957 () Bool)

(assert (=> b!230957 (= e!142905 (= (size!2782 separatorToken!170) (size!2788 (originalCharacters!696 separatorToken!170))))))

(assert (= (and d!63580 res!106587) b!230956))

(assert (= (and b!230956 res!106588) b!230957))

(declare-fun b_lambda!6411 () Bool)

(assert (=> (not b_lambda!6411) (not b!230956)))

(assert (=> b!230956 t!33515))

(declare-fun b_and!17113 () Bool)

(assert (= b_and!17081 (and (=> t!33515 result!14610) b_and!17113)))

(assert (=> b!230956 t!33517))

(declare-fun b_and!17115 () Bool)

(assert (= b_and!17083 (and (=> t!33517 result!14614) b_and!17115)))

(assert (=> b!230956 t!33519))

(declare-fun b_and!17117 () Bool)

(assert (= b_and!17085 (and (=> t!33519 result!14616) b_and!17117)))

(declare-fun m!273137 () Bool)

(assert (=> d!63580 m!273137))

(assert (=> b!230956 m!272057))

(assert (=> b!230956 m!272057))

(declare-fun m!273139 () Bool)

(assert (=> b!230956 m!273139))

(declare-fun m!273141 () Bool)

(assert (=> b!230957 m!273141))

(assert (=> start!24506 d!63580))

(declare-fun d!63582 () Bool)

(declare-fun lt!90672 () BalanceConc!2264)

(assert (=> d!63582 (= (list!1344 lt!90672) (printListTailRec!100 thiss!17480 (dropList!132 lt!90131 0) (list!1344 (BalanceConc!2265 Empty!1128))))))

(declare-fun e!142906 () BalanceConc!2264)

(assert (=> d!63582 (= lt!90672 e!142906)))

(declare-fun c!44161 () Bool)

(assert (=> d!63582 (= c!44161 (>= 0 (size!2783 lt!90131)))))

(declare-fun e!142907 () Bool)

(assert (=> d!63582 e!142907))

(declare-fun res!106589 () Bool)

(assert (=> d!63582 (=> (not res!106589) (not e!142907))))

(assert (=> d!63582 (= res!106589 (>= 0 0))))

(assert (=> d!63582 (= (printTailRec!233 thiss!17480 lt!90131 0 (BalanceConc!2265 Empty!1128)) lt!90672)))

(declare-fun b!230958 () Bool)

(assert (=> b!230958 (= e!142907 (<= 0 (size!2783 lt!90131)))))

(declare-fun b!230959 () Bool)

(assert (=> b!230959 (= e!142906 (BalanceConc!2265 Empty!1128))))

(declare-fun b!230960 () Bool)

(assert (=> b!230960 (= e!142906 (printTailRec!233 thiss!17480 lt!90131 (+ 0 1) (++!876 (BalanceConc!2265 Empty!1128) (charsOf!308 (apply!630 lt!90131 0)))))))

(declare-fun lt!90674 () List!3492)

(assert (=> b!230960 (= lt!90674 (list!1345 lt!90131))))

(declare-fun lt!90671 () Unit!4012)

(assert (=> b!230960 (= lt!90671 (lemmaDropApply!172 lt!90674 0))))

(assert (=> b!230960 (= (head!802 (drop!185 lt!90674 0)) (apply!634 lt!90674 0))))

(declare-fun lt!90675 () Unit!4012)

(assert (=> b!230960 (= lt!90675 lt!90671)))

(declare-fun lt!90669 () List!3492)

(assert (=> b!230960 (= lt!90669 (list!1345 lt!90131))))

(declare-fun lt!90670 () Unit!4012)

(assert (=> b!230960 (= lt!90670 (lemmaDropTail!164 lt!90669 0))))

(assert (=> b!230960 (= (tail!430 (drop!185 lt!90669 0)) (drop!185 lt!90669 (+ 0 1)))))

(declare-fun lt!90673 () Unit!4012)

(assert (=> b!230960 (= lt!90673 lt!90670)))

(assert (= (and d!63582 res!106589) b!230958))

(assert (= (and d!63582 c!44161) b!230959))

(assert (= (and d!63582 (not c!44161)) b!230960))

(declare-fun m!273143 () Bool)

(assert (=> d!63582 m!273143))

(assert (=> d!63582 m!272459))

(declare-fun m!273145 () Bool)

(assert (=> d!63582 m!273145))

(declare-fun m!273147 () Bool)

(assert (=> d!63582 m!273147))

(assert (=> d!63582 m!273143))

(assert (=> d!63582 m!272459))

(declare-fun m!273149 () Bool)

(assert (=> d!63582 m!273149))

(assert (=> b!230958 m!273149))

(declare-fun m!273151 () Bool)

(assert (=> b!230960 m!273151))

(declare-fun m!273153 () Bool)

(assert (=> b!230960 m!273153))

(declare-fun m!273155 () Bool)

(assert (=> b!230960 m!273155))

(declare-fun m!273157 () Bool)

(assert (=> b!230960 m!273157))

(declare-fun m!273159 () Bool)

(assert (=> b!230960 m!273159))

(declare-fun m!273161 () Bool)

(assert (=> b!230960 m!273161))

(declare-fun m!273163 () Bool)

(assert (=> b!230960 m!273163))

(declare-fun m!273165 () Bool)

(assert (=> b!230960 m!273165))

(declare-fun m!273167 () Bool)

(assert (=> b!230960 m!273167))

(assert (=> b!230960 m!273161))

(declare-fun m!273169 () Bool)

(assert (=> b!230960 m!273169))

(assert (=> b!230960 m!273167))

(declare-fun m!273171 () Bool)

(assert (=> b!230960 m!273171))

(declare-fun m!273173 () Bool)

(assert (=> b!230960 m!273173))

(assert (=> b!230960 m!273163))

(assert (=> b!230960 m!273151))

(declare-fun m!273175 () Bool)

(assert (=> b!230960 m!273175))

(assert (=> b!230960 m!273157))

(assert (=> b!229922 d!63582))

(declare-fun d!63584 () Bool)

(declare-fun lt!90676 () BalanceConc!2264)

(assert (=> d!63584 (= (list!1344 lt!90676) (printList!223 thiss!17480 (list!1345 lt!90131)))))

(assert (=> d!63584 (= lt!90676 (printTailRec!233 thiss!17480 lt!90131 0 (BalanceConc!2265 Empty!1128)))))

(assert (=> d!63584 (= (print!270 thiss!17480 lt!90131) lt!90676)))

(declare-fun bs!24483 () Bool)

(assert (= bs!24483 d!63584))

(declare-fun m!273177 () Bool)

(assert (=> bs!24483 m!273177))

(assert (=> bs!24483 m!273165))

(assert (=> bs!24483 m!273165))

(declare-fun m!273179 () Bool)

(assert (=> bs!24483 m!273179))

(assert (=> bs!24483 m!271465))

(assert (=> b!229922 d!63584))

(declare-fun d!63586 () Bool)

(assert (=> d!63586 (= (list!1344 lt!90100) (list!1347 (c!43933 lt!90100)))))

(declare-fun bs!24484 () Bool)

(assert (= bs!24484 d!63586))

(declare-fun m!273181 () Bool)

(assert (=> bs!24484 m!273181))

(assert (=> b!229922 d!63586))

(declare-fun d!63588 () Bool)

(declare-fun e!142908 () Bool)

(assert (=> d!63588 e!142908))

(declare-fun res!106590 () Bool)

(assert (=> d!63588 (=> (not res!106590) (not e!142908))))

(declare-fun lt!90677 () BalanceConc!2266)

(assert (=> d!63588 (= res!106590 (= (list!1345 lt!90677) (Cons!3482 (h!8879 tokens!465) Nil!3482)))))

(assert (=> d!63588 (= lt!90677 (singleton!81 (h!8879 tokens!465)))))

(assert (=> d!63588 (= (singletonSeq!205 (h!8879 tokens!465)) lt!90677)))

(declare-fun b!230961 () Bool)

(assert (=> b!230961 (= e!142908 (isBalanced!298 (c!43935 lt!90677)))))

(assert (= (and d!63588 res!106590) b!230961))

(declare-fun m!273183 () Bool)

(assert (=> d!63588 m!273183))

(declare-fun m!273185 () Bool)

(assert (=> d!63588 m!273185))

(declare-fun m!273187 () Bool)

(assert (=> b!230961 m!273187))

(assert (=> b!229922 d!63588))

(declare-fun d!63590 () Bool)

(declare-fun c!44164 () Bool)

(assert (=> d!63590 (= c!44164 ((_ is Cons!3482) (Cons!3482 (h!8879 tokens!465) Nil!3482)))))

(declare-fun e!142911 () List!3490)

(assert (=> d!63590 (= (printList!223 thiss!17480 (Cons!3482 (h!8879 tokens!465) Nil!3482)) e!142911)))

(declare-fun b!230966 () Bool)

(assert (=> b!230966 (= e!142911 (++!874 (list!1344 (charsOf!308 (h!8879 (Cons!3482 (h!8879 tokens!465) Nil!3482)))) (printList!223 thiss!17480 (t!33488 (Cons!3482 (h!8879 tokens!465) Nil!3482)))))))

(declare-fun b!230967 () Bool)

(assert (=> b!230967 (= e!142911 Nil!3480)))

(assert (= (and d!63590 c!44164) b!230966))

(assert (= (and d!63590 (not c!44164)) b!230967))

(declare-fun m!273189 () Bool)

(assert (=> b!230966 m!273189))

(assert (=> b!230966 m!273189))

(declare-fun m!273191 () Bool)

(assert (=> b!230966 m!273191))

(declare-fun m!273193 () Bool)

(assert (=> b!230966 m!273193))

(assert (=> b!230966 m!273191))

(assert (=> b!230966 m!273193))

(declare-fun m!273195 () Bool)

(assert (=> b!230966 m!273195))

(assert (=> b!229922 d!63590))

(declare-fun d!63592 () Bool)

(declare-fun lt!90680 () Bool)

(assert (=> d!63592 (= lt!90680 (isEmpty!2021 (list!1345 (_1!2104 (lex!339 thiss!17480 rules!1920 (seqFromList!683 lt!90127))))))))

(declare-fun isEmpty!2030 (Conc!1129) Bool)

(assert (=> d!63592 (= lt!90680 (isEmpty!2030 (c!43935 (_1!2104 (lex!339 thiss!17480 rules!1920 (seqFromList!683 lt!90127))))))))

(assert (=> d!63592 (= (isEmpty!2019 (_1!2104 (lex!339 thiss!17480 rules!1920 (seqFromList!683 lt!90127)))) lt!90680)))

(declare-fun bs!24485 () Bool)

(assert (= bs!24485 d!63592))

(declare-fun m!273197 () Bool)

(assert (=> bs!24485 m!273197))

(assert (=> bs!24485 m!273197))

(declare-fun m!273199 () Bool)

(assert (=> bs!24485 m!273199))

(declare-fun m!273201 () Bool)

(assert (=> bs!24485 m!273201))

(assert (=> b!229901 d!63592))

(declare-fun b!230968 () Bool)

(declare-fun res!106593 () Bool)

(declare-fun e!142913 () Bool)

(assert (=> b!230968 (=> (not res!106593) (not e!142913))))

(declare-fun lt!90681 () tuple2!3776)

(assert (=> b!230968 (= res!106593 (= (list!1345 (_1!2104 lt!90681)) (_1!2106 (lexList!167 thiss!17480 rules!1920 (list!1344 (seqFromList!683 lt!90127))))))))

(declare-fun d!63594 () Bool)

(assert (=> d!63594 e!142913))

(declare-fun res!106592 () Bool)

(assert (=> d!63594 (=> (not res!106592) (not e!142913))))

(declare-fun e!142914 () Bool)

(assert (=> d!63594 (= res!106592 e!142914)))

(declare-fun c!44165 () Bool)

(assert (=> d!63594 (= c!44165 (> (size!2783 (_1!2104 lt!90681)) 0))))

(assert (=> d!63594 (= lt!90681 (lexTailRecV2!144 thiss!17480 rules!1920 (seqFromList!683 lt!90127) (BalanceConc!2265 Empty!1128) (seqFromList!683 lt!90127) (BalanceConc!2267 Empty!1129)))))

(assert (=> d!63594 (= (lex!339 thiss!17480 rules!1920 (seqFromList!683 lt!90127)) lt!90681)))

(declare-fun b!230969 () Bool)

(declare-fun e!142912 () Bool)

(assert (=> b!230969 (= e!142912 (not (isEmpty!2019 (_1!2104 lt!90681))))))

(declare-fun b!230970 () Bool)

(assert (=> b!230970 (= e!142914 (= (_2!2104 lt!90681) (seqFromList!683 lt!90127)))))

(declare-fun b!230971 () Bool)

(assert (=> b!230971 (= e!142913 (= (list!1344 (_2!2104 lt!90681)) (_2!2106 (lexList!167 thiss!17480 rules!1920 (list!1344 (seqFromList!683 lt!90127))))))))

(declare-fun b!230972 () Bool)

(assert (=> b!230972 (= e!142914 e!142912)))

(declare-fun res!106591 () Bool)

(assert (=> b!230972 (= res!106591 (< (size!2791 (_2!2104 lt!90681)) (size!2791 (seqFromList!683 lt!90127))))))

(assert (=> b!230972 (=> (not res!106591) (not e!142912))))

(assert (= (and d!63594 c!44165) b!230972))

(assert (= (and d!63594 (not c!44165)) b!230970))

(assert (= (and b!230972 res!106591) b!230969))

(assert (= (and d!63594 res!106592) b!230968))

(assert (= (and b!230968 res!106593) b!230971))

(declare-fun m!273203 () Bool)

(assert (=> b!230968 m!273203))

(assert (=> b!230968 m!271333))

(declare-fun m!273205 () Bool)

(assert (=> b!230968 m!273205))

(assert (=> b!230968 m!273205))

(declare-fun m!273207 () Bool)

(assert (=> b!230968 m!273207))

(declare-fun m!273209 () Bool)

(assert (=> b!230971 m!273209))

(assert (=> b!230971 m!271333))

(assert (=> b!230971 m!273205))

(assert (=> b!230971 m!273205))

(assert (=> b!230971 m!273207))

(declare-fun m!273211 () Bool)

(assert (=> d!63594 m!273211))

(assert (=> d!63594 m!271333))

(assert (=> d!63594 m!271333))

(declare-fun m!273213 () Bool)

(assert (=> d!63594 m!273213))

(declare-fun m!273215 () Bool)

(assert (=> b!230972 m!273215))

(assert (=> b!230972 m!271333))

(declare-fun m!273217 () Bool)

(assert (=> b!230972 m!273217))

(declare-fun m!273219 () Bool)

(assert (=> b!230969 m!273219))

(assert (=> b!229901 d!63594))

(declare-fun d!63596 () Bool)

(assert (=> d!63596 (= (seqFromList!683 lt!90127) (fromListB!252 lt!90127))))

(declare-fun bs!24486 () Bool)

(assert (= bs!24486 d!63596))

(declare-fun m!273221 () Bool)

(assert (=> bs!24486 m!273221))

(assert (=> b!229901 d!63596))

(declare-fun d!63598 () Bool)

(assert (=> d!63598 (= (isEmpty!2018 rules!1920) ((_ is Nil!3481) rules!1920))))

(assert (=> b!229900 d!63598))

(declare-fun d!63600 () Bool)

(assert (=> d!63600 (= (get!1109 lt!90148) (v!14341 lt!90148))))

(assert (=> b!229943 d!63600))

(declare-fun d!63602 () Bool)

(assert (=> d!63602 (= (isDefined!502 lt!90148) (not (isEmpty!2029 lt!90148)))))

(declare-fun bs!24487 () Bool)

(assert (= bs!24487 d!63602))

(declare-fun m!273223 () Bool)

(assert (=> bs!24487 m!273223))

(assert (=> b!229943 d!63602))

(declare-fun d!63604 () Bool)

(declare-fun e!142915 () Bool)

(assert (=> d!63604 e!142915))

(declare-fun res!106600 () Bool)

(assert (=> d!63604 (=> res!106600 e!142915)))

(declare-fun lt!90682 () Option!651)

(assert (=> d!63604 (= res!106600 (isEmpty!2029 lt!90682))))

(declare-fun e!142916 () Option!651)

(assert (=> d!63604 (= lt!90682 e!142916)))

(declare-fun c!44166 () Bool)

(assert (=> d!63604 (= c!44166 (and ((_ is Cons!3481) rules!1920) ((_ is Nil!3481) (t!33487 rules!1920))))))

(declare-fun lt!90684 () Unit!4012)

(declare-fun lt!90685 () Unit!4012)

(assert (=> d!63604 (= lt!90684 lt!90685)))

(assert (=> d!63604 (isPrefix!349 lt!90127 lt!90127)))

(assert (=> d!63604 (= lt!90685 (lemmaIsPrefixRefl!181 lt!90127 lt!90127))))

(assert (=> d!63604 (rulesValidInductive!170 thiss!17480 rules!1920)))

(assert (=> d!63604 (= (maxPrefix!269 thiss!17480 rules!1920 lt!90127) lt!90682)))

(declare-fun b!230973 () Bool)

(declare-fun lt!90683 () Option!651)

(declare-fun lt!90686 () Option!651)

(assert (=> b!230973 (= e!142916 (ite (and ((_ is None!650) lt!90683) ((_ is None!650) lt!90686)) None!650 (ite ((_ is None!650) lt!90686) lt!90683 (ite ((_ is None!650) lt!90683) lt!90686 (ite (>= (size!2782 (_1!2105 (v!14341 lt!90683))) (size!2782 (_1!2105 (v!14341 lt!90686)))) lt!90683 lt!90686)))))))

(declare-fun call!11840 () Option!651)

(assert (=> b!230973 (= lt!90683 call!11840)))

(assert (=> b!230973 (= lt!90686 (maxPrefix!269 thiss!17480 (t!33487 rules!1920) lt!90127))))

(declare-fun bm!11835 () Bool)

(assert (=> bm!11835 (= call!11840 (maxPrefixOneRule!115 thiss!17480 (h!8878 rules!1920) lt!90127))))

(declare-fun b!230974 () Bool)

(declare-fun res!106597 () Bool)

(declare-fun e!142917 () Bool)

(assert (=> b!230974 (=> (not res!106597) (not e!142917))))

(assert (=> b!230974 (= res!106597 (= (++!874 (list!1344 (charsOf!308 (_1!2105 (get!1109 lt!90682)))) (_2!2105 (get!1109 lt!90682))) lt!90127))))

(declare-fun b!230975 () Bool)

(declare-fun res!106596 () Bool)

(assert (=> b!230975 (=> (not res!106596) (not e!142917))))

(assert (=> b!230975 (= res!106596 (= (value!22926 (_1!2105 (get!1109 lt!90682))) (apply!636 (transformation!653 (rule!1210 (_1!2105 (get!1109 lt!90682)))) (seqFromList!683 (originalCharacters!696 (_1!2105 (get!1109 lt!90682)))))))))

(declare-fun b!230976 () Bool)

(declare-fun res!106595 () Bool)

(assert (=> b!230976 (=> (not res!106595) (not e!142917))))

(assert (=> b!230976 (= res!106595 (< (size!2788 (_2!2105 (get!1109 lt!90682))) (size!2788 lt!90127)))))

(declare-fun b!230977 () Bool)

(declare-fun res!106598 () Bool)

(assert (=> b!230977 (=> (not res!106598) (not e!142917))))

(assert (=> b!230977 (= res!106598 (= (list!1344 (charsOf!308 (_1!2105 (get!1109 lt!90682)))) (originalCharacters!696 (_1!2105 (get!1109 lt!90682)))))))

(declare-fun b!230978 () Bool)

(assert (=> b!230978 (= e!142916 call!11840)))

(declare-fun b!230979 () Bool)

(declare-fun res!106599 () Bool)

(assert (=> b!230979 (=> (not res!106599) (not e!142917))))

(assert (=> b!230979 (= res!106599 (matchR!215 (regex!653 (rule!1210 (_1!2105 (get!1109 lt!90682)))) (list!1344 (charsOf!308 (_1!2105 (get!1109 lt!90682))))))))

(declare-fun b!230980 () Bool)

(assert (=> b!230980 (= e!142917 (contains!631 rules!1920 (rule!1210 (_1!2105 (get!1109 lt!90682)))))))

(declare-fun b!230981 () Bool)

(assert (=> b!230981 (= e!142915 e!142917)))

(declare-fun res!106594 () Bool)

(assert (=> b!230981 (=> (not res!106594) (not e!142917))))

(assert (=> b!230981 (= res!106594 (isDefined!502 lt!90682))))

(assert (= (and d!63604 c!44166) b!230978))

(assert (= (and d!63604 (not c!44166)) b!230973))

(assert (= (or b!230978 b!230973) bm!11835))

(assert (= (and d!63604 (not res!106600)) b!230981))

(assert (= (and b!230981 res!106594) b!230977))

(assert (= (and b!230977 res!106598) b!230976))

(assert (= (and b!230976 res!106595) b!230974))

(assert (= (and b!230974 res!106597) b!230975))

(assert (= (and b!230975 res!106596) b!230979))

(assert (= (and b!230979 res!106599) b!230980))

(declare-fun m!273225 () Bool)

(assert (=> b!230975 m!273225))

(declare-fun m!273227 () Bool)

(assert (=> b!230975 m!273227))

(assert (=> b!230975 m!273227))

(declare-fun m!273229 () Bool)

(assert (=> b!230975 m!273229))

(declare-fun m!273231 () Bool)

(assert (=> bm!11835 m!273231))

(declare-fun m!273233 () Bool)

(assert (=> b!230973 m!273233))

(assert (=> b!230977 m!273225))

(declare-fun m!273235 () Bool)

(assert (=> b!230977 m!273235))

(assert (=> b!230977 m!273235))

(declare-fun m!273237 () Bool)

(assert (=> b!230977 m!273237))

(assert (=> b!230974 m!273225))

(assert (=> b!230974 m!273235))

(assert (=> b!230974 m!273235))

(assert (=> b!230974 m!273237))

(assert (=> b!230974 m!273237))

(declare-fun m!273239 () Bool)

(assert (=> b!230974 m!273239))

(declare-fun m!273241 () Bool)

(assert (=> d!63604 m!273241))

(declare-fun m!273243 () Bool)

(assert (=> d!63604 m!273243))

(declare-fun m!273245 () Bool)

(assert (=> d!63604 m!273245))

(assert (=> d!63604 m!272343))

(assert (=> b!230980 m!273225))

(declare-fun m!273247 () Bool)

(assert (=> b!230980 m!273247))

(assert (=> b!230979 m!273225))

(assert (=> b!230979 m!273235))

(assert (=> b!230979 m!273235))

(assert (=> b!230979 m!273237))

(assert (=> b!230979 m!273237))

(declare-fun m!273249 () Bool)

(assert (=> b!230979 m!273249))

(assert (=> b!230976 m!273225))

(declare-fun m!273251 () Bool)

(assert (=> b!230976 m!273251))

(assert (=> b!230976 m!272079))

(declare-fun m!273253 () Bool)

(assert (=> b!230981 m!273253))

(assert (=> b!229943 d!63604))

(declare-fun d!63606 () Bool)

(assert (=> d!63606 (= (get!1109 lt!90145) (v!14341 lt!90145))))

(assert (=> b!229942 d!63606))

(declare-fun d!63608 () Bool)

(assert (=> d!63608 (= (head!802 tokens!465) (h!8879 tokens!465))))

(assert (=> b!229942 d!63608))

(declare-fun b!230983 () Bool)

(declare-fun e!142919 () List!3490)

(assert (=> b!230983 (= e!142919 (Cons!3480 (h!8877 lt!90127) (++!874 (t!33486 lt!90127) lt!90134)))))

(declare-fun d!63610 () Bool)

(declare-fun e!142918 () Bool)

(assert (=> d!63610 e!142918))

(declare-fun res!106601 () Bool)

(assert (=> d!63610 (=> (not res!106601) (not e!142918))))

(declare-fun lt!90687 () List!3490)

(assert (=> d!63610 (= res!106601 (= (content!482 lt!90687) ((_ map or) (content!482 lt!90127) (content!482 lt!90134))))))

(assert (=> d!63610 (= lt!90687 e!142919)))

(declare-fun c!44167 () Bool)

(assert (=> d!63610 (= c!44167 ((_ is Nil!3480) lt!90127))))

(assert (=> d!63610 (= (++!874 lt!90127 lt!90134) lt!90687)))

(declare-fun b!230984 () Bool)

(declare-fun res!106602 () Bool)

(assert (=> b!230984 (=> (not res!106602) (not e!142918))))

(assert (=> b!230984 (= res!106602 (= (size!2788 lt!90687) (+ (size!2788 lt!90127) (size!2788 lt!90134))))))

(declare-fun b!230982 () Bool)

(assert (=> b!230982 (= e!142919 lt!90134)))

(declare-fun b!230985 () Bool)

(assert (=> b!230985 (= e!142918 (or (not (= lt!90134 Nil!3480)) (= lt!90687 lt!90127)))))

(assert (= (and d!63610 c!44167) b!230982))

(assert (= (and d!63610 (not c!44167)) b!230983))

(assert (= (and d!63610 res!106601) b!230984))

(assert (= (and b!230984 res!106602) b!230985))

(declare-fun m!273255 () Bool)

(assert (=> b!230983 m!273255))

(declare-fun m!273257 () Bool)

(assert (=> d!63610 m!273257))

(assert (=> d!63610 m!272073))

(assert (=> d!63610 m!271849))

(declare-fun m!273259 () Bool)

(assert (=> b!230984 m!273259))

(assert (=> b!230984 m!272079))

(assert (=> b!230984 m!271855))

(assert (=> b!229931 d!63610))

(declare-fun b!230986 () Bool)

(declare-fun e!142921 () Bool)

(assert (=> b!230986 (= e!142921 (matchR!215 (derivativeStep!115 (regex!653 lt!90115) (head!801 lt!90121)) (tail!428 lt!90121)))))

(declare-fun b!230987 () Bool)

(declare-fun e!142922 () Bool)

(declare-fun lt!90688 () Bool)

(assert (=> b!230987 (= e!142922 (not lt!90688))))

(declare-fun b!230988 () Bool)

(declare-fun e!142926 () Bool)

(assert (=> b!230988 (= e!142926 e!142922)))

(declare-fun c!44170 () Bool)

(assert (=> b!230988 (= c!44170 ((_ is EmptyLang!877) (regex!653 lt!90115)))))

(declare-fun b!230989 () Bool)

(declare-fun res!106603 () Bool)

(declare-fun e!142925 () Bool)

(assert (=> b!230989 (=> res!106603 e!142925)))

(assert (=> b!230989 (= res!106603 (not ((_ is ElementMatch!877) (regex!653 lt!90115))))))

(assert (=> b!230989 (= e!142922 e!142925)))

(declare-fun b!230990 () Bool)

(declare-fun res!106604 () Bool)

(assert (=> b!230990 (=> res!106604 e!142925)))

(declare-fun e!142923 () Bool)

(assert (=> b!230990 (= res!106604 e!142923)))

(declare-fun res!106608 () Bool)

(assert (=> b!230990 (=> (not res!106608) (not e!142923))))

(assert (=> b!230990 (= res!106608 lt!90688)))

(declare-fun d!63612 () Bool)

(assert (=> d!63612 e!142926))

(declare-fun c!44168 () Bool)

(assert (=> d!63612 (= c!44168 ((_ is EmptyExpr!877) (regex!653 lt!90115)))))

(assert (=> d!63612 (= lt!90688 e!142921)))

(declare-fun c!44169 () Bool)

(assert (=> d!63612 (= c!44169 (isEmpty!2022 lt!90121))))

(assert (=> d!63612 (validRegex!224 (regex!653 lt!90115))))

(assert (=> d!63612 (= (matchR!215 (regex!653 lt!90115) lt!90121) lt!90688)))

(declare-fun b!230991 () Bool)

(declare-fun e!142924 () Bool)

(assert (=> b!230991 (= e!142925 e!142924)))

(declare-fun res!106607 () Bool)

(assert (=> b!230991 (=> (not res!106607) (not e!142924))))

(assert (=> b!230991 (= res!106607 (not lt!90688))))

(declare-fun b!230992 () Bool)

(declare-fun call!11841 () Bool)

(assert (=> b!230992 (= e!142926 (= lt!90688 call!11841))))

(declare-fun b!230993 () Bool)

(declare-fun e!142920 () Bool)

(assert (=> b!230993 (= e!142924 e!142920)))

(declare-fun res!106606 () Bool)

(assert (=> b!230993 (=> res!106606 e!142920)))

(assert (=> b!230993 (= res!106606 call!11841)))

(declare-fun bm!11836 () Bool)

(assert (=> bm!11836 (= call!11841 (isEmpty!2022 lt!90121))))

(declare-fun b!230994 () Bool)

(assert (=> b!230994 (= e!142921 (nullable!149 (regex!653 lt!90115)))))

(declare-fun b!230995 () Bool)

(assert (=> b!230995 (= e!142920 (not (= (head!801 lt!90121) (c!43934 (regex!653 lt!90115)))))))

(declare-fun b!230996 () Bool)

(declare-fun res!106609 () Bool)

(assert (=> b!230996 (=> (not res!106609) (not e!142923))))

(assert (=> b!230996 (= res!106609 (isEmpty!2022 (tail!428 lt!90121)))))

(declare-fun b!230997 () Bool)

(declare-fun res!106605 () Bool)

(assert (=> b!230997 (=> (not res!106605) (not e!142923))))

(assert (=> b!230997 (= res!106605 (not call!11841))))

(declare-fun b!230998 () Bool)

(declare-fun res!106610 () Bool)

(assert (=> b!230998 (=> res!106610 e!142920)))

(assert (=> b!230998 (= res!106610 (not (isEmpty!2022 (tail!428 lt!90121))))))

(declare-fun b!230999 () Bool)

(assert (=> b!230999 (= e!142923 (= (head!801 lt!90121) (c!43934 (regex!653 lt!90115))))))

(assert (= (and d!63612 c!44169) b!230994))

(assert (= (and d!63612 (not c!44169)) b!230986))

(assert (= (and d!63612 c!44168) b!230992))

(assert (= (and d!63612 (not c!44168)) b!230988))

(assert (= (and b!230988 c!44170) b!230987))

(assert (= (and b!230988 (not c!44170)) b!230989))

(assert (= (and b!230989 (not res!106603)) b!230990))

(assert (= (and b!230990 res!106608) b!230997))

(assert (= (and b!230997 res!106605) b!230996))

(assert (= (and b!230996 res!106609) b!230999))

(assert (= (and b!230990 (not res!106604)) b!230991))

(assert (= (and b!230991 res!106607) b!230993))

(assert (= (and b!230993 (not res!106606)) b!230998))

(assert (= (and b!230998 (not res!106610)) b!230995))

(assert (= (or b!230992 b!230993 b!230997) bm!11836))

(declare-fun m!273261 () Bool)

(assert (=> b!230994 m!273261))

(declare-fun m!273263 () Bool)

(assert (=> b!230986 m!273263))

(assert (=> b!230986 m!273263))

(declare-fun m!273265 () Bool)

(assert (=> b!230986 m!273265))

(declare-fun m!273267 () Bool)

(assert (=> b!230986 m!273267))

(assert (=> b!230986 m!273265))

(assert (=> b!230986 m!273267))

(declare-fun m!273269 () Bool)

(assert (=> b!230986 m!273269))

(declare-fun m!273271 () Bool)

(assert (=> d!63612 m!273271))

(declare-fun m!273273 () Bool)

(assert (=> d!63612 m!273273))

(assert (=> b!230998 m!273267))

(assert (=> b!230998 m!273267))

(declare-fun m!273275 () Bool)

(assert (=> b!230998 m!273275))

(assert (=> bm!11836 m!273271))

(assert (=> b!230995 m!273263))

(assert (=> b!230996 m!273267))

(assert (=> b!230996 m!273267))

(assert (=> b!230996 m!273275))

(assert (=> b!230999 m!273263))

(assert (=> b!229930 d!63612))

(declare-fun d!63614 () Bool)

(assert (=> d!63614 (= (get!1110 lt!90110) (v!14342 lt!90110))))

(assert (=> b!229930 d!63614))

(declare-fun d!63616 () Bool)

(declare-fun res!106613 () Bool)

(declare-fun e!142929 () Bool)

(assert (=> d!63616 (=> (not res!106613) (not e!142929))))

(declare-fun rulesValid!189 (LexerInterface!539 List!3491) Bool)

(assert (=> d!63616 (= res!106613 (rulesValid!189 thiss!17480 rules!1920))))

(assert (=> d!63616 (= (rulesInvariant!505 thiss!17480 rules!1920) e!142929)))

(declare-fun b!231002 () Bool)

(declare-datatypes ((List!3494 0))(
  ( (Nil!3484) (Cons!3484 (h!8881 String!4455) (t!33576 List!3494)) )
))
(declare-fun noDuplicateTag!189 (LexerInterface!539 List!3491 List!3494) Bool)

(assert (=> b!231002 (= e!142929 (noDuplicateTag!189 thiss!17480 rules!1920 Nil!3484))))

(assert (= (and d!63616 res!106613) b!231002))

(declare-fun m!273277 () Bool)

(assert (=> d!63616 m!273277))

(declare-fun m!273279 () Bool)

(assert (=> b!231002 m!273279))

(assert (=> b!229908 d!63616))

(declare-fun d!63618 () Bool)

(assert (=> d!63618 (= (list!1344 (printWithSeparatorTokenWhenNeededRec!222 thiss!17480 rules!1920 lt!90112 separatorToken!170 0)) (list!1347 (c!43933 (printWithSeparatorTokenWhenNeededRec!222 thiss!17480 rules!1920 lt!90112 separatorToken!170 0))))))

(declare-fun bs!24488 () Bool)

(assert (= bs!24488 d!63618))

(declare-fun m!273281 () Bool)

(assert (=> bs!24488 m!273281))

(assert (=> b!229929 d!63618))

(declare-fun bs!24489 () Bool)

(declare-fun d!63620 () Bool)

(assert (= bs!24489 (and d!63620 d!63308)))

(declare-fun lambda!7374 () Int)

(assert (=> bs!24489 (= lambda!7374 lambda!7352)))

(declare-fun bs!24490 () Bool)

(assert (= bs!24490 (and d!63620 b!229893)))

(assert (=> bs!24490 (= lambda!7374 lambda!7335)))

(declare-fun bs!24491 () Bool)

(assert (= bs!24491 (and d!63620 b!229934)))

(assert (=> bs!24491 (not (= lambda!7374 lambda!7336))))

(declare-fun bs!24492 () Bool)

(assert (= bs!24492 (and d!63620 d!63254)))

(assert (=> bs!24492 (not (= lambda!7374 lambda!7344))))

(declare-fun bs!24493 () Bool)

(assert (= bs!24493 (and d!63620 d!63438)))

(assert (=> bs!24493 (= lambda!7374 lambda!7361)))

(declare-fun bs!24494 () Bool)

(assert (= bs!24494 (and d!63620 b!230286)))

(assert (=> bs!24494 (not (= lambda!7374 lambda!7347))))

(declare-fun bs!24495 () Bool)

(assert (= bs!24495 (and d!63620 b!230338)))

(assert (=> bs!24495 (not (= lambda!7374 lambda!7353))))

(declare-fun bs!24496 () Bool)

(declare-fun b!231010 () Bool)

(assert (= bs!24496 (and b!231010 d!63308)))

(declare-fun lambda!7375 () Int)

(assert (=> bs!24496 (not (= lambda!7375 lambda!7352))))

(declare-fun bs!24497 () Bool)

(assert (= bs!24497 (and b!231010 b!229934)))

(assert (=> bs!24497 (= lambda!7375 lambda!7336)))

(declare-fun bs!24498 () Bool)

(assert (= bs!24498 (and b!231010 d!63254)))

(assert (=> bs!24498 (= lambda!7375 lambda!7344)))

(declare-fun bs!24499 () Bool)

(assert (= bs!24499 (and b!231010 d!63438)))

(assert (=> bs!24499 (not (= lambda!7375 lambda!7361))))

(declare-fun bs!24500 () Bool)

(assert (= bs!24500 (and b!231010 b!230286)))

(assert (=> bs!24500 (= lambda!7375 lambda!7347)))

(declare-fun bs!24501 () Bool)

(assert (= bs!24501 (and b!231010 b!230338)))

(assert (=> bs!24501 (= lambda!7375 lambda!7353)))

(declare-fun bs!24502 () Bool)

(assert (= bs!24502 (and b!231010 b!229893)))

(assert (=> bs!24502 (not (= lambda!7375 lambda!7335))))

(declare-fun bs!24503 () Bool)

(assert (= bs!24503 (and b!231010 d!63620)))

(assert (=> bs!24503 (not (= lambda!7375 lambda!7374))))

(declare-fun b!231014 () Bool)

(declare-fun e!142938 () Bool)

(assert (=> b!231014 (= e!142938 true)))

(declare-fun b!231013 () Bool)

(declare-fun e!142937 () Bool)

(assert (=> b!231013 (= e!142937 e!142938)))

(declare-fun b!231012 () Bool)

(declare-fun e!142936 () Bool)

(assert (=> b!231012 (= e!142936 e!142937)))

(assert (=> b!231010 e!142936))

(assert (= b!231013 b!231014))

(assert (= b!231012 b!231013))

(assert (= (and b!231010 ((_ is Cons!3481) rules!1920)) b!231012))

(assert (=> b!231014 (< (dynLambda!1629 order!2441 (toValue!1348 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7375))))

(assert (=> b!231014 (< (dynLambda!1631 order!2445 (toChars!1207 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7375))))

(assert (=> b!231010 true))

(declare-fun b!231003 () Bool)

(declare-fun e!142932 () Bool)

(declare-fun lt!90695 () Option!653)

(declare-fun call!11842 () Token!1050)

(assert (=> b!231003 (= e!142932 (not (= (_1!2107 (v!14343 lt!90695)) call!11842)))))

(declare-fun b!231004 () Bool)

(declare-fun e!142930 () BalanceConc!2264)

(assert (=> b!231004 (= e!142930 (BalanceConc!2265 Empty!1128))))

(declare-fun call!11845 () Token!1050)

(assert (=> b!231004 (= (print!270 thiss!17480 (singletonSeq!205 call!11845)) (printTailRec!233 thiss!17480 (singletonSeq!205 call!11845) 0 (BalanceConc!2265 Empty!1128)))))

(declare-fun lt!90696 () Unit!4012)

(declare-fun Unit!4032 () Unit!4012)

(assert (=> b!231004 (= lt!90696 Unit!4032)))

(declare-fun call!11844 () BalanceConc!2264)

(declare-fun lt!90692 () Unit!4012)

(declare-fun lt!90693 () BalanceConc!2264)

(assert (=> b!231004 (= lt!90692 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!79 thiss!17480 rules!1920 (list!1344 call!11844) (list!1344 lt!90693)))))

(assert (=> b!231004 false))

(declare-fun lt!90702 () Unit!4012)

(declare-fun Unit!4033 () Unit!4012)

(assert (=> b!231004 (= lt!90702 Unit!4033)))

(declare-fun b!231005 () Bool)

(declare-fun call!11846 () BalanceConc!2264)

(assert (=> b!231005 (= e!142930 (++!876 call!11846 lt!90693))))

(declare-fun b!231006 () Bool)

(declare-fun e!142935 () BalanceConc!2264)

(assert (=> b!231006 (= e!142935 call!11846)))

(declare-fun c!44171 () Bool)

(declare-fun call!11843 () BalanceConc!2264)

(declare-fun bm!11837 () Bool)

(assert (=> bm!11837 (= call!11846 (++!876 call!11843 (ite c!44171 lt!90693 call!11844)))))

(declare-fun lt!90689 () BalanceConc!2264)

(assert (=> d!63620 (= (list!1344 lt!90689) (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 (dropList!132 lt!90112 0) separatorToken!170))))

(declare-fun e!142934 () BalanceConc!2264)

(assert (=> d!63620 (= lt!90689 e!142934)))

(declare-fun c!44172 () Bool)

(assert (=> d!63620 (= c!44172 (>= 0 (size!2783 lt!90112)))))

(declare-fun lt!90698 () Unit!4012)

(assert (=> d!63620 (= lt!90698 (lemmaContentSubsetPreservesForall!75 (list!1345 lt!90112) (dropList!132 lt!90112 0) lambda!7374))))

(declare-fun e!142931 () Bool)

(assert (=> d!63620 e!142931))

(declare-fun res!106616 () Bool)

(assert (=> d!63620 (=> (not res!106616) (not e!142931))))

(assert (=> d!63620 (= res!106616 (>= 0 0))))

(assert (=> d!63620 (= (printWithSeparatorTokenWhenNeededRec!222 thiss!17480 rules!1920 lt!90112 separatorToken!170 0) lt!90689)))

(declare-fun bm!11838 () Bool)

(assert (=> bm!11838 (= call!11843 (charsOf!308 (ite c!44171 call!11842 call!11845)))))

(declare-fun b!231007 () Bool)

(declare-fun e!142933 () Bool)

(assert (=> b!231007 (= e!142933 (= (_1!2107 (v!14343 lt!90695)) (apply!630 lt!90112 0)))))

(declare-fun b!231008 () Bool)

(assert (=> b!231008 (= e!142934 (BalanceConc!2265 Empty!1128))))

(declare-fun b!231009 () Bool)

(assert (=> b!231009 (= e!142931 (<= 0 (size!2783 lt!90112)))))

(declare-fun bm!11839 () Bool)

(declare-fun c!44173 () Bool)

(assert (=> bm!11839 (= call!11844 (charsOf!308 (ite c!44173 separatorToken!170 call!11845)))))

(declare-fun bm!11840 () Bool)

(assert (=> bm!11840 (= call!11842 (apply!630 lt!90112 0))))

(assert (=> b!231010 (= e!142934 e!142935)))

(declare-fun lt!90700 () List!3492)

(assert (=> b!231010 (= lt!90700 (list!1345 lt!90112))))

(declare-fun lt!90701 () Unit!4012)

(assert (=> b!231010 (= lt!90701 (lemmaDropApply!172 lt!90700 0))))

(assert (=> b!231010 (= (head!802 (drop!185 lt!90700 0)) (apply!634 lt!90700 0))))

(declare-fun lt!90691 () Unit!4012)

(assert (=> b!231010 (= lt!90691 lt!90701)))

(declare-fun lt!90699 () List!3492)

(assert (=> b!231010 (= lt!90699 (list!1345 lt!90112))))

(declare-fun lt!90694 () Unit!4012)

(assert (=> b!231010 (= lt!90694 (lemmaDropTail!164 lt!90699 0))))

(assert (=> b!231010 (= (tail!430 (drop!185 lt!90699 0)) (drop!185 lt!90699 (+ 0 1)))))

(declare-fun lt!90697 () Unit!4012)

(assert (=> b!231010 (= lt!90697 lt!90694)))

(declare-fun lt!90690 () Unit!4012)

(assert (=> b!231010 (= lt!90690 (forallContained!220 (list!1345 lt!90112) lambda!7375 (apply!630 lt!90112 0)))))

(assert (=> b!231010 (= lt!90693 (printWithSeparatorTokenWhenNeededRec!222 thiss!17480 rules!1920 lt!90112 separatorToken!170 (+ 0 1)))))

(assert (=> b!231010 (= lt!90695 (maxPrefixZipperSequence!232 thiss!17480 rules!1920 (++!876 (charsOf!308 (apply!630 lt!90112 0)) lt!90693)))))

(declare-fun res!106615 () Bool)

(assert (=> b!231010 (= res!106615 ((_ is Some!652) lt!90695))))

(assert (=> b!231010 (=> (not res!106615) (not e!142933))))

(assert (=> b!231010 (= c!44171 e!142933)))

(declare-fun b!231011 () Bool)

(assert (=> b!231011 (= c!44173 e!142932)))

(declare-fun res!106614 () Bool)

(assert (=> b!231011 (=> (not res!106614) (not e!142932))))

(assert (=> b!231011 (= res!106614 ((_ is Some!652) lt!90695))))

(assert (=> b!231011 (= e!142935 e!142930)))

(declare-fun bm!11841 () Bool)

(assert (=> bm!11841 (= call!11845 call!11842)))

(assert (= (and d!63620 res!106616) b!231009))

(assert (= (and d!63620 c!44172) b!231008))

(assert (= (and d!63620 (not c!44172)) b!231010))

(assert (= (and b!231010 res!106615) b!231007))

(assert (= (and b!231010 c!44171) b!231006))

(assert (= (and b!231010 (not c!44171)) b!231011))

(assert (= (and b!231011 res!106614) b!231003))

(assert (= (and b!231011 c!44173) b!231005))

(assert (= (and b!231011 (not c!44173)) b!231004))

(assert (= (or b!231005 b!231004) bm!11841))

(assert (= (or b!231005 b!231004) bm!11839))

(assert (= (or b!231006 b!231003 bm!11841) bm!11840))

(assert (= (or b!231006 b!231005) bm!11838))

(assert (= (or b!231006 b!231005) bm!11837))

(declare-fun m!273283 () Bool)

(assert (=> bm!11840 m!273283))

(declare-fun m!273285 () Bool)

(assert (=> bm!11837 m!273285))

(declare-fun m!273287 () Bool)

(assert (=> d!63620 m!273287))

(declare-fun m!273289 () Bool)

(assert (=> d!63620 m!273289))

(declare-fun m!273291 () Bool)

(assert (=> d!63620 m!273291))

(assert (=> d!63620 m!271817))

(assert (=> d!63620 m!271261))

(assert (=> d!63620 m!271817))

(assert (=> d!63620 m!273287))

(declare-fun m!273293 () Bool)

(assert (=> d!63620 m!273293))

(assert (=> d!63620 m!273287))

(assert (=> b!231009 m!271261))

(assert (=> b!231010 m!273283))

(declare-fun m!273295 () Bool)

(assert (=> b!231010 m!273295))

(declare-fun m!273297 () Bool)

(assert (=> b!231010 m!273297))

(assert (=> b!231010 m!271817))

(assert (=> b!231010 m!273283))

(declare-fun m!273299 () Bool)

(assert (=> b!231010 m!273299))

(declare-fun m!273301 () Bool)

(assert (=> b!231010 m!273301))

(declare-fun m!273303 () Bool)

(assert (=> b!231010 m!273303))

(assert (=> b!231010 m!273297))

(declare-fun m!273305 () Bool)

(assert (=> b!231010 m!273305))

(declare-fun m!273307 () Bool)

(assert (=> b!231010 m!273307))

(declare-fun m!273309 () Bool)

(assert (=> b!231010 m!273309))

(assert (=> b!231010 m!271817))

(declare-fun m!273311 () Bool)

(assert (=> b!231010 m!273311))

(declare-fun m!273313 () Bool)

(assert (=> b!231010 m!273313))

(assert (=> b!231010 m!273303))

(declare-fun m!273315 () Bool)

(assert (=> b!231010 m!273315))

(assert (=> b!231010 m!273283))

(declare-fun m!273317 () Bool)

(assert (=> b!231010 m!273317))

(assert (=> b!231010 m!273295))

(assert (=> b!231010 m!273311))

(declare-fun m!273319 () Bool)

(assert (=> b!231010 m!273319))

(assert (=> b!231007 m!273283))

(declare-fun m!273321 () Bool)

(assert (=> bm!11838 m!273321))

(declare-fun m!273323 () Bool)

(assert (=> b!231005 m!273323))

(declare-fun m!273325 () Bool)

(assert (=> bm!11839 m!273325))

(declare-fun m!273327 () Bool)

(assert (=> b!231004 m!273327))

(declare-fun m!273329 () Bool)

(assert (=> b!231004 m!273329))

(assert (=> b!231004 m!273329))

(declare-fun m!273331 () Bool)

(assert (=> b!231004 m!273331))

(declare-fun m!273333 () Bool)

(assert (=> b!231004 m!273333))

(assert (=> b!231004 m!273327))

(declare-fun m!273335 () Bool)

(assert (=> b!231004 m!273335))

(assert (=> b!231004 m!273327))

(declare-fun m!273337 () Bool)

(assert (=> b!231004 m!273337))

(assert (=> b!231004 m!273331))

(assert (=> b!229929 d!63620))

(declare-fun bs!24504 () Bool)

(declare-fun b!231019 () Bool)

(assert (= bs!24504 (and b!231019 d!63308)))

(declare-fun lambda!7376 () Int)

(assert (=> bs!24504 (not (= lambda!7376 lambda!7352))))

(declare-fun bs!24505 () Bool)

(assert (= bs!24505 (and b!231019 b!229934)))

(assert (=> bs!24505 (= lambda!7376 lambda!7336)))

(declare-fun bs!24506 () Bool)

(assert (= bs!24506 (and b!231019 d!63254)))

(assert (=> bs!24506 (= lambda!7376 lambda!7344)))

(declare-fun bs!24507 () Bool)

(assert (= bs!24507 (and b!231019 d!63438)))

(assert (=> bs!24507 (not (= lambda!7376 lambda!7361))))

(declare-fun bs!24508 () Bool)

(assert (= bs!24508 (and b!231019 b!231010)))

(assert (=> bs!24508 (= lambda!7376 lambda!7375)))

(declare-fun bs!24509 () Bool)

(assert (= bs!24509 (and b!231019 b!230286)))

(assert (=> bs!24509 (= lambda!7376 lambda!7347)))

(declare-fun bs!24510 () Bool)

(assert (= bs!24510 (and b!231019 b!230338)))

(assert (=> bs!24510 (= lambda!7376 lambda!7353)))

(declare-fun bs!24511 () Bool)

(assert (= bs!24511 (and b!231019 b!229893)))

(assert (=> bs!24511 (not (= lambda!7376 lambda!7335))))

(declare-fun bs!24512 () Bool)

(assert (= bs!24512 (and b!231019 d!63620)))

(assert (=> bs!24512 (not (= lambda!7376 lambda!7374))))

(declare-fun b!231025 () Bool)

(declare-fun e!142945 () Bool)

(assert (=> b!231025 (= e!142945 true)))

(declare-fun b!231024 () Bool)

(declare-fun e!142944 () Bool)

(assert (=> b!231024 (= e!142944 e!142945)))

(declare-fun b!231023 () Bool)

(declare-fun e!142943 () Bool)

(assert (=> b!231023 (= e!142943 e!142944)))

(assert (=> b!231019 e!142943))

(assert (= b!231024 b!231025))

(assert (= b!231023 b!231024))

(assert (= (and b!231019 ((_ is Cons!3481) rules!1920)) b!231023))

(assert (=> b!231025 (< (dynLambda!1629 order!2441 (toValue!1348 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7376))))

(assert (=> b!231025 (< (dynLambda!1631 order!2445 (toChars!1207 (transformation!653 (h!8878 rules!1920)))) (dynLambda!1630 order!2443 lambda!7376))))

(assert (=> b!231019 true))

(declare-fun b!231015 () Bool)

(declare-fun e!142941 () List!3490)

(declare-fun call!11850 () List!3490)

(declare-fun lt!90706 () List!3490)

(assert (=> b!231015 (= e!142941 (++!874 call!11850 lt!90706))))

(declare-fun b!231016 () Bool)

(assert (=> b!231016 (= e!142941 Nil!3480)))

(assert (=> b!231016 (= (print!270 thiss!17480 (singletonSeq!205 (h!8879 tokens!465))) (printTailRec!233 thiss!17480 (singletonSeq!205 (h!8879 tokens!465)) 0 (BalanceConc!2265 Empty!1128)))))

(declare-fun lt!90705 () Unit!4012)

(declare-fun Unit!4034 () Unit!4012)

(assert (=> b!231016 (= lt!90705 Unit!4034)))

(declare-fun call!11847 () List!3490)

(declare-fun lt!90703 () Unit!4012)

(assert (=> b!231016 (= lt!90703 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!79 thiss!17480 rules!1920 call!11847 lt!90706))))

(assert (=> b!231016 false))

(declare-fun lt!90707 () Unit!4012)

(declare-fun Unit!4035 () Unit!4012)

(assert (=> b!231016 (= lt!90707 Unit!4035)))

(declare-fun b!231017 () Bool)

(declare-fun e!142942 () List!3490)

(assert (=> b!231017 (= e!142942 call!11850)))

(declare-fun c!44177 () Bool)

(declare-fun call!11849 () BalanceConc!2264)

(declare-fun bm!11842 () Bool)

(declare-fun call!11851 () BalanceConc!2264)

(declare-fun call!11848 () List!3490)

(assert (=> bm!11842 (= call!11848 (list!1344 (ite c!44177 call!11851 call!11849)))))

(declare-fun b!231018 () Bool)

(declare-fun e!142939 () List!3490)

(assert (=> b!231018 (= e!142939 Nil!3480)))

(declare-fun d!63622 () Bool)

(declare-fun c!44174 () Bool)

(assert (=> d!63622 (= c!44174 ((_ is Cons!3482) tokens!465))))

(assert (=> d!63622 (= (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!142939)))

(declare-fun bm!11843 () Bool)

(assert (=> bm!11843 (= call!11850 (++!874 call!11848 (ite c!44177 lt!90706 call!11847)))))

(declare-fun bm!11844 () Bool)

(declare-fun e!142940 () BalanceConc!2264)

(assert (=> bm!11844 (= call!11847 (list!1344 e!142940))))

(declare-fun c!44176 () Bool)

(declare-fun c!44175 () Bool)

(assert (=> bm!11844 (= c!44176 c!44175)))

(assert (=> b!231019 (= e!142939 e!142942)))

(declare-fun lt!90704 () Unit!4012)

(assert (=> b!231019 (= lt!90704 (forallContained!220 tokens!465 lambda!7376 (h!8879 tokens!465)))))

(assert (=> b!231019 (= lt!90706 (printWithSeparatorTokenWhenNeededList!232 thiss!17480 rules!1920 (t!33488 tokens!465) separatorToken!170))))

(declare-fun lt!90708 () Option!651)

(assert (=> b!231019 (= lt!90708 (maxPrefix!269 thiss!17480 rules!1920 (++!874 (list!1344 (charsOf!308 (h!8879 tokens!465))) lt!90706)))))

(assert (=> b!231019 (= c!44177 (and ((_ is Some!650) lt!90708) (= (_1!2105 (v!14341 lt!90708)) (h!8879 tokens!465))))))

(declare-fun b!231020 () Bool)

(assert (=> b!231020 (= e!142940 call!11849)))

(declare-fun bm!11845 () Bool)

(assert (=> bm!11845 (= call!11849 call!11851)))

(declare-fun bm!11846 () Bool)

(assert (=> bm!11846 (= call!11851 (charsOf!308 (h!8879 tokens!465)))))

(declare-fun b!231021 () Bool)

(assert (=> b!231021 (= c!44175 (and ((_ is Some!650) lt!90708) (not (= (_1!2105 (v!14341 lt!90708)) (h!8879 tokens!465)))))))

(assert (=> b!231021 (= e!142942 e!142941)))

(declare-fun b!231022 () Bool)

(assert (=> b!231022 (= e!142940 (charsOf!308 separatorToken!170))))

(assert (= (and d!63622 c!44174) b!231019))

(assert (= (and d!63622 (not c!44174)) b!231018))

(assert (= (and b!231019 c!44177) b!231017))

(assert (= (and b!231019 (not c!44177)) b!231021))

(assert (= (and b!231021 c!44175) b!231015))

(assert (= (and b!231021 (not c!44175)) b!231016))

(assert (= (or b!231015 b!231016) bm!11845))

(assert (= (or b!231015 b!231016) bm!11844))

(assert (= (and bm!11844 c!44176) b!231022))

(assert (= (and bm!11844 (not c!44176)) b!231020))

(assert (= (or b!231017 bm!11845) bm!11846))

(assert (= (or b!231017 b!231015) bm!11842))

(assert (= (or b!231017 b!231015) bm!11843))

(assert (=> bm!11846 m!271315))

(declare-fun m!273339 () Bool)

(assert (=> bm!11843 m!273339))

(assert (=> b!231022 m!271303))

(declare-fun m!273341 () Bool)

(assert (=> bm!11844 m!273341))

(declare-fun m!273343 () Bool)

(assert (=> b!231015 m!273343))

(assert (=> b!231016 m!271461))

(assert (=> b!231016 m!271461))

(assert (=> b!231016 m!271725))

(assert (=> b!231016 m!271461))

(declare-fun m!273345 () Bool)

(assert (=> b!231016 m!273345))

(declare-fun m!273347 () Bool)

(assert (=> b!231016 m!273347))

(assert (=> b!231019 m!271315))

(declare-fun m!273349 () Bool)

(assert (=> b!231019 m!273349))

(declare-fun m!273351 () Bool)

(assert (=> b!231019 m!273351))

(assert (=> b!231019 m!271315))

(assert (=> b!231019 m!271325))

(assert (=> b!231019 m!271321))

(declare-fun m!273353 () Bool)

(assert (=> b!231019 m!273353))

(assert (=> b!231019 m!271325))

(assert (=> b!231019 m!273349))

(declare-fun m!273355 () Bool)

(assert (=> bm!11842 m!273355))

(assert (=> b!229929 d!63622))

(declare-fun b!231026 () Bool)

(declare-fun e!142947 () Bool)

(assert (=> b!231026 (= e!142947 (inv!17 (value!22926 separatorToken!170)))))

(declare-fun b!231027 () Bool)

(declare-fun e!142946 () Bool)

(assert (=> b!231027 (= e!142946 e!142947)))

(declare-fun c!44178 () Bool)

(assert (=> b!231027 (= c!44178 ((_ is IntegerValue!2026) (value!22926 separatorToken!170)))))

(declare-fun d!63624 () Bool)

(declare-fun c!44179 () Bool)

(assert (=> d!63624 (= c!44179 ((_ is IntegerValue!2025) (value!22926 separatorToken!170)))))

(assert (=> d!63624 (= (inv!21 (value!22926 separatorToken!170)) e!142946)))

(declare-fun b!231028 () Bool)

(declare-fun e!142948 () Bool)

(assert (=> b!231028 (= e!142948 (inv!15 (value!22926 separatorToken!170)))))

(declare-fun b!231029 () Bool)

(declare-fun res!106617 () Bool)

(assert (=> b!231029 (=> res!106617 e!142948)))

(assert (=> b!231029 (= res!106617 (not ((_ is IntegerValue!2027) (value!22926 separatorToken!170))))))

(assert (=> b!231029 (= e!142947 e!142948)))

(declare-fun b!231030 () Bool)

(assert (=> b!231030 (= e!142946 (inv!16 (value!22926 separatorToken!170)))))

(assert (= (and d!63624 c!44179) b!231030))

(assert (= (and d!63624 (not c!44179)) b!231027))

(assert (= (and b!231027 c!44178) b!231026))

(assert (= (and b!231027 (not c!44178)) b!231029))

(assert (= (and b!231029 (not res!106617)) b!231028))

(declare-fun m!273357 () Bool)

(assert (=> b!231026 m!273357))

(declare-fun m!273359 () Bool)

(assert (=> b!231028 m!273359))

(declare-fun m!273361 () Bool)

(assert (=> b!231030 m!273361))

(assert (=> b!229928 d!63624))

(declare-fun d!63626 () Bool)

(assert (=> d!63626 (= (isDefined!502 lt!90145) (not (isEmpty!2029 lt!90145)))))

(declare-fun bs!24513 () Bool)

(assert (= bs!24513 d!63626))

(declare-fun m!273363 () Bool)

(assert (=> bs!24513 m!273363))

(assert (=> b!229907 d!63626))

(assert (=> b!229907 d!63400))

(declare-fun d!63628 () Bool)

(declare-fun lt!90711 () Bool)

(assert (=> d!63628 (= lt!90711 (isEmpty!2022 (list!1344 (_2!2104 lt!90108))))))

(declare-fun isEmpty!2031 (Conc!1128) Bool)

(assert (=> d!63628 (= lt!90711 (isEmpty!2031 (c!43933 (_2!2104 lt!90108))))))

(assert (=> d!63628 (= (isEmpty!2020 (_2!2104 lt!90108)) lt!90711)))

(declare-fun bs!24514 () Bool)

(assert (= bs!24514 d!63628))

(declare-fun m!273365 () Bool)

(assert (=> bs!24514 m!273365))

(assert (=> bs!24514 m!273365))

(declare-fun m!273367 () Bool)

(assert (=> bs!24514 m!273367))

(declare-fun m!273369 () Bool)

(assert (=> bs!24514 m!273369))

(assert (=> b!229906 d!63628))

(declare-fun d!63630 () Bool)

(assert (=> d!63630 (= (inv!4327 (tag!853 (rule!1210 separatorToken!170))) (= (mod (str.len (value!22925 (tag!853 (rule!1210 separatorToken!170)))) 2) 0))))

(assert (=> b!229927 d!63630))

(declare-fun d!63632 () Bool)

(declare-fun res!106618 () Bool)

(declare-fun e!142949 () Bool)

(assert (=> d!63632 (=> (not res!106618) (not e!142949))))

(assert (=> d!63632 (= res!106618 (semiInverseModEq!223 (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (toValue!1348 (transformation!653 (rule!1210 separatorToken!170)))))))

(assert (=> d!63632 (= (inv!4330 (transformation!653 (rule!1210 separatorToken!170))) e!142949)))

(declare-fun b!231031 () Bool)

(assert (=> b!231031 (= e!142949 (equivClasses!206 (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (toValue!1348 (transformation!653 (rule!1210 separatorToken!170)))))))

(assert (= (and d!63632 res!106618) b!231031))

(declare-fun m!273371 () Bool)

(assert (=> d!63632 m!273371))

(declare-fun m!273373 () Bool)

(assert (=> b!231031 m!273373))

(assert (=> b!229927 d!63632))

(declare-fun d!63634 () Bool)

(declare-fun lt!90712 () Token!1050)

(assert (=> d!63634 (= lt!90712 (apply!634 (list!1345 (_1!2104 lt!90108)) 0))))

(assert (=> d!63634 (= lt!90712 (apply!635 (c!43935 (_1!2104 lt!90108)) 0))))

(declare-fun e!142950 () Bool)

(assert (=> d!63634 e!142950))

(declare-fun res!106619 () Bool)

(assert (=> d!63634 (=> (not res!106619) (not e!142950))))

(assert (=> d!63634 (= res!106619 (<= 0 0))))

(assert (=> d!63634 (= (apply!630 (_1!2104 lt!90108) 0) lt!90712)))

(declare-fun b!231032 () Bool)

(assert (=> b!231032 (= e!142950 (< 0 (size!2783 (_1!2104 lt!90108))))))

(assert (= (and d!63634 res!106619) b!231032))

(assert (=> d!63634 m!272273))

(assert (=> d!63634 m!272273))

(declare-fun m!273375 () Bool)

(assert (=> d!63634 m!273375))

(declare-fun m!273377 () Bool)

(assert (=> d!63634 m!273377))

(assert (=> b!231032 m!271359))

(assert (=> b!229936 d!63634))

(declare-fun d!63636 () Bool)

(declare-fun res!106624 () Bool)

(declare-fun e!142955 () Bool)

(assert (=> d!63636 (=> res!106624 e!142955)))

(assert (=> d!63636 (= res!106624 ((_ is Nil!3482) tokens!465))))

(assert (=> d!63636 (= (forall!785 tokens!465 lambda!7335) e!142955)))

(declare-fun b!231037 () Bool)

(declare-fun e!142956 () Bool)

(assert (=> b!231037 (= e!142955 e!142956)))

(declare-fun res!106625 () Bool)

(assert (=> b!231037 (=> (not res!106625) (not e!142956))))

(assert (=> b!231037 (= res!106625 (dynLambda!1635 lambda!7335 (h!8879 tokens!465)))))

(declare-fun b!231038 () Bool)

(assert (=> b!231038 (= e!142956 (forall!785 (t!33488 tokens!465) lambda!7335))))

(assert (= (and d!63636 (not res!106624)) b!231037))

(assert (= (and b!231037 res!106625) b!231038))

(declare-fun b_lambda!6413 () Bool)

(assert (=> (not b_lambda!6413) (not b!231037)))

(declare-fun m!273379 () Bool)

(assert (=> b!231037 m!273379))

(declare-fun m!273381 () Bool)

(assert (=> b!231038 m!273381))

(assert (=> b!229893 d!63636))

(declare-fun b!231039 () Bool)

(declare-fun e!142958 () Bool)

(assert (=> b!231039 (= e!142958 (matchR!215 (derivativeStep!115 (regex!653 lt!90116) (head!801 lt!90117)) (tail!428 lt!90117)))))

(declare-fun b!231040 () Bool)

(declare-fun e!142959 () Bool)

(declare-fun lt!90713 () Bool)

(assert (=> b!231040 (= e!142959 (not lt!90713))))

(declare-fun b!231041 () Bool)

(declare-fun e!142963 () Bool)

(assert (=> b!231041 (= e!142963 e!142959)))

(declare-fun c!44182 () Bool)

(assert (=> b!231041 (= c!44182 ((_ is EmptyLang!877) (regex!653 lt!90116)))))

(declare-fun b!231042 () Bool)

(declare-fun res!106626 () Bool)

(declare-fun e!142962 () Bool)

(assert (=> b!231042 (=> res!106626 e!142962)))

(assert (=> b!231042 (= res!106626 (not ((_ is ElementMatch!877) (regex!653 lt!90116))))))

(assert (=> b!231042 (= e!142959 e!142962)))

(declare-fun b!231043 () Bool)

(declare-fun res!106627 () Bool)

(assert (=> b!231043 (=> res!106627 e!142962)))

(declare-fun e!142960 () Bool)

(assert (=> b!231043 (= res!106627 e!142960)))

(declare-fun res!106631 () Bool)

(assert (=> b!231043 (=> (not res!106631) (not e!142960))))

(assert (=> b!231043 (= res!106631 lt!90713)))

(declare-fun d!63638 () Bool)

(assert (=> d!63638 e!142963))

(declare-fun c!44180 () Bool)

(assert (=> d!63638 (= c!44180 ((_ is EmptyExpr!877) (regex!653 lt!90116)))))

(assert (=> d!63638 (= lt!90713 e!142958)))

(declare-fun c!44181 () Bool)

(assert (=> d!63638 (= c!44181 (isEmpty!2022 lt!90117))))

(assert (=> d!63638 (validRegex!224 (regex!653 lt!90116))))

(assert (=> d!63638 (= (matchR!215 (regex!653 lt!90116) lt!90117) lt!90713)))

(declare-fun b!231044 () Bool)

(declare-fun e!142961 () Bool)

(assert (=> b!231044 (= e!142962 e!142961)))

(declare-fun res!106630 () Bool)

(assert (=> b!231044 (=> (not res!106630) (not e!142961))))

(assert (=> b!231044 (= res!106630 (not lt!90713))))

(declare-fun b!231045 () Bool)

(declare-fun call!11852 () Bool)

(assert (=> b!231045 (= e!142963 (= lt!90713 call!11852))))

(declare-fun b!231046 () Bool)

(declare-fun e!142957 () Bool)

(assert (=> b!231046 (= e!142961 e!142957)))

(declare-fun res!106629 () Bool)

(assert (=> b!231046 (=> res!106629 e!142957)))

(assert (=> b!231046 (= res!106629 call!11852)))

(declare-fun bm!11847 () Bool)

(assert (=> bm!11847 (= call!11852 (isEmpty!2022 lt!90117))))

(declare-fun b!231047 () Bool)

(assert (=> b!231047 (= e!142958 (nullable!149 (regex!653 lt!90116)))))

(declare-fun b!231048 () Bool)

(assert (=> b!231048 (= e!142957 (not (= (head!801 lt!90117) (c!43934 (regex!653 lt!90116)))))))

(declare-fun b!231049 () Bool)

(declare-fun res!106632 () Bool)

(assert (=> b!231049 (=> (not res!106632) (not e!142960))))

(assert (=> b!231049 (= res!106632 (isEmpty!2022 (tail!428 lt!90117)))))

(declare-fun b!231050 () Bool)

(declare-fun res!106628 () Bool)

(assert (=> b!231050 (=> (not res!106628) (not e!142960))))

(assert (=> b!231050 (= res!106628 (not call!11852))))

(declare-fun b!231051 () Bool)

(declare-fun res!106633 () Bool)

(assert (=> b!231051 (=> res!106633 e!142957)))

(assert (=> b!231051 (= res!106633 (not (isEmpty!2022 (tail!428 lt!90117))))))

(declare-fun b!231052 () Bool)

(assert (=> b!231052 (= e!142960 (= (head!801 lt!90117) (c!43934 (regex!653 lt!90116))))))

(assert (= (and d!63638 c!44181) b!231047))

(assert (= (and d!63638 (not c!44181)) b!231039))

(assert (= (and d!63638 c!44180) b!231045))

(assert (= (and d!63638 (not c!44180)) b!231041))

(assert (= (and b!231041 c!44182) b!231040))

(assert (= (and b!231041 (not c!44182)) b!231042))

(assert (= (and b!231042 (not res!106626)) b!231043))

(assert (= (and b!231043 res!106631) b!231050))

(assert (= (and b!231050 res!106628) b!231049))

(assert (= (and b!231049 res!106632) b!231052))

(assert (= (and b!231043 (not res!106627)) b!231044))

(assert (= (and b!231044 res!106630) b!231046))

(assert (= (and b!231046 (not res!106629)) b!231051))

(assert (= (and b!231051 (not res!106633)) b!231048))

(assert (= (or b!231045 b!231046 b!231050) bm!11847))

(declare-fun m!273383 () Bool)

(assert (=> b!231047 m!273383))

(assert (=> b!231039 m!271387))

(assert (=> b!231039 m!271387))

(declare-fun m!273385 () Bool)

(assert (=> b!231039 m!273385))

(declare-fun m!273387 () Bool)

(assert (=> b!231039 m!273387))

(assert (=> b!231039 m!273385))

(assert (=> b!231039 m!273387))

(declare-fun m!273389 () Bool)

(assert (=> b!231039 m!273389))

(declare-fun m!273391 () Bool)

(assert (=> d!63638 m!273391))

(declare-fun m!273393 () Bool)

(assert (=> d!63638 m!273393))

(assert (=> b!231051 m!273387))

(assert (=> b!231051 m!273387))

(declare-fun m!273395 () Bool)

(assert (=> b!231051 m!273395))

(assert (=> bm!11847 m!273391))

(assert (=> b!231048 m!271387))

(assert (=> b!231049 m!273387))

(assert (=> b!231049 m!273387))

(assert (=> b!231049 m!273395))

(assert (=> b!231052 m!271387))

(assert (=> b!229935 d!63638))

(declare-fun d!63640 () Bool)

(assert (=> d!63640 (= (get!1110 lt!90126) (v!14342 lt!90126))))

(assert (=> b!229935 d!63640))

(declare-fun d!63642 () Bool)

(declare-fun isEmpty!2032 (Option!653) Bool)

(assert (=> d!63642 (= (isDefined!504 (maxPrefixZipperSequence!232 thiss!17480 rules!1920 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465))))) (not (isEmpty!2032 (maxPrefixZipperSequence!232 thiss!17480 rules!1920 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))))

(declare-fun bs!24515 () Bool)

(assert (= bs!24515 d!63642))

(assert (=> bs!24515 m!271289))

(declare-fun m!273397 () Bool)

(assert (=> bs!24515 m!273397))

(assert (=> b!229934 d!63642))

(declare-fun b!231069 () Bool)

(declare-fun e!142979 () Bool)

(declare-fun lt!90731 () Option!653)

(declare-fun get!1112 (Option!653) tuple2!3782)

(assert (=> b!231069 (= e!142979 (= (list!1344 (_2!2107 (get!1112 lt!90731))) (_2!2105 (get!1109 (maxPrefix!269 thiss!17480 rules!1920 (list!1344 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))))))

(declare-fun b!231070 () Bool)

(declare-fun e!142976 () Option!653)

(declare-fun lt!90733 () Option!653)

(declare-fun lt!90730 () Option!653)

(assert (=> b!231070 (= e!142976 (ite (and ((_ is None!652) lt!90733) ((_ is None!652) lt!90730)) None!652 (ite ((_ is None!652) lt!90730) lt!90733 (ite ((_ is None!652) lt!90733) lt!90730 (ite (>= (size!2782 (_1!2107 (v!14343 lt!90733))) (size!2782 (_1!2107 (v!14343 lt!90730)))) lt!90733 lt!90730)))))))

(declare-fun call!11855 () Option!653)

(assert (=> b!231070 (= lt!90733 call!11855)))

(assert (=> b!231070 (= lt!90730 (maxPrefixZipperSequence!232 thiss!17480 (t!33487 rules!1920) (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))

(declare-fun b!231071 () Bool)

(declare-fun res!106649 () Bool)

(declare-fun e!142980 () Bool)

(assert (=> b!231071 (=> (not res!106649) (not e!142980))))

(declare-fun e!142978 () Bool)

(assert (=> b!231071 (= res!106649 e!142978)))

(declare-fun res!106651 () Bool)

(assert (=> b!231071 (=> res!106651 e!142978)))

(assert (=> b!231071 (= res!106651 (not (isDefined!504 lt!90731)))))

(declare-fun b!231072 () Bool)

(declare-fun e!142981 () Bool)

(assert (=> b!231072 (= e!142980 e!142981)))

(declare-fun res!106647 () Bool)

(assert (=> b!231072 (=> res!106647 e!142981)))

(assert (=> b!231072 (= res!106647 (not (isDefined!504 lt!90731)))))

(declare-fun b!231073 () Bool)

(assert (=> b!231073 (= e!142981 e!142979)))

(declare-fun res!106646 () Bool)

(assert (=> b!231073 (=> (not res!106646) (not e!142979))))

(assert (=> b!231073 (= res!106646 (= (_1!2107 (get!1112 lt!90731)) (_1!2105 (get!1109 (maxPrefix!269 thiss!17480 rules!1920 (list!1344 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))))))

(declare-fun b!231074 () Bool)

(declare-fun e!142977 () Bool)

(declare-fun maxPrefixZipper!85 (LexerInterface!539 List!3491 List!3490) Option!651)

(assert (=> b!231074 (= e!142977 (= (list!1344 (_2!2107 (get!1112 lt!90731))) (_2!2105 (get!1109 (maxPrefixZipper!85 thiss!17480 rules!1920 (list!1344 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))))))

(declare-fun b!231075 () Bool)

(assert (=> b!231075 (= e!142976 call!11855)))

(declare-fun d!63644 () Bool)

(assert (=> d!63644 e!142980))

(declare-fun res!106650 () Bool)

(assert (=> d!63644 (=> (not res!106650) (not e!142980))))

(assert (=> d!63644 (= res!106650 (= (isDefined!504 lt!90731) (isDefined!502 (maxPrefixZipper!85 thiss!17480 rules!1920 (list!1344 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465))))))))))

(assert (=> d!63644 (= lt!90731 e!142976)))

(declare-fun c!44185 () Bool)

(assert (=> d!63644 (= c!44185 (and ((_ is Cons!3481) rules!1920) ((_ is Nil!3481) (t!33487 rules!1920))))))

(declare-fun lt!90732 () Unit!4012)

(declare-fun lt!90728 () Unit!4012)

(assert (=> d!63644 (= lt!90732 lt!90728)))

(declare-fun lt!90734 () List!3490)

(declare-fun lt!90729 () List!3490)

(assert (=> d!63644 (isPrefix!349 lt!90734 lt!90729)))

(assert (=> d!63644 (= lt!90728 (lemmaIsPrefixRefl!181 lt!90734 lt!90729))))

(assert (=> d!63644 (= lt!90729 (list!1344 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))

(assert (=> d!63644 (= lt!90734 (list!1344 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))

(assert (=> d!63644 (rulesValidInductive!170 thiss!17480 rules!1920)))

(assert (=> d!63644 (= (maxPrefixZipperSequence!232 thiss!17480 rules!1920 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))) lt!90731)))

(declare-fun bm!11850 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!86 (LexerInterface!539 Rule!1106 BalanceConc!2264) Option!653)

(assert (=> bm!11850 (= call!11855 (maxPrefixOneRuleZipperSequence!86 thiss!17480 (h!8878 rules!1920) (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))

(declare-fun b!231076 () Bool)

(assert (=> b!231076 (= e!142978 e!142977)))

(declare-fun res!106648 () Bool)

(assert (=> b!231076 (=> (not res!106648) (not e!142977))))

(assert (=> b!231076 (= res!106648 (= (_1!2107 (get!1112 lt!90731)) (_1!2105 (get!1109 (maxPrefixZipper!85 thiss!17480 rules!1920 (list!1344 (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465)))))))))))

(assert (= (and d!63644 c!44185) b!231075))

(assert (= (and d!63644 (not c!44185)) b!231070))

(assert (= (or b!231075 b!231070) bm!11850))

(assert (= (and d!63644 res!106650) b!231071))

(assert (= (and b!231071 (not res!106651)) b!231076))

(assert (= (and b!231076 res!106648) b!231074))

(assert (= (and b!231071 res!106649) b!231072))

(assert (= (and b!231072 (not res!106647)) b!231073))

(assert (= (and b!231073 res!106646) b!231069))

(declare-fun m!273399 () Bool)

(assert (=> b!231072 m!273399))

(assert (=> d!63644 m!271287))

(declare-fun m!273401 () Bool)

(assert (=> d!63644 m!273401))

(declare-fun m!273403 () Bool)

(assert (=> d!63644 m!273403))

(declare-fun m!273405 () Bool)

(assert (=> d!63644 m!273405))

(declare-fun m!273407 () Bool)

(assert (=> d!63644 m!273407))

(declare-fun m!273409 () Bool)

(assert (=> d!63644 m!273409))

(assert (=> d!63644 m!273401))

(assert (=> d!63644 m!273407))

(assert (=> d!63644 m!273399))

(assert (=> d!63644 m!272343))

(assert (=> b!231071 m!273399))

(declare-fun m!273411 () Bool)

(assert (=> b!231073 m!273411))

(assert (=> b!231073 m!271287))

(assert (=> b!231073 m!273401))

(assert (=> b!231073 m!273401))

(declare-fun m!273413 () Bool)

(assert (=> b!231073 m!273413))

(assert (=> b!231073 m!273413))

(declare-fun m!273415 () Bool)

(assert (=> b!231073 m!273415))

(assert (=> b!231070 m!271287))

(declare-fun m!273417 () Bool)

(assert (=> b!231070 m!273417))

(assert (=> b!231074 m!271287))

(assert (=> b!231074 m!273401))

(assert (=> b!231074 m!273407))

(declare-fun m!273419 () Bool)

(assert (=> b!231074 m!273419))

(assert (=> b!231074 m!273411))

(declare-fun m!273421 () Bool)

(assert (=> b!231074 m!273421))

(assert (=> b!231074 m!273401))

(assert (=> b!231074 m!273407))

(assert (=> b!231076 m!273411))

(assert (=> b!231076 m!271287))

(assert (=> b!231076 m!273401))

(assert (=> b!231076 m!273401))

(assert (=> b!231076 m!273407))

(assert (=> b!231076 m!273407))

(assert (=> b!231076 m!273419))

(assert (=> bm!11850 m!271287))

(declare-fun m!273423 () Bool)

(assert (=> bm!11850 m!273423))

(assert (=> b!231069 m!271287))

(assert (=> b!231069 m!273401))

(assert (=> b!231069 m!273413))

(assert (=> b!231069 m!273415))

(assert (=> b!231069 m!273401))

(assert (=> b!231069 m!273413))

(assert (=> b!231069 m!273411))

(assert (=> b!231069 m!273421))

(assert (=> b!229934 d!63644))

(declare-fun d!63646 () Bool)

(assert (=> d!63646 (= (seqFromList!683 (originalCharacters!696 (h!8879 tokens!465))) (fromListB!252 (originalCharacters!696 (h!8879 tokens!465))))))

(declare-fun bs!24516 () Bool)

(assert (= bs!24516 d!63646))

(declare-fun m!273425 () Bool)

(assert (=> bs!24516 m!273425))

(assert (=> b!229934 d!63646))

(declare-fun d!63648 () Bool)

(assert (=> d!63648 (dynLambda!1635 lambda!7336 (h!8879 tokens!465))))

(declare-fun lt!90735 () Unit!4012)

(assert (=> d!63648 (= lt!90735 (choose!2223 tokens!465 lambda!7336 (h!8879 tokens!465)))))

(declare-fun e!142982 () Bool)

(assert (=> d!63648 e!142982))

(declare-fun res!106652 () Bool)

(assert (=> d!63648 (=> (not res!106652) (not e!142982))))

(assert (=> d!63648 (= res!106652 (forall!785 tokens!465 lambda!7336))))

(assert (=> d!63648 (= (forallContained!220 tokens!465 lambda!7336 (h!8879 tokens!465)) lt!90735)))

(declare-fun b!231077 () Bool)

(assert (=> b!231077 (= e!142982 (contains!632 tokens!465 (h!8879 tokens!465)))))

(assert (= (and d!63648 res!106652) b!231077))

(declare-fun b_lambda!6415 () Bool)

(assert (=> (not b_lambda!6415) (not d!63648)))

(declare-fun m!273427 () Bool)

(assert (=> d!63648 m!273427))

(declare-fun m!273429 () Bool)

(assert (=> d!63648 m!273429))

(assert (=> d!63648 m!272633))

(declare-fun m!273431 () Bool)

(assert (=> b!231077 m!273431))

(assert (=> b!229934 d!63648))

(declare-fun d!63650 () Bool)

(assert (=> d!63650 (= (inv!4327 (tag!853 (h!8878 rules!1920))) (= (mod (str.len (value!22925 (tag!853 (h!8878 rules!1920)))) 2) 0))))

(assert (=> b!229913 d!63650))

(declare-fun d!63652 () Bool)

(declare-fun res!106653 () Bool)

(declare-fun e!142983 () Bool)

(assert (=> d!63652 (=> (not res!106653) (not e!142983))))

(assert (=> d!63652 (= res!106653 (semiInverseModEq!223 (toChars!1207 (transformation!653 (h!8878 rules!1920))) (toValue!1348 (transformation!653 (h!8878 rules!1920)))))))

(assert (=> d!63652 (= (inv!4330 (transformation!653 (h!8878 rules!1920))) e!142983)))

(declare-fun b!231078 () Bool)

(assert (=> b!231078 (= e!142983 (equivClasses!206 (toChars!1207 (transformation!653 (h!8878 rules!1920))) (toValue!1348 (transformation!653 (h!8878 rules!1920)))))))

(assert (= (and d!63652 res!106653) b!231078))

(declare-fun m!273433 () Bool)

(assert (=> d!63652 m!273433))

(declare-fun m!273435 () Bool)

(assert (=> b!231078 m!273435))

(assert (=> b!229913 d!63652))

(declare-fun d!63654 () Bool)

(declare-fun res!106654 () Bool)

(declare-fun e!142984 () Bool)

(assert (=> d!63654 (=> (not res!106654) (not e!142984))))

(assert (=> d!63654 (= res!106654 (not (isEmpty!2022 (originalCharacters!696 (h!8879 tokens!465)))))))

(assert (=> d!63654 (= (inv!4331 (h!8879 tokens!465)) e!142984)))

(declare-fun b!231079 () Bool)

(declare-fun res!106655 () Bool)

(assert (=> b!231079 (=> (not res!106655) (not e!142984))))

(assert (=> b!231079 (= res!106655 (= (originalCharacters!696 (h!8879 tokens!465)) (list!1344 (dynLambda!1634 (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (value!22926 (h!8879 tokens!465))))))))

(declare-fun b!231080 () Bool)

(assert (=> b!231080 (= e!142984 (= (size!2782 (h!8879 tokens!465)) (size!2788 (originalCharacters!696 (h!8879 tokens!465)))))))

(assert (= (and d!63654 res!106654) b!231079))

(assert (= (and b!231079 res!106655) b!231080))

(declare-fun b_lambda!6417 () Bool)

(assert (=> (not b_lambda!6417) (not b!231079)))

(assert (=> b!231079 t!33521))

(declare-fun b_and!17119 () Bool)

(assert (= b_and!17113 (and (=> t!33521 result!14618) b_and!17119)))

(assert (=> b!231079 t!33523))

(declare-fun b_and!17121 () Bool)

(assert (= b_and!17115 (and (=> t!33523 result!14620) b_and!17121)))

(assert (=> b!231079 t!33525))

(declare-fun b_and!17123 () Bool)

(assert (= b_and!17117 (and (=> t!33525 result!14622) b_and!17123)))

(declare-fun m!273437 () Bool)

(assert (=> d!63654 m!273437))

(assert (=> b!231079 m!272067))

(assert (=> b!231079 m!272067))

(declare-fun m!273439 () Bool)

(assert (=> b!231079 m!273439))

(declare-fun m!273441 () Bool)

(assert (=> b!231080 m!273441))

(assert (=> b!229912 d!63654))

(declare-fun d!63656 () Bool)

(assert (=> d!63656 (not (matchR!215 (regex!653 (rule!1210 lt!90143)) lt!90117))))

(declare-fun lt!90738 () Unit!4012)

(declare-fun choose!2228 (Regex!877 List!3490 C!2676) Unit!4012)

(assert (=> d!63656 (= lt!90738 (choose!2228 (regex!653 (rule!1210 lt!90143)) lt!90117 lt!90138))))

(assert (=> d!63656 (validRegex!224 (regex!653 (rule!1210 lt!90143)))))

(assert (=> d!63656 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!52 (regex!653 (rule!1210 lt!90143)) lt!90117 lt!90138) lt!90738)))

(declare-fun bs!24517 () Bool)

(assert (= bs!24517 d!63656))

(assert (=> bs!24517 m!271429))

(declare-fun m!273443 () Bool)

(assert (=> bs!24517 m!273443))

(declare-fun m!273445 () Bool)

(assert (=> bs!24517 m!273445))

(assert (=> b!229933 d!63656))

(declare-fun b!231081 () Bool)

(declare-fun e!142986 () Bool)

(assert (=> b!231081 (= e!142986 (matchR!215 (derivativeStep!115 (regex!653 (rule!1210 lt!90143)) (head!801 lt!90117)) (tail!428 lt!90117)))))

(declare-fun b!231082 () Bool)

(declare-fun e!142987 () Bool)

(declare-fun lt!90739 () Bool)

(assert (=> b!231082 (= e!142987 (not lt!90739))))

(declare-fun b!231083 () Bool)

(declare-fun e!142991 () Bool)

(assert (=> b!231083 (= e!142991 e!142987)))

(declare-fun c!44189 () Bool)

(assert (=> b!231083 (= c!44189 ((_ is EmptyLang!877) (regex!653 (rule!1210 lt!90143))))))

(declare-fun b!231084 () Bool)

(declare-fun res!106656 () Bool)

(declare-fun e!142990 () Bool)

(assert (=> b!231084 (=> res!106656 e!142990)))

(assert (=> b!231084 (= res!106656 (not ((_ is ElementMatch!877) (regex!653 (rule!1210 lt!90143)))))))

(assert (=> b!231084 (= e!142987 e!142990)))

(declare-fun b!231085 () Bool)

(declare-fun res!106657 () Bool)

(assert (=> b!231085 (=> res!106657 e!142990)))

(declare-fun e!142988 () Bool)

(assert (=> b!231085 (= res!106657 e!142988)))

(declare-fun res!106661 () Bool)

(assert (=> b!231085 (=> (not res!106661) (not e!142988))))

(assert (=> b!231085 (= res!106661 lt!90739)))

(declare-fun d!63658 () Bool)

(assert (=> d!63658 e!142991))

(declare-fun c!44187 () Bool)

(assert (=> d!63658 (= c!44187 ((_ is EmptyExpr!877) (regex!653 (rule!1210 lt!90143))))))

(assert (=> d!63658 (= lt!90739 e!142986)))

(declare-fun c!44188 () Bool)

(assert (=> d!63658 (= c!44188 (isEmpty!2022 lt!90117))))

(assert (=> d!63658 (validRegex!224 (regex!653 (rule!1210 lt!90143)))))

(assert (=> d!63658 (= (matchR!215 (regex!653 (rule!1210 lt!90143)) lt!90117) lt!90739)))

(declare-fun b!231086 () Bool)

(declare-fun e!142989 () Bool)

(assert (=> b!231086 (= e!142990 e!142989)))

(declare-fun res!106660 () Bool)

(assert (=> b!231086 (=> (not res!106660) (not e!142989))))

(assert (=> b!231086 (= res!106660 (not lt!90739))))

(declare-fun b!231087 () Bool)

(declare-fun call!11856 () Bool)

(assert (=> b!231087 (= e!142991 (= lt!90739 call!11856))))

(declare-fun b!231088 () Bool)

(declare-fun e!142985 () Bool)

(assert (=> b!231088 (= e!142989 e!142985)))

(declare-fun res!106659 () Bool)

(assert (=> b!231088 (=> res!106659 e!142985)))

(assert (=> b!231088 (= res!106659 call!11856)))

(declare-fun bm!11851 () Bool)

(assert (=> bm!11851 (= call!11856 (isEmpty!2022 lt!90117))))

(declare-fun b!231089 () Bool)

(assert (=> b!231089 (= e!142986 (nullable!149 (regex!653 (rule!1210 lt!90143))))))

(declare-fun b!231090 () Bool)

(assert (=> b!231090 (= e!142985 (not (= (head!801 lt!90117) (c!43934 (regex!653 (rule!1210 lt!90143))))))))

(declare-fun b!231091 () Bool)

(declare-fun res!106662 () Bool)

(assert (=> b!231091 (=> (not res!106662) (not e!142988))))

(assert (=> b!231091 (= res!106662 (isEmpty!2022 (tail!428 lt!90117)))))

(declare-fun b!231092 () Bool)

(declare-fun res!106658 () Bool)

(assert (=> b!231092 (=> (not res!106658) (not e!142988))))

(assert (=> b!231092 (= res!106658 (not call!11856))))

(declare-fun b!231093 () Bool)

(declare-fun res!106663 () Bool)

(assert (=> b!231093 (=> res!106663 e!142985)))

(assert (=> b!231093 (= res!106663 (not (isEmpty!2022 (tail!428 lt!90117))))))

(declare-fun b!231094 () Bool)

(assert (=> b!231094 (= e!142988 (= (head!801 lt!90117) (c!43934 (regex!653 (rule!1210 lt!90143)))))))

(assert (= (and d!63658 c!44188) b!231089))

(assert (= (and d!63658 (not c!44188)) b!231081))

(assert (= (and d!63658 c!44187) b!231087))

(assert (= (and d!63658 (not c!44187)) b!231083))

(assert (= (and b!231083 c!44189) b!231082))

(assert (= (and b!231083 (not c!44189)) b!231084))

(assert (= (and b!231084 (not res!106656)) b!231085))

(assert (= (and b!231085 res!106661) b!231092))

(assert (= (and b!231092 res!106658) b!231091))

(assert (= (and b!231091 res!106662) b!231094))

(assert (= (and b!231085 (not res!106657)) b!231086))

(assert (= (and b!231086 res!106660) b!231088))

(assert (= (and b!231088 (not res!106659)) b!231093))

(assert (= (and b!231093 (not res!106663)) b!231090))

(assert (= (or b!231087 b!231088 b!231092) bm!11851))

(declare-fun m!273447 () Bool)

(assert (=> b!231089 m!273447))

(assert (=> b!231081 m!271387))

(assert (=> b!231081 m!271387))

(declare-fun m!273449 () Bool)

(assert (=> b!231081 m!273449))

(assert (=> b!231081 m!273387))

(assert (=> b!231081 m!273449))

(assert (=> b!231081 m!273387))

(declare-fun m!273451 () Bool)

(assert (=> b!231081 m!273451))

(assert (=> d!63658 m!273391))

(assert (=> d!63658 m!273445))

(assert (=> b!231093 m!273387))

(assert (=> b!231093 m!273387))

(assert (=> b!231093 m!273395))

(assert (=> bm!11851 m!273391))

(assert (=> b!231090 m!271387))

(assert (=> b!231091 m!273387))

(assert (=> b!231091 m!273387))

(assert (=> b!231091 m!273395))

(assert (=> b!231094 m!271387))

(assert (=> b!229933 d!63658))

(declare-fun d!63660 () Bool)

(declare-fun lt!90740 () Bool)

(assert (=> d!63660 (= lt!90740 (isEmpty!2022 (list!1344 (_2!2104 lt!90107))))))

(assert (=> d!63660 (= lt!90740 (isEmpty!2031 (c!43933 (_2!2104 lt!90107))))))

(assert (=> d!63660 (= (isEmpty!2020 (_2!2104 lt!90107)) lt!90740)))

(declare-fun bs!24518 () Bool)

(assert (= bs!24518 d!63660))

(declare-fun m!273453 () Bool)

(assert (=> bs!24518 m!273453))

(assert (=> bs!24518 m!273453))

(declare-fun m!273455 () Bool)

(assert (=> bs!24518 m!273455))

(declare-fun m!273457 () Bool)

(assert (=> bs!24518 m!273457))

(assert (=> b!229911 d!63660))

(declare-fun b!231099 () Bool)

(declare-fun e!142994 () Bool)

(declare-fun tp_is_empty!1743 () Bool)

(declare-fun tp!94036 () Bool)

(assert (=> b!231099 (= e!142994 (and tp_is_empty!1743 tp!94036))))

(assert (=> b!229920 (= tp!93959 e!142994)))

(assert (= (and b!229920 ((_ is Cons!3480) (originalCharacters!696 (h!8879 tokens!465)))) b!231099))

(declare-fun e!142997 () Bool)

(assert (=> b!229899 (= tp!93961 e!142997)))

(declare-fun b!231111 () Bool)

(declare-fun tp!94050 () Bool)

(declare-fun tp!94048 () Bool)

(assert (=> b!231111 (= e!142997 (and tp!94050 tp!94048))))

(declare-fun b!231113 () Bool)

(declare-fun tp!94047 () Bool)

(declare-fun tp!94049 () Bool)

(assert (=> b!231113 (= e!142997 (and tp!94047 tp!94049))))

(declare-fun b!231112 () Bool)

(declare-fun tp!94051 () Bool)

(assert (=> b!231112 (= e!142997 tp!94051)))

(declare-fun b!231110 () Bool)

(assert (=> b!231110 (= e!142997 tp_is_empty!1743)))

(assert (= (and b!229899 ((_ is ElementMatch!877) (regex!653 (rule!1210 (h!8879 tokens!465))))) b!231110))

(assert (= (and b!229899 ((_ is Concat!1553) (regex!653 (rule!1210 (h!8879 tokens!465))))) b!231111))

(assert (= (and b!229899 ((_ is Star!877) (regex!653 (rule!1210 (h!8879 tokens!465))))) b!231112))

(assert (= (and b!229899 ((_ is Union!877) (regex!653 (rule!1210 (h!8879 tokens!465))))) b!231113))

(declare-fun b!231124 () Bool)

(declare-fun b_free!8653 () Bool)

(declare-fun b_next!8653 () Bool)

(assert (=> b!231124 (= b_free!8653 (not b_next!8653))))

(declare-fun tp!94063 () Bool)

(declare-fun b_and!17125 () Bool)

(assert (=> b!231124 (= tp!94063 b_and!17125)))

(declare-fun b_free!8655 () Bool)

(declare-fun b_next!8655 () Bool)

(assert (=> b!231124 (= b_free!8655 (not b_next!8655))))

(declare-fun t!33564 () Bool)

(declare-fun tb!11457 () Bool)

(assert (=> (and b!231124 (= (toChars!1207 (transformation!653 (h!8878 (t!33487 rules!1920)))) (toChars!1207 (transformation!653 (rule!1210 lt!90143)))) t!33564) tb!11457))

(declare-fun result!14662 () Bool)

(assert (= result!14662 result!14624))

(assert (=> d!63382 t!33564))

(declare-fun t!33566 () Bool)

(declare-fun tb!11459 () Bool)

(assert (=> (and b!231124 (= (toChars!1207 (transformation!653 (h!8878 (t!33487 rules!1920)))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170)))) t!33566) tb!11459))

(declare-fun result!14664 () Bool)

(assert (= result!14664 result!14610))

(assert (=> b!230956 t!33566))

(declare-fun tb!11461 () Bool)

(declare-fun t!33568 () Bool)

(assert (=> (and b!231124 (= (toChars!1207 (transformation!653 (h!8878 (t!33487 rules!1920)))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465))))) t!33568) tb!11461))

(declare-fun result!14666 () Bool)

(assert (= result!14666 result!14618))

(assert (=> b!231079 t!33568))

(assert (=> d!63324 t!33568))

(assert (=> d!63320 t!33566))

(declare-fun b_and!17127 () Bool)

(declare-fun tp!94062 () Bool)

(assert (=> b!231124 (= tp!94062 (and (=> t!33564 result!14662) (=> t!33566 result!14664) (=> t!33568 result!14666) b_and!17127))))

(declare-fun e!143006 () Bool)

(assert (=> b!231124 (= e!143006 (and tp!94063 tp!94062))))

(declare-fun b!231123 () Bool)

(declare-fun e!143009 () Bool)

(declare-fun tp!94060 () Bool)

(assert (=> b!231123 (= e!143009 (and tp!94060 (inv!4327 (tag!853 (h!8878 (t!33487 rules!1920)))) (inv!4330 (transformation!653 (h!8878 (t!33487 rules!1920)))) e!143006))))

(declare-fun b!231122 () Bool)

(declare-fun e!143008 () Bool)

(declare-fun tp!94061 () Bool)

(assert (=> b!231122 (= e!143008 (and e!143009 tp!94061))))

(assert (=> b!229919 (= tp!93965 e!143008)))

(assert (= b!231123 b!231124))

(assert (= b!231122 b!231123))

(assert (= (and b!229919 ((_ is Cons!3481) (t!33487 rules!1920))) b!231122))

(declare-fun m!273459 () Bool)

(assert (=> b!231123 m!273459))

(declare-fun m!273461 () Bool)

(assert (=> b!231123 m!273461))

(declare-fun b!231125 () Bool)

(declare-fun e!143010 () Bool)

(declare-fun tp!94064 () Bool)

(assert (=> b!231125 (= e!143010 (and tp_is_empty!1743 tp!94064))))

(assert (=> b!229928 (= tp!93963 e!143010)))

(assert (= (and b!229928 ((_ is Cons!3480) (originalCharacters!696 separatorToken!170))) b!231125))

(declare-fun e!143011 () Bool)

(assert (=> b!229927 (= tp!93957 e!143011)))

(declare-fun b!231127 () Bool)

(declare-fun tp!94068 () Bool)

(declare-fun tp!94066 () Bool)

(assert (=> b!231127 (= e!143011 (and tp!94068 tp!94066))))

(declare-fun b!231129 () Bool)

(declare-fun tp!94065 () Bool)

(declare-fun tp!94067 () Bool)

(assert (=> b!231129 (= e!143011 (and tp!94065 tp!94067))))

(declare-fun b!231128 () Bool)

(declare-fun tp!94069 () Bool)

(assert (=> b!231128 (= e!143011 tp!94069)))

(declare-fun b!231126 () Bool)

(assert (=> b!231126 (= e!143011 tp_is_empty!1743)))

(assert (= (and b!229927 ((_ is ElementMatch!877) (regex!653 (rule!1210 separatorToken!170)))) b!231126))

(assert (= (and b!229927 ((_ is Concat!1553) (regex!653 (rule!1210 separatorToken!170)))) b!231127))

(assert (= (and b!229927 ((_ is Star!877) (regex!653 (rule!1210 separatorToken!170)))) b!231128))

(assert (= (and b!229927 ((_ is Union!877) (regex!653 (rule!1210 separatorToken!170)))) b!231129))

(declare-fun e!143012 () Bool)

(assert (=> b!229913 (= tp!93960 e!143012)))

(declare-fun b!231131 () Bool)

(declare-fun tp!94073 () Bool)

(declare-fun tp!94071 () Bool)

(assert (=> b!231131 (= e!143012 (and tp!94073 tp!94071))))

(declare-fun b!231133 () Bool)

(declare-fun tp!94070 () Bool)

(declare-fun tp!94072 () Bool)

(assert (=> b!231133 (= e!143012 (and tp!94070 tp!94072))))

(declare-fun b!231132 () Bool)

(declare-fun tp!94074 () Bool)

(assert (=> b!231132 (= e!143012 tp!94074)))

(declare-fun b!231130 () Bool)

(assert (=> b!231130 (= e!143012 tp_is_empty!1743)))

(assert (= (and b!229913 ((_ is ElementMatch!877) (regex!653 (h!8878 rules!1920)))) b!231130))

(assert (= (and b!229913 ((_ is Concat!1553) (regex!653 (h!8878 rules!1920)))) b!231131))

(assert (= (and b!229913 ((_ is Star!877) (regex!653 (h!8878 rules!1920)))) b!231132))

(assert (= (and b!229913 ((_ is Union!877) (regex!653 (h!8878 rules!1920)))) b!231133))

(declare-fun b!231147 () Bool)

(declare-fun b_free!8657 () Bool)

(declare-fun b_next!8657 () Bool)

(assert (=> b!231147 (= b_free!8657 (not b_next!8657))))

(declare-fun tp!94088 () Bool)

(declare-fun b_and!17129 () Bool)

(assert (=> b!231147 (= tp!94088 b_and!17129)))

(declare-fun b_free!8659 () Bool)

(declare-fun b_next!8659 () Bool)

(assert (=> b!231147 (= b_free!8659 (not b_next!8659))))

(declare-fun t!33570 () Bool)

(declare-fun tb!11463 () Bool)

(assert (=> (and b!231147 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 (t!33488 tokens!465))))) (toChars!1207 (transformation!653 (rule!1210 lt!90143)))) t!33570) tb!11463))

(declare-fun result!14670 () Bool)

(assert (= result!14670 result!14624))

(assert (=> d!63382 t!33570))

(declare-fun tb!11465 () Bool)

(declare-fun t!33572 () Bool)

(assert (=> (and b!231147 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 (t!33488 tokens!465))))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170)))) t!33572) tb!11465))

(declare-fun result!14672 () Bool)

(assert (= result!14672 result!14610))

(assert (=> b!230956 t!33572))

(declare-fun t!33574 () Bool)

(declare-fun tb!11467 () Bool)

(assert (=> (and b!231147 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 (t!33488 tokens!465))))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465))))) t!33574) tb!11467))

(declare-fun result!14674 () Bool)

(assert (= result!14674 result!14618))

(assert (=> b!231079 t!33574))

(assert (=> d!63324 t!33574))

(assert (=> d!63320 t!33572))

(declare-fun b_and!17131 () Bool)

(declare-fun tp!94089 () Bool)

(assert (=> b!231147 (= tp!94089 (and (=> t!33574 result!14674) (=> t!33570 result!14670) (=> t!33572 result!14672) b_and!17131))))

(declare-fun tp!94086 () Bool)

(declare-fun b!231145 () Bool)

(declare-fun e!143028 () Bool)

(declare-fun e!143027 () Bool)

(assert (=> b!231145 (= e!143028 (and (inv!21 (value!22926 (h!8879 (t!33488 tokens!465)))) e!143027 tp!94086))))

(declare-fun b!231146 () Bool)

(declare-fun e!143026 () Bool)

(declare-fun tp!94085 () Bool)

(assert (=> b!231146 (= e!143027 (and tp!94085 (inv!4327 (tag!853 (rule!1210 (h!8879 (t!33488 tokens!465))))) (inv!4330 (transformation!653 (rule!1210 (h!8879 (t!33488 tokens!465))))) e!143026))))

(declare-fun e!143030 () Bool)

(assert (=> b!229912 (= tp!93966 e!143030)))

(assert (=> b!231147 (= e!143026 (and tp!94088 tp!94089))))

(declare-fun b!231144 () Bool)

(declare-fun tp!94087 () Bool)

(assert (=> b!231144 (= e!143030 (and (inv!4331 (h!8879 (t!33488 tokens!465))) e!143028 tp!94087))))

(assert (= b!231146 b!231147))

(assert (= b!231145 b!231146))

(assert (= b!231144 b!231145))

(assert (= (and b!229912 ((_ is Cons!3482) (t!33488 tokens!465))) b!231144))

(declare-fun m!273463 () Bool)

(assert (=> b!231145 m!273463))

(declare-fun m!273465 () Bool)

(assert (=> b!231146 m!273465))

(declare-fun m!273467 () Bool)

(assert (=> b!231146 m!273467))

(declare-fun m!273469 () Bool)

(assert (=> b!231144 m!273469))

(declare-fun b!231150 () Bool)

(declare-fun e!143033 () Bool)

(assert (=> b!231150 (= e!143033 true)))

(declare-fun b!231149 () Bool)

(declare-fun e!143032 () Bool)

(assert (=> b!231149 (= e!143032 e!143033)))

(declare-fun b!231148 () Bool)

(declare-fun e!143031 () Bool)

(assert (=> b!231148 (= e!143031 e!143032)))

(assert (=> b!229952 e!143031))

(assert (= b!231149 b!231150))

(assert (= b!231148 b!231149))

(assert (= (and b!229952 ((_ is Cons!3481) (t!33487 rules!1920))) b!231148))

(assert (=> b!231150 (< (dynLambda!1629 order!2441 (toValue!1348 (transformation!653 (h!8878 (t!33487 rules!1920))))) (dynLambda!1630 order!2443 lambda!7336))))

(assert (=> b!231150 (< (dynLambda!1631 order!2445 (toChars!1207 (transformation!653 (h!8878 (t!33487 rules!1920))))) (dynLambda!1630 order!2443 lambda!7336))))

(declare-fun b_lambda!6419 () Bool)

(assert (= b_lambda!6365 (or (and b!231147 b_free!8659 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 (t!33488 tokens!465))))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))))) (and b!231124 b_free!8655 (= (toChars!1207 (transformation!653 (h!8878 (t!33487 rules!1920)))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))))) (and b!229902 b_free!8643) (and b!229914 b_free!8639 (= (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))))) (and b!229909 b_free!8635 (= (toChars!1207 (transformation!653 (h!8878 rules!1920))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))))) b_lambda!6419)))

(declare-fun b_lambda!6421 () Bool)

(assert (= b_lambda!6373 (or b!229893 b_lambda!6421)))

(declare-fun bs!24519 () Bool)

(declare-fun d!63662 () Bool)

(assert (= bs!24519 (and d!63662 b!229893)))

(assert (=> bs!24519 (= (dynLambda!1635 lambda!7335 (h!8879 lt!90139)) (not (isSeparator!653 (rule!1210 (h!8879 lt!90139)))))))

(assert (=> b!230480 d!63662))

(declare-fun b_lambda!6423 () Bool)

(assert (= b_lambda!6415 (or b!229934 b_lambda!6423)))

(declare-fun bs!24520 () Bool)

(declare-fun d!63664 () Bool)

(assert (= bs!24520 (and d!63664 b!229934)))

(assert (=> bs!24520 (= (dynLambda!1635 lambda!7336 (h!8879 tokens!465)) (rulesProduceIndividualToken!288 thiss!17480 rules!1920 (h!8879 tokens!465)))))

(assert (=> bs!24520 m!271283))

(assert (=> d!63648 d!63664))

(declare-fun b_lambda!6425 () Bool)

(assert (= b_lambda!6367 (or b!229893 b_lambda!6425)))

(declare-fun bs!24521 () Bool)

(declare-fun d!63666 () Bool)

(assert (= bs!24521 (and d!63666 b!229893)))

(assert (=> bs!24521 (= (dynLambda!1635 lambda!7335 (h!8879 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147)))) (not (isSeparator!653 (rule!1210 (h!8879 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90147)))))))))

(assert (=> b!230373 d!63666))

(declare-fun b_lambda!6427 () Bool)

(assert (= b_lambda!6381 (or b!229934 b_lambda!6427)))

(declare-fun bs!24522 () Bool)

(declare-fun d!63668 () Bool)

(assert (= bs!24522 (and d!63668 b!229934)))

(assert (=> bs!24522 (= (dynLambda!1635 lambda!7336 lt!90143) (rulesProduceIndividualToken!288 thiss!17480 rules!1920 lt!90143))))

(assert (=> bs!24522 m!271389))

(assert (=> d!63458 d!63668))

(declare-fun b_lambda!6429 () Bool)

(assert (= b_lambda!6363 (or (and b!231124 b_free!8655 (= (toChars!1207 (transformation!653 (h!8878 (t!33487 rules!1920)))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))))) (and b!229914 b_free!8639) (and b!229909 b_free!8635 (= (toChars!1207 (transformation!653 (h!8878 rules!1920))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))))) (and b!231147 b_free!8659 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 (t!33488 tokens!465))))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))))) (and b!229902 b_free!8643 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))))) b_lambda!6429)))

(declare-fun b_lambda!6431 () Bool)

(assert (= b_lambda!6413 (or b!229893 b_lambda!6431)))

(declare-fun bs!24523 () Bool)

(declare-fun d!63670 () Bool)

(assert (= bs!24523 (and d!63670 b!229893)))

(assert (=> bs!24523 (= (dynLambda!1635 lambda!7335 (h!8879 tokens!465)) (not (isSeparator!653 (rule!1210 (h!8879 tokens!465)))))))

(assert (=> b!231037 d!63670))

(declare-fun b_lambda!6433 () Bool)

(assert (= b_lambda!6417 (or (and b!231147 b_free!8659 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 (t!33488 tokens!465))))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))))) (and b!231124 b_free!8655 (= (toChars!1207 (transformation!653 (h!8878 (t!33487 rules!1920)))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))))) (and b!229902 b_free!8643) (and b!229914 b_free!8639 (= (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))))) (and b!229909 b_free!8635 (= (toChars!1207 (transformation!653 (h!8878 rules!1920))) (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))))) b_lambda!6433)))

(declare-fun b_lambda!6435 () Bool)

(assert (= b_lambda!6369 (or b!229893 b_lambda!6435)))

(declare-fun bs!24524 () Bool)

(declare-fun d!63672 () Bool)

(assert (= bs!24524 (and d!63672 b!229893)))

(assert (=> bs!24524 (= (dynLambda!1635 lambda!7335 (h!8879 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134)))) (not (isSeparator!653 (rule!1210 (h!8879 (_1!2106 (lexList!167 thiss!17480 rules!1920 lt!90134)))))))))

(assert (=> b!230394 d!63672))

(declare-fun b_lambda!6437 () Bool)

(assert (= b_lambda!6411 (or (and b!231124 b_free!8655 (= (toChars!1207 (transformation!653 (h!8878 (t!33487 rules!1920)))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))))) (and b!229914 b_free!8639) (and b!229909 b_free!8635 (= (toChars!1207 (transformation!653 (h!8878 rules!1920))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))))) (and b!231147 b_free!8659 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 (t!33488 tokens!465))))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))))) (and b!229902 b_free!8643 (= (toChars!1207 (transformation!653 (rule!1210 (h!8879 tokens!465)))) (toChars!1207 (transformation!653 (rule!1210 separatorToken!170))))) b_lambda!6437)))

(check-sat (not d!63382) b_and!17125 (not b!230485) (not b!230338) (not d!63648) (not b!230679) (not bm!11741) (not d!63320) (not b!230337) (not b!231052) (not d!63476) (not b!230958) (not b!231080) (not d!63346) (not b!231145) (not d!63340) (not b!231078) (not d!63652) (not b!231076) (not d!63458) (not b!230191) (not d!63642) (not d!63580) (not b_next!8641) (not b!230974) (not b!230081) (not b!230957) (not b!231004) (not b!231090) (not bm!11835) (not b!230946) (not b!231007) (not b!230168) b_and!17131 (not bm!11847) (not b!231030) (not b_next!8653) (not b!230155) (not b!231010) (not b!230966) b_and!17119 (not b!231009) (not b!231012) (not bm!11761) (not d!63616) (not d!63454) (not bm!11760) (not bm!11834) b_and!17127 (not d!63584) (not d!63638) (not d!63376) (not b!230333) (not d!63356) (not d!63402) (not d!63452) (not b!231070) (not b!230521) (not b!230392) (not b!231113) (not b!230390) (not d!63352) (not b_lambda!6435) b_and!17053 (not b!230951) (not b!230707) (not b!230350) (not b_next!8637) (not b!231051) (not b_lambda!6437) (not d!63474) (not b!230968) (not b!231132) (not bm!11776) (not b!230947) (not d!63330) (not d!63386) b_and!17045 (not d!63610) (not bm!11843) (not b!231002) (not d!63582) (not d!63400) (not b!230938) (not b!230950) (not d!63254) (not b!230399) (not d!63632) (not b!230165) (not d!63292) (not d!63466) (not b!230575) (not d!63328) b_and!17129 (not d!63468) (not bm!11800) (not bm!11850) (not b!231093) (not b!230943) (not b!231128) (not tb!11427) (not d!63440) (not b!230944) (not b_lambda!6425) (not b!231091) (not b!230699) (not b!230242) (not bm!11737) (not b!231122) (not b!231019) (not d!63586) (not d!63478) (not b!230701) (not d!63436) (not b!230979) (not b!230072) (not b!231022) (not b_next!8659) (not b!231073) (not b!230395) (not b!230986) (not b!231005) (not b!230937) (not b!230581) (not b!231079) (not b!230949) (not b!231146) (not bm!11766) (not b_next!8633) (not b!230941) (not b_lambda!6375) (not b!230948) (not b!230687) (not b!230481) (not b!230689) (not b!230348) (not d!63628) (not b!230630) (not b!230335) (not b!230469) (not b!230942) (not d!63456) (not b!230976) (not bm!11842) (not b!230355) (not b!231081) (not b!230163) (not b!231123) (not b!230491) (not d!63282) (not b!230691) (not b!230969) (not b!230682) (not d!63654) (not b!230973) (not b!230577) (not b!230282) (not b!230971) (not b!230705) (not d!63336) (not b!231112) (not d!63634) (not b!230980) (not b!231049) (not b!230473) (not b_next!8635) (not b!230680) (not b!230684) (not b!230582) (not bm!11775) (not b_lambda!6427) (not b!230698) (not b!231039) (not b!230676) (not b!230470) (not b!231071) (not b!230671) (not b!230981) (not bm!11844) (not b!231099) (not b!230522) (not b!230340) (not b!230939) (not b!230359) (not b!231074) (not bm!11803) (not b!230972) (not b!230351) (not b!231023) (not d!63390) (not b!230576) (not b!230686) (not bs!24520) (not b!230227) (not b!230068) (not b!230404) b_and!17049 (not d!63288) (not d!63348) (not b!231031) (not b!230696) (not b_lambda!6431) (not d!63438) (not b_next!8639) (not bm!11846) (not b!231077) (not bs!24522) (not b!230378) (not b!230286) (not b!231048) (not d!63644) (not d!63660) (not d!63232) (not d!63646) (not b!230999) (not d!63334) (not bm!11801) (not d!63324) (not b!230358) (not b_next!8643) (not b_lambda!6421) b_and!17123 (not b!230290) (not b!230912) (not b!230956) (not b!230283) (not bm!11778) (not d!63658) (not b!230703) (not bm!11838) (not b!230164) (not b!230960) (not tb!11421) (not b!230961) (not d!63252) (not b!230492) (not bm!11781) (not b!230523) (not b!231015) (not bm!11837) (not b!231129) (not d!63308) (not b!230998) (not b!230983) (not bm!11754) (not b!230401) (not d!63286) (not d!63384) (not b!230289) (not b!231094) (not b!230628) (not d!63290) (not b!230472) (not b!230995) (not b!230347) tp_is_empty!1743 (not d!63612) (not bm!11836) (not b!230403) (not b!231125) (not bm!11839) (not b!230241) (not b!231016) (not b!231038) (not b_next!8657) (not bm!11755) (not b!230182) (not b!231028) (not bm!11722) (not tb!11433) (not b!230183) (not b!231032) (not d!63460) (not b!231127) (not d!63446) (not d!63326) (not b!231047) (not d!63380) (not b!230070) (not d!63592) (not d!63374) (not d!63344) (not b!230977) (not b!230218) (not b!230393) (not b!230332) (not d!63354) (not b!230580) (not b_next!8655) (not b!230683) (not b!230690) (not b!231144) (not d!63234) (not d!63448) (not d!63574) (not b!230706) (not d!63332) (not b!230681) (not d!63656) (not b!230702) (not b!230190) (not b!230354) (not d!63472) (not bm!11739) b_and!17121 (not b!230167) (not b_lambda!6433) (not b_lambda!6423) (not d!63602) (not b!230994) (not b!230677) (not b!231133) (not b!230911) (not d!63404) (not b!231148) (not d!63596) (not b!230574) (not bm!11738) (not d!63322) (not b!230984) (not d!63620) (not d!63278) (not b!230975) (not bm!11840) (not b!231069) (not bm!11753) (not b!230996) (not b!230192) (not b!230940) (not d!63578) (not d!63594) (not d!63618) (not b!231131) (not d!63378) (not d!63406) (not d!63342) (not b!230374) (not d!63450) (not d!63588) (not bm!11756) (not b_lambda!6429) (not d!63480) (not b!231111) (not b!231072) (not b!231026) (not b!230578) (not b_lambda!6419) (not b!230678) (not b!230407) (not b!231089) (not d!63604) (not d!63626) (not bm!11851))
(check-sat b_and!17125 (not b_next!8641) b_and!17053 (not b_next!8637) b_and!17045 b_and!17129 (not b_next!8659) (not b_next!8633) (not b_next!8635) b_and!17049 b_and!17123 (not b_next!8657) (not b_next!8655) b_and!17121 b_and!17131 (not b_next!8653) b_and!17119 b_and!17127 (not b_next!8639) (not b_next!8643))

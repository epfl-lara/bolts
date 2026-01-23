; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!314390 () Bool)

(assert start!314390)

(declare-fun b!3377075 () Bool)

(declare-fun b_free!88305 () Bool)

(declare-fun b_next!89009 () Bool)

(assert (=> b!3377075 (= b_free!88305 (not b_next!89009))))

(declare-fun tp!1056146 () Bool)

(declare-fun b_and!234479 () Bool)

(assert (=> b!3377075 (= tp!1056146 b_and!234479)))

(declare-fun b_free!88307 () Bool)

(declare-fun b_next!89011 () Bool)

(assert (=> b!3377075 (= b_free!88307 (not b_next!89011))))

(declare-fun tp!1056143 () Bool)

(declare-fun b_and!234481 () Bool)

(assert (=> b!3377075 (= tp!1056143 b_and!234481)))

(declare-fun b!3377056 () Bool)

(declare-fun b_free!88309 () Bool)

(declare-fun b_next!89013 () Bool)

(assert (=> b!3377056 (= b_free!88309 (not b_next!89013))))

(declare-fun tp!1056149 () Bool)

(declare-fun b_and!234483 () Bool)

(assert (=> b!3377056 (= tp!1056149 b_and!234483)))

(declare-fun b_free!88311 () Bool)

(declare-fun b_next!89015 () Bool)

(assert (=> b!3377056 (= b_free!88311 (not b_next!89015))))

(declare-fun tp!1056150 () Bool)

(declare-fun b_and!234485 () Bool)

(assert (=> b!3377056 (= tp!1056150 b_and!234485)))

(declare-fun b!3377047 () Bool)

(declare-fun b_free!88313 () Bool)

(declare-fun b_next!89017 () Bool)

(assert (=> b!3377047 (= b_free!88313 (not b_next!89017))))

(declare-fun tp!1056144 () Bool)

(declare-fun b_and!234487 () Bool)

(assert (=> b!3377047 (= tp!1056144 b_and!234487)))

(declare-fun b_free!88315 () Bool)

(declare-fun b_next!89019 () Bool)

(assert (=> b!3377047 (= b_free!88315 (not b_next!89019))))

(declare-fun tp!1056145 () Bool)

(declare-fun b_and!234489 () Bool)

(assert (=> b!3377047 (= tp!1056145 b_and!234489)))

(declare-fun b!3377044 () Bool)

(declare-fun e!2096083 () Bool)

(declare-fun e!2096100 () Bool)

(assert (=> b!3377044 (= e!2096083 e!2096100)))

(declare-fun res!1365837 () Bool)

(assert (=> b!3377044 (=> (not res!1365837) (not e!2096100))))

(declare-datatypes ((LexerInterface!4951 0))(
  ( (LexerInterfaceExt!4948 (__x!23401 Int)) (Lexer!4949) )
))
(declare-fun thiss!18206 () LexerInterface!4951)

(declare-datatypes ((C!20428 0))(
  ( (C!20429 (val!12262 Int)) )
))
(declare-datatypes ((Regex!10121 0))(
  ( (ElementMatch!10121 (c!575074 C!20428)) (Concat!15713 (regOne!20754 Regex!10121) (regTwo!20754 Regex!10121)) (EmptyExpr!10121) (Star!10121 (reg!10450 Regex!10121)) (EmptyLang!10121) (Union!10121 (regOne!20755 Regex!10121) (regTwo!20755 Regex!10121)) )
))
(declare-datatypes ((List!36932 0))(
  ( (Nil!36808) (Cons!36808 (h!42228 (_ BitVec 16)) (t!262819 List!36932)) )
))
(declare-datatypes ((TokenValue!5592 0))(
  ( (FloatLiteralValue!11184 (text!39589 List!36932)) (TokenValueExt!5591 (__x!23402 Int)) (Broken!27960 (value!173251 List!36932)) (Object!5715) (End!5592) (Def!5592) (Underscore!5592) (Match!5592) (Else!5592) (Error!5592) (Case!5592) (If!5592) (Extends!5592) (Abstract!5592) (Class!5592) (Val!5592) (DelimiterValue!11184 (del!5652 List!36932)) (KeywordValue!5598 (value!173252 List!36932)) (CommentValue!11184 (value!173253 List!36932)) (WhitespaceValue!11184 (value!173254 List!36932)) (IndentationValue!5592 (value!173255 List!36932)) (String!41293) (Int32!5592) (Broken!27961 (value!173256 List!36932)) (Boolean!5593) (Unit!51911) (OperatorValue!5595 (op!5652 List!36932)) (IdentifierValue!11184 (value!173257 List!36932)) (IdentifierValue!11185 (value!173258 List!36932)) (WhitespaceValue!11185 (value!173259 List!36932)) (True!11184) (False!11184) (Broken!27962 (value!173260 List!36932)) (Broken!27963 (value!173261 List!36932)) (True!11185) (RightBrace!5592) (RightBracket!5592) (Colon!5592) (Null!5592) (Comma!5592) (LeftBracket!5592) (False!11185) (LeftBrace!5592) (ImaginaryLiteralValue!5592 (text!39590 List!36932)) (StringLiteralValue!16776 (value!173262 List!36932)) (EOFValue!5592 (value!173263 List!36932)) (IdentValue!5592 (value!173264 List!36932)) (DelimiterValue!11185 (value!173265 List!36932)) (DedentValue!5592 (value!173266 List!36932)) (NewLineValue!5592 (value!173267 List!36932)) (IntegerValue!16776 (value!173268 (_ BitVec 32)) (text!39591 List!36932)) (IntegerValue!16777 (value!173269 Int) (text!39592 List!36932)) (Times!5592) (Or!5592) (Equal!5592) (Minus!5592) (Broken!27964 (value!173270 List!36932)) (And!5592) (Div!5592) (LessEqual!5592) (Mod!5592) (Concat!15714) (Not!5592) (Plus!5592) (SpaceValue!5592 (value!173271 List!36932)) (IntegerValue!16778 (value!173272 Int) (text!39593 List!36932)) (StringLiteralValue!16777 (text!39594 List!36932)) (FloatLiteralValue!11185 (text!39595 List!36932)) (BytesLiteralValue!5592 (value!173273 List!36932)) (CommentValue!11185 (value!173274 List!36932)) (StringLiteralValue!16778 (value!173275 List!36932)) (ErrorTokenValue!5592 (msg!5653 List!36932)) )
))
(declare-datatypes ((List!36933 0))(
  ( (Nil!36809) (Cons!36809 (h!42229 C!20428) (t!262820 List!36933)) )
))
(declare-datatypes ((IArray!22203 0))(
  ( (IArray!22204 (innerList!11159 List!36933)) )
))
(declare-datatypes ((Conc!11099 0))(
  ( (Node!11099 (left!28694 Conc!11099) (right!29024 Conc!11099) (csize!22428 Int) (cheight!11310 Int)) (Leaf!17391 (xs!14253 IArray!22203) (csize!22429 Int)) (Empty!11099) )
))
(declare-datatypes ((BalanceConc!21812 0))(
  ( (BalanceConc!21813 (c!575075 Conc!11099)) )
))
(declare-datatypes ((String!41294 0))(
  ( (String!41295 (value!173276 String)) )
))
(declare-datatypes ((TokenValueInjection!10612 0))(
  ( (TokenValueInjection!10613 (toValue!7546 Int) (toChars!7405 Int)) )
))
(declare-datatypes ((Rule!10524 0))(
  ( (Rule!10525 (regex!5362 Regex!10121) (tag!5930 String!41294) (isSeparator!5362 Bool) (transformation!5362 TokenValueInjection!10612)) )
))
(declare-datatypes ((List!36934 0))(
  ( (Nil!36810) (Cons!36810 (h!42230 Rule!10524) (t!262821 List!36934)) )
))
(declare-fun rules!2135 () List!36934)

(declare-datatypes ((Token!10090 0))(
  ( (Token!10091 (value!173277 TokenValue!5592) (rule!7906 Rule!10524) (size!27854 Int) (originalCharacters!6076 List!36933)) )
))
(declare-datatypes ((List!36935 0))(
  ( (Nil!36811) (Cons!36811 (h!42231 Token!10090) (t!262822 List!36935)) )
))
(declare-datatypes ((IArray!22205 0))(
  ( (IArray!22206 (innerList!11160 List!36935)) )
))
(declare-datatypes ((Conc!11100 0))(
  ( (Node!11100 (left!28695 Conc!11100) (right!29025 Conc!11100) (csize!22430 Int) (cheight!11311 Int)) (Leaf!17392 (xs!14254 IArray!22205) (csize!22431 Int)) (Empty!11100) )
))
(declare-datatypes ((BalanceConc!21814 0))(
  ( (BalanceConc!21815 (c!575076 Conc!11100)) )
))
(declare-fun lt!1146336 () BalanceConc!21814)

(declare-fun rulesProduceEachTokenIndividually!1402 (LexerInterface!4951 List!36934 BalanceConc!21814) Bool)

(assert (=> b!3377044 (= res!1365837 (rulesProduceEachTokenIndividually!1402 thiss!18206 rules!2135 lt!1146336))))

(declare-fun tokens!494 () List!36935)

(declare-fun seqFromList!3777 (List!36935) BalanceConc!21814)

(assert (=> b!3377044 (= lt!1146336 (seqFromList!3777 tokens!494))))

(declare-fun tp!1056151 () Bool)

(declare-fun separatorToken!241 () Token!10090)

(declare-fun e!2096089 () Bool)

(declare-fun e!2096082 () Bool)

(declare-fun b!3377045 () Bool)

(declare-fun inv!49874 (String!41294) Bool)

(declare-fun inv!49877 (TokenValueInjection!10612) Bool)

(assert (=> b!3377045 (= e!2096082 (and tp!1056151 (inv!49874 (tag!5930 (rule!7906 separatorToken!241))) (inv!49877 (transformation!5362 (rule!7906 separatorToken!241))) e!2096089))))

(declare-fun b!3377046 () Bool)

(declare-fun res!1365849 () Bool)

(assert (=> b!3377046 (=> (not res!1365849) (not e!2096100))))

(declare-fun rulesProduceIndividualToken!2443 (LexerInterface!4951 List!36934 Token!10090) Bool)

(assert (=> b!3377046 (= res!1365849 (rulesProduceIndividualToken!2443 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3377047 (= e!2096089 (and tp!1056144 tp!1056145))))

(declare-fun tp!1056153 () Bool)

(declare-fun e!2096090 () Bool)

(declare-fun b!3377048 () Bool)

(declare-fun inv!21 (TokenValue!5592) Bool)

(assert (=> b!3377048 (= e!2096090 (and (inv!21 (value!173277 separatorToken!241)) e!2096082 tp!1056153))))

(declare-fun b!3377049 () Bool)

(declare-fun e!2096093 () Bool)

(declare-fun e!2096104 () Bool)

(assert (=> b!3377049 (= e!2096093 e!2096104)))

(declare-fun res!1365853 () Bool)

(assert (=> b!3377049 (=> (not res!1365853) (not e!2096104))))

(declare-fun lt!1146358 () Rule!10524)

(declare-fun lt!1146352 () List!36933)

(declare-fun matchR!4713 (Regex!10121 List!36933) Bool)

(assert (=> b!3377049 (= res!1365853 (matchR!4713 (regex!5362 lt!1146358) lt!1146352))))

(declare-datatypes ((Option!7371 0))(
  ( (None!7370) (Some!7370 (v!36418 Rule!10524)) )
))
(declare-fun lt!1146344 () Option!7371)

(declare-fun get!11742 (Option!7371) Rule!10524)

(assert (=> b!3377049 (= lt!1146358 (get!11742 lt!1146344))))

(declare-fun b!3377050 () Bool)

(declare-fun res!1365852 () Bool)

(assert (=> b!3377050 (=> (not res!1365852) (not e!2096083))))

(declare-fun isEmpty!21027 (List!36934) Bool)

(assert (=> b!3377050 (= res!1365852 (not (isEmpty!21027 rules!2135)))))

(declare-fun res!1365847 () Bool)

(assert (=> start!314390 (=> (not res!1365847) (not e!2096083))))

(get-info :version)

(assert (=> start!314390 (= res!1365847 ((_ is Lexer!4949) thiss!18206))))

(assert (=> start!314390 e!2096083))

(assert (=> start!314390 true))

(declare-fun e!2096108 () Bool)

(assert (=> start!314390 e!2096108))

(declare-fun inv!49878 (Token!10090) Bool)

(assert (=> start!314390 (and (inv!49878 separatorToken!241) e!2096090)))

(declare-fun e!2096109 () Bool)

(assert (=> start!314390 e!2096109))

(declare-fun b!3377051 () Bool)

(declare-fun e!2096095 () Bool)

(declare-fun e!2096092 () Bool)

(assert (=> b!3377051 (= e!2096095 e!2096092)))

(declare-fun res!1365855 () Bool)

(assert (=> b!3377051 (=> res!1365855 e!2096092)))

(declare-fun lt!1146348 () Bool)

(assert (=> b!3377051 (= res!1365855 lt!1146348)))

(declare-datatypes ((Unit!51912 0))(
  ( (Unit!51913) )
))
(declare-fun lt!1146340 () Unit!51912)

(declare-fun e!2096097 () Unit!51912)

(assert (=> b!3377051 (= lt!1146340 e!2096097)))

(declare-fun c!575073 () Bool)

(assert (=> b!3377051 (= c!575073 lt!1146348)))

(declare-fun lt!1146343 () C!20428)

(declare-fun contains!6712 (List!36933 C!20428) Bool)

(declare-fun usedCharacters!618 (Regex!10121) List!36933)

(assert (=> b!3377051 (= lt!1146348 (not (contains!6712 (usedCharacters!618 (regex!5362 (rule!7906 separatorToken!241))) lt!1146343)))))

(declare-fun head!7205 (List!36933) C!20428)

(assert (=> b!3377051 (= lt!1146343 (head!7205 lt!1146352))))

(declare-fun lt!1146342 () List!36933)

(declare-fun lt!1146347 () BalanceConc!21812)

(declare-datatypes ((tuple2!36372 0))(
  ( (tuple2!36373 (_1!21320 Token!10090) (_2!21320 List!36933)) )
))
(declare-datatypes ((Option!7372 0))(
  ( (None!7371) (Some!7371 (v!36419 tuple2!36372)) )
))
(declare-fun maxPrefixOneRule!1674 (LexerInterface!4951 Rule!10524 List!36933) Option!7372)

(declare-fun apply!8545 (TokenValueInjection!10612 BalanceConc!21812) TokenValue!5592)

(declare-fun size!27855 (List!36933) Int)

(assert (=> b!3377051 (= (maxPrefixOneRule!1674 thiss!18206 (rule!7906 (h!42231 tokens!494)) lt!1146342) (Some!7371 (tuple2!36373 (Token!10091 (apply!8545 (transformation!5362 (rule!7906 (h!42231 tokens!494))) lt!1146347) (rule!7906 (h!42231 tokens!494)) (size!27855 lt!1146342) lt!1146342) Nil!36809)))))

(declare-fun lt!1146341 () Unit!51912)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!773 (LexerInterface!4951 List!36934 List!36933 List!36933 List!36933 Rule!10524) Unit!51912)

(assert (=> b!3377051 (= lt!1146341 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!773 thiss!18206 rules!2135 lt!1146342 lt!1146342 Nil!36809 (rule!7906 (h!42231 tokens!494))))))

(assert (=> b!3377051 e!2096093))

(declare-fun res!1365840 () Bool)

(assert (=> b!3377051 (=> (not res!1365840) (not e!2096093))))

(declare-fun isDefined!5700 (Option!7371) Bool)

(assert (=> b!3377051 (= res!1365840 (isDefined!5700 lt!1146344))))

(declare-fun getRuleFromTag!1017 (LexerInterface!4951 List!36934 String!41294) Option!7371)

(assert (=> b!3377051 (= lt!1146344 (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 separatorToken!241))))))

(declare-fun lt!1146353 () Unit!51912)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1017 (LexerInterface!4951 List!36934 List!36933 Token!10090) Unit!51912)

(assert (=> b!3377051 (= lt!1146353 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1017 thiss!18206 rules!2135 lt!1146352 separatorToken!241))))

(declare-fun e!2096106 () Bool)

(assert (=> b!3377051 e!2096106))

(declare-fun res!1365838 () Bool)

(assert (=> b!3377051 (=> (not res!1365838) (not e!2096106))))

(declare-fun lt!1146351 () Option!7371)

(assert (=> b!3377051 (= res!1365838 (isDefined!5700 lt!1146351))))

(assert (=> b!3377051 (= lt!1146351 (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 (h!42231 tokens!494)))))))

(declare-fun lt!1146356 () Unit!51912)

(assert (=> b!3377051 (= lt!1146356 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1017 thiss!18206 rules!2135 lt!1146342 (h!42231 tokens!494)))))

(declare-fun lt!1146355 () Unit!51912)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!946 (LexerInterface!4951 List!36934 List!36935 Token!10090) Unit!51912)

(assert (=> b!3377051 (= lt!1146355 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!946 thiss!18206 rules!2135 tokens!494 (h!42231 tokens!494)))))

(declare-fun isEmpty!21028 (List!36933) Bool)

(declare-fun getSuffix!1456 (List!36933 List!36933) List!36933)

(assert (=> b!3377051 (isEmpty!21028 (getSuffix!1456 lt!1146342 lt!1146342))))

(declare-fun lt!1146337 () Unit!51912)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!114 (List!36933) Unit!51912)

(assert (=> b!3377051 (= lt!1146337 (lemmaGetSuffixOnListWithItSelfIsEmpty!114 lt!1146342))))

(declare-fun e!2096091 () Bool)

(declare-fun e!2096099 () Bool)

(declare-fun tp!1056152 () Bool)

(declare-fun b!3377052 () Bool)

(assert (=> b!3377052 (= e!2096091 (and (inv!21 (value!173277 (h!42231 tokens!494))) e!2096099 tp!1056152))))

(declare-fun tp!1056142 () Bool)

(declare-fun b!3377053 () Bool)

(assert (=> b!3377053 (= e!2096109 (and (inv!49878 (h!42231 tokens!494)) e!2096091 tp!1056142))))

(declare-fun b!3377054 () Bool)

(declare-fun res!1365836 () Bool)

(declare-fun e!2096085 () Bool)

(assert (=> b!3377054 (=> res!1365836 e!2096085)))

(assert (=> b!3377054 (= res!1365836 (not (rulesProduceIndividualToken!2443 thiss!18206 rules!2135 (h!42231 tokens!494))))))

(declare-fun b!3377055 () Bool)

(declare-fun e!2096102 () Bool)

(assert (=> b!3377055 (= e!2096100 (not e!2096102))))

(declare-fun res!1365844 () Bool)

(assert (=> b!3377055 (=> res!1365844 e!2096102)))

(declare-fun lt!1146349 () List!36933)

(declare-fun lt!1146345 () List!36933)

(assert (=> b!3377055 (= res!1365844 (not (= lt!1146349 lt!1146345)))))

(declare-fun printList!1499 (LexerInterface!4951 List!36935) List!36933)

(assert (=> b!3377055 (= lt!1146345 (printList!1499 thiss!18206 (Cons!36811 (h!42231 tokens!494) Nil!36811)))))

(declare-fun lt!1146350 () BalanceConc!21812)

(declare-fun list!13303 (BalanceConc!21812) List!36933)

(assert (=> b!3377055 (= lt!1146349 (list!13303 lt!1146350))))

(declare-fun lt!1146357 () BalanceConc!21814)

(declare-fun printTailRec!1446 (LexerInterface!4951 BalanceConc!21814 Int BalanceConc!21812) BalanceConc!21812)

(assert (=> b!3377055 (= lt!1146350 (printTailRec!1446 thiss!18206 lt!1146357 0 (BalanceConc!21813 Empty!11099)))))

(declare-fun print!2016 (LexerInterface!4951 BalanceConc!21814) BalanceConc!21812)

(assert (=> b!3377055 (= lt!1146350 (print!2016 thiss!18206 lt!1146357))))

(declare-fun singletonSeq!2458 (Token!10090) BalanceConc!21814)

(assert (=> b!3377055 (= lt!1146357 (singletonSeq!2458 (h!42231 tokens!494)))))

(declare-fun e!2096087 () Bool)

(assert (=> b!3377056 (= e!2096087 (and tp!1056149 tp!1056150))))

(declare-fun b!3377057 () Bool)

(declare-fun contains!6713 (List!36934 Rule!10524) Bool)

(assert (=> b!3377057 (= e!2096092 (contains!6713 rules!2135 (rule!7906 separatorToken!241)))))

(declare-fun b!3377058 () Bool)

(assert (=> b!3377058 (= e!2096104 (= (rule!7906 separatorToken!241) lt!1146358))))

(declare-fun b!3377059 () Bool)

(declare-fun res!1365851 () Bool)

(assert (=> b!3377059 (=> (not res!1365851) (not e!2096100))))

(declare-fun lambda!120385 () Int)

(declare-fun forall!7737 (List!36935 Int) Bool)

(assert (=> b!3377059 (= res!1365851 (forall!7737 tokens!494 lambda!120385))))

(declare-fun b!3377060 () Bool)

(declare-fun e!2096084 () Bool)

(declare-fun lt!1146338 () Rule!10524)

(assert (=> b!3377060 (= e!2096084 (= (rule!7906 (h!42231 tokens!494)) lt!1146338))))

(declare-fun b!3377061 () Bool)

(declare-fun e!2096094 () Bool)

(assert (=> b!3377061 (= e!2096094 false)))

(declare-fun b!3377062 () Bool)

(declare-fun e!2096098 () Bool)

(declare-fun tp!1056148 () Bool)

(assert (=> b!3377062 (= e!2096108 (and e!2096098 tp!1056148))))

(declare-fun b!3377063 () Bool)

(declare-fun res!1365850 () Bool)

(assert (=> b!3377063 (=> (not res!1365850) (not e!2096100))))

(declare-fun sepAndNonSepRulesDisjointChars!1556 (List!36934 List!36934) Bool)

(assert (=> b!3377063 (= res!1365850 (sepAndNonSepRulesDisjointChars!1556 rules!2135 rules!2135))))

(declare-fun tp!1056147 () Bool)

(declare-fun b!3377064 () Bool)

(assert (=> b!3377064 (= e!2096099 (and tp!1056147 (inv!49874 (tag!5930 (rule!7906 (h!42231 tokens!494)))) (inv!49877 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) e!2096087))))

(declare-fun b!3377065 () Bool)

(declare-fun res!1365848 () Bool)

(assert (=> b!3377065 (=> (not res!1365848) (not e!2096083))))

(declare-fun rulesInvariant!4348 (LexerInterface!4951 List!36934) Bool)

(assert (=> b!3377065 (= res!1365848 (rulesInvariant!4348 thiss!18206 rules!2135))))

(declare-fun b!3377066 () Bool)

(declare-fun Unit!51914 () Unit!51912)

(assert (=> b!3377066 (= e!2096097 Unit!51914)))

(declare-fun e!2096105 () Bool)

(declare-fun tp!1056154 () Bool)

(declare-fun b!3377067 () Bool)

(assert (=> b!3377067 (= e!2096098 (and tp!1056154 (inv!49874 (tag!5930 (h!42230 rules!2135))) (inv!49877 (transformation!5362 (h!42230 rules!2135))) e!2096105))))

(declare-fun b!3377068 () Bool)

(declare-fun e!2096110 () Bool)

(assert (=> b!3377068 (= e!2096110 e!2096095)))

(declare-fun res!1365839 () Bool)

(assert (=> b!3377068 (=> res!1365839 e!2096095)))

(declare-fun lt!1146346 () BalanceConc!21812)

(declare-fun ++!8989 (List!36933 List!36933) List!36933)

(assert (=> b!3377068 (= res!1365839 (not (= (list!13303 lt!1146346) (++!8989 lt!1146342 lt!1146352))))))

(declare-fun charsOf!3376 (Token!10090) BalanceConc!21812)

(assert (=> b!3377068 (= lt!1146352 (list!13303 (charsOf!3376 separatorToken!241)))))

(declare-fun printWithSeparatorToken!142 (LexerInterface!4951 BalanceConc!21814 Token!10090) BalanceConc!21812)

(assert (=> b!3377068 (= lt!1146346 (printWithSeparatorToken!142 thiss!18206 lt!1146336 separatorToken!241))))

(declare-fun b!3377069 () Bool)

(assert (=> b!3377069 (= e!2096102 e!2096085)))

(declare-fun res!1365841 () Bool)

(assert (=> b!3377069 (=> res!1365841 e!2096085)))

(assert (=> b!3377069 (= res!1365841 (or (not (= lt!1146345 lt!1146342)) (not (= lt!1146349 lt!1146342))))))

(assert (=> b!3377069 (= lt!1146342 (list!13303 (charsOf!3376 (h!42231 tokens!494))))))

(declare-fun b!3377070 () Bool)

(assert (=> b!3377070 (= e!2096106 e!2096084)))

(declare-fun res!1365842 () Bool)

(assert (=> b!3377070 (=> (not res!1365842) (not e!2096084))))

(assert (=> b!3377070 (= res!1365842 (matchR!4713 (regex!5362 lt!1146338) lt!1146342))))

(assert (=> b!3377070 (= lt!1146338 (get!11742 lt!1146351))))

(declare-fun b!3377071 () Bool)

(declare-fun e!2096086 () Bool)

(assert (=> b!3377071 (= e!2096085 e!2096086)))

(declare-fun res!1365854 () Bool)

(assert (=> b!3377071 (=> res!1365854 e!2096086)))

(declare-fun isEmpty!21029 (BalanceConc!21814) Bool)

(declare-datatypes ((tuple2!36374 0))(
  ( (tuple2!36375 (_1!21321 BalanceConc!21814) (_2!21321 BalanceConc!21812)) )
))
(declare-fun lex!2277 (LexerInterface!4951 List!36934 BalanceConc!21812) tuple2!36374)

(assert (=> b!3377071 (= res!1365854 (isEmpty!21029 (_1!21321 (lex!2277 thiss!18206 rules!2135 lt!1146347))))))

(declare-fun seqFromList!3778 (List!36933) BalanceConc!21812)

(assert (=> b!3377071 (= lt!1146347 (seqFromList!3778 lt!1146342))))

(declare-fun b!3377072 () Bool)

(declare-fun Unit!51915 () Unit!51912)

(assert (=> b!3377072 (= e!2096097 Unit!51915)))

(declare-fun lt!1146339 () Unit!51912)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!452 (Regex!10121 List!36933 C!20428) Unit!51912)

(assert (=> b!3377072 (= lt!1146339 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!452 (regex!5362 (rule!7906 separatorToken!241)) lt!1146352 lt!1146343))))

(declare-fun res!1365856 () Bool)

(assert (=> b!3377072 (= res!1365856 (not (matchR!4713 (regex!5362 (rule!7906 separatorToken!241)) lt!1146352)))))

(assert (=> b!3377072 (=> (not res!1365856) (not e!2096094))))

(assert (=> b!3377072 e!2096094))

(declare-fun b!3377073 () Bool)

(declare-fun res!1365843 () Bool)

(assert (=> b!3377073 (=> (not res!1365843) (not e!2096100))))

(assert (=> b!3377073 (= res!1365843 (isSeparator!5362 (rule!7906 separatorToken!241)))))

(declare-fun b!3377074 () Bool)

(assert (=> b!3377074 (= e!2096086 e!2096110)))

(declare-fun res!1365845 () Bool)

(assert (=> b!3377074 (=> res!1365845 e!2096110)))

(assert (=> b!3377074 (= res!1365845 (isSeparator!5362 (rule!7906 (h!42231 tokens!494))))))

(declare-fun lt!1146354 () Unit!51912)

(declare-fun forallContained!1309 (List!36935 Int Token!10090) Unit!51912)

(assert (=> b!3377074 (= lt!1146354 (forallContained!1309 tokens!494 lambda!120385 (h!42231 tokens!494)))))

(assert (=> b!3377075 (= e!2096105 (and tp!1056146 tp!1056143))))

(declare-fun b!3377076 () Bool)

(declare-fun res!1365846 () Bool)

(assert (=> b!3377076 (=> (not res!1365846) (not e!2096100))))

(assert (=> b!3377076 (= res!1365846 (and (not ((_ is Nil!36811) tokens!494)) ((_ is Nil!36811) (t!262822 tokens!494))))))

(assert (= (and start!314390 res!1365847) b!3377050))

(assert (= (and b!3377050 res!1365852) b!3377065))

(assert (= (and b!3377065 res!1365848) b!3377044))

(assert (= (and b!3377044 res!1365837) b!3377046))

(assert (= (and b!3377046 res!1365849) b!3377073))

(assert (= (and b!3377073 res!1365843) b!3377059))

(assert (= (and b!3377059 res!1365851) b!3377063))

(assert (= (and b!3377063 res!1365850) b!3377076))

(assert (= (and b!3377076 res!1365846) b!3377055))

(assert (= (and b!3377055 (not res!1365844)) b!3377069))

(assert (= (and b!3377069 (not res!1365841)) b!3377054))

(assert (= (and b!3377054 (not res!1365836)) b!3377071))

(assert (= (and b!3377071 (not res!1365854)) b!3377074))

(assert (= (and b!3377074 (not res!1365845)) b!3377068))

(assert (= (and b!3377068 (not res!1365839)) b!3377051))

(assert (= (and b!3377051 res!1365838) b!3377070))

(assert (= (and b!3377070 res!1365842) b!3377060))

(assert (= (and b!3377051 res!1365840) b!3377049))

(assert (= (and b!3377049 res!1365853) b!3377058))

(assert (= (and b!3377051 c!575073) b!3377072))

(assert (= (and b!3377051 (not c!575073)) b!3377066))

(assert (= (and b!3377072 res!1365856) b!3377061))

(assert (= (and b!3377051 (not res!1365855)) b!3377057))

(assert (= b!3377067 b!3377075))

(assert (= b!3377062 b!3377067))

(assert (= (and start!314390 ((_ is Cons!36810) rules!2135)) b!3377062))

(assert (= b!3377045 b!3377047))

(assert (= b!3377048 b!3377045))

(assert (= start!314390 b!3377048))

(assert (= b!3377064 b!3377056))

(assert (= b!3377052 b!3377064))

(assert (= b!3377053 b!3377052))

(assert (= (and start!314390 ((_ is Cons!36811) tokens!494)) b!3377053))

(declare-fun m!3740649 () Bool)

(assert (=> b!3377072 m!3740649))

(declare-fun m!3740651 () Bool)

(assert (=> b!3377072 m!3740651))

(declare-fun m!3740653 () Bool)

(assert (=> b!3377069 m!3740653))

(assert (=> b!3377069 m!3740653))

(declare-fun m!3740655 () Bool)

(assert (=> b!3377069 m!3740655))

(declare-fun m!3740657 () Bool)

(assert (=> b!3377059 m!3740657))

(declare-fun m!3740659 () Bool)

(assert (=> b!3377044 m!3740659))

(declare-fun m!3740661 () Bool)

(assert (=> b!3377044 m!3740661))

(declare-fun m!3740663 () Bool)

(assert (=> b!3377057 m!3740663))

(declare-fun m!3740665 () Bool)

(assert (=> b!3377071 m!3740665))

(declare-fun m!3740667 () Bool)

(assert (=> b!3377071 m!3740667))

(declare-fun m!3740669 () Bool)

(assert (=> b!3377071 m!3740669))

(declare-fun m!3740671 () Bool)

(assert (=> b!3377065 m!3740671))

(declare-fun m!3740673 () Bool)

(assert (=> b!3377046 m!3740673))

(declare-fun m!3740675 () Bool)

(assert (=> b!3377053 m!3740675))

(declare-fun m!3740677 () Bool)

(assert (=> b!3377055 m!3740677))

(declare-fun m!3740679 () Bool)

(assert (=> b!3377055 m!3740679))

(declare-fun m!3740681 () Bool)

(assert (=> b!3377055 m!3740681))

(declare-fun m!3740683 () Bool)

(assert (=> b!3377055 m!3740683))

(declare-fun m!3740685 () Bool)

(assert (=> b!3377055 m!3740685))

(declare-fun m!3740687 () Bool)

(assert (=> b!3377049 m!3740687))

(declare-fun m!3740689 () Bool)

(assert (=> b!3377049 m!3740689))

(declare-fun m!3740691 () Bool)

(assert (=> b!3377048 m!3740691))

(declare-fun m!3740693 () Bool)

(assert (=> b!3377054 m!3740693))

(declare-fun m!3740695 () Bool)

(assert (=> b!3377063 m!3740695))

(declare-fun m!3740697 () Bool)

(assert (=> b!3377052 m!3740697))

(declare-fun m!3740699 () Bool)

(assert (=> b!3377045 m!3740699))

(declare-fun m!3740701 () Bool)

(assert (=> b!3377045 m!3740701))

(declare-fun m!3740703 () Bool)

(assert (=> b!3377051 m!3740703))

(declare-fun m!3740705 () Bool)

(assert (=> b!3377051 m!3740705))

(declare-fun m!3740707 () Bool)

(assert (=> b!3377051 m!3740707))

(declare-fun m!3740709 () Bool)

(assert (=> b!3377051 m!3740709))

(declare-fun m!3740711 () Bool)

(assert (=> b!3377051 m!3740711))

(declare-fun m!3740713 () Bool)

(assert (=> b!3377051 m!3740713))

(declare-fun m!3740715 () Bool)

(assert (=> b!3377051 m!3740715))

(declare-fun m!3740717 () Bool)

(assert (=> b!3377051 m!3740717))

(declare-fun m!3740719 () Bool)

(assert (=> b!3377051 m!3740719))

(declare-fun m!3740721 () Bool)

(assert (=> b!3377051 m!3740721))

(declare-fun m!3740723 () Bool)

(assert (=> b!3377051 m!3740723))

(assert (=> b!3377051 m!3740705))

(declare-fun m!3740725 () Bool)

(assert (=> b!3377051 m!3740725))

(declare-fun m!3740727 () Bool)

(assert (=> b!3377051 m!3740727))

(declare-fun m!3740729 () Bool)

(assert (=> b!3377051 m!3740729))

(declare-fun m!3740731 () Bool)

(assert (=> b!3377051 m!3740731))

(declare-fun m!3740733 () Bool)

(assert (=> b!3377051 m!3740733))

(assert (=> b!3377051 m!3740727))

(declare-fun m!3740735 () Bool)

(assert (=> b!3377051 m!3740735))

(declare-fun m!3740737 () Bool)

(assert (=> b!3377068 m!3740737))

(declare-fun m!3740739 () Bool)

(assert (=> b!3377068 m!3740739))

(declare-fun m!3740741 () Bool)

(assert (=> b!3377068 m!3740741))

(assert (=> b!3377068 m!3740737))

(declare-fun m!3740743 () Bool)

(assert (=> b!3377068 m!3740743))

(declare-fun m!3740745 () Bool)

(assert (=> b!3377068 m!3740745))

(declare-fun m!3740747 () Bool)

(assert (=> b!3377050 m!3740747))

(declare-fun m!3740749 () Bool)

(assert (=> start!314390 m!3740749))

(declare-fun m!3740751 () Bool)

(assert (=> b!3377070 m!3740751))

(declare-fun m!3740753 () Bool)

(assert (=> b!3377070 m!3740753))

(declare-fun m!3740755 () Bool)

(assert (=> b!3377067 m!3740755))

(declare-fun m!3740757 () Bool)

(assert (=> b!3377067 m!3740757))

(declare-fun m!3740759 () Bool)

(assert (=> b!3377074 m!3740759))

(declare-fun m!3740761 () Bool)

(assert (=> b!3377064 m!3740761))

(declare-fun m!3740763 () Bool)

(assert (=> b!3377064 m!3740763))

(check-sat (not b!3377050) (not b_next!89011) (not b!3377048) (not b!3377065) (not b!3377052) (not b_next!89015) (not b_next!89017) b_and!234481 (not b!3377071) (not b_next!89013) (not b!3377070) (not b!3377049) (not b!3377059) b_and!234485 (not b!3377064) (not b!3377069) (not b!3377067) (not b!3377053) (not b!3377044) b_and!234487 (not start!314390) b_and!234479 (not b!3377051) (not b!3377074) (not b!3377063) (not b!3377072) (not b!3377046) b_and!234489 (not b!3377062) (not b!3377057) (not b_next!89009) (not b!3377068) b_and!234483 (not b!3377045) (not b!3377055) (not b_next!89019) (not b!3377054))
(check-sat (not b_next!89011) b_and!234485 (not b_next!89015) (not b_next!89017) b_and!234481 b_and!234489 (not b_next!89009) (not b_next!89013) b_and!234487 b_and!234479 b_and!234483 (not b_next!89019))
(get-model)

(declare-fun d!958160 () Bool)

(declare-fun lt!1146429 () Bool)

(declare-fun e!2096190 () Bool)

(assert (=> d!958160 (= lt!1146429 e!2096190)))

(declare-fun res!1365932 () Bool)

(assert (=> d!958160 (=> (not res!1365932) (not e!2096190))))

(declare-fun list!13306 (BalanceConc!21814) List!36935)

(assert (=> d!958160 (= res!1365932 (= (list!13306 (_1!21321 (lex!2277 thiss!18206 rules!2135 (print!2016 thiss!18206 (singletonSeq!2458 (h!42231 tokens!494)))))) (list!13306 (singletonSeq!2458 (h!42231 tokens!494)))))))

(declare-fun e!2096191 () Bool)

(assert (=> d!958160 (= lt!1146429 e!2096191)))

(declare-fun res!1365930 () Bool)

(assert (=> d!958160 (=> (not res!1365930) (not e!2096191))))

(declare-fun lt!1146430 () tuple2!36374)

(declare-fun size!27858 (BalanceConc!21814) Int)

(assert (=> d!958160 (= res!1365930 (= (size!27858 (_1!21321 lt!1146430)) 1))))

(assert (=> d!958160 (= lt!1146430 (lex!2277 thiss!18206 rules!2135 (print!2016 thiss!18206 (singletonSeq!2458 (h!42231 tokens!494)))))))

(assert (=> d!958160 (not (isEmpty!21027 rules!2135))))

(assert (=> d!958160 (= (rulesProduceIndividualToken!2443 thiss!18206 rules!2135 (h!42231 tokens!494)) lt!1146429)))

(declare-fun b!3377209 () Bool)

(declare-fun res!1365931 () Bool)

(assert (=> b!3377209 (=> (not res!1365931) (not e!2096191))))

(declare-fun apply!8548 (BalanceConc!21814 Int) Token!10090)

(assert (=> b!3377209 (= res!1365931 (= (apply!8548 (_1!21321 lt!1146430) 0) (h!42231 tokens!494)))))

(declare-fun b!3377210 () Bool)

(declare-fun isEmpty!21034 (BalanceConc!21812) Bool)

(assert (=> b!3377210 (= e!2096191 (isEmpty!21034 (_2!21321 lt!1146430)))))

(declare-fun b!3377211 () Bool)

(assert (=> b!3377211 (= e!2096190 (isEmpty!21034 (_2!21321 (lex!2277 thiss!18206 rules!2135 (print!2016 thiss!18206 (singletonSeq!2458 (h!42231 tokens!494)))))))))

(assert (= (and d!958160 res!1365930) b!3377209))

(assert (= (and b!3377209 res!1365931) b!3377210))

(assert (= (and d!958160 res!1365932) b!3377211))

(declare-fun m!3740905 () Bool)

(assert (=> d!958160 m!3740905))

(assert (=> d!958160 m!3740677))

(assert (=> d!958160 m!3740677))

(declare-fun m!3740911 () Bool)

(assert (=> d!958160 m!3740911))

(assert (=> d!958160 m!3740911))

(declare-fun m!3740919 () Bool)

(assert (=> d!958160 m!3740919))

(assert (=> d!958160 m!3740677))

(declare-fun m!3740921 () Bool)

(assert (=> d!958160 m!3740921))

(declare-fun m!3740929 () Bool)

(assert (=> d!958160 m!3740929))

(assert (=> d!958160 m!3740747))

(declare-fun m!3740935 () Bool)

(assert (=> b!3377209 m!3740935))

(declare-fun m!3740939 () Bool)

(assert (=> b!3377210 m!3740939))

(assert (=> b!3377211 m!3740677))

(assert (=> b!3377211 m!3740677))

(assert (=> b!3377211 m!3740911))

(assert (=> b!3377211 m!3740911))

(assert (=> b!3377211 m!3740919))

(declare-fun m!3740949 () Bool)

(assert (=> b!3377211 m!3740949))

(assert (=> b!3377054 d!958160))

(declare-fun d!958204 () Bool)

(declare-fun res!1365940 () Bool)

(declare-fun e!2096198 () Bool)

(assert (=> d!958204 (=> (not res!1365940) (not e!2096198))))

(assert (=> d!958204 (= res!1365940 (not (isEmpty!21028 (originalCharacters!6076 (h!42231 tokens!494)))))))

(assert (=> d!958204 (= (inv!49878 (h!42231 tokens!494)) e!2096198)))

(declare-fun b!3377221 () Bool)

(declare-fun res!1365941 () Bool)

(assert (=> b!3377221 (=> (not res!1365941) (not e!2096198))))

(declare-fun dynLambda!15283 (Int TokenValue!5592) BalanceConc!21812)

(assert (=> b!3377221 (= res!1365941 (= (originalCharacters!6076 (h!42231 tokens!494)) (list!13303 (dynLambda!15283 (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (value!173277 (h!42231 tokens!494))))))))

(declare-fun b!3377222 () Bool)

(assert (=> b!3377222 (= e!2096198 (= (size!27854 (h!42231 tokens!494)) (size!27855 (originalCharacters!6076 (h!42231 tokens!494)))))))

(assert (= (and d!958204 res!1365940) b!3377221))

(assert (= (and b!3377221 res!1365941) b!3377222))

(declare-fun b_lambda!95759 () Bool)

(assert (=> (not b_lambda!95759) (not b!3377221)))

(declare-fun tb!179771 () Bool)

(declare-fun t!262839 () Bool)

(assert (=> (and b!3377075 (= (toChars!7405 (transformation!5362 (h!42230 rules!2135))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262839) tb!179771))

(declare-fun b!3377228 () Bool)

(declare-fun e!2096202 () Bool)

(declare-fun tp!1056160 () Bool)

(declare-fun inv!49881 (Conc!11099) Bool)

(assert (=> b!3377228 (= e!2096202 (and (inv!49881 (c!575075 (dynLambda!15283 (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (value!173277 (h!42231 tokens!494))))) tp!1056160))))

(declare-fun result!223132 () Bool)

(declare-fun inv!49882 (BalanceConc!21812) Bool)

(assert (=> tb!179771 (= result!223132 (and (inv!49882 (dynLambda!15283 (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (value!173277 (h!42231 tokens!494)))) e!2096202))))

(assert (= tb!179771 b!3377228))

(declare-fun m!3740961 () Bool)

(assert (=> b!3377228 m!3740961))

(declare-fun m!3740963 () Bool)

(assert (=> tb!179771 m!3740963))

(assert (=> b!3377221 t!262839))

(declare-fun b_and!234503 () Bool)

(assert (= b_and!234481 (and (=> t!262839 result!223132) b_and!234503)))

(declare-fun t!262841 () Bool)

(declare-fun tb!179773 () Bool)

(assert (=> (and b!3377056 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262841) tb!179773))

(declare-fun result!223136 () Bool)

(assert (= result!223136 result!223132))

(assert (=> b!3377221 t!262841))

(declare-fun b_and!234505 () Bool)

(assert (= b_and!234485 (and (=> t!262841 result!223136) b_and!234505)))

(declare-fun tb!179775 () Bool)

(declare-fun t!262843 () Bool)

(assert (=> (and b!3377047 (= (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262843) tb!179775))

(declare-fun result!223138 () Bool)

(assert (= result!223138 result!223132))

(assert (=> b!3377221 t!262843))

(declare-fun b_and!234507 () Bool)

(assert (= b_and!234489 (and (=> t!262843 result!223138) b_and!234507)))

(declare-fun m!3740965 () Bool)

(assert (=> d!958204 m!3740965))

(declare-fun m!3740967 () Bool)

(assert (=> b!3377221 m!3740967))

(assert (=> b!3377221 m!3740967))

(declare-fun m!3740969 () Bool)

(assert (=> b!3377221 m!3740969))

(declare-fun m!3740971 () Bool)

(assert (=> b!3377222 m!3740971))

(assert (=> b!3377053 d!958204))

(declare-fun d!958210 () Bool)

(declare-fun lt!1146462 () BalanceConc!21812)

(declare-fun printListTailRec!640 (LexerInterface!4951 List!36935 List!36933) List!36933)

(declare-fun dropList!1157 (BalanceConc!21814 Int) List!36935)

(assert (=> d!958210 (= (list!13303 lt!1146462) (printListTailRec!640 thiss!18206 (dropList!1157 lt!1146357 0) (list!13303 (BalanceConc!21813 Empty!11099))))))

(declare-fun e!2096211 () BalanceConc!21812)

(assert (=> d!958210 (= lt!1146462 e!2096211)))

(declare-fun c!575114 () Bool)

(assert (=> d!958210 (= c!575114 (>= 0 (size!27858 lt!1146357)))))

(declare-fun e!2096210 () Bool)

(assert (=> d!958210 e!2096210))

(declare-fun res!1365945 () Bool)

(assert (=> d!958210 (=> (not res!1365945) (not e!2096210))))

(assert (=> d!958210 (= res!1365945 (>= 0 0))))

(assert (=> d!958210 (= (printTailRec!1446 thiss!18206 lt!1146357 0 (BalanceConc!21813 Empty!11099)) lt!1146462)))

(declare-fun b!3377241 () Bool)

(assert (=> b!3377241 (= e!2096210 (<= 0 (size!27858 lt!1146357)))))

(declare-fun b!3377242 () Bool)

(assert (=> b!3377242 (= e!2096211 (BalanceConc!21813 Empty!11099))))

(declare-fun b!3377243 () Bool)

(declare-fun ++!8991 (BalanceConc!21812 BalanceConc!21812) BalanceConc!21812)

(assert (=> b!3377243 (= e!2096211 (printTailRec!1446 thiss!18206 lt!1146357 (+ 0 1) (++!8991 (BalanceConc!21813 Empty!11099) (charsOf!3376 (apply!8548 lt!1146357 0)))))))

(declare-fun lt!1146459 () List!36935)

(assert (=> b!3377243 (= lt!1146459 (list!13306 lt!1146357))))

(declare-fun lt!1146461 () Unit!51912)

(declare-fun lemmaDropApply!1115 (List!36935 Int) Unit!51912)

(assert (=> b!3377243 (= lt!1146461 (lemmaDropApply!1115 lt!1146459 0))))

(declare-fun head!7207 (List!36935) Token!10090)

(declare-fun drop!1955 (List!36935 Int) List!36935)

(declare-fun apply!8549 (List!36935 Int) Token!10090)

(assert (=> b!3377243 (= (head!7207 (drop!1955 lt!1146459 0)) (apply!8549 lt!1146459 0))))

(declare-fun lt!1146460 () Unit!51912)

(assert (=> b!3377243 (= lt!1146460 lt!1146461)))

(declare-fun lt!1146463 () List!36935)

(assert (=> b!3377243 (= lt!1146463 (list!13306 lt!1146357))))

(declare-fun lt!1146458 () Unit!51912)

(declare-fun lemmaDropTail!999 (List!36935 Int) Unit!51912)

(assert (=> b!3377243 (= lt!1146458 (lemmaDropTail!999 lt!1146463 0))))

(declare-fun tail!5340 (List!36935) List!36935)

(assert (=> b!3377243 (= (tail!5340 (drop!1955 lt!1146463 0)) (drop!1955 lt!1146463 (+ 0 1)))))

(declare-fun lt!1146464 () Unit!51912)

(assert (=> b!3377243 (= lt!1146464 lt!1146458)))

(assert (= (and d!958210 res!1365945) b!3377241))

(assert (= (and d!958210 c!575114) b!3377242))

(assert (= (and d!958210 (not c!575114)) b!3377243))

(declare-fun m!3740987 () Bool)

(assert (=> d!958210 m!3740987))

(assert (=> d!958210 m!3740987))

(declare-fun m!3740989 () Bool)

(assert (=> d!958210 m!3740989))

(declare-fun m!3740991 () Bool)

(assert (=> d!958210 m!3740991))

(declare-fun m!3740993 () Bool)

(assert (=> d!958210 m!3740993))

(assert (=> d!958210 m!3740989))

(declare-fun m!3740995 () Bool)

(assert (=> d!958210 m!3740995))

(assert (=> b!3377241 m!3740995))

(declare-fun m!3740997 () Bool)

(assert (=> b!3377243 m!3740997))

(declare-fun m!3740999 () Bool)

(assert (=> b!3377243 m!3740999))

(assert (=> b!3377243 m!3740997))

(declare-fun m!3741001 () Bool)

(assert (=> b!3377243 m!3741001))

(declare-fun m!3741003 () Bool)

(assert (=> b!3377243 m!3741003))

(declare-fun m!3741005 () Bool)

(assert (=> b!3377243 m!3741005))

(assert (=> b!3377243 m!3740999))

(declare-fun m!3741007 () Bool)

(assert (=> b!3377243 m!3741007))

(declare-fun m!3741009 () Bool)

(assert (=> b!3377243 m!3741009))

(declare-fun m!3741011 () Bool)

(assert (=> b!3377243 m!3741011))

(declare-fun m!3741013 () Bool)

(assert (=> b!3377243 m!3741013))

(declare-fun m!3741015 () Bool)

(assert (=> b!3377243 m!3741015))

(assert (=> b!3377243 m!3741007))

(declare-fun m!3741017 () Bool)

(assert (=> b!3377243 m!3741017))

(declare-fun m!3741019 () Bool)

(assert (=> b!3377243 m!3741019))

(declare-fun m!3741021 () Bool)

(assert (=> b!3377243 m!3741021))

(assert (=> b!3377243 m!3741019))

(assert (=> b!3377243 m!3741003))

(assert (=> b!3377055 d!958210))

(declare-fun d!958216 () Bool)

(declare-fun lt!1146467 () BalanceConc!21812)

(assert (=> d!958216 (= (list!13303 lt!1146467) (printList!1499 thiss!18206 (list!13306 lt!1146357)))))

(assert (=> d!958216 (= lt!1146467 (printTailRec!1446 thiss!18206 lt!1146357 0 (BalanceConc!21813 Empty!11099)))))

(assert (=> d!958216 (= (print!2016 thiss!18206 lt!1146357) lt!1146467)))

(declare-fun bs!554620 () Bool)

(assert (= bs!554620 d!958216))

(declare-fun m!3741023 () Bool)

(assert (=> bs!554620 m!3741023))

(assert (=> bs!554620 m!3741009))

(assert (=> bs!554620 m!3741009))

(declare-fun m!3741025 () Bool)

(assert (=> bs!554620 m!3741025))

(assert (=> bs!554620 m!3740683))

(assert (=> b!3377055 d!958216))

(declare-fun d!958218 () Bool)

(declare-fun list!13307 (Conc!11099) List!36933)

(assert (=> d!958218 (= (list!13303 lt!1146350) (list!13307 (c!575075 lt!1146350)))))

(declare-fun bs!554621 () Bool)

(assert (= bs!554621 d!958218))

(declare-fun m!3741027 () Bool)

(assert (=> bs!554621 m!3741027))

(assert (=> b!3377055 d!958218))

(declare-fun d!958220 () Bool)

(declare-fun e!2096214 () Bool)

(assert (=> d!958220 e!2096214))

(declare-fun res!1365948 () Bool)

(assert (=> d!958220 (=> (not res!1365948) (not e!2096214))))

(declare-fun lt!1146470 () BalanceConc!21814)

(assert (=> d!958220 (= res!1365948 (= (list!13306 lt!1146470) (Cons!36811 (h!42231 tokens!494) Nil!36811)))))

(declare-fun singleton!1072 (Token!10090) BalanceConc!21814)

(assert (=> d!958220 (= lt!1146470 (singleton!1072 (h!42231 tokens!494)))))

(assert (=> d!958220 (= (singletonSeq!2458 (h!42231 tokens!494)) lt!1146470)))

(declare-fun b!3377246 () Bool)

(declare-fun isBalanced!3345 (Conc!11100) Bool)

(assert (=> b!3377246 (= e!2096214 (isBalanced!3345 (c!575076 lt!1146470)))))

(assert (= (and d!958220 res!1365948) b!3377246))

(declare-fun m!3741029 () Bool)

(assert (=> d!958220 m!3741029))

(declare-fun m!3741031 () Bool)

(assert (=> d!958220 m!3741031))

(declare-fun m!3741033 () Bool)

(assert (=> b!3377246 m!3741033))

(assert (=> b!3377055 d!958220))

(declare-fun d!958222 () Bool)

(declare-fun c!575117 () Bool)

(assert (=> d!958222 (= c!575117 ((_ is Cons!36811) (Cons!36811 (h!42231 tokens!494) Nil!36811)))))

(declare-fun e!2096217 () List!36933)

(assert (=> d!958222 (= (printList!1499 thiss!18206 (Cons!36811 (h!42231 tokens!494) Nil!36811)) e!2096217)))

(declare-fun b!3377251 () Bool)

(assert (=> b!3377251 (= e!2096217 (++!8989 (list!13303 (charsOf!3376 (h!42231 (Cons!36811 (h!42231 tokens!494) Nil!36811)))) (printList!1499 thiss!18206 (t!262822 (Cons!36811 (h!42231 tokens!494) Nil!36811)))))))

(declare-fun b!3377252 () Bool)

(assert (=> b!3377252 (= e!2096217 Nil!36809)))

(assert (= (and d!958222 c!575117) b!3377251))

(assert (= (and d!958222 (not c!575117)) b!3377252))

(declare-fun m!3741035 () Bool)

(assert (=> b!3377251 m!3741035))

(assert (=> b!3377251 m!3741035))

(declare-fun m!3741037 () Bool)

(assert (=> b!3377251 m!3741037))

(declare-fun m!3741039 () Bool)

(assert (=> b!3377251 m!3741039))

(assert (=> b!3377251 m!3741037))

(assert (=> b!3377251 m!3741039))

(declare-fun m!3741041 () Bool)

(assert (=> b!3377251 m!3741041))

(assert (=> b!3377055 d!958222))

(declare-fun d!958224 () Bool)

(declare-fun lt!1146473 () Int)

(assert (=> d!958224 (>= lt!1146473 0)))

(declare-fun e!2096220 () Int)

(assert (=> d!958224 (= lt!1146473 e!2096220)))

(declare-fun c!575120 () Bool)

(assert (=> d!958224 (= c!575120 ((_ is Nil!36809) lt!1146342))))

(assert (=> d!958224 (= (size!27855 lt!1146342) lt!1146473)))

(declare-fun b!3377257 () Bool)

(assert (=> b!3377257 (= e!2096220 0)))

(declare-fun b!3377258 () Bool)

(assert (=> b!3377258 (= e!2096220 (+ 1 (size!27855 (t!262820 lt!1146342))))))

(assert (= (and d!958224 c!575120) b!3377257))

(assert (= (and d!958224 (not c!575120)) b!3377258))

(declare-fun m!3741043 () Bool)

(assert (=> b!3377258 m!3741043))

(assert (=> b!3377051 d!958224))

(declare-fun d!958226 () Bool)

(declare-fun isEmpty!21036 (Option!7371) Bool)

(assert (=> d!958226 (= (isDefined!5700 lt!1146351) (not (isEmpty!21036 lt!1146351)))))

(declare-fun bs!554622 () Bool)

(assert (= bs!554622 d!958226))

(declare-fun m!3741045 () Bool)

(assert (=> bs!554622 m!3741045))

(assert (=> b!3377051 d!958226))

(declare-fun d!958228 () Bool)

(declare-fun lt!1146476 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5063 (List!36933) (InoxSet C!20428))

(assert (=> d!958228 (= lt!1146476 (select (content!5063 (usedCharacters!618 (regex!5362 (rule!7906 separatorToken!241)))) lt!1146343))))

(declare-fun e!2096225 () Bool)

(assert (=> d!958228 (= lt!1146476 e!2096225)))

(declare-fun res!1365953 () Bool)

(assert (=> d!958228 (=> (not res!1365953) (not e!2096225))))

(assert (=> d!958228 (= res!1365953 ((_ is Cons!36809) (usedCharacters!618 (regex!5362 (rule!7906 separatorToken!241)))))))

(assert (=> d!958228 (= (contains!6712 (usedCharacters!618 (regex!5362 (rule!7906 separatorToken!241))) lt!1146343) lt!1146476)))

(declare-fun b!3377263 () Bool)

(declare-fun e!2096226 () Bool)

(assert (=> b!3377263 (= e!2096225 e!2096226)))

(declare-fun res!1365954 () Bool)

(assert (=> b!3377263 (=> res!1365954 e!2096226)))

(assert (=> b!3377263 (= res!1365954 (= (h!42229 (usedCharacters!618 (regex!5362 (rule!7906 separatorToken!241)))) lt!1146343))))

(declare-fun b!3377264 () Bool)

(assert (=> b!3377264 (= e!2096226 (contains!6712 (t!262820 (usedCharacters!618 (regex!5362 (rule!7906 separatorToken!241)))) lt!1146343))))

(assert (= (and d!958228 res!1365953) b!3377263))

(assert (= (and b!3377263 (not res!1365954)) b!3377264))

(assert (=> d!958228 m!3740705))

(declare-fun m!3741047 () Bool)

(assert (=> d!958228 m!3741047))

(declare-fun m!3741049 () Bool)

(assert (=> d!958228 m!3741049))

(declare-fun m!3741051 () Bool)

(assert (=> b!3377264 m!3741051))

(assert (=> b!3377051 d!958228))

(declare-fun d!958230 () Bool)

(assert (=> d!958230 (isEmpty!21028 (getSuffix!1456 lt!1146342 lt!1146342))))

(declare-fun lt!1146479 () Unit!51912)

(declare-fun choose!19517 (List!36933) Unit!51912)

(assert (=> d!958230 (= lt!1146479 (choose!19517 lt!1146342))))

(assert (=> d!958230 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!114 lt!1146342) lt!1146479)))

(declare-fun bs!554623 () Bool)

(assert (= bs!554623 d!958230))

(assert (=> bs!554623 m!3740727))

(assert (=> bs!554623 m!3740727))

(assert (=> bs!554623 m!3740729))

(declare-fun m!3741053 () Bool)

(assert (=> bs!554623 m!3741053))

(assert (=> b!3377051 d!958230))

(declare-fun d!958232 () Bool)

(declare-fun lt!1146482 () List!36933)

(assert (=> d!958232 (= (++!8989 lt!1146342 lt!1146482) lt!1146342)))

(declare-fun e!2096229 () List!36933)

(assert (=> d!958232 (= lt!1146482 e!2096229)))

(declare-fun c!575123 () Bool)

(assert (=> d!958232 (= c!575123 ((_ is Cons!36809) lt!1146342))))

(assert (=> d!958232 (>= (size!27855 lt!1146342) (size!27855 lt!1146342))))

(assert (=> d!958232 (= (getSuffix!1456 lt!1146342 lt!1146342) lt!1146482)))

(declare-fun b!3377269 () Bool)

(declare-fun tail!5341 (List!36933) List!36933)

(assert (=> b!3377269 (= e!2096229 (getSuffix!1456 (tail!5341 lt!1146342) (t!262820 lt!1146342)))))

(declare-fun b!3377270 () Bool)

(assert (=> b!3377270 (= e!2096229 lt!1146342)))

(assert (= (and d!958232 c!575123) b!3377269))

(assert (= (and d!958232 (not c!575123)) b!3377270))

(declare-fun m!3741055 () Bool)

(assert (=> d!958232 m!3741055))

(assert (=> d!958232 m!3740719))

(assert (=> d!958232 m!3740719))

(declare-fun m!3741057 () Bool)

(assert (=> b!3377269 m!3741057))

(assert (=> b!3377269 m!3741057))

(declare-fun m!3741059 () Bool)

(assert (=> b!3377269 m!3741059))

(assert (=> b!3377051 d!958232))

(declare-fun d!958234 () Bool)

(assert (=> d!958234 (= (isEmpty!21028 (getSuffix!1456 lt!1146342 lt!1146342)) ((_ is Nil!36809) (getSuffix!1456 lt!1146342 lt!1146342)))))

(assert (=> b!3377051 d!958234))

(declare-fun b!3377287 () Bool)

(declare-fun e!2096240 () List!36933)

(declare-fun call!244391 () List!36933)

(assert (=> b!3377287 (= e!2096240 call!244391)))

(declare-fun b!3377289 () Bool)

(declare-fun e!2096239 () List!36933)

(declare-fun e!2096241 () List!36933)

(assert (=> b!3377289 (= e!2096239 e!2096241)))

(declare-fun c!575132 () Bool)

(assert (=> b!3377289 (= c!575132 ((_ is ElementMatch!10121) (regex!5362 (rule!7906 separatorToken!241))))))

(declare-fun b!3377290 () Bool)

(assert (=> b!3377290 (= e!2096239 Nil!36809)))

(declare-fun c!575134 () Bool)

(declare-fun bm!244384 () Bool)

(declare-fun call!244392 () List!36933)

(declare-fun call!244390 () List!36933)

(declare-fun call!244389 () List!36933)

(assert (=> bm!244384 (= call!244392 (++!8989 (ite c!575134 call!244390 call!244389) (ite c!575134 call!244389 call!244390)))))

(declare-fun bm!244385 () Bool)

(declare-fun c!575135 () Bool)

(assert (=> bm!244385 (= call!244391 (usedCharacters!618 (ite c!575135 (reg!10450 (regex!5362 (rule!7906 separatorToken!241))) (ite c!575134 (regTwo!20755 (regex!5362 (rule!7906 separatorToken!241))) (regOne!20754 (regex!5362 (rule!7906 separatorToken!241)))))))))

(declare-fun b!3377291 () Bool)

(assert (=> b!3377291 (= e!2096241 (Cons!36809 (c!575074 (regex!5362 (rule!7906 separatorToken!241))) Nil!36809))))

(declare-fun bm!244386 () Bool)

(assert (=> bm!244386 (= call!244389 call!244391)))

(declare-fun b!3377292 () Bool)

(declare-fun e!2096238 () List!36933)

(assert (=> b!3377292 (= e!2096240 e!2096238)))

(assert (=> b!3377292 (= c!575134 ((_ is Union!10121) (regex!5362 (rule!7906 separatorToken!241))))))

(declare-fun b!3377293 () Bool)

(assert (=> b!3377293 (= c!575135 ((_ is Star!10121) (regex!5362 (rule!7906 separatorToken!241))))))

(assert (=> b!3377293 (= e!2096241 e!2096240)))

(declare-fun d!958236 () Bool)

(declare-fun c!575133 () Bool)

(assert (=> d!958236 (= c!575133 (or ((_ is EmptyExpr!10121) (regex!5362 (rule!7906 separatorToken!241))) ((_ is EmptyLang!10121) (regex!5362 (rule!7906 separatorToken!241)))))))

(assert (=> d!958236 (= (usedCharacters!618 (regex!5362 (rule!7906 separatorToken!241))) e!2096239)))

(declare-fun b!3377288 () Bool)

(assert (=> b!3377288 (= e!2096238 call!244392)))

(declare-fun b!3377294 () Bool)

(assert (=> b!3377294 (= e!2096238 call!244392)))

(declare-fun bm!244387 () Bool)

(assert (=> bm!244387 (= call!244390 (usedCharacters!618 (ite c!575134 (regOne!20755 (regex!5362 (rule!7906 separatorToken!241))) (regTwo!20754 (regex!5362 (rule!7906 separatorToken!241))))))))

(assert (= (and d!958236 c!575133) b!3377290))

(assert (= (and d!958236 (not c!575133)) b!3377289))

(assert (= (and b!3377289 c!575132) b!3377291))

(assert (= (and b!3377289 (not c!575132)) b!3377293))

(assert (= (and b!3377293 c!575135) b!3377287))

(assert (= (and b!3377293 (not c!575135)) b!3377292))

(assert (= (and b!3377292 c!575134) b!3377288))

(assert (= (and b!3377292 (not c!575134)) b!3377294))

(assert (= (or b!3377288 b!3377294) bm!244386))

(assert (= (or b!3377288 b!3377294) bm!244387))

(assert (= (or b!3377288 b!3377294) bm!244384))

(assert (= (or b!3377287 bm!244386) bm!244385))

(declare-fun m!3741061 () Bool)

(assert (=> bm!244384 m!3741061))

(declare-fun m!3741063 () Bool)

(assert (=> bm!244385 m!3741063))

(declare-fun m!3741065 () Bool)

(assert (=> bm!244387 m!3741065))

(assert (=> b!3377051 d!958236))

(declare-fun d!958238 () Bool)

(assert (=> d!958238 (= (maxPrefixOneRule!1674 thiss!18206 (rule!7906 (h!42231 tokens!494)) lt!1146342) (Some!7371 (tuple2!36373 (Token!10091 (apply!8545 (transformation!5362 (rule!7906 (h!42231 tokens!494))) (seqFromList!3778 lt!1146342)) (rule!7906 (h!42231 tokens!494)) (size!27855 lt!1146342) lt!1146342) Nil!36809)))))

(declare-fun lt!1146485 () Unit!51912)

(declare-fun choose!19518 (LexerInterface!4951 List!36934 List!36933 List!36933 List!36933 Rule!10524) Unit!51912)

(assert (=> d!958238 (= lt!1146485 (choose!19518 thiss!18206 rules!2135 lt!1146342 lt!1146342 Nil!36809 (rule!7906 (h!42231 tokens!494))))))

(assert (=> d!958238 (not (isEmpty!21027 rules!2135))))

(assert (=> d!958238 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!773 thiss!18206 rules!2135 lt!1146342 lt!1146342 Nil!36809 (rule!7906 (h!42231 tokens!494))) lt!1146485)))

(declare-fun bs!554624 () Bool)

(assert (= bs!554624 d!958238))

(assert (=> bs!554624 m!3740669))

(declare-fun m!3741067 () Bool)

(assert (=> bs!554624 m!3741067))

(assert (=> bs!554624 m!3740719))

(assert (=> bs!554624 m!3740669))

(declare-fun m!3741069 () Bool)

(assert (=> bs!554624 m!3741069))

(assert (=> bs!554624 m!3740747))

(assert (=> bs!554624 m!3740735))

(assert (=> b!3377051 d!958238))

(declare-fun d!958240 () Bool)

(assert (=> d!958240 (= (head!7205 lt!1146352) (h!42229 lt!1146352))))

(assert (=> b!3377051 d!958240))

(declare-fun d!958242 () Bool)

(assert (=> d!958242 (rulesProduceIndividualToken!2443 thiss!18206 rules!2135 (h!42231 tokens!494))))

(declare-fun lt!1146500 () Unit!51912)

(declare-fun choose!19519 (LexerInterface!4951 List!36934 List!36935 Token!10090) Unit!51912)

(assert (=> d!958242 (= lt!1146500 (choose!19519 thiss!18206 rules!2135 tokens!494 (h!42231 tokens!494)))))

(assert (=> d!958242 (not (isEmpty!21027 rules!2135))))

(assert (=> d!958242 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!946 thiss!18206 rules!2135 tokens!494 (h!42231 tokens!494)) lt!1146500)))

(declare-fun bs!554628 () Bool)

(assert (= bs!554628 d!958242))

(assert (=> bs!554628 m!3740693))

(declare-fun m!3741119 () Bool)

(assert (=> bs!554628 m!3741119))

(assert (=> bs!554628 m!3740747))

(assert (=> b!3377051 d!958242))

(declare-fun d!958262 () Bool)

(declare-fun dynLambda!15285 (Int BalanceConc!21812) TokenValue!5592)

(assert (=> d!958262 (= (apply!8545 (transformation!5362 (rule!7906 (h!42231 tokens!494))) lt!1146347) (dynLambda!15285 (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) lt!1146347))))

(declare-fun b_lambda!95765 () Bool)

(assert (=> (not b_lambda!95765) (not d!958262)))

(declare-fun t!262847 () Bool)

(declare-fun tb!179777 () Bool)

(assert (=> (and b!3377075 (= (toValue!7546 (transformation!5362 (h!42230 rules!2135))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262847) tb!179777))

(declare-fun result!223140 () Bool)

(assert (=> tb!179777 (= result!223140 (inv!21 (dynLambda!15285 (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) lt!1146347)))))

(declare-fun m!3741121 () Bool)

(assert (=> tb!179777 m!3741121))

(assert (=> d!958262 t!262847))

(declare-fun b_and!234515 () Bool)

(assert (= b_and!234479 (and (=> t!262847 result!223140) b_and!234515)))

(declare-fun t!262849 () Bool)

(declare-fun tb!179779 () Bool)

(assert (=> (and b!3377056 (= (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262849) tb!179779))

(declare-fun result!223144 () Bool)

(assert (= result!223144 result!223140))

(assert (=> d!958262 t!262849))

(declare-fun b_and!234517 () Bool)

(assert (= b_and!234483 (and (=> t!262849 result!223144) b_and!234517)))

(declare-fun tb!179781 () Bool)

(declare-fun t!262851 () Bool)

(assert (=> (and b!3377047 (= (toValue!7546 (transformation!5362 (rule!7906 separatorToken!241))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262851) tb!179781))

(declare-fun result!223146 () Bool)

(assert (= result!223146 result!223140))

(assert (=> d!958262 t!262851))

(declare-fun b_and!234519 () Bool)

(assert (= b_and!234487 (and (=> t!262851 result!223146) b_and!234519)))

(declare-fun m!3741123 () Bool)

(assert (=> d!958262 m!3741123))

(assert (=> b!3377051 d!958262))

(declare-fun b!3377425 () Bool)

(declare-fun e!2096319 () Bool)

(declare-fun e!2096322 () Bool)

(assert (=> b!3377425 (= e!2096319 e!2096322)))

(declare-fun res!1366037 () Bool)

(assert (=> b!3377425 (=> (not res!1366037) (not e!2096322))))

(declare-fun lt!1146525 () Option!7372)

(declare-fun get!11744 (Option!7372) tuple2!36372)

(assert (=> b!3377425 (= res!1366037 (matchR!4713 (regex!5362 (rule!7906 (h!42231 tokens!494))) (list!13303 (charsOf!3376 (_1!21320 (get!11744 lt!1146525))))))))

(declare-fun d!958264 () Bool)

(assert (=> d!958264 e!2096319))

(declare-fun res!1366041 () Bool)

(assert (=> d!958264 (=> res!1366041 e!2096319)))

(declare-fun isEmpty!21037 (Option!7372) Bool)

(assert (=> d!958264 (= res!1366041 (isEmpty!21037 lt!1146525))))

(declare-fun e!2096321 () Option!7372)

(assert (=> d!958264 (= lt!1146525 e!2096321)))

(declare-fun c!575160 () Bool)

(declare-datatypes ((tuple2!36380 0))(
  ( (tuple2!36381 (_1!21324 List!36933) (_2!21324 List!36933)) )
))
(declare-fun lt!1146523 () tuple2!36380)

(assert (=> d!958264 (= c!575160 (isEmpty!21028 (_1!21324 lt!1146523)))))

(declare-fun findLongestMatch!786 (Regex!10121 List!36933) tuple2!36380)

(assert (=> d!958264 (= lt!1146523 (findLongestMatch!786 (regex!5362 (rule!7906 (h!42231 tokens!494))) lt!1146342))))

(declare-fun ruleValid!1696 (LexerInterface!4951 Rule!10524) Bool)

(assert (=> d!958264 (ruleValid!1696 thiss!18206 (rule!7906 (h!42231 tokens!494)))))

(assert (=> d!958264 (= (maxPrefixOneRule!1674 thiss!18206 (rule!7906 (h!42231 tokens!494)) lt!1146342) lt!1146525)))

(declare-fun b!3377426 () Bool)

(declare-fun res!1366039 () Bool)

(assert (=> b!3377426 (=> (not res!1366039) (not e!2096322))))

(assert (=> b!3377426 (= res!1366039 (= (value!173277 (_1!21320 (get!11744 lt!1146525))) (apply!8545 (transformation!5362 (rule!7906 (_1!21320 (get!11744 lt!1146525)))) (seqFromList!3778 (originalCharacters!6076 (_1!21320 (get!11744 lt!1146525)))))))))

(declare-fun b!3377427 () Bool)

(assert (=> b!3377427 (= e!2096321 None!7371)))

(declare-fun b!3377428 () Bool)

(declare-fun res!1366038 () Bool)

(assert (=> b!3377428 (=> (not res!1366038) (not e!2096322))))

(assert (=> b!3377428 (= res!1366038 (= (++!8989 (list!13303 (charsOf!3376 (_1!21320 (get!11744 lt!1146525)))) (_2!21320 (get!11744 lt!1146525))) lt!1146342))))

(declare-fun b!3377429 () Bool)

(declare-fun res!1366042 () Bool)

(assert (=> b!3377429 (=> (not res!1366042) (not e!2096322))))

(assert (=> b!3377429 (= res!1366042 (= (rule!7906 (_1!21320 (get!11744 lt!1146525))) (rule!7906 (h!42231 tokens!494))))))

(declare-fun b!3377430 () Bool)

(declare-fun size!27859 (BalanceConc!21812) Int)

(assert (=> b!3377430 (= e!2096321 (Some!7371 (tuple2!36373 (Token!10091 (apply!8545 (transformation!5362 (rule!7906 (h!42231 tokens!494))) (seqFromList!3778 (_1!21324 lt!1146523))) (rule!7906 (h!42231 tokens!494)) (size!27859 (seqFromList!3778 (_1!21324 lt!1146523))) (_1!21324 lt!1146523)) (_2!21324 lt!1146523))))))

(declare-fun lt!1146527 () Unit!51912)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!844 (Regex!10121 List!36933) Unit!51912)

(assert (=> b!3377430 (= lt!1146527 (longestMatchIsAcceptedByMatchOrIsEmpty!844 (regex!5362 (rule!7906 (h!42231 tokens!494))) lt!1146342))))

(declare-fun res!1366040 () Bool)

(declare-fun findLongestMatchInner!871 (Regex!10121 List!36933 Int List!36933 List!36933 Int) tuple2!36380)

(assert (=> b!3377430 (= res!1366040 (isEmpty!21028 (_1!21324 (findLongestMatchInner!871 (regex!5362 (rule!7906 (h!42231 tokens!494))) Nil!36809 (size!27855 Nil!36809) lt!1146342 lt!1146342 (size!27855 lt!1146342)))))))

(declare-fun e!2096320 () Bool)

(assert (=> b!3377430 (=> res!1366040 e!2096320)))

(assert (=> b!3377430 e!2096320))

(declare-fun lt!1146526 () Unit!51912)

(assert (=> b!3377430 (= lt!1146526 lt!1146527)))

(declare-fun lt!1146524 () Unit!51912)

(declare-fun lemmaSemiInverse!1219 (TokenValueInjection!10612 BalanceConc!21812) Unit!51912)

(assert (=> b!3377430 (= lt!1146524 (lemmaSemiInverse!1219 (transformation!5362 (rule!7906 (h!42231 tokens!494))) (seqFromList!3778 (_1!21324 lt!1146523))))))

(declare-fun b!3377431 () Bool)

(assert (=> b!3377431 (= e!2096320 (matchR!4713 (regex!5362 (rule!7906 (h!42231 tokens!494))) (_1!21324 (findLongestMatchInner!871 (regex!5362 (rule!7906 (h!42231 tokens!494))) Nil!36809 (size!27855 Nil!36809) lt!1146342 lt!1146342 (size!27855 lt!1146342)))))))

(declare-fun b!3377432 () Bool)

(declare-fun res!1366043 () Bool)

(assert (=> b!3377432 (=> (not res!1366043) (not e!2096322))))

(assert (=> b!3377432 (= res!1366043 (< (size!27855 (_2!21320 (get!11744 lt!1146525))) (size!27855 lt!1146342)))))

(declare-fun b!3377433 () Bool)

(assert (=> b!3377433 (= e!2096322 (= (size!27854 (_1!21320 (get!11744 lt!1146525))) (size!27855 (originalCharacters!6076 (_1!21320 (get!11744 lt!1146525))))))))

(assert (= (and d!958264 c!575160) b!3377427))

(assert (= (and d!958264 (not c!575160)) b!3377430))

(assert (= (and b!3377430 (not res!1366040)) b!3377431))

(assert (= (and d!958264 (not res!1366041)) b!3377425))

(assert (= (and b!3377425 res!1366037) b!3377428))

(assert (= (and b!3377428 res!1366038) b!3377432))

(assert (= (and b!3377432 res!1366043) b!3377429))

(assert (= (and b!3377429 res!1366042) b!3377426))

(assert (= (and b!3377426 res!1366039) b!3377433))

(declare-fun m!3741183 () Bool)

(assert (=> b!3377431 m!3741183))

(assert (=> b!3377431 m!3740719))

(assert (=> b!3377431 m!3741183))

(assert (=> b!3377431 m!3740719))

(declare-fun m!3741185 () Bool)

(assert (=> b!3377431 m!3741185))

(declare-fun m!3741187 () Bool)

(assert (=> b!3377431 m!3741187))

(declare-fun m!3741189 () Bool)

(assert (=> b!3377430 m!3741189))

(assert (=> b!3377430 m!3741183))

(assert (=> b!3377430 m!3740719))

(assert (=> b!3377430 m!3741185))

(assert (=> b!3377430 m!3740719))

(declare-fun m!3741191 () Bool)

(assert (=> b!3377430 m!3741191))

(assert (=> b!3377430 m!3741189))

(declare-fun m!3741193 () Bool)

(assert (=> b!3377430 m!3741193))

(assert (=> b!3377430 m!3741183))

(assert (=> b!3377430 m!3741189))

(declare-fun m!3741195 () Bool)

(assert (=> b!3377430 m!3741195))

(assert (=> b!3377430 m!3741189))

(declare-fun m!3741197 () Bool)

(assert (=> b!3377430 m!3741197))

(declare-fun m!3741199 () Bool)

(assert (=> b!3377430 m!3741199))

(declare-fun m!3741201 () Bool)

(assert (=> b!3377429 m!3741201))

(assert (=> b!3377428 m!3741201))

(declare-fun m!3741203 () Bool)

(assert (=> b!3377428 m!3741203))

(assert (=> b!3377428 m!3741203))

(declare-fun m!3741205 () Bool)

(assert (=> b!3377428 m!3741205))

(assert (=> b!3377428 m!3741205))

(declare-fun m!3741207 () Bool)

(assert (=> b!3377428 m!3741207))

(assert (=> b!3377425 m!3741201))

(assert (=> b!3377425 m!3741203))

(assert (=> b!3377425 m!3741203))

(assert (=> b!3377425 m!3741205))

(assert (=> b!3377425 m!3741205))

(declare-fun m!3741209 () Bool)

(assert (=> b!3377425 m!3741209))

(assert (=> b!3377426 m!3741201))

(declare-fun m!3741211 () Bool)

(assert (=> b!3377426 m!3741211))

(assert (=> b!3377426 m!3741211))

(declare-fun m!3741213 () Bool)

(assert (=> b!3377426 m!3741213))

(declare-fun m!3741215 () Bool)

(assert (=> d!958264 m!3741215))

(declare-fun m!3741217 () Bool)

(assert (=> d!958264 m!3741217))

(declare-fun m!3741219 () Bool)

(assert (=> d!958264 m!3741219))

(declare-fun m!3741221 () Bool)

(assert (=> d!958264 m!3741221))

(assert (=> b!3377432 m!3741201))

(declare-fun m!3741223 () Bool)

(assert (=> b!3377432 m!3741223))

(assert (=> b!3377432 m!3740719))

(assert (=> b!3377433 m!3741201))

(declare-fun m!3741225 () Bool)

(assert (=> b!3377433 m!3741225))

(assert (=> b!3377051 d!958264))

(declare-fun b!3377447 () Bool)

(declare-fun e!2096333 () Bool)

(declare-fun e!2096332 () Bool)

(assert (=> b!3377447 (= e!2096333 e!2096332)))

(declare-fun res!1366048 () Bool)

(assert (=> b!3377447 (=> (not res!1366048) (not e!2096332))))

(declare-fun lt!1146536 () Option!7371)

(assert (=> b!3377447 (= res!1366048 (contains!6713 rules!2135 (get!11742 lt!1146536)))))

(declare-fun b!3377448 () Bool)

(declare-fun e!2096331 () Option!7371)

(assert (=> b!3377448 (= e!2096331 None!7370)))

(declare-fun b!3377449 () Bool)

(assert (=> b!3377449 (= e!2096332 (= (tag!5930 (get!11742 lt!1146536)) (tag!5930 (rule!7906 (h!42231 tokens!494)))))))

(declare-fun b!3377450 () Bool)

(declare-fun e!2096334 () Option!7371)

(assert (=> b!3377450 (= e!2096334 (Some!7370 (h!42230 rules!2135)))))

(declare-fun b!3377451 () Bool)

(assert (=> b!3377451 (= e!2096334 e!2096331)))

(declare-fun c!575165 () Bool)

(assert (=> b!3377451 (= c!575165 (and ((_ is Cons!36810) rules!2135) (not (= (tag!5930 (h!42230 rules!2135)) (tag!5930 (rule!7906 (h!42231 tokens!494)))))))))

(declare-fun d!958278 () Bool)

(assert (=> d!958278 e!2096333))

(declare-fun res!1366049 () Bool)

(assert (=> d!958278 (=> res!1366049 e!2096333)))

(assert (=> d!958278 (= res!1366049 (isEmpty!21036 lt!1146536))))

(assert (=> d!958278 (= lt!1146536 e!2096334)))

(declare-fun c!575166 () Bool)

(assert (=> d!958278 (= c!575166 (and ((_ is Cons!36810) rules!2135) (= (tag!5930 (h!42230 rules!2135)) (tag!5930 (rule!7906 (h!42231 tokens!494))))))))

(assert (=> d!958278 (rulesInvariant!4348 thiss!18206 rules!2135)))

(assert (=> d!958278 (= (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 (h!42231 tokens!494)))) lt!1146536)))

(declare-fun b!3377446 () Bool)

(declare-fun lt!1146535 () Unit!51912)

(declare-fun lt!1146534 () Unit!51912)

(assert (=> b!3377446 (= lt!1146535 lt!1146534)))

(assert (=> b!3377446 (rulesInvariant!4348 thiss!18206 (t!262821 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!392 (LexerInterface!4951 Rule!10524 List!36934) Unit!51912)

(assert (=> b!3377446 (= lt!1146534 (lemmaInvariantOnRulesThenOnTail!392 thiss!18206 (h!42230 rules!2135) (t!262821 rules!2135)))))

(assert (=> b!3377446 (= e!2096331 (getRuleFromTag!1017 thiss!18206 (t!262821 rules!2135) (tag!5930 (rule!7906 (h!42231 tokens!494)))))))

(assert (= (and d!958278 c!575166) b!3377450))

(assert (= (and d!958278 (not c!575166)) b!3377451))

(assert (= (and b!3377451 c!575165) b!3377446))

(assert (= (and b!3377451 (not c!575165)) b!3377448))

(assert (= (and d!958278 (not res!1366049)) b!3377447))

(assert (= (and b!3377447 res!1366048) b!3377449))

(declare-fun m!3741227 () Bool)

(assert (=> b!3377447 m!3741227))

(assert (=> b!3377447 m!3741227))

(declare-fun m!3741229 () Bool)

(assert (=> b!3377447 m!3741229))

(assert (=> b!3377449 m!3741227))

(declare-fun m!3741231 () Bool)

(assert (=> d!958278 m!3741231))

(assert (=> d!958278 m!3740671))

(declare-fun m!3741233 () Bool)

(assert (=> b!3377446 m!3741233))

(declare-fun m!3741235 () Bool)

(assert (=> b!3377446 m!3741235))

(declare-fun m!3741237 () Bool)

(assert (=> b!3377446 m!3741237))

(assert (=> b!3377051 d!958278))

(declare-fun b!3377453 () Bool)

(declare-fun e!2096337 () Bool)

(declare-fun e!2096336 () Bool)

(assert (=> b!3377453 (= e!2096337 e!2096336)))

(declare-fun res!1366050 () Bool)

(assert (=> b!3377453 (=> (not res!1366050) (not e!2096336))))

(declare-fun lt!1146539 () Option!7371)

(assert (=> b!3377453 (= res!1366050 (contains!6713 rules!2135 (get!11742 lt!1146539)))))

(declare-fun b!3377454 () Bool)

(declare-fun e!2096335 () Option!7371)

(assert (=> b!3377454 (= e!2096335 None!7370)))

(declare-fun b!3377455 () Bool)

(assert (=> b!3377455 (= e!2096336 (= (tag!5930 (get!11742 lt!1146539)) (tag!5930 (rule!7906 separatorToken!241))))))

(declare-fun b!3377456 () Bool)

(declare-fun e!2096338 () Option!7371)

(assert (=> b!3377456 (= e!2096338 (Some!7370 (h!42230 rules!2135)))))

(declare-fun b!3377457 () Bool)

(assert (=> b!3377457 (= e!2096338 e!2096335)))

(declare-fun c!575167 () Bool)

(assert (=> b!3377457 (= c!575167 (and ((_ is Cons!36810) rules!2135) (not (= (tag!5930 (h!42230 rules!2135)) (tag!5930 (rule!7906 separatorToken!241))))))))

(declare-fun d!958280 () Bool)

(assert (=> d!958280 e!2096337))

(declare-fun res!1366051 () Bool)

(assert (=> d!958280 (=> res!1366051 e!2096337)))

(assert (=> d!958280 (= res!1366051 (isEmpty!21036 lt!1146539))))

(assert (=> d!958280 (= lt!1146539 e!2096338)))

(declare-fun c!575168 () Bool)

(assert (=> d!958280 (= c!575168 (and ((_ is Cons!36810) rules!2135) (= (tag!5930 (h!42230 rules!2135)) (tag!5930 (rule!7906 separatorToken!241)))))))

(assert (=> d!958280 (rulesInvariant!4348 thiss!18206 rules!2135)))

(assert (=> d!958280 (= (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 separatorToken!241))) lt!1146539)))

(declare-fun b!3377452 () Bool)

(declare-fun lt!1146538 () Unit!51912)

(declare-fun lt!1146537 () Unit!51912)

(assert (=> b!3377452 (= lt!1146538 lt!1146537)))

(assert (=> b!3377452 (rulesInvariant!4348 thiss!18206 (t!262821 rules!2135))))

(assert (=> b!3377452 (= lt!1146537 (lemmaInvariantOnRulesThenOnTail!392 thiss!18206 (h!42230 rules!2135) (t!262821 rules!2135)))))

(assert (=> b!3377452 (= e!2096335 (getRuleFromTag!1017 thiss!18206 (t!262821 rules!2135) (tag!5930 (rule!7906 separatorToken!241))))))

(assert (= (and d!958280 c!575168) b!3377456))

(assert (= (and d!958280 (not c!575168)) b!3377457))

(assert (= (and b!3377457 c!575167) b!3377452))

(assert (= (and b!3377457 (not c!575167)) b!3377454))

(assert (= (and d!958280 (not res!1366051)) b!3377453))

(assert (= (and b!3377453 res!1366050) b!3377455))

(declare-fun m!3741239 () Bool)

(assert (=> b!3377453 m!3741239))

(assert (=> b!3377453 m!3741239))

(declare-fun m!3741241 () Bool)

(assert (=> b!3377453 m!3741241))

(assert (=> b!3377455 m!3741239))

(declare-fun m!3741243 () Bool)

(assert (=> d!958280 m!3741243))

(assert (=> d!958280 m!3740671))

(assert (=> b!3377452 m!3741233))

(assert (=> b!3377452 m!3741235))

(declare-fun m!3741245 () Bool)

(assert (=> b!3377452 m!3741245))

(assert (=> b!3377051 d!958280))

(declare-fun d!958282 () Bool)

(declare-fun e!2096341 () Bool)

(assert (=> d!958282 e!2096341))

(declare-fun res!1366056 () Bool)

(assert (=> d!958282 (=> (not res!1366056) (not e!2096341))))

(assert (=> d!958282 (= res!1366056 (isDefined!5700 (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 (h!42231 tokens!494))))))))

(declare-fun lt!1146542 () Unit!51912)

(declare-fun choose!19520 (LexerInterface!4951 List!36934 List!36933 Token!10090) Unit!51912)

(assert (=> d!958282 (= lt!1146542 (choose!19520 thiss!18206 rules!2135 lt!1146342 (h!42231 tokens!494)))))

(assert (=> d!958282 (rulesInvariant!4348 thiss!18206 rules!2135)))

(assert (=> d!958282 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1017 thiss!18206 rules!2135 lt!1146342 (h!42231 tokens!494)) lt!1146542)))

(declare-fun b!3377462 () Bool)

(declare-fun res!1366057 () Bool)

(assert (=> b!3377462 (=> (not res!1366057) (not e!2096341))))

(assert (=> b!3377462 (= res!1366057 (matchR!4713 (regex!5362 (get!11742 (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 (h!42231 tokens!494)))))) (list!13303 (charsOf!3376 (h!42231 tokens!494)))))))

(declare-fun b!3377463 () Bool)

(assert (=> b!3377463 (= e!2096341 (= (rule!7906 (h!42231 tokens!494)) (get!11742 (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 (h!42231 tokens!494)))))))))

(assert (= (and d!958282 res!1366056) b!3377462))

(assert (= (and b!3377462 res!1366057) b!3377463))

(assert (=> d!958282 m!3740707))

(assert (=> d!958282 m!3740707))

(declare-fun m!3741247 () Bool)

(assert (=> d!958282 m!3741247))

(declare-fun m!3741249 () Bool)

(assert (=> d!958282 m!3741249))

(assert (=> d!958282 m!3740671))

(assert (=> b!3377462 m!3740707))

(declare-fun m!3741251 () Bool)

(assert (=> b!3377462 m!3741251))

(assert (=> b!3377462 m!3740653))

(assert (=> b!3377462 m!3740655))

(assert (=> b!3377462 m!3740707))

(assert (=> b!3377462 m!3740653))

(assert (=> b!3377462 m!3740655))

(declare-fun m!3741253 () Bool)

(assert (=> b!3377462 m!3741253))

(assert (=> b!3377463 m!3740707))

(assert (=> b!3377463 m!3740707))

(assert (=> b!3377463 m!3741251))

(assert (=> b!3377051 d!958282))

(declare-fun d!958284 () Bool)

(assert (=> d!958284 (= (isDefined!5700 lt!1146344) (not (isEmpty!21036 lt!1146344)))))

(declare-fun bs!554629 () Bool)

(assert (= bs!554629 d!958284))

(declare-fun m!3741255 () Bool)

(assert (=> bs!554629 m!3741255))

(assert (=> b!3377051 d!958284))

(declare-fun d!958286 () Bool)

(declare-fun e!2096342 () Bool)

(assert (=> d!958286 e!2096342))

(declare-fun res!1366058 () Bool)

(assert (=> d!958286 (=> (not res!1366058) (not e!2096342))))

(assert (=> d!958286 (= res!1366058 (isDefined!5700 (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 separatorToken!241)))))))

(declare-fun lt!1146543 () Unit!51912)

(assert (=> d!958286 (= lt!1146543 (choose!19520 thiss!18206 rules!2135 lt!1146352 separatorToken!241))))

(assert (=> d!958286 (rulesInvariant!4348 thiss!18206 rules!2135)))

(assert (=> d!958286 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1017 thiss!18206 rules!2135 lt!1146352 separatorToken!241) lt!1146543)))

(declare-fun b!3377464 () Bool)

(declare-fun res!1366059 () Bool)

(assert (=> b!3377464 (=> (not res!1366059) (not e!2096342))))

(assert (=> b!3377464 (= res!1366059 (matchR!4713 (regex!5362 (get!11742 (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 separatorToken!241))))) (list!13303 (charsOf!3376 separatorToken!241))))))

(declare-fun b!3377465 () Bool)

(assert (=> b!3377465 (= e!2096342 (= (rule!7906 separatorToken!241) (get!11742 (getRuleFromTag!1017 thiss!18206 rules!2135 (tag!5930 (rule!7906 separatorToken!241))))))))

(assert (= (and d!958286 res!1366058) b!3377464))

(assert (= (and b!3377464 res!1366059) b!3377465))

(assert (=> d!958286 m!3740733))

(assert (=> d!958286 m!3740733))

(declare-fun m!3741257 () Bool)

(assert (=> d!958286 m!3741257))

(declare-fun m!3741259 () Bool)

(assert (=> d!958286 m!3741259))

(assert (=> d!958286 m!3740671))

(assert (=> b!3377464 m!3740733))

(declare-fun m!3741261 () Bool)

(assert (=> b!3377464 m!3741261))

(assert (=> b!3377464 m!3740737))

(assert (=> b!3377464 m!3740743))

(assert (=> b!3377464 m!3740733))

(assert (=> b!3377464 m!3740737))

(assert (=> b!3377464 m!3740743))

(declare-fun m!3741263 () Bool)

(assert (=> b!3377464 m!3741263))

(assert (=> b!3377465 m!3740733))

(assert (=> b!3377465 m!3740733))

(assert (=> b!3377465 m!3741261))

(assert (=> b!3377051 d!958286))

(declare-fun d!958288 () Bool)

(assert (=> d!958288 (not (matchR!4713 (regex!5362 (rule!7906 separatorToken!241)) lt!1146352))))

(declare-fun lt!1146546 () Unit!51912)

(declare-fun choose!19521 (Regex!10121 List!36933 C!20428) Unit!51912)

(assert (=> d!958288 (= lt!1146546 (choose!19521 (regex!5362 (rule!7906 separatorToken!241)) lt!1146352 lt!1146343))))

(declare-fun validRegex!4600 (Regex!10121) Bool)

(assert (=> d!958288 (validRegex!4600 (regex!5362 (rule!7906 separatorToken!241)))))

(assert (=> d!958288 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!452 (regex!5362 (rule!7906 separatorToken!241)) lt!1146352 lt!1146343) lt!1146546)))

(declare-fun bs!554630 () Bool)

(assert (= bs!554630 d!958288))

(assert (=> bs!554630 m!3740651))

(declare-fun m!3741265 () Bool)

(assert (=> bs!554630 m!3741265))

(declare-fun m!3741267 () Bool)

(assert (=> bs!554630 m!3741267))

(assert (=> b!3377072 d!958288))

(declare-fun b!3377494 () Bool)

(declare-fun e!2096362 () Bool)

(assert (=> b!3377494 (= e!2096362 (not (= (head!7205 lt!1146352) (c!575074 (regex!5362 (rule!7906 separatorToken!241))))))))

(declare-fun b!3377495 () Bool)

(declare-fun e!2096359 () Bool)

(assert (=> b!3377495 (= e!2096359 (= (head!7205 lt!1146352) (c!575074 (regex!5362 (rule!7906 separatorToken!241)))))))

(declare-fun b!3377496 () Bool)

(declare-fun res!1366081 () Bool)

(declare-fun e!2096363 () Bool)

(assert (=> b!3377496 (=> res!1366081 e!2096363)))

(assert (=> b!3377496 (= res!1366081 e!2096359)))

(declare-fun res!1366082 () Bool)

(assert (=> b!3377496 (=> (not res!1366082) (not e!2096359))))

(declare-fun lt!1146549 () Bool)

(assert (=> b!3377496 (= res!1366082 lt!1146549)))

(declare-fun b!3377497 () Bool)

(declare-fun e!2096357 () Bool)

(assert (=> b!3377497 (= e!2096357 (not lt!1146549))))

(declare-fun b!3377498 () Bool)

(declare-fun res!1366076 () Bool)

(assert (=> b!3377498 (=> (not res!1366076) (not e!2096359))))

(declare-fun call!244399 () Bool)

(assert (=> b!3377498 (= res!1366076 (not call!244399))))

(declare-fun b!3377499 () Bool)

(declare-fun e!2096361 () Bool)

(assert (=> b!3377499 (= e!2096361 e!2096357)))

(declare-fun c!575178 () Bool)

(assert (=> b!3377499 (= c!575178 ((_ is EmptyLang!10121) (regex!5362 (rule!7906 separatorToken!241))))))

(declare-fun bm!244394 () Bool)

(assert (=> bm!244394 (= call!244399 (isEmpty!21028 lt!1146352))))

(declare-fun b!3377500 () Bool)

(declare-fun res!1366083 () Bool)

(assert (=> b!3377500 (=> (not res!1366083) (not e!2096359))))

(assert (=> b!3377500 (= res!1366083 (isEmpty!21028 (tail!5341 lt!1146352)))))

(declare-fun b!3377501 () Bool)

(declare-fun res!1366078 () Bool)

(assert (=> b!3377501 (=> res!1366078 e!2096363)))

(assert (=> b!3377501 (= res!1366078 (not ((_ is ElementMatch!10121) (regex!5362 (rule!7906 separatorToken!241)))))))

(assert (=> b!3377501 (= e!2096357 e!2096363)))

(declare-fun d!958290 () Bool)

(assert (=> d!958290 e!2096361))

(declare-fun c!575176 () Bool)

(assert (=> d!958290 (= c!575176 ((_ is EmptyExpr!10121) (regex!5362 (rule!7906 separatorToken!241))))))

(declare-fun e!2096360 () Bool)

(assert (=> d!958290 (= lt!1146549 e!2096360)))

(declare-fun c!575177 () Bool)

(assert (=> d!958290 (= c!575177 (isEmpty!21028 lt!1146352))))

(assert (=> d!958290 (validRegex!4600 (regex!5362 (rule!7906 separatorToken!241)))))

(assert (=> d!958290 (= (matchR!4713 (regex!5362 (rule!7906 separatorToken!241)) lt!1146352) lt!1146549)))

(declare-fun b!3377502 () Bool)

(declare-fun nullable!3444 (Regex!10121) Bool)

(assert (=> b!3377502 (= e!2096360 (nullable!3444 (regex!5362 (rule!7906 separatorToken!241))))))

(declare-fun b!3377503 () Bool)

(declare-fun e!2096358 () Bool)

(assert (=> b!3377503 (= e!2096358 e!2096362)))

(declare-fun res!1366080 () Bool)

(assert (=> b!3377503 (=> res!1366080 e!2096362)))

(assert (=> b!3377503 (= res!1366080 call!244399)))

(declare-fun b!3377504 () Bool)

(declare-fun derivativeStep!2997 (Regex!10121 C!20428) Regex!10121)

(assert (=> b!3377504 (= e!2096360 (matchR!4713 (derivativeStep!2997 (regex!5362 (rule!7906 separatorToken!241)) (head!7205 lt!1146352)) (tail!5341 lt!1146352)))))

(declare-fun b!3377505 () Bool)

(assert (=> b!3377505 (= e!2096363 e!2096358)))

(declare-fun res!1366077 () Bool)

(assert (=> b!3377505 (=> (not res!1366077) (not e!2096358))))

(assert (=> b!3377505 (= res!1366077 (not lt!1146549))))

(declare-fun b!3377506 () Bool)

(declare-fun res!1366079 () Bool)

(assert (=> b!3377506 (=> res!1366079 e!2096362)))

(assert (=> b!3377506 (= res!1366079 (not (isEmpty!21028 (tail!5341 lt!1146352))))))

(declare-fun b!3377507 () Bool)

(assert (=> b!3377507 (= e!2096361 (= lt!1146549 call!244399))))

(assert (= (and d!958290 c!575177) b!3377502))

(assert (= (and d!958290 (not c!575177)) b!3377504))

(assert (= (and d!958290 c!575176) b!3377507))

(assert (= (and d!958290 (not c!575176)) b!3377499))

(assert (= (and b!3377499 c!575178) b!3377497))

(assert (= (and b!3377499 (not c!575178)) b!3377501))

(assert (= (and b!3377501 (not res!1366078)) b!3377496))

(assert (= (and b!3377496 res!1366082) b!3377498))

(assert (= (and b!3377498 res!1366076) b!3377500))

(assert (= (and b!3377500 res!1366083) b!3377495))

(assert (= (and b!3377496 (not res!1366081)) b!3377505))

(assert (= (and b!3377505 res!1366077) b!3377503))

(assert (= (and b!3377503 (not res!1366080)) b!3377506))

(assert (= (and b!3377506 (not res!1366079)) b!3377494))

(assert (= (or b!3377507 b!3377498 b!3377503) bm!244394))

(declare-fun m!3741269 () Bool)

(assert (=> b!3377502 m!3741269))

(assert (=> b!3377504 m!3740715))

(assert (=> b!3377504 m!3740715))

(declare-fun m!3741271 () Bool)

(assert (=> b!3377504 m!3741271))

(declare-fun m!3741273 () Bool)

(assert (=> b!3377504 m!3741273))

(assert (=> b!3377504 m!3741271))

(assert (=> b!3377504 m!3741273))

(declare-fun m!3741275 () Bool)

(assert (=> b!3377504 m!3741275))

(assert (=> b!3377506 m!3741273))

(assert (=> b!3377506 m!3741273))

(declare-fun m!3741277 () Bool)

(assert (=> b!3377506 m!3741277))

(assert (=> b!3377500 m!3741273))

(assert (=> b!3377500 m!3741273))

(assert (=> b!3377500 m!3741277))

(assert (=> b!3377494 m!3740715))

(declare-fun m!3741279 () Bool)

(assert (=> d!958290 m!3741279))

(assert (=> d!958290 m!3741267))

(assert (=> b!3377495 m!3740715))

(assert (=> bm!244394 m!3741279))

(assert (=> b!3377072 d!958290))

(declare-fun d!958292 () Bool)

(declare-fun dynLambda!15289 (Int Token!10090) Bool)

(assert (=> d!958292 (dynLambda!15289 lambda!120385 (h!42231 tokens!494))))

(declare-fun lt!1146552 () Unit!51912)

(declare-fun choose!19522 (List!36935 Int Token!10090) Unit!51912)

(assert (=> d!958292 (= lt!1146552 (choose!19522 tokens!494 lambda!120385 (h!42231 tokens!494)))))

(declare-fun e!2096366 () Bool)

(assert (=> d!958292 e!2096366))

(declare-fun res!1366086 () Bool)

(assert (=> d!958292 (=> (not res!1366086) (not e!2096366))))

(assert (=> d!958292 (= res!1366086 (forall!7737 tokens!494 lambda!120385))))

(assert (=> d!958292 (= (forallContained!1309 tokens!494 lambda!120385 (h!42231 tokens!494)) lt!1146552)))

(declare-fun b!3377510 () Bool)

(declare-fun contains!6715 (List!36935 Token!10090) Bool)

(assert (=> b!3377510 (= e!2096366 (contains!6715 tokens!494 (h!42231 tokens!494)))))

(assert (= (and d!958292 res!1366086) b!3377510))

(declare-fun b_lambda!95769 () Bool)

(assert (=> (not b_lambda!95769) (not d!958292)))

(declare-fun m!3741281 () Bool)

(assert (=> d!958292 m!3741281))

(declare-fun m!3741283 () Bool)

(assert (=> d!958292 m!3741283))

(assert (=> d!958292 m!3740657))

(declare-fun m!3741285 () Bool)

(assert (=> b!3377510 m!3741285))

(assert (=> b!3377074 d!958292))

(declare-fun d!958294 () Bool)

(declare-fun c!575183 () Bool)

(assert (=> d!958294 (= c!575183 ((_ is IntegerValue!16776) (value!173277 (h!42231 tokens!494))))))

(declare-fun e!2096375 () Bool)

(assert (=> d!958294 (= (inv!21 (value!173277 (h!42231 tokens!494))) e!2096375)))

(declare-fun b!3377521 () Bool)

(declare-fun inv!16 (TokenValue!5592) Bool)

(assert (=> b!3377521 (= e!2096375 (inv!16 (value!173277 (h!42231 tokens!494))))))

(declare-fun b!3377522 () Bool)

(declare-fun res!1366089 () Bool)

(declare-fun e!2096373 () Bool)

(assert (=> b!3377522 (=> res!1366089 e!2096373)))

(assert (=> b!3377522 (= res!1366089 (not ((_ is IntegerValue!16778) (value!173277 (h!42231 tokens!494)))))))

(declare-fun e!2096374 () Bool)

(assert (=> b!3377522 (= e!2096374 e!2096373)))

(declare-fun b!3377523 () Bool)

(declare-fun inv!17 (TokenValue!5592) Bool)

(assert (=> b!3377523 (= e!2096374 (inv!17 (value!173277 (h!42231 tokens!494))))))

(declare-fun b!3377524 () Bool)

(assert (=> b!3377524 (= e!2096375 e!2096374)))

(declare-fun c!575184 () Bool)

(assert (=> b!3377524 (= c!575184 ((_ is IntegerValue!16777) (value!173277 (h!42231 tokens!494))))))

(declare-fun b!3377525 () Bool)

(declare-fun inv!15 (TokenValue!5592) Bool)

(assert (=> b!3377525 (= e!2096373 (inv!15 (value!173277 (h!42231 tokens!494))))))

(assert (= (and d!958294 c!575183) b!3377521))

(assert (= (and d!958294 (not c!575183)) b!3377524))

(assert (= (and b!3377524 c!575184) b!3377523))

(assert (= (and b!3377524 (not c!575184)) b!3377522))

(assert (= (and b!3377522 (not res!1366089)) b!3377525))

(declare-fun m!3741287 () Bool)

(assert (=> b!3377521 m!3741287))

(declare-fun m!3741289 () Bool)

(assert (=> b!3377523 m!3741289))

(declare-fun m!3741291 () Bool)

(assert (=> b!3377525 m!3741291))

(assert (=> b!3377052 d!958294))

(declare-fun b!3377526 () Bool)

(declare-fun e!2096381 () Bool)

(assert (=> b!3377526 (= e!2096381 (not (= (head!7205 lt!1146342) (c!575074 (regex!5362 lt!1146338)))))))

(declare-fun b!3377527 () Bool)

(declare-fun e!2096378 () Bool)

(assert (=> b!3377527 (= e!2096378 (= (head!7205 lt!1146342) (c!575074 (regex!5362 lt!1146338))))))

(declare-fun b!3377528 () Bool)

(declare-fun res!1366095 () Bool)

(declare-fun e!2096382 () Bool)

(assert (=> b!3377528 (=> res!1366095 e!2096382)))

(assert (=> b!3377528 (= res!1366095 e!2096378)))

(declare-fun res!1366096 () Bool)

(assert (=> b!3377528 (=> (not res!1366096) (not e!2096378))))

(declare-fun lt!1146553 () Bool)

(assert (=> b!3377528 (= res!1366096 lt!1146553)))

(declare-fun b!3377529 () Bool)

(declare-fun e!2096376 () Bool)

(assert (=> b!3377529 (= e!2096376 (not lt!1146553))))

(declare-fun b!3377530 () Bool)

(declare-fun res!1366090 () Bool)

(assert (=> b!3377530 (=> (not res!1366090) (not e!2096378))))

(declare-fun call!244400 () Bool)

(assert (=> b!3377530 (= res!1366090 (not call!244400))))

(declare-fun b!3377531 () Bool)

(declare-fun e!2096380 () Bool)

(assert (=> b!3377531 (= e!2096380 e!2096376)))

(declare-fun c!575187 () Bool)

(assert (=> b!3377531 (= c!575187 ((_ is EmptyLang!10121) (regex!5362 lt!1146338)))))

(declare-fun bm!244395 () Bool)

(assert (=> bm!244395 (= call!244400 (isEmpty!21028 lt!1146342))))

(declare-fun b!3377532 () Bool)

(declare-fun res!1366097 () Bool)

(assert (=> b!3377532 (=> (not res!1366097) (not e!2096378))))

(assert (=> b!3377532 (= res!1366097 (isEmpty!21028 (tail!5341 lt!1146342)))))

(declare-fun b!3377533 () Bool)

(declare-fun res!1366092 () Bool)

(assert (=> b!3377533 (=> res!1366092 e!2096382)))

(assert (=> b!3377533 (= res!1366092 (not ((_ is ElementMatch!10121) (regex!5362 lt!1146338))))))

(assert (=> b!3377533 (= e!2096376 e!2096382)))

(declare-fun d!958296 () Bool)

(assert (=> d!958296 e!2096380))

(declare-fun c!575185 () Bool)

(assert (=> d!958296 (= c!575185 ((_ is EmptyExpr!10121) (regex!5362 lt!1146338)))))

(declare-fun e!2096379 () Bool)

(assert (=> d!958296 (= lt!1146553 e!2096379)))

(declare-fun c!575186 () Bool)

(assert (=> d!958296 (= c!575186 (isEmpty!21028 lt!1146342))))

(assert (=> d!958296 (validRegex!4600 (regex!5362 lt!1146338))))

(assert (=> d!958296 (= (matchR!4713 (regex!5362 lt!1146338) lt!1146342) lt!1146553)))

(declare-fun b!3377534 () Bool)

(assert (=> b!3377534 (= e!2096379 (nullable!3444 (regex!5362 lt!1146338)))))

(declare-fun b!3377535 () Bool)

(declare-fun e!2096377 () Bool)

(assert (=> b!3377535 (= e!2096377 e!2096381)))

(declare-fun res!1366094 () Bool)

(assert (=> b!3377535 (=> res!1366094 e!2096381)))

(assert (=> b!3377535 (= res!1366094 call!244400)))

(declare-fun b!3377536 () Bool)

(assert (=> b!3377536 (= e!2096379 (matchR!4713 (derivativeStep!2997 (regex!5362 lt!1146338) (head!7205 lt!1146342)) (tail!5341 lt!1146342)))))

(declare-fun b!3377537 () Bool)

(assert (=> b!3377537 (= e!2096382 e!2096377)))

(declare-fun res!1366091 () Bool)

(assert (=> b!3377537 (=> (not res!1366091) (not e!2096377))))

(assert (=> b!3377537 (= res!1366091 (not lt!1146553))))

(declare-fun b!3377538 () Bool)

(declare-fun res!1366093 () Bool)

(assert (=> b!3377538 (=> res!1366093 e!2096381)))

(assert (=> b!3377538 (= res!1366093 (not (isEmpty!21028 (tail!5341 lt!1146342))))))

(declare-fun b!3377539 () Bool)

(assert (=> b!3377539 (= e!2096380 (= lt!1146553 call!244400))))

(assert (= (and d!958296 c!575186) b!3377534))

(assert (= (and d!958296 (not c!575186)) b!3377536))

(assert (= (and d!958296 c!575185) b!3377539))

(assert (= (and d!958296 (not c!575185)) b!3377531))

(assert (= (and b!3377531 c!575187) b!3377529))

(assert (= (and b!3377531 (not c!575187)) b!3377533))

(assert (= (and b!3377533 (not res!1366092)) b!3377528))

(assert (= (and b!3377528 res!1366096) b!3377530))

(assert (= (and b!3377530 res!1366090) b!3377532))

(assert (= (and b!3377532 res!1366097) b!3377527))

(assert (= (and b!3377528 (not res!1366095)) b!3377537))

(assert (= (and b!3377537 res!1366091) b!3377535))

(assert (= (and b!3377535 (not res!1366094)) b!3377538))

(assert (= (and b!3377538 (not res!1366093)) b!3377526))

(assert (= (or b!3377539 b!3377530 b!3377535) bm!244395))

(declare-fun m!3741293 () Bool)

(assert (=> b!3377534 m!3741293))

(declare-fun m!3741295 () Bool)

(assert (=> b!3377536 m!3741295))

(assert (=> b!3377536 m!3741295))

(declare-fun m!3741297 () Bool)

(assert (=> b!3377536 m!3741297))

(assert (=> b!3377536 m!3741057))

(assert (=> b!3377536 m!3741297))

(assert (=> b!3377536 m!3741057))

(declare-fun m!3741299 () Bool)

(assert (=> b!3377536 m!3741299))

(assert (=> b!3377538 m!3741057))

(assert (=> b!3377538 m!3741057))

(declare-fun m!3741301 () Bool)

(assert (=> b!3377538 m!3741301))

(assert (=> b!3377532 m!3741057))

(assert (=> b!3377532 m!3741057))

(assert (=> b!3377532 m!3741301))

(assert (=> b!3377526 m!3741295))

(declare-fun m!3741303 () Bool)

(assert (=> d!958296 m!3741303))

(declare-fun m!3741305 () Bool)

(assert (=> d!958296 m!3741305))

(assert (=> b!3377527 m!3741295))

(assert (=> bm!244395 m!3741303))

(assert (=> b!3377070 d!958296))

(declare-fun d!958298 () Bool)

(assert (=> d!958298 (= (get!11742 lt!1146351) (v!36418 lt!1146351))))

(assert (=> b!3377070 d!958298))

(declare-fun d!958300 () Bool)

(assert (=> d!958300 (= (list!13303 (charsOf!3376 (h!42231 tokens!494))) (list!13307 (c!575075 (charsOf!3376 (h!42231 tokens!494)))))))

(declare-fun bs!554631 () Bool)

(assert (= bs!554631 d!958300))

(declare-fun m!3741307 () Bool)

(assert (=> bs!554631 m!3741307))

(assert (=> b!3377069 d!958300))

(declare-fun d!958302 () Bool)

(declare-fun lt!1146556 () BalanceConc!21812)

(assert (=> d!958302 (= (list!13303 lt!1146556) (originalCharacters!6076 (h!42231 tokens!494)))))

(assert (=> d!958302 (= lt!1146556 (dynLambda!15283 (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (value!173277 (h!42231 tokens!494))))))

(assert (=> d!958302 (= (charsOf!3376 (h!42231 tokens!494)) lt!1146556)))

(declare-fun b_lambda!95771 () Bool)

(assert (=> (not b_lambda!95771) (not d!958302)))

(assert (=> d!958302 t!262839))

(declare-fun b_and!234521 () Bool)

(assert (= b_and!234503 (and (=> t!262839 result!223132) b_and!234521)))

(assert (=> d!958302 t!262841))

(declare-fun b_and!234523 () Bool)

(assert (= b_and!234505 (and (=> t!262841 result!223136) b_and!234523)))

(assert (=> d!958302 t!262843))

(declare-fun b_and!234525 () Bool)

(assert (= b_and!234507 (and (=> t!262843 result!223138) b_and!234525)))

(declare-fun m!3741309 () Bool)

(assert (=> d!958302 m!3741309))

(assert (=> d!958302 m!3740967))

(assert (=> b!3377069 d!958302))

(declare-fun d!958304 () Bool)

(declare-fun c!575188 () Bool)

(assert (=> d!958304 (= c!575188 ((_ is IntegerValue!16776) (value!173277 separatorToken!241)))))

(declare-fun e!2096385 () Bool)

(assert (=> d!958304 (= (inv!21 (value!173277 separatorToken!241)) e!2096385)))

(declare-fun b!3377540 () Bool)

(assert (=> b!3377540 (= e!2096385 (inv!16 (value!173277 separatorToken!241)))))

(declare-fun b!3377541 () Bool)

(declare-fun res!1366098 () Bool)

(declare-fun e!2096383 () Bool)

(assert (=> b!3377541 (=> res!1366098 e!2096383)))

(assert (=> b!3377541 (= res!1366098 (not ((_ is IntegerValue!16778) (value!173277 separatorToken!241))))))

(declare-fun e!2096384 () Bool)

(assert (=> b!3377541 (= e!2096384 e!2096383)))

(declare-fun b!3377542 () Bool)

(assert (=> b!3377542 (= e!2096384 (inv!17 (value!173277 separatorToken!241)))))

(declare-fun b!3377543 () Bool)

(assert (=> b!3377543 (= e!2096385 e!2096384)))

(declare-fun c!575189 () Bool)

(assert (=> b!3377543 (= c!575189 ((_ is IntegerValue!16777) (value!173277 separatorToken!241)))))

(declare-fun b!3377544 () Bool)

(assert (=> b!3377544 (= e!2096383 (inv!15 (value!173277 separatorToken!241)))))

(assert (= (and d!958304 c!575188) b!3377540))

(assert (= (and d!958304 (not c!575188)) b!3377543))

(assert (= (and b!3377543 c!575189) b!3377542))

(assert (= (and b!3377543 (not c!575189)) b!3377541))

(assert (= (and b!3377541 (not res!1366098)) b!3377544))

(declare-fun m!3741311 () Bool)

(assert (=> b!3377540 m!3741311))

(declare-fun m!3741313 () Bool)

(assert (=> b!3377542 m!3741313))

(declare-fun m!3741315 () Bool)

(assert (=> b!3377544 m!3741315))

(assert (=> b!3377048 d!958304))

(declare-fun d!958306 () Bool)

(declare-fun lt!1146559 () Bool)

(declare-fun isEmpty!21038 (List!36935) Bool)

(assert (=> d!958306 (= lt!1146559 (isEmpty!21038 (list!13306 (_1!21321 (lex!2277 thiss!18206 rules!2135 lt!1146347)))))))

(declare-fun isEmpty!21039 (Conc!11100) Bool)

(assert (=> d!958306 (= lt!1146559 (isEmpty!21039 (c!575076 (_1!21321 (lex!2277 thiss!18206 rules!2135 lt!1146347)))))))

(assert (=> d!958306 (= (isEmpty!21029 (_1!21321 (lex!2277 thiss!18206 rules!2135 lt!1146347))) lt!1146559)))

(declare-fun bs!554632 () Bool)

(assert (= bs!554632 d!958306))

(declare-fun m!3741317 () Bool)

(assert (=> bs!554632 m!3741317))

(assert (=> bs!554632 m!3741317))

(declare-fun m!3741319 () Bool)

(assert (=> bs!554632 m!3741319))

(declare-fun m!3741321 () Bool)

(assert (=> bs!554632 m!3741321))

(assert (=> b!3377071 d!958306))

(declare-fun b!3377555 () Bool)

(declare-fun e!2096394 () Bool)

(declare-fun lt!1146564 () tuple2!36374)

(assert (=> b!3377555 (= e!2096394 (not (isEmpty!21029 (_1!21321 lt!1146564))))))

(declare-fun d!958308 () Bool)

(declare-fun e!2096393 () Bool)

(assert (=> d!958308 e!2096393))

(declare-fun res!1366107 () Bool)

(assert (=> d!958308 (=> (not res!1366107) (not e!2096393))))

(declare-fun e!2096392 () Bool)

(assert (=> d!958308 (= res!1366107 e!2096392)))

(declare-fun c!575192 () Bool)

(assert (=> d!958308 (= c!575192 (> (size!27858 (_1!21321 lt!1146564)) 0))))

(declare-fun lexTailRecV2!1008 (LexerInterface!4951 List!36934 BalanceConc!21812 BalanceConc!21812 BalanceConc!21812 BalanceConc!21814) tuple2!36374)

(assert (=> d!958308 (= lt!1146564 (lexTailRecV2!1008 thiss!18206 rules!2135 lt!1146347 (BalanceConc!21813 Empty!11099) lt!1146347 (BalanceConc!21815 Empty!11100)))))

(assert (=> d!958308 (= (lex!2277 thiss!18206 rules!2135 lt!1146347) lt!1146564)))

(declare-fun b!3377556 () Bool)

(assert (=> b!3377556 (= e!2096392 (= (_2!21321 lt!1146564) lt!1146347))))

(declare-fun b!3377557 () Bool)

(declare-fun res!1366106 () Bool)

(assert (=> b!3377557 (=> (not res!1366106) (not e!2096393))))

(declare-datatypes ((tuple2!36382 0))(
  ( (tuple2!36383 (_1!21325 List!36935) (_2!21325 List!36933)) )
))
(declare-fun lexList!1398 (LexerInterface!4951 List!36934 List!36933) tuple2!36382)

(assert (=> b!3377557 (= res!1366106 (= (list!13306 (_1!21321 lt!1146564)) (_1!21325 (lexList!1398 thiss!18206 rules!2135 (list!13303 lt!1146347)))))))

(declare-fun b!3377558 () Bool)

(assert (=> b!3377558 (= e!2096392 e!2096394)))

(declare-fun res!1366105 () Bool)

(assert (=> b!3377558 (= res!1366105 (< (size!27859 (_2!21321 lt!1146564)) (size!27859 lt!1146347)))))

(assert (=> b!3377558 (=> (not res!1366105) (not e!2096394))))

(declare-fun b!3377559 () Bool)

(assert (=> b!3377559 (= e!2096393 (= (list!13303 (_2!21321 lt!1146564)) (_2!21325 (lexList!1398 thiss!18206 rules!2135 (list!13303 lt!1146347)))))))

(assert (= (and d!958308 c!575192) b!3377558))

(assert (= (and d!958308 (not c!575192)) b!3377556))

(assert (= (and b!3377558 res!1366105) b!3377555))

(assert (= (and d!958308 res!1366107) b!3377557))

(assert (= (and b!3377557 res!1366106) b!3377559))

(declare-fun m!3741323 () Bool)

(assert (=> b!3377559 m!3741323))

(declare-fun m!3741325 () Bool)

(assert (=> b!3377559 m!3741325))

(assert (=> b!3377559 m!3741325))

(declare-fun m!3741327 () Bool)

(assert (=> b!3377559 m!3741327))

(declare-fun m!3741329 () Bool)

(assert (=> b!3377558 m!3741329))

(declare-fun m!3741331 () Bool)

(assert (=> b!3377558 m!3741331))

(declare-fun m!3741333 () Bool)

(assert (=> b!3377555 m!3741333))

(declare-fun m!3741335 () Bool)

(assert (=> d!958308 m!3741335))

(declare-fun m!3741337 () Bool)

(assert (=> d!958308 m!3741337))

(declare-fun m!3741339 () Bool)

(assert (=> b!3377557 m!3741339))

(assert (=> b!3377557 m!3741325))

(assert (=> b!3377557 m!3741325))

(assert (=> b!3377557 m!3741327))

(assert (=> b!3377071 d!958308))

(declare-fun d!958310 () Bool)

(declare-fun fromListB!1686 (List!36933) BalanceConc!21812)

(assert (=> d!958310 (= (seqFromList!3778 lt!1146342) (fromListB!1686 lt!1146342))))

(declare-fun bs!554633 () Bool)

(assert (= bs!554633 d!958310))

(declare-fun m!3741341 () Bool)

(assert (=> bs!554633 m!3741341))

(assert (=> b!3377071 d!958310))

(declare-fun d!958312 () Bool)

(assert (=> d!958312 (= (isEmpty!21027 rules!2135) ((_ is Nil!36810) rules!2135))))

(assert (=> b!3377050 d!958312))

(declare-fun b!3377560 () Bool)

(declare-fun e!2096400 () Bool)

(assert (=> b!3377560 (= e!2096400 (not (= (head!7205 lt!1146352) (c!575074 (regex!5362 lt!1146358)))))))

(declare-fun b!3377561 () Bool)

(declare-fun e!2096397 () Bool)

(assert (=> b!3377561 (= e!2096397 (= (head!7205 lt!1146352) (c!575074 (regex!5362 lt!1146358))))))

(declare-fun b!3377562 () Bool)

(declare-fun res!1366113 () Bool)

(declare-fun e!2096401 () Bool)

(assert (=> b!3377562 (=> res!1366113 e!2096401)))

(assert (=> b!3377562 (= res!1366113 e!2096397)))

(declare-fun res!1366114 () Bool)

(assert (=> b!3377562 (=> (not res!1366114) (not e!2096397))))

(declare-fun lt!1146565 () Bool)

(assert (=> b!3377562 (= res!1366114 lt!1146565)))

(declare-fun b!3377563 () Bool)

(declare-fun e!2096395 () Bool)

(assert (=> b!3377563 (= e!2096395 (not lt!1146565))))

(declare-fun b!3377564 () Bool)

(declare-fun res!1366108 () Bool)

(assert (=> b!3377564 (=> (not res!1366108) (not e!2096397))))

(declare-fun call!244401 () Bool)

(assert (=> b!3377564 (= res!1366108 (not call!244401))))

(declare-fun b!3377565 () Bool)

(declare-fun e!2096399 () Bool)

(assert (=> b!3377565 (= e!2096399 e!2096395)))

(declare-fun c!575195 () Bool)

(assert (=> b!3377565 (= c!575195 ((_ is EmptyLang!10121) (regex!5362 lt!1146358)))))

(declare-fun bm!244396 () Bool)

(assert (=> bm!244396 (= call!244401 (isEmpty!21028 lt!1146352))))

(declare-fun b!3377566 () Bool)

(declare-fun res!1366115 () Bool)

(assert (=> b!3377566 (=> (not res!1366115) (not e!2096397))))

(assert (=> b!3377566 (= res!1366115 (isEmpty!21028 (tail!5341 lt!1146352)))))

(declare-fun b!3377567 () Bool)

(declare-fun res!1366110 () Bool)

(assert (=> b!3377567 (=> res!1366110 e!2096401)))

(assert (=> b!3377567 (= res!1366110 (not ((_ is ElementMatch!10121) (regex!5362 lt!1146358))))))

(assert (=> b!3377567 (= e!2096395 e!2096401)))

(declare-fun d!958314 () Bool)

(assert (=> d!958314 e!2096399))

(declare-fun c!575193 () Bool)

(assert (=> d!958314 (= c!575193 ((_ is EmptyExpr!10121) (regex!5362 lt!1146358)))))

(declare-fun e!2096398 () Bool)

(assert (=> d!958314 (= lt!1146565 e!2096398)))

(declare-fun c!575194 () Bool)

(assert (=> d!958314 (= c!575194 (isEmpty!21028 lt!1146352))))

(assert (=> d!958314 (validRegex!4600 (regex!5362 lt!1146358))))

(assert (=> d!958314 (= (matchR!4713 (regex!5362 lt!1146358) lt!1146352) lt!1146565)))

(declare-fun b!3377568 () Bool)

(assert (=> b!3377568 (= e!2096398 (nullable!3444 (regex!5362 lt!1146358)))))

(declare-fun b!3377569 () Bool)

(declare-fun e!2096396 () Bool)

(assert (=> b!3377569 (= e!2096396 e!2096400)))

(declare-fun res!1366112 () Bool)

(assert (=> b!3377569 (=> res!1366112 e!2096400)))

(assert (=> b!3377569 (= res!1366112 call!244401)))

(declare-fun b!3377570 () Bool)

(assert (=> b!3377570 (= e!2096398 (matchR!4713 (derivativeStep!2997 (regex!5362 lt!1146358) (head!7205 lt!1146352)) (tail!5341 lt!1146352)))))

(declare-fun b!3377571 () Bool)

(assert (=> b!3377571 (= e!2096401 e!2096396)))

(declare-fun res!1366109 () Bool)

(assert (=> b!3377571 (=> (not res!1366109) (not e!2096396))))

(assert (=> b!3377571 (= res!1366109 (not lt!1146565))))

(declare-fun b!3377572 () Bool)

(declare-fun res!1366111 () Bool)

(assert (=> b!3377572 (=> res!1366111 e!2096400)))

(assert (=> b!3377572 (= res!1366111 (not (isEmpty!21028 (tail!5341 lt!1146352))))))

(declare-fun b!3377573 () Bool)

(assert (=> b!3377573 (= e!2096399 (= lt!1146565 call!244401))))

(assert (= (and d!958314 c!575194) b!3377568))

(assert (= (and d!958314 (not c!575194)) b!3377570))

(assert (= (and d!958314 c!575193) b!3377573))

(assert (= (and d!958314 (not c!575193)) b!3377565))

(assert (= (and b!3377565 c!575195) b!3377563))

(assert (= (and b!3377565 (not c!575195)) b!3377567))

(assert (= (and b!3377567 (not res!1366110)) b!3377562))

(assert (= (and b!3377562 res!1366114) b!3377564))

(assert (= (and b!3377564 res!1366108) b!3377566))

(assert (= (and b!3377566 res!1366115) b!3377561))

(assert (= (and b!3377562 (not res!1366113)) b!3377571))

(assert (= (and b!3377571 res!1366109) b!3377569))

(assert (= (and b!3377569 (not res!1366112)) b!3377572))

(assert (= (and b!3377572 (not res!1366111)) b!3377560))

(assert (= (or b!3377573 b!3377564 b!3377569) bm!244396))

(declare-fun m!3741343 () Bool)

(assert (=> b!3377568 m!3741343))

(assert (=> b!3377570 m!3740715))

(assert (=> b!3377570 m!3740715))

(declare-fun m!3741345 () Bool)

(assert (=> b!3377570 m!3741345))

(assert (=> b!3377570 m!3741273))

(assert (=> b!3377570 m!3741345))

(assert (=> b!3377570 m!3741273))

(declare-fun m!3741347 () Bool)

(assert (=> b!3377570 m!3741347))

(assert (=> b!3377572 m!3741273))

(assert (=> b!3377572 m!3741273))

(assert (=> b!3377572 m!3741277))

(assert (=> b!3377566 m!3741273))

(assert (=> b!3377566 m!3741273))

(assert (=> b!3377566 m!3741277))

(assert (=> b!3377560 m!3740715))

(assert (=> d!958314 m!3741279))

(declare-fun m!3741349 () Bool)

(assert (=> d!958314 m!3741349))

(assert (=> b!3377561 m!3740715))

(assert (=> bm!244396 m!3741279))

(assert (=> b!3377049 d!958314))

(declare-fun d!958316 () Bool)

(assert (=> d!958316 (= (get!11742 lt!1146344) (v!36418 lt!1146344))))

(assert (=> b!3377049 d!958316))

(declare-fun d!958318 () Bool)

(assert (=> d!958318 (= (inv!49874 (tag!5930 (h!42230 rules!2135))) (= (mod (str.len (value!173276 (tag!5930 (h!42230 rules!2135)))) 2) 0))))

(assert (=> b!3377067 d!958318))

(declare-fun d!958320 () Bool)

(declare-fun res!1366118 () Bool)

(declare-fun e!2096404 () Bool)

(assert (=> d!958320 (=> (not res!1366118) (not e!2096404))))

(declare-fun semiInverseModEq!2235 (Int Int) Bool)

(assert (=> d!958320 (= res!1366118 (semiInverseModEq!2235 (toChars!7405 (transformation!5362 (h!42230 rules!2135))) (toValue!7546 (transformation!5362 (h!42230 rules!2135)))))))

(assert (=> d!958320 (= (inv!49877 (transformation!5362 (h!42230 rules!2135))) e!2096404)))

(declare-fun b!3377576 () Bool)

(declare-fun equivClasses!2134 (Int Int) Bool)

(assert (=> b!3377576 (= e!2096404 (equivClasses!2134 (toChars!7405 (transformation!5362 (h!42230 rules!2135))) (toValue!7546 (transformation!5362 (h!42230 rules!2135)))))))

(assert (= (and d!958320 res!1366118) b!3377576))

(declare-fun m!3741351 () Bool)

(assert (=> d!958320 m!3741351))

(declare-fun m!3741353 () Bool)

(assert (=> b!3377576 m!3741353))

(assert (=> b!3377067 d!958320))

(declare-fun d!958322 () Bool)

(declare-fun lt!1146566 () Bool)

(declare-fun e!2096405 () Bool)

(assert (=> d!958322 (= lt!1146566 e!2096405)))

(declare-fun res!1366121 () Bool)

(assert (=> d!958322 (=> (not res!1366121) (not e!2096405))))

(assert (=> d!958322 (= res!1366121 (= (list!13306 (_1!21321 (lex!2277 thiss!18206 rules!2135 (print!2016 thiss!18206 (singletonSeq!2458 separatorToken!241))))) (list!13306 (singletonSeq!2458 separatorToken!241))))))

(declare-fun e!2096406 () Bool)

(assert (=> d!958322 (= lt!1146566 e!2096406)))

(declare-fun res!1366119 () Bool)

(assert (=> d!958322 (=> (not res!1366119) (not e!2096406))))

(declare-fun lt!1146567 () tuple2!36374)

(assert (=> d!958322 (= res!1366119 (= (size!27858 (_1!21321 lt!1146567)) 1))))

(assert (=> d!958322 (= lt!1146567 (lex!2277 thiss!18206 rules!2135 (print!2016 thiss!18206 (singletonSeq!2458 separatorToken!241))))))

(assert (=> d!958322 (not (isEmpty!21027 rules!2135))))

(assert (=> d!958322 (= (rulesProduceIndividualToken!2443 thiss!18206 rules!2135 separatorToken!241) lt!1146566)))

(declare-fun b!3377577 () Bool)

(declare-fun res!1366120 () Bool)

(assert (=> b!3377577 (=> (not res!1366120) (not e!2096406))))

(assert (=> b!3377577 (= res!1366120 (= (apply!8548 (_1!21321 lt!1146567) 0) separatorToken!241))))

(declare-fun b!3377578 () Bool)

(assert (=> b!3377578 (= e!2096406 (isEmpty!21034 (_2!21321 lt!1146567)))))

(declare-fun b!3377579 () Bool)

(assert (=> b!3377579 (= e!2096405 (isEmpty!21034 (_2!21321 (lex!2277 thiss!18206 rules!2135 (print!2016 thiss!18206 (singletonSeq!2458 separatorToken!241))))))))

(assert (= (and d!958322 res!1366119) b!3377577))

(assert (= (and b!3377577 res!1366120) b!3377578))

(assert (= (and d!958322 res!1366121) b!3377579))

(declare-fun m!3741355 () Bool)

(assert (=> d!958322 m!3741355))

(declare-fun m!3741357 () Bool)

(assert (=> d!958322 m!3741357))

(assert (=> d!958322 m!3741357))

(declare-fun m!3741359 () Bool)

(assert (=> d!958322 m!3741359))

(assert (=> d!958322 m!3741359))

(declare-fun m!3741361 () Bool)

(assert (=> d!958322 m!3741361))

(assert (=> d!958322 m!3741357))

(declare-fun m!3741363 () Bool)

(assert (=> d!958322 m!3741363))

(declare-fun m!3741365 () Bool)

(assert (=> d!958322 m!3741365))

(assert (=> d!958322 m!3740747))

(declare-fun m!3741367 () Bool)

(assert (=> b!3377577 m!3741367))

(declare-fun m!3741369 () Bool)

(assert (=> b!3377578 m!3741369))

(assert (=> b!3377579 m!3741357))

(assert (=> b!3377579 m!3741357))

(assert (=> b!3377579 m!3741359))

(assert (=> b!3377579 m!3741359))

(assert (=> b!3377579 m!3741361))

(declare-fun m!3741371 () Bool)

(assert (=> b!3377579 m!3741371))

(assert (=> b!3377046 d!958322))

(declare-fun d!958324 () Bool)

(assert (=> d!958324 (= (inv!49874 (tag!5930 (rule!7906 separatorToken!241))) (= (mod (str.len (value!173276 (tag!5930 (rule!7906 separatorToken!241)))) 2) 0))))

(assert (=> b!3377045 d!958324))

(declare-fun d!958326 () Bool)

(declare-fun res!1366122 () Bool)

(declare-fun e!2096407 () Bool)

(assert (=> d!958326 (=> (not res!1366122) (not e!2096407))))

(assert (=> d!958326 (= res!1366122 (semiInverseModEq!2235 (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (toValue!7546 (transformation!5362 (rule!7906 separatorToken!241)))))))

(assert (=> d!958326 (= (inv!49877 (transformation!5362 (rule!7906 separatorToken!241))) e!2096407)))

(declare-fun b!3377580 () Bool)

(assert (=> b!3377580 (= e!2096407 (equivClasses!2134 (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (toValue!7546 (transformation!5362 (rule!7906 separatorToken!241)))))))

(assert (= (and d!958326 res!1366122) b!3377580))

(declare-fun m!3741373 () Bool)

(assert (=> d!958326 m!3741373))

(declare-fun m!3741375 () Bool)

(assert (=> b!3377580 m!3741375))

(assert (=> b!3377045 d!958326))

(declare-fun d!958328 () Bool)

(assert (=> d!958328 (= (list!13303 lt!1146346) (list!13307 (c!575075 lt!1146346)))))

(declare-fun bs!554634 () Bool)

(assert (= bs!554634 d!958328))

(declare-fun m!3741377 () Bool)

(assert (=> bs!554634 m!3741377))

(assert (=> b!3377068 d!958328))

(declare-fun d!958330 () Bool)

(declare-fun lt!1146568 () BalanceConc!21812)

(assert (=> d!958330 (= (list!13303 lt!1146568) (originalCharacters!6076 separatorToken!241))))

(assert (=> d!958330 (= lt!1146568 (dynLambda!15283 (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (value!173277 separatorToken!241)))))

(assert (=> d!958330 (= (charsOf!3376 separatorToken!241) lt!1146568)))

(declare-fun b_lambda!95773 () Bool)

(assert (=> (not b_lambda!95773) (not d!958330)))

(declare-fun t!262856 () Bool)

(declare-fun tb!179783 () Bool)

(assert (=> (and b!3377075 (= (toChars!7405 (transformation!5362 (h!42230 rules!2135))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241)))) t!262856) tb!179783))

(declare-fun b!3377581 () Bool)

(declare-fun e!2096408 () Bool)

(declare-fun tp!1056161 () Bool)

(assert (=> b!3377581 (= e!2096408 (and (inv!49881 (c!575075 (dynLambda!15283 (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (value!173277 separatorToken!241)))) tp!1056161))))

(declare-fun result!223148 () Bool)

(assert (=> tb!179783 (= result!223148 (and (inv!49882 (dynLambda!15283 (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (value!173277 separatorToken!241))) e!2096408))))

(assert (= tb!179783 b!3377581))

(declare-fun m!3741379 () Bool)

(assert (=> b!3377581 m!3741379))

(declare-fun m!3741381 () Bool)

(assert (=> tb!179783 m!3741381))

(assert (=> d!958330 t!262856))

(declare-fun b_and!234527 () Bool)

(assert (= b_and!234521 (and (=> t!262856 result!223148) b_and!234527)))

(declare-fun tb!179785 () Bool)

(declare-fun t!262858 () Bool)

(assert (=> (and b!3377056 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241)))) t!262858) tb!179785))

(declare-fun result!223150 () Bool)

(assert (= result!223150 result!223148))

(assert (=> d!958330 t!262858))

(declare-fun b_and!234529 () Bool)

(assert (= b_and!234523 (and (=> t!262858 result!223150) b_and!234529)))

(declare-fun t!262860 () Bool)

(declare-fun tb!179787 () Bool)

(assert (=> (and b!3377047 (= (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241)))) t!262860) tb!179787))

(declare-fun result!223152 () Bool)

(assert (= result!223152 result!223148))

(assert (=> d!958330 t!262860))

(declare-fun b_and!234531 () Bool)

(assert (= b_and!234525 (and (=> t!262860 result!223152) b_and!234531)))

(declare-fun m!3741383 () Bool)

(assert (=> d!958330 m!3741383))

(declare-fun m!3741385 () Bool)

(assert (=> d!958330 m!3741385))

(assert (=> b!3377068 d!958330))

(declare-fun b!3377590 () Bool)

(declare-fun e!2096413 () List!36933)

(assert (=> b!3377590 (= e!2096413 lt!1146352)))

(declare-fun b!3377591 () Bool)

(assert (=> b!3377591 (= e!2096413 (Cons!36809 (h!42229 lt!1146342) (++!8989 (t!262820 lt!1146342) lt!1146352)))))

(declare-fun d!958332 () Bool)

(declare-fun e!2096414 () Bool)

(assert (=> d!958332 e!2096414))

(declare-fun res!1366128 () Bool)

(assert (=> d!958332 (=> (not res!1366128) (not e!2096414))))

(declare-fun lt!1146571 () List!36933)

(assert (=> d!958332 (= res!1366128 (= (content!5063 lt!1146571) ((_ map or) (content!5063 lt!1146342) (content!5063 lt!1146352))))))

(assert (=> d!958332 (= lt!1146571 e!2096413)))

(declare-fun c!575198 () Bool)

(assert (=> d!958332 (= c!575198 ((_ is Nil!36809) lt!1146342))))

(assert (=> d!958332 (= (++!8989 lt!1146342 lt!1146352) lt!1146571)))

(declare-fun b!3377593 () Bool)

(assert (=> b!3377593 (= e!2096414 (or (not (= lt!1146352 Nil!36809)) (= lt!1146571 lt!1146342)))))

(declare-fun b!3377592 () Bool)

(declare-fun res!1366127 () Bool)

(assert (=> b!3377592 (=> (not res!1366127) (not e!2096414))))

(assert (=> b!3377592 (= res!1366127 (= (size!27855 lt!1146571) (+ (size!27855 lt!1146342) (size!27855 lt!1146352))))))

(assert (= (and d!958332 c!575198) b!3377590))

(assert (= (and d!958332 (not c!575198)) b!3377591))

(assert (= (and d!958332 res!1366128) b!3377592))

(assert (= (and b!3377592 res!1366127) b!3377593))

(declare-fun m!3741387 () Bool)

(assert (=> b!3377591 m!3741387))

(declare-fun m!3741389 () Bool)

(assert (=> d!958332 m!3741389))

(declare-fun m!3741391 () Bool)

(assert (=> d!958332 m!3741391))

(declare-fun m!3741393 () Bool)

(assert (=> d!958332 m!3741393))

(declare-fun m!3741395 () Bool)

(assert (=> b!3377592 m!3741395))

(assert (=> b!3377592 m!3740719))

(declare-fun m!3741397 () Bool)

(assert (=> b!3377592 m!3741397))

(assert (=> b!3377068 d!958332))

(declare-fun d!958334 () Bool)

(assert (=> d!958334 (= (list!13303 (charsOf!3376 separatorToken!241)) (list!13307 (c!575075 (charsOf!3376 separatorToken!241))))))

(declare-fun bs!554635 () Bool)

(assert (= bs!554635 d!958334))

(declare-fun m!3741399 () Bool)

(assert (=> bs!554635 m!3741399))

(assert (=> b!3377068 d!958334))

(declare-fun d!958336 () Bool)

(declare-fun lt!1146574 () BalanceConc!21812)

(declare-fun printWithSeparatorTokenList!248 (LexerInterface!4951 List!36935 Token!10090) List!36933)

(assert (=> d!958336 (= (list!13303 lt!1146574) (printWithSeparatorTokenList!248 thiss!18206 (list!13306 lt!1146336) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!64 (LexerInterface!4951 BalanceConc!21814 Token!10090 Int BalanceConc!21812) BalanceConc!21812)

(assert (=> d!958336 (= lt!1146574 (printWithSeparatorTokenTailRec!64 thiss!18206 lt!1146336 separatorToken!241 0 (BalanceConc!21813 Empty!11099)))))

(assert (=> d!958336 (isSeparator!5362 (rule!7906 separatorToken!241))))

(assert (=> d!958336 (= (printWithSeparatorToken!142 thiss!18206 lt!1146336 separatorToken!241) lt!1146574)))

(declare-fun bs!554636 () Bool)

(assert (= bs!554636 d!958336))

(declare-fun m!3741401 () Bool)

(assert (=> bs!554636 m!3741401))

(declare-fun m!3741403 () Bool)

(assert (=> bs!554636 m!3741403))

(assert (=> bs!554636 m!3741403))

(declare-fun m!3741405 () Bool)

(assert (=> bs!554636 m!3741405))

(declare-fun m!3741407 () Bool)

(assert (=> bs!554636 m!3741407))

(assert (=> b!3377068 d!958336))

(declare-fun d!958338 () Bool)

(declare-fun res!1366129 () Bool)

(declare-fun e!2096415 () Bool)

(assert (=> d!958338 (=> (not res!1366129) (not e!2096415))))

(assert (=> d!958338 (= res!1366129 (not (isEmpty!21028 (originalCharacters!6076 separatorToken!241))))))

(assert (=> d!958338 (= (inv!49878 separatorToken!241) e!2096415)))

(declare-fun b!3377594 () Bool)

(declare-fun res!1366130 () Bool)

(assert (=> b!3377594 (=> (not res!1366130) (not e!2096415))))

(assert (=> b!3377594 (= res!1366130 (= (originalCharacters!6076 separatorToken!241) (list!13303 (dynLambda!15283 (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (value!173277 separatorToken!241)))))))

(declare-fun b!3377595 () Bool)

(assert (=> b!3377595 (= e!2096415 (= (size!27854 separatorToken!241) (size!27855 (originalCharacters!6076 separatorToken!241))))))

(assert (= (and d!958338 res!1366129) b!3377594))

(assert (= (and b!3377594 res!1366130) b!3377595))

(declare-fun b_lambda!95775 () Bool)

(assert (=> (not b_lambda!95775) (not b!3377594)))

(assert (=> b!3377594 t!262856))

(declare-fun b_and!234533 () Bool)

(assert (= b_and!234527 (and (=> t!262856 result!223148) b_and!234533)))

(assert (=> b!3377594 t!262858))

(declare-fun b_and!234535 () Bool)

(assert (= b_and!234529 (and (=> t!262858 result!223150) b_and!234535)))

(assert (=> b!3377594 t!262860))

(declare-fun b_and!234537 () Bool)

(assert (= b_and!234531 (and (=> t!262860 result!223152) b_and!234537)))

(declare-fun m!3741409 () Bool)

(assert (=> d!958338 m!3741409))

(assert (=> b!3377594 m!3741385))

(assert (=> b!3377594 m!3741385))

(declare-fun m!3741411 () Bool)

(assert (=> b!3377594 m!3741411))

(declare-fun m!3741413 () Bool)

(assert (=> b!3377595 m!3741413))

(assert (=> start!314390 d!958338))

(declare-fun d!958340 () Bool)

(assert (=> d!958340 (= (inv!49874 (tag!5930 (rule!7906 (h!42231 tokens!494)))) (= (mod (str.len (value!173276 (tag!5930 (rule!7906 (h!42231 tokens!494))))) 2) 0))))

(assert (=> b!3377064 d!958340))

(declare-fun d!958342 () Bool)

(declare-fun res!1366131 () Bool)

(declare-fun e!2096416 () Bool)

(assert (=> d!958342 (=> (not res!1366131) (not e!2096416))))

(assert (=> d!958342 (= res!1366131 (semiInverseModEq!2235 (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494))))))))

(assert (=> d!958342 (= (inv!49877 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) e!2096416)))

(declare-fun b!3377596 () Bool)

(assert (=> b!3377596 (= e!2096416 (equivClasses!2134 (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494))))))))

(assert (= (and d!958342 res!1366131) b!3377596))

(declare-fun m!3741415 () Bool)

(assert (=> d!958342 m!3741415))

(declare-fun m!3741417 () Bool)

(assert (=> b!3377596 m!3741417))

(assert (=> b!3377064 d!958342))

(declare-fun d!958344 () Bool)

(declare-fun res!1366134 () Bool)

(declare-fun e!2096419 () Bool)

(assert (=> d!958344 (=> (not res!1366134) (not e!2096419))))

(declare-fun rulesValid!1995 (LexerInterface!4951 List!36934) Bool)

(assert (=> d!958344 (= res!1366134 (rulesValid!1995 thiss!18206 rules!2135))))

(assert (=> d!958344 (= (rulesInvariant!4348 thiss!18206 rules!2135) e!2096419)))

(declare-fun b!3377599 () Bool)

(declare-datatypes ((List!36937 0))(
  ( (Nil!36813) (Cons!36813 (h!42233 String!41294) (t!262898 List!36937)) )
))
(declare-fun noDuplicateTag!1991 (LexerInterface!4951 List!36934 List!36937) Bool)

(assert (=> b!3377599 (= e!2096419 (noDuplicateTag!1991 thiss!18206 rules!2135 Nil!36813))))

(assert (= (and d!958344 res!1366134) b!3377599))

(declare-fun m!3741419 () Bool)

(assert (=> d!958344 m!3741419))

(declare-fun m!3741421 () Bool)

(assert (=> b!3377599 m!3741421))

(assert (=> b!3377065 d!958344))

(declare-fun bs!554643 () Bool)

(declare-fun d!958346 () Bool)

(assert (= bs!554643 (and d!958346 b!3377059)))

(declare-fun lambda!120395 () Int)

(assert (=> bs!554643 (not (= lambda!120395 lambda!120385))))

(declare-fun b!3377727 () Bool)

(declare-fun e!2096511 () Bool)

(assert (=> b!3377727 (= e!2096511 true)))

(declare-fun b!3377726 () Bool)

(declare-fun e!2096510 () Bool)

(assert (=> b!3377726 (= e!2096510 e!2096511)))

(declare-fun b!3377725 () Bool)

(declare-fun e!2096509 () Bool)

(assert (=> b!3377725 (= e!2096509 e!2096510)))

(assert (=> d!958346 e!2096509))

(assert (= b!3377726 b!3377727))

(assert (= b!3377725 b!3377726))

(assert (= (and d!958346 ((_ is Cons!36810) rules!2135)) b!3377725))

(declare-fun order!19365 () Int)

(declare-fun order!19367 () Int)

(declare-fun dynLambda!15290 (Int Int) Int)

(declare-fun dynLambda!15291 (Int Int) Int)

(assert (=> b!3377727 (< (dynLambda!15290 order!19365 (toValue!7546 (transformation!5362 (h!42230 rules!2135)))) (dynLambda!15291 order!19367 lambda!120395))))

(declare-fun order!19369 () Int)

(declare-fun dynLambda!15292 (Int Int) Int)

(assert (=> b!3377727 (< (dynLambda!15292 order!19369 (toChars!7405 (transformation!5362 (h!42230 rules!2135)))) (dynLambda!15291 order!19367 lambda!120395))))

(assert (=> d!958346 true))

(declare-fun e!2096502 () Bool)

(assert (=> d!958346 e!2096502))

(declare-fun res!1366168 () Bool)

(assert (=> d!958346 (=> (not res!1366168) (not e!2096502))))

(declare-fun lt!1146589 () Bool)

(assert (=> d!958346 (= res!1366168 (= lt!1146589 (forall!7737 (list!13306 lt!1146336) lambda!120395)))))

(declare-fun forall!7739 (BalanceConc!21814 Int) Bool)

(assert (=> d!958346 (= lt!1146589 (forall!7739 lt!1146336 lambda!120395))))

(assert (=> d!958346 (not (isEmpty!21027 rules!2135))))

(assert (=> d!958346 (= (rulesProduceEachTokenIndividually!1402 thiss!18206 rules!2135 lt!1146336) lt!1146589)))

(declare-fun b!3377716 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1807 (LexerInterface!4951 List!36934 List!36935) Bool)

(assert (=> b!3377716 (= e!2096502 (= lt!1146589 (rulesProduceEachTokenIndividuallyList!1807 thiss!18206 rules!2135 (list!13306 lt!1146336))))))

(assert (= (and d!958346 res!1366168) b!3377716))

(assert (=> d!958346 m!3741403))

(assert (=> d!958346 m!3741403))

(declare-fun m!3741513 () Bool)

(assert (=> d!958346 m!3741513))

(declare-fun m!3741515 () Bool)

(assert (=> d!958346 m!3741515))

(assert (=> d!958346 m!3740747))

(assert (=> b!3377716 m!3741403))

(assert (=> b!3377716 m!3741403))

(declare-fun m!3741517 () Bool)

(assert (=> b!3377716 m!3741517))

(assert (=> b!3377044 d!958346))

(declare-fun d!958384 () Bool)

(declare-fun fromListB!1687 (List!36935) BalanceConc!21814)

(assert (=> d!958384 (= (seqFromList!3777 tokens!494) (fromListB!1687 tokens!494))))

(declare-fun bs!554644 () Bool)

(assert (= bs!554644 d!958384))

(declare-fun m!3741519 () Bool)

(assert (=> bs!554644 m!3741519))

(assert (=> b!3377044 d!958384))

(declare-fun d!958386 () Bool)

(declare-fun res!1366173 () Bool)

(declare-fun e!2096516 () Bool)

(assert (=> d!958386 (=> res!1366173 e!2096516)))

(assert (=> d!958386 (= res!1366173 (not ((_ is Cons!36810) rules!2135)))))

(assert (=> d!958386 (= (sepAndNonSepRulesDisjointChars!1556 rules!2135 rules!2135) e!2096516)))

(declare-fun b!3377734 () Bool)

(declare-fun e!2096517 () Bool)

(assert (=> b!3377734 (= e!2096516 e!2096517)))

(declare-fun res!1366174 () Bool)

(assert (=> b!3377734 (=> (not res!1366174) (not e!2096517))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!671 (Rule!10524 List!36934) Bool)

(assert (=> b!3377734 (= res!1366174 (ruleDisjointCharsFromAllFromOtherType!671 (h!42230 rules!2135) rules!2135))))

(declare-fun b!3377735 () Bool)

(assert (=> b!3377735 (= e!2096517 (sepAndNonSepRulesDisjointChars!1556 rules!2135 (t!262821 rules!2135)))))

(assert (= (and d!958386 (not res!1366173)) b!3377734))

(assert (= (and b!3377734 res!1366174) b!3377735))

(declare-fun m!3741521 () Bool)

(assert (=> b!3377734 m!3741521))

(declare-fun m!3741523 () Bool)

(assert (=> b!3377735 m!3741523))

(assert (=> b!3377063 d!958386))

(declare-fun d!958388 () Bool)

(declare-fun res!1366179 () Bool)

(declare-fun e!2096522 () Bool)

(assert (=> d!958388 (=> res!1366179 e!2096522)))

(assert (=> d!958388 (= res!1366179 ((_ is Nil!36811) tokens!494))))

(assert (=> d!958388 (= (forall!7737 tokens!494 lambda!120385) e!2096522)))

(declare-fun b!3377740 () Bool)

(declare-fun e!2096523 () Bool)

(assert (=> b!3377740 (= e!2096522 e!2096523)))

(declare-fun res!1366180 () Bool)

(assert (=> b!3377740 (=> (not res!1366180) (not e!2096523))))

(assert (=> b!3377740 (= res!1366180 (dynLambda!15289 lambda!120385 (h!42231 tokens!494)))))

(declare-fun b!3377741 () Bool)

(assert (=> b!3377741 (= e!2096523 (forall!7737 (t!262822 tokens!494) lambda!120385))))

(assert (= (and d!958388 (not res!1366179)) b!3377740))

(assert (= (and b!3377740 res!1366180) b!3377741))

(declare-fun b_lambda!95795 () Bool)

(assert (=> (not b_lambda!95795) (not b!3377740)))

(assert (=> b!3377740 m!3741281))

(declare-fun m!3741525 () Bool)

(assert (=> b!3377741 m!3741525))

(assert (=> b!3377059 d!958388))

(declare-fun d!958390 () Bool)

(declare-fun lt!1146592 () Bool)

(declare-fun content!5065 (List!36934) (InoxSet Rule!10524))

(assert (=> d!958390 (= lt!1146592 (select (content!5065 rules!2135) (rule!7906 separatorToken!241)))))

(declare-fun e!2096528 () Bool)

(assert (=> d!958390 (= lt!1146592 e!2096528)))

(declare-fun res!1366185 () Bool)

(assert (=> d!958390 (=> (not res!1366185) (not e!2096528))))

(assert (=> d!958390 (= res!1366185 ((_ is Cons!36810) rules!2135))))

(assert (=> d!958390 (= (contains!6713 rules!2135 (rule!7906 separatorToken!241)) lt!1146592)))

(declare-fun b!3377746 () Bool)

(declare-fun e!2096529 () Bool)

(assert (=> b!3377746 (= e!2096528 e!2096529)))

(declare-fun res!1366186 () Bool)

(assert (=> b!3377746 (=> res!1366186 e!2096529)))

(assert (=> b!3377746 (= res!1366186 (= (h!42230 rules!2135) (rule!7906 separatorToken!241)))))

(declare-fun b!3377747 () Bool)

(assert (=> b!3377747 (= e!2096529 (contains!6713 (t!262821 rules!2135) (rule!7906 separatorToken!241)))))

(assert (= (and d!958390 res!1366185) b!3377746))

(assert (= (and b!3377746 (not res!1366186)) b!3377747))

(declare-fun m!3741527 () Bool)

(assert (=> d!958390 m!3741527))

(declare-fun m!3741529 () Bool)

(assert (=> d!958390 m!3741529))

(declare-fun m!3741531 () Bool)

(assert (=> b!3377747 m!3741531))

(assert (=> b!3377057 d!958390))

(declare-fun b!3377761 () Bool)

(declare-fun b_free!88325 () Bool)

(declare-fun b_next!89029 () Bool)

(assert (=> b!3377761 (= b_free!88325 (not b_next!89029))))

(declare-fun t!262886 () Bool)

(declare-fun tb!179807 () Bool)

(assert (=> (and b!3377761 (= (toValue!7546 (transformation!5362 (rule!7906 (h!42231 (t!262822 tokens!494))))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262886) tb!179807))

(declare-fun result!223182 () Bool)

(assert (= result!223182 result!223140))

(assert (=> d!958262 t!262886))

(declare-fun b_and!234559 () Bool)

(declare-fun tp!1056233 () Bool)

(assert (=> b!3377761 (= tp!1056233 (and (=> t!262886 result!223182) b_and!234559))))

(declare-fun b_free!88327 () Bool)

(declare-fun b_next!89031 () Bool)

(assert (=> b!3377761 (= b_free!88327 (not b_next!89031))))

(declare-fun t!262888 () Bool)

(declare-fun tb!179809 () Bool)

(assert (=> (and b!3377761 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 (t!262822 tokens!494))))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262888) tb!179809))

(declare-fun result!223184 () Bool)

(assert (= result!223184 result!223132))

(assert (=> b!3377221 t!262888))

(assert (=> d!958302 t!262888))

(declare-fun t!262890 () Bool)

(declare-fun tb!179811 () Bool)

(assert (=> (and b!3377761 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 (t!262822 tokens!494))))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241)))) t!262890) tb!179811))

(declare-fun result!223186 () Bool)

(assert (= result!223186 result!223148))

(assert (=> d!958330 t!262890))

(assert (=> b!3377594 t!262890))

(declare-fun tp!1056229 () Bool)

(declare-fun b_and!234561 () Bool)

(assert (=> b!3377761 (= tp!1056229 (and (=> t!262888 result!223184) (=> t!262890 result!223186) b_and!234561))))

(declare-fun e!2096545 () Bool)

(assert (=> b!3377761 (= e!2096545 (and tp!1056233 tp!1056229))))

(declare-fun e!2096547 () Bool)

(declare-fun e!2096546 () Bool)

(declare-fun b!3377759 () Bool)

(declare-fun tp!1056231 () Bool)

(assert (=> b!3377759 (= e!2096546 (and (inv!21 (value!173277 (h!42231 (t!262822 tokens!494)))) e!2096547 tp!1056231))))

(declare-fun e!2096542 () Bool)

(declare-fun tp!1056230 () Bool)

(declare-fun b!3377758 () Bool)

(assert (=> b!3377758 (= e!2096542 (and (inv!49878 (h!42231 (t!262822 tokens!494))) e!2096546 tp!1056230))))

(assert (=> b!3377053 (= tp!1056142 e!2096542)))

(declare-fun tp!1056232 () Bool)

(declare-fun b!3377760 () Bool)

(assert (=> b!3377760 (= e!2096547 (and tp!1056232 (inv!49874 (tag!5930 (rule!7906 (h!42231 (t!262822 tokens!494))))) (inv!49877 (transformation!5362 (rule!7906 (h!42231 (t!262822 tokens!494))))) e!2096545))))

(assert (= b!3377760 b!3377761))

(assert (= b!3377759 b!3377760))

(assert (= b!3377758 b!3377759))

(assert (= (and b!3377053 ((_ is Cons!36811) (t!262822 tokens!494))) b!3377758))

(declare-fun m!3741533 () Bool)

(assert (=> b!3377759 m!3741533))

(declare-fun m!3741535 () Bool)

(assert (=> b!3377758 m!3741535))

(declare-fun m!3741537 () Bool)

(assert (=> b!3377760 m!3741537))

(declare-fun m!3741539 () Bool)

(assert (=> b!3377760 m!3741539))

(declare-fun b!3377766 () Bool)

(declare-fun e!2096550 () Bool)

(declare-fun tp_is_empty!17461 () Bool)

(declare-fun tp!1056236 () Bool)

(assert (=> b!3377766 (= e!2096550 (and tp_is_empty!17461 tp!1056236))))

(assert (=> b!3377048 (= tp!1056153 e!2096550)))

(assert (= (and b!3377048 ((_ is Cons!36809) (originalCharacters!6076 separatorToken!241))) b!3377766))

(declare-fun b!3377777 () Bool)

(declare-fun e!2096553 () Bool)

(assert (=> b!3377777 (= e!2096553 tp_is_empty!17461)))

(declare-fun b!3377779 () Bool)

(declare-fun tp!1056249 () Bool)

(assert (=> b!3377779 (= e!2096553 tp!1056249)))

(declare-fun b!3377780 () Bool)

(declare-fun tp!1056250 () Bool)

(declare-fun tp!1056247 () Bool)

(assert (=> b!3377780 (= e!2096553 (and tp!1056250 tp!1056247))))

(declare-fun b!3377778 () Bool)

(declare-fun tp!1056248 () Bool)

(declare-fun tp!1056251 () Bool)

(assert (=> b!3377778 (= e!2096553 (and tp!1056248 tp!1056251))))

(assert (=> b!3377064 (= tp!1056147 e!2096553)))

(assert (= (and b!3377064 ((_ is ElementMatch!10121) (regex!5362 (rule!7906 (h!42231 tokens!494))))) b!3377777))

(assert (= (and b!3377064 ((_ is Concat!15713) (regex!5362 (rule!7906 (h!42231 tokens!494))))) b!3377778))

(assert (= (and b!3377064 ((_ is Star!10121) (regex!5362 (rule!7906 (h!42231 tokens!494))))) b!3377779))

(assert (= (and b!3377064 ((_ is Union!10121) (regex!5362 (rule!7906 (h!42231 tokens!494))))) b!3377780))

(declare-fun b!3377781 () Bool)

(declare-fun e!2096554 () Bool)

(assert (=> b!3377781 (= e!2096554 tp_is_empty!17461)))

(declare-fun b!3377783 () Bool)

(declare-fun tp!1056254 () Bool)

(assert (=> b!3377783 (= e!2096554 tp!1056254)))

(declare-fun b!3377784 () Bool)

(declare-fun tp!1056255 () Bool)

(declare-fun tp!1056252 () Bool)

(assert (=> b!3377784 (= e!2096554 (and tp!1056255 tp!1056252))))

(declare-fun b!3377782 () Bool)

(declare-fun tp!1056253 () Bool)

(declare-fun tp!1056256 () Bool)

(assert (=> b!3377782 (= e!2096554 (and tp!1056253 tp!1056256))))

(assert (=> b!3377067 (= tp!1056154 e!2096554)))

(assert (= (and b!3377067 ((_ is ElementMatch!10121) (regex!5362 (h!42230 rules!2135)))) b!3377781))

(assert (= (and b!3377067 ((_ is Concat!15713) (regex!5362 (h!42230 rules!2135)))) b!3377782))

(assert (= (and b!3377067 ((_ is Star!10121) (regex!5362 (h!42230 rules!2135)))) b!3377783))

(assert (= (and b!3377067 ((_ is Union!10121) (regex!5362 (h!42230 rules!2135)))) b!3377784))

(declare-fun b!3377795 () Bool)

(declare-fun b_free!88329 () Bool)

(declare-fun b_next!89033 () Bool)

(assert (=> b!3377795 (= b_free!88329 (not b_next!89033))))

(declare-fun t!262892 () Bool)

(declare-fun tb!179813 () Bool)

(assert (=> (and b!3377795 (= (toValue!7546 (transformation!5362 (h!42230 (t!262821 rules!2135)))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262892) tb!179813))

(declare-fun result!223194 () Bool)

(assert (= result!223194 result!223140))

(assert (=> d!958262 t!262892))

(declare-fun b_and!234563 () Bool)

(declare-fun tp!1056265 () Bool)

(assert (=> b!3377795 (= tp!1056265 (and (=> t!262892 result!223194) b_and!234563))))

(declare-fun b_free!88331 () Bool)

(declare-fun b_next!89035 () Bool)

(assert (=> b!3377795 (= b_free!88331 (not b_next!89035))))

(declare-fun tb!179815 () Bool)

(declare-fun t!262894 () Bool)

(assert (=> (and b!3377795 (= (toChars!7405 (transformation!5362 (h!42230 (t!262821 rules!2135)))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494))))) t!262894) tb!179815))

(declare-fun result!223196 () Bool)

(assert (= result!223196 result!223132))

(assert (=> b!3377221 t!262894))

(assert (=> d!958302 t!262894))

(declare-fun tb!179817 () Bool)

(declare-fun t!262896 () Bool)

(assert (=> (and b!3377795 (= (toChars!7405 (transformation!5362 (h!42230 (t!262821 rules!2135)))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241)))) t!262896) tb!179817))

(declare-fun result!223198 () Bool)

(assert (= result!223198 result!223148))

(assert (=> d!958330 t!262896))

(assert (=> b!3377594 t!262896))

(declare-fun tp!1056268 () Bool)

(declare-fun b_and!234565 () Bool)

(assert (=> b!3377795 (= tp!1056268 (and (=> t!262894 result!223196) (=> t!262896 result!223198) b_and!234565))))

(declare-fun e!2096564 () Bool)

(assert (=> b!3377795 (= e!2096564 (and tp!1056265 tp!1056268))))

(declare-fun b!3377794 () Bool)

(declare-fun e!2096563 () Bool)

(declare-fun tp!1056266 () Bool)

(assert (=> b!3377794 (= e!2096563 (and tp!1056266 (inv!49874 (tag!5930 (h!42230 (t!262821 rules!2135)))) (inv!49877 (transformation!5362 (h!42230 (t!262821 rules!2135)))) e!2096564))))

(declare-fun b!3377793 () Bool)

(declare-fun e!2096566 () Bool)

(declare-fun tp!1056267 () Bool)

(assert (=> b!3377793 (= e!2096566 (and e!2096563 tp!1056267))))

(assert (=> b!3377062 (= tp!1056148 e!2096566)))

(assert (= b!3377794 b!3377795))

(assert (= b!3377793 b!3377794))

(assert (= (and b!3377062 ((_ is Cons!36810) (t!262821 rules!2135))) b!3377793))

(declare-fun m!3741541 () Bool)

(assert (=> b!3377794 m!3741541))

(declare-fun m!3741543 () Bool)

(assert (=> b!3377794 m!3741543))

(declare-fun b!3377796 () Bool)

(declare-fun e!2096567 () Bool)

(assert (=> b!3377796 (= e!2096567 tp_is_empty!17461)))

(declare-fun b!3377798 () Bool)

(declare-fun tp!1056271 () Bool)

(assert (=> b!3377798 (= e!2096567 tp!1056271)))

(declare-fun b!3377799 () Bool)

(declare-fun tp!1056272 () Bool)

(declare-fun tp!1056269 () Bool)

(assert (=> b!3377799 (= e!2096567 (and tp!1056272 tp!1056269))))

(declare-fun b!3377797 () Bool)

(declare-fun tp!1056270 () Bool)

(declare-fun tp!1056273 () Bool)

(assert (=> b!3377797 (= e!2096567 (and tp!1056270 tp!1056273))))

(assert (=> b!3377045 (= tp!1056151 e!2096567)))

(assert (= (and b!3377045 ((_ is ElementMatch!10121) (regex!5362 (rule!7906 separatorToken!241)))) b!3377796))

(assert (= (and b!3377045 ((_ is Concat!15713) (regex!5362 (rule!7906 separatorToken!241)))) b!3377797))

(assert (= (and b!3377045 ((_ is Star!10121) (regex!5362 (rule!7906 separatorToken!241)))) b!3377798))

(assert (= (and b!3377045 ((_ is Union!10121) (regex!5362 (rule!7906 separatorToken!241)))) b!3377799))

(declare-fun b!3377800 () Bool)

(declare-fun e!2096568 () Bool)

(declare-fun tp!1056274 () Bool)

(assert (=> b!3377800 (= e!2096568 (and tp_is_empty!17461 tp!1056274))))

(assert (=> b!3377052 (= tp!1056152 e!2096568)))

(assert (= (and b!3377052 ((_ is Cons!36809) (originalCharacters!6076 (h!42231 tokens!494)))) b!3377800))

(declare-fun b_lambda!95797 () Bool)

(assert (= b_lambda!95769 (or b!3377059 b_lambda!95797)))

(declare-fun bs!554645 () Bool)

(declare-fun d!958392 () Bool)

(assert (= bs!554645 (and d!958392 b!3377059)))

(assert (=> bs!554645 (= (dynLambda!15289 lambda!120385 (h!42231 tokens!494)) (not (isSeparator!5362 (rule!7906 (h!42231 tokens!494)))))))

(assert (=> d!958292 d!958392))

(declare-fun b_lambda!95799 () Bool)

(assert (= b_lambda!95795 (or b!3377059 b_lambda!95799)))

(assert (=> b!3377740 d!958392))

(declare-fun b_lambda!95801 () Bool)

(assert (= b_lambda!95773 (or (and b!3377075 b_free!88307 (= (toChars!7405 (transformation!5362 (h!42230 rules!2135))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))))) (and b!3377795 b_free!88331 (= (toChars!7405 (transformation!5362 (h!42230 (t!262821 rules!2135)))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))))) (and b!3377761 b_free!88327 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 (t!262822 tokens!494))))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))))) (and b!3377056 b_free!88311 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))))) (and b!3377047 b_free!88315) b_lambda!95801)))

(declare-fun b_lambda!95803 () Bool)

(assert (= b_lambda!95771 (or (and b!3377761 b_free!88327 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 (t!262822 tokens!494))))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377795 b_free!88331 (= (toChars!7405 (transformation!5362 (h!42230 (t!262821 rules!2135)))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377075 b_free!88307 (= (toChars!7405 (transformation!5362 (h!42230 rules!2135))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377047 b_free!88315 (= (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377056 b_free!88311) b_lambda!95803)))

(declare-fun b_lambda!95805 () Bool)

(assert (= b_lambda!95765 (or (and b!3377795 b_free!88329 (= (toValue!7546 (transformation!5362 (h!42230 (t!262821 rules!2135)))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377761 b_free!88325 (= (toValue!7546 (transformation!5362 (rule!7906 (h!42231 (t!262822 tokens!494))))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377056 b_free!88309) (and b!3377047 b_free!88313 (= (toValue!7546 (transformation!5362 (rule!7906 separatorToken!241))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377075 b_free!88305 (= (toValue!7546 (transformation!5362 (h!42230 rules!2135))) (toValue!7546 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) b_lambda!95805)))

(declare-fun b_lambda!95807 () Bool)

(assert (= b_lambda!95759 (or (and b!3377761 b_free!88327 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 (t!262822 tokens!494))))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377795 b_free!88331 (= (toChars!7405 (transformation!5362 (h!42230 (t!262821 rules!2135)))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377075 b_free!88307 (= (toChars!7405 (transformation!5362 (h!42230 rules!2135))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377047 b_free!88315 (= (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))) (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))))) (and b!3377056 b_free!88311) b_lambda!95807)))

(declare-fun b_lambda!95809 () Bool)

(assert (= b_lambda!95775 (or (and b!3377075 b_free!88307 (= (toChars!7405 (transformation!5362 (h!42230 rules!2135))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))))) (and b!3377795 b_free!88331 (= (toChars!7405 (transformation!5362 (h!42230 (t!262821 rules!2135)))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))))) (and b!3377761 b_free!88327 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 (t!262822 tokens!494))))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))))) (and b!3377056 b_free!88311 (= (toChars!7405 (transformation!5362 (rule!7906 (h!42231 tokens!494)))) (toChars!7405 (transformation!5362 (rule!7906 separatorToken!241))))) (and b!3377047 b_free!88315) b_lambda!95809)))

(check-sat (not d!958384) (not b_lambda!95807) (not b!3377542) (not b!3377783) (not b!3377578) b_and!234515 (not b!3377433) (not d!958280) (not d!958326) (not b!3377246) (not b!3377495) (not b!3377465) (not b_next!89031) (not b!3377506) (not b_next!89011) (not b!3377570) (not d!958336) (not b!3377559) (not b!3377766) (not d!958300) (not b!3377596) (not bm!244394) b_and!234537 (not b!3377558) (not d!958286) (not b!3377453) (not b!3377594) (not d!958322) (not b!3377426) (not bm!244396) (not b!3377525) (not d!958344) (not b!3377759) (not b!3377210) (not b!3377577) b_and!234559 (not b!3377464) (not b!3377494) (not b!3377735) (not b!3377778) (not d!958296) (not d!958334) (not b!3377800) (not b!3377568) (not b!3377797) (not b_lambda!95805) (not b!3377725) (not b!3377581) (not bm!244395) (not b!3377572) (not b!3377538) (not b!3377561) (not b!3377555) (not tb!179783) (not d!958302) (not b!3377566) (not bm!244387) (not b!3377211) (not b!3377447) (not b!3377523) (not d!958242) (not b!3377452) (not d!958328) b_and!234535 (not b_lambda!95799) (not b!3377449) (not b!3377579) (not tb!179771) (not b!3377534) (not b!3377580) (not b!3377599) (not b!3377463) b_and!234519 (not b!3377500) (not b!3377527) (not d!958390) (not bm!244384) (not d!958306) (not b!3377251) (not d!958330) (not b_lambda!95797) (not d!958210) (not b_lambda!95809) (not b!3377544) (not b!3377782) (not b_next!89035) (not b_next!89015) (not b!3377431) (not b!3377595) (not b!3377221) (not d!958282) b_and!234561 (not d!958310) (not b!3377794) (not b!3377716) (not d!958226) (not d!958314) (not b!3377264) (not b!3377222) (not d!958290) (not d!958342) (not b!3377502) (not d!958288) (not b!3377591) (not b!3377747) (not d!958332) (not b!3377784) (not d!958204) tp_is_empty!17461 (not b!3377532) (not b!3377536) (not b!3377779) (not b_next!89017) (not b!3377734) (not b!3377780) (not d!958220) (not b!3377455) (not b!3377798) (not b!3377557) (not b!3377425) (not bm!244385) (not d!958238) (not b!3377504) (not d!958228) (not tb!179777) (not b_lambda!95801) (not b!3377793) (not b!3377741) (not d!958264) (not b!3377258) (not b!3377446) b_and!234565 (not b!3377269) (not d!958292) b_and!234533 (not d!958230) (not b!3377576) (not b!3377429) (not b!3377540) (not d!958232) b_and!234563 (not b_next!89009) (not b_next!89029) (not b!3377430) (not b!3377510) (not d!958218) (not b!3377428) (not d!958160) (not b!3377243) (not d!958278) (not d!958284) (not d!958320) (not b_next!89013) (not b!3377209) (not b!3377758) (not d!958216) (not b!3377228) (not b_lambda!95803) (not b!3377560) (not b_next!89033) (not b!3377526) (not d!958338) (not b!3377521) b_and!234517 (not d!958308) (not d!958346) (not b!3377462) (not b!3377760) (not b_next!89019) (not b!3377799) (not b!3377592) (not b!3377241) (not b!3377432))
(check-sat b_and!234515 b_and!234537 b_and!234559 b_and!234535 b_and!234519 b_and!234561 (not b_next!89017) b_and!234565 b_and!234533 (not b_next!89013) (not b_next!89033) b_and!234517 (not b_next!89019) (not b_next!89031) (not b_next!89011) (not b_next!89035) (not b_next!89015) b_and!234563 (not b_next!89009) (not b_next!89029))

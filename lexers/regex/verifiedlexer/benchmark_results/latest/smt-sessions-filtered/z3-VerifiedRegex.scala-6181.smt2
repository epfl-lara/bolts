; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299238 () Bool)

(assert start!299238)

(declare-fun b!3189333 () Bool)

(declare-fun b_free!84241 () Bool)

(declare-fun b_next!84945 () Bool)

(assert (=> b!3189333 (= b_free!84241 (not b_next!84945))))

(declare-fun tp!1008150 () Bool)

(declare-fun b_and!211251 () Bool)

(assert (=> b!3189333 (= tp!1008150 b_and!211251)))

(declare-fun b_free!84243 () Bool)

(declare-fun b_next!84947 () Bool)

(assert (=> b!3189333 (= b_free!84243 (not b_next!84947))))

(declare-fun tp!1008155 () Bool)

(declare-fun b_and!211253 () Bool)

(assert (=> b!3189333 (= tp!1008155 b_and!211253)))

(declare-fun b!3189317 () Bool)

(declare-fun b_free!84245 () Bool)

(declare-fun b_next!84949 () Bool)

(assert (=> b!3189317 (= b_free!84245 (not b_next!84949))))

(declare-fun tp!1008146 () Bool)

(declare-fun b_and!211255 () Bool)

(assert (=> b!3189317 (= tp!1008146 b_and!211255)))

(declare-fun b_free!84247 () Bool)

(declare-fun b_next!84951 () Bool)

(assert (=> b!3189317 (= b_free!84247 (not b_next!84951))))

(declare-fun tp!1008158 () Bool)

(declare-fun b_and!211257 () Bool)

(assert (=> b!3189317 (= tp!1008158 b_and!211257)))

(declare-fun b!3189312 () Bool)

(declare-fun b_free!84249 () Bool)

(declare-fun b_next!84953 () Bool)

(assert (=> b!3189312 (= b_free!84249 (not b_next!84953))))

(declare-fun tp!1008157 () Bool)

(declare-fun b_and!211259 () Bool)

(assert (=> b!3189312 (= tp!1008157 b_and!211259)))

(declare-fun b_free!84251 () Bool)

(declare-fun b_next!84955 () Bool)

(assert (=> b!3189312 (= b_free!84251 (not b_next!84955))))

(declare-fun tp!1008148 () Bool)

(declare-fun b_and!211261 () Bool)

(assert (=> b!3189312 (= tp!1008148 b_and!211261)))

(declare-fun b!3189304 () Bool)

(declare-fun res!1296874 () Bool)

(declare-fun e!1987431 () Bool)

(assert (=> b!3189304 (=> (not res!1296874) (not e!1987431))))

(declare-datatypes ((C!19988 0))(
  ( (C!19989 (val!12042 Int)) )
))
(declare-datatypes ((Regex!9901 0))(
  ( (ElementMatch!9901 (c!535672 C!19988)) (Concat!15273 (regOne!20314 Regex!9901) (regTwo!20314 Regex!9901)) (EmptyExpr!9901) (Star!9901 (reg!10230 Regex!9901)) (EmptyLang!9901) (Union!9901 (regOne!20315 Regex!9901) (regTwo!20315 Regex!9901)) )
))
(declare-datatypes ((List!35960 0))(
  ( (Nil!35836) (Cons!35836 (h!41256 (_ BitVec 16)) (t!236087 List!35960)) )
))
(declare-datatypes ((TokenValue!5372 0))(
  ( (FloatLiteralValue!10744 (text!38049 List!35960)) (TokenValueExt!5371 (__x!22961 Int)) (Broken!26860 (value!166981 List!35960)) (Object!5495) (End!5372) (Def!5372) (Underscore!5372) (Match!5372) (Else!5372) (Error!5372) (Case!5372) (If!5372) (Extends!5372) (Abstract!5372) (Class!5372) (Val!5372) (DelimiterValue!10744 (del!5432 List!35960)) (KeywordValue!5378 (value!166982 List!35960)) (CommentValue!10744 (value!166983 List!35960)) (WhitespaceValue!10744 (value!166984 List!35960)) (IndentationValue!5372 (value!166985 List!35960)) (String!40193) (Int32!5372) (Broken!26861 (value!166986 List!35960)) (Boolean!5373) (Unit!50259) (OperatorValue!5375 (op!5432 List!35960)) (IdentifierValue!10744 (value!166987 List!35960)) (IdentifierValue!10745 (value!166988 List!35960)) (WhitespaceValue!10745 (value!166989 List!35960)) (True!10744) (False!10744) (Broken!26862 (value!166990 List!35960)) (Broken!26863 (value!166991 List!35960)) (True!10745) (RightBrace!5372) (RightBracket!5372) (Colon!5372) (Null!5372) (Comma!5372) (LeftBracket!5372) (False!10745) (LeftBrace!5372) (ImaginaryLiteralValue!5372 (text!38050 List!35960)) (StringLiteralValue!16116 (value!166992 List!35960)) (EOFValue!5372 (value!166993 List!35960)) (IdentValue!5372 (value!166994 List!35960)) (DelimiterValue!10745 (value!166995 List!35960)) (DedentValue!5372 (value!166996 List!35960)) (NewLineValue!5372 (value!166997 List!35960)) (IntegerValue!16116 (value!166998 (_ BitVec 32)) (text!38051 List!35960)) (IntegerValue!16117 (value!166999 Int) (text!38052 List!35960)) (Times!5372) (Or!5372) (Equal!5372) (Minus!5372) (Broken!26864 (value!167000 List!35960)) (And!5372) (Div!5372) (LessEqual!5372) (Mod!5372) (Concat!15274) (Not!5372) (Plus!5372) (SpaceValue!5372 (value!167001 List!35960)) (IntegerValue!16118 (value!167002 Int) (text!38053 List!35960)) (StringLiteralValue!16117 (text!38054 List!35960)) (FloatLiteralValue!10745 (text!38055 List!35960)) (BytesLiteralValue!5372 (value!167003 List!35960)) (CommentValue!10745 (value!167004 List!35960)) (StringLiteralValue!16118 (value!167005 List!35960)) (ErrorTokenValue!5372 (msg!5433 List!35960)) )
))
(declare-datatypes ((List!35961 0))(
  ( (Nil!35837) (Cons!35837 (h!41257 C!19988) (t!236088 List!35961)) )
))
(declare-datatypes ((IArray!21323 0))(
  ( (IArray!21324 (innerList!10719 List!35961)) )
))
(declare-datatypes ((Conc!10659 0))(
  ( (Node!10659 (left!27872 Conc!10659) (right!28202 Conc!10659) (csize!21548 Int) (cheight!10870 Int)) (Leaf!16841 (xs!13777 IArray!21323) (csize!21549 Int)) (Empty!10659) )
))
(declare-datatypes ((BalanceConc!20932 0))(
  ( (BalanceConc!20933 (c!535673 Conc!10659)) )
))
(declare-datatypes ((String!40194 0))(
  ( (String!40195 (value!167006 String)) )
))
(declare-datatypes ((TokenValueInjection!10172 0))(
  ( (TokenValueInjection!10173 (toValue!7206 Int) (toChars!7065 Int)) )
))
(declare-datatypes ((Rule!10084 0))(
  ( (Rule!10085 (regex!5142 Regex!9901) (tag!5660 String!40194) (isSeparator!5142 Bool) (transformation!5142 TokenValueInjection!10172)) )
))
(declare-datatypes ((List!35962 0))(
  ( (Nil!35838) (Cons!35838 (h!41258 Rule!10084) (t!236089 List!35962)) )
))
(declare-fun rules!2135 () List!35962)

(declare-fun isEmpty!19977 (List!35962) Bool)

(assert (=> b!3189304 (= res!1296874 (not (isEmpty!19977 rules!2135)))))

(declare-fun b!3189305 () Bool)

(declare-fun e!1987429 () Bool)

(declare-datatypes ((Token!9650 0))(
  ( (Token!9651 (value!167007 TokenValue!5372) (rule!7574 Rule!10084) (size!27040 Int) (originalCharacters!5856 List!35961)) )
))
(declare-datatypes ((List!35963 0))(
  ( (Nil!35839) (Cons!35839 (h!41259 Token!9650) (t!236090 List!35963)) )
))
(declare-fun tokens!494 () List!35963)

(declare-fun lt!1073424 () Rule!10084)

(assert (=> b!3189305 (= e!1987429 (= (rule!7574 (h!41259 tokens!494)) lt!1073424))))

(declare-fun res!1296883 () Bool)

(assert (=> start!299238 (=> (not res!1296883) (not e!1987431))))

(declare-datatypes ((LexerInterface!4731 0))(
  ( (LexerInterfaceExt!4728 (__x!22962 Int)) (Lexer!4729) )
))
(declare-fun thiss!18206 () LexerInterface!4731)

(get-info :version)

(assert (=> start!299238 (= res!1296883 ((_ is Lexer!4729) thiss!18206))))

(assert (=> start!299238 e!1987431))

(assert (=> start!299238 true))

(declare-fun e!1987432 () Bool)

(assert (=> start!299238 e!1987432))

(declare-fun separatorToken!241 () Token!9650)

(declare-fun e!1987440 () Bool)

(declare-fun inv!48694 (Token!9650) Bool)

(assert (=> start!299238 (and (inv!48694 separatorToken!241) e!1987440)))

(declare-fun e!1987420 () Bool)

(assert (=> start!299238 e!1987420))

(declare-fun tp!1008151 () Bool)

(declare-fun b!3189306 () Bool)

(declare-fun e!1987418 () Bool)

(declare-fun inv!21 (TokenValue!5372) Bool)

(assert (=> b!3189306 (= e!1987440 (and (inv!21 (value!167007 separatorToken!241)) e!1987418 tp!1008151))))

(declare-fun b!3189307 () Bool)

(declare-fun res!1296887 () Bool)

(declare-fun e!1987427 () Bool)

(assert (=> b!3189307 (=> (not res!1296887) (not e!1987427))))

(declare-fun sepAndNonSepRulesDisjointChars!1336 (List!35962 List!35962) Bool)

(assert (=> b!3189307 (= res!1296887 (sepAndNonSepRulesDisjointChars!1336 rules!2135 rules!2135))))

(declare-fun b!3189308 () Bool)

(declare-datatypes ((Unit!50260 0))(
  ( (Unit!50261) )
))
(declare-fun e!1987434 () Unit!50260)

(declare-fun Unit!50262 () Unit!50260)

(assert (=> b!3189308 (= e!1987434 Unit!50262)))

(declare-fun lt!1073428 () List!35961)

(declare-fun lt!1073411 () C!19988)

(declare-fun lt!1073422 () Unit!50260)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!340 (Regex!9901 List!35961 C!19988) Unit!50260)

(assert (=> b!3189308 (= lt!1073422 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!340 (regex!5142 (rule!7574 separatorToken!241)) lt!1073428 lt!1073411))))

(declare-fun res!1296873 () Bool)

(declare-fun matchR!4559 (Regex!9901 List!35961) Bool)

(assert (=> b!3189308 (= res!1296873 (not (matchR!4559 (regex!5142 (rule!7574 separatorToken!241)) lt!1073428)))))

(declare-fun e!1987437 () Bool)

(assert (=> b!3189308 (=> (not res!1296873) (not e!1987437))))

(assert (=> b!3189308 e!1987437))

(declare-fun b!3189309 () Bool)

(declare-fun e!1987417 () Bool)

(assert (=> b!3189309 (= e!1987417 e!1987429)))

(declare-fun res!1296872 () Bool)

(assert (=> b!3189309 (=> (not res!1296872) (not e!1987429))))

(declare-fun lt!1073416 () List!35961)

(assert (=> b!3189309 (= res!1296872 (matchR!4559 (regex!5142 lt!1073424) lt!1073416))))

(declare-datatypes ((Option!7017 0))(
  ( (None!7016) (Some!7016 (v!35516 Rule!10084)) )
))
(declare-fun lt!1073438 () Option!7017)

(declare-fun get!11410 (Option!7017) Rule!10084)

(assert (=> b!3189309 (= lt!1073424 (get!11410 lt!1073438))))

(declare-fun e!1987415 () Bool)

(declare-fun tp!1008149 () Bool)

(declare-fun e!1987425 () Bool)

(declare-fun b!3189310 () Bool)

(declare-fun inv!48691 (String!40194) Bool)

(declare-fun inv!48695 (TokenValueInjection!10172) Bool)

(assert (=> b!3189310 (= e!1987415 (and tp!1008149 (inv!48691 (tag!5660 (h!41258 rules!2135))) (inv!48695 (transformation!5142 (h!41258 rules!2135))) e!1987425))))

(declare-fun b!3189311 () Bool)

(declare-fun e!1987422 () Bool)

(declare-fun e!1987421 () Bool)

(assert (=> b!3189311 (= e!1987422 e!1987421)))

(declare-fun res!1296881 () Bool)

(assert (=> b!3189311 (=> res!1296881 e!1987421)))

(declare-fun lt!1073433 () BalanceConc!20932)

(declare-datatypes ((IArray!21325 0))(
  ( (IArray!21326 (innerList!10720 List!35963)) )
))
(declare-datatypes ((Conc!10660 0))(
  ( (Node!10660 (left!27873 Conc!10660) (right!28203 Conc!10660) (csize!21550 Int) (cheight!10871 Int)) (Leaf!16842 (xs!13778 IArray!21325) (csize!21551 Int)) (Empty!10660) )
))
(declare-datatypes ((BalanceConc!20934 0))(
  ( (BalanceConc!20935 (c!535674 Conc!10660)) )
))
(declare-fun isEmpty!19978 (BalanceConc!20934) Bool)

(declare-datatypes ((tuple2!35210 0))(
  ( (tuple2!35211 (_1!20739 BalanceConc!20934) (_2!20739 BalanceConc!20932)) )
))
(declare-fun lex!2071 (LexerInterface!4731 List!35962 BalanceConc!20932) tuple2!35210)

(assert (=> b!3189311 (= res!1296881 (isEmpty!19978 (_1!20739 (lex!2071 thiss!18206 rules!2135 lt!1073433))))))

(declare-fun seqFromList!3363 (List!35961) BalanceConc!20932)

(assert (=> b!3189311 (= lt!1073433 (seqFromList!3363 lt!1073416))))

(assert (=> b!3189312 (= e!1987425 (and tp!1008157 tp!1008148))))

(declare-fun tp!1008152 () Bool)

(declare-fun b!3189313 () Bool)

(declare-fun e!1987416 () Bool)

(assert (=> b!3189313 (= e!1987420 (and (inv!48694 (h!41259 tokens!494)) e!1987416 tp!1008152))))

(declare-fun b!3189314 () Bool)

(declare-fun e!1987436 () Bool)

(assert (=> b!3189314 (= e!1987427 (not e!1987436))))

(declare-fun res!1296884 () Bool)

(assert (=> b!3189314 (=> res!1296884 e!1987436)))

(declare-fun lt!1073419 () List!35961)

(declare-fun lt!1073418 () List!35961)

(assert (=> b!3189314 (= res!1296884 (not (= lt!1073419 lt!1073418)))))

(declare-fun printList!1285 (LexerInterface!4731 List!35963) List!35961)

(assert (=> b!3189314 (= lt!1073418 (printList!1285 thiss!18206 (Cons!35839 (h!41259 tokens!494) Nil!35839)))))

(declare-fun lt!1073426 () BalanceConc!20932)

(declare-fun list!12731 (BalanceConc!20932) List!35961)

(assert (=> b!3189314 (= lt!1073419 (list!12731 lt!1073426))))

(declare-fun lt!1073417 () BalanceConc!20934)

(declare-fun printTailRec!1230 (LexerInterface!4731 BalanceConc!20934 Int BalanceConc!20932) BalanceConc!20932)

(assert (=> b!3189314 (= lt!1073426 (printTailRec!1230 thiss!18206 lt!1073417 0 (BalanceConc!20933 Empty!10659)))))

(declare-fun print!1798 (LexerInterface!4731 BalanceConc!20934) BalanceConc!20932)

(assert (=> b!3189314 (= lt!1073426 (print!1798 thiss!18206 lt!1073417))))

(declare-fun singletonSeq!2238 (Token!9650) BalanceConc!20934)

(assert (=> b!3189314 (= lt!1073417 (singletonSeq!2238 (h!41259 tokens!494)))))

(declare-fun tp!1008147 () Bool)

(declare-fun b!3189315 () Bool)

(declare-fun e!1987424 () Bool)

(assert (=> b!3189315 (= e!1987418 (and tp!1008147 (inv!48691 (tag!5660 (rule!7574 separatorToken!241))) (inv!48695 (transformation!5142 (rule!7574 separatorToken!241))) e!1987424))))

(declare-fun b!3189316 () Bool)

(declare-fun tp!1008154 () Bool)

(assert (=> b!3189316 (= e!1987432 (and e!1987415 tp!1008154))))

(declare-fun e!1987435 () Bool)

(assert (=> b!3189317 (= e!1987435 (and tp!1008146 tp!1008158))))

(declare-fun b!3189318 () Bool)

(declare-fun res!1296878 () Bool)

(assert (=> b!3189318 (=> (not res!1296878) (not e!1987431))))

(declare-fun rulesInvariant!4128 (LexerInterface!4731 List!35962) Bool)

(assert (=> b!3189318 (= res!1296878 (rulesInvariant!4128 thiss!18206 rules!2135))))

(declare-fun tp!1008153 () Bool)

(declare-fun b!3189319 () Bool)

(declare-fun e!1987423 () Bool)

(assert (=> b!3189319 (= e!1987423 (and tp!1008153 (inv!48691 (tag!5660 (rule!7574 (h!41259 tokens!494)))) (inv!48695 (transformation!5142 (rule!7574 (h!41259 tokens!494)))) e!1987435))))

(declare-fun b!3189320 () Bool)

(declare-fun e!1987419 () Bool)

(declare-fun lt!1073425 () Rule!10084)

(assert (=> b!3189320 (= e!1987419 (= (rule!7574 separatorToken!241) lt!1073425))))

(declare-fun b!3189321 () Bool)

(declare-fun res!1296870 () Bool)

(assert (=> b!3189321 (=> (not res!1296870) (not e!1987427))))

(assert (=> b!3189321 (= res!1296870 (isSeparator!5142 (rule!7574 separatorToken!241)))))

(declare-fun tp!1008156 () Bool)

(declare-fun b!3189322 () Bool)

(assert (=> b!3189322 (= e!1987416 (and (inv!21 (value!167007 (h!41259 tokens!494))) e!1987423 tp!1008156))))

(declare-fun b!3189323 () Bool)

(declare-fun res!1296879 () Bool)

(assert (=> b!3189323 (=> (not res!1296879) (not e!1987427))))

(declare-fun rulesProduceIndividualToken!2223 (LexerInterface!4731 List!35962 Token!9650) Bool)

(assert (=> b!3189323 (= res!1296879 (rulesProduceIndividualToken!2223 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3189324 () Bool)

(declare-fun e!1987433 () Bool)

(assert (=> b!3189324 (= e!1987421 e!1987433)))

(declare-fun res!1296876 () Bool)

(assert (=> b!3189324 (=> res!1296876 e!1987433)))

(assert (=> b!3189324 (= res!1296876 (isSeparator!5142 (rule!7574 (h!41259 tokens!494))))))

(declare-fun lt!1073434 () Unit!50260)

(declare-fun lambda!116629 () Int)

(declare-fun forallContained!1125 (List!35963 Int Token!9650) Unit!50260)

(assert (=> b!3189324 (= lt!1073434 (forallContained!1125 tokens!494 lambda!116629 (h!41259 tokens!494)))))

(declare-fun b!3189325 () Bool)

(declare-fun e!1987426 () Bool)

(assert (=> b!3189325 (= e!1987433 e!1987426)))

(declare-fun res!1296877 () Bool)

(assert (=> b!3189325 (=> res!1296877 e!1987426)))

(declare-fun lt!1073415 () List!35961)

(declare-fun lt!1073427 () List!35961)

(assert (=> b!3189325 (= res!1296877 (not (= lt!1073415 lt!1073427)))))

(declare-fun ++!8580 (List!35961 List!35961) List!35961)

(assert (=> b!3189325 (= lt!1073427 (++!8580 lt!1073416 lt!1073428))))

(declare-fun lt!1073436 () BalanceConc!20932)

(assert (=> b!3189325 (= lt!1073415 (list!12731 lt!1073436))))

(declare-fun charsOf!3164 (Token!9650) BalanceConc!20932)

(assert (=> b!3189325 (= lt!1073428 (list!12731 (charsOf!3164 separatorToken!241)))))

(declare-fun lt!1073423 () BalanceConc!20934)

(declare-fun printWithSeparatorToken!40 (LexerInterface!4731 BalanceConc!20934 Token!9650) BalanceConc!20932)

(assert (=> b!3189325 (= lt!1073436 (printWithSeparatorToken!40 thiss!18206 lt!1073423 separatorToken!241))))

(declare-fun b!3189326 () Bool)

(assert (=> b!3189326 (= e!1987436 e!1987422)))

(declare-fun res!1296886 () Bool)

(assert (=> b!3189326 (=> res!1296886 e!1987422)))

(assert (=> b!3189326 (= res!1296886 (or (not (= lt!1073418 lt!1073416)) (not (= lt!1073419 lt!1073416))))))

(assert (=> b!3189326 (= lt!1073416 (list!12731 (charsOf!3164 (h!41259 tokens!494))))))

(declare-fun b!3189327 () Bool)

(declare-fun e!1987413 () Bool)

(assert (=> b!3189327 (= e!1987426 e!1987413)))

(declare-fun res!1296882 () Bool)

(assert (=> b!3189327 (=> res!1296882 e!1987413)))

(declare-fun lt!1073420 () Bool)

(assert (=> b!3189327 (= res!1296882 lt!1073420)))

(declare-fun lt!1073410 () Unit!50260)

(assert (=> b!3189327 (= lt!1073410 e!1987434)))

(declare-fun c!535671 () Bool)

(assert (=> b!3189327 (= c!535671 lt!1073420)))

(declare-fun contains!6367 (List!35961 C!19988) Bool)

(declare-fun usedCharacters!486 (Regex!9901) List!35961)

(assert (=> b!3189327 (= lt!1073420 (not (contains!6367 (usedCharacters!486 (regex!5142 (rule!7574 separatorToken!241))) lt!1073411)))))

(declare-fun head!6977 (List!35961) C!19988)

(assert (=> b!3189327 (= lt!1073411 (head!6977 lt!1073428))))

(declare-datatypes ((tuple2!35212 0))(
  ( (tuple2!35213 (_1!20740 Token!9650) (_2!20740 List!35961)) )
))
(declare-datatypes ((Option!7018 0))(
  ( (None!7017) (Some!7017 (v!35517 tuple2!35212)) )
))
(declare-fun maxPrefixOneRule!1536 (LexerInterface!4731 Rule!10084 List!35961) Option!7018)

(declare-fun apply!8080 (TokenValueInjection!10172 BalanceConc!20932) TokenValue!5372)

(declare-fun size!27041 (List!35961) Int)

(assert (=> b!3189327 (= (maxPrefixOneRule!1536 thiss!18206 (rule!7574 (h!41259 tokens!494)) lt!1073416) (Some!7017 (tuple2!35213 (Token!9651 (apply!8080 (transformation!5142 (rule!7574 (h!41259 tokens!494))) lt!1073433) (rule!7574 (h!41259 tokens!494)) (size!27041 lt!1073416) lt!1073416) Nil!35837)))))

(declare-fun lt!1073413 () Unit!50260)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!649 (LexerInterface!4731 List!35962 List!35961 List!35961 List!35961 Rule!10084) Unit!50260)

(assert (=> b!3189327 (= lt!1073413 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!649 thiss!18206 rules!2135 lt!1073416 lt!1073416 Nil!35837 (rule!7574 (h!41259 tokens!494))))))

(declare-fun e!1987412 () Bool)

(assert (=> b!3189327 e!1987412))

(declare-fun res!1296869 () Bool)

(assert (=> b!3189327 (=> (not res!1296869) (not e!1987412))))

(declare-fun lt!1073412 () Option!7017)

(declare-fun isDefined!5494 (Option!7017) Bool)

(assert (=> b!3189327 (= res!1296869 (isDefined!5494 lt!1073412))))

(declare-fun getRuleFromTag!871 (LexerInterface!4731 List!35962 String!40194) Option!7017)

(assert (=> b!3189327 (= lt!1073412 (getRuleFromTag!871 thiss!18206 rules!2135 (tag!5660 (rule!7574 separatorToken!241))))))

(declare-fun lt!1073414 () Unit!50260)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!871 (LexerInterface!4731 List!35962 List!35961 Token!9650) Unit!50260)

(assert (=> b!3189327 (= lt!1073414 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!871 thiss!18206 rules!2135 lt!1073428 separatorToken!241))))

(assert (=> b!3189327 e!1987417))

(declare-fun res!1296868 () Bool)

(assert (=> b!3189327 (=> (not res!1296868) (not e!1987417))))

(assert (=> b!3189327 (= res!1296868 (isDefined!5494 lt!1073438))))

(assert (=> b!3189327 (= lt!1073438 (getRuleFromTag!871 thiss!18206 rules!2135 (tag!5660 (rule!7574 (h!41259 tokens!494)))))))

(declare-fun lt!1073430 () Unit!50260)

(assert (=> b!3189327 (= lt!1073430 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!871 thiss!18206 rules!2135 lt!1073416 (h!41259 tokens!494)))))

(declare-fun lt!1073432 () Unit!50260)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!792 (LexerInterface!4731 List!35962 List!35963 Token!9650) Unit!50260)

(assert (=> b!3189327 (= lt!1073432 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!792 thiss!18206 rules!2135 tokens!494 (h!41259 tokens!494)))))

(declare-fun isEmpty!19979 (List!35961) Bool)

(declare-fun getSuffix!1358 (List!35961 List!35961) List!35961)

(assert (=> b!3189327 (isEmpty!19979 (getSuffix!1358 lt!1073416 lt!1073416))))

(declare-fun lt!1073429 () Unit!50260)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!36 (List!35961) Unit!50260)

(assert (=> b!3189327 (= lt!1073429 (lemmaGetSuffixOnListWithItSelfIsEmpty!36 lt!1073416))))

(declare-fun b!3189328 () Bool)

(declare-fun res!1296885 () Bool)

(assert (=> b!3189328 (=> (not res!1296885) (not e!1987427))))

(assert (=> b!3189328 (= res!1296885 (and (not ((_ is Nil!35839) tokens!494)) ((_ is Nil!35839) (t!236090 tokens!494))))))

(declare-fun b!3189329 () Bool)

(declare-fun res!1296871 () Bool)

(assert (=> b!3189329 (=> res!1296871 e!1987422)))

(assert (=> b!3189329 (= res!1296871 (not (rulesProduceIndividualToken!2223 thiss!18206 rules!2135 (h!41259 tokens!494))))))

(declare-fun b!3189330 () Bool)

(declare-fun Unit!50263 () Unit!50260)

(assert (=> b!3189330 (= e!1987434 Unit!50263)))

(declare-fun b!3189331 () Bool)

(assert (=> b!3189331 (= e!1987413 true)))

(declare-fun lt!1073437 () Bool)

(declare-fun rulesValidInductive!1765 (LexerInterface!4731 List!35962) Bool)

(assert (=> b!3189331 (= lt!1073437 (rulesValidInductive!1765 thiss!18206 rules!2135))))

(declare-fun lt!1073421 () Option!7018)

(declare-fun maxPrefix!2409 (LexerInterface!4731 List!35962 List!35961) Option!7018)

(assert (=> b!3189331 (= lt!1073421 (maxPrefix!2409 thiss!18206 rules!2135 lt!1073415))))

(assert (=> b!3189331 (= (maxPrefix!2409 thiss!18206 rules!2135 lt!1073427) (Some!7017 (tuple2!35213 (h!41259 tokens!494) lt!1073428)))))

(declare-fun lt!1073435 () Unit!50260)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!120 (LexerInterface!4731 List!35962 Token!9650 Rule!10084 List!35961 Rule!10084) Unit!50260)

(assert (=> b!3189331 (= lt!1073435 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!120 thiss!18206 rules!2135 (h!41259 tokens!494) (rule!7574 (h!41259 tokens!494)) lt!1073428 (rule!7574 separatorToken!241)))))

(assert (=> b!3189331 (not (contains!6367 (usedCharacters!486 (regex!5142 (rule!7574 (h!41259 tokens!494)))) lt!1073411))))

(declare-fun lt!1073431 () Unit!50260)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!118 (LexerInterface!4731 List!35962 List!35962 Rule!10084 Rule!10084 C!19988) Unit!50260)

(assert (=> b!3189331 (= lt!1073431 (lemmaNonSepRuleNotContainsCharContainedInASepRule!118 thiss!18206 rules!2135 rules!2135 (rule!7574 (h!41259 tokens!494)) (rule!7574 separatorToken!241) lt!1073411))))

(declare-fun b!3189332 () Bool)

(assert (=> b!3189332 (= e!1987431 e!1987427)))

(declare-fun res!1296867 () Bool)

(assert (=> b!3189332 (=> (not res!1296867) (not e!1987427))))

(declare-fun rulesProduceEachTokenIndividually!1182 (LexerInterface!4731 List!35962 BalanceConc!20934) Bool)

(assert (=> b!3189332 (= res!1296867 (rulesProduceEachTokenIndividually!1182 thiss!18206 rules!2135 lt!1073423))))

(declare-fun seqFromList!3364 (List!35963) BalanceConc!20934)

(assert (=> b!3189332 (= lt!1073423 (seqFromList!3364 tokens!494))))

(assert (=> b!3189333 (= e!1987424 (and tp!1008150 tp!1008155))))

(declare-fun b!3189334 () Bool)

(assert (=> b!3189334 (= e!1987437 false)))

(declare-fun b!3189335 () Bool)

(declare-fun res!1296875 () Bool)

(assert (=> b!3189335 (=> (not res!1296875) (not e!1987427))))

(declare-fun forall!7274 (List!35963 Int) Bool)

(assert (=> b!3189335 (= res!1296875 (forall!7274 tokens!494 lambda!116629))))

(declare-fun b!3189336 () Bool)

(assert (=> b!3189336 (= e!1987412 e!1987419)))

(declare-fun res!1296880 () Bool)

(assert (=> b!3189336 (=> (not res!1296880) (not e!1987419))))

(assert (=> b!3189336 (= res!1296880 (matchR!4559 (regex!5142 lt!1073425) lt!1073428))))

(assert (=> b!3189336 (= lt!1073425 (get!11410 lt!1073412))))

(assert (= (and start!299238 res!1296883) b!3189304))

(assert (= (and b!3189304 res!1296874) b!3189318))

(assert (= (and b!3189318 res!1296878) b!3189332))

(assert (= (and b!3189332 res!1296867) b!3189323))

(assert (= (and b!3189323 res!1296879) b!3189321))

(assert (= (and b!3189321 res!1296870) b!3189335))

(assert (= (and b!3189335 res!1296875) b!3189307))

(assert (= (and b!3189307 res!1296887) b!3189328))

(assert (= (and b!3189328 res!1296885) b!3189314))

(assert (= (and b!3189314 (not res!1296884)) b!3189326))

(assert (= (and b!3189326 (not res!1296886)) b!3189329))

(assert (= (and b!3189329 (not res!1296871)) b!3189311))

(assert (= (and b!3189311 (not res!1296881)) b!3189324))

(assert (= (and b!3189324 (not res!1296876)) b!3189325))

(assert (= (and b!3189325 (not res!1296877)) b!3189327))

(assert (= (and b!3189327 res!1296868) b!3189309))

(assert (= (and b!3189309 res!1296872) b!3189305))

(assert (= (and b!3189327 res!1296869) b!3189336))

(assert (= (and b!3189336 res!1296880) b!3189320))

(assert (= (and b!3189327 c!535671) b!3189308))

(assert (= (and b!3189327 (not c!535671)) b!3189330))

(assert (= (and b!3189308 res!1296873) b!3189334))

(assert (= (and b!3189327 (not res!1296882)) b!3189331))

(assert (= b!3189310 b!3189312))

(assert (= b!3189316 b!3189310))

(assert (= (and start!299238 ((_ is Cons!35838) rules!2135)) b!3189316))

(assert (= b!3189315 b!3189333))

(assert (= b!3189306 b!3189315))

(assert (= start!299238 b!3189306))

(assert (= b!3189319 b!3189317))

(assert (= b!3189322 b!3189319))

(assert (= b!3189313 b!3189322))

(assert (= (and start!299238 ((_ is Cons!35839) tokens!494)) b!3189313))

(declare-fun m!3448051 () Bool)

(assert (=> b!3189311 m!3448051))

(declare-fun m!3448053 () Bool)

(assert (=> b!3189311 m!3448053))

(declare-fun m!3448055 () Bool)

(assert (=> b!3189311 m!3448055))

(declare-fun m!3448057 () Bool)

(assert (=> b!3189331 m!3448057))

(declare-fun m!3448059 () Bool)

(assert (=> b!3189331 m!3448059))

(declare-fun m!3448061 () Bool)

(assert (=> b!3189331 m!3448061))

(declare-fun m!3448063 () Bool)

(assert (=> b!3189331 m!3448063))

(declare-fun m!3448065 () Bool)

(assert (=> b!3189331 m!3448065))

(declare-fun m!3448067 () Bool)

(assert (=> b!3189331 m!3448067))

(assert (=> b!3189331 m!3448061))

(declare-fun m!3448069 () Bool)

(assert (=> b!3189331 m!3448069))

(declare-fun m!3448071 () Bool)

(assert (=> b!3189325 m!3448071))

(declare-fun m!3448073 () Bool)

(assert (=> b!3189325 m!3448073))

(declare-fun m!3448075 () Bool)

(assert (=> b!3189325 m!3448075))

(declare-fun m!3448077 () Bool)

(assert (=> b!3189325 m!3448077))

(assert (=> b!3189325 m!3448071))

(declare-fun m!3448079 () Bool)

(assert (=> b!3189325 m!3448079))

(declare-fun m!3448081 () Bool)

(assert (=> b!3189327 m!3448081))

(declare-fun m!3448083 () Bool)

(assert (=> b!3189327 m!3448083))

(declare-fun m!3448085 () Bool)

(assert (=> b!3189327 m!3448085))

(declare-fun m!3448087 () Bool)

(assert (=> b!3189327 m!3448087))

(declare-fun m!3448089 () Bool)

(assert (=> b!3189327 m!3448089))

(declare-fun m!3448091 () Bool)

(assert (=> b!3189327 m!3448091))

(declare-fun m!3448093 () Bool)

(assert (=> b!3189327 m!3448093))

(declare-fun m!3448095 () Bool)

(assert (=> b!3189327 m!3448095))

(declare-fun m!3448097 () Bool)

(assert (=> b!3189327 m!3448097))

(declare-fun m!3448099 () Bool)

(assert (=> b!3189327 m!3448099))

(assert (=> b!3189327 m!3448087))

(declare-fun m!3448101 () Bool)

(assert (=> b!3189327 m!3448101))

(declare-fun m!3448103 () Bool)

(assert (=> b!3189327 m!3448103))

(declare-fun m!3448105 () Bool)

(assert (=> b!3189327 m!3448105))

(assert (=> b!3189327 m!3448089))

(declare-fun m!3448107 () Bool)

(assert (=> b!3189327 m!3448107))

(declare-fun m!3448109 () Bool)

(assert (=> b!3189327 m!3448109))

(declare-fun m!3448111 () Bool)

(assert (=> b!3189327 m!3448111))

(declare-fun m!3448113 () Bool)

(assert (=> b!3189327 m!3448113))

(declare-fun m!3448115 () Bool)

(assert (=> start!299238 m!3448115))

(declare-fun m!3448117 () Bool)

(assert (=> b!3189326 m!3448117))

(assert (=> b!3189326 m!3448117))

(declare-fun m!3448119 () Bool)

(assert (=> b!3189326 m!3448119))

(declare-fun m!3448121 () Bool)

(assert (=> b!3189308 m!3448121))

(declare-fun m!3448123 () Bool)

(assert (=> b!3189308 m!3448123))

(declare-fun m!3448125 () Bool)

(assert (=> b!3189322 m!3448125))

(declare-fun m!3448127 () Bool)

(assert (=> b!3189323 m!3448127))

(declare-fun m!3448129 () Bool)

(assert (=> b!3189310 m!3448129))

(declare-fun m!3448131 () Bool)

(assert (=> b!3189310 m!3448131))

(declare-fun m!3448133 () Bool)

(assert (=> b!3189335 m!3448133))

(declare-fun m!3448135 () Bool)

(assert (=> b!3189319 m!3448135))

(declare-fun m!3448137 () Bool)

(assert (=> b!3189319 m!3448137))

(declare-fun m!3448139 () Bool)

(assert (=> b!3189304 m!3448139))

(declare-fun m!3448141 () Bool)

(assert (=> b!3189309 m!3448141))

(declare-fun m!3448143 () Bool)

(assert (=> b!3189309 m!3448143))

(declare-fun m!3448145 () Bool)

(assert (=> b!3189318 m!3448145))

(declare-fun m!3448147 () Bool)

(assert (=> b!3189306 m!3448147))

(declare-fun m!3448149 () Bool)

(assert (=> b!3189332 m!3448149))

(declare-fun m!3448151 () Bool)

(assert (=> b!3189332 m!3448151))

(declare-fun m!3448153 () Bool)

(assert (=> b!3189329 m!3448153))

(declare-fun m!3448155 () Bool)

(assert (=> b!3189307 m!3448155))

(declare-fun m!3448157 () Bool)

(assert (=> b!3189315 m!3448157))

(declare-fun m!3448159 () Bool)

(assert (=> b!3189315 m!3448159))

(declare-fun m!3448161 () Bool)

(assert (=> b!3189324 m!3448161))

(declare-fun m!3448163 () Bool)

(assert (=> b!3189336 m!3448163))

(declare-fun m!3448165 () Bool)

(assert (=> b!3189336 m!3448165))

(declare-fun m!3448167 () Bool)

(assert (=> b!3189313 m!3448167))

(declare-fun m!3448169 () Bool)

(assert (=> b!3189314 m!3448169))

(declare-fun m!3448171 () Bool)

(assert (=> b!3189314 m!3448171))

(declare-fun m!3448173 () Bool)

(assert (=> b!3189314 m!3448173))

(declare-fun m!3448175 () Bool)

(assert (=> b!3189314 m!3448175))

(declare-fun m!3448177 () Bool)

(assert (=> b!3189314 m!3448177))

(check-sat (not b_next!84955) (not b_next!84951) (not b_next!84953) (not b!3189311) (not b!3189315) (not start!299238) (not b!3189335) b_and!211255 b_and!211253 (not b!3189316) (not b!3189313) (not b!3189327) (not b!3189304) b_and!211251 (not b!3189309) (not b!3189326) (not b!3189332) b_and!211261 (not b!3189319) (not b!3189306) (not b!3189323) (not b!3189329) (not b!3189325) b_and!211257 (not b!3189324) (not b_next!84945) (not b!3189307) (not b!3189310) (not b!3189314) (not b_next!84949) (not b!3189318) (not b_next!84947) (not b!3189308) (not b!3189322) (not b!3189331) b_and!211259 (not b!3189336))
(check-sat (not b_next!84955) (not b_next!84951) b_and!211251 b_and!211261 b_and!211257 (not b_next!84945) (not b_next!84953) (not b_next!84949) (not b_next!84947) b_and!211259 b_and!211255 b_and!211253)

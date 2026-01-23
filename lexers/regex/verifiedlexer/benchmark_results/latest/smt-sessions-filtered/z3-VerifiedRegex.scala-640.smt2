; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21866 () Bool)

(assert start!21866)

(declare-fun b!203496 () Bool)

(declare-fun b_free!7857 () Bool)

(declare-fun b_next!7857 () Bool)

(assert (=> b!203496 (= b_free!7857 (not b_next!7857))))

(declare-fun tp!90275 () Bool)

(declare-fun b_and!14709 () Bool)

(assert (=> b!203496 (= tp!90275 b_and!14709)))

(declare-fun b_free!7859 () Bool)

(declare-fun b_next!7859 () Bool)

(assert (=> b!203496 (= b_free!7859 (not b_next!7859))))

(declare-fun tp!90283 () Bool)

(declare-fun b_and!14711 () Bool)

(assert (=> b!203496 (= tp!90283 b_and!14711)))

(declare-fun b!203490 () Bool)

(declare-fun b_free!7861 () Bool)

(declare-fun b_next!7861 () Bool)

(assert (=> b!203490 (= b_free!7861 (not b_next!7861))))

(declare-fun tp!90278 () Bool)

(declare-fun b_and!14713 () Bool)

(assert (=> b!203490 (= tp!90278 b_and!14713)))

(declare-fun b_free!7863 () Bool)

(declare-fun b_next!7863 () Bool)

(assert (=> b!203490 (= b_free!7863 (not b_next!7863))))

(declare-fun tp!90284 () Bool)

(declare-fun b_and!14715 () Bool)

(assert (=> b!203490 (= tp!90284 b_and!14715)))

(declare-fun b!203483 () Bool)

(declare-fun b_free!7865 () Bool)

(declare-fun b_next!7865 () Bool)

(assert (=> b!203483 (= b_free!7865 (not b_next!7865))))

(declare-fun tp!90274 () Bool)

(declare-fun b_and!14717 () Bool)

(assert (=> b!203483 (= tp!90274 b_and!14717)))

(declare-fun b_free!7867 () Bool)

(declare-fun b_next!7867 () Bool)

(assert (=> b!203483 (= b_free!7867 (not b_next!7867))))

(declare-fun tp!90277 () Bool)

(declare-fun b_and!14719 () Bool)

(assert (=> b!203483 (= tp!90277 b_and!14719)))

(declare-fun bs!20734 () Bool)

(declare-fun b!203474 () Bool)

(declare-fun b!203485 () Bool)

(assert (= bs!20734 (and b!203474 b!203485)))

(declare-fun lambda!6208 () Int)

(declare-fun lambda!6207 () Int)

(assert (=> bs!20734 (not (= lambda!6208 lambda!6207))))

(declare-fun b!203524 () Bool)

(declare-fun e!125115 () Bool)

(assert (=> b!203524 (= e!125115 true)))

(declare-fun b!203523 () Bool)

(declare-fun e!125114 () Bool)

(assert (=> b!203523 (= e!125114 e!125115)))

(declare-fun b!203522 () Bool)

(declare-fun e!125113 () Bool)

(assert (=> b!203522 (= e!125113 e!125114)))

(assert (=> b!203474 e!125113))

(assert (= b!203523 b!203524))

(assert (= b!203522 b!203523))

(declare-datatypes ((List!3273 0))(
  ( (Nil!3263) (Cons!3263 (h!8660 (_ BitVec 16)) (t!30805 List!3273)) )
))
(declare-datatypes ((TokenValue!625 0))(
  ( (FloatLiteralValue!1250 (text!4820 List!3273)) (TokenValueExt!624 (__x!2737 Int)) (Broken!3125 (value!21475 List!3273)) (Object!634) (End!625) (Def!625) (Underscore!625) (Match!625) (Else!625) (Error!625) (Case!625) (If!625) (Extends!625) (Abstract!625) (Class!625) (Val!625) (DelimiterValue!1250 (del!685 List!3273)) (KeywordValue!631 (value!21476 List!3273)) (CommentValue!1250 (value!21477 List!3273)) (WhitespaceValue!1250 (value!21478 List!3273)) (IndentationValue!625 (value!21479 List!3273)) (String!4204) (Int32!625) (Broken!3126 (value!21480 List!3273)) (Boolean!626) (Unit!3279) (OperatorValue!628 (op!685 List!3273)) (IdentifierValue!1250 (value!21481 List!3273)) (IdentifierValue!1251 (value!21482 List!3273)) (WhitespaceValue!1251 (value!21483 List!3273)) (True!1250) (False!1250) (Broken!3127 (value!21484 List!3273)) (Broken!3128 (value!21485 List!3273)) (True!1251) (RightBrace!625) (RightBracket!625) (Colon!625) (Null!625) (Comma!625) (LeftBracket!625) (False!1251) (LeftBrace!625) (ImaginaryLiteralValue!625 (text!4821 List!3273)) (StringLiteralValue!1875 (value!21486 List!3273)) (EOFValue!625 (value!21487 List!3273)) (IdentValue!625 (value!21488 List!3273)) (DelimiterValue!1251 (value!21489 List!3273)) (DedentValue!625 (value!21490 List!3273)) (NewLineValue!625 (value!21491 List!3273)) (IntegerValue!1875 (value!21492 (_ BitVec 32)) (text!4822 List!3273)) (IntegerValue!1876 (value!21493 Int) (text!4823 List!3273)) (Times!625) (Or!625) (Equal!625) (Minus!625) (Broken!3129 (value!21494 List!3273)) (And!625) (Div!625) (LessEqual!625) (Mod!625) (Concat!1452) (Not!625) (Plus!625) (SpaceValue!625 (value!21495 List!3273)) (IntegerValue!1877 (value!21496 Int) (text!4824 List!3273)) (StringLiteralValue!1876 (text!4825 List!3273)) (FloatLiteralValue!1251 (text!4826 List!3273)) (BytesLiteralValue!625 (value!21497 List!3273)) (CommentValue!1251 (value!21498 List!3273)) (StringLiteralValue!1877 (value!21499 List!3273)) (ErrorTokenValue!625 (msg!686 List!3273)) )
))
(declare-datatypes ((C!2576 0))(
  ( (C!2577 (val!1174 Int)) )
))
(declare-datatypes ((List!3274 0))(
  ( (Nil!3264) (Cons!3264 (h!8661 C!2576) (t!30806 List!3274)) )
))
(declare-datatypes ((IArray!2057 0))(
  ( (IArray!2058 (innerList!1086 List!3274)) )
))
(declare-datatypes ((Conc!1028 0))(
  ( (Node!1028 (left!2592 Conc!1028) (right!2922 Conc!1028) (csize!2286 Int) (cheight!1239 Int)) (Leaf!1669 (xs!3623 IArray!2057) (csize!2287 Int)) (Empty!1028) )
))
(declare-datatypes ((BalanceConc!2064 0))(
  ( (BalanceConc!2065 (c!39073 Conc!1028)) )
))
(declare-datatypes ((String!4205 0))(
  ( (String!4206 (value!21500 String)) )
))
(declare-datatypes ((TokenValueInjection!1022 0))(
  ( (TokenValueInjection!1023 (toValue!1286 Int) (toChars!1145 Int)) )
))
(declare-datatypes ((Regex!827 0))(
  ( (ElementMatch!827 (c!39074 C!2576)) (Concat!1453 (regOne!2166 Regex!827) (regTwo!2166 Regex!827)) (EmptyExpr!827) (Star!827 (reg!1156 Regex!827)) (EmptyLang!827) (Union!827 (regOne!2167 Regex!827) (regTwo!2167 Regex!827)) )
))
(declare-datatypes ((Rule!1006 0))(
  ( (Rule!1007 (regex!603 Regex!827) (tag!787 String!4205) (isSeparator!603 Bool) (transformation!603 TokenValueInjection!1022)) )
))
(declare-datatypes ((List!3275 0))(
  ( (Nil!3265) (Cons!3265 (h!8662 Rule!1006) (t!30807 List!3275)) )
))
(declare-fun rules!1920 () List!3275)

(get-info :version)

(assert (= (and b!203474 ((_ is Cons!3265) rules!1920)) b!203522))

(declare-fun order!2117 () Int)

(declare-fun order!2119 () Int)

(declare-fun dynLambda!1429 (Int Int) Int)

(declare-fun dynLambda!1430 (Int Int) Int)

(assert (=> b!203524 (< (dynLambda!1429 order!2117 (toValue!1286 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6208))))

(declare-fun order!2121 () Int)

(declare-fun dynLambda!1431 (Int Int) Int)

(assert (=> b!203524 (< (dynLambda!1431 order!2121 (toChars!1145 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6208))))

(assert (=> b!203474 true))

(declare-fun b!203469 () Bool)

(declare-fun e!125074 () Bool)

(declare-fun e!125078 () Bool)

(assert (=> b!203469 (= e!125074 e!125078)))

(declare-fun res!93151 () Bool)

(assert (=> b!203469 (=> (not res!93151) (not e!125078))))

(declare-fun lt!72904 () List!3274)

(declare-fun lt!72929 () List!3274)

(assert (=> b!203469 (= res!93151 (= lt!72904 lt!72929))))

(declare-datatypes ((Token!950 0))(
  ( (Token!951 (value!21501 TokenValue!625) (rule!1130 Rule!1006) (size!2612 Int) (originalCharacters!646 List!3274)) )
))
(declare-fun separatorToken!170 () Token!950)

(declare-datatypes ((LexerInterface!489 0))(
  ( (LexerInterfaceExt!486 (__x!2738 Int)) (Lexer!487) )
))
(declare-fun thiss!17480 () LexerInterface!489)

(declare-datatypes ((List!3276 0))(
  ( (Nil!3266) (Cons!3266 (h!8663 Token!950) (t!30808 List!3276)) )
))
(declare-datatypes ((IArray!2059 0))(
  ( (IArray!2060 (innerList!1087 List!3276)) )
))
(declare-datatypes ((Conc!1029 0))(
  ( (Node!1029 (left!2593 Conc!1029) (right!2923 Conc!1029) (csize!2288 Int) (cheight!1240 Int)) (Leaf!1670 (xs!3624 IArray!2059) (csize!2289 Int)) (Empty!1029) )
))
(declare-datatypes ((BalanceConc!2066 0))(
  ( (BalanceConc!2067 (c!39075 Conc!1029)) )
))
(declare-fun lt!72923 () BalanceConc!2066)

(declare-fun list!1213 (BalanceConc!2064) List!3274)

(declare-fun printWithSeparatorTokenWhenNeededRec!172 (LexerInterface!489 List!3275 BalanceConc!2066 Token!950 Int) BalanceConc!2064)

(assert (=> b!203469 (= lt!72929 (list!1213 (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 lt!72923 separatorToken!170 0)))))

(declare-fun tokens!465 () List!3276)

(declare-fun printWithSeparatorTokenWhenNeededList!182 (LexerInterface!489 List!3275 List!3276 Token!950) List!3274)

(assert (=> b!203469 (= lt!72904 (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!125071 () Bool)

(declare-fun b!203470 () Bool)

(declare-fun e!125075 () Bool)

(declare-fun tp!90276 () Bool)

(declare-fun inv!21 (TokenValue!625) Bool)

(assert (=> b!203470 (= e!125075 (and (inv!21 (value!21501 separatorToken!170)) e!125071 tp!90276))))

(declare-fun b!203471 () Bool)

(declare-fun e!125101 () Bool)

(declare-datatypes ((tuple2!3398 0))(
  ( (tuple2!3399 (_1!1915 Token!950) (_2!1915 List!3274)) )
))
(declare-datatypes ((Option!501 0))(
  ( (None!500) (Some!500 (v!14043 tuple2!3398)) )
))
(declare-fun lt!72915 () Option!501)

(declare-fun get!968 (Option!501) tuple2!3398)

(declare-fun head!701 (List!3276) Token!950)

(assert (=> b!203471 (= e!125101 (= (_1!1915 (get!968 lt!72915)) (head!701 tokens!465)))))

(declare-fun b!203472 () Bool)

(declare-fun e!125088 () Bool)

(declare-fun lt!72928 () List!3274)

(assert (=> b!203472 (= e!125088 (not (= lt!72928 Nil!3264)))))

(declare-fun lt!72925 () List!3274)

(declare-fun usedCharacters!8 (Regex!827) List!3274)

(assert (=> b!203472 (= lt!72925 (usedCharacters!8 (regex!603 (rule!1130 separatorToken!170))))))

(declare-datatypes ((Unit!3280 0))(
  ( (Unit!3281) )
))
(declare-fun lt!72905 () Unit!3280)

(declare-fun e!125093 () Unit!3280)

(assert (=> b!203472 (= lt!72905 e!125093)))

(declare-fun c!39072 () Bool)

(declare-fun lt!72926 () Token!950)

(declare-fun lt!72901 () C!2576)

(declare-fun contains!536 (List!3274 C!2576) Bool)

(assert (=> b!203472 (= c!39072 (not (contains!536 (usedCharacters!8 (regex!603 (rule!1130 lt!72926))) lt!72901)))))

(declare-fun lt!72899 () List!3274)

(declare-fun head!702 (List!3274) C!2576)

(assert (=> b!203472 (= lt!72901 (head!702 lt!72899))))

(declare-fun e!125082 () Bool)

(assert (=> b!203472 e!125082))

(declare-fun res!93141 () Bool)

(assert (=> b!203472 (=> (not res!93141) (not e!125082))))

(declare-datatypes ((Option!502 0))(
  ( (None!501) (Some!501 (v!14044 Rule!1006)) )
))
(declare-fun lt!72916 () Option!502)

(declare-fun isDefined!352 (Option!502) Bool)

(assert (=> b!203472 (= res!93141 (isDefined!352 lt!72916))))

(declare-fun getRuleFromTag!44 (LexerInterface!489 List!3275 String!4205) Option!502)

(assert (=> b!203472 (= lt!72916 (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 lt!72926))))))

(declare-fun lt!72907 () Unit!3280)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!44 (LexerInterface!489 List!3275 List!3274 Token!950) Unit!3280)

(assert (=> b!203472 (= lt!72907 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!44 thiss!17480 rules!1920 lt!72899 lt!72926))))

(declare-fun charsOf!258 (Token!950) BalanceConc!2064)

(assert (=> b!203472 (= lt!72899 (list!1213 (charsOf!258 lt!72926)))))

(declare-fun lt!72898 () Unit!3280)

(declare-fun forallContained!170 (List!3276 Int Token!950) Unit!3280)

(assert (=> b!203472 (= lt!72898 (forallContained!170 tokens!465 lambda!6208 lt!72926))))

(declare-fun e!125079 () Bool)

(assert (=> b!203472 e!125079))

(declare-fun res!93133 () Bool)

(assert (=> b!203472 (=> (not res!93133) (not e!125079))))

(declare-datatypes ((tuple2!3400 0))(
  ( (tuple2!3401 (_1!1916 BalanceConc!2066) (_2!1916 BalanceConc!2064)) )
))
(declare-fun lt!72919 () tuple2!3400)

(declare-fun size!2613 (BalanceConc!2066) Int)

(assert (=> b!203472 (= res!93133 (= (size!2613 (_1!1916 lt!72919)) 1))))

(declare-fun lt!72913 () BalanceConc!2064)

(declare-fun lex!289 (LexerInterface!489 List!3275 BalanceConc!2064) tuple2!3400)

(assert (=> b!203472 (= lt!72919 (lex!289 thiss!17480 rules!1920 lt!72913))))

(declare-fun lt!72895 () BalanceConc!2066)

(declare-fun printTailRec!183 (LexerInterface!489 BalanceConc!2066 Int BalanceConc!2064) BalanceConc!2064)

(assert (=> b!203472 (= lt!72913 (printTailRec!183 thiss!17480 lt!72895 0 (BalanceConc!2065 Empty!1028)))))

(declare-fun print!220 (LexerInterface!489 BalanceConc!2066) BalanceConc!2064)

(assert (=> b!203472 (= lt!72913 (print!220 thiss!17480 lt!72895))))

(declare-fun singletonSeq!155 (Token!950) BalanceConc!2066)

(assert (=> b!203472 (= lt!72895 (singletonSeq!155 lt!72926))))

(declare-fun e!125098 () Bool)

(assert (=> b!203472 e!125098))

(declare-fun res!93147 () Bool)

(assert (=> b!203472 (=> (not res!93147) (not e!125098))))

(declare-fun lt!72931 () Option!502)

(assert (=> b!203472 (= res!93147 (isDefined!352 lt!72931))))

(assert (=> b!203472 (= lt!72931 (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 separatorToken!170))))))

(declare-fun lt!72912 () List!3274)

(declare-fun lt!72906 () Unit!3280)

(assert (=> b!203472 (= lt!72906 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!44 thiss!17480 rules!1920 lt!72912 separatorToken!170))))

(declare-fun e!125073 () Bool)

(assert (=> b!203472 e!125073))

(declare-fun res!93138 () Bool)

(assert (=> b!203472 (=> (not res!93138) (not e!125073))))

(declare-fun lt!72914 () tuple2!3400)

(assert (=> b!203472 (= res!93138 (= (size!2613 (_1!1916 lt!72914)) 1))))

(declare-fun lt!72927 () BalanceConc!2064)

(assert (=> b!203472 (= lt!72914 (lex!289 thiss!17480 rules!1920 lt!72927))))

(declare-fun lt!72909 () BalanceConc!2066)

(assert (=> b!203472 (= lt!72927 (printTailRec!183 thiss!17480 lt!72909 0 (BalanceConc!2065 Empty!1028)))))

(assert (=> b!203472 (= lt!72927 (print!220 thiss!17480 lt!72909))))

(assert (=> b!203472 (= lt!72909 (singletonSeq!155 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!238 (LexerInterface!489 List!3275 Token!950) Bool)

(assert (=> b!203472 (rulesProduceIndividualToken!238 thiss!17480 rules!1920 lt!72926)))

(declare-fun lt!72922 () Unit!3280)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!56 (LexerInterface!489 List!3275 List!3276 Token!950) Unit!3280)

(assert (=> b!203472 (= lt!72922 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!56 thiss!17480 rules!1920 tokens!465 lt!72926))))

(assert (=> b!203472 (= lt!72926 (head!701 (t!30808 tokens!465)))))

(declare-fun lt!72902 () Unit!3280)

(declare-fun e!125104 () Unit!3280)

(assert (=> b!203472 (= lt!72902 e!125104)))

(declare-fun c!39071 () Bool)

(declare-fun isEmpty!1688 (List!3276) Bool)

(assert (=> b!203472 (= c!39071 (isEmpty!1688 (t!30808 tokens!465)))))

(declare-fun lt!72932 () List!3274)

(declare-fun lt!72938 () Option!501)

(declare-fun maxPrefix!219 (LexerInterface!489 List!3275 List!3274) Option!501)

(assert (=> b!203472 (= lt!72938 (maxPrefix!219 thiss!17480 rules!1920 lt!72932))))

(declare-fun lt!72897 () tuple2!3398)

(assert (=> b!203472 (= lt!72932 (_2!1915 lt!72897))))

(declare-fun lt!72936 () Unit!3280)

(declare-fun lt!72917 () List!3274)

(declare-fun lemmaSamePrefixThenSameSuffix!124 (List!3274 List!3274 List!3274 List!3274 List!3274) Unit!3280)

(assert (=> b!203472 (= lt!72936 (lemmaSamePrefixThenSameSuffix!124 lt!72917 lt!72932 lt!72917 (_2!1915 lt!72897) lt!72904))))

(assert (=> b!203472 (= lt!72897 (get!968 (maxPrefix!219 thiss!17480 rules!1920 lt!72904)))))

(declare-fun lt!72930 () List!3274)

(declare-fun isPrefix!299 (List!3274 List!3274) Bool)

(assert (=> b!203472 (isPrefix!299 lt!72917 lt!72930)))

(declare-fun lt!72910 () Unit!3280)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!194 (List!3274 List!3274) Unit!3280)

(assert (=> b!203472 (= lt!72910 (lemmaConcatTwoListThenFirstIsPrefix!194 lt!72917 lt!72932))))

(declare-fun e!125086 () Bool)

(assert (=> b!203472 e!125086))

(declare-fun res!93146 () Bool)

(assert (=> b!203472 (=> res!93146 e!125086)))

(assert (=> b!203472 (= res!93146 (isEmpty!1688 tokens!465))))

(declare-fun lt!72935 () Unit!3280)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!64 (LexerInterface!489 List!3275 List!3276 Token!950) Unit!3280)

(assert (=> b!203472 (= lt!72935 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!64 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!203473 () Bool)

(declare-fun e!125095 () Bool)

(assert (=> b!203473 (= e!125082 e!125095)))

(declare-fun res!93153 () Bool)

(assert (=> b!203473 (=> (not res!93153) (not e!125095))))

(declare-fun lt!72934 () Rule!1006)

(declare-fun matchR!165 (Regex!827 List!3274) Bool)

(assert (=> b!203473 (= res!93153 (matchR!165 (regex!603 lt!72934) lt!72899))))

(declare-fun get!969 (Option!502) Rule!1006)

(assert (=> b!203473 (= lt!72934 (get!969 lt!72916))))

(declare-fun e!125091 () Bool)

(declare-fun e!125083 () Bool)

(assert (=> b!203474 (= e!125091 e!125083)))

(declare-fun res!93144 () Bool)

(assert (=> b!203474 (=> res!93144 e!125083)))

(declare-datatypes ((tuple2!3402 0))(
  ( (tuple2!3403 (_1!1917 Token!950) (_2!1917 BalanceConc!2064)) )
))
(declare-datatypes ((Option!503 0))(
  ( (None!502) (Some!502 (v!14045 tuple2!3402)) )
))
(declare-fun isDefined!353 (Option!503) Bool)

(declare-fun maxPrefixZipperSequence!182 (LexerInterface!489 List!3275 BalanceConc!2064) Option!503)

(declare-fun seqFromList!583 (List!3274) BalanceConc!2064)

(assert (=> b!203474 (= res!93144 (not (isDefined!353 (maxPrefixZipperSequence!182 thiss!17480 rules!1920 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))))

(declare-fun lt!72937 () Unit!3280)

(assert (=> b!203474 (= lt!72937 (forallContained!170 tokens!465 lambda!6208 (h!8663 tokens!465)))))

(assert (=> b!203474 (= lt!72917 (originalCharacters!646 (h!8663 tokens!465)))))

(declare-fun b!203475 () Bool)

(declare-fun res!93143 () Bool)

(assert (=> b!203475 (=> (not res!93143) (not e!125074))))

(assert (=> b!203475 (= res!93143 ((_ is Cons!3266) tokens!465))))

(declare-fun b!203476 () Bool)

(declare-fun res!93149 () Bool)

(assert (=> b!203476 (=> res!93149 e!125091)))

(assert (=> b!203476 (= res!93149 (not (rulesProduceIndividualToken!238 thiss!17480 rules!1920 (h!8663 tokens!465))))))

(declare-fun b!203477 () Bool)

(declare-fun Unit!3282 () Unit!3280)

(assert (=> b!203477 (= e!125093 Unit!3282)))

(declare-fun lt!72933 () Unit!3280)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!2 (Regex!827 List!3274 C!2576) Unit!3280)

(assert (=> b!203477 (= lt!72933 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!2 (regex!603 (rule!1130 lt!72926)) lt!72899 lt!72901))))

(declare-fun res!93155 () Bool)

(assert (=> b!203477 (= res!93155 (not (matchR!165 (regex!603 (rule!1130 lt!72926)) lt!72899)))))

(declare-fun e!125084 () Bool)

(assert (=> b!203477 (=> (not res!93155) (not e!125084))))

(assert (=> b!203477 e!125084))

(declare-fun b!203478 () Bool)

(declare-fun isEmpty!1689 (BalanceConc!2064) Bool)

(assert (=> b!203478 (= e!125079 (isEmpty!1689 (_2!1916 lt!72919)))))

(declare-fun tp!90273 () Bool)

(declare-fun b!203479 () Bool)

(declare-fun e!125100 () Bool)

(declare-fun e!125077 () Bool)

(assert (=> b!203479 (= e!125100 (and (inv!21 (value!21501 (h!8663 tokens!465))) e!125077 tp!90273))))

(declare-fun b!203480 () Bool)

(assert (=> b!203480 (= e!125073 (isEmpty!1689 (_2!1916 lt!72914)))))

(declare-fun b!203481 () Bool)

(assert (=> b!203481 (= e!125084 false)))

(declare-fun b!203482 () Bool)

(declare-fun e!125089 () Bool)

(assert (=> b!203482 (= e!125089 e!125091)))

(declare-fun res!93158 () Bool)

(assert (=> b!203482 (=> res!93158 e!125091)))

(declare-fun lt!72911 () List!3274)

(declare-fun lt!72894 () List!3274)

(assert (=> b!203482 (= res!93158 (or (not (= lt!72894 lt!72911)) (not (= lt!72911 lt!72917)) (not (= lt!72894 lt!72917))))))

(declare-fun printList!173 (LexerInterface!489 List!3276) List!3274)

(assert (=> b!203482 (= lt!72911 (printList!173 thiss!17480 (Cons!3266 (h!8663 tokens!465) Nil!3266)))))

(declare-fun lt!72924 () BalanceConc!2064)

(assert (=> b!203482 (= lt!72894 (list!1213 lt!72924))))

(declare-fun lt!72921 () BalanceConc!2066)

(assert (=> b!203482 (= lt!72924 (printTailRec!183 thiss!17480 lt!72921 0 (BalanceConc!2065 Empty!1028)))))

(assert (=> b!203482 (= lt!72924 (print!220 thiss!17480 lt!72921))))

(assert (=> b!203482 (= lt!72921 (singletonSeq!155 (h!8663 tokens!465)))))

(declare-fun res!93156 () Bool)

(declare-fun e!125103 () Bool)

(assert (=> start!21866 (=> (not res!93156) (not e!125103))))

(assert (=> start!21866 (= res!93156 ((_ is Lexer!487) thiss!17480))))

(assert (=> start!21866 e!125103))

(assert (=> start!21866 true))

(declare-fun e!125081 () Bool)

(assert (=> start!21866 e!125081))

(declare-fun inv!4105 (Token!950) Bool)

(assert (=> start!21866 (and (inv!4105 separatorToken!170) e!125075)))

(declare-fun e!125085 () Bool)

(assert (=> start!21866 e!125085))

(declare-fun b!203468 () Bool)

(declare-fun res!93129 () Bool)

(assert (=> b!203468 (=> res!93129 e!125091)))

(declare-fun isEmpty!1690 (BalanceConc!2066) Bool)

(assert (=> b!203468 (= res!93129 (isEmpty!1690 (_1!1916 (lex!289 thiss!17480 rules!1920 (seqFromList!583 lt!72917)))))))

(declare-fun e!125094 () Bool)

(assert (=> b!203483 (= e!125094 (and tp!90274 tp!90277))))

(declare-fun b!203484 () Bool)

(assert (=> b!203484 (= e!125103 e!125074)))

(declare-fun res!93139 () Bool)

(assert (=> b!203484 (=> (not res!93139) (not e!125074))))

(declare-fun rulesProduceEachTokenIndividually!281 (LexerInterface!489 List!3275 BalanceConc!2066) Bool)

(assert (=> b!203484 (= res!93139 (rulesProduceEachTokenIndividually!281 thiss!17480 rules!1920 lt!72923))))

(declare-fun seqFromList!584 (List!3276) BalanceConc!2066)

(assert (=> b!203484 (= lt!72923 (seqFromList!584 tokens!465))))

(declare-fun res!93131 () Bool)

(assert (=> b!203485 (=> (not res!93131) (not e!125074))))

(declare-fun forall!703 (List!3276 Int) Bool)

(assert (=> b!203485 (= res!93131 (forall!703 tokens!465 lambda!6207))))

(declare-fun b!203486 () Bool)

(assert (=> b!203486 (= e!125086 e!125101)))

(declare-fun res!93130 () Bool)

(assert (=> b!203486 (=> (not res!93130) (not e!125101))))

(declare-fun isDefined!354 (Option!501) Bool)

(assert (=> b!203486 (= res!93130 (isDefined!354 lt!72915))))

(assert (=> b!203486 (= lt!72915 (maxPrefix!219 thiss!17480 rules!1920 lt!72904))))

(declare-fun b!203487 () Bool)

(declare-fun res!93134 () Bool)

(assert (=> b!203487 (=> (not res!93134) (not e!125078))))

(assert (=> b!203487 (= res!93134 (= (list!1213 (seqFromList!583 lt!72904)) lt!72929))))

(declare-fun b!203488 () Bool)

(assert (=> b!203488 (= e!125095 (= (rule!1130 lt!72926) lt!72934))))

(declare-fun b!203489 () Bool)

(declare-fun Unit!3283 () Unit!3280)

(assert (=> b!203489 (= e!125104 Unit!3283)))

(declare-fun e!125102 () Bool)

(assert (=> b!203490 (= e!125102 (and tp!90278 tp!90284))))

(declare-fun b!203491 () Bool)

(declare-fun Unit!3284 () Unit!3280)

(assert (=> b!203491 (= e!125093 Unit!3284)))

(declare-fun b!203492 () Bool)

(declare-fun res!93154 () Bool)

(assert (=> b!203492 (=> (not res!93154) (not e!125079))))

(declare-fun apply!526 (BalanceConc!2066 Int) Token!950)

(assert (=> b!203492 (= res!93154 (= (apply!526 (_1!1916 lt!72919) 0) lt!72926))))

(declare-fun b!203493 () Bool)

(declare-fun e!125105 () Bool)

(assert (=> b!203493 (= e!125105 (matchR!165 (regex!603 (rule!1130 (h!8663 tokens!465))) lt!72917))))

(declare-fun b!203494 () Bool)

(declare-fun res!93142 () Bool)

(assert (=> b!203494 (=> (not res!93142) (not e!125074))))

(assert (=> b!203494 (= res!93142 (isSeparator!603 (rule!1130 separatorToken!170)))))

(declare-fun b!203495 () Bool)

(declare-fun e!125080 () Bool)

(assert (=> b!203495 (= e!125080 e!125089)))

(declare-fun res!93132 () Bool)

(assert (=> b!203495 (=> res!93132 e!125089)))

(declare-fun e!125090 () Bool)

(assert (=> b!203495 (= res!93132 e!125090)))

(declare-fun res!93137 () Bool)

(assert (=> b!203495 (=> (not res!93137) (not e!125090))))

(declare-fun lt!72920 () Bool)

(assert (=> b!203495 (= res!93137 (not lt!72920))))

(assert (=> b!203495 (= lt!72920 (= lt!72904 lt!72930))))

(declare-fun e!125076 () Bool)

(assert (=> b!203496 (= e!125076 (and tp!90275 tp!90283))))

(declare-fun b!203497 () Bool)

(declare-fun res!93136 () Bool)

(assert (=> b!203497 (=> (not res!93136) (not e!125105))))

(declare-fun lt!72900 () tuple2!3398)

(declare-fun isEmpty!1691 (List!3274) Bool)

(assert (=> b!203497 (= res!93136 (isEmpty!1691 (_2!1915 lt!72900)))))

(declare-fun b!203498 () Bool)

(declare-fun tp!90280 () Bool)

(declare-fun inv!4102 (String!4205) Bool)

(declare-fun inv!4106 (TokenValueInjection!1022) Bool)

(assert (=> b!203498 (= e!125077 (and tp!90280 (inv!4102 (tag!787 (rule!1130 (h!8663 tokens!465)))) (inv!4106 (transformation!603 (rule!1130 (h!8663 tokens!465)))) e!125094))))

(declare-fun b!203499 () Bool)

(declare-fun res!93157 () Bool)

(assert (=> b!203499 (=> (not res!93157) (not e!125103))))

(declare-fun isEmpty!1692 (List!3275) Bool)

(assert (=> b!203499 (= res!93157 (not (isEmpty!1692 rules!1920)))))

(declare-fun b!203500 () Bool)

(declare-fun res!93152 () Bool)

(assert (=> b!203500 (=> (not res!93152) (not e!125073))))

(assert (=> b!203500 (= res!93152 (= (apply!526 (_1!1916 lt!72914) 0) separatorToken!170))))

(declare-fun b!203501 () Bool)

(declare-fun tp!90282 () Bool)

(assert (=> b!203501 (= e!125071 (and tp!90282 (inv!4102 (tag!787 (rule!1130 separatorToken!170))) (inv!4106 (transformation!603 (rule!1130 separatorToken!170))) e!125076))))

(declare-fun b!203502 () Bool)

(assert (=> b!203502 (= e!125083 e!125088)))

(declare-fun res!93128 () Bool)

(assert (=> b!203502 (=> res!93128 e!125088)))

(assert (=> b!203502 (= res!93128 (not lt!72920))))

(assert (=> b!203502 e!125105))

(declare-fun res!93148 () Bool)

(assert (=> b!203502 (=> (not res!93148) (not e!125105))))

(assert (=> b!203502 (= res!93148 (= (_1!1915 lt!72900) (h!8663 tokens!465)))))

(declare-fun lt!72896 () Option!501)

(assert (=> b!203502 (= lt!72900 (get!968 lt!72896))))

(assert (=> b!203502 (isDefined!354 lt!72896)))

(assert (=> b!203502 (= lt!72896 (maxPrefix!219 thiss!17480 rules!1920 lt!72917))))

(declare-fun b!203503 () Bool)

(declare-fun e!125092 () Bool)

(declare-fun tp!90281 () Bool)

(assert (=> b!203503 (= e!125081 (and e!125092 tp!90281))))

(declare-fun tp!90285 () Bool)

(declare-fun b!203504 () Bool)

(assert (=> b!203504 (= e!125092 (and tp!90285 (inv!4102 (tag!787 (h!8662 rules!1920))) (inv!4106 (transformation!603 (h!8662 rules!1920))) e!125102))))

(declare-fun b!203505 () Bool)

(declare-fun ++!796 (List!3274 List!3274) List!3274)

(assert (=> b!203505 (= e!125090 (not (= lt!72904 (++!796 lt!72917 lt!72928))))))

(declare-fun b!203506 () Bool)

(declare-fun Unit!3285 () Unit!3280)

(assert (=> b!203506 (= e!125104 Unit!3285)))

(assert (=> b!203506 false))

(declare-fun b!203507 () Bool)

(declare-fun res!93145 () Bool)

(assert (=> b!203507 (=> (not res!93145) (not e!125103))))

(declare-fun rulesInvariant!455 (LexerInterface!489 List!3275) Bool)

(assert (=> b!203507 (= res!93145 (rulesInvariant!455 thiss!17480 rules!1920))))

(declare-fun b!203508 () Bool)

(declare-fun e!125099 () Bool)

(assert (=> b!203508 (= e!125098 e!125099)))

(declare-fun res!93159 () Bool)

(assert (=> b!203508 (=> (not res!93159) (not e!125099))))

(declare-fun lt!72908 () Rule!1006)

(assert (=> b!203508 (= res!93159 (matchR!165 (regex!603 lt!72908) lt!72912))))

(assert (=> b!203508 (= lt!72908 (get!969 lt!72931))))

(declare-fun b!203509 () Bool)

(assert (=> b!203509 (= e!125099 (= (rule!1130 separatorToken!170) lt!72908))))

(declare-fun b!203510 () Bool)

(assert (=> b!203510 (= e!125078 (not e!125080))))

(declare-fun res!93140 () Bool)

(assert (=> b!203510 (=> res!93140 e!125080)))

(assert (=> b!203510 (= res!93140 (not (= lt!72928 (list!1213 (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 (seqFromList!584 (t!30808 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!72918 () List!3274)

(assert (=> b!203510 (= lt!72918 lt!72930)))

(assert (=> b!203510 (= lt!72930 (++!796 lt!72917 lt!72932))))

(assert (=> b!203510 (= lt!72918 (++!796 (++!796 lt!72917 lt!72912) lt!72928))))

(declare-fun lt!72903 () Unit!3280)

(declare-fun lemmaConcatAssociativity!298 (List!3274 List!3274 List!3274) Unit!3280)

(assert (=> b!203510 (= lt!72903 (lemmaConcatAssociativity!298 lt!72917 lt!72912 lt!72928))))

(assert (=> b!203510 (= lt!72917 (list!1213 (charsOf!258 (h!8663 tokens!465))))))

(assert (=> b!203510 (= lt!72932 (++!796 lt!72912 lt!72928))))

(assert (=> b!203510 (= lt!72928 (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 (t!30808 tokens!465) separatorToken!170))))

(assert (=> b!203510 (= lt!72912 (list!1213 (charsOf!258 separatorToken!170)))))

(declare-fun b!203511 () Bool)

(declare-fun tp!90279 () Bool)

(assert (=> b!203511 (= e!125085 (and (inv!4105 (h!8663 tokens!465)) e!125100 tp!90279))))

(declare-fun b!203512 () Bool)

(declare-fun res!93150 () Bool)

(assert (=> b!203512 (=> (not res!93150) (not e!125074))))

(assert (=> b!203512 (= res!93150 (rulesProduceIndividualToken!238 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!203513 () Bool)

(declare-fun res!93135 () Bool)

(assert (=> b!203513 (=> (not res!93135) (not e!125074))))

(declare-fun sepAndNonSepRulesDisjointChars!192 (List!3275 List!3275) Bool)

(assert (=> b!203513 (= res!93135 (sepAndNonSepRulesDisjointChars!192 rules!1920 rules!1920))))

(assert (= (and start!21866 res!93156) b!203499))

(assert (= (and b!203499 res!93157) b!203507))

(assert (= (and b!203507 res!93145) b!203484))

(assert (= (and b!203484 res!93139) b!203512))

(assert (= (and b!203512 res!93150) b!203494))

(assert (= (and b!203494 res!93142) b!203485))

(assert (= (and b!203485 res!93131) b!203513))

(assert (= (and b!203513 res!93135) b!203475))

(assert (= (and b!203475 res!93143) b!203469))

(assert (= (and b!203469 res!93151) b!203487))

(assert (= (and b!203487 res!93134) b!203510))

(assert (= (and b!203510 (not res!93140)) b!203495))

(assert (= (and b!203495 res!93137) b!203505))

(assert (= (and b!203495 (not res!93132)) b!203482))

(assert (= (and b!203482 (not res!93158)) b!203476))

(assert (= (and b!203476 (not res!93149)) b!203468))

(assert (= (and b!203468 (not res!93129)) b!203474))

(assert (= (and b!203474 (not res!93144)) b!203502))

(assert (= (and b!203502 res!93148) b!203497))

(assert (= (and b!203497 res!93136) b!203493))

(assert (= (and b!203502 (not res!93128)) b!203472))

(assert (= (and b!203472 (not res!93146)) b!203486))

(assert (= (and b!203486 res!93130) b!203471))

(assert (= (and b!203472 c!39071) b!203506))

(assert (= (and b!203472 (not c!39071)) b!203489))

(assert (= (and b!203472 res!93138) b!203500))

(assert (= (and b!203500 res!93152) b!203480))

(assert (= (and b!203472 res!93147) b!203508))

(assert (= (and b!203508 res!93159) b!203509))

(assert (= (and b!203472 res!93133) b!203492))

(assert (= (and b!203492 res!93154) b!203478))

(assert (= (and b!203472 res!93141) b!203473))

(assert (= (and b!203473 res!93153) b!203488))

(assert (= (and b!203472 c!39072) b!203477))

(assert (= (and b!203472 (not c!39072)) b!203491))

(assert (= (and b!203477 res!93155) b!203481))

(assert (= b!203504 b!203490))

(assert (= b!203503 b!203504))

(assert (= (and start!21866 ((_ is Cons!3265) rules!1920)) b!203503))

(assert (= b!203501 b!203496))

(assert (= b!203470 b!203501))

(assert (= start!21866 b!203470))

(assert (= b!203498 b!203483))

(assert (= b!203479 b!203498))

(assert (= b!203511 b!203479))

(assert (= (and start!21866 ((_ is Cons!3266) tokens!465)) b!203511))

(declare-fun m!223103 () Bool)

(assert (=> b!203502 m!223103))

(declare-fun m!223105 () Bool)

(assert (=> b!203502 m!223105))

(declare-fun m!223107 () Bool)

(assert (=> b!203502 m!223107))

(declare-fun m!223109 () Bool)

(assert (=> b!203512 m!223109))

(declare-fun m!223111 () Bool)

(assert (=> b!203501 m!223111))

(declare-fun m!223113 () Bool)

(assert (=> b!203501 m!223113))

(declare-fun m!223115 () Bool)

(assert (=> b!203497 m!223115))

(declare-fun m!223117 () Bool)

(assert (=> b!203482 m!223117))

(declare-fun m!223119 () Bool)

(assert (=> b!203482 m!223119))

(declare-fun m!223121 () Bool)

(assert (=> b!203482 m!223121))

(declare-fun m!223123 () Bool)

(assert (=> b!203482 m!223123))

(declare-fun m!223125 () Bool)

(assert (=> b!203482 m!223125))

(declare-fun m!223127 () Bool)

(assert (=> b!203476 m!223127))

(declare-fun m!223129 () Bool)

(assert (=> b!203510 m!223129))

(declare-fun m!223131 () Bool)

(assert (=> b!203510 m!223131))

(declare-fun m!223133 () Bool)

(assert (=> b!203510 m!223133))

(declare-fun m!223135 () Bool)

(assert (=> b!203510 m!223135))

(declare-fun m!223137 () Bool)

(assert (=> b!203510 m!223137))

(declare-fun m!223139 () Bool)

(assert (=> b!203510 m!223139))

(declare-fun m!223141 () Bool)

(assert (=> b!203510 m!223141))

(assert (=> b!203510 m!223133))

(declare-fun m!223143 () Bool)

(assert (=> b!203510 m!223143))

(assert (=> b!203510 m!223139))

(declare-fun m!223145 () Bool)

(assert (=> b!203510 m!223145))

(assert (=> b!203510 m!223129))

(declare-fun m!223147 () Bool)

(assert (=> b!203510 m!223147))

(declare-fun m!223149 () Bool)

(assert (=> b!203510 m!223149))

(assert (=> b!203510 m!223149))

(declare-fun m!223151 () Bool)

(assert (=> b!203510 m!223151))

(assert (=> b!203510 m!223147))

(declare-fun m!223153 () Bool)

(assert (=> b!203510 m!223153))

(declare-fun m!223155 () Bool)

(assert (=> b!203477 m!223155))

(declare-fun m!223157 () Bool)

(assert (=> b!203477 m!223157))

(declare-fun m!223159 () Bool)

(assert (=> b!203469 m!223159))

(assert (=> b!203469 m!223159))

(declare-fun m!223161 () Bool)

(assert (=> b!203469 m!223161))

(declare-fun m!223163 () Bool)

(assert (=> b!203469 m!223163))

(declare-fun m!223165 () Bool)

(assert (=> b!203486 m!223165))

(declare-fun m!223167 () Bool)

(assert (=> b!203486 m!223167))

(declare-fun m!223169 () Bool)

(assert (=> b!203498 m!223169))

(declare-fun m!223171 () Bool)

(assert (=> b!203498 m!223171))

(declare-fun m!223173 () Bool)

(assert (=> b!203468 m!223173))

(assert (=> b!203468 m!223173))

(declare-fun m!223175 () Bool)

(assert (=> b!203468 m!223175))

(declare-fun m!223177 () Bool)

(assert (=> b!203468 m!223177))

(declare-fun m!223179 () Bool)

(assert (=> b!203484 m!223179))

(declare-fun m!223181 () Bool)

(assert (=> b!203484 m!223181))

(declare-fun m!223183 () Bool)

(assert (=> b!203504 m!223183))

(declare-fun m!223185 () Bool)

(assert (=> b!203504 m!223185))

(declare-fun m!223187 () Bool)

(assert (=> b!203507 m!223187))

(declare-fun m!223189 () Bool)

(assert (=> b!203474 m!223189))

(assert (=> b!203474 m!223189))

(declare-fun m!223191 () Bool)

(assert (=> b!203474 m!223191))

(assert (=> b!203474 m!223191))

(declare-fun m!223193 () Bool)

(assert (=> b!203474 m!223193))

(declare-fun m!223195 () Bool)

(assert (=> b!203474 m!223195))

(declare-fun m!223197 () Bool)

(assert (=> b!203500 m!223197))

(declare-fun m!223199 () Bool)

(assert (=> b!203470 m!223199))

(declare-fun m!223201 () Bool)

(assert (=> b!203480 m!223201))

(declare-fun m!223203 () Bool)

(assert (=> b!203493 m!223203))

(declare-fun m!223205 () Bool)

(assert (=> b!203473 m!223205))

(declare-fun m!223207 () Bool)

(assert (=> b!203473 m!223207))

(declare-fun m!223209 () Bool)

(assert (=> b!203487 m!223209))

(assert (=> b!203487 m!223209))

(declare-fun m!223211 () Bool)

(assert (=> b!203487 m!223211))

(declare-fun m!223213 () Bool)

(assert (=> b!203472 m!223213))

(declare-fun m!223215 () Bool)

(assert (=> b!203472 m!223215))

(declare-fun m!223217 () Bool)

(assert (=> b!203472 m!223217))

(declare-fun m!223219 () Bool)

(assert (=> b!203472 m!223219))

(declare-fun m!223221 () Bool)

(assert (=> b!203472 m!223221))

(declare-fun m!223223 () Bool)

(assert (=> b!203472 m!223223))

(declare-fun m!223225 () Bool)

(assert (=> b!203472 m!223225))

(declare-fun m!223227 () Bool)

(assert (=> b!203472 m!223227))

(assert (=> b!203472 m!223167))

(assert (=> b!203472 m!223221))

(declare-fun m!223229 () Bool)

(assert (=> b!203472 m!223229))

(declare-fun m!223231 () Bool)

(assert (=> b!203472 m!223231))

(declare-fun m!223233 () Bool)

(assert (=> b!203472 m!223233))

(declare-fun m!223235 () Bool)

(assert (=> b!203472 m!223235))

(declare-fun m!223237 () Bool)

(assert (=> b!203472 m!223237))

(declare-fun m!223239 () Bool)

(assert (=> b!203472 m!223239))

(declare-fun m!223241 () Bool)

(assert (=> b!203472 m!223241))

(declare-fun m!223243 () Bool)

(assert (=> b!203472 m!223243))

(declare-fun m!223245 () Bool)

(assert (=> b!203472 m!223245))

(declare-fun m!223247 () Bool)

(assert (=> b!203472 m!223247))

(assert (=> b!203472 m!223167))

(declare-fun m!223249 () Bool)

(assert (=> b!203472 m!223249))

(declare-fun m!223251 () Bool)

(assert (=> b!203472 m!223251))

(declare-fun m!223253 () Bool)

(assert (=> b!203472 m!223253))

(declare-fun m!223255 () Bool)

(assert (=> b!203472 m!223255))

(declare-fun m!223257 () Bool)

(assert (=> b!203472 m!223257))

(declare-fun m!223259 () Bool)

(assert (=> b!203472 m!223259))

(declare-fun m!223261 () Bool)

(assert (=> b!203472 m!223261))

(declare-fun m!223263 () Bool)

(assert (=> b!203472 m!223263))

(declare-fun m!223265 () Bool)

(assert (=> b!203472 m!223265))

(declare-fun m!223267 () Bool)

(assert (=> b!203472 m!223267))

(declare-fun m!223269 () Bool)

(assert (=> b!203472 m!223269))

(declare-fun m!223271 () Bool)

(assert (=> b!203472 m!223271))

(declare-fun m!223273 () Bool)

(assert (=> b!203472 m!223273))

(assert (=> b!203472 m!223215))

(declare-fun m!223275 () Bool)

(assert (=> b!203472 m!223275))

(declare-fun m!223277 () Bool)

(assert (=> b!203472 m!223277))

(declare-fun m!223279 () Bool)

(assert (=> b!203472 m!223279))

(declare-fun m!223281 () Bool)

(assert (=> b!203513 m!223281))

(declare-fun m!223283 () Bool)

(assert (=> b!203511 m!223283))

(declare-fun m!223285 () Bool)

(assert (=> b!203499 m!223285))

(declare-fun m!223287 () Bool)

(assert (=> b!203478 m!223287))

(declare-fun m!223289 () Bool)

(assert (=> b!203508 m!223289))

(declare-fun m!223291 () Bool)

(assert (=> b!203508 m!223291))

(declare-fun m!223293 () Bool)

(assert (=> start!21866 m!223293))

(declare-fun m!223295 () Bool)

(assert (=> b!203505 m!223295))

(declare-fun m!223297 () Bool)

(assert (=> b!203485 m!223297))

(declare-fun m!223299 () Bool)

(assert (=> b!203479 m!223299))

(declare-fun m!223301 () Bool)

(assert (=> b!203492 m!223301))

(declare-fun m!223303 () Bool)

(assert (=> b!203471 m!223303))

(declare-fun m!223305 () Bool)

(assert (=> b!203471 m!223305))

(check-sat b_and!14711 (not b!203502) (not b!203504) (not b!203474) (not b_next!7857) (not b!203468) (not b!203484) (not b_next!7863) (not b!203473) (not b!203512) (not b!203480) b_and!14715 b_and!14709 b_and!14713 (not b!203472) (not b!203493) (not start!21866) (not b_next!7859) (not b!203478) (not b!203477) (not b!203498) (not b!203507) (not b!203476) b_and!14719 (not b!203482) (not b!203510) (not b!203499) (not b!203503) (not b!203500) (not b!203513) (not b_next!7865) b_and!14717 (not b!203486) (not b!203487) (not b!203485) (not b!203479) (not b!203522) (not b!203505) (not b!203470) (not b!203469) (not b!203501) (not b_next!7861) (not b!203497) (not b!203511) (not b_next!7867) (not b!203471) (not b!203508) (not b!203492))
(check-sat b_and!14711 (not b_next!7859) b_and!14719 (not b_next!7865) (not b_next!7857) b_and!14717 (not b_next!7863) (not b_next!7861) (not b_next!7867) b_and!14715 b_and!14709 b_and!14713)
(get-model)

(declare-fun d!53753 () Bool)

(declare-fun list!1216 (Conc!1028) List!3274)

(assert (=> d!53753 (= (list!1213 lt!72924) (list!1216 (c!39073 lt!72924)))))

(declare-fun bs!20736 () Bool)

(assert (= bs!20736 d!53753))

(declare-fun m!223309 () Bool)

(assert (=> bs!20736 m!223309))

(assert (=> b!203482 d!53753))

(declare-fun d!53755 () Bool)

(declare-fun lt!72953 () BalanceConc!2064)

(declare-fun printListTailRec!83 (LexerInterface!489 List!3276 List!3274) List!3274)

(declare-fun dropList!116 (BalanceConc!2066 Int) List!3276)

(assert (=> d!53755 (= (list!1213 lt!72953) (printListTailRec!83 thiss!17480 (dropList!116 lt!72921 0) (list!1213 (BalanceConc!2065 Empty!1028))))))

(declare-fun e!125121 () BalanceConc!2064)

(assert (=> d!53755 (= lt!72953 e!125121)))

(declare-fun c!39078 () Bool)

(assert (=> d!53755 (= c!39078 (>= 0 (size!2613 lt!72921)))))

(declare-fun e!125120 () Bool)

(assert (=> d!53755 e!125120))

(declare-fun res!93177 () Bool)

(assert (=> d!53755 (=> (not res!93177) (not e!125120))))

(assert (=> d!53755 (= res!93177 (>= 0 0))))

(assert (=> d!53755 (= (printTailRec!183 thiss!17480 lt!72921 0 (BalanceConc!2065 Empty!1028)) lt!72953)))

(declare-fun b!203533 () Bool)

(assert (=> b!203533 (= e!125120 (<= 0 (size!2613 lt!72921)))))

(declare-fun b!203534 () Bool)

(assert (=> b!203534 (= e!125121 (BalanceConc!2065 Empty!1028))))

(declare-fun b!203535 () Bool)

(declare-fun ++!798 (BalanceConc!2064 BalanceConc!2064) BalanceConc!2064)

(assert (=> b!203535 (= e!125121 (printTailRec!183 thiss!17480 lt!72921 (+ 0 1) (++!798 (BalanceConc!2065 Empty!1028) (charsOf!258 (apply!526 lt!72921 0)))))))

(declare-fun lt!72958 () List!3276)

(declare-fun list!1217 (BalanceConc!2066) List!3276)

(assert (=> b!203535 (= lt!72958 (list!1217 lt!72921))))

(declare-fun lt!72954 () Unit!3280)

(declare-fun lemmaDropApply!156 (List!3276 Int) Unit!3280)

(assert (=> b!203535 (= lt!72954 (lemmaDropApply!156 lt!72958 0))))

(declare-fun drop!169 (List!3276 Int) List!3276)

(declare-fun apply!528 (List!3276 Int) Token!950)

(assert (=> b!203535 (= (head!701 (drop!169 lt!72958 0)) (apply!528 lt!72958 0))))

(declare-fun lt!72955 () Unit!3280)

(assert (=> b!203535 (= lt!72955 lt!72954)))

(declare-fun lt!72957 () List!3276)

(assert (=> b!203535 (= lt!72957 (list!1217 lt!72921))))

(declare-fun lt!72956 () Unit!3280)

(declare-fun lemmaDropTail!148 (List!3276 Int) Unit!3280)

(assert (=> b!203535 (= lt!72956 (lemmaDropTail!148 lt!72957 0))))

(declare-fun tail!396 (List!3276) List!3276)

(assert (=> b!203535 (= (tail!396 (drop!169 lt!72957 0)) (drop!169 lt!72957 (+ 0 1)))))

(declare-fun lt!72959 () Unit!3280)

(assert (=> b!203535 (= lt!72959 lt!72956)))

(assert (= (and d!53755 res!93177) b!203533))

(assert (= (and d!53755 c!39078) b!203534))

(assert (= (and d!53755 (not c!39078)) b!203535))

(declare-fun m!223311 () Bool)

(assert (=> d!53755 m!223311))

(declare-fun m!223313 () Bool)

(assert (=> d!53755 m!223313))

(declare-fun m!223315 () Bool)

(assert (=> d!53755 m!223315))

(declare-fun m!223317 () Bool)

(assert (=> d!53755 m!223317))

(assert (=> d!53755 m!223315))

(declare-fun m!223319 () Bool)

(assert (=> d!53755 m!223319))

(assert (=> d!53755 m!223317))

(assert (=> b!203533 m!223313))

(declare-fun m!223321 () Bool)

(assert (=> b!203535 m!223321))

(declare-fun m!223323 () Bool)

(assert (=> b!203535 m!223323))

(declare-fun m!223325 () Bool)

(assert (=> b!203535 m!223325))

(declare-fun m!223327 () Bool)

(assert (=> b!203535 m!223327))

(declare-fun m!223329 () Bool)

(assert (=> b!203535 m!223329))

(declare-fun m!223331 () Bool)

(assert (=> b!203535 m!223331))

(declare-fun m!223333 () Bool)

(assert (=> b!203535 m!223333))

(assert (=> b!203535 m!223325))

(declare-fun m!223335 () Bool)

(assert (=> b!203535 m!223335))

(assert (=> b!203535 m!223321))

(declare-fun m!223337 () Bool)

(assert (=> b!203535 m!223337))

(declare-fun m!223339 () Bool)

(assert (=> b!203535 m!223339))

(declare-fun m!223341 () Bool)

(assert (=> b!203535 m!223341))

(declare-fun m!223343 () Bool)

(assert (=> b!203535 m!223343))

(assert (=> b!203535 m!223337))

(assert (=> b!203535 m!223339))

(assert (=> b!203535 m!223327))

(declare-fun m!223345 () Bool)

(assert (=> b!203535 m!223345))

(assert (=> b!203482 d!53755))

(declare-fun d!53757 () Bool)

(declare-fun lt!72962 () BalanceConc!2064)

(assert (=> d!53757 (= (list!1213 lt!72962) (printList!173 thiss!17480 (list!1217 lt!72921)))))

(assert (=> d!53757 (= lt!72962 (printTailRec!183 thiss!17480 lt!72921 0 (BalanceConc!2065 Empty!1028)))))

(assert (=> d!53757 (= (print!220 thiss!17480 lt!72921) lt!72962)))

(declare-fun bs!20737 () Bool)

(assert (= bs!20737 d!53757))

(declare-fun m!223347 () Bool)

(assert (=> bs!20737 m!223347))

(assert (=> bs!20737 m!223331))

(assert (=> bs!20737 m!223331))

(declare-fun m!223349 () Bool)

(assert (=> bs!20737 m!223349))

(assert (=> bs!20737 m!223123))

(assert (=> b!203482 d!53757))

(declare-fun d!53759 () Bool)

(declare-fun e!125124 () Bool)

(assert (=> d!53759 e!125124))

(declare-fun res!93180 () Bool)

(assert (=> d!53759 (=> (not res!93180) (not e!125124))))

(declare-fun lt!72965 () BalanceConc!2066)

(assert (=> d!53759 (= res!93180 (= (list!1217 lt!72965) (Cons!3266 (h!8663 tokens!465) Nil!3266)))))

(declare-fun singleton!64 (Token!950) BalanceConc!2066)

(assert (=> d!53759 (= lt!72965 (singleton!64 (h!8663 tokens!465)))))

(assert (=> d!53759 (= (singletonSeq!155 (h!8663 tokens!465)) lt!72965)))

(declare-fun b!203538 () Bool)

(declare-fun isBalanced!275 (Conc!1029) Bool)

(assert (=> b!203538 (= e!125124 (isBalanced!275 (c!39075 lt!72965)))))

(assert (= (and d!53759 res!93180) b!203538))

(declare-fun m!223351 () Bool)

(assert (=> d!53759 m!223351))

(declare-fun m!223353 () Bool)

(assert (=> d!53759 m!223353))

(declare-fun m!223355 () Bool)

(assert (=> b!203538 m!223355))

(assert (=> b!203482 d!53759))

(declare-fun d!53761 () Bool)

(declare-fun c!39081 () Bool)

(assert (=> d!53761 (= c!39081 ((_ is Cons!3266) (Cons!3266 (h!8663 tokens!465) Nil!3266)))))

(declare-fun e!125127 () List!3274)

(assert (=> d!53761 (= (printList!173 thiss!17480 (Cons!3266 (h!8663 tokens!465) Nil!3266)) e!125127)))

(declare-fun b!203543 () Bool)

(assert (=> b!203543 (= e!125127 (++!796 (list!1213 (charsOf!258 (h!8663 (Cons!3266 (h!8663 tokens!465) Nil!3266)))) (printList!173 thiss!17480 (t!30808 (Cons!3266 (h!8663 tokens!465) Nil!3266)))))))

(declare-fun b!203544 () Bool)

(assert (=> b!203544 (= e!125127 Nil!3264)))

(assert (= (and d!53761 c!39081) b!203543))

(assert (= (and d!53761 (not c!39081)) b!203544))

(declare-fun m!223357 () Bool)

(assert (=> b!203543 m!223357))

(assert (=> b!203543 m!223357))

(declare-fun m!223359 () Bool)

(assert (=> b!203543 m!223359))

(declare-fun m!223361 () Bool)

(assert (=> b!203543 m!223361))

(assert (=> b!203543 m!223359))

(assert (=> b!203543 m!223361))

(declare-fun m!223363 () Bool)

(assert (=> b!203543 m!223363))

(assert (=> b!203482 d!53761))

(declare-fun d!53763 () Bool)

(assert (=> d!53763 (= (inv!4102 (tag!787 (h!8662 rules!1920))) (= (mod (str.len (value!21500 (tag!787 (h!8662 rules!1920)))) 2) 0))))

(assert (=> b!203504 d!53763))

(declare-fun d!53765 () Bool)

(declare-fun res!93183 () Bool)

(declare-fun e!125130 () Bool)

(assert (=> d!53765 (=> (not res!93183) (not e!125130))))

(declare-fun semiInverseModEq!206 (Int Int) Bool)

(assert (=> d!53765 (= res!93183 (semiInverseModEq!206 (toChars!1145 (transformation!603 (h!8662 rules!1920))) (toValue!1286 (transformation!603 (h!8662 rules!1920)))))))

(assert (=> d!53765 (= (inv!4106 (transformation!603 (h!8662 rules!1920))) e!125130)))

(declare-fun b!203547 () Bool)

(declare-fun equivClasses!189 (Int Int) Bool)

(assert (=> b!203547 (= e!125130 (equivClasses!189 (toChars!1145 (transformation!603 (h!8662 rules!1920))) (toValue!1286 (transformation!603 (h!8662 rules!1920)))))))

(assert (= (and d!53765 res!93183) b!203547))

(declare-fun m!223365 () Bool)

(assert (=> d!53765 m!223365))

(declare-fun m!223367 () Bool)

(assert (=> b!203547 m!223367))

(assert (=> b!203504 d!53765))

(declare-fun d!53767 () Bool)

(assert (=> d!53767 (= (get!968 lt!72896) (v!14043 lt!72896))))

(assert (=> b!203502 d!53767))

(declare-fun d!53769 () Bool)

(declare-fun isEmpty!1693 (Option!501) Bool)

(assert (=> d!53769 (= (isDefined!354 lt!72896) (not (isEmpty!1693 lt!72896)))))

(declare-fun bs!20738 () Bool)

(assert (= bs!20738 d!53769))

(declare-fun m!223369 () Bool)

(assert (=> bs!20738 m!223369))

(assert (=> b!203502 d!53769))

(declare-fun b!203602 () Bool)

(declare-fun res!93210 () Bool)

(declare-fun e!125161 () Bool)

(assert (=> b!203602 (=> (not res!93210) (not e!125161))))

(declare-fun lt!73022 () Option!501)

(declare-fun apply!529 (TokenValueInjection!1022 BalanceConc!2064) TokenValue!625)

(assert (=> b!203602 (= res!93210 (= (value!21501 (_1!1915 (get!968 lt!73022))) (apply!529 (transformation!603 (rule!1130 (_1!1915 (get!968 lt!73022)))) (seqFromList!583 (originalCharacters!646 (_1!1915 (get!968 lt!73022)))))))))

(declare-fun d!53771 () Bool)

(declare-fun e!125162 () Bool)

(assert (=> d!53771 e!125162))

(declare-fun res!93211 () Bool)

(assert (=> d!53771 (=> res!93211 e!125162)))

(assert (=> d!53771 (= res!93211 (isEmpty!1693 lt!73022))))

(declare-fun e!125163 () Option!501)

(assert (=> d!53771 (= lt!73022 e!125163)))

(declare-fun c!39096 () Bool)

(assert (=> d!53771 (= c!39096 (and ((_ is Cons!3265) rules!1920) ((_ is Nil!3265) (t!30807 rules!1920))))))

(declare-fun lt!73019 () Unit!3280)

(declare-fun lt!73018 () Unit!3280)

(assert (=> d!53771 (= lt!73019 lt!73018)))

(assert (=> d!53771 (isPrefix!299 lt!72917 lt!72917)))

(declare-fun lemmaIsPrefixRefl!164 (List!3274 List!3274) Unit!3280)

(assert (=> d!53771 (= lt!73018 (lemmaIsPrefixRefl!164 lt!72917 lt!72917))))

(declare-fun rulesValidInductive!153 (LexerInterface!489 List!3275) Bool)

(assert (=> d!53771 (rulesValidInductive!153 thiss!17480 rules!1920)))

(assert (=> d!53771 (= (maxPrefix!219 thiss!17480 rules!1920 lt!72917) lt!73022)))

(declare-fun b!203603 () Bool)

(declare-fun contains!537 (List!3275 Rule!1006) Bool)

(assert (=> b!203603 (= e!125161 (contains!537 rules!1920 (rule!1130 (_1!1915 (get!968 lt!73022)))))))

(declare-fun b!203604 () Bool)

(declare-fun call!9754 () Option!501)

(assert (=> b!203604 (= e!125163 call!9754)))

(declare-fun b!203605 () Bool)

(declare-fun res!93208 () Bool)

(assert (=> b!203605 (=> (not res!93208) (not e!125161))))

(assert (=> b!203605 (= res!93208 (= (++!796 (list!1213 (charsOf!258 (_1!1915 (get!968 lt!73022)))) (_2!1915 (get!968 lt!73022))) lt!72917))))

(declare-fun b!203606 () Bool)

(assert (=> b!203606 (= e!125162 e!125161)))

(declare-fun res!93207 () Bool)

(assert (=> b!203606 (=> (not res!93207) (not e!125161))))

(assert (=> b!203606 (= res!93207 (isDefined!354 lt!73022))))

(declare-fun b!203607 () Bool)

(declare-fun res!93213 () Bool)

(assert (=> b!203607 (=> (not res!93213) (not e!125161))))

(assert (=> b!203607 (= res!93213 (= (list!1213 (charsOf!258 (_1!1915 (get!968 lt!73022)))) (originalCharacters!646 (_1!1915 (get!968 lt!73022)))))))

(declare-fun bm!9749 () Bool)

(declare-fun maxPrefixOneRule!98 (LexerInterface!489 Rule!1006 List!3274) Option!501)

(assert (=> bm!9749 (= call!9754 (maxPrefixOneRule!98 thiss!17480 (h!8662 rules!1920) lt!72917))))

(declare-fun b!203608 () Bool)

(declare-fun res!93209 () Bool)

(assert (=> b!203608 (=> (not res!93209) (not e!125161))))

(assert (=> b!203608 (= res!93209 (matchR!165 (regex!603 (rule!1130 (_1!1915 (get!968 lt!73022)))) (list!1213 (charsOf!258 (_1!1915 (get!968 lt!73022))))))))

(declare-fun b!203609 () Bool)

(declare-fun res!93212 () Bool)

(assert (=> b!203609 (=> (not res!93212) (not e!125161))))

(declare-fun size!2614 (List!3274) Int)

(assert (=> b!203609 (= res!93212 (< (size!2614 (_2!1915 (get!968 lt!73022))) (size!2614 lt!72917)))))

(declare-fun b!203610 () Bool)

(declare-fun lt!73020 () Option!501)

(declare-fun lt!73021 () Option!501)

(assert (=> b!203610 (= e!125163 (ite (and ((_ is None!500) lt!73020) ((_ is None!500) lt!73021)) None!500 (ite ((_ is None!500) lt!73021) lt!73020 (ite ((_ is None!500) lt!73020) lt!73021 (ite (>= (size!2612 (_1!1915 (v!14043 lt!73020))) (size!2612 (_1!1915 (v!14043 lt!73021)))) lt!73020 lt!73021)))))))

(assert (=> b!203610 (= lt!73020 call!9754)))

(assert (=> b!203610 (= lt!73021 (maxPrefix!219 thiss!17480 (t!30807 rules!1920) lt!72917))))

(assert (= (and d!53771 c!39096) b!203604))

(assert (= (and d!53771 (not c!39096)) b!203610))

(assert (= (or b!203604 b!203610) bm!9749))

(assert (= (and d!53771 (not res!93211)) b!203606))

(assert (= (and b!203606 res!93207) b!203607))

(assert (= (and b!203607 res!93213) b!203609))

(assert (= (and b!203609 res!93212) b!203605))

(assert (= (and b!203605 res!93208) b!203602))

(assert (= (and b!203602 res!93210) b!203608))

(assert (= (and b!203608 res!93209) b!203603))

(declare-fun m!223431 () Bool)

(assert (=> b!203605 m!223431))

(declare-fun m!223433 () Bool)

(assert (=> b!203605 m!223433))

(assert (=> b!203605 m!223433))

(declare-fun m!223435 () Bool)

(assert (=> b!203605 m!223435))

(assert (=> b!203605 m!223435))

(declare-fun m!223437 () Bool)

(assert (=> b!203605 m!223437))

(declare-fun m!223439 () Bool)

(assert (=> b!203610 m!223439))

(assert (=> b!203608 m!223431))

(assert (=> b!203608 m!223433))

(assert (=> b!203608 m!223433))

(assert (=> b!203608 m!223435))

(assert (=> b!203608 m!223435))

(declare-fun m!223441 () Bool)

(assert (=> b!203608 m!223441))

(declare-fun m!223443 () Bool)

(assert (=> b!203606 m!223443))

(assert (=> b!203602 m!223431))

(declare-fun m!223445 () Bool)

(assert (=> b!203602 m!223445))

(assert (=> b!203602 m!223445))

(declare-fun m!223447 () Bool)

(assert (=> b!203602 m!223447))

(assert (=> b!203603 m!223431))

(declare-fun m!223449 () Bool)

(assert (=> b!203603 m!223449))

(assert (=> b!203607 m!223431))

(assert (=> b!203607 m!223433))

(assert (=> b!203607 m!223433))

(assert (=> b!203607 m!223435))

(assert (=> b!203609 m!223431))

(declare-fun m!223451 () Bool)

(assert (=> b!203609 m!223451))

(declare-fun m!223453 () Bool)

(assert (=> b!203609 m!223453))

(declare-fun m!223455 () Bool)

(assert (=> bm!9749 m!223455))

(declare-fun m!223457 () Bool)

(assert (=> d!53771 m!223457))

(declare-fun m!223459 () Bool)

(assert (=> d!53771 m!223459))

(declare-fun m!223461 () Bool)

(assert (=> d!53771 m!223461))

(declare-fun m!223463 () Bool)

(assert (=> d!53771 m!223463))

(assert (=> b!203502 d!53771))

(declare-fun d!53775 () Bool)

(declare-fun res!93218 () Bool)

(declare-fun e!125168 () Bool)

(assert (=> d!53775 (=> res!93218 e!125168)))

(assert (=> d!53775 (= res!93218 ((_ is Nil!3266) tokens!465))))

(assert (=> d!53775 (= (forall!703 tokens!465 lambda!6207) e!125168)))

(declare-fun b!203615 () Bool)

(declare-fun e!125169 () Bool)

(assert (=> b!203615 (= e!125168 e!125169)))

(declare-fun res!93219 () Bool)

(assert (=> b!203615 (=> (not res!93219) (not e!125169))))

(declare-fun dynLambda!1432 (Int Token!950) Bool)

(assert (=> b!203615 (= res!93219 (dynLambda!1432 lambda!6207 (h!8663 tokens!465)))))

(declare-fun b!203616 () Bool)

(assert (=> b!203616 (= e!125169 (forall!703 (t!30808 tokens!465) lambda!6207))))

(assert (= (and d!53775 (not res!93218)) b!203615))

(assert (= (and b!203615 res!93219) b!203616))

(declare-fun b_lambda!5239 () Bool)

(assert (=> (not b_lambda!5239) (not b!203615)))

(declare-fun m!223465 () Bool)

(assert (=> b!203615 m!223465))

(declare-fun m!223467 () Bool)

(assert (=> b!203616 m!223467))

(assert (=> b!203485 d!53775))

(declare-fun d!53777 () Bool)

(declare-fun e!125175 () Bool)

(assert (=> d!53777 e!125175))

(declare-fun res!93225 () Bool)

(assert (=> d!53777 (=> (not res!93225) (not e!125175))))

(declare-fun lt!73025 () List!3274)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!446 (List!3274) (InoxSet C!2576))

(assert (=> d!53777 (= res!93225 (= (content!446 lt!73025) ((_ map or) (content!446 lt!72917) (content!446 lt!72928))))))

(declare-fun e!125174 () List!3274)

(assert (=> d!53777 (= lt!73025 e!125174)))

(declare-fun c!39099 () Bool)

(assert (=> d!53777 (= c!39099 ((_ is Nil!3264) lt!72917))))

(assert (=> d!53777 (= (++!796 lt!72917 lt!72928) lt!73025)))

(declare-fun b!203628 () Bool)

(assert (=> b!203628 (= e!125175 (or (not (= lt!72928 Nil!3264)) (= lt!73025 lt!72917)))))

(declare-fun b!203627 () Bool)

(declare-fun res!93224 () Bool)

(assert (=> b!203627 (=> (not res!93224) (not e!125175))))

(assert (=> b!203627 (= res!93224 (= (size!2614 lt!73025) (+ (size!2614 lt!72917) (size!2614 lt!72928))))))

(declare-fun b!203626 () Bool)

(assert (=> b!203626 (= e!125174 (Cons!3264 (h!8661 lt!72917) (++!796 (t!30806 lt!72917) lt!72928)))))

(declare-fun b!203625 () Bool)

(assert (=> b!203625 (= e!125174 lt!72928)))

(assert (= (and d!53777 c!39099) b!203625))

(assert (= (and d!53777 (not c!39099)) b!203626))

(assert (= (and d!53777 res!93225) b!203627))

(assert (= (and b!203627 res!93224) b!203628))

(declare-fun m!223469 () Bool)

(assert (=> d!53777 m!223469))

(declare-fun m!223471 () Bool)

(assert (=> d!53777 m!223471))

(declare-fun m!223473 () Bool)

(assert (=> d!53777 m!223473))

(declare-fun m!223475 () Bool)

(assert (=> b!203627 m!223475))

(assert (=> b!203627 m!223453))

(declare-fun m!223477 () Bool)

(assert (=> b!203627 m!223477))

(declare-fun m!223479 () Bool)

(assert (=> b!203626 m!223479))

(assert (=> b!203505 d!53777))

(declare-fun bs!20744 () Bool)

(declare-fun d!53779 () Bool)

(assert (= bs!20744 (and d!53779 b!203485)))

(declare-fun lambda!6221 () Int)

(assert (=> bs!20744 (not (= lambda!6221 lambda!6207))))

(declare-fun bs!20745 () Bool)

(assert (= bs!20745 (and d!53779 b!203474)))

(assert (=> bs!20745 (= lambda!6221 lambda!6208)))

(declare-fun b!203650 () Bool)

(declare-fun e!125189 () Bool)

(assert (=> b!203650 (= e!125189 true)))

(declare-fun b!203649 () Bool)

(declare-fun e!125188 () Bool)

(assert (=> b!203649 (= e!125188 e!125189)))

(declare-fun b!203648 () Bool)

(declare-fun e!125187 () Bool)

(assert (=> b!203648 (= e!125187 e!125188)))

(assert (=> d!53779 e!125187))

(assert (= b!203649 b!203650))

(assert (= b!203648 b!203649))

(assert (= (and d!53779 ((_ is Cons!3265) rules!1920)) b!203648))

(assert (=> b!203650 (< (dynLambda!1429 order!2117 (toValue!1286 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6221))))

(assert (=> b!203650 (< (dynLambda!1431 order!2121 (toChars!1145 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6221))))

(assert (=> d!53779 true))

(declare-fun e!125186 () Bool)

(assert (=> d!53779 e!125186))

(declare-fun res!93228 () Bool)

(assert (=> d!53779 (=> (not res!93228) (not e!125186))))

(declare-fun lt!73040 () Bool)

(assert (=> d!53779 (= res!93228 (= lt!73040 (forall!703 (list!1217 lt!72923) lambda!6221)))))

(declare-fun forall!704 (BalanceConc!2066 Int) Bool)

(assert (=> d!53779 (= lt!73040 (forall!704 lt!72923 lambda!6221))))

(assert (=> d!53779 (not (isEmpty!1692 rules!1920))))

(assert (=> d!53779 (= (rulesProduceEachTokenIndividually!281 thiss!17480 rules!1920 lt!72923) lt!73040)))

(declare-fun b!203647 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!160 (LexerInterface!489 List!3275 List!3276) Bool)

(assert (=> b!203647 (= e!125186 (= lt!73040 (rulesProduceEachTokenIndividuallyList!160 thiss!17480 rules!1920 (list!1217 lt!72923))))))

(assert (= (and d!53779 res!93228) b!203647))

(declare-fun m!223481 () Bool)

(assert (=> d!53779 m!223481))

(assert (=> d!53779 m!223481))

(declare-fun m!223483 () Bool)

(assert (=> d!53779 m!223483))

(declare-fun m!223485 () Bool)

(assert (=> d!53779 m!223485))

(assert (=> d!53779 m!223285))

(assert (=> b!203647 m!223481))

(assert (=> b!203647 m!223481))

(declare-fun m!223487 () Bool)

(assert (=> b!203647 m!223487))

(assert (=> b!203484 d!53779))

(declare-fun d!53781 () Bool)

(declare-fun fromListB!218 (List!3276) BalanceConc!2066)

(assert (=> d!53781 (= (seqFromList!584 tokens!465) (fromListB!218 tokens!465))))

(declare-fun bs!20746 () Bool)

(assert (= bs!20746 d!53781))

(declare-fun m!223489 () Bool)

(assert (=> bs!20746 m!223489))

(assert (=> b!203484 d!53781))

(declare-fun d!53783 () Bool)

(assert (=> d!53783 (= (list!1213 (seqFromList!583 lt!72904)) (list!1216 (c!39073 (seqFromList!583 lt!72904))))))

(declare-fun bs!20747 () Bool)

(assert (= bs!20747 d!53783))

(declare-fun m!223491 () Bool)

(assert (=> bs!20747 m!223491))

(assert (=> b!203487 d!53783))

(declare-fun d!53785 () Bool)

(declare-fun fromListB!219 (List!3274) BalanceConc!2064)

(assert (=> d!53785 (= (seqFromList!583 lt!72904) (fromListB!219 lt!72904))))

(declare-fun bs!20748 () Bool)

(assert (= bs!20748 d!53785))

(declare-fun m!223493 () Bool)

(assert (=> bs!20748 m!223493))

(assert (=> b!203487 d!53785))

(declare-fun d!53787 () Bool)

(declare-fun res!93231 () Bool)

(declare-fun e!125199 () Bool)

(assert (=> d!53787 (=> (not res!93231) (not e!125199))))

(declare-fun rulesValid!172 (LexerInterface!489 List!3275) Bool)

(assert (=> d!53787 (= res!93231 (rulesValid!172 thiss!17480 rules!1920))))

(assert (=> d!53787 (= (rulesInvariant!455 thiss!17480 rules!1920) e!125199)))

(declare-fun b!203664 () Bool)

(declare-datatypes ((List!3277 0))(
  ( (Nil!3267) (Cons!3267 (h!8664 String!4205) (t!30895 List!3277)) )
))
(declare-fun noDuplicateTag!172 (LexerInterface!489 List!3275 List!3277) Bool)

(assert (=> b!203664 (= e!125199 (noDuplicateTag!172 thiss!17480 rules!1920 Nil!3267))))

(assert (= (and d!53787 res!93231) b!203664))

(declare-fun m!223495 () Bool)

(assert (=> d!53787 m!223495))

(declare-fun m!223497 () Bool)

(assert (=> b!203664 m!223497))

(assert (=> b!203507 d!53787))

(declare-fun d!53789 () Bool)

(assert (=> d!53789 (= (isDefined!354 lt!72915) (not (isEmpty!1693 lt!72915)))))

(declare-fun bs!20753 () Bool)

(assert (= bs!20753 d!53789))

(declare-fun m!223499 () Bool)

(assert (=> bs!20753 m!223499))

(assert (=> b!203486 d!53789))

(declare-fun b!203665 () Bool)

(declare-fun res!93235 () Bool)

(declare-fun e!125200 () Bool)

(assert (=> b!203665 (=> (not res!93235) (not e!125200))))

(declare-fun lt!73051 () Option!501)

(assert (=> b!203665 (= res!93235 (= (value!21501 (_1!1915 (get!968 lt!73051))) (apply!529 (transformation!603 (rule!1130 (_1!1915 (get!968 lt!73051)))) (seqFromList!583 (originalCharacters!646 (_1!1915 (get!968 lt!73051)))))))))

(declare-fun d!53791 () Bool)

(declare-fun e!125201 () Bool)

(assert (=> d!53791 e!125201))

(declare-fun res!93236 () Bool)

(assert (=> d!53791 (=> res!93236 e!125201)))

(assert (=> d!53791 (= res!93236 (isEmpty!1693 lt!73051))))

(declare-fun e!125202 () Option!501)

(assert (=> d!53791 (= lt!73051 e!125202)))

(declare-fun c!39112 () Bool)

(assert (=> d!53791 (= c!39112 (and ((_ is Cons!3265) rules!1920) ((_ is Nil!3265) (t!30807 rules!1920))))))

(declare-fun lt!73048 () Unit!3280)

(declare-fun lt!73047 () Unit!3280)

(assert (=> d!53791 (= lt!73048 lt!73047)))

(assert (=> d!53791 (isPrefix!299 lt!72904 lt!72904)))

(assert (=> d!53791 (= lt!73047 (lemmaIsPrefixRefl!164 lt!72904 lt!72904))))

(assert (=> d!53791 (rulesValidInductive!153 thiss!17480 rules!1920)))

(assert (=> d!53791 (= (maxPrefix!219 thiss!17480 rules!1920 lt!72904) lt!73051)))

(declare-fun b!203666 () Bool)

(assert (=> b!203666 (= e!125200 (contains!537 rules!1920 (rule!1130 (_1!1915 (get!968 lt!73051)))))))

(declare-fun b!203667 () Bool)

(declare-fun call!9770 () Option!501)

(assert (=> b!203667 (= e!125202 call!9770)))

(declare-fun b!203668 () Bool)

(declare-fun res!93233 () Bool)

(assert (=> b!203668 (=> (not res!93233) (not e!125200))))

(assert (=> b!203668 (= res!93233 (= (++!796 (list!1213 (charsOf!258 (_1!1915 (get!968 lt!73051)))) (_2!1915 (get!968 lt!73051))) lt!72904))))

(declare-fun b!203669 () Bool)

(assert (=> b!203669 (= e!125201 e!125200)))

(declare-fun res!93232 () Bool)

(assert (=> b!203669 (=> (not res!93232) (not e!125200))))

(assert (=> b!203669 (= res!93232 (isDefined!354 lt!73051))))

(declare-fun b!203670 () Bool)

(declare-fun res!93238 () Bool)

(assert (=> b!203670 (=> (not res!93238) (not e!125200))))

(assert (=> b!203670 (= res!93238 (= (list!1213 (charsOf!258 (_1!1915 (get!968 lt!73051)))) (originalCharacters!646 (_1!1915 (get!968 lt!73051)))))))

(declare-fun bm!9765 () Bool)

(assert (=> bm!9765 (= call!9770 (maxPrefixOneRule!98 thiss!17480 (h!8662 rules!1920) lt!72904))))

(declare-fun b!203671 () Bool)

(declare-fun res!93234 () Bool)

(assert (=> b!203671 (=> (not res!93234) (not e!125200))))

(assert (=> b!203671 (= res!93234 (matchR!165 (regex!603 (rule!1130 (_1!1915 (get!968 lt!73051)))) (list!1213 (charsOf!258 (_1!1915 (get!968 lt!73051))))))))

(declare-fun b!203672 () Bool)

(declare-fun res!93237 () Bool)

(assert (=> b!203672 (=> (not res!93237) (not e!125200))))

(assert (=> b!203672 (= res!93237 (< (size!2614 (_2!1915 (get!968 lt!73051))) (size!2614 lt!72904)))))

(declare-fun b!203673 () Bool)

(declare-fun lt!73049 () Option!501)

(declare-fun lt!73050 () Option!501)

(assert (=> b!203673 (= e!125202 (ite (and ((_ is None!500) lt!73049) ((_ is None!500) lt!73050)) None!500 (ite ((_ is None!500) lt!73050) lt!73049 (ite ((_ is None!500) lt!73049) lt!73050 (ite (>= (size!2612 (_1!1915 (v!14043 lt!73049))) (size!2612 (_1!1915 (v!14043 lt!73050)))) lt!73049 lt!73050)))))))

(assert (=> b!203673 (= lt!73049 call!9770)))

(assert (=> b!203673 (= lt!73050 (maxPrefix!219 thiss!17480 (t!30807 rules!1920) lt!72904))))

(assert (= (and d!53791 c!39112) b!203667))

(assert (= (and d!53791 (not c!39112)) b!203673))

(assert (= (or b!203667 b!203673) bm!9765))

(assert (= (and d!53791 (not res!93236)) b!203669))

(assert (= (and b!203669 res!93232) b!203670))

(assert (= (and b!203670 res!93238) b!203672))

(assert (= (and b!203672 res!93237) b!203668))

(assert (= (and b!203668 res!93233) b!203665))

(assert (= (and b!203665 res!93235) b!203671))

(assert (= (and b!203671 res!93234) b!203666))

(declare-fun m!223521 () Bool)

(assert (=> b!203668 m!223521))

(declare-fun m!223523 () Bool)

(assert (=> b!203668 m!223523))

(assert (=> b!203668 m!223523))

(declare-fun m!223525 () Bool)

(assert (=> b!203668 m!223525))

(assert (=> b!203668 m!223525))

(declare-fun m!223527 () Bool)

(assert (=> b!203668 m!223527))

(declare-fun m!223529 () Bool)

(assert (=> b!203673 m!223529))

(assert (=> b!203671 m!223521))

(assert (=> b!203671 m!223523))

(assert (=> b!203671 m!223523))

(assert (=> b!203671 m!223525))

(assert (=> b!203671 m!223525))

(declare-fun m!223531 () Bool)

(assert (=> b!203671 m!223531))

(declare-fun m!223533 () Bool)

(assert (=> b!203669 m!223533))

(assert (=> b!203665 m!223521))

(declare-fun m!223535 () Bool)

(assert (=> b!203665 m!223535))

(assert (=> b!203665 m!223535))

(declare-fun m!223537 () Bool)

(assert (=> b!203665 m!223537))

(assert (=> b!203666 m!223521))

(declare-fun m!223539 () Bool)

(assert (=> b!203666 m!223539))

(assert (=> b!203670 m!223521))

(assert (=> b!203670 m!223523))

(assert (=> b!203670 m!223523))

(assert (=> b!203670 m!223525))

(assert (=> b!203672 m!223521))

(declare-fun m!223541 () Bool)

(assert (=> b!203672 m!223541))

(declare-fun m!223543 () Bool)

(assert (=> b!203672 m!223543))

(declare-fun m!223545 () Bool)

(assert (=> bm!9765 m!223545))

(declare-fun m!223547 () Bool)

(assert (=> d!53791 m!223547))

(declare-fun m!223549 () Bool)

(assert (=> d!53791 m!223549))

(declare-fun m!223551 () Bool)

(assert (=> d!53791 m!223551))

(assert (=> d!53791 m!223463))

(assert (=> b!203486 d!53791))

(declare-fun b!203745 () Bool)

(declare-fun res!93274 () Bool)

(declare-fun e!125241 () Bool)

(assert (=> b!203745 (=> (not res!93274) (not e!125241))))

(declare-fun call!9775 () Bool)

(assert (=> b!203745 (= res!93274 (not call!9775))))

(declare-fun b!203746 () Bool)

(declare-fun res!93277 () Bool)

(declare-fun e!125246 () Bool)

(assert (=> b!203746 (=> res!93277 e!125246)))

(declare-fun tail!398 (List!3274) List!3274)

(assert (=> b!203746 (= res!93277 (not (isEmpty!1691 (tail!398 lt!72912))))))

(declare-fun b!203747 () Bool)

(declare-fun e!125240 () Bool)

(assert (=> b!203747 (= e!125240 e!125246)))

(declare-fun res!93280 () Bool)

(assert (=> b!203747 (=> res!93280 e!125246)))

(assert (=> b!203747 (= res!93280 call!9775)))

(declare-fun b!203749 () Bool)

(declare-fun e!125243 () Bool)

(declare-fun lt!73056 () Bool)

(assert (=> b!203749 (= e!125243 (= lt!73056 call!9775))))

(declare-fun b!203750 () Bool)

(declare-fun e!125244 () Bool)

(assert (=> b!203750 (= e!125244 e!125240)))

(declare-fun res!93279 () Bool)

(assert (=> b!203750 (=> (not res!93279) (not e!125240))))

(assert (=> b!203750 (= res!93279 (not lt!73056))))

(declare-fun b!203751 () Bool)

(declare-fun e!125242 () Bool)

(declare-fun nullable!134 (Regex!827) Bool)

(assert (=> b!203751 (= e!125242 (nullable!134 (regex!603 lt!72908)))))

(declare-fun b!203752 () Bool)

(declare-fun res!93275 () Bool)

(assert (=> b!203752 (=> res!93275 e!125244)))

(assert (=> b!203752 (= res!93275 (not ((_ is ElementMatch!827) (regex!603 lt!72908))))))

(declare-fun e!125245 () Bool)

(assert (=> b!203752 (= e!125245 e!125244)))

(declare-fun b!203748 () Bool)

(declare-fun res!93281 () Bool)

(assert (=> b!203748 (=> res!93281 e!125244)))

(assert (=> b!203748 (= res!93281 e!125241)))

(declare-fun res!93278 () Bool)

(assert (=> b!203748 (=> (not res!93278) (not e!125241))))

(assert (=> b!203748 (= res!93278 lt!73056)))

(declare-fun d!53797 () Bool)

(assert (=> d!53797 e!125243))

(declare-fun c!39131 () Bool)

(assert (=> d!53797 (= c!39131 ((_ is EmptyExpr!827) (regex!603 lt!72908)))))

(assert (=> d!53797 (= lt!73056 e!125242)))

(declare-fun c!39133 () Bool)

(assert (=> d!53797 (= c!39133 (isEmpty!1691 lt!72912))))

(declare-fun validRegex!209 (Regex!827) Bool)

(assert (=> d!53797 (validRegex!209 (regex!603 lt!72908))))

(assert (=> d!53797 (= (matchR!165 (regex!603 lt!72908) lt!72912) lt!73056)))

(declare-fun b!203753 () Bool)

(declare-fun derivativeStep!100 (Regex!827 C!2576) Regex!827)

(assert (=> b!203753 (= e!125242 (matchR!165 (derivativeStep!100 (regex!603 lt!72908) (head!702 lt!72912)) (tail!398 lt!72912)))))

(declare-fun b!203754 () Bool)

(assert (=> b!203754 (= e!125245 (not lt!73056))))

(declare-fun b!203755 () Bool)

(declare-fun res!93276 () Bool)

(assert (=> b!203755 (=> (not res!93276) (not e!125241))))

(assert (=> b!203755 (= res!93276 (isEmpty!1691 (tail!398 lt!72912)))))

(declare-fun b!203756 () Bool)

(assert (=> b!203756 (= e!125241 (= (head!702 lt!72912) (c!39074 (regex!603 lt!72908))))))

(declare-fun bm!9770 () Bool)

(assert (=> bm!9770 (= call!9775 (isEmpty!1691 lt!72912))))

(declare-fun b!203757 () Bool)

(assert (=> b!203757 (= e!125246 (not (= (head!702 lt!72912) (c!39074 (regex!603 lt!72908)))))))

(declare-fun b!203758 () Bool)

(assert (=> b!203758 (= e!125243 e!125245)))

(declare-fun c!39132 () Bool)

(assert (=> b!203758 (= c!39132 ((_ is EmptyLang!827) (regex!603 lt!72908)))))

(assert (= (and d!53797 c!39133) b!203751))

(assert (= (and d!53797 (not c!39133)) b!203753))

(assert (= (and d!53797 c!39131) b!203749))

(assert (= (and d!53797 (not c!39131)) b!203758))

(assert (= (and b!203758 c!39132) b!203754))

(assert (= (and b!203758 (not c!39132)) b!203752))

(assert (= (and b!203752 (not res!93275)) b!203748))

(assert (= (and b!203748 res!93278) b!203745))

(assert (= (and b!203745 res!93274) b!203755))

(assert (= (and b!203755 res!93276) b!203756))

(assert (= (and b!203748 (not res!93281)) b!203750))

(assert (= (and b!203750 res!93279) b!203747))

(assert (= (and b!203747 (not res!93280)) b!203746))

(assert (= (and b!203746 (not res!93277)) b!203757))

(assert (= (or b!203749 b!203745 b!203747) bm!9770))

(declare-fun m!223559 () Bool)

(assert (=> b!203756 m!223559))

(declare-fun m!223561 () Bool)

(assert (=> bm!9770 m!223561))

(assert (=> b!203757 m!223559))

(declare-fun m!223563 () Bool)

(assert (=> b!203746 m!223563))

(assert (=> b!203746 m!223563))

(declare-fun m!223565 () Bool)

(assert (=> b!203746 m!223565))

(assert (=> d!53797 m!223561))

(declare-fun m!223567 () Bool)

(assert (=> d!53797 m!223567))

(declare-fun m!223569 () Bool)

(assert (=> b!203751 m!223569))

(assert (=> b!203755 m!223563))

(assert (=> b!203755 m!223563))

(assert (=> b!203755 m!223565))

(assert (=> b!203753 m!223559))

(assert (=> b!203753 m!223559))

(declare-fun m!223571 () Bool)

(assert (=> b!203753 m!223571))

(assert (=> b!203753 m!223563))

(assert (=> b!203753 m!223571))

(assert (=> b!203753 m!223563))

(declare-fun m!223573 () Bool)

(assert (=> b!203753 m!223573))

(assert (=> b!203508 d!53797))

(declare-fun d!53801 () Bool)

(assert (=> d!53801 (= (get!969 lt!72931) (v!14044 lt!72931))))

(assert (=> b!203508 d!53801))

(declare-fun d!53803 () Bool)

(declare-fun res!93294 () Bool)

(declare-fun e!125256 () Bool)

(assert (=> d!53803 (=> (not res!93294) (not e!125256))))

(assert (=> d!53803 (= res!93294 (not (isEmpty!1691 (originalCharacters!646 (h!8663 tokens!465)))))))

(assert (=> d!53803 (= (inv!4105 (h!8663 tokens!465)) e!125256)))

(declare-fun b!203777 () Bool)

(declare-fun res!93295 () Bool)

(assert (=> b!203777 (=> (not res!93295) (not e!125256))))

(declare-fun dynLambda!1435 (Int TokenValue!625) BalanceConc!2064)

(assert (=> b!203777 (= res!93295 (= (originalCharacters!646 (h!8663 tokens!465)) (list!1213 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (value!21501 (h!8663 tokens!465))))))))

(declare-fun b!203778 () Bool)

(assert (=> b!203778 (= e!125256 (= (size!2612 (h!8663 tokens!465)) (size!2614 (originalCharacters!646 (h!8663 tokens!465)))))))

(assert (= (and d!53803 res!93294) b!203777))

(assert (= (and b!203777 res!93295) b!203778))

(declare-fun b_lambda!5241 () Bool)

(assert (=> (not b_lambda!5241) (not b!203777)))

(declare-fun tb!9429 () Bool)

(declare-fun t!30821 () Bool)

(assert (=> (and b!203496 (= (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465))))) t!30821) tb!9429))

(declare-fun b!203783 () Bool)

(declare-fun e!125259 () Bool)

(declare-fun tp!90288 () Bool)

(declare-fun inv!4109 (Conc!1028) Bool)

(assert (=> b!203783 (= e!125259 (and (inv!4109 (c!39073 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (value!21501 (h!8663 tokens!465))))) tp!90288))))

(declare-fun result!12432 () Bool)

(declare-fun inv!4110 (BalanceConc!2064) Bool)

(assert (=> tb!9429 (= result!12432 (and (inv!4110 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (value!21501 (h!8663 tokens!465)))) e!125259))))

(assert (= tb!9429 b!203783))

(declare-fun m!223589 () Bool)

(assert (=> b!203783 m!223589))

(declare-fun m!223591 () Bool)

(assert (=> tb!9429 m!223591))

(assert (=> b!203777 t!30821))

(declare-fun b_and!14721 () Bool)

(assert (= b_and!14711 (and (=> t!30821 result!12432) b_and!14721)))

(declare-fun tb!9431 () Bool)

(declare-fun t!30823 () Bool)

(assert (=> (and b!203490 (= (toChars!1145 (transformation!603 (h!8662 rules!1920))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465))))) t!30823) tb!9431))

(declare-fun result!12436 () Bool)

(assert (= result!12436 result!12432))

(assert (=> b!203777 t!30823))

(declare-fun b_and!14723 () Bool)

(assert (= b_and!14715 (and (=> t!30823 result!12436) b_and!14723)))

(declare-fun t!30825 () Bool)

(declare-fun tb!9433 () Bool)

(assert (=> (and b!203483 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465))))) t!30825) tb!9433))

(declare-fun result!12438 () Bool)

(assert (= result!12438 result!12432))

(assert (=> b!203777 t!30825))

(declare-fun b_and!14725 () Bool)

(assert (= b_and!14719 (and (=> t!30825 result!12438) b_and!14725)))

(declare-fun m!223593 () Bool)

(assert (=> d!53803 m!223593))

(declare-fun m!223595 () Bool)

(assert (=> b!203777 m!223595))

(assert (=> b!203777 m!223595))

(declare-fun m!223597 () Bool)

(assert (=> b!203777 m!223597))

(declare-fun m!223599 () Bool)

(assert (=> b!203778 m!223599))

(assert (=> b!203511 d!53803))

(declare-fun d!53809 () Bool)

(assert (=> d!53809 (= (list!1213 (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 lt!72923 separatorToken!170 0)) (list!1216 (c!39073 (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 lt!72923 separatorToken!170 0))))))

(declare-fun bs!20754 () Bool)

(assert (= bs!20754 d!53809))

(declare-fun m!223601 () Bool)

(assert (=> bs!20754 m!223601))

(assert (=> b!203469 d!53809))

(declare-fun bs!20755 () Bool)

(declare-fun d!53811 () Bool)

(assert (= bs!20755 (and d!53811 b!203485)))

(declare-fun lambda!6227 () Int)

(assert (=> bs!20755 (= lambda!6227 lambda!6207)))

(declare-fun bs!20756 () Bool)

(assert (= bs!20756 (and d!53811 b!203474)))

(assert (=> bs!20756 (not (= lambda!6227 lambda!6208))))

(declare-fun bs!20757 () Bool)

(assert (= bs!20757 (and d!53811 d!53779)))

(assert (=> bs!20757 (not (= lambda!6227 lambda!6221))))

(declare-fun bs!20758 () Bool)

(declare-fun b!203847 () Bool)

(assert (= bs!20758 (and b!203847 b!203485)))

(declare-fun lambda!6228 () Int)

(assert (=> bs!20758 (not (= lambda!6228 lambda!6207))))

(declare-fun bs!20759 () Bool)

(assert (= bs!20759 (and b!203847 b!203474)))

(assert (=> bs!20759 (= lambda!6228 lambda!6208)))

(declare-fun bs!20760 () Bool)

(assert (= bs!20760 (and b!203847 d!53779)))

(assert (=> bs!20760 (= lambda!6228 lambda!6221)))

(declare-fun bs!20761 () Bool)

(assert (= bs!20761 (and b!203847 d!53811)))

(assert (=> bs!20761 (not (= lambda!6228 lambda!6227))))

(declare-fun b!203851 () Bool)

(declare-fun e!125305 () Bool)

(assert (=> b!203851 (= e!125305 true)))

(declare-fun b!203850 () Bool)

(declare-fun e!125304 () Bool)

(assert (=> b!203850 (= e!125304 e!125305)))

(declare-fun b!203849 () Bool)

(declare-fun e!125303 () Bool)

(assert (=> b!203849 (= e!125303 e!125304)))

(assert (=> b!203847 e!125303))

(assert (= b!203850 b!203851))

(assert (= b!203849 b!203850))

(assert (= (and b!203847 ((_ is Cons!3265) rules!1920)) b!203849))

(assert (=> b!203851 (< (dynLambda!1429 order!2117 (toValue!1286 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6228))))

(assert (=> b!203851 (< (dynLambda!1431 order!2121 (toChars!1145 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6228))))

(assert (=> b!203847 true))

(declare-fun b!203838 () Bool)

(declare-fun e!125298 () Bool)

(assert (=> b!203838 (= e!125298 (<= 0 (size!2613 lt!72923)))))

(declare-fun b!203839 () Bool)

(declare-fun e!125300 () BalanceConc!2064)

(declare-fun call!9788 () Token!950)

(assert (=> b!203839 (= e!125300 (charsOf!258 call!9788))))

(declare-fun lt!73101 () BalanceConc!2064)

(assert (=> d!53811 (= (list!1213 lt!73101) (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 (dropList!116 lt!72923 0) separatorToken!170))))

(declare-fun e!125302 () BalanceConc!2064)

(assert (=> d!53811 (= lt!73101 e!125302)))

(declare-fun c!39148 () Bool)

(assert (=> d!53811 (= c!39148 (>= 0 (size!2613 lt!72923)))))

(declare-fun lt!73103 () Unit!3280)

(declare-fun lemmaContentSubsetPreservesForall!60 (List!3276 List!3276 Int) Unit!3280)

(assert (=> d!53811 (= lt!73103 (lemmaContentSubsetPreservesForall!60 (list!1217 lt!72923) (dropList!116 lt!72923 0) lambda!6227))))

(assert (=> d!53811 e!125298))

(declare-fun res!93330 () Bool)

(assert (=> d!53811 (=> (not res!93330) (not e!125298))))

(assert (=> d!53811 (= res!93330 (>= 0 0))))

(assert (=> d!53811 (= (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 lt!72923 separatorToken!170 0) lt!73101)))

(declare-fun b!203840 () Bool)

(declare-fun e!125299 () BalanceConc!2064)

(declare-fun call!9792 () BalanceConc!2064)

(declare-fun lt!73096 () BalanceConc!2064)

(assert (=> b!203840 (= e!125299 (++!798 call!9792 lt!73096))))

(declare-fun b!203841 () Bool)

(declare-fun call!9790 () BalanceConc!2064)

(assert (=> b!203841 (= e!125300 call!9790)))

(declare-fun b!203842 () Bool)

(assert (=> b!203842 (= e!125299 (BalanceConc!2065 Empty!1028))))

(assert (=> b!203842 (= (print!220 thiss!17480 (singletonSeq!155 call!9788)) (printTailRec!183 thiss!17480 (singletonSeq!155 call!9788) 0 (BalanceConc!2065 Empty!1028)))))

(declare-fun lt!73100 () Unit!3280)

(declare-fun Unit!3290 () Unit!3280)

(assert (=> b!203842 (= lt!73100 Unit!3290)))

(declare-fun lt!73095 () Unit!3280)

(declare-fun call!9789 () BalanceConc!2064)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!64 (LexerInterface!489 List!3275 List!3274 List!3274) Unit!3280)

(assert (=> b!203842 (= lt!73095 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!64 thiss!17480 rules!1920 (list!1213 call!9789) (list!1213 lt!73096)))))

(assert (=> b!203842 false))

(declare-fun lt!73105 () Unit!3280)

(declare-fun Unit!3291 () Unit!3280)

(assert (=> b!203842 (= lt!73105 Unit!3291)))

(declare-fun bm!9783 () Bool)

(declare-fun call!9791 () Token!950)

(assert (=> bm!9783 (= call!9788 call!9791)))

(declare-fun b!203843 () Bool)

(declare-fun e!125301 () BalanceConc!2064)

(assert (=> b!203843 (= e!125301 call!9792)))

(declare-fun b!203844 () Bool)

(declare-fun e!125297 () Bool)

(declare-fun lt!73097 () Option!503)

(assert (=> b!203844 (= e!125297 (not (= (_1!1917 (v!14045 lt!73097)) call!9791)))))

(declare-fun c!39150 () Bool)

(declare-fun bm!9784 () Bool)

(declare-fun c!39149 () Bool)

(assert (=> bm!9784 (= call!9790 (charsOf!258 (ite c!39149 call!9791 (ite c!39150 separatorToken!170 call!9788))))))

(declare-fun b!203845 () Bool)

(declare-fun e!125296 () Bool)

(assert (=> b!203845 (= e!125296 (= (_1!1917 (v!14045 lt!73097)) (apply!526 lt!72923 0)))))

(declare-fun b!203846 () Bool)

(assert (=> b!203846 (= e!125302 (BalanceConc!2065 Empty!1028))))

(declare-fun bm!9785 () Bool)

(declare-fun c!39151 () Bool)

(assert (=> bm!9785 (= c!39151 c!39149)))

(assert (=> bm!9785 (= call!9792 (++!798 e!125300 (ite c!39149 lt!73096 call!9789)))))

(declare-fun bm!9786 () Bool)

(assert (=> bm!9786 (= call!9791 (apply!526 lt!72923 0))))

(assert (=> b!203847 (= e!125302 e!125301)))

(declare-fun lt!73099 () List!3276)

(assert (=> b!203847 (= lt!73099 (list!1217 lt!72923))))

(declare-fun lt!73104 () Unit!3280)

(assert (=> b!203847 (= lt!73104 (lemmaDropApply!156 lt!73099 0))))

(assert (=> b!203847 (= (head!701 (drop!169 lt!73099 0)) (apply!528 lt!73099 0))))

(declare-fun lt!73098 () Unit!3280)

(assert (=> b!203847 (= lt!73098 lt!73104)))

(declare-fun lt!73094 () List!3276)

(assert (=> b!203847 (= lt!73094 (list!1217 lt!72923))))

(declare-fun lt!73106 () Unit!3280)

(assert (=> b!203847 (= lt!73106 (lemmaDropTail!148 lt!73094 0))))

(assert (=> b!203847 (= (tail!396 (drop!169 lt!73094 0)) (drop!169 lt!73094 (+ 0 1)))))

(declare-fun lt!73102 () Unit!3280)

(assert (=> b!203847 (= lt!73102 lt!73106)))

(declare-fun lt!73093 () Unit!3280)

(assert (=> b!203847 (= lt!73093 (forallContained!170 (list!1217 lt!72923) lambda!6228 (apply!526 lt!72923 0)))))

(assert (=> b!203847 (= lt!73096 (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 lt!72923 separatorToken!170 (+ 0 1)))))

(assert (=> b!203847 (= lt!73097 (maxPrefixZipperSequence!182 thiss!17480 rules!1920 (++!798 (charsOf!258 (apply!526 lt!72923 0)) lt!73096)))))

(declare-fun res!93328 () Bool)

(assert (=> b!203847 (= res!93328 ((_ is Some!502) lt!73097))))

(assert (=> b!203847 (=> (not res!93328) (not e!125296))))

(assert (=> b!203847 (= c!39149 e!125296)))

(declare-fun b!203848 () Bool)

(assert (=> b!203848 (= c!39150 e!125297)))

(declare-fun res!93329 () Bool)

(assert (=> b!203848 (=> (not res!93329) (not e!125297))))

(assert (=> b!203848 (= res!93329 ((_ is Some!502) lt!73097))))

(assert (=> b!203848 (= e!125301 e!125299)))

(declare-fun bm!9787 () Bool)

(assert (=> bm!9787 (= call!9789 call!9790)))

(assert (= (and d!53811 res!93330) b!203838))

(assert (= (and d!53811 c!39148) b!203846))

(assert (= (and d!53811 (not c!39148)) b!203847))

(assert (= (and b!203847 res!93328) b!203845))

(assert (= (and b!203847 c!39149) b!203843))

(assert (= (and b!203847 (not c!39149)) b!203848))

(assert (= (and b!203848 res!93329) b!203844))

(assert (= (and b!203848 c!39150) b!203840))

(assert (= (and b!203848 (not c!39150)) b!203842))

(assert (= (or b!203840 b!203842) bm!9783))

(assert (= (or b!203840 b!203842) bm!9787))

(assert (= (or b!203843 bm!9783 b!203844) bm!9786))

(assert (= (or b!203843 bm!9787) bm!9784))

(assert (= (or b!203843 b!203840) bm!9785))

(assert (= (and bm!9785 c!39151) b!203841))

(assert (= (and bm!9785 (not c!39151)) b!203839))

(declare-fun m!223643 () Bool)

(assert (=> b!203839 m!223643))

(declare-fun m!223645 () Bool)

(assert (=> bm!9784 m!223645))

(declare-fun m!223647 () Bool)

(assert (=> bm!9785 m!223647))

(declare-fun m!223649 () Bool)

(assert (=> bm!9786 m!223649))

(declare-fun m!223651 () Bool)

(assert (=> b!203840 m!223651))

(declare-fun m!223653 () Bool)

(assert (=> b!203842 m!223653))

(assert (=> b!203842 m!223653))

(declare-fun m!223655 () Bool)

(assert (=> b!203842 m!223655))

(assert (=> b!203842 m!223653))

(declare-fun m!223657 () Bool)

(assert (=> b!203842 m!223657))

(declare-fun m!223659 () Bool)

(assert (=> b!203842 m!223659))

(declare-fun m!223661 () Bool)

(assert (=> b!203842 m!223661))

(declare-fun m!223663 () Bool)

(assert (=> b!203842 m!223663))

(assert (=> b!203842 m!223661))

(assert (=> b!203842 m!223659))

(declare-fun m!223665 () Bool)

(assert (=> b!203838 m!223665))

(declare-fun m!223667 () Bool)

(assert (=> d!53811 m!223667))

(declare-fun m!223669 () Bool)

(assert (=> d!53811 m!223669))

(declare-fun m!223671 () Bool)

(assert (=> d!53811 m!223671))

(assert (=> d!53811 m!223481))

(assert (=> d!53811 m!223669))

(declare-fun m!223673 () Bool)

(assert (=> d!53811 m!223673))

(assert (=> d!53811 m!223669))

(assert (=> d!53811 m!223665))

(assert (=> d!53811 m!223481))

(assert (=> b!203845 m!223649))

(declare-fun m!223675 () Bool)

(assert (=> b!203847 m!223675))

(declare-fun m!223677 () Bool)

(assert (=> b!203847 m!223677))

(assert (=> b!203847 m!223649))

(declare-fun m!223679 () Bool)

(assert (=> b!203847 m!223679))

(declare-fun m!223681 () Bool)

(assert (=> b!203847 m!223681))

(declare-fun m!223683 () Bool)

(assert (=> b!203847 m!223683))

(assert (=> b!203847 m!223649))

(assert (=> b!203847 m!223481))

(assert (=> b!203847 m!223679))

(declare-fun m!223685 () Bool)

(assert (=> b!203847 m!223685))

(declare-fun m!223687 () Bool)

(assert (=> b!203847 m!223687))

(assert (=> b!203847 m!223685))

(declare-fun m!223689 () Bool)

(assert (=> b!203847 m!223689))

(assert (=> b!203847 m!223681))

(declare-fun m!223691 () Bool)

(assert (=> b!203847 m!223691))

(declare-fun m!223693 () Bool)

(assert (=> b!203847 m!223693))

(declare-fun m!223695 () Bool)

(assert (=> b!203847 m!223695))

(declare-fun m!223697 () Bool)

(assert (=> b!203847 m!223697))

(assert (=> b!203847 m!223481))

(assert (=> b!203847 m!223649))

(declare-fun m!223699 () Bool)

(assert (=> b!203847 m!223699))

(assert (=> b!203847 m!223695))

(assert (=> b!203469 d!53811))

(declare-fun bs!20769 () Bool)

(declare-fun b!203899 () Bool)

(assert (= bs!20769 (and b!203899 d!53811)))

(declare-fun lambda!6236 () Int)

(assert (=> bs!20769 (not (= lambda!6236 lambda!6227))))

(declare-fun bs!20770 () Bool)

(assert (= bs!20770 (and b!203899 b!203474)))

(assert (=> bs!20770 (= lambda!6236 lambda!6208)))

(declare-fun bs!20771 () Bool)

(assert (= bs!20771 (and b!203899 b!203847)))

(assert (=> bs!20771 (= lambda!6236 lambda!6228)))

(declare-fun bs!20772 () Bool)

(assert (= bs!20772 (and b!203899 b!203485)))

(assert (=> bs!20772 (not (= lambda!6236 lambda!6207))))

(declare-fun bs!20773 () Bool)

(assert (= bs!20773 (and b!203899 d!53779)))

(assert (=> bs!20773 (= lambda!6236 lambda!6221)))

(declare-fun b!203911 () Bool)

(declare-fun e!125341 () Bool)

(assert (=> b!203911 (= e!125341 true)))

(declare-fun b!203910 () Bool)

(declare-fun e!125340 () Bool)

(assert (=> b!203910 (= e!125340 e!125341)))

(declare-fun b!203909 () Bool)

(declare-fun e!125339 () Bool)

(assert (=> b!203909 (= e!125339 e!125340)))

(assert (=> b!203899 e!125339))

(assert (= b!203910 b!203911))

(assert (= b!203909 b!203910))

(assert (= (and b!203899 ((_ is Cons!3265) rules!1920)) b!203909))

(assert (=> b!203911 (< (dynLambda!1429 order!2117 (toValue!1286 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6236))))

(assert (=> b!203911 (< (dynLambda!1431 order!2121 (toChars!1145 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6236))))

(assert (=> b!203899 true))

(declare-fun e!125334 () List!3274)

(declare-fun e!125336 () List!3274)

(assert (=> b!203899 (= e!125334 e!125336)))

(declare-fun lt!73128 () Unit!3280)

(assert (=> b!203899 (= lt!73128 (forallContained!170 tokens!465 lambda!6236 (h!8663 tokens!465)))))

(declare-fun lt!73131 () List!3274)

(assert (=> b!203899 (= lt!73131 (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 (t!30808 tokens!465) separatorToken!170))))

(declare-fun lt!73130 () Option!501)

(assert (=> b!203899 (= lt!73130 (maxPrefix!219 thiss!17480 rules!1920 (++!796 (list!1213 (charsOf!258 (h!8663 tokens!465))) lt!73131)))))

(declare-fun c!39166 () Bool)

(assert (=> b!203899 (= c!39166 (and ((_ is Some!500) lt!73130) (= (_1!1915 (v!14043 lt!73130)) (h!8663 tokens!465))))))

(declare-fun bm!9798 () Bool)

(declare-fun call!9804 () List!3274)

(declare-fun call!9805 () List!3274)

(assert (=> bm!9798 (= call!9804 call!9805)))

(declare-fun c!39164 () Bool)

(declare-fun c!39167 () Bool)

(assert (=> bm!9798 (= c!39164 c!39167)))

(declare-fun bm!9799 () Bool)

(declare-fun call!9803 () BalanceConc!2064)

(assert (=> bm!9799 (= call!9803 (charsOf!258 (h!8663 tokens!465)))))

(declare-fun bm!9800 () Bool)

(declare-fun call!9806 () BalanceConc!2064)

(assert (=> bm!9800 (= call!9806 call!9803)))

(declare-fun b!203900 () Bool)

(assert (=> b!203900 (= c!39167 (and ((_ is Some!500) lt!73130) (not (= (_1!1915 (v!14043 lt!73130)) (h!8663 tokens!465)))))))

(declare-fun e!125337 () List!3274)

(assert (=> b!203900 (= e!125336 e!125337)))

(declare-fun b!203901 () Bool)

(declare-fun call!9807 () List!3274)

(assert (=> b!203901 (= e!125337 (++!796 call!9807 lt!73131))))

(declare-fun b!203902 () Bool)

(declare-fun e!125338 () List!3274)

(assert (=> b!203902 (= e!125338 (list!1213 call!9806))))

(declare-fun b!203903 () Bool)

(assert (=> b!203903 (= e!125334 Nil!3264)))

(declare-fun d!53823 () Bool)

(declare-fun c!39165 () Bool)

(assert (=> d!53823 (= c!39165 ((_ is Cons!3266) tokens!465))))

(assert (=> d!53823 (= (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!125334)))

(declare-fun b!203904 () Bool)

(assert (=> b!203904 (= e!125337 Nil!3264)))

(assert (=> b!203904 (= (print!220 thiss!17480 (singletonSeq!155 (h!8663 tokens!465))) (printTailRec!183 thiss!17480 (singletonSeq!155 (h!8663 tokens!465)) 0 (BalanceConc!2065 Empty!1028)))))

(declare-fun lt!73132 () Unit!3280)

(declare-fun Unit!3292 () Unit!3280)

(assert (=> b!203904 (= lt!73132 Unit!3292)))

(declare-fun lt!73129 () Unit!3280)

(assert (=> b!203904 (= lt!73129 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!64 thiss!17480 rules!1920 call!9804 lt!73131))))

(assert (=> b!203904 false))

(declare-fun lt!73127 () Unit!3280)

(declare-fun Unit!3293 () Unit!3280)

(assert (=> b!203904 (= lt!73127 Unit!3293)))

(declare-fun bm!9801 () Bool)

(declare-fun c!39168 () Bool)

(assert (=> bm!9801 (= c!39168 c!39166)))

(assert (=> bm!9801 (= call!9807 (++!796 e!125338 (ite c!39166 lt!73131 call!9804)))))

(declare-fun b!203905 () Bool)

(declare-fun e!125335 () BalanceConc!2064)

(assert (=> b!203905 (= e!125335 call!9806)))

(declare-fun b!203906 () Bool)

(assert (=> b!203906 (= e!125336 call!9807)))

(declare-fun b!203907 () Bool)

(assert (=> b!203907 (= e!125335 (charsOf!258 separatorToken!170))))

(declare-fun b!203908 () Bool)

(assert (=> b!203908 (= e!125338 call!9805)))

(declare-fun bm!9802 () Bool)

(assert (=> bm!9802 (= call!9805 (list!1213 (ite c!39166 call!9803 e!125335)))))

(assert (= (and d!53823 c!39165) b!203899))

(assert (= (and d!53823 (not c!39165)) b!203903))

(assert (= (and b!203899 c!39166) b!203906))

(assert (= (and b!203899 (not c!39166)) b!203900))

(assert (= (and b!203900 c!39167) b!203901))

(assert (= (and b!203900 (not c!39167)) b!203904))

(assert (= (or b!203901 b!203904) bm!9800))

(assert (= (or b!203901 b!203904) bm!9798))

(assert (= (and bm!9798 c!39164) b!203907))

(assert (= (and bm!9798 (not c!39164)) b!203905))

(assert (= (or b!203906 bm!9800) bm!9799))

(assert (= (or b!203906 bm!9798) bm!9802))

(assert (= (or b!203906 b!203901) bm!9801))

(assert (= (and bm!9801 c!39168) b!203908))

(assert (= (and bm!9801 (not c!39168)) b!203902))

(assert (=> b!203904 m!223125))

(assert (=> b!203904 m!223125))

(declare-fun m!223727 () Bool)

(assert (=> b!203904 m!223727))

(assert (=> b!203904 m!223125))

(declare-fun m!223729 () Bool)

(assert (=> b!203904 m!223729))

(declare-fun m!223733 () Bool)

(assert (=> b!203904 m!223733))

(declare-fun m!223735 () Bool)

(assert (=> b!203901 m!223735))

(assert (=> b!203907 m!223139))

(assert (=> b!203899 m!223151))

(declare-fun m!223741 () Bool)

(assert (=> b!203899 m!223741))

(assert (=> b!203899 m!223149))

(assert (=> b!203899 m!223151))

(declare-fun m!223747 () Bool)

(assert (=> b!203899 m!223747))

(assert (=> b!203899 m!223135))

(assert (=> b!203899 m!223149))

(assert (=> b!203899 m!223741))

(declare-fun m!223755 () Bool)

(assert (=> b!203899 m!223755))

(declare-fun m!223757 () Bool)

(assert (=> bm!9801 m!223757))

(declare-fun m!223759 () Bool)

(assert (=> b!203902 m!223759))

(assert (=> bm!9799 m!223149))

(declare-fun m!223763 () Bool)

(assert (=> bm!9802 m!223763))

(assert (=> b!203469 d!53823))

(declare-fun d!53835 () Bool)

(declare-fun lt!73166 () Bool)

(declare-fun e!125376 () Bool)

(assert (=> d!53835 (= lt!73166 e!125376)))

(declare-fun res!93381 () Bool)

(assert (=> d!53835 (=> (not res!93381) (not e!125376))))

(assert (=> d!53835 (= res!93381 (= (list!1217 (_1!1916 (lex!289 thiss!17480 rules!1920 (print!220 thiss!17480 (singletonSeq!155 separatorToken!170))))) (list!1217 (singletonSeq!155 separatorToken!170))))))

(declare-fun e!125375 () Bool)

(assert (=> d!53835 (= lt!73166 e!125375)))

(declare-fun res!93383 () Bool)

(assert (=> d!53835 (=> (not res!93383) (not e!125375))))

(declare-fun lt!73167 () tuple2!3400)

(assert (=> d!53835 (= res!93383 (= (size!2613 (_1!1916 lt!73167)) 1))))

(assert (=> d!53835 (= lt!73167 (lex!289 thiss!17480 rules!1920 (print!220 thiss!17480 (singletonSeq!155 separatorToken!170))))))

(assert (=> d!53835 (not (isEmpty!1692 rules!1920))))

(assert (=> d!53835 (= (rulesProduceIndividualToken!238 thiss!17480 rules!1920 separatorToken!170) lt!73166)))

(declare-fun b!203955 () Bool)

(declare-fun res!93382 () Bool)

(assert (=> b!203955 (=> (not res!93382) (not e!125375))))

(assert (=> b!203955 (= res!93382 (= (apply!526 (_1!1916 lt!73167) 0) separatorToken!170))))

(declare-fun b!203956 () Bool)

(assert (=> b!203956 (= e!125375 (isEmpty!1689 (_2!1916 lt!73167)))))

(declare-fun b!203957 () Bool)

(assert (=> b!203957 (= e!125376 (isEmpty!1689 (_2!1916 (lex!289 thiss!17480 rules!1920 (print!220 thiss!17480 (singletonSeq!155 separatorToken!170))))))))

(assert (= (and d!53835 res!93383) b!203955))

(assert (= (and b!203955 res!93382) b!203956))

(assert (= (and d!53835 res!93381) b!203957))

(assert (=> d!53835 m!223227))

(declare-fun m!223825 () Bool)

(assert (=> d!53835 m!223825))

(declare-fun m!223827 () Bool)

(assert (=> d!53835 m!223827))

(assert (=> d!53835 m!223227))

(declare-fun m!223829 () Bool)

(assert (=> d!53835 m!223829))

(declare-fun m!223831 () Bool)

(assert (=> d!53835 m!223831))

(assert (=> d!53835 m!223285))

(declare-fun m!223833 () Bool)

(assert (=> d!53835 m!223833))

(assert (=> d!53835 m!223227))

(assert (=> d!53835 m!223829))

(declare-fun m!223835 () Bool)

(assert (=> b!203955 m!223835))

(declare-fun m!223837 () Bool)

(assert (=> b!203956 m!223837))

(assert (=> b!203957 m!223227))

(assert (=> b!203957 m!223227))

(assert (=> b!203957 m!223829))

(assert (=> b!203957 m!223829))

(assert (=> b!203957 m!223831))

(declare-fun m!223839 () Bool)

(assert (=> b!203957 m!223839))

(assert (=> b!203512 d!53835))

(declare-fun d!53859 () Bool)

(assert (=> d!53859 (= (list!1213 (charsOf!258 separatorToken!170)) (list!1216 (c!39073 (charsOf!258 separatorToken!170))))))

(declare-fun bs!20778 () Bool)

(assert (= bs!20778 d!53859))

(declare-fun m!223841 () Bool)

(assert (=> bs!20778 m!223841))

(assert (=> b!203510 d!53859))

(declare-fun d!53861 () Bool)

(assert (=> d!53861 (= (list!1213 (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 (seqFromList!584 (t!30808 tokens!465)) separatorToken!170 0)) (list!1216 (c!39073 (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 (seqFromList!584 (t!30808 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!20779 () Bool)

(assert (= bs!20779 d!53861))

(declare-fun m!223843 () Bool)

(assert (=> bs!20779 m!223843))

(assert (=> b!203510 d!53861))

(declare-fun bs!20780 () Bool)

(declare-fun b!203958 () Bool)

(assert (= bs!20780 (and b!203958 d!53811)))

(declare-fun lambda!6237 () Int)

(assert (=> bs!20780 (not (= lambda!6237 lambda!6227))))

(declare-fun bs!20781 () Bool)

(assert (= bs!20781 (and b!203958 b!203474)))

(assert (=> bs!20781 (= lambda!6237 lambda!6208)))

(declare-fun bs!20782 () Bool)

(assert (= bs!20782 (and b!203958 b!203899)))

(assert (=> bs!20782 (= lambda!6237 lambda!6236)))

(declare-fun bs!20783 () Bool)

(assert (= bs!20783 (and b!203958 b!203847)))

(assert (=> bs!20783 (= lambda!6237 lambda!6228)))

(declare-fun bs!20784 () Bool)

(assert (= bs!20784 (and b!203958 b!203485)))

(assert (=> bs!20784 (not (= lambda!6237 lambda!6207))))

(declare-fun bs!20785 () Bool)

(assert (= bs!20785 (and b!203958 d!53779)))

(assert (=> bs!20785 (= lambda!6237 lambda!6221)))

(declare-fun b!203970 () Bool)

(declare-fun e!125384 () Bool)

(assert (=> b!203970 (= e!125384 true)))

(declare-fun b!203969 () Bool)

(declare-fun e!125383 () Bool)

(assert (=> b!203969 (= e!125383 e!125384)))

(declare-fun b!203968 () Bool)

(declare-fun e!125382 () Bool)

(assert (=> b!203968 (= e!125382 e!125383)))

(assert (=> b!203958 e!125382))

(assert (= b!203969 b!203970))

(assert (= b!203968 b!203969))

(assert (= (and b!203958 ((_ is Cons!3265) rules!1920)) b!203968))

(assert (=> b!203970 (< (dynLambda!1429 order!2117 (toValue!1286 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6237))))

(assert (=> b!203970 (< (dynLambda!1431 order!2121 (toChars!1145 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6237))))

(assert (=> b!203958 true))

(declare-fun e!125377 () List!3274)

(declare-fun e!125379 () List!3274)

(assert (=> b!203958 (= e!125377 e!125379)))

(declare-fun lt!73169 () Unit!3280)

(assert (=> b!203958 (= lt!73169 (forallContained!170 (t!30808 tokens!465) lambda!6237 (h!8663 (t!30808 tokens!465))))))

(declare-fun lt!73172 () List!3274)

(assert (=> b!203958 (= lt!73172 (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 (t!30808 (t!30808 tokens!465)) separatorToken!170))))

(declare-fun lt!73171 () Option!501)

(assert (=> b!203958 (= lt!73171 (maxPrefix!219 thiss!17480 rules!1920 (++!796 (list!1213 (charsOf!258 (h!8663 (t!30808 tokens!465)))) lt!73172)))))

(declare-fun c!39175 () Bool)

(assert (=> b!203958 (= c!39175 (and ((_ is Some!500) lt!73171) (= (_1!1915 (v!14043 lt!73171)) (h!8663 (t!30808 tokens!465)))))))

(declare-fun bm!9806 () Bool)

(declare-fun call!9812 () List!3274)

(declare-fun call!9813 () List!3274)

(assert (=> bm!9806 (= call!9812 call!9813)))

(declare-fun c!39173 () Bool)

(declare-fun c!39176 () Bool)

(assert (=> bm!9806 (= c!39173 c!39176)))

(declare-fun bm!9807 () Bool)

(declare-fun call!9811 () BalanceConc!2064)

(assert (=> bm!9807 (= call!9811 (charsOf!258 (h!8663 (t!30808 tokens!465))))))

(declare-fun bm!9808 () Bool)

(declare-fun call!9814 () BalanceConc!2064)

(assert (=> bm!9808 (= call!9814 call!9811)))

(declare-fun b!203959 () Bool)

(assert (=> b!203959 (= c!39176 (and ((_ is Some!500) lt!73171) (not (= (_1!1915 (v!14043 lt!73171)) (h!8663 (t!30808 tokens!465))))))))

(declare-fun e!125380 () List!3274)

(assert (=> b!203959 (= e!125379 e!125380)))

(declare-fun b!203960 () Bool)

(declare-fun call!9815 () List!3274)

(assert (=> b!203960 (= e!125380 (++!796 call!9815 lt!73172))))

(declare-fun b!203961 () Bool)

(declare-fun e!125381 () List!3274)

(assert (=> b!203961 (= e!125381 (list!1213 call!9814))))

(declare-fun b!203962 () Bool)

(assert (=> b!203962 (= e!125377 Nil!3264)))

(declare-fun d!53863 () Bool)

(declare-fun c!39174 () Bool)

(assert (=> d!53863 (= c!39174 ((_ is Cons!3266) (t!30808 tokens!465)))))

(assert (=> d!53863 (= (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 (t!30808 tokens!465) separatorToken!170) e!125377)))

(declare-fun b!203963 () Bool)

(assert (=> b!203963 (= e!125380 Nil!3264)))

(assert (=> b!203963 (= (print!220 thiss!17480 (singletonSeq!155 (h!8663 (t!30808 tokens!465)))) (printTailRec!183 thiss!17480 (singletonSeq!155 (h!8663 (t!30808 tokens!465))) 0 (BalanceConc!2065 Empty!1028)))))

(declare-fun lt!73173 () Unit!3280)

(declare-fun Unit!3294 () Unit!3280)

(assert (=> b!203963 (= lt!73173 Unit!3294)))

(declare-fun lt!73170 () Unit!3280)

(assert (=> b!203963 (= lt!73170 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!64 thiss!17480 rules!1920 call!9812 lt!73172))))

(assert (=> b!203963 false))

(declare-fun lt!73168 () Unit!3280)

(declare-fun Unit!3295 () Unit!3280)

(assert (=> b!203963 (= lt!73168 Unit!3295)))

(declare-fun bm!9809 () Bool)

(declare-fun c!39177 () Bool)

(assert (=> bm!9809 (= c!39177 c!39175)))

(assert (=> bm!9809 (= call!9815 (++!796 e!125381 (ite c!39175 lt!73172 call!9812)))))

(declare-fun b!203964 () Bool)

(declare-fun e!125378 () BalanceConc!2064)

(assert (=> b!203964 (= e!125378 call!9814)))

(declare-fun b!203965 () Bool)

(assert (=> b!203965 (= e!125379 call!9815)))

(declare-fun b!203966 () Bool)

(assert (=> b!203966 (= e!125378 (charsOf!258 separatorToken!170))))

(declare-fun b!203967 () Bool)

(assert (=> b!203967 (= e!125381 call!9813)))

(declare-fun bm!9810 () Bool)

(assert (=> bm!9810 (= call!9813 (list!1213 (ite c!39175 call!9811 e!125378)))))

(assert (= (and d!53863 c!39174) b!203958))

(assert (= (and d!53863 (not c!39174)) b!203962))

(assert (= (and b!203958 c!39175) b!203965))

(assert (= (and b!203958 (not c!39175)) b!203959))

(assert (= (and b!203959 c!39176) b!203960))

(assert (= (and b!203959 (not c!39176)) b!203963))

(assert (= (or b!203960 b!203963) bm!9808))

(assert (= (or b!203960 b!203963) bm!9806))

(assert (= (and bm!9806 c!39173) b!203966))

(assert (= (and bm!9806 (not c!39173)) b!203964))

(assert (= (or b!203965 bm!9808) bm!9807))

(assert (= (or b!203965 bm!9806) bm!9810))

(assert (= (or b!203965 b!203960) bm!9809))

(assert (= (and bm!9809 c!39177) b!203967))

(assert (= (and bm!9809 (not c!39177)) b!203961))

(declare-fun m!223845 () Bool)

(assert (=> b!203963 m!223845))

(assert (=> b!203963 m!223845))

(declare-fun m!223847 () Bool)

(assert (=> b!203963 m!223847))

(assert (=> b!203963 m!223845))

(declare-fun m!223849 () Bool)

(assert (=> b!203963 m!223849))

(declare-fun m!223851 () Bool)

(assert (=> b!203963 m!223851))

(declare-fun m!223853 () Bool)

(assert (=> b!203960 m!223853))

(assert (=> b!203966 m!223139))

(declare-fun m!223855 () Bool)

(assert (=> b!203958 m!223855))

(declare-fun m!223857 () Bool)

(assert (=> b!203958 m!223857))

(declare-fun m!223859 () Bool)

(assert (=> b!203958 m!223859))

(assert (=> b!203958 m!223855))

(declare-fun m!223861 () Bool)

(assert (=> b!203958 m!223861))

(declare-fun m!223863 () Bool)

(assert (=> b!203958 m!223863))

(assert (=> b!203958 m!223859))

(assert (=> b!203958 m!223857))

(declare-fun m!223865 () Bool)

(assert (=> b!203958 m!223865))

(declare-fun m!223867 () Bool)

(assert (=> bm!9809 m!223867))

(declare-fun m!223869 () Bool)

(assert (=> b!203961 m!223869))

(assert (=> bm!9807 m!223859))

(declare-fun m!223871 () Bool)

(assert (=> bm!9810 m!223871))

(assert (=> b!203510 d!53863))

(declare-fun d!53865 () Bool)

(assert (=> d!53865 (= (++!796 (++!796 lt!72917 lt!72912) lt!72928) (++!796 lt!72917 (++!796 lt!72912 lt!72928)))))

(declare-fun lt!73176 () Unit!3280)

(declare-fun choose!2009 (List!3274 List!3274 List!3274) Unit!3280)

(assert (=> d!53865 (= lt!73176 (choose!2009 lt!72917 lt!72912 lt!72928))))

(assert (=> d!53865 (= (lemmaConcatAssociativity!298 lt!72917 lt!72912 lt!72928) lt!73176)))

(declare-fun bs!20786 () Bool)

(assert (= bs!20786 d!53865))

(assert (=> bs!20786 m!223145))

(assert (=> bs!20786 m!223133))

(assert (=> bs!20786 m!223133))

(assert (=> bs!20786 m!223143))

(declare-fun m!223873 () Bool)

(assert (=> bs!20786 m!223873))

(assert (=> bs!20786 m!223145))

(declare-fun m!223875 () Bool)

(assert (=> bs!20786 m!223875))

(assert (=> b!203510 d!53865))

(declare-fun bs!20787 () Bool)

(declare-fun d!53867 () Bool)

(assert (= bs!20787 (and d!53867 b!203958)))

(declare-fun lambda!6238 () Int)

(assert (=> bs!20787 (not (= lambda!6238 lambda!6237))))

(declare-fun bs!20788 () Bool)

(assert (= bs!20788 (and d!53867 d!53811)))

(assert (=> bs!20788 (= lambda!6238 lambda!6227)))

(declare-fun bs!20789 () Bool)

(assert (= bs!20789 (and d!53867 b!203474)))

(assert (=> bs!20789 (not (= lambda!6238 lambda!6208))))

(declare-fun bs!20790 () Bool)

(assert (= bs!20790 (and d!53867 b!203899)))

(assert (=> bs!20790 (not (= lambda!6238 lambda!6236))))

(declare-fun bs!20791 () Bool)

(assert (= bs!20791 (and d!53867 b!203847)))

(assert (=> bs!20791 (not (= lambda!6238 lambda!6228))))

(declare-fun bs!20792 () Bool)

(assert (= bs!20792 (and d!53867 b!203485)))

(assert (=> bs!20792 (= lambda!6238 lambda!6207)))

(declare-fun bs!20793 () Bool)

(assert (= bs!20793 (and d!53867 d!53779)))

(assert (=> bs!20793 (not (= lambda!6238 lambda!6221))))

(declare-fun bs!20794 () Bool)

(declare-fun b!203980 () Bool)

(assert (= bs!20794 (and b!203980 b!203958)))

(declare-fun lambda!6239 () Int)

(assert (=> bs!20794 (= lambda!6239 lambda!6237)))

(declare-fun bs!20795 () Bool)

(assert (= bs!20795 (and b!203980 d!53867)))

(assert (=> bs!20795 (not (= lambda!6239 lambda!6238))))

(declare-fun bs!20796 () Bool)

(assert (= bs!20796 (and b!203980 d!53811)))

(assert (=> bs!20796 (not (= lambda!6239 lambda!6227))))

(declare-fun bs!20797 () Bool)

(assert (= bs!20797 (and b!203980 b!203474)))

(assert (=> bs!20797 (= lambda!6239 lambda!6208)))

(declare-fun bs!20798 () Bool)

(assert (= bs!20798 (and b!203980 b!203899)))

(assert (=> bs!20798 (= lambda!6239 lambda!6236)))

(declare-fun bs!20799 () Bool)

(assert (= bs!20799 (and b!203980 b!203847)))

(assert (=> bs!20799 (= lambda!6239 lambda!6228)))

(declare-fun bs!20800 () Bool)

(assert (= bs!20800 (and b!203980 b!203485)))

(assert (=> bs!20800 (not (= lambda!6239 lambda!6207))))

(declare-fun bs!20801 () Bool)

(assert (= bs!20801 (and b!203980 d!53779)))

(assert (=> bs!20801 (= lambda!6239 lambda!6221)))

(declare-fun b!203984 () Bool)

(declare-fun e!125394 () Bool)

(assert (=> b!203984 (= e!125394 true)))

(declare-fun b!203983 () Bool)

(declare-fun e!125393 () Bool)

(assert (=> b!203983 (= e!125393 e!125394)))

(declare-fun b!203982 () Bool)

(declare-fun e!125392 () Bool)

(assert (=> b!203982 (= e!125392 e!125393)))

(assert (=> b!203980 e!125392))

(assert (= b!203983 b!203984))

(assert (= b!203982 b!203983))

(assert (= (and b!203980 ((_ is Cons!3265) rules!1920)) b!203982))

(assert (=> b!203984 (< (dynLambda!1429 order!2117 (toValue!1286 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6239))))

(assert (=> b!203984 (< (dynLambda!1431 order!2121 (toChars!1145 (transformation!603 (h!8662 rules!1920)))) (dynLambda!1430 order!2119 lambda!6239))))

(assert (=> b!203980 true))

(declare-fun b!203971 () Bool)

(declare-fun e!125387 () Bool)

(assert (=> b!203971 (= e!125387 (<= 0 (size!2613 (seqFromList!584 (t!30808 tokens!465)))))))

(declare-fun b!203972 () Bool)

(declare-fun e!125389 () BalanceConc!2064)

(declare-fun call!9816 () Token!950)

(assert (=> b!203972 (= e!125389 (charsOf!258 call!9816))))

(declare-fun lt!73185 () BalanceConc!2064)

(assert (=> d!53867 (= (list!1213 lt!73185) (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 (dropList!116 (seqFromList!584 (t!30808 tokens!465)) 0) separatorToken!170))))

(declare-fun e!125391 () BalanceConc!2064)

(assert (=> d!53867 (= lt!73185 e!125391)))

(declare-fun c!39178 () Bool)

(assert (=> d!53867 (= c!39178 (>= 0 (size!2613 (seqFromList!584 (t!30808 tokens!465)))))))

(declare-fun lt!73187 () Unit!3280)

(assert (=> d!53867 (= lt!73187 (lemmaContentSubsetPreservesForall!60 (list!1217 (seqFromList!584 (t!30808 tokens!465))) (dropList!116 (seqFromList!584 (t!30808 tokens!465)) 0) lambda!6238))))

(assert (=> d!53867 e!125387))

(declare-fun res!93386 () Bool)

(assert (=> d!53867 (=> (not res!93386) (not e!125387))))

(assert (=> d!53867 (= res!93386 (>= 0 0))))

(assert (=> d!53867 (= (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 (seqFromList!584 (t!30808 tokens!465)) separatorToken!170 0) lt!73185)))

(declare-fun b!203973 () Bool)

(declare-fun e!125388 () BalanceConc!2064)

(declare-fun call!9820 () BalanceConc!2064)

(declare-fun lt!73180 () BalanceConc!2064)

(assert (=> b!203973 (= e!125388 (++!798 call!9820 lt!73180))))

(declare-fun b!203974 () Bool)

(declare-fun call!9818 () BalanceConc!2064)

(assert (=> b!203974 (= e!125389 call!9818)))

(declare-fun b!203975 () Bool)

(assert (=> b!203975 (= e!125388 (BalanceConc!2065 Empty!1028))))

(assert (=> b!203975 (= (print!220 thiss!17480 (singletonSeq!155 call!9816)) (printTailRec!183 thiss!17480 (singletonSeq!155 call!9816) 0 (BalanceConc!2065 Empty!1028)))))

(declare-fun lt!73184 () Unit!3280)

(declare-fun Unit!3296 () Unit!3280)

(assert (=> b!203975 (= lt!73184 Unit!3296)))

(declare-fun call!9817 () BalanceConc!2064)

(declare-fun lt!73179 () Unit!3280)

(assert (=> b!203975 (= lt!73179 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!64 thiss!17480 rules!1920 (list!1213 call!9817) (list!1213 lt!73180)))))

(assert (=> b!203975 false))

(declare-fun lt!73189 () Unit!3280)

(declare-fun Unit!3297 () Unit!3280)

(assert (=> b!203975 (= lt!73189 Unit!3297)))

(declare-fun bm!9811 () Bool)

(declare-fun call!9819 () Token!950)

(assert (=> bm!9811 (= call!9816 call!9819)))

(declare-fun b!203976 () Bool)

(declare-fun e!125390 () BalanceConc!2064)

(assert (=> b!203976 (= e!125390 call!9820)))

(declare-fun b!203977 () Bool)

(declare-fun e!125386 () Bool)

(declare-fun lt!73181 () Option!503)

(assert (=> b!203977 (= e!125386 (not (= (_1!1917 (v!14045 lt!73181)) call!9819)))))

(declare-fun c!39180 () Bool)

(declare-fun c!39179 () Bool)

(declare-fun bm!9812 () Bool)

(assert (=> bm!9812 (= call!9818 (charsOf!258 (ite c!39179 call!9819 (ite c!39180 separatorToken!170 call!9816))))))

(declare-fun b!203978 () Bool)

(declare-fun e!125385 () Bool)

(assert (=> b!203978 (= e!125385 (= (_1!1917 (v!14045 lt!73181)) (apply!526 (seqFromList!584 (t!30808 tokens!465)) 0)))))

(declare-fun b!203979 () Bool)

(assert (=> b!203979 (= e!125391 (BalanceConc!2065 Empty!1028))))

(declare-fun bm!9813 () Bool)

(declare-fun c!39181 () Bool)

(assert (=> bm!9813 (= c!39181 c!39179)))

(assert (=> bm!9813 (= call!9820 (++!798 e!125389 (ite c!39179 lt!73180 call!9817)))))

(declare-fun bm!9814 () Bool)

(assert (=> bm!9814 (= call!9819 (apply!526 (seqFromList!584 (t!30808 tokens!465)) 0))))

(assert (=> b!203980 (= e!125391 e!125390)))

(declare-fun lt!73183 () List!3276)

(assert (=> b!203980 (= lt!73183 (list!1217 (seqFromList!584 (t!30808 tokens!465))))))

(declare-fun lt!73188 () Unit!3280)

(assert (=> b!203980 (= lt!73188 (lemmaDropApply!156 lt!73183 0))))

(assert (=> b!203980 (= (head!701 (drop!169 lt!73183 0)) (apply!528 lt!73183 0))))

(declare-fun lt!73182 () Unit!3280)

(assert (=> b!203980 (= lt!73182 lt!73188)))

(declare-fun lt!73178 () List!3276)

(assert (=> b!203980 (= lt!73178 (list!1217 (seqFromList!584 (t!30808 tokens!465))))))

(declare-fun lt!73190 () Unit!3280)

(assert (=> b!203980 (= lt!73190 (lemmaDropTail!148 lt!73178 0))))

(assert (=> b!203980 (= (tail!396 (drop!169 lt!73178 0)) (drop!169 lt!73178 (+ 0 1)))))

(declare-fun lt!73186 () Unit!3280)

(assert (=> b!203980 (= lt!73186 lt!73190)))

(declare-fun lt!73177 () Unit!3280)

(assert (=> b!203980 (= lt!73177 (forallContained!170 (list!1217 (seqFromList!584 (t!30808 tokens!465))) lambda!6239 (apply!526 (seqFromList!584 (t!30808 tokens!465)) 0)))))

(assert (=> b!203980 (= lt!73180 (printWithSeparatorTokenWhenNeededRec!172 thiss!17480 rules!1920 (seqFromList!584 (t!30808 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!203980 (= lt!73181 (maxPrefixZipperSequence!182 thiss!17480 rules!1920 (++!798 (charsOf!258 (apply!526 (seqFromList!584 (t!30808 tokens!465)) 0)) lt!73180)))))

(declare-fun res!93384 () Bool)

(assert (=> b!203980 (= res!93384 ((_ is Some!502) lt!73181))))

(assert (=> b!203980 (=> (not res!93384) (not e!125385))))

(assert (=> b!203980 (= c!39179 e!125385)))

(declare-fun b!203981 () Bool)

(assert (=> b!203981 (= c!39180 e!125386)))

(declare-fun res!93385 () Bool)

(assert (=> b!203981 (=> (not res!93385) (not e!125386))))

(assert (=> b!203981 (= res!93385 ((_ is Some!502) lt!73181))))

(assert (=> b!203981 (= e!125390 e!125388)))

(declare-fun bm!9815 () Bool)

(assert (=> bm!9815 (= call!9817 call!9818)))

(assert (= (and d!53867 res!93386) b!203971))

(assert (= (and d!53867 c!39178) b!203979))

(assert (= (and d!53867 (not c!39178)) b!203980))

(assert (= (and b!203980 res!93384) b!203978))

(assert (= (and b!203980 c!39179) b!203976))

(assert (= (and b!203980 (not c!39179)) b!203981))

(assert (= (and b!203981 res!93385) b!203977))

(assert (= (and b!203981 c!39180) b!203973))

(assert (= (and b!203981 (not c!39180)) b!203975))

(assert (= (or b!203973 b!203975) bm!9811))

(assert (= (or b!203973 b!203975) bm!9815))

(assert (= (or b!203976 bm!9811 b!203977) bm!9814))

(assert (= (or b!203976 bm!9815) bm!9812))

(assert (= (or b!203976 b!203973) bm!9813))

(assert (= (and bm!9813 c!39181) b!203974))

(assert (= (and bm!9813 (not c!39181)) b!203972))

(declare-fun m!223877 () Bool)

(assert (=> b!203972 m!223877))

(declare-fun m!223879 () Bool)

(assert (=> bm!9812 m!223879))

(declare-fun m!223881 () Bool)

(assert (=> bm!9813 m!223881))

(assert (=> bm!9814 m!223129))

(declare-fun m!223883 () Bool)

(assert (=> bm!9814 m!223883))

(declare-fun m!223885 () Bool)

(assert (=> b!203973 m!223885))

(declare-fun m!223887 () Bool)

(assert (=> b!203975 m!223887))

(assert (=> b!203975 m!223887))

(declare-fun m!223889 () Bool)

(assert (=> b!203975 m!223889))

(assert (=> b!203975 m!223887))

(declare-fun m!223891 () Bool)

(assert (=> b!203975 m!223891))

(declare-fun m!223893 () Bool)

(assert (=> b!203975 m!223893))

(declare-fun m!223895 () Bool)

(assert (=> b!203975 m!223895))

(declare-fun m!223897 () Bool)

(assert (=> b!203975 m!223897))

(assert (=> b!203975 m!223895))

(assert (=> b!203975 m!223893))

(assert (=> b!203971 m!223129))

(declare-fun m!223899 () Bool)

(assert (=> b!203971 m!223899))

(declare-fun m!223901 () Bool)

(assert (=> d!53867 m!223901))

(declare-fun m!223903 () Bool)

(assert (=> d!53867 m!223903))

(declare-fun m!223905 () Bool)

(assert (=> d!53867 m!223905))

(declare-fun m!223907 () Bool)

(assert (=> d!53867 m!223907))

(assert (=> d!53867 m!223903))

(declare-fun m!223909 () Bool)

(assert (=> d!53867 m!223909))

(assert (=> d!53867 m!223129))

(assert (=> d!53867 m!223903))

(assert (=> d!53867 m!223129))

(assert (=> d!53867 m!223899))

(assert (=> d!53867 m!223129))

(assert (=> d!53867 m!223907))

(assert (=> b!203978 m!223129))

(assert (=> b!203978 m!223883))

(declare-fun m!223911 () Bool)

(assert (=> b!203980 m!223911))

(declare-fun m!223913 () Bool)

(assert (=> b!203980 m!223913))

(assert (=> b!203980 m!223883))

(declare-fun m!223915 () Bool)

(assert (=> b!203980 m!223915))

(declare-fun m!223917 () Bool)

(assert (=> b!203980 m!223917))

(declare-fun m!223919 () Bool)

(assert (=> b!203980 m!223919))

(assert (=> b!203980 m!223129))

(assert (=> b!203980 m!223883))

(assert (=> b!203980 m!223129))

(assert (=> b!203980 m!223907))

(assert (=> b!203980 m!223915))

(declare-fun m!223921 () Bool)

(assert (=> b!203980 m!223921))

(declare-fun m!223923 () Bool)

(assert (=> b!203980 m!223923))

(assert (=> b!203980 m!223921))

(declare-fun m!223925 () Bool)

(assert (=> b!203980 m!223925))

(assert (=> b!203980 m!223917))

(assert (=> b!203980 m!223129))

(declare-fun m!223927 () Bool)

(assert (=> b!203980 m!223927))

(declare-fun m!223929 () Bool)

(assert (=> b!203980 m!223929))

(declare-fun m!223931 () Bool)

(assert (=> b!203980 m!223931))

(declare-fun m!223933 () Bool)

(assert (=> b!203980 m!223933))

(assert (=> b!203980 m!223907))

(assert (=> b!203980 m!223883))

(declare-fun m!223935 () Bool)

(assert (=> b!203980 m!223935))

(assert (=> b!203980 m!223931))

(assert (=> b!203510 d!53867))

(declare-fun d!53869 () Bool)

(declare-fun lt!73193 () BalanceConc!2064)

(assert (=> d!53869 (= (list!1213 lt!73193) (originalCharacters!646 separatorToken!170))))

(assert (=> d!53869 (= lt!73193 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (value!21501 separatorToken!170)))))

(assert (=> d!53869 (= (charsOf!258 separatorToken!170) lt!73193)))

(declare-fun b_lambda!5249 () Bool)

(assert (=> (not b_lambda!5249) (not d!53869)))

(declare-fun t!30845 () Bool)

(declare-fun tb!9441 () Bool)

(assert (=> (and b!203496 (= (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170)))) t!30845) tb!9441))

(declare-fun b!203985 () Bool)

(declare-fun e!125395 () Bool)

(declare-fun tp!90292 () Bool)

(assert (=> b!203985 (= e!125395 (and (inv!4109 (c!39073 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (value!21501 separatorToken!170)))) tp!90292))))

(declare-fun result!12448 () Bool)

(assert (=> tb!9441 (= result!12448 (and (inv!4110 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (value!21501 separatorToken!170))) e!125395))))

(assert (= tb!9441 b!203985))

(declare-fun m!223937 () Bool)

(assert (=> b!203985 m!223937))

(declare-fun m!223939 () Bool)

(assert (=> tb!9441 m!223939))

(assert (=> d!53869 t!30845))

(declare-fun b_and!14733 () Bool)

(assert (= b_and!14721 (and (=> t!30845 result!12448) b_and!14733)))

(declare-fun tb!9443 () Bool)

(declare-fun t!30847 () Bool)

(assert (=> (and b!203490 (= (toChars!1145 (transformation!603 (h!8662 rules!1920))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170)))) t!30847) tb!9443))

(declare-fun result!12450 () Bool)

(assert (= result!12450 result!12448))

(assert (=> d!53869 t!30847))

(declare-fun b_and!14735 () Bool)

(assert (= b_and!14723 (and (=> t!30847 result!12450) b_and!14735)))

(declare-fun t!30849 () Bool)

(declare-fun tb!9445 () Bool)

(assert (=> (and b!203483 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170)))) t!30849) tb!9445))

(declare-fun result!12452 () Bool)

(assert (= result!12452 result!12448))

(assert (=> d!53869 t!30849))

(declare-fun b_and!14737 () Bool)

(assert (= b_and!14725 (and (=> t!30849 result!12452) b_and!14737)))

(declare-fun m!223941 () Bool)

(assert (=> d!53869 m!223941))

(declare-fun m!223943 () Bool)

(assert (=> d!53869 m!223943))

(assert (=> b!203510 d!53869))

(declare-fun d!53871 () Bool)

(assert (=> d!53871 (= (list!1213 (charsOf!258 (h!8663 tokens!465))) (list!1216 (c!39073 (charsOf!258 (h!8663 tokens!465)))))))

(declare-fun bs!20802 () Bool)

(assert (= bs!20802 d!53871))

(declare-fun m!223945 () Bool)

(assert (=> bs!20802 m!223945))

(assert (=> b!203510 d!53871))

(declare-fun d!53873 () Bool)

(declare-fun lt!73194 () BalanceConc!2064)

(assert (=> d!53873 (= (list!1213 lt!73194) (originalCharacters!646 (h!8663 tokens!465)))))

(assert (=> d!53873 (= lt!73194 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (value!21501 (h!8663 tokens!465))))))

(assert (=> d!53873 (= (charsOf!258 (h!8663 tokens!465)) lt!73194)))

(declare-fun b_lambda!5251 () Bool)

(assert (=> (not b_lambda!5251) (not d!53873)))

(assert (=> d!53873 t!30821))

(declare-fun b_and!14739 () Bool)

(assert (= b_and!14733 (and (=> t!30821 result!12432) b_and!14739)))

(assert (=> d!53873 t!30823))

(declare-fun b_and!14741 () Bool)

(assert (= b_and!14735 (and (=> t!30823 result!12436) b_and!14741)))

(assert (=> d!53873 t!30825))

(declare-fun b_and!14743 () Bool)

(assert (= b_and!14737 (and (=> t!30825 result!12438) b_and!14743)))

(declare-fun m!223947 () Bool)

(assert (=> d!53873 m!223947))

(assert (=> d!53873 m!223595))

(assert (=> b!203510 d!53873))

(declare-fun d!53875 () Bool)

(declare-fun e!125397 () Bool)

(assert (=> d!53875 e!125397))

(declare-fun res!93388 () Bool)

(assert (=> d!53875 (=> (not res!93388) (not e!125397))))

(declare-fun lt!73195 () List!3274)

(assert (=> d!53875 (= res!93388 (= (content!446 lt!73195) ((_ map or) (content!446 lt!72917) (content!446 lt!72912))))))

(declare-fun e!125396 () List!3274)

(assert (=> d!53875 (= lt!73195 e!125396)))

(declare-fun c!39182 () Bool)

(assert (=> d!53875 (= c!39182 ((_ is Nil!3264) lt!72917))))

(assert (=> d!53875 (= (++!796 lt!72917 lt!72912) lt!73195)))

(declare-fun b!203989 () Bool)

(assert (=> b!203989 (= e!125397 (or (not (= lt!72912 Nil!3264)) (= lt!73195 lt!72917)))))

(declare-fun b!203988 () Bool)

(declare-fun res!93387 () Bool)

(assert (=> b!203988 (=> (not res!93387) (not e!125397))))

(assert (=> b!203988 (= res!93387 (= (size!2614 lt!73195) (+ (size!2614 lt!72917) (size!2614 lt!72912))))))

(declare-fun b!203987 () Bool)

(assert (=> b!203987 (= e!125396 (Cons!3264 (h!8661 lt!72917) (++!796 (t!30806 lt!72917) lt!72912)))))

(declare-fun b!203986 () Bool)

(assert (=> b!203986 (= e!125396 lt!72912)))

(assert (= (and d!53875 c!39182) b!203986))

(assert (= (and d!53875 (not c!39182)) b!203987))

(assert (= (and d!53875 res!93388) b!203988))

(assert (= (and b!203988 res!93387) b!203989))

(declare-fun m!223949 () Bool)

(assert (=> d!53875 m!223949))

(assert (=> d!53875 m!223471))

(declare-fun m!223951 () Bool)

(assert (=> d!53875 m!223951))

(declare-fun m!223953 () Bool)

(assert (=> b!203988 m!223953))

(assert (=> b!203988 m!223453))

(declare-fun m!223955 () Bool)

(assert (=> b!203988 m!223955))

(declare-fun m!223957 () Bool)

(assert (=> b!203987 m!223957))

(assert (=> b!203510 d!53875))

(declare-fun d!53877 () Bool)

(assert (=> d!53877 (= (seqFromList!584 (t!30808 tokens!465)) (fromListB!218 (t!30808 tokens!465)))))

(declare-fun bs!20803 () Bool)

(assert (= bs!20803 d!53877))

(declare-fun m!223959 () Bool)

(assert (=> bs!20803 m!223959))

(assert (=> b!203510 d!53877))

(declare-fun d!53879 () Bool)

(declare-fun e!125399 () Bool)

(assert (=> d!53879 e!125399))

(declare-fun res!93390 () Bool)

(assert (=> d!53879 (=> (not res!93390) (not e!125399))))

(declare-fun lt!73196 () List!3274)

(assert (=> d!53879 (= res!93390 (= (content!446 lt!73196) ((_ map or) (content!446 (++!796 lt!72917 lt!72912)) (content!446 lt!72928))))))

(declare-fun e!125398 () List!3274)

(assert (=> d!53879 (= lt!73196 e!125398)))

(declare-fun c!39183 () Bool)

(assert (=> d!53879 (= c!39183 ((_ is Nil!3264) (++!796 lt!72917 lt!72912)))))

(assert (=> d!53879 (= (++!796 (++!796 lt!72917 lt!72912) lt!72928) lt!73196)))

(declare-fun b!203993 () Bool)

(assert (=> b!203993 (= e!125399 (or (not (= lt!72928 Nil!3264)) (= lt!73196 (++!796 lt!72917 lt!72912))))))

(declare-fun b!203992 () Bool)

(declare-fun res!93389 () Bool)

(assert (=> b!203992 (=> (not res!93389) (not e!125399))))

(assert (=> b!203992 (= res!93389 (= (size!2614 lt!73196) (+ (size!2614 (++!796 lt!72917 lt!72912)) (size!2614 lt!72928))))))

(declare-fun b!203991 () Bool)

(assert (=> b!203991 (= e!125398 (Cons!3264 (h!8661 (++!796 lt!72917 lt!72912)) (++!796 (t!30806 (++!796 lt!72917 lt!72912)) lt!72928)))))

(declare-fun b!203990 () Bool)

(assert (=> b!203990 (= e!125398 lt!72928)))

(assert (= (and d!53879 c!39183) b!203990))

(assert (= (and d!53879 (not c!39183)) b!203991))

(assert (= (and d!53879 res!93390) b!203992))

(assert (= (and b!203992 res!93389) b!203993))

(declare-fun m!223961 () Bool)

(assert (=> d!53879 m!223961))

(assert (=> d!53879 m!223133))

(declare-fun m!223963 () Bool)

(assert (=> d!53879 m!223963))

(assert (=> d!53879 m!223473))

(declare-fun m!223965 () Bool)

(assert (=> b!203992 m!223965))

(assert (=> b!203992 m!223133))

(declare-fun m!223967 () Bool)

(assert (=> b!203992 m!223967))

(assert (=> b!203992 m!223477))

(declare-fun m!223969 () Bool)

(assert (=> b!203991 m!223969))

(assert (=> b!203510 d!53879))

(declare-fun d!53881 () Bool)

(declare-fun e!125401 () Bool)

(assert (=> d!53881 e!125401))

(declare-fun res!93392 () Bool)

(assert (=> d!53881 (=> (not res!93392) (not e!125401))))

(declare-fun lt!73197 () List!3274)

(assert (=> d!53881 (= res!93392 (= (content!446 lt!73197) ((_ map or) (content!446 lt!72912) (content!446 lt!72928))))))

(declare-fun e!125400 () List!3274)

(assert (=> d!53881 (= lt!73197 e!125400)))

(declare-fun c!39184 () Bool)

(assert (=> d!53881 (= c!39184 ((_ is Nil!3264) lt!72912))))

(assert (=> d!53881 (= (++!796 lt!72912 lt!72928) lt!73197)))

(declare-fun b!203997 () Bool)

(assert (=> b!203997 (= e!125401 (or (not (= lt!72928 Nil!3264)) (= lt!73197 lt!72912)))))

(declare-fun b!203996 () Bool)

(declare-fun res!93391 () Bool)

(assert (=> b!203996 (=> (not res!93391) (not e!125401))))

(assert (=> b!203996 (= res!93391 (= (size!2614 lt!73197) (+ (size!2614 lt!72912) (size!2614 lt!72928))))))

(declare-fun b!203995 () Bool)

(assert (=> b!203995 (= e!125400 (Cons!3264 (h!8661 lt!72912) (++!796 (t!30806 lt!72912) lt!72928)))))

(declare-fun b!203994 () Bool)

(assert (=> b!203994 (= e!125400 lt!72928)))

(assert (= (and d!53881 c!39184) b!203994))

(assert (= (and d!53881 (not c!39184)) b!203995))

(assert (= (and d!53881 res!93392) b!203996))

(assert (= (and b!203996 res!93391) b!203997))

(declare-fun m!223971 () Bool)

(assert (=> d!53881 m!223971))

(assert (=> d!53881 m!223951))

(assert (=> d!53881 m!223473))

(declare-fun m!223973 () Bool)

(assert (=> b!203996 m!223973))

(assert (=> b!203996 m!223955))

(assert (=> b!203996 m!223477))

(declare-fun m!223975 () Bool)

(assert (=> b!203995 m!223975))

(assert (=> b!203510 d!53881))

(declare-fun d!53883 () Bool)

(declare-fun e!125403 () Bool)

(assert (=> d!53883 e!125403))

(declare-fun res!93394 () Bool)

(assert (=> d!53883 (=> (not res!93394) (not e!125403))))

(declare-fun lt!73198 () List!3274)

(assert (=> d!53883 (= res!93394 (= (content!446 lt!73198) ((_ map or) (content!446 lt!72917) (content!446 lt!72932))))))

(declare-fun e!125402 () List!3274)

(assert (=> d!53883 (= lt!73198 e!125402)))

(declare-fun c!39185 () Bool)

(assert (=> d!53883 (= c!39185 ((_ is Nil!3264) lt!72917))))

(assert (=> d!53883 (= (++!796 lt!72917 lt!72932) lt!73198)))

(declare-fun b!204001 () Bool)

(assert (=> b!204001 (= e!125403 (or (not (= lt!72932 Nil!3264)) (= lt!73198 lt!72917)))))

(declare-fun b!204000 () Bool)

(declare-fun res!93393 () Bool)

(assert (=> b!204000 (=> (not res!93393) (not e!125403))))

(assert (=> b!204000 (= res!93393 (= (size!2614 lt!73198) (+ (size!2614 lt!72917) (size!2614 lt!72932))))))

(declare-fun b!203999 () Bool)

(assert (=> b!203999 (= e!125402 (Cons!3264 (h!8661 lt!72917) (++!796 (t!30806 lt!72917) lt!72932)))))

(declare-fun b!203998 () Bool)

(assert (=> b!203998 (= e!125402 lt!72932)))

(assert (= (and d!53883 c!39185) b!203998))

(assert (= (and d!53883 (not c!39185)) b!203999))

(assert (= (and d!53883 res!93394) b!204000))

(assert (= (and b!204000 res!93393) b!204001))

(declare-fun m!223977 () Bool)

(assert (=> d!53883 m!223977))

(assert (=> d!53883 m!223471))

(declare-fun m!223979 () Bool)

(assert (=> d!53883 m!223979))

(declare-fun m!223981 () Bool)

(assert (=> b!204000 m!223981))

(assert (=> b!204000 m!223453))

(declare-fun m!223983 () Bool)

(assert (=> b!204000 m!223983))

(declare-fun m!223985 () Bool)

(assert (=> b!203999 m!223985))

(assert (=> b!203510 d!53883))

(declare-fun d!53885 () Bool)

(declare-fun lt!73207 () Bool)

(assert (=> d!53885 (= lt!73207 (isEmpty!1688 (list!1217 (_1!1916 (lex!289 thiss!17480 rules!1920 (seqFromList!583 lt!72917))))))))

(declare-fun isEmpty!1698 (Conc!1029) Bool)

(assert (=> d!53885 (= lt!73207 (isEmpty!1698 (c!39075 (_1!1916 (lex!289 thiss!17480 rules!1920 (seqFromList!583 lt!72917))))))))

(assert (=> d!53885 (= (isEmpty!1690 (_1!1916 (lex!289 thiss!17480 rules!1920 (seqFromList!583 lt!72917)))) lt!73207)))

(declare-fun bs!20804 () Bool)

(assert (= bs!20804 d!53885))

(declare-fun m!223987 () Bool)

(assert (=> bs!20804 m!223987))

(assert (=> bs!20804 m!223987))

(declare-fun m!223989 () Bool)

(assert (=> bs!20804 m!223989))

(declare-fun m!223991 () Bool)

(assert (=> bs!20804 m!223991))

(assert (=> b!203468 d!53885))

(declare-fun b!204071 () Bool)

(declare-fun e!125441 () Bool)

(declare-fun lt!73258 () tuple2!3400)

(assert (=> b!204071 (= e!125441 (not (isEmpty!1690 (_1!1916 lt!73258))))))

(declare-fun d!53887 () Bool)

(declare-fun e!125443 () Bool)

(assert (=> d!53887 e!125443))

(declare-fun res!93444 () Bool)

(assert (=> d!53887 (=> (not res!93444) (not e!125443))))

(declare-fun e!125442 () Bool)

(assert (=> d!53887 (= res!93444 e!125442)))

(declare-fun c!39195 () Bool)

(assert (=> d!53887 (= c!39195 (> (size!2613 (_1!1916 lt!73258)) 0))))

(declare-fun lexTailRecV2!128 (LexerInterface!489 List!3275 BalanceConc!2064 BalanceConc!2064 BalanceConc!2064 BalanceConc!2066) tuple2!3400)

(assert (=> d!53887 (= lt!73258 (lexTailRecV2!128 thiss!17480 rules!1920 (seqFromList!583 lt!72917) (BalanceConc!2065 Empty!1028) (seqFromList!583 lt!72917) (BalanceConc!2067 Empty!1029)))))

(assert (=> d!53887 (= (lex!289 thiss!17480 rules!1920 (seqFromList!583 lt!72917)) lt!73258)))

(declare-fun b!204072 () Bool)

(assert (=> b!204072 (= e!125442 e!125441)))

(declare-fun res!93445 () Bool)

(declare-fun size!2617 (BalanceConc!2064) Int)

(assert (=> b!204072 (= res!93445 (< (size!2617 (_2!1916 lt!73258)) (size!2617 (seqFromList!583 lt!72917))))))

(assert (=> b!204072 (=> (not res!93445) (not e!125441))))

(declare-fun b!204073 () Bool)

(declare-datatypes ((tuple2!3406 0))(
  ( (tuple2!3407 (_1!1919 List!3276) (_2!1919 List!3274)) )
))
(declare-fun lexList!141 (LexerInterface!489 List!3275 List!3274) tuple2!3406)

(assert (=> b!204073 (= e!125443 (= (list!1213 (_2!1916 lt!73258)) (_2!1919 (lexList!141 thiss!17480 rules!1920 (list!1213 (seqFromList!583 lt!72917))))))))

(declare-fun b!204074 () Bool)

(declare-fun res!93443 () Bool)

(assert (=> b!204074 (=> (not res!93443) (not e!125443))))

(assert (=> b!204074 (= res!93443 (= (list!1217 (_1!1916 lt!73258)) (_1!1919 (lexList!141 thiss!17480 rules!1920 (list!1213 (seqFromList!583 lt!72917))))))))

(declare-fun b!204075 () Bool)

(assert (=> b!204075 (= e!125442 (= (_2!1916 lt!73258) (seqFromList!583 lt!72917)))))

(assert (= (and d!53887 c!39195) b!204072))

(assert (= (and d!53887 (not c!39195)) b!204075))

(assert (= (and b!204072 res!93445) b!204071))

(assert (= (and d!53887 res!93444) b!204074))

(assert (= (and b!204074 res!93443) b!204073))

(declare-fun m!224129 () Bool)

(assert (=> b!204074 m!224129))

(assert (=> b!204074 m!223173))

(declare-fun m!224131 () Bool)

(assert (=> b!204074 m!224131))

(assert (=> b!204074 m!224131))

(declare-fun m!224133 () Bool)

(assert (=> b!204074 m!224133))

(declare-fun m!224135 () Bool)

(assert (=> b!204073 m!224135))

(assert (=> b!204073 m!223173))

(assert (=> b!204073 m!224131))

(assert (=> b!204073 m!224131))

(assert (=> b!204073 m!224133))

(declare-fun m!224137 () Bool)

(assert (=> b!204071 m!224137))

(declare-fun m!224139 () Bool)

(assert (=> d!53887 m!224139))

(assert (=> d!53887 m!223173))

(assert (=> d!53887 m!223173))

(declare-fun m!224141 () Bool)

(assert (=> d!53887 m!224141))

(declare-fun m!224143 () Bool)

(assert (=> b!204072 m!224143))

(assert (=> b!204072 m!223173))

(declare-fun m!224145 () Bool)

(assert (=> b!204072 m!224145))

(assert (=> b!203468 d!53887))

(declare-fun d!53907 () Bool)

(assert (=> d!53907 (= (seqFromList!583 lt!72917) (fromListB!219 lt!72917))))

(declare-fun bs!20806 () Bool)

(assert (= bs!20806 d!53907))

(declare-fun m!224147 () Bool)

(assert (=> bs!20806 m!224147))

(assert (=> b!203468 d!53907))

(declare-fun d!53909 () Bool)

(assert (=> d!53909 (= (get!968 lt!72915) (v!14043 lt!72915))))

(assert (=> b!203471 d!53909))

(declare-fun d!53911 () Bool)

(assert (=> d!53911 (= (head!701 tokens!465) (h!8663 tokens!465))))

(assert (=> b!203471 d!53911))

(declare-fun b!204086 () Bool)

(declare-fun res!93450 () Bool)

(declare-fun e!125453 () Bool)

(assert (=> b!204086 (=> (not res!93450) (not e!125453))))

(declare-fun call!9824 () Bool)

(assert (=> b!204086 (= res!93450 (not call!9824))))

(declare-fun b!204087 () Bool)

(declare-fun res!93453 () Bool)

(declare-fun e!125458 () Bool)

(assert (=> b!204087 (=> res!93453 e!125458)))

(assert (=> b!204087 (= res!93453 (not (isEmpty!1691 (tail!398 lt!72917))))))

(declare-fun b!204088 () Bool)

(declare-fun e!125452 () Bool)

(assert (=> b!204088 (= e!125452 e!125458)))

(declare-fun res!93456 () Bool)

(assert (=> b!204088 (=> res!93456 e!125458)))

(assert (=> b!204088 (= res!93456 call!9824)))

(declare-fun b!204090 () Bool)

(declare-fun e!125455 () Bool)

(declare-fun lt!73263 () Bool)

(assert (=> b!204090 (= e!125455 (= lt!73263 call!9824))))

(declare-fun b!204091 () Bool)

(declare-fun e!125456 () Bool)

(assert (=> b!204091 (= e!125456 e!125452)))

(declare-fun res!93455 () Bool)

(assert (=> b!204091 (=> (not res!93455) (not e!125452))))

(assert (=> b!204091 (= res!93455 (not lt!73263))))

(declare-fun b!204092 () Bool)

(declare-fun e!125454 () Bool)

(assert (=> b!204092 (= e!125454 (nullable!134 (regex!603 (rule!1130 (h!8663 tokens!465)))))))

(declare-fun b!204093 () Bool)

(declare-fun res!93451 () Bool)

(assert (=> b!204093 (=> res!93451 e!125456)))

(assert (=> b!204093 (= res!93451 (not ((_ is ElementMatch!827) (regex!603 (rule!1130 (h!8663 tokens!465))))))))

(declare-fun e!125457 () Bool)

(assert (=> b!204093 (= e!125457 e!125456)))

(declare-fun b!204089 () Bool)

(declare-fun res!93457 () Bool)

(assert (=> b!204089 (=> res!93457 e!125456)))

(assert (=> b!204089 (= res!93457 e!125453)))

(declare-fun res!93454 () Bool)

(assert (=> b!204089 (=> (not res!93454) (not e!125453))))

(assert (=> b!204089 (= res!93454 lt!73263)))

(declare-fun d!53913 () Bool)

(assert (=> d!53913 e!125455))

(declare-fun c!39200 () Bool)

(assert (=> d!53913 (= c!39200 ((_ is EmptyExpr!827) (regex!603 (rule!1130 (h!8663 tokens!465)))))))

(assert (=> d!53913 (= lt!73263 e!125454)))

(declare-fun c!39202 () Bool)

(assert (=> d!53913 (= c!39202 (isEmpty!1691 lt!72917))))

(assert (=> d!53913 (validRegex!209 (regex!603 (rule!1130 (h!8663 tokens!465))))))

(assert (=> d!53913 (= (matchR!165 (regex!603 (rule!1130 (h!8663 tokens!465))) lt!72917) lt!73263)))

(declare-fun b!204094 () Bool)

(assert (=> b!204094 (= e!125454 (matchR!165 (derivativeStep!100 (regex!603 (rule!1130 (h!8663 tokens!465))) (head!702 lt!72917)) (tail!398 lt!72917)))))

(declare-fun b!204095 () Bool)

(assert (=> b!204095 (= e!125457 (not lt!73263))))

(declare-fun b!204096 () Bool)

(declare-fun res!93452 () Bool)

(assert (=> b!204096 (=> (not res!93452) (not e!125453))))

(assert (=> b!204096 (= res!93452 (isEmpty!1691 (tail!398 lt!72917)))))

(declare-fun b!204097 () Bool)

(assert (=> b!204097 (= e!125453 (= (head!702 lt!72917) (c!39074 (regex!603 (rule!1130 (h!8663 tokens!465))))))))

(declare-fun bm!9819 () Bool)

(assert (=> bm!9819 (= call!9824 (isEmpty!1691 lt!72917))))

(declare-fun b!204098 () Bool)

(assert (=> b!204098 (= e!125458 (not (= (head!702 lt!72917) (c!39074 (regex!603 (rule!1130 (h!8663 tokens!465)))))))))

(declare-fun b!204099 () Bool)

(assert (=> b!204099 (= e!125455 e!125457)))

(declare-fun c!39201 () Bool)

(assert (=> b!204099 (= c!39201 ((_ is EmptyLang!827) (regex!603 (rule!1130 (h!8663 tokens!465)))))))

(assert (= (and d!53913 c!39202) b!204092))

(assert (= (and d!53913 (not c!39202)) b!204094))

(assert (= (and d!53913 c!39200) b!204090))

(assert (= (and d!53913 (not c!39200)) b!204099))

(assert (= (and b!204099 c!39201) b!204095))

(assert (= (and b!204099 (not c!39201)) b!204093))

(assert (= (and b!204093 (not res!93451)) b!204089))

(assert (= (and b!204089 res!93454) b!204086))

(assert (= (and b!204086 res!93450) b!204096))

(assert (= (and b!204096 res!93452) b!204097))

(assert (= (and b!204089 (not res!93457)) b!204091))

(assert (= (and b!204091 res!93455) b!204088))

(assert (= (and b!204088 (not res!93456)) b!204087))

(assert (= (and b!204087 (not res!93453)) b!204098))

(assert (= (or b!204090 b!204086 b!204088) bm!9819))

(declare-fun m!224149 () Bool)

(assert (=> b!204097 m!224149))

(declare-fun m!224151 () Bool)

(assert (=> bm!9819 m!224151))

(assert (=> b!204098 m!224149))

(declare-fun m!224153 () Bool)

(assert (=> b!204087 m!224153))

(assert (=> b!204087 m!224153))

(declare-fun m!224155 () Bool)

(assert (=> b!204087 m!224155))

(assert (=> d!53913 m!224151))

(declare-fun m!224157 () Bool)

(assert (=> d!53913 m!224157))

(declare-fun m!224159 () Bool)

(assert (=> b!204092 m!224159))

(assert (=> b!204096 m!224153))

(assert (=> b!204096 m!224153))

(assert (=> b!204096 m!224155))

(assert (=> b!204094 m!224149))

(assert (=> b!204094 m!224149))

(declare-fun m!224161 () Bool)

(assert (=> b!204094 m!224161))

(assert (=> b!204094 m!224153))

(assert (=> b!204094 m!224161))

(assert (=> b!204094 m!224153))

(declare-fun m!224163 () Bool)

(assert (=> b!204094 m!224163))

(assert (=> b!203493 d!53913))

(declare-fun d!53915 () Bool)

(declare-fun lt!73267 () BalanceConc!2064)

(assert (=> d!53915 (= (list!1213 lt!73267) (printList!173 thiss!17480 (list!1217 lt!72909)))))

(assert (=> d!53915 (= lt!73267 (printTailRec!183 thiss!17480 lt!72909 0 (BalanceConc!2065 Empty!1028)))))

(assert (=> d!53915 (= (print!220 thiss!17480 lt!72909) lt!73267)))

(declare-fun bs!20807 () Bool)

(assert (= bs!20807 d!53915))

(declare-fun m!224165 () Bool)

(assert (=> bs!20807 m!224165))

(declare-fun m!224167 () Bool)

(assert (=> bs!20807 m!224167))

(assert (=> bs!20807 m!224167))

(declare-fun m!224169 () Bool)

(assert (=> bs!20807 m!224169))

(assert (=> bs!20807 m!223237))

(assert (=> b!203472 d!53915))

(declare-fun d!53917 () Bool)

(declare-fun lt!73268 () BalanceConc!2064)

(assert (=> d!53917 (= (list!1213 lt!73268) (originalCharacters!646 lt!72926))))

(assert (=> d!53917 (= lt!73268 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 lt!72926))) (value!21501 lt!72926)))))

(assert (=> d!53917 (= (charsOf!258 lt!72926) lt!73268)))

(declare-fun b_lambda!5255 () Bool)

(assert (=> (not b_lambda!5255) (not d!53917)))

(declare-fun t!30858 () Bool)

(declare-fun tb!9453 () Bool)

(assert (=> (and b!203496 (= (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (toChars!1145 (transformation!603 (rule!1130 lt!72926)))) t!30858) tb!9453))

(declare-fun b!204106 () Bool)

(declare-fun e!125463 () Bool)

(declare-fun tp!90294 () Bool)

(assert (=> b!204106 (= e!125463 (and (inv!4109 (c!39073 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 lt!72926))) (value!21501 lt!72926)))) tp!90294))))

(declare-fun result!12460 () Bool)

(assert (=> tb!9453 (= result!12460 (and (inv!4110 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 lt!72926))) (value!21501 lt!72926))) e!125463))))

(assert (= tb!9453 b!204106))

(declare-fun m!224183 () Bool)

(assert (=> b!204106 m!224183))

(declare-fun m!224185 () Bool)

(assert (=> tb!9453 m!224185))

(assert (=> d!53917 t!30858))

(declare-fun b_and!14751 () Bool)

(assert (= b_and!14739 (and (=> t!30858 result!12460) b_and!14751)))

(declare-fun t!30860 () Bool)

(declare-fun tb!9455 () Bool)

(assert (=> (and b!203490 (= (toChars!1145 (transformation!603 (h!8662 rules!1920))) (toChars!1145 (transformation!603 (rule!1130 lt!72926)))) t!30860) tb!9455))

(declare-fun result!12462 () Bool)

(assert (= result!12462 result!12460))

(assert (=> d!53917 t!30860))

(declare-fun b_and!14753 () Bool)

(assert (= b_and!14741 (and (=> t!30860 result!12462) b_and!14753)))

(declare-fun t!30862 () Bool)

(declare-fun tb!9457 () Bool)

(assert (=> (and b!203483 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (toChars!1145 (transformation!603 (rule!1130 lt!72926)))) t!30862) tb!9457))

(declare-fun result!12464 () Bool)

(assert (= result!12464 result!12460))

(assert (=> d!53917 t!30862))

(declare-fun b_and!14755 () Bool)

(assert (= b_and!14743 (and (=> t!30862 result!12464) b_and!14755)))

(declare-fun m!224187 () Bool)

(assert (=> d!53917 m!224187))

(declare-fun m!224189 () Bool)

(assert (=> d!53917 m!224189))

(assert (=> b!203472 d!53917))

(declare-fun d!53921 () Bool)

(declare-fun lt!73274 () BalanceConc!2064)

(assert (=> d!53921 (= (list!1213 lt!73274) (printListTailRec!83 thiss!17480 (dropList!116 lt!72895 0) (list!1213 (BalanceConc!2065 Empty!1028))))))

(declare-fun e!125468 () BalanceConc!2064)

(assert (=> d!53921 (= lt!73274 e!125468)))

(declare-fun c!39206 () Bool)

(assert (=> d!53921 (= c!39206 (>= 0 (size!2613 lt!72895)))))

(declare-fun e!125467 () Bool)

(assert (=> d!53921 e!125467))

(declare-fun res!93467 () Bool)

(assert (=> d!53921 (=> (not res!93467) (not e!125467))))

(assert (=> d!53921 (= res!93467 (>= 0 0))))

(assert (=> d!53921 (= (printTailRec!183 thiss!17480 lt!72895 0 (BalanceConc!2065 Empty!1028)) lt!73274)))

(declare-fun b!204116 () Bool)

(assert (=> b!204116 (= e!125467 (<= 0 (size!2613 lt!72895)))))

(declare-fun b!204117 () Bool)

(assert (=> b!204117 (= e!125468 (BalanceConc!2065 Empty!1028))))

(declare-fun b!204118 () Bool)

(assert (=> b!204118 (= e!125468 (printTailRec!183 thiss!17480 lt!72895 (+ 0 1) (++!798 (BalanceConc!2065 Empty!1028) (charsOf!258 (apply!526 lt!72895 0)))))))

(declare-fun lt!73279 () List!3276)

(assert (=> b!204118 (= lt!73279 (list!1217 lt!72895))))

(declare-fun lt!73275 () Unit!3280)

(assert (=> b!204118 (= lt!73275 (lemmaDropApply!156 lt!73279 0))))

(assert (=> b!204118 (= (head!701 (drop!169 lt!73279 0)) (apply!528 lt!73279 0))))

(declare-fun lt!73276 () Unit!3280)

(assert (=> b!204118 (= lt!73276 lt!73275)))

(declare-fun lt!73278 () List!3276)

(assert (=> b!204118 (= lt!73278 (list!1217 lt!72895))))

(declare-fun lt!73277 () Unit!3280)

(assert (=> b!204118 (= lt!73277 (lemmaDropTail!148 lt!73278 0))))

(assert (=> b!204118 (= (tail!396 (drop!169 lt!73278 0)) (drop!169 lt!73278 (+ 0 1)))))

(declare-fun lt!73280 () Unit!3280)

(assert (=> b!204118 (= lt!73280 lt!73277)))

(assert (= (and d!53921 res!93467) b!204116))

(assert (= (and d!53921 c!39206) b!204117))

(assert (= (and d!53921 (not c!39206)) b!204118))

(declare-fun m!224191 () Bool)

(assert (=> d!53921 m!224191))

(declare-fun m!224193 () Bool)

(assert (=> d!53921 m!224193))

(assert (=> d!53921 m!223315))

(declare-fun m!224195 () Bool)

(assert (=> d!53921 m!224195))

(assert (=> d!53921 m!223315))

(declare-fun m!224197 () Bool)

(assert (=> d!53921 m!224197))

(assert (=> d!53921 m!224195))

(assert (=> b!204116 m!224193))

(declare-fun m!224199 () Bool)

(assert (=> b!204118 m!224199))

(declare-fun m!224201 () Bool)

(assert (=> b!204118 m!224201))

(declare-fun m!224203 () Bool)

(assert (=> b!204118 m!224203))

(declare-fun m!224205 () Bool)

(assert (=> b!204118 m!224205))

(declare-fun m!224207 () Bool)

(assert (=> b!204118 m!224207))

(declare-fun m!224209 () Bool)

(assert (=> b!204118 m!224209))

(declare-fun m!224211 () Bool)

(assert (=> b!204118 m!224211))

(assert (=> b!204118 m!224203))

(declare-fun m!224213 () Bool)

(assert (=> b!204118 m!224213))

(assert (=> b!204118 m!224199))

(declare-fun m!224215 () Bool)

(assert (=> b!204118 m!224215))

(declare-fun m!224217 () Bool)

(assert (=> b!204118 m!224217))

(declare-fun m!224219 () Bool)

(assert (=> b!204118 m!224219))

(declare-fun m!224223 () Bool)

(assert (=> b!204118 m!224223))

(assert (=> b!204118 m!224215))

(assert (=> b!204118 m!224217))

(assert (=> b!204118 m!224205))

(declare-fun m!224227 () Bool)

(assert (=> b!204118 m!224227))

(assert (=> b!203472 d!53921))

(declare-fun b!204119 () Bool)

(declare-fun e!125469 () Bool)

(declare-fun lt!73281 () tuple2!3400)

(assert (=> b!204119 (= e!125469 (not (isEmpty!1690 (_1!1916 lt!73281))))))

(declare-fun d!53923 () Bool)

(declare-fun e!125471 () Bool)

(assert (=> d!53923 e!125471))

(declare-fun res!93469 () Bool)

(assert (=> d!53923 (=> (not res!93469) (not e!125471))))

(declare-fun e!125470 () Bool)

(assert (=> d!53923 (= res!93469 e!125470)))

(declare-fun c!39207 () Bool)

(assert (=> d!53923 (= c!39207 (> (size!2613 (_1!1916 lt!73281)) 0))))

(assert (=> d!53923 (= lt!73281 (lexTailRecV2!128 thiss!17480 rules!1920 lt!72927 (BalanceConc!2065 Empty!1028) lt!72927 (BalanceConc!2067 Empty!1029)))))

(assert (=> d!53923 (= (lex!289 thiss!17480 rules!1920 lt!72927) lt!73281)))

(declare-fun b!204120 () Bool)

(assert (=> b!204120 (= e!125470 e!125469)))

(declare-fun res!93470 () Bool)

(assert (=> b!204120 (= res!93470 (< (size!2617 (_2!1916 lt!73281)) (size!2617 lt!72927)))))

(assert (=> b!204120 (=> (not res!93470) (not e!125469))))

(declare-fun b!204121 () Bool)

(assert (=> b!204121 (= e!125471 (= (list!1213 (_2!1916 lt!73281)) (_2!1919 (lexList!141 thiss!17480 rules!1920 (list!1213 lt!72927)))))))

(declare-fun b!204122 () Bool)

(declare-fun res!93468 () Bool)

(assert (=> b!204122 (=> (not res!93468) (not e!125471))))

(assert (=> b!204122 (= res!93468 (= (list!1217 (_1!1916 lt!73281)) (_1!1919 (lexList!141 thiss!17480 rules!1920 (list!1213 lt!72927)))))))

(declare-fun b!204123 () Bool)

(assert (=> b!204123 (= e!125470 (= (_2!1916 lt!73281) lt!72927))))

(assert (= (and d!53923 c!39207) b!204120))

(assert (= (and d!53923 (not c!39207)) b!204123))

(assert (= (and b!204120 res!93470) b!204119))

(assert (= (and d!53923 res!93469) b!204122))

(assert (= (and b!204122 res!93468) b!204121))

(declare-fun m!224249 () Bool)

(assert (=> b!204122 m!224249))

(declare-fun m!224251 () Bool)

(assert (=> b!204122 m!224251))

(assert (=> b!204122 m!224251))

(declare-fun m!224253 () Bool)

(assert (=> b!204122 m!224253))

(declare-fun m!224257 () Bool)

(assert (=> b!204121 m!224257))

(assert (=> b!204121 m!224251))

(assert (=> b!204121 m!224251))

(assert (=> b!204121 m!224253))

(declare-fun m!224259 () Bool)

(assert (=> b!204119 m!224259))

(declare-fun m!224261 () Bool)

(assert (=> d!53923 m!224261))

(declare-fun m!224263 () Bool)

(assert (=> d!53923 m!224263))

(declare-fun m!224267 () Bool)

(assert (=> b!204120 m!224267))

(declare-fun m!224269 () Bool)

(assert (=> b!204120 m!224269))

(assert (=> b!203472 d!53923))

(declare-fun d!53925 () Bool)

(assert (=> d!53925 (isPrefix!299 lt!72917 (++!796 lt!72917 lt!72932))))

(declare-fun lt!73284 () Unit!3280)

(declare-fun choose!2014 (List!3274 List!3274) Unit!3280)

(assert (=> d!53925 (= lt!73284 (choose!2014 lt!72917 lt!72932))))

(assert (=> d!53925 (= (lemmaConcatTwoListThenFirstIsPrefix!194 lt!72917 lt!72932) lt!73284)))

(declare-fun bs!20808 () Bool)

(assert (= bs!20808 d!53925))

(assert (=> bs!20808 m!223137))

(assert (=> bs!20808 m!223137))

(declare-fun m!224275 () Bool)

(assert (=> bs!20808 m!224275))

(declare-fun m!224277 () Bool)

(assert (=> bs!20808 m!224277))

(assert (=> b!203472 d!53925))

(declare-fun b!204149 () Bool)

(declare-fun res!93481 () Bool)

(declare-fun e!125487 () Bool)

(assert (=> b!204149 (=> (not res!93481) (not e!125487))))

(assert (=> b!204149 (= res!93481 (= (head!702 lt!72917) (head!702 lt!72930)))))

(declare-fun b!204151 () Bool)

(declare-fun e!125488 () Bool)

(assert (=> b!204151 (= e!125488 (>= (size!2614 lt!72930) (size!2614 lt!72917)))))

(declare-fun b!204150 () Bool)

(assert (=> b!204150 (= e!125487 (isPrefix!299 (tail!398 lt!72917) (tail!398 lt!72930)))))

(declare-fun d!53929 () Bool)

(assert (=> d!53929 e!125488))

(declare-fun res!93482 () Bool)

(assert (=> d!53929 (=> res!93482 e!125488)))

(declare-fun lt!73287 () Bool)

(assert (=> d!53929 (= res!93482 (not lt!73287))))

(declare-fun e!125486 () Bool)

(assert (=> d!53929 (= lt!73287 e!125486)))

(declare-fun res!93479 () Bool)

(assert (=> d!53929 (=> res!93479 e!125486)))

(assert (=> d!53929 (= res!93479 ((_ is Nil!3264) lt!72917))))

(assert (=> d!53929 (= (isPrefix!299 lt!72917 lt!72930) lt!73287)))

(declare-fun b!204148 () Bool)

(assert (=> b!204148 (= e!125486 e!125487)))

(declare-fun res!93480 () Bool)

(assert (=> b!204148 (=> (not res!93480) (not e!125487))))

(assert (=> b!204148 (= res!93480 (not ((_ is Nil!3264) lt!72930)))))

(assert (= (and d!53929 (not res!93479)) b!204148))

(assert (= (and b!204148 res!93480) b!204149))

(assert (= (and b!204149 res!93481) b!204150))

(assert (= (and d!53929 (not res!93482)) b!204151))

(assert (=> b!204149 m!224149))

(declare-fun m!224279 () Bool)

(assert (=> b!204149 m!224279))

(declare-fun m!224281 () Bool)

(assert (=> b!204151 m!224281))

(assert (=> b!204151 m!223453))

(assert (=> b!204150 m!224153))

(declare-fun m!224283 () Bool)

(assert (=> b!204150 m!224283))

(assert (=> b!204150 m!224153))

(assert (=> b!204150 m!224283))

(declare-fun m!224285 () Bool)

(assert (=> b!204150 m!224285))

(assert (=> b!203472 d!53929))

(declare-fun d!53931 () Bool)

(assert (=> d!53931 (= (isEmpty!1688 tokens!465) ((_ is Nil!3266) tokens!465))))

(assert (=> b!203472 d!53931))

(declare-fun d!53933 () Bool)

(declare-fun lt!73288 () BalanceConc!2064)

(assert (=> d!53933 (= (list!1213 lt!73288) (printList!173 thiss!17480 (list!1217 lt!72895)))))

(assert (=> d!53933 (= lt!73288 (printTailRec!183 thiss!17480 lt!72895 0 (BalanceConc!2065 Empty!1028)))))

(assert (=> d!53933 (= (print!220 thiss!17480 lt!72895) lt!73288)))

(declare-fun bs!20809 () Bool)

(assert (= bs!20809 d!53933))

(declare-fun m!224291 () Bool)

(assert (=> bs!20809 m!224291))

(assert (=> bs!20809 m!224209))

(assert (=> bs!20809 m!224209))

(declare-fun m!224295 () Bool)

(assert (=> bs!20809 m!224295))

(assert (=> bs!20809 m!223259))

(assert (=> b!203472 d!53933))

(assert (=> b!203472 d!53791))

(declare-fun d!53937 () Bool)

(declare-fun e!125493 () Bool)

(assert (=> d!53937 e!125493))

(declare-fun res!93483 () Bool)

(assert (=> d!53937 (=> (not res!93483) (not e!125493))))

(declare-fun lt!73289 () BalanceConc!2066)

(assert (=> d!53937 (= res!93483 (= (list!1217 lt!73289) (Cons!3266 lt!72926 Nil!3266)))))

(assert (=> d!53937 (= lt!73289 (singleton!64 lt!72926))))

(assert (=> d!53937 (= (singletonSeq!155 lt!72926) lt!73289)))

(declare-fun b!204160 () Bool)

(assert (=> b!204160 (= e!125493 (isBalanced!275 (c!39075 lt!73289)))))

(assert (= (and d!53937 res!93483) b!204160))

(declare-fun m!224299 () Bool)

(assert (=> d!53937 m!224299))

(declare-fun m!224301 () Bool)

(assert (=> d!53937 m!224301))

(declare-fun m!224303 () Bool)

(assert (=> b!204160 m!224303))

(assert (=> b!203472 d!53937))

(declare-fun d!53941 () Bool)

(assert (=> d!53941 (= (get!968 (maxPrefix!219 thiss!17480 rules!1920 lt!72904)) (v!14043 (maxPrefix!219 thiss!17480 rules!1920 lt!72904)))))

(assert (=> b!203472 d!53941))

(declare-fun b!204185 () Bool)

(declare-fun e!125508 () List!3274)

(declare-fun e!125509 () List!3274)

(assert (=> b!204185 (= e!125508 e!125509)))

(declare-fun c!39231 () Bool)

(assert (=> b!204185 (= c!39231 ((_ is Union!827) (regex!603 (rule!1130 separatorToken!170))))))

(declare-fun b!204186 () Bool)

(declare-fun e!125507 () List!3274)

(assert (=> b!204186 (= e!125507 (Cons!3264 (c!39074 (regex!603 (rule!1130 separatorToken!170))) Nil!3264))))

(declare-fun b!204187 () Bool)

(declare-fun c!39229 () Bool)

(assert (=> b!204187 (= c!39229 ((_ is Star!827) (regex!603 (rule!1130 separatorToken!170))))))

(assert (=> b!204187 (= e!125507 e!125508)))

(declare-fun d!53943 () Bool)

(declare-fun c!39232 () Bool)

(assert (=> d!53943 (= c!39232 (or ((_ is EmptyExpr!827) (regex!603 (rule!1130 separatorToken!170))) ((_ is EmptyLang!827) (regex!603 (rule!1130 separatorToken!170)))))))

(declare-fun e!125510 () List!3274)

(assert (=> d!53943 (= (usedCharacters!8 (regex!603 (rule!1130 separatorToken!170))) e!125510)))

(declare-fun b!204188 () Bool)

(declare-fun call!9849 () List!3274)

(assert (=> b!204188 (= e!125508 call!9849)))

(declare-fun b!204189 () Bool)

(assert (=> b!204189 (= e!125510 Nil!3264)))

(declare-fun b!204190 () Bool)

(declare-fun call!9847 () List!3274)

(assert (=> b!204190 (= e!125509 call!9847)))

(declare-fun b!204191 () Bool)

(assert (=> b!204191 (= e!125510 e!125507)))

(declare-fun c!39230 () Bool)

(assert (=> b!204191 (= c!39230 ((_ is ElementMatch!827) (regex!603 (rule!1130 separatorToken!170))))))

(declare-fun bm!9841 () Bool)

(declare-fun call!9846 () List!3274)

(declare-fun call!9848 () List!3274)

(assert (=> bm!9841 (= call!9847 (++!796 call!9846 call!9848))))

(declare-fun bm!9842 () Bool)

(assert (=> bm!9842 (= call!9848 (usedCharacters!8 (ite c!39231 (regTwo!2167 (regex!603 (rule!1130 separatorToken!170))) (regTwo!2166 (regex!603 (rule!1130 separatorToken!170))))))))

(declare-fun b!204192 () Bool)

(assert (=> b!204192 (= e!125509 call!9847)))

(declare-fun bm!9843 () Bool)

(assert (=> bm!9843 (= call!9849 (usedCharacters!8 (ite c!39229 (reg!1156 (regex!603 (rule!1130 separatorToken!170))) (ite c!39231 (regOne!2167 (regex!603 (rule!1130 separatorToken!170))) (regOne!2166 (regex!603 (rule!1130 separatorToken!170)))))))))

(declare-fun bm!9844 () Bool)

(assert (=> bm!9844 (= call!9846 call!9849)))

(assert (= (and d!53943 c!39232) b!204189))

(assert (= (and d!53943 (not c!39232)) b!204191))

(assert (= (and b!204191 c!39230) b!204186))

(assert (= (and b!204191 (not c!39230)) b!204187))

(assert (= (and b!204187 c!39229) b!204188))

(assert (= (and b!204187 (not c!39229)) b!204185))

(assert (= (and b!204185 c!39231) b!204190))

(assert (= (and b!204185 (not c!39231)) b!204192))

(assert (= (or b!204190 b!204192) bm!9844))

(assert (= (or b!204190 b!204192) bm!9842))

(assert (= (or b!204190 b!204192) bm!9841))

(assert (= (or b!204188 bm!9844) bm!9843))

(declare-fun m!224343 () Bool)

(assert (=> bm!9841 m!224343))

(declare-fun m!224345 () Bool)

(assert (=> bm!9842 m!224345))

(declare-fun m!224347 () Bool)

(assert (=> bm!9843 m!224347))

(assert (=> b!203472 d!53943))

(declare-fun d!53961 () Bool)

(declare-fun isEmpty!1699 (Option!502) Bool)

(assert (=> d!53961 (= (isDefined!352 lt!72931) (not (isEmpty!1699 lt!72931)))))

(declare-fun bs!20813 () Bool)

(assert (= bs!20813 d!53961))

(declare-fun m!224349 () Bool)

(assert (=> bs!20813 m!224349))

(assert (=> b!203472 d!53961))

(declare-fun d!53963 () Bool)

(assert (=> d!53963 (dynLambda!1432 lambda!6208 lt!72926)))

(declare-fun lt!73298 () Unit!3280)

(declare-fun choose!2015 (List!3276 Int Token!950) Unit!3280)

(assert (=> d!53963 (= lt!73298 (choose!2015 tokens!465 lambda!6208 lt!72926))))

(declare-fun e!125513 () Bool)

(assert (=> d!53963 e!125513))

(declare-fun res!93492 () Bool)

(assert (=> d!53963 (=> (not res!93492) (not e!125513))))

(assert (=> d!53963 (= res!93492 (forall!703 tokens!465 lambda!6208))))

(assert (=> d!53963 (= (forallContained!170 tokens!465 lambda!6208 lt!72926) lt!73298)))

(declare-fun b!204195 () Bool)

(declare-fun contains!540 (List!3276 Token!950) Bool)

(assert (=> b!204195 (= e!125513 (contains!540 tokens!465 lt!72926))))

(assert (= (and d!53963 res!93492) b!204195))

(declare-fun b_lambda!5257 () Bool)

(assert (=> (not b_lambda!5257) (not d!53963)))

(declare-fun m!224351 () Bool)

(assert (=> d!53963 m!224351))

(declare-fun m!224353 () Bool)

(assert (=> d!53963 m!224353))

(declare-fun m!224355 () Bool)

(assert (=> d!53963 m!224355))

(declare-fun m!224357 () Bool)

(assert (=> b!204195 m!224357))

(assert (=> b!203472 d!53963))

(declare-fun b!204196 () Bool)

(declare-fun e!125514 () Bool)

(declare-fun lt!73299 () tuple2!3400)

(assert (=> b!204196 (= e!125514 (not (isEmpty!1690 (_1!1916 lt!73299))))))

(declare-fun d!53965 () Bool)

(declare-fun e!125516 () Bool)

(assert (=> d!53965 e!125516))

(declare-fun res!93494 () Bool)

(assert (=> d!53965 (=> (not res!93494) (not e!125516))))

(declare-fun e!125515 () Bool)

(assert (=> d!53965 (= res!93494 e!125515)))

(declare-fun c!39233 () Bool)

(assert (=> d!53965 (= c!39233 (> (size!2613 (_1!1916 lt!73299)) 0))))

(assert (=> d!53965 (= lt!73299 (lexTailRecV2!128 thiss!17480 rules!1920 lt!72913 (BalanceConc!2065 Empty!1028) lt!72913 (BalanceConc!2067 Empty!1029)))))

(assert (=> d!53965 (= (lex!289 thiss!17480 rules!1920 lt!72913) lt!73299)))

(declare-fun b!204197 () Bool)

(assert (=> b!204197 (= e!125515 e!125514)))

(declare-fun res!93495 () Bool)

(assert (=> b!204197 (= res!93495 (< (size!2617 (_2!1916 lt!73299)) (size!2617 lt!72913)))))

(assert (=> b!204197 (=> (not res!93495) (not e!125514))))

(declare-fun b!204198 () Bool)

(assert (=> b!204198 (= e!125516 (= (list!1213 (_2!1916 lt!73299)) (_2!1919 (lexList!141 thiss!17480 rules!1920 (list!1213 lt!72913)))))))

(declare-fun b!204199 () Bool)

(declare-fun res!93493 () Bool)

(assert (=> b!204199 (=> (not res!93493) (not e!125516))))

(assert (=> b!204199 (= res!93493 (= (list!1217 (_1!1916 lt!73299)) (_1!1919 (lexList!141 thiss!17480 rules!1920 (list!1213 lt!72913)))))))

(declare-fun b!204200 () Bool)

(assert (=> b!204200 (= e!125515 (= (_2!1916 lt!73299) lt!72913))))

(assert (= (and d!53965 c!39233) b!204197))

(assert (= (and d!53965 (not c!39233)) b!204200))

(assert (= (and b!204197 res!93495) b!204196))

(assert (= (and d!53965 res!93494) b!204199))

(assert (= (and b!204199 res!93493) b!204198))

(declare-fun m!224359 () Bool)

(assert (=> b!204199 m!224359))

(declare-fun m!224361 () Bool)

(assert (=> b!204199 m!224361))

(assert (=> b!204199 m!224361))

(declare-fun m!224363 () Bool)

(assert (=> b!204199 m!224363))

(declare-fun m!224365 () Bool)

(assert (=> b!204198 m!224365))

(assert (=> b!204198 m!224361))

(assert (=> b!204198 m!224361))

(assert (=> b!204198 m!224363))

(declare-fun m!224367 () Bool)

(assert (=> b!204196 m!224367))

(declare-fun m!224369 () Bool)

(assert (=> d!53965 m!224369))

(declare-fun m!224371 () Bool)

(assert (=> d!53965 m!224371))

(declare-fun m!224373 () Bool)

(assert (=> b!204197 m!224373))

(declare-fun m!224375 () Bool)

(assert (=> b!204197 m!224375))

(assert (=> b!203472 d!53965))

(declare-fun d!53967 () Bool)

(declare-fun e!125517 () Bool)

(assert (=> d!53967 e!125517))

(declare-fun res!93496 () Bool)

(assert (=> d!53967 (=> (not res!93496) (not e!125517))))

(declare-fun lt!73300 () BalanceConc!2066)

(assert (=> d!53967 (= res!93496 (= (list!1217 lt!73300) (Cons!3266 separatorToken!170 Nil!3266)))))

(assert (=> d!53967 (= lt!73300 (singleton!64 separatorToken!170))))

(assert (=> d!53967 (= (singletonSeq!155 separatorToken!170) lt!73300)))

(declare-fun b!204201 () Bool)

(assert (=> b!204201 (= e!125517 (isBalanced!275 (c!39075 lt!73300)))))

(assert (= (and d!53967 res!93496) b!204201))

(declare-fun m!224377 () Bool)

(assert (=> d!53967 m!224377))

(declare-fun m!224379 () Bool)

(assert (=> d!53967 m!224379))

(declare-fun m!224381 () Bool)

(assert (=> b!204201 m!224381))

(assert (=> b!203472 d!53967))

(declare-fun b!204214 () Bool)

(declare-fun lt!73309 () Unit!3280)

(declare-fun lt!73308 () Unit!3280)

(assert (=> b!204214 (= lt!73309 lt!73308)))

(assert (=> b!204214 (rulesInvariant!455 thiss!17480 (t!30807 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!8 (LexerInterface!489 Rule!1006 List!3275) Unit!3280)

(assert (=> b!204214 (= lt!73308 (lemmaInvariantOnRulesThenOnTail!8 thiss!17480 (h!8662 rules!1920) (t!30807 rules!1920)))))

(declare-fun e!125528 () Option!502)

(assert (=> b!204214 (= e!125528 (getRuleFromTag!44 thiss!17480 (t!30807 rules!1920) (tag!787 (rule!1130 lt!72926))))))

(declare-fun d!53969 () Bool)

(declare-fun e!125526 () Bool)

(assert (=> d!53969 e!125526))

(declare-fun res!93502 () Bool)

(assert (=> d!53969 (=> res!93502 e!125526)))

(declare-fun lt!73307 () Option!502)

(assert (=> d!53969 (= res!93502 (isEmpty!1699 lt!73307))))

(declare-fun e!125527 () Option!502)

(assert (=> d!53969 (= lt!73307 e!125527)))

(declare-fun c!39238 () Bool)

(assert (=> d!53969 (= c!39238 (and ((_ is Cons!3265) rules!1920) (= (tag!787 (h!8662 rules!1920)) (tag!787 (rule!1130 lt!72926)))))))

(assert (=> d!53969 (rulesInvariant!455 thiss!17480 rules!1920)))

(assert (=> d!53969 (= (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 lt!72926))) lt!73307)))

(declare-fun b!204215 () Bool)

(assert (=> b!204215 (= e!125527 e!125528)))

(declare-fun c!39239 () Bool)

(assert (=> b!204215 (= c!39239 (and ((_ is Cons!3265) rules!1920) (not (= (tag!787 (h!8662 rules!1920)) (tag!787 (rule!1130 lt!72926))))))))

(declare-fun b!204216 () Bool)

(assert (=> b!204216 (= e!125528 None!501)))

(declare-fun b!204217 () Bool)

(assert (=> b!204217 (= e!125527 (Some!501 (h!8662 rules!1920)))))

(declare-fun b!204218 () Bool)

(declare-fun e!125529 () Bool)

(assert (=> b!204218 (= e!125526 e!125529)))

(declare-fun res!93501 () Bool)

(assert (=> b!204218 (=> (not res!93501) (not e!125529))))

(assert (=> b!204218 (= res!93501 (contains!537 rules!1920 (get!969 lt!73307)))))

(declare-fun b!204219 () Bool)

(assert (=> b!204219 (= e!125529 (= (tag!787 (get!969 lt!73307)) (tag!787 (rule!1130 lt!72926))))))

(assert (= (and d!53969 c!39238) b!204217))

(assert (= (and d!53969 (not c!39238)) b!204215))

(assert (= (and b!204215 c!39239) b!204214))

(assert (= (and b!204215 (not c!39239)) b!204216))

(assert (= (and d!53969 (not res!93502)) b!204218))

(assert (= (and b!204218 res!93501) b!204219))

(declare-fun m!224383 () Bool)

(assert (=> b!204214 m!224383))

(declare-fun m!224385 () Bool)

(assert (=> b!204214 m!224385))

(declare-fun m!224387 () Bool)

(assert (=> b!204214 m!224387))

(declare-fun m!224389 () Bool)

(assert (=> d!53969 m!224389))

(assert (=> d!53969 m!223187))

(declare-fun m!224391 () Bool)

(assert (=> b!204218 m!224391))

(assert (=> b!204218 m!224391))

(declare-fun m!224393 () Bool)

(assert (=> b!204218 m!224393))

(assert (=> b!204219 m!224391))

(assert (=> b!203472 d!53969))

(declare-fun d!53971 () Bool)

(declare-fun e!125532 () Bool)

(assert (=> d!53971 e!125532))

(declare-fun res!93507 () Bool)

(assert (=> d!53971 (=> (not res!93507) (not e!125532))))

(assert (=> d!53971 (= res!93507 (isDefined!352 (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 separatorToken!170)))))))

(declare-fun lt!73312 () Unit!3280)

(declare-fun choose!2016 (LexerInterface!489 List!3275 List!3274 Token!950) Unit!3280)

(assert (=> d!53971 (= lt!73312 (choose!2016 thiss!17480 rules!1920 lt!72912 separatorToken!170))))

(assert (=> d!53971 (rulesInvariant!455 thiss!17480 rules!1920)))

(assert (=> d!53971 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!44 thiss!17480 rules!1920 lt!72912 separatorToken!170) lt!73312)))

(declare-fun b!204224 () Bool)

(declare-fun res!93508 () Bool)

(assert (=> b!204224 (=> (not res!93508) (not e!125532))))

(assert (=> b!204224 (= res!93508 (matchR!165 (regex!603 (get!969 (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 separatorToken!170))))) (list!1213 (charsOf!258 separatorToken!170))))))

(declare-fun b!204225 () Bool)

(assert (=> b!204225 (= e!125532 (= (rule!1130 separatorToken!170) (get!969 (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 separatorToken!170))))))))

(assert (= (and d!53971 res!93507) b!204224))

(assert (= (and b!204224 res!93508) b!204225))

(assert (=> d!53971 m!223265))

(assert (=> d!53971 m!223265))

(declare-fun m!224395 () Bool)

(assert (=> d!53971 m!224395))

(declare-fun m!224397 () Bool)

(assert (=> d!53971 m!224397))

(assert (=> d!53971 m!223187))

(assert (=> b!204224 m!223265))

(assert (=> b!204224 m!223139))

(assert (=> b!204224 m!223265))

(declare-fun m!224399 () Bool)

(assert (=> b!204224 m!224399))

(assert (=> b!204224 m!223139))

(assert (=> b!204224 m!223141))

(assert (=> b!204224 m!223141))

(declare-fun m!224401 () Bool)

(assert (=> b!204224 m!224401))

(assert (=> b!204225 m!223265))

(assert (=> b!204225 m!223265))

(assert (=> b!204225 m!224399))

(assert (=> b!203472 d!53971))

(declare-fun d!53973 () Bool)

(assert (=> d!53973 (= (isEmpty!1688 (t!30808 tokens!465)) ((_ is Nil!3266) (t!30808 tokens!465)))))

(assert (=> b!203472 d!53973))

(declare-fun d!53975 () Bool)

(assert (=> d!53975 (= (head!702 lt!72899) (h!8661 lt!72899))))

(assert (=> b!203472 d!53975))

(declare-fun d!53977 () Bool)

(declare-fun lt!73315 () Int)

(declare-fun size!2620 (List!3276) Int)

(assert (=> d!53977 (= lt!73315 (size!2620 (list!1217 (_1!1916 lt!72914))))))

(declare-fun size!2621 (Conc!1029) Int)

(assert (=> d!53977 (= lt!73315 (size!2621 (c!39075 (_1!1916 lt!72914))))))

(assert (=> d!53977 (= (size!2613 (_1!1916 lt!72914)) lt!73315)))

(declare-fun bs!20814 () Bool)

(assert (= bs!20814 d!53977))

(declare-fun m!224403 () Bool)

(assert (=> bs!20814 m!224403))

(assert (=> bs!20814 m!224403))

(declare-fun m!224405 () Bool)

(assert (=> bs!20814 m!224405))

(declare-fun m!224407 () Bool)

(assert (=> bs!20814 m!224407))

(assert (=> b!203472 d!53977))

(declare-fun b!204226 () Bool)

(declare-fun res!93512 () Bool)

(declare-fun e!125533 () Bool)

(assert (=> b!204226 (=> (not res!93512) (not e!125533))))

(declare-fun lt!73320 () Option!501)

(assert (=> b!204226 (= res!93512 (= (value!21501 (_1!1915 (get!968 lt!73320))) (apply!529 (transformation!603 (rule!1130 (_1!1915 (get!968 lt!73320)))) (seqFromList!583 (originalCharacters!646 (_1!1915 (get!968 lt!73320)))))))))

(declare-fun d!53979 () Bool)

(declare-fun e!125534 () Bool)

(assert (=> d!53979 e!125534))

(declare-fun res!93513 () Bool)

(assert (=> d!53979 (=> res!93513 e!125534)))

(assert (=> d!53979 (= res!93513 (isEmpty!1693 lt!73320))))

(declare-fun e!125535 () Option!501)

(assert (=> d!53979 (= lt!73320 e!125535)))

(declare-fun c!39240 () Bool)

(assert (=> d!53979 (= c!39240 (and ((_ is Cons!3265) rules!1920) ((_ is Nil!3265) (t!30807 rules!1920))))))

(declare-fun lt!73317 () Unit!3280)

(declare-fun lt!73316 () Unit!3280)

(assert (=> d!53979 (= lt!73317 lt!73316)))

(assert (=> d!53979 (isPrefix!299 lt!72932 lt!72932)))

(assert (=> d!53979 (= lt!73316 (lemmaIsPrefixRefl!164 lt!72932 lt!72932))))

(assert (=> d!53979 (rulesValidInductive!153 thiss!17480 rules!1920)))

(assert (=> d!53979 (= (maxPrefix!219 thiss!17480 rules!1920 lt!72932) lt!73320)))

(declare-fun b!204227 () Bool)

(assert (=> b!204227 (= e!125533 (contains!537 rules!1920 (rule!1130 (_1!1915 (get!968 lt!73320)))))))

(declare-fun b!204228 () Bool)

(declare-fun call!9850 () Option!501)

(assert (=> b!204228 (= e!125535 call!9850)))

(declare-fun b!204229 () Bool)

(declare-fun res!93510 () Bool)

(assert (=> b!204229 (=> (not res!93510) (not e!125533))))

(assert (=> b!204229 (= res!93510 (= (++!796 (list!1213 (charsOf!258 (_1!1915 (get!968 lt!73320)))) (_2!1915 (get!968 lt!73320))) lt!72932))))

(declare-fun b!204230 () Bool)

(assert (=> b!204230 (= e!125534 e!125533)))

(declare-fun res!93509 () Bool)

(assert (=> b!204230 (=> (not res!93509) (not e!125533))))

(assert (=> b!204230 (= res!93509 (isDefined!354 lt!73320))))

(declare-fun b!204231 () Bool)

(declare-fun res!93515 () Bool)

(assert (=> b!204231 (=> (not res!93515) (not e!125533))))

(assert (=> b!204231 (= res!93515 (= (list!1213 (charsOf!258 (_1!1915 (get!968 lt!73320)))) (originalCharacters!646 (_1!1915 (get!968 lt!73320)))))))

(declare-fun bm!9845 () Bool)

(assert (=> bm!9845 (= call!9850 (maxPrefixOneRule!98 thiss!17480 (h!8662 rules!1920) lt!72932))))

(declare-fun b!204232 () Bool)

(declare-fun res!93511 () Bool)

(assert (=> b!204232 (=> (not res!93511) (not e!125533))))

(assert (=> b!204232 (= res!93511 (matchR!165 (regex!603 (rule!1130 (_1!1915 (get!968 lt!73320)))) (list!1213 (charsOf!258 (_1!1915 (get!968 lt!73320))))))))

(declare-fun b!204233 () Bool)

(declare-fun res!93514 () Bool)

(assert (=> b!204233 (=> (not res!93514) (not e!125533))))

(assert (=> b!204233 (= res!93514 (< (size!2614 (_2!1915 (get!968 lt!73320))) (size!2614 lt!72932)))))

(declare-fun b!204234 () Bool)

(declare-fun lt!73318 () Option!501)

(declare-fun lt!73319 () Option!501)

(assert (=> b!204234 (= e!125535 (ite (and ((_ is None!500) lt!73318) ((_ is None!500) lt!73319)) None!500 (ite ((_ is None!500) lt!73319) lt!73318 (ite ((_ is None!500) lt!73318) lt!73319 (ite (>= (size!2612 (_1!1915 (v!14043 lt!73318))) (size!2612 (_1!1915 (v!14043 lt!73319)))) lt!73318 lt!73319)))))))

(assert (=> b!204234 (= lt!73318 call!9850)))

(assert (=> b!204234 (= lt!73319 (maxPrefix!219 thiss!17480 (t!30807 rules!1920) lt!72932))))

(assert (= (and d!53979 c!39240) b!204228))

(assert (= (and d!53979 (not c!39240)) b!204234))

(assert (= (or b!204228 b!204234) bm!9845))

(assert (= (and d!53979 (not res!93513)) b!204230))

(assert (= (and b!204230 res!93509) b!204231))

(assert (= (and b!204231 res!93515) b!204233))

(assert (= (and b!204233 res!93514) b!204229))

(assert (= (and b!204229 res!93510) b!204226))

(assert (= (and b!204226 res!93512) b!204232))

(assert (= (and b!204232 res!93511) b!204227))

(declare-fun m!224409 () Bool)

(assert (=> b!204229 m!224409))

(declare-fun m!224411 () Bool)

(assert (=> b!204229 m!224411))

(assert (=> b!204229 m!224411))

(declare-fun m!224413 () Bool)

(assert (=> b!204229 m!224413))

(assert (=> b!204229 m!224413))

(declare-fun m!224415 () Bool)

(assert (=> b!204229 m!224415))

(declare-fun m!224417 () Bool)

(assert (=> b!204234 m!224417))

(assert (=> b!204232 m!224409))

(assert (=> b!204232 m!224411))

(assert (=> b!204232 m!224411))

(assert (=> b!204232 m!224413))

(assert (=> b!204232 m!224413))

(declare-fun m!224419 () Bool)

(assert (=> b!204232 m!224419))

(declare-fun m!224421 () Bool)

(assert (=> b!204230 m!224421))

(assert (=> b!204226 m!224409))

(declare-fun m!224423 () Bool)

(assert (=> b!204226 m!224423))

(assert (=> b!204226 m!224423))

(declare-fun m!224425 () Bool)

(assert (=> b!204226 m!224425))

(assert (=> b!204227 m!224409))

(declare-fun m!224427 () Bool)

(assert (=> b!204227 m!224427))

(assert (=> b!204231 m!224409))

(assert (=> b!204231 m!224411))

(assert (=> b!204231 m!224411))

(assert (=> b!204231 m!224413))

(assert (=> b!204233 m!224409))

(declare-fun m!224429 () Bool)

(assert (=> b!204233 m!224429))

(assert (=> b!204233 m!223983))

(declare-fun m!224431 () Bool)

(assert (=> bm!9845 m!224431))

(declare-fun m!224433 () Bool)

(assert (=> d!53979 m!224433))

(declare-fun m!224435 () Bool)

(assert (=> d!53979 m!224435))

(declare-fun m!224437 () Bool)

(assert (=> d!53979 m!224437))

(assert (=> d!53979 m!223463))

(assert (=> b!203472 d!53979))

(declare-fun b!204235 () Bool)

(declare-fun e!125537 () List!3274)

(declare-fun e!125538 () List!3274)

(assert (=> b!204235 (= e!125537 e!125538)))

(declare-fun c!39243 () Bool)

(assert (=> b!204235 (= c!39243 ((_ is Union!827) (regex!603 (rule!1130 lt!72926))))))

(declare-fun b!204236 () Bool)

(declare-fun e!125536 () List!3274)

(assert (=> b!204236 (= e!125536 (Cons!3264 (c!39074 (regex!603 (rule!1130 lt!72926))) Nil!3264))))

(declare-fun b!204237 () Bool)

(declare-fun c!39241 () Bool)

(assert (=> b!204237 (= c!39241 ((_ is Star!827) (regex!603 (rule!1130 lt!72926))))))

(assert (=> b!204237 (= e!125536 e!125537)))

(declare-fun d!53981 () Bool)

(declare-fun c!39244 () Bool)

(assert (=> d!53981 (= c!39244 (or ((_ is EmptyExpr!827) (regex!603 (rule!1130 lt!72926))) ((_ is EmptyLang!827) (regex!603 (rule!1130 lt!72926)))))))

(declare-fun e!125539 () List!3274)

(assert (=> d!53981 (= (usedCharacters!8 (regex!603 (rule!1130 lt!72926))) e!125539)))

(declare-fun b!204238 () Bool)

(declare-fun call!9854 () List!3274)

(assert (=> b!204238 (= e!125537 call!9854)))

(declare-fun b!204239 () Bool)

(assert (=> b!204239 (= e!125539 Nil!3264)))

(declare-fun b!204240 () Bool)

(declare-fun call!9852 () List!3274)

(assert (=> b!204240 (= e!125538 call!9852)))

(declare-fun b!204241 () Bool)

(assert (=> b!204241 (= e!125539 e!125536)))

(declare-fun c!39242 () Bool)

(assert (=> b!204241 (= c!39242 ((_ is ElementMatch!827) (regex!603 (rule!1130 lt!72926))))))

(declare-fun bm!9846 () Bool)

(declare-fun call!9851 () List!3274)

(declare-fun call!9853 () List!3274)

(assert (=> bm!9846 (= call!9852 (++!796 call!9851 call!9853))))

(declare-fun bm!9847 () Bool)

(assert (=> bm!9847 (= call!9853 (usedCharacters!8 (ite c!39243 (regTwo!2167 (regex!603 (rule!1130 lt!72926))) (regTwo!2166 (regex!603 (rule!1130 lt!72926))))))))

(declare-fun b!204242 () Bool)

(assert (=> b!204242 (= e!125538 call!9852)))

(declare-fun bm!9848 () Bool)

(assert (=> bm!9848 (= call!9854 (usedCharacters!8 (ite c!39241 (reg!1156 (regex!603 (rule!1130 lt!72926))) (ite c!39243 (regOne!2167 (regex!603 (rule!1130 lt!72926))) (regOne!2166 (regex!603 (rule!1130 lt!72926)))))))))

(declare-fun bm!9849 () Bool)

(assert (=> bm!9849 (= call!9851 call!9854)))

(assert (= (and d!53981 c!39244) b!204239))

(assert (= (and d!53981 (not c!39244)) b!204241))

(assert (= (and b!204241 c!39242) b!204236))

(assert (= (and b!204241 (not c!39242)) b!204237))

(assert (= (and b!204237 c!39241) b!204238))

(assert (= (and b!204237 (not c!39241)) b!204235))

(assert (= (and b!204235 c!39243) b!204240))

(assert (= (and b!204235 (not c!39243)) b!204242))

(assert (= (or b!204240 b!204242) bm!9849))

(assert (= (or b!204240 b!204242) bm!9847))

(assert (= (or b!204240 b!204242) bm!9846))

(assert (= (or b!204238 bm!9849) bm!9848))

(declare-fun m!224439 () Bool)

(assert (=> bm!9846 m!224439))

(declare-fun m!224441 () Bool)

(assert (=> bm!9847 m!224441))

(declare-fun m!224443 () Bool)

(assert (=> bm!9848 m!224443))

(assert (=> b!203472 d!53981))

(declare-fun d!53983 () Bool)

(declare-fun e!125540 () Bool)

(assert (=> d!53983 e!125540))

(declare-fun res!93516 () Bool)

(assert (=> d!53983 (=> (not res!93516) (not e!125540))))

(assert (=> d!53983 (= res!93516 (isDefined!352 (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 lt!72926)))))))

(declare-fun lt!73321 () Unit!3280)

(assert (=> d!53983 (= lt!73321 (choose!2016 thiss!17480 rules!1920 lt!72899 lt!72926))))

(assert (=> d!53983 (rulesInvariant!455 thiss!17480 rules!1920)))

(assert (=> d!53983 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!44 thiss!17480 rules!1920 lt!72899 lt!72926) lt!73321)))

(declare-fun b!204243 () Bool)

(declare-fun res!93517 () Bool)

(assert (=> b!204243 (=> (not res!93517) (not e!125540))))

(assert (=> b!204243 (= res!93517 (matchR!165 (regex!603 (get!969 (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 lt!72926))))) (list!1213 (charsOf!258 lt!72926))))))

(declare-fun b!204244 () Bool)

(assert (=> b!204244 (= e!125540 (= (rule!1130 lt!72926) (get!969 (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 lt!72926))))))))

(assert (= (and d!53983 res!93516) b!204243))

(assert (= (and b!204243 res!93517) b!204244))

(assert (=> d!53983 m!223267))

(assert (=> d!53983 m!223267))

(declare-fun m!224445 () Bool)

(assert (=> d!53983 m!224445))

(declare-fun m!224447 () Bool)

(assert (=> d!53983 m!224447))

(assert (=> d!53983 m!223187))

(assert (=> b!204243 m!223267))

(assert (=> b!204243 m!223215))

(assert (=> b!204243 m!223267))

(declare-fun m!224449 () Bool)

(assert (=> b!204243 m!224449))

(assert (=> b!204243 m!223215))

(assert (=> b!204243 m!223275))

(assert (=> b!204243 m!223275))

(declare-fun m!224451 () Bool)

(assert (=> b!204243 m!224451))

(assert (=> b!204244 m!223267))

(assert (=> b!204244 m!223267))

(assert (=> b!204244 m!224449))

(assert (=> b!203472 d!53983))

(declare-fun d!53985 () Bool)

(declare-fun lt!73322 () Bool)

(declare-fun e!125542 () Bool)

(assert (=> d!53985 (= lt!73322 e!125542)))

(declare-fun res!93518 () Bool)

(assert (=> d!53985 (=> (not res!93518) (not e!125542))))

(assert (=> d!53985 (= res!93518 (= (list!1217 (_1!1916 (lex!289 thiss!17480 rules!1920 (print!220 thiss!17480 (singletonSeq!155 lt!72926))))) (list!1217 (singletonSeq!155 lt!72926))))))

(declare-fun e!125541 () Bool)

(assert (=> d!53985 (= lt!73322 e!125541)))

(declare-fun res!93520 () Bool)

(assert (=> d!53985 (=> (not res!93520) (not e!125541))))

(declare-fun lt!73323 () tuple2!3400)

(assert (=> d!53985 (= res!93520 (= (size!2613 (_1!1916 lt!73323)) 1))))

(assert (=> d!53985 (= lt!73323 (lex!289 thiss!17480 rules!1920 (print!220 thiss!17480 (singletonSeq!155 lt!72926))))))

(assert (=> d!53985 (not (isEmpty!1692 rules!1920))))

(assert (=> d!53985 (= (rulesProduceIndividualToken!238 thiss!17480 rules!1920 lt!72926) lt!73322)))

(declare-fun b!204245 () Bool)

(declare-fun res!93519 () Bool)

(assert (=> b!204245 (=> (not res!93519) (not e!125541))))

(assert (=> b!204245 (= res!93519 (= (apply!526 (_1!1916 lt!73323) 0) lt!72926))))

(declare-fun b!204246 () Bool)

(assert (=> b!204246 (= e!125541 (isEmpty!1689 (_2!1916 lt!73323)))))

(declare-fun b!204247 () Bool)

(assert (=> b!204247 (= e!125542 (isEmpty!1689 (_2!1916 (lex!289 thiss!17480 rules!1920 (print!220 thiss!17480 (singletonSeq!155 lt!72926))))))))

(assert (= (and d!53985 res!93520) b!204245))

(assert (= (and b!204245 res!93519) b!204246))

(assert (= (and d!53985 res!93518) b!204247))

(assert (=> d!53985 m!223277))

(declare-fun m!224453 () Bool)

(assert (=> d!53985 m!224453))

(declare-fun m!224455 () Bool)

(assert (=> d!53985 m!224455))

(assert (=> d!53985 m!223277))

(declare-fun m!224457 () Bool)

(assert (=> d!53985 m!224457))

(declare-fun m!224459 () Bool)

(assert (=> d!53985 m!224459))

(assert (=> d!53985 m!223285))

(declare-fun m!224461 () Bool)

(assert (=> d!53985 m!224461))

(assert (=> d!53985 m!223277))

(assert (=> d!53985 m!224457))

(declare-fun m!224463 () Bool)

(assert (=> b!204245 m!224463))

(declare-fun m!224465 () Bool)

(assert (=> b!204246 m!224465))

(assert (=> b!204247 m!223277))

(assert (=> b!204247 m!223277))

(assert (=> b!204247 m!224457))

(assert (=> b!204247 m!224457))

(assert (=> b!204247 m!224459))

(declare-fun m!224467 () Bool)

(assert (=> b!204247 m!224467))

(assert (=> b!203472 d!53985))

(declare-fun d!53987 () Bool)

(assert (=> d!53987 (= (list!1213 (charsOf!258 lt!72926)) (list!1216 (c!39073 (charsOf!258 lt!72926))))))

(declare-fun bs!20815 () Bool)

(assert (= bs!20815 d!53987))

(declare-fun m!224469 () Bool)

(assert (=> bs!20815 m!224469))

(assert (=> b!203472 d!53987))

(declare-fun d!53989 () Bool)

(assert (=> d!53989 (= lt!72932 (_2!1915 lt!72897))))

(declare-fun lt!73326 () Unit!3280)

(declare-fun choose!2018 (List!3274 List!3274 List!3274 List!3274 List!3274) Unit!3280)

(assert (=> d!53989 (= lt!73326 (choose!2018 lt!72917 lt!72932 lt!72917 (_2!1915 lt!72897) lt!72904))))

(assert (=> d!53989 (isPrefix!299 lt!72917 lt!72904)))

(assert (=> d!53989 (= (lemmaSamePrefixThenSameSuffix!124 lt!72917 lt!72932 lt!72917 (_2!1915 lt!72897) lt!72904) lt!73326)))

(declare-fun bs!20816 () Bool)

(assert (= bs!20816 d!53989))

(declare-fun m!224471 () Bool)

(assert (=> bs!20816 m!224471))

(declare-fun m!224473 () Bool)

(assert (=> bs!20816 m!224473))

(assert (=> b!203472 d!53989))

(declare-fun b!204248 () Bool)

(declare-fun lt!73329 () Unit!3280)

(declare-fun lt!73328 () Unit!3280)

(assert (=> b!204248 (= lt!73329 lt!73328)))

(assert (=> b!204248 (rulesInvariant!455 thiss!17480 (t!30807 rules!1920))))

(assert (=> b!204248 (= lt!73328 (lemmaInvariantOnRulesThenOnTail!8 thiss!17480 (h!8662 rules!1920) (t!30807 rules!1920)))))

(declare-fun e!125545 () Option!502)

(assert (=> b!204248 (= e!125545 (getRuleFromTag!44 thiss!17480 (t!30807 rules!1920) (tag!787 (rule!1130 separatorToken!170))))))

(declare-fun d!53991 () Bool)

(declare-fun e!125543 () Bool)

(assert (=> d!53991 e!125543))

(declare-fun res!93522 () Bool)

(assert (=> d!53991 (=> res!93522 e!125543)))

(declare-fun lt!73327 () Option!502)

(assert (=> d!53991 (= res!93522 (isEmpty!1699 lt!73327))))

(declare-fun e!125544 () Option!502)

(assert (=> d!53991 (= lt!73327 e!125544)))

(declare-fun c!39245 () Bool)

(assert (=> d!53991 (= c!39245 (and ((_ is Cons!3265) rules!1920) (= (tag!787 (h!8662 rules!1920)) (tag!787 (rule!1130 separatorToken!170)))))))

(assert (=> d!53991 (rulesInvariant!455 thiss!17480 rules!1920)))

(assert (=> d!53991 (= (getRuleFromTag!44 thiss!17480 rules!1920 (tag!787 (rule!1130 separatorToken!170))) lt!73327)))

(declare-fun b!204249 () Bool)

(assert (=> b!204249 (= e!125544 e!125545)))

(declare-fun c!39246 () Bool)

(assert (=> b!204249 (= c!39246 (and ((_ is Cons!3265) rules!1920) (not (= (tag!787 (h!8662 rules!1920)) (tag!787 (rule!1130 separatorToken!170))))))))

(declare-fun b!204250 () Bool)

(assert (=> b!204250 (= e!125545 None!501)))

(declare-fun b!204251 () Bool)

(assert (=> b!204251 (= e!125544 (Some!501 (h!8662 rules!1920)))))

(declare-fun b!204252 () Bool)

(declare-fun e!125546 () Bool)

(assert (=> b!204252 (= e!125543 e!125546)))

(declare-fun res!93521 () Bool)

(assert (=> b!204252 (=> (not res!93521) (not e!125546))))

(assert (=> b!204252 (= res!93521 (contains!537 rules!1920 (get!969 lt!73327)))))

(declare-fun b!204253 () Bool)

(assert (=> b!204253 (= e!125546 (= (tag!787 (get!969 lt!73327)) (tag!787 (rule!1130 separatorToken!170))))))

(assert (= (and d!53991 c!39245) b!204251))

(assert (= (and d!53991 (not c!39245)) b!204249))

(assert (= (and b!204249 c!39246) b!204248))

(assert (= (and b!204249 (not c!39246)) b!204250))

(assert (= (and d!53991 (not res!93522)) b!204252))

(assert (= (and b!204252 res!93521) b!204253))

(assert (=> b!204248 m!224383))

(assert (=> b!204248 m!224385))

(declare-fun m!224475 () Bool)

(assert (=> b!204248 m!224475))

(declare-fun m!224477 () Bool)

(assert (=> d!53991 m!224477))

(assert (=> d!53991 m!223187))

(declare-fun m!224479 () Bool)

(assert (=> b!204252 m!224479))

(assert (=> b!204252 m!224479))

(declare-fun m!224481 () Bool)

(assert (=> b!204252 m!224481))

(assert (=> b!204253 m!224479))

(assert (=> b!203472 d!53991))

(declare-fun d!53993 () Bool)

(assert (=> d!53993 (= (isDefined!352 lt!72916) (not (isEmpty!1699 lt!72916)))))

(declare-fun bs!20817 () Bool)

(assert (= bs!20817 d!53993))

(declare-fun m!224483 () Bool)

(assert (=> bs!20817 m!224483))

(assert (=> b!203472 d!53993))

(declare-fun d!53995 () Bool)

(assert (=> d!53995 (rulesProduceIndividualToken!238 thiss!17480 rules!1920 lt!72926)))

(declare-fun lt!73354 () Unit!3280)

(declare-fun choose!2019 (LexerInterface!489 List!3275 List!3276 Token!950) Unit!3280)

(assert (=> d!53995 (= lt!73354 (choose!2019 thiss!17480 rules!1920 tokens!465 lt!72926))))

(assert (=> d!53995 (not (isEmpty!1692 rules!1920))))

(assert (=> d!53995 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!56 thiss!17480 rules!1920 tokens!465 lt!72926) lt!73354)))

(declare-fun bs!20823 () Bool)

(assert (= bs!20823 d!53995))

(assert (=> bs!20823 m!223257))

(declare-fun m!224555 () Bool)

(assert (=> bs!20823 m!224555))

(assert (=> bs!20823 m!223285))

(assert (=> b!203472 d!53995))

(declare-fun d!54017 () Bool)

(declare-fun lt!73355 () BalanceConc!2064)

(assert (=> d!54017 (= (list!1213 lt!73355) (printListTailRec!83 thiss!17480 (dropList!116 lt!72909 0) (list!1213 (BalanceConc!2065 Empty!1028))))))

(declare-fun e!125557 () BalanceConc!2064)

(assert (=> d!54017 (= lt!73355 e!125557)))

(declare-fun c!39252 () Bool)

(assert (=> d!54017 (= c!39252 (>= 0 (size!2613 lt!72909)))))

(declare-fun e!125556 () Bool)

(assert (=> d!54017 e!125556))

(declare-fun res!93531 () Bool)

(assert (=> d!54017 (=> (not res!93531) (not e!125556))))

(assert (=> d!54017 (= res!93531 (>= 0 0))))

(assert (=> d!54017 (= (printTailRec!183 thiss!17480 lt!72909 0 (BalanceConc!2065 Empty!1028)) lt!73355)))

(declare-fun b!204273 () Bool)

(assert (=> b!204273 (= e!125556 (<= 0 (size!2613 lt!72909)))))

(declare-fun b!204274 () Bool)

(assert (=> b!204274 (= e!125557 (BalanceConc!2065 Empty!1028))))

(declare-fun b!204275 () Bool)

(assert (=> b!204275 (= e!125557 (printTailRec!183 thiss!17480 lt!72909 (+ 0 1) (++!798 (BalanceConc!2065 Empty!1028) (charsOf!258 (apply!526 lt!72909 0)))))))

(declare-fun lt!73360 () List!3276)

(assert (=> b!204275 (= lt!73360 (list!1217 lt!72909))))

(declare-fun lt!73356 () Unit!3280)

(assert (=> b!204275 (= lt!73356 (lemmaDropApply!156 lt!73360 0))))

(assert (=> b!204275 (= (head!701 (drop!169 lt!73360 0)) (apply!528 lt!73360 0))))

(declare-fun lt!73357 () Unit!3280)

(assert (=> b!204275 (= lt!73357 lt!73356)))

(declare-fun lt!73359 () List!3276)

(assert (=> b!204275 (= lt!73359 (list!1217 lt!72909))))

(declare-fun lt!73358 () Unit!3280)

(assert (=> b!204275 (= lt!73358 (lemmaDropTail!148 lt!73359 0))))

(assert (=> b!204275 (= (tail!396 (drop!169 lt!73359 0)) (drop!169 lt!73359 (+ 0 1)))))

(declare-fun lt!73361 () Unit!3280)

(assert (=> b!204275 (= lt!73361 lt!73358)))

(assert (= (and d!54017 res!93531) b!204273))

(assert (= (and d!54017 c!39252) b!204274))

(assert (= (and d!54017 (not c!39252)) b!204275))

(declare-fun m!224557 () Bool)

(assert (=> d!54017 m!224557))

(declare-fun m!224559 () Bool)

(assert (=> d!54017 m!224559))

(assert (=> d!54017 m!223315))

(declare-fun m!224561 () Bool)

(assert (=> d!54017 m!224561))

(assert (=> d!54017 m!223315))

(declare-fun m!224563 () Bool)

(assert (=> d!54017 m!224563))

(assert (=> d!54017 m!224561))

(assert (=> b!204273 m!224559))

(declare-fun m!224565 () Bool)

(assert (=> b!204275 m!224565))

(declare-fun m!224567 () Bool)

(assert (=> b!204275 m!224567))

(declare-fun m!224569 () Bool)

(assert (=> b!204275 m!224569))

(declare-fun m!224571 () Bool)

(assert (=> b!204275 m!224571))

(declare-fun m!224573 () Bool)

(assert (=> b!204275 m!224573))

(assert (=> b!204275 m!224167))

(declare-fun m!224575 () Bool)

(assert (=> b!204275 m!224575))

(assert (=> b!204275 m!224569))

(declare-fun m!224577 () Bool)

(assert (=> b!204275 m!224577))

(assert (=> b!204275 m!224565))

(declare-fun m!224579 () Bool)

(assert (=> b!204275 m!224579))

(declare-fun m!224581 () Bool)

(assert (=> b!204275 m!224581))

(declare-fun m!224583 () Bool)

(assert (=> b!204275 m!224583))

(declare-fun m!224585 () Bool)

(assert (=> b!204275 m!224585))

(assert (=> b!204275 m!224579))

(assert (=> b!204275 m!224581))

(assert (=> b!204275 m!224571))

(declare-fun m!224587 () Bool)

(assert (=> b!204275 m!224587))

(assert (=> b!203472 d!54017))

(declare-fun d!54019 () Bool)

(declare-fun lt!73364 () Bool)

(assert (=> d!54019 (= lt!73364 (select (content!446 (usedCharacters!8 (regex!603 (rule!1130 lt!72926)))) lt!72901))))

(declare-fun e!125562 () Bool)

(assert (=> d!54019 (= lt!73364 e!125562)))

(declare-fun res!93537 () Bool)

(assert (=> d!54019 (=> (not res!93537) (not e!125562))))

(assert (=> d!54019 (= res!93537 ((_ is Cons!3264) (usedCharacters!8 (regex!603 (rule!1130 lt!72926)))))))

(assert (=> d!54019 (= (contains!536 (usedCharacters!8 (regex!603 (rule!1130 lt!72926))) lt!72901) lt!73364)))

(declare-fun b!204280 () Bool)

(declare-fun e!125563 () Bool)

(assert (=> b!204280 (= e!125562 e!125563)))

(declare-fun res!93536 () Bool)

(assert (=> b!204280 (=> res!93536 e!125563)))

(assert (=> b!204280 (= res!93536 (= (h!8661 (usedCharacters!8 (regex!603 (rule!1130 lt!72926)))) lt!72901))))

(declare-fun b!204281 () Bool)

(assert (=> b!204281 (= e!125563 (contains!536 (t!30806 (usedCharacters!8 (regex!603 (rule!1130 lt!72926)))) lt!72901))))

(assert (= (and d!54019 res!93537) b!204280))

(assert (= (and b!204280 (not res!93536)) b!204281))

(assert (=> d!54019 m!223221))

(declare-fun m!224589 () Bool)

(assert (=> d!54019 m!224589))

(declare-fun m!224591 () Bool)

(assert (=> d!54019 m!224591))

(declare-fun m!224593 () Bool)

(assert (=> b!204281 m!224593))

(assert (=> b!203472 d!54019))

(declare-fun d!54021 () Bool)

(declare-fun lt!73365 () Int)

(assert (=> d!54021 (= lt!73365 (size!2620 (list!1217 (_1!1916 lt!72919))))))

(assert (=> d!54021 (= lt!73365 (size!2621 (c!39075 (_1!1916 lt!72919))))))

(assert (=> d!54021 (= (size!2613 (_1!1916 lt!72919)) lt!73365)))

(declare-fun bs!20824 () Bool)

(assert (= bs!20824 d!54021))

(declare-fun m!224595 () Bool)

(assert (=> bs!20824 m!224595))

(assert (=> bs!20824 m!224595))

(declare-fun m!224597 () Bool)

(assert (=> bs!20824 m!224597))

(declare-fun m!224599 () Bool)

(assert (=> bs!20824 m!224599))

(assert (=> b!203472 d!54021))

(declare-fun d!54023 () Bool)

(assert (=> d!54023 (= (head!701 (t!30808 tokens!465)) (h!8663 (t!30808 tokens!465)))))

(assert (=> b!203472 d!54023))

(declare-fun d!54025 () Bool)

(declare-fun e!125601 () Bool)

(assert (=> d!54025 e!125601))

(declare-fun res!93574 () Bool)

(assert (=> d!54025 (=> res!93574 e!125601)))

(assert (=> d!54025 (= res!93574 (isEmpty!1688 tokens!465))))

(declare-fun lt!73391 () Unit!3280)

(declare-fun choose!2020 (LexerInterface!489 List!3275 List!3276 Token!950) Unit!3280)

(assert (=> d!54025 (= lt!73391 (choose!2020 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!54025 (not (isEmpty!1692 rules!1920))))

(assert (=> d!54025 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!64 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!73391)))

(declare-fun b!204329 () Bool)

(declare-fun e!125600 () Bool)

(assert (=> b!204329 (= e!125601 e!125600)))

(declare-fun res!93573 () Bool)

(assert (=> b!204329 (=> (not res!93573) (not e!125600))))

(assert (=> b!204329 (= res!93573 (isDefined!354 (maxPrefix!219 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!204330 () Bool)

(assert (=> b!204330 (= e!125600 (= (_1!1915 (get!968 (maxPrefix!219 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!182 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!701 tokens!465)))))

(assert (= (and d!54025 (not res!93574)) b!204329))

(assert (= (and b!204329 res!93573) b!204330))

(assert (=> d!54025 m!223213))

(declare-fun m!224721 () Bool)

(assert (=> d!54025 m!224721))

(assert (=> d!54025 m!223285))

(assert (=> b!204329 m!223163))

(assert (=> b!204329 m!223163))

(declare-fun m!224725 () Bool)

(assert (=> b!204329 m!224725))

(assert (=> b!204329 m!224725))

(declare-fun m!224727 () Bool)

(assert (=> b!204329 m!224727))

(assert (=> b!204330 m!223163))

(assert (=> b!204330 m!223163))

(assert (=> b!204330 m!224725))

(assert (=> b!204330 m!224725))

(declare-fun m!224735 () Bool)

(assert (=> b!204330 m!224735))

(assert (=> b!204330 m!223305))

(assert (=> b!203472 d!54025))

(declare-fun d!54061 () Bool)

(declare-fun c!39267 () Bool)

(assert (=> d!54061 (= c!39267 ((_ is IntegerValue!1875) (value!21501 separatorToken!170)))))

(declare-fun e!125614 () Bool)

(assert (=> d!54061 (= (inv!21 (value!21501 separatorToken!170)) e!125614)))

(declare-fun b!204348 () Bool)

(declare-fun e!125613 () Bool)

(declare-fun inv!15 (TokenValue!625) Bool)

(assert (=> b!204348 (= e!125613 (inv!15 (value!21501 separatorToken!170)))))

(declare-fun b!204349 () Bool)

(declare-fun e!125612 () Bool)

(assert (=> b!204349 (= e!125614 e!125612)))

(declare-fun c!39266 () Bool)

(assert (=> b!204349 (= c!39266 ((_ is IntegerValue!1876) (value!21501 separatorToken!170)))))

(declare-fun b!204350 () Bool)

(declare-fun inv!16 (TokenValue!625) Bool)

(assert (=> b!204350 (= e!125614 (inv!16 (value!21501 separatorToken!170)))))

(declare-fun b!204351 () Bool)

(declare-fun res!93578 () Bool)

(assert (=> b!204351 (=> res!93578 e!125613)))

(assert (=> b!204351 (= res!93578 (not ((_ is IntegerValue!1877) (value!21501 separatorToken!170))))))

(assert (=> b!204351 (= e!125612 e!125613)))

(declare-fun b!204352 () Bool)

(declare-fun inv!17 (TokenValue!625) Bool)

(assert (=> b!204352 (= e!125612 (inv!17 (value!21501 separatorToken!170)))))

(assert (= (and d!54061 c!39267) b!204350))

(assert (= (and d!54061 (not c!39267)) b!204349))

(assert (= (and b!204349 c!39266) b!204352))

(assert (= (and b!204349 (not c!39266)) b!204351))

(assert (= (and b!204351 (not res!93578)) b!204348))

(declare-fun m!224745 () Bool)

(assert (=> b!204348 m!224745))

(declare-fun m!224747 () Bool)

(assert (=> b!204350 m!224747))

(declare-fun m!224749 () Bool)

(assert (=> b!204352 m!224749))

(assert (=> b!203470 d!54061))

(declare-fun d!54065 () Bool)

(declare-fun res!93591 () Bool)

(declare-fun e!125626 () Bool)

(assert (=> d!54065 (=> res!93591 e!125626)))

(assert (=> d!54065 (= res!93591 (not ((_ is Cons!3265) rules!1920)))))

(assert (=> d!54065 (= (sepAndNonSepRulesDisjointChars!192 rules!1920 rules!1920) e!125626)))

(declare-fun b!204371 () Bool)

(declare-fun e!125627 () Bool)

(assert (=> b!204371 (= e!125626 e!125627)))

(declare-fun res!93592 () Bool)

(assert (=> b!204371 (=> (not res!93592) (not e!125627))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!65 (Rule!1006 List!3275) Bool)

(assert (=> b!204371 (= res!93592 (ruleDisjointCharsFromAllFromOtherType!65 (h!8662 rules!1920) rules!1920))))

(declare-fun b!204372 () Bool)

(assert (=> b!204372 (= e!125627 (sepAndNonSepRulesDisjointChars!192 rules!1920 (t!30807 rules!1920)))))

(assert (= (and d!54065 (not res!93591)) b!204371))

(assert (= (and b!204371 res!93592) b!204372))

(declare-fun m!224767 () Bool)

(assert (=> b!204371 m!224767))

(declare-fun m!224769 () Bool)

(assert (=> b!204372 m!224769))

(assert (=> b!203513 d!54065))

(declare-fun d!54071 () Bool)

(declare-fun lt!73400 () Token!950)

(assert (=> d!54071 (= lt!73400 (apply!528 (list!1217 (_1!1916 lt!72919)) 0))))

(declare-fun apply!532 (Conc!1029 Int) Token!950)

(assert (=> d!54071 (= lt!73400 (apply!532 (c!39075 (_1!1916 lt!72919)) 0))))

(declare-fun e!125636 () Bool)

(assert (=> d!54071 e!125636))

(declare-fun res!93601 () Bool)

(assert (=> d!54071 (=> (not res!93601) (not e!125636))))

(assert (=> d!54071 (= res!93601 (<= 0 0))))

(assert (=> d!54071 (= (apply!526 (_1!1916 lt!72919) 0) lt!73400)))

(declare-fun b!204387 () Bool)

(assert (=> b!204387 (= e!125636 (< 0 (size!2613 (_1!1916 lt!72919))))))

(assert (= (and d!54071 res!93601) b!204387))

(assert (=> d!54071 m!224595))

(assert (=> d!54071 m!224595))

(declare-fun m!224783 () Bool)

(assert (=> d!54071 m!224783))

(declare-fun m!224785 () Bool)

(assert (=> d!54071 m!224785))

(assert (=> b!204387 m!223243))

(assert (=> b!203492 d!54071))

(declare-fun d!54075 () Bool)

(declare-fun isEmpty!1701 (Option!503) Bool)

(assert (=> d!54075 (= (isDefined!353 (maxPrefixZipperSequence!182 thiss!17480 rules!1920 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465))))) (not (isEmpty!1701 (maxPrefixZipperSequence!182 thiss!17480 rules!1920 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))))

(declare-fun bs!20831 () Bool)

(assert (= bs!20831 d!54075))

(assert (=> bs!20831 m!223191))

(declare-fun m!224787 () Bool)

(assert (=> bs!20831 m!224787))

(assert (=> b!203474 d!54075))

(declare-fun call!9874 () Option!503)

(declare-fun bm!9869 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!70 (LexerInterface!489 Rule!1006 BalanceConc!2064) Option!503)

(assert (=> bm!9869 (= call!9874 (maxPrefixOneRuleZipperSequence!70 thiss!17480 (h!8662 rules!1920) (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))

(declare-fun b!204525 () Bool)

(declare-fun e!125735 () Bool)

(declare-fun e!125737 () Bool)

(assert (=> b!204525 (= e!125735 e!125737)))

(declare-fun res!93646 () Bool)

(assert (=> b!204525 (=> (not res!93646) (not e!125737))))

(declare-fun lt!73457 () Option!503)

(declare-fun get!971 (Option!503) tuple2!3402)

(declare-fun maxPrefixZipper!69 (LexerInterface!489 List!3275 List!3274) Option!501)

(assert (=> b!204525 (= res!93646 (= (_1!1917 (get!971 lt!73457)) (_1!1915 (get!968 (maxPrefixZipper!69 thiss!17480 rules!1920 (list!1213 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))))))

(declare-fun d!54077 () Bool)

(declare-fun e!125736 () Bool)

(assert (=> d!54077 e!125736))

(declare-fun res!93645 () Bool)

(assert (=> d!54077 (=> (not res!93645) (not e!125736))))

(assert (=> d!54077 (= res!93645 (= (isDefined!353 lt!73457) (isDefined!354 (maxPrefixZipper!69 thiss!17480 rules!1920 (list!1213 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465))))))))))

(declare-fun e!125733 () Option!503)

(assert (=> d!54077 (= lt!73457 e!125733)))

(declare-fun c!39292 () Bool)

(assert (=> d!54077 (= c!39292 (and ((_ is Cons!3265) rules!1920) ((_ is Nil!3265) (t!30807 rules!1920))))))

(declare-fun lt!73452 () Unit!3280)

(declare-fun lt!73453 () Unit!3280)

(assert (=> d!54077 (= lt!73452 lt!73453)))

(declare-fun lt!73456 () List!3274)

(declare-fun lt!73451 () List!3274)

(assert (=> d!54077 (isPrefix!299 lt!73456 lt!73451)))

(assert (=> d!54077 (= lt!73453 (lemmaIsPrefixRefl!164 lt!73456 lt!73451))))

(assert (=> d!54077 (= lt!73451 (list!1213 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))

(assert (=> d!54077 (= lt!73456 (list!1213 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))

(assert (=> d!54077 (rulesValidInductive!153 thiss!17480 rules!1920)))

(assert (=> d!54077 (= (maxPrefixZipperSequence!182 thiss!17480 rules!1920 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))) lt!73457)))

(declare-fun b!204526 () Bool)

(declare-fun e!125734 () Bool)

(declare-fun e!125732 () Bool)

(assert (=> b!204526 (= e!125734 e!125732)))

(declare-fun res!93644 () Bool)

(assert (=> b!204526 (=> (not res!93644) (not e!125732))))

(assert (=> b!204526 (= res!93644 (= (_1!1917 (get!971 lt!73457)) (_1!1915 (get!968 (maxPrefix!219 thiss!17480 rules!1920 (list!1213 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))))))

(declare-fun b!204527 () Bool)

(assert (=> b!204527 (= e!125737 (= (list!1213 (_2!1917 (get!971 lt!73457))) (_2!1915 (get!968 (maxPrefixZipper!69 thiss!17480 rules!1920 (list!1213 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))))))

(declare-fun b!204528 () Bool)

(assert (=> b!204528 (= e!125736 e!125734)))

(declare-fun res!93648 () Bool)

(assert (=> b!204528 (=> res!93648 e!125734)))

(assert (=> b!204528 (= res!93648 (not (isDefined!353 lt!73457)))))

(declare-fun b!204529 () Bool)

(assert (=> b!204529 (= e!125732 (= (list!1213 (_2!1917 (get!971 lt!73457))) (_2!1915 (get!968 (maxPrefix!219 thiss!17480 rules!1920 (list!1213 (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))))))

(declare-fun b!204530 () Bool)

(assert (=> b!204530 (= e!125733 call!9874)))

(declare-fun b!204531 () Bool)

(declare-fun lt!73454 () Option!503)

(declare-fun lt!73455 () Option!503)

(assert (=> b!204531 (= e!125733 (ite (and ((_ is None!502) lt!73454) ((_ is None!502) lt!73455)) None!502 (ite ((_ is None!502) lt!73455) lt!73454 (ite ((_ is None!502) lt!73454) lt!73455 (ite (>= (size!2612 (_1!1917 (v!14045 lt!73454))) (size!2612 (_1!1917 (v!14045 lt!73455)))) lt!73454 lt!73455)))))))

(assert (=> b!204531 (= lt!73454 call!9874)))

(assert (=> b!204531 (= lt!73455 (maxPrefixZipperSequence!182 thiss!17480 (t!30807 rules!1920) (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465)))))))

(declare-fun b!204532 () Bool)

(declare-fun res!93647 () Bool)

(assert (=> b!204532 (=> (not res!93647) (not e!125736))))

(assert (=> b!204532 (= res!93647 e!125735)))

(declare-fun res!93643 () Bool)

(assert (=> b!204532 (=> res!93643 e!125735)))

(assert (=> b!204532 (= res!93643 (not (isDefined!353 lt!73457)))))

(assert (= (and d!54077 c!39292) b!204530))

(assert (= (and d!54077 (not c!39292)) b!204531))

(assert (= (or b!204530 b!204531) bm!9869))

(assert (= (and d!54077 res!93645) b!204532))

(assert (= (and b!204532 (not res!93643)) b!204525))

(assert (= (and b!204525 res!93646) b!204527))

(assert (= (and b!204532 res!93647) b!204528))

(assert (= (and b!204528 (not res!93648)) b!204526))

(assert (= (and b!204526 res!93644) b!204529))

(declare-fun m!224979 () Bool)

(assert (=> b!204527 m!224979))

(declare-fun m!224981 () Bool)

(assert (=> b!204527 m!224981))

(declare-fun m!224983 () Bool)

(assert (=> b!204527 m!224983))

(assert (=> b!204527 m!223189))

(assert (=> b!204527 m!224981))

(assert (=> b!204527 m!224983))

(declare-fun m!224985 () Bool)

(assert (=> b!204527 m!224985))

(declare-fun m!224987 () Bool)

(assert (=> b!204527 m!224987))

(declare-fun m!224989 () Bool)

(assert (=> b!204532 m!224989))

(assert (=> b!204531 m!223189))

(declare-fun m!224991 () Bool)

(assert (=> b!204531 m!224991))

(assert (=> d!54077 m!223463))

(assert (=> d!54077 m!224981))

(assert (=> d!54077 m!224983))

(assert (=> d!54077 m!223189))

(assert (=> d!54077 m!224981))

(assert (=> d!54077 m!224983))

(declare-fun m!224993 () Bool)

(assert (=> d!54077 m!224993))

(declare-fun m!224995 () Bool)

(assert (=> d!54077 m!224995))

(declare-fun m!224997 () Bool)

(assert (=> d!54077 m!224997))

(assert (=> d!54077 m!224989))

(assert (=> b!204529 m!224979))

(assert (=> b!204529 m!224981))

(declare-fun m!224999 () Bool)

(assert (=> b!204529 m!224999))

(assert (=> b!204529 m!224987))

(assert (=> b!204529 m!223189))

(assert (=> b!204529 m!224981))

(assert (=> b!204529 m!224999))

(declare-fun m!225001 () Bool)

(assert (=> b!204529 m!225001))

(assert (=> bm!9869 m!223189))

(declare-fun m!225003 () Bool)

(assert (=> bm!9869 m!225003))

(assert (=> b!204525 m!224979))

(assert (=> b!204525 m!223189))

(assert (=> b!204525 m!224981))

(assert (=> b!204525 m!224981))

(assert (=> b!204525 m!224983))

(assert (=> b!204525 m!224983))

(assert (=> b!204525 m!224985))

(assert (=> b!204528 m!224989))

(assert (=> b!204526 m!224979))

(assert (=> b!204526 m!223189))

(assert (=> b!204526 m!224981))

(assert (=> b!204526 m!224981))

(assert (=> b!204526 m!224999))

(assert (=> b!204526 m!224999))

(assert (=> b!204526 m!225001))

(assert (=> b!203474 d!54077))

(declare-fun d!54127 () Bool)

(assert (=> d!54127 (= (seqFromList!583 (originalCharacters!646 (h!8663 tokens!465))) (fromListB!219 (originalCharacters!646 (h!8663 tokens!465))))))

(declare-fun bs!20864 () Bool)

(assert (= bs!20864 d!54127))

(declare-fun m!225005 () Bool)

(assert (=> bs!20864 m!225005))

(assert (=> b!203474 d!54127))

(declare-fun d!54129 () Bool)

(assert (=> d!54129 (dynLambda!1432 lambda!6208 (h!8663 tokens!465))))

(declare-fun lt!73458 () Unit!3280)

(assert (=> d!54129 (= lt!73458 (choose!2015 tokens!465 lambda!6208 (h!8663 tokens!465)))))

(declare-fun e!125738 () Bool)

(assert (=> d!54129 e!125738))

(declare-fun res!93649 () Bool)

(assert (=> d!54129 (=> (not res!93649) (not e!125738))))

(assert (=> d!54129 (= res!93649 (forall!703 tokens!465 lambda!6208))))

(assert (=> d!54129 (= (forallContained!170 tokens!465 lambda!6208 (h!8663 tokens!465)) lt!73458)))

(declare-fun b!204533 () Bool)

(assert (=> b!204533 (= e!125738 (contains!540 tokens!465 (h!8663 tokens!465)))))

(assert (= (and d!54129 res!93649) b!204533))

(declare-fun b_lambda!5281 () Bool)

(assert (=> (not b_lambda!5281) (not d!54129)))

(declare-fun m!225007 () Bool)

(assert (=> d!54129 m!225007))

(declare-fun m!225009 () Bool)

(assert (=> d!54129 m!225009))

(assert (=> d!54129 m!224355))

(declare-fun m!225011 () Bool)

(assert (=> b!204533 m!225011))

(assert (=> b!203474 d!54129))

(declare-fun b!204534 () Bool)

(declare-fun res!93650 () Bool)

(declare-fun e!125740 () Bool)

(assert (=> b!204534 (=> (not res!93650) (not e!125740))))

(declare-fun call!9875 () Bool)

(assert (=> b!204534 (= res!93650 (not call!9875))))

(declare-fun b!204535 () Bool)

(declare-fun res!93653 () Bool)

(declare-fun e!125745 () Bool)

(assert (=> b!204535 (=> res!93653 e!125745)))

(assert (=> b!204535 (= res!93653 (not (isEmpty!1691 (tail!398 lt!72899))))))

(declare-fun b!204536 () Bool)

(declare-fun e!125739 () Bool)

(assert (=> b!204536 (= e!125739 e!125745)))

(declare-fun res!93656 () Bool)

(assert (=> b!204536 (=> res!93656 e!125745)))

(assert (=> b!204536 (= res!93656 call!9875)))

(declare-fun b!204538 () Bool)

(declare-fun e!125742 () Bool)

(declare-fun lt!73459 () Bool)

(assert (=> b!204538 (= e!125742 (= lt!73459 call!9875))))

(declare-fun b!204539 () Bool)

(declare-fun e!125743 () Bool)

(assert (=> b!204539 (= e!125743 e!125739)))

(declare-fun res!93655 () Bool)

(assert (=> b!204539 (=> (not res!93655) (not e!125739))))

(assert (=> b!204539 (= res!93655 (not lt!73459))))

(declare-fun b!204540 () Bool)

(declare-fun e!125741 () Bool)

(assert (=> b!204540 (= e!125741 (nullable!134 (regex!603 lt!72934)))))

(declare-fun b!204541 () Bool)

(declare-fun res!93651 () Bool)

(assert (=> b!204541 (=> res!93651 e!125743)))

(assert (=> b!204541 (= res!93651 (not ((_ is ElementMatch!827) (regex!603 lt!72934))))))

(declare-fun e!125744 () Bool)

(assert (=> b!204541 (= e!125744 e!125743)))

(declare-fun b!204537 () Bool)

(declare-fun res!93657 () Bool)

(assert (=> b!204537 (=> res!93657 e!125743)))

(assert (=> b!204537 (= res!93657 e!125740)))

(declare-fun res!93654 () Bool)

(assert (=> b!204537 (=> (not res!93654) (not e!125740))))

(assert (=> b!204537 (= res!93654 lt!73459)))

(declare-fun d!54131 () Bool)

(assert (=> d!54131 e!125742))

(declare-fun c!39293 () Bool)

(assert (=> d!54131 (= c!39293 ((_ is EmptyExpr!827) (regex!603 lt!72934)))))

(assert (=> d!54131 (= lt!73459 e!125741)))

(declare-fun c!39295 () Bool)

(assert (=> d!54131 (= c!39295 (isEmpty!1691 lt!72899))))

(assert (=> d!54131 (validRegex!209 (regex!603 lt!72934))))

(assert (=> d!54131 (= (matchR!165 (regex!603 lt!72934) lt!72899) lt!73459)))

(declare-fun b!204542 () Bool)

(assert (=> b!204542 (= e!125741 (matchR!165 (derivativeStep!100 (regex!603 lt!72934) (head!702 lt!72899)) (tail!398 lt!72899)))))

(declare-fun b!204543 () Bool)

(assert (=> b!204543 (= e!125744 (not lt!73459))))

(declare-fun b!204544 () Bool)

(declare-fun res!93652 () Bool)

(assert (=> b!204544 (=> (not res!93652) (not e!125740))))

(assert (=> b!204544 (= res!93652 (isEmpty!1691 (tail!398 lt!72899)))))

(declare-fun b!204545 () Bool)

(assert (=> b!204545 (= e!125740 (= (head!702 lt!72899) (c!39074 (regex!603 lt!72934))))))

(declare-fun bm!9870 () Bool)

(assert (=> bm!9870 (= call!9875 (isEmpty!1691 lt!72899))))

(declare-fun b!204546 () Bool)

(assert (=> b!204546 (= e!125745 (not (= (head!702 lt!72899) (c!39074 (regex!603 lt!72934)))))))

(declare-fun b!204547 () Bool)

(assert (=> b!204547 (= e!125742 e!125744)))

(declare-fun c!39294 () Bool)

(assert (=> b!204547 (= c!39294 ((_ is EmptyLang!827) (regex!603 lt!72934)))))

(assert (= (and d!54131 c!39295) b!204540))

(assert (= (and d!54131 (not c!39295)) b!204542))

(assert (= (and d!54131 c!39293) b!204538))

(assert (= (and d!54131 (not c!39293)) b!204547))

(assert (= (and b!204547 c!39294) b!204543))

(assert (= (and b!204547 (not c!39294)) b!204541))

(assert (= (and b!204541 (not res!93651)) b!204537))

(assert (= (and b!204537 res!93654) b!204534))

(assert (= (and b!204534 res!93650) b!204544))

(assert (= (and b!204544 res!93652) b!204545))

(assert (= (and b!204537 (not res!93657)) b!204539))

(assert (= (and b!204539 res!93655) b!204536))

(assert (= (and b!204536 (not res!93656)) b!204535))

(assert (= (and b!204535 (not res!93653)) b!204546))

(assert (= (or b!204538 b!204534 b!204536) bm!9870))

(assert (=> b!204545 m!223279))

(declare-fun m!225013 () Bool)

(assert (=> bm!9870 m!225013))

(assert (=> b!204546 m!223279))

(declare-fun m!225015 () Bool)

(assert (=> b!204535 m!225015))

(assert (=> b!204535 m!225015))

(declare-fun m!225017 () Bool)

(assert (=> b!204535 m!225017))

(assert (=> d!54131 m!225013))

(declare-fun m!225019 () Bool)

(assert (=> d!54131 m!225019))

(declare-fun m!225021 () Bool)

(assert (=> b!204540 m!225021))

(assert (=> b!204544 m!225015))

(assert (=> b!204544 m!225015))

(assert (=> b!204544 m!225017))

(assert (=> b!204542 m!223279))

(assert (=> b!204542 m!223279))

(declare-fun m!225023 () Bool)

(assert (=> b!204542 m!225023))

(assert (=> b!204542 m!225015))

(assert (=> b!204542 m!225023))

(assert (=> b!204542 m!225015))

(declare-fun m!225025 () Bool)

(assert (=> b!204542 m!225025))

(assert (=> b!203473 d!54131))

(declare-fun d!54133 () Bool)

(assert (=> d!54133 (= (get!969 lt!72916) (v!14044 lt!72916))))

(assert (=> b!203473 d!54133))

(declare-fun d!54135 () Bool)

(assert (=> d!54135 (= (inv!4102 (tag!787 (rule!1130 (h!8663 tokens!465)))) (= (mod (str.len (value!21500 (tag!787 (rule!1130 (h!8663 tokens!465))))) 2) 0))))

(assert (=> b!203498 d!54135))

(declare-fun d!54137 () Bool)

(declare-fun res!93658 () Bool)

(declare-fun e!125746 () Bool)

(assert (=> d!54137 (=> (not res!93658) (not e!125746))))

(assert (=> d!54137 (= res!93658 (semiInverseModEq!206 (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (toValue!1286 (transformation!603 (rule!1130 (h!8663 tokens!465))))))))

(assert (=> d!54137 (= (inv!4106 (transformation!603 (rule!1130 (h!8663 tokens!465)))) e!125746)))

(declare-fun b!204548 () Bool)

(assert (=> b!204548 (= e!125746 (equivClasses!189 (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (toValue!1286 (transformation!603 (rule!1130 (h!8663 tokens!465))))))))

(assert (= (and d!54137 res!93658) b!204548))

(declare-fun m!225027 () Bool)

(assert (=> d!54137 m!225027))

(declare-fun m!225029 () Bool)

(assert (=> b!204548 m!225029))

(assert (=> b!203498 d!54137))

(declare-fun d!54139 () Bool)

(assert (=> d!54139 (not (matchR!165 (regex!603 (rule!1130 lt!72926)) lt!72899))))

(declare-fun lt!73462 () Unit!3280)

(declare-fun choose!2022 (Regex!827 List!3274 C!2576) Unit!3280)

(assert (=> d!54139 (= lt!73462 (choose!2022 (regex!603 (rule!1130 lt!72926)) lt!72899 lt!72901))))

(assert (=> d!54139 (validRegex!209 (regex!603 (rule!1130 lt!72926)))))

(assert (=> d!54139 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!2 (regex!603 (rule!1130 lt!72926)) lt!72899 lt!72901) lt!73462)))

(declare-fun bs!20865 () Bool)

(assert (= bs!20865 d!54139))

(assert (=> bs!20865 m!223157))

(declare-fun m!225031 () Bool)

(assert (=> bs!20865 m!225031))

(declare-fun m!225033 () Bool)

(assert (=> bs!20865 m!225033))

(assert (=> b!203477 d!54139))

(declare-fun b!204549 () Bool)

(declare-fun res!93659 () Bool)

(declare-fun e!125748 () Bool)

(assert (=> b!204549 (=> (not res!93659) (not e!125748))))

(declare-fun call!9876 () Bool)

(assert (=> b!204549 (= res!93659 (not call!9876))))

(declare-fun b!204550 () Bool)

(declare-fun res!93662 () Bool)

(declare-fun e!125753 () Bool)

(assert (=> b!204550 (=> res!93662 e!125753)))

(assert (=> b!204550 (= res!93662 (not (isEmpty!1691 (tail!398 lt!72899))))))

(declare-fun b!204551 () Bool)

(declare-fun e!125747 () Bool)

(assert (=> b!204551 (= e!125747 e!125753)))

(declare-fun res!93665 () Bool)

(assert (=> b!204551 (=> res!93665 e!125753)))

(assert (=> b!204551 (= res!93665 call!9876)))

(declare-fun b!204553 () Bool)

(declare-fun e!125750 () Bool)

(declare-fun lt!73463 () Bool)

(assert (=> b!204553 (= e!125750 (= lt!73463 call!9876))))

(declare-fun b!204554 () Bool)

(declare-fun e!125751 () Bool)

(assert (=> b!204554 (= e!125751 e!125747)))

(declare-fun res!93664 () Bool)

(assert (=> b!204554 (=> (not res!93664) (not e!125747))))

(assert (=> b!204554 (= res!93664 (not lt!73463))))

(declare-fun b!204555 () Bool)

(declare-fun e!125749 () Bool)

(assert (=> b!204555 (= e!125749 (nullable!134 (regex!603 (rule!1130 lt!72926))))))

(declare-fun b!204556 () Bool)

(declare-fun res!93660 () Bool)

(assert (=> b!204556 (=> res!93660 e!125751)))

(assert (=> b!204556 (= res!93660 (not ((_ is ElementMatch!827) (regex!603 (rule!1130 lt!72926)))))))

(declare-fun e!125752 () Bool)

(assert (=> b!204556 (= e!125752 e!125751)))

(declare-fun b!204552 () Bool)

(declare-fun res!93666 () Bool)

(assert (=> b!204552 (=> res!93666 e!125751)))

(assert (=> b!204552 (= res!93666 e!125748)))

(declare-fun res!93663 () Bool)

(assert (=> b!204552 (=> (not res!93663) (not e!125748))))

(assert (=> b!204552 (= res!93663 lt!73463)))

(declare-fun d!54141 () Bool)

(assert (=> d!54141 e!125750))

(declare-fun c!39297 () Bool)

(assert (=> d!54141 (= c!39297 ((_ is EmptyExpr!827) (regex!603 (rule!1130 lt!72926))))))

(assert (=> d!54141 (= lt!73463 e!125749)))

(declare-fun c!39299 () Bool)

(assert (=> d!54141 (= c!39299 (isEmpty!1691 lt!72899))))

(assert (=> d!54141 (validRegex!209 (regex!603 (rule!1130 lt!72926)))))

(assert (=> d!54141 (= (matchR!165 (regex!603 (rule!1130 lt!72926)) lt!72899) lt!73463)))

(declare-fun b!204557 () Bool)

(assert (=> b!204557 (= e!125749 (matchR!165 (derivativeStep!100 (regex!603 (rule!1130 lt!72926)) (head!702 lt!72899)) (tail!398 lt!72899)))))

(declare-fun b!204558 () Bool)

(assert (=> b!204558 (= e!125752 (not lt!73463))))

(declare-fun b!204559 () Bool)

(declare-fun res!93661 () Bool)

(assert (=> b!204559 (=> (not res!93661) (not e!125748))))

(assert (=> b!204559 (= res!93661 (isEmpty!1691 (tail!398 lt!72899)))))

(declare-fun b!204560 () Bool)

(assert (=> b!204560 (= e!125748 (= (head!702 lt!72899) (c!39074 (regex!603 (rule!1130 lt!72926)))))))

(declare-fun bm!9871 () Bool)

(assert (=> bm!9871 (= call!9876 (isEmpty!1691 lt!72899))))

(declare-fun b!204561 () Bool)

(assert (=> b!204561 (= e!125753 (not (= (head!702 lt!72899) (c!39074 (regex!603 (rule!1130 lt!72926))))))))

(declare-fun b!204562 () Bool)

(assert (=> b!204562 (= e!125750 e!125752)))

(declare-fun c!39298 () Bool)

(assert (=> b!204562 (= c!39298 ((_ is EmptyLang!827) (regex!603 (rule!1130 lt!72926))))))

(assert (= (and d!54141 c!39299) b!204555))

(assert (= (and d!54141 (not c!39299)) b!204557))

(assert (= (and d!54141 c!39297) b!204553))

(assert (= (and d!54141 (not c!39297)) b!204562))

(assert (= (and b!204562 c!39298) b!204558))

(assert (= (and b!204562 (not c!39298)) b!204556))

(assert (= (and b!204556 (not res!93660)) b!204552))

(assert (= (and b!204552 res!93663) b!204549))

(assert (= (and b!204549 res!93659) b!204559))

(assert (= (and b!204559 res!93661) b!204560))

(assert (= (and b!204552 (not res!93666)) b!204554))

(assert (= (and b!204554 res!93664) b!204551))

(assert (= (and b!204551 (not res!93665)) b!204550))

(assert (= (and b!204550 (not res!93662)) b!204561))

(assert (= (or b!204553 b!204549 b!204551) bm!9871))

(assert (=> b!204560 m!223279))

(assert (=> bm!9871 m!225013))

(assert (=> b!204561 m!223279))

(assert (=> b!204550 m!225015))

(assert (=> b!204550 m!225015))

(assert (=> b!204550 m!225017))

(assert (=> d!54141 m!225013))

(assert (=> d!54141 m!225033))

(declare-fun m!225035 () Bool)

(assert (=> b!204555 m!225035))

(assert (=> b!204559 m!225015))

(assert (=> b!204559 m!225015))

(assert (=> b!204559 m!225017))

(assert (=> b!204557 m!223279))

(assert (=> b!204557 m!223279))

(declare-fun m!225037 () Bool)

(assert (=> b!204557 m!225037))

(assert (=> b!204557 m!225015))

(assert (=> b!204557 m!225037))

(assert (=> b!204557 m!225015))

(declare-fun m!225039 () Bool)

(assert (=> b!204557 m!225039))

(assert (=> b!203477 d!54141))

(declare-fun d!54143 () Bool)

(assert (=> d!54143 (= (isEmpty!1691 (_2!1915 lt!72900)) ((_ is Nil!3264) (_2!1915 lt!72900)))))

(assert (=> b!203497 d!54143))

(declare-fun d!54145 () Bool)

(declare-fun lt!73464 () Bool)

(declare-fun e!125755 () Bool)

(assert (=> d!54145 (= lt!73464 e!125755)))

(declare-fun res!93667 () Bool)

(assert (=> d!54145 (=> (not res!93667) (not e!125755))))

(assert (=> d!54145 (= res!93667 (= (list!1217 (_1!1916 (lex!289 thiss!17480 rules!1920 (print!220 thiss!17480 (singletonSeq!155 (h!8663 tokens!465)))))) (list!1217 (singletonSeq!155 (h!8663 tokens!465)))))))

(declare-fun e!125754 () Bool)

(assert (=> d!54145 (= lt!73464 e!125754)))

(declare-fun res!93669 () Bool)

(assert (=> d!54145 (=> (not res!93669) (not e!125754))))

(declare-fun lt!73465 () tuple2!3400)

(assert (=> d!54145 (= res!93669 (= (size!2613 (_1!1916 lt!73465)) 1))))

(assert (=> d!54145 (= lt!73465 (lex!289 thiss!17480 rules!1920 (print!220 thiss!17480 (singletonSeq!155 (h!8663 tokens!465)))))))

(assert (=> d!54145 (not (isEmpty!1692 rules!1920))))

(assert (=> d!54145 (= (rulesProduceIndividualToken!238 thiss!17480 rules!1920 (h!8663 tokens!465)) lt!73464)))

(declare-fun b!204563 () Bool)

(declare-fun res!93668 () Bool)

(assert (=> b!204563 (=> (not res!93668) (not e!125754))))

(assert (=> b!204563 (= res!93668 (= (apply!526 (_1!1916 lt!73465) 0) (h!8663 tokens!465)))))

(declare-fun b!204564 () Bool)

(assert (=> b!204564 (= e!125754 (isEmpty!1689 (_2!1916 lt!73465)))))

(declare-fun b!204565 () Bool)

(assert (=> b!204565 (= e!125755 (isEmpty!1689 (_2!1916 (lex!289 thiss!17480 rules!1920 (print!220 thiss!17480 (singletonSeq!155 (h!8663 tokens!465)))))))))

(assert (= (and d!54145 res!93669) b!204563))

(assert (= (and b!204563 res!93668) b!204564))

(assert (= (and d!54145 res!93667) b!204565))

(assert (=> d!54145 m!223125))

(declare-fun m!225041 () Bool)

(assert (=> d!54145 m!225041))

(declare-fun m!225043 () Bool)

(assert (=> d!54145 m!225043))

(assert (=> d!54145 m!223125))

(assert (=> d!54145 m!223727))

(declare-fun m!225045 () Bool)

(assert (=> d!54145 m!225045))

(assert (=> d!54145 m!223285))

(declare-fun m!225047 () Bool)

(assert (=> d!54145 m!225047))

(assert (=> d!54145 m!223125))

(assert (=> d!54145 m!223727))

(declare-fun m!225049 () Bool)

(assert (=> b!204563 m!225049))

(declare-fun m!225051 () Bool)

(assert (=> b!204564 m!225051))

(assert (=> b!204565 m!223125))

(assert (=> b!204565 m!223125))

(assert (=> b!204565 m!223727))

(assert (=> b!204565 m!223727))

(assert (=> b!204565 m!225045))

(declare-fun m!225053 () Bool)

(assert (=> b!204565 m!225053))

(assert (=> b!203476 d!54145))

(declare-fun d!54147 () Bool)

(declare-fun res!93670 () Bool)

(declare-fun e!125756 () Bool)

(assert (=> d!54147 (=> (not res!93670) (not e!125756))))

(assert (=> d!54147 (= res!93670 (not (isEmpty!1691 (originalCharacters!646 separatorToken!170))))))

(assert (=> d!54147 (= (inv!4105 separatorToken!170) e!125756)))

(declare-fun b!204566 () Bool)

(declare-fun res!93671 () Bool)

(assert (=> b!204566 (=> (not res!93671) (not e!125756))))

(assert (=> b!204566 (= res!93671 (= (originalCharacters!646 separatorToken!170) (list!1213 (dynLambda!1435 (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (value!21501 separatorToken!170)))))))

(declare-fun b!204567 () Bool)

(assert (=> b!204567 (= e!125756 (= (size!2612 separatorToken!170) (size!2614 (originalCharacters!646 separatorToken!170))))))

(assert (= (and d!54147 res!93670) b!204566))

(assert (= (and b!204566 res!93671) b!204567))

(declare-fun b_lambda!5283 () Bool)

(assert (=> (not b_lambda!5283) (not b!204566)))

(assert (=> b!204566 t!30845))

(declare-fun b_and!14783 () Bool)

(assert (= b_and!14751 (and (=> t!30845 result!12448) b_and!14783)))

(assert (=> b!204566 t!30847))

(declare-fun b_and!14785 () Bool)

(assert (= b_and!14753 (and (=> t!30847 result!12450) b_and!14785)))

(assert (=> b!204566 t!30849))

(declare-fun b_and!14787 () Bool)

(assert (= b_and!14755 (and (=> t!30849 result!12452) b_and!14787)))

(declare-fun m!225055 () Bool)

(assert (=> d!54147 m!225055))

(assert (=> b!204566 m!223943))

(assert (=> b!204566 m!223943))

(declare-fun m!225057 () Bool)

(assert (=> b!204566 m!225057))

(declare-fun m!225059 () Bool)

(assert (=> b!204567 m!225059))

(assert (=> start!21866 d!54147))

(declare-fun d!54149 () Bool)

(declare-fun c!39301 () Bool)

(assert (=> d!54149 (= c!39301 ((_ is IntegerValue!1875) (value!21501 (h!8663 tokens!465))))))

(declare-fun e!125759 () Bool)

(assert (=> d!54149 (= (inv!21 (value!21501 (h!8663 tokens!465))) e!125759)))

(declare-fun b!204568 () Bool)

(declare-fun e!125758 () Bool)

(assert (=> b!204568 (= e!125758 (inv!15 (value!21501 (h!8663 tokens!465))))))

(declare-fun b!204569 () Bool)

(declare-fun e!125757 () Bool)

(assert (=> b!204569 (= e!125759 e!125757)))

(declare-fun c!39300 () Bool)

(assert (=> b!204569 (= c!39300 ((_ is IntegerValue!1876) (value!21501 (h!8663 tokens!465))))))

(declare-fun b!204570 () Bool)

(assert (=> b!204570 (= e!125759 (inv!16 (value!21501 (h!8663 tokens!465))))))

(declare-fun b!204571 () Bool)

(declare-fun res!93672 () Bool)

(assert (=> b!204571 (=> res!93672 e!125758)))

(assert (=> b!204571 (= res!93672 (not ((_ is IntegerValue!1877) (value!21501 (h!8663 tokens!465)))))))

(assert (=> b!204571 (= e!125757 e!125758)))

(declare-fun b!204572 () Bool)

(assert (=> b!204572 (= e!125757 (inv!17 (value!21501 (h!8663 tokens!465))))))

(assert (= (and d!54149 c!39301) b!204570))

(assert (= (and d!54149 (not c!39301)) b!204569))

(assert (= (and b!204569 c!39300) b!204572))

(assert (= (and b!204569 (not c!39300)) b!204571))

(assert (= (and b!204571 (not res!93672)) b!204568))

(declare-fun m!225061 () Bool)

(assert (=> b!204568 m!225061))

(declare-fun m!225063 () Bool)

(assert (=> b!204570 m!225063))

(declare-fun m!225065 () Bool)

(assert (=> b!204572 m!225065))

(assert (=> b!203479 d!54149))

(declare-fun d!54151 () Bool)

(assert (=> d!54151 (= (inv!4102 (tag!787 (rule!1130 separatorToken!170))) (= (mod (str.len (value!21500 (tag!787 (rule!1130 separatorToken!170)))) 2) 0))))

(assert (=> b!203501 d!54151))

(declare-fun d!54153 () Bool)

(declare-fun res!93673 () Bool)

(declare-fun e!125760 () Bool)

(assert (=> d!54153 (=> (not res!93673) (not e!125760))))

(assert (=> d!54153 (= res!93673 (semiInverseModEq!206 (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (toValue!1286 (transformation!603 (rule!1130 separatorToken!170)))))))

(assert (=> d!54153 (= (inv!4106 (transformation!603 (rule!1130 separatorToken!170))) e!125760)))

(declare-fun b!204573 () Bool)

(assert (=> b!204573 (= e!125760 (equivClasses!189 (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (toValue!1286 (transformation!603 (rule!1130 separatorToken!170)))))))

(assert (= (and d!54153 res!93673) b!204573))

(declare-fun m!225067 () Bool)

(assert (=> d!54153 m!225067))

(declare-fun m!225069 () Bool)

(assert (=> b!204573 m!225069))

(assert (=> b!203501 d!54153))

(declare-fun d!54155 () Bool)

(declare-fun lt!73468 () Bool)

(assert (=> d!54155 (= lt!73468 (isEmpty!1691 (list!1213 (_2!1916 lt!72914))))))

(declare-fun isEmpty!1702 (Conc!1028) Bool)

(assert (=> d!54155 (= lt!73468 (isEmpty!1702 (c!39073 (_2!1916 lt!72914))))))

(assert (=> d!54155 (= (isEmpty!1689 (_2!1916 lt!72914)) lt!73468)))

(declare-fun bs!20866 () Bool)

(assert (= bs!20866 d!54155))

(declare-fun m!225071 () Bool)

(assert (=> bs!20866 m!225071))

(assert (=> bs!20866 m!225071))

(declare-fun m!225073 () Bool)

(assert (=> bs!20866 m!225073))

(declare-fun m!225075 () Bool)

(assert (=> bs!20866 m!225075))

(assert (=> b!203480 d!54155))

(declare-fun d!54157 () Bool)

(assert (=> d!54157 (= (isEmpty!1692 rules!1920) ((_ is Nil!3265) rules!1920))))

(assert (=> b!203499 d!54157))

(declare-fun d!54159 () Bool)

(declare-fun lt!73469 () Bool)

(assert (=> d!54159 (= lt!73469 (isEmpty!1691 (list!1213 (_2!1916 lt!72919))))))

(assert (=> d!54159 (= lt!73469 (isEmpty!1702 (c!39073 (_2!1916 lt!72919))))))

(assert (=> d!54159 (= (isEmpty!1689 (_2!1916 lt!72919)) lt!73469)))

(declare-fun bs!20867 () Bool)

(assert (= bs!20867 d!54159))

(declare-fun m!225077 () Bool)

(assert (=> bs!20867 m!225077))

(assert (=> bs!20867 m!225077))

(declare-fun m!225079 () Bool)

(assert (=> bs!20867 m!225079))

(declare-fun m!225081 () Bool)

(assert (=> bs!20867 m!225081))

(assert (=> b!203478 d!54159))

(declare-fun d!54161 () Bool)

(declare-fun lt!73470 () Token!950)

(assert (=> d!54161 (= lt!73470 (apply!528 (list!1217 (_1!1916 lt!72914)) 0))))

(assert (=> d!54161 (= lt!73470 (apply!532 (c!39075 (_1!1916 lt!72914)) 0))))

(declare-fun e!125761 () Bool)

(assert (=> d!54161 e!125761))

(declare-fun res!93674 () Bool)

(assert (=> d!54161 (=> (not res!93674) (not e!125761))))

(assert (=> d!54161 (= res!93674 (<= 0 0))))

(assert (=> d!54161 (= (apply!526 (_1!1916 lt!72914) 0) lt!73470)))

(declare-fun b!204574 () Bool)

(assert (=> b!204574 (= e!125761 (< 0 (size!2613 (_1!1916 lt!72914))))))

(assert (= (and d!54161 res!93674) b!204574))

(assert (=> d!54161 m!224403))

(assert (=> d!54161 m!224403))

(declare-fun m!225083 () Bool)

(assert (=> d!54161 m!225083))

(declare-fun m!225085 () Bool)

(assert (=> d!54161 m!225085))

(assert (=> b!204574 m!223273))

(assert (=> b!203500 d!54161))

(declare-fun b!204585 () Bool)

(declare-fun b_free!7877 () Bool)

(declare-fun b_next!7877 () Bool)

(assert (=> b!204585 (= b_free!7877 (not b_next!7877))))

(declare-fun tp!90360 () Bool)

(declare-fun b_and!14789 () Bool)

(assert (=> b!204585 (= tp!90360 b_and!14789)))

(declare-fun b_free!7879 () Bool)

(declare-fun b_next!7879 () Bool)

(assert (=> b!204585 (= b_free!7879 (not b_next!7879))))

(declare-fun tb!9477 () Bool)

(declare-fun t!30884 () Bool)

(assert (=> (and b!204585 (= (toChars!1145 (transformation!603 (h!8662 (t!30807 rules!1920)))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465))))) t!30884) tb!9477))

(declare-fun result!12494 () Bool)

(assert (= result!12494 result!12432))

(assert (=> d!53873 t!30884))

(declare-fun tb!9479 () Bool)

(declare-fun t!30886 () Bool)

(assert (=> (and b!204585 (= (toChars!1145 (transformation!603 (h!8662 (t!30807 rules!1920)))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170)))) t!30886) tb!9479))

(declare-fun result!12496 () Bool)

(assert (= result!12496 result!12448))

(assert (=> d!53869 t!30886))

(assert (=> b!204566 t!30886))

(declare-fun tb!9481 () Bool)

(declare-fun t!30888 () Bool)

(assert (=> (and b!204585 (= (toChars!1145 (transformation!603 (h!8662 (t!30807 rules!1920)))) (toChars!1145 (transformation!603 (rule!1130 lt!72926)))) t!30888) tb!9481))

(declare-fun result!12498 () Bool)

(assert (= result!12498 result!12460))

(assert (=> d!53917 t!30888))

(assert (=> b!203777 t!30884))

(declare-fun tp!90361 () Bool)

(declare-fun b_and!14791 () Bool)

(assert (=> b!204585 (= tp!90361 (and (=> t!30888 result!12498) (=> t!30886 result!12496) (=> t!30884 result!12494) b_and!14791))))

(declare-fun e!125770 () Bool)

(assert (=> b!204585 (= e!125770 (and tp!90360 tp!90361))))

(declare-fun tp!90362 () Bool)

(declare-fun e!125773 () Bool)

(declare-fun b!204584 () Bool)

(assert (=> b!204584 (= e!125773 (and tp!90362 (inv!4102 (tag!787 (h!8662 (t!30807 rules!1920)))) (inv!4106 (transformation!603 (h!8662 (t!30807 rules!1920)))) e!125770))))

(declare-fun b!204583 () Bool)

(declare-fun e!125772 () Bool)

(declare-fun tp!90363 () Bool)

(assert (=> b!204583 (= e!125772 (and e!125773 tp!90363))))

(assert (=> b!203503 (= tp!90281 e!125772)))

(assert (= b!204584 b!204585))

(assert (= b!204583 b!204584))

(assert (= (and b!203503 ((_ is Cons!3265) (t!30807 rules!1920))) b!204583))

(declare-fun m!225087 () Bool)

(assert (=> b!204584 m!225087))

(declare-fun m!225089 () Bool)

(assert (=> b!204584 m!225089))

(declare-fun b!204597 () Bool)

(declare-fun e!125776 () Bool)

(declare-fun tp!90377 () Bool)

(declare-fun tp!90374 () Bool)

(assert (=> b!204597 (= e!125776 (and tp!90377 tp!90374))))

(declare-fun b!204599 () Bool)

(declare-fun tp!90378 () Bool)

(declare-fun tp!90376 () Bool)

(assert (=> b!204599 (= e!125776 (and tp!90378 tp!90376))))

(declare-fun b!204596 () Bool)

(declare-fun tp_is_empty!1711 () Bool)

(assert (=> b!204596 (= e!125776 tp_is_empty!1711)))

(declare-fun b!204598 () Bool)

(declare-fun tp!90375 () Bool)

(assert (=> b!204598 (= e!125776 tp!90375)))

(assert (=> b!203504 (= tp!90285 e!125776)))

(assert (= (and b!203504 ((_ is ElementMatch!827) (regex!603 (h!8662 rules!1920)))) b!204596))

(assert (= (and b!203504 ((_ is Concat!1453) (regex!603 (h!8662 rules!1920)))) b!204597))

(assert (= (and b!203504 ((_ is Star!827) (regex!603 (h!8662 rules!1920)))) b!204598))

(assert (= (and b!203504 ((_ is Union!827) (regex!603 (h!8662 rules!1920)))) b!204599))

(declare-fun b!204604 () Bool)

(declare-fun e!125779 () Bool)

(declare-fun tp!90381 () Bool)

(assert (=> b!204604 (= e!125779 (and tp_is_empty!1711 tp!90381))))

(assert (=> b!203470 (= tp!90276 e!125779)))

(assert (= (and b!203470 ((_ is Cons!3264) (originalCharacters!646 separatorToken!170))) b!204604))

(declare-fun b!204607 () Bool)

(declare-fun e!125782 () Bool)

(assert (=> b!204607 (= e!125782 true)))

(declare-fun b!204606 () Bool)

(declare-fun e!125781 () Bool)

(assert (=> b!204606 (= e!125781 e!125782)))

(declare-fun b!204605 () Bool)

(declare-fun e!125780 () Bool)

(assert (=> b!204605 (= e!125780 e!125781)))

(assert (=> b!203522 e!125780))

(assert (= b!204606 b!204607))

(assert (= b!204605 b!204606))

(assert (= (and b!203522 ((_ is Cons!3265) (t!30807 rules!1920))) b!204605))

(assert (=> b!204607 (< (dynLambda!1429 order!2117 (toValue!1286 (transformation!603 (h!8662 (t!30807 rules!1920))))) (dynLambda!1430 order!2119 lambda!6208))))

(assert (=> b!204607 (< (dynLambda!1431 order!2121 (toChars!1145 (transformation!603 (h!8662 (t!30807 rules!1920))))) (dynLambda!1430 order!2119 lambda!6208))))

(declare-fun b!204609 () Bool)

(declare-fun e!125783 () Bool)

(declare-fun tp!90385 () Bool)

(declare-fun tp!90382 () Bool)

(assert (=> b!204609 (= e!125783 (and tp!90385 tp!90382))))

(declare-fun b!204611 () Bool)

(declare-fun tp!90386 () Bool)

(declare-fun tp!90384 () Bool)

(assert (=> b!204611 (= e!125783 (and tp!90386 tp!90384))))

(declare-fun b!204608 () Bool)

(assert (=> b!204608 (= e!125783 tp_is_empty!1711)))

(declare-fun b!204610 () Bool)

(declare-fun tp!90383 () Bool)

(assert (=> b!204610 (= e!125783 tp!90383)))

(assert (=> b!203498 (= tp!90280 e!125783)))

(assert (= (and b!203498 ((_ is ElementMatch!827) (regex!603 (rule!1130 (h!8663 tokens!465))))) b!204608))

(assert (= (and b!203498 ((_ is Concat!1453) (regex!603 (rule!1130 (h!8663 tokens!465))))) b!204609))

(assert (= (and b!203498 ((_ is Star!827) (regex!603 (rule!1130 (h!8663 tokens!465))))) b!204610))

(assert (= (and b!203498 ((_ is Union!827) (regex!603 (rule!1130 (h!8663 tokens!465))))) b!204611))

(declare-fun b!204625 () Bool)

(declare-fun b_free!7881 () Bool)

(declare-fun b_next!7881 () Bool)

(assert (=> b!204625 (= b_free!7881 (not b_next!7881))))

(declare-fun tp!90400 () Bool)

(declare-fun b_and!14793 () Bool)

(assert (=> b!204625 (= tp!90400 b_and!14793)))

(declare-fun b_free!7883 () Bool)

(declare-fun b_next!7883 () Bool)

(assert (=> b!204625 (= b_free!7883 (not b_next!7883))))

(declare-fun t!30890 () Bool)

(declare-fun tb!9483 () Bool)

(assert (=> (and b!204625 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 (t!30808 tokens!465))))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465))))) t!30890) tb!9483))

(declare-fun result!12506 () Bool)

(assert (= result!12506 result!12432))

(assert (=> d!53873 t!30890))

(declare-fun t!30892 () Bool)

(declare-fun tb!9485 () Bool)

(assert (=> (and b!204625 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 (t!30808 tokens!465))))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170)))) t!30892) tb!9485))

(declare-fun result!12508 () Bool)

(assert (= result!12508 result!12448))

(assert (=> d!53869 t!30892))

(assert (=> b!204566 t!30892))

(declare-fun tb!9487 () Bool)

(declare-fun t!30894 () Bool)

(assert (=> (and b!204625 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 (t!30808 tokens!465))))) (toChars!1145 (transformation!603 (rule!1130 lt!72926)))) t!30894) tb!9487))

(declare-fun result!12510 () Bool)

(assert (= result!12510 result!12460))

(assert (=> d!53917 t!30894))

(assert (=> b!203777 t!30890))

(declare-fun b_and!14795 () Bool)

(declare-fun tp!90399 () Bool)

(assert (=> b!204625 (= tp!90399 (and (=> t!30890 result!12506) (=> t!30892 result!12508) (=> t!30894 result!12510) b_and!14795))))

(declare-fun e!125799 () Bool)

(assert (=> b!204625 (= e!125799 (and tp!90400 tp!90399))))

(declare-fun tp!90397 () Bool)

(declare-fun e!125796 () Bool)

(declare-fun b!204623 () Bool)

(declare-fun e!125798 () Bool)

(assert (=> b!204623 (= e!125796 (and (inv!21 (value!21501 (h!8663 (t!30808 tokens!465)))) e!125798 tp!90397))))

(declare-fun e!125801 () Bool)

(assert (=> b!203511 (= tp!90279 e!125801)))

(declare-fun b!204624 () Bool)

(declare-fun tp!90401 () Bool)

(assert (=> b!204624 (= e!125798 (and tp!90401 (inv!4102 (tag!787 (rule!1130 (h!8663 (t!30808 tokens!465))))) (inv!4106 (transformation!603 (rule!1130 (h!8663 (t!30808 tokens!465))))) e!125799))))

(declare-fun tp!90398 () Bool)

(declare-fun b!204622 () Bool)

(assert (=> b!204622 (= e!125801 (and (inv!4105 (h!8663 (t!30808 tokens!465))) e!125796 tp!90398))))

(assert (= b!204624 b!204625))

(assert (= b!204623 b!204624))

(assert (= b!204622 b!204623))

(assert (= (and b!203511 ((_ is Cons!3266) (t!30808 tokens!465))) b!204622))

(declare-fun m!225091 () Bool)

(assert (=> b!204623 m!225091))

(declare-fun m!225093 () Bool)

(assert (=> b!204624 m!225093))

(declare-fun m!225095 () Bool)

(assert (=> b!204624 m!225095))

(declare-fun m!225097 () Bool)

(assert (=> b!204622 m!225097))

(declare-fun b!204626 () Bool)

(declare-fun e!125802 () Bool)

(declare-fun tp!90402 () Bool)

(assert (=> b!204626 (= e!125802 (and tp_is_empty!1711 tp!90402))))

(assert (=> b!203479 (= tp!90273 e!125802)))

(assert (= (and b!203479 ((_ is Cons!3264) (originalCharacters!646 (h!8663 tokens!465)))) b!204626))

(declare-fun b!204628 () Bool)

(declare-fun e!125803 () Bool)

(declare-fun tp!90406 () Bool)

(declare-fun tp!90403 () Bool)

(assert (=> b!204628 (= e!125803 (and tp!90406 tp!90403))))

(declare-fun b!204630 () Bool)

(declare-fun tp!90407 () Bool)

(declare-fun tp!90405 () Bool)

(assert (=> b!204630 (= e!125803 (and tp!90407 tp!90405))))

(declare-fun b!204627 () Bool)

(assert (=> b!204627 (= e!125803 tp_is_empty!1711)))

(declare-fun b!204629 () Bool)

(declare-fun tp!90404 () Bool)

(assert (=> b!204629 (= e!125803 tp!90404)))

(assert (=> b!203501 (= tp!90282 e!125803)))

(assert (= (and b!203501 ((_ is ElementMatch!827) (regex!603 (rule!1130 separatorToken!170)))) b!204627))

(assert (= (and b!203501 ((_ is Concat!1453) (regex!603 (rule!1130 separatorToken!170)))) b!204628))

(assert (= (and b!203501 ((_ is Star!827) (regex!603 (rule!1130 separatorToken!170)))) b!204629))

(assert (= (and b!203501 ((_ is Union!827) (regex!603 (rule!1130 separatorToken!170)))) b!204630))

(declare-fun b_lambda!5285 () Bool)

(assert (= b_lambda!5241 (or (and b!204585 b_free!7879 (= (toChars!1145 (transformation!603 (h!8662 (t!30807 rules!1920)))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))))) (and b!203483 b_free!7867) (and b!204625 b_free!7883 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 (t!30808 tokens!465))))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))))) (and b!203490 b_free!7863 (= (toChars!1145 (transformation!603 (h!8662 rules!1920))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))))) (and b!203496 b_free!7859 (= (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))))) b_lambda!5285)))

(declare-fun b_lambda!5287 () Bool)

(assert (= b_lambda!5283 (or (and b!203490 b_free!7863 (= (toChars!1145 (transformation!603 (h!8662 rules!1920))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))))) (and b!204585 b_free!7879 (= (toChars!1145 (transformation!603 (h!8662 (t!30807 rules!1920)))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))))) (and b!203496 b_free!7859) (and b!204625 b_free!7883 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 (t!30808 tokens!465))))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))))) (and b!203483 b_free!7867 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))))) b_lambda!5287)))

(declare-fun b_lambda!5289 () Bool)

(assert (= b_lambda!5251 (or (and b!204585 b_free!7879 (= (toChars!1145 (transformation!603 (h!8662 (t!30807 rules!1920)))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))))) (and b!203483 b_free!7867) (and b!204625 b_free!7883 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 (t!30808 tokens!465))))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))))) (and b!203490 b_free!7863 (= (toChars!1145 (transformation!603 (h!8662 rules!1920))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))))) (and b!203496 b_free!7859 (= (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))) (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))))) b_lambda!5289)))

(declare-fun b_lambda!5291 () Bool)

(assert (= b_lambda!5257 (or b!203474 b_lambda!5291)))

(declare-fun bs!20868 () Bool)

(declare-fun d!54163 () Bool)

(assert (= bs!20868 (and d!54163 b!203474)))

(assert (=> bs!20868 (= (dynLambda!1432 lambda!6208 lt!72926) (rulesProduceIndividualToken!238 thiss!17480 rules!1920 lt!72926))))

(assert (=> bs!20868 m!223257))

(assert (=> d!53963 d!54163))

(declare-fun b_lambda!5293 () Bool)

(assert (= b_lambda!5249 (or (and b!203490 b_free!7863 (= (toChars!1145 (transformation!603 (h!8662 rules!1920))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))))) (and b!204585 b_free!7879 (= (toChars!1145 (transformation!603 (h!8662 (t!30807 rules!1920)))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))))) (and b!203496 b_free!7859) (and b!204625 b_free!7883 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 (t!30808 tokens!465))))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))))) (and b!203483 b_free!7867 (= (toChars!1145 (transformation!603 (rule!1130 (h!8663 tokens!465)))) (toChars!1145 (transformation!603 (rule!1130 separatorToken!170))))) b_lambda!5293)))

(declare-fun b_lambda!5295 () Bool)

(assert (= b_lambda!5281 (or b!203474 b_lambda!5295)))

(declare-fun bs!20869 () Bool)

(declare-fun d!54165 () Bool)

(assert (= bs!20869 (and d!54165 b!203474)))

(assert (=> bs!20869 (= (dynLambda!1432 lambda!6208 (h!8663 tokens!465)) (rulesProduceIndividualToken!238 thiss!17480 rules!1920 (h!8663 tokens!465)))))

(assert (=> bs!20869 m!223127))

(assert (=> d!54129 d!54165))

(declare-fun b_lambda!5297 () Bool)

(assert (= b_lambda!5239 (or b!203485 b_lambda!5297)))

(declare-fun bs!20870 () Bool)

(declare-fun d!54167 () Bool)

(assert (= bs!20870 (and d!54167 b!203485)))

(assert (=> bs!20870 (= (dynLambda!1432 lambda!6207 (h!8663 tokens!465)) (not (isSeparator!603 (rule!1130 (h!8663 tokens!465)))))))

(assert (=> b!203615 d!54167))

(check-sat (not bm!9812) (not b!203671) (not b!204599) (not d!53933) (not b!203958) (not b!204623) (not b!204122) (not bm!9809) (not b!204630) (not bs!20869) (not b!203982) (not d!53913) (not d!53777) (not d!53871) (not bs!20868) (not bm!9786) b_and!14787 (not d!53993) (not b!203955) b_and!14709 (not b!204072) b_and!14713 (not bm!9819) (not b!203904) (not bm!9843) (not b!203899) (not b!204329) (not bm!9770) (not b!203669) (not d!53875) (not d!53971) (not d!54141) (not b!204605) (not b_lambda!5297) (not b!203668) (not b!204071) (not b!204531) (not b!203971) (not d!53769) (not d!53835) (not b!203987) (not d!54019) (not b!204197) (not d!54155) (not b_lambda!5287) (not d!54077) (not bm!9785) (not d!53963) (not tb!9441) (not d!53869) (not b!204387) (not bm!9869) (not b!204119) (not b_lambda!5293) (not b!204245) (not d!53995) (not b!203610) (not b!204563) (not d!53757) (not b_lambda!5289) (not d!53969) b_and!14789 (not b!203777) (not b!203956) (not d!53867) (not b!204281) (not b_next!7883) (not d!53759) (not d!53925) (not bm!9765) (not d!53979) (not b!204218) (not b!204611) (not b!204560) (not b!204225) (not b!203996) (not d!54127) (not d!54145) (not b!203538) (not d!53865) (not d!53887) (not d!53967) b_and!14795 (not b!204275) (not d!53781) (not d!53965) (not b!203626) (not b!204097) (not b!204074) (not d!53785) (not b!203533) (not b!204224) (not b!203966) (not b!203840) (not bm!9801) (not d!53881) (not b_next!7859) (not b!204252) (not d!54071) (not b!204544) (not b!203778) (not b!203535) (not d!53923) (not b!204372) (not d!53755) (not b!204583) (not b!204540) (not b!203606) (not b!204149) (not bm!9841) (not d!53861) (not b!204550) (not b!204555) (not bm!9848) (not b!203757) (not b!204584) (not b!204559) (not b!204565) (not b_next!7879) (not b!203616) (not b!203608) (not b!204574) (not b!204371) b_and!14785 (not b!203609) (not b!203992) (not tb!9453) (not b!203960) (not d!54161) (not d!53989) (not d!53907) (not b!204244) (not b!204214) (not b!204533) (not d!53765) (not b!203991) (not b_next!7865) (not b!203849) (not b!203602) (not bm!9871) (not b!204160) (not b!204609) (not b!203627) (not b!204116) (not b!204234) (not b!204532) (not bm!9847) (not d!53921) (not b_next!7857) (not b!204243) (not b!203999) (not b!203902) (not b!204564) (not d!53783) (not b!203988) (not d!53917) (not b!203972) (not b!204151) (not b!204348) (not b!203647) (not b!204330) (not b!203995) (not b!204545) b_and!14717 (not b!204626) (not b_lambda!5295) (not bm!9846) (not b!204118) (not d!53809) (not b!204535) (not d!53797) (not d!53779) (not b!203756) (not b!204087) (not b!203907) (not bm!9810) (not b!204561) (not b!204542) (not b!204628) (not b!204629) (not bm!9749) (not b!204219) (not b!203963) (not bm!9842) (not b!203845) (not b!204120) (not b!204526) (not b!204106) (not b_lambda!5285) (not b!204597) b_and!14793 (not b!203985) (not b!204557) (not b!203751) (not d!53879) (not b!203957) (not b!204096) (not b!204568) (not bm!9802) (not b!204624) (not b!203603) (not b!203783) (not b!204528) (not d!53873) (not d!53885) (not b!204598) (not d!54147) (not b!204199) (not b!204527) (not b!204226) (not b!204092) (not bm!9845) (not d!53753) (not b!204604) (not b!203838) (not b!204195) (not d!53803) (not d!53991) (not b!203665) (not d!53915) (not b!204073) (not b!203973) (not b!203839) (not d!54021) (not b!203672) (not b!204229) (not b!203746) (not tb!9429) (not b!204566) (not b!204247) (not b!204098) (not d!53789) (not b_lambda!5291) (not d!53787) (not b!203978) (not b!203664) (not bm!9814) (not b!204610) (not b!204253) (not d!53771) (not d!54159) (not b!203909) (not d!54139) (not b!203648) b_and!14791 (not d!53883) (not d!54025) (not b!203666) (not b!203755) (not b!204567) (not b_next!7863) (not d!53811) b_and!14783 (not b!204230) (not d!53937) (not b!204231) (not b!204227) (not b!204622) (not b!204529) (not d!54129) (not b!204150) (not b!204201) (not b!203975) (not b_next!7881) (not d!53983) (not b_next!7877) (not b!204573) (not d!54153) (not d!54131) tp_is_empty!1711 (not b!204572) (not b!203842) (not bm!9799) (not b!203753) (not b!203847) (not b!203547) (not b!204233) (not b!204570) (not b!204198) (not b!204248) (not d!53961) (not b!204232) (not b!203901) (not b!204000) (not d!53859) (not d!53791) (not b_next!7861) (not bm!9807) (not b!204246) (not b!203670) (not d!53877) (not b!204525) (not b!203968) (not bm!9870) (not d!54137) (not b!204121) (not b_lambda!5255) (not b!204548) (not bm!9784) (not b!203605) (not b!204352) (not d!53985) (not b!203980) (not b!203961) (not b_next!7867) (not b!203673) (not b!203607) (not d!53987) (not b!204546) (not bm!9813) (not b!204094) (not b!203543) (not d!53977) (not b!204273) (not d!54017) (not b!204196) (not d!54075) (not b!204350))
(check-sat b_and!14795 (not b_next!7859) (not b_next!7879) b_and!14785 (not b_next!7865) (not b_next!7857) b_and!14717 b_and!14793 b_and!14791 (not b_next!7861) (not b_next!7867) b_and!14787 b_and!14709 b_and!14713 b_and!14789 (not b_next!7883) (not b_next!7863) b_and!14783 (not b_next!7881) (not b_next!7877))

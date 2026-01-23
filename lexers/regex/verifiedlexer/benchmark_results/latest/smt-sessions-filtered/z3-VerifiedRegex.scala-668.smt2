; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25234 () Bool)

(assert start!25234)

(declare-fun b!236491 () Bool)

(declare-fun b_free!8753 () Bool)

(declare-fun b_next!8753 () Bool)

(assert (=> b!236491 (= b_free!8753 (not b_next!8753))))

(declare-fun tp!94691 () Bool)

(declare-fun b_and!17645 () Bool)

(assert (=> b!236491 (= tp!94691 b_and!17645)))

(declare-fun b_free!8755 () Bool)

(declare-fun b_next!8755 () Bool)

(assert (=> b!236491 (= b_free!8755 (not b_next!8755))))

(declare-fun tp!94694 () Bool)

(declare-fun b_and!17647 () Bool)

(assert (=> b!236491 (= tp!94694 b_and!17647)))

(declare-fun b!236460 () Bool)

(declare-fun b_free!8757 () Bool)

(declare-fun b_next!8757 () Bool)

(assert (=> b!236460 (= b_free!8757 (not b_next!8757))))

(declare-fun tp!94696 () Bool)

(declare-fun b_and!17649 () Bool)

(assert (=> b!236460 (= tp!94696 b_and!17649)))

(declare-fun b_free!8759 () Bool)

(declare-fun b_next!8759 () Bool)

(assert (=> b!236460 (= b_free!8759 (not b_next!8759))))

(declare-fun tp!94693 () Bool)

(declare-fun b_and!17651 () Bool)

(assert (=> b!236460 (= tp!94693 b_and!17651)))

(declare-fun b!236448 () Bool)

(declare-fun b_free!8761 () Bool)

(declare-fun b_next!8761 () Bool)

(assert (=> b!236448 (= b_free!8761 (not b_next!8761))))

(declare-fun tp!94687 () Bool)

(declare-fun b_and!17653 () Bool)

(assert (=> b!236448 (= tp!94687 b_and!17653)))

(declare-fun b_free!8763 () Bool)

(declare-fun b_next!8763 () Bool)

(assert (=> b!236448 (= b_free!8763 (not b_next!8763))))

(declare-fun tp!94690 () Bool)

(declare-fun b_and!17655 () Bool)

(assert (=> b!236448 (= tp!94690 b_and!17655)))

(declare-fun bs!25316 () Bool)

(declare-fun b!236487 () Bool)

(declare-fun b!236461 () Bool)

(assert (= bs!25316 (and b!236487 b!236461)))

(declare-fun lambda!7588 () Int)

(declare-fun lambda!7587 () Int)

(assert (=> bs!25316 (not (= lambda!7588 lambda!7587))))

(declare-fun b!236502 () Bool)

(declare-fun e!146325 () Bool)

(assert (=> b!236502 (= e!146325 true)))

(declare-fun b!236501 () Bool)

(declare-fun e!146324 () Bool)

(assert (=> b!236501 (= e!146324 e!146325)))

(declare-fun b!236500 () Bool)

(declare-fun e!146323 () Bool)

(assert (=> b!236500 (= e!146323 e!146324)))

(assert (=> b!236487 e!146323))

(assert (= b!236501 b!236502))

(assert (= b!236500 b!236501))

(declare-datatypes ((List!3517 0))(
  ( (Nil!3507) (Cons!3507 (h!8904 (_ BitVec 16)) (t!34233 List!3517)) )
))
(declare-datatypes ((TokenValue!681 0))(
  ( (FloatLiteralValue!1362 (text!5212 List!3517)) (TokenValueExt!680 (__x!2849 Int)) (Broken!3405 (value!23071 List!3517)) (Object!690) (End!681) (Def!681) (Underscore!681) (Match!681) (Else!681) (Error!681) (Case!681) (If!681) (Extends!681) (Abstract!681) (Class!681) (Val!681) (DelimiterValue!1362 (del!741 List!3517)) (KeywordValue!687 (value!23072 List!3517)) (CommentValue!1362 (value!23073 List!3517)) (WhitespaceValue!1362 (value!23074 List!3517)) (IndentationValue!681 (value!23075 List!3517)) (String!4484) (Int32!681) (Broken!3406 (value!23076 List!3517)) (Boolean!682) (Unit!4149) (OperatorValue!684 (op!741 List!3517)) (IdentifierValue!1362 (value!23077 List!3517)) (IdentifierValue!1363 (value!23078 List!3517)) (WhitespaceValue!1363 (value!23079 List!3517)) (True!1362) (False!1362) (Broken!3407 (value!23080 List!3517)) (Broken!3408 (value!23081 List!3517)) (True!1363) (RightBrace!681) (RightBracket!681) (Colon!681) (Null!681) (Comma!681) (LeftBracket!681) (False!1363) (LeftBrace!681) (ImaginaryLiteralValue!681 (text!5213 List!3517)) (StringLiteralValue!2043 (value!23082 List!3517)) (EOFValue!681 (value!23083 List!3517)) (IdentValue!681 (value!23084 List!3517)) (DelimiterValue!1363 (value!23085 List!3517)) (DedentValue!681 (value!23086 List!3517)) (NewLineValue!681 (value!23087 List!3517)) (IntegerValue!2043 (value!23088 (_ BitVec 32)) (text!5214 List!3517)) (IntegerValue!2044 (value!23089 Int) (text!5215 List!3517)) (Times!681) (Or!681) (Equal!681) (Minus!681) (Broken!3409 (value!23090 List!3517)) (And!681) (Div!681) (LessEqual!681) (Mod!681) (Concat!1564) (Not!681) (Plus!681) (SpaceValue!681 (value!23091 List!3517)) (IntegerValue!2045 (value!23092 Int) (text!5216 List!3517)) (StringLiteralValue!2044 (text!5217 List!3517)) (FloatLiteralValue!1363 (text!5218 List!3517)) (BytesLiteralValue!681 (value!23093 List!3517)) (CommentValue!1363 (value!23094 List!3517)) (StringLiteralValue!2045 (value!23095 List!3517)) (ErrorTokenValue!681 (msg!742 List!3517)) )
))
(declare-datatypes ((C!2688 0))(
  ( (C!2689 (val!1230 Int)) )
))
(declare-datatypes ((List!3518 0))(
  ( (Nil!3508) (Cons!3508 (h!8905 C!2688) (t!34234 List!3518)) )
))
(declare-datatypes ((IArray!2281 0))(
  ( (IArray!2282 (innerList!1198 List!3518)) )
))
(declare-datatypes ((Conc!1140 0))(
  ( (Node!1140 (left!2844 Conc!1140) (right!3174 Conc!1140) (csize!2510 Int) (cheight!1351 Int)) (Leaf!1809 (xs!3735 IArray!2281) (csize!2511 Int)) (Empty!1140) )
))
(declare-datatypes ((BalanceConc!2288 0))(
  ( (BalanceConc!2289 (c!45343 Conc!1140)) )
))
(declare-datatypes ((String!4485 0))(
  ( (String!4486 (value!23096 String)) )
))
(declare-datatypes ((TokenValueInjection!1134 0))(
  ( (TokenValueInjection!1135 (toValue!1358 Int) (toChars!1217 Int)) )
))
(declare-datatypes ((Regex!883 0))(
  ( (ElementMatch!883 (c!45344 C!2688)) (Concat!1565 (regOne!2278 Regex!883) (regTwo!2278 Regex!883)) (EmptyExpr!883) (Star!883 (reg!1212 Regex!883)) (EmptyLang!883) (Union!883 (regOne!2279 Regex!883) (regTwo!2279 Regex!883)) )
))
(declare-datatypes ((Rule!1118 0))(
  ( (Rule!1119 (regex!659 Regex!883) (tag!863 String!4485) (isSeparator!659 Bool) (transformation!659 TokenValueInjection!1134)) )
))
(declare-datatypes ((List!3519 0))(
  ( (Nil!3509) (Cons!3509 (h!8906 Rule!1118) (t!34235 List!3519)) )
))
(declare-fun rules!1920 () List!3519)

(get-info :version)

(assert (= (and b!236487 ((_ is Cons!3509) rules!1920)) b!236500))

(declare-fun order!2487 () Int)

(declare-fun order!2485 () Int)

(declare-fun dynLambda!1661 (Int Int) Int)

(declare-fun dynLambda!1662 (Int Int) Int)

(assert (=> b!236502 (< (dynLambda!1661 order!2485 (toValue!1358 (transformation!659 (h!8906 rules!1920)))) (dynLambda!1662 order!2487 lambda!7588))))

(declare-fun order!2489 () Int)

(declare-fun dynLambda!1663 (Int Int) Int)

(assert (=> b!236502 (< (dynLambda!1663 order!2489 (toChars!1217 (transformation!659 (h!8906 rules!1920)))) (dynLambda!1662 order!2487 lambda!7588))))

(assert (=> b!236487 true))

(declare-fun b!236440 () Bool)

(declare-fun res!109050 () Bool)

(declare-fun e!146314 () Bool)

(assert (=> b!236440 (=> (not res!109050) (not e!146314))))

(declare-datatypes ((Token!1062 0))(
  ( (Token!1063 (value!23097 TokenValue!681) (rule!1226 Rule!1118) (size!2812 Int) (originalCharacters!702 List!3518)) )
))
(declare-datatypes ((List!3520 0))(
  ( (Nil!3510) (Cons!3510 (h!8907 Token!1062) (t!34236 List!3520)) )
))
(declare-datatypes ((IArray!2283 0))(
  ( (IArray!2284 (innerList!1199 List!3520)) )
))
(declare-datatypes ((Conc!1141 0))(
  ( (Node!1141 (left!2845 Conc!1141) (right!3175 Conc!1141) (csize!2512 Int) (cheight!1352 Int)) (Leaf!1810 (xs!3736 IArray!2283) (csize!2513 Int)) (Empty!1141) )
))
(declare-datatypes ((BalanceConc!2290 0))(
  ( (BalanceConc!2291 (c!45345 Conc!1141)) )
))
(declare-datatypes ((tuple2!3832 0))(
  ( (tuple2!3833 (_1!2132 BalanceConc!2290) (_2!2132 BalanceConc!2288)) )
))
(declare-fun lt!93990 () tuple2!3832)

(declare-fun separatorToken!170 () Token!1062)

(declare-fun apply!650 (BalanceConc!2290 Int) Token!1062)

(assert (=> b!236440 (= res!109050 (= (apply!650 (_1!2132 lt!93990) 0) separatorToken!170))))

(declare-fun b!236441 () Bool)

(declare-fun e!146305 () Bool)

(declare-fun lt!93960 () Token!1062)

(declare-fun lt!93978 () Rule!1118)

(assert (=> b!236441 (= e!146305 (= (rule!1226 lt!93960) lt!93978))))

(declare-fun b!236442 () Bool)

(declare-fun res!109046 () Bool)

(declare-fun e!146300 () Bool)

(assert (=> b!236442 (=> res!109046 e!146300)))

(declare-fun tokens!465 () List!3520)

(declare-datatypes ((LexerInterface!545 0))(
  ( (LexerInterfaceExt!542 (__x!2850 Int)) (Lexer!543) )
))
(declare-fun thiss!17480 () LexerInterface!545)

(declare-fun rulesProduceIndividualToken!294 (LexerInterface!545 List!3519 Token!1062) Bool)

(assert (=> b!236442 (= res!109046 (not (rulesProduceIndividualToken!294 thiss!17480 rules!1920 (h!8907 tokens!465))))))

(declare-fun b!236443 () Bool)

(declare-fun res!109052 () Bool)

(declare-fun e!146288 () Bool)

(assert (=> b!236443 (=> res!109052 e!146288)))

(declare-fun lt!93969 () List!3518)

(declare-fun filter!53 (List!3520 Int) List!3520)

(declare-datatypes ((tuple2!3834 0))(
  ( (tuple2!3835 (_1!2133 List!3520) (_2!2133 List!3518)) )
))
(declare-fun lexList!173 (LexerInterface!545 List!3519 List!3518) tuple2!3834)

(assert (=> b!236443 (= res!109052 (not (= (filter!53 (_1!2133 (lexList!173 thiss!17480 rules!1920 lt!93969)) lambda!7587) tokens!465)))))

(declare-fun b!236444 () Bool)

(declare-fun e!146280 () Bool)

(assert (=> b!236444 (= e!146280 e!146300)))

(declare-fun res!109045 () Bool)

(assert (=> b!236444 (=> res!109045 e!146300)))

(declare-fun lt!93956 () List!3518)

(declare-fun lt!93970 () List!3518)

(declare-fun lt!93957 () List!3518)

(assert (=> b!236444 (= res!109045 (or (not (= lt!93970 lt!93956)) (not (= lt!93956 lt!93957)) (not (= lt!93970 lt!93957))))))

(declare-fun printList!229 (LexerInterface!545 List!3520) List!3518)

(assert (=> b!236444 (= lt!93956 (printList!229 thiss!17480 (Cons!3510 (h!8907 tokens!465) Nil!3510)))))

(declare-fun lt!93954 () BalanceConc!2288)

(declare-fun list!1368 (BalanceConc!2288) List!3518)

(assert (=> b!236444 (= lt!93970 (list!1368 lt!93954))))

(declare-fun lt!93986 () BalanceConc!2290)

(declare-fun printTailRec!239 (LexerInterface!545 BalanceConc!2290 Int BalanceConc!2288) BalanceConc!2288)

(assert (=> b!236444 (= lt!93954 (printTailRec!239 thiss!17480 lt!93986 0 (BalanceConc!2289 Empty!1140)))))

(declare-fun print!276 (LexerInterface!545 BalanceConc!2290) BalanceConc!2288)

(assert (=> b!236444 (= lt!93954 (print!276 thiss!17480 lt!93986))))

(declare-fun singletonSeq!211 (Token!1062) BalanceConc!2290)

(assert (=> b!236444 (= lt!93986 (singletonSeq!211 (h!8907 tokens!465)))))

(declare-fun b!236445 () Bool)

(declare-datatypes ((Unit!4150 0))(
  ( (Unit!4151) )
))
(declare-fun e!146308 () Unit!4150)

(declare-fun Unit!4152 () Unit!4150)

(assert (=> b!236445 (= e!146308 Unit!4152)))

(assert (=> b!236445 false))

(declare-fun b!236446 () Bool)

(declare-fun e!146297 () Bool)

(declare-fun e!146293 () Bool)

(assert (=> b!236446 (= e!146297 (not e!146293))))

(declare-fun res!109070 () Bool)

(assert (=> b!236446 (=> res!109070 e!146293)))

(declare-fun lt!93950 () List!3518)

(declare-fun lt!93952 () BalanceConc!2288)

(assert (=> b!236446 (= res!109070 (not (= lt!93950 (list!1368 lt!93952))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!228 (LexerInterface!545 List!3519 BalanceConc!2290 Token!1062 Int) BalanceConc!2288)

(declare-fun seqFromList!695 (List!3520) BalanceConc!2290)

(assert (=> b!236446 (= lt!93952 (printWithSeparatorTokenWhenNeededRec!228 thiss!17480 rules!1920 (seqFromList!695 (t!34236 tokens!465)) separatorToken!170 0))))

(declare-fun lt!93951 () List!3518)

(declare-fun lt!93973 () List!3518)

(assert (=> b!236446 (= lt!93951 lt!93973)))

(declare-fun lt!93963 () List!3518)

(declare-fun ++!888 (List!3518 List!3518) List!3518)

(assert (=> b!236446 (= lt!93973 (++!888 lt!93957 lt!93963))))

(declare-fun lt!93958 () List!3518)

(assert (=> b!236446 (= lt!93951 (++!888 (++!888 lt!93957 lt!93958) lt!93950))))

(declare-fun lt!93983 () Unit!4150)

(declare-fun lemmaConcatAssociativity!362 (List!3518 List!3518 List!3518) Unit!4150)

(assert (=> b!236446 (= lt!93983 (lemmaConcatAssociativity!362 lt!93957 lt!93958 lt!93950))))

(declare-fun charsOf!314 (Token!1062) BalanceConc!2288)

(assert (=> b!236446 (= lt!93957 (list!1368 (charsOf!314 (h!8907 tokens!465))))))

(assert (=> b!236446 (= lt!93963 (++!888 lt!93958 lt!93950))))

(declare-fun printWithSeparatorTokenWhenNeededList!238 (LexerInterface!545 List!3519 List!3520 Token!1062) List!3518)

(assert (=> b!236446 (= lt!93950 (printWithSeparatorTokenWhenNeededList!238 thiss!17480 rules!1920 (t!34236 tokens!465) separatorToken!170))))

(assert (=> b!236446 (= lt!93958 (list!1368 (charsOf!314 separatorToken!170)))))

(declare-fun b!236447 () Bool)

(declare-fun res!109054 () Bool)

(declare-fun e!146309 () Bool)

(assert (=> b!236447 (=> (not res!109054) (not e!146309))))

(declare-datatypes ((tuple2!3836 0))(
  ( (tuple2!3837 (_1!2134 Token!1062) (_2!2134 List!3518)) )
))
(declare-fun lt!93943 () tuple2!3836)

(declare-fun isEmpty!2068 (List!3518) Bool)

(assert (=> b!236447 (= res!109054 (isEmpty!2068 (_2!2134 lt!93943)))))

(declare-fun e!146312 () Bool)

(assert (=> b!236448 (= e!146312 (and tp!94687 tp!94690))))

(declare-fun b!236449 () Bool)

(declare-fun res!109066 () Bool)

(assert (=> b!236449 (=> res!109066 e!146288)))

(declare-fun lt!93953 () BalanceConc!2290)

(declare-fun size!2813 (BalanceConc!2290) Int)

(assert (=> b!236449 (= res!109066 (> 0 (size!2813 lt!93953)))))

(declare-fun b!236450 () Bool)

(declare-fun e!146281 () Bool)

(assert (=> b!236450 (= e!146281 e!146288)))

(declare-fun res!109055 () Bool)

(assert (=> b!236450 (=> res!109055 e!146288)))

(declare-fun lt!93982 () List!3520)

(assert (=> b!236450 (= res!109055 (not (= (filter!53 lt!93982 lambda!7587) (t!34236 tokens!465))))))

(assert (=> b!236450 (= (filter!53 lt!93982 lambda!7587) (t!34236 tokens!465))))

(declare-fun list!1369 (BalanceConc!2290) List!3520)

(declare-fun lex!345 (LexerInterface!545 List!3519 BalanceConc!2288) tuple2!3832)

(assert (=> b!236450 (= lt!93982 (list!1369 (_1!2132 (lex!345 thiss!17480 rules!1920 lt!93952))))))

(declare-fun lt!93939 () Unit!4150)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!44 (LexerInterface!545 List!3519 List!3520 Token!1062) Unit!4150)

(assert (=> b!236450 (= lt!93939 (theoremInvertabilityFromTokensSepTokenWhenNeeded!44 thiss!17480 rules!1920 (t!34236 tokens!465) separatorToken!170))))

(declare-datatypes ((Option!669 0))(
  ( (None!668) (Some!668 (v!14403 tuple2!3836)) )
))
(declare-fun lt!93940 () Option!669)

(assert (=> b!236450 (= lt!93940 (Some!668 (tuple2!3837 separatorToken!170 lt!93950)))))

(declare-fun lt!93966 () Unit!4150)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!50 (LexerInterface!545 List!3519 Token!1062 Rule!1118 List!3518 Rule!1118) Unit!4150)

(assert (=> b!236450 (= lt!93966 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!50 thiss!17480 rules!1920 separatorToken!170 (rule!1226 separatorToken!170) lt!93950 (rule!1226 lt!93960)))))

(declare-fun lt!93968 () Unit!4150)

(declare-fun e!146313 () Unit!4150)

(assert (=> b!236450 (= lt!93968 e!146313)))

(declare-fun c!45342 () Bool)

(declare-fun lt!93980 () C!2688)

(declare-fun contains!644 (List!3518 C!2688) Bool)

(declare-fun usedCharacters!64 (Regex!883) List!3518)

(assert (=> b!236450 (= c!45342 (contains!644 (usedCharacters!64 (regex!659 (rule!1226 separatorToken!170))) lt!93980))))

(declare-fun head!813 (List!3518) C!2688)

(assert (=> b!236450 (= lt!93980 (head!813 lt!93950))))

(declare-fun lt!93977 () Unit!4150)

(declare-fun e!146291 () Unit!4150)

(assert (=> b!236450 (= lt!93977 e!146291)))

(declare-fun c!45341 () Bool)

(declare-fun lt!93988 () C!2688)

(assert (=> b!236450 (= c!45341 (not (contains!644 (usedCharacters!64 (regex!659 (rule!1226 lt!93960))) lt!93988)))))

(declare-fun lt!93949 () List!3518)

(assert (=> b!236450 (= lt!93988 (head!813 lt!93949))))

(declare-fun e!146287 () Bool)

(assert (=> b!236450 e!146287))

(declare-fun res!109068 () Bool)

(assert (=> b!236450 (=> (not res!109068) (not e!146287))))

(declare-datatypes ((Option!670 0))(
  ( (None!669) (Some!669 (v!14404 Rule!1118)) )
))
(declare-fun lt!93972 () Option!670)

(declare-fun isDefined!520 (Option!670) Bool)

(assert (=> b!236450 (= res!109068 (isDefined!520 lt!93972))))

(declare-fun getRuleFromTag!100 (LexerInterface!545 List!3519 String!4485) Option!670)

(assert (=> b!236450 (= lt!93972 (getRuleFromTag!100 thiss!17480 rules!1920 (tag!863 (rule!1226 lt!93960))))))

(declare-fun lt!93941 () Unit!4150)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!100 (LexerInterface!545 List!3519 List!3518 Token!1062) Unit!4150)

(assert (=> b!236450 (= lt!93941 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!100 thiss!17480 rules!1920 lt!93949 lt!93960))))

(assert (=> b!236450 (= lt!93949 (list!1368 (charsOf!314 lt!93960)))))

(declare-fun lt!93985 () Unit!4150)

(declare-fun forallContained!226 (List!3520 Int Token!1062) Unit!4150)

(assert (=> b!236450 (= lt!93985 (forallContained!226 tokens!465 lambda!7588 lt!93960))))

(declare-fun e!146307 () Bool)

(assert (=> b!236450 e!146307))

(declare-fun res!109058 () Bool)

(assert (=> b!236450 (=> (not res!109058) (not e!146307))))

(declare-fun lt!93945 () tuple2!3832)

(assert (=> b!236450 (= res!109058 (= (size!2813 (_1!2132 lt!93945)) 1))))

(declare-fun lt!93962 () BalanceConc!2288)

(assert (=> b!236450 (= lt!93945 (lex!345 thiss!17480 rules!1920 lt!93962))))

(declare-fun lt!93948 () BalanceConc!2290)

(assert (=> b!236450 (= lt!93962 (printTailRec!239 thiss!17480 lt!93948 0 (BalanceConc!2289 Empty!1140)))))

(assert (=> b!236450 (= lt!93962 (print!276 thiss!17480 lt!93948))))

(assert (=> b!236450 (= lt!93948 (singletonSeq!211 lt!93960))))

(declare-fun e!146279 () Bool)

(assert (=> b!236450 e!146279))

(declare-fun res!109056 () Bool)

(assert (=> b!236450 (=> (not res!109056) (not e!146279))))

(declare-fun lt!93976 () Option!670)

(assert (=> b!236450 (= res!109056 (isDefined!520 lt!93976))))

(assert (=> b!236450 (= lt!93976 (getRuleFromTag!100 thiss!17480 rules!1920 (tag!863 (rule!1226 separatorToken!170))))))

(declare-fun lt!93975 () Unit!4150)

(assert (=> b!236450 (= lt!93975 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!100 thiss!17480 rules!1920 lt!93958 separatorToken!170))))

(assert (=> b!236450 e!146314))

(declare-fun res!109077 () Bool)

(assert (=> b!236450 (=> (not res!109077) (not e!146314))))

(assert (=> b!236450 (= res!109077 (= (size!2813 (_1!2132 lt!93990)) 1))))

(declare-fun lt!93967 () BalanceConc!2288)

(assert (=> b!236450 (= lt!93990 (lex!345 thiss!17480 rules!1920 lt!93967))))

(declare-fun lt!93965 () BalanceConc!2290)

(assert (=> b!236450 (= lt!93967 (printTailRec!239 thiss!17480 lt!93965 0 (BalanceConc!2289 Empty!1140)))))

(assert (=> b!236450 (= lt!93967 (print!276 thiss!17480 lt!93965))))

(assert (=> b!236450 (= lt!93965 (singletonSeq!211 separatorToken!170))))

(assert (=> b!236450 (rulesProduceIndividualToken!294 thiss!17480 rules!1920 lt!93960)))

(declare-fun lt!93974 () Unit!4150)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!112 (LexerInterface!545 List!3519 List!3520 Token!1062) Unit!4150)

(assert (=> b!236450 (= lt!93974 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!112 thiss!17480 rules!1920 tokens!465 lt!93960))))

(declare-fun head!814 (List!3520) Token!1062)

(assert (=> b!236450 (= lt!93960 (head!814 (t!34236 tokens!465)))))

(declare-fun lt!93987 () Unit!4150)

(assert (=> b!236450 (= lt!93987 e!146308)))

(declare-fun c!45340 () Bool)

(declare-fun isEmpty!2069 (List!3520) Bool)

(assert (=> b!236450 (= c!45340 (isEmpty!2069 (t!34236 tokens!465)))))

(declare-fun maxPrefix!275 (LexerInterface!545 List!3519 List!3518) Option!669)

(assert (=> b!236450 (= lt!93940 (maxPrefix!275 thiss!17480 rules!1920 lt!93963))))

(declare-fun lt!93984 () tuple2!3836)

(assert (=> b!236450 (= lt!93963 (_2!2134 lt!93984))))

(declare-fun lt!93942 () Unit!4150)

(declare-fun lemmaSamePrefixThenSameSuffix!180 (List!3518 List!3518 List!3518 List!3518 List!3518) Unit!4150)

(assert (=> b!236450 (= lt!93942 (lemmaSamePrefixThenSameSuffix!180 lt!93957 lt!93963 lt!93957 (_2!2134 lt!93984) lt!93969))))

(declare-fun get!1128 (Option!669) tuple2!3836)

(assert (=> b!236450 (= lt!93984 (get!1128 (maxPrefix!275 thiss!17480 rules!1920 lt!93969)))))

(declare-fun isPrefix!355 (List!3518 List!3518) Bool)

(assert (=> b!236450 (isPrefix!355 lt!93957 lt!93973)))

(declare-fun lt!93964 () Unit!4150)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!250 (List!3518 List!3518) Unit!4150)

(assert (=> b!236450 (= lt!93964 (lemmaConcatTwoListThenFirstIsPrefix!250 lt!93957 lt!93963))))

(declare-fun e!146316 () Bool)

(assert (=> b!236450 e!146316))

(declare-fun res!109053 () Bool)

(assert (=> b!236450 (=> res!109053 e!146316)))

(assert (=> b!236450 (= res!109053 (isEmpty!2069 tokens!465))))

(declare-fun lt!93971 () Unit!4150)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!120 (LexerInterface!545 List!3519 List!3520 Token!1062) Unit!4150)

(assert (=> b!236450 (= lt!93971 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!120 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!236451 () Bool)

(declare-fun res!109071 () Bool)

(declare-fun e!146315 () Bool)

(assert (=> b!236451 (=> (not res!109071) (not e!146315))))

(assert (=> b!236451 (= res!109071 (isSeparator!659 (rule!1226 separatorToken!170)))))

(declare-fun b!236452 () Bool)

(declare-fun res!109051 () Bool)

(assert (=> b!236452 (=> (not res!109051) (not e!146315))))

(assert (=> b!236452 (= res!109051 (rulesProduceIndividualToken!294 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!236453 () Bool)

(declare-fun isEmpty!2070 (BalanceConc!2288) Bool)

(assert (=> b!236453 (= e!146307 (isEmpty!2070 (_2!2132 lt!93945)))))

(declare-fun b!236454 () Bool)

(declare-fun tp!94689 () Bool)

(declare-fun e!146295 () Bool)

(declare-fun e!146299 () Bool)

(declare-fun inv!4362 (String!4485) Bool)

(declare-fun inv!4365 (TokenValueInjection!1134) Bool)

(assert (=> b!236454 (= e!146295 (and tp!94689 (inv!4362 (tag!863 (h!8906 rules!1920))) (inv!4365 (transformation!659 (h!8906 rules!1920))) e!146299))))

(declare-fun e!146304 () Bool)

(declare-fun b!236455 () Bool)

(declare-fun tp!94686 () Bool)

(declare-fun e!146311 () Bool)

(declare-fun inv!4366 (Token!1062) Bool)

(assert (=> b!236455 (= e!146311 (and (inv!4366 (h!8907 tokens!465)) e!146304 tp!94686))))

(declare-fun b!236456 () Bool)

(declare-fun res!109042 () Bool)

(assert (=> b!236456 (=> res!109042 e!146300)))

(declare-fun isEmpty!2071 (BalanceConc!2290) Bool)

(declare-fun seqFromList!696 (List!3518) BalanceConc!2288)

(assert (=> b!236456 (= res!109042 (isEmpty!2071 (_1!2132 (lex!345 thiss!17480 rules!1920 (seqFromList!696 lt!93957)))))))

(declare-fun e!146302 () Bool)

(declare-fun b!236457 () Bool)

(assert (=> b!236457 (= e!146302 (not (= lt!93969 (++!888 lt!93957 lt!93950))))))

(declare-fun b!236458 () Bool)

(declare-fun e!146303 () Bool)

(assert (=> b!236458 (= e!146303 e!146315)))

(declare-fun res!109060 () Bool)

(assert (=> b!236458 (=> (not res!109060) (not e!146315))))

(declare-fun rulesProduceEachTokenIndividually!337 (LexerInterface!545 List!3519 BalanceConc!2290) Bool)

(assert (=> b!236458 (= res!109060 (rulesProduceEachTokenIndividually!337 thiss!17480 rules!1920 lt!93953))))

(assert (=> b!236458 (= lt!93953 (seqFromList!695 tokens!465))))

(declare-fun b!236459 () Bool)

(declare-fun res!109049 () Bool)

(assert (=> b!236459 (=> res!109049 e!146288)))

(assert (=> b!236459 (= res!109049 (not (= (filter!53 (_1!2133 (lexList!173 thiss!17480 rules!1920 lt!93950)) lambda!7587) (t!34236 tokens!465))))))

(declare-fun e!146290 () Bool)

(assert (=> b!236460 (= e!146290 (and tp!94696 tp!94693))))

(declare-fun res!109075 () Bool)

(assert (=> b!236461 (=> (not res!109075) (not e!146315))))

(declare-fun forall!802 (List!3520 Int) Bool)

(assert (=> b!236461 (= res!109075 (forall!802 tokens!465 lambda!7587))))

(declare-fun b!236462 () Bool)

(declare-fun Unit!4153 () Unit!4150)

(assert (=> b!236462 (= e!146308 Unit!4153)))

(declare-fun b!236463 () Bool)

(assert (=> b!236463 (= e!146314 (isEmpty!2070 (_2!2132 lt!93990)))))

(declare-fun b!236464 () Bool)

(assert (=> b!236464 (= e!146293 e!146280)))

(declare-fun res!109064 () Bool)

(assert (=> b!236464 (=> res!109064 e!146280)))

(assert (=> b!236464 (= res!109064 e!146302)))

(declare-fun res!109047 () Bool)

(assert (=> b!236464 (=> (not res!109047) (not e!146302))))

(declare-fun lt!93947 () Bool)

(assert (=> b!236464 (= res!109047 (not lt!93947))))

(assert (=> b!236464 (= lt!93947 (= lt!93969 lt!93973))))

(declare-fun b!236465 () Bool)

(assert (=> b!236465 (= e!146288 true)))

(declare-fun lt!93946 () Bool)

(declare-fun forall!803 (BalanceConc!2290 Int) Bool)

(assert (=> b!236465 (= lt!93946 (forall!803 lt!93953 lambda!7587))))

(declare-fun b!236466 () Bool)

(declare-fun Unit!4154 () Unit!4150)

(assert (=> b!236466 (= e!146291 Unit!4154)))

(declare-fun b!236467 () Bool)

(declare-fun e!146298 () Bool)

(declare-fun lt!93989 () Rule!1118)

(assert (=> b!236467 (= e!146298 (= (rule!1226 separatorToken!170) lt!93989))))

(declare-fun b!236468 () Bool)

(declare-fun res!109069 () Bool)

(assert (=> b!236468 (=> (not res!109069) (not e!146307))))

(assert (=> b!236468 (= res!109069 (= (apply!650 (_1!2132 lt!93945) 0) lt!93960))))

(declare-fun res!109063 () Bool)

(assert (=> start!25234 (=> (not res!109063) (not e!146303))))

(assert (=> start!25234 (= res!109063 ((_ is Lexer!543) thiss!17480))))

(assert (=> start!25234 e!146303))

(assert (=> start!25234 true))

(declare-fun e!146310 () Bool)

(assert (=> start!25234 e!146310))

(declare-fun e!146285 () Bool)

(assert (=> start!25234 (and (inv!4366 separatorToken!170) e!146285)))

(assert (=> start!25234 e!146311))

(declare-fun b!236469 () Bool)

(declare-fun res!109057 () Bool)

(assert (=> b!236469 (=> (not res!109057) (not e!146303))))

(declare-fun rulesInvariant!511 (LexerInterface!545 List!3519) Bool)

(assert (=> b!236469 (= res!109057 (rulesInvariant!511 thiss!17480 rules!1920))))

(declare-fun b!236470 () Bool)

(declare-fun e!146284 () Bool)

(declare-fun tp!94692 () Bool)

(declare-fun inv!21 (TokenValue!681) Bool)

(assert (=> b!236470 (= e!146304 (and (inv!21 (value!23097 (h!8907 tokens!465))) e!146284 tp!94692))))

(declare-fun b!236471 () Bool)

(declare-fun res!109062 () Bool)

(assert (=> b!236471 (=> (not res!109062) (not e!146315))))

(declare-fun sepAndNonSepRulesDisjointChars!248 (List!3519 List!3519) Bool)

(assert (=> b!236471 (= res!109062 (sepAndNonSepRulesDisjointChars!248 rules!1920 rules!1920))))

(declare-fun b!236472 () Bool)

(declare-fun tp!94688 () Bool)

(assert (=> b!236472 (= e!146310 (and e!146295 tp!94688))))

(declare-fun b!236473 () Bool)

(declare-fun e!146301 () Bool)

(assert (=> b!236473 (= e!146316 e!146301)))

(declare-fun res!109044 () Bool)

(assert (=> b!236473 (=> (not res!109044) (not e!146301))))

(declare-fun lt!93955 () Option!669)

(declare-fun isDefined!521 (Option!669) Bool)

(assert (=> b!236473 (= res!109044 (isDefined!521 lt!93955))))

(assert (=> b!236473 (= lt!93955 (maxPrefix!275 thiss!17480 rules!1920 lt!93969))))

(declare-fun b!236474 () Bool)

(assert (=> b!236474 (= e!146315 e!146297)))

(declare-fun res!109076 () Bool)

(assert (=> b!236474 (=> (not res!109076) (not e!146297))))

(declare-fun lt!93944 () List!3518)

(assert (=> b!236474 (= res!109076 (= lt!93969 lt!93944))))

(assert (=> b!236474 (= lt!93944 (list!1368 (printWithSeparatorTokenWhenNeededRec!228 thiss!17480 rules!1920 lt!93953 separatorToken!170 0)))))

(assert (=> b!236474 (= lt!93969 (printWithSeparatorTokenWhenNeededList!238 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!236475 () Bool)

(declare-fun matchR!221 (Regex!883 List!3518) Bool)

(assert (=> b!236475 (= e!146309 (matchR!221 (regex!659 (rule!1226 (h!8907 tokens!465))) lt!93957))))

(declare-fun tp!94695 () Bool)

(declare-fun b!236476 () Bool)

(assert (=> b!236476 (= e!146284 (and tp!94695 (inv!4362 (tag!863 (rule!1226 (h!8907 tokens!465)))) (inv!4365 (transformation!659 (rule!1226 (h!8907 tokens!465)))) e!146312))))

(declare-fun b!236477 () Bool)

(declare-fun Unit!4155 () Unit!4150)

(assert (=> b!236477 (= e!146291 Unit!4155)))

(declare-fun lt!93981 () Unit!4150)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!58 (Regex!883 List!3518 C!2688) Unit!4150)

(assert (=> b!236477 (= lt!93981 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!58 (regex!659 (rule!1226 lt!93960)) lt!93949 lt!93988))))

(declare-fun res!109072 () Bool)

(assert (=> b!236477 (= res!109072 (not (matchR!221 (regex!659 (rule!1226 lt!93960)) lt!93949)))))

(declare-fun e!146282 () Bool)

(assert (=> b!236477 (=> (not res!109072) (not e!146282))))

(assert (=> b!236477 e!146282))

(declare-fun b!236478 () Bool)

(declare-fun e!146283 () Bool)

(assert (=> b!236478 (= e!146283 e!146281)))

(declare-fun res!109048 () Bool)

(assert (=> b!236478 (=> res!109048 e!146281)))

(assert (=> b!236478 (= res!109048 (not lt!93947))))

(assert (=> b!236478 e!146309))

(declare-fun res!109043 () Bool)

(assert (=> b!236478 (=> (not res!109043) (not e!146309))))

(assert (=> b!236478 (= res!109043 (= (_1!2134 lt!93943) (h!8907 tokens!465)))))

(declare-fun lt!93959 () Option!669)

(assert (=> b!236478 (= lt!93943 (get!1128 lt!93959))))

(assert (=> b!236478 (isDefined!521 lt!93959)))

(assert (=> b!236478 (= lt!93959 (maxPrefix!275 thiss!17480 rules!1920 lt!93957))))

(declare-fun b!236479 () Bool)

(declare-fun Unit!4156 () Unit!4150)

(assert (=> b!236479 (= e!146313 Unit!4156)))

(declare-fun lt!93979 () Unit!4150)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!52 (LexerInterface!545 List!3519 List!3519 Rule!1118 Rule!1118 C!2688) Unit!4150)

(assert (=> b!236479 (= lt!93979 (lemmaSepRuleNotContainsCharContainedInANonSepRule!52 thiss!17480 rules!1920 rules!1920 (rule!1226 lt!93960) (rule!1226 separatorToken!170) lt!93980))))

(assert (=> b!236479 false))

(declare-fun b!236480 () Bool)

(declare-fun res!109067 () Bool)

(assert (=> b!236480 (=> (not res!109067) (not e!146297))))

(assert (=> b!236480 (= res!109067 (= (list!1368 (seqFromList!696 lt!93969)) lt!93944))))

(declare-fun b!236481 () Bool)

(declare-fun e!146294 () Bool)

(declare-fun tp!94697 () Bool)

(assert (=> b!236481 (= e!146285 (and (inv!21 (value!23097 separatorToken!170)) e!146294 tp!94697))))

(declare-fun tp!94685 () Bool)

(declare-fun b!236482 () Bool)

(assert (=> b!236482 (= e!146294 (and tp!94685 (inv!4362 (tag!863 (rule!1226 separatorToken!170))) (inv!4365 (transformation!659 (rule!1226 separatorToken!170))) e!146290))))

(declare-fun b!236483 () Bool)

(assert (=> b!236483 (= e!146282 false)))

(declare-fun b!236484 () Bool)

(assert (=> b!236484 (= e!146279 e!146298)))

(declare-fun res!109074 () Bool)

(assert (=> b!236484 (=> (not res!109074) (not e!146298))))

(assert (=> b!236484 (= res!109074 (matchR!221 (regex!659 lt!93989) lt!93958))))

(declare-fun get!1129 (Option!670) Rule!1118)

(assert (=> b!236484 (= lt!93989 (get!1129 lt!93976))))

(declare-fun b!236485 () Bool)

(declare-fun res!109059 () Bool)

(assert (=> b!236485 (=> (not res!109059) (not e!146303))))

(declare-fun isEmpty!2072 (List!3519) Bool)

(assert (=> b!236485 (= res!109059 (not (isEmpty!2072 rules!1920)))))

(declare-fun b!236486 () Bool)

(declare-fun Unit!4157 () Unit!4150)

(assert (=> b!236486 (= e!146313 Unit!4157)))

(assert (=> b!236487 (= e!146300 e!146283)))

(declare-fun res!109073 () Bool)

(assert (=> b!236487 (=> res!109073 e!146283)))

(declare-datatypes ((tuple2!3838 0))(
  ( (tuple2!3839 (_1!2135 Token!1062) (_2!2135 BalanceConc!2288)) )
))
(declare-datatypes ((Option!671 0))(
  ( (None!670) (Some!670 (v!14405 tuple2!3838)) )
))
(declare-fun isDefined!522 (Option!671) Bool)

(declare-fun maxPrefixZipperSequence!238 (LexerInterface!545 List!3519 BalanceConc!2288) Option!671)

(assert (=> b!236487 (= res!109073 (not (isDefined!522 (maxPrefixZipperSequence!238 thiss!17480 rules!1920 (seqFromList!696 (originalCharacters!702 (h!8907 tokens!465)))))))))

(declare-fun lt!93961 () Unit!4150)

(assert (=> b!236487 (= lt!93961 (forallContained!226 tokens!465 lambda!7588 (h!8907 tokens!465)))))

(assert (=> b!236487 (= lt!93957 (originalCharacters!702 (h!8907 tokens!465)))))

(declare-fun b!236488 () Bool)

(assert (=> b!236488 (= e!146301 (= (_1!2134 (get!1128 lt!93955)) (head!814 tokens!465)))))

(declare-fun b!236489 () Bool)

(declare-fun res!109065 () Bool)

(assert (=> b!236489 (=> (not res!109065) (not e!146315))))

(assert (=> b!236489 (= res!109065 ((_ is Cons!3510) tokens!465))))

(declare-fun b!236490 () Bool)

(assert (=> b!236490 (= e!146287 e!146305)))

(declare-fun res!109061 () Bool)

(assert (=> b!236490 (=> (not res!109061) (not e!146305))))

(assert (=> b!236490 (= res!109061 (matchR!221 (regex!659 lt!93978) lt!93949))))

(assert (=> b!236490 (= lt!93978 (get!1129 lt!93972))))

(assert (=> b!236491 (= e!146299 (and tp!94691 tp!94694))))

(assert (= (and start!25234 res!109063) b!236485))

(assert (= (and b!236485 res!109059) b!236469))

(assert (= (and b!236469 res!109057) b!236458))

(assert (= (and b!236458 res!109060) b!236452))

(assert (= (and b!236452 res!109051) b!236451))

(assert (= (and b!236451 res!109071) b!236461))

(assert (= (and b!236461 res!109075) b!236471))

(assert (= (and b!236471 res!109062) b!236489))

(assert (= (and b!236489 res!109065) b!236474))

(assert (= (and b!236474 res!109076) b!236480))

(assert (= (and b!236480 res!109067) b!236446))

(assert (= (and b!236446 (not res!109070)) b!236464))

(assert (= (and b!236464 res!109047) b!236457))

(assert (= (and b!236464 (not res!109064)) b!236444))

(assert (= (and b!236444 (not res!109045)) b!236442))

(assert (= (and b!236442 (not res!109046)) b!236456))

(assert (= (and b!236456 (not res!109042)) b!236487))

(assert (= (and b!236487 (not res!109073)) b!236478))

(assert (= (and b!236478 res!109043) b!236447))

(assert (= (and b!236447 res!109054) b!236475))

(assert (= (and b!236478 (not res!109048)) b!236450))

(assert (= (and b!236450 (not res!109053)) b!236473))

(assert (= (and b!236473 res!109044) b!236488))

(assert (= (and b!236450 c!45340) b!236445))

(assert (= (and b!236450 (not c!45340)) b!236462))

(assert (= (and b!236450 res!109077) b!236440))

(assert (= (and b!236440 res!109050) b!236463))

(assert (= (and b!236450 res!109056) b!236484))

(assert (= (and b!236484 res!109074) b!236467))

(assert (= (and b!236450 res!109058) b!236468))

(assert (= (and b!236468 res!109069) b!236453))

(assert (= (and b!236450 res!109068) b!236490))

(assert (= (and b!236490 res!109061) b!236441))

(assert (= (and b!236450 c!45341) b!236477))

(assert (= (and b!236450 (not c!45341)) b!236466))

(assert (= (and b!236477 res!109072) b!236483))

(assert (= (and b!236450 c!45342) b!236479))

(assert (= (and b!236450 (not c!45342)) b!236486))

(assert (= (and b!236450 (not res!109055)) b!236459))

(assert (= (and b!236459 (not res!109049)) b!236443))

(assert (= (and b!236443 (not res!109052)) b!236449))

(assert (= (and b!236449 (not res!109066)) b!236465))

(assert (= b!236454 b!236491))

(assert (= b!236472 b!236454))

(assert (= (and start!25234 ((_ is Cons!3509) rules!1920)) b!236472))

(assert (= b!236482 b!236460))

(assert (= b!236481 b!236482))

(assert (= start!25234 b!236481))

(assert (= b!236476 b!236448))

(assert (= b!236470 b!236476))

(assert (= b!236455 b!236470))

(assert (= (and start!25234 ((_ is Cons!3510) tokens!465)) b!236455))

(declare-fun m!284079 () Bool)

(assert (=> b!236440 m!284079))

(declare-fun m!284081 () Bool)

(assert (=> b!236457 m!284081))

(declare-fun m!284083 () Bool)

(assert (=> b!236476 m!284083))

(declare-fun m!284085 () Bool)

(assert (=> b!236476 m!284085))

(declare-fun m!284087 () Bool)

(assert (=> b!236480 m!284087))

(assert (=> b!236480 m!284087))

(declare-fun m!284089 () Bool)

(assert (=> b!236480 m!284089))

(declare-fun m!284091 () Bool)

(assert (=> b!236444 m!284091))

(declare-fun m!284093 () Bool)

(assert (=> b!236444 m!284093))

(declare-fun m!284095 () Bool)

(assert (=> b!236444 m!284095))

(declare-fun m!284097 () Bool)

(assert (=> b!236444 m!284097))

(declare-fun m!284099 () Bool)

(assert (=> b!236444 m!284099))

(declare-fun m!284101 () Bool)

(assert (=> b!236456 m!284101))

(assert (=> b!236456 m!284101))

(declare-fun m!284103 () Bool)

(assert (=> b!236456 m!284103))

(declare-fun m!284105 () Bool)

(assert (=> b!236456 m!284105))

(declare-fun m!284107 () Bool)

(assert (=> b!236471 m!284107))

(declare-fun m!284109 () Bool)

(assert (=> b!236475 m!284109))

(declare-fun m!284111 () Bool)

(assert (=> b!236461 m!284111))

(declare-fun m!284113 () Bool)

(assert (=> b!236484 m!284113))

(declare-fun m!284115 () Bool)

(assert (=> b!236484 m!284115))

(declare-fun m!284117 () Bool)

(assert (=> b!236485 m!284117))

(declare-fun m!284119 () Bool)

(assert (=> b!236490 m!284119))

(declare-fun m!284121 () Bool)

(assert (=> b!236490 m!284121))

(declare-fun m!284123 () Bool)

(assert (=> b!236458 m!284123))

(declare-fun m!284125 () Bool)

(assert (=> b!236458 m!284125))

(declare-fun m!284127 () Bool)

(assert (=> b!236479 m!284127))

(declare-fun m!284129 () Bool)

(assert (=> b!236469 m!284129))

(declare-fun m!284131 () Bool)

(assert (=> b!236482 m!284131))

(declare-fun m!284133 () Bool)

(assert (=> b!236482 m!284133))

(declare-fun m!284135 () Bool)

(assert (=> b!236447 m!284135))

(declare-fun m!284137 () Bool)

(assert (=> b!236474 m!284137))

(assert (=> b!236474 m!284137))

(declare-fun m!284139 () Bool)

(assert (=> b!236474 m!284139))

(declare-fun m!284141 () Bool)

(assert (=> b!236474 m!284141))

(declare-fun m!284143 () Bool)

(assert (=> start!25234 m!284143))

(declare-fun m!284145 () Bool)

(assert (=> b!236454 m!284145))

(declare-fun m!284147 () Bool)

(assert (=> b!236454 m!284147))

(declare-fun m!284149 () Bool)

(assert (=> b!236487 m!284149))

(assert (=> b!236487 m!284149))

(declare-fun m!284151 () Bool)

(assert (=> b!236487 m!284151))

(assert (=> b!236487 m!284151))

(declare-fun m!284153 () Bool)

(assert (=> b!236487 m!284153))

(declare-fun m!284155 () Bool)

(assert (=> b!236487 m!284155))

(declare-fun m!284157 () Bool)

(assert (=> b!236452 m!284157))

(declare-fun m!284159 () Bool)

(assert (=> b!236463 m!284159))

(declare-fun m!284161 () Bool)

(assert (=> b!236455 m!284161))

(declare-fun m!284163 () Bool)

(assert (=> b!236478 m!284163))

(declare-fun m!284165 () Bool)

(assert (=> b!236478 m!284165))

(declare-fun m!284167 () Bool)

(assert (=> b!236478 m!284167))

(declare-fun m!284169 () Bool)

(assert (=> b!236473 m!284169))

(declare-fun m!284171 () Bool)

(assert (=> b!236473 m!284171))

(declare-fun m!284173 () Bool)

(assert (=> b!236442 m!284173))

(declare-fun m!284175 () Bool)

(assert (=> b!236443 m!284175))

(declare-fun m!284177 () Bool)

(assert (=> b!236443 m!284177))

(declare-fun m!284179 () Bool)

(assert (=> b!236488 m!284179))

(declare-fun m!284181 () Bool)

(assert (=> b!236488 m!284181))

(declare-fun m!284183 () Bool)

(assert (=> b!236468 m!284183))

(declare-fun m!284185 () Bool)

(assert (=> b!236453 m!284185))

(declare-fun m!284187 () Bool)

(assert (=> b!236459 m!284187))

(declare-fun m!284189 () Bool)

(assert (=> b!236459 m!284189))

(declare-fun m!284191 () Bool)

(assert (=> b!236477 m!284191))

(declare-fun m!284193 () Bool)

(assert (=> b!236477 m!284193))

(declare-fun m!284195 () Bool)

(assert (=> b!236465 m!284195))

(declare-fun m!284197 () Bool)

(assert (=> b!236450 m!284197))

(declare-fun m!284199 () Bool)

(assert (=> b!236450 m!284199))

(declare-fun m!284201 () Bool)

(assert (=> b!236450 m!284201))

(declare-fun m!284203 () Bool)

(assert (=> b!236450 m!284203))

(declare-fun m!284205 () Bool)

(assert (=> b!236450 m!284205))

(declare-fun m!284207 () Bool)

(assert (=> b!236450 m!284207))

(declare-fun m!284209 () Bool)

(assert (=> b!236450 m!284209))

(declare-fun m!284211 () Bool)

(assert (=> b!236450 m!284211))

(declare-fun m!284213 () Bool)

(assert (=> b!236450 m!284213))

(declare-fun m!284215 () Bool)

(assert (=> b!236450 m!284215))

(declare-fun m!284217 () Bool)

(assert (=> b!236450 m!284217))

(declare-fun m!284219 () Bool)

(assert (=> b!236450 m!284219))

(declare-fun m!284221 () Bool)

(assert (=> b!236450 m!284221))

(declare-fun m!284223 () Bool)

(assert (=> b!236450 m!284223))

(declare-fun m!284225 () Bool)

(assert (=> b!236450 m!284225))

(declare-fun m!284227 () Bool)

(assert (=> b!236450 m!284227))

(declare-fun m!284229 () Bool)

(assert (=> b!236450 m!284229))

(declare-fun m!284231 () Bool)

(assert (=> b!236450 m!284231))

(declare-fun m!284233 () Bool)

(assert (=> b!236450 m!284233))

(declare-fun m!284235 () Bool)

(assert (=> b!236450 m!284235))

(declare-fun m!284237 () Bool)

(assert (=> b!236450 m!284237))

(declare-fun m!284239 () Bool)

(assert (=> b!236450 m!284239))

(declare-fun m!284241 () Bool)

(assert (=> b!236450 m!284241))

(declare-fun m!284243 () Bool)

(assert (=> b!236450 m!284243))

(declare-fun m!284245 () Bool)

(assert (=> b!236450 m!284245))

(declare-fun m!284247 () Bool)

(assert (=> b!236450 m!284247))

(assert (=> b!236450 m!284219))

(declare-fun m!284249 () Bool)

(assert (=> b!236450 m!284249))

(declare-fun m!284251 () Bool)

(assert (=> b!236450 m!284251))

(declare-fun m!284253 () Bool)

(assert (=> b!236450 m!284253))

(assert (=> b!236450 m!284171))

(declare-fun m!284255 () Bool)

(assert (=> b!236450 m!284255))

(assert (=> b!236450 m!284253))

(declare-fun m!284257 () Bool)

(assert (=> b!236450 m!284257))

(assert (=> b!236450 m!284249))

(declare-fun m!284259 () Bool)

(assert (=> b!236450 m!284259))

(declare-fun m!284261 () Bool)

(assert (=> b!236450 m!284261))

(declare-fun m!284263 () Bool)

(assert (=> b!236450 m!284263))

(declare-fun m!284265 () Bool)

(assert (=> b!236450 m!284265))

(declare-fun m!284267 () Bool)

(assert (=> b!236450 m!284267))

(declare-fun m!284269 () Bool)

(assert (=> b!236450 m!284269))

(declare-fun m!284271 () Bool)

(assert (=> b!236450 m!284271))

(assert (=> b!236450 m!284171))

(declare-fun m!284273 () Bool)

(assert (=> b!236450 m!284273))

(assert (=> b!236450 m!284267))

(declare-fun m!284275 () Bool)

(assert (=> b!236450 m!284275))

(declare-fun m!284277 () Bool)

(assert (=> b!236450 m!284277))

(declare-fun m!284279 () Bool)

(assert (=> b!236470 m!284279))

(declare-fun m!284281 () Bool)

(assert (=> b!236446 m!284281))

(declare-fun m!284283 () Bool)

(assert (=> b!236446 m!284283))

(declare-fun m!284285 () Bool)

(assert (=> b!236446 m!284285))

(declare-fun m!284287 () Bool)

(assert (=> b!236446 m!284287))

(declare-fun m!284289 () Bool)

(assert (=> b!236446 m!284289))

(declare-fun m!284291 () Bool)

(assert (=> b!236446 m!284291))

(assert (=> b!236446 m!284287))

(declare-fun m!284293 () Bool)

(assert (=> b!236446 m!284293))

(declare-fun m!284295 () Bool)

(assert (=> b!236446 m!284295))

(declare-fun m!284297 () Bool)

(assert (=> b!236446 m!284297))

(assert (=> b!236446 m!284281))

(declare-fun m!284299 () Bool)

(assert (=> b!236446 m!284299))

(declare-fun m!284301 () Bool)

(assert (=> b!236446 m!284301))

(declare-fun m!284303 () Bool)

(assert (=> b!236446 m!284303))

(assert (=> b!236446 m!284295))

(assert (=> b!236446 m!284293))

(declare-fun m!284305 () Bool)

(assert (=> b!236446 m!284305))

(declare-fun m!284307 () Bool)

(assert (=> b!236449 m!284307))

(declare-fun m!284309 () Bool)

(assert (=> b!236481 m!284309))

(check-sat (not b!236457) (not b!236487) (not b!236444) (not b!236500) b_and!17653 (not b!236471) (not b!236463) (not b_next!8759) (not b!236446) (not b_next!8763) (not b_next!8761) b_and!17655 (not b!236453) (not b!236481) (not b!236485) (not b!236475) (not b_next!8753) (not b!236488) (not b!236477) (not b_next!8757) (not b!236469) (not b!236459) (not b!236473) (not b!236461) b_and!17647 (not b!236474) (not b!236456) (not b!236449) b_and!17651 (not b!236490) (not b!236480) (not b!236476) (not b!236465) (not start!25234) (not b!236470) (not b!236452) (not b_next!8755) (not b!236447) (not b!236472) (not b!236484) (not b!236478) (not b!236442) (not b!236454) (not b!236443) (not b!236468) b_and!17645 b_and!17649 (not b!236440) (not b!236482) (not b!236455) (not b!236450) (not b!236479) (not b!236458))
(check-sat (not b_next!8763) (not b_next!8753) (not b_next!8757) b_and!17647 b_and!17651 b_and!17653 (not b_next!8755) (not b_next!8759) b_and!17645 b_and!17649 (not b_next!8761) b_and!17655)

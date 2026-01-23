; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34942 () Bool)

(assert start!34942)

(declare-fun b!337187 () Bool)

(declare-fun b_free!11281 () Bool)

(declare-fun b_next!11281 () Bool)

(assert (=> b!337187 (= b_free!11281 (not b_next!11281))))

(declare-fun tp!112776 () Bool)

(declare-fun b_and!31485 () Bool)

(assert (=> b!337187 (= tp!112776 b_and!31485)))

(declare-fun b_free!11283 () Bool)

(declare-fun b_next!11283 () Bool)

(assert (=> b!337187 (= b_free!11283 (not b_next!11283))))

(declare-fun tp!112769 () Bool)

(declare-fun b_and!31487 () Bool)

(assert (=> b!337187 (= tp!112769 b_and!31487)))

(declare-fun b!337174 () Bool)

(declare-fun b_free!11285 () Bool)

(declare-fun b_next!11285 () Bool)

(assert (=> b!337174 (= b_free!11285 (not b_next!11285))))

(declare-fun tp!112778 () Bool)

(declare-fun b_and!31489 () Bool)

(assert (=> b!337174 (= tp!112778 b_and!31489)))

(declare-fun b_free!11287 () Bool)

(declare-fun b_next!11287 () Bool)

(assert (=> b!337174 (= b_free!11287 (not b_next!11287))))

(declare-fun tp!112779 () Bool)

(declare-fun b_and!31491 () Bool)

(assert (=> b!337174 (= tp!112779 b_and!31491)))

(declare-fun b!337155 () Bool)

(declare-fun b_free!11289 () Bool)

(declare-fun b_next!11289 () Bool)

(assert (=> b!337155 (= b_free!11289 (not b_next!11289))))

(declare-fun tp!112775 () Bool)

(declare-fun b_and!31493 () Bool)

(assert (=> b!337155 (= tp!112775 b_and!31493)))

(declare-fun b_free!11291 () Bool)

(declare-fun b_next!11291 () Bool)

(assert (=> b!337155 (= b_free!11291 (not b_next!11291))))

(declare-fun tp!112772 () Bool)

(declare-fun b_and!31495 () Bool)

(assert (=> b!337155 (= tp!112772 b_and!31495)))

(declare-fun bs!40094 () Bool)

(declare-fun b!337188 () Bool)

(declare-fun b!337163 () Bool)

(assert (= bs!40094 (and b!337188 b!337163)))

(declare-fun lambda!11012 () Int)

(declare-fun lambda!11011 () Int)

(assert (=> bs!40094 (not (= lambda!11012 lambda!11011))))

(declare-fun b!337202 () Bool)

(declare-fun e!208410 () Bool)

(assert (=> b!337202 (= e!208410 true)))

(declare-fun b!337201 () Bool)

(declare-fun e!208409 () Bool)

(assert (=> b!337201 (= e!208409 e!208410)))

(declare-fun b!337200 () Bool)

(declare-fun e!208408 () Bool)

(assert (=> b!337200 (= e!208408 e!208409)))

(assert (=> b!337188 e!208408))

(assert (= b!337201 b!337202))

(assert (= b!337200 b!337201))

(declare-datatypes ((List!4118 0))(
  ( (Nil!4108) (Cons!4108 (h!9505 (_ BitVec 16)) (t!49978 List!4118)) )
))
(declare-datatypes ((TokenValue!813 0))(
  ( (FloatLiteralValue!1626 (text!6136 List!4118)) (TokenValueExt!812 (__x!3113 Int)) (Broken!4065 (value!26833 List!4118)) (Object!822) (End!813) (Def!813) (Underscore!813) (Match!813) (Else!813) (Error!813) (Case!813) (If!813) (Extends!813) (Abstract!813) (Class!813) (Val!813) (DelimiterValue!1626 (del!873 List!4118)) (KeywordValue!819 (value!26834 List!4118)) (CommentValue!1626 (value!26835 List!4118)) (WhitespaceValue!1626 (value!26836 List!4118)) (IndentationValue!813 (value!26837 List!4118)) (String!5144) (Int32!813) (Broken!4066 (value!26838 List!4118)) (Boolean!814) (Unit!6131) (OperatorValue!816 (op!873 List!4118)) (IdentifierValue!1626 (value!26839 List!4118)) (IdentifierValue!1627 (value!26840 List!4118)) (WhitespaceValue!1627 (value!26841 List!4118)) (True!1626) (False!1626) (Broken!4067 (value!26842 List!4118)) (Broken!4068 (value!26843 List!4118)) (True!1627) (RightBrace!813) (RightBracket!813) (Colon!813) (Null!813) (Comma!813) (LeftBracket!813) (False!1627) (LeftBrace!813) (ImaginaryLiteralValue!813 (text!6137 List!4118)) (StringLiteralValue!2439 (value!26844 List!4118)) (EOFValue!813 (value!26845 List!4118)) (IdentValue!813 (value!26846 List!4118)) (DelimiterValue!1627 (value!26847 List!4118)) (DedentValue!813 (value!26848 List!4118)) (NewLineValue!813 (value!26849 List!4118)) (IntegerValue!2439 (value!26850 (_ BitVec 32)) (text!6138 List!4118)) (IntegerValue!2440 (value!26851 Int) (text!6139 List!4118)) (Times!813) (Or!813) (Equal!813) (Minus!813) (Broken!4069 (value!26852 List!4118)) (And!813) (Div!813) (LessEqual!813) (Mod!813) (Concat!1828) (Not!813) (Plus!813) (SpaceValue!813 (value!26853 List!4118)) (IntegerValue!2441 (value!26854 Int) (text!6140 List!4118)) (StringLiteralValue!2440 (text!6141 List!4118)) (FloatLiteralValue!1627 (text!6142 List!4118)) (BytesLiteralValue!813 (value!26855 List!4118)) (CommentValue!1627 (value!26856 List!4118)) (StringLiteralValue!2441 (value!26857 List!4118)) (ErrorTokenValue!813 (msg!874 List!4118)) )
))
(declare-datatypes ((C!2952 0))(
  ( (C!2953 (val!1362 Int)) )
))
(declare-datatypes ((List!4119 0))(
  ( (Nil!4109) (Cons!4109 (h!9506 C!2952) (t!49979 List!4119)) )
))
(declare-datatypes ((IArray!2809 0))(
  ( (IArray!2810 (innerList!1462 List!4119)) )
))
(declare-datatypes ((Conc!1404 0))(
  ( (Node!1404 (left!3422 Conc!1404) (right!3752 Conc!1404) (csize!3038 Int) (cheight!1615 Int)) (Leaf!2139 (xs!4015 IArray!2809) (csize!3039 Int)) (Empty!1404) )
))
(declare-datatypes ((BalanceConc!2816 0))(
  ( (BalanceConc!2817 (c!65078 Conc!1404)) )
))
(declare-datatypes ((TokenValueInjection!1398 0))(
  ( (TokenValueInjection!1399 (toValue!1562 Int) (toChars!1421 Int)) )
))
(declare-datatypes ((String!5145 0))(
  ( (String!5146 (value!26858 String)) )
))
(declare-datatypes ((Regex!1015 0))(
  ( (ElementMatch!1015 (c!65079 C!2952)) (Concat!1829 (regOne!2542 Regex!1015) (regTwo!2542 Regex!1015)) (EmptyExpr!1015) (Star!1015 (reg!1344 Regex!1015)) (EmptyLang!1015) (Union!1015 (regOne!2543 Regex!1015) (regTwo!2543 Regex!1015)) )
))
(declare-datatypes ((Rule!1382 0))(
  ( (Rule!1383 (regex!791 Regex!1015) (tag!1013 String!5145) (isSeparator!791 Bool) (transformation!791 TokenValueInjection!1398)) )
))
(declare-datatypes ((List!4120 0))(
  ( (Nil!4110) (Cons!4110 (h!9507 Rule!1382) (t!49980 List!4120)) )
))
(declare-fun rules!1920 () List!4120)

(get-info :version)

(assert (= (and b!337188 ((_ is Cons!4110) rules!1920)) b!337200))

(declare-fun order!3389 () Int)

(declare-fun order!3391 () Int)

(declare-fun dynLambda!2295 (Int Int) Int)

(declare-fun dynLambda!2296 (Int Int) Int)

(assert (=> b!337202 (< (dynLambda!2295 order!3389 (toValue!1562 (transformation!791 (h!9507 rules!1920)))) (dynLambda!2296 order!3391 lambda!11012))))

(declare-fun order!3393 () Int)

(declare-fun dynLambda!2297 (Int Int) Int)

(assert (=> b!337202 (< (dynLambda!2297 order!3393 (toChars!1421 (transformation!791 (h!9507 rules!1920)))) (dynLambda!2296 order!3391 lambda!11012))))

(assert (=> b!337188 true))

(declare-fun b!337151 () Bool)

(declare-fun res!151997 () Bool)

(declare-fun e!208383 () Bool)

(assert (=> b!337151 (=> res!151997 e!208383)))

(declare-fun lt!145068 () List!4119)

(declare-datatypes ((LexerInterface!677 0))(
  ( (LexerInterfaceExt!674 (__x!3114 Int)) (Lexer!675) )
))
(declare-fun thiss!17480 () LexerInterface!677)

(declare-datatypes ((Token!1326 0))(
  ( (Token!1327 (value!26859 TokenValue!813) (rule!1420 Rule!1382) (size!3302 Int) (originalCharacters!834 List!4119)) )
))
(declare-datatypes ((List!4121 0))(
  ( (Nil!4111) (Cons!4111 (h!9508 Token!1326) (t!49981 List!4121)) )
))
(declare-datatypes ((IArray!2811 0))(
  ( (IArray!2812 (innerList!1463 List!4121)) )
))
(declare-datatypes ((Conc!1405 0))(
  ( (Node!1405 (left!3423 Conc!1405) (right!3753 Conc!1405) (csize!3040 Int) (cheight!1616 Int)) (Leaf!2140 (xs!4016 IArray!2811) (csize!3041 Int)) (Empty!1405) )
))
(declare-datatypes ((BalanceConc!2818 0))(
  ( (BalanceConc!2819 (c!65080 Conc!1405)) )
))
(declare-fun isEmpty!2860 (BalanceConc!2818) Bool)

(declare-datatypes ((tuple2!4790 0))(
  ( (tuple2!4791 (_1!2611 BalanceConc!2818) (_2!2611 BalanceConc!2816)) )
))
(declare-fun lex!469 (LexerInterface!677 List!4120 BalanceConc!2816) tuple2!4790)

(declare-fun seqFromList!947 (List!4119) BalanceConc!2816)

(assert (=> b!337151 (= res!151997 (isEmpty!2860 (_1!2611 (lex!469 thiss!17480 rules!1920 (seqFromList!947 lt!145068)))))))

(declare-fun b!337152 () Bool)

(declare-fun res!152002 () Bool)

(assert (=> b!337152 (=> res!152002 e!208383)))

(declare-fun tokens!465 () List!4121)

(declare-fun rulesProduceIndividualToken!426 (LexerInterface!677 List!4120 Token!1326) Bool)

(assert (=> b!337152 (= res!152002 (not (rulesProduceIndividualToken!426 thiss!17480 rules!1920 (h!9508 tokens!465))))))

(declare-fun b!337153 () Bool)

(declare-fun separatorToken!170 () Token!1326)

(declare-fun e!208399 () Bool)

(declare-fun tp!112770 () Bool)

(declare-fun e!208370 () Bool)

(declare-fun inv!5089 (String!5145) Bool)

(declare-fun inv!5092 (TokenValueInjection!1398) Bool)

(assert (=> b!337153 (= e!208370 (and tp!112770 (inv!5089 (tag!1013 (rule!1420 separatorToken!170))) (inv!5092 (transformation!791 (rule!1420 separatorToken!170))) e!208399))))

(declare-fun e!208378 () Bool)

(declare-fun b!337154 () Bool)

(declare-fun tp!112773 () Bool)

(declare-fun e!208372 () Bool)

(declare-fun inv!5093 (Token!1326) Bool)

(assert (=> b!337154 (= e!208378 (and (inv!5093 (h!9508 tokens!465)) e!208372 tp!112773))))

(declare-fun e!208392 () Bool)

(assert (=> b!337155 (= e!208392 (and tp!112775 tp!112772))))

(declare-fun b!337156 () Bool)

(declare-fun e!208389 () Bool)

(declare-fun e!208388 () Bool)

(assert (=> b!337156 (= e!208389 e!208388)))

(declare-fun res!151988 () Bool)

(assert (=> b!337156 (=> res!151988 e!208388)))

(declare-fun lt!145093 () Bool)

(assert (=> b!337156 (= res!151988 (not lt!145093))))

(declare-fun e!208394 () Bool)

(assert (=> b!337156 e!208394))

(declare-fun res!152000 () Bool)

(assert (=> b!337156 (=> (not res!152000) (not e!208394))))

(declare-datatypes ((tuple2!4792 0))(
  ( (tuple2!4793 (_1!2612 Token!1326) (_2!2612 List!4119)) )
))
(declare-fun lt!145089 () tuple2!4792)

(assert (=> b!337156 (= res!152000 (= (_1!2612 lt!145089) (h!9508 tokens!465)))))

(declare-datatypes ((Option!955 0))(
  ( (None!954) (Some!954 (v!15017 tuple2!4792)) )
))
(declare-fun lt!145076 () Option!955)

(declare-fun get!1418 (Option!955) tuple2!4792)

(assert (=> b!337156 (= lt!145089 (get!1418 lt!145076))))

(declare-fun isDefined!794 (Option!955) Bool)

(assert (=> b!337156 (isDefined!794 lt!145076)))

(declare-fun maxPrefix!393 (LexerInterface!677 List!4120 List!4119) Option!955)

(assert (=> b!337156 (= lt!145076 (maxPrefix!393 thiss!17480 rules!1920 lt!145068))))

(declare-fun b!337157 () Bool)

(declare-datatypes ((Unit!6132 0))(
  ( (Unit!6133) )
))
(declare-fun e!208374 () Unit!6132)

(declare-fun Unit!6134 () Unit!6132)

(assert (=> b!337157 (= e!208374 Unit!6134)))

(declare-fun b!337158 () Bool)

(assert (=> b!337158 (= e!208388 true)))

(declare-fun lt!145060 () List!4119)

(declare-fun lt!145096 () Token!1326)

(declare-fun list!1755 (BalanceConc!2816) List!4119)

(declare-fun charsOf!434 (Token!1326) BalanceConc!2816)

(assert (=> b!337158 (= lt!145060 (list!1755 (charsOf!434 lt!145096)))))

(declare-fun lt!145084 () Unit!6132)

(declare-fun forallContained!344 (List!4121 Int Token!1326) Unit!6132)

(assert (=> b!337158 (= lt!145084 (forallContained!344 tokens!465 lambda!11012 lt!145096))))

(declare-fun e!208386 () Bool)

(assert (=> b!337158 e!208386))

(declare-fun res!152005 () Bool)

(assert (=> b!337158 (=> (not res!152005) (not e!208386))))

(declare-fun lt!145081 () tuple2!4790)

(declare-fun size!3303 (BalanceConc!2818) Int)

(assert (=> b!337158 (= res!152005 (= (size!3303 (_1!2611 lt!145081)) 1))))

(declare-fun lt!145073 () BalanceConc!2816)

(assert (=> b!337158 (= lt!145081 (lex!469 thiss!17480 rules!1920 lt!145073))))

(declare-fun lt!145085 () BalanceConc!2818)

(declare-fun printTailRec!363 (LexerInterface!677 BalanceConc!2818 Int BalanceConc!2816) BalanceConc!2816)

(assert (=> b!337158 (= lt!145073 (printTailRec!363 thiss!17480 lt!145085 0 (BalanceConc!2817 Empty!1404)))))

(declare-fun print!402 (LexerInterface!677 BalanceConc!2818) BalanceConc!2816)

(assert (=> b!337158 (= lt!145073 (print!402 thiss!17480 lt!145085))))

(declare-fun singletonSeq!337 (Token!1326) BalanceConc!2818)

(assert (=> b!337158 (= lt!145085 (singletonSeq!337 lt!145096))))

(declare-fun e!208381 () Bool)

(assert (=> b!337158 e!208381))

(declare-fun res!152008 () Bool)

(assert (=> b!337158 (=> (not res!152008) (not e!208381))))

(declare-datatypes ((Option!956 0))(
  ( (None!955) (Some!955 (v!15018 Rule!1382)) )
))
(declare-fun lt!145064 () Option!956)

(declare-fun isDefined!795 (Option!956) Bool)

(assert (=> b!337158 (= res!152008 (isDefined!795 lt!145064))))

(declare-fun getRuleFromTag!150 (LexerInterface!677 List!4120 String!5145) Option!956)

(assert (=> b!337158 (= lt!145064 (getRuleFromTag!150 thiss!17480 rules!1920 (tag!1013 (rule!1420 separatorToken!170))))))

(declare-fun lt!145066 () List!4119)

(declare-fun lt!145080 () Unit!6132)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!150 (LexerInterface!677 List!4120 List!4119 Token!1326) Unit!6132)

(assert (=> b!337158 (= lt!145080 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!150 thiss!17480 rules!1920 lt!145066 separatorToken!170))))

(declare-fun e!208387 () Bool)

(assert (=> b!337158 e!208387))

(declare-fun res!152012 () Bool)

(assert (=> b!337158 (=> (not res!152012) (not e!208387))))

(declare-fun lt!145095 () tuple2!4790)

(assert (=> b!337158 (= res!152012 (= (size!3303 (_1!2611 lt!145095)) 1))))

(declare-fun lt!145071 () BalanceConc!2816)

(assert (=> b!337158 (= lt!145095 (lex!469 thiss!17480 rules!1920 lt!145071))))

(declare-fun lt!145072 () BalanceConc!2818)

(assert (=> b!337158 (= lt!145071 (printTailRec!363 thiss!17480 lt!145072 0 (BalanceConc!2817 Empty!1404)))))

(assert (=> b!337158 (= lt!145071 (print!402 thiss!17480 lt!145072))))

(assert (=> b!337158 (= lt!145072 (singletonSeq!337 separatorToken!170))))

(assert (=> b!337158 (rulesProduceIndividualToken!426 thiss!17480 rules!1920 lt!145096)))

(declare-fun lt!145090 () Unit!6132)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!140 (LexerInterface!677 List!4120 List!4121 Token!1326) Unit!6132)

(assert (=> b!337158 (= lt!145090 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!140 thiss!17480 rules!1920 tokens!465 lt!145096))))

(declare-fun head!984 (List!4121) Token!1326)

(assert (=> b!337158 (= lt!145096 (head!984 (t!49981 tokens!465)))))

(declare-fun lt!145088 () Unit!6132)

(assert (=> b!337158 (= lt!145088 e!208374)))

(declare-fun c!65077 () Bool)

(declare-fun isEmpty!2861 (List!4121) Bool)

(assert (=> b!337158 (= c!65077 (isEmpty!2861 (t!49981 tokens!465)))))

(declare-fun lt!145086 () List!4119)

(declare-fun lt!145069 () Option!955)

(assert (=> b!337158 (= lt!145069 (maxPrefix!393 thiss!17480 rules!1920 lt!145086))))

(declare-fun lt!145067 () tuple2!4792)

(assert (=> b!337158 (= lt!145086 (_2!2612 lt!145067))))

(declare-fun lt!145094 () List!4119)

(declare-fun lt!145091 () Unit!6132)

(declare-fun lemmaSamePrefixThenSameSuffix!236 (List!4119 List!4119 List!4119 List!4119 List!4119) Unit!6132)

(assert (=> b!337158 (= lt!145091 (lemmaSamePrefixThenSameSuffix!236 lt!145068 lt!145086 lt!145068 (_2!2612 lt!145067) lt!145094))))

(assert (=> b!337158 (= lt!145067 (get!1418 (maxPrefix!393 thiss!17480 rules!1920 lt!145094)))))

(declare-fun lt!145077 () List!4119)

(declare-fun isPrefix!451 (List!4119 List!4119) Bool)

(assert (=> b!337158 (isPrefix!451 lt!145068 lt!145077)))

(declare-fun lt!145065 () Unit!6132)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!342 (List!4119 List!4119) Unit!6132)

(assert (=> b!337158 (= lt!145065 (lemmaConcatTwoListThenFirstIsPrefix!342 lt!145068 lt!145086))))

(declare-fun e!208396 () Bool)

(assert (=> b!337158 e!208396))

(declare-fun res!152003 () Bool)

(assert (=> b!337158 (=> res!152003 e!208396)))

(assert (=> b!337158 (= res!152003 (isEmpty!2861 tokens!465))))

(declare-fun lt!145074 () Unit!6132)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!198 (LexerInterface!677 List!4120 List!4121 Token!1326) Unit!6132)

(assert (=> b!337158 (= lt!145074 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!198 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!337159 () Bool)

(declare-fun res!151990 () Bool)

(declare-fun e!208401 () Bool)

(assert (=> b!337159 (=> (not res!151990) (not e!208401))))

(declare-fun rulesInvariant!643 (LexerInterface!677 List!4120) Bool)

(assert (=> b!337159 (= res!151990 (rulesInvariant!643 thiss!17480 rules!1920))))

(declare-fun b!337160 () Bool)

(declare-fun res!151999 () Bool)

(assert (=> b!337160 (=> (not res!151999) (not e!208394))))

(declare-fun isEmpty!2862 (List!4119) Bool)

(assert (=> b!337160 (= res!151999 (isEmpty!2862 (_2!2612 lt!145089)))))

(declare-fun b!337161 () Bool)

(declare-fun e!208385 () Bool)

(declare-fun lt!145082 () Option!955)

(assert (=> b!337161 (= e!208385 (= (_1!2612 (get!1418 lt!145082)) (head!984 tokens!465)))))

(declare-fun b!337162 () Bool)

(declare-fun res!151993 () Bool)

(declare-fun e!208379 () Bool)

(assert (=> b!337162 (=> (not res!151993) (not e!208379))))

(declare-fun lt!145087 () List!4119)

(assert (=> b!337162 (= res!151993 (= (list!1755 (seqFromList!947 lt!145094)) lt!145087))))

(declare-fun res!151989 () Bool)

(declare-fun e!208382 () Bool)

(assert (=> b!337163 (=> (not res!151989) (not e!208382))))

(declare-fun forall!1110 (List!4121 Int) Bool)

(assert (=> b!337163 (= res!151989 (forall!1110 tokens!465 lambda!11011))))

(declare-fun b!337164 () Bool)

(declare-fun e!208375 () Bool)

(declare-fun e!208373 () Bool)

(assert (=> b!337164 (= e!208375 e!208373)))

(declare-fun res!152014 () Bool)

(assert (=> b!337164 (=> res!152014 e!208373)))

(declare-fun e!208371 () Bool)

(assert (=> b!337164 (= res!152014 e!208371)))

(declare-fun res!151986 () Bool)

(assert (=> b!337164 (=> (not res!151986) (not e!208371))))

(assert (=> b!337164 (= res!151986 (not lt!145093))))

(assert (=> b!337164 (= lt!145093 (= lt!145094 lt!145077))))

(declare-fun b!337165 () Bool)

(declare-fun e!208376 () Bool)

(assert (=> b!337165 (= e!208381 e!208376)))

(declare-fun res!152011 () Bool)

(assert (=> b!337165 (=> (not res!152011) (not e!208376))))

(declare-fun lt!145079 () Rule!1382)

(declare-fun matchR!333 (Regex!1015 List!4119) Bool)

(assert (=> b!337165 (= res!152011 (matchR!333 (regex!791 lt!145079) lt!145066))))

(declare-fun get!1419 (Option!956) Rule!1382)

(assert (=> b!337165 (= lt!145079 (get!1419 lt!145064))))

(declare-fun b!337166 () Bool)

(declare-fun e!208397 () Bool)

(declare-fun e!208398 () Bool)

(declare-fun tp!112771 () Bool)

(assert (=> b!337166 (= e!208397 (and e!208398 tp!112771))))

(declare-fun b!337167 () Bool)

(declare-fun isEmpty!2863 (BalanceConc!2816) Bool)

(assert (=> b!337167 (= e!208387 (isEmpty!2863 (_2!2611 lt!145095)))))

(declare-fun b!337168 () Bool)

(declare-fun res!151996 () Bool)

(assert (=> b!337168 (=> (not res!151996) (not e!208382))))

(assert (=> b!337168 (= res!151996 (isSeparator!791 (rule!1420 separatorToken!170)))))

(declare-fun res!152010 () Bool)

(assert (=> start!34942 (=> (not res!152010) (not e!208401))))

(assert (=> start!34942 (= res!152010 ((_ is Lexer!675) thiss!17480))))

(assert (=> start!34942 e!208401))

(assert (=> start!34942 true))

(assert (=> start!34942 e!208397))

(declare-fun e!208391 () Bool)

(assert (=> start!34942 (and (inv!5093 separatorToken!170) e!208391)))

(assert (=> start!34942 e!208378))

(declare-fun b!337169 () Bool)

(assert (=> b!337169 (= e!208376 (= (rule!1420 separatorToken!170) lt!145079))))

(declare-fun b!337170 () Bool)

(declare-fun res!152006 () Bool)

(assert (=> b!337170 (=> (not res!152006) (not e!208382))))

(assert (=> b!337170 (= res!152006 ((_ is Cons!4111) tokens!465))))

(declare-fun b!337171 () Bool)

(declare-fun Unit!6135 () Unit!6132)

(assert (=> b!337171 (= e!208374 Unit!6135)))

(assert (=> b!337171 false))

(declare-fun b!337172 () Bool)

(assert (=> b!337172 (= e!208373 e!208383)))

(declare-fun res!151991 () Bool)

(assert (=> b!337172 (=> res!151991 e!208383)))

(declare-fun lt!145070 () List!4119)

(declare-fun lt!145063 () List!4119)

(assert (=> b!337172 (= res!151991 (or (not (= lt!145070 lt!145063)) (not (= lt!145063 lt!145068)) (not (= lt!145070 lt!145068))))))

(declare-fun printList!351 (LexerInterface!677 List!4121) List!4119)

(assert (=> b!337172 (= lt!145063 (printList!351 thiss!17480 (Cons!4111 (h!9508 tokens!465) Nil!4111)))))

(declare-fun lt!145059 () BalanceConc!2816)

(assert (=> b!337172 (= lt!145070 (list!1755 lt!145059))))

(declare-fun lt!145062 () BalanceConc!2818)

(assert (=> b!337172 (= lt!145059 (printTailRec!363 thiss!17480 lt!145062 0 (BalanceConc!2817 Empty!1404)))))

(assert (=> b!337172 (= lt!145059 (print!402 thiss!17480 lt!145062))))

(assert (=> b!337172 (= lt!145062 (singletonSeq!337 (h!9508 tokens!465)))))

(declare-fun tp!112780 () Bool)

(declare-fun b!337173 () Bool)

(assert (=> b!337173 (= e!208398 (and tp!112780 (inv!5089 (tag!1013 (h!9507 rules!1920))) (inv!5092 (transformation!791 (h!9507 rules!1920))) e!208392))))

(declare-fun e!208377 () Bool)

(assert (=> b!337174 (= e!208377 (and tp!112778 tp!112779))))

(declare-fun b!337175 () Bool)

(assert (=> b!337175 (= e!208379 (not e!208375))))

(declare-fun res!152001 () Bool)

(assert (=> b!337175 (=> res!152001 e!208375)))

(declare-fun lt!145061 () List!4119)

(declare-fun printWithSeparatorTokenWhenNeededRec!350 (LexerInterface!677 List!4120 BalanceConc!2818 Token!1326 Int) BalanceConc!2816)

(declare-fun seqFromList!948 (List!4121) BalanceConc!2818)

(assert (=> b!337175 (= res!152001 (not (= lt!145061 (list!1755 (printWithSeparatorTokenWhenNeededRec!350 thiss!17480 rules!1920 (seqFromList!948 (t!49981 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!145075 () List!4119)

(assert (=> b!337175 (= lt!145075 lt!145077)))

(declare-fun ++!1132 (List!4119 List!4119) List!4119)

(assert (=> b!337175 (= lt!145077 (++!1132 lt!145068 lt!145086))))

(assert (=> b!337175 (= lt!145075 (++!1132 (++!1132 lt!145068 lt!145066) lt!145061))))

(declare-fun lt!145083 () Unit!6132)

(declare-fun lemmaConcatAssociativity!504 (List!4119 List!4119 List!4119) Unit!6132)

(assert (=> b!337175 (= lt!145083 (lemmaConcatAssociativity!504 lt!145068 lt!145066 lt!145061))))

(assert (=> b!337175 (= lt!145068 (list!1755 (charsOf!434 (h!9508 tokens!465))))))

(assert (=> b!337175 (= lt!145086 (++!1132 lt!145066 lt!145061))))

(declare-fun printWithSeparatorTokenWhenNeededList!358 (LexerInterface!677 List!4120 List!4121 Token!1326) List!4119)

(assert (=> b!337175 (= lt!145061 (printWithSeparatorTokenWhenNeededList!358 thiss!17480 rules!1920 (t!49981 tokens!465) separatorToken!170))))

(assert (=> b!337175 (= lt!145066 (list!1755 (charsOf!434 separatorToken!170)))))

(declare-fun b!337176 () Bool)

(assert (=> b!337176 (= e!208386 (isEmpty!2863 (_2!2611 lt!145081)))))

(declare-fun b!337177 () Bool)

(assert (=> b!337177 (= e!208382 e!208379)))

(declare-fun res!152004 () Bool)

(assert (=> b!337177 (=> (not res!152004) (not e!208379))))

(assert (=> b!337177 (= res!152004 (= lt!145094 lt!145087))))

(declare-fun lt!145092 () BalanceConc!2818)

(assert (=> b!337177 (= lt!145087 (list!1755 (printWithSeparatorTokenWhenNeededRec!350 thiss!17480 rules!1920 lt!145092 separatorToken!170 0)))))

(assert (=> b!337177 (= lt!145094 (printWithSeparatorTokenWhenNeededList!358 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!337178 () Bool)

(assert (=> b!337178 (= e!208371 (not (= lt!145094 (++!1132 lt!145068 lt!145061))))))

(declare-fun b!337179 () Bool)

(declare-fun res!151994 () Bool)

(assert (=> b!337179 (=> (not res!151994) (not e!208386))))

(declare-fun apply!926 (BalanceConc!2818 Int) Token!1326)

(assert (=> b!337179 (= res!151994 (= (apply!926 (_1!2611 lt!145081) 0) lt!145096))))

(declare-fun b!337180 () Bool)

(declare-fun res!151995 () Bool)

(assert (=> b!337180 (=> (not res!151995) (not e!208382))))

(assert (=> b!337180 (= res!151995 (rulesProduceIndividualToken!426 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!337181 () Bool)

(assert (=> b!337181 (= e!208396 e!208385)))

(declare-fun res!151998 () Bool)

(assert (=> b!337181 (=> (not res!151998) (not e!208385))))

(assert (=> b!337181 (= res!151998 (isDefined!794 lt!145082))))

(assert (=> b!337181 (= lt!145082 (maxPrefix!393 thiss!17480 rules!1920 lt!145094))))

(declare-fun b!337182 () Bool)

(declare-fun res!151992 () Bool)

(assert (=> b!337182 (=> (not res!151992) (not e!208387))))

(assert (=> b!337182 (= res!151992 (= (apply!926 (_1!2611 lt!145095) 0) separatorToken!170))))

(declare-fun b!337183 () Bool)

(declare-fun res!151987 () Bool)

(assert (=> b!337183 (=> (not res!151987) (not e!208401))))

(declare-fun isEmpty!2864 (List!4120) Bool)

(assert (=> b!337183 (= res!151987 (not (isEmpty!2864 rules!1920)))))

(declare-fun b!337184 () Bool)

(declare-fun e!208380 () Bool)

(declare-fun tp!112777 () Bool)

(assert (=> b!337184 (= e!208380 (and tp!112777 (inv!5089 (tag!1013 (rule!1420 (h!9508 tokens!465)))) (inv!5092 (transformation!791 (rule!1420 (h!9508 tokens!465)))) e!208377))))

(declare-fun b!337185 () Bool)

(declare-fun res!152007 () Bool)

(assert (=> b!337185 (=> (not res!152007) (not e!208382))))

(declare-fun sepAndNonSepRulesDisjointChars!380 (List!4120 List!4120) Bool)

(assert (=> b!337185 (= res!152007 (sepAndNonSepRulesDisjointChars!380 rules!1920 rules!1920))))

(declare-fun b!337186 () Bool)

(assert (=> b!337186 (= e!208394 (matchR!333 (regex!791 (rule!1420 (h!9508 tokens!465))) lt!145068))))

(assert (=> b!337187 (= e!208399 (and tp!112776 tp!112769))))

(assert (=> b!337188 (= e!208383 e!208389)))

(declare-fun res!152013 () Bool)

(assert (=> b!337188 (=> res!152013 e!208389)))

(declare-datatypes ((tuple2!4794 0))(
  ( (tuple2!4795 (_1!2613 Token!1326) (_2!2613 BalanceConc!2816)) )
))
(declare-datatypes ((Option!957 0))(
  ( (None!956) (Some!956 (v!15019 tuple2!4794)) )
))
(declare-fun isDefined!796 (Option!957) Bool)

(declare-fun maxPrefixZipperSequence!356 (LexerInterface!677 List!4120 BalanceConc!2816) Option!957)

(assert (=> b!337188 (= res!152013 (not (isDefined!796 (maxPrefixZipperSequence!356 thiss!17480 rules!1920 (seqFromList!947 (originalCharacters!834 (h!9508 tokens!465)))))))))

(declare-fun lt!145078 () Unit!6132)

(assert (=> b!337188 (= lt!145078 (forallContained!344 tokens!465 lambda!11012 (h!9508 tokens!465)))))

(assert (=> b!337188 (= lt!145068 (originalCharacters!834 (h!9508 tokens!465)))))

(declare-fun b!337189 () Bool)

(assert (=> b!337189 (= e!208401 e!208382)))

(declare-fun res!152009 () Bool)

(assert (=> b!337189 (=> (not res!152009) (not e!208382))))

(declare-fun rulesProduceEachTokenIndividually!469 (LexerInterface!677 List!4120 BalanceConc!2818) Bool)

(assert (=> b!337189 (= res!152009 (rulesProduceEachTokenIndividually!469 thiss!17480 rules!1920 lt!145092))))

(assert (=> b!337189 (= lt!145092 (seqFromList!948 tokens!465))))

(declare-fun b!337190 () Bool)

(declare-fun tp!112781 () Bool)

(declare-fun inv!21 (TokenValue!813) Bool)

(assert (=> b!337190 (= e!208391 (and (inv!21 (value!26859 separatorToken!170)) e!208370 tp!112781))))

(declare-fun b!337191 () Bool)

(declare-fun tp!112774 () Bool)

(assert (=> b!337191 (= e!208372 (and (inv!21 (value!26859 (h!9508 tokens!465))) e!208380 tp!112774))))

(assert (= (and start!34942 res!152010) b!337183))

(assert (= (and b!337183 res!151987) b!337159))

(assert (= (and b!337159 res!151990) b!337189))

(assert (= (and b!337189 res!152009) b!337180))

(assert (= (and b!337180 res!151995) b!337168))

(assert (= (and b!337168 res!151996) b!337163))

(assert (= (and b!337163 res!151989) b!337185))

(assert (= (and b!337185 res!152007) b!337170))

(assert (= (and b!337170 res!152006) b!337177))

(assert (= (and b!337177 res!152004) b!337162))

(assert (= (and b!337162 res!151993) b!337175))

(assert (= (and b!337175 (not res!152001)) b!337164))

(assert (= (and b!337164 res!151986) b!337178))

(assert (= (and b!337164 (not res!152014)) b!337172))

(assert (= (and b!337172 (not res!151991)) b!337152))

(assert (= (and b!337152 (not res!152002)) b!337151))

(assert (= (and b!337151 (not res!151997)) b!337188))

(assert (= (and b!337188 (not res!152013)) b!337156))

(assert (= (and b!337156 res!152000) b!337160))

(assert (= (and b!337160 res!151999) b!337186))

(assert (= (and b!337156 (not res!151988)) b!337158))

(assert (= (and b!337158 (not res!152003)) b!337181))

(assert (= (and b!337181 res!151998) b!337161))

(assert (= (and b!337158 c!65077) b!337171))

(assert (= (and b!337158 (not c!65077)) b!337157))

(assert (= (and b!337158 res!152012) b!337182))

(assert (= (and b!337182 res!151992) b!337167))

(assert (= (and b!337158 res!152008) b!337165))

(assert (= (and b!337165 res!152011) b!337169))

(assert (= (and b!337158 res!152005) b!337179))

(assert (= (and b!337179 res!151994) b!337176))

(assert (= b!337173 b!337155))

(assert (= b!337166 b!337173))

(assert (= (and start!34942 ((_ is Cons!4110) rules!1920)) b!337166))

(assert (= b!337153 b!337187))

(assert (= b!337190 b!337153))

(assert (= start!34942 b!337190))

(assert (= b!337184 b!337174))

(assert (= b!337191 b!337184))

(assert (= b!337154 b!337191))

(assert (= (and start!34942 ((_ is Cons!4111) tokens!465)) b!337154))

(declare-fun m!474953 () Bool)

(assert (=> b!337156 m!474953))

(declare-fun m!474955 () Bool)

(assert (=> b!337156 m!474955))

(declare-fun m!474957 () Bool)

(assert (=> b!337156 m!474957))

(declare-fun m!474959 () Bool)

(assert (=> b!337158 m!474959))

(declare-fun m!474961 () Bool)

(assert (=> b!337158 m!474961))

(declare-fun m!474963 () Bool)

(assert (=> b!337158 m!474963))

(declare-fun m!474965 () Bool)

(assert (=> b!337158 m!474965))

(declare-fun m!474967 () Bool)

(assert (=> b!337158 m!474967))

(declare-fun m!474969 () Bool)

(assert (=> b!337158 m!474969))

(declare-fun m!474971 () Bool)

(assert (=> b!337158 m!474971))

(declare-fun m!474973 () Bool)

(assert (=> b!337158 m!474973))

(declare-fun m!474975 () Bool)

(assert (=> b!337158 m!474975))

(declare-fun m!474977 () Bool)

(assert (=> b!337158 m!474977))

(declare-fun m!474979 () Bool)

(assert (=> b!337158 m!474979))

(declare-fun m!474981 () Bool)

(assert (=> b!337158 m!474981))

(declare-fun m!474983 () Bool)

(assert (=> b!337158 m!474983))

(declare-fun m!474985 () Bool)

(assert (=> b!337158 m!474985))

(declare-fun m!474987 () Bool)

(assert (=> b!337158 m!474987))

(declare-fun m!474989 () Bool)

(assert (=> b!337158 m!474989))

(declare-fun m!474991 () Bool)

(assert (=> b!337158 m!474991))

(assert (=> b!337158 m!474989))

(declare-fun m!474993 () Bool)

(assert (=> b!337158 m!474993))

(declare-fun m!474995 () Bool)

(assert (=> b!337158 m!474995))

(declare-fun m!474997 () Bool)

(assert (=> b!337158 m!474997))

(declare-fun m!474999 () Bool)

(assert (=> b!337158 m!474999))

(declare-fun m!475001 () Bool)

(assert (=> b!337158 m!475001))

(declare-fun m!475003 () Bool)

(assert (=> b!337158 m!475003))

(declare-fun m!475005 () Bool)

(assert (=> b!337158 m!475005))

(declare-fun m!475007 () Bool)

(assert (=> b!337158 m!475007))

(declare-fun m!475009 () Bool)

(assert (=> b!337158 m!475009))

(declare-fun m!475011 () Bool)

(assert (=> b!337158 m!475011))

(declare-fun m!475013 () Bool)

(assert (=> b!337158 m!475013))

(assert (=> b!337158 m!474971))

(declare-fun m!475015 () Bool)

(assert (=> b!337183 m!475015))

(declare-fun m!475017 () Bool)

(assert (=> b!337176 m!475017))

(declare-fun m!475019 () Bool)

(assert (=> b!337173 m!475019))

(declare-fun m!475021 () Bool)

(assert (=> b!337173 m!475021))

(declare-fun m!475023 () Bool)

(assert (=> b!337180 m!475023))

(declare-fun m!475025 () Bool)

(assert (=> b!337185 m!475025))

(declare-fun m!475027 () Bool)

(assert (=> b!337160 m!475027))

(declare-fun m!475029 () Bool)

(assert (=> b!337182 m!475029))

(declare-fun m!475031 () Bool)

(assert (=> b!337172 m!475031))

(declare-fun m!475033 () Bool)

(assert (=> b!337172 m!475033))

(declare-fun m!475035 () Bool)

(assert (=> b!337172 m!475035))

(declare-fun m!475037 () Bool)

(assert (=> b!337172 m!475037))

(declare-fun m!475039 () Bool)

(assert (=> b!337172 m!475039))

(declare-fun m!475041 () Bool)

(assert (=> b!337178 m!475041))

(declare-fun m!475043 () Bool)

(assert (=> b!337159 m!475043))

(declare-fun m!475045 () Bool)

(assert (=> b!337177 m!475045))

(assert (=> b!337177 m!475045))

(declare-fun m!475047 () Bool)

(assert (=> b!337177 m!475047))

(declare-fun m!475049 () Bool)

(assert (=> b!337177 m!475049))

(declare-fun m!475051 () Bool)

(assert (=> b!337186 m!475051))

(declare-fun m!475053 () Bool)

(assert (=> b!337191 m!475053))

(declare-fun m!475055 () Bool)

(assert (=> b!337175 m!475055))

(declare-fun m!475057 () Bool)

(assert (=> b!337175 m!475057))

(declare-fun m!475059 () Bool)

(assert (=> b!337175 m!475059))

(declare-fun m!475061 () Bool)

(assert (=> b!337175 m!475061))

(declare-fun m!475063 () Bool)

(assert (=> b!337175 m!475063))

(declare-fun m!475065 () Bool)

(assert (=> b!337175 m!475065))

(assert (=> b!337175 m!475063))

(assert (=> b!337175 m!475059))

(declare-fun m!475067 () Bool)

(assert (=> b!337175 m!475067))

(assert (=> b!337175 m!475057))

(declare-fun m!475069 () Bool)

(assert (=> b!337175 m!475069))

(declare-fun m!475071 () Bool)

(assert (=> b!337175 m!475071))

(declare-fun m!475073 () Bool)

(assert (=> b!337175 m!475073))

(declare-fun m!475075 () Bool)

(assert (=> b!337175 m!475075))

(assert (=> b!337175 m!475071))

(declare-fun m!475077 () Bool)

(assert (=> b!337175 m!475077))

(assert (=> b!337175 m!475069))

(declare-fun m!475079 () Bool)

(assert (=> b!337175 m!475079))

(declare-fun m!475081 () Bool)

(assert (=> b!337152 m!475081))

(declare-fun m!475083 () Bool)

(assert (=> b!337189 m!475083))

(declare-fun m!475085 () Bool)

(assert (=> b!337189 m!475085))

(declare-fun m!475087 () Bool)

(assert (=> b!337162 m!475087))

(assert (=> b!337162 m!475087))

(declare-fun m!475089 () Bool)

(assert (=> b!337162 m!475089))

(declare-fun m!475091 () Bool)

(assert (=> b!337167 m!475091))

(declare-fun m!475093 () Bool)

(assert (=> b!337190 m!475093))

(declare-fun m!475095 () Bool)

(assert (=> b!337154 m!475095))

(declare-fun m!475097 () Bool)

(assert (=> start!34942 m!475097))

(declare-fun m!475099 () Bool)

(assert (=> b!337161 m!475099))

(declare-fun m!475101 () Bool)

(assert (=> b!337161 m!475101))

(declare-fun m!475103 () Bool)

(assert (=> b!337179 m!475103))

(declare-fun m!475105 () Bool)

(assert (=> b!337151 m!475105))

(assert (=> b!337151 m!475105))

(declare-fun m!475107 () Bool)

(assert (=> b!337151 m!475107))

(declare-fun m!475109 () Bool)

(assert (=> b!337151 m!475109))

(declare-fun m!475111 () Bool)

(assert (=> b!337163 m!475111))

(declare-fun m!475113 () Bool)

(assert (=> b!337165 m!475113))

(declare-fun m!475115 () Bool)

(assert (=> b!337165 m!475115))

(declare-fun m!475117 () Bool)

(assert (=> b!337188 m!475117))

(assert (=> b!337188 m!475117))

(declare-fun m!475119 () Bool)

(assert (=> b!337188 m!475119))

(assert (=> b!337188 m!475119))

(declare-fun m!475121 () Bool)

(assert (=> b!337188 m!475121))

(declare-fun m!475123 () Bool)

(assert (=> b!337188 m!475123))

(declare-fun m!475125 () Bool)

(assert (=> b!337184 m!475125))

(declare-fun m!475127 () Bool)

(assert (=> b!337184 m!475127))

(declare-fun m!475129 () Bool)

(assert (=> b!337153 m!475129))

(declare-fun m!475131 () Bool)

(assert (=> b!337153 m!475131))

(declare-fun m!475133 () Bool)

(assert (=> b!337181 m!475133))

(assert (=> b!337181 m!474971))

(check-sat b_and!31489 (not b!337189) (not b!337175) b_and!31487 (not b!337162) (not b!337176) (not b!337165) (not b!337163) (not b!337172) (not b!337154) b_and!31495 (not b!337167) (not b_next!11285) (not b!337166) (not b!337177) (not b!337179) (not start!34942) (not b!337190) (not b_next!11287) (not b!337200) (not b!337181) b_and!31491 (not b!337173) (not b_next!11281) (not b!337185) (not b!337156) (not b_next!11289) (not b!337180) (not b!337184) (not b!337160) b_and!31485 (not b!337159) (not b!337186) (not b!337153) (not b!337151) (not b!337161) (not b_next!11283) (not b!337158) (not b!337183) (not b!337191) (not b!337178) b_and!31493 (not b!337188) (not b!337152) (not b_next!11291) (not b!337182))
(check-sat b_and!31489 (not b_next!11287) b_and!31491 b_and!31487 b_and!31485 (not b_next!11283) b_and!31495 b_and!31493 (not b_next!11291) (not b_next!11285) (not b_next!11281) (not b_next!11289))

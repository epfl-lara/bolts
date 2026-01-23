; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302642 () Bool)

(assert start!302642)

(declare-fun b!3222917 () Bool)

(declare-fun b_free!85785 () Bool)

(declare-fun b_next!86489 () Bool)

(assert (=> b!3222917 (= b_free!85785 (not b_next!86489))))

(declare-fun tp!1015284 () Bool)

(declare-fun b_and!215487 () Bool)

(assert (=> b!3222917 (= tp!1015284 b_and!215487)))

(declare-fun b_free!85787 () Bool)

(declare-fun b_next!86491 () Bool)

(assert (=> b!3222917 (= b_free!85787 (not b_next!86491))))

(declare-fun tp!1015286 () Bool)

(declare-fun b_and!215489 () Bool)

(assert (=> b!3222917 (= tp!1015286 b_and!215489)))

(declare-fun b!3222931 () Bool)

(declare-fun b_free!85789 () Bool)

(declare-fun b_next!86493 () Bool)

(assert (=> b!3222931 (= b_free!85789 (not b_next!86493))))

(declare-fun tp!1015285 () Bool)

(declare-fun b_and!215491 () Bool)

(assert (=> b!3222931 (= tp!1015285 b_and!215491)))

(declare-fun b_free!85791 () Bool)

(declare-fun b_next!86495 () Bool)

(assert (=> b!3222931 (= b_free!85791 (not b_next!86495))))

(declare-fun tp!1015275 () Bool)

(declare-fun b_and!215493 () Bool)

(assert (=> b!3222931 (= tp!1015275 b_and!215493)))

(declare-fun b!3222911 () Bool)

(declare-fun b_free!85793 () Bool)

(declare-fun b_next!86497 () Bool)

(assert (=> b!3222911 (= b_free!85793 (not b_next!86497))))

(declare-fun tp!1015281 () Bool)

(declare-fun b_and!215495 () Bool)

(assert (=> b!3222911 (= tp!1015281 b_and!215495)))

(declare-fun b_free!85795 () Bool)

(declare-fun b_next!86499 () Bool)

(assert (=> b!3222911 (= b_free!85795 (not b_next!86499))))

(declare-fun tp!1015283 () Bool)

(declare-fun b_and!215497 () Bool)

(assert (=> b!3222911 (= tp!1015283 b_and!215497)))

(declare-fun bs!542631 () Bool)

(declare-fun b!3222919 () Bool)

(declare-fun b!3222952 () Bool)

(assert (= bs!542631 (and b!3222919 b!3222952)))

(declare-fun lambda!117935 () Int)

(declare-fun lambda!117934 () Int)

(assert (=> bs!542631 (not (= lambda!117935 lambda!117934))))

(declare-fun b!3222966 () Bool)

(declare-fun e!2009894 () Bool)

(assert (=> b!3222966 (= e!2009894 true)))

(declare-fun b!3222965 () Bool)

(declare-fun e!2009893 () Bool)

(assert (=> b!3222965 (= e!2009893 e!2009894)))

(declare-fun b!3222964 () Bool)

(declare-fun e!2009892 () Bool)

(assert (=> b!3222964 (= e!2009892 e!2009893)))

(assert (=> b!3222919 e!2009892))

(assert (= b!3222965 b!3222966))

(assert (= b!3222964 b!3222965))

(declare-datatypes ((C!20200 0))(
  ( (C!20201 (val!12148 Int)) )
))
(declare-datatypes ((Regex!10007 0))(
  ( (ElementMatch!10007 (c!541792 C!20200)) (Concat!15485 (regOne!20526 Regex!10007) (regTwo!20526 Regex!10007)) (EmptyExpr!10007) (Star!10007 (reg!10336 Regex!10007)) (EmptyLang!10007) (Union!10007 (regOne!20527 Regex!10007) (regTwo!20527 Regex!10007)) )
))
(declare-datatypes ((List!36402 0))(
  ( (Nil!36278) (Cons!36278 (h!41698 (_ BitVec 16)) (t!240623 List!36402)) )
))
(declare-datatypes ((TokenValue!5478 0))(
  ( (FloatLiteralValue!10956 (text!38791 List!36402)) (TokenValueExt!5477 (__x!23173 Int)) (Broken!27390 (value!170002 List!36402)) (Object!5601) (End!5478) (Def!5478) (Underscore!5478) (Match!5478) (Else!5478) (Error!5478) (Case!5478) (If!5478) (Extends!5478) (Abstract!5478) (Class!5478) (Val!5478) (DelimiterValue!10956 (del!5538 List!36402)) (KeywordValue!5484 (value!170003 List!36402)) (CommentValue!10956 (value!170004 List!36402)) (WhitespaceValue!10956 (value!170005 List!36402)) (IndentationValue!5478 (value!170006 List!36402)) (String!40723) (Int32!5478) (Broken!27391 (value!170007 List!36402)) (Boolean!5479) (Unit!50871) (OperatorValue!5481 (op!5538 List!36402)) (IdentifierValue!10956 (value!170008 List!36402)) (IdentifierValue!10957 (value!170009 List!36402)) (WhitespaceValue!10957 (value!170010 List!36402)) (True!10956) (False!10956) (Broken!27392 (value!170011 List!36402)) (Broken!27393 (value!170012 List!36402)) (True!10957) (RightBrace!5478) (RightBracket!5478) (Colon!5478) (Null!5478) (Comma!5478) (LeftBracket!5478) (False!10957) (LeftBrace!5478) (ImaginaryLiteralValue!5478 (text!38792 List!36402)) (StringLiteralValue!16434 (value!170013 List!36402)) (EOFValue!5478 (value!170014 List!36402)) (IdentValue!5478 (value!170015 List!36402)) (DelimiterValue!10957 (value!170016 List!36402)) (DedentValue!5478 (value!170017 List!36402)) (NewLineValue!5478 (value!170018 List!36402)) (IntegerValue!16434 (value!170019 (_ BitVec 32)) (text!38793 List!36402)) (IntegerValue!16435 (value!170020 Int) (text!38794 List!36402)) (Times!5478) (Or!5478) (Equal!5478) (Minus!5478) (Broken!27394 (value!170021 List!36402)) (And!5478) (Div!5478) (LessEqual!5478) (Mod!5478) (Concat!15486) (Not!5478) (Plus!5478) (SpaceValue!5478 (value!170022 List!36402)) (IntegerValue!16436 (value!170023 Int) (text!38795 List!36402)) (StringLiteralValue!16435 (text!38796 List!36402)) (FloatLiteralValue!10957 (text!38797 List!36402)) (BytesLiteralValue!5478 (value!170024 List!36402)) (CommentValue!10957 (value!170025 List!36402)) (StringLiteralValue!16436 (value!170026 List!36402)) (ErrorTokenValue!5478 (msg!5539 List!36402)) )
))
(declare-datatypes ((List!36403 0))(
  ( (Nil!36279) (Cons!36279 (h!41699 C!20200) (t!240624 List!36403)) )
))
(declare-datatypes ((IArray!21747 0))(
  ( (IArray!21748 (innerList!10931 List!36403)) )
))
(declare-datatypes ((Conc!10871 0))(
  ( (Node!10871 (left!28241 Conc!10871) (right!28571 Conc!10871) (csize!21972 Int) (cheight!11082 Int)) (Leaf!17106 (xs!13989 IArray!21747) (csize!21973 Int)) (Empty!10871) )
))
(declare-datatypes ((BalanceConc!21356 0))(
  ( (BalanceConc!21357 (c!541793 Conc!10871)) )
))
(declare-datatypes ((String!40724 0))(
  ( (String!40725 (value!170027 String)) )
))
(declare-datatypes ((TokenValueInjection!10384 0))(
  ( (TokenValueInjection!10385 (toValue!7344 Int) (toChars!7203 Int)) )
))
(declare-datatypes ((Rule!10296 0))(
  ( (Rule!10297 (regex!5248 Regex!10007) (tag!5780 String!40724) (isSeparator!5248 Bool) (transformation!5248 TokenValueInjection!10384)) )
))
(declare-datatypes ((List!36404 0))(
  ( (Nil!36280) (Cons!36280 (h!41700 Rule!10296) (t!240625 List!36404)) )
))
(declare-fun rules!2135 () List!36404)

(get-info :version)

(assert (= (and b!3222919 ((_ is Cons!36280) rules!2135)) b!3222964))

(declare-fun order!18641 () Int)

(declare-fun order!18643 () Int)

(declare-fun dynLambda!14709 (Int Int) Int)

(declare-fun dynLambda!14710 (Int Int) Int)

(assert (=> b!3222966 (< (dynLambda!14709 order!18641 (toValue!7344 (transformation!5248 (h!41700 rules!2135)))) (dynLambda!14710 order!18643 lambda!117935))))

(declare-fun order!18645 () Int)

(declare-fun dynLambda!14711 (Int Int) Int)

(assert (=> b!3222966 (< (dynLambda!14711 order!18645 (toChars!7203 (transformation!5248 (h!41700 rules!2135)))) (dynLambda!14710 order!18643 lambda!117935))))

(assert (=> b!3222919 true))

(declare-fun e!2009876 () Bool)

(assert (=> b!3222911 (= e!2009876 (and tp!1015281 tp!1015283))))

(declare-fun b!3222912 () Bool)

(declare-fun e!2009871 () Bool)

(declare-datatypes ((Token!9862 0))(
  ( (Token!9863 (value!170028 TokenValue!5478) (rule!7706 Rule!10296) (size!27355 Int) (originalCharacters!5962 List!36403)) )
))
(declare-fun separatorToken!241 () Token!9862)

(declare-fun lt!1093038 () Rule!10296)

(assert (=> b!3222912 (= e!2009871 (= (rule!7706 separatorToken!241) lt!1093038))))

(declare-fun b!3222913 () Bool)

(declare-fun res!1312493 () Bool)

(declare-fun e!2009873 () Bool)

(assert (=> b!3222913 (=> (not res!1312493) (not e!2009873))))

(declare-fun sepAndNonSepRulesDisjointChars!1442 (List!36404 List!36404) Bool)

(assert (=> b!3222913 (= res!1312493 (sepAndNonSepRulesDisjointChars!1442 rules!2135 rules!2135))))

(declare-fun b!3222914 () Bool)

(declare-datatypes ((Unit!50872 0))(
  ( (Unit!50873) )
))
(declare-fun e!2009865 () Unit!50872)

(declare-fun Unit!50874 () Unit!50872)

(assert (=> b!3222914 (= e!2009865 Unit!50874)))

(declare-fun b!3222915 () Bool)

(declare-fun e!2009858 () Bool)

(declare-fun e!2009859 () Bool)

(assert (=> b!3222915 (= e!2009858 e!2009859)))

(declare-fun res!1312490 () Bool)

(assert (=> b!3222915 (=> res!1312490 e!2009859)))

(declare-datatypes ((List!36405 0))(
  ( (Nil!36281) (Cons!36281 (h!41701 Token!9862) (t!240626 List!36405)) )
))
(declare-fun tokens!494 () List!36405)

(assert (=> b!3222915 (= res!1312490 (or (isSeparator!5248 (rule!7706 (h!41701 tokens!494))) (isSeparator!5248 (rule!7706 (h!41701 (t!240626 tokens!494))))))))

(declare-fun lt!1093020 () Unit!50872)

(declare-fun forallContained!1219 (List!36405 Int Token!9862) Unit!50872)

(assert (=> b!3222915 (= lt!1093020 (forallContained!1219 tokens!494 lambda!117934 (h!41701 (t!240626 tokens!494))))))

(declare-fun lt!1093054 () Unit!50872)

(assert (=> b!3222915 (= lt!1093054 (forallContained!1219 tokens!494 lambda!117934 (h!41701 tokens!494)))))

(declare-fun b!3222916 () Bool)

(declare-fun e!2009872 () Bool)

(declare-fun lt!1093027 () Rule!10296)

(assert (=> b!3222916 (= e!2009872 (= (rule!7706 (h!41701 (t!240626 tokens!494))) lt!1093027))))

(declare-fun e!2009885 () Bool)

(assert (=> b!3222917 (= e!2009885 (and tp!1015284 tp!1015286))))

(declare-fun b!3222918 () Bool)

(declare-fun res!1312491 () Bool)

(declare-fun e!2009857 () Bool)

(assert (=> b!3222918 (=> res!1312491 e!2009857)))

(declare-datatypes ((IArray!21749 0))(
  ( (IArray!21750 (innerList!10932 List!36405)) )
))
(declare-datatypes ((Conc!10872 0))(
  ( (Node!10872 (left!28242 Conc!10872) (right!28572 Conc!10872) (csize!21974 Int) (cheight!11083 Int)) (Leaf!17107 (xs!13990 IArray!21749) (csize!21975 Int)) (Empty!10872) )
))
(declare-datatypes ((BalanceConc!21358 0))(
  ( (BalanceConc!21359 (c!541794 Conc!10872)) )
))
(declare-datatypes ((tuple2!35712 0))(
  ( (tuple2!35713 (_1!20990 BalanceConc!21358) (_2!20990 BalanceConc!21356)) )
))
(declare-fun lt!1093023 () tuple2!35712)

(declare-fun apply!8263 (BalanceConc!21358 Int) Token!9862)

(assert (=> b!3222918 (= res!1312491 (not (= (apply!8263 (_1!20990 lt!1093023) 0) (h!41701 (t!240626 tokens!494)))))))

(declare-fun e!2009875 () Bool)

(declare-fun e!2009862 () Bool)

(assert (=> b!3222919 (= e!2009875 e!2009862)))

(declare-fun res!1312507 () Bool)

(assert (=> b!3222919 (=> res!1312507 e!2009862)))

(declare-fun lt!1093031 () List!36405)

(declare-fun filter!516 (List!36405 Int) List!36405)

(assert (=> b!3222919 (= res!1312507 (not (= (filter!516 lt!1093031 lambda!117934) (t!240626 tokens!494))))))

(assert (=> b!3222919 (= (filter!516 lt!1093031 lambda!117934) (t!240626 tokens!494))))

(declare-datatypes ((LexerInterface!4837 0))(
  ( (LexerInterfaceExt!4834 (__x!23174 Int)) (Lexer!4835) )
))
(declare-fun thiss!18206 () LexerInterface!4837)

(declare-fun list!12920 (BalanceConc!21358) List!36405)

(declare-fun lex!2167 (LexerInterface!4837 List!36404 BalanceConc!21356) tuple2!35712)

(declare-fun printWithSeparatorToken!66 (LexerInterface!4837 BalanceConc!21358 Token!9862) BalanceConc!21356)

(declare-fun seqFromList!3567 (List!36405) BalanceConc!21358)

(assert (=> b!3222919 (= lt!1093031 (list!12920 (_1!20990 (lex!2167 thiss!18206 rules!2135 (printWithSeparatorToken!66 thiss!18206 (seqFromList!3567 (t!240626 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1093056 () Unit!50872)

(declare-fun theoremInvertFromTokensSepTokenBetweenEach!8 (LexerInterface!4837 List!36404 List!36405 Token!9862) Unit!50872)

(assert (=> b!3222919 (= lt!1093056 (theoremInvertFromTokensSepTokenBetweenEach!8 thiss!18206 rules!2135 (t!240626 tokens!494) separatorToken!241))))

(declare-fun lt!1093055 () List!36403)

(declare-fun lt!1093045 () List!36403)

(declare-datatypes ((tuple2!35714 0))(
  ( (tuple2!35715 (_1!20991 Token!9862) (_2!20991 List!36403)) )
))
(declare-datatypes ((Option!7201 0))(
  ( (None!7200) (Some!7200 (v!35780 tuple2!35714)) )
))
(declare-fun maxPrefix!2479 (LexerInterface!4837 List!36404 List!36403) Option!7201)

(assert (=> b!3222919 (= (maxPrefix!2479 thiss!18206 rules!2135 lt!1093055) (Some!7200 (tuple2!35715 separatorToken!241 lt!1093045)))))

(declare-fun lt!1093025 () Unit!50872)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!172 (LexerInterface!4837 List!36404 Token!9862 Rule!10296 List!36403 Rule!10296) Unit!50872)

(assert (=> b!3222919 (= lt!1093025 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!172 thiss!18206 rules!2135 separatorToken!241 (rule!7706 separatorToken!241) lt!1093045 (rule!7706 (h!41701 (t!240626 tokens!494)))))))

(declare-fun lt!1093040 () List!36403)

(declare-fun lt!1093052 () C!20200)

(declare-fun contains!6507 (List!36403 C!20200) Bool)

(assert (=> b!3222919 (not (contains!6507 lt!1093040 lt!1093052))))

(declare-fun lt!1093032 () Unit!50872)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!156 (LexerInterface!4837 List!36404 List!36404 Rule!10296 Rule!10296 C!20200) Unit!50872)

(assert (=> b!3222919 (= lt!1093032 (lemmaSepRuleNotContainsCharContainedInANonSepRule!156 thiss!18206 rules!2135 rules!2135 (rule!7706 (h!41701 (t!240626 tokens!494))) (rule!7706 separatorToken!241) lt!1093052))))

(declare-fun lt!1093011 () Unit!50872)

(assert (=> b!3222919 (= lt!1093011 e!2009865)))

(declare-fun c!541791 () Bool)

(declare-fun usedCharacters!564 (Regex!10007) List!36403)

(assert (=> b!3222919 (= c!541791 (not (contains!6507 (usedCharacters!564 (regex!5248 (rule!7706 (h!41701 (t!240626 tokens!494))))) lt!1093052)))))

(declare-fun lt!1093042 () List!36403)

(declare-fun head!7073 (List!36403) C!20200)

(assert (=> b!3222919 (= lt!1093052 (head!7073 lt!1093042))))

(declare-fun maxPrefixOneRule!1616 (LexerInterface!4837 Rule!10296 List!36403) Option!7201)

(declare-fun apply!8264 (TokenValueInjection!10384 BalanceConc!21356) TokenValue!5478)

(declare-fun seqFromList!3568 (List!36403) BalanceConc!21356)

(declare-fun size!27356 (List!36403) Int)

(assert (=> b!3222919 (= (maxPrefixOneRule!1616 thiss!18206 (rule!7706 (h!41701 (t!240626 tokens!494))) lt!1093042) (Some!7200 (tuple2!35715 (Token!9863 (apply!8264 (transformation!5248 (rule!7706 (h!41701 (t!240626 tokens!494)))) (seqFromList!3568 lt!1093042)) (rule!7706 (h!41701 (t!240626 tokens!494))) (size!27356 lt!1093042) lt!1093042) Nil!36279)))))

(declare-fun lt!1093037 () Unit!50872)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!729 (LexerInterface!4837 List!36404 List!36403 List!36403 List!36403 Rule!10296) Unit!50872)

(assert (=> b!3222919 (= lt!1093037 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!729 thiss!18206 rules!2135 lt!1093042 lt!1093042 Nil!36279 (rule!7706 (h!41701 (t!240626 tokens!494)))))))

(declare-fun e!2009864 () Bool)

(assert (=> b!3222919 e!2009864))

(declare-fun res!1312494 () Bool)

(assert (=> b!3222919 (=> (not res!1312494) (not e!2009864))))

(declare-datatypes ((Option!7202 0))(
  ( (None!7201) (Some!7201 (v!35781 Rule!10296)) )
))
(declare-fun lt!1093022 () Option!7202)

(declare-fun isDefined!5586 (Option!7202) Bool)

(assert (=> b!3222919 (= res!1312494 (isDefined!5586 lt!1093022))))

(declare-fun getRuleFromTag!953 (LexerInterface!4837 List!36404 String!40724) Option!7202)

(assert (=> b!3222919 (= lt!1093022 (getRuleFromTag!953 thiss!18206 rules!2135 (tag!5780 (rule!7706 (h!41701 (t!240626 tokens!494))))))))

(declare-fun lt!1093058 () Unit!50872)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!953 (LexerInterface!4837 List!36404 List!36403 Token!9862) Unit!50872)

(assert (=> b!3222919 (= lt!1093058 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!953 thiss!18206 rules!2135 lt!1093042 (h!41701 (t!240626 tokens!494))))))

(declare-fun lt!1093039 () Bool)

(assert (=> b!3222919 lt!1093039))

(declare-fun lt!1093012 () Unit!50872)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!876 (LexerInterface!4837 List!36404 List!36405 Token!9862) Unit!50872)

(assert (=> b!3222919 (= lt!1093012 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!876 thiss!18206 rules!2135 tokens!494 (h!41701 (t!240626 tokens!494))))))

(declare-fun lt!1093059 () List!36403)

(assert (=> b!3222919 (= (maxPrefix!2479 thiss!18206 rules!2135 lt!1093059) (Some!7200 (tuple2!35715 (h!41701 tokens!494) lt!1093055)))))

(declare-fun lt!1093016 () Unit!50872)

(assert (=> b!3222919 (= lt!1093016 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!172 thiss!18206 rules!2135 (h!41701 tokens!494) (rule!7706 (h!41701 tokens!494)) lt!1093055 (rule!7706 separatorToken!241)))))

(declare-fun lt!1093061 () C!20200)

(assert (=> b!3222919 (not (contains!6507 (usedCharacters!564 (regex!5248 (rule!7706 (h!41701 tokens!494)))) lt!1093061))))

(declare-fun lt!1093021 () Unit!50872)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!172 (LexerInterface!4837 List!36404 List!36404 Rule!10296 Rule!10296 C!20200) Unit!50872)

(assert (=> b!3222919 (= lt!1093021 (lemmaNonSepRuleNotContainsCharContainedInASepRule!172 thiss!18206 rules!2135 rules!2135 (rule!7706 (h!41701 tokens!494)) (rule!7706 separatorToken!241) lt!1093061))))

(declare-fun lt!1093041 () Unit!50872)

(assert (=> b!3222919 (= lt!1093041 (forallContained!1219 tokens!494 lambda!117935 (h!41701 (t!240626 tokens!494))))))

(declare-fun lt!1093047 () Bool)

(assert (=> b!3222919 (= lt!1093039 (not lt!1093047))))

(declare-fun rulesProduceIndividualToken!2329 (LexerInterface!4837 List!36404 Token!9862) Bool)

(assert (=> b!3222919 (= lt!1093039 (rulesProduceIndividualToken!2329 thiss!18206 rules!2135 (h!41701 (t!240626 tokens!494))))))

(assert (=> b!3222919 (= lt!1093047 e!2009857)))

(declare-fun res!1312504 () Bool)

(assert (=> b!3222919 (=> res!1312504 e!2009857)))

(declare-fun size!27357 (BalanceConc!21358) Int)

(assert (=> b!3222919 (= res!1312504 (not (= (size!27357 (_1!20990 lt!1093023)) 1)))))

(declare-fun lt!1093049 () BalanceConc!21356)

(assert (=> b!3222919 (= lt!1093023 (lex!2167 thiss!18206 rules!2135 lt!1093049))))

(declare-fun lt!1093015 () BalanceConc!21358)

(declare-fun printTailRec!1334 (LexerInterface!4837 BalanceConc!21358 Int BalanceConc!21356) BalanceConc!21356)

(assert (=> b!3222919 (= lt!1093049 (printTailRec!1334 thiss!18206 lt!1093015 0 (BalanceConc!21357 Empty!10871)))))

(declare-fun print!1902 (LexerInterface!4837 BalanceConc!21358) BalanceConc!21356)

(assert (=> b!3222919 (= lt!1093049 (print!1902 thiss!18206 lt!1093015))))

(declare-fun singletonSeq!2344 (Token!9862) BalanceConc!21358)

(assert (=> b!3222919 (= lt!1093015 (singletonSeq!2344 (h!41701 (t!240626 tokens!494))))))

(declare-fun e!2009884 () Bool)

(assert (=> b!3222919 e!2009884))

(declare-fun res!1312516 () Bool)

(assert (=> b!3222919 (=> (not res!1312516) (not e!2009884))))

(declare-fun lt!1093051 () tuple2!35712)

(assert (=> b!3222919 (= res!1312516 (= (size!27357 (_1!20990 lt!1093051)) 1))))

(declare-fun lt!1093019 () BalanceConc!21356)

(assert (=> b!3222919 (= lt!1093051 (lex!2167 thiss!18206 rules!2135 lt!1093019))))

(declare-fun lt!1093053 () BalanceConc!21358)

(assert (=> b!3222919 (= lt!1093019 (printTailRec!1334 thiss!18206 lt!1093053 0 (BalanceConc!21357 Empty!10871)))))

(assert (=> b!3222919 (= lt!1093019 (print!1902 thiss!18206 lt!1093053))))

(assert (=> b!3222919 (= lt!1093053 (singletonSeq!2344 separatorToken!241))))

(declare-fun lt!1093057 () Unit!50872)

(declare-fun e!2009869 () Unit!50872)

(assert (=> b!3222919 (= lt!1093057 e!2009869)))

(declare-fun c!541790 () Bool)

(assert (=> b!3222919 (= c!541790 (not (contains!6507 lt!1093040 lt!1093061)))))

(declare-fun lt!1093013 () List!36403)

(assert (=> b!3222919 (= lt!1093061 (head!7073 lt!1093013))))

(assert (=> b!3222919 (= lt!1093040 (usedCharacters!564 (regex!5248 (rule!7706 separatorToken!241))))))

(declare-fun e!2009866 () Bool)

(assert (=> b!3222919 e!2009866))

(declare-fun res!1312518 () Bool)

(assert (=> b!3222919 (=> (not res!1312518) (not e!2009866))))

(declare-fun lt!1093035 () Option!7202)

(assert (=> b!3222919 (= res!1312518 (isDefined!5586 lt!1093035))))

(assert (=> b!3222919 (= lt!1093035 (getRuleFromTag!953 thiss!18206 rules!2135 (tag!5780 (rule!7706 separatorToken!241))))))

(declare-fun lt!1093046 () Unit!50872)

(assert (=> b!3222919 (= lt!1093046 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!953 thiss!18206 rules!2135 lt!1093013 separatorToken!241))))

(declare-fun lt!1093036 () BalanceConc!21356)

(declare-fun lt!1093017 () List!36403)

(assert (=> b!3222919 (= (maxPrefixOneRule!1616 thiss!18206 (rule!7706 (h!41701 tokens!494)) lt!1093017) (Some!7200 (tuple2!35715 (Token!9863 (apply!8264 (transformation!5248 (rule!7706 (h!41701 tokens!494))) lt!1093036) (rule!7706 (h!41701 tokens!494)) (size!27356 lt!1093017) lt!1093017) Nil!36279)))))

(declare-fun lt!1093043 () Unit!50872)

(assert (=> b!3222919 (= lt!1093043 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!729 thiss!18206 rules!2135 lt!1093017 lt!1093017 Nil!36279 (rule!7706 (h!41701 tokens!494))))))

(declare-fun e!2009856 () Bool)

(assert (=> b!3222919 e!2009856))

(declare-fun res!1312505 () Bool)

(assert (=> b!3222919 (=> (not res!1312505) (not e!2009856))))

(declare-fun lt!1093033 () Option!7202)

(assert (=> b!3222919 (= res!1312505 (isDefined!5586 lt!1093033))))

(assert (=> b!3222919 (= lt!1093033 (getRuleFromTag!953 thiss!18206 rules!2135 (tag!5780 (rule!7706 (h!41701 tokens!494)))))))

(declare-fun lt!1093014 () Unit!50872)

(assert (=> b!3222919 (= lt!1093014 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!953 thiss!18206 rules!2135 lt!1093017 (h!41701 tokens!494)))))

(declare-fun lt!1093029 () Unit!50872)

(assert (=> b!3222919 (= lt!1093029 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!876 thiss!18206 rules!2135 tokens!494 (h!41701 tokens!494)))))

(declare-fun b!3222920 () Bool)

(declare-fun e!2009863 () Bool)

(assert (=> b!3222920 (= e!2009873 (not e!2009863))))

(declare-fun res!1312517 () Bool)

(assert (=> b!3222920 (=> res!1312517 e!2009863)))

(declare-fun lt!1093030 () List!36403)

(declare-fun lt!1093062 () List!36403)

(assert (=> b!3222920 (= res!1312517 (not (= lt!1093030 lt!1093062)))))

(declare-fun printList!1387 (LexerInterface!4837 List!36405) List!36403)

(assert (=> b!3222920 (= lt!1093062 (printList!1387 thiss!18206 (Cons!36281 (h!41701 tokens!494) Nil!36281)))))

(declare-fun lt!1093024 () BalanceConc!21356)

(declare-fun list!12921 (BalanceConc!21356) List!36403)

(assert (=> b!3222920 (= lt!1093030 (list!12921 lt!1093024))))

(declare-fun lt!1093028 () BalanceConc!21358)

(assert (=> b!3222920 (= lt!1093024 (printTailRec!1334 thiss!18206 lt!1093028 0 (BalanceConc!21357 Empty!10871)))))

(assert (=> b!3222920 (= lt!1093024 (print!1902 thiss!18206 lt!1093028))))

(assert (=> b!3222920 (= lt!1093028 (singletonSeq!2344 (h!41701 tokens!494)))))

(declare-fun b!3222921 () Bool)

(declare-fun e!2009868 () Bool)

(assert (=> b!3222921 (= e!2009859 e!2009868)))

(declare-fun res!1312509 () Bool)

(assert (=> b!3222921 (=> res!1312509 e!2009868)))

(declare-fun ++!8722 (List!36403 List!36403) List!36403)

(declare-fun printWithSeparatorTokenList!182 (LexerInterface!4837 List!36405 Token!9862) List!36403)

(assert (=> b!3222921 (= res!1312509 (not (= lt!1093045 (++!8722 (++!8722 lt!1093042 lt!1093013) (printWithSeparatorTokenList!182 thiss!18206 (t!240626 (t!240626 tokens!494)) separatorToken!241)))))))

(declare-fun charsOf!3264 (Token!9862) BalanceConc!21356)

(assert (=> b!3222921 (= lt!1093042 (list!12921 (charsOf!3264 (h!41701 (t!240626 tokens!494)))))))

(assert (=> b!3222921 (= lt!1093055 (++!8722 lt!1093013 lt!1093045))))

(assert (=> b!3222921 (= lt!1093013 (list!12921 (charsOf!3264 separatorToken!241)))))

(assert (=> b!3222921 (= lt!1093045 (printWithSeparatorTokenList!182 thiss!18206 (t!240626 tokens!494) separatorToken!241))))

(declare-fun lt!1093026 () List!36403)

(assert (=> b!3222921 (= lt!1093026 (printWithSeparatorTokenList!182 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3222922 () Bool)

(assert (=> b!3222922 (= e!2009866 e!2009871)))

(declare-fun res!1312488 () Bool)

(assert (=> b!3222922 (=> (not res!1312488) (not e!2009871))))

(declare-fun matchR!4641 (Regex!10007 List!36403) Bool)

(assert (=> b!3222922 (= res!1312488 (matchR!4641 (regex!5248 lt!1093038) lt!1093013))))

(declare-fun get!11563 (Option!7202) Rule!10296)

(assert (=> b!3222922 (= lt!1093038 (get!11563 lt!1093035))))

(declare-fun b!3222923 () Bool)

(declare-fun res!1312498 () Bool)

(assert (=> b!3222923 (=> (not res!1312498) (not e!2009873))))

(declare-fun isEmpty!20371 (List!36404) Bool)

(assert (=> b!3222923 (= res!1312498 (not (isEmpty!20371 rules!2135)))))

(declare-fun e!2009851 () Bool)

(declare-fun e!2009867 () Bool)

(declare-fun b!3222924 () Bool)

(declare-fun tp!1015278 () Bool)

(declare-fun inv!21 (TokenValue!5478) Bool)

(assert (=> b!3222924 (= e!2009851 (and (inv!21 (value!170028 separatorToken!241)) e!2009867 tp!1015278))))

(declare-fun b!3222925 () Bool)

(declare-fun Unit!50875 () Unit!50872)

(assert (=> b!3222925 (= e!2009869 Unit!50875)))

(declare-fun e!2009874 () Bool)

(declare-fun e!2009853 () Bool)

(declare-fun b!3222926 () Bool)

(declare-fun tp!1015277 () Bool)

(assert (=> b!3222926 (= e!2009874 (and (inv!21 (value!170028 (h!41701 tokens!494))) e!2009853 tp!1015277))))

(declare-fun b!3222927 () Bool)

(declare-fun Unit!50876 () Unit!50872)

(assert (=> b!3222927 (= e!2009865 Unit!50876)))

(declare-fun lt!1093050 () Unit!50872)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!412 (Regex!10007 List!36403 C!20200) Unit!50872)

(assert (=> b!3222927 (= lt!1093050 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!412 (regex!5248 (rule!7706 (h!41701 (t!240626 tokens!494)))) lt!1093042 lt!1093052))))

(declare-fun res!1312501 () Bool)

(assert (=> b!3222927 (= res!1312501 (not (matchR!4641 (regex!5248 (rule!7706 (h!41701 (t!240626 tokens!494)))) lt!1093042)))))

(declare-fun e!2009854 () Bool)

(assert (=> b!3222927 (=> (not res!1312501) (not e!2009854))))

(assert (=> b!3222927 e!2009854))

(declare-fun res!1312515 () Bool)

(assert (=> start!302642 (=> (not res!1312515) (not e!2009873))))

(assert (=> start!302642 (= res!1312515 ((_ is Lexer!4835) thiss!18206))))

(assert (=> start!302642 e!2009873))

(assert (=> start!302642 true))

(declare-fun e!2009860 () Bool)

(assert (=> start!302642 e!2009860))

(declare-fun e!2009852 () Bool)

(assert (=> start!302642 e!2009852))

(declare-fun inv!49148 (Token!9862) Bool)

(assert (=> start!302642 (and (inv!49148 separatorToken!241) e!2009851)))

(declare-fun b!3222928 () Bool)

(assert (=> b!3222928 (= e!2009862 true)))

(declare-fun lt!1093048 () List!36405)

(declare-datatypes ((tuple2!35716 0))(
  ( (tuple2!35717 (_1!20992 List!36405) (_2!20992 List!36403)) )
))
(declare-fun lexList!1321 (LexerInterface!4837 List!36404 List!36403) tuple2!35716)

(assert (=> b!3222928 (= lt!1093048 (filter!516 (_1!20992 (lexList!1321 thiss!18206 rules!2135 lt!1093026)) lambda!117934))))

(declare-fun b!3222929 () Bool)

(assert (=> b!3222929 (= e!2009854 false)))

(declare-fun b!3222930 () Bool)

(declare-fun res!1312506 () Bool)

(assert (=> b!3222930 (=> (not res!1312506) (not e!2009873))))

(assert (=> b!3222930 (= res!1312506 (rulesProduceIndividualToken!2329 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2009878 () Bool)

(assert (=> b!3222931 (= e!2009878 (and tp!1015285 tp!1015275))))

(declare-fun b!3222932 () Bool)

(declare-fun Unit!50877 () Unit!50872)

(assert (=> b!3222932 (= e!2009869 Unit!50877)))

(declare-fun lt!1093060 () Unit!50872)

(assert (=> b!3222932 (= lt!1093060 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!412 (regex!5248 (rule!7706 separatorToken!241)) lt!1093013 lt!1093061))))

(declare-fun res!1312496 () Bool)

(assert (=> b!3222932 (= res!1312496 (not (matchR!4641 (regex!5248 (rule!7706 separatorToken!241)) lt!1093013)))))

(declare-fun e!2009877 () Bool)

(assert (=> b!3222932 (=> (not res!1312496) (not e!2009877))))

(assert (=> b!3222932 e!2009877))

(declare-fun b!3222933 () Bool)

(declare-fun res!1312492 () Bool)

(declare-fun e!2009855 () Bool)

(assert (=> b!3222933 (=> res!1312492 e!2009855)))

(assert (=> b!3222933 (= res!1312492 (not (rulesProduceIndividualToken!2329 thiss!18206 rules!2135 (h!41701 tokens!494))))))

(declare-fun b!3222934 () Bool)

(assert (=> b!3222934 (= e!2009864 e!2009872)))

(declare-fun res!1312502 () Bool)

(assert (=> b!3222934 (=> (not res!1312502) (not e!2009872))))

(assert (=> b!3222934 (= res!1312502 (matchR!4641 (regex!5248 lt!1093027) lt!1093042))))

(assert (=> b!3222934 (= lt!1093027 (get!11563 lt!1093022))))

(declare-fun b!3222935 () Bool)

(declare-fun e!2009882 () Bool)

(assert (=> b!3222935 (= e!2009868 e!2009882)))

(declare-fun res!1312510 () Bool)

(assert (=> b!3222935 (=> res!1312510 e!2009882)))

(declare-fun lt!1093034 () List!36403)

(assert (=> b!3222935 (= res!1312510 (not (= lt!1093026 lt!1093034)))))

(assert (=> b!3222935 (= lt!1093034 (++!8722 (++!8722 lt!1093017 lt!1093013) lt!1093045))))

(declare-fun b!3222936 () Bool)

(assert (=> b!3222936 (= e!2009882 e!2009875)))

(declare-fun res!1312513 () Bool)

(assert (=> b!3222936 (=> res!1312513 e!2009875)))

(assert (=> b!3222936 (= res!1312513 (not (= lt!1093026 lt!1093059)))))

(assert (=> b!3222936 (= lt!1093034 lt!1093059)))

(assert (=> b!3222936 (= lt!1093059 (++!8722 lt!1093017 lt!1093055))))

(declare-fun lt!1093044 () Unit!50872)

(declare-fun lemmaConcatAssociativity!1776 (List!36403 List!36403 List!36403) Unit!50872)

(assert (=> b!3222936 (= lt!1093044 (lemmaConcatAssociativity!1776 lt!1093017 lt!1093013 lt!1093045))))

(declare-fun b!3222937 () Bool)

(declare-fun res!1312489 () Bool)

(assert (=> b!3222937 (=> (not res!1312489) (not e!2009873))))

(assert (=> b!3222937 (= res!1312489 (and (not ((_ is Nil!36281) tokens!494)) (not ((_ is Nil!36281) (t!240626 tokens!494)))))))

(declare-fun b!3222938 () Bool)

(assert (=> b!3222938 (= e!2009877 false)))

(declare-fun b!3222939 () Bool)

(declare-fun res!1312511 () Bool)

(assert (=> b!3222939 (=> (not res!1312511) (not e!2009873))))

(declare-fun rulesInvariant!4234 (LexerInterface!4837 List!36404) Bool)

(assert (=> b!3222939 (= res!1312511 (rulesInvariant!4234 thiss!18206 rules!2135))))

(declare-fun b!3222940 () Bool)

(declare-fun e!2009861 () Bool)

(declare-fun tp!1015279 () Bool)

(assert (=> b!3222940 (= e!2009860 (and e!2009861 tp!1015279))))

(declare-fun b!3222941 () Bool)

(declare-fun res!1312512 () Bool)

(assert (=> b!3222941 (=> (not res!1312512) (not e!2009873))))

(declare-fun rulesProduceEachTokenIndividually!1288 (LexerInterface!4837 List!36404 BalanceConc!21358) Bool)

(assert (=> b!3222941 (= res!1312512 (rulesProduceEachTokenIndividually!1288 thiss!18206 rules!2135 (seqFromList!3567 tokens!494)))))

(declare-fun b!3222942 () Bool)

(assert (=> b!3222942 (= e!2009855 e!2009858)))

(declare-fun res!1312503 () Bool)

(assert (=> b!3222942 (=> res!1312503 e!2009858)))

(declare-fun isEmpty!20372 (BalanceConc!21358) Bool)

(assert (=> b!3222942 (= res!1312503 (isEmpty!20372 (_1!20990 (lex!2167 thiss!18206 rules!2135 lt!1093036))))))

(assert (=> b!3222942 (= lt!1093036 (seqFromList!3568 lt!1093017))))

(declare-fun b!3222943 () Bool)

(declare-fun tp!1015282 () Bool)

(declare-fun inv!49145 (String!40724) Bool)

(declare-fun inv!49149 (TokenValueInjection!10384) Bool)

(assert (=> b!3222943 (= e!2009853 (and tp!1015282 (inv!49145 (tag!5780 (rule!7706 (h!41701 tokens!494)))) (inv!49149 (transformation!5248 (rule!7706 (h!41701 tokens!494)))) e!2009878))))

(declare-fun b!3222944 () Bool)

(declare-fun isEmpty!20373 (BalanceConc!21356) Bool)

(assert (=> b!3222944 (= e!2009857 (not (isEmpty!20373 (_2!20990 lt!1093023))))))

(declare-fun b!3222945 () Bool)

(declare-fun e!2009880 () Bool)

(declare-fun lt!1093018 () Rule!10296)

(assert (=> b!3222945 (= e!2009880 (= (rule!7706 (h!41701 tokens!494)) lt!1093018))))

(declare-fun b!3222946 () Bool)

(declare-fun res!1312497 () Bool)

(assert (=> b!3222946 (=> (not res!1312497) (not e!2009884))))

(assert (=> b!3222946 (= res!1312497 (= (apply!8263 (_1!20990 lt!1093051) 0) separatorToken!241))))

(declare-fun b!3222947 () Bool)

(declare-fun tp!1015280 () Bool)

(assert (=> b!3222947 (= e!2009861 (and tp!1015280 (inv!49145 (tag!5780 (h!41700 rules!2135))) (inv!49149 (transformation!5248 (h!41700 rules!2135))) e!2009885))))

(declare-fun b!3222948 () Bool)

(assert (=> b!3222948 (= e!2009884 (isEmpty!20373 (_2!20990 lt!1093051)))))

(declare-fun b!3222949 () Bool)

(assert (=> b!3222949 (= e!2009863 e!2009855)))

(declare-fun res!1312500 () Bool)

(assert (=> b!3222949 (=> res!1312500 e!2009855)))

(assert (=> b!3222949 (= res!1312500 (or (not (= lt!1093062 lt!1093017)) (not (= lt!1093030 lt!1093017))))))

(assert (=> b!3222949 (= lt!1093017 (list!12921 (charsOf!3264 (h!41701 tokens!494))))))

(declare-fun b!3222950 () Bool)

(declare-fun tp!1015276 () Bool)

(assert (=> b!3222950 (= e!2009867 (and tp!1015276 (inv!49145 (tag!5780 (rule!7706 separatorToken!241))) (inv!49149 (transformation!5248 (rule!7706 separatorToken!241))) e!2009876))))

(declare-fun b!3222951 () Bool)

(assert (=> b!3222951 (= e!2009856 e!2009880)))

(declare-fun res!1312508 () Bool)

(assert (=> b!3222951 (=> (not res!1312508) (not e!2009880))))

(assert (=> b!3222951 (= res!1312508 (matchR!4641 (regex!5248 lt!1093018) lt!1093017))))

(assert (=> b!3222951 (= lt!1093018 (get!11563 lt!1093033))))

(declare-fun res!1312495 () Bool)

(assert (=> b!3222952 (=> (not res!1312495) (not e!2009873))))

(declare-fun forall!7430 (List!36405 Int) Bool)

(assert (=> b!3222952 (= res!1312495 (forall!7430 tokens!494 lambda!117934))))

(declare-fun tp!1015274 () Bool)

(declare-fun b!3222953 () Bool)

(assert (=> b!3222953 (= e!2009852 (and (inv!49148 (h!41701 tokens!494)) e!2009874 tp!1015274))))

(declare-fun b!3222954 () Bool)

(declare-fun res!1312499 () Bool)

(assert (=> b!3222954 (=> (not res!1312499) (not e!2009873))))

(assert (=> b!3222954 (= res!1312499 (isSeparator!5248 (rule!7706 separatorToken!241)))))

(declare-fun b!3222955 () Bool)

(declare-fun res!1312514 () Bool)

(assert (=> b!3222955 (=> res!1312514 e!2009862)))

(assert (=> b!3222955 (= res!1312514 (not (= (filter!516 (_1!20992 (lexList!1321 thiss!18206 rules!2135 lt!1093045)) lambda!117934) (t!240626 tokens!494))))))

(assert (= (and start!302642 res!1312515) b!3222923))

(assert (= (and b!3222923 res!1312498) b!3222939))

(assert (= (and b!3222939 res!1312511) b!3222941))

(assert (= (and b!3222941 res!1312512) b!3222930))

(assert (= (and b!3222930 res!1312506) b!3222954))

(assert (= (and b!3222954 res!1312499) b!3222952))

(assert (= (and b!3222952 res!1312495) b!3222913))

(assert (= (and b!3222913 res!1312493) b!3222937))

(assert (= (and b!3222937 res!1312489) b!3222920))

(assert (= (and b!3222920 (not res!1312517)) b!3222949))

(assert (= (and b!3222949 (not res!1312500)) b!3222933))

(assert (= (and b!3222933 (not res!1312492)) b!3222942))

(assert (= (and b!3222942 (not res!1312503)) b!3222915))

(assert (= (and b!3222915 (not res!1312490)) b!3222921))

(assert (= (and b!3222921 (not res!1312509)) b!3222935))

(assert (= (and b!3222935 (not res!1312510)) b!3222936))

(assert (= (and b!3222936 (not res!1312513)) b!3222919))

(assert (= (and b!3222919 res!1312505) b!3222951))

(assert (= (and b!3222951 res!1312508) b!3222945))

(assert (= (and b!3222919 res!1312518) b!3222922))

(assert (= (and b!3222922 res!1312488) b!3222912))

(assert (= (and b!3222919 c!541790) b!3222932))

(assert (= (and b!3222919 (not c!541790)) b!3222925))

(assert (= (and b!3222932 res!1312496) b!3222938))

(assert (= (and b!3222919 res!1312516) b!3222946))

(assert (= (and b!3222946 res!1312497) b!3222948))

(assert (= (and b!3222919 (not res!1312504)) b!3222918))

(assert (= (and b!3222918 (not res!1312491)) b!3222944))

(assert (= (and b!3222919 res!1312494) b!3222934))

(assert (= (and b!3222934 res!1312502) b!3222916))

(assert (= (and b!3222919 c!541791) b!3222927))

(assert (= (and b!3222919 (not c!541791)) b!3222914))

(assert (= (and b!3222927 res!1312501) b!3222929))

(assert (= (and b!3222919 (not res!1312507)) b!3222955))

(assert (= (and b!3222955 (not res!1312514)) b!3222928))

(assert (= b!3222947 b!3222917))

(assert (= b!3222940 b!3222947))

(assert (= (and start!302642 ((_ is Cons!36280) rules!2135)) b!3222940))

(assert (= b!3222943 b!3222931))

(assert (= b!3222926 b!3222943))

(assert (= b!3222953 b!3222926))

(assert (= (and start!302642 ((_ is Cons!36281) tokens!494)) b!3222953))

(assert (= b!3222950 b!3222911))

(assert (= b!3222924 b!3222950))

(assert (= start!302642 b!3222924))

(declare-fun m!3500549 () Bool)

(assert (=> b!3222942 m!3500549))

(declare-fun m!3500551 () Bool)

(assert (=> b!3222942 m!3500551))

(declare-fun m!3500553 () Bool)

(assert (=> b!3222942 m!3500553))

(declare-fun m!3500555 () Bool)

(assert (=> b!3222949 m!3500555))

(assert (=> b!3222949 m!3500555))

(declare-fun m!3500557 () Bool)

(assert (=> b!3222949 m!3500557))

(declare-fun m!3500559 () Bool)

(assert (=> b!3222935 m!3500559))

(assert (=> b!3222935 m!3500559))

(declare-fun m!3500561 () Bool)

(assert (=> b!3222935 m!3500561))

(declare-fun m!3500563 () Bool)

(assert (=> b!3222933 m!3500563))

(declare-fun m!3500565 () Bool)

(assert (=> b!3222948 m!3500565))

(declare-fun m!3500567 () Bool)

(assert (=> b!3222915 m!3500567))

(declare-fun m!3500569 () Bool)

(assert (=> b!3222915 m!3500569))

(declare-fun m!3500571 () Bool)

(assert (=> start!302642 m!3500571))

(declare-fun m!3500573 () Bool)

(assert (=> b!3222920 m!3500573))

(declare-fun m!3500575 () Bool)

(assert (=> b!3222920 m!3500575))

(declare-fun m!3500577 () Bool)

(assert (=> b!3222920 m!3500577))

(declare-fun m!3500579 () Bool)

(assert (=> b!3222920 m!3500579))

(declare-fun m!3500581 () Bool)

(assert (=> b!3222920 m!3500581))

(declare-fun m!3500583 () Bool)

(assert (=> b!3222932 m!3500583))

(declare-fun m!3500585 () Bool)

(assert (=> b!3222932 m!3500585))

(declare-fun m!3500587 () Bool)

(assert (=> b!3222930 m!3500587))

(declare-fun m!3500589 () Bool)

(assert (=> b!3222936 m!3500589))

(declare-fun m!3500591 () Bool)

(assert (=> b!3222936 m!3500591))

(declare-fun m!3500593 () Bool)

(assert (=> b!3222921 m!3500593))

(declare-fun m!3500595 () Bool)

(assert (=> b!3222921 m!3500595))

(declare-fun m!3500597 () Bool)

(assert (=> b!3222921 m!3500597))

(declare-fun m!3500599 () Bool)

(assert (=> b!3222921 m!3500599))

(declare-fun m!3500601 () Bool)

(assert (=> b!3222921 m!3500601))

(assert (=> b!3222921 m!3500593))

(declare-fun m!3500603 () Bool)

(assert (=> b!3222921 m!3500603))

(declare-fun m!3500605 () Bool)

(assert (=> b!3222921 m!3500605))

(declare-fun m!3500607 () Bool)

(assert (=> b!3222921 m!3500607))

(assert (=> b!3222921 m!3500595))

(declare-fun m!3500609 () Bool)

(assert (=> b!3222921 m!3500609))

(assert (=> b!3222921 m!3500607))

(assert (=> b!3222921 m!3500605))

(declare-fun m!3500611 () Bool)

(assert (=> b!3222921 m!3500611))

(declare-fun m!3500613 () Bool)

(assert (=> b!3222918 m!3500613))

(declare-fun m!3500615 () Bool)

(assert (=> b!3222922 m!3500615))

(declare-fun m!3500617 () Bool)

(assert (=> b!3222922 m!3500617))

(declare-fun m!3500619 () Bool)

(assert (=> b!3222928 m!3500619))

(declare-fun m!3500621 () Bool)

(assert (=> b!3222928 m!3500621))

(declare-fun m!3500623 () Bool)

(assert (=> b!3222919 m!3500623))

(declare-fun m!3500625 () Bool)

(assert (=> b!3222919 m!3500625))

(declare-fun m!3500627 () Bool)

(assert (=> b!3222919 m!3500627))

(declare-fun m!3500629 () Bool)

(assert (=> b!3222919 m!3500629))

(declare-fun m!3500631 () Bool)

(assert (=> b!3222919 m!3500631))

(declare-fun m!3500633 () Bool)

(assert (=> b!3222919 m!3500633))

(declare-fun m!3500635 () Bool)

(assert (=> b!3222919 m!3500635))

(declare-fun m!3500637 () Bool)

(assert (=> b!3222919 m!3500637))

(declare-fun m!3500639 () Bool)

(assert (=> b!3222919 m!3500639))

(declare-fun m!3500641 () Bool)

(assert (=> b!3222919 m!3500641))

(declare-fun m!3500643 () Bool)

(assert (=> b!3222919 m!3500643))

(declare-fun m!3500645 () Bool)

(assert (=> b!3222919 m!3500645))

(declare-fun m!3500647 () Bool)

(assert (=> b!3222919 m!3500647))

(declare-fun m!3500649 () Bool)

(assert (=> b!3222919 m!3500649))

(declare-fun m!3500651 () Bool)

(assert (=> b!3222919 m!3500651))

(declare-fun m!3500653 () Bool)

(assert (=> b!3222919 m!3500653))

(declare-fun m!3500655 () Bool)

(assert (=> b!3222919 m!3500655))

(declare-fun m!3500657 () Bool)

(assert (=> b!3222919 m!3500657))

(declare-fun m!3500659 () Bool)

(assert (=> b!3222919 m!3500659))

(declare-fun m!3500661 () Bool)

(assert (=> b!3222919 m!3500661))

(declare-fun m!3500663 () Bool)

(assert (=> b!3222919 m!3500663))

(declare-fun m!3500665 () Bool)

(assert (=> b!3222919 m!3500665))

(declare-fun m!3500667 () Bool)

(assert (=> b!3222919 m!3500667))

(declare-fun m!3500669 () Bool)

(assert (=> b!3222919 m!3500669))

(declare-fun m!3500671 () Bool)

(assert (=> b!3222919 m!3500671))

(declare-fun m!3500673 () Bool)

(assert (=> b!3222919 m!3500673))

(declare-fun m!3500675 () Bool)

(assert (=> b!3222919 m!3500675))

(declare-fun m!3500677 () Bool)

(assert (=> b!3222919 m!3500677))

(declare-fun m!3500679 () Bool)

(assert (=> b!3222919 m!3500679))

(declare-fun m!3500681 () Bool)

(assert (=> b!3222919 m!3500681))

(assert (=> b!3222919 m!3500629))

(declare-fun m!3500683 () Bool)

(assert (=> b!3222919 m!3500683))

(declare-fun m!3500685 () Bool)

(assert (=> b!3222919 m!3500685))

(declare-fun m!3500687 () Bool)

(assert (=> b!3222919 m!3500687))

(declare-fun m!3500689 () Bool)

(assert (=> b!3222919 m!3500689))

(declare-fun m!3500691 () Bool)

(assert (=> b!3222919 m!3500691))

(assert (=> b!3222919 m!3500653))

(assert (=> b!3222919 m!3500675))

(declare-fun m!3500693 () Bool)

(assert (=> b!3222919 m!3500693))

(declare-fun m!3500695 () Bool)

(assert (=> b!3222919 m!3500695))

(declare-fun m!3500697 () Bool)

(assert (=> b!3222919 m!3500697))

(declare-fun m!3500699 () Bool)

(assert (=> b!3222919 m!3500699))

(declare-fun m!3500701 () Bool)

(assert (=> b!3222919 m!3500701))

(declare-fun m!3500703 () Bool)

(assert (=> b!3222919 m!3500703))

(declare-fun m!3500705 () Bool)

(assert (=> b!3222919 m!3500705))

(declare-fun m!3500707 () Bool)

(assert (=> b!3222919 m!3500707))

(declare-fun m!3500709 () Bool)

(assert (=> b!3222919 m!3500709))

(declare-fun m!3500711 () Bool)

(assert (=> b!3222919 m!3500711))

(declare-fun m!3500713 () Bool)

(assert (=> b!3222919 m!3500713))

(assert (=> b!3222919 m!3500627))

(declare-fun m!3500715 () Bool)

(assert (=> b!3222919 m!3500715))

(declare-fun m!3500717 () Bool)

(assert (=> b!3222919 m!3500717))

(declare-fun m!3500719 () Bool)

(assert (=> b!3222919 m!3500719))

(assert (=> b!3222919 m!3500649))

(declare-fun m!3500721 () Bool)

(assert (=> b!3222919 m!3500721))

(declare-fun m!3500723 () Bool)

(assert (=> b!3222919 m!3500723))

(declare-fun m!3500725 () Bool)

(assert (=> b!3222919 m!3500725))

(declare-fun m!3500727 () Bool)

(assert (=> b!3222919 m!3500727))

(assert (=> b!3222919 m!3500661))

(declare-fun m!3500729 () Bool)

(assert (=> b!3222926 m!3500729))

(declare-fun m!3500731 () Bool)

(assert (=> b!3222939 m!3500731))

(declare-fun m!3500733 () Bool)

(assert (=> b!3222946 m!3500733))

(declare-fun m!3500735 () Bool)

(assert (=> b!3222952 m!3500735))

(declare-fun m!3500737 () Bool)

(assert (=> b!3222943 m!3500737))

(declare-fun m!3500739 () Bool)

(assert (=> b!3222943 m!3500739))

(declare-fun m!3500741 () Bool)

(assert (=> b!3222927 m!3500741))

(declare-fun m!3500743 () Bool)

(assert (=> b!3222927 m!3500743))

(declare-fun m!3500745 () Bool)

(assert (=> b!3222924 m!3500745))

(declare-fun m!3500747 () Bool)

(assert (=> b!3222934 m!3500747))

(declare-fun m!3500749 () Bool)

(assert (=> b!3222934 m!3500749))

(declare-fun m!3500751 () Bool)

(assert (=> b!3222951 m!3500751))

(declare-fun m!3500753 () Bool)

(assert (=> b!3222951 m!3500753))

(declare-fun m!3500755 () Bool)

(assert (=> b!3222953 m!3500755))

(declare-fun m!3500757 () Bool)

(assert (=> b!3222950 m!3500757))

(declare-fun m!3500759 () Bool)

(assert (=> b!3222950 m!3500759))

(declare-fun m!3500761 () Bool)

(assert (=> b!3222923 m!3500761))

(declare-fun m!3500763 () Bool)

(assert (=> b!3222944 m!3500763))

(declare-fun m!3500765 () Bool)

(assert (=> b!3222913 m!3500765))

(declare-fun m!3500767 () Bool)

(assert (=> b!3222955 m!3500767))

(declare-fun m!3500769 () Bool)

(assert (=> b!3222955 m!3500769))

(declare-fun m!3500771 () Bool)

(assert (=> b!3222941 m!3500771))

(assert (=> b!3222941 m!3500771))

(declare-fun m!3500773 () Bool)

(assert (=> b!3222941 m!3500773))

(declare-fun m!3500775 () Bool)

(assert (=> b!3222947 m!3500775))

(declare-fun m!3500777 () Bool)

(assert (=> b!3222947 m!3500777))

(check-sat (not b_next!86499) (not b!3222934) b_and!215493 (not b!3222915) (not b!3222939) (not b!3222947) (not b!3222949) (not b!3222922) (not b!3222944) (not b!3222932) (not b!3222950) b_and!215497 (not b!3222946) (not start!302642) (not b!3222952) (not b!3222933) (not b_next!86493) (not b!3222918) (not b_next!86497) (not b!3222948) (not b!3222941) (not b!3222936) (not b_next!86489) (not b_next!86491) (not b!3222923) (not b!3222942) (not b!3222928) (not b!3222921) b_and!215491 (not b!3222964) (not b!3222953) (not b!3222955) (not b!3222943) (not b!3222913) (not b_next!86495) (not b!3222924) (not b!3222919) (not b!3222927) (not b!3222930) (not b!3222926) (not b!3222920) b_and!215495 (not b!3222940) (not b!3222951) b_and!215487 (not b!3222935) b_and!215489)
(check-sat (not b_next!86499) b_and!215493 (not b_next!86493) (not b_next!86497) b_and!215491 (not b_next!86495) b_and!215489 b_and!215497 (not b_next!86489) (not b_next!86491) b_and!215495 b_and!215487)

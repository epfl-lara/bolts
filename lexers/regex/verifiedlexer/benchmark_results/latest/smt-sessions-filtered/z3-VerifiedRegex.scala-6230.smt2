; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302626 () Bool)

(assert start!302626)

(declare-fun b!3221783 () Bool)

(declare-fun b_free!85689 () Bool)

(declare-fun b_next!86393 () Bool)

(assert (=> b!3221783 (= b_free!85689 (not b_next!86393))))

(declare-fun tp!1014974 () Bool)

(declare-fun b_and!215391 () Bool)

(assert (=> b!3221783 (= tp!1014974 b_and!215391)))

(declare-fun b_free!85691 () Bool)

(declare-fun b_next!86395 () Bool)

(assert (=> b!3221783 (= b_free!85691 (not b_next!86395))))

(declare-fun tp!1014971 () Bool)

(declare-fun b_and!215393 () Bool)

(assert (=> b!3221783 (= tp!1014971 b_and!215393)))

(declare-fun b!3221765 () Bool)

(declare-fun b_free!85693 () Bool)

(declare-fun b_next!86397 () Bool)

(assert (=> b!3221765 (= b_free!85693 (not b_next!86397))))

(declare-fun tp!1014963 () Bool)

(declare-fun b_and!215395 () Bool)

(assert (=> b!3221765 (= tp!1014963 b_and!215395)))

(declare-fun b_free!85695 () Bool)

(declare-fun b_next!86399 () Bool)

(assert (=> b!3221765 (= b_free!85695 (not b_next!86399))))

(declare-fun tp!1014966 () Bool)

(declare-fun b_and!215397 () Bool)

(assert (=> b!3221765 (= tp!1014966 b_and!215397)))

(declare-fun b!3221793 () Bool)

(declare-fun b_free!85697 () Bool)

(declare-fun b_next!86401 () Bool)

(assert (=> b!3221793 (= b_free!85697 (not b_next!86401))))

(declare-fun tp!1014968 () Bool)

(declare-fun b_and!215399 () Bool)

(assert (=> b!3221793 (= tp!1014968 b_and!215399)))

(declare-fun b_free!85699 () Bool)

(declare-fun b_next!86403 () Bool)

(assert (=> b!3221793 (= b_free!85699 (not b_next!86403))))

(declare-fun tp!1014965 () Bool)

(declare-fun b_and!215401 () Bool)

(assert (=> b!3221793 (= tp!1014965 b_and!215401)))

(declare-fun bs!542615 () Bool)

(declare-fun b!3221768 () Bool)

(declare-fun b!3221774 () Bool)

(assert (= bs!542615 (and b!3221768 b!3221774)))

(declare-fun lambda!117815 () Int)

(declare-fun lambda!117814 () Int)

(assert (=> bs!542615 (not (= lambda!117815 lambda!117814))))

(declare-fun b!3221812 () Bool)

(declare-fun e!2008970 () Bool)

(assert (=> b!3221812 (= e!2008970 true)))

(declare-fun b!3221811 () Bool)

(declare-fun e!2008969 () Bool)

(assert (=> b!3221811 (= e!2008969 e!2008970)))

(declare-fun b!3221810 () Bool)

(declare-fun e!2008968 () Bool)

(assert (=> b!3221810 (= e!2008968 e!2008969)))

(assert (=> b!3221768 e!2008968))

(assert (= b!3221811 b!3221812))

(assert (= b!3221810 b!3221811))

(declare-datatypes ((C!20184 0))(
  ( (C!20185 (val!12140 Int)) )
))
(declare-datatypes ((Regex!9999 0))(
  ( (ElementMatch!9999 (c!541712 C!20184)) (Concat!15469 (regOne!20510 Regex!9999) (regTwo!20510 Regex!9999)) (EmptyExpr!9999) (Star!9999 (reg!10328 Regex!9999)) (EmptyLang!9999) (Union!9999 (regOne!20511 Regex!9999) (regTwo!20511 Regex!9999)) )
))
(declare-datatypes ((List!36370 0))(
  ( (Nil!36246) (Cons!36246 (h!41666 (_ BitVec 16)) (t!240543 List!36370)) )
))
(declare-datatypes ((TokenValue!5470 0))(
  ( (FloatLiteralValue!10940 (text!38735 List!36370)) (TokenValueExt!5469 (__x!23157 Int)) (Broken!27350 (value!169774 List!36370)) (Object!5593) (End!5470) (Def!5470) (Underscore!5470) (Match!5470) (Else!5470) (Error!5470) (Case!5470) (If!5470) (Extends!5470) (Abstract!5470) (Class!5470) (Val!5470) (DelimiterValue!10940 (del!5530 List!36370)) (KeywordValue!5476 (value!169775 List!36370)) (CommentValue!10940 (value!169776 List!36370)) (WhitespaceValue!10940 (value!169777 List!36370)) (IndentationValue!5470 (value!169778 List!36370)) (String!40683) (Int32!5470) (Broken!27351 (value!169779 List!36370)) (Boolean!5471) (Unit!50815) (OperatorValue!5473 (op!5530 List!36370)) (IdentifierValue!10940 (value!169780 List!36370)) (IdentifierValue!10941 (value!169781 List!36370)) (WhitespaceValue!10941 (value!169782 List!36370)) (True!10940) (False!10940) (Broken!27352 (value!169783 List!36370)) (Broken!27353 (value!169784 List!36370)) (True!10941) (RightBrace!5470) (RightBracket!5470) (Colon!5470) (Null!5470) (Comma!5470) (LeftBracket!5470) (False!10941) (LeftBrace!5470) (ImaginaryLiteralValue!5470 (text!38736 List!36370)) (StringLiteralValue!16410 (value!169785 List!36370)) (EOFValue!5470 (value!169786 List!36370)) (IdentValue!5470 (value!169787 List!36370)) (DelimiterValue!10941 (value!169788 List!36370)) (DedentValue!5470 (value!169789 List!36370)) (NewLineValue!5470 (value!169790 List!36370)) (IntegerValue!16410 (value!169791 (_ BitVec 32)) (text!38737 List!36370)) (IntegerValue!16411 (value!169792 Int) (text!38738 List!36370)) (Times!5470) (Or!5470) (Equal!5470) (Minus!5470) (Broken!27354 (value!169793 List!36370)) (And!5470) (Div!5470) (LessEqual!5470) (Mod!5470) (Concat!15470) (Not!5470) (Plus!5470) (SpaceValue!5470 (value!169794 List!36370)) (IntegerValue!16412 (value!169795 Int) (text!38739 List!36370)) (StringLiteralValue!16411 (text!38740 List!36370)) (FloatLiteralValue!10941 (text!38741 List!36370)) (BytesLiteralValue!5470 (value!169796 List!36370)) (CommentValue!10941 (value!169797 List!36370)) (StringLiteralValue!16412 (value!169798 List!36370)) (ErrorTokenValue!5470 (msg!5531 List!36370)) )
))
(declare-datatypes ((List!36371 0))(
  ( (Nil!36247) (Cons!36247 (h!41667 C!20184) (t!240544 List!36371)) )
))
(declare-datatypes ((IArray!21715 0))(
  ( (IArray!21716 (innerList!10915 List!36371)) )
))
(declare-datatypes ((Conc!10855 0))(
  ( (Node!10855 (left!28205 Conc!10855) (right!28535 Conc!10855) (csize!21940 Int) (cheight!11066 Int)) (Leaf!17086 (xs!13973 IArray!21715) (csize!21941 Int)) (Empty!10855) )
))
(declare-datatypes ((BalanceConc!21324 0))(
  ( (BalanceConc!21325 (c!541713 Conc!10855)) )
))
(declare-datatypes ((String!40684 0))(
  ( (String!40685 (value!169799 String)) )
))
(declare-datatypes ((TokenValueInjection!10368 0))(
  ( (TokenValueInjection!10369 (toValue!7336 Int) (toChars!7195 Int)) )
))
(declare-datatypes ((Rule!10280 0))(
  ( (Rule!10281 (regex!5240 Regex!9999) (tag!5772 String!40684) (isSeparator!5240 Bool) (transformation!5240 TokenValueInjection!10368)) )
))
(declare-datatypes ((List!36372 0))(
  ( (Nil!36248) (Cons!36248 (h!41668 Rule!10280) (t!240545 List!36372)) )
))
(declare-fun rules!2135 () List!36372)

(get-info :version)

(assert (= (and b!3221768 ((_ is Cons!36248) rules!2135)) b!3221810))

(declare-fun order!18595 () Int)

(declare-fun order!18593 () Int)

(declare-fun dynLambda!14685 (Int Int) Int)

(declare-fun dynLambda!14686 (Int Int) Int)

(assert (=> b!3221812 (< (dynLambda!14685 order!18593 (toValue!7336 (transformation!5240 (h!41668 rules!2135)))) (dynLambda!14686 order!18595 lambda!117815))))

(declare-fun order!18597 () Int)

(declare-fun dynLambda!14687 (Int Int) Int)

(assert (=> b!3221812 (< (dynLambda!14687 order!18597 (toChars!7195 (transformation!5240 (h!41668 rules!2135)))) (dynLambda!14686 order!18595 lambda!117815))))

(assert (=> b!3221768 true))

(declare-fun b!3221758 () Bool)

(declare-datatypes ((Unit!50816 0))(
  ( (Unit!50817) )
))
(declare-fun e!2008961 () Unit!50816)

(declare-fun Unit!50818 () Unit!50816)

(assert (=> b!3221758 (= e!2008961 Unit!50818)))

(declare-datatypes ((Token!9846 0))(
  ( (Token!9847 (value!169800 TokenValue!5470) (rule!7698 Rule!10280) (size!27331 Int) (originalCharacters!5954 List!36371)) )
))
(declare-datatypes ((List!36373 0))(
  ( (Nil!36249) (Cons!36249 (h!41669 Token!9846) (t!240546 List!36373)) )
))
(declare-fun tokens!494 () List!36373)

(declare-fun tp!1014964 () Bool)

(declare-fun e!2008959 () Bool)

(declare-fun b!3221759 () Bool)

(declare-fun e!2008930 () Bool)

(declare-fun inv!49120 (Token!9846) Bool)

(assert (=> b!3221759 (= e!2008930 (and (inv!49120 (h!41669 tokens!494)) e!2008959 tp!1014964))))

(declare-fun b!3221760 () Bool)

(declare-fun res!1311779 () Bool)

(declare-fun e!2008936 () Bool)

(assert (=> b!3221760 (=> (not res!1311779) (not e!2008936))))

(declare-fun isEmpty!20347 (List!36372) Bool)

(assert (=> b!3221760 (= res!1311779 (not (isEmpty!20347 rules!2135)))))

(declare-fun b!3221761 () Bool)

(declare-fun e!2008957 () Bool)

(declare-fun e!2008947 () Bool)

(assert (=> b!3221761 (= e!2008957 e!2008947)))

(declare-fun res!1311802 () Bool)

(assert (=> b!3221761 (=> (not res!1311802) (not e!2008947))))

(declare-fun lt!1091796 () Rule!10280)

(declare-fun lt!1091804 () List!36371)

(declare-fun matchR!4633 (Regex!9999 List!36371) Bool)

(assert (=> b!3221761 (= res!1311802 (matchR!4633 (regex!5240 lt!1091796) lt!1091804))))

(declare-datatypes ((Option!7185 0))(
  ( (None!7184) (Some!7184 (v!35764 Rule!10280)) )
))
(declare-fun lt!1091815 () Option!7185)

(declare-fun get!11551 (Option!7185) Rule!10280)

(assert (=> b!3221761 (= lt!1091796 (get!11551 lt!1091815))))

(declare-fun b!3221762 () Bool)

(declare-fun e!2008945 () Bool)

(assert (=> b!3221762 (= e!2008945 false)))

(declare-fun b!3221764 () Bool)

(declare-fun e!2008951 () Bool)

(declare-fun e!2008955 () Bool)

(assert (=> b!3221764 (= e!2008951 e!2008955)))

(declare-fun res!1311780 () Bool)

(assert (=> b!3221764 (=> (not res!1311780) (not e!2008955))))

(declare-fun lt!1091819 () Rule!10280)

(declare-fun lt!1091788 () List!36371)

(assert (=> b!3221764 (= res!1311780 (matchR!4633 (regex!5240 lt!1091819) lt!1091788))))

(declare-fun lt!1091786 () Option!7185)

(assert (=> b!3221764 (= lt!1091819 (get!11551 lt!1091786))))

(declare-fun e!2008943 () Bool)

(assert (=> b!3221765 (= e!2008943 (and tp!1014963 tp!1014966))))

(declare-fun b!3221766 () Bool)

(declare-fun res!1311801 () Bool)

(declare-fun e!2008932 () Bool)

(assert (=> b!3221766 (=> res!1311801 e!2008932)))

(declare-datatypes ((LexerInterface!4829 0))(
  ( (LexerInterfaceExt!4826 (__x!23158 Int)) (Lexer!4827) )
))
(declare-fun thiss!18206 () LexerInterface!4829)

(declare-fun rulesProduceIndividualToken!2321 (LexerInterface!4829 List!36372 Token!9846) Bool)

(assert (=> b!3221766 (= res!1311801 (not (rulesProduceIndividualToken!2321 thiss!18206 rules!2135 (h!41669 tokens!494))))))

(declare-fun b!3221767 () Bool)

(declare-fun e!2008926 () Bool)

(declare-datatypes ((IArray!21717 0))(
  ( (IArray!21718 (innerList!10916 List!36373)) )
))
(declare-datatypes ((Conc!10856 0))(
  ( (Node!10856 (left!28206 Conc!10856) (right!28536 Conc!10856) (csize!21942 Int) (cheight!11067 Int)) (Leaf!17087 (xs!13974 IArray!21717) (csize!21943 Int)) (Empty!10856) )
))
(declare-datatypes ((BalanceConc!21326 0))(
  ( (BalanceConc!21327 (c!541714 Conc!10856)) )
))
(declare-datatypes ((tuple2!35674 0))(
  ( (tuple2!35675 (_1!20971 BalanceConc!21326) (_2!20971 BalanceConc!21324)) )
))
(declare-fun lt!1091825 () tuple2!35674)

(declare-fun isEmpty!20348 (BalanceConc!21324) Bool)

(assert (=> b!3221767 (= e!2008926 (not (isEmpty!20348 (_2!20971 lt!1091825))))))

(declare-fun e!2008942 () Bool)

(declare-fun e!2008952 () Bool)

(assert (=> b!3221768 (= e!2008942 e!2008952)))

(declare-fun res!1311776 () Bool)

(assert (=> b!3221768 (=> res!1311776 e!2008952)))

(declare-fun rulesProduceEachTokenIndividually!1280 (LexerInterface!4829 List!36372 BalanceConc!21326) Bool)

(declare-fun seqFromList!3551 (List!36373) BalanceConc!21326)

(assert (=> b!3221768 (= res!1311776 (not (rulesProduceEachTokenIndividually!1280 thiss!18206 rules!2135 (seqFromList!3551 (t!240546 tokens!494)))))))

(declare-fun lt!1091791 () List!36371)

(declare-fun separatorToken!241 () Token!9846)

(declare-fun lt!1091789 () List!36371)

(declare-datatypes ((tuple2!35676 0))(
  ( (tuple2!35677 (_1!20972 Token!9846) (_2!20972 List!36371)) )
))
(declare-datatypes ((Option!7186 0))(
  ( (None!7185) (Some!7185 (v!35765 tuple2!35676)) )
))
(declare-fun maxPrefix!2471 (LexerInterface!4829 List!36372 List!36371) Option!7186)

(assert (=> b!3221768 (= (maxPrefix!2471 thiss!18206 rules!2135 lt!1091791) (Some!7185 (tuple2!35677 separatorToken!241 lt!1091789)))))

(declare-fun lt!1091792 () Unit!50816)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!164 (LexerInterface!4829 List!36372 Token!9846 Rule!10280 List!36371 Rule!10280) Unit!50816)

(assert (=> b!3221768 (= lt!1091792 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!164 thiss!18206 rules!2135 separatorToken!241 (rule!7698 separatorToken!241) lt!1091789 (rule!7698 (h!41669 (t!240546 tokens!494)))))))

(declare-fun lt!1091787 () List!36371)

(declare-fun lt!1091822 () C!20184)

(declare-fun contains!6499 (List!36371 C!20184) Bool)

(assert (=> b!3221768 (not (contains!6499 lt!1091787 lt!1091822))))

(declare-fun lt!1091818 () Unit!50816)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!148 (LexerInterface!4829 List!36372 List!36372 Rule!10280 Rule!10280 C!20184) Unit!50816)

(assert (=> b!3221768 (= lt!1091818 (lemmaSepRuleNotContainsCharContainedInANonSepRule!148 thiss!18206 rules!2135 rules!2135 (rule!7698 (h!41669 (t!240546 tokens!494))) (rule!7698 separatorToken!241) lt!1091822))))

(declare-fun lt!1091808 () Unit!50816)

(declare-fun e!2008937 () Unit!50816)

(assert (=> b!3221768 (= lt!1091808 e!2008937)))

(declare-fun c!541710 () Bool)

(declare-fun usedCharacters!556 (Regex!9999) List!36371)

(assert (=> b!3221768 (= c!541710 (not (contains!6499 (usedCharacters!556 (regex!5240 (rule!7698 (h!41669 (t!240546 tokens!494))))) lt!1091822)))))

(declare-fun lt!1091799 () List!36371)

(declare-fun head!7065 (List!36371) C!20184)

(assert (=> b!3221768 (= lt!1091822 (head!7065 lt!1091799))))

(declare-fun maxPrefixOneRule!1608 (LexerInterface!4829 Rule!10280 List!36371) Option!7186)

(declare-fun apply!8247 (TokenValueInjection!10368 BalanceConc!21324) TokenValue!5470)

(declare-fun seqFromList!3552 (List!36371) BalanceConc!21324)

(declare-fun size!27332 (List!36371) Int)

(assert (=> b!3221768 (= (maxPrefixOneRule!1608 thiss!18206 (rule!7698 (h!41669 (t!240546 tokens!494))) lt!1091799) (Some!7185 (tuple2!35677 (Token!9847 (apply!8247 (transformation!5240 (rule!7698 (h!41669 (t!240546 tokens!494)))) (seqFromList!3552 lt!1091799)) (rule!7698 (h!41669 (t!240546 tokens!494))) (size!27332 lt!1091799) lt!1091799) Nil!36247)))))

(declare-fun lt!1091811 () Unit!50816)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!721 (LexerInterface!4829 List!36372 List!36371 List!36371 List!36371 Rule!10280) Unit!50816)

(assert (=> b!3221768 (= lt!1091811 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!721 thiss!18206 rules!2135 lt!1091799 lt!1091799 Nil!36247 (rule!7698 (h!41669 (t!240546 tokens!494)))))))

(declare-fun e!2008933 () Bool)

(assert (=> b!3221768 e!2008933))

(declare-fun res!1311777 () Bool)

(assert (=> b!3221768 (=> (not res!1311777) (not e!2008933))))

(declare-fun lt!1091797 () Option!7185)

(declare-fun isDefined!5578 (Option!7185) Bool)

(assert (=> b!3221768 (= res!1311777 (isDefined!5578 lt!1091797))))

(declare-fun getRuleFromTag!945 (LexerInterface!4829 List!36372 String!40684) Option!7185)

(assert (=> b!3221768 (= lt!1091797 (getRuleFromTag!945 thiss!18206 rules!2135 (tag!5772 (rule!7698 (h!41669 (t!240546 tokens!494))))))))

(declare-fun lt!1091778 () Unit!50816)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!945 (LexerInterface!4829 List!36372 List!36371 Token!9846) Unit!50816)

(assert (=> b!3221768 (= lt!1091778 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!945 thiss!18206 rules!2135 lt!1091799 (h!41669 (t!240546 tokens!494))))))

(declare-fun lt!1091826 () Bool)

(assert (=> b!3221768 lt!1091826))

(declare-fun lt!1091783 () Unit!50816)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!868 (LexerInterface!4829 List!36372 List!36373 Token!9846) Unit!50816)

(assert (=> b!3221768 (= lt!1091783 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!868 thiss!18206 rules!2135 tokens!494 (h!41669 (t!240546 tokens!494))))))

(declare-fun lt!1091806 () List!36371)

(assert (=> b!3221768 (= (maxPrefix!2471 thiss!18206 rules!2135 lt!1091806) (Some!7185 (tuple2!35677 (h!41669 tokens!494) lt!1091791)))))

(declare-fun lt!1091795 () Unit!50816)

(assert (=> b!3221768 (= lt!1091795 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!164 thiss!18206 rules!2135 (h!41669 tokens!494) (rule!7698 (h!41669 tokens!494)) lt!1091791 (rule!7698 separatorToken!241)))))

(declare-fun lt!1091790 () C!20184)

(assert (=> b!3221768 (not (contains!6499 (usedCharacters!556 (regex!5240 (rule!7698 (h!41669 tokens!494)))) lt!1091790))))

(declare-fun lt!1091793 () Unit!50816)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!164 (LexerInterface!4829 List!36372 List!36372 Rule!10280 Rule!10280 C!20184) Unit!50816)

(assert (=> b!3221768 (= lt!1091793 (lemmaNonSepRuleNotContainsCharContainedInASepRule!164 thiss!18206 rules!2135 rules!2135 (rule!7698 (h!41669 tokens!494)) (rule!7698 separatorToken!241) lt!1091790))))

(declare-fun lt!1091805 () Unit!50816)

(declare-fun forallContained!1211 (List!36373 Int Token!9846) Unit!50816)

(assert (=> b!3221768 (= lt!1091805 (forallContained!1211 tokens!494 lambda!117815 (h!41669 (t!240546 tokens!494))))))

(declare-fun lt!1091820 () Bool)

(assert (=> b!3221768 (= lt!1091826 (not lt!1091820))))

(assert (=> b!3221768 (= lt!1091826 (rulesProduceIndividualToken!2321 thiss!18206 rules!2135 (h!41669 (t!240546 tokens!494))))))

(assert (=> b!3221768 (= lt!1091820 e!2008926)))

(declare-fun res!1311797 () Bool)

(assert (=> b!3221768 (=> res!1311797 e!2008926)))

(declare-fun size!27333 (BalanceConc!21326) Int)

(assert (=> b!3221768 (= res!1311797 (not (= (size!27333 (_1!20971 lt!1091825)) 1)))))

(declare-fun lt!1091801 () BalanceConc!21324)

(declare-fun lex!2159 (LexerInterface!4829 List!36372 BalanceConc!21324) tuple2!35674)

(assert (=> b!3221768 (= lt!1091825 (lex!2159 thiss!18206 rules!2135 lt!1091801))))

(declare-fun lt!1091814 () BalanceConc!21326)

(declare-fun printTailRec!1326 (LexerInterface!4829 BalanceConc!21326 Int BalanceConc!21324) BalanceConc!21324)

(assert (=> b!3221768 (= lt!1091801 (printTailRec!1326 thiss!18206 lt!1091814 0 (BalanceConc!21325 Empty!10855)))))

(declare-fun print!1894 (LexerInterface!4829 BalanceConc!21326) BalanceConc!21324)

(assert (=> b!3221768 (= lt!1091801 (print!1894 thiss!18206 lt!1091814))))

(declare-fun singletonSeq!2336 (Token!9846) BalanceConc!21326)

(assert (=> b!3221768 (= lt!1091814 (singletonSeq!2336 (h!41669 (t!240546 tokens!494))))))

(declare-fun e!2008958 () Bool)

(assert (=> b!3221768 e!2008958))

(declare-fun res!1311803 () Bool)

(assert (=> b!3221768 (=> (not res!1311803) (not e!2008958))))

(declare-fun lt!1091800 () tuple2!35674)

(assert (=> b!3221768 (= res!1311803 (= (size!27333 (_1!20971 lt!1091800)) 1))))

(declare-fun lt!1091780 () BalanceConc!21324)

(assert (=> b!3221768 (= lt!1091800 (lex!2159 thiss!18206 rules!2135 lt!1091780))))

(declare-fun lt!1091810 () BalanceConc!21326)

(assert (=> b!3221768 (= lt!1091780 (printTailRec!1326 thiss!18206 lt!1091810 0 (BalanceConc!21325 Empty!10855)))))

(assert (=> b!3221768 (= lt!1091780 (print!1894 thiss!18206 lt!1091810))))

(assert (=> b!3221768 (= lt!1091810 (singletonSeq!2336 separatorToken!241))))

(declare-fun lt!1091824 () Unit!50816)

(assert (=> b!3221768 (= lt!1091824 e!2008961)))

(declare-fun c!541711 () Bool)

(assert (=> b!3221768 (= c!541711 (not (contains!6499 lt!1091787 lt!1091790)))))

(assert (=> b!3221768 (= lt!1091790 (head!7065 lt!1091788))))

(assert (=> b!3221768 (= lt!1091787 (usedCharacters!556 (regex!5240 (rule!7698 separatorToken!241))))))

(assert (=> b!3221768 e!2008951))

(declare-fun res!1311800 () Bool)

(assert (=> b!3221768 (=> (not res!1311800) (not e!2008951))))

(assert (=> b!3221768 (= res!1311800 (isDefined!5578 lt!1091786))))

(assert (=> b!3221768 (= lt!1091786 (getRuleFromTag!945 thiss!18206 rules!2135 (tag!5772 (rule!7698 separatorToken!241))))))

(declare-fun lt!1091782 () Unit!50816)

(assert (=> b!3221768 (= lt!1091782 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!945 thiss!18206 rules!2135 lt!1091788 separatorToken!241))))

(declare-fun lt!1091821 () BalanceConc!21324)

(assert (=> b!3221768 (= (maxPrefixOneRule!1608 thiss!18206 (rule!7698 (h!41669 tokens!494)) lt!1091804) (Some!7185 (tuple2!35677 (Token!9847 (apply!8247 (transformation!5240 (rule!7698 (h!41669 tokens!494))) lt!1091821) (rule!7698 (h!41669 tokens!494)) (size!27332 lt!1091804) lt!1091804) Nil!36247)))))

(declare-fun lt!1091803 () Unit!50816)

(assert (=> b!3221768 (= lt!1091803 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!721 thiss!18206 rules!2135 lt!1091804 lt!1091804 Nil!36247 (rule!7698 (h!41669 tokens!494))))))

(assert (=> b!3221768 e!2008957))

(declare-fun res!1311795 () Bool)

(assert (=> b!3221768 (=> (not res!1311795) (not e!2008957))))

(assert (=> b!3221768 (= res!1311795 (isDefined!5578 lt!1091815))))

(assert (=> b!3221768 (= lt!1091815 (getRuleFromTag!945 thiss!18206 rules!2135 (tag!5772 (rule!7698 (h!41669 tokens!494)))))))

(declare-fun lt!1091813 () Unit!50816)

(assert (=> b!3221768 (= lt!1091813 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!945 thiss!18206 rules!2135 lt!1091804 (h!41669 tokens!494)))))

(declare-fun lt!1091816 () Unit!50816)

(assert (=> b!3221768 (= lt!1091816 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!868 thiss!18206 rules!2135 tokens!494 (h!41669 tokens!494)))))

(declare-fun tp!1014970 () Bool)

(declare-fun b!3221769 () Bool)

(declare-fun e!2008956 () Bool)

(declare-fun e!2008949 () Bool)

(declare-fun inv!49117 (String!40684) Bool)

(declare-fun inv!49121 (TokenValueInjection!10368) Bool)

(assert (=> b!3221769 (= e!2008949 (and tp!1014970 (inv!49117 (tag!5772 (rule!7698 (h!41669 tokens!494)))) (inv!49121 (transformation!5240 (rule!7698 (h!41669 tokens!494)))) e!2008956))))

(declare-fun b!3221770 () Bool)

(assert (=> b!3221770 (= e!2008955 (= (rule!7698 separatorToken!241) lt!1091819))))

(declare-fun b!3221771 () Bool)

(declare-fun e!2008931 () Bool)

(assert (=> b!3221771 (= e!2008931 false)))

(declare-fun b!3221772 () Bool)

(declare-fun res!1311787 () Bool)

(assert (=> b!3221772 (=> (not res!1311787) (not e!2008936))))

(declare-fun rulesInvariant!4226 (LexerInterface!4829 List!36372) Bool)

(assert (=> b!3221772 (= res!1311787 (rulesInvariant!4226 thiss!18206 rules!2135))))

(declare-fun tp!1014972 () Bool)

(declare-fun b!3221773 () Bool)

(declare-fun inv!21 (TokenValue!5470) Bool)

(assert (=> b!3221773 (= e!2008959 (and (inv!21 (value!169800 (h!41669 tokens!494))) e!2008949 tp!1014972))))

(declare-fun res!1311798 () Bool)

(assert (=> b!3221774 (=> (not res!1311798) (not e!2008936))))

(declare-fun forall!7422 (List!36373 Int) Bool)

(assert (=> b!3221774 (= res!1311798 (forall!7422 tokens!494 lambda!117814))))

(declare-fun b!3221775 () Bool)

(declare-fun e!2008960 () Bool)

(declare-fun lt!1091798 () Rule!10280)

(assert (=> b!3221775 (= e!2008960 (= (rule!7698 (h!41669 (t!240546 tokens!494))) lt!1091798))))

(declare-fun b!3221776 () Bool)

(declare-fun res!1311785 () Bool)

(assert (=> b!3221776 (=> (not res!1311785) (not e!2008936))))

(assert (=> b!3221776 (= res!1311785 (and (not ((_ is Nil!36249) tokens!494)) (not ((_ is Nil!36249) (t!240546 tokens!494)))))))

(declare-fun b!3221777 () Bool)

(assert (=> b!3221777 (= e!2008958 (isEmpty!20348 (_2!20971 lt!1091800)))))

(declare-fun b!3221778 () Bool)

(declare-fun e!2008934 () Bool)

(declare-fun e!2008927 () Bool)

(assert (=> b!3221778 (= e!2008934 e!2008927)))

(declare-fun res!1311804 () Bool)

(assert (=> b!3221778 (=> res!1311804 e!2008927)))

(assert (=> b!3221778 (= res!1311804 (or (isSeparator!5240 (rule!7698 (h!41669 tokens!494))) (isSeparator!5240 (rule!7698 (h!41669 (t!240546 tokens!494))))))))

(declare-fun lt!1091807 () Unit!50816)

(assert (=> b!3221778 (= lt!1091807 (forallContained!1211 tokens!494 lambda!117814 (h!41669 (t!240546 tokens!494))))))

(declare-fun lt!1091784 () Unit!50816)

(assert (=> b!3221778 (= lt!1091784 (forallContained!1211 tokens!494 lambda!117814 (h!41669 tokens!494)))))

(declare-fun b!3221779 () Bool)

(declare-fun e!2008948 () Bool)

(assert (=> b!3221779 (= e!2008936 (not e!2008948))))

(declare-fun res!1311788 () Bool)

(assert (=> b!3221779 (=> res!1311788 e!2008948)))

(declare-fun lt!1091802 () List!36371)

(declare-fun lt!1091812 () List!36371)

(assert (=> b!3221779 (= res!1311788 (not (= lt!1091802 lt!1091812)))))

(declare-fun printList!1379 (LexerInterface!4829 List!36373) List!36371)

(assert (=> b!3221779 (= lt!1091812 (printList!1379 thiss!18206 (Cons!36249 (h!41669 tokens!494) Nil!36249)))))

(declare-fun lt!1091817 () BalanceConc!21324)

(declare-fun list!12905 (BalanceConc!21324) List!36371)

(assert (=> b!3221779 (= lt!1091802 (list!12905 lt!1091817))))

(declare-fun lt!1091809 () BalanceConc!21326)

(assert (=> b!3221779 (= lt!1091817 (printTailRec!1326 thiss!18206 lt!1091809 0 (BalanceConc!21325 Empty!10855)))))

(assert (=> b!3221779 (= lt!1091817 (print!1894 thiss!18206 lt!1091809))))

(assert (=> b!3221779 (= lt!1091809 (singletonSeq!2336 (h!41669 tokens!494)))))

(declare-fun b!3221780 () Bool)

(assert (=> b!3221780 (= e!2008948 e!2008932)))

(declare-fun res!1311786 () Bool)

(assert (=> b!3221780 (=> res!1311786 e!2008932)))

(assert (=> b!3221780 (= res!1311786 (or (not (= lt!1091812 lt!1091804)) (not (= lt!1091802 lt!1091804))))))

(declare-fun charsOf!3256 (Token!9846) BalanceConc!21324)

(assert (=> b!3221780 (= lt!1091804 (list!12905 (charsOf!3256 (h!41669 tokens!494))))))

(declare-fun b!3221781 () Bool)

(declare-fun res!1311796 () Bool)

(assert (=> b!3221781 (=> (not res!1311796) (not e!2008936))))

(assert (=> b!3221781 (= res!1311796 (isSeparator!5240 (rule!7698 separatorToken!241)))))

(declare-fun b!3221782 () Bool)

(assert (=> b!3221782 (= e!2008947 (= (rule!7698 (h!41669 tokens!494)) lt!1091796))))

(assert (=> b!3221783 (= e!2008956 (and tp!1014974 tp!1014971))))

(declare-fun b!3221784 () Bool)

(declare-fun e!2008944 () Bool)

(declare-fun e!2008940 () Bool)

(assert (=> b!3221784 (= e!2008944 e!2008940)))

(declare-fun res!1311791 () Bool)

(assert (=> b!3221784 (=> res!1311791 e!2008940)))

(declare-fun lt!1091785 () List!36371)

(declare-fun lt!1091781 () List!36371)

(assert (=> b!3221784 (= res!1311791 (not (= lt!1091785 lt!1091781)))))

(declare-fun ++!8714 (List!36371 List!36371) List!36371)

(assert (=> b!3221784 (= lt!1091781 (++!8714 (++!8714 lt!1091804 lt!1091788) lt!1091789))))

(declare-fun b!3221785 () Bool)

(assert (=> b!3221785 (= e!2008940 e!2008942)))

(declare-fun res!1311781 () Bool)

(assert (=> b!3221785 (=> res!1311781 e!2008942)))

(assert (=> b!3221785 (= res!1311781 (not (= lt!1091785 lt!1091806)))))

(assert (=> b!3221785 (= lt!1091781 lt!1091806)))

(assert (=> b!3221785 (= lt!1091806 (++!8714 lt!1091804 lt!1091791))))

(declare-fun lt!1091779 () Unit!50816)

(declare-fun lemmaConcatAssociativity!1768 (List!36371 List!36371 List!36371) Unit!50816)

(assert (=> b!3221785 (= lt!1091779 (lemmaConcatAssociativity!1768 lt!1091804 lt!1091788 lt!1091789))))

(declare-fun b!3221786 () Bool)

(assert (=> b!3221786 (= e!2008933 e!2008960)))

(declare-fun res!1311789 () Bool)

(assert (=> b!3221786 (=> (not res!1311789) (not e!2008960))))

(assert (=> b!3221786 (= res!1311789 (matchR!4633 (regex!5240 lt!1091798) lt!1091799))))

(assert (=> b!3221786 (= lt!1091798 (get!11551 lt!1091797))))

(declare-fun b!3221787 () Bool)

(assert (=> b!3221787 (= e!2008927 e!2008944)))

(declare-fun res!1311799 () Bool)

(assert (=> b!3221787 (=> res!1311799 e!2008944)))

(declare-fun printWithSeparatorTokenList!174 (LexerInterface!4829 List!36373 Token!9846) List!36371)

(assert (=> b!3221787 (= res!1311799 (not (= lt!1091789 (++!8714 (++!8714 lt!1091799 lt!1091788) (printWithSeparatorTokenList!174 thiss!18206 (t!240546 (t!240546 tokens!494)) separatorToken!241)))))))

(assert (=> b!3221787 (= lt!1091799 (list!12905 (charsOf!3256 (h!41669 (t!240546 tokens!494)))))))

(assert (=> b!3221787 (= lt!1091791 (++!8714 lt!1091788 lt!1091789))))

(assert (=> b!3221787 (= lt!1091788 (list!12905 (charsOf!3256 separatorToken!241)))))

(assert (=> b!3221787 (= lt!1091789 (printWithSeparatorTokenList!174 thiss!18206 (t!240546 tokens!494) separatorToken!241))))

(assert (=> b!3221787 (= lt!1091785 (printWithSeparatorTokenList!174 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3221788 () Bool)

(declare-fun e!2008946 () Bool)

(declare-fun e!2008928 () Bool)

(declare-fun tp!1014962 () Bool)

(assert (=> b!3221788 (= e!2008946 (and e!2008928 tp!1014962))))

(declare-fun b!3221789 () Bool)

(declare-fun res!1311794 () Bool)

(assert (=> b!3221789 (=> (not res!1311794) (not e!2008936))))

(assert (=> b!3221789 (= res!1311794 (rulesProduceIndividualToken!2321 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3221790 () Bool)

(declare-fun res!1311792 () Bool)

(assert (=> b!3221790 (=> (not res!1311792) (not e!2008936))))

(assert (=> b!3221790 (= res!1311792 (rulesProduceEachTokenIndividually!1280 thiss!18206 rules!2135 (seqFromList!3551 tokens!494)))))

(declare-fun b!3221791 () Bool)

(assert (=> b!3221791 (= e!2008952 true)))

(declare-fun b!3221792 () Bool)

(declare-fun res!1311775 () Bool)

(assert (=> b!3221792 (=> res!1311775 e!2008926)))

(declare-fun apply!8248 (BalanceConc!21326 Int) Token!9846)

(assert (=> b!3221792 (= res!1311775 (not (= (apply!8248 (_1!20971 lt!1091825) 0) (h!41669 (t!240546 tokens!494)))))))

(declare-fun e!2008935 () Bool)

(assert (=> b!3221793 (= e!2008935 (and tp!1014968 tp!1014965))))

(declare-fun res!1311782 () Bool)

(assert (=> start!302626 (=> (not res!1311782) (not e!2008936))))

(assert (=> start!302626 (= res!1311782 ((_ is Lexer!4827) thiss!18206))))

(assert (=> start!302626 e!2008936))

(assert (=> start!302626 true))

(assert (=> start!302626 e!2008946))

(assert (=> start!302626 e!2008930))

(declare-fun e!2008950 () Bool)

(assert (=> start!302626 (and (inv!49120 separatorToken!241) e!2008950)))

(declare-fun b!3221763 () Bool)

(declare-fun Unit!50819 () Unit!50816)

(assert (=> b!3221763 (= e!2008937 Unit!50819)))

(declare-fun e!2008939 () Bool)

(declare-fun tp!1014969 () Bool)

(declare-fun b!3221794 () Bool)

(assert (=> b!3221794 (= e!2008950 (and (inv!21 (value!169800 separatorToken!241)) e!2008939 tp!1014969))))

(declare-fun b!3221795 () Bool)

(declare-fun tp!1014967 () Bool)

(assert (=> b!3221795 (= e!2008939 (and tp!1014967 (inv!49117 (tag!5772 (rule!7698 separatorToken!241))) (inv!49121 (transformation!5240 (rule!7698 separatorToken!241))) e!2008943))))

(declare-fun b!3221796 () Bool)

(declare-fun Unit!50820 () Unit!50816)

(assert (=> b!3221796 (= e!2008937 Unit!50820)))

(declare-fun lt!1091794 () Unit!50816)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!404 (Regex!9999 List!36371 C!20184) Unit!50816)

(assert (=> b!3221796 (= lt!1091794 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!404 (regex!5240 (rule!7698 (h!41669 (t!240546 tokens!494)))) lt!1091799 lt!1091822))))

(declare-fun res!1311783 () Bool)

(assert (=> b!3221796 (= res!1311783 (not (matchR!4633 (regex!5240 (rule!7698 (h!41669 (t!240546 tokens!494)))) lt!1091799)))))

(assert (=> b!3221796 (=> (not res!1311783) (not e!2008931))))

(assert (=> b!3221796 e!2008931))

(declare-fun b!3221797 () Bool)

(assert (=> b!3221797 (= e!2008932 e!2008934)))

(declare-fun res!1311778 () Bool)

(assert (=> b!3221797 (=> res!1311778 e!2008934)))

(declare-fun isEmpty!20349 (BalanceConc!21326) Bool)

(assert (=> b!3221797 (= res!1311778 (isEmpty!20349 (_1!20971 (lex!2159 thiss!18206 rules!2135 lt!1091821))))))

(assert (=> b!3221797 (= lt!1091821 (seqFromList!3552 lt!1091804))))

(declare-fun tp!1014973 () Bool)

(declare-fun b!3221798 () Bool)

(assert (=> b!3221798 (= e!2008928 (and tp!1014973 (inv!49117 (tag!5772 (h!41668 rules!2135))) (inv!49121 (transformation!5240 (h!41668 rules!2135))) e!2008935))))

(declare-fun b!3221799 () Bool)

(declare-fun Unit!50821 () Unit!50816)

(assert (=> b!3221799 (= e!2008961 Unit!50821)))

(declare-fun lt!1091823 () Unit!50816)

(assert (=> b!3221799 (= lt!1091823 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!404 (regex!5240 (rule!7698 separatorToken!241)) lt!1091788 lt!1091790))))

(declare-fun res!1311793 () Bool)

(assert (=> b!3221799 (= res!1311793 (not (matchR!4633 (regex!5240 (rule!7698 separatorToken!241)) lt!1091788)))))

(assert (=> b!3221799 (=> (not res!1311793) (not e!2008945))))

(assert (=> b!3221799 e!2008945))

(declare-fun b!3221800 () Bool)

(declare-fun res!1311784 () Bool)

(assert (=> b!3221800 (=> (not res!1311784) (not e!2008958))))

(assert (=> b!3221800 (= res!1311784 (= (apply!8248 (_1!20971 lt!1091800) 0) separatorToken!241))))

(declare-fun b!3221801 () Bool)

(declare-fun res!1311790 () Bool)

(assert (=> b!3221801 (=> (not res!1311790) (not e!2008936))))

(declare-fun sepAndNonSepRulesDisjointChars!1434 (List!36372 List!36372) Bool)

(assert (=> b!3221801 (= res!1311790 (sepAndNonSepRulesDisjointChars!1434 rules!2135 rules!2135))))

(assert (= (and start!302626 res!1311782) b!3221760))

(assert (= (and b!3221760 res!1311779) b!3221772))

(assert (= (and b!3221772 res!1311787) b!3221790))

(assert (= (and b!3221790 res!1311792) b!3221789))

(assert (= (and b!3221789 res!1311794) b!3221781))

(assert (= (and b!3221781 res!1311796) b!3221774))

(assert (= (and b!3221774 res!1311798) b!3221801))

(assert (= (and b!3221801 res!1311790) b!3221776))

(assert (= (and b!3221776 res!1311785) b!3221779))

(assert (= (and b!3221779 (not res!1311788)) b!3221780))

(assert (= (and b!3221780 (not res!1311786)) b!3221766))

(assert (= (and b!3221766 (not res!1311801)) b!3221797))

(assert (= (and b!3221797 (not res!1311778)) b!3221778))

(assert (= (and b!3221778 (not res!1311804)) b!3221787))

(assert (= (and b!3221787 (not res!1311799)) b!3221784))

(assert (= (and b!3221784 (not res!1311791)) b!3221785))

(assert (= (and b!3221785 (not res!1311781)) b!3221768))

(assert (= (and b!3221768 res!1311795) b!3221761))

(assert (= (and b!3221761 res!1311802) b!3221782))

(assert (= (and b!3221768 res!1311800) b!3221764))

(assert (= (and b!3221764 res!1311780) b!3221770))

(assert (= (and b!3221768 c!541711) b!3221799))

(assert (= (and b!3221768 (not c!541711)) b!3221758))

(assert (= (and b!3221799 res!1311793) b!3221762))

(assert (= (and b!3221768 res!1311803) b!3221800))

(assert (= (and b!3221800 res!1311784) b!3221777))

(assert (= (and b!3221768 (not res!1311797)) b!3221792))

(assert (= (and b!3221792 (not res!1311775)) b!3221767))

(assert (= (and b!3221768 res!1311777) b!3221786))

(assert (= (and b!3221786 res!1311789) b!3221775))

(assert (= (and b!3221768 c!541710) b!3221796))

(assert (= (and b!3221768 (not c!541710)) b!3221763))

(assert (= (and b!3221796 res!1311783) b!3221771))

(assert (= (and b!3221768 (not res!1311776)) b!3221791))

(assert (= b!3221798 b!3221793))

(assert (= b!3221788 b!3221798))

(assert (= (and start!302626 ((_ is Cons!36248) rules!2135)) b!3221788))

(assert (= b!3221769 b!3221783))

(assert (= b!3221773 b!3221769))

(assert (= b!3221759 b!3221773))

(assert (= (and start!302626 ((_ is Cons!36249) tokens!494)) b!3221759))

(assert (= b!3221795 b!3221765))

(assert (= b!3221794 b!3221795))

(assert (= start!302626 b!3221794))

(declare-fun m!3498765 () Bool)

(assert (=> b!3221772 m!3498765))

(declare-fun m!3498767 () Bool)

(assert (=> b!3221784 m!3498767))

(assert (=> b!3221784 m!3498767))

(declare-fun m!3498769 () Bool)

(assert (=> b!3221784 m!3498769))

(declare-fun m!3498771 () Bool)

(assert (=> b!3221779 m!3498771))

(declare-fun m!3498773 () Bool)

(assert (=> b!3221779 m!3498773))

(declare-fun m!3498775 () Bool)

(assert (=> b!3221779 m!3498775))

(declare-fun m!3498777 () Bool)

(assert (=> b!3221779 m!3498777))

(declare-fun m!3498779 () Bool)

(assert (=> b!3221779 m!3498779))

(declare-fun m!3498781 () Bool)

(assert (=> b!3221786 m!3498781))

(declare-fun m!3498783 () Bool)

(assert (=> b!3221786 m!3498783))

(declare-fun m!3498785 () Bool)

(assert (=> b!3221795 m!3498785))

(declare-fun m!3498787 () Bool)

(assert (=> b!3221795 m!3498787))

(declare-fun m!3498789 () Bool)

(assert (=> b!3221800 m!3498789))

(declare-fun m!3498791 () Bool)

(assert (=> b!3221761 m!3498791))

(declare-fun m!3498793 () Bool)

(assert (=> b!3221761 m!3498793))

(declare-fun m!3498795 () Bool)

(assert (=> b!3221760 m!3498795))

(declare-fun m!3498797 () Bool)

(assert (=> b!3221759 m!3498797))

(declare-fun m!3498799 () Bool)

(assert (=> b!3221774 m!3498799))

(declare-fun m!3498801 () Bool)

(assert (=> b!3221780 m!3498801))

(assert (=> b!3221780 m!3498801))

(declare-fun m!3498803 () Bool)

(assert (=> b!3221780 m!3498803))

(declare-fun m!3498805 () Bool)

(assert (=> b!3221799 m!3498805))

(declare-fun m!3498807 () Bool)

(assert (=> b!3221799 m!3498807))

(declare-fun m!3498809 () Bool)

(assert (=> b!3221768 m!3498809))

(declare-fun m!3498811 () Bool)

(assert (=> b!3221768 m!3498811))

(declare-fun m!3498813 () Bool)

(assert (=> b!3221768 m!3498813))

(declare-fun m!3498815 () Bool)

(assert (=> b!3221768 m!3498815))

(declare-fun m!3498817 () Bool)

(assert (=> b!3221768 m!3498817))

(declare-fun m!3498819 () Bool)

(assert (=> b!3221768 m!3498819))

(declare-fun m!3498821 () Bool)

(assert (=> b!3221768 m!3498821))

(declare-fun m!3498823 () Bool)

(assert (=> b!3221768 m!3498823))

(declare-fun m!3498825 () Bool)

(assert (=> b!3221768 m!3498825))

(declare-fun m!3498827 () Bool)

(assert (=> b!3221768 m!3498827))

(assert (=> b!3221768 m!3498815))

(declare-fun m!3498829 () Bool)

(assert (=> b!3221768 m!3498829))

(declare-fun m!3498831 () Bool)

(assert (=> b!3221768 m!3498831))

(declare-fun m!3498833 () Bool)

(assert (=> b!3221768 m!3498833))

(declare-fun m!3498835 () Bool)

(assert (=> b!3221768 m!3498835))

(declare-fun m!3498837 () Bool)

(assert (=> b!3221768 m!3498837))

(declare-fun m!3498839 () Bool)

(assert (=> b!3221768 m!3498839))

(declare-fun m!3498841 () Bool)

(assert (=> b!3221768 m!3498841))

(declare-fun m!3498843 () Bool)

(assert (=> b!3221768 m!3498843))

(declare-fun m!3498845 () Bool)

(assert (=> b!3221768 m!3498845))

(declare-fun m!3498847 () Bool)

(assert (=> b!3221768 m!3498847))

(assert (=> b!3221768 m!3498841))

(declare-fun m!3498849 () Bool)

(assert (=> b!3221768 m!3498849))

(declare-fun m!3498851 () Bool)

(assert (=> b!3221768 m!3498851))

(declare-fun m!3498853 () Bool)

(assert (=> b!3221768 m!3498853))

(declare-fun m!3498855 () Bool)

(assert (=> b!3221768 m!3498855))

(declare-fun m!3498857 () Bool)

(assert (=> b!3221768 m!3498857))

(declare-fun m!3498859 () Bool)

(assert (=> b!3221768 m!3498859))

(declare-fun m!3498861 () Bool)

(assert (=> b!3221768 m!3498861))

(declare-fun m!3498863 () Bool)

(assert (=> b!3221768 m!3498863))

(declare-fun m!3498865 () Bool)

(assert (=> b!3221768 m!3498865))

(declare-fun m!3498867 () Bool)

(assert (=> b!3221768 m!3498867))

(declare-fun m!3498869 () Bool)

(assert (=> b!3221768 m!3498869))

(declare-fun m!3498871 () Bool)

(assert (=> b!3221768 m!3498871))

(declare-fun m!3498873 () Bool)

(assert (=> b!3221768 m!3498873))

(assert (=> b!3221768 m!3498857))

(declare-fun m!3498875 () Bool)

(assert (=> b!3221768 m!3498875))

(declare-fun m!3498877 () Bool)

(assert (=> b!3221768 m!3498877))

(declare-fun m!3498879 () Bool)

(assert (=> b!3221768 m!3498879))

(declare-fun m!3498881 () Bool)

(assert (=> b!3221768 m!3498881))

(declare-fun m!3498883 () Bool)

(assert (=> b!3221768 m!3498883))

(declare-fun m!3498885 () Bool)

(assert (=> b!3221768 m!3498885))

(declare-fun m!3498887 () Bool)

(assert (=> b!3221768 m!3498887))

(declare-fun m!3498889 () Bool)

(assert (=> b!3221768 m!3498889))

(declare-fun m!3498891 () Bool)

(assert (=> b!3221768 m!3498891))

(declare-fun m!3498893 () Bool)

(assert (=> b!3221768 m!3498893))

(declare-fun m!3498895 () Bool)

(assert (=> b!3221768 m!3498895))

(assert (=> b!3221768 m!3498837))

(declare-fun m!3498897 () Bool)

(assert (=> b!3221768 m!3498897))

(declare-fun m!3498899 () Bool)

(assert (=> b!3221768 m!3498899))

(declare-fun m!3498901 () Bool)

(assert (=> b!3221768 m!3498901))

(declare-fun m!3498903 () Bool)

(assert (=> b!3221768 m!3498903))

(declare-fun m!3498905 () Bool)

(assert (=> b!3221768 m!3498905))

(declare-fun m!3498907 () Bool)

(assert (=> b!3221785 m!3498907))

(declare-fun m!3498909 () Bool)

(assert (=> b!3221785 m!3498909))

(declare-fun m!3498911 () Bool)

(assert (=> b!3221801 m!3498911))

(declare-fun m!3498913 () Bool)

(assert (=> b!3221796 m!3498913))

(declare-fun m!3498915 () Bool)

(assert (=> b!3221796 m!3498915))

(declare-fun m!3498917 () Bool)

(assert (=> b!3221797 m!3498917))

(declare-fun m!3498919 () Bool)

(assert (=> b!3221797 m!3498919))

(declare-fun m!3498921 () Bool)

(assert (=> b!3221797 m!3498921))

(declare-fun m!3498923 () Bool)

(assert (=> b!3221787 m!3498923))

(declare-fun m!3498925 () Bool)

(assert (=> b!3221787 m!3498925))

(declare-fun m!3498927 () Bool)

(assert (=> b!3221787 m!3498927))

(declare-fun m!3498929 () Bool)

(assert (=> b!3221787 m!3498929))

(declare-fun m!3498931 () Bool)

(assert (=> b!3221787 m!3498931))

(declare-fun m!3498933 () Bool)

(assert (=> b!3221787 m!3498933))

(assert (=> b!3221787 m!3498925))

(declare-fun m!3498935 () Bool)

(assert (=> b!3221787 m!3498935))

(declare-fun m!3498937 () Bool)

(assert (=> b!3221787 m!3498937))

(assert (=> b!3221787 m!3498931))

(assert (=> b!3221787 m!3498933))

(declare-fun m!3498939 () Bool)

(assert (=> b!3221787 m!3498939))

(assert (=> b!3221787 m!3498923))

(declare-fun m!3498941 () Bool)

(assert (=> b!3221787 m!3498941))

(declare-fun m!3498943 () Bool)

(assert (=> b!3221798 m!3498943))

(declare-fun m!3498945 () Bool)

(assert (=> b!3221798 m!3498945))

(declare-fun m!3498947 () Bool)

(assert (=> b!3221778 m!3498947))

(declare-fun m!3498949 () Bool)

(assert (=> b!3221778 m!3498949))

(declare-fun m!3498951 () Bool)

(assert (=> b!3221769 m!3498951))

(declare-fun m!3498953 () Bool)

(assert (=> b!3221769 m!3498953))

(declare-fun m!3498955 () Bool)

(assert (=> b!3221789 m!3498955))

(declare-fun m!3498957 () Bool)

(assert (=> start!302626 m!3498957))

(declare-fun m!3498959 () Bool)

(assert (=> b!3221767 m!3498959))

(declare-fun m!3498961 () Bool)

(assert (=> b!3221792 m!3498961))

(declare-fun m!3498963 () Bool)

(assert (=> b!3221764 m!3498963))

(declare-fun m!3498965 () Bool)

(assert (=> b!3221764 m!3498965))

(declare-fun m!3498967 () Bool)

(assert (=> b!3221773 m!3498967))

(declare-fun m!3498969 () Bool)

(assert (=> b!3221790 m!3498969))

(assert (=> b!3221790 m!3498969))

(declare-fun m!3498971 () Bool)

(assert (=> b!3221790 m!3498971))

(declare-fun m!3498973 () Bool)

(assert (=> b!3221777 m!3498973))

(declare-fun m!3498975 () Bool)

(assert (=> b!3221794 m!3498975))

(declare-fun m!3498977 () Bool)

(assert (=> b!3221766 m!3498977))

(check-sat (not b!3221784) (not b!3221760) (not b_next!86395) (not b_next!86399) (not b!3221773) (not b_next!86397) (not b!3221797) (not b!3221778) (not b!3221767) (not b!3221789) (not b!3221787) b_and!215401 (not b!3221801) b_and!215397 (not b!3221800) (not b!3221810) (not b_next!86403) (not b!3221794) (not b_next!86393) (not b!3221759) (not b!3221779) (not b!3221768) (not b_next!86401) (not b!3221798) (not b!3221795) (not b!3221792) b_and!215395 b_and!215391 (not b!3221780) (not b!3221785) (not start!302626) (not b!3221761) (not b!3221777) b_and!215399 (not b!3221766) (not b!3221772) b_and!215393 (not b!3221799) (not b!3221774) (not b!3221769) (not b!3221764) (not b!3221790) (not b!3221796) (not b!3221786) (not b!3221788))
(check-sat (not b_next!86403) (not b_next!86393) (not b_next!86401) (not b_next!86395) (not b_next!86399) (not b_next!86397) b_and!215399 b_and!215393 b_and!215401 b_and!215397 b_and!215395 b_and!215391)

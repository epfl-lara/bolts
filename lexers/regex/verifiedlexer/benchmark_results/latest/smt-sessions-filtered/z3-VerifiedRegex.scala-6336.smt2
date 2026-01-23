; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!323522 () Bool)

(assert start!323522)

(declare-fun b!3477341 () Bool)

(declare-fun b_free!90169 () Bool)

(declare-fun b_next!90873 () Bool)

(assert (=> b!3477341 (= b_free!90169 (not b_next!90873))))

(declare-fun tp!1080676 () Bool)

(declare-fun b_and!245283 () Bool)

(assert (=> b!3477341 (= tp!1080676 b_and!245283)))

(declare-fun b_free!90171 () Bool)

(declare-fun b_next!90875 () Bool)

(assert (=> b!3477341 (= b_free!90171 (not b_next!90875))))

(declare-fun tp!1080670 () Bool)

(declare-fun b_and!245285 () Bool)

(assert (=> b!3477341 (= tp!1080670 b_and!245285)))

(declare-fun b!3477347 () Bool)

(declare-fun b_free!90173 () Bool)

(declare-fun b_next!90877 () Bool)

(assert (=> b!3477347 (= b_free!90173 (not b_next!90877))))

(declare-fun tp!1080675 () Bool)

(declare-fun b_and!245287 () Bool)

(assert (=> b!3477347 (= tp!1080675 b_and!245287)))

(declare-fun b_free!90175 () Bool)

(declare-fun b_next!90879 () Bool)

(assert (=> b!3477347 (= b_free!90175 (not b_next!90879))))

(declare-fun tp!1080677 () Bool)

(declare-fun b_and!245289 () Bool)

(assert (=> b!3477347 (= tp!1080677 b_and!245289)))

(declare-fun b!3477378 () Bool)

(declare-fun b_free!90177 () Bool)

(declare-fun b_next!90881 () Bool)

(assert (=> b!3477378 (= b_free!90177 (not b_next!90881))))

(declare-fun tp!1080681 () Bool)

(declare-fun b_and!245291 () Bool)

(assert (=> b!3477378 (= tp!1080681 b_and!245291)))

(declare-fun b_free!90179 () Bool)

(declare-fun b_next!90883 () Bool)

(assert (=> b!3477378 (= b_free!90179 (not b_next!90883))))

(declare-fun tp!1080678 () Bool)

(declare-fun b_and!245293 () Bool)

(assert (=> b!3477378 (= tp!1080678 b_and!245293)))

(declare-fun bs!561763 () Bool)

(declare-fun b!3477348 () Bool)

(declare-fun b!3477349 () Bool)

(assert (= bs!561763 (and b!3477348 b!3477349)))

(declare-fun lambda!122135 () Int)

(declare-fun lambda!122134 () Int)

(assert (=> bs!561763 (not (= lambda!122135 lambda!122134))))

(declare-fun b!3477394 () Bool)

(declare-fun e!2153948 () Bool)

(assert (=> b!3477394 (= e!2153948 true)))

(declare-fun b!3477393 () Bool)

(declare-fun e!2153947 () Bool)

(assert (=> b!3477393 (= e!2153947 e!2153948)))

(declare-fun b!3477392 () Bool)

(declare-fun e!2153946 () Bool)

(assert (=> b!3477392 (= e!2153946 e!2153947)))

(assert (=> b!3477348 e!2153946))

(assert (= b!3477393 b!3477394))

(assert (= b!3477392 b!3477393))

(declare-datatypes ((C!20608 0))(
  ( (C!20609 (val!12352 Int)) )
))
(declare-datatypes ((Regex!10211 0))(
  ( (ElementMatch!10211 (c!596342 C!20608)) (Concat!15893 (regOne!20934 Regex!10211) (regTwo!20934 Regex!10211)) (EmptyExpr!10211) (Star!10211 (reg!10540 Regex!10211)) (EmptyLang!10211) (Union!10211 (regOne!20935 Regex!10211) (regTwo!20935 Regex!10211)) )
))
(declare-datatypes ((List!37350 0))(
  ( (Nil!37226) (Cons!37226 (h!42646 (_ BitVec 16)) (t!275183 List!37350)) )
))
(declare-datatypes ((TokenValue!5682 0))(
  ( (FloatLiteralValue!11364 (text!40219 List!37350)) (TokenValueExt!5681 (__x!23581 Int)) (Broken!28410 (value!175816 List!37350)) (Object!5805) (End!5682) (Def!5682) (Underscore!5682) (Match!5682) (Else!5682) (Error!5682) (Case!5682) (If!5682) (Extends!5682) (Abstract!5682) (Class!5682) (Val!5682) (DelimiterValue!11364 (del!5742 List!37350)) (KeywordValue!5688 (value!175817 List!37350)) (CommentValue!11364 (value!175818 List!37350)) (WhitespaceValue!11364 (value!175819 List!37350)) (IndentationValue!5682 (value!175820 List!37350)) (String!41743) (Int32!5682) (Broken!28411 (value!175821 List!37350)) (Boolean!5683) (Unit!52657) (OperatorValue!5685 (op!5742 List!37350)) (IdentifierValue!11364 (value!175822 List!37350)) (IdentifierValue!11365 (value!175823 List!37350)) (WhitespaceValue!11365 (value!175824 List!37350)) (True!11364) (False!11364) (Broken!28412 (value!175825 List!37350)) (Broken!28413 (value!175826 List!37350)) (True!11365) (RightBrace!5682) (RightBracket!5682) (Colon!5682) (Null!5682) (Comma!5682) (LeftBracket!5682) (False!11365) (LeftBrace!5682) (ImaginaryLiteralValue!5682 (text!40220 List!37350)) (StringLiteralValue!17046 (value!175827 List!37350)) (EOFValue!5682 (value!175828 List!37350)) (IdentValue!5682 (value!175829 List!37350)) (DelimiterValue!11365 (value!175830 List!37350)) (DedentValue!5682 (value!175831 List!37350)) (NewLineValue!5682 (value!175832 List!37350)) (IntegerValue!17046 (value!175833 (_ BitVec 32)) (text!40221 List!37350)) (IntegerValue!17047 (value!175834 Int) (text!40222 List!37350)) (Times!5682) (Or!5682) (Equal!5682) (Minus!5682) (Broken!28414 (value!175835 List!37350)) (And!5682) (Div!5682) (LessEqual!5682) (Mod!5682) (Concat!15894) (Not!5682) (Plus!5682) (SpaceValue!5682 (value!175836 List!37350)) (IntegerValue!17048 (value!175837 Int) (text!40223 List!37350)) (StringLiteralValue!17047 (text!40224 List!37350)) (FloatLiteralValue!11365 (text!40225 List!37350)) (BytesLiteralValue!5682 (value!175838 List!37350)) (CommentValue!11365 (value!175839 List!37350)) (StringLiteralValue!17048 (value!175840 List!37350)) (ErrorTokenValue!5682 (msg!5743 List!37350)) )
))
(declare-datatypes ((List!37351 0))(
  ( (Nil!37227) (Cons!37227 (h!42647 C!20608) (t!275184 List!37351)) )
))
(declare-datatypes ((IArray!22563 0))(
  ( (IArray!22564 (innerList!11339 List!37351)) )
))
(declare-datatypes ((Conc!11279 0))(
  ( (Node!11279 (left!29059 Conc!11279) (right!29389 Conc!11279) (csize!22788 Int) (cheight!11490 Int)) (Leaf!17616 (xs!14457 IArray!22563) (csize!22789 Int)) (Empty!11279) )
))
(declare-datatypes ((BalanceConc!22172 0))(
  ( (BalanceConc!22173 (c!596343 Conc!11279)) )
))
(declare-datatypes ((String!41744 0))(
  ( (String!41745 (value!175841 String)) )
))
(declare-datatypes ((TokenValueInjection!10792 0))(
  ( (TokenValueInjection!10793 (toValue!7688 Int) (toChars!7547 Int)) )
))
(declare-datatypes ((Rule!10704 0))(
  ( (Rule!10705 (regex!5452 Regex!10211) (tag!6070 String!41744) (isSeparator!5452 Bool) (transformation!5452 TokenValueInjection!10792)) )
))
(declare-datatypes ((List!37352 0))(
  ( (Nil!37228) (Cons!37228 (h!42648 Rule!10704) (t!275185 List!37352)) )
))
(declare-fun rules!2135 () List!37352)

(get-info :version)

(assert (= (and b!3477348 ((_ is Cons!37228) rules!2135)) b!3477392))

(declare-fun order!19899 () Int)

(declare-fun order!19897 () Int)

(declare-fun dynLambda!15738 (Int Int) Int)

(declare-fun dynLambda!15739 (Int Int) Int)

(assert (=> b!3477394 (< (dynLambda!15738 order!19897 (toValue!7688 (transformation!5452 (h!42648 rules!2135)))) (dynLambda!15739 order!19899 lambda!122135))))

(declare-fun order!19901 () Int)

(declare-fun dynLambda!15740 (Int Int) Int)

(assert (=> b!3477394 (< (dynLambda!15740 order!19901 (toChars!7547 (transformation!5452 (h!42648 rules!2135)))) (dynLambda!15739 order!19899 lambda!122135))))

(assert (=> b!3477348 true))

(declare-fun b!3477338 () Bool)

(declare-fun e!2153926 () Bool)

(declare-fun e!2153938 () Bool)

(assert (=> b!3477338 (= e!2153926 e!2153938)))

(declare-fun res!1402932 () Bool)

(assert (=> b!3477338 (=> res!1402932 e!2153938)))

(declare-datatypes ((Token!10270 0))(
  ( (Token!10271 (value!175842 TokenValue!5682) (rule!8052 Rule!10704) (size!28265 Int) (originalCharacters!6166 List!37351)) )
))
(declare-datatypes ((List!37353 0))(
  ( (Nil!37229) (Cons!37229 (h!42649 Token!10270) (t!275186 List!37353)) )
))
(declare-fun tokens!494 () List!37353)

(declare-fun lt!1183726 () List!37351)

(declare-fun matchR!4795 (Regex!10211 List!37351) Bool)

(assert (=> b!3477338 (= res!1402932 (not (matchR!4795 (regex!5452 (rule!8052 (h!42649 tokens!494))) lt!1183726)))))

(declare-datatypes ((LexerInterface!5041 0))(
  ( (LexerInterfaceExt!5038 (__x!23582 Int)) (Lexer!5039) )
))
(declare-fun thiss!18206 () LexerInterface!5041)

(declare-fun ruleValid!1750 (LexerInterface!5041 Rule!10704) Bool)

(assert (=> b!3477338 (ruleValid!1750 thiss!18206 (rule!8052 (h!42649 tokens!494)))))

(declare-datatypes ((Unit!52658 0))(
  ( (Unit!52659) )
))
(declare-fun lt!1183738 () Unit!52658)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!950 (LexerInterface!5041 Rule!10704 List!37352) Unit!52658)

(assert (=> b!3477338 (= lt!1183738 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!950 thiss!18206 (rule!8052 (h!42649 tokens!494)) rules!2135))))

(declare-fun b!3477339 () Bool)

(declare-fun e!2153929 () Bool)

(declare-fun e!2153915 () Bool)

(assert (=> b!3477339 (= e!2153929 e!2153915)))

(declare-fun res!1402914 () Bool)

(assert (=> b!3477339 (=> res!1402914 e!2153915)))

(assert (=> b!3477339 (= res!1402914 (or (isSeparator!5452 (rule!8052 (h!42649 tokens!494))) (isSeparator!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))))))

(declare-fun lt!1183744 () Unit!52658)

(declare-fun forallContained!1399 (List!37353 Int Token!10270) Unit!52658)

(assert (=> b!3477339 (= lt!1183744 (forallContained!1399 tokens!494 lambda!122134 (h!42649 (t!275186 tokens!494))))))

(declare-fun lt!1183727 () Unit!52658)

(assert (=> b!3477339 (= lt!1183727 (forallContained!1399 tokens!494 lambda!122134 (h!42649 tokens!494)))))

(declare-fun b!3477340 () Bool)

(declare-fun res!1402927 () Bool)

(declare-fun e!2153931 () Bool)

(assert (=> b!3477340 (=> (not res!1402927) (not e!2153931))))

(declare-fun sepAndNonSepRulesDisjointChars!1646 (List!37352 List!37352) Bool)

(assert (=> b!3477340 (= res!1402927 (sepAndNonSepRulesDisjointChars!1646 rules!2135 rules!2135))))

(declare-fun e!2153906 () Bool)

(assert (=> b!3477341 (= e!2153906 (and tp!1080676 tp!1080670))))

(declare-fun b!3477342 () Bool)

(declare-fun e!2153925 () Bool)

(declare-fun e!2153914 () Bool)

(assert (=> b!3477342 (= e!2153925 e!2153914)))

(declare-fun res!1402908 () Bool)

(assert (=> b!3477342 (=> res!1402908 e!2153914)))

(declare-fun lt!1183715 () List!37351)

(declare-fun lt!1183740 () List!37351)

(assert (=> b!3477342 (= res!1402908 (not (= lt!1183715 lt!1183740)))))

(declare-fun lt!1183711 () List!37351)

(assert (=> b!3477342 (= lt!1183711 lt!1183740)))

(declare-fun lt!1183716 () List!37351)

(declare-fun ++!9193 (List!37351 List!37351) List!37351)

(assert (=> b!3477342 (= lt!1183740 (++!9193 lt!1183726 lt!1183716))))

(declare-fun lt!1183708 () List!37351)

(declare-fun lt!1183728 () Unit!52658)

(declare-fun lt!1183732 () List!37351)

(declare-fun lemmaConcatAssociativity!1976 (List!37351 List!37351 List!37351) Unit!52658)

(assert (=> b!3477342 (= lt!1183728 (lemmaConcatAssociativity!1976 lt!1183726 lt!1183732 lt!1183708))))

(declare-fun b!3477343 () Bool)

(declare-fun e!2153911 () Bool)

(declare-fun lt!1183729 () List!37351)

(declare-fun lt!1183724 () C!20608)

(declare-fun contains!6931 (List!37351 C!20608) Bool)

(assert (=> b!3477343 (= e!2153911 (contains!6931 lt!1183729 lt!1183724))))

(declare-fun b!3477344 () Bool)

(declare-fun e!2153939 () Bool)

(assert (=> b!3477344 (= e!2153915 e!2153939)))

(declare-fun res!1402902 () Bool)

(assert (=> b!3477344 (=> res!1402902 e!2153939)))

(declare-fun separatorToken!241 () Token!10270)

(declare-fun list!13573 (BalanceConc!22172) List!37351)

(declare-fun charsOf!3466 (Token!10270) BalanceConc!22172)

(declare-fun printWithSeparatorTokenList!328 (LexerInterface!5041 List!37353 Token!10270) List!37351)

(assert (=> b!3477344 (= res!1402902 (not (= lt!1183708 (++!9193 (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) lt!1183732) (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 tokens!494)) separatorToken!241)))))))

(assert (=> b!3477344 (= lt!1183716 (++!9193 lt!1183732 lt!1183708))))

(assert (=> b!3477344 (= lt!1183732 (list!13573 (charsOf!3466 separatorToken!241)))))

(assert (=> b!3477344 (= lt!1183708 (printWithSeparatorTokenList!328 thiss!18206 (t!275186 tokens!494) separatorToken!241))))

(assert (=> b!3477344 (= lt!1183715 (printWithSeparatorTokenList!328 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3477345 () Bool)

(declare-fun e!2153910 () Unit!52658)

(declare-fun Unit!52660 () Unit!52658)

(assert (=> b!3477345 (= e!2153910 Unit!52660)))

(declare-fun lt!1183712 () Unit!52658)

(declare-fun lt!1183731 () C!20608)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!510 (Regex!10211 List!37351 C!20608) Unit!52658)

(assert (=> b!3477345 (= lt!1183712 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!510 (regex!5452 (rule!8052 separatorToken!241)) lt!1183732 lt!1183731))))

(declare-fun res!1402920 () Bool)

(assert (=> b!3477345 (= res!1402920 (not (matchR!4795 (regex!5452 (rule!8052 separatorToken!241)) lt!1183732)))))

(declare-fun e!2153921 () Bool)

(assert (=> b!3477345 (=> (not res!1402920) (not e!2153921))))

(assert (=> b!3477345 e!2153921))

(declare-fun e!2153908 () Bool)

(declare-fun e!2153927 () Bool)

(declare-fun tp!1080674 () Bool)

(declare-fun b!3477346 () Bool)

(declare-fun inv!21 (TokenValue!5682) Bool)

(assert (=> b!3477346 (= e!2153908 (and (inv!21 (value!175842 separatorToken!241)) e!2153927 tp!1080674))))

(declare-fun e!2153917 () Bool)

(assert (=> b!3477347 (= e!2153917 (and tp!1080675 tp!1080677))))

(declare-fun e!2153904 () Bool)

(assert (=> b!3477348 (= e!2153914 e!2153904)))

(declare-fun res!1402930 () Bool)

(assert (=> b!3477348 (=> res!1402930 e!2153904)))

(declare-fun contains!6932 (List!37352 Rule!10704) Bool)

(assert (=> b!3477348 (= res!1402930 (not (contains!6932 rules!2135 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun lt!1183718 () List!37351)

(assert (=> b!3477348 (not (contains!6931 lt!1183718 lt!1183731))))

(declare-fun usedCharacters!686 (Regex!10211) List!37351)

(assert (=> b!3477348 (= lt!1183718 (usedCharacters!686 (regex!5452 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun lt!1183735 () Unit!52658)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!252 (LexerInterface!5041 List!37352 List!37352 Rule!10704 Rule!10704 C!20608) Unit!52658)

(assert (=> b!3477348 (= lt!1183735 (lemmaNonSepRuleNotContainsCharContainedInASepRule!252 thiss!18206 rules!2135 rules!2135 (rule!8052 (h!42649 tokens!494)) (rule!8052 separatorToken!241) lt!1183731))))

(declare-fun lt!1183721 () Unit!52658)

(assert (=> b!3477348 (= lt!1183721 (forallContained!1399 tokens!494 lambda!122135 (h!42649 (t!275186 tokens!494))))))

(declare-fun e!2153937 () Bool)

(declare-fun rulesProduceIndividualToken!2533 (LexerInterface!5041 List!37352 Token!10270) Bool)

(assert (=> b!3477348 (= (rulesProduceIndividualToken!2533 thiss!18206 rules!2135 (h!42649 (t!275186 tokens!494))) e!2153937)))

(declare-fun res!1402911 () Bool)

(assert (=> b!3477348 (=> (not res!1402911) (not e!2153937))))

(declare-datatypes ((IArray!22565 0))(
  ( (IArray!22566 (innerList!11340 List!37353)) )
))
(declare-datatypes ((Conc!11280 0))(
  ( (Node!11280 (left!29060 Conc!11280) (right!29390 Conc!11280) (csize!22790 Int) (cheight!11491 Int)) (Leaf!17617 (xs!14458 IArray!22565) (csize!22791 Int)) (Empty!11280) )
))
(declare-datatypes ((BalanceConc!22174 0))(
  ( (BalanceConc!22175 (c!596344 Conc!11280)) )
))
(declare-datatypes ((tuple2!36984 0))(
  ( (tuple2!36985 (_1!21626 BalanceConc!22174) (_2!21626 BalanceConc!22172)) )
))
(declare-fun lt!1183743 () tuple2!36984)

(declare-fun size!28266 (BalanceConc!22174) Int)

(assert (=> b!3477348 (= res!1402911 (= (size!28266 (_1!21626 lt!1183743)) 1))))

(declare-fun lt!1183737 () BalanceConc!22172)

(declare-fun lex!2367 (LexerInterface!5041 List!37352 BalanceConc!22172) tuple2!36984)

(assert (=> b!3477348 (= lt!1183743 (lex!2367 thiss!18206 rules!2135 lt!1183737))))

(declare-fun lt!1183723 () BalanceConc!22174)

(declare-fun printTailRec!1536 (LexerInterface!5041 BalanceConc!22174 Int BalanceConc!22172) BalanceConc!22172)

(assert (=> b!3477348 (= lt!1183737 (printTailRec!1536 thiss!18206 lt!1183723 0 (BalanceConc!22173 Empty!11279)))))

(declare-fun print!2106 (LexerInterface!5041 BalanceConc!22174) BalanceConc!22172)

(assert (=> b!3477348 (= lt!1183737 (print!2106 thiss!18206 lt!1183723))))

(declare-fun singletonSeq!2548 (Token!10270) BalanceConc!22174)

(assert (=> b!3477348 (= lt!1183723 (singletonSeq!2548 (h!42649 (t!275186 tokens!494))))))

(declare-fun e!2153930 () Bool)

(assert (=> b!3477348 e!2153930))

(declare-fun res!1402921 () Bool)

(assert (=> b!3477348 (=> (not res!1402921) (not e!2153930))))

(declare-fun lt!1183717 () tuple2!36984)

(assert (=> b!3477348 (= res!1402921 (= (size!28266 (_1!21626 lt!1183717)) 1))))

(declare-fun lt!1183706 () BalanceConc!22172)

(assert (=> b!3477348 (= lt!1183717 (lex!2367 thiss!18206 rules!2135 lt!1183706))))

(declare-fun lt!1183736 () BalanceConc!22174)

(assert (=> b!3477348 (= lt!1183706 (printTailRec!1536 thiss!18206 lt!1183736 0 (BalanceConc!22173 Empty!11279)))))

(assert (=> b!3477348 (= lt!1183706 (print!2106 thiss!18206 lt!1183736))))

(assert (=> b!3477348 (= lt!1183736 (singletonSeq!2548 separatorToken!241))))

(declare-fun lt!1183705 () Unit!52658)

(assert (=> b!3477348 (= lt!1183705 e!2153910)))

(declare-fun c!596341 () Bool)

(assert (=> b!3477348 (= c!596341 (not (contains!6931 lt!1183729 lt!1183731)))))

(declare-fun head!7341 (List!37351) C!20608)

(assert (=> b!3477348 (= lt!1183731 (head!7341 lt!1183732))))

(assert (=> b!3477348 (= lt!1183729 (usedCharacters!686 (regex!5452 (rule!8052 separatorToken!241))))))

(declare-fun e!2153919 () Bool)

(assert (=> b!3477348 e!2153919))

(declare-fun res!1402916 () Bool)

(assert (=> b!3477348 (=> (not res!1402916) (not e!2153919))))

(declare-datatypes ((Option!7557 0))(
  ( (None!7556) (Some!7556 (v!36928 Rule!10704)) )
))
(declare-fun lt!1183719 () Option!7557)

(declare-fun isDefined!5821 (Option!7557) Bool)

(assert (=> b!3477348 (= res!1402916 (isDefined!5821 lt!1183719))))

(declare-fun getRuleFromTag!1095 (LexerInterface!5041 List!37352 String!41744) Option!7557)

(assert (=> b!3477348 (= lt!1183719 (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 separatorToken!241))))))

(declare-fun lt!1183710 () Unit!52658)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1095 (LexerInterface!5041 List!37352 List!37351 Token!10270) Unit!52658)

(assert (=> b!3477348 (= lt!1183710 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1095 thiss!18206 rules!2135 lt!1183732 separatorToken!241))))

(declare-fun lt!1183730 () BalanceConc!22172)

(declare-datatypes ((tuple2!36986 0))(
  ( (tuple2!36987 (_1!21627 Token!10270) (_2!21627 List!37351)) )
))
(declare-datatypes ((Option!7558 0))(
  ( (None!7557) (Some!7557 (v!36929 tuple2!36986)) )
))
(declare-fun maxPrefixOneRule!1748 (LexerInterface!5041 Rule!10704 List!37351) Option!7558)

(declare-fun apply!8800 (TokenValueInjection!10792 BalanceConc!22172) TokenValue!5682)

(declare-fun size!28267 (List!37351) Int)

(assert (=> b!3477348 (= (maxPrefixOneRule!1748 thiss!18206 (rule!8052 (h!42649 tokens!494)) lt!1183726) (Some!7557 (tuple2!36987 (Token!10271 (apply!8800 (transformation!5452 (rule!8052 (h!42649 tokens!494))) lt!1183730) (rule!8052 (h!42649 tokens!494)) (size!28267 lt!1183726) lt!1183726) Nil!37227)))))

(declare-fun lt!1183739 () Unit!52658)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!841 (LexerInterface!5041 List!37352 List!37351 List!37351 List!37351 Rule!10704) Unit!52658)

(assert (=> b!3477348 (= lt!1183739 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!841 thiss!18206 rules!2135 lt!1183726 lt!1183726 Nil!37227 (rule!8052 (h!42649 tokens!494))))))

(declare-fun e!2153936 () Bool)

(assert (=> b!3477348 e!2153936))

(declare-fun res!1402929 () Bool)

(assert (=> b!3477348 (=> (not res!1402929) (not e!2153936))))

(declare-fun lt!1183720 () Option!7557)

(assert (=> b!3477348 (= res!1402929 (isDefined!5821 lt!1183720))))

(assert (=> b!3477348 (= lt!1183720 (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun lt!1183734 () Unit!52658)

(assert (=> b!3477348 (= lt!1183734 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1095 thiss!18206 rules!2135 lt!1183726 (h!42649 tokens!494)))))

(declare-fun lt!1183709 () Unit!52658)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1030 (LexerInterface!5041 List!37352 List!37353 Token!10270) Unit!52658)

(assert (=> b!3477348 (= lt!1183709 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1030 thiss!18206 rules!2135 tokens!494 (h!42649 tokens!494)))))

(declare-fun res!1402918 () Bool)

(assert (=> b!3477349 (=> (not res!1402918) (not e!2153931))))

(declare-fun forall!7957 (List!37353 Int) Bool)

(assert (=> b!3477349 (= res!1402918 (forall!7957 tokens!494 lambda!122134))))

(declare-fun b!3477350 () Bool)

(declare-fun res!1402901 () Bool)

(assert (=> b!3477350 (=> (not res!1402901) (not e!2153931))))

(assert (=> b!3477350 (= res!1402901 (isSeparator!5452 (rule!8052 separatorToken!241)))))

(declare-fun b!3477351 () Bool)

(declare-fun isEmpty!21612 (BalanceConc!22172) Bool)

(assert (=> b!3477351 (= e!2153930 (isEmpty!21612 (_2!21626 lt!1183717)))))

(declare-fun e!2153909 () Bool)

(declare-fun tp!1080673 () Bool)

(declare-fun e!2153933 () Bool)

(declare-fun b!3477352 () Bool)

(declare-fun inv!50418 (Token!10270) Bool)

(assert (=> b!3477352 (= e!2153933 (and (inv!50418 (h!42649 tokens!494)) e!2153909 tp!1080673))))

(declare-fun b!3477353 () Bool)

(declare-fun e!2153923 () Bool)

(assert (=> b!3477353 (= e!2153936 e!2153923)))

(declare-fun res!1402917 () Bool)

(assert (=> b!3477353 (=> (not res!1402917) (not e!2153923))))

(declare-fun lt!1183725 () Rule!10704)

(assert (=> b!3477353 (= res!1402917 (matchR!4795 (regex!5452 lt!1183725) lt!1183726))))

(declare-fun get!11928 (Option!7557) Rule!10704)

(assert (=> b!3477353 (= lt!1183725 (get!11928 lt!1183720))))

(declare-fun b!3477354 () Bool)

(declare-fun e!2153907 () Bool)

(assert (=> b!3477354 (= e!2153907 e!2153929)))

(declare-fun res!1402900 () Bool)

(assert (=> b!3477354 (=> res!1402900 e!2153929)))

(declare-fun isEmpty!21613 (BalanceConc!22174) Bool)

(assert (=> b!3477354 (= res!1402900 (isEmpty!21613 (_1!21626 (lex!2367 thiss!18206 rules!2135 lt!1183730))))))

(declare-fun seqFromList!3957 (List!37351) BalanceConc!22172)

(assert (=> b!3477354 (= lt!1183730 (seqFromList!3957 lt!1183726))))

(declare-fun b!3477355 () Bool)

(declare-fun e!2153913 () Bool)

(declare-fun e!2153916 () Bool)

(declare-fun tp!1080671 () Bool)

(assert (=> b!3477355 (= e!2153913 (and e!2153916 tp!1080671))))

(declare-fun b!3477356 () Bool)

(declare-fun res!1402926 () Bool)

(assert (=> b!3477356 (=> (not res!1402926) (not e!2153930))))

(declare-fun apply!8801 (BalanceConc!22174 Int) Token!10270)

(assert (=> b!3477356 (= res!1402926 (= (apply!8801 (_1!21626 lt!1183717) 0) separatorToken!241))))

(declare-fun b!3477357 () Bool)

(declare-fun tp!1080680 () Bool)

(declare-fun inv!50415 (String!41744) Bool)

(declare-fun inv!50419 (TokenValueInjection!10792) Bool)

(assert (=> b!3477357 (= e!2153916 (and tp!1080680 (inv!50415 (tag!6070 (h!42648 rules!2135))) (inv!50419 (transformation!5452 (h!42648 rules!2135))) e!2153906))))

(declare-fun b!3477358 () Bool)

(assert (=> b!3477358 (= e!2153939 e!2153925)))

(declare-fun res!1402931 () Bool)

(assert (=> b!3477358 (=> res!1402931 e!2153925)))

(assert (=> b!3477358 (= res!1402931 (not (= lt!1183715 lt!1183711)))))

(assert (=> b!3477358 (= lt!1183711 (++!9193 (++!9193 lt!1183726 lt!1183732) lt!1183708))))

(declare-fun b!3477359 () Bool)

(assert (=> b!3477359 (= e!2153923 (= (rule!8052 (h!42649 tokens!494)) lt!1183725))))

(declare-fun tp!1080679 () Bool)

(declare-fun e!2153934 () Bool)

(declare-fun e!2153912 () Bool)

(declare-fun b!3477360 () Bool)

(assert (=> b!3477360 (= e!2153912 (and tp!1080679 (inv!50415 (tag!6070 (rule!8052 (h!42649 tokens!494)))) (inv!50419 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) e!2153934))))

(declare-fun b!3477361 () Bool)

(declare-fun e!2153905 () Bool)

(assert (=> b!3477361 (= e!2153931 (not e!2153905))))

(declare-fun res!1402910 () Bool)

(assert (=> b!3477361 (=> res!1402910 e!2153905)))

(declare-fun lt!1183742 () List!37351)

(declare-fun lt!1183707 () List!37351)

(assert (=> b!3477361 (= res!1402910 (not (= lt!1183742 lt!1183707)))))

(declare-fun printList!1589 (LexerInterface!5041 List!37353) List!37351)

(assert (=> b!3477361 (= lt!1183707 (printList!1589 thiss!18206 (Cons!37229 (h!42649 tokens!494) Nil!37229)))))

(declare-fun lt!1183713 () BalanceConc!22172)

(assert (=> b!3477361 (= lt!1183742 (list!13573 lt!1183713))))

(declare-fun lt!1183741 () BalanceConc!22174)

(assert (=> b!3477361 (= lt!1183713 (printTailRec!1536 thiss!18206 lt!1183741 0 (BalanceConc!22173 Empty!11279)))))

(assert (=> b!3477361 (= lt!1183713 (print!2106 thiss!18206 lt!1183741))))

(assert (=> b!3477361 (= lt!1183741 (singletonSeq!2548 (h!42649 tokens!494)))))

(declare-fun b!3477362 () Bool)

(assert (=> b!3477362 (= e!2153937 (isEmpty!21612 (_2!21626 lt!1183743)))))

(declare-fun b!3477363 () Bool)

(declare-fun res!1402915 () Bool)

(assert (=> b!3477363 (=> res!1402915 e!2153907)))

(assert (=> b!3477363 (= res!1402915 (not (rulesProduceIndividualToken!2533 thiss!18206 rules!2135 (h!42649 tokens!494))))))

(declare-fun res!1402924 () Bool)

(assert (=> start!323522 (=> (not res!1402924) (not e!2153931))))

(assert (=> start!323522 (= res!1402924 ((_ is Lexer!5039) thiss!18206))))

(assert (=> start!323522 e!2153931))

(assert (=> start!323522 true))

(assert (=> start!323522 e!2153913))

(assert (=> start!323522 e!2153933))

(assert (=> start!323522 (and (inv!50418 separatorToken!241) e!2153908)))

(declare-fun b!3477364 () Bool)

(declare-fun tp!1080682 () Bool)

(assert (=> b!3477364 (= e!2153909 (and (inv!21 (value!175842 (h!42649 tokens!494))) e!2153912 tp!1080682))))

(declare-fun b!3477365 () Bool)

(assert (=> b!3477365 (= e!2153938 e!2153911)))

(declare-fun res!1402909 () Bool)

(assert (=> b!3477365 (=> res!1402909 e!2153911)))

(assert (=> b!3477365 (= res!1402909 (contains!6931 lt!1183718 lt!1183724))))

(assert (=> b!3477365 (= lt!1183724 (head!7341 lt!1183716))))

(declare-fun b!3477366 () Bool)

(declare-fun res!1402923 () Bool)

(assert (=> b!3477366 (=> res!1402923 e!2153926)))

(declare-fun lt!1183733 () tuple2!36986)

(declare-fun isEmpty!21614 (List!37351) Bool)

(assert (=> b!3477366 (= res!1402923 (not (isEmpty!21614 (_2!21627 lt!1183733))))))

(declare-fun b!3477367 () Bool)

(assert (=> b!3477367 (= e!2153921 false)))

(declare-fun b!3477368 () Bool)

(declare-fun res!1402922 () Bool)

(assert (=> b!3477368 (=> (not res!1402922) (not e!2153937))))

(assert (=> b!3477368 (= res!1402922 (= (apply!8801 (_1!21626 lt!1183743) 0) (h!42649 (t!275186 tokens!494))))))

(declare-fun b!3477369 () Bool)

(declare-fun res!1402907 () Bool)

(assert (=> b!3477369 (=> (not res!1402907) (not e!2153931))))

(declare-fun rulesProduceEachTokenIndividually!1492 (LexerInterface!5041 List!37352 BalanceConc!22174) Bool)

(declare-fun seqFromList!3958 (List!37353) BalanceConc!22174)

(assert (=> b!3477369 (= res!1402907 (rulesProduceEachTokenIndividually!1492 thiss!18206 rules!2135 (seqFromList!3958 tokens!494)))))

(declare-fun b!3477370 () Bool)

(declare-fun res!1402906 () Bool)

(assert (=> b!3477370 (=> res!1402906 e!2153938)))

(assert (=> b!3477370 (= res!1402906 (isEmpty!21614 lt!1183716))))

(declare-fun tp!1080672 () Bool)

(declare-fun b!3477371 () Bool)

(assert (=> b!3477371 (= e!2153927 (and tp!1080672 (inv!50415 (tag!6070 (rule!8052 separatorToken!241))) (inv!50419 (transformation!5452 (rule!8052 separatorToken!241))) e!2153917))))

(declare-fun b!3477372 () Bool)

(assert (=> b!3477372 (= e!2153905 e!2153907)))

(declare-fun res!1402925 () Bool)

(assert (=> b!3477372 (=> res!1402925 e!2153907)))

(assert (=> b!3477372 (= res!1402925 (or (not (= lt!1183707 lt!1183726)) (not (= lt!1183742 lt!1183726))))))

(assert (=> b!3477372 (= lt!1183726 (list!13573 (charsOf!3466 (h!42649 tokens!494))))))

(declare-fun b!3477373 () Bool)

(declare-fun res!1402928 () Bool)

(assert (=> b!3477373 (=> (not res!1402928) (not e!2153931))))

(assert (=> b!3477373 (= res!1402928 (and (not ((_ is Nil!37229) tokens!494)) (not ((_ is Nil!37229) (t!275186 tokens!494)))))))

(declare-fun b!3477374 () Bool)

(declare-fun res!1402899 () Bool)

(assert (=> b!3477374 (=> (not res!1402899) (not e!2153931))))

(assert (=> b!3477374 (= res!1402899 (rulesProduceIndividualToken!2533 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3477375 () Bool)

(declare-fun res!1402905 () Bool)

(assert (=> b!3477375 (=> res!1402905 e!2153904)))

(assert (=> b!3477375 (= res!1402905 (not (contains!6932 rules!2135 (rule!8052 separatorToken!241))))))

(declare-fun b!3477376 () Bool)

(declare-fun res!1402913 () Bool)

(assert (=> b!3477376 (=> (not res!1402913) (not e!2153931))))

(declare-fun rulesInvariant!4438 (LexerInterface!5041 List!37352) Bool)

(assert (=> b!3477376 (= res!1402913 (rulesInvariant!4438 thiss!18206 rules!2135))))

(declare-fun b!3477377 () Bool)

(declare-fun res!1402904 () Bool)

(assert (=> b!3477377 (=> (not res!1402904) (not e!2153931))))

(declare-fun isEmpty!21615 (List!37352) Bool)

(assert (=> b!3477377 (= res!1402904 (not (isEmpty!21615 rules!2135)))))

(assert (=> b!3477378 (= e!2153934 (and tp!1080681 tp!1080678))))

(declare-fun b!3477379 () Bool)

(declare-fun e!2153928 () Bool)

(assert (=> b!3477379 (= e!2153904 e!2153928)))

(declare-fun res!1402912 () Bool)

(assert (=> b!3477379 (=> res!1402912 e!2153928)))

(declare-fun lt!1183714 () Option!7558)

(declare-fun isDefined!5822 (Option!7558) Bool)

(assert (=> b!3477379 (= res!1402912 (not (isDefined!5822 lt!1183714)))))

(declare-fun maxPrefix!2581 (LexerInterface!5041 List!37352 List!37351) Option!7558)

(assert (=> b!3477379 (= lt!1183714 (maxPrefix!2581 thiss!18206 rules!2135 lt!1183726))))

(declare-fun b!3477380 () Bool)

(declare-fun e!2153918 () Bool)

(declare-fun lt!1183722 () Rule!10704)

(assert (=> b!3477380 (= e!2153918 (= (rule!8052 separatorToken!241) lt!1183722))))

(declare-fun b!3477381 () Bool)

(assert (=> b!3477381 (= e!2153919 e!2153918)))

(declare-fun res!1402903 () Bool)

(assert (=> b!3477381 (=> (not res!1402903) (not e!2153918))))

(assert (=> b!3477381 (= res!1402903 (matchR!4795 (regex!5452 lt!1183722) lt!1183732))))

(assert (=> b!3477381 (= lt!1183722 (get!11928 lt!1183719))))

(declare-fun b!3477382 () Bool)

(assert (=> b!3477382 (= e!2153928 e!2153926)))

(declare-fun res!1402919 () Bool)

(assert (=> b!3477382 (=> res!1402919 e!2153926)))

(assert (=> b!3477382 (= res!1402919 (not (= (_1!21627 lt!1183733) (h!42649 tokens!494))))))

(declare-fun get!11929 (Option!7558) tuple2!36986)

(assert (=> b!3477382 (= lt!1183733 (get!11929 lt!1183714))))

(declare-fun b!3477383 () Bool)

(declare-fun Unit!52661 () Unit!52658)

(assert (=> b!3477383 (= e!2153910 Unit!52661)))

(assert (= (and start!323522 res!1402924) b!3477377))

(assert (= (and b!3477377 res!1402904) b!3477376))

(assert (= (and b!3477376 res!1402913) b!3477369))

(assert (= (and b!3477369 res!1402907) b!3477374))

(assert (= (and b!3477374 res!1402899) b!3477350))

(assert (= (and b!3477350 res!1402901) b!3477349))

(assert (= (and b!3477349 res!1402918) b!3477340))

(assert (= (and b!3477340 res!1402927) b!3477373))

(assert (= (and b!3477373 res!1402928) b!3477361))

(assert (= (and b!3477361 (not res!1402910)) b!3477372))

(assert (= (and b!3477372 (not res!1402925)) b!3477363))

(assert (= (and b!3477363 (not res!1402915)) b!3477354))

(assert (= (and b!3477354 (not res!1402900)) b!3477339))

(assert (= (and b!3477339 (not res!1402914)) b!3477344))

(assert (= (and b!3477344 (not res!1402902)) b!3477358))

(assert (= (and b!3477358 (not res!1402931)) b!3477342))

(assert (= (and b!3477342 (not res!1402908)) b!3477348))

(assert (= (and b!3477348 res!1402929) b!3477353))

(assert (= (and b!3477353 res!1402917) b!3477359))

(assert (= (and b!3477348 res!1402916) b!3477381))

(assert (= (and b!3477381 res!1402903) b!3477380))

(assert (= (and b!3477348 c!596341) b!3477345))

(assert (= (and b!3477348 (not c!596341)) b!3477383))

(assert (= (and b!3477345 res!1402920) b!3477367))

(assert (= (and b!3477348 res!1402921) b!3477356))

(assert (= (and b!3477356 res!1402926) b!3477351))

(assert (= (and b!3477348 res!1402911) b!3477368))

(assert (= (and b!3477368 res!1402922) b!3477362))

(assert (= (and b!3477348 (not res!1402930)) b!3477375))

(assert (= (and b!3477375 (not res!1402905)) b!3477379))

(assert (= (and b!3477379 (not res!1402912)) b!3477382))

(assert (= (and b!3477382 (not res!1402919)) b!3477366))

(assert (= (and b!3477366 (not res!1402923)) b!3477338))

(assert (= (and b!3477338 (not res!1402932)) b!3477370))

(assert (= (and b!3477370 (not res!1402906)) b!3477365))

(assert (= (and b!3477365 (not res!1402909)) b!3477343))

(assert (= b!3477357 b!3477341))

(assert (= b!3477355 b!3477357))

(assert (= (and start!323522 ((_ is Cons!37228) rules!2135)) b!3477355))

(assert (= b!3477360 b!3477378))

(assert (= b!3477364 b!3477360))

(assert (= b!3477352 b!3477364))

(assert (= (and start!323522 ((_ is Cons!37229) tokens!494)) b!3477352))

(assert (= b!3477371 b!3477347))

(assert (= b!3477346 b!3477371))

(assert (= start!323522 b!3477346))

(declare-fun m!3892469 () Bool)

(assert (=> b!3477356 m!3892469))

(declare-fun m!3892471 () Bool)

(assert (=> b!3477352 m!3892471))

(declare-fun m!3892473 () Bool)

(assert (=> b!3477374 m!3892473))

(declare-fun m!3892475 () Bool)

(assert (=> b!3477348 m!3892475))

(declare-fun m!3892477 () Bool)

(assert (=> b!3477348 m!3892477))

(declare-fun m!3892479 () Bool)

(assert (=> b!3477348 m!3892479))

(declare-fun m!3892481 () Bool)

(assert (=> b!3477348 m!3892481))

(declare-fun m!3892483 () Bool)

(assert (=> b!3477348 m!3892483))

(declare-fun m!3892485 () Bool)

(assert (=> b!3477348 m!3892485))

(declare-fun m!3892487 () Bool)

(assert (=> b!3477348 m!3892487))

(declare-fun m!3892489 () Bool)

(assert (=> b!3477348 m!3892489))

(declare-fun m!3892491 () Bool)

(assert (=> b!3477348 m!3892491))

(declare-fun m!3892493 () Bool)

(assert (=> b!3477348 m!3892493))

(declare-fun m!3892495 () Bool)

(assert (=> b!3477348 m!3892495))

(declare-fun m!3892497 () Bool)

(assert (=> b!3477348 m!3892497))

(declare-fun m!3892499 () Bool)

(assert (=> b!3477348 m!3892499))

(declare-fun m!3892501 () Bool)

(assert (=> b!3477348 m!3892501))

(declare-fun m!3892503 () Bool)

(assert (=> b!3477348 m!3892503))

(declare-fun m!3892505 () Bool)

(assert (=> b!3477348 m!3892505))

(declare-fun m!3892507 () Bool)

(assert (=> b!3477348 m!3892507))

(declare-fun m!3892509 () Bool)

(assert (=> b!3477348 m!3892509))

(declare-fun m!3892511 () Bool)

(assert (=> b!3477348 m!3892511))

(declare-fun m!3892513 () Bool)

(assert (=> b!3477348 m!3892513))

(declare-fun m!3892515 () Bool)

(assert (=> b!3477348 m!3892515))

(declare-fun m!3892517 () Bool)

(assert (=> b!3477348 m!3892517))

(declare-fun m!3892519 () Bool)

(assert (=> b!3477348 m!3892519))

(declare-fun m!3892521 () Bool)

(assert (=> b!3477348 m!3892521))

(declare-fun m!3892523 () Bool)

(assert (=> b!3477348 m!3892523))

(declare-fun m!3892525 () Bool)

(assert (=> b!3477348 m!3892525))

(declare-fun m!3892527 () Bool)

(assert (=> b!3477348 m!3892527))

(declare-fun m!3892529 () Bool)

(assert (=> b!3477348 m!3892529))

(declare-fun m!3892531 () Bool)

(assert (=> b!3477348 m!3892531))

(declare-fun m!3892533 () Bool)

(assert (=> b!3477348 m!3892533))

(declare-fun m!3892535 () Bool)

(assert (=> b!3477358 m!3892535))

(assert (=> b!3477358 m!3892535))

(declare-fun m!3892537 () Bool)

(assert (=> b!3477358 m!3892537))

(declare-fun m!3892539 () Bool)

(assert (=> b!3477357 m!3892539))

(declare-fun m!3892541 () Bool)

(assert (=> b!3477357 m!3892541))

(declare-fun m!3892543 () Bool)

(assert (=> b!3477363 m!3892543))

(declare-fun m!3892545 () Bool)

(assert (=> b!3477370 m!3892545))

(declare-fun m!3892547 () Bool)

(assert (=> b!3477379 m!3892547))

(declare-fun m!3892549 () Bool)

(assert (=> b!3477379 m!3892549))

(declare-fun m!3892551 () Bool)

(assert (=> b!3477339 m!3892551))

(declare-fun m!3892553 () Bool)

(assert (=> b!3477339 m!3892553))

(declare-fun m!3892555 () Bool)

(assert (=> b!3477345 m!3892555))

(declare-fun m!3892557 () Bool)

(assert (=> b!3477345 m!3892557))

(declare-fun m!3892559 () Bool)

(assert (=> b!3477365 m!3892559))

(declare-fun m!3892561 () Bool)

(assert (=> b!3477365 m!3892561))

(declare-fun m!3892563 () Bool)

(assert (=> b!3477362 m!3892563))

(declare-fun m!3892565 () Bool)

(assert (=> b!3477361 m!3892565))

(declare-fun m!3892567 () Bool)

(assert (=> b!3477361 m!3892567))

(declare-fun m!3892569 () Bool)

(assert (=> b!3477361 m!3892569))

(declare-fun m!3892571 () Bool)

(assert (=> b!3477361 m!3892571))

(declare-fun m!3892573 () Bool)

(assert (=> b!3477361 m!3892573))

(declare-fun m!3892575 () Bool)

(assert (=> b!3477381 m!3892575))

(declare-fun m!3892577 () Bool)

(assert (=> b!3477381 m!3892577))

(declare-fun m!3892579 () Bool)

(assert (=> b!3477382 m!3892579))

(declare-fun m!3892581 () Bool)

(assert (=> b!3477340 m!3892581))

(declare-fun m!3892583 () Bool)

(assert (=> b!3477375 m!3892583))

(declare-fun m!3892585 () Bool)

(assert (=> b!3477372 m!3892585))

(assert (=> b!3477372 m!3892585))

(declare-fun m!3892587 () Bool)

(assert (=> b!3477372 m!3892587))

(declare-fun m!3892589 () Bool)

(assert (=> b!3477369 m!3892589))

(assert (=> b!3477369 m!3892589))

(declare-fun m!3892591 () Bool)

(assert (=> b!3477369 m!3892591))

(declare-fun m!3892593 () Bool)

(assert (=> b!3477368 m!3892593))

(declare-fun m!3892595 () Bool)

(assert (=> b!3477353 m!3892595))

(declare-fun m!3892597 () Bool)

(assert (=> b!3477353 m!3892597))

(declare-fun m!3892599 () Bool)

(assert (=> b!3477344 m!3892599))

(declare-fun m!3892601 () Bool)

(assert (=> b!3477344 m!3892601))

(declare-fun m!3892603 () Bool)

(assert (=> b!3477344 m!3892603))

(declare-fun m!3892605 () Bool)

(assert (=> b!3477344 m!3892605))

(declare-fun m!3892607 () Bool)

(assert (=> b!3477344 m!3892607))

(declare-fun m!3892609 () Bool)

(assert (=> b!3477344 m!3892609))

(declare-fun m!3892611 () Bool)

(assert (=> b!3477344 m!3892611))

(declare-fun m!3892613 () Bool)

(assert (=> b!3477344 m!3892613))

(assert (=> b!3477344 m!3892601))

(declare-fun m!3892615 () Bool)

(assert (=> b!3477344 m!3892615))

(assert (=> b!3477344 m!3892605))

(declare-fun m!3892617 () Bool)

(assert (=> b!3477344 m!3892617))

(assert (=> b!3477344 m!3892613))

(assert (=> b!3477344 m!3892599))

(assert (=> b!3477344 m!3892611))

(declare-fun m!3892619 () Bool)

(assert (=> b!3477351 m!3892619))

(declare-fun m!3892621 () Bool)

(assert (=> b!3477360 m!3892621))

(declare-fun m!3892623 () Bool)

(assert (=> b!3477360 m!3892623))

(declare-fun m!3892625 () Bool)

(assert (=> b!3477342 m!3892625))

(declare-fun m!3892627 () Bool)

(assert (=> b!3477342 m!3892627))

(declare-fun m!3892629 () Bool)

(assert (=> b!3477354 m!3892629))

(declare-fun m!3892631 () Bool)

(assert (=> b!3477354 m!3892631))

(declare-fun m!3892633 () Bool)

(assert (=> b!3477354 m!3892633))

(declare-fun m!3892635 () Bool)

(assert (=> b!3477371 m!3892635))

(declare-fun m!3892637 () Bool)

(assert (=> b!3477371 m!3892637))

(declare-fun m!3892639 () Bool)

(assert (=> start!323522 m!3892639))

(declare-fun m!3892641 () Bool)

(assert (=> b!3477366 m!3892641))

(declare-fun m!3892643 () Bool)

(assert (=> b!3477346 m!3892643))

(declare-fun m!3892645 () Bool)

(assert (=> b!3477364 m!3892645))

(declare-fun m!3892647 () Bool)

(assert (=> b!3477377 m!3892647))

(declare-fun m!3892649 () Bool)

(assert (=> b!3477343 m!3892649))

(declare-fun m!3892651 () Bool)

(assert (=> b!3477349 m!3892651))

(declare-fun m!3892653 () Bool)

(assert (=> b!3477338 m!3892653))

(declare-fun m!3892655 () Bool)

(assert (=> b!3477338 m!3892655))

(declare-fun m!3892657 () Bool)

(assert (=> b!3477338 m!3892657))

(declare-fun m!3892659 () Bool)

(assert (=> b!3477376 m!3892659))

(check-sat (not start!323522) (not b!3477365) (not b!3477392) b_and!245291 (not b!3477354) (not b!3477366) (not b!3477355) (not b!3477379) (not b_next!90883) (not b!3477352) (not b!3477370) (not b!3477343) (not b!3477345) (not b!3477368) b_and!245289 (not b!3477356) (not b!3477349) (not b!3477353) (not b!3477342) (not b_next!90875) (not b!3477358) (not b!3477348) (not b!3477372) (not b!3477381) (not b!3477363) b_and!245287 (not b!3477362) (not b!3477377) (not b!3477369) (not b!3477364) b_and!245293 (not b!3477382) b_and!245283 (not b!3477374) (not b!3477340) (not b!3477375) (not b!3477351) (not b_next!90879) (not b_next!90873) (not b!3477376) (not b_next!90877) (not b!3477357) b_and!245285 (not b!3477339) (not b!3477346) (not b!3477371) (not b!3477360) (not b_next!90881) (not b!3477361) (not b!3477344) (not b!3477338))
(check-sat b_and!245289 (not b_next!90875) b_and!245287 b_and!245291 b_and!245293 b_and!245283 (not b_next!90883) (not b_next!90879) (not b_next!90881) b_and!245285 (not b_next!90873) (not b_next!90877))
(get-model)

(declare-fun d!1004273 () Bool)

(declare-fun c!596353 () Bool)

(assert (=> d!1004273 (= c!596353 ((_ is Cons!37229) tokens!494))))

(declare-fun e!2153963 () List!37351)

(assert (=> d!1004273 (= (printWithSeparatorTokenList!328 thiss!18206 tokens!494 separatorToken!241) e!2153963)))

(declare-fun b!3477419 () Bool)

(assert (=> b!3477419 (= e!2153963 (++!9193 (++!9193 (list!13573 (charsOf!3466 (h!42649 tokens!494))) (list!13573 (charsOf!3466 separatorToken!241))) (printWithSeparatorTokenList!328 thiss!18206 (t!275186 tokens!494) separatorToken!241)))))

(declare-fun b!3477420 () Bool)

(assert (=> b!3477420 (= e!2153963 Nil!37227)))

(assert (= (and d!1004273 c!596353) b!3477419))

(assert (= (and d!1004273 (not c!596353)) b!3477420))

(assert (=> b!3477419 m!3892585))

(assert (=> b!3477419 m!3892609))

(assert (=> b!3477419 m!3892585))

(assert (=> b!3477419 m!3892587))

(assert (=> b!3477419 m!3892605))

(assert (=> b!3477419 m!3892605))

(assert (=> b!3477419 m!3892617))

(declare-fun m!3892671 () Bool)

(assert (=> b!3477419 m!3892671))

(assert (=> b!3477419 m!3892609))

(declare-fun m!3892673 () Bool)

(assert (=> b!3477419 m!3892673))

(assert (=> b!3477419 m!3892587))

(assert (=> b!3477419 m!3892617))

(assert (=> b!3477419 m!3892671))

(assert (=> b!3477344 d!1004273))

(declare-fun lt!1183747 () List!37351)

(declare-fun b!3477432 () Bool)

(declare-fun e!2153968 () Bool)

(assert (=> b!3477432 (= e!2153968 (or (not (= lt!1183708 Nil!37227)) (= lt!1183747 lt!1183732)))))

(declare-fun b!3477431 () Bool)

(declare-fun res!1402955 () Bool)

(assert (=> b!3477431 (=> (not res!1402955) (not e!2153968))))

(assert (=> b!3477431 (= res!1402955 (= (size!28267 lt!1183747) (+ (size!28267 lt!1183732) (size!28267 lt!1183708))))))

(declare-fun b!3477429 () Bool)

(declare-fun e!2153969 () List!37351)

(assert (=> b!3477429 (= e!2153969 lt!1183708)))

(declare-fun b!3477430 () Bool)

(assert (=> b!3477430 (= e!2153969 (Cons!37227 (h!42647 lt!1183732) (++!9193 (t!275184 lt!1183732) lt!1183708)))))

(declare-fun d!1004275 () Bool)

(assert (=> d!1004275 e!2153968))

(declare-fun res!1402956 () Bool)

(assert (=> d!1004275 (=> (not res!1402956) (not e!2153968))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5211 (List!37351) (InoxSet C!20608))

(assert (=> d!1004275 (= res!1402956 (= (content!5211 lt!1183747) ((_ map or) (content!5211 lt!1183732) (content!5211 lt!1183708))))))

(assert (=> d!1004275 (= lt!1183747 e!2153969)))

(declare-fun c!596356 () Bool)

(assert (=> d!1004275 (= c!596356 ((_ is Nil!37227) lt!1183732))))

(assert (=> d!1004275 (= (++!9193 lt!1183732 lt!1183708) lt!1183747)))

(assert (= (and d!1004275 c!596356) b!3477429))

(assert (= (and d!1004275 (not c!596356)) b!3477430))

(assert (= (and d!1004275 res!1402956) b!3477431))

(assert (= (and b!3477431 res!1402955) b!3477432))

(declare-fun m!3892675 () Bool)

(assert (=> b!3477431 m!3892675))

(declare-fun m!3892677 () Bool)

(assert (=> b!3477431 m!3892677))

(declare-fun m!3892679 () Bool)

(assert (=> b!3477431 m!3892679))

(declare-fun m!3892681 () Bool)

(assert (=> b!3477430 m!3892681))

(declare-fun m!3892683 () Bool)

(assert (=> d!1004275 m!3892683))

(declare-fun m!3892685 () Bool)

(assert (=> d!1004275 m!3892685))

(declare-fun m!3892687 () Bool)

(assert (=> d!1004275 m!3892687))

(assert (=> b!3477344 d!1004275))

(declare-fun e!2153970 () Bool)

(declare-fun lt!1183748 () List!37351)

(declare-fun b!3477436 () Bool)

(assert (=> b!3477436 (= e!2153970 (or (not (= (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 tokens!494)) separatorToken!241) Nil!37227)) (= lt!1183748 (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) lt!1183732))))))

(declare-fun b!3477435 () Bool)

(declare-fun res!1402957 () Bool)

(assert (=> b!3477435 (=> (not res!1402957) (not e!2153970))))

(assert (=> b!3477435 (= res!1402957 (= (size!28267 lt!1183748) (+ (size!28267 (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) lt!1183732)) (size!28267 (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 tokens!494)) separatorToken!241)))))))

(declare-fun b!3477433 () Bool)

(declare-fun e!2153971 () List!37351)

(assert (=> b!3477433 (= e!2153971 (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 tokens!494)) separatorToken!241))))

(declare-fun b!3477434 () Bool)

(assert (=> b!3477434 (= e!2153971 (Cons!37227 (h!42647 (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) lt!1183732)) (++!9193 (t!275184 (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) lt!1183732)) (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 tokens!494)) separatorToken!241))))))

(declare-fun d!1004277 () Bool)

(assert (=> d!1004277 e!2153970))

(declare-fun res!1402958 () Bool)

(assert (=> d!1004277 (=> (not res!1402958) (not e!2153970))))

(assert (=> d!1004277 (= res!1402958 (= (content!5211 lt!1183748) ((_ map or) (content!5211 (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) lt!1183732)) (content!5211 (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 tokens!494)) separatorToken!241)))))))

(assert (=> d!1004277 (= lt!1183748 e!2153971)))

(declare-fun c!596357 () Bool)

(assert (=> d!1004277 (= c!596357 ((_ is Nil!37227) (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) lt!1183732)))))

(assert (=> d!1004277 (= (++!9193 (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) lt!1183732) (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 tokens!494)) separatorToken!241)) lt!1183748)))

(assert (= (and d!1004277 c!596357) b!3477433))

(assert (= (and d!1004277 (not c!596357)) b!3477434))

(assert (= (and d!1004277 res!1402958) b!3477435))

(assert (= (and b!3477435 res!1402957) b!3477436))

(declare-fun m!3892689 () Bool)

(assert (=> b!3477435 m!3892689))

(assert (=> b!3477435 m!3892599))

(declare-fun m!3892691 () Bool)

(assert (=> b!3477435 m!3892691))

(assert (=> b!3477435 m!3892601))

(declare-fun m!3892693 () Bool)

(assert (=> b!3477435 m!3892693))

(assert (=> b!3477434 m!3892601))

(declare-fun m!3892695 () Bool)

(assert (=> b!3477434 m!3892695))

(declare-fun m!3892697 () Bool)

(assert (=> d!1004277 m!3892697))

(assert (=> d!1004277 m!3892599))

(declare-fun m!3892699 () Bool)

(assert (=> d!1004277 m!3892699))

(assert (=> d!1004277 m!3892601))

(declare-fun m!3892701 () Bool)

(assert (=> d!1004277 m!3892701))

(assert (=> b!3477344 d!1004277))

(declare-fun d!1004279 () Bool)

(declare-fun lt!1183751 () BalanceConc!22172)

(assert (=> d!1004279 (= (list!13573 lt!1183751) (originalCharacters!6166 separatorToken!241))))

(declare-fun dynLambda!15743 (Int TokenValue!5682) BalanceConc!22172)

(assert (=> d!1004279 (= lt!1183751 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (value!175842 separatorToken!241)))))

(assert (=> d!1004279 (= (charsOf!3466 separatorToken!241) lt!1183751)))

(declare-fun b_lambda!100483 () Bool)

(assert (=> (not b_lambda!100483) (not d!1004279)))

(declare-fun t!275188 () Bool)

(declare-fun tb!190631 () Bool)

(assert (=> (and b!3477341 (= (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241)))) t!275188) tb!190631))

(declare-fun b!3477441 () Bool)

(declare-fun e!2153974 () Bool)

(declare-fun tp!1080685 () Bool)

(declare-fun inv!50422 (Conc!11279) Bool)

(assert (=> b!3477441 (= e!2153974 (and (inv!50422 (c!596343 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (value!175842 separatorToken!241)))) tp!1080685))))

(declare-fun result!234724 () Bool)

(declare-fun inv!50423 (BalanceConc!22172) Bool)

(assert (=> tb!190631 (= result!234724 (and (inv!50423 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (value!175842 separatorToken!241))) e!2153974))))

(assert (= tb!190631 b!3477441))

(declare-fun m!3892703 () Bool)

(assert (=> b!3477441 m!3892703))

(declare-fun m!3892705 () Bool)

(assert (=> tb!190631 m!3892705))

(assert (=> d!1004279 t!275188))

(declare-fun b_and!245295 () Bool)

(assert (= b_and!245285 (and (=> t!275188 result!234724) b_and!245295)))

(declare-fun t!275190 () Bool)

(declare-fun tb!190633 () Bool)

(assert (=> (and b!3477347 (= (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241)))) t!275190) tb!190633))

(declare-fun result!234728 () Bool)

(assert (= result!234728 result!234724))

(assert (=> d!1004279 t!275190))

(declare-fun b_and!245297 () Bool)

(assert (= b_and!245289 (and (=> t!275190 result!234728) b_and!245297)))

(declare-fun tb!190635 () Bool)

(declare-fun t!275192 () Bool)

(assert (=> (and b!3477378 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241)))) t!275192) tb!190635))

(declare-fun result!234730 () Bool)

(assert (= result!234730 result!234724))

(assert (=> d!1004279 t!275192))

(declare-fun b_and!245299 () Bool)

(assert (= b_and!245293 (and (=> t!275192 result!234730) b_and!245299)))

(declare-fun m!3892707 () Bool)

(assert (=> d!1004279 m!3892707))

(declare-fun m!3892709 () Bool)

(assert (=> d!1004279 m!3892709))

(assert (=> b!3477344 d!1004279))

(declare-fun d!1004281 () Bool)

(declare-fun list!13576 (Conc!11279) List!37351)

(assert (=> d!1004281 (= (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) (list!13576 (c!596343 (charsOf!3466 (h!42649 (t!275186 tokens!494))))))))

(declare-fun bs!561764 () Bool)

(assert (= bs!561764 d!1004281))

(declare-fun m!3892711 () Bool)

(assert (=> bs!561764 m!3892711))

(assert (=> b!3477344 d!1004281))

(declare-fun d!1004283 () Bool)

(declare-fun c!596358 () Bool)

(assert (=> d!1004283 (= c!596358 ((_ is Cons!37229) (t!275186 (t!275186 tokens!494))))))

(declare-fun e!2153975 () List!37351)

(assert (=> d!1004283 (= (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 tokens!494)) separatorToken!241) e!2153975)))

(declare-fun b!3477442 () Bool)

(assert (=> b!3477442 (= e!2153975 (++!9193 (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 (t!275186 tokens!494))))) (list!13573 (charsOf!3466 separatorToken!241))) (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 (t!275186 tokens!494))) separatorToken!241)))))

(declare-fun b!3477443 () Bool)

(assert (=> b!3477443 (= e!2153975 Nil!37227)))

(assert (= (and d!1004283 c!596358) b!3477442))

(assert (= (and d!1004283 (not c!596358)) b!3477443))

(declare-fun m!3892713 () Bool)

(assert (=> b!3477442 m!3892713))

(declare-fun m!3892715 () Bool)

(assert (=> b!3477442 m!3892715))

(assert (=> b!3477442 m!3892713))

(declare-fun m!3892717 () Bool)

(assert (=> b!3477442 m!3892717))

(assert (=> b!3477442 m!3892605))

(assert (=> b!3477442 m!3892605))

(assert (=> b!3477442 m!3892617))

(declare-fun m!3892719 () Bool)

(assert (=> b!3477442 m!3892719))

(assert (=> b!3477442 m!3892715))

(declare-fun m!3892721 () Bool)

(assert (=> b!3477442 m!3892721))

(assert (=> b!3477442 m!3892717))

(assert (=> b!3477442 m!3892617))

(assert (=> b!3477442 m!3892719))

(assert (=> b!3477344 d!1004283))

(declare-fun b!3477447 () Bool)

(declare-fun e!2153976 () Bool)

(declare-fun lt!1183752 () List!37351)

(assert (=> b!3477447 (= e!2153976 (or (not (= lt!1183732 Nil!37227)) (= lt!1183752 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))))))))

(declare-fun b!3477446 () Bool)

(declare-fun res!1402959 () Bool)

(assert (=> b!3477446 (=> (not res!1402959) (not e!2153976))))

(assert (=> b!3477446 (= res!1402959 (= (size!28267 lt!1183752) (+ (size!28267 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494))))) (size!28267 lt!1183732))))))

(declare-fun b!3477444 () Bool)

(declare-fun e!2153977 () List!37351)

(assert (=> b!3477444 (= e!2153977 lt!1183732)))

(declare-fun b!3477445 () Bool)

(assert (=> b!3477445 (= e!2153977 (Cons!37227 (h!42647 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494))))) (++!9193 (t!275184 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494))))) lt!1183732)))))

(declare-fun d!1004285 () Bool)

(assert (=> d!1004285 e!2153976))

(declare-fun res!1402960 () Bool)

(assert (=> d!1004285 (=> (not res!1402960) (not e!2153976))))

(assert (=> d!1004285 (= res!1402960 (= (content!5211 lt!1183752) ((_ map or) (content!5211 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494))))) (content!5211 lt!1183732))))))

(assert (=> d!1004285 (= lt!1183752 e!2153977)))

(declare-fun c!596359 () Bool)

(assert (=> d!1004285 (= c!596359 ((_ is Nil!37227) (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494))))))))

(assert (=> d!1004285 (= (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) lt!1183732) lt!1183752)))

(assert (= (and d!1004285 c!596359) b!3477444))

(assert (= (and d!1004285 (not c!596359)) b!3477445))

(assert (= (and d!1004285 res!1402960) b!3477446))

(assert (= (and b!3477446 res!1402959) b!3477447))

(declare-fun m!3892723 () Bool)

(assert (=> b!3477446 m!3892723))

(assert (=> b!3477446 m!3892613))

(declare-fun m!3892725 () Bool)

(assert (=> b!3477446 m!3892725))

(assert (=> b!3477446 m!3892677))

(declare-fun m!3892727 () Bool)

(assert (=> b!3477445 m!3892727))

(declare-fun m!3892729 () Bool)

(assert (=> d!1004285 m!3892729))

(assert (=> d!1004285 m!3892613))

(declare-fun m!3892731 () Bool)

(assert (=> d!1004285 m!3892731))

(assert (=> d!1004285 m!3892685))

(assert (=> b!3477344 d!1004285))

(declare-fun d!1004287 () Bool)

(declare-fun c!596360 () Bool)

(assert (=> d!1004287 (= c!596360 ((_ is Cons!37229) (t!275186 tokens!494)))))

(declare-fun e!2153978 () List!37351)

(assert (=> d!1004287 (= (printWithSeparatorTokenList!328 thiss!18206 (t!275186 tokens!494) separatorToken!241) e!2153978)))

(declare-fun b!3477448 () Bool)

(assert (=> b!3477448 (= e!2153978 (++!9193 (++!9193 (list!13573 (charsOf!3466 (h!42649 (t!275186 tokens!494)))) (list!13573 (charsOf!3466 separatorToken!241))) (printWithSeparatorTokenList!328 thiss!18206 (t!275186 (t!275186 tokens!494)) separatorToken!241)))))

(declare-fun b!3477449 () Bool)

(assert (=> b!3477449 (= e!2153978 Nil!37227)))

(assert (= (and d!1004287 c!596360) b!3477448))

(assert (= (and d!1004287 (not c!596360)) b!3477449))

(assert (=> b!3477448 m!3892611))

(assert (=> b!3477448 m!3892601))

(assert (=> b!3477448 m!3892611))

(assert (=> b!3477448 m!3892613))

(assert (=> b!3477448 m!3892605))

(assert (=> b!3477448 m!3892605))

(assert (=> b!3477448 m!3892617))

(declare-fun m!3892733 () Bool)

(assert (=> b!3477448 m!3892733))

(assert (=> b!3477448 m!3892601))

(declare-fun m!3892735 () Bool)

(assert (=> b!3477448 m!3892735))

(assert (=> b!3477448 m!3892613))

(assert (=> b!3477448 m!3892617))

(assert (=> b!3477448 m!3892733))

(assert (=> b!3477344 d!1004287))

(declare-fun d!1004289 () Bool)

(assert (=> d!1004289 (= (list!13573 (charsOf!3466 separatorToken!241)) (list!13576 (c!596343 (charsOf!3466 separatorToken!241))))))

(declare-fun bs!561765 () Bool)

(assert (= bs!561765 d!1004289))

(declare-fun m!3892737 () Bool)

(assert (=> bs!561765 m!3892737))

(assert (=> b!3477344 d!1004289))

(declare-fun d!1004291 () Bool)

(declare-fun lt!1183753 () BalanceConc!22172)

(assert (=> d!1004291 (= (list!13573 lt!1183753) (originalCharacters!6166 (h!42649 (t!275186 tokens!494))))))

(assert (=> d!1004291 (= lt!1183753 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (value!175842 (h!42649 (t!275186 tokens!494)))))))

(assert (=> d!1004291 (= (charsOf!3466 (h!42649 (t!275186 tokens!494))) lt!1183753)))

(declare-fun b_lambda!100485 () Bool)

(assert (=> (not b_lambda!100485) (not d!1004291)))

(declare-fun t!275194 () Bool)

(declare-fun tb!190637 () Bool)

(assert (=> (and b!3477341 (= (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494)))))) t!275194) tb!190637))

(declare-fun b!3477450 () Bool)

(declare-fun e!2153979 () Bool)

(declare-fun tp!1080686 () Bool)

(assert (=> b!3477450 (= e!2153979 (and (inv!50422 (c!596343 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (value!175842 (h!42649 (t!275186 tokens!494)))))) tp!1080686))))

(declare-fun result!234732 () Bool)

(assert (=> tb!190637 (= result!234732 (and (inv!50423 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (value!175842 (h!42649 (t!275186 tokens!494))))) e!2153979))))

(assert (= tb!190637 b!3477450))

(declare-fun m!3892739 () Bool)

(assert (=> b!3477450 m!3892739))

(declare-fun m!3892741 () Bool)

(assert (=> tb!190637 m!3892741))

(assert (=> d!1004291 t!275194))

(declare-fun b_and!245301 () Bool)

(assert (= b_and!245295 (and (=> t!275194 result!234732) b_and!245301)))

(declare-fun tb!190639 () Bool)

(declare-fun t!275196 () Bool)

(assert (=> (and b!3477347 (= (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494)))))) t!275196) tb!190639))

(declare-fun result!234734 () Bool)

(assert (= result!234734 result!234732))

(assert (=> d!1004291 t!275196))

(declare-fun b_and!245303 () Bool)

(assert (= b_and!245297 (and (=> t!275196 result!234734) b_and!245303)))

(declare-fun t!275198 () Bool)

(declare-fun tb!190641 () Bool)

(assert (=> (and b!3477378 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494)))))) t!275198) tb!190641))

(declare-fun result!234736 () Bool)

(assert (= result!234736 result!234732))

(assert (=> d!1004291 t!275198))

(declare-fun b_and!245305 () Bool)

(assert (= b_and!245299 (and (=> t!275198 result!234736) b_and!245305)))

(declare-fun m!3892743 () Bool)

(assert (=> d!1004291 m!3892743))

(declare-fun m!3892745 () Bool)

(assert (=> d!1004291 m!3892745))

(assert (=> b!3477344 d!1004291))

(declare-fun d!1004293 () Bool)

(declare-fun lt!1183756 () Bool)

(assert (=> d!1004293 (= lt!1183756 (select (content!5211 lt!1183718) lt!1183724))))

(declare-fun e!2153985 () Bool)

(assert (=> d!1004293 (= lt!1183756 e!2153985)))

(declare-fun res!1402965 () Bool)

(assert (=> d!1004293 (=> (not res!1402965) (not e!2153985))))

(assert (=> d!1004293 (= res!1402965 ((_ is Cons!37227) lt!1183718))))

(assert (=> d!1004293 (= (contains!6931 lt!1183718 lt!1183724) lt!1183756)))

(declare-fun b!3477455 () Bool)

(declare-fun e!2153984 () Bool)

(assert (=> b!3477455 (= e!2153985 e!2153984)))

(declare-fun res!1402966 () Bool)

(assert (=> b!3477455 (=> res!1402966 e!2153984)))

(assert (=> b!3477455 (= res!1402966 (= (h!42647 lt!1183718) lt!1183724))))

(declare-fun b!3477456 () Bool)

(assert (=> b!3477456 (= e!2153984 (contains!6931 (t!275184 lt!1183718) lt!1183724))))

(assert (= (and d!1004293 res!1402965) b!3477455))

(assert (= (and b!3477455 (not res!1402966)) b!3477456))

(declare-fun m!3892747 () Bool)

(assert (=> d!1004293 m!3892747))

(declare-fun m!3892749 () Bool)

(assert (=> d!1004293 m!3892749))

(declare-fun m!3892751 () Bool)

(assert (=> b!3477456 m!3892751))

(assert (=> b!3477365 d!1004293))

(declare-fun d!1004295 () Bool)

(assert (=> d!1004295 (= (head!7341 lt!1183716) (h!42647 lt!1183716))))

(assert (=> b!3477365 d!1004295))

(declare-fun d!1004297 () Bool)

(declare-fun lt!1183757 () Bool)

(assert (=> d!1004297 (= lt!1183757 (select (content!5211 lt!1183729) lt!1183724))))

(declare-fun e!2153987 () Bool)

(assert (=> d!1004297 (= lt!1183757 e!2153987)))

(declare-fun res!1402967 () Bool)

(assert (=> d!1004297 (=> (not res!1402967) (not e!2153987))))

(assert (=> d!1004297 (= res!1402967 ((_ is Cons!37227) lt!1183729))))

(assert (=> d!1004297 (= (contains!6931 lt!1183729 lt!1183724) lt!1183757)))

(declare-fun b!3477457 () Bool)

(declare-fun e!2153986 () Bool)

(assert (=> b!3477457 (= e!2153987 e!2153986)))

(declare-fun res!1402968 () Bool)

(assert (=> b!3477457 (=> res!1402968 e!2153986)))

(assert (=> b!3477457 (= res!1402968 (= (h!42647 lt!1183729) lt!1183724))))

(declare-fun b!3477458 () Bool)

(assert (=> b!3477458 (= e!2153986 (contains!6931 (t!275184 lt!1183729) lt!1183724))))

(assert (= (and d!1004297 res!1402967) b!3477457))

(assert (= (and b!3477457 (not res!1402968)) b!3477458))

(declare-fun m!3892753 () Bool)

(assert (=> d!1004297 m!3892753))

(declare-fun m!3892755 () Bool)

(assert (=> d!1004297 m!3892755))

(declare-fun m!3892757 () Bool)

(assert (=> b!3477458 m!3892757))

(assert (=> b!3477343 d!1004297))

(declare-fun d!1004299 () Bool)

(assert (=> d!1004299 (not (matchR!4795 (regex!5452 (rule!8052 separatorToken!241)) lt!1183732))))

(declare-fun lt!1183760 () Unit!52658)

(declare-fun choose!20133 (Regex!10211 List!37351 C!20608) Unit!52658)

(assert (=> d!1004299 (= lt!1183760 (choose!20133 (regex!5452 (rule!8052 separatorToken!241)) lt!1183732 lt!1183731))))

(declare-fun validRegex!4653 (Regex!10211) Bool)

(assert (=> d!1004299 (validRegex!4653 (regex!5452 (rule!8052 separatorToken!241)))))

(assert (=> d!1004299 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!510 (regex!5452 (rule!8052 separatorToken!241)) lt!1183732 lt!1183731) lt!1183760)))

(declare-fun bs!561766 () Bool)

(assert (= bs!561766 d!1004299))

(assert (=> bs!561766 m!3892557))

(declare-fun m!3892759 () Bool)

(assert (=> bs!561766 m!3892759))

(declare-fun m!3892761 () Bool)

(assert (=> bs!561766 m!3892761))

(assert (=> b!3477345 d!1004299))

(declare-fun b!3477503 () Bool)

(declare-fun res!1403008 () Bool)

(declare-fun e!2154017 () Bool)

(assert (=> b!3477503 (=> (not res!1403008) (not e!2154017))))

(declare-fun call!250843 () Bool)

(assert (=> b!3477503 (= res!1403008 (not call!250843))))

(declare-fun b!3477504 () Bool)

(declare-fun e!2154016 () Bool)

(assert (=> b!3477504 (= e!2154016 (not (= (head!7341 lt!1183732) (c!596342 (regex!5452 (rule!8052 separatorToken!241))))))))

(declare-fun b!3477505 () Bool)

(assert (=> b!3477505 (= e!2154017 (= (head!7341 lt!1183732) (c!596342 (regex!5452 (rule!8052 separatorToken!241)))))))

(declare-fun b!3477506 () Bool)

(declare-fun res!1403006 () Bool)

(declare-fun e!2154015 () Bool)

(assert (=> b!3477506 (=> res!1403006 e!2154015)))

(assert (=> b!3477506 (= res!1403006 e!2154017)))

(declare-fun res!1403003 () Bool)

(assert (=> b!3477506 (=> (not res!1403003) (not e!2154017))))

(declare-fun lt!1183772 () Bool)

(assert (=> b!3477506 (= res!1403003 lt!1183772)))

(declare-fun d!1004301 () Bool)

(declare-fun e!2154018 () Bool)

(assert (=> d!1004301 e!2154018))

(declare-fun c!596370 () Bool)

(assert (=> d!1004301 (= c!596370 ((_ is EmptyExpr!10211) (regex!5452 (rule!8052 separatorToken!241))))))

(declare-fun e!2154020 () Bool)

(assert (=> d!1004301 (= lt!1183772 e!2154020)))

(declare-fun c!596369 () Bool)

(assert (=> d!1004301 (= c!596369 (isEmpty!21614 lt!1183732))))

(assert (=> d!1004301 (validRegex!4653 (regex!5452 (rule!8052 separatorToken!241)))))

(assert (=> d!1004301 (= (matchR!4795 (regex!5452 (rule!8052 separatorToken!241)) lt!1183732) lt!1183772)))

(declare-fun b!3477507 () Bool)

(declare-fun res!1403001 () Bool)

(assert (=> b!3477507 (=> res!1403001 e!2154016)))

(declare-fun tail!5450 (List!37351) List!37351)

(assert (=> b!3477507 (= res!1403001 (not (isEmpty!21614 (tail!5450 lt!1183732))))))

(declare-fun b!3477508 () Bool)

(declare-fun derivativeStep!3050 (Regex!10211 C!20608) Regex!10211)

(assert (=> b!3477508 (= e!2154020 (matchR!4795 (derivativeStep!3050 (regex!5452 (rule!8052 separatorToken!241)) (head!7341 lt!1183732)) (tail!5450 lt!1183732)))))

(declare-fun b!3477509 () Bool)

(declare-fun e!2154019 () Bool)

(assert (=> b!3477509 (= e!2154019 e!2154016)))

(declare-fun res!1403002 () Bool)

(assert (=> b!3477509 (=> res!1403002 e!2154016)))

(assert (=> b!3477509 (= res!1403002 call!250843)))

(declare-fun b!3477510 () Bool)

(assert (=> b!3477510 (= e!2154018 (= lt!1183772 call!250843))))

(declare-fun bm!250838 () Bool)

(assert (=> bm!250838 (= call!250843 (isEmpty!21614 lt!1183732))))

(declare-fun b!3477511 () Bool)

(declare-fun res!1403004 () Bool)

(assert (=> b!3477511 (=> res!1403004 e!2154015)))

(assert (=> b!3477511 (= res!1403004 (not ((_ is ElementMatch!10211) (regex!5452 (rule!8052 separatorToken!241)))))))

(declare-fun e!2154021 () Bool)

(assert (=> b!3477511 (= e!2154021 e!2154015)))

(declare-fun b!3477512 () Bool)

(declare-fun nullable!3497 (Regex!10211) Bool)

(assert (=> b!3477512 (= e!2154020 (nullable!3497 (regex!5452 (rule!8052 separatorToken!241))))))

(declare-fun b!3477513 () Bool)

(assert (=> b!3477513 (= e!2154021 (not lt!1183772))))

(declare-fun b!3477514 () Bool)

(assert (=> b!3477514 (= e!2154018 e!2154021)))

(declare-fun c!596368 () Bool)

(assert (=> b!3477514 (= c!596368 ((_ is EmptyLang!10211) (regex!5452 (rule!8052 separatorToken!241))))))

(declare-fun b!3477515 () Bool)

(declare-fun res!1403005 () Bool)

(assert (=> b!3477515 (=> (not res!1403005) (not e!2154017))))

(assert (=> b!3477515 (= res!1403005 (isEmpty!21614 (tail!5450 lt!1183732)))))

(declare-fun b!3477516 () Bool)

(assert (=> b!3477516 (= e!2154015 e!2154019)))

(declare-fun res!1403007 () Bool)

(assert (=> b!3477516 (=> (not res!1403007) (not e!2154019))))

(assert (=> b!3477516 (= res!1403007 (not lt!1183772))))

(assert (= (and d!1004301 c!596369) b!3477512))

(assert (= (and d!1004301 (not c!596369)) b!3477508))

(assert (= (and d!1004301 c!596370) b!3477510))

(assert (= (and d!1004301 (not c!596370)) b!3477514))

(assert (= (and b!3477514 c!596368) b!3477513))

(assert (= (and b!3477514 (not c!596368)) b!3477511))

(assert (= (and b!3477511 (not res!1403004)) b!3477506))

(assert (= (and b!3477506 res!1403003) b!3477503))

(assert (= (and b!3477503 res!1403008) b!3477515))

(assert (= (and b!3477515 res!1403005) b!3477505))

(assert (= (and b!3477506 (not res!1403006)) b!3477516))

(assert (= (and b!3477516 res!1403007) b!3477509))

(assert (= (and b!3477509 (not res!1403002)) b!3477507))

(assert (= (and b!3477507 (not res!1403001)) b!3477504))

(assert (= (or b!3477510 b!3477503 b!3477509) bm!250838))

(assert (=> b!3477508 m!3892483))

(assert (=> b!3477508 m!3892483))

(declare-fun m!3892793 () Bool)

(assert (=> b!3477508 m!3892793))

(declare-fun m!3892795 () Bool)

(assert (=> b!3477508 m!3892795))

(assert (=> b!3477508 m!3892793))

(assert (=> b!3477508 m!3892795))

(declare-fun m!3892797 () Bool)

(assert (=> b!3477508 m!3892797))

(assert (=> b!3477515 m!3892795))

(assert (=> b!3477515 m!3892795))

(declare-fun m!3892799 () Bool)

(assert (=> b!3477515 m!3892799))

(assert (=> b!3477505 m!3892483))

(declare-fun m!3892803 () Bool)

(assert (=> d!1004301 m!3892803))

(assert (=> d!1004301 m!3892761))

(declare-fun m!3892807 () Bool)

(assert (=> b!3477512 m!3892807))

(assert (=> b!3477507 m!3892795))

(assert (=> b!3477507 m!3892795))

(assert (=> b!3477507 m!3892799))

(assert (=> b!3477504 m!3892483))

(assert (=> bm!250838 m!3892803))

(assert (=> b!3477345 d!1004301))

(declare-fun d!1004317 () Bool)

(assert (=> d!1004317 (= (isEmpty!21614 (_2!21627 lt!1183733)) ((_ is Nil!37227) (_2!21627 lt!1183733)))))

(assert (=> b!3477366 d!1004317))

(declare-fun d!1004321 () Bool)

(declare-fun lt!1183779 () Bool)

(assert (=> d!1004321 (= lt!1183779 (isEmpty!21614 (list!13573 (_2!21626 lt!1183743))))))

(declare-fun isEmpty!21619 (Conc!11279) Bool)

(assert (=> d!1004321 (= lt!1183779 (isEmpty!21619 (c!596343 (_2!21626 lt!1183743))))))

(assert (=> d!1004321 (= (isEmpty!21612 (_2!21626 lt!1183743)) lt!1183779)))

(declare-fun bs!561767 () Bool)

(assert (= bs!561767 d!1004321))

(declare-fun m!3892821 () Bool)

(assert (=> bs!561767 m!3892821))

(assert (=> bs!561767 m!3892821))

(declare-fun m!3892823 () Bool)

(assert (=> bs!561767 m!3892823))

(declare-fun m!3892825 () Bool)

(assert (=> bs!561767 m!3892825))

(assert (=> b!3477362 d!1004321))

(declare-fun b!3477549 () Bool)

(declare-fun e!2154043 () Bool)

(declare-fun inv!16 (TokenValue!5682) Bool)

(assert (=> b!3477549 (= e!2154043 (inv!16 (value!175842 (h!42649 tokens!494))))))

(declare-fun b!3477550 () Bool)

(declare-fun res!1403021 () Bool)

(declare-fun e!2154041 () Bool)

(assert (=> b!3477550 (=> res!1403021 e!2154041)))

(assert (=> b!3477550 (= res!1403021 (not ((_ is IntegerValue!17048) (value!175842 (h!42649 tokens!494)))))))

(declare-fun e!2154042 () Bool)

(assert (=> b!3477550 (= e!2154042 e!2154041)))

(declare-fun d!1004325 () Bool)

(declare-fun c!596382 () Bool)

(assert (=> d!1004325 (= c!596382 ((_ is IntegerValue!17046) (value!175842 (h!42649 tokens!494))))))

(assert (=> d!1004325 (= (inv!21 (value!175842 (h!42649 tokens!494))) e!2154043)))

(declare-fun b!3477551 () Bool)

(declare-fun inv!15 (TokenValue!5682) Bool)

(assert (=> b!3477551 (= e!2154041 (inv!15 (value!175842 (h!42649 tokens!494))))))

(declare-fun b!3477552 () Bool)

(declare-fun inv!17 (TokenValue!5682) Bool)

(assert (=> b!3477552 (= e!2154042 (inv!17 (value!175842 (h!42649 tokens!494))))))

(declare-fun b!3477553 () Bool)

(assert (=> b!3477553 (= e!2154043 e!2154042)))

(declare-fun c!596381 () Bool)

(assert (=> b!3477553 (= c!596381 ((_ is IntegerValue!17047) (value!175842 (h!42649 tokens!494))))))

(assert (= (and d!1004325 c!596382) b!3477549))

(assert (= (and d!1004325 (not c!596382)) b!3477553))

(assert (= (and b!3477553 c!596381) b!3477552))

(assert (= (and b!3477553 (not c!596381)) b!3477550))

(assert (= (and b!3477550 (not res!1403021)) b!3477551))

(declare-fun m!3892841 () Bool)

(assert (=> b!3477549 m!3892841))

(declare-fun m!3892843 () Bool)

(assert (=> b!3477551 m!3892843))

(declare-fun m!3892845 () Bool)

(assert (=> b!3477552 m!3892845))

(assert (=> b!3477364 d!1004325))

(declare-fun lt!1183786 () List!37351)

(declare-fun e!2154047 () Bool)

(declare-fun b!3477562 () Bool)

(assert (=> b!3477562 (= e!2154047 (or (not (= lt!1183716 Nil!37227)) (= lt!1183786 lt!1183726)))))

(declare-fun b!3477561 () Bool)

(declare-fun res!1403022 () Bool)

(assert (=> b!3477561 (=> (not res!1403022) (not e!2154047))))

(assert (=> b!3477561 (= res!1403022 (= (size!28267 lt!1183786) (+ (size!28267 lt!1183726) (size!28267 lt!1183716))))))

(declare-fun b!3477559 () Bool)

(declare-fun e!2154048 () List!37351)

(assert (=> b!3477559 (= e!2154048 lt!1183716)))

(declare-fun b!3477560 () Bool)

(assert (=> b!3477560 (= e!2154048 (Cons!37227 (h!42647 lt!1183726) (++!9193 (t!275184 lt!1183726) lt!1183716)))))

(declare-fun d!1004329 () Bool)

(assert (=> d!1004329 e!2154047))

(declare-fun res!1403023 () Bool)

(assert (=> d!1004329 (=> (not res!1403023) (not e!2154047))))

(assert (=> d!1004329 (= res!1403023 (= (content!5211 lt!1183786) ((_ map or) (content!5211 lt!1183726) (content!5211 lt!1183716))))))

(assert (=> d!1004329 (= lt!1183786 e!2154048)))

(declare-fun c!596383 () Bool)

(assert (=> d!1004329 (= c!596383 ((_ is Nil!37227) lt!1183726))))

(assert (=> d!1004329 (= (++!9193 lt!1183726 lt!1183716) lt!1183786)))

(assert (= (and d!1004329 c!596383) b!3477559))

(assert (= (and d!1004329 (not c!596383)) b!3477560))

(assert (= (and d!1004329 res!1403023) b!3477561))

(assert (= (and b!3477561 res!1403022) b!3477562))

(declare-fun m!3892855 () Bool)

(assert (=> b!3477561 m!3892855))

(assert (=> b!3477561 m!3892477))

(declare-fun m!3892857 () Bool)

(assert (=> b!3477561 m!3892857))

(declare-fun m!3892859 () Bool)

(assert (=> b!3477560 m!3892859))

(declare-fun m!3892861 () Bool)

(assert (=> d!1004329 m!3892861))

(declare-fun m!3892863 () Bool)

(assert (=> d!1004329 m!3892863))

(declare-fun m!3892865 () Bool)

(assert (=> d!1004329 m!3892865))

(assert (=> b!3477342 d!1004329))

(declare-fun d!1004333 () Bool)

(assert (=> d!1004333 (= (++!9193 (++!9193 lt!1183726 lt!1183732) lt!1183708) (++!9193 lt!1183726 (++!9193 lt!1183732 lt!1183708)))))

(declare-fun lt!1183792 () Unit!52658)

(declare-fun choose!20136 (List!37351 List!37351 List!37351) Unit!52658)

(assert (=> d!1004333 (= lt!1183792 (choose!20136 lt!1183726 lt!1183732 lt!1183708))))

(assert (=> d!1004333 (= (lemmaConcatAssociativity!1976 lt!1183726 lt!1183732 lt!1183708) lt!1183792)))

(declare-fun bs!561770 () Bool)

(assert (= bs!561770 d!1004333))

(declare-fun m!3892913 () Bool)

(assert (=> bs!561770 m!3892913))

(assert (=> bs!561770 m!3892615))

(assert (=> bs!561770 m!3892535))

(assert (=> bs!561770 m!3892537))

(assert (=> bs!561770 m!3892535))

(assert (=> bs!561770 m!3892615))

(declare-fun m!3892919 () Bool)

(assert (=> bs!561770 m!3892919))

(assert (=> b!3477342 d!1004333))

(declare-fun d!1004349 () Bool)

(declare-fun lt!1183842 () Bool)

(declare-fun e!2154106 () Bool)

(assert (=> d!1004349 (= lt!1183842 e!2154106)))

(declare-fun res!1403087 () Bool)

(assert (=> d!1004349 (=> (not res!1403087) (not e!2154106))))

(declare-fun list!13577 (BalanceConc!22174) List!37353)

(assert (=> d!1004349 (= res!1403087 (= (list!13577 (_1!21626 (lex!2367 thiss!18206 rules!2135 (print!2106 thiss!18206 (singletonSeq!2548 (h!42649 tokens!494)))))) (list!13577 (singletonSeq!2548 (h!42649 tokens!494)))))))

(declare-fun e!2154105 () Bool)

(assert (=> d!1004349 (= lt!1183842 e!2154105)))

(declare-fun res!1403089 () Bool)

(assert (=> d!1004349 (=> (not res!1403089) (not e!2154105))))

(declare-fun lt!1183841 () tuple2!36984)

(assert (=> d!1004349 (= res!1403089 (= (size!28266 (_1!21626 lt!1183841)) 1))))

(assert (=> d!1004349 (= lt!1183841 (lex!2367 thiss!18206 rules!2135 (print!2106 thiss!18206 (singletonSeq!2548 (h!42649 tokens!494)))))))

(assert (=> d!1004349 (not (isEmpty!21615 rules!2135))))

(assert (=> d!1004349 (= (rulesProduceIndividualToken!2533 thiss!18206 rules!2135 (h!42649 tokens!494)) lt!1183842)))

(declare-fun b!3477657 () Bool)

(declare-fun res!1403088 () Bool)

(assert (=> b!3477657 (=> (not res!1403088) (not e!2154105))))

(assert (=> b!3477657 (= res!1403088 (= (apply!8801 (_1!21626 lt!1183841) 0) (h!42649 tokens!494)))))

(declare-fun b!3477658 () Bool)

(assert (=> b!3477658 (= e!2154105 (isEmpty!21612 (_2!21626 lt!1183841)))))

(declare-fun b!3477659 () Bool)

(assert (=> b!3477659 (= e!2154106 (isEmpty!21612 (_2!21626 (lex!2367 thiss!18206 rules!2135 (print!2106 thiss!18206 (singletonSeq!2548 (h!42649 tokens!494)))))))))

(assert (= (and d!1004349 res!1403089) b!3477657))

(assert (= (and b!3477657 res!1403088) b!3477658))

(assert (= (and d!1004349 res!1403087) b!3477659))

(assert (=> d!1004349 m!3892565))

(declare-fun m!3893039 () Bool)

(assert (=> d!1004349 m!3893039))

(declare-fun m!3893041 () Bool)

(assert (=> d!1004349 m!3893041))

(assert (=> d!1004349 m!3892565))

(declare-fun m!3893043 () Bool)

(assert (=> d!1004349 m!3893043))

(declare-fun m!3893045 () Bool)

(assert (=> d!1004349 m!3893045))

(declare-fun m!3893047 () Bool)

(assert (=> d!1004349 m!3893047))

(assert (=> d!1004349 m!3892647))

(assert (=> d!1004349 m!3892565))

(assert (=> d!1004349 m!3893045))

(declare-fun m!3893049 () Bool)

(assert (=> b!3477657 m!3893049))

(declare-fun m!3893051 () Bool)

(assert (=> b!3477658 m!3893051))

(assert (=> b!3477659 m!3892565))

(assert (=> b!3477659 m!3892565))

(assert (=> b!3477659 m!3893045))

(assert (=> b!3477659 m!3893045))

(assert (=> b!3477659 m!3893047))

(declare-fun m!3893053 () Bool)

(assert (=> b!3477659 m!3893053))

(assert (=> b!3477363 d!1004349))

(declare-fun d!1004383 () Bool)

(declare-fun res!1403094 () Bool)

(declare-fun e!2154111 () Bool)

(assert (=> d!1004383 (=> res!1403094 e!2154111)))

(assert (=> d!1004383 (= res!1403094 ((_ is Nil!37229) tokens!494))))

(assert (=> d!1004383 (= (forall!7957 tokens!494 lambda!122134) e!2154111)))

(declare-fun b!3477664 () Bool)

(declare-fun e!2154112 () Bool)

(assert (=> b!3477664 (= e!2154111 e!2154112)))

(declare-fun res!1403095 () Bool)

(assert (=> b!3477664 (=> (not res!1403095) (not e!2154112))))

(declare-fun dynLambda!15744 (Int Token!10270) Bool)

(assert (=> b!3477664 (= res!1403095 (dynLambda!15744 lambda!122134 (h!42649 tokens!494)))))

(declare-fun b!3477665 () Bool)

(assert (=> b!3477665 (= e!2154112 (forall!7957 (t!275186 tokens!494) lambda!122134))))

(assert (= (and d!1004383 (not res!1403094)) b!3477664))

(assert (= (and b!3477664 res!1403095) b!3477665))

(declare-fun b_lambda!100497 () Bool)

(assert (=> (not b_lambda!100497) (not b!3477664)))

(declare-fun m!3893055 () Bool)

(assert (=> b!3477664 m!3893055))

(declare-fun m!3893057 () Bool)

(assert (=> b!3477665 m!3893057))

(assert (=> b!3477349 d!1004383))

(declare-fun d!1004385 () Bool)

(assert (=> d!1004385 (= (isEmpty!21614 lt!1183716) ((_ is Nil!37227) lt!1183716))))

(assert (=> b!3477370 d!1004385))

(declare-fun d!1004387 () Bool)

(assert (=> d!1004387 (= (list!13573 (charsOf!3466 (h!42649 tokens!494))) (list!13576 (c!596343 (charsOf!3466 (h!42649 tokens!494)))))))

(declare-fun bs!561778 () Bool)

(assert (= bs!561778 d!1004387))

(declare-fun m!3893059 () Bool)

(assert (=> bs!561778 m!3893059))

(assert (=> b!3477372 d!1004387))

(declare-fun d!1004389 () Bool)

(declare-fun lt!1183843 () BalanceConc!22172)

(assert (=> d!1004389 (= (list!13573 lt!1183843) (originalCharacters!6166 (h!42649 tokens!494)))))

(assert (=> d!1004389 (= lt!1183843 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (value!175842 (h!42649 tokens!494))))))

(assert (=> d!1004389 (= (charsOf!3466 (h!42649 tokens!494)) lt!1183843)))

(declare-fun b_lambda!100499 () Bool)

(assert (=> (not b_lambda!100499) (not d!1004389)))

(declare-fun tb!190655 () Bool)

(declare-fun t!275215 () Bool)

(assert (=> (and b!3477341 (= (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275215) tb!190655))

(declare-fun b!3477674 () Bool)

(declare-fun e!2154117 () Bool)

(declare-fun tp!1080691 () Bool)

(assert (=> b!3477674 (= e!2154117 (and (inv!50422 (c!596343 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (value!175842 (h!42649 tokens!494))))) tp!1080691))))

(declare-fun result!234752 () Bool)

(assert (=> tb!190655 (= result!234752 (and (inv!50423 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (value!175842 (h!42649 tokens!494)))) e!2154117))))

(assert (= tb!190655 b!3477674))

(declare-fun m!3893067 () Bool)

(assert (=> b!3477674 m!3893067))

(declare-fun m!3893069 () Bool)

(assert (=> tb!190655 m!3893069))

(assert (=> d!1004389 t!275215))

(declare-fun b_and!245319 () Bool)

(assert (= b_and!245301 (and (=> t!275215 result!234752) b_and!245319)))

(declare-fun tb!190657 () Bool)

(declare-fun t!275217 () Bool)

(assert (=> (and b!3477347 (= (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275217) tb!190657))

(declare-fun result!234754 () Bool)

(assert (= result!234754 result!234752))

(assert (=> d!1004389 t!275217))

(declare-fun b_and!245321 () Bool)

(assert (= b_and!245303 (and (=> t!275217 result!234754) b_and!245321)))

(declare-fun t!275219 () Bool)

(declare-fun tb!190659 () Bool)

(assert (=> (and b!3477378 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275219) tb!190659))

(declare-fun result!234756 () Bool)

(assert (= result!234756 result!234752))

(assert (=> d!1004389 t!275219))

(declare-fun b_and!245323 () Bool)

(assert (= b_and!245305 (and (=> t!275219 result!234756) b_and!245323)))

(declare-fun m!3893071 () Bool)

(assert (=> d!1004389 m!3893071))

(declare-fun m!3893073 () Bool)

(assert (=> d!1004389 m!3893073))

(assert (=> b!3477372 d!1004389))

(declare-fun d!1004393 () Bool)

(assert (=> d!1004393 (= (inv!50415 (tag!6070 (rule!8052 separatorToken!241))) (= (mod (str.len (value!175841 (tag!6070 (rule!8052 separatorToken!241)))) 2) 0))))

(assert (=> b!3477371 d!1004393))

(declare-fun d!1004395 () Bool)

(declare-fun res!1403098 () Bool)

(declare-fun e!2154120 () Bool)

(assert (=> d!1004395 (=> (not res!1403098) (not e!2154120))))

(declare-fun semiInverseModEq!2293 (Int Int) Bool)

(assert (=> d!1004395 (= res!1403098 (semiInverseModEq!2293 (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (toValue!7688 (transformation!5452 (rule!8052 separatorToken!241)))))))

(assert (=> d!1004395 (= (inv!50419 (transformation!5452 (rule!8052 separatorToken!241))) e!2154120)))

(declare-fun b!3477677 () Bool)

(declare-fun equivClasses!2192 (Int Int) Bool)

(assert (=> b!3477677 (= e!2154120 (equivClasses!2192 (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (toValue!7688 (transformation!5452 (rule!8052 separatorToken!241)))))))

(assert (= (and d!1004395 res!1403098) b!3477677))

(declare-fun m!3893075 () Bool)

(assert (=> d!1004395 m!3893075))

(declare-fun m!3893077 () Bool)

(assert (=> b!3477677 m!3893077))

(assert (=> b!3477371 d!1004395))

(declare-fun d!1004397 () Bool)

(declare-fun lt!1183846 () Token!10270)

(declare-fun apply!8804 (List!37353 Int) Token!10270)

(assert (=> d!1004397 (= lt!1183846 (apply!8804 (list!13577 (_1!21626 lt!1183743)) 0))))

(declare-fun apply!8805 (Conc!11280 Int) Token!10270)

(assert (=> d!1004397 (= lt!1183846 (apply!8805 (c!596344 (_1!21626 lt!1183743)) 0))))

(declare-fun e!2154123 () Bool)

(assert (=> d!1004397 e!2154123))

(declare-fun res!1403101 () Bool)

(assert (=> d!1004397 (=> (not res!1403101) (not e!2154123))))

(assert (=> d!1004397 (= res!1403101 (<= 0 0))))

(assert (=> d!1004397 (= (apply!8801 (_1!21626 lt!1183743) 0) lt!1183846)))

(declare-fun b!3477680 () Bool)

(assert (=> b!3477680 (= e!2154123 (< 0 (size!28266 (_1!21626 lt!1183743))))))

(assert (= (and d!1004397 res!1403101) b!3477680))

(declare-fun m!3893079 () Bool)

(assert (=> d!1004397 m!3893079))

(assert (=> d!1004397 m!3893079))

(declare-fun m!3893081 () Bool)

(assert (=> d!1004397 m!3893081))

(declare-fun m!3893083 () Bool)

(assert (=> d!1004397 m!3893083))

(assert (=> b!3477680 m!3892523))

(assert (=> b!3477368 d!1004397))

(declare-fun b!3477681 () Bool)

(declare-fun e!2154126 () Bool)

(assert (=> b!3477681 (= e!2154126 (inv!16 (value!175842 separatorToken!241)))))

(declare-fun b!3477682 () Bool)

(declare-fun res!1403102 () Bool)

(declare-fun e!2154124 () Bool)

(assert (=> b!3477682 (=> res!1403102 e!2154124)))

(assert (=> b!3477682 (= res!1403102 (not ((_ is IntegerValue!17048) (value!175842 separatorToken!241))))))

(declare-fun e!2154125 () Bool)

(assert (=> b!3477682 (= e!2154125 e!2154124)))

(declare-fun d!1004399 () Bool)

(declare-fun c!596405 () Bool)

(assert (=> d!1004399 (= c!596405 ((_ is IntegerValue!17046) (value!175842 separatorToken!241)))))

(assert (=> d!1004399 (= (inv!21 (value!175842 separatorToken!241)) e!2154126)))

(declare-fun b!3477683 () Bool)

(assert (=> b!3477683 (= e!2154124 (inv!15 (value!175842 separatorToken!241)))))

(declare-fun b!3477684 () Bool)

(assert (=> b!3477684 (= e!2154125 (inv!17 (value!175842 separatorToken!241)))))

(declare-fun b!3477685 () Bool)

(assert (=> b!3477685 (= e!2154126 e!2154125)))

(declare-fun c!596404 () Bool)

(assert (=> b!3477685 (= c!596404 ((_ is IntegerValue!17047) (value!175842 separatorToken!241)))))

(assert (= (and d!1004399 c!596405) b!3477681))

(assert (= (and d!1004399 (not c!596405)) b!3477685))

(assert (= (and b!3477685 c!596404) b!3477684))

(assert (= (and b!3477685 (not c!596404)) b!3477682))

(assert (= (and b!3477682 (not res!1403102)) b!3477683))

(declare-fun m!3893085 () Bool)

(assert (=> b!3477681 m!3893085))

(declare-fun m!3893087 () Bool)

(assert (=> b!3477683 m!3893087))

(declare-fun m!3893089 () Bool)

(assert (=> b!3477684 m!3893089))

(assert (=> b!3477346 d!1004399))

(declare-fun d!1004401 () Bool)

(declare-fun lt!1183848 () Bool)

(declare-fun e!2154128 () Bool)

(assert (=> d!1004401 (= lt!1183848 e!2154128)))

(declare-fun res!1403103 () Bool)

(assert (=> d!1004401 (=> (not res!1403103) (not e!2154128))))

(assert (=> d!1004401 (= res!1403103 (= (list!13577 (_1!21626 (lex!2367 thiss!18206 rules!2135 (print!2106 thiss!18206 (singletonSeq!2548 (h!42649 (t!275186 tokens!494))))))) (list!13577 (singletonSeq!2548 (h!42649 (t!275186 tokens!494))))))))

(declare-fun e!2154127 () Bool)

(assert (=> d!1004401 (= lt!1183848 e!2154127)))

(declare-fun res!1403105 () Bool)

(assert (=> d!1004401 (=> (not res!1403105) (not e!2154127))))

(declare-fun lt!1183847 () tuple2!36984)

(assert (=> d!1004401 (= res!1403105 (= (size!28266 (_1!21626 lt!1183847)) 1))))

(assert (=> d!1004401 (= lt!1183847 (lex!2367 thiss!18206 rules!2135 (print!2106 thiss!18206 (singletonSeq!2548 (h!42649 (t!275186 tokens!494))))))))

(assert (=> d!1004401 (not (isEmpty!21615 rules!2135))))

(assert (=> d!1004401 (= (rulesProduceIndividualToken!2533 thiss!18206 rules!2135 (h!42649 (t!275186 tokens!494))) lt!1183848)))

(declare-fun b!3477686 () Bool)

(declare-fun res!1403104 () Bool)

(assert (=> b!3477686 (=> (not res!1403104) (not e!2154127))))

(assert (=> b!3477686 (= res!1403104 (= (apply!8801 (_1!21626 lt!1183847) 0) (h!42649 (t!275186 tokens!494))))))

(declare-fun b!3477687 () Bool)

(assert (=> b!3477687 (= e!2154127 (isEmpty!21612 (_2!21626 lt!1183847)))))

(declare-fun b!3477688 () Bool)

(assert (=> b!3477688 (= e!2154128 (isEmpty!21612 (_2!21626 (lex!2367 thiss!18206 rules!2135 (print!2106 thiss!18206 (singletonSeq!2548 (h!42649 (t!275186 tokens!494))))))))))

(assert (= (and d!1004401 res!1403105) b!3477686))

(assert (= (and b!3477686 res!1403104) b!3477687))

(assert (= (and d!1004401 res!1403103) b!3477688))

(assert (=> d!1004401 m!3892493))

(declare-fun m!3893091 () Bool)

(assert (=> d!1004401 m!3893091))

(declare-fun m!3893093 () Bool)

(assert (=> d!1004401 m!3893093))

(assert (=> d!1004401 m!3892493))

(declare-fun m!3893095 () Bool)

(assert (=> d!1004401 m!3893095))

(declare-fun m!3893097 () Bool)

(assert (=> d!1004401 m!3893097))

(declare-fun m!3893099 () Bool)

(assert (=> d!1004401 m!3893099))

(assert (=> d!1004401 m!3892647))

(assert (=> d!1004401 m!3892493))

(assert (=> d!1004401 m!3893097))

(declare-fun m!3893101 () Bool)

(assert (=> b!3477686 m!3893101))

(declare-fun m!3893103 () Bool)

(assert (=> b!3477687 m!3893103))

(assert (=> b!3477688 m!3892493))

(assert (=> b!3477688 m!3892493))

(assert (=> b!3477688 m!3893097))

(assert (=> b!3477688 m!3893097))

(assert (=> b!3477688 m!3893099))

(declare-fun m!3893105 () Bool)

(assert (=> b!3477688 m!3893105))

(assert (=> b!3477348 d!1004401))

(declare-fun d!1004403 () Bool)

(declare-fun lt!1183849 () Bool)

(assert (=> d!1004403 (= lt!1183849 (select (content!5211 lt!1183718) lt!1183731))))

(declare-fun e!2154130 () Bool)

(assert (=> d!1004403 (= lt!1183849 e!2154130)))

(declare-fun res!1403106 () Bool)

(assert (=> d!1004403 (=> (not res!1403106) (not e!2154130))))

(assert (=> d!1004403 (= res!1403106 ((_ is Cons!37227) lt!1183718))))

(assert (=> d!1004403 (= (contains!6931 lt!1183718 lt!1183731) lt!1183849)))

(declare-fun b!3477689 () Bool)

(declare-fun e!2154129 () Bool)

(assert (=> b!3477689 (= e!2154130 e!2154129)))

(declare-fun res!1403107 () Bool)

(assert (=> b!3477689 (=> res!1403107 e!2154129)))

(assert (=> b!3477689 (= res!1403107 (= (h!42647 lt!1183718) lt!1183731))))

(declare-fun b!3477690 () Bool)

(assert (=> b!3477690 (= e!2154129 (contains!6931 (t!275184 lt!1183718) lt!1183731))))

(assert (= (and d!1004403 res!1403106) b!3477689))

(assert (= (and b!3477689 (not res!1403107)) b!3477690))

(assert (=> d!1004403 m!3892747))

(declare-fun m!3893107 () Bool)

(assert (=> d!1004403 m!3893107))

(declare-fun m!3893109 () Bool)

(assert (=> b!3477690 m!3893109))

(assert (=> b!3477348 d!1004403))

(declare-fun b!3477703 () Bool)

(declare-fun e!2154139 () Option!7557)

(assert (=> b!3477703 (= e!2154139 (Some!7556 (h!42648 rules!2135)))))

(declare-fun b!3477704 () Bool)

(declare-fun lt!1183858 () Unit!52658)

(declare-fun lt!1183857 () Unit!52658)

(assert (=> b!3477704 (= lt!1183858 lt!1183857)))

(assert (=> b!3477704 (rulesInvariant!4438 thiss!18206 (t!275185 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!442 (LexerInterface!5041 Rule!10704 List!37352) Unit!52658)

(assert (=> b!3477704 (= lt!1183857 (lemmaInvariantOnRulesThenOnTail!442 thiss!18206 (h!42648 rules!2135) (t!275185 rules!2135)))))

(declare-fun e!2154140 () Option!7557)

(assert (=> b!3477704 (= e!2154140 (getRuleFromTag!1095 thiss!18206 (t!275185 rules!2135) (tag!6070 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun b!3477705 () Bool)

(declare-fun e!2154141 () Bool)

(declare-fun e!2154142 () Bool)

(assert (=> b!3477705 (= e!2154141 e!2154142)))

(declare-fun res!1403113 () Bool)

(assert (=> b!3477705 (=> (not res!1403113) (not e!2154142))))

(declare-fun lt!1183856 () Option!7557)

(assert (=> b!3477705 (= res!1403113 (contains!6932 rules!2135 (get!11928 lt!1183856)))))

(declare-fun b!3477706 () Bool)

(assert (=> b!3477706 (= e!2154139 e!2154140)))

(declare-fun c!596411 () Bool)

(assert (=> b!3477706 (= c!596411 (and ((_ is Cons!37228) rules!2135) (not (= (tag!6070 (h!42648 rules!2135)) (tag!6070 (rule!8052 (h!42649 tokens!494)))))))))

(declare-fun b!3477708 () Bool)

(assert (=> b!3477708 (= e!2154142 (= (tag!6070 (get!11928 lt!1183856)) (tag!6070 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun b!3477707 () Bool)

(assert (=> b!3477707 (= e!2154140 None!7556)))

(declare-fun d!1004405 () Bool)

(assert (=> d!1004405 e!2154141))

(declare-fun res!1403112 () Bool)

(assert (=> d!1004405 (=> res!1403112 e!2154141)))

(declare-fun isEmpty!21620 (Option!7557) Bool)

(assert (=> d!1004405 (= res!1403112 (isEmpty!21620 lt!1183856))))

(assert (=> d!1004405 (= lt!1183856 e!2154139)))

(declare-fun c!596410 () Bool)

(assert (=> d!1004405 (= c!596410 (and ((_ is Cons!37228) rules!2135) (= (tag!6070 (h!42648 rules!2135)) (tag!6070 (rule!8052 (h!42649 tokens!494))))))))

(assert (=> d!1004405 (rulesInvariant!4438 thiss!18206 rules!2135)))

(assert (=> d!1004405 (= (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 (h!42649 tokens!494)))) lt!1183856)))

(assert (= (and d!1004405 c!596410) b!3477703))

(assert (= (and d!1004405 (not c!596410)) b!3477706))

(assert (= (and b!3477706 c!596411) b!3477704))

(assert (= (and b!3477706 (not c!596411)) b!3477707))

(assert (= (and d!1004405 (not res!1403112)) b!3477705))

(assert (= (and b!3477705 res!1403113) b!3477708))

(declare-fun m!3893111 () Bool)

(assert (=> b!3477704 m!3893111))

(declare-fun m!3893113 () Bool)

(assert (=> b!3477704 m!3893113))

(declare-fun m!3893115 () Bool)

(assert (=> b!3477704 m!3893115))

(declare-fun m!3893117 () Bool)

(assert (=> b!3477705 m!3893117))

(assert (=> b!3477705 m!3893117))

(declare-fun m!3893119 () Bool)

(assert (=> b!3477705 m!3893119))

(assert (=> b!3477708 m!3893117))

(declare-fun m!3893121 () Bool)

(assert (=> d!1004405 m!3893121))

(assert (=> d!1004405 m!3892659))

(assert (=> b!3477348 d!1004405))

(declare-fun d!1004407 () Bool)

(declare-fun e!2154145 () Bool)

(assert (=> d!1004407 e!2154145))

(declare-fun res!1403116 () Bool)

(assert (=> d!1004407 (=> (not res!1403116) (not e!2154145))))

(declare-fun lt!1183861 () BalanceConc!22174)

(assert (=> d!1004407 (= res!1403116 (= (list!13577 lt!1183861) (Cons!37229 separatorToken!241 Nil!37229)))))

(declare-fun singleton!1130 (Token!10270) BalanceConc!22174)

(assert (=> d!1004407 (= lt!1183861 (singleton!1130 separatorToken!241))))

(assert (=> d!1004407 (= (singletonSeq!2548 separatorToken!241) lt!1183861)))

(declare-fun b!3477711 () Bool)

(declare-fun isBalanced!3429 (Conc!11280) Bool)

(assert (=> b!3477711 (= e!2154145 (isBalanced!3429 (c!596344 lt!1183861)))))

(assert (= (and d!1004407 res!1403116) b!3477711))

(declare-fun m!3893123 () Bool)

(assert (=> d!1004407 m!3893123))

(declare-fun m!3893125 () Bool)

(assert (=> d!1004407 m!3893125))

(declare-fun m!3893127 () Bool)

(assert (=> b!3477711 m!3893127))

(assert (=> b!3477348 d!1004407))

(declare-fun b!3477712 () Bool)

(declare-fun e!2154146 () Option!7557)

(assert (=> b!3477712 (= e!2154146 (Some!7556 (h!42648 rules!2135)))))

(declare-fun b!3477713 () Bool)

(declare-fun lt!1183864 () Unit!52658)

(declare-fun lt!1183863 () Unit!52658)

(assert (=> b!3477713 (= lt!1183864 lt!1183863)))

(assert (=> b!3477713 (rulesInvariant!4438 thiss!18206 (t!275185 rules!2135))))

(assert (=> b!3477713 (= lt!1183863 (lemmaInvariantOnRulesThenOnTail!442 thiss!18206 (h!42648 rules!2135) (t!275185 rules!2135)))))

(declare-fun e!2154147 () Option!7557)

(assert (=> b!3477713 (= e!2154147 (getRuleFromTag!1095 thiss!18206 (t!275185 rules!2135) (tag!6070 (rule!8052 separatorToken!241))))))

(declare-fun b!3477714 () Bool)

(declare-fun e!2154148 () Bool)

(declare-fun e!2154149 () Bool)

(assert (=> b!3477714 (= e!2154148 e!2154149)))

(declare-fun res!1403118 () Bool)

(assert (=> b!3477714 (=> (not res!1403118) (not e!2154149))))

(declare-fun lt!1183862 () Option!7557)

(assert (=> b!3477714 (= res!1403118 (contains!6932 rules!2135 (get!11928 lt!1183862)))))

(declare-fun b!3477715 () Bool)

(assert (=> b!3477715 (= e!2154146 e!2154147)))

(declare-fun c!596413 () Bool)

(assert (=> b!3477715 (= c!596413 (and ((_ is Cons!37228) rules!2135) (not (= (tag!6070 (h!42648 rules!2135)) (tag!6070 (rule!8052 separatorToken!241))))))))

(declare-fun b!3477717 () Bool)

(assert (=> b!3477717 (= e!2154149 (= (tag!6070 (get!11928 lt!1183862)) (tag!6070 (rule!8052 separatorToken!241))))))

(declare-fun b!3477716 () Bool)

(assert (=> b!3477716 (= e!2154147 None!7556)))

(declare-fun d!1004409 () Bool)

(assert (=> d!1004409 e!2154148))

(declare-fun res!1403117 () Bool)

(assert (=> d!1004409 (=> res!1403117 e!2154148)))

(assert (=> d!1004409 (= res!1403117 (isEmpty!21620 lt!1183862))))

(assert (=> d!1004409 (= lt!1183862 e!2154146)))

(declare-fun c!596412 () Bool)

(assert (=> d!1004409 (= c!596412 (and ((_ is Cons!37228) rules!2135) (= (tag!6070 (h!42648 rules!2135)) (tag!6070 (rule!8052 separatorToken!241)))))))

(assert (=> d!1004409 (rulesInvariant!4438 thiss!18206 rules!2135)))

(assert (=> d!1004409 (= (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 separatorToken!241))) lt!1183862)))

(assert (= (and d!1004409 c!596412) b!3477712))

(assert (= (and d!1004409 (not c!596412)) b!3477715))

(assert (= (and b!3477715 c!596413) b!3477713))

(assert (= (and b!3477715 (not c!596413)) b!3477716))

(assert (= (and d!1004409 (not res!1403117)) b!3477714))

(assert (= (and b!3477714 res!1403118) b!3477717))

(assert (=> b!3477713 m!3893111))

(assert (=> b!3477713 m!3893113))

(declare-fun m!3893129 () Bool)

(assert (=> b!3477713 m!3893129))

(declare-fun m!3893131 () Bool)

(assert (=> b!3477714 m!3893131))

(assert (=> b!3477714 m!3893131))

(declare-fun m!3893133 () Bool)

(assert (=> b!3477714 m!3893133))

(assert (=> b!3477717 m!3893131))

(declare-fun m!3893135 () Bool)

(assert (=> d!1004409 m!3893135))

(assert (=> d!1004409 m!3892659))

(assert (=> b!3477348 d!1004409))

(declare-fun d!1004411 () Bool)

(declare-fun lt!1183867 () Bool)

(declare-fun content!5213 (List!37352) (InoxSet Rule!10704))

(assert (=> d!1004411 (= lt!1183867 (select (content!5213 rules!2135) (rule!8052 (h!42649 tokens!494))))))

(declare-fun e!2154155 () Bool)

(assert (=> d!1004411 (= lt!1183867 e!2154155)))

(declare-fun res!1403124 () Bool)

(assert (=> d!1004411 (=> (not res!1403124) (not e!2154155))))

(assert (=> d!1004411 (= res!1403124 ((_ is Cons!37228) rules!2135))))

(assert (=> d!1004411 (= (contains!6932 rules!2135 (rule!8052 (h!42649 tokens!494))) lt!1183867)))

(declare-fun b!3477722 () Bool)

(declare-fun e!2154154 () Bool)

(assert (=> b!3477722 (= e!2154155 e!2154154)))

(declare-fun res!1403123 () Bool)

(assert (=> b!3477722 (=> res!1403123 e!2154154)))

(assert (=> b!3477722 (= res!1403123 (= (h!42648 rules!2135) (rule!8052 (h!42649 tokens!494))))))

(declare-fun b!3477723 () Bool)

(assert (=> b!3477723 (= e!2154154 (contains!6932 (t!275185 rules!2135) (rule!8052 (h!42649 tokens!494))))))

(assert (= (and d!1004411 res!1403124) b!3477722))

(assert (= (and b!3477722 (not res!1403123)) b!3477723))

(declare-fun m!3893137 () Bool)

(assert (=> d!1004411 m!3893137))

(declare-fun m!3893139 () Bool)

(assert (=> d!1004411 m!3893139))

(declare-fun m!3893141 () Bool)

(assert (=> b!3477723 m!3893141))

(assert (=> b!3477348 d!1004411))

(declare-fun d!1004413 () Bool)

(declare-fun lt!1183882 () BalanceConc!22172)

(declare-fun printListTailRec!698 (LexerInterface!5041 List!37353 List!37351) List!37351)

(declare-fun dropList!1215 (BalanceConc!22174 Int) List!37353)

(assert (=> d!1004413 (= (list!13573 lt!1183882) (printListTailRec!698 thiss!18206 (dropList!1215 lt!1183736 0) (list!13573 (BalanceConc!22173 Empty!11279))))))

(declare-fun e!2154161 () BalanceConc!22172)

(assert (=> d!1004413 (= lt!1183882 e!2154161)))

(declare-fun c!596416 () Bool)

(assert (=> d!1004413 (= c!596416 (>= 0 (size!28266 lt!1183736)))))

(declare-fun e!2154160 () Bool)

(assert (=> d!1004413 e!2154160))

(declare-fun res!1403127 () Bool)

(assert (=> d!1004413 (=> (not res!1403127) (not e!2154160))))

(assert (=> d!1004413 (= res!1403127 (>= 0 0))))

(assert (=> d!1004413 (= (printTailRec!1536 thiss!18206 lt!1183736 0 (BalanceConc!22173 Empty!11279)) lt!1183882)))

(declare-fun b!3477730 () Bool)

(assert (=> b!3477730 (= e!2154160 (<= 0 (size!28266 lt!1183736)))))

(declare-fun b!3477731 () Bool)

(assert (=> b!3477731 (= e!2154161 (BalanceConc!22173 Empty!11279))))

(declare-fun b!3477732 () Bool)

(declare-fun ++!9195 (BalanceConc!22172 BalanceConc!22172) BalanceConc!22172)

(assert (=> b!3477732 (= e!2154161 (printTailRec!1536 thiss!18206 lt!1183736 (+ 0 1) (++!9195 (BalanceConc!22173 Empty!11279) (charsOf!3466 (apply!8801 lt!1183736 0)))))))

(declare-fun lt!1183884 () List!37353)

(assert (=> b!3477732 (= lt!1183884 (list!13577 lt!1183736))))

(declare-fun lt!1183888 () Unit!52658)

(declare-fun lemmaDropApply!1173 (List!37353 Int) Unit!52658)

(assert (=> b!3477732 (= lt!1183888 (lemmaDropApply!1173 lt!1183884 0))))

(declare-fun head!7343 (List!37353) Token!10270)

(declare-fun drop!2023 (List!37353 Int) List!37353)

(assert (=> b!3477732 (= (head!7343 (drop!2023 lt!1183884 0)) (apply!8804 lt!1183884 0))))

(declare-fun lt!1183885 () Unit!52658)

(assert (=> b!3477732 (= lt!1183885 lt!1183888)))

(declare-fun lt!1183883 () List!37353)

(assert (=> b!3477732 (= lt!1183883 (list!13577 lt!1183736))))

(declare-fun lt!1183887 () Unit!52658)

(declare-fun lemmaDropTail!1057 (List!37353 Int) Unit!52658)

(assert (=> b!3477732 (= lt!1183887 (lemmaDropTail!1057 lt!1183883 0))))

(declare-fun tail!5452 (List!37353) List!37353)

(assert (=> b!3477732 (= (tail!5452 (drop!2023 lt!1183883 0)) (drop!2023 lt!1183883 (+ 0 1)))))

(declare-fun lt!1183886 () Unit!52658)

(assert (=> b!3477732 (= lt!1183886 lt!1183887)))

(assert (= (and d!1004413 res!1403127) b!3477730))

(assert (= (and d!1004413 c!596416) b!3477731))

(assert (= (and d!1004413 (not c!596416)) b!3477732))

(declare-fun m!3893143 () Bool)

(assert (=> d!1004413 m!3893143))

(declare-fun m!3893145 () Bool)

(assert (=> d!1004413 m!3893145))

(declare-fun m!3893147 () Bool)

(assert (=> d!1004413 m!3893147))

(declare-fun m!3893149 () Bool)

(assert (=> d!1004413 m!3893149))

(assert (=> d!1004413 m!3893143))

(assert (=> d!1004413 m!3893145))

(declare-fun m!3893151 () Bool)

(assert (=> d!1004413 m!3893151))

(assert (=> b!3477730 m!3893147))

(declare-fun m!3893153 () Bool)

(assert (=> b!3477732 m!3893153))

(declare-fun m!3893155 () Bool)

(assert (=> b!3477732 m!3893155))

(declare-fun m!3893157 () Bool)

(assert (=> b!3477732 m!3893157))

(declare-fun m!3893159 () Bool)

(assert (=> b!3477732 m!3893159))

(declare-fun m!3893161 () Bool)

(assert (=> b!3477732 m!3893161))

(declare-fun m!3893163 () Bool)

(assert (=> b!3477732 m!3893163))

(assert (=> b!3477732 m!3893161))

(declare-fun m!3893165 () Bool)

(assert (=> b!3477732 m!3893165))

(declare-fun m!3893167 () Bool)

(assert (=> b!3477732 m!3893167))

(declare-fun m!3893169 () Bool)

(assert (=> b!3477732 m!3893169))

(declare-fun m!3893171 () Bool)

(assert (=> b!3477732 m!3893171))

(assert (=> b!3477732 m!3893155))

(assert (=> b!3477732 m!3893165))

(assert (=> b!3477732 m!3893153))

(assert (=> b!3477732 m!3893169))

(declare-fun m!3893173 () Bool)

(assert (=> b!3477732 m!3893173))

(declare-fun m!3893175 () Bool)

(assert (=> b!3477732 m!3893175))

(declare-fun m!3893177 () Bool)

(assert (=> b!3477732 m!3893177))

(assert (=> b!3477348 d!1004413))

(declare-fun d!1004415 () Bool)

(declare-fun lt!1183891 () Int)

(declare-fun size!28271 (List!37353) Int)

(assert (=> d!1004415 (= lt!1183891 (size!28271 (list!13577 (_1!21626 lt!1183743))))))

(declare-fun size!28272 (Conc!11280) Int)

(assert (=> d!1004415 (= lt!1183891 (size!28272 (c!596344 (_1!21626 lt!1183743))))))

(assert (=> d!1004415 (= (size!28266 (_1!21626 lt!1183743)) lt!1183891)))

(declare-fun bs!561779 () Bool)

(assert (= bs!561779 d!1004415))

(assert (=> bs!561779 m!3893079))

(assert (=> bs!561779 m!3893079))

(declare-fun m!3893179 () Bool)

(assert (=> bs!561779 m!3893179))

(declare-fun m!3893181 () Bool)

(assert (=> bs!561779 m!3893181))

(assert (=> b!3477348 d!1004415))

(declare-fun d!1004417 () Bool)

(declare-fun e!2154164 () Bool)

(assert (=> d!1004417 e!2154164))

(declare-fun res!1403132 () Bool)

(assert (=> d!1004417 (=> (not res!1403132) (not e!2154164))))

(assert (=> d!1004417 (= res!1403132 (isDefined!5821 (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 separatorToken!241)))))))

(declare-fun lt!1183894 () Unit!52658)

(declare-fun choose!20138 (LexerInterface!5041 List!37352 List!37351 Token!10270) Unit!52658)

(assert (=> d!1004417 (= lt!1183894 (choose!20138 thiss!18206 rules!2135 lt!1183732 separatorToken!241))))

(assert (=> d!1004417 (rulesInvariant!4438 thiss!18206 rules!2135)))

(assert (=> d!1004417 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1095 thiss!18206 rules!2135 lt!1183732 separatorToken!241) lt!1183894)))

(declare-fun b!3477737 () Bool)

(declare-fun res!1403133 () Bool)

(assert (=> b!3477737 (=> (not res!1403133) (not e!2154164))))

(assert (=> b!3477737 (= res!1403133 (matchR!4795 (regex!5452 (get!11928 (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 separatorToken!241))))) (list!13573 (charsOf!3466 separatorToken!241))))))

(declare-fun b!3477738 () Bool)

(assert (=> b!3477738 (= e!2154164 (= (rule!8052 separatorToken!241) (get!11928 (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 separatorToken!241))))))))

(assert (= (and d!1004417 res!1403132) b!3477737))

(assert (= (and b!3477737 res!1403133) b!3477738))

(assert (=> d!1004417 m!3892491))

(assert (=> d!1004417 m!3892491))

(declare-fun m!3893183 () Bool)

(assert (=> d!1004417 m!3893183))

(declare-fun m!3893185 () Bool)

(assert (=> d!1004417 m!3893185))

(assert (=> d!1004417 m!3892659))

(assert (=> b!3477737 m!3892617))

(declare-fun m!3893187 () Bool)

(assert (=> b!3477737 m!3893187))

(assert (=> b!3477737 m!3892491))

(assert (=> b!3477737 m!3892605))

(assert (=> b!3477737 m!3892491))

(declare-fun m!3893189 () Bool)

(assert (=> b!3477737 m!3893189))

(assert (=> b!3477737 m!3892605))

(assert (=> b!3477737 m!3892617))

(assert (=> b!3477738 m!3892491))

(assert (=> b!3477738 m!3892491))

(assert (=> b!3477738 m!3893189))

(assert (=> b!3477348 d!1004417))

(declare-fun b!3477755 () Bool)

(declare-fun c!596428 () Bool)

(assert (=> b!3477755 (= c!596428 ((_ is Star!10211) (regex!5452 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun e!2154173 () List!37351)

(declare-fun e!2154176 () List!37351)

(assert (=> b!3477755 (= e!2154173 e!2154176)))

(declare-fun call!250870 () List!37351)

(declare-fun c!596425 () Bool)

(declare-fun call!250867 () List!37351)

(declare-fun bm!250862 () Bool)

(declare-fun call!250868 () List!37351)

(assert (=> bm!250862 (= call!250870 (++!9193 (ite c!596425 call!250867 call!250868) (ite c!596425 call!250868 call!250867)))))

(declare-fun bm!250863 () Bool)

(declare-fun call!250869 () List!37351)

(assert (=> bm!250863 (= call!250868 call!250869)))

(declare-fun b!3477756 () Bool)

(assert (=> b!3477756 (= e!2154176 call!250869)))

(declare-fun d!1004419 () Bool)

(declare-fun c!596427 () Bool)

(assert (=> d!1004419 (= c!596427 (or ((_ is EmptyExpr!10211) (regex!5452 (rule!8052 (h!42649 tokens!494)))) ((_ is EmptyLang!10211) (regex!5452 (rule!8052 (h!42649 tokens!494))))))))

(declare-fun e!2154175 () List!37351)

(assert (=> d!1004419 (= (usedCharacters!686 (regex!5452 (rule!8052 (h!42649 tokens!494)))) e!2154175)))

(declare-fun b!3477757 () Bool)

(declare-fun e!2154174 () List!37351)

(assert (=> b!3477757 (= e!2154174 call!250870)))

(declare-fun b!3477758 () Bool)

(assert (=> b!3477758 (= e!2154175 Nil!37227)))

(declare-fun bm!250864 () Bool)

(assert (=> bm!250864 (= call!250867 (usedCharacters!686 (ite c!596425 (regOne!20935 (regex!5452 (rule!8052 (h!42649 tokens!494)))) (regTwo!20934 (regex!5452 (rule!8052 (h!42649 tokens!494)))))))))

(declare-fun b!3477759 () Bool)

(assert (=> b!3477759 (= e!2154176 e!2154174)))

(assert (=> b!3477759 (= c!596425 ((_ is Union!10211) (regex!5452 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun b!3477760 () Bool)

(assert (=> b!3477760 (= e!2154174 call!250870)))

(declare-fun b!3477761 () Bool)

(assert (=> b!3477761 (= e!2154175 e!2154173)))

(declare-fun c!596426 () Bool)

(assert (=> b!3477761 (= c!596426 ((_ is ElementMatch!10211) (regex!5452 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun bm!250865 () Bool)

(assert (=> bm!250865 (= call!250869 (usedCharacters!686 (ite c!596428 (reg!10540 (regex!5452 (rule!8052 (h!42649 tokens!494)))) (ite c!596425 (regTwo!20935 (regex!5452 (rule!8052 (h!42649 tokens!494)))) (regOne!20934 (regex!5452 (rule!8052 (h!42649 tokens!494))))))))))

(declare-fun b!3477762 () Bool)

(assert (=> b!3477762 (= e!2154173 (Cons!37227 (c!596342 (regex!5452 (rule!8052 (h!42649 tokens!494)))) Nil!37227))))

(assert (= (and d!1004419 c!596427) b!3477758))

(assert (= (and d!1004419 (not c!596427)) b!3477761))

(assert (= (and b!3477761 c!596426) b!3477762))

(assert (= (and b!3477761 (not c!596426)) b!3477755))

(assert (= (and b!3477755 c!596428) b!3477756))

(assert (= (and b!3477755 (not c!596428)) b!3477759))

(assert (= (and b!3477759 c!596425) b!3477760))

(assert (= (and b!3477759 (not c!596425)) b!3477757))

(assert (= (or b!3477760 b!3477757) bm!250863))

(assert (= (or b!3477760 b!3477757) bm!250864))

(assert (= (or b!3477760 b!3477757) bm!250862))

(assert (= (or b!3477756 bm!250863) bm!250865))

(declare-fun m!3893191 () Bool)

(assert (=> bm!250862 m!3893191))

(declare-fun m!3893193 () Bool)

(assert (=> bm!250864 m!3893193))

(declare-fun m!3893195 () Bool)

(assert (=> bm!250865 m!3893195))

(assert (=> b!3477348 d!1004419))

(declare-fun d!1004421 () Bool)

(declare-fun lt!1183895 () Int)

(assert (=> d!1004421 (= lt!1183895 (size!28271 (list!13577 (_1!21626 lt!1183717))))))

(assert (=> d!1004421 (= lt!1183895 (size!28272 (c!596344 (_1!21626 lt!1183717))))))

(assert (=> d!1004421 (= (size!28266 (_1!21626 lt!1183717)) lt!1183895)))

(declare-fun bs!561780 () Bool)

(assert (= bs!561780 d!1004421))

(declare-fun m!3893197 () Bool)

(assert (=> bs!561780 m!3893197))

(assert (=> bs!561780 m!3893197))

(declare-fun m!3893199 () Bool)

(assert (=> bs!561780 m!3893199))

(declare-fun m!3893201 () Bool)

(assert (=> bs!561780 m!3893201))

(assert (=> b!3477348 d!1004421))

(declare-fun d!1004423 () Bool)

(assert (=> d!1004423 (rulesProduceIndividualToken!2533 thiss!18206 rules!2135 (h!42649 tokens!494))))

(declare-fun lt!1183938 () Unit!52658)

(declare-fun choose!20139 (LexerInterface!5041 List!37352 List!37353 Token!10270) Unit!52658)

(assert (=> d!1004423 (= lt!1183938 (choose!20139 thiss!18206 rules!2135 tokens!494 (h!42649 tokens!494)))))

(assert (=> d!1004423 (not (isEmpty!21615 rules!2135))))

(assert (=> d!1004423 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1030 thiss!18206 rules!2135 tokens!494 (h!42649 tokens!494)) lt!1183938)))

(declare-fun bs!561784 () Bool)

(assert (= bs!561784 d!1004423))

(assert (=> bs!561784 m!3892543))

(declare-fun m!3893281 () Bool)

(assert (=> bs!561784 m!3893281))

(assert (=> bs!561784 m!3892647))

(assert (=> b!3477348 d!1004423))

(declare-fun d!1004443 () Bool)

(declare-fun e!2154203 () Bool)

(assert (=> d!1004443 e!2154203))

(declare-fun res!1403147 () Bool)

(assert (=> d!1004443 (=> (not res!1403147) (not e!2154203))))

(declare-fun lt!1183939 () BalanceConc!22174)

(assert (=> d!1004443 (= res!1403147 (= (list!13577 lt!1183939) (Cons!37229 (h!42649 (t!275186 tokens!494)) Nil!37229)))))

(assert (=> d!1004443 (= lt!1183939 (singleton!1130 (h!42649 (t!275186 tokens!494))))))

(assert (=> d!1004443 (= (singletonSeq!2548 (h!42649 (t!275186 tokens!494))) lt!1183939)))

(declare-fun b!3477800 () Bool)

(assert (=> b!3477800 (= e!2154203 (isBalanced!3429 (c!596344 lt!1183939)))))

(assert (= (and d!1004443 res!1403147) b!3477800))

(declare-fun m!3893283 () Bool)

(assert (=> d!1004443 m!3893283))

(declare-fun m!3893285 () Bool)

(assert (=> d!1004443 m!3893285))

(declare-fun m!3893287 () Bool)

(assert (=> b!3477800 m!3893287))

(assert (=> b!3477348 d!1004443))

(declare-fun d!1004445 () Bool)

(assert (=> d!1004445 (not (contains!6931 (usedCharacters!686 (regex!5452 (rule!8052 (h!42649 tokens!494)))) lt!1183731))))

(declare-fun lt!1183942 () Unit!52658)

(declare-fun choose!20140 (LexerInterface!5041 List!37352 List!37352 Rule!10704 Rule!10704 C!20608) Unit!52658)

(assert (=> d!1004445 (= lt!1183942 (choose!20140 thiss!18206 rules!2135 rules!2135 (rule!8052 (h!42649 tokens!494)) (rule!8052 separatorToken!241) lt!1183731))))

(assert (=> d!1004445 (rulesInvariant!4438 thiss!18206 rules!2135)))

(assert (=> d!1004445 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!252 thiss!18206 rules!2135 rules!2135 (rule!8052 (h!42649 tokens!494)) (rule!8052 separatorToken!241) lt!1183731) lt!1183942)))

(declare-fun bs!561785 () Bool)

(assert (= bs!561785 d!1004445))

(assert (=> bs!561785 m!3892525))

(assert (=> bs!561785 m!3892525))

(declare-fun m!3893289 () Bool)

(assert (=> bs!561785 m!3893289))

(declare-fun m!3893291 () Bool)

(assert (=> bs!561785 m!3893291))

(assert (=> bs!561785 m!3892659))

(assert (=> b!3477348 d!1004445))

(declare-fun d!1004447 () Bool)

(declare-fun dynLambda!15746 (Int BalanceConc!22172) TokenValue!5682)

(assert (=> d!1004447 (= (apply!8800 (transformation!5452 (rule!8052 (h!42649 tokens!494))) lt!1183730) (dynLambda!15746 (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) lt!1183730))))

(declare-fun b_lambda!100503 () Bool)

(assert (=> (not b_lambda!100503) (not d!1004447)))

(declare-fun t!275230 () Bool)

(declare-fun tb!190667 () Bool)

(assert (=> (and b!3477341 (= (toValue!7688 (transformation!5452 (h!42648 rules!2135))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275230) tb!190667))

(declare-fun result!234766 () Bool)

(assert (=> tb!190667 (= result!234766 (inv!21 (dynLambda!15746 (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) lt!1183730)))))

(declare-fun m!3893293 () Bool)

(assert (=> tb!190667 m!3893293))

(assert (=> d!1004447 t!275230))

(declare-fun b_and!245331 () Bool)

(assert (= b_and!245283 (and (=> t!275230 result!234766) b_and!245331)))

(declare-fun t!275232 () Bool)

(declare-fun tb!190669 () Bool)

(assert (=> (and b!3477347 (= (toValue!7688 (transformation!5452 (rule!8052 separatorToken!241))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275232) tb!190669))

(declare-fun result!234770 () Bool)

(assert (= result!234770 result!234766))

(assert (=> d!1004447 t!275232))

(declare-fun b_and!245333 () Bool)

(assert (= b_and!245287 (and (=> t!275232 result!234770) b_and!245333)))

(declare-fun t!275234 () Bool)

(declare-fun tb!190671 () Bool)

(assert (=> (and b!3477378 (= (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275234) tb!190671))

(declare-fun result!234772 () Bool)

(assert (= result!234772 result!234766))

(assert (=> d!1004447 t!275234))

(declare-fun b_and!245335 () Bool)

(assert (= b_and!245291 (and (=> t!275234 result!234772) b_and!245335)))

(declare-fun m!3893295 () Bool)

(assert (=> d!1004447 m!3893295))

(assert (=> b!3477348 d!1004447))

(declare-fun d!1004449 () Bool)

(declare-fun lt!1183945 () Int)

(assert (=> d!1004449 (>= lt!1183945 0)))

(declare-fun e!2154209 () Int)

(assert (=> d!1004449 (= lt!1183945 e!2154209)))

(declare-fun c!596443 () Bool)

(assert (=> d!1004449 (= c!596443 ((_ is Nil!37227) lt!1183726))))

(assert (=> d!1004449 (= (size!28267 lt!1183726) lt!1183945)))

(declare-fun b!3477807 () Bool)

(assert (=> b!3477807 (= e!2154209 0)))

(declare-fun b!3477808 () Bool)

(assert (=> b!3477808 (= e!2154209 (+ 1 (size!28267 (t!275184 lt!1183726))))))

(assert (= (and d!1004449 c!596443) b!3477807))

(assert (= (and d!1004449 (not c!596443)) b!3477808))

(declare-fun m!3893297 () Bool)

(assert (=> b!3477808 m!3893297))

(assert (=> b!3477348 d!1004449))

(declare-fun d!1004451 () Bool)

(assert (=> d!1004451 (= (head!7341 lt!1183732) (h!42647 lt!1183732))))

(assert (=> b!3477348 d!1004451))

(declare-fun d!1004453 () Bool)

(assert (=> d!1004453 (= (maxPrefixOneRule!1748 thiss!18206 (rule!8052 (h!42649 tokens!494)) lt!1183726) (Some!7557 (tuple2!36987 (Token!10271 (apply!8800 (transformation!5452 (rule!8052 (h!42649 tokens!494))) (seqFromList!3957 lt!1183726)) (rule!8052 (h!42649 tokens!494)) (size!28267 lt!1183726) lt!1183726) Nil!37227)))))

(declare-fun lt!1183948 () Unit!52658)

(declare-fun choose!20141 (LexerInterface!5041 List!37352 List!37351 List!37351 List!37351 Rule!10704) Unit!52658)

(assert (=> d!1004453 (= lt!1183948 (choose!20141 thiss!18206 rules!2135 lt!1183726 lt!1183726 Nil!37227 (rule!8052 (h!42649 tokens!494))))))

(assert (=> d!1004453 (not (isEmpty!21615 rules!2135))))

(assert (=> d!1004453 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!841 thiss!18206 rules!2135 lt!1183726 lt!1183726 Nil!37227 (rule!8052 (h!42649 tokens!494))) lt!1183948)))

(declare-fun bs!561786 () Bool)

(assert (= bs!561786 d!1004453))

(assert (=> bs!561786 m!3892633))

(declare-fun m!3893299 () Bool)

(assert (=> bs!561786 m!3893299))

(assert (=> bs!561786 m!3892505))

(assert (=> bs!561786 m!3892633))

(assert (=> bs!561786 m!3892647))

(declare-fun m!3893301 () Bool)

(assert (=> bs!561786 m!3893301))

(assert (=> bs!561786 m!3892477))

(assert (=> b!3477348 d!1004453))

(declare-fun d!1004455 () Bool)

(declare-fun e!2154230 () Bool)

(assert (=> d!1004455 e!2154230))

(declare-fun res!1403168 () Bool)

(assert (=> d!1004455 (=> (not res!1403168) (not e!2154230))))

(declare-fun e!2154229 () Bool)

(assert (=> d!1004455 (= res!1403168 e!2154229)))

(declare-fun c!596450 () Bool)

(declare-fun lt!1183962 () tuple2!36984)

(assert (=> d!1004455 (= c!596450 (> (size!28266 (_1!21626 lt!1183962)) 0))))

(declare-fun lexTailRecV2!1066 (LexerInterface!5041 List!37352 BalanceConc!22172 BalanceConc!22172 BalanceConc!22172 BalanceConc!22174) tuple2!36984)

(assert (=> d!1004455 (= lt!1183962 (lexTailRecV2!1066 thiss!18206 rules!2135 lt!1183737 (BalanceConc!22173 Empty!11279) lt!1183737 (BalanceConc!22175 Empty!11280)))))

(assert (=> d!1004455 (= (lex!2367 thiss!18206 rules!2135 lt!1183737) lt!1183962)))

(declare-fun b!3477839 () Bool)

(assert (=> b!3477839 (= e!2154229 (= (_2!21626 lt!1183962) lt!1183737))))

(declare-fun b!3477840 () Bool)

(declare-datatypes ((tuple2!36992 0))(
  ( (tuple2!36993 (_1!21630 List!37353) (_2!21630 List!37351)) )
))
(declare-fun lexList!1458 (LexerInterface!5041 List!37352 List!37351) tuple2!36992)

(assert (=> b!3477840 (= e!2154230 (= (list!13573 (_2!21626 lt!1183962)) (_2!21630 (lexList!1458 thiss!18206 rules!2135 (list!13573 lt!1183737)))))))

(declare-fun b!3477841 () Bool)

(declare-fun e!2154231 () Bool)

(assert (=> b!3477841 (= e!2154231 (not (isEmpty!21613 (_1!21626 lt!1183962))))))

(declare-fun b!3477842 () Bool)

(assert (=> b!3477842 (= e!2154229 e!2154231)))

(declare-fun res!1403167 () Bool)

(declare-fun size!28273 (BalanceConc!22172) Int)

(assert (=> b!3477842 (= res!1403167 (< (size!28273 (_2!21626 lt!1183962)) (size!28273 lt!1183737)))))

(assert (=> b!3477842 (=> (not res!1403167) (not e!2154231))))

(declare-fun b!3477843 () Bool)

(declare-fun res!1403166 () Bool)

(assert (=> b!3477843 (=> (not res!1403166) (not e!2154230))))

(assert (=> b!3477843 (= res!1403166 (= (list!13577 (_1!21626 lt!1183962)) (_1!21630 (lexList!1458 thiss!18206 rules!2135 (list!13573 lt!1183737)))))))

(assert (= (and d!1004455 c!596450) b!3477842))

(assert (= (and d!1004455 (not c!596450)) b!3477839))

(assert (= (and b!3477842 res!1403167) b!3477841))

(assert (= (and d!1004455 res!1403168) b!3477843))

(assert (= (and b!3477843 res!1403166) b!3477840))

(declare-fun m!3893359 () Bool)

(assert (=> b!3477841 m!3893359))

(declare-fun m!3893361 () Bool)

(assert (=> d!1004455 m!3893361))

(declare-fun m!3893363 () Bool)

(assert (=> d!1004455 m!3893363))

(declare-fun m!3893365 () Bool)

(assert (=> b!3477840 m!3893365))

(declare-fun m!3893367 () Bool)

(assert (=> b!3477840 m!3893367))

(assert (=> b!3477840 m!3893367))

(declare-fun m!3893369 () Bool)

(assert (=> b!3477840 m!3893369))

(declare-fun m!3893371 () Bool)

(assert (=> b!3477843 m!3893371))

(assert (=> b!3477843 m!3893367))

(assert (=> b!3477843 m!3893367))

(assert (=> b!3477843 m!3893369))

(declare-fun m!3893373 () Bool)

(assert (=> b!3477842 m!3893373))

(declare-fun m!3893375 () Bool)

(assert (=> b!3477842 m!3893375))

(assert (=> b!3477348 d!1004455))

(declare-fun d!1004463 () Bool)

(declare-fun lt!1183980 () BalanceConc!22172)

(assert (=> d!1004463 (= (list!13573 lt!1183980) (printList!1589 thiss!18206 (list!13577 lt!1183723)))))

(assert (=> d!1004463 (= lt!1183980 (printTailRec!1536 thiss!18206 lt!1183723 0 (BalanceConc!22173 Empty!11279)))))

(assert (=> d!1004463 (= (print!2106 thiss!18206 lt!1183723) lt!1183980)))

(declare-fun bs!561787 () Bool)

(assert (= bs!561787 d!1004463))

(declare-fun m!3893377 () Bool)

(assert (=> bs!561787 m!3893377))

(declare-fun m!3893379 () Bool)

(assert (=> bs!561787 m!3893379))

(assert (=> bs!561787 m!3893379))

(declare-fun m!3893381 () Bool)

(assert (=> bs!561787 m!3893381))

(assert (=> bs!561787 m!3892531))

(assert (=> b!3477348 d!1004463))

(declare-fun d!1004465 () Bool)

(assert (=> d!1004465 (= (isDefined!5821 lt!1183719) (not (isEmpty!21620 lt!1183719)))))

(declare-fun bs!561788 () Bool)

(assert (= bs!561788 d!1004465))

(declare-fun m!3893383 () Bool)

(assert (=> bs!561788 m!3893383))

(assert (=> b!3477348 d!1004465))

(declare-fun d!1004467 () Bool)

(assert (=> d!1004467 (dynLambda!15744 lambda!122135 (h!42649 (t!275186 tokens!494)))))

(declare-fun lt!1183983 () Unit!52658)

(declare-fun choose!20142 (List!37353 Int Token!10270) Unit!52658)

(assert (=> d!1004467 (= lt!1183983 (choose!20142 tokens!494 lambda!122135 (h!42649 (t!275186 tokens!494))))))

(declare-fun e!2154246 () Bool)

(assert (=> d!1004467 e!2154246))

(declare-fun res!1403192 () Bool)

(assert (=> d!1004467 (=> (not res!1403192) (not e!2154246))))

(assert (=> d!1004467 (= res!1403192 (forall!7957 tokens!494 lambda!122135))))

(assert (=> d!1004467 (= (forallContained!1399 tokens!494 lambda!122135 (h!42649 (t!275186 tokens!494))) lt!1183983)))

(declare-fun b!3477873 () Bool)

(declare-fun contains!6934 (List!37353 Token!10270) Bool)

(assert (=> b!3477873 (= e!2154246 (contains!6934 tokens!494 (h!42649 (t!275186 tokens!494))))))

(assert (= (and d!1004467 res!1403192) b!3477873))

(declare-fun b_lambda!100505 () Bool)

(assert (=> (not b_lambda!100505) (not d!1004467)))

(declare-fun m!3893427 () Bool)

(assert (=> d!1004467 m!3893427))

(declare-fun m!3893429 () Bool)

(assert (=> d!1004467 m!3893429))

(declare-fun m!3893431 () Bool)

(assert (=> d!1004467 m!3893431))

(declare-fun m!3893433 () Bool)

(assert (=> b!3477873 m!3893433))

(assert (=> b!3477348 d!1004467))

(declare-fun d!1004471 () Bool)

(declare-fun e!2154248 () Bool)

(assert (=> d!1004471 e!2154248))

(declare-fun res!1403195 () Bool)

(assert (=> d!1004471 (=> (not res!1403195) (not e!2154248))))

(declare-fun e!2154247 () Bool)

(assert (=> d!1004471 (= res!1403195 e!2154247)))

(declare-fun c!596454 () Bool)

(declare-fun lt!1183984 () tuple2!36984)

(assert (=> d!1004471 (= c!596454 (> (size!28266 (_1!21626 lt!1183984)) 0))))

(assert (=> d!1004471 (= lt!1183984 (lexTailRecV2!1066 thiss!18206 rules!2135 lt!1183706 (BalanceConc!22173 Empty!11279) lt!1183706 (BalanceConc!22175 Empty!11280)))))

(assert (=> d!1004471 (= (lex!2367 thiss!18206 rules!2135 lt!1183706) lt!1183984)))

(declare-fun b!3477874 () Bool)

(assert (=> b!3477874 (= e!2154247 (= (_2!21626 lt!1183984) lt!1183706))))

(declare-fun b!3477875 () Bool)

(assert (=> b!3477875 (= e!2154248 (= (list!13573 (_2!21626 lt!1183984)) (_2!21630 (lexList!1458 thiss!18206 rules!2135 (list!13573 lt!1183706)))))))

(declare-fun b!3477876 () Bool)

(declare-fun e!2154249 () Bool)

(assert (=> b!3477876 (= e!2154249 (not (isEmpty!21613 (_1!21626 lt!1183984))))))

(declare-fun b!3477877 () Bool)

(assert (=> b!3477877 (= e!2154247 e!2154249)))

(declare-fun res!1403194 () Bool)

(assert (=> b!3477877 (= res!1403194 (< (size!28273 (_2!21626 lt!1183984)) (size!28273 lt!1183706)))))

(assert (=> b!3477877 (=> (not res!1403194) (not e!2154249))))

(declare-fun b!3477878 () Bool)

(declare-fun res!1403193 () Bool)

(assert (=> b!3477878 (=> (not res!1403193) (not e!2154248))))

(assert (=> b!3477878 (= res!1403193 (= (list!13577 (_1!21626 lt!1183984)) (_1!21630 (lexList!1458 thiss!18206 rules!2135 (list!13573 lt!1183706)))))))

(assert (= (and d!1004471 c!596454) b!3477877))

(assert (= (and d!1004471 (not c!596454)) b!3477874))

(assert (= (and b!3477877 res!1403194) b!3477876))

(assert (= (and d!1004471 res!1403195) b!3477878))

(assert (= (and b!3477878 res!1403193) b!3477875))

(declare-fun m!3893435 () Bool)

(assert (=> b!3477876 m!3893435))

(declare-fun m!3893437 () Bool)

(assert (=> d!1004471 m!3893437))

(declare-fun m!3893439 () Bool)

(assert (=> d!1004471 m!3893439))

(declare-fun m!3893441 () Bool)

(assert (=> b!3477875 m!3893441))

(declare-fun m!3893443 () Bool)

(assert (=> b!3477875 m!3893443))

(assert (=> b!3477875 m!3893443))

(declare-fun m!3893445 () Bool)

(assert (=> b!3477875 m!3893445))

(declare-fun m!3893447 () Bool)

(assert (=> b!3477878 m!3893447))

(assert (=> b!3477878 m!3893443))

(assert (=> b!3477878 m!3893443))

(assert (=> b!3477878 m!3893445))

(declare-fun m!3893449 () Bool)

(assert (=> b!3477877 m!3893449))

(declare-fun m!3893451 () Bool)

(assert (=> b!3477877 m!3893451))

(assert (=> b!3477348 d!1004471))

(declare-fun b!3477883 () Bool)

(declare-fun c!596460 () Bool)

(assert (=> b!3477883 (= c!596460 ((_ is Star!10211) (regex!5452 (rule!8052 separatorToken!241))))))

(declare-fun e!2154252 () List!37351)

(declare-fun e!2154255 () List!37351)

(assert (=> b!3477883 (= e!2154252 e!2154255)))

(declare-fun call!250871 () List!37351)

(declare-fun c!596457 () Bool)

(declare-fun call!250874 () List!37351)

(declare-fun call!250872 () List!37351)

(declare-fun bm!250866 () Bool)

(assert (=> bm!250866 (= call!250874 (++!9193 (ite c!596457 call!250871 call!250872) (ite c!596457 call!250872 call!250871)))))

(declare-fun bm!250867 () Bool)

(declare-fun call!250873 () List!37351)

(assert (=> bm!250867 (= call!250872 call!250873)))

(declare-fun b!3477884 () Bool)

(assert (=> b!3477884 (= e!2154255 call!250873)))

(declare-fun d!1004473 () Bool)

(declare-fun c!596459 () Bool)

(assert (=> d!1004473 (= c!596459 (or ((_ is EmptyExpr!10211) (regex!5452 (rule!8052 separatorToken!241))) ((_ is EmptyLang!10211) (regex!5452 (rule!8052 separatorToken!241)))))))

(declare-fun e!2154254 () List!37351)

(assert (=> d!1004473 (= (usedCharacters!686 (regex!5452 (rule!8052 separatorToken!241))) e!2154254)))

(declare-fun b!3477885 () Bool)

(declare-fun e!2154253 () List!37351)

(assert (=> b!3477885 (= e!2154253 call!250874)))

(declare-fun b!3477886 () Bool)

(assert (=> b!3477886 (= e!2154254 Nil!37227)))

(declare-fun bm!250868 () Bool)

(assert (=> bm!250868 (= call!250871 (usedCharacters!686 (ite c!596457 (regOne!20935 (regex!5452 (rule!8052 separatorToken!241))) (regTwo!20934 (regex!5452 (rule!8052 separatorToken!241))))))))

(declare-fun b!3477887 () Bool)

(assert (=> b!3477887 (= e!2154255 e!2154253)))

(assert (=> b!3477887 (= c!596457 ((_ is Union!10211) (regex!5452 (rule!8052 separatorToken!241))))))

(declare-fun b!3477888 () Bool)

(assert (=> b!3477888 (= e!2154253 call!250874)))

(declare-fun b!3477889 () Bool)

(assert (=> b!3477889 (= e!2154254 e!2154252)))

(declare-fun c!596458 () Bool)

(assert (=> b!3477889 (= c!596458 ((_ is ElementMatch!10211) (regex!5452 (rule!8052 separatorToken!241))))))

(declare-fun bm!250869 () Bool)

(assert (=> bm!250869 (= call!250873 (usedCharacters!686 (ite c!596460 (reg!10540 (regex!5452 (rule!8052 separatorToken!241))) (ite c!596457 (regTwo!20935 (regex!5452 (rule!8052 separatorToken!241))) (regOne!20934 (regex!5452 (rule!8052 separatorToken!241)))))))))

(declare-fun b!3477890 () Bool)

(assert (=> b!3477890 (= e!2154252 (Cons!37227 (c!596342 (regex!5452 (rule!8052 separatorToken!241))) Nil!37227))))

(assert (= (and d!1004473 c!596459) b!3477886))

(assert (= (and d!1004473 (not c!596459)) b!3477889))

(assert (= (and b!3477889 c!596458) b!3477890))

(assert (= (and b!3477889 (not c!596458)) b!3477883))

(assert (= (and b!3477883 c!596460) b!3477884))

(assert (= (and b!3477883 (not c!596460)) b!3477887))

(assert (= (and b!3477887 c!596457) b!3477888))

(assert (= (and b!3477887 (not c!596457)) b!3477885))

(assert (= (or b!3477888 b!3477885) bm!250867))

(assert (= (or b!3477888 b!3477885) bm!250868))

(assert (= (or b!3477888 b!3477885) bm!250866))

(assert (= (or b!3477884 bm!250867) bm!250869))

(declare-fun m!3893455 () Bool)

(assert (=> bm!250866 m!3893455))

(declare-fun m!3893457 () Bool)

(assert (=> bm!250868 m!3893457))

(declare-fun m!3893459 () Bool)

(assert (=> bm!250869 m!3893459))

(assert (=> b!3477348 d!1004473))

(declare-fun d!1004477 () Bool)

(declare-fun lt!1183988 () Bool)

(assert (=> d!1004477 (= lt!1183988 (select (content!5211 lt!1183729) lt!1183731))))

(declare-fun e!2154262 () Bool)

(assert (=> d!1004477 (= lt!1183988 e!2154262)))

(declare-fun res!1403196 () Bool)

(assert (=> d!1004477 (=> (not res!1403196) (not e!2154262))))

(assert (=> d!1004477 (= res!1403196 ((_ is Cons!37227) lt!1183729))))

(assert (=> d!1004477 (= (contains!6931 lt!1183729 lt!1183731) lt!1183988)))

(declare-fun b!3477901 () Bool)

(declare-fun e!2154261 () Bool)

(assert (=> b!3477901 (= e!2154262 e!2154261)))

(declare-fun res!1403197 () Bool)

(assert (=> b!3477901 (=> res!1403197 e!2154261)))

(assert (=> b!3477901 (= res!1403197 (= (h!42647 lt!1183729) lt!1183731))))

(declare-fun b!3477902 () Bool)

(assert (=> b!3477902 (= e!2154261 (contains!6931 (t!275184 lt!1183729) lt!1183731))))

(assert (= (and d!1004477 res!1403196) b!3477901))

(assert (= (and b!3477901 (not res!1403197)) b!3477902))

(assert (=> d!1004477 m!3892753))

(declare-fun m!3893461 () Bool)

(assert (=> d!1004477 m!3893461))

(declare-fun m!3893465 () Bool)

(assert (=> b!3477902 m!3893465))

(assert (=> b!3477348 d!1004477))

(declare-fun d!1004479 () Bool)

(declare-fun lt!1183989 () BalanceConc!22172)

(assert (=> d!1004479 (= (list!13573 lt!1183989) (printList!1589 thiss!18206 (list!13577 lt!1183736)))))

(assert (=> d!1004479 (= lt!1183989 (printTailRec!1536 thiss!18206 lt!1183736 0 (BalanceConc!22173 Empty!11279)))))

(assert (=> d!1004479 (= (print!2106 thiss!18206 lt!1183736) lt!1183989)))

(declare-fun bs!561789 () Bool)

(assert (= bs!561789 d!1004479))

(declare-fun m!3893471 () Bool)

(assert (=> bs!561789 m!3893471))

(assert (=> bs!561789 m!3893159))

(assert (=> bs!561789 m!3893159))

(declare-fun m!3893473 () Bool)

(assert (=> bs!561789 m!3893473))

(assert (=> bs!561789 m!3892513))

(assert (=> b!3477348 d!1004479))

(declare-fun b!3478060 () Bool)

(declare-fun e!2154350 () Bool)

(declare-datatypes ((tuple2!36994 0))(
  ( (tuple2!36995 (_1!21631 List!37351) (_2!21631 List!37351)) )
))
(declare-fun findLongestMatchInner!919 (Regex!10211 List!37351 Int List!37351 List!37351 Int) tuple2!36994)

(assert (=> b!3478060 (= e!2154350 (matchR!4795 (regex!5452 (rule!8052 (h!42649 tokens!494))) (_1!21631 (findLongestMatchInner!919 (regex!5452 (rule!8052 (h!42649 tokens!494))) Nil!37227 (size!28267 Nil!37227) lt!1183726 lt!1183726 (size!28267 lt!1183726)))))))

(declare-fun b!3478061 () Bool)

(declare-fun res!1403308 () Bool)

(declare-fun e!2154351 () Bool)

(assert (=> b!3478061 (=> (not res!1403308) (not e!2154351))))

(declare-fun lt!1184031 () Option!7558)

(assert (=> b!3478061 (= res!1403308 (= (value!175842 (_1!21627 (get!11929 lt!1184031))) (apply!8800 (transformation!5452 (rule!8052 (_1!21627 (get!11929 lt!1184031)))) (seqFromList!3957 (originalCharacters!6166 (_1!21627 (get!11929 lt!1184031)))))))))

(declare-fun b!3478062 () Bool)

(declare-fun e!2154353 () Option!7558)

(declare-fun lt!1184027 () tuple2!36994)

(assert (=> b!3478062 (= e!2154353 (Some!7557 (tuple2!36987 (Token!10271 (apply!8800 (transformation!5452 (rule!8052 (h!42649 tokens!494))) (seqFromList!3957 (_1!21631 lt!1184027))) (rule!8052 (h!42649 tokens!494)) (size!28273 (seqFromList!3957 (_1!21631 lt!1184027))) (_1!21631 lt!1184027)) (_2!21631 lt!1184027))))))

(declare-fun lt!1184028 () Unit!52658)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!892 (Regex!10211 List!37351) Unit!52658)

(assert (=> b!3478062 (= lt!1184028 (longestMatchIsAcceptedByMatchOrIsEmpty!892 (regex!5452 (rule!8052 (h!42649 tokens!494))) lt!1183726))))

(declare-fun res!1403302 () Bool)

(assert (=> b!3478062 (= res!1403302 (isEmpty!21614 (_1!21631 (findLongestMatchInner!919 (regex!5452 (rule!8052 (h!42649 tokens!494))) Nil!37227 (size!28267 Nil!37227) lt!1183726 lt!1183726 (size!28267 lt!1183726)))))))

(assert (=> b!3478062 (=> res!1403302 e!2154350)))

(assert (=> b!3478062 e!2154350))

(declare-fun lt!1184029 () Unit!52658)

(assert (=> b!3478062 (= lt!1184029 lt!1184028)))

(declare-fun lt!1184030 () Unit!52658)

(declare-fun lemmaSemiInverse!1269 (TokenValueInjection!10792 BalanceConc!22172) Unit!52658)

(assert (=> b!3478062 (= lt!1184030 (lemmaSemiInverse!1269 (transformation!5452 (rule!8052 (h!42649 tokens!494))) (seqFromList!3957 (_1!21631 lt!1184027))))))

(declare-fun b!3478063 () Bool)

(declare-fun res!1403304 () Bool)

(assert (=> b!3478063 (=> (not res!1403304) (not e!2154351))))

(assert (=> b!3478063 (= res!1403304 (= (++!9193 (list!13573 (charsOf!3466 (_1!21627 (get!11929 lt!1184031)))) (_2!21627 (get!11929 lt!1184031))) lt!1183726))))

(declare-fun b!3478064 () Bool)

(assert (=> b!3478064 (= e!2154353 None!7557)))

(declare-fun b!3478065 () Bool)

(assert (=> b!3478065 (= e!2154351 (= (size!28265 (_1!21627 (get!11929 lt!1184031))) (size!28267 (originalCharacters!6166 (_1!21627 (get!11929 lt!1184031))))))))

(declare-fun b!3478066 () Bool)

(declare-fun res!1403306 () Bool)

(assert (=> b!3478066 (=> (not res!1403306) (not e!2154351))))

(assert (=> b!3478066 (= res!1403306 (= (rule!8052 (_1!21627 (get!11929 lt!1184031))) (rule!8052 (h!42649 tokens!494))))))

(declare-fun b!3478068 () Bool)

(declare-fun res!1403303 () Bool)

(assert (=> b!3478068 (=> (not res!1403303) (not e!2154351))))

(assert (=> b!3478068 (= res!1403303 (< (size!28267 (_2!21627 (get!11929 lt!1184031))) (size!28267 lt!1183726)))))

(declare-fun d!1004483 () Bool)

(declare-fun e!2154352 () Bool)

(assert (=> d!1004483 e!2154352))

(declare-fun res!1403307 () Bool)

(assert (=> d!1004483 (=> res!1403307 e!2154352)))

(declare-fun isEmpty!21621 (Option!7558) Bool)

(assert (=> d!1004483 (= res!1403307 (isEmpty!21621 lt!1184031))))

(assert (=> d!1004483 (= lt!1184031 e!2154353)))

(declare-fun c!596493 () Bool)

(assert (=> d!1004483 (= c!596493 (isEmpty!21614 (_1!21631 lt!1184027)))))

(declare-fun findLongestMatch!834 (Regex!10211 List!37351) tuple2!36994)

(assert (=> d!1004483 (= lt!1184027 (findLongestMatch!834 (regex!5452 (rule!8052 (h!42649 tokens!494))) lt!1183726))))

(assert (=> d!1004483 (ruleValid!1750 thiss!18206 (rule!8052 (h!42649 tokens!494)))))

(assert (=> d!1004483 (= (maxPrefixOneRule!1748 thiss!18206 (rule!8052 (h!42649 tokens!494)) lt!1183726) lt!1184031)))

(declare-fun b!3478067 () Bool)

(assert (=> b!3478067 (= e!2154352 e!2154351)))

(declare-fun res!1403305 () Bool)

(assert (=> b!3478067 (=> (not res!1403305) (not e!2154351))))

(assert (=> b!3478067 (= res!1403305 (matchR!4795 (regex!5452 (rule!8052 (h!42649 tokens!494))) (list!13573 (charsOf!3466 (_1!21627 (get!11929 lt!1184031))))))))

(assert (= (and d!1004483 c!596493) b!3478064))

(assert (= (and d!1004483 (not c!596493)) b!3478062))

(assert (= (and b!3478062 (not res!1403302)) b!3478060))

(assert (= (and d!1004483 (not res!1403307)) b!3478067))

(assert (= (and b!3478067 res!1403305) b!3478063))

(assert (= (and b!3478063 res!1403304) b!3478068))

(assert (= (and b!3478068 res!1403303) b!3478066))

(assert (= (and b!3478066 res!1403306) b!3478061))

(assert (= (and b!3478061 res!1403308) b!3478065))

(declare-fun m!3893659 () Bool)

(assert (=> b!3478060 m!3893659))

(assert (=> b!3478060 m!3892477))

(assert (=> b!3478060 m!3893659))

(assert (=> b!3478060 m!3892477))

(declare-fun m!3893661 () Bool)

(assert (=> b!3478060 m!3893661))

(declare-fun m!3893663 () Bool)

(assert (=> b!3478060 m!3893663))

(declare-fun m!3893665 () Bool)

(assert (=> b!3478066 m!3893665))

(assert (=> b!3478068 m!3893665))

(declare-fun m!3893667 () Bool)

(assert (=> b!3478068 m!3893667))

(assert (=> b!3478068 m!3892477))

(assert (=> b!3478065 m!3893665))

(declare-fun m!3893669 () Bool)

(assert (=> b!3478065 m!3893669))

(declare-fun m!3893671 () Bool)

(assert (=> b!3478062 m!3893671))

(declare-fun m!3893673 () Bool)

(assert (=> b!3478062 m!3893673))

(declare-fun m!3893675 () Bool)

(assert (=> b!3478062 m!3893675))

(assert (=> b!3478062 m!3893673))

(declare-fun m!3893677 () Bool)

(assert (=> b!3478062 m!3893677))

(assert (=> b!3478062 m!3893659))

(assert (=> b!3478062 m!3893673))

(assert (=> b!3478062 m!3893659))

(assert (=> b!3478062 m!3892477))

(assert (=> b!3478062 m!3893661))

(declare-fun m!3893679 () Bool)

(assert (=> b!3478062 m!3893679))

(assert (=> b!3478062 m!3893673))

(declare-fun m!3893681 () Bool)

(assert (=> b!3478062 m!3893681))

(assert (=> b!3478062 m!3892477))

(assert (=> b!3478061 m!3893665))

(declare-fun m!3893683 () Bool)

(assert (=> b!3478061 m!3893683))

(assert (=> b!3478061 m!3893683))

(declare-fun m!3893685 () Bool)

(assert (=> b!3478061 m!3893685))

(declare-fun m!3893687 () Bool)

(assert (=> d!1004483 m!3893687))

(declare-fun m!3893689 () Bool)

(assert (=> d!1004483 m!3893689))

(declare-fun m!3893691 () Bool)

(assert (=> d!1004483 m!3893691))

(assert (=> d!1004483 m!3892655))

(assert (=> b!3478067 m!3893665))

(declare-fun m!3893693 () Bool)

(assert (=> b!3478067 m!3893693))

(assert (=> b!3478067 m!3893693))

(declare-fun m!3893695 () Bool)

(assert (=> b!3478067 m!3893695))

(assert (=> b!3478067 m!3893695))

(declare-fun m!3893697 () Bool)

(assert (=> b!3478067 m!3893697))

(assert (=> b!3478063 m!3893665))

(assert (=> b!3478063 m!3893693))

(assert (=> b!3478063 m!3893693))

(assert (=> b!3478063 m!3893695))

(assert (=> b!3478063 m!3893695))

(declare-fun m!3893699 () Bool)

(assert (=> b!3478063 m!3893699))

(assert (=> b!3477348 d!1004483))

(declare-fun d!1004551 () Bool)

(assert (=> d!1004551 (= (isDefined!5821 lt!1183720) (not (isEmpty!21620 lt!1183720)))))

(declare-fun bs!561796 () Bool)

(assert (= bs!561796 d!1004551))

(declare-fun m!3893701 () Bool)

(assert (=> bs!561796 m!3893701))

(assert (=> b!3477348 d!1004551))

(declare-fun d!1004553 () Bool)

(declare-fun e!2154354 () Bool)

(assert (=> d!1004553 e!2154354))

(declare-fun res!1403309 () Bool)

(assert (=> d!1004553 (=> (not res!1403309) (not e!2154354))))

(assert (=> d!1004553 (= res!1403309 (isDefined!5821 (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 (h!42649 tokens!494))))))))

(declare-fun lt!1184032 () Unit!52658)

(assert (=> d!1004553 (= lt!1184032 (choose!20138 thiss!18206 rules!2135 lt!1183726 (h!42649 tokens!494)))))

(assert (=> d!1004553 (rulesInvariant!4438 thiss!18206 rules!2135)))

(assert (=> d!1004553 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1095 thiss!18206 rules!2135 lt!1183726 (h!42649 tokens!494)) lt!1184032)))

(declare-fun b!3478069 () Bool)

(declare-fun res!1403310 () Bool)

(assert (=> b!3478069 (=> (not res!1403310) (not e!2154354))))

(assert (=> b!3478069 (= res!1403310 (matchR!4795 (regex!5452 (get!11928 (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 (h!42649 tokens!494)))))) (list!13573 (charsOf!3466 (h!42649 tokens!494)))))))

(declare-fun b!3478070 () Bool)

(assert (=> b!3478070 (= e!2154354 (= (rule!8052 (h!42649 tokens!494)) (get!11928 (getRuleFromTag!1095 thiss!18206 rules!2135 (tag!6070 (rule!8052 (h!42649 tokens!494)))))))))

(assert (= (and d!1004553 res!1403309) b!3478069))

(assert (= (and b!3478069 res!1403310) b!3478070))

(assert (=> d!1004553 m!3892511))

(assert (=> d!1004553 m!3892511))

(declare-fun m!3893703 () Bool)

(assert (=> d!1004553 m!3893703))

(declare-fun m!3893705 () Bool)

(assert (=> d!1004553 m!3893705))

(assert (=> d!1004553 m!3892659))

(assert (=> b!3478069 m!3892587))

(declare-fun m!3893707 () Bool)

(assert (=> b!3478069 m!3893707))

(assert (=> b!3478069 m!3892511))

(assert (=> b!3478069 m!3892585))

(assert (=> b!3478069 m!3892511))

(declare-fun m!3893709 () Bool)

(assert (=> b!3478069 m!3893709))

(assert (=> b!3478069 m!3892585))

(assert (=> b!3478069 m!3892587))

(assert (=> b!3478070 m!3892511))

(assert (=> b!3478070 m!3892511))

(assert (=> b!3478070 m!3893709))

(assert (=> b!3477348 d!1004553))

(declare-fun d!1004555 () Bool)

(declare-fun lt!1184033 () BalanceConc!22172)

(assert (=> d!1004555 (= (list!13573 lt!1184033) (printListTailRec!698 thiss!18206 (dropList!1215 lt!1183723 0) (list!13573 (BalanceConc!22173 Empty!11279))))))

(declare-fun e!2154356 () BalanceConc!22172)

(assert (=> d!1004555 (= lt!1184033 e!2154356)))

(declare-fun c!596494 () Bool)

(assert (=> d!1004555 (= c!596494 (>= 0 (size!28266 lt!1183723)))))

(declare-fun e!2154355 () Bool)

(assert (=> d!1004555 e!2154355))

(declare-fun res!1403311 () Bool)

(assert (=> d!1004555 (=> (not res!1403311) (not e!2154355))))

(assert (=> d!1004555 (= res!1403311 (>= 0 0))))

(assert (=> d!1004555 (= (printTailRec!1536 thiss!18206 lt!1183723 0 (BalanceConc!22173 Empty!11279)) lt!1184033)))

(declare-fun b!3478071 () Bool)

(assert (=> b!3478071 (= e!2154355 (<= 0 (size!28266 lt!1183723)))))

(declare-fun b!3478072 () Bool)

(assert (=> b!3478072 (= e!2154356 (BalanceConc!22173 Empty!11279))))

(declare-fun b!3478073 () Bool)

(assert (=> b!3478073 (= e!2154356 (printTailRec!1536 thiss!18206 lt!1183723 (+ 0 1) (++!9195 (BalanceConc!22173 Empty!11279) (charsOf!3466 (apply!8801 lt!1183723 0)))))))

(declare-fun lt!1184035 () List!37353)

(assert (=> b!3478073 (= lt!1184035 (list!13577 lt!1183723))))

(declare-fun lt!1184039 () Unit!52658)

(assert (=> b!3478073 (= lt!1184039 (lemmaDropApply!1173 lt!1184035 0))))

(assert (=> b!3478073 (= (head!7343 (drop!2023 lt!1184035 0)) (apply!8804 lt!1184035 0))))

(declare-fun lt!1184036 () Unit!52658)

(assert (=> b!3478073 (= lt!1184036 lt!1184039)))

(declare-fun lt!1184034 () List!37353)

(assert (=> b!3478073 (= lt!1184034 (list!13577 lt!1183723))))

(declare-fun lt!1184038 () Unit!52658)

(assert (=> b!3478073 (= lt!1184038 (lemmaDropTail!1057 lt!1184034 0))))

(assert (=> b!3478073 (= (tail!5452 (drop!2023 lt!1184034 0)) (drop!2023 lt!1184034 (+ 0 1)))))

(declare-fun lt!1184037 () Unit!52658)

(assert (=> b!3478073 (= lt!1184037 lt!1184038)))

(assert (= (and d!1004555 res!1403311) b!3478071))

(assert (= (and d!1004555 c!596494) b!3478072))

(assert (= (and d!1004555 (not c!596494)) b!3478073))

(declare-fun m!3893711 () Bool)

(assert (=> d!1004555 m!3893711))

(assert (=> d!1004555 m!3893145))

(declare-fun m!3893713 () Bool)

(assert (=> d!1004555 m!3893713))

(declare-fun m!3893715 () Bool)

(assert (=> d!1004555 m!3893715))

(assert (=> d!1004555 m!3893711))

(assert (=> d!1004555 m!3893145))

(declare-fun m!3893717 () Bool)

(assert (=> d!1004555 m!3893717))

(assert (=> b!3478071 m!3893713))

(declare-fun m!3893719 () Bool)

(assert (=> b!3478073 m!3893719))

(declare-fun m!3893721 () Bool)

(assert (=> b!3478073 m!3893721))

(declare-fun m!3893723 () Bool)

(assert (=> b!3478073 m!3893723))

(assert (=> b!3478073 m!3893379))

(declare-fun m!3893725 () Bool)

(assert (=> b!3478073 m!3893725))

(declare-fun m!3893727 () Bool)

(assert (=> b!3478073 m!3893727))

(assert (=> b!3478073 m!3893725))

(declare-fun m!3893729 () Bool)

(assert (=> b!3478073 m!3893729))

(declare-fun m!3893731 () Bool)

(assert (=> b!3478073 m!3893731))

(declare-fun m!3893733 () Bool)

(assert (=> b!3478073 m!3893733))

(declare-fun m!3893735 () Bool)

(assert (=> b!3478073 m!3893735))

(assert (=> b!3478073 m!3893721))

(assert (=> b!3478073 m!3893729))

(assert (=> b!3478073 m!3893719))

(assert (=> b!3478073 m!3893733))

(declare-fun m!3893737 () Bool)

(assert (=> b!3478073 m!3893737))

(declare-fun m!3893739 () Bool)

(assert (=> b!3478073 m!3893739))

(declare-fun m!3893741 () Bool)

(assert (=> b!3478073 m!3893741))

(assert (=> b!3477348 d!1004555))

(declare-fun bs!561804 () Bool)

(declare-fun d!1004557 () Bool)

(assert (= bs!561804 (and d!1004557 b!3477349)))

(declare-fun lambda!122145 () Int)

(assert (=> bs!561804 (not (= lambda!122145 lambda!122134))))

(declare-fun bs!561805 () Bool)

(assert (= bs!561805 (and d!1004557 b!3477348)))

(assert (=> bs!561805 (= lambda!122145 lambda!122135)))

(declare-fun b!3478099 () Bool)

(declare-fun e!2154376 () Bool)

(assert (=> b!3478099 (= e!2154376 true)))

(declare-fun b!3478098 () Bool)

(declare-fun e!2154375 () Bool)

(assert (=> b!3478098 (= e!2154375 e!2154376)))

(declare-fun b!3478097 () Bool)

(declare-fun e!2154374 () Bool)

(assert (=> b!3478097 (= e!2154374 e!2154375)))

(assert (=> d!1004557 e!2154374))

(assert (= b!3478098 b!3478099))

(assert (= b!3478097 b!3478098))

(assert (= (and d!1004557 ((_ is Cons!37228) rules!2135)) b!3478097))

(assert (=> b!3478099 (< (dynLambda!15738 order!19897 (toValue!7688 (transformation!5452 (h!42648 rules!2135)))) (dynLambda!15739 order!19899 lambda!122145))))

(assert (=> b!3478099 (< (dynLambda!15740 order!19901 (toChars!7547 (transformation!5452 (h!42648 rules!2135)))) (dynLambda!15739 order!19899 lambda!122145))))

(assert (=> d!1004557 true))

(declare-fun e!2154373 () Bool)

(assert (=> d!1004557 e!2154373))

(declare-fun res!1403321 () Bool)

(assert (=> d!1004557 (=> (not res!1403321) (not e!2154373))))

(declare-fun lt!1184059 () Bool)

(assert (=> d!1004557 (= res!1403321 (= lt!1184059 (forall!7957 (list!13577 (seqFromList!3958 tokens!494)) lambda!122145)))))

(declare-fun forall!7958 (BalanceConc!22174 Int) Bool)

(assert (=> d!1004557 (= lt!1184059 (forall!7958 (seqFromList!3958 tokens!494) lambda!122145))))

(assert (=> d!1004557 (not (isEmpty!21615 rules!2135))))

(assert (=> d!1004557 (= (rulesProduceEachTokenIndividually!1492 thiss!18206 rules!2135 (seqFromList!3958 tokens!494)) lt!1184059)))

(declare-fun b!3478096 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1864 (LexerInterface!5041 List!37352 List!37353) Bool)

(assert (=> b!3478096 (= e!2154373 (= lt!1184059 (rulesProduceEachTokenIndividuallyList!1864 thiss!18206 rules!2135 (list!13577 (seqFromList!3958 tokens!494)))))))

(assert (= (and d!1004557 res!1403321) b!3478096))

(assert (=> d!1004557 m!3892589))

(declare-fun m!3893825 () Bool)

(assert (=> d!1004557 m!3893825))

(assert (=> d!1004557 m!3893825))

(declare-fun m!3893827 () Bool)

(assert (=> d!1004557 m!3893827))

(assert (=> d!1004557 m!3892589))

(declare-fun m!3893829 () Bool)

(assert (=> d!1004557 m!3893829))

(assert (=> d!1004557 m!3892647))

(assert (=> b!3478096 m!3892589))

(assert (=> b!3478096 m!3893825))

(assert (=> b!3478096 m!3893825))

(declare-fun m!3893831 () Bool)

(assert (=> b!3478096 m!3893831))

(assert (=> b!3477369 d!1004557))

(declare-fun d!1004579 () Bool)

(declare-fun fromListB!1800 (List!37353) BalanceConc!22174)

(assert (=> d!1004579 (= (seqFromList!3958 tokens!494) (fromListB!1800 tokens!494))))

(declare-fun bs!561806 () Bool)

(assert (= bs!561806 d!1004579))

(declare-fun m!3893837 () Bool)

(assert (=> bs!561806 m!3893837))

(assert (=> b!3477369 d!1004579))

(declare-fun d!1004581 () Bool)

(declare-fun res!1403324 () Bool)

(declare-fun e!2154404 () Bool)

(assert (=> d!1004581 (=> (not res!1403324) (not e!2154404))))

(declare-fun rulesValid!2053 (LexerInterface!5041 List!37352) Bool)

(assert (=> d!1004581 (= res!1403324 (rulesValid!2053 thiss!18206 rules!2135))))

(assert (=> d!1004581 (= (rulesInvariant!4438 thiss!18206 rules!2135) e!2154404)))

(declare-fun b!3478147 () Bool)

(declare-datatypes ((List!37355 0))(
  ( (Nil!37231) (Cons!37231 (h!42651 String!41744) (t!275282 List!37355)) )
))
(declare-fun noDuplicateTag!2049 (LexerInterface!5041 List!37352 List!37355) Bool)

(assert (=> b!3478147 (= e!2154404 (noDuplicateTag!2049 thiss!18206 rules!2135 Nil!37231))))

(assert (= (and d!1004581 res!1403324) b!3478147))

(declare-fun m!3893839 () Bool)

(assert (=> d!1004581 m!3893839))

(declare-fun m!3893841 () Bool)

(assert (=> b!3478147 m!3893841))

(assert (=> b!3477376 d!1004581))

(declare-fun lt!1184062 () Bool)

(declare-fun d!1004583 () Bool)

(declare-fun isEmpty!21622 (List!37353) Bool)

(assert (=> d!1004583 (= lt!1184062 (isEmpty!21622 (list!13577 (_1!21626 (lex!2367 thiss!18206 rules!2135 lt!1183730)))))))

(declare-fun isEmpty!21623 (Conc!11280) Bool)

(assert (=> d!1004583 (= lt!1184062 (isEmpty!21623 (c!596344 (_1!21626 (lex!2367 thiss!18206 rules!2135 lt!1183730)))))))

(assert (=> d!1004583 (= (isEmpty!21613 (_1!21626 (lex!2367 thiss!18206 rules!2135 lt!1183730))) lt!1184062)))

(declare-fun bs!561807 () Bool)

(assert (= bs!561807 d!1004583))

(declare-fun m!3893843 () Bool)

(assert (=> bs!561807 m!3893843))

(assert (=> bs!561807 m!3893843))

(declare-fun m!3893845 () Bool)

(assert (=> bs!561807 m!3893845))

(declare-fun m!3893847 () Bool)

(assert (=> bs!561807 m!3893847))

(assert (=> b!3477354 d!1004583))

(declare-fun d!1004585 () Bool)

(declare-fun e!2154416 () Bool)

(assert (=> d!1004585 e!2154416))

(declare-fun res!1403327 () Bool)

(assert (=> d!1004585 (=> (not res!1403327) (not e!2154416))))

(declare-fun e!2154415 () Bool)

(assert (=> d!1004585 (= res!1403327 e!2154415)))

(declare-fun c!596500 () Bool)

(declare-fun lt!1184063 () tuple2!36984)

(assert (=> d!1004585 (= c!596500 (> (size!28266 (_1!21626 lt!1184063)) 0))))

(assert (=> d!1004585 (= lt!1184063 (lexTailRecV2!1066 thiss!18206 rules!2135 lt!1183730 (BalanceConc!22173 Empty!11279) lt!1183730 (BalanceConc!22175 Empty!11280)))))

(assert (=> d!1004585 (= (lex!2367 thiss!18206 rules!2135 lt!1183730) lt!1184063)))

(declare-fun b!3478154 () Bool)

(assert (=> b!3478154 (= e!2154415 (= (_2!21626 lt!1184063) lt!1183730))))

(declare-fun b!3478155 () Bool)

(assert (=> b!3478155 (= e!2154416 (= (list!13573 (_2!21626 lt!1184063)) (_2!21630 (lexList!1458 thiss!18206 rules!2135 (list!13573 lt!1183730)))))))

(declare-fun b!3478156 () Bool)

(declare-fun e!2154417 () Bool)

(assert (=> b!3478156 (= e!2154417 (not (isEmpty!21613 (_1!21626 lt!1184063))))))

(declare-fun b!3478157 () Bool)

(assert (=> b!3478157 (= e!2154415 e!2154417)))

(declare-fun res!1403326 () Bool)

(assert (=> b!3478157 (= res!1403326 (< (size!28273 (_2!21626 lt!1184063)) (size!28273 lt!1183730)))))

(assert (=> b!3478157 (=> (not res!1403326) (not e!2154417))))

(declare-fun b!3478158 () Bool)

(declare-fun res!1403325 () Bool)

(assert (=> b!3478158 (=> (not res!1403325) (not e!2154416))))

(assert (=> b!3478158 (= res!1403325 (= (list!13577 (_1!21626 lt!1184063)) (_1!21630 (lexList!1458 thiss!18206 rules!2135 (list!13573 lt!1183730)))))))

(assert (= (and d!1004585 c!596500) b!3478157))

(assert (= (and d!1004585 (not c!596500)) b!3478154))

(assert (= (and b!3478157 res!1403326) b!3478156))

(assert (= (and d!1004585 res!1403327) b!3478158))

(assert (= (and b!3478158 res!1403325) b!3478155))

(declare-fun m!3893849 () Bool)

(assert (=> b!3478156 m!3893849))

(declare-fun m!3893851 () Bool)

(assert (=> d!1004585 m!3893851))

(declare-fun m!3893853 () Bool)

(assert (=> d!1004585 m!3893853))

(declare-fun m!3893855 () Bool)

(assert (=> b!3478155 m!3893855))

(declare-fun m!3893857 () Bool)

(assert (=> b!3478155 m!3893857))

(assert (=> b!3478155 m!3893857))

(declare-fun m!3893859 () Bool)

(assert (=> b!3478155 m!3893859))

(declare-fun m!3893861 () Bool)

(assert (=> b!3478158 m!3893861))

(assert (=> b!3478158 m!3893857))

(assert (=> b!3478158 m!3893857))

(assert (=> b!3478158 m!3893859))

(declare-fun m!3893863 () Bool)

(assert (=> b!3478157 m!3893863))

(declare-fun m!3893865 () Bool)

(assert (=> b!3478157 m!3893865))

(assert (=> b!3477354 d!1004585))

(declare-fun d!1004587 () Bool)

(declare-fun fromListB!1801 (List!37351) BalanceConc!22172)

(assert (=> d!1004587 (= (seqFromList!3957 lt!1183726) (fromListB!1801 lt!1183726))))

(declare-fun bs!561811 () Bool)

(assert (= bs!561811 d!1004587))

(declare-fun m!3893875 () Bool)

(assert (=> bs!561811 m!3893875))

(assert (=> b!3477354 d!1004587))

(declare-fun d!1004595 () Bool)

(declare-fun lt!1184064 () Bool)

(assert (=> d!1004595 (= lt!1184064 (select (content!5213 rules!2135) (rule!8052 separatorToken!241)))))

(declare-fun e!2154426 () Bool)

(assert (=> d!1004595 (= lt!1184064 e!2154426)))

(declare-fun res!1403329 () Bool)

(assert (=> d!1004595 (=> (not res!1403329) (not e!2154426))))

(assert (=> d!1004595 (= res!1403329 ((_ is Cons!37228) rules!2135))))

(assert (=> d!1004595 (= (contains!6932 rules!2135 (rule!8052 separatorToken!241)) lt!1184064)))

(declare-fun b!3478164 () Bool)

(declare-fun e!2154425 () Bool)

(assert (=> b!3478164 (= e!2154426 e!2154425)))

(declare-fun res!1403328 () Bool)

(assert (=> b!3478164 (=> res!1403328 e!2154425)))

(assert (=> b!3478164 (= res!1403328 (= (h!42648 rules!2135) (rule!8052 separatorToken!241)))))

(declare-fun b!3478165 () Bool)

(assert (=> b!3478165 (= e!2154425 (contains!6932 (t!275185 rules!2135) (rule!8052 separatorToken!241)))))

(assert (= (and d!1004595 res!1403329) b!3478164))

(assert (= (and b!3478164 (not res!1403328)) b!3478165))

(assert (=> d!1004595 m!3893137))

(declare-fun m!3893877 () Bool)

(assert (=> d!1004595 m!3893877))

(declare-fun m!3893879 () Bool)

(assert (=> b!3478165 m!3893879))

(assert (=> b!3477375 d!1004595))

(declare-fun d!1004597 () Bool)

(declare-fun res!1403334 () Bool)

(declare-fun e!2154429 () Bool)

(assert (=> d!1004597 (=> (not res!1403334) (not e!2154429))))

(assert (=> d!1004597 (= res!1403334 (not (isEmpty!21614 (originalCharacters!6166 separatorToken!241))))))

(assert (=> d!1004597 (= (inv!50418 separatorToken!241) e!2154429)))

(declare-fun b!3478170 () Bool)

(declare-fun res!1403335 () Bool)

(assert (=> b!3478170 (=> (not res!1403335) (not e!2154429))))

(assert (=> b!3478170 (= res!1403335 (= (originalCharacters!6166 separatorToken!241) (list!13573 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (value!175842 separatorToken!241)))))))

(declare-fun b!3478171 () Bool)

(assert (=> b!3478171 (= e!2154429 (= (size!28265 separatorToken!241) (size!28267 (originalCharacters!6166 separatorToken!241))))))

(assert (= (and d!1004597 res!1403334) b!3478170))

(assert (= (and b!3478170 res!1403335) b!3478171))

(declare-fun b_lambda!100535 () Bool)

(assert (=> (not b_lambda!100535) (not b!3478170)))

(assert (=> b!3478170 t!275188))

(declare-fun b_and!245363 () Bool)

(assert (= b_and!245319 (and (=> t!275188 result!234724) b_and!245363)))

(assert (=> b!3478170 t!275190))

(declare-fun b_and!245365 () Bool)

(assert (= b_and!245321 (and (=> t!275190 result!234728) b_and!245365)))

(assert (=> b!3478170 t!275192))

(declare-fun b_and!245367 () Bool)

(assert (= b_and!245323 (and (=> t!275192 result!234730) b_and!245367)))

(declare-fun m!3893881 () Bool)

(assert (=> d!1004597 m!3893881))

(assert (=> b!3478170 m!3892709))

(assert (=> b!3478170 m!3892709))

(declare-fun m!3893883 () Bool)

(assert (=> b!3478170 m!3893883))

(declare-fun m!3893885 () Bool)

(assert (=> b!3478171 m!3893885))

(assert (=> start!323522 d!1004597))

(declare-fun d!1004599 () Bool)

(declare-fun lt!1184065 () Token!10270)

(assert (=> d!1004599 (= lt!1184065 (apply!8804 (list!13577 (_1!21626 lt!1183717)) 0))))

(assert (=> d!1004599 (= lt!1184065 (apply!8805 (c!596344 (_1!21626 lt!1183717)) 0))))

(declare-fun e!2154430 () Bool)

(assert (=> d!1004599 e!2154430))

(declare-fun res!1403336 () Bool)

(assert (=> d!1004599 (=> (not res!1403336) (not e!2154430))))

(assert (=> d!1004599 (= res!1403336 (<= 0 0))))

(assert (=> d!1004599 (= (apply!8801 (_1!21626 lt!1183717) 0) lt!1184065)))

(declare-fun b!3478172 () Bool)

(assert (=> b!3478172 (= e!2154430 (< 0 (size!28266 (_1!21626 lt!1183717))))))

(assert (= (and d!1004599 res!1403336) b!3478172))

(assert (=> d!1004599 m!3893197))

(assert (=> d!1004599 m!3893197))

(declare-fun m!3893887 () Bool)

(assert (=> d!1004599 m!3893887))

(declare-fun m!3893889 () Bool)

(assert (=> d!1004599 m!3893889))

(assert (=> b!3478172 m!3892499))

(assert (=> b!3477356 d!1004599))

(declare-fun d!1004601 () Bool)

(assert (=> d!1004601 (= (isEmpty!21615 rules!2135) ((_ is Nil!37228) rules!2135))))

(assert (=> b!3477377 d!1004601))

(declare-fun d!1004603 () Bool)

(declare-fun res!1403337 () Bool)

(declare-fun e!2154431 () Bool)

(assert (=> d!1004603 (=> (not res!1403337) (not e!2154431))))

(assert (=> d!1004603 (= res!1403337 (not (isEmpty!21614 (originalCharacters!6166 (h!42649 tokens!494)))))))

(assert (=> d!1004603 (= (inv!50418 (h!42649 tokens!494)) e!2154431)))

(declare-fun b!3478173 () Bool)

(declare-fun res!1403338 () Bool)

(assert (=> b!3478173 (=> (not res!1403338) (not e!2154431))))

(assert (=> b!3478173 (= res!1403338 (= (originalCharacters!6166 (h!42649 tokens!494)) (list!13573 (dynLambda!15743 (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (value!175842 (h!42649 tokens!494))))))))

(declare-fun b!3478174 () Bool)

(assert (=> b!3478174 (= e!2154431 (= (size!28265 (h!42649 tokens!494)) (size!28267 (originalCharacters!6166 (h!42649 tokens!494)))))))

(assert (= (and d!1004603 res!1403337) b!3478173))

(assert (= (and b!3478173 res!1403338) b!3478174))

(declare-fun b_lambda!100537 () Bool)

(assert (=> (not b_lambda!100537) (not b!3478173)))

(assert (=> b!3478173 t!275215))

(declare-fun b_and!245369 () Bool)

(assert (= b_and!245363 (and (=> t!275215 result!234752) b_and!245369)))

(assert (=> b!3478173 t!275217))

(declare-fun b_and!245371 () Bool)

(assert (= b_and!245365 (and (=> t!275217 result!234754) b_and!245371)))

(assert (=> b!3478173 t!275219))

(declare-fun b_and!245373 () Bool)

(assert (= b_and!245367 (and (=> t!275219 result!234756) b_and!245373)))

(declare-fun m!3893891 () Bool)

(assert (=> d!1004603 m!3893891))

(assert (=> b!3478173 m!3893073))

(assert (=> b!3478173 m!3893073))

(declare-fun m!3893893 () Bool)

(assert (=> b!3478173 m!3893893))

(declare-fun m!3893895 () Bool)

(assert (=> b!3478174 m!3893895))

(assert (=> b!3477352 d!1004603))

(declare-fun d!1004605 () Bool)

(declare-fun lt!1184066 () Bool)

(assert (=> d!1004605 (= lt!1184066 (isEmpty!21614 (list!13573 (_2!21626 lt!1183717))))))

(assert (=> d!1004605 (= lt!1184066 (isEmpty!21619 (c!596343 (_2!21626 lt!1183717))))))

(assert (=> d!1004605 (= (isEmpty!21612 (_2!21626 lt!1183717)) lt!1184066)))

(declare-fun bs!561812 () Bool)

(assert (= bs!561812 d!1004605))

(declare-fun m!3893897 () Bool)

(assert (=> bs!561812 m!3893897))

(assert (=> bs!561812 m!3893897))

(declare-fun m!3893899 () Bool)

(assert (=> bs!561812 m!3893899))

(declare-fun m!3893901 () Bool)

(assert (=> bs!561812 m!3893901))

(assert (=> b!3477351 d!1004605))

(declare-fun b!3478175 () Bool)

(declare-fun res!1403346 () Bool)

(declare-fun e!2154434 () Bool)

(assert (=> b!3478175 (=> (not res!1403346) (not e!2154434))))

(declare-fun call!250885 () Bool)

(assert (=> b!3478175 (= res!1403346 (not call!250885))))

(declare-fun b!3478176 () Bool)

(declare-fun e!2154433 () Bool)

(assert (=> b!3478176 (= e!2154433 (not (= (head!7341 lt!1183726) (c!596342 (regex!5452 lt!1183725)))))))

(declare-fun b!3478177 () Bool)

(assert (=> b!3478177 (= e!2154434 (= (head!7341 lt!1183726) (c!596342 (regex!5452 lt!1183725))))))

(declare-fun b!3478178 () Bool)

(declare-fun res!1403344 () Bool)

(declare-fun e!2154432 () Bool)

(assert (=> b!3478178 (=> res!1403344 e!2154432)))

(assert (=> b!3478178 (= res!1403344 e!2154434)))

(declare-fun res!1403341 () Bool)

(assert (=> b!3478178 (=> (not res!1403341) (not e!2154434))))

(declare-fun lt!1184067 () Bool)

(assert (=> b!3478178 (= res!1403341 lt!1184067)))

(declare-fun d!1004607 () Bool)

(declare-fun e!2154435 () Bool)

(assert (=> d!1004607 e!2154435))

(declare-fun c!596503 () Bool)

(assert (=> d!1004607 (= c!596503 ((_ is EmptyExpr!10211) (regex!5452 lt!1183725)))))

(declare-fun e!2154437 () Bool)

(assert (=> d!1004607 (= lt!1184067 e!2154437)))

(declare-fun c!596502 () Bool)

(assert (=> d!1004607 (= c!596502 (isEmpty!21614 lt!1183726))))

(assert (=> d!1004607 (validRegex!4653 (regex!5452 lt!1183725))))

(assert (=> d!1004607 (= (matchR!4795 (regex!5452 lt!1183725) lt!1183726) lt!1184067)))

(declare-fun b!3478179 () Bool)

(declare-fun res!1403339 () Bool)

(assert (=> b!3478179 (=> res!1403339 e!2154433)))

(assert (=> b!3478179 (= res!1403339 (not (isEmpty!21614 (tail!5450 lt!1183726))))))

(declare-fun b!3478180 () Bool)

(assert (=> b!3478180 (= e!2154437 (matchR!4795 (derivativeStep!3050 (regex!5452 lt!1183725) (head!7341 lt!1183726)) (tail!5450 lt!1183726)))))

(declare-fun b!3478181 () Bool)

(declare-fun e!2154436 () Bool)

(assert (=> b!3478181 (= e!2154436 e!2154433)))

(declare-fun res!1403340 () Bool)

(assert (=> b!3478181 (=> res!1403340 e!2154433)))

(assert (=> b!3478181 (= res!1403340 call!250885)))

(declare-fun b!3478182 () Bool)

(assert (=> b!3478182 (= e!2154435 (= lt!1184067 call!250885))))

(declare-fun bm!250880 () Bool)

(assert (=> bm!250880 (= call!250885 (isEmpty!21614 lt!1183726))))

(declare-fun b!3478183 () Bool)

(declare-fun res!1403342 () Bool)

(assert (=> b!3478183 (=> res!1403342 e!2154432)))

(assert (=> b!3478183 (= res!1403342 (not ((_ is ElementMatch!10211) (regex!5452 lt!1183725))))))

(declare-fun e!2154438 () Bool)

(assert (=> b!3478183 (= e!2154438 e!2154432)))

(declare-fun b!3478184 () Bool)

(assert (=> b!3478184 (= e!2154437 (nullable!3497 (regex!5452 lt!1183725)))))

(declare-fun b!3478185 () Bool)

(assert (=> b!3478185 (= e!2154438 (not lt!1184067))))

(declare-fun b!3478186 () Bool)

(assert (=> b!3478186 (= e!2154435 e!2154438)))

(declare-fun c!596501 () Bool)

(assert (=> b!3478186 (= c!596501 ((_ is EmptyLang!10211) (regex!5452 lt!1183725)))))

(declare-fun b!3478187 () Bool)

(declare-fun res!1403343 () Bool)

(assert (=> b!3478187 (=> (not res!1403343) (not e!2154434))))

(assert (=> b!3478187 (= res!1403343 (isEmpty!21614 (tail!5450 lt!1183726)))))

(declare-fun b!3478188 () Bool)

(assert (=> b!3478188 (= e!2154432 e!2154436)))

(declare-fun res!1403345 () Bool)

(assert (=> b!3478188 (=> (not res!1403345) (not e!2154436))))

(assert (=> b!3478188 (= res!1403345 (not lt!1184067))))

(assert (= (and d!1004607 c!596502) b!3478184))

(assert (= (and d!1004607 (not c!596502)) b!3478180))

(assert (= (and d!1004607 c!596503) b!3478182))

(assert (= (and d!1004607 (not c!596503)) b!3478186))

(assert (= (and b!3478186 c!596501) b!3478185))

(assert (= (and b!3478186 (not c!596501)) b!3478183))

(assert (= (and b!3478183 (not res!1403342)) b!3478178))

(assert (= (and b!3478178 res!1403341) b!3478175))

(assert (= (and b!3478175 res!1403346) b!3478187))

(assert (= (and b!3478187 res!1403343) b!3478177))

(assert (= (and b!3478178 (not res!1403344)) b!3478188))

(assert (= (and b!3478188 res!1403345) b!3478181))

(assert (= (and b!3478181 (not res!1403340)) b!3478179))

(assert (= (and b!3478179 (not res!1403339)) b!3478176))

(assert (= (or b!3478182 b!3478175 b!3478181) bm!250880))

(declare-fun m!3893903 () Bool)

(assert (=> b!3478180 m!3893903))

(assert (=> b!3478180 m!3893903))

(declare-fun m!3893905 () Bool)

(assert (=> b!3478180 m!3893905))

(declare-fun m!3893907 () Bool)

(assert (=> b!3478180 m!3893907))

(assert (=> b!3478180 m!3893905))

(assert (=> b!3478180 m!3893907))

(declare-fun m!3893909 () Bool)

(assert (=> b!3478180 m!3893909))

(assert (=> b!3478187 m!3893907))

(assert (=> b!3478187 m!3893907))

(declare-fun m!3893911 () Bool)

(assert (=> b!3478187 m!3893911))

(assert (=> b!3478177 m!3893903))

(declare-fun m!3893913 () Bool)

(assert (=> d!1004607 m!3893913))

(declare-fun m!3893915 () Bool)

(assert (=> d!1004607 m!3893915))

(declare-fun m!3893917 () Bool)

(assert (=> b!3478184 m!3893917))

(assert (=> b!3478179 m!3893907))

(assert (=> b!3478179 m!3893907))

(assert (=> b!3478179 m!3893911))

(assert (=> b!3478176 m!3893903))

(assert (=> bm!250880 m!3893913))

(assert (=> b!3477353 d!1004607))

(declare-fun d!1004609 () Bool)

(assert (=> d!1004609 (= (get!11928 lt!1183720) (v!36928 lt!1183720))))

(assert (=> b!3477353 d!1004609))

(declare-fun d!1004611 () Bool)

(declare-fun lt!1184069 () Bool)

(declare-fun e!2154440 () Bool)

(assert (=> d!1004611 (= lt!1184069 e!2154440)))

(declare-fun res!1403347 () Bool)

(assert (=> d!1004611 (=> (not res!1403347) (not e!2154440))))

(assert (=> d!1004611 (= res!1403347 (= (list!13577 (_1!21626 (lex!2367 thiss!18206 rules!2135 (print!2106 thiss!18206 (singletonSeq!2548 separatorToken!241))))) (list!13577 (singletonSeq!2548 separatorToken!241))))))

(declare-fun e!2154439 () Bool)

(assert (=> d!1004611 (= lt!1184069 e!2154439)))

(declare-fun res!1403349 () Bool)

(assert (=> d!1004611 (=> (not res!1403349) (not e!2154439))))

(declare-fun lt!1184068 () tuple2!36984)

(assert (=> d!1004611 (= res!1403349 (= (size!28266 (_1!21626 lt!1184068)) 1))))

(assert (=> d!1004611 (= lt!1184068 (lex!2367 thiss!18206 rules!2135 (print!2106 thiss!18206 (singletonSeq!2548 separatorToken!241))))))

(assert (=> d!1004611 (not (isEmpty!21615 rules!2135))))

(assert (=> d!1004611 (= (rulesProduceIndividualToken!2533 thiss!18206 rules!2135 separatorToken!241) lt!1184069)))

(declare-fun b!3478189 () Bool)

(declare-fun res!1403348 () Bool)

(assert (=> b!3478189 (=> (not res!1403348) (not e!2154439))))

(assert (=> b!3478189 (= res!1403348 (= (apply!8801 (_1!21626 lt!1184068) 0) separatorToken!241))))

(declare-fun b!3478190 () Bool)

(assert (=> b!3478190 (= e!2154439 (isEmpty!21612 (_2!21626 lt!1184068)))))

(declare-fun b!3478191 () Bool)

(assert (=> b!3478191 (= e!2154440 (isEmpty!21612 (_2!21626 (lex!2367 thiss!18206 rules!2135 (print!2106 thiss!18206 (singletonSeq!2548 separatorToken!241))))))))

(assert (= (and d!1004611 res!1403349) b!3478189))

(assert (= (and b!3478189 res!1403348) b!3478190))

(assert (= (and d!1004611 res!1403347) b!3478191))

(assert (=> d!1004611 m!3892515))

(declare-fun m!3893919 () Bool)

(assert (=> d!1004611 m!3893919))

(declare-fun m!3893921 () Bool)

(assert (=> d!1004611 m!3893921))

(assert (=> d!1004611 m!3892515))

(declare-fun m!3893923 () Bool)

(assert (=> d!1004611 m!3893923))

(declare-fun m!3893925 () Bool)

(assert (=> d!1004611 m!3893925))

(declare-fun m!3893927 () Bool)

(assert (=> d!1004611 m!3893927))

(assert (=> d!1004611 m!3892647))

(assert (=> d!1004611 m!3892515))

(assert (=> d!1004611 m!3893925))

(declare-fun m!3893929 () Bool)

(assert (=> b!3478189 m!3893929))

(declare-fun m!3893931 () Bool)

(assert (=> b!3478190 m!3893931))

(assert (=> b!3478191 m!3892515))

(assert (=> b!3478191 m!3892515))

(assert (=> b!3478191 m!3893925))

(assert (=> b!3478191 m!3893925))

(assert (=> b!3478191 m!3893927))

(declare-fun m!3893933 () Bool)

(assert (=> b!3478191 m!3893933))

(assert (=> b!3477374 d!1004611))

(declare-fun d!1004613 () Bool)

(assert (=> d!1004613 (= (inv!50415 (tag!6070 (rule!8052 (h!42649 tokens!494)))) (= (mod (str.len (value!175841 (tag!6070 (rule!8052 (h!42649 tokens!494))))) 2) 0))))

(assert (=> b!3477360 d!1004613))

(declare-fun d!1004615 () Bool)

(declare-fun res!1403350 () Bool)

(declare-fun e!2154441 () Bool)

(assert (=> d!1004615 (=> (not res!1403350) (not e!2154441))))

(assert (=> d!1004615 (= res!1403350 (semiInverseModEq!2293 (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494))))))))

(assert (=> d!1004615 (= (inv!50419 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) e!2154441)))

(declare-fun b!3478192 () Bool)

(assert (=> b!3478192 (= e!2154441 (equivClasses!2192 (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494))))))))

(assert (= (and d!1004615 res!1403350) b!3478192))

(declare-fun m!3893935 () Bool)

(assert (=> d!1004615 m!3893935))

(declare-fun m!3893937 () Bool)

(assert (=> b!3478192 m!3893937))

(assert (=> b!3477360 d!1004615))

(declare-fun b!3478193 () Bool)

(declare-fun res!1403358 () Bool)

(declare-fun e!2154444 () Bool)

(assert (=> b!3478193 (=> (not res!1403358) (not e!2154444))))

(declare-fun call!250886 () Bool)

(assert (=> b!3478193 (= res!1403358 (not call!250886))))

(declare-fun b!3478194 () Bool)

(declare-fun e!2154443 () Bool)

(assert (=> b!3478194 (= e!2154443 (not (= (head!7341 lt!1183732) (c!596342 (regex!5452 lt!1183722)))))))

(declare-fun b!3478195 () Bool)

(assert (=> b!3478195 (= e!2154444 (= (head!7341 lt!1183732) (c!596342 (regex!5452 lt!1183722))))))

(declare-fun b!3478196 () Bool)

(declare-fun res!1403356 () Bool)

(declare-fun e!2154442 () Bool)

(assert (=> b!3478196 (=> res!1403356 e!2154442)))

(assert (=> b!3478196 (= res!1403356 e!2154444)))

(declare-fun res!1403353 () Bool)

(assert (=> b!3478196 (=> (not res!1403353) (not e!2154444))))

(declare-fun lt!1184070 () Bool)

(assert (=> b!3478196 (= res!1403353 lt!1184070)))

(declare-fun d!1004617 () Bool)

(declare-fun e!2154445 () Bool)

(assert (=> d!1004617 e!2154445))

(declare-fun c!596506 () Bool)

(assert (=> d!1004617 (= c!596506 ((_ is EmptyExpr!10211) (regex!5452 lt!1183722)))))

(declare-fun e!2154447 () Bool)

(assert (=> d!1004617 (= lt!1184070 e!2154447)))

(declare-fun c!596505 () Bool)

(assert (=> d!1004617 (= c!596505 (isEmpty!21614 lt!1183732))))

(assert (=> d!1004617 (validRegex!4653 (regex!5452 lt!1183722))))

(assert (=> d!1004617 (= (matchR!4795 (regex!5452 lt!1183722) lt!1183732) lt!1184070)))

(declare-fun b!3478197 () Bool)

(declare-fun res!1403351 () Bool)

(assert (=> b!3478197 (=> res!1403351 e!2154443)))

(assert (=> b!3478197 (= res!1403351 (not (isEmpty!21614 (tail!5450 lt!1183732))))))

(declare-fun b!3478198 () Bool)

(assert (=> b!3478198 (= e!2154447 (matchR!4795 (derivativeStep!3050 (regex!5452 lt!1183722) (head!7341 lt!1183732)) (tail!5450 lt!1183732)))))

(declare-fun b!3478199 () Bool)

(declare-fun e!2154446 () Bool)

(assert (=> b!3478199 (= e!2154446 e!2154443)))

(declare-fun res!1403352 () Bool)

(assert (=> b!3478199 (=> res!1403352 e!2154443)))

(assert (=> b!3478199 (= res!1403352 call!250886)))

(declare-fun b!3478200 () Bool)

(assert (=> b!3478200 (= e!2154445 (= lt!1184070 call!250886))))

(declare-fun bm!250881 () Bool)

(assert (=> bm!250881 (= call!250886 (isEmpty!21614 lt!1183732))))

(declare-fun b!3478201 () Bool)

(declare-fun res!1403354 () Bool)

(assert (=> b!3478201 (=> res!1403354 e!2154442)))

(assert (=> b!3478201 (= res!1403354 (not ((_ is ElementMatch!10211) (regex!5452 lt!1183722))))))

(declare-fun e!2154448 () Bool)

(assert (=> b!3478201 (= e!2154448 e!2154442)))

(declare-fun b!3478202 () Bool)

(assert (=> b!3478202 (= e!2154447 (nullable!3497 (regex!5452 lt!1183722)))))

(declare-fun b!3478203 () Bool)

(assert (=> b!3478203 (= e!2154448 (not lt!1184070))))

(declare-fun b!3478204 () Bool)

(assert (=> b!3478204 (= e!2154445 e!2154448)))

(declare-fun c!596504 () Bool)

(assert (=> b!3478204 (= c!596504 ((_ is EmptyLang!10211) (regex!5452 lt!1183722)))))

(declare-fun b!3478205 () Bool)

(declare-fun res!1403355 () Bool)

(assert (=> b!3478205 (=> (not res!1403355) (not e!2154444))))

(assert (=> b!3478205 (= res!1403355 (isEmpty!21614 (tail!5450 lt!1183732)))))

(declare-fun b!3478206 () Bool)

(assert (=> b!3478206 (= e!2154442 e!2154446)))

(declare-fun res!1403357 () Bool)

(assert (=> b!3478206 (=> (not res!1403357) (not e!2154446))))

(assert (=> b!3478206 (= res!1403357 (not lt!1184070))))

(assert (= (and d!1004617 c!596505) b!3478202))

(assert (= (and d!1004617 (not c!596505)) b!3478198))

(assert (= (and d!1004617 c!596506) b!3478200))

(assert (= (and d!1004617 (not c!596506)) b!3478204))

(assert (= (and b!3478204 c!596504) b!3478203))

(assert (= (and b!3478204 (not c!596504)) b!3478201))

(assert (= (and b!3478201 (not res!1403354)) b!3478196))

(assert (= (and b!3478196 res!1403353) b!3478193))

(assert (= (and b!3478193 res!1403358) b!3478205))

(assert (= (and b!3478205 res!1403355) b!3478195))

(assert (= (and b!3478196 (not res!1403356)) b!3478206))

(assert (= (and b!3478206 res!1403357) b!3478199))

(assert (= (and b!3478199 (not res!1403352)) b!3478197))

(assert (= (and b!3478197 (not res!1403351)) b!3478194))

(assert (= (or b!3478200 b!3478193 b!3478199) bm!250881))

(assert (=> b!3478198 m!3892483))

(assert (=> b!3478198 m!3892483))

(declare-fun m!3893939 () Bool)

(assert (=> b!3478198 m!3893939))

(assert (=> b!3478198 m!3892795))

(assert (=> b!3478198 m!3893939))

(assert (=> b!3478198 m!3892795))

(declare-fun m!3893941 () Bool)

(assert (=> b!3478198 m!3893941))

(assert (=> b!3478205 m!3892795))

(assert (=> b!3478205 m!3892795))

(assert (=> b!3478205 m!3892799))

(assert (=> b!3478195 m!3892483))

(assert (=> d!1004617 m!3892803))

(declare-fun m!3893943 () Bool)

(assert (=> d!1004617 m!3893943))

(declare-fun m!3893945 () Bool)

(assert (=> b!3478202 m!3893945))

(assert (=> b!3478197 m!3892795))

(assert (=> b!3478197 m!3892795))

(assert (=> b!3478197 m!3892799))

(assert (=> b!3478194 m!3892483))

(assert (=> bm!250881 m!3892803))

(assert (=> b!3477381 d!1004617))

(declare-fun d!1004619 () Bool)

(assert (=> d!1004619 (= (get!11928 lt!1183719) (v!36928 lt!1183719))))

(assert (=> b!3477381 d!1004619))

(declare-fun b!3478207 () Bool)

(declare-fun res!1403366 () Bool)

(declare-fun e!2154451 () Bool)

(assert (=> b!3478207 (=> (not res!1403366) (not e!2154451))))

(declare-fun call!250887 () Bool)

(assert (=> b!3478207 (= res!1403366 (not call!250887))))

(declare-fun b!3478208 () Bool)

(declare-fun e!2154450 () Bool)

(assert (=> b!3478208 (= e!2154450 (not (= (head!7341 lt!1183726) (c!596342 (regex!5452 (rule!8052 (h!42649 tokens!494)))))))))

(declare-fun b!3478209 () Bool)

(assert (=> b!3478209 (= e!2154451 (= (head!7341 lt!1183726) (c!596342 (regex!5452 (rule!8052 (h!42649 tokens!494))))))))

(declare-fun b!3478210 () Bool)

(declare-fun res!1403364 () Bool)

(declare-fun e!2154449 () Bool)

(assert (=> b!3478210 (=> res!1403364 e!2154449)))

(assert (=> b!3478210 (= res!1403364 e!2154451)))

(declare-fun res!1403361 () Bool)

(assert (=> b!3478210 (=> (not res!1403361) (not e!2154451))))

(declare-fun lt!1184071 () Bool)

(assert (=> b!3478210 (= res!1403361 lt!1184071)))

(declare-fun d!1004621 () Bool)

(declare-fun e!2154452 () Bool)

(assert (=> d!1004621 e!2154452))

(declare-fun c!596509 () Bool)

(assert (=> d!1004621 (= c!596509 ((_ is EmptyExpr!10211) (regex!5452 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun e!2154454 () Bool)

(assert (=> d!1004621 (= lt!1184071 e!2154454)))

(declare-fun c!596508 () Bool)

(assert (=> d!1004621 (= c!596508 (isEmpty!21614 lt!1183726))))

(assert (=> d!1004621 (validRegex!4653 (regex!5452 (rule!8052 (h!42649 tokens!494))))))

(assert (=> d!1004621 (= (matchR!4795 (regex!5452 (rule!8052 (h!42649 tokens!494))) lt!1183726) lt!1184071)))

(declare-fun b!3478211 () Bool)

(declare-fun res!1403359 () Bool)

(assert (=> b!3478211 (=> res!1403359 e!2154450)))

(assert (=> b!3478211 (= res!1403359 (not (isEmpty!21614 (tail!5450 lt!1183726))))))

(declare-fun b!3478212 () Bool)

(assert (=> b!3478212 (= e!2154454 (matchR!4795 (derivativeStep!3050 (regex!5452 (rule!8052 (h!42649 tokens!494))) (head!7341 lt!1183726)) (tail!5450 lt!1183726)))))

(declare-fun b!3478213 () Bool)

(declare-fun e!2154453 () Bool)

(assert (=> b!3478213 (= e!2154453 e!2154450)))

(declare-fun res!1403360 () Bool)

(assert (=> b!3478213 (=> res!1403360 e!2154450)))

(assert (=> b!3478213 (= res!1403360 call!250887)))

(declare-fun b!3478214 () Bool)

(assert (=> b!3478214 (= e!2154452 (= lt!1184071 call!250887))))

(declare-fun bm!250882 () Bool)

(assert (=> bm!250882 (= call!250887 (isEmpty!21614 lt!1183726))))

(declare-fun b!3478215 () Bool)

(declare-fun res!1403362 () Bool)

(assert (=> b!3478215 (=> res!1403362 e!2154449)))

(assert (=> b!3478215 (= res!1403362 (not ((_ is ElementMatch!10211) (regex!5452 (rule!8052 (h!42649 tokens!494))))))))

(declare-fun e!2154455 () Bool)

(assert (=> b!3478215 (= e!2154455 e!2154449)))

(declare-fun b!3478216 () Bool)

(assert (=> b!3478216 (= e!2154454 (nullable!3497 (regex!5452 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun b!3478217 () Bool)

(assert (=> b!3478217 (= e!2154455 (not lt!1184071))))

(declare-fun b!3478218 () Bool)

(assert (=> b!3478218 (= e!2154452 e!2154455)))

(declare-fun c!596507 () Bool)

(assert (=> b!3478218 (= c!596507 ((_ is EmptyLang!10211) (regex!5452 (rule!8052 (h!42649 tokens!494)))))))

(declare-fun b!3478219 () Bool)

(declare-fun res!1403363 () Bool)

(assert (=> b!3478219 (=> (not res!1403363) (not e!2154451))))

(assert (=> b!3478219 (= res!1403363 (isEmpty!21614 (tail!5450 lt!1183726)))))

(declare-fun b!3478220 () Bool)

(assert (=> b!3478220 (= e!2154449 e!2154453)))

(declare-fun res!1403365 () Bool)

(assert (=> b!3478220 (=> (not res!1403365) (not e!2154453))))

(assert (=> b!3478220 (= res!1403365 (not lt!1184071))))

(assert (= (and d!1004621 c!596508) b!3478216))

(assert (= (and d!1004621 (not c!596508)) b!3478212))

(assert (= (and d!1004621 c!596509) b!3478214))

(assert (= (and d!1004621 (not c!596509)) b!3478218))

(assert (= (and b!3478218 c!596507) b!3478217))

(assert (= (and b!3478218 (not c!596507)) b!3478215))

(assert (= (and b!3478215 (not res!1403362)) b!3478210))

(assert (= (and b!3478210 res!1403361) b!3478207))

(assert (= (and b!3478207 res!1403366) b!3478219))

(assert (= (and b!3478219 res!1403363) b!3478209))

(assert (= (and b!3478210 (not res!1403364)) b!3478220))

(assert (= (and b!3478220 res!1403365) b!3478213))

(assert (= (and b!3478213 (not res!1403360)) b!3478211))

(assert (= (and b!3478211 (not res!1403359)) b!3478208))

(assert (= (or b!3478214 b!3478207 b!3478213) bm!250882))

(assert (=> b!3478212 m!3893903))

(assert (=> b!3478212 m!3893903))

(declare-fun m!3893947 () Bool)

(assert (=> b!3478212 m!3893947))

(assert (=> b!3478212 m!3893907))

(assert (=> b!3478212 m!3893947))

(assert (=> b!3478212 m!3893907))

(declare-fun m!3893949 () Bool)

(assert (=> b!3478212 m!3893949))

(assert (=> b!3478219 m!3893907))

(assert (=> b!3478219 m!3893907))

(assert (=> b!3478219 m!3893911))

(assert (=> b!3478209 m!3893903))

(assert (=> d!1004621 m!3893913))

(declare-fun m!3893951 () Bool)

(assert (=> d!1004621 m!3893951))

(declare-fun m!3893953 () Bool)

(assert (=> b!3478216 m!3893953))

(assert (=> b!3478211 m!3893907))

(assert (=> b!3478211 m!3893907))

(assert (=> b!3478211 m!3893911))

(assert (=> b!3478208 m!3893903))

(assert (=> bm!250882 m!3893913))

(assert (=> b!3477338 d!1004621))

(declare-fun d!1004623 () Bool)

(declare-fun res!1403371 () Bool)

(declare-fun e!2154458 () Bool)

(assert (=> d!1004623 (=> (not res!1403371) (not e!2154458))))

(assert (=> d!1004623 (= res!1403371 (validRegex!4653 (regex!5452 (rule!8052 (h!42649 tokens!494)))))))

(assert (=> d!1004623 (= (ruleValid!1750 thiss!18206 (rule!8052 (h!42649 tokens!494))) e!2154458)))

(declare-fun b!3478225 () Bool)

(declare-fun res!1403372 () Bool)

(assert (=> b!3478225 (=> (not res!1403372) (not e!2154458))))

(assert (=> b!3478225 (= res!1403372 (not (nullable!3497 (regex!5452 (rule!8052 (h!42649 tokens!494))))))))

(declare-fun b!3478226 () Bool)

(assert (=> b!3478226 (= e!2154458 (not (= (tag!6070 (rule!8052 (h!42649 tokens!494))) (String!41745 ""))))))

(assert (= (and d!1004623 res!1403371) b!3478225))

(assert (= (and b!3478225 res!1403372) b!3478226))

(assert (=> d!1004623 m!3893951))

(assert (=> b!3478225 m!3893953))

(assert (=> b!3477338 d!1004623))

(declare-fun d!1004625 () Bool)

(assert (=> d!1004625 (ruleValid!1750 thiss!18206 (rule!8052 (h!42649 tokens!494)))))

(declare-fun lt!1184074 () Unit!52658)

(declare-fun choose!20145 (LexerInterface!5041 Rule!10704 List!37352) Unit!52658)

(assert (=> d!1004625 (= lt!1184074 (choose!20145 thiss!18206 (rule!8052 (h!42649 tokens!494)) rules!2135))))

(assert (=> d!1004625 (contains!6932 rules!2135 (rule!8052 (h!42649 tokens!494)))))

(assert (=> d!1004625 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!950 thiss!18206 (rule!8052 (h!42649 tokens!494)) rules!2135) lt!1184074)))

(declare-fun bs!561813 () Bool)

(assert (= bs!561813 d!1004625))

(assert (=> bs!561813 m!3892655))

(declare-fun m!3893955 () Bool)

(assert (=> bs!561813 m!3893955))

(assert (=> bs!561813 m!3892503))

(assert (=> b!3477338 d!1004625))

(declare-fun d!1004627 () Bool)

(declare-fun res!1403377 () Bool)

(declare-fun e!2154463 () Bool)

(assert (=> d!1004627 (=> res!1403377 e!2154463)))

(assert (=> d!1004627 (= res!1403377 (not ((_ is Cons!37228) rules!2135)))))

(assert (=> d!1004627 (= (sepAndNonSepRulesDisjointChars!1646 rules!2135 rules!2135) e!2154463)))

(declare-fun b!3478231 () Bool)

(declare-fun e!2154464 () Bool)

(assert (=> b!3478231 (= e!2154463 e!2154464)))

(declare-fun res!1403378 () Bool)

(assert (=> b!3478231 (=> (not res!1403378) (not e!2154464))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!729 (Rule!10704 List!37352) Bool)

(assert (=> b!3478231 (= res!1403378 (ruleDisjointCharsFromAllFromOtherType!729 (h!42648 rules!2135) rules!2135))))

(declare-fun b!3478232 () Bool)

(assert (=> b!3478232 (= e!2154464 (sepAndNonSepRulesDisjointChars!1646 rules!2135 (t!275185 rules!2135)))))

(assert (= (and d!1004627 (not res!1403377)) b!3478231))

(assert (= (and b!3478231 res!1403378) b!3478232))

(declare-fun m!3893957 () Bool)

(assert (=> b!3478231 m!3893957))

(declare-fun m!3893959 () Bool)

(assert (=> b!3478232 m!3893959))

(assert (=> b!3477340 d!1004627))

(declare-fun d!1004629 () Bool)

(declare-fun lt!1184075 () BalanceConc!22172)

(assert (=> d!1004629 (= (list!13573 lt!1184075) (printListTailRec!698 thiss!18206 (dropList!1215 lt!1183741 0) (list!13573 (BalanceConc!22173 Empty!11279))))))

(declare-fun e!2154466 () BalanceConc!22172)

(assert (=> d!1004629 (= lt!1184075 e!2154466)))

(declare-fun c!596510 () Bool)

(assert (=> d!1004629 (= c!596510 (>= 0 (size!28266 lt!1183741)))))

(declare-fun e!2154465 () Bool)

(assert (=> d!1004629 e!2154465))

(declare-fun res!1403379 () Bool)

(assert (=> d!1004629 (=> (not res!1403379) (not e!2154465))))

(assert (=> d!1004629 (= res!1403379 (>= 0 0))))

(assert (=> d!1004629 (= (printTailRec!1536 thiss!18206 lt!1183741 0 (BalanceConc!22173 Empty!11279)) lt!1184075)))

(declare-fun b!3478233 () Bool)

(assert (=> b!3478233 (= e!2154465 (<= 0 (size!28266 lt!1183741)))))

(declare-fun b!3478234 () Bool)

(assert (=> b!3478234 (= e!2154466 (BalanceConc!22173 Empty!11279))))

(declare-fun b!3478235 () Bool)

(assert (=> b!3478235 (= e!2154466 (printTailRec!1536 thiss!18206 lt!1183741 (+ 0 1) (++!9195 (BalanceConc!22173 Empty!11279) (charsOf!3466 (apply!8801 lt!1183741 0)))))))

(declare-fun lt!1184077 () List!37353)

(assert (=> b!3478235 (= lt!1184077 (list!13577 lt!1183741))))

(declare-fun lt!1184081 () Unit!52658)

(assert (=> b!3478235 (= lt!1184081 (lemmaDropApply!1173 lt!1184077 0))))

(assert (=> b!3478235 (= (head!7343 (drop!2023 lt!1184077 0)) (apply!8804 lt!1184077 0))))

(declare-fun lt!1184078 () Unit!52658)

(assert (=> b!3478235 (= lt!1184078 lt!1184081)))

(declare-fun lt!1184076 () List!37353)

(assert (=> b!3478235 (= lt!1184076 (list!13577 lt!1183741))))

(declare-fun lt!1184080 () Unit!52658)

(assert (=> b!3478235 (= lt!1184080 (lemmaDropTail!1057 lt!1184076 0))))

(assert (=> b!3478235 (= (tail!5452 (drop!2023 lt!1184076 0)) (drop!2023 lt!1184076 (+ 0 1)))))

(declare-fun lt!1184079 () Unit!52658)

(assert (=> b!3478235 (= lt!1184079 lt!1184080)))

(assert (= (and d!1004629 res!1403379) b!3478233))

(assert (= (and d!1004629 c!596510) b!3478234))

(assert (= (and d!1004629 (not c!596510)) b!3478235))

(declare-fun m!3893961 () Bool)

(assert (=> d!1004629 m!3893961))

(assert (=> d!1004629 m!3893145))

(declare-fun m!3893963 () Bool)

(assert (=> d!1004629 m!3893963))

(declare-fun m!3893965 () Bool)

(assert (=> d!1004629 m!3893965))

(assert (=> d!1004629 m!3893961))

(assert (=> d!1004629 m!3893145))

(declare-fun m!3893967 () Bool)

(assert (=> d!1004629 m!3893967))

(assert (=> b!3478233 m!3893963))

(declare-fun m!3893969 () Bool)

(assert (=> b!3478235 m!3893969))

(declare-fun m!3893971 () Bool)

(assert (=> b!3478235 m!3893971))

(declare-fun m!3893973 () Bool)

(assert (=> b!3478235 m!3893973))

(declare-fun m!3893975 () Bool)

(assert (=> b!3478235 m!3893975))

(declare-fun m!3893977 () Bool)

(assert (=> b!3478235 m!3893977))

(declare-fun m!3893979 () Bool)

(assert (=> b!3478235 m!3893979))

(assert (=> b!3478235 m!3893977))

(declare-fun m!3893981 () Bool)

(assert (=> b!3478235 m!3893981))

(declare-fun m!3893983 () Bool)

(assert (=> b!3478235 m!3893983))

(declare-fun m!3893985 () Bool)

(assert (=> b!3478235 m!3893985))

(declare-fun m!3893987 () Bool)

(assert (=> b!3478235 m!3893987))

(assert (=> b!3478235 m!3893971))

(assert (=> b!3478235 m!3893981))

(assert (=> b!3478235 m!3893969))

(assert (=> b!3478235 m!3893985))

(declare-fun m!3893989 () Bool)

(assert (=> b!3478235 m!3893989))

(declare-fun m!3893991 () Bool)

(assert (=> b!3478235 m!3893991))

(declare-fun m!3893993 () Bool)

(assert (=> b!3478235 m!3893993))

(assert (=> b!3477361 d!1004629))

(declare-fun d!1004631 () Bool)

(declare-fun lt!1184082 () BalanceConc!22172)

(assert (=> d!1004631 (= (list!13573 lt!1184082) (printList!1589 thiss!18206 (list!13577 lt!1183741)))))

(assert (=> d!1004631 (= lt!1184082 (printTailRec!1536 thiss!18206 lt!1183741 0 (BalanceConc!22173 Empty!11279)))))

(assert (=> d!1004631 (= (print!2106 thiss!18206 lt!1183741) lt!1184082)))

(declare-fun bs!561814 () Bool)

(assert (= bs!561814 d!1004631))

(declare-fun m!3893995 () Bool)

(assert (=> bs!561814 m!3893995))

(assert (=> bs!561814 m!3893975))

(assert (=> bs!561814 m!3893975))

(declare-fun m!3893997 () Bool)

(assert (=> bs!561814 m!3893997))

(assert (=> bs!561814 m!3892567))

(assert (=> b!3477361 d!1004631))

(declare-fun d!1004633 () Bool)

(assert (=> d!1004633 (= (list!13573 lt!1183713) (list!13576 (c!596343 lt!1183713)))))

(declare-fun bs!561815 () Bool)

(assert (= bs!561815 d!1004633))

(declare-fun m!3893999 () Bool)

(assert (=> bs!561815 m!3893999))

(assert (=> b!3477361 d!1004633))

(declare-fun d!1004635 () Bool)

(declare-fun e!2154467 () Bool)

(assert (=> d!1004635 e!2154467))

(declare-fun res!1403380 () Bool)

(assert (=> d!1004635 (=> (not res!1403380) (not e!2154467))))

(declare-fun lt!1184083 () BalanceConc!22174)

(assert (=> d!1004635 (= res!1403380 (= (list!13577 lt!1184083) (Cons!37229 (h!42649 tokens!494) Nil!37229)))))

(assert (=> d!1004635 (= lt!1184083 (singleton!1130 (h!42649 tokens!494)))))

(assert (=> d!1004635 (= (singletonSeq!2548 (h!42649 tokens!494)) lt!1184083)))

(declare-fun b!3478236 () Bool)

(assert (=> b!3478236 (= e!2154467 (isBalanced!3429 (c!596344 lt!1184083)))))

(assert (= (and d!1004635 res!1403380) b!3478236))

(declare-fun m!3894001 () Bool)

(assert (=> d!1004635 m!3894001))

(declare-fun m!3894003 () Bool)

(assert (=> d!1004635 m!3894003))

(declare-fun m!3894005 () Bool)

(assert (=> b!3478236 m!3894005))

(assert (=> b!3477361 d!1004635))

(declare-fun d!1004637 () Bool)

(declare-fun c!596513 () Bool)

(assert (=> d!1004637 (= c!596513 ((_ is Cons!37229) (Cons!37229 (h!42649 tokens!494) Nil!37229)))))

(declare-fun e!2154470 () List!37351)

(assert (=> d!1004637 (= (printList!1589 thiss!18206 (Cons!37229 (h!42649 tokens!494) Nil!37229)) e!2154470)))

(declare-fun b!3478241 () Bool)

(assert (=> b!3478241 (= e!2154470 (++!9193 (list!13573 (charsOf!3466 (h!42649 (Cons!37229 (h!42649 tokens!494) Nil!37229)))) (printList!1589 thiss!18206 (t!275186 (Cons!37229 (h!42649 tokens!494) Nil!37229)))))))

(declare-fun b!3478242 () Bool)

(assert (=> b!3478242 (= e!2154470 Nil!37227)))

(assert (= (and d!1004637 c!596513) b!3478241))

(assert (= (and d!1004637 (not c!596513)) b!3478242))

(declare-fun m!3894007 () Bool)

(assert (=> b!3478241 m!3894007))

(assert (=> b!3478241 m!3894007))

(declare-fun m!3894009 () Bool)

(assert (=> b!3478241 m!3894009))

(declare-fun m!3894011 () Bool)

(assert (=> b!3478241 m!3894011))

(assert (=> b!3478241 m!3894009))

(assert (=> b!3478241 m!3894011))

(declare-fun m!3894013 () Bool)

(assert (=> b!3478241 m!3894013))

(assert (=> b!3477361 d!1004637))

(declare-fun d!1004639 () Bool)

(assert (=> d!1004639 (= (get!11929 lt!1183714) (v!36929 lt!1183714))))

(assert (=> b!3477382 d!1004639))

(declare-fun d!1004641 () Bool)

(assert (=> d!1004641 (dynLambda!15744 lambda!122134 (h!42649 (t!275186 tokens!494)))))

(declare-fun lt!1184084 () Unit!52658)

(assert (=> d!1004641 (= lt!1184084 (choose!20142 tokens!494 lambda!122134 (h!42649 (t!275186 tokens!494))))))

(declare-fun e!2154471 () Bool)

(assert (=> d!1004641 e!2154471))

(declare-fun res!1403381 () Bool)

(assert (=> d!1004641 (=> (not res!1403381) (not e!2154471))))

(assert (=> d!1004641 (= res!1403381 (forall!7957 tokens!494 lambda!122134))))

(assert (=> d!1004641 (= (forallContained!1399 tokens!494 lambda!122134 (h!42649 (t!275186 tokens!494))) lt!1184084)))

(declare-fun b!3478243 () Bool)

(assert (=> b!3478243 (= e!2154471 (contains!6934 tokens!494 (h!42649 (t!275186 tokens!494))))))

(assert (= (and d!1004641 res!1403381) b!3478243))

(declare-fun b_lambda!100539 () Bool)

(assert (=> (not b_lambda!100539) (not d!1004641)))

(declare-fun m!3894015 () Bool)

(assert (=> d!1004641 m!3894015))

(declare-fun m!3894017 () Bool)

(assert (=> d!1004641 m!3894017))

(assert (=> d!1004641 m!3892651))

(assert (=> b!3478243 m!3893433))

(assert (=> b!3477339 d!1004641))

(declare-fun d!1004643 () Bool)

(assert (=> d!1004643 (dynLambda!15744 lambda!122134 (h!42649 tokens!494))))

(declare-fun lt!1184085 () Unit!52658)

(assert (=> d!1004643 (= lt!1184085 (choose!20142 tokens!494 lambda!122134 (h!42649 tokens!494)))))

(declare-fun e!2154472 () Bool)

(assert (=> d!1004643 e!2154472))

(declare-fun res!1403382 () Bool)

(assert (=> d!1004643 (=> (not res!1403382) (not e!2154472))))

(assert (=> d!1004643 (= res!1403382 (forall!7957 tokens!494 lambda!122134))))

(assert (=> d!1004643 (= (forallContained!1399 tokens!494 lambda!122134 (h!42649 tokens!494)) lt!1184085)))

(declare-fun b!3478244 () Bool)

(assert (=> b!3478244 (= e!2154472 (contains!6934 tokens!494 (h!42649 tokens!494)))))

(assert (= (and d!1004643 res!1403382) b!3478244))

(declare-fun b_lambda!100541 () Bool)

(assert (=> (not b_lambda!100541) (not d!1004643)))

(assert (=> d!1004643 m!3893055))

(declare-fun m!3894019 () Bool)

(assert (=> d!1004643 m!3894019))

(assert (=> d!1004643 m!3892651))

(declare-fun m!3894021 () Bool)

(assert (=> b!3478244 m!3894021))

(assert (=> b!3477339 d!1004643))

(declare-fun d!1004645 () Bool)

(assert (=> d!1004645 (= (inv!50415 (tag!6070 (h!42648 rules!2135))) (= (mod (str.len (value!175841 (tag!6070 (h!42648 rules!2135)))) 2) 0))))

(assert (=> b!3477357 d!1004645))

(declare-fun d!1004647 () Bool)

(declare-fun res!1403383 () Bool)

(declare-fun e!2154473 () Bool)

(assert (=> d!1004647 (=> (not res!1403383) (not e!2154473))))

(assert (=> d!1004647 (= res!1403383 (semiInverseModEq!2293 (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toValue!7688 (transformation!5452 (h!42648 rules!2135)))))))

(assert (=> d!1004647 (= (inv!50419 (transformation!5452 (h!42648 rules!2135))) e!2154473)))

(declare-fun b!3478245 () Bool)

(assert (=> b!3478245 (= e!2154473 (equivClasses!2192 (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toValue!7688 (transformation!5452 (h!42648 rules!2135)))))))

(assert (= (and d!1004647 res!1403383) b!3478245))

(declare-fun m!3894023 () Bool)

(assert (=> d!1004647 m!3894023))

(declare-fun m!3894025 () Bool)

(assert (=> b!3478245 m!3894025))

(assert (=> b!3477357 d!1004647))

(declare-fun e!2154474 () Bool)

(declare-fun lt!1184086 () List!37351)

(declare-fun b!3478249 () Bool)

(assert (=> b!3478249 (= e!2154474 (or (not (= lt!1183708 Nil!37227)) (= lt!1184086 (++!9193 lt!1183726 lt!1183732))))))

(declare-fun b!3478248 () Bool)

(declare-fun res!1403384 () Bool)

(assert (=> b!3478248 (=> (not res!1403384) (not e!2154474))))

(assert (=> b!3478248 (= res!1403384 (= (size!28267 lt!1184086) (+ (size!28267 (++!9193 lt!1183726 lt!1183732)) (size!28267 lt!1183708))))))

(declare-fun b!3478246 () Bool)

(declare-fun e!2154475 () List!37351)

(assert (=> b!3478246 (= e!2154475 lt!1183708)))

(declare-fun b!3478247 () Bool)

(assert (=> b!3478247 (= e!2154475 (Cons!37227 (h!42647 (++!9193 lt!1183726 lt!1183732)) (++!9193 (t!275184 (++!9193 lt!1183726 lt!1183732)) lt!1183708)))))

(declare-fun d!1004649 () Bool)

(assert (=> d!1004649 e!2154474))

(declare-fun res!1403385 () Bool)

(assert (=> d!1004649 (=> (not res!1403385) (not e!2154474))))

(assert (=> d!1004649 (= res!1403385 (= (content!5211 lt!1184086) ((_ map or) (content!5211 (++!9193 lt!1183726 lt!1183732)) (content!5211 lt!1183708))))))

(assert (=> d!1004649 (= lt!1184086 e!2154475)))

(declare-fun c!596514 () Bool)

(assert (=> d!1004649 (= c!596514 ((_ is Nil!37227) (++!9193 lt!1183726 lt!1183732)))))

(assert (=> d!1004649 (= (++!9193 (++!9193 lt!1183726 lt!1183732) lt!1183708) lt!1184086)))

(assert (= (and d!1004649 c!596514) b!3478246))

(assert (= (and d!1004649 (not c!596514)) b!3478247))

(assert (= (and d!1004649 res!1403385) b!3478248))

(assert (= (and b!3478248 res!1403384) b!3478249))

(declare-fun m!3894027 () Bool)

(assert (=> b!3478248 m!3894027))

(assert (=> b!3478248 m!3892535))

(declare-fun m!3894029 () Bool)

(assert (=> b!3478248 m!3894029))

(assert (=> b!3478248 m!3892679))

(declare-fun m!3894031 () Bool)

(assert (=> b!3478247 m!3894031))

(declare-fun m!3894033 () Bool)

(assert (=> d!1004649 m!3894033))

(assert (=> d!1004649 m!3892535))

(declare-fun m!3894035 () Bool)

(assert (=> d!1004649 m!3894035))

(assert (=> d!1004649 m!3892687))

(assert (=> b!3477358 d!1004649))

(declare-fun b!3478253 () Bool)

(declare-fun e!2154476 () Bool)

(declare-fun lt!1184087 () List!37351)

(assert (=> b!3478253 (= e!2154476 (or (not (= lt!1183732 Nil!37227)) (= lt!1184087 lt!1183726)))))

(declare-fun b!3478252 () Bool)

(declare-fun res!1403386 () Bool)

(assert (=> b!3478252 (=> (not res!1403386) (not e!2154476))))

(assert (=> b!3478252 (= res!1403386 (= (size!28267 lt!1184087) (+ (size!28267 lt!1183726) (size!28267 lt!1183732))))))

(declare-fun b!3478250 () Bool)

(declare-fun e!2154477 () List!37351)

(assert (=> b!3478250 (= e!2154477 lt!1183732)))

(declare-fun b!3478251 () Bool)

(assert (=> b!3478251 (= e!2154477 (Cons!37227 (h!42647 lt!1183726) (++!9193 (t!275184 lt!1183726) lt!1183732)))))

(declare-fun d!1004651 () Bool)

(assert (=> d!1004651 e!2154476))

(declare-fun res!1403387 () Bool)

(assert (=> d!1004651 (=> (not res!1403387) (not e!2154476))))

(assert (=> d!1004651 (= res!1403387 (= (content!5211 lt!1184087) ((_ map or) (content!5211 lt!1183726) (content!5211 lt!1183732))))))

(assert (=> d!1004651 (= lt!1184087 e!2154477)))

(declare-fun c!596515 () Bool)

(assert (=> d!1004651 (= c!596515 ((_ is Nil!37227) lt!1183726))))

(assert (=> d!1004651 (= (++!9193 lt!1183726 lt!1183732) lt!1184087)))

(assert (= (and d!1004651 c!596515) b!3478250))

(assert (= (and d!1004651 (not c!596515)) b!3478251))

(assert (= (and d!1004651 res!1403387) b!3478252))

(assert (= (and b!3478252 res!1403386) b!3478253))

(declare-fun m!3894037 () Bool)

(assert (=> b!3478252 m!3894037))

(assert (=> b!3478252 m!3892477))

(assert (=> b!3478252 m!3892677))

(declare-fun m!3894039 () Bool)

(assert (=> b!3478251 m!3894039))

(declare-fun m!3894041 () Bool)

(assert (=> d!1004651 m!3894041))

(assert (=> d!1004651 m!3892863))

(assert (=> d!1004651 m!3892685))

(assert (=> b!3477358 d!1004651))

(declare-fun d!1004653 () Bool)

(assert (=> d!1004653 (= (isDefined!5822 lt!1183714) (not (isEmpty!21621 lt!1183714)))))

(declare-fun bs!561816 () Bool)

(assert (= bs!561816 d!1004653))

(declare-fun m!3894043 () Bool)

(assert (=> bs!561816 m!3894043))

(assert (=> b!3477379 d!1004653))

(declare-fun b!3478272 () Bool)

(declare-fun res!1403405 () Bool)

(declare-fun e!2154486 () Bool)

(assert (=> b!3478272 (=> (not res!1403405) (not e!2154486))))

(declare-fun lt!1184100 () Option!7558)

(assert (=> b!3478272 (= res!1403405 (= (list!13573 (charsOf!3466 (_1!21627 (get!11929 lt!1184100)))) (originalCharacters!6166 (_1!21627 (get!11929 lt!1184100)))))))

(declare-fun b!3478273 () Bool)

(assert (=> b!3478273 (= e!2154486 (contains!6932 rules!2135 (rule!8052 (_1!21627 (get!11929 lt!1184100)))))))

(declare-fun b!3478274 () Bool)

(declare-fun res!1403402 () Bool)

(assert (=> b!3478274 (=> (not res!1403402) (not e!2154486))))

(assert (=> b!3478274 (= res!1403402 (= (value!175842 (_1!21627 (get!11929 lt!1184100))) (apply!8800 (transformation!5452 (rule!8052 (_1!21627 (get!11929 lt!1184100)))) (seqFromList!3957 (originalCharacters!6166 (_1!21627 (get!11929 lt!1184100)))))))))

(declare-fun b!3478275 () Bool)

(declare-fun res!1403407 () Bool)

(assert (=> b!3478275 (=> (not res!1403407) (not e!2154486))))

(assert (=> b!3478275 (= res!1403407 (matchR!4795 (regex!5452 (rule!8052 (_1!21627 (get!11929 lt!1184100)))) (list!13573 (charsOf!3466 (_1!21627 (get!11929 lt!1184100))))))))

(declare-fun b!3478276 () Bool)

(declare-fun res!1403403 () Bool)

(assert (=> b!3478276 (=> (not res!1403403) (not e!2154486))))

(assert (=> b!3478276 (= res!1403403 (= (++!9193 (list!13573 (charsOf!3466 (_1!21627 (get!11929 lt!1184100)))) (_2!21627 (get!11929 lt!1184100))) lt!1183726))))

(declare-fun b!3478277 () Bool)

(declare-fun e!2154485 () Bool)

(assert (=> b!3478277 (= e!2154485 e!2154486)))

(declare-fun res!1403406 () Bool)

(assert (=> b!3478277 (=> (not res!1403406) (not e!2154486))))

(assert (=> b!3478277 (= res!1403406 (isDefined!5822 lt!1184100))))

(declare-fun b!3478278 () Bool)

(declare-fun e!2154484 () Option!7558)

(declare-fun call!250890 () Option!7558)

(assert (=> b!3478278 (= e!2154484 call!250890)))

(declare-fun b!3478279 () Bool)

(declare-fun res!1403404 () Bool)

(assert (=> b!3478279 (=> (not res!1403404) (not e!2154486))))

(assert (=> b!3478279 (= res!1403404 (< (size!28267 (_2!21627 (get!11929 lt!1184100))) (size!28267 lt!1183726)))))

(declare-fun b!3478280 () Bool)

(declare-fun lt!1184098 () Option!7558)

(declare-fun lt!1184099 () Option!7558)

(assert (=> b!3478280 (= e!2154484 (ite (and ((_ is None!7557) lt!1184098) ((_ is None!7557) lt!1184099)) None!7557 (ite ((_ is None!7557) lt!1184099) lt!1184098 (ite ((_ is None!7557) lt!1184098) lt!1184099 (ite (>= (size!28265 (_1!21627 (v!36929 lt!1184098))) (size!28265 (_1!21627 (v!36929 lt!1184099)))) lt!1184098 lt!1184099)))))))

(assert (=> b!3478280 (= lt!1184098 call!250890)))

(assert (=> b!3478280 (= lt!1184099 (maxPrefix!2581 thiss!18206 (t!275185 rules!2135) lt!1183726))))

(declare-fun bm!250885 () Bool)

(assert (=> bm!250885 (= call!250890 (maxPrefixOneRule!1748 thiss!18206 (h!42648 rules!2135) lt!1183726))))

(declare-fun d!1004655 () Bool)

(assert (=> d!1004655 e!2154485))

(declare-fun res!1403408 () Bool)

(assert (=> d!1004655 (=> res!1403408 e!2154485)))

(assert (=> d!1004655 (= res!1403408 (isEmpty!21621 lt!1184100))))

(assert (=> d!1004655 (= lt!1184100 e!2154484)))

(declare-fun c!596518 () Bool)

(assert (=> d!1004655 (= c!596518 (and ((_ is Cons!37228) rules!2135) ((_ is Nil!37228) (t!275185 rules!2135))))))

(declare-fun lt!1184101 () Unit!52658)

(declare-fun lt!1184102 () Unit!52658)

(assert (=> d!1004655 (= lt!1184101 lt!1184102)))

(declare-fun isPrefix!2854 (List!37351 List!37351) Bool)

(assert (=> d!1004655 (isPrefix!2854 lt!1183726 lt!1183726)))

(declare-fun lemmaIsPrefixRefl!1813 (List!37351 List!37351) Unit!52658)

(assert (=> d!1004655 (= lt!1184102 (lemmaIsPrefixRefl!1813 lt!1183726 lt!1183726))))

(declare-fun rulesValidInductive!1863 (LexerInterface!5041 List!37352) Bool)

(assert (=> d!1004655 (rulesValidInductive!1863 thiss!18206 rules!2135)))

(assert (=> d!1004655 (= (maxPrefix!2581 thiss!18206 rules!2135 lt!1183726) lt!1184100)))

(assert (= (and d!1004655 c!596518) b!3478278))

(assert (= (and d!1004655 (not c!596518)) b!3478280))

(assert (= (or b!3478278 b!3478280) bm!250885))

(assert (= (and d!1004655 (not res!1403408)) b!3478277))

(assert (= (and b!3478277 res!1403406) b!3478272))

(assert (= (and b!3478272 res!1403405) b!3478279))

(assert (= (and b!3478279 res!1403404) b!3478276))

(assert (= (and b!3478276 res!1403403) b!3478274))

(assert (= (and b!3478274 res!1403402) b!3478275))

(assert (= (and b!3478275 res!1403407) b!3478273))

(declare-fun m!3894045 () Bool)

(assert (=> d!1004655 m!3894045))

(declare-fun m!3894047 () Bool)

(assert (=> d!1004655 m!3894047))

(declare-fun m!3894049 () Bool)

(assert (=> d!1004655 m!3894049))

(declare-fun m!3894051 () Bool)

(assert (=> d!1004655 m!3894051))

(declare-fun m!3894053 () Bool)

(assert (=> b!3478276 m!3894053))

(declare-fun m!3894055 () Bool)

(assert (=> b!3478276 m!3894055))

(assert (=> b!3478276 m!3894055))

(declare-fun m!3894057 () Bool)

(assert (=> b!3478276 m!3894057))

(assert (=> b!3478276 m!3894057))

(declare-fun m!3894059 () Bool)

(assert (=> b!3478276 m!3894059))

(assert (=> b!3478279 m!3894053))

(declare-fun m!3894061 () Bool)

(assert (=> b!3478279 m!3894061))

(assert (=> b!3478279 m!3892477))

(declare-fun m!3894063 () Bool)

(assert (=> b!3478280 m!3894063))

(declare-fun m!3894065 () Bool)

(assert (=> bm!250885 m!3894065))

(declare-fun m!3894067 () Bool)

(assert (=> b!3478277 m!3894067))

(assert (=> b!3478274 m!3894053))

(declare-fun m!3894069 () Bool)

(assert (=> b!3478274 m!3894069))

(assert (=> b!3478274 m!3894069))

(declare-fun m!3894071 () Bool)

(assert (=> b!3478274 m!3894071))

(assert (=> b!3478272 m!3894053))

(assert (=> b!3478272 m!3894055))

(assert (=> b!3478272 m!3894055))

(assert (=> b!3478272 m!3894057))

(assert (=> b!3478275 m!3894053))

(assert (=> b!3478275 m!3894055))

(assert (=> b!3478275 m!3894055))

(assert (=> b!3478275 m!3894057))

(assert (=> b!3478275 m!3894057))

(declare-fun m!3894073 () Bool)

(assert (=> b!3478275 m!3894073))

(assert (=> b!3478273 m!3894053))

(declare-fun m!3894075 () Bool)

(assert (=> b!3478273 m!3894075))

(assert (=> b!3477379 d!1004655))

(declare-fun b!3478291 () Bool)

(declare-fun b_free!90189 () Bool)

(declare-fun b_next!90893 () Bool)

(assert (=> b!3478291 (= b_free!90189 (not b_next!90893))))

(declare-fun tb!190695 () Bool)

(declare-fun t!275267 () Bool)

(assert (=> (and b!3478291 (= (toValue!7688 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275267) tb!190695))

(declare-fun result!234806 () Bool)

(assert (= result!234806 result!234766))

(assert (=> d!1004447 t!275267))

(declare-fun tp!1080759 () Bool)

(declare-fun b_and!245375 () Bool)

(assert (=> b!3478291 (= tp!1080759 (and (=> t!275267 result!234806) b_and!245375))))

(declare-fun b_free!90191 () Bool)

(declare-fun b_next!90895 () Bool)

(assert (=> b!3478291 (= b_free!90191 (not b_next!90895))))

(declare-fun t!275269 () Bool)

(declare-fun tb!190697 () Bool)

(assert (=> (and b!3478291 (= (toChars!7547 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241)))) t!275269) tb!190697))

(declare-fun result!234808 () Bool)

(assert (= result!234808 result!234724))

(assert (=> d!1004279 t!275269))

(assert (=> b!3478170 t!275269))

(declare-fun tb!190699 () Bool)

(declare-fun t!275271 () Bool)

(assert (=> (and b!3478291 (= (toChars!7547 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494)))))) t!275271) tb!190699))

(declare-fun result!234810 () Bool)

(assert (= result!234810 result!234732))

(assert (=> d!1004291 t!275271))

(declare-fun t!275273 () Bool)

(declare-fun tb!190701 () Bool)

(assert (=> (and b!3478291 (= (toChars!7547 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275273) tb!190701))

(declare-fun result!234812 () Bool)

(assert (= result!234812 result!234752))

(assert (=> d!1004389 t!275273))

(assert (=> b!3478173 t!275273))

(declare-fun tp!1080758 () Bool)

(declare-fun b_and!245377 () Bool)

(assert (=> b!3478291 (= tp!1080758 (and (=> t!275273 result!234812) (=> t!275271 result!234810) (=> t!275269 result!234808) b_and!245377))))

(declare-fun e!2154495 () Bool)

(assert (=> b!3478291 (= e!2154495 (and tp!1080759 tp!1080758))))

(declare-fun b!3478290 () Bool)

(declare-fun e!2154496 () Bool)

(declare-fun tp!1080757 () Bool)

(assert (=> b!3478290 (= e!2154496 (and tp!1080757 (inv!50415 (tag!6070 (h!42648 (t!275185 rules!2135)))) (inv!50419 (transformation!5452 (h!42648 (t!275185 rules!2135)))) e!2154495))))

(declare-fun b!3478289 () Bool)

(declare-fun e!2154497 () Bool)

(declare-fun tp!1080760 () Bool)

(assert (=> b!3478289 (= e!2154497 (and e!2154496 tp!1080760))))

(assert (=> b!3477355 (= tp!1080671 e!2154497)))

(assert (= b!3478290 b!3478291))

(assert (= b!3478289 b!3478290))

(assert (= (and b!3477355 ((_ is Cons!37228) (t!275185 rules!2135))) b!3478289))

(declare-fun m!3894077 () Bool)

(assert (=> b!3478290 m!3894077))

(declare-fun m!3894079 () Bool)

(assert (=> b!3478290 m!3894079))

(declare-fun b!3478305 () Bool)

(declare-fun b_free!90193 () Bool)

(declare-fun b_next!90897 () Bool)

(assert (=> b!3478305 (= b_free!90193 (not b_next!90897))))

(declare-fun t!275275 () Bool)

(declare-fun tb!190703 () Bool)

(assert (=> (and b!3478305 (= (toValue!7688 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275275) tb!190703))

(declare-fun result!234816 () Bool)

(assert (= result!234816 result!234766))

(assert (=> d!1004447 t!275275))

(declare-fun tp!1080774 () Bool)

(declare-fun b_and!245379 () Bool)

(assert (=> b!3478305 (= tp!1080774 (and (=> t!275275 result!234816) b_and!245379))))

(declare-fun b_free!90195 () Bool)

(declare-fun b_next!90899 () Bool)

(assert (=> b!3478305 (= b_free!90195 (not b_next!90899))))

(declare-fun t!275277 () Bool)

(declare-fun tb!190705 () Bool)

(assert (=> (and b!3478305 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241)))) t!275277) tb!190705))

(declare-fun result!234818 () Bool)

(assert (= result!234818 result!234724))

(assert (=> d!1004279 t!275277))

(assert (=> b!3478170 t!275277))

(declare-fun t!275279 () Bool)

(declare-fun tb!190707 () Bool)

(assert (=> (and b!3478305 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494)))))) t!275279) tb!190707))

(declare-fun result!234820 () Bool)

(assert (= result!234820 result!234732))

(assert (=> d!1004291 t!275279))

(declare-fun t!275281 () Bool)

(declare-fun tb!190709 () Bool)

(assert (=> (and b!3478305 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494))))) t!275281) tb!190709))

(declare-fun result!234822 () Bool)

(assert (= result!234822 result!234752))

(assert (=> d!1004389 t!275281))

(assert (=> b!3478173 t!275281))

(declare-fun b_and!245381 () Bool)

(declare-fun tp!1080775 () Bool)

(assert (=> b!3478305 (= tp!1080775 (and (=> t!275277 result!234818) (=> t!275279 result!234820) (=> t!275281 result!234822) b_and!245381))))

(declare-fun e!2154515 () Bool)

(assert (=> b!3478305 (= e!2154515 (and tp!1080774 tp!1080775))))

(declare-fun e!2154513 () Bool)

(declare-fun tp!1080772 () Bool)

(declare-fun b!3478304 () Bool)

(assert (=> b!3478304 (= e!2154513 (and tp!1080772 (inv!50415 (tag!6070 (rule!8052 (h!42649 (t!275186 tokens!494))))) (inv!50419 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) e!2154515))))

(declare-fun e!2154512 () Bool)

(assert (=> b!3477352 (= tp!1080673 e!2154512)))

(declare-fun b!3478302 () Bool)

(declare-fun tp!1080771 () Bool)

(declare-fun e!2154511 () Bool)

(assert (=> b!3478302 (= e!2154512 (and (inv!50418 (h!42649 (t!275186 tokens!494))) e!2154511 tp!1080771))))

(declare-fun tp!1080773 () Bool)

(declare-fun b!3478303 () Bool)

(assert (=> b!3478303 (= e!2154511 (and (inv!21 (value!175842 (h!42649 (t!275186 tokens!494)))) e!2154513 tp!1080773))))

(assert (= b!3478304 b!3478305))

(assert (= b!3478303 b!3478304))

(assert (= b!3478302 b!3478303))

(assert (= (and b!3477352 ((_ is Cons!37229) (t!275186 tokens!494))) b!3478302))

(declare-fun m!3894081 () Bool)

(assert (=> b!3478304 m!3894081))

(declare-fun m!3894083 () Bool)

(assert (=> b!3478304 m!3894083))

(declare-fun m!3894085 () Bool)

(assert (=> b!3478302 m!3894085))

(declare-fun m!3894087 () Bool)

(assert (=> b!3478303 m!3894087))

(declare-fun b!3478310 () Bool)

(declare-fun e!2154519 () Bool)

(declare-fun tp_is_empty!17577 () Bool)

(declare-fun tp!1080778 () Bool)

(assert (=> b!3478310 (= e!2154519 (and tp_is_empty!17577 tp!1080778))))

(assert (=> b!3477364 (= tp!1080682 e!2154519)))

(assert (= (and b!3477364 ((_ is Cons!37227) (originalCharacters!6166 (h!42649 tokens!494)))) b!3478310))

(declare-fun b!3478313 () Bool)

(declare-fun e!2154522 () Bool)

(assert (=> b!3478313 (= e!2154522 true)))

(declare-fun b!3478312 () Bool)

(declare-fun e!2154521 () Bool)

(assert (=> b!3478312 (= e!2154521 e!2154522)))

(declare-fun b!3478311 () Bool)

(declare-fun e!2154520 () Bool)

(assert (=> b!3478311 (= e!2154520 e!2154521)))

(assert (=> b!3477392 e!2154520))

(assert (= b!3478312 b!3478313))

(assert (= b!3478311 b!3478312))

(assert (= (and b!3477392 ((_ is Cons!37228) (t!275185 rules!2135))) b!3478311))

(assert (=> b!3478313 (< (dynLambda!15738 order!19897 (toValue!7688 (transformation!5452 (h!42648 (t!275185 rules!2135))))) (dynLambda!15739 order!19899 lambda!122135))))

(assert (=> b!3478313 (< (dynLambda!15740 order!19901 (toChars!7547 (transformation!5452 (h!42648 (t!275185 rules!2135))))) (dynLambda!15739 order!19899 lambda!122135))))

(declare-fun e!2154525 () Bool)

(assert (=> b!3477360 (= tp!1080679 e!2154525)))

(declare-fun b!3478324 () Bool)

(assert (=> b!3478324 (= e!2154525 tp_is_empty!17577)))

(declare-fun b!3478327 () Bool)

(declare-fun tp!1080789 () Bool)

(declare-fun tp!1080793 () Bool)

(assert (=> b!3478327 (= e!2154525 (and tp!1080789 tp!1080793))))

(declare-fun b!3478325 () Bool)

(declare-fun tp!1080790 () Bool)

(declare-fun tp!1080791 () Bool)

(assert (=> b!3478325 (= e!2154525 (and tp!1080790 tp!1080791))))

(declare-fun b!3478326 () Bool)

(declare-fun tp!1080792 () Bool)

(assert (=> b!3478326 (= e!2154525 tp!1080792)))

(assert (= (and b!3477360 ((_ is ElementMatch!10211) (regex!5452 (rule!8052 (h!42649 tokens!494))))) b!3478324))

(assert (= (and b!3477360 ((_ is Concat!15893) (regex!5452 (rule!8052 (h!42649 tokens!494))))) b!3478325))

(assert (= (and b!3477360 ((_ is Star!10211) (regex!5452 (rule!8052 (h!42649 tokens!494))))) b!3478326))

(assert (= (and b!3477360 ((_ is Union!10211) (regex!5452 (rule!8052 (h!42649 tokens!494))))) b!3478327))

(declare-fun e!2154526 () Bool)

(assert (=> b!3477371 (= tp!1080672 e!2154526)))

(declare-fun b!3478328 () Bool)

(assert (=> b!3478328 (= e!2154526 tp_is_empty!17577)))

(declare-fun b!3478331 () Bool)

(declare-fun tp!1080794 () Bool)

(declare-fun tp!1080798 () Bool)

(assert (=> b!3478331 (= e!2154526 (and tp!1080794 tp!1080798))))

(declare-fun b!3478329 () Bool)

(declare-fun tp!1080795 () Bool)

(declare-fun tp!1080796 () Bool)

(assert (=> b!3478329 (= e!2154526 (and tp!1080795 tp!1080796))))

(declare-fun b!3478330 () Bool)

(declare-fun tp!1080797 () Bool)

(assert (=> b!3478330 (= e!2154526 tp!1080797)))

(assert (= (and b!3477371 ((_ is ElementMatch!10211) (regex!5452 (rule!8052 separatorToken!241)))) b!3478328))

(assert (= (and b!3477371 ((_ is Concat!15893) (regex!5452 (rule!8052 separatorToken!241)))) b!3478329))

(assert (= (and b!3477371 ((_ is Star!10211) (regex!5452 (rule!8052 separatorToken!241)))) b!3478330))

(assert (= (and b!3477371 ((_ is Union!10211) (regex!5452 (rule!8052 separatorToken!241)))) b!3478331))

(declare-fun e!2154527 () Bool)

(assert (=> b!3477357 (= tp!1080680 e!2154527)))

(declare-fun b!3478332 () Bool)

(assert (=> b!3478332 (= e!2154527 tp_is_empty!17577)))

(declare-fun b!3478335 () Bool)

(declare-fun tp!1080799 () Bool)

(declare-fun tp!1080803 () Bool)

(assert (=> b!3478335 (= e!2154527 (and tp!1080799 tp!1080803))))

(declare-fun b!3478333 () Bool)

(declare-fun tp!1080800 () Bool)

(declare-fun tp!1080801 () Bool)

(assert (=> b!3478333 (= e!2154527 (and tp!1080800 tp!1080801))))

(declare-fun b!3478334 () Bool)

(declare-fun tp!1080802 () Bool)

(assert (=> b!3478334 (= e!2154527 tp!1080802)))

(assert (= (and b!3477357 ((_ is ElementMatch!10211) (regex!5452 (h!42648 rules!2135)))) b!3478332))

(assert (= (and b!3477357 ((_ is Concat!15893) (regex!5452 (h!42648 rules!2135)))) b!3478333))

(assert (= (and b!3477357 ((_ is Star!10211) (regex!5452 (h!42648 rules!2135)))) b!3478334))

(assert (= (and b!3477357 ((_ is Union!10211) (regex!5452 (h!42648 rules!2135)))) b!3478335))

(declare-fun b!3478336 () Bool)

(declare-fun e!2154528 () Bool)

(declare-fun tp!1080804 () Bool)

(assert (=> b!3478336 (= e!2154528 (and tp_is_empty!17577 tp!1080804))))

(assert (=> b!3477346 (= tp!1080674 e!2154528)))

(assert (= (and b!3477346 ((_ is Cons!37227) (originalCharacters!6166 separatorToken!241))) b!3478336))

(declare-fun b_lambda!100543 () Bool)

(assert (= b_lambda!100499 (or (and b!3478305 b_free!90195 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3477378 b_free!90179) (and b!3477347 b_free!90175 (= (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3478291 b_free!90191 (= (toChars!7547 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3477341 b_free!90171 (= (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) b_lambda!100543)))

(declare-fun b_lambda!100545 () Bool)

(assert (= b_lambda!100485 (or (and b!3477378 b_free!90179 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))))) (and b!3478305 b_free!90195) (and b!3477341 b_free!90171 (= (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))))) (and b!3478291 b_free!90191 (= (toChars!7547 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))))) (and b!3477347 b_free!90175 (= (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))))) b_lambda!100545)))

(declare-fun b_lambda!100547 () Bool)

(assert (= b_lambda!100503 (or (and b!3477347 b_free!90173 (= (toValue!7688 (transformation!5452 (rule!8052 separatorToken!241))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3478291 b_free!90189 (= (toValue!7688 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3478305 b_free!90193 (= (toValue!7688 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3477341 b_free!90169 (= (toValue!7688 (transformation!5452 (h!42648 rules!2135))) (toValue!7688 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3477378 b_free!90177) b_lambda!100547)))

(declare-fun b_lambda!100549 () Bool)

(assert (= b_lambda!100537 (or (and b!3478305 b_free!90195 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3477378 b_free!90179) (and b!3477347 b_free!90175 (= (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3478291 b_free!90191 (= (toChars!7547 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) (and b!3477341 b_free!90171 (= (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))))) b_lambda!100549)))

(declare-fun b_lambda!100551 () Bool)

(assert (= b_lambda!100535 (or (and b!3477341 b_free!90171 (= (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))))) (and b!3477378 b_free!90179 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))))) (and b!3477347 b_free!90175) (and b!3478305 b_free!90195 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))))) (and b!3478291 b_free!90191 (= (toChars!7547 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))))) b_lambda!100551)))

(declare-fun b_lambda!100553 () Bool)

(assert (= b_lambda!100539 (or b!3477349 b_lambda!100553)))

(declare-fun bs!561817 () Bool)

(declare-fun d!1004657 () Bool)

(assert (= bs!561817 (and d!1004657 b!3477349)))

(assert (=> bs!561817 (= (dynLambda!15744 lambda!122134 (h!42649 (t!275186 tokens!494))) (not (isSeparator!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))))))

(assert (=> d!1004641 d!1004657))

(declare-fun b_lambda!100555 () Bool)

(assert (= b_lambda!100497 (or b!3477349 b_lambda!100555)))

(declare-fun bs!561818 () Bool)

(declare-fun d!1004659 () Bool)

(assert (= bs!561818 (and d!1004659 b!3477349)))

(assert (=> bs!561818 (= (dynLambda!15744 lambda!122134 (h!42649 tokens!494)) (not (isSeparator!5452 (rule!8052 (h!42649 tokens!494)))))))

(assert (=> b!3477664 d!1004659))

(declare-fun b_lambda!100557 () Bool)

(assert (= b_lambda!100541 (or b!3477349 b_lambda!100557)))

(assert (=> d!1004643 d!1004659))

(declare-fun b_lambda!100559 () Bool)

(assert (= b_lambda!100505 (or b!3477348 b_lambda!100559)))

(declare-fun bs!561819 () Bool)

(declare-fun d!1004661 () Bool)

(assert (= bs!561819 (and d!1004661 b!3477348)))

(assert (=> bs!561819 (= (dynLambda!15744 lambda!122135 (h!42649 (t!275186 tokens!494))) (rulesProduceIndividualToken!2533 thiss!18206 rules!2135 (h!42649 (t!275186 tokens!494))))))

(assert (=> bs!561819 m!3892519))

(assert (=> d!1004467 d!1004661))

(declare-fun b_lambda!100561 () Bool)

(assert (= b_lambda!100483 (or (and b!3477341 b_free!90171 (= (toChars!7547 (transformation!5452 (h!42648 rules!2135))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))))) (and b!3477378 b_free!90179 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 tokens!494)))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))))) (and b!3477347 b_free!90175) (and b!3478305 b_free!90195 (= (toChars!7547 (transformation!5452 (rule!8052 (h!42649 (t!275186 tokens!494))))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))))) (and b!3478291 b_free!90191 (= (toChars!7547 (transformation!5452 (h!42648 (t!275185 rules!2135)))) (toChars!7547 (transformation!5452 (rule!8052 separatorToken!241))))) b_lambda!100561)))

(check-sat (not d!1004483) (not b!3478157) (not b!3478176) (not b!3477704) (not b!3478251) (not d!1004651) (not d!1004621) (not d!1004617) (not d!1004423) (not b!3478244) (not b!3477665) (not b!3477515) (not b!3478177) (not b!3477657) (not b!3478205) (not b!3478335) (not b!3477552) (not d!1004401) (not d!1004553) (not b!3478211) b_and!245333 (not bm!250868) (not b!3477435) (not b!3478219) (not d!1004389) (not d!1004633) (not b!3478158) (not b!3477551) (not d!1004581) (not d!1004297) (not b_next!90875) (not bm!250862) (not d!1004655) (not b!3477458) b_and!245377 (not bs!561819) (not b!3478170) (not b!3478225) (not b!3477683) (not b!3478311) (not d!1004321) (not d!1004281) (not b!3478236) (not b!3477549) (not b_lambda!100549) b_and!245375 (not b!3477434) (not d!1004387) (not b!3477876) (not b!3478209) (not b!3478310) (not d!1004285) (not b!3478156) (not b!3477737) (not d!1004329) (not d!1004611) (not b!3478231) (not d!1004277) (not d!1004649) (not d!1004595) (not b!3478179) (not d!1004301) (not b!3477708) (not tb!190631) (not d!1004279) (not b!3478216) (not d!1004579) (not d!1004585) (not b!3478063) (not b!3477714) (not d!1004443) (not d!1004403) (not b!3478172) (not b!3477674) (not b!3478276) (not b!3478191) (not d!1004625) (not b!3478279) (not d!1004453) (not d!1004629) (not b!3478066) (not d!1004631) (not b!3477842) (not d!1004407) (not b!3477659) (not b!3478180) (not b!3478187) (not b!3478327) (not d!1004445) (not d!1004415) (not b!3477800) (not b!3478190) b_and!245379 (not b!3478208) (not b!3478062) (not b!3478212) (not b!3477717) (not b!3477560) (not b!3478329) (not b!3477504) (not b!3477688) (not b!3477711) (not b_next!90897) (not b!3477690) (not d!1004599) (not b!3477723) (not b!3478241) (not b_next!90899) (not d!1004605) (not b!3478303) (not b!3478275) (not b_lambda!100551) (not d!1004409) (not b!3477877) (not d!1004643) (not b!3477705) (not bm!250864) (not d!1004411) (not b!3477902) (not d!1004413) (not b_lambda!100557) (not d!1004603) (not b!3477419) b_and!245331 (not b!3477508) (not b!3477677) (not b!3477445) (not d!1004635) tp_is_empty!17577 (not b!3478252) (not b!3478326) (not b_lambda!100561) (not b!3478068) (not b!3477561) (not b!3478061) (not d!1004467) (not b!3478243) (not b_lambda!100547) b_and!245381 (not b!3478097) (not bm!250881) (not d!1004299) (not b!3478233) (not d!1004289) (not b!3477684) (not bm!250885) (not b!3478065) (not b!3477431) (not b!3478192) (not tb!190637) (not bm!250866) (not d!1004349) (not b!3478334) (not b!3478331) (not bm!250880) (not b!3478336) (not b!3478302) (not tb!190667) (not b!3478235) (not d!1004275) (not b!3477875) (not b!3477686) (not b_lambda!100543) (not b!3478184) b_and!245369 (not b!3478147) (not b!3477507) (not b!3478165) (not d!1004583) (not b!3478070) (not b!3477843) (not d!1004653) (not b_lambda!100559) (not d!1004551) (not b!3478290) (not d!1004615) (not d!1004607) (not bm!250865) (not b!3477441) (not b_next!90883) (not d!1004405) (not b!3478273) b_and!245335 (not d!1004421) (not b!3477841) (not b!3478333) (not bm!250838) (not b!3478274) (not b!3478067) (not d!1004463) (not d!1004557) (not b_next!90879) (not b_lambda!100553) (not b!3478289) (not b!3478330) (not b!3478245) b_and!245371 (not d!1004647) (not b!3478277) (not d!1004597) (not b!3477680) (not b!3477456) (not b!3477681) (not b!3478232) (not d!1004395) (not bm!250869) (not b!3477730) (not b!3478198) (not b!3478202) (not b!3478325) (not d!1004293) (not d!1004477) (not b!3478280) (not d!1004479) (not b!3477450) (not tb!190655) (not d!1004587) (not b!3478304) (not b_next!90893) (not d!1004333) (not b!3477512) (not b!3477713) (not b_next!90873) (not b!3478174) (not d!1004471) (not b!3478197) (not b!3477430) (not b!3478171) (not b!3477878) (not b!3477442) (not b_next!90877) (not b!3477505) (not b!3478096) (not b!3477446) (not b!3477732) (not b!3478189) (not d!1004623) (not d!1004455) (not b_lambda!100545) (not b!3478194) (not b!3477687) (not d!1004465) (not b!3477738) (not b!3478272) b_and!245373 (not b_next!90895) (not b!3478069) (not b_next!90881) (not b!3477840) (not b!3478173) (not b!3477808) (not b!3478195) (not b!3477658) (not b!3478060) (not b!3477448) (not d!1004555) (not d!1004641) (not b!3478155) (not b!3478247) (not b!3477873) (not d!1004397) (not b!3478248) (not d!1004417) (not b!3478073) (not b!3478071) (not b_lambda!100555) (not bm!250882) (not d!1004291))
(check-sat b_and!245333 b_and!245375 b_and!245379 (not b_next!90897) (not b_next!90899) b_and!245331 b_and!245381 b_and!245369 (not b_next!90883) b_and!245371 (not b_next!90893) b_and!245373 (not b_next!90875) b_and!245377 b_and!245335 (not b_next!90879) (not b_next!90873) (not b_next!90877) (not b_next!90895) (not b_next!90881))

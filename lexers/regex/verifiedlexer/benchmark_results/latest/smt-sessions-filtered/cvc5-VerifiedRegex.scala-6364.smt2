; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!330504 () Bool)

(assert start!330504)

(declare-fun b!3568869 () Bool)

(declare-fun b_free!91357 () Bool)

(declare-fun b_next!92061 () Bool)

(assert (=> b!3568869 (= b_free!91357 (not b_next!92061))))

(declare-fun tp!1093415 () Bool)

(declare-fun b_and!256787 () Bool)

(assert (=> b!3568869 (= tp!1093415 b_and!256787)))

(declare-fun b_free!91359 () Bool)

(declare-fun b_next!92063 () Bool)

(assert (=> b!3568869 (= b_free!91359 (not b_next!92063))))

(declare-fun tp!1093409 () Bool)

(declare-fun b_and!256789 () Bool)

(assert (=> b!3568869 (= tp!1093409 b_and!256789)))

(declare-fun b!3568885 () Bool)

(declare-fun b_free!91361 () Bool)

(declare-fun b_next!92065 () Bool)

(assert (=> b!3568885 (= b_free!91361 (not b_next!92065))))

(declare-fun tp!1093406 () Bool)

(declare-fun b_and!256791 () Bool)

(assert (=> b!3568885 (= tp!1093406 b_and!256791)))

(declare-fun b_free!91363 () Bool)

(declare-fun b_next!92067 () Bool)

(assert (=> b!3568885 (= b_free!91363 (not b_next!92067))))

(declare-fun tp!1093408 () Bool)

(declare-fun b_and!256793 () Bool)

(assert (=> b!3568885 (= tp!1093408 b_and!256793)))

(declare-fun b!3568883 () Bool)

(declare-fun b_free!91365 () Bool)

(declare-fun b_next!92069 () Bool)

(assert (=> b!3568883 (= b_free!91365 (not b_next!92069))))

(declare-fun tp!1093414 () Bool)

(declare-fun b_and!256795 () Bool)

(assert (=> b!3568883 (= tp!1093414 b_and!256795)))

(declare-fun b_free!91367 () Bool)

(declare-fun b_next!92071 () Bool)

(assert (=> b!3568883 (= b_free!91367 (not b_next!92071))))

(declare-fun tp!1093410 () Bool)

(declare-fun b_and!256797 () Bool)

(assert (=> b!3568883 (= tp!1093410 b_and!256797)))

(declare-fun bs!569066 () Bool)

(declare-fun b!3568854 () Bool)

(declare-fun b!3568860 () Bool)

(assert (= bs!569066 (and b!3568854 b!3568860)))

(declare-fun lambda!123411 () Int)

(declare-fun lambda!123410 () Int)

(assert (=> bs!569066 (not (= lambda!123411 lambda!123410))))

(declare-fun b!3568903 () Bool)

(declare-fun e!2207700 () Bool)

(assert (=> b!3568903 (= e!2207700 true)))

(declare-fun b!3568902 () Bool)

(declare-fun e!2207699 () Bool)

(assert (=> b!3568902 (= e!2207699 e!2207700)))

(declare-fun b!3568901 () Bool)

(declare-fun e!2207698 () Bool)

(assert (=> b!3568901 (= e!2207698 e!2207699)))

(assert (=> b!3568854 e!2207698))

(assert (= b!3568902 b!3568903))

(assert (= b!3568901 b!3568902))

(declare-datatypes ((C!20718 0))(
  ( (C!20719 (val!12407 Int)) )
))
(declare-datatypes ((Regex!10266 0))(
  ( (ElementMatch!10266 (c!618472 C!20718)) (Concat!16003 (regOne!21044 Regex!10266) (regTwo!21044 Regex!10266)) (EmptyExpr!10266) (Star!10266 (reg!10595 Regex!10266)) (EmptyLang!10266) (Union!10266 (regOne!21045 Regex!10266) (regTwo!21045 Regex!10266)) )
))
(declare-datatypes ((List!37608 0))(
  ( (Nil!37484) (Cons!37484 (h!42904 (_ BitVec 16)) (t!288869 List!37608)) )
))
(declare-datatypes ((TokenValue!5737 0))(
  ( (FloatLiteralValue!11474 (text!40604 List!37608)) (TokenValueExt!5736 (__x!23691 Int)) (Broken!28685 (value!177385 List!37608)) (Object!5860) (End!5737) (Def!5737) (Underscore!5737) (Match!5737) (Else!5737) (Error!5737) (Case!5737) (If!5737) (Extends!5737) (Abstract!5737) (Class!5737) (Val!5737) (DelimiterValue!11474 (del!5797 List!37608)) (KeywordValue!5743 (value!177386 List!37608)) (CommentValue!11474 (value!177387 List!37608)) (WhitespaceValue!11474 (value!177388 List!37608)) (IndentationValue!5737 (value!177389 List!37608)) (String!42020) (Int32!5737) (Broken!28686 (value!177390 List!37608)) (Boolean!5738) (Unit!53461) (OperatorValue!5740 (op!5797 List!37608)) (IdentifierValue!11474 (value!177391 List!37608)) (IdentifierValue!11475 (value!177392 List!37608)) (WhitespaceValue!11475 (value!177393 List!37608)) (True!11474) (False!11474) (Broken!28687 (value!177394 List!37608)) (Broken!28688 (value!177395 List!37608)) (True!11475) (RightBrace!5737) (RightBracket!5737) (Colon!5737) (Null!5737) (Comma!5737) (LeftBracket!5737) (False!11475) (LeftBrace!5737) (ImaginaryLiteralValue!5737 (text!40605 List!37608)) (StringLiteralValue!17211 (value!177396 List!37608)) (EOFValue!5737 (value!177397 List!37608)) (IdentValue!5737 (value!177398 List!37608)) (DelimiterValue!11475 (value!177399 List!37608)) (DedentValue!5737 (value!177400 List!37608)) (NewLineValue!5737 (value!177401 List!37608)) (IntegerValue!17211 (value!177402 (_ BitVec 32)) (text!40606 List!37608)) (IntegerValue!17212 (value!177403 Int) (text!40607 List!37608)) (Times!5737) (Or!5737) (Equal!5737) (Minus!5737) (Broken!28689 (value!177404 List!37608)) (And!5737) (Div!5737) (LessEqual!5737) (Mod!5737) (Concat!16004) (Not!5737) (Plus!5737) (SpaceValue!5737 (value!177405 List!37608)) (IntegerValue!17213 (value!177406 Int) (text!40608 List!37608)) (StringLiteralValue!17212 (text!40609 List!37608)) (FloatLiteralValue!11475 (text!40610 List!37608)) (BytesLiteralValue!5737 (value!177407 List!37608)) (CommentValue!11475 (value!177408 List!37608)) (StringLiteralValue!17213 (value!177409 List!37608)) (ErrorTokenValue!5737 (msg!5798 List!37608)) )
))
(declare-datatypes ((List!37609 0))(
  ( (Nil!37485) (Cons!37485 (h!42905 C!20718) (t!288870 List!37609)) )
))
(declare-datatypes ((IArray!22783 0))(
  ( (IArray!22784 (innerList!11449 List!37609)) )
))
(declare-datatypes ((Conc!11389 0))(
  ( (Node!11389 (left!29307 Conc!11389) (right!29637 Conc!11389) (csize!23008 Int) (cheight!11600 Int)) (Leaf!17754 (xs!14591 IArray!22783) (csize!23009 Int)) (Empty!11389) )
))
(declare-datatypes ((BalanceConc!22392 0))(
  ( (BalanceConc!22393 (c!618473 Conc!11389)) )
))
(declare-datatypes ((String!42021 0))(
  ( (String!42022 (value!177410 String)) )
))
(declare-datatypes ((TokenValueInjection!10902 0))(
  ( (TokenValueInjection!10903 (toValue!7775 Int) (toChars!7634 Int)) )
))
(declare-datatypes ((Rule!10814 0))(
  ( (Rule!10815 (regex!5507 Regex!10266) (tag!6163 String!42021) (isSeparator!5507 Bool) (transformation!5507 TokenValueInjection!10902)) )
))
(declare-datatypes ((List!37610 0))(
  ( (Nil!37486) (Cons!37486 (h!42906 Rule!10814) (t!288871 List!37610)) )
))
(declare-fun rules!2135 () List!37610)

(assert (= (and b!3568854 (is-Cons!37486 rules!2135)) b!3568901))

(declare-fun order!20315 () Int)

(declare-fun order!20317 () Int)

(declare-fun dynLambda!16084 (Int Int) Int)

(declare-fun dynLambda!16085 (Int Int) Int)

(assert (=> b!3568903 (< (dynLambda!16084 order!20315 (toValue!7775 (transformation!5507 (h!42906 rules!2135)))) (dynLambda!16085 order!20317 lambda!123411))))

(declare-fun order!20319 () Int)

(declare-fun dynLambda!16086 (Int Int) Int)

(assert (=> b!3568903 (< (dynLambda!16086 order!20319 (toChars!7634 (transformation!5507 (h!42906 rules!2135)))) (dynLambda!16085 order!20317 lambda!123411))))

(assert (=> b!3568854 true))

(declare-fun b!3568843 () Bool)

(declare-fun e!2207654 () Bool)

(declare-fun e!2207659 () Bool)

(assert (=> b!3568843 (= e!2207654 e!2207659)))

(declare-fun res!1438987 () Bool)

(assert (=> b!3568843 (=> (not res!1438987) (not e!2207659))))

(declare-fun lt!1222704 () Rule!10814)

(declare-fun lt!1222711 () List!37609)

(declare-fun matchR!4850 (Regex!10266 List!37609) Bool)

(assert (=> b!3568843 (= res!1438987 (matchR!4850 (regex!5507 lt!1222704) lt!1222711))))

(declare-datatypes ((Option!7683 0))(
  ( (None!7682) (Some!7682 (v!37280 Rule!10814)) )
))
(declare-fun lt!1222707 () Option!7683)

(declare-fun get!12062 (Option!7683) Rule!10814)

(assert (=> b!3568843 (= lt!1222704 (get!12062 lt!1222707))))

(declare-fun b!3568844 () Bool)

(declare-fun res!1438969 () Bool)

(declare-fun e!2207673 () Bool)

(assert (=> b!3568844 (=> res!1438969 e!2207673)))

(declare-datatypes ((Token!10380 0))(
  ( (Token!10381 (value!177411 TokenValue!5737) (rule!8197 Rule!10814) (size!28572 Int) (originalCharacters!6221 List!37609)) )
))
(declare-datatypes ((List!37611 0))(
  ( (Nil!37487) (Cons!37487 (h!42907 Token!10380) (t!288872 List!37611)) )
))
(declare-datatypes ((IArray!22785 0))(
  ( (IArray!22786 (innerList!11450 List!37611)) )
))
(declare-datatypes ((Conc!11390 0))(
  ( (Node!11390 (left!29308 Conc!11390) (right!29638 Conc!11390) (csize!23010 Int) (cheight!11601 Int)) (Leaf!17755 (xs!14592 IArray!22785) (csize!23011 Int)) (Empty!11390) )
))
(declare-datatypes ((BalanceConc!22394 0))(
  ( (BalanceConc!22395 (c!618474 Conc!11390)) )
))
(declare-datatypes ((tuple2!37388 0))(
  ( (tuple2!37389 (_1!21828 BalanceConc!22394) (_2!21828 BalanceConc!22392)) )
))
(declare-fun lt!1222726 () tuple2!37388)

(declare-fun tokens!494 () List!37611)

(declare-fun apply!9002 (BalanceConc!22394 Int) Token!10380)

(assert (=> b!3568844 (= res!1438969 (not (= (apply!9002 (_1!21828 lt!1222726) 0) (h!42907 (t!288872 tokens!494)))))))

(declare-fun b!3568845 () Bool)

(declare-fun e!2207679 () Bool)

(assert (=> b!3568845 (= e!2207679 false)))

(declare-fun b!3568846 () Bool)

(declare-datatypes ((Unit!53462 0))(
  ( (Unit!53463) )
))
(declare-fun e!2207666 () Unit!53462)

(declare-fun Unit!53464 () Unit!53462)

(assert (=> b!3568846 (= e!2207666 Unit!53464)))

(declare-fun e!2207674 () Bool)

(declare-fun e!2207658 () Bool)

(declare-fun tp!1093403 () Bool)

(declare-fun b!3568847 () Bool)

(declare-fun inv!50756 (String!42021) Bool)

(declare-fun inv!50759 (TokenValueInjection!10902) Bool)

(assert (=> b!3568847 (= e!2207674 (and tp!1093403 (inv!50756 (tag!6163 (rule!8197 (h!42907 tokens!494)))) (inv!50759 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) e!2207658))))

(declare-fun res!1438968 () Bool)

(declare-fun e!2207691 () Bool)

(assert (=> start!330504 (=> (not res!1438968) (not e!2207691))))

(declare-datatypes ((LexerInterface!5096 0))(
  ( (LexerInterfaceExt!5093 (__x!23692 Int)) (Lexer!5094) )
))
(declare-fun thiss!18206 () LexerInterface!5096)

(assert (=> start!330504 (= res!1438968 (is-Lexer!5094 thiss!18206))))

(assert (=> start!330504 e!2207691))

(assert (=> start!330504 true))

(declare-fun e!2207682 () Bool)

(assert (=> start!330504 e!2207682))

(declare-fun e!2207657 () Bool)

(assert (=> start!330504 e!2207657))

(declare-fun separatorToken!241 () Token!10380)

(declare-fun e!2207669 () Bool)

(declare-fun inv!50760 (Token!10380) Bool)

(assert (=> start!330504 (and (inv!50760 separatorToken!241) e!2207669)))

(declare-fun b!3568848 () Bool)

(declare-fun Unit!53465 () Unit!53462)

(assert (=> b!3568848 (= e!2207666 Unit!53465)))

(declare-fun lt!1222718 () Unit!53462)

(declare-fun lt!1222715 () C!20718)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!565 (Regex!10266 List!37609 C!20718) Unit!53462)

(assert (=> b!3568848 (= lt!1222718 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!565 (regex!5507 (rule!8197 separatorToken!241)) lt!1222711 lt!1222715))))

(declare-fun res!1438976 () Bool)

(assert (=> b!3568848 (= res!1438976 (not (matchR!4850 (regex!5507 (rule!8197 separatorToken!241)) lt!1222711)))))

(declare-fun e!2207665 () Bool)

(assert (=> b!3568848 (=> (not res!1438976) (not e!2207665))))

(assert (=> b!3568848 e!2207665))

(declare-fun b!3568849 () Bool)

(declare-fun res!1438980 () Bool)

(declare-fun e!2207671 () Bool)

(assert (=> b!3568849 (=> res!1438980 e!2207671)))

(declare-fun contains!7087 (List!37610 Rule!10814) Bool)

(assert (=> b!3568849 (= res!1438980 (not (contains!7087 rules!2135 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(declare-fun tp!1093405 () Bool)

(declare-fun b!3568850 () Bool)

(declare-fun e!2207663 () Bool)

(declare-fun inv!21 (TokenValue!5737) Bool)

(assert (=> b!3568850 (= e!2207663 (and (inv!21 (value!177411 (h!42907 tokens!494))) e!2207674 tp!1093405))))

(declare-fun tp!1093407 () Bool)

(declare-fun e!2207690 () Bool)

(declare-fun e!2207667 () Bool)

(declare-fun b!3568851 () Bool)

(assert (=> b!3568851 (= e!2207667 (and tp!1093407 (inv!50756 (tag!6163 (h!42906 rules!2135))) (inv!50759 (transformation!5507 (h!42906 rules!2135))) e!2207690))))

(declare-fun b!3568852 () Bool)

(declare-fun res!1438955 () Bool)

(assert (=> b!3568852 (=> (not res!1438955) (not e!2207691))))

(declare-fun rulesProduceEachTokenIndividually!1547 (LexerInterface!5096 List!37610 BalanceConc!22394) Bool)

(declare-fun seqFromList!4067 (List!37611) BalanceConc!22394)

(assert (=> b!3568852 (= res!1438955 (rulesProduceEachTokenIndividually!1547 thiss!18206 rules!2135 (seqFromList!4067 tokens!494)))))

(declare-fun b!3568853 () Bool)

(declare-fun tp!1093404 () Bool)

(assert (=> b!3568853 (= e!2207657 (and (inv!50760 (h!42907 tokens!494)) e!2207663 tp!1093404))))

(declare-fun e!2207660 () Bool)

(assert (=> b!3568854 (= e!2207660 e!2207671)))

(declare-fun res!1438984 () Bool)

(assert (=> b!3568854 (=> res!1438984 e!2207671)))

(assert (=> b!3568854 (= res!1438984 (not (contains!7087 rules!2135 (rule!8197 separatorToken!241))))))

(declare-fun lt!1222741 () List!37609)

(declare-fun lt!1222703 () C!20718)

(declare-fun contains!7088 (List!37609 C!20718) Bool)

(assert (=> b!3568854 (not (contains!7088 lt!1222741 lt!1222703))))

(declare-fun lt!1222705 () Unit!53462)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!189 (LexerInterface!5096 List!37610 List!37610 Rule!10814 Rule!10814 C!20718) Unit!53462)

(assert (=> b!3568854 (= lt!1222705 (lemmaSepRuleNotContainsCharContainedInANonSepRule!189 thiss!18206 rules!2135 rules!2135 (rule!8197 (h!42907 (t!288872 tokens!494))) (rule!8197 separatorToken!241) lt!1222703))))

(declare-fun lt!1222734 () Unit!53462)

(declare-fun e!2207684 () Unit!53462)

(assert (=> b!3568854 (= lt!1222734 e!2207684)))

(declare-fun c!618471 () Bool)

(declare-fun usedCharacters!741 (Regex!10266) List!37609)

(assert (=> b!3568854 (= c!618471 (not (contains!7088 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) lt!1222703)))))

(declare-fun lt!1222721 () List!37609)

(declare-fun head!7434 (List!37609) C!20718)

(assert (=> b!3568854 (= lt!1222703 (head!7434 lt!1222721))))

(declare-datatypes ((tuple2!37390 0))(
  ( (tuple2!37391 (_1!21829 Token!10380) (_2!21829 List!37609)) )
))
(declare-datatypes ((Option!7684 0))(
  ( (None!7683) (Some!7683 (v!37281 tuple2!37390)) )
))
(declare-fun maxPrefixOneRule!1803 (LexerInterface!5096 Rule!10814 List!37609) Option!7684)

(declare-fun apply!9003 (TokenValueInjection!10902 BalanceConc!22392) TokenValue!5737)

(declare-fun seqFromList!4068 (List!37609) BalanceConc!22392)

(declare-fun size!28573 (List!37609) Int)

(assert (=> b!3568854 (= (maxPrefixOneRule!1803 thiss!18206 (rule!8197 (h!42907 (t!288872 tokens!494))) lt!1222721) (Some!7683 (tuple2!37391 (Token!10381 (apply!9003 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) (seqFromList!4068 lt!1222721)) (rule!8197 (h!42907 (t!288872 tokens!494))) (size!28573 lt!1222721) lt!1222721) Nil!37485)))))

(declare-fun lt!1222714 () Unit!53462)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!896 (LexerInterface!5096 List!37610 List!37609 List!37609 List!37609 Rule!10814) Unit!53462)

(assert (=> b!3568854 (= lt!1222714 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!896 thiss!18206 rules!2135 lt!1222721 lt!1222721 Nil!37485 (rule!8197 (h!42907 (t!288872 tokens!494)))))))

(declare-fun e!2207661 () Bool)

(assert (=> b!3568854 e!2207661))

(declare-fun res!1438971 () Bool)

(assert (=> b!3568854 (=> (not res!1438971) (not e!2207661))))

(declare-fun lt!1222719 () Option!7683)

(declare-fun isDefined!5927 (Option!7683) Bool)

(assert (=> b!3568854 (= res!1438971 (isDefined!5927 lt!1222719))))

(declare-fun getRuleFromTag!1150 (LexerInterface!5096 List!37610 String!42021) Option!7683)

(assert (=> b!3568854 (= lt!1222719 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(declare-fun lt!1222720 () Unit!53462)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1150 (LexerInterface!5096 List!37610 List!37609 Token!10380) Unit!53462)

(assert (=> b!3568854 (= lt!1222720 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1150 thiss!18206 rules!2135 lt!1222721 (h!42907 (t!288872 tokens!494))))))

(declare-fun lt!1222710 () Bool)

(assert (=> b!3568854 lt!1222710))

(declare-fun lt!1222735 () Unit!53462)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1085 (LexerInterface!5096 List!37610 List!37611 Token!10380) Unit!53462)

(assert (=> b!3568854 (= lt!1222735 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1085 thiss!18206 rules!2135 tokens!494 (h!42907 (t!288872 tokens!494))))))

(declare-fun lt!1222747 () List!37609)

(declare-fun lt!1222749 () List!37609)

(declare-fun maxPrefix!2636 (LexerInterface!5096 List!37610 List!37609) Option!7684)

(assert (=> b!3568854 (= (maxPrefix!2636 thiss!18206 rules!2135 lt!1222749) (Some!7683 (tuple2!37391 (h!42907 tokens!494) lt!1222747)))))

(declare-fun lt!1222737 () Unit!53462)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!263 (LexerInterface!5096 List!37610 Token!10380 Rule!10814 List!37609 Rule!10814) Unit!53462)

(assert (=> b!3568854 (= lt!1222737 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!263 thiss!18206 rules!2135 (h!42907 tokens!494) (rule!8197 (h!42907 tokens!494)) lt!1222747 (rule!8197 separatorToken!241)))))

(assert (=> b!3568854 (not (contains!7088 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 tokens!494)))) lt!1222715))))

(declare-fun lt!1222732 () Unit!53462)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!307 (LexerInterface!5096 List!37610 List!37610 Rule!10814 Rule!10814 C!20718) Unit!53462)

(assert (=> b!3568854 (= lt!1222732 (lemmaNonSepRuleNotContainsCharContainedInASepRule!307 thiss!18206 rules!2135 rules!2135 (rule!8197 (h!42907 tokens!494)) (rule!8197 separatorToken!241) lt!1222715))))

(declare-fun lt!1222739 () Unit!53462)

(declare-fun forallContained!1454 (List!37611 Int Token!10380) Unit!53462)

(assert (=> b!3568854 (= lt!1222739 (forallContained!1454 tokens!494 lambda!123411 (h!42907 (t!288872 tokens!494))))))

(declare-fun lt!1222748 () Bool)

(assert (=> b!3568854 (= lt!1222710 (not lt!1222748))))

(declare-fun rulesProduceIndividualToken!2588 (LexerInterface!5096 List!37610 Token!10380) Bool)

(assert (=> b!3568854 (= lt!1222710 (rulesProduceIndividualToken!2588 thiss!18206 rules!2135 (h!42907 (t!288872 tokens!494))))))

(assert (=> b!3568854 (= lt!1222748 e!2207673)))

(declare-fun res!1438988 () Bool)

(assert (=> b!3568854 (=> res!1438988 e!2207673)))

(declare-fun size!28574 (BalanceConc!22394) Int)

(assert (=> b!3568854 (= res!1438988 (not (= (size!28574 (_1!21828 lt!1222726)) 1)))))

(declare-fun lt!1222746 () BalanceConc!22392)

(declare-fun lex!2422 (LexerInterface!5096 List!37610 BalanceConc!22392) tuple2!37388)

(assert (=> b!3568854 (= lt!1222726 (lex!2422 thiss!18206 rules!2135 lt!1222746))))

(declare-fun lt!1222709 () BalanceConc!22394)

(declare-fun printTailRec!1591 (LexerInterface!5096 BalanceConc!22394 Int BalanceConc!22392) BalanceConc!22392)

(assert (=> b!3568854 (= lt!1222746 (printTailRec!1591 thiss!18206 lt!1222709 0 (BalanceConc!22393 Empty!11389)))))

(declare-fun print!2161 (LexerInterface!5096 BalanceConc!22394) BalanceConc!22392)

(assert (=> b!3568854 (= lt!1222746 (print!2161 thiss!18206 lt!1222709))))

(declare-fun singletonSeq!2603 (Token!10380) BalanceConc!22394)

(assert (=> b!3568854 (= lt!1222709 (singletonSeq!2603 (h!42907 (t!288872 tokens!494))))))

(declare-fun e!2207683 () Bool)

(assert (=> b!3568854 e!2207683))

(declare-fun res!1438963 () Bool)

(assert (=> b!3568854 (=> (not res!1438963) (not e!2207683))))

(declare-fun lt!1222728 () tuple2!37388)

(assert (=> b!3568854 (= res!1438963 (= (size!28574 (_1!21828 lt!1222728)) 1))))

(declare-fun lt!1222706 () BalanceConc!22392)

(assert (=> b!3568854 (= lt!1222728 (lex!2422 thiss!18206 rules!2135 lt!1222706))))

(declare-fun lt!1222727 () BalanceConc!22394)

(assert (=> b!3568854 (= lt!1222706 (printTailRec!1591 thiss!18206 lt!1222727 0 (BalanceConc!22393 Empty!11389)))))

(assert (=> b!3568854 (= lt!1222706 (print!2161 thiss!18206 lt!1222727))))

(assert (=> b!3568854 (= lt!1222727 (singletonSeq!2603 separatorToken!241))))

(declare-fun lt!1222724 () Unit!53462)

(assert (=> b!3568854 (= lt!1222724 e!2207666)))

(declare-fun c!618470 () Bool)

(assert (=> b!3568854 (= c!618470 (not (contains!7088 lt!1222741 lt!1222715)))))

(assert (=> b!3568854 (= lt!1222715 (head!7434 lt!1222711))))

(assert (=> b!3568854 (= lt!1222741 (usedCharacters!741 (regex!5507 (rule!8197 separatorToken!241))))))

(assert (=> b!3568854 e!2207654))

(declare-fun res!1438975 () Bool)

(assert (=> b!3568854 (=> (not res!1438975) (not e!2207654))))

(assert (=> b!3568854 (= res!1438975 (isDefined!5927 lt!1222707))))

(assert (=> b!3568854 (= lt!1222707 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 separatorToken!241))))))

(declare-fun lt!1222742 () Unit!53462)

(assert (=> b!3568854 (= lt!1222742 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1150 thiss!18206 rules!2135 lt!1222711 separatorToken!241))))

(declare-fun lt!1222708 () List!37609)

(declare-fun lt!1222733 () BalanceConc!22392)

(assert (=> b!3568854 (= (maxPrefixOneRule!1803 thiss!18206 (rule!8197 (h!42907 tokens!494)) lt!1222708) (Some!7683 (tuple2!37391 (Token!10381 (apply!9003 (transformation!5507 (rule!8197 (h!42907 tokens!494))) lt!1222733) (rule!8197 (h!42907 tokens!494)) (size!28573 lt!1222708) lt!1222708) Nil!37485)))))

(declare-fun lt!1222740 () Unit!53462)

(assert (=> b!3568854 (= lt!1222740 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!896 thiss!18206 rules!2135 lt!1222708 lt!1222708 Nil!37485 (rule!8197 (h!42907 tokens!494))))))

(declare-fun e!2207681 () Bool)

(assert (=> b!3568854 e!2207681))

(declare-fun res!1438957 () Bool)

(assert (=> b!3568854 (=> (not res!1438957) (not e!2207681))))

(declare-fun lt!1222750 () Option!7683)

(assert (=> b!3568854 (= res!1438957 (isDefined!5927 lt!1222750))))

(assert (=> b!3568854 (= lt!1222750 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 tokens!494)))))))

(declare-fun lt!1222736 () Unit!53462)

(assert (=> b!3568854 (= lt!1222736 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1150 thiss!18206 rules!2135 lt!1222708 (h!42907 tokens!494)))))

(declare-fun lt!1222730 () Unit!53462)

(assert (=> b!3568854 (= lt!1222730 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1085 thiss!18206 rules!2135 tokens!494 (h!42907 tokens!494)))))

(declare-fun b!3568855 () Bool)

(declare-fun e!2207677 () Bool)

(declare-fun e!2207680 () Bool)

(assert (=> b!3568855 (= e!2207677 e!2207680)))

(declare-fun res!1438981 () Bool)

(assert (=> b!3568855 (=> res!1438981 e!2207680)))

(assert (=> b!3568855 (= res!1438981 (or (isSeparator!5507 (rule!8197 (h!42907 tokens!494))) (isSeparator!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(declare-fun lt!1222716 () Unit!53462)

(assert (=> b!3568855 (= lt!1222716 (forallContained!1454 tokens!494 lambda!123410 (h!42907 (t!288872 tokens!494))))))

(declare-fun lt!1222712 () Unit!53462)

(assert (=> b!3568855 (= lt!1222712 (forallContained!1454 tokens!494 lambda!123410 (h!42907 tokens!494)))))

(declare-fun b!3568856 () Bool)

(declare-fun e!2207672 () Bool)

(assert (=> b!3568856 (= e!2207672 e!2207660)))

(declare-fun res!1438978 () Bool)

(assert (=> b!3568856 (=> res!1438978 e!2207660)))

(declare-fun lt!1222729 () List!37609)

(assert (=> b!3568856 (= res!1438978 (not (= lt!1222729 lt!1222749)))))

(declare-fun lt!1222738 () List!37609)

(assert (=> b!3568856 (= lt!1222738 lt!1222749)))

(declare-fun ++!9318 (List!37609 List!37609) List!37609)

(assert (=> b!3568856 (= lt!1222749 (++!9318 lt!1222708 lt!1222747))))

(declare-fun lt!1222753 () Unit!53462)

(declare-fun lt!1222713 () List!37609)

(declare-fun lemmaConcatAssociativity!2047 (List!37609 List!37609 List!37609) Unit!53462)

(assert (=> b!3568856 (= lt!1222753 (lemmaConcatAssociativity!2047 lt!1222708 lt!1222711 lt!1222713))))

(declare-fun b!3568857 () Bool)

(declare-fun res!1438959 () Bool)

(assert (=> b!3568857 (=> (not res!1438959) (not e!2207691))))

(assert (=> b!3568857 (= res!1438959 (rulesProduceIndividualToken!2588 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3568858 () Bool)

(declare-fun e!2207662 () Bool)

(declare-fun e!2207688 () Bool)

(assert (=> b!3568858 (= e!2207662 e!2207688)))

(declare-fun res!1438966 () Bool)

(assert (=> b!3568858 (=> res!1438966 e!2207688)))

(declare-fun lt!1222723 () tuple2!37390)

(assert (=> b!3568858 (= res!1438966 (not (= (_1!21829 lt!1222723) separatorToken!241)))))

(declare-fun lt!1222745 () Option!7684)

(declare-fun get!12063 (Option!7684) tuple2!37390)

(assert (=> b!3568858 (= lt!1222723 (get!12063 lt!1222745))))

(declare-fun b!3568859 () Bool)

(declare-fun tp!1093411 () Bool)

(assert (=> b!3568859 (= e!2207682 (and e!2207667 tp!1093411))))

(declare-fun res!1438972 () Bool)

(assert (=> b!3568860 (=> (not res!1438972) (not e!2207691))))

(declare-fun forall!8105 (List!37611 Int) Bool)

(assert (=> b!3568860 (= res!1438972 (forall!8105 tokens!494 lambda!123410))))

(declare-fun b!3568861 () Bool)

(declare-fun res!1438986 () Bool)

(assert (=> b!3568861 (=> (not res!1438986) (not e!2207683))))

(assert (=> b!3568861 (= res!1438986 (= (apply!9002 (_1!21828 lt!1222728) 0) separatorToken!241))))

(declare-fun b!3568862 () Bool)

(declare-fun e!2207687 () Bool)

(assert (=> b!3568862 (= e!2207691 (not e!2207687))))

(declare-fun res!1438960 () Bool)

(assert (=> b!3568862 (=> res!1438960 e!2207687)))

(declare-fun lt!1222743 () List!37609)

(declare-fun lt!1222722 () List!37609)

(assert (=> b!3568862 (= res!1438960 (not (= lt!1222743 lt!1222722)))))

(declare-fun printList!1644 (LexerInterface!5096 List!37611) List!37609)

(assert (=> b!3568862 (= lt!1222722 (printList!1644 thiss!18206 (Cons!37487 (h!42907 tokens!494) Nil!37487)))))

(declare-fun lt!1222725 () BalanceConc!22392)

(declare-fun list!13748 (BalanceConc!22392) List!37609)

(assert (=> b!3568862 (= lt!1222743 (list!13748 lt!1222725))))

(declare-fun lt!1222752 () BalanceConc!22394)

(assert (=> b!3568862 (= lt!1222725 (printTailRec!1591 thiss!18206 lt!1222752 0 (BalanceConc!22393 Empty!11389)))))

(assert (=> b!3568862 (= lt!1222725 (print!2161 thiss!18206 lt!1222752))))

(assert (=> b!3568862 (= lt!1222752 (singletonSeq!2603 (h!42907 tokens!494)))))

(declare-fun b!3568863 () Bool)

(declare-fun e!2207655 () Bool)

(assert (=> b!3568863 (= e!2207681 e!2207655)))

(declare-fun res!1438958 () Bool)

(assert (=> b!3568863 (=> (not res!1438958) (not e!2207655))))

(declare-fun lt!1222731 () Rule!10814)

(assert (=> b!3568863 (= res!1438958 (matchR!4850 (regex!5507 lt!1222731) lt!1222708))))

(assert (=> b!3568863 (= lt!1222731 (get!12062 lt!1222750))))

(declare-fun b!3568864 () Bool)

(declare-fun isEmpty!22008 (BalanceConc!22392) Bool)

(assert (=> b!3568864 (= e!2207683 (isEmpty!22008 (_2!21828 lt!1222728)))))

(declare-fun b!3568865 () Bool)

(declare-fun e!2207678 () Bool)

(assert (=> b!3568865 (= e!2207661 e!2207678)))

(declare-fun res!1438989 () Bool)

(assert (=> b!3568865 (=> (not res!1438989) (not e!2207678))))

(declare-fun lt!1222744 () Rule!10814)

(assert (=> b!3568865 (= res!1438989 (matchR!4850 (regex!5507 lt!1222744) lt!1222721))))

(assert (=> b!3568865 (= lt!1222744 (get!12062 lt!1222719))))

(declare-fun b!3568866 () Bool)

(declare-fun e!2207668 () Bool)

(assert (=> b!3568866 (= e!2207688 e!2207668)))

(declare-fun res!1438964 () Bool)

(assert (=> b!3568866 (=> res!1438964 e!2207668)))

(assert (=> b!3568866 (= res!1438964 (not (matchR!4850 (regex!5507 (rule!8197 separatorToken!241)) lt!1222711)))))

(declare-fun ruleValid!1791 (LexerInterface!5096 Rule!10814) Bool)

(assert (=> b!3568866 (ruleValid!1791 thiss!18206 (rule!8197 separatorToken!241))))

(declare-fun lt!1222751 () Unit!53462)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!957 (LexerInterface!5096 Rule!10814 List!37610) Unit!53462)

(assert (=> b!3568866 (= lt!1222751 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!957 thiss!18206 (rule!8197 separatorToken!241) rules!2135))))

(declare-fun b!3568867 () Bool)

(declare-fun res!1438985 () Bool)

(assert (=> b!3568867 (=> (not res!1438985) (not e!2207691))))

(assert (=> b!3568867 (= res!1438985 (and (not (is-Nil!37487 tokens!494)) (not (is-Nil!37487 (t!288872 tokens!494)))))))

(declare-fun b!3568868 () Bool)

(assert (=> b!3568868 (= e!2207655 (= (rule!8197 (h!42907 tokens!494)) lt!1222731))))

(declare-fun e!2207676 () Bool)

(assert (=> b!3568869 (= e!2207676 (and tp!1093415 tp!1093409))))

(declare-fun b!3568870 () Bool)

(declare-fun res!1438983 () Bool)

(assert (=> b!3568870 (=> (not res!1438983) (not e!2207691))))

(assert (=> b!3568870 (= res!1438983 (isSeparator!5507 (rule!8197 separatorToken!241)))))

(declare-fun b!3568871 () Bool)

(declare-fun e!2207675 () Bool)

(assert (=> b!3568871 (= e!2207687 e!2207675)))

(declare-fun res!1438974 () Bool)

(assert (=> b!3568871 (=> res!1438974 e!2207675)))

(assert (=> b!3568871 (= res!1438974 (or (not (= lt!1222722 lt!1222708)) (not (= lt!1222743 lt!1222708))))))

(declare-fun charsOf!3521 (Token!10380) BalanceConc!22392)

(assert (=> b!3568871 (= lt!1222708 (list!13748 (charsOf!3521 (h!42907 tokens!494))))))

(declare-fun b!3568872 () Bool)

(assert (=> b!3568872 (= e!2207675 e!2207677)))

(declare-fun res!1438990 () Bool)

(assert (=> b!3568872 (=> res!1438990 e!2207677)))

(declare-fun isEmpty!22009 (BalanceConc!22394) Bool)

(assert (=> b!3568872 (= res!1438990 (isEmpty!22009 (_1!21828 (lex!2422 thiss!18206 rules!2135 lt!1222733))))))

(assert (=> b!3568872 (= lt!1222733 (seqFromList!4068 lt!1222708))))

(declare-fun b!3568873 () Bool)

(declare-fun res!1438982 () Bool)

(assert (=> b!3568873 (=> (not res!1438982) (not e!2207691))))

(declare-fun isEmpty!22010 (List!37610) Bool)

(assert (=> b!3568873 (= res!1438982 (not (isEmpty!22010 rules!2135)))))

(declare-fun b!3568874 () Bool)

(declare-fun tp!1093412 () Bool)

(declare-fun e!2207685 () Bool)

(assert (=> b!3568874 (= e!2207669 (and (inv!21 (value!177411 separatorToken!241)) e!2207685 tp!1093412))))

(declare-fun b!3568875 () Bool)

(assert (=> b!3568875 (= e!2207665 false)))

(declare-fun b!3568876 () Bool)

(declare-fun Unit!53466 () Unit!53462)

(assert (=> b!3568876 (= e!2207684 Unit!53466)))

(declare-fun b!3568877 () Bool)

(assert (=> b!3568877 (= e!2207659 (= (rule!8197 separatorToken!241) lt!1222704))))

(declare-fun b!3568878 () Bool)

(declare-fun res!1438970 () Bool)

(assert (=> b!3568878 (=> res!1438970 e!2207688)))

(declare-fun isEmpty!22011 (List!37609) Bool)

(assert (=> b!3568878 (= res!1438970 (not (isEmpty!22011 (_2!21829 lt!1222723))))))

(declare-fun b!3568879 () Bool)

(declare-fun e!2207689 () Bool)

(assert (=> b!3568879 (= e!2207680 e!2207689)))

(declare-fun res!1438961 () Bool)

(assert (=> b!3568879 (=> res!1438961 e!2207689)))

(declare-fun printWithSeparatorTokenList!383 (LexerInterface!5096 List!37611 Token!10380) List!37609)

(assert (=> b!3568879 (= res!1438961 (not (= lt!1222713 (++!9318 (++!9318 lt!1222721 lt!1222711) (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 tokens!494)) separatorToken!241)))))))

(assert (=> b!3568879 (= lt!1222721 (list!13748 (charsOf!3521 (h!42907 (t!288872 tokens!494)))))))

(assert (=> b!3568879 (= lt!1222747 (++!9318 lt!1222711 lt!1222713))))

(assert (=> b!3568879 (= lt!1222711 (list!13748 (charsOf!3521 separatorToken!241)))))

(assert (=> b!3568879 (= lt!1222713 (printWithSeparatorTokenList!383 thiss!18206 (t!288872 tokens!494) separatorToken!241))))

(assert (=> b!3568879 (= lt!1222729 (printWithSeparatorTokenList!383 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3568880 () Bool)

(declare-fun Unit!53467 () Unit!53462)

(assert (=> b!3568880 (= e!2207684 Unit!53467)))

(declare-fun lt!1222717 () Unit!53462)

(assert (=> b!3568880 (= lt!1222717 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!565 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1222721 lt!1222703))))

(declare-fun res!1438973 () Bool)

(assert (=> b!3568880 (= res!1438973 (not (matchR!4850 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1222721)))))

(assert (=> b!3568880 (=> (not res!1438973) (not e!2207679))))

(assert (=> b!3568880 e!2207679))

(declare-fun b!3568881 () Bool)

(declare-fun res!1438979 () Bool)

(assert (=> b!3568881 (=> (not res!1438979) (not e!2207691))))

(declare-fun sepAndNonSepRulesDisjointChars!1701 (List!37610 List!37610) Bool)

(assert (=> b!3568881 (= res!1438979 (sepAndNonSepRulesDisjointChars!1701 rules!2135 rules!2135))))

(declare-fun b!3568882 () Bool)

(declare-fun res!1438967 () Bool)

(assert (=> b!3568882 (=> res!1438967 e!2207675)))

(assert (=> b!3568882 (= res!1438967 (not (rulesProduceIndividualToken!2588 thiss!18206 rules!2135 (h!42907 tokens!494))))))

(assert (=> b!3568883 (= e!2207658 (and tp!1093414 tp!1093410))))

(declare-fun b!3568884 () Bool)

(assert (=> b!3568884 (= e!2207671 e!2207662)))

(declare-fun res!1438977 () Bool)

(assert (=> b!3568884 (=> res!1438977 e!2207662)))

(declare-fun isDefined!5928 (Option!7684) Bool)

(assert (=> b!3568884 (= res!1438977 (not (isDefined!5928 lt!1222745)))))

(assert (=> b!3568884 (= lt!1222745 (maxPrefix!2636 thiss!18206 rules!2135 lt!1222711))))

(assert (=> b!3568885 (= e!2207690 (and tp!1093406 tp!1093408))))

(declare-fun b!3568886 () Bool)

(assert (=> b!3568886 (= e!2207673 (not (isEmpty!22008 (_2!21828 lt!1222726))))))

(declare-fun b!3568887 () Bool)

(assert (=> b!3568887 (= e!2207689 e!2207672)))

(declare-fun res!1438956 () Bool)

(assert (=> b!3568887 (=> res!1438956 e!2207672)))

(assert (=> b!3568887 (= res!1438956 (not (= lt!1222729 lt!1222738)))))

(assert (=> b!3568887 (= lt!1222738 (++!9318 (++!9318 lt!1222708 lt!1222711) lt!1222713))))

(declare-fun b!3568888 () Bool)

(declare-fun res!1438962 () Bool)

(assert (=> b!3568888 (=> res!1438962 e!2207668)))

(assert (=> b!3568888 (= res!1438962 (isEmpty!22011 lt!1222713))))

(declare-fun b!3568889 () Bool)

(declare-fun res!1438965 () Bool)

(assert (=> b!3568889 (=> (not res!1438965) (not e!2207691))))

(declare-fun rulesInvariant!4493 (LexerInterface!5096 List!37610) Bool)

(assert (=> b!3568889 (= res!1438965 (rulesInvariant!4493 thiss!18206 rules!2135))))

(declare-fun b!3568890 () Bool)

(assert (=> b!3568890 (= e!2207678 (= (rule!8197 (h!42907 (t!288872 tokens!494))) lt!1222744))))

(declare-fun tp!1093413 () Bool)

(declare-fun b!3568891 () Bool)

(assert (=> b!3568891 (= e!2207685 (and tp!1093413 (inv!50756 (tag!6163 (rule!8197 separatorToken!241))) (inv!50759 (transformation!5507 (rule!8197 separatorToken!241))) e!2207676))))

(declare-fun b!3568892 () Bool)

(assert (=> b!3568892 (= e!2207668 (not (contains!7088 lt!1222741 (head!7434 lt!1222713))))))

(assert (= (and start!330504 res!1438968) b!3568873))

(assert (= (and b!3568873 res!1438982) b!3568889))

(assert (= (and b!3568889 res!1438965) b!3568852))

(assert (= (and b!3568852 res!1438955) b!3568857))

(assert (= (and b!3568857 res!1438959) b!3568870))

(assert (= (and b!3568870 res!1438983) b!3568860))

(assert (= (and b!3568860 res!1438972) b!3568881))

(assert (= (and b!3568881 res!1438979) b!3568867))

(assert (= (and b!3568867 res!1438985) b!3568862))

(assert (= (and b!3568862 (not res!1438960)) b!3568871))

(assert (= (and b!3568871 (not res!1438974)) b!3568882))

(assert (= (and b!3568882 (not res!1438967)) b!3568872))

(assert (= (and b!3568872 (not res!1438990)) b!3568855))

(assert (= (and b!3568855 (not res!1438981)) b!3568879))

(assert (= (and b!3568879 (not res!1438961)) b!3568887))

(assert (= (and b!3568887 (not res!1438956)) b!3568856))

(assert (= (and b!3568856 (not res!1438978)) b!3568854))

(assert (= (and b!3568854 res!1438957) b!3568863))

(assert (= (and b!3568863 res!1438958) b!3568868))

(assert (= (and b!3568854 res!1438975) b!3568843))

(assert (= (and b!3568843 res!1438987) b!3568877))

(assert (= (and b!3568854 c!618470) b!3568848))

(assert (= (and b!3568854 (not c!618470)) b!3568846))

(assert (= (and b!3568848 res!1438976) b!3568875))

(assert (= (and b!3568854 res!1438963) b!3568861))

(assert (= (and b!3568861 res!1438986) b!3568864))

(assert (= (and b!3568854 (not res!1438988)) b!3568844))

(assert (= (and b!3568844 (not res!1438969)) b!3568886))

(assert (= (and b!3568854 res!1438971) b!3568865))

(assert (= (and b!3568865 res!1438989) b!3568890))

(assert (= (and b!3568854 c!618471) b!3568880))

(assert (= (and b!3568854 (not c!618471)) b!3568876))

(assert (= (and b!3568880 res!1438973) b!3568845))

(assert (= (and b!3568854 (not res!1438984)) b!3568849))

(assert (= (and b!3568849 (not res!1438980)) b!3568884))

(assert (= (and b!3568884 (not res!1438977)) b!3568858))

(assert (= (and b!3568858 (not res!1438966)) b!3568878))

(assert (= (and b!3568878 (not res!1438970)) b!3568866))

(assert (= (and b!3568866 (not res!1438964)) b!3568888))

(assert (= (and b!3568888 (not res!1438962)) b!3568892))

(assert (= b!3568851 b!3568885))

(assert (= b!3568859 b!3568851))

(assert (= (and start!330504 (is-Cons!37486 rules!2135)) b!3568859))

(assert (= b!3568847 b!3568883))

(assert (= b!3568850 b!3568847))

(assert (= b!3568853 b!3568850))

(assert (= (and start!330504 (is-Cons!37487 tokens!494)) b!3568853))

(assert (= b!3568891 b!3568869))

(assert (= b!3568874 b!3568891))

(assert (= start!330504 b!3568874))

(declare-fun m!4056241 () Bool)

(assert (=> b!3568892 m!4056241))

(assert (=> b!3568892 m!4056241))

(declare-fun m!4056243 () Bool)

(assert (=> b!3568892 m!4056243))

(declare-fun m!4056245 () Bool)

(assert (=> b!3568854 m!4056245))

(declare-fun m!4056247 () Bool)

(assert (=> b!3568854 m!4056247))

(declare-fun m!4056249 () Bool)

(assert (=> b!3568854 m!4056249))

(declare-fun m!4056251 () Bool)

(assert (=> b!3568854 m!4056251))

(declare-fun m!4056253 () Bool)

(assert (=> b!3568854 m!4056253))

(declare-fun m!4056255 () Bool)

(assert (=> b!3568854 m!4056255))

(declare-fun m!4056257 () Bool)

(assert (=> b!3568854 m!4056257))

(declare-fun m!4056259 () Bool)

(assert (=> b!3568854 m!4056259))

(declare-fun m!4056261 () Bool)

(assert (=> b!3568854 m!4056261))

(declare-fun m!4056263 () Bool)

(assert (=> b!3568854 m!4056263))

(declare-fun m!4056265 () Bool)

(assert (=> b!3568854 m!4056265))

(declare-fun m!4056267 () Bool)

(assert (=> b!3568854 m!4056267))

(declare-fun m!4056269 () Bool)

(assert (=> b!3568854 m!4056269))

(declare-fun m!4056271 () Bool)

(assert (=> b!3568854 m!4056271))

(declare-fun m!4056273 () Bool)

(assert (=> b!3568854 m!4056273))

(declare-fun m!4056275 () Bool)

(assert (=> b!3568854 m!4056275))

(declare-fun m!4056277 () Bool)

(assert (=> b!3568854 m!4056277))

(declare-fun m!4056279 () Bool)

(assert (=> b!3568854 m!4056279))

(declare-fun m!4056281 () Bool)

(assert (=> b!3568854 m!4056281))

(declare-fun m!4056283 () Bool)

(assert (=> b!3568854 m!4056283))

(assert (=> b!3568854 m!4056247))

(assert (=> b!3568854 m!4056255))

(declare-fun m!4056285 () Bool)

(assert (=> b!3568854 m!4056285))

(declare-fun m!4056287 () Bool)

(assert (=> b!3568854 m!4056287))

(declare-fun m!4056289 () Bool)

(assert (=> b!3568854 m!4056289))

(declare-fun m!4056291 () Bool)

(assert (=> b!3568854 m!4056291))

(assert (=> b!3568854 m!4056261))

(declare-fun m!4056293 () Bool)

(assert (=> b!3568854 m!4056293))

(declare-fun m!4056295 () Bool)

(assert (=> b!3568854 m!4056295))

(declare-fun m!4056297 () Bool)

(assert (=> b!3568854 m!4056297))

(declare-fun m!4056299 () Bool)

(assert (=> b!3568854 m!4056299))

(declare-fun m!4056301 () Bool)

(assert (=> b!3568854 m!4056301))

(declare-fun m!4056303 () Bool)

(assert (=> b!3568854 m!4056303))

(declare-fun m!4056305 () Bool)

(assert (=> b!3568854 m!4056305))

(declare-fun m!4056307 () Bool)

(assert (=> b!3568854 m!4056307))

(declare-fun m!4056309 () Bool)

(assert (=> b!3568854 m!4056309))

(declare-fun m!4056311 () Bool)

(assert (=> b!3568854 m!4056311))

(declare-fun m!4056313 () Bool)

(assert (=> b!3568854 m!4056313))

(declare-fun m!4056315 () Bool)

(assert (=> b!3568854 m!4056315))

(declare-fun m!4056317 () Bool)

(assert (=> b!3568854 m!4056317))

(declare-fun m!4056319 () Bool)

(assert (=> b!3568854 m!4056319))

(declare-fun m!4056321 () Bool)

(assert (=> b!3568854 m!4056321))

(declare-fun m!4056323 () Bool)

(assert (=> b!3568854 m!4056323))

(declare-fun m!4056325 () Bool)

(assert (=> b!3568854 m!4056325))

(declare-fun m!4056327 () Bool)

(assert (=> b!3568854 m!4056327))

(declare-fun m!4056329 () Bool)

(assert (=> b!3568854 m!4056329))

(declare-fun m!4056331 () Bool)

(assert (=> b!3568854 m!4056331))

(declare-fun m!4056333 () Bool)

(assert (=> b!3568854 m!4056333))

(declare-fun m!4056335 () Bool)

(assert (=> b!3568854 m!4056335))

(declare-fun m!4056337 () Bool)

(assert (=> b!3568881 m!4056337))

(declare-fun m!4056339 () Bool)

(assert (=> start!330504 m!4056339))

(declare-fun m!4056341 () Bool)

(assert (=> b!3568880 m!4056341))

(declare-fun m!4056343 () Bool)

(assert (=> b!3568880 m!4056343))

(declare-fun m!4056345 () Bool)

(assert (=> b!3568848 m!4056345))

(declare-fun m!4056347 () Bool)

(assert (=> b!3568848 m!4056347))

(declare-fun m!4056349 () Bool)

(assert (=> b!3568874 m!4056349))

(declare-fun m!4056351 () Bool)

(assert (=> b!3568872 m!4056351))

(declare-fun m!4056353 () Bool)

(assert (=> b!3568872 m!4056353))

(declare-fun m!4056355 () Bool)

(assert (=> b!3568872 m!4056355))

(declare-fun m!4056357 () Bool)

(assert (=> b!3568863 m!4056357))

(declare-fun m!4056359 () Bool)

(assert (=> b!3568863 m!4056359))

(declare-fun m!4056361 () Bool)

(assert (=> b!3568888 m!4056361))

(declare-fun m!4056363 () Bool)

(assert (=> b!3568858 m!4056363))

(declare-fun m!4056365 () Bool)

(assert (=> b!3568853 m!4056365))

(declare-fun m!4056367 () Bool)

(assert (=> b!3568873 m!4056367))

(declare-fun m!4056369 () Bool)

(assert (=> b!3568878 m!4056369))

(declare-fun m!4056371 () Bool)

(assert (=> b!3568851 m!4056371))

(declare-fun m!4056373 () Bool)

(assert (=> b!3568851 m!4056373))

(declare-fun m!4056375 () Bool)

(assert (=> b!3568855 m!4056375))

(declare-fun m!4056377 () Bool)

(assert (=> b!3568855 m!4056377))

(declare-fun m!4056379 () Bool)

(assert (=> b!3568852 m!4056379))

(assert (=> b!3568852 m!4056379))

(declare-fun m!4056381 () Bool)

(assert (=> b!3568852 m!4056381))

(declare-fun m!4056383 () Bool)

(assert (=> b!3568856 m!4056383))

(declare-fun m!4056385 () Bool)

(assert (=> b!3568856 m!4056385))

(declare-fun m!4056387 () Bool)

(assert (=> b!3568887 m!4056387))

(assert (=> b!3568887 m!4056387))

(declare-fun m!4056389 () Bool)

(assert (=> b!3568887 m!4056389))

(declare-fun m!4056391 () Bool)

(assert (=> b!3568849 m!4056391))

(assert (=> b!3568866 m!4056347))

(declare-fun m!4056393 () Bool)

(assert (=> b!3568866 m!4056393))

(declare-fun m!4056395 () Bool)

(assert (=> b!3568866 m!4056395))

(declare-fun m!4056397 () Bool)

(assert (=> b!3568889 m!4056397))

(declare-fun m!4056399 () Bool)

(assert (=> b!3568864 m!4056399))

(declare-fun m!4056401 () Bool)

(assert (=> b!3568862 m!4056401))

(declare-fun m!4056403 () Bool)

(assert (=> b!3568862 m!4056403))

(declare-fun m!4056405 () Bool)

(assert (=> b!3568862 m!4056405))

(declare-fun m!4056407 () Bool)

(assert (=> b!3568862 m!4056407))

(declare-fun m!4056409 () Bool)

(assert (=> b!3568862 m!4056409))

(declare-fun m!4056411 () Bool)

(assert (=> b!3568871 m!4056411))

(assert (=> b!3568871 m!4056411))

(declare-fun m!4056413 () Bool)

(assert (=> b!3568871 m!4056413))

(declare-fun m!4056415 () Bool)

(assert (=> b!3568844 m!4056415))

(declare-fun m!4056417 () Bool)

(assert (=> b!3568860 m!4056417))

(declare-fun m!4056419 () Bool)

(assert (=> b!3568882 m!4056419))

(declare-fun m!4056421 () Bool)

(assert (=> b!3568891 m!4056421))

(declare-fun m!4056423 () Bool)

(assert (=> b!3568891 m!4056423))

(declare-fun m!4056425 () Bool)

(assert (=> b!3568850 m!4056425))

(declare-fun m!4056427 () Bool)

(assert (=> b!3568879 m!4056427))

(declare-fun m!4056429 () Bool)

(assert (=> b!3568879 m!4056429))

(declare-fun m!4056431 () Bool)

(assert (=> b!3568879 m!4056431))

(declare-fun m!4056433 () Bool)

(assert (=> b!3568879 m!4056433))

(assert (=> b!3568879 m!4056427))

(declare-fun m!4056435 () Bool)

(assert (=> b!3568879 m!4056435))

(declare-fun m!4056437 () Bool)

(assert (=> b!3568879 m!4056437))

(assert (=> b!3568879 m!4056429))

(declare-fun m!4056439 () Bool)

(assert (=> b!3568879 m!4056439))

(declare-fun m!4056441 () Bool)

(assert (=> b!3568879 m!4056441))

(assert (=> b!3568879 m!4056437))

(declare-fun m!4056443 () Bool)

(assert (=> b!3568879 m!4056443))

(assert (=> b!3568879 m!4056441))

(declare-fun m!4056445 () Bool)

(assert (=> b!3568879 m!4056445))

(declare-fun m!4056447 () Bool)

(assert (=> b!3568886 m!4056447))

(declare-fun m!4056449 () Bool)

(assert (=> b!3568861 m!4056449))

(declare-fun m!4056451 () Bool)

(assert (=> b!3568865 m!4056451))

(declare-fun m!4056453 () Bool)

(assert (=> b!3568865 m!4056453))

(declare-fun m!4056455 () Bool)

(assert (=> b!3568884 m!4056455))

(declare-fun m!4056457 () Bool)

(assert (=> b!3568884 m!4056457))

(declare-fun m!4056459 () Bool)

(assert (=> b!3568857 m!4056459))

(declare-fun m!4056461 () Bool)

(assert (=> b!3568847 m!4056461))

(declare-fun m!4056463 () Bool)

(assert (=> b!3568847 m!4056463))

(declare-fun m!4056465 () Bool)

(assert (=> b!3568843 m!4056465))

(declare-fun m!4056467 () Bool)

(assert (=> b!3568843 m!4056467))

(push 1)

(assert (not b!3568886))

(assert (not b_next!92069))

(assert b_and!256793)

(assert (not b!3568864))

(assert (not b!3568873))

(assert (not b!3568854))

(assert (not b_next!92067))

(assert (not b!3568891))

(assert (not b!3568862))

(assert (not b!3568843))

(assert b_and!256795)

(assert (not b!3568848))

(assert (not b!3568857))

(assert (not b!3568849))

(assert (not b!3568858))

(assert b_and!256791)

(assert (not b!3568859))

(assert (not b!3568855))

(assert b_and!256797)

(assert b_and!256787)

(assert (not b_next!92071))

(assert (not b!3568851))

(assert (not b!3568850))

(assert (not b!3568863))

(assert (not b!3568879))

(assert (not b!3568901))

(assert (not b!3568847))

(assert (not b!3568861))

(assert (not b!3568878))

(assert (not b!3568853))

(assert (not b!3568872))

(assert (not b!3568892))

(assert (not b!3568871))

(assert (not b!3568874))

(assert (not b!3568856))

(assert (not b!3568884))

(assert (not b!3568888))

(assert (not b!3568844))

(assert (not b!3568881))

(assert (not start!330504))

(assert (not b!3568882))

(assert (not b!3568880))

(assert (not b_next!92061))

(assert (not b!3568889))

(assert b_and!256789)

(assert (not b!3568887))

(assert (not b_next!92065))

(assert (not b!3568852))

(assert (not b!3568860))

(assert (not b!3568866))

(assert (not b!3568865))

(assert (not b_next!92063))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92069))

(assert b_and!256795)

(assert b_and!256791)

(assert b_and!256793)

(assert b_and!256797)

(assert (not b_next!92067))

(assert (not b_next!92061))

(assert b_and!256789)

(assert (not b_next!92065))

(assert (not b_next!92063))

(assert b_and!256787)

(assert (not b_next!92071))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1051759 () Bool)

(assert (=> d!1051759 (not (matchR!4850 (regex!5507 (rule!8197 separatorToken!241)) lt!1222711))))

(declare-fun lt!1222909 () Unit!53462)

(declare-fun choose!20735 (Regex!10266 List!37609 C!20718) Unit!53462)

(assert (=> d!1051759 (= lt!1222909 (choose!20735 (regex!5507 (rule!8197 separatorToken!241)) lt!1222711 lt!1222715))))

(declare-fun validRegex!4691 (Regex!10266) Bool)

(assert (=> d!1051759 (validRegex!4691 (regex!5507 (rule!8197 separatorToken!241)))))

(assert (=> d!1051759 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!565 (regex!5507 (rule!8197 separatorToken!241)) lt!1222711 lt!1222715) lt!1222909)))

(declare-fun bs!569068 () Bool)

(assert (= bs!569068 d!1051759))

(assert (=> bs!569068 m!4056347))

(declare-fun m!4056697 () Bool)

(assert (=> bs!569068 m!4056697))

(declare-fun m!4056699 () Bool)

(assert (=> bs!569068 m!4056699))

(assert (=> b!3568848 d!1051759))

(declare-fun bm!258684 () Bool)

(declare-fun call!258689 () Bool)

(assert (=> bm!258684 (= call!258689 (isEmpty!22011 lt!1222711))))

(declare-fun b!3569097 () Bool)

(declare-fun e!2207846 () Bool)

(declare-fun nullable!3535 (Regex!10266) Bool)

(assert (=> b!3569097 (= e!2207846 (nullable!3535 (regex!5507 (rule!8197 separatorToken!241))))))

(declare-fun b!3569099 () Bool)

(declare-fun e!2207842 () Bool)

(assert (=> b!3569099 (= e!2207842 (not (= (head!7434 lt!1222711) (c!618472 (regex!5507 (rule!8197 separatorToken!241))))))))

(declare-fun b!3569100 () Bool)

(declare-fun res!1439128 () Bool)

(declare-fun e!2207847 () Bool)

(assert (=> b!3569100 (=> res!1439128 e!2207847)))

(declare-fun e!2207843 () Bool)

(assert (=> b!3569100 (= res!1439128 e!2207843)))

(declare-fun res!1439127 () Bool)

(assert (=> b!3569100 (=> (not res!1439127) (not e!2207843))))

(declare-fun lt!1222912 () Bool)

(assert (=> b!3569100 (= res!1439127 lt!1222912)))

(declare-fun b!3569101 () Bool)

(declare-fun e!2207841 () Bool)

(declare-fun e!2207844 () Bool)

(assert (=> b!3569101 (= e!2207841 e!2207844)))

(declare-fun c!618492 () Bool)

(assert (=> b!3569101 (= c!618492 (is-EmptyLang!10266 (regex!5507 (rule!8197 separatorToken!241))))))

(declare-fun b!3569102 () Bool)

(assert (=> b!3569102 (= e!2207844 (not lt!1222912))))

(declare-fun b!3569103 () Bool)

(declare-fun e!2207845 () Bool)

(assert (=> b!3569103 (= e!2207845 e!2207842)))

(declare-fun res!1439131 () Bool)

(assert (=> b!3569103 (=> res!1439131 e!2207842)))

(assert (=> b!3569103 (= res!1439131 call!258689)))

(declare-fun b!3569104 () Bool)

(declare-fun res!1439129 () Bool)

(assert (=> b!3569104 (=> (not res!1439129) (not e!2207843))))

(assert (=> b!3569104 (= res!1439129 (not call!258689))))

(declare-fun b!3569105 () Bool)

(assert (=> b!3569105 (= e!2207847 e!2207845)))

(declare-fun res!1439130 () Bool)

(assert (=> b!3569105 (=> (not res!1439130) (not e!2207845))))

(assert (=> b!3569105 (= res!1439130 (not lt!1222912))))

(declare-fun b!3569106 () Bool)

(declare-fun res!1439132 () Bool)

(assert (=> b!3569106 (=> res!1439132 e!2207847)))

(assert (=> b!3569106 (= res!1439132 (not (is-ElementMatch!10266 (regex!5507 (rule!8197 separatorToken!241)))))))

(assert (=> b!3569106 (= e!2207844 e!2207847)))

(declare-fun b!3569098 () Bool)

(declare-fun res!1439133 () Bool)

(assert (=> b!3569098 (=> res!1439133 e!2207842)))

(declare-fun tail!5526 (List!37609) List!37609)

(assert (=> b!3569098 (= res!1439133 (not (isEmpty!22011 (tail!5526 lt!1222711))))))

(declare-fun d!1051761 () Bool)

(assert (=> d!1051761 e!2207841))

(declare-fun c!618494 () Bool)

(assert (=> d!1051761 (= c!618494 (is-EmptyExpr!10266 (regex!5507 (rule!8197 separatorToken!241))))))

(assert (=> d!1051761 (= lt!1222912 e!2207846)))

(declare-fun c!618493 () Bool)

(assert (=> d!1051761 (= c!618493 (isEmpty!22011 lt!1222711))))

(assert (=> d!1051761 (validRegex!4691 (regex!5507 (rule!8197 separatorToken!241)))))

(assert (=> d!1051761 (= (matchR!4850 (regex!5507 (rule!8197 separatorToken!241)) lt!1222711) lt!1222912)))

(declare-fun b!3569107 () Bool)

(declare-fun res!1439126 () Bool)

(assert (=> b!3569107 (=> (not res!1439126) (not e!2207843))))

(assert (=> b!3569107 (= res!1439126 (isEmpty!22011 (tail!5526 lt!1222711)))))

(declare-fun b!3569108 () Bool)

(assert (=> b!3569108 (= e!2207843 (= (head!7434 lt!1222711) (c!618472 (regex!5507 (rule!8197 separatorToken!241)))))))

(declare-fun b!3569109 () Bool)

(declare-fun derivativeStep!3088 (Regex!10266 C!20718) Regex!10266)

(assert (=> b!3569109 (= e!2207846 (matchR!4850 (derivativeStep!3088 (regex!5507 (rule!8197 separatorToken!241)) (head!7434 lt!1222711)) (tail!5526 lt!1222711)))))

(declare-fun b!3569110 () Bool)

(assert (=> b!3569110 (= e!2207841 (= lt!1222912 call!258689))))

(assert (= (and d!1051761 c!618493) b!3569097))

(assert (= (and d!1051761 (not c!618493)) b!3569109))

(assert (= (and d!1051761 c!618494) b!3569110))

(assert (= (and d!1051761 (not c!618494)) b!3569101))

(assert (= (and b!3569101 c!618492) b!3569102))

(assert (= (and b!3569101 (not c!618492)) b!3569106))

(assert (= (and b!3569106 (not res!1439132)) b!3569100))

(assert (= (and b!3569100 res!1439127) b!3569104))

(assert (= (and b!3569104 res!1439129) b!3569107))

(assert (= (and b!3569107 res!1439126) b!3569108))

(assert (= (and b!3569100 (not res!1439128)) b!3569105))

(assert (= (and b!3569105 res!1439130) b!3569103))

(assert (= (and b!3569103 (not res!1439131)) b!3569098))

(assert (= (and b!3569098 (not res!1439133)) b!3569099))

(assert (= (or b!3569110 b!3569103 b!3569104) bm!258684))

(declare-fun m!4056701 () Bool)

(assert (=> b!3569097 m!4056701))

(assert (=> b!3569099 m!4056307))

(declare-fun m!4056703 () Bool)

(assert (=> bm!258684 m!4056703))

(assert (=> b!3569108 m!4056307))

(assert (=> b!3569109 m!4056307))

(assert (=> b!3569109 m!4056307))

(declare-fun m!4056705 () Bool)

(assert (=> b!3569109 m!4056705))

(declare-fun m!4056707 () Bool)

(assert (=> b!3569109 m!4056707))

(assert (=> b!3569109 m!4056705))

(assert (=> b!3569109 m!4056707))

(declare-fun m!4056709 () Bool)

(assert (=> b!3569109 m!4056709))

(assert (=> b!3569107 m!4056707))

(assert (=> b!3569107 m!4056707))

(declare-fun m!4056711 () Bool)

(assert (=> b!3569107 m!4056711))

(assert (=> b!3569098 m!4056707))

(assert (=> b!3569098 m!4056707))

(assert (=> b!3569098 m!4056711))

(assert (=> d!1051761 m!4056703))

(assert (=> d!1051761 m!4056699))

(assert (=> b!3568848 d!1051761))

(declare-fun d!1051763 () Bool)

(assert (=> d!1051763 (= (inv!50756 (tag!6163 (rule!8197 separatorToken!241))) (= (mod (str.len (value!177410 (tag!6163 (rule!8197 separatorToken!241)))) 2) 0))))

(assert (=> b!3568891 d!1051763))

(declare-fun d!1051765 () Bool)

(declare-fun res!1439136 () Bool)

(declare-fun e!2207850 () Bool)

(assert (=> d!1051765 (=> (not res!1439136) (not e!2207850))))

(declare-fun semiInverseModEq!2330 (Int Int) Bool)

(assert (=> d!1051765 (= res!1439136 (semiInverseModEq!2330 (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (toValue!7775 (transformation!5507 (rule!8197 separatorToken!241)))))))

(assert (=> d!1051765 (= (inv!50759 (transformation!5507 (rule!8197 separatorToken!241))) e!2207850)))

(declare-fun b!3569113 () Bool)

(declare-fun equivClasses!2229 (Int Int) Bool)

(assert (=> b!3569113 (= e!2207850 (equivClasses!2229 (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (toValue!7775 (transformation!5507 (rule!8197 separatorToken!241)))))))

(assert (= (and d!1051765 res!1439136) b!3569113))

(declare-fun m!4056713 () Bool)

(assert (=> d!1051765 m!4056713))

(declare-fun m!4056715 () Bool)

(assert (=> b!3569113 m!4056715))

(assert (=> b!3568891 d!1051765))

(declare-fun d!1051767 () Bool)

(declare-fun lt!1222915 () Bool)

(declare-fun content!5311 (List!37609) (Set C!20718))

(assert (=> d!1051767 (= lt!1222915 (set.member (head!7434 lt!1222713) (content!5311 lt!1222741)))))

(declare-fun e!2207855 () Bool)

(assert (=> d!1051767 (= lt!1222915 e!2207855)))

(declare-fun res!1439141 () Bool)

(assert (=> d!1051767 (=> (not res!1439141) (not e!2207855))))

(assert (=> d!1051767 (= res!1439141 (is-Cons!37485 lt!1222741))))

(assert (=> d!1051767 (= (contains!7088 lt!1222741 (head!7434 lt!1222713)) lt!1222915)))

(declare-fun b!3569118 () Bool)

(declare-fun e!2207856 () Bool)

(assert (=> b!3569118 (= e!2207855 e!2207856)))

(declare-fun res!1439142 () Bool)

(assert (=> b!3569118 (=> res!1439142 e!2207856)))

(assert (=> b!3569118 (= res!1439142 (= (h!42905 lt!1222741) (head!7434 lt!1222713)))))

(declare-fun b!3569119 () Bool)

(assert (=> b!3569119 (= e!2207856 (contains!7088 (t!288870 lt!1222741) (head!7434 lt!1222713)))))

(assert (= (and d!1051767 res!1439141) b!3569118))

(assert (= (and b!3569118 (not res!1439142)) b!3569119))

(declare-fun m!4056717 () Bool)

(assert (=> d!1051767 m!4056717))

(assert (=> d!1051767 m!4056241))

(declare-fun m!4056719 () Bool)

(assert (=> d!1051767 m!4056719))

(assert (=> b!3569119 m!4056241))

(declare-fun m!4056721 () Bool)

(assert (=> b!3569119 m!4056721))

(assert (=> b!3568892 d!1051767))

(declare-fun d!1051769 () Bool)

(assert (=> d!1051769 (= (head!7434 lt!1222713) (h!42905 lt!1222713))))

(assert (=> b!3568892 d!1051769))

(declare-fun d!1051771 () Bool)

(declare-fun lt!1222918 () Bool)

(declare-fun content!5312 (List!37610) (Set Rule!10814))

(assert (=> d!1051771 (= lt!1222918 (set.member (rule!8197 (h!42907 (t!288872 tokens!494))) (content!5312 rules!2135)))))

(declare-fun e!2207861 () Bool)

(assert (=> d!1051771 (= lt!1222918 e!2207861)))

(declare-fun res!1439147 () Bool)

(assert (=> d!1051771 (=> (not res!1439147) (not e!2207861))))

(assert (=> d!1051771 (= res!1439147 (is-Cons!37486 rules!2135))))

(assert (=> d!1051771 (= (contains!7087 rules!2135 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1222918)))

(declare-fun b!3569124 () Bool)

(declare-fun e!2207862 () Bool)

(assert (=> b!3569124 (= e!2207861 e!2207862)))

(declare-fun res!1439148 () Bool)

(assert (=> b!3569124 (=> res!1439148 e!2207862)))

(assert (=> b!3569124 (= res!1439148 (= (h!42906 rules!2135) (rule!8197 (h!42907 (t!288872 tokens!494)))))))

(declare-fun b!3569125 () Bool)

(assert (=> b!3569125 (= e!2207862 (contains!7087 (t!288871 rules!2135) (rule!8197 (h!42907 (t!288872 tokens!494)))))))

(assert (= (and d!1051771 res!1439147) b!3569124))

(assert (= (and b!3569124 (not res!1439148)) b!3569125))

(declare-fun m!4056723 () Bool)

(assert (=> d!1051771 m!4056723))

(declare-fun m!4056725 () Bool)

(assert (=> d!1051771 m!4056725))

(declare-fun m!4056727 () Bool)

(assert (=> b!3569125 m!4056727))

(assert (=> b!3568849 d!1051771))

(declare-fun b!3569136 () Bool)

(declare-fun e!2207870 () Bool)

(declare-fun inv!16 (TokenValue!5737) Bool)

(assert (=> b!3569136 (= e!2207870 (inv!16 (value!177411 (h!42907 tokens!494))))))

(declare-fun b!3569138 () Bool)

(declare-fun e!2207871 () Bool)

(declare-fun inv!15 (TokenValue!5737) Bool)

(assert (=> b!3569138 (= e!2207871 (inv!15 (value!177411 (h!42907 tokens!494))))))

(declare-fun b!3569139 () Bool)

(declare-fun e!2207869 () Bool)

(declare-fun inv!17 (TokenValue!5737) Bool)

(assert (=> b!3569139 (= e!2207869 (inv!17 (value!177411 (h!42907 tokens!494))))))

(declare-fun b!3569140 () Bool)

(declare-fun res!1439151 () Bool)

(assert (=> b!3569140 (=> res!1439151 e!2207871)))

(assert (=> b!3569140 (= res!1439151 (not (is-IntegerValue!17213 (value!177411 (h!42907 tokens!494)))))))

(assert (=> b!3569140 (= e!2207869 e!2207871)))

(declare-fun b!3569137 () Bool)

(assert (=> b!3569137 (= e!2207870 e!2207869)))

(declare-fun c!618499 () Bool)

(assert (=> b!3569137 (= c!618499 (is-IntegerValue!17212 (value!177411 (h!42907 tokens!494))))))

(declare-fun d!1051773 () Bool)

(declare-fun c!618500 () Bool)

(assert (=> d!1051773 (= c!618500 (is-IntegerValue!17211 (value!177411 (h!42907 tokens!494))))))

(assert (=> d!1051773 (= (inv!21 (value!177411 (h!42907 tokens!494))) e!2207870)))

(assert (= (and d!1051773 c!618500) b!3569136))

(assert (= (and d!1051773 (not c!618500)) b!3569137))

(assert (= (and b!3569137 c!618499) b!3569139))

(assert (= (and b!3569137 (not c!618499)) b!3569140))

(assert (= (and b!3569140 (not res!1439151)) b!3569138))

(declare-fun m!4056729 () Bool)

(assert (=> b!3569136 m!4056729))

(declare-fun m!4056731 () Bool)

(assert (=> b!3569138 m!4056731))

(declare-fun m!4056733 () Bool)

(assert (=> b!3569139 m!4056733))

(assert (=> b!3568850 d!1051773))

(declare-fun d!1051775 () Bool)

(declare-fun list!13750 (Conc!11389) List!37609)

(assert (=> d!1051775 (= (list!13748 (charsOf!3521 (h!42907 tokens!494))) (list!13750 (c!618473 (charsOf!3521 (h!42907 tokens!494)))))))

(declare-fun bs!569069 () Bool)

(assert (= bs!569069 d!1051775))

(declare-fun m!4056735 () Bool)

(assert (=> bs!569069 m!4056735))

(assert (=> b!3568871 d!1051775))

(declare-fun d!1051777 () Bool)

(declare-fun lt!1222921 () BalanceConc!22392)

(assert (=> d!1051777 (= (list!13748 lt!1222921) (originalCharacters!6221 (h!42907 tokens!494)))))

(declare-fun dynLambda!16090 (Int TokenValue!5737) BalanceConc!22392)

(assert (=> d!1051777 (= lt!1222921 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (value!177411 (h!42907 tokens!494))))))

(assert (=> d!1051777 (= (charsOf!3521 (h!42907 tokens!494)) lt!1222921)))

(declare-fun b_lambda!105139 () Bool)

(assert (=> (not b_lambda!105139) (not d!1051777)))

(declare-fun tb!203215 () Bool)

(declare-fun t!288884 () Bool)

(assert (=> (and b!3568869 (= (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288884) tb!203215))

(declare-fun b!3569145 () Bool)

(declare-fun e!2207874 () Bool)

(declare-fun tp!1093457 () Bool)

(declare-fun inv!50763 (Conc!11389) Bool)

(assert (=> b!3569145 (= e!2207874 (and (inv!50763 (c!618473 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (value!177411 (h!42907 tokens!494))))) tp!1093457))))

(declare-fun result!247796 () Bool)

(declare-fun inv!50764 (BalanceConc!22392) Bool)

(assert (=> tb!203215 (= result!247796 (and (inv!50764 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (value!177411 (h!42907 tokens!494)))) e!2207874))))

(assert (= tb!203215 b!3569145))

(declare-fun m!4056737 () Bool)

(assert (=> b!3569145 m!4056737))

(declare-fun m!4056739 () Bool)

(assert (=> tb!203215 m!4056739))

(assert (=> d!1051777 t!288884))

(declare-fun b_and!256811 () Bool)

(assert (= b_and!256789 (and (=> t!288884 result!247796) b_and!256811)))

(declare-fun t!288886 () Bool)

(declare-fun tb!203217 () Bool)

(assert (=> (and b!3568885 (= (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288886) tb!203217))

(declare-fun result!247800 () Bool)

(assert (= result!247800 result!247796))

(assert (=> d!1051777 t!288886))

(declare-fun b_and!256813 () Bool)

(assert (= b_and!256793 (and (=> t!288886 result!247800) b_and!256813)))

(declare-fun t!288888 () Bool)

(declare-fun tb!203219 () Bool)

(assert (=> (and b!3568883 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288888) tb!203219))

(declare-fun result!247802 () Bool)

(assert (= result!247802 result!247796))

(assert (=> d!1051777 t!288888))

(declare-fun b_and!256815 () Bool)

(assert (= b_and!256797 (and (=> t!288888 result!247802) b_and!256815)))

(declare-fun m!4056741 () Bool)

(assert (=> d!1051777 m!4056741))

(declare-fun m!4056743 () Bool)

(assert (=> d!1051777 m!4056743))

(assert (=> b!3568871 d!1051777))

(declare-fun d!1051779 () Bool)

(declare-fun lt!1222924 () Bool)

(declare-fun isEmpty!22016 (List!37611) Bool)

(declare-fun list!13751 (BalanceConc!22394) List!37611)

(assert (=> d!1051779 (= lt!1222924 (isEmpty!22016 (list!13751 (_1!21828 (lex!2422 thiss!18206 rules!2135 lt!1222733)))))))

(declare-fun isEmpty!22017 (Conc!11390) Bool)

(assert (=> d!1051779 (= lt!1222924 (isEmpty!22017 (c!618474 (_1!21828 (lex!2422 thiss!18206 rules!2135 lt!1222733)))))))

(assert (=> d!1051779 (= (isEmpty!22009 (_1!21828 (lex!2422 thiss!18206 rules!2135 lt!1222733))) lt!1222924)))

(declare-fun bs!569070 () Bool)

(assert (= bs!569070 d!1051779))

(declare-fun m!4056745 () Bool)

(assert (=> bs!569070 m!4056745))

(assert (=> bs!569070 m!4056745))

(declare-fun m!4056747 () Bool)

(assert (=> bs!569070 m!4056747))

(declare-fun m!4056749 () Bool)

(assert (=> bs!569070 m!4056749))

(assert (=> b!3568872 d!1051779))

(declare-fun b!3569156 () Bool)

(declare-fun e!2207882 () Bool)

(declare-fun lt!1222927 () tuple2!37388)

(assert (=> b!3569156 (= e!2207882 (not (isEmpty!22009 (_1!21828 lt!1222927))))))

(declare-fun b!3569157 () Bool)

(declare-fun e!2207883 () Bool)

(assert (=> b!3569157 (= e!2207883 (= (_2!21828 lt!1222927) lt!1222733))))

(declare-fun d!1051781 () Bool)

(declare-fun e!2207881 () Bool)

(assert (=> d!1051781 e!2207881))

(declare-fun res!1439159 () Bool)

(assert (=> d!1051781 (=> (not res!1439159) (not e!2207881))))

(assert (=> d!1051781 (= res!1439159 e!2207883)))

(declare-fun c!618503 () Bool)

(assert (=> d!1051781 (= c!618503 (> (size!28574 (_1!21828 lt!1222927)) 0))))

(declare-fun lexTailRecV2!1103 (LexerInterface!5096 List!37610 BalanceConc!22392 BalanceConc!22392 BalanceConc!22392 BalanceConc!22394) tuple2!37388)

(assert (=> d!1051781 (= lt!1222927 (lexTailRecV2!1103 thiss!18206 rules!2135 lt!1222733 (BalanceConc!22393 Empty!11389) lt!1222733 (BalanceConc!22395 Empty!11390)))))

(assert (=> d!1051781 (= (lex!2422 thiss!18206 rules!2135 lt!1222733) lt!1222927)))

(declare-fun b!3569158 () Bool)

(assert (=> b!3569158 (= e!2207883 e!2207882)))

(declare-fun res!1439158 () Bool)

(declare-fun size!28578 (BalanceConc!22392) Int)

(assert (=> b!3569158 (= res!1439158 (< (size!28578 (_2!21828 lt!1222927)) (size!28578 lt!1222733)))))

(assert (=> b!3569158 (=> (not res!1439158) (not e!2207882))))

(declare-fun b!3569159 () Bool)

(declare-fun res!1439160 () Bool)

(assert (=> b!3569159 (=> (not res!1439160) (not e!2207881))))

(declare-datatypes ((tuple2!37396 0))(
  ( (tuple2!37397 (_1!21832 List!37611) (_2!21832 List!37609)) )
))
(declare-fun lexList!1495 (LexerInterface!5096 List!37610 List!37609) tuple2!37396)

(assert (=> b!3569159 (= res!1439160 (= (list!13751 (_1!21828 lt!1222927)) (_1!21832 (lexList!1495 thiss!18206 rules!2135 (list!13748 lt!1222733)))))))

(declare-fun b!3569160 () Bool)

(assert (=> b!3569160 (= e!2207881 (= (list!13748 (_2!21828 lt!1222927)) (_2!21832 (lexList!1495 thiss!18206 rules!2135 (list!13748 lt!1222733)))))))

(assert (= (and d!1051781 c!618503) b!3569158))

(assert (= (and d!1051781 (not c!618503)) b!3569157))

(assert (= (and b!3569158 res!1439158) b!3569156))

(assert (= (and d!1051781 res!1439159) b!3569159))

(assert (= (and b!3569159 res!1439160) b!3569160))

(declare-fun m!4056753 () Bool)

(assert (=> d!1051781 m!4056753))

(declare-fun m!4056755 () Bool)

(assert (=> d!1051781 m!4056755))

(declare-fun m!4056757 () Bool)

(assert (=> b!3569159 m!4056757))

(declare-fun m!4056759 () Bool)

(assert (=> b!3569159 m!4056759))

(assert (=> b!3569159 m!4056759))

(declare-fun m!4056761 () Bool)

(assert (=> b!3569159 m!4056761))

(declare-fun m!4056763 () Bool)

(assert (=> b!3569158 m!4056763))

(declare-fun m!4056765 () Bool)

(assert (=> b!3569158 m!4056765))

(declare-fun m!4056767 () Bool)

(assert (=> b!3569156 m!4056767))

(declare-fun m!4056769 () Bool)

(assert (=> b!3569160 m!4056769))

(assert (=> b!3569160 m!4056759))

(assert (=> b!3569160 m!4056759))

(assert (=> b!3569160 m!4056761))

(assert (=> b!3568872 d!1051781))

(declare-fun d!1051787 () Bool)

(declare-fun fromListB!1876 (List!37609) BalanceConc!22392)

(assert (=> d!1051787 (= (seqFromList!4068 lt!1222708) (fromListB!1876 lt!1222708))))

(declare-fun bs!569072 () Bool)

(assert (= bs!569072 d!1051787))

(declare-fun m!4056771 () Bool)

(assert (=> bs!569072 m!4056771))

(assert (=> b!3568872 d!1051787))

(declare-fun d!1051789 () Bool)

(assert (=> d!1051789 (= (inv!50756 (tag!6163 (h!42906 rules!2135))) (= (mod (str.len (value!177410 (tag!6163 (h!42906 rules!2135)))) 2) 0))))

(assert (=> b!3568851 d!1051789))

(declare-fun d!1051791 () Bool)

(declare-fun res!1439161 () Bool)

(declare-fun e!2207884 () Bool)

(assert (=> d!1051791 (=> (not res!1439161) (not e!2207884))))

(assert (=> d!1051791 (= res!1439161 (semiInverseModEq!2330 (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toValue!7775 (transformation!5507 (h!42906 rules!2135)))))))

(assert (=> d!1051791 (= (inv!50759 (transformation!5507 (h!42906 rules!2135))) e!2207884)))

(declare-fun b!3569161 () Bool)

(assert (=> b!3569161 (= e!2207884 (equivClasses!2229 (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toValue!7775 (transformation!5507 (h!42906 rules!2135)))))))

(assert (= (and d!1051791 res!1439161) b!3569161))

(declare-fun m!4056773 () Bool)

(assert (=> d!1051791 m!4056773))

(declare-fun m!4056775 () Bool)

(assert (=> b!3569161 m!4056775))

(assert (=> b!3568851 d!1051791))

(declare-fun bs!569077 () Bool)

(declare-fun d!1051793 () Bool)

(assert (= bs!569077 (and d!1051793 b!3568860)))

(declare-fun lambda!123426 () Int)

(assert (=> bs!569077 (not (= lambda!123426 lambda!123410))))

(declare-fun bs!569078 () Bool)

(assert (= bs!569078 (and d!1051793 b!3568854)))

(assert (=> bs!569078 (= lambda!123426 lambda!123411)))

(declare-fun b!3569287 () Bool)

(declare-fun e!2207955 () Bool)

(assert (=> b!3569287 (= e!2207955 true)))

(declare-fun b!3569286 () Bool)

(declare-fun e!2207954 () Bool)

(assert (=> b!3569286 (= e!2207954 e!2207955)))

(declare-fun b!3569285 () Bool)

(declare-fun e!2207953 () Bool)

(assert (=> b!3569285 (= e!2207953 e!2207954)))

(assert (=> d!1051793 e!2207953))

(assert (= b!3569286 b!3569287))

(assert (= b!3569285 b!3569286))

(assert (= (and d!1051793 (is-Cons!37486 rules!2135)) b!3569285))

(assert (=> b!3569287 (< (dynLambda!16084 order!20315 (toValue!7775 (transformation!5507 (h!42906 rules!2135)))) (dynLambda!16085 order!20317 lambda!123426))))

(assert (=> b!3569287 (< (dynLambda!16086 order!20319 (toChars!7634 (transformation!5507 (h!42906 rules!2135)))) (dynLambda!16085 order!20317 lambda!123426))))

(assert (=> d!1051793 true))

(declare-fun e!2207952 () Bool)

(assert (=> d!1051793 e!2207952))

(declare-fun res!1439247 () Bool)

(assert (=> d!1051793 (=> (not res!1439247) (not e!2207952))))

(declare-fun lt!1222967 () Bool)

(assert (=> d!1051793 (= res!1439247 (= lt!1222967 (forall!8105 (list!13751 (seqFromList!4067 tokens!494)) lambda!123426)))))

(declare-fun forall!8107 (BalanceConc!22394 Int) Bool)

(assert (=> d!1051793 (= lt!1222967 (forall!8107 (seqFromList!4067 tokens!494) lambda!123426))))

(assert (=> d!1051793 (not (isEmpty!22010 rules!2135))))

(assert (=> d!1051793 (= (rulesProduceEachTokenIndividually!1547 thiss!18206 rules!2135 (seqFromList!4067 tokens!494)) lt!1222967)))

(declare-fun b!3569284 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1902 (LexerInterface!5096 List!37610 List!37611) Bool)

(assert (=> b!3569284 (= e!2207952 (= lt!1222967 (rulesProduceEachTokenIndividuallyList!1902 thiss!18206 rules!2135 (list!13751 (seqFromList!4067 tokens!494)))))))

(assert (= (and d!1051793 res!1439247) b!3569284))

(assert (=> d!1051793 m!4056379))

(declare-fun m!4056893 () Bool)

(assert (=> d!1051793 m!4056893))

(assert (=> d!1051793 m!4056893))

(declare-fun m!4056895 () Bool)

(assert (=> d!1051793 m!4056895))

(assert (=> d!1051793 m!4056379))

(declare-fun m!4056897 () Bool)

(assert (=> d!1051793 m!4056897))

(assert (=> d!1051793 m!4056367))

(assert (=> b!3569284 m!4056379))

(assert (=> b!3569284 m!4056893))

(assert (=> b!3569284 m!4056893))

(declare-fun m!4056899 () Bool)

(assert (=> b!3569284 m!4056899))

(assert (=> b!3568852 d!1051793))

(declare-fun d!1051823 () Bool)

(declare-fun fromListB!1877 (List!37611) BalanceConc!22394)

(assert (=> d!1051823 (= (seqFromList!4067 tokens!494) (fromListB!1877 tokens!494))))

(declare-fun bs!569079 () Bool)

(assert (= bs!569079 d!1051823))

(declare-fun m!4056901 () Bool)

(assert (=> bs!569079 m!4056901))

(assert (=> b!3568852 d!1051823))

(declare-fun d!1051825 () Bool)

(assert (=> d!1051825 (= (isEmpty!22010 rules!2135) (is-Nil!37486 rules!2135))))

(assert (=> b!3568873 d!1051825))

(declare-fun b!3569288 () Bool)

(declare-fun e!2207957 () Bool)

(assert (=> b!3569288 (= e!2207957 (inv!16 (value!177411 separatorToken!241)))))

(declare-fun b!3569290 () Bool)

(declare-fun e!2207958 () Bool)

(assert (=> b!3569290 (= e!2207958 (inv!15 (value!177411 separatorToken!241)))))

(declare-fun b!3569291 () Bool)

(declare-fun e!2207956 () Bool)

(assert (=> b!3569291 (= e!2207956 (inv!17 (value!177411 separatorToken!241)))))

(declare-fun b!3569292 () Bool)

(declare-fun res!1439248 () Bool)

(assert (=> b!3569292 (=> res!1439248 e!2207958)))

(assert (=> b!3569292 (= res!1439248 (not (is-IntegerValue!17213 (value!177411 separatorToken!241))))))

(assert (=> b!3569292 (= e!2207956 e!2207958)))

(declare-fun b!3569289 () Bool)

(assert (=> b!3569289 (= e!2207957 e!2207956)))

(declare-fun c!618520 () Bool)

(assert (=> b!3569289 (= c!618520 (is-IntegerValue!17212 (value!177411 separatorToken!241)))))

(declare-fun d!1051827 () Bool)

(declare-fun c!618521 () Bool)

(assert (=> d!1051827 (= c!618521 (is-IntegerValue!17211 (value!177411 separatorToken!241)))))

(assert (=> d!1051827 (= (inv!21 (value!177411 separatorToken!241)) e!2207957)))

(assert (= (and d!1051827 c!618521) b!3569288))

(assert (= (and d!1051827 (not c!618521)) b!3569289))

(assert (= (and b!3569289 c!618520) b!3569291))

(assert (= (and b!3569289 (not c!618520)) b!3569292))

(assert (= (and b!3569292 (not res!1439248)) b!3569290))

(declare-fun m!4056903 () Bool)

(assert (=> b!3569288 m!4056903))

(declare-fun m!4056905 () Bool)

(assert (=> b!3569290 m!4056905))

(declare-fun m!4056907 () Bool)

(assert (=> b!3569291 m!4056907))

(assert (=> b!3568874 d!1051827))

(declare-fun d!1051829 () Bool)

(declare-fun lt!1222970 () Bool)

(assert (=> d!1051829 (= lt!1222970 (isEmpty!22011 (list!13748 (_2!21828 lt!1222728))))))

(declare-fun isEmpty!22018 (Conc!11389) Bool)

(assert (=> d!1051829 (= lt!1222970 (isEmpty!22018 (c!618473 (_2!21828 lt!1222728))))))

(assert (=> d!1051829 (= (isEmpty!22008 (_2!21828 lt!1222728)) lt!1222970)))

(declare-fun bs!569080 () Bool)

(assert (= bs!569080 d!1051829))

(declare-fun m!4056909 () Bool)

(assert (=> bs!569080 m!4056909))

(assert (=> bs!569080 m!4056909))

(declare-fun m!4056911 () Bool)

(assert (=> bs!569080 m!4056911))

(declare-fun m!4056913 () Bool)

(assert (=> bs!569080 m!4056913))

(assert (=> b!3568864 d!1051829))

(declare-fun d!1051831 () Bool)

(declare-fun lt!1222971 () Bool)

(assert (=> d!1051831 (= lt!1222971 (isEmpty!22011 (list!13748 (_2!21828 lt!1222726))))))

(assert (=> d!1051831 (= lt!1222971 (isEmpty!22018 (c!618473 (_2!21828 lt!1222726))))))

(assert (=> d!1051831 (= (isEmpty!22008 (_2!21828 lt!1222726)) lt!1222971)))

(declare-fun bs!569081 () Bool)

(assert (= bs!569081 d!1051831))

(declare-fun m!4056915 () Bool)

(assert (=> bs!569081 m!4056915))

(assert (=> bs!569081 m!4056915))

(declare-fun m!4056917 () Bool)

(assert (=> bs!569081 m!4056917))

(declare-fun m!4056919 () Bool)

(assert (=> bs!569081 m!4056919))

(assert (=> b!3568886 d!1051831))

(declare-fun bm!258691 () Bool)

(declare-fun call!258696 () Bool)

(assert (=> bm!258691 (= call!258696 (isEmpty!22011 lt!1222711))))

(declare-fun b!3569293 () Bool)

(declare-fun e!2207964 () Bool)

(assert (=> b!3569293 (= e!2207964 (nullable!3535 (regex!5507 lt!1222704)))))

(declare-fun b!3569295 () Bool)

(declare-fun e!2207960 () Bool)

(assert (=> b!3569295 (= e!2207960 (not (= (head!7434 lt!1222711) (c!618472 (regex!5507 lt!1222704)))))))

(declare-fun b!3569296 () Bool)

(declare-fun res!1439251 () Bool)

(declare-fun e!2207965 () Bool)

(assert (=> b!3569296 (=> res!1439251 e!2207965)))

(declare-fun e!2207961 () Bool)

(assert (=> b!3569296 (= res!1439251 e!2207961)))

(declare-fun res!1439250 () Bool)

(assert (=> b!3569296 (=> (not res!1439250) (not e!2207961))))

(declare-fun lt!1222972 () Bool)

(assert (=> b!3569296 (= res!1439250 lt!1222972)))

(declare-fun b!3569297 () Bool)

(declare-fun e!2207959 () Bool)

(declare-fun e!2207962 () Bool)

(assert (=> b!3569297 (= e!2207959 e!2207962)))

(declare-fun c!618522 () Bool)

(assert (=> b!3569297 (= c!618522 (is-EmptyLang!10266 (regex!5507 lt!1222704)))))

(declare-fun b!3569298 () Bool)

(assert (=> b!3569298 (= e!2207962 (not lt!1222972))))

(declare-fun b!3569299 () Bool)

(declare-fun e!2207963 () Bool)

(assert (=> b!3569299 (= e!2207963 e!2207960)))

(declare-fun res!1439254 () Bool)

(assert (=> b!3569299 (=> res!1439254 e!2207960)))

(assert (=> b!3569299 (= res!1439254 call!258696)))

(declare-fun b!3569300 () Bool)

(declare-fun res!1439252 () Bool)

(assert (=> b!3569300 (=> (not res!1439252) (not e!2207961))))

(assert (=> b!3569300 (= res!1439252 (not call!258696))))

(declare-fun b!3569301 () Bool)

(assert (=> b!3569301 (= e!2207965 e!2207963)))

(declare-fun res!1439253 () Bool)

(assert (=> b!3569301 (=> (not res!1439253) (not e!2207963))))

(assert (=> b!3569301 (= res!1439253 (not lt!1222972))))

(declare-fun b!3569302 () Bool)

(declare-fun res!1439255 () Bool)

(assert (=> b!3569302 (=> res!1439255 e!2207965)))

(assert (=> b!3569302 (= res!1439255 (not (is-ElementMatch!10266 (regex!5507 lt!1222704))))))

(assert (=> b!3569302 (= e!2207962 e!2207965)))

(declare-fun b!3569294 () Bool)

(declare-fun res!1439256 () Bool)

(assert (=> b!3569294 (=> res!1439256 e!2207960)))

(assert (=> b!3569294 (= res!1439256 (not (isEmpty!22011 (tail!5526 lt!1222711))))))

(declare-fun d!1051833 () Bool)

(assert (=> d!1051833 e!2207959))

(declare-fun c!618524 () Bool)

(assert (=> d!1051833 (= c!618524 (is-EmptyExpr!10266 (regex!5507 lt!1222704)))))

(assert (=> d!1051833 (= lt!1222972 e!2207964)))

(declare-fun c!618523 () Bool)

(assert (=> d!1051833 (= c!618523 (isEmpty!22011 lt!1222711))))

(assert (=> d!1051833 (validRegex!4691 (regex!5507 lt!1222704))))

(assert (=> d!1051833 (= (matchR!4850 (regex!5507 lt!1222704) lt!1222711) lt!1222972)))

(declare-fun b!3569303 () Bool)

(declare-fun res!1439249 () Bool)

(assert (=> b!3569303 (=> (not res!1439249) (not e!2207961))))

(assert (=> b!3569303 (= res!1439249 (isEmpty!22011 (tail!5526 lt!1222711)))))

(declare-fun b!3569304 () Bool)

(assert (=> b!3569304 (= e!2207961 (= (head!7434 lt!1222711) (c!618472 (regex!5507 lt!1222704))))))

(declare-fun b!3569305 () Bool)

(assert (=> b!3569305 (= e!2207964 (matchR!4850 (derivativeStep!3088 (regex!5507 lt!1222704) (head!7434 lt!1222711)) (tail!5526 lt!1222711)))))

(declare-fun b!3569306 () Bool)

(assert (=> b!3569306 (= e!2207959 (= lt!1222972 call!258696))))

(assert (= (and d!1051833 c!618523) b!3569293))

(assert (= (and d!1051833 (not c!618523)) b!3569305))

(assert (= (and d!1051833 c!618524) b!3569306))

(assert (= (and d!1051833 (not c!618524)) b!3569297))

(assert (= (and b!3569297 c!618522) b!3569298))

(assert (= (and b!3569297 (not c!618522)) b!3569302))

(assert (= (and b!3569302 (not res!1439255)) b!3569296))

(assert (= (and b!3569296 res!1439250) b!3569300))

(assert (= (and b!3569300 res!1439252) b!3569303))

(assert (= (and b!3569303 res!1439249) b!3569304))

(assert (= (and b!3569296 (not res!1439251)) b!3569301))

(assert (= (and b!3569301 res!1439253) b!3569299))

(assert (= (and b!3569299 (not res!1439254)) b!3569294))

(assert (= (and b!3569294 (not res!1439256)) b!3569295))

(assert (= (or b!3569306 b!3569299 b!3569300) bm!258691))

(declare-fun m!4056921 () Bool)

(assert (=> b!3569293 m!4056921))

(assert (=> b!3569295 m!4056307))

(assert (=> bm!258691 m!4056703))

(assert (=> b!3569304 m!4056307))

(assert (=> b!3569305 m!4056307))

(assert (=> b!3569305 m!4056307))

(declare-fun m!4056923 () Bool)

(assert (=> b!3569305 m!4056923))

(assert (=> b!3569305 m!4056707))

(assert (=> b!3569305 m!4056923))

(assert (=> b!3569305 m!4056707))

(declare-fun m!4056925 () Bool)

(assert (=> b!3569305 m!4056925))

(assert (=> b!3569303 m!4056707))

(assert (=> b!3569303 m!4056707))

(assert (=> b!3569303 m!4056711))

(assert (=> b!3569294 m!4056707))

(assert (=> b!3569294 m!4056707))

(assert (=> b!3569294 m!4056711))

(assert (=> d!1051833 m!4056703))

(declare-fun m!4056927 () Bool)

(assert (=> d!1051833 m!4056927))

(assert (=> b!3568843 d!1051833))

(declare-fun d!1051835 () Bool)

(assert (=> d!1051835 (= (get!12062 lt!1222707) (v!37280 lt!1222707))))

(assert (=> b!3568843 d!1051835))

(declare-fun d!1051837 () Bool)

(declare-fun lt!1222996 () Token!10380)

(declare-fun apply!9006 (List!37611 Int) Token!10380)

(assert (=> d!1051837 (= lt!1222996 (apply!9006 (list!13751 (_1!21828 lt!1222726)) 0))))

(declare-fun apply!9007 (Conc!11390 Int) Token!10380)

(assert (=> d!1051837 (= lt!1222996 (apply!9007 (c!618474 (_1!21828 lt!1222726)) 0))))

(declare-fun e!2207974 () Bool)

(assert (=> d!1051837 e!2207974))

(declare-fun res!1439262 () Bool)

(assert (=> d!1051837 (=> (not res!1439262) (not e!2207974))))

(assert (=> d!1051837 (= res!1439262 (<= 0 0))))

(assert (=> d!1051837 (= (apply!9002 (_1!21828 lt!1222726) 0) lt!1222996)))

(declare-fun b!3569318 () Bool)

(assert (=> b!3569318 (= e!2207974 (< 0 (size!28574 (_1!21828 lt!1222726))))))

(assert (= (and d!1051837 res!1439262) b!3569318))

(declare-fun m!4056963 () Bool)

(assert (=> d!1051837 m!4056963))

(assert (=> d!1051837 m!4056963))

(declare-fun m!4056965 () Bool)

(assert (=> d!1051837 m!4056965))

(declare-fun m!4056967 () Bool)

(assert (=> d!1051837 m!4056967))

(assert (=> b!3569318 m!4056303))

(assert (=> b!3568844 d!1051837))

(declare-fun bm!258692 () Bool)

(declare-fun call!258697 () Bool)

(assert (=> bm!258692 (= call!258697 (isEmpty!22011 lt!1222721))))

(declare-fun b!3569319 () Bool)

(declare-fun e!2207980 () Bool)

(assert (=> b!3569319 (= e!2207980 (nullable!3535 (regex!5507 lt!1222744)))))

(declare-fun b!3569321 () Bool)

(declare-fun e!2207976 () Bool)

(assert (=> b!3569321 (= e!2207976 (not (= (head!7434 lt!1222721) (c!618472 (regex!5507 lt!1222744)))))))

(declare-fun b!3569322 () Bool)

(declare-fun res!1439265 () Bool)

(declare-fun e!2207981 () Bool)

(assert (=> b!3569322 (=> res!1439265 e!2207981)))

(declare-fun e!2207977 () Bool)

(assert (=> b!3569322 (= res!1439265 e!2207977)))

(declare-fun res!1439264 () Bool)

(assert (=> b!3569322 (=> (not res!1439264) (not e!2207977))))

(declare-fun lt!1222997 () Bool)

(assert (=> b!3569322 (= res!1439264 lt!1222997)))

(declare-fun b!3569323 () Bool)

(declare-fun e!2207975 () Bool)

(declare-fun e!2207978 () Bool)

(assert (=> b!3569323 (= e!2207975 e!2207978)))

(declare-fun c!618528 () Bool)

(assert (=> b!3569323 (= c!618528 (is-EmptyLang!10266 (regex!5507 lt!1222744)))))

(declare-fun b!3569324 () Bool)

(assert (=> b!3569324 (= e!2207978 (not lt!1222997))))

(declare-fun b!3569325 () Bool)

(declare-fun e!2207979 () Bool)

(assert (=> b!3569325 (= e!2207979 e!2207976)))

(declare-fun res!1439268 () Bool)

(assert (=> b!3569325 (=> res!1439268 e!2207976)))

(assert (=> b!3569325 (= res!1439268 call!258697)))

(declare-fun b!3569326 () Bool)

(declare-fun res!1439266 () Bool)

(assert (=> b!3569326 (=> (not res!1439266) (not e!2207977))))

(assert (=> b!3569326 (= res!1439266 (not call!258697))))

(declare-fun b!3569327 () Bool)

(assert (=> b!3569327 (= e!2207981 e!2207979)))

(declare-fun res!1439267 () Bool)

(assert (=> b!3569327 (=> (not res!1439267) (not e!2207979))))

(assert (=> b!3569327 (= res!1439267 (not lt!1222997))))

(declare-fun b!3569328 () Bool)

(declare-fun res!1439269 () Bool)

(assert (=> b!3569328 (=> res!1439269 e!2207981)))

(assert (=> b!3569328 (= res!1439269 (not (is-ElementMatch!10266 (regex!5507 lt!1222744))))))

(assert (=> b!3569328 (= e!2207978 e!2207981)))

(declare-fun b!3569320 () Bool)

(declare-fun res!1439270 () Bool)

(assert (=> b!3569320 (=> res!1439270 e!2207976)))

(assert (=> b!3569320 (= res!1439270 (not (isEmpty!22011 (tail!5526 lt!1222721))))))

(declare-fun d!1051841 () Bool)

(assert (=> d!1051841 e!2207975))

(declare-fun c!618530 () Bool)

(assert (=> d!1051841 (= c!618530 (is-EmptyExpr!10266 (regex!5507 lt!1222744)))))

(assert (=> d!1051841 (= lt!1222997 e!2207980)))

(declare-fun c!618529 () Bool)

(assert (=> d!1051841 (= c!618529 (isEmpty!22011 lt!1222721))))

(assert (=> d!1051841 (validRegex!4691 (regex!5507 lt!1222744))))

(assert (=> d!1051841 (= (matchR!4850 (regex!5507 lt!1222744) lt!1222721) lt!1222997)))

(declare-fun b!3569329 () Bool)

(declare-fun res!1439263 () Bool)

(assert (=> b!3569329 (=> (not res!1439263) (not e!2207977))))

(assert (=> b!3569329 (= res!1439263 (isEmpty!22011 (tail!5526 lt!1222721)))))

(declare-fun b!3569330 () Bool)

(assert (=> b!3569330 (= e!2207977 (= (head!7434 lt!1222721) (c!618472 (regex!5507 lt!1222744))))))

(declare-fun b!3569331 () Bool)

(assert (=> b!3569331 (= e!2207980 (matchR!4850 (derivativeStep!3088 (regex!5507 lt!1222744) (head!7434 lt!1222721)) (tail!5526 lt!1222721)))))

(declare-fun b!3569332 () Bool)

(assert (=> b!3569332 (= e!2207975 (= lt!1222997 call!258697))))

(assert (= (and d!1051841 c!618529) b!3569319))

(assert (= (and d!1051841 (not c!618529)) b!3569331))

(assert (= (and d!1051841 c!618530) b!3569332))

(assert (= (and d!1051841 (not c!618530)) b!3569323))

(assert (= (and b!3569323 c!618528) b!3569324))

(assert (= (and b!3569323 (not c!618528)) b!3569328))

(assert (= (and b!3569328 (not res!1439269)) b!3569322))

(assert (= (and b!3569322 res!1439264) b!3569326))

(assert (= (and b!3569326 res!1439266) b!3569329))

(assert (= (and b!3569329 res!1439263) b!3569330))

(assert (= (and b!3569322 (not res!1439265)) b!3569327))

(assert (= (and b!3569327 res!1439267) b!3569325))

(assert (= (and b!3569325 (not res!1439268)) b!3569320))

(assert (= (and b!3569320 (not res!1439270)) b!3569321))

(assert (= (or b!3569332 b!3569325 b!3569326) bm!258692))

(declare-fun m!4056969 () Bool)

(assert (=> b!3569319 m!4056969))

(assert (=> b!3569321 m!4056297))

(declare-fun m!4056971 () Bool)

(assert (=> bm!258692 m!4056971))

(assert (=> b!3569330 m!4056297))

(assert (=> b!3569331 m!4056297))

(assert (=> b!3569331 m!4056297))

(declare-fun m!4056973 () Bool)

(assert (=> b!3569331 m!4056973))

(declare-fun m!4056975 () Bool)

(assert (=> b!3569331 m!4056975))

(assert (=> b!3569331 m!4056973))

(assert (=> b!3569331 m!4056975))

(declare-fun m!4056977 () Bool)

(assert (=> b!3569331 m!4056977))

(assert (=> b!3569329 m!4056975))

(assert (=> b!3569329 m!4056975))

(declare-fun m!4056979 () Bool)

(assert (=> b!3569329 m!4056979))

(assert (=> b!3569320 m!4056975))

(assert (=> b!3569320 m!4056975))

(assert (=> b!3569320 m!4056979))

(assert (=> d!1051841 m!4056971))

(declare-fun m!4056981 () Bool)

(assert (=> d!1051841 m!4056981))

(assert (=> b!3568865 d!1051841))

(declare-fun d!1051843 () Bool)

(assert (=> d!1051843 (= (get!12062 lt!1222719) (v!37280 lt!1222719))))

(assert (=> b!3568865 d!1051843))

(declare-fun d!1051845 () Bool)

(declare-fun res!1439278 () Bool)

(declare-fun e!2207987 () Bool)

(assert (=> d!1051845 (=> (not res!1439278) (not e!2207987))))

(assert (=> d!1051845 (= res!1439278 (not (isEmpty!22011 (originalCharacters!6221 separatorToken!241))))))

(assert (=> d!1051845 (= (inv!50760 separatorToken!241) e!2207987)))

(declare-fun b!3569340 () Bool)

(declare-fun res!1439279 () Bool)

(assert (=> b!3569340 (=> (not res!1439279) (not e!2207987))))

(assert (=> b!3569340 (= res!1439279 (= (originalCharacters!6221 separatorToken!241) (list!13748 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (value!177411 separatorToken!241)))))))

(declare-fun b!3569341 () Bool)

(assert (=> b!3569341 (= e!2207987 (= (size!28572 separatorToken!241) (size!28573 (originalCharacters!6221 separatorToken!241))))))

(assert (= (and d!1051845 res!1439278) b!3569340))

(assert (= (and b!3569340 res!1439279) b!3569341))

(declare-fun b_lambda!105143 () Bool)

(assert (=> (not b_lambda!105143) (not b!3569340)))

(declare-fun t!288901 () Bool)

(declare-fun tb!203227 () Bool)

(assert (=> (and b!3568869 (= (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241)))) t!288901) tb!203227))

(declare-fun b!3569346 () Bool)

(declare-fun e!2207990 () Bool)

(declare-fun tp!1093461 () Bool)

(assert (=> b!3569346 (= e!2207990 (and (inv!50763 (c!618473 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (value!177411 separatorToken!241)))) tp!1093461))))

(declare-fun result!247812 () Bool)

(assert (=> tb!203227 (= result!247812 (and (inv!50764 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (value!177411 separatorToken!241))) e!2207990))))

(assert (= tb!203227 b!3569346))

(declare-fun m!4056989 () Bool)

(assert (=> b!3569346 m!4056989))

(declare-fun m!4056991 () Bool)

(assert (=> tb!203227 m!4056991))

(assert (=> b!3569340 t!288901))

(declare-fun b_and!256823 () Bool)

(assert (= b_and!256811 (and (=> t!288901 result!247812) b_and!256823)))

(declare-fun t!288903 () Bool)

(declare-fun tb!203229 () Bool)

(assert (=> (and b!3568885 (= (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241)))) t!288903) tb!203229))

(declare-fun result!247814 () Bool)

(assert (= result!247814 result!247812))

(assert (=> b!3569340 t!288903))

(declare-fun b_and!256825 () Bool)

(assert (= b_and!256813 (and (=> t!288903 result!247814) b_and!256825)))

(declare-fun t!288905 () Bool)

(declare-fun tb!203231 () Bool)

(assert (=> (and b!3568883 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241)))) t!288905) tb!203231))

(declare-fun result!247816 () Bool)

(assert (= result!247816 result!247812))

(assert (=> b!3569340 t!288905))

(declare-fun b_and!256827 () Bool)

(assert (= b_and!256815 (and (=> t!288905 result!247816) b_and!256827)))

(declare-fun m!4056993 () Bool)

(assert (=> d!1051845 m!4056993))

(declare-fun m!4056995 () Bool)

(assert (=> b!3569340 m!4056995))

(assert (=> b!3569340 m!4056995))

(declare-fun m!4056997 () Bool)

(assert (=> b!3569340 m!4056997))

(declare-fun m!4056999 () Bool)

(assert (=> b!3569341 m!4056999))

(assert (=> start!330504 d!1051845))

(assert (=> b!3568866 d!1051761))

(declare-fun d!1051849 () Bool)

(declare-fun res!1439292 () Bool)

(declare-fun e!2208001 () Bool)

(assert (=> d!1051849 (=> (not res!1439292) (not e!2208001))))

(assert (=> d!1051849 (= res!1439292 (validRegex!4691 (regex!5507 (rule!8197 separatorToken!241))))))

(assert (=> d!1051849 (= (ruleValid!1791 thiss!18206 (rule!8197 separatorToken!241)) e!2208001)))

(declare-fun b!3569367 () Bool)

(declare-fun res!1439293 () Bool)

(assert (=> b!3569367 (=> (not res!1439293) (not e!2208001))))

(assert (=> b!3569367 (= res!1439293 (not (nullable!3535 (regex!5507 (rule!8197 separatorToken!241)))))))

(declare-fun b!3569368 () Bool)

(assert (=> b!3569368 (= e!2208001 (not (= (tag!6163 (rule!8197 separatorToken!241)) (String!42022 ""))))))

(assert (= (and d!1051849 res!1439292) b!3569367))

(assert (= (and b!3569367 res!1439293) b!3569368))

(assert (=> d!1051849 m!4056699))

(assert (=> b!3569367 m!4056701))

(assert (=> b!3568866 d!1051849))

(declare-fun d!1051855 () Bool)

(assert (=> d!1051855 (ruleValid!1791 thiss!18206 (rule!8197 separatorToken!241))))

(declare-fun lt!1223004 () Unit!53462)

(declare-fun choose!20736 (LexerInterface!5096 Rule!10814 List!37610) Unit!53462)

(assert (=> d!1051855 (= lt!1223004 (choose!20736 thiss!18206 (rule!8197 separatorToken!241) rules!2135))))

(assert (=> d!1051855 (contains!7087 rules!2135 (rule!8197 separatorToken!241))))

(assert (=> d!1051855 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!957 thiss!18206 (rule!8197 separatorToken!241) rules!2135) lt!1223004)))

(declare-fun bs!569082 () Bool)

(assert (= bs!569082 d!1051855))

(assert (=> bs!569082 m!4056393))

(declare-fun m!4057017 () Bool)

(assert (=> bs!569082 m!4057017))

(assert (=> bs!569082 m!4056265))

(assert (=> b!3568866 d!1051855))

(declare-fun b!3569392 () Bool)

(declare-fun e!2208016 () List!37609)

(assert (=> b!3569392 (= e!2208016 (Cons!37485 (h!42905 (++!9318 lt!1222708 lt!1222711)) (++!9318 (t!288870 (++!9318 lt!1222708 lt!1222711)) lt!1222713)))))

(declare-fun b!3569394 () Bool)

(declare-fun lt!1223007 () List!37609)

(declare-fun e!2208017 () Bool)

(assert (=> b!3569394 (= e!2208017 (or (not (= lt!1222713 Nil!37485)) (= lt!1223007 (++!9318 lt!1222708 lt!1222711))))))

(declare-fun b!3569393 () Bool)

(declare-fun res!1439305 () Bool)

(assert (=> b!3569393 (=> (not res!1439305) (not e!2208017))))

(assert (=> b!3569393 (= res!1439305 (= (size!28573 lt!1223007) (+ (size!28573 (++!9318 lt!1222708 lt!1222711)) (size!28573 lt!1222713))))))

(declare-fun b!3569391 () Bool)

(assert (=> b!3569391 (= e!2208016 lt!1222713)))

(declare-fun d!1051861 () Bool)

(assert (=> d!1051861 e!2208017))

(declare-fun res!1439304 () Bool)

(assert (=> d!1051861 (=> (not res!1439304) (not e!2208017))))

(assert (=> d!1051861 (= res!1439304 (= (content!5311 lt!1223007) (set.union (content!5311 (++!9318 lt!1222708 lt!1222711)) (content!5311 lt!1222713))))))

(assert (=> d!1051861 (= lt!1223007 e!2208016)))

(declare-fun c!618543 () Bool)

(assert (=> d!1051861 (= c!618543 (is-Nil!37485 (++!9318 lt!1222708 lt!1222711)))))

(assert (=> d!1051861 (= (++!9318 (++!9318 lt!1222708 lt!1222711) lt!1222713) lt!1223007)))

(assert (= (and d!1051861 c!618543) b!3569391))

(assert (= (and d!1051861 (not c!618543)) b!3569392))

(assert (= (and d!1051861 res!1439304) b!3569393))

(assert (= (and b!3569393 res!1439305) b!3569394))

(declare-fun m!4057027 () Bool)

(assert (=> b!3569392 m!4057027))

(declare-fun m!4057029 () Bool)

(assert (=> b!3569393 m!4057029))

(assert (=> b!3569393 m!4056387))

(declare-fun m!4057031 () Bool)

(assert (=> b!3569393 m!4057031))

(declare-fun m!4057033 () Bool)

(assert (=> b!3569393 m!4057033))

(declare-fun m!4057035 () Bool)

(assert (=> d!1051861 m!4057035))

(assert (=> d!1051861 m!4056387))

(declare-fun m!4057037 () Bool)

(assert (=> d!1051861 m!4057037))

(declare-fun m!4057039 () Bool)

(assert (=> d!1051861 m!4057039))

(assert (=> b!3568887 d!1051861))

(declare-fun b!3569396 () Bool)

(declare-fun e!2208018 () List!37609)

(assert (=> b!3569396 (= e!2208018 (Cons!37485 (h!42905 lt!1222708) (++!9318 (t!288870 lt!1222708) lt!1222711)))))

(declare-fun e!2208019 () Bool)

(declare-fun b!3569398 () Bool)

(declare-fun lt!1223008 () List!37609)

(assert (=> b!3569398 (= e!2208019 (or (not (= lt!1222711 Nil!37485)) (= lt!1223008 lt!1222708)))))

(declare-fun b!3569397 () Bool)

(declare-fun res!1439307 () Bool)

(assert (=> b!3569397 (=> (not res!1439307) (not e!2208019))))

(assert (=> b!3569397 (= res!1439307 (= (size!28573 lt!1223008) (+ (size!28573 lt!1222708) (size!28573 lt!1222711))))))

(declare-fun b!3569395 () Bool)

(assert (=> b!3569395 (= e!2208018 lt!1222711)))

(declare-fun d!1051869 () Bool)

(assert (=> d!1051869 e!2208019))

(declare-fun res!1439306 () Bool)

(assert (=> d!1051869 (=> (not res!1439306) (not e!2208019))))

(assert (=> d!1051869 (= res!1439306 (= (content!5311 lt!1223008) (set.union (content!5311 lt!1222708) (content!5311 lt!1222711))))))

(assert (=> d!1051869 (= lt!1223008 e!2208018)))

(declare-fun c!618544 () Bool)

(assert (=> d!1051869 (= c!618544 (is-Nil!37485 lt!1222708))))

(assert (=> d!1051869 (= (++!9318 lt!1222708 lt!1222711) lt!1223008)))

(assert (= (and d!1051869 c!618544) b!3569395))

(assert (= (and d!1051869 (not c!618544)) b!3569396))

(assert (= (and d!1051869 res!1439306) b!3569397))

(assert (= (and b!3569397 res!1439307) b!3569398))

(declare-fun m!4057041 () Bool)

(assert (=> b!3569396 m!4057041))

(declare-fun m!4057043 () Bool)

(assert (=> b!3569397 m!4057043))

(assert (=> b!3569397 m!4056323))

(declare-fun m!4057047 () Bool)

(assert (=> b!3569397 m!4057047))

(declare-fun m!4057051 () Bool)

(assert (=> d!1051869 m!4057051))

(declare-fun m!4057055 () Bool)

(assert (=> d!1051869 m!4057055))

(declare-fun m!4057057 () Bool)

(assert (=> d!1051869 m!4057057))

(assert (=> b!3568887 d!1051869))

(declare-fun d!1051873 () Bool)

(assert (=> d!1051873 (= (isEmpty!22011 lt!1222713) (is-Nil!37485 lt!1222713))))

(assert (=> b!3568888 d!1051873))

(declare-fun d!1051875 () Bool)

(declare-fun res!1439311 () Bool)

(declare-fun e!2208025 () Bool)

(assert (=> d!1051875 (=> (not res!1439311) (not e!2208025))))

(declare-fun rulesValid!2090 (LexerInterface!5096 List!37610) Bool)

(assert (=> d!1051875 (= res!1439311 (rulesValid!2090 thiss!18206 rules!2135))))

(assert (=> d!1051875 (= (rulesInvariant!4493 thiss!18206 rules!2135) e!2208025)))

(declare-fun b!3569406 () Bool)

(declare-datatypes ((List!37616 0))(
  ( (Nil!37492) (Cons!37492 (h!42912 String!42021) (t!288973 List!37616)) )
))
(declare-fun noDuplicateTag!2086 (LexerInterface!5096 List!37610 List!37616) Bool)

(assert (=> b!3569406 (= e!2208025 (noDuplicateTag!2086 thiss!18206 rules!2135 Nil!37492))))

(assert (= (and d!1051875 res!1439311) b!3569406))

(declare-fun m!4057065 () Bool)

(assert (=> d!1051875 m!4057065))

(declare-fun m!4057067 () Bool)

(assert (=> b!3569406 m!4057067))

(assert (=> b!3568889 d!1051875))

(declare-fun d!1051879 () Bool)

(assert (=> d!1051879 (= (inv!50756 (tag!6163 (rule!8197 (h!42907 tokens!494)))) (= (mod (str.len (value!177410 (tag!6163 (rule!8197 (h!42907 tokens!494))))) 2) 0))))

(assert (=> b!3568847 d!1051879))

(declare-fun d!1051881 () Bool)

(declare-fun res!1439312 () Bool)

(declare-fun e!2208026 () Bool)

(assert (=> d!1051881 (=> (not res!1439312) (not e!2208026))))

(assert (=> d!1051881 (= res!1439312 (semiInverseModEq!2330 (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494))))))))

(assert (=> d!1051881 (= (inv!50759 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) e!2208026)))

(declare-fun b!3569407 () Bool)

(assert (=> b!3569407 (= e!2208026 (equivClasses!2229 (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494))))))))

(assert (= (and d!1051881 res!1439312) b!3569407))

(declare-fun m!4057069 () Bool)

(assert (=> d!1051881 m!4057069))

(declare-fun m!4057071 () Bool)

(assert (=> b!3569407 m!4057071))

(assert (=> b!3568847 d!1051881))

(declare-fun d!1051883 () Bool)

(assert (=> d!1051883 (not (matchR!4850 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1222721))))

(declare-fun lt!1223012 () Unit!53462)

(assert (=> d!1051883 (= lt!1223012 (choose!20735 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1222721 lt!1222703))))

(assert (=> d!1051883 (validRegex!4691 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))))

(assert (=> d!1051883 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!565 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1222721 lt!1222703) lt!1223012)))

(declare-fun bs!569084 () Bool)

(assert (= bs!569084 d!1051883))

(assert (=> bs!569084 m!4056343))

(declare-fun m!4057073 () Bool)

(assert (=> bs!569084 m!4057073))

(declare-fun m!4057075 () Bool)

(assert (=> bs!569084 m!4057075))

(assert (=> b!3568880 d!1051883))

(declare-fun bm!258694 () Bool)

(declare-fun call!258699 () Bool)

(assert (=> bm!258694 (= call!258699 (isEmpty!22011 lt!1222721))))

(declare-fun b!3569408 () Bool)

(declare-fun e!2208032 () Bool)

(assert (=> b!3569408 (= e!2208032 (nullable!3535 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(declare-fun b!3569410 () Bool)

(declare-fun e!2208028 () Bool)

(assert (=> b!3569410 (= e!2208028 (not (= (head!7434 lt!1222721) (c!618472 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))))

(declare-fun b!3569411 () Bool)

(declare-fun res!1439315 () Bool)

(declare-fun e!2208033 () Bool)

(assert (=> b!3569411 (=> res!1439315 e!2208033)))

(declare-fun e!2208029 () Bool)

(assert (=> b!3569411 (= res!1439315 e!2208029)))

(declare-fun res!1439314 () Bool)

(assert (=> b!3569411 (=> (not res!1439314) (not e!2208029))))

(declare-fun lt!1223013 () Bool)

(assert (=> b!3569411 (= res!1439314 lt!1223013)))

(declare-fun b!3569412 () Bool)

(declare-fun e!2208027 () Bool)

(declare-fun e!2208030 () Bool)

(assert (=> b!3569412 (= e!2208027 e!2208030)))

(declare-fun c!618547 () Bool)

(assert (=> b!3569412 (= c!618547 (is-EmptyLang!10266 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(declare-fun b!3569413 () Bool)

(assert (=> b!3569413 (= e!2208030 (not lt!1223013))))

(declare-fun b!3569414 () Bool)

(declare-fun e!2208031 () Bool)

(assert (=> b!3569414 (= e!2208031 e!2208028)))

(declare-fun res!1439318 () Bool)

(assert (=> b!3569414 (=> res!1439318 e!2208028)))

(assert (=> b!3569414 (= res!1439318 call!258699)))

(declare-fun b!3569415 () Bool)

(declare-fun res!1439316 () Bool)

(assert (=> b!3569415 (=> (not res!1439316) (not e!2208029))))

(assert (=> b!3569415 (= res!1439316 (not call!258699))))

(declare-fun b!3569416 () Bool)

(assert (=> b!3569416 (= e!2208033 e!2208031)))

(declare-fun res!1439317 () Bool)

(assert (=> b!3569416 (=> (not res!1439317) (not e!2208031))))

(assert (=> b!3569416 (= res!1439317 (not lt!1223013))))

(declare-fun b!3569417 () Bool)

(declare-fun res!1439319 () Bool)

(assert (=> b!3569417 (=> res!1439319 e!2208033)))

(assert (=> b!3569417 (= res!1439319 (not (is-ElementMatch!10266 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))))))

(assert (=> b!3569417 (= e!2208030 e!2208033)))

(declare-fun b!3569409 () Bool)

(declare-fun res!1439320 () Bool)

(assert (=> b!3569409 (=> res!1439320 e!2208028)))

(assert (=> b!3569409 (= res!1439320 (not (isEmpty!22011 (tail!5526 lt!1222721))))))

(declare-fun d!1051885 () Bool)

(assert (=> d!1051885 e!2208027))

(declare-fun c!618549 () Bool)

(assert (=> d!1051885 (= c!618549 (is-EmptyExpr!10266 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(assert (=> d!1051885 (= lt!1223013 e!2208032)))

(declare-fun c!618548 () Bool)

(assert (=> d!1051885 (= c!618548 (isEmpty!22011 lt!1222721))))

(assert (=> d!1051885 (validRegex!4691 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))))

(assert (=> d!1051885 (= (matchR!4850 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1222721) lt!1223013)))

(declare-fun b!3569418 () Bool)

(declare-fun res!1439313 () Bool)

(assert (=> b!3569418 (=> (not res!1439313) (not e!2208029))))

(assert (=> b!3569418 (= res!1439313 (isEmpty!22011 (tail!5526 lt!1222721)))))

(declare-fun b!3569419 () Bool)

(assert (=> b!3569419 (= e!2208029 (= (head!7434 lt!1222721) (c!618472 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))))))

(declare-fun b!3569420 () Bool)

(assert (=> b!3569420 (= e!2208032 (matchR!4850 (derivativeStep!3088 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) (head!7434 lt!1222721)) (tail!5526 lt!1222721)))))

(declare-fun b!3569421 () Bool)

(assert (=> b!3569421 (= e!2208027 (= lt!1223013 call!258699))))

(assert (= (and d!1051885 c!618548) b!3569408))

(assert (= (and d!1051885 (not c!618548)) b!3569420))

(assert (= (and d!1051885 c!618549) b!3569421))

(assert (= (and d!1051885 (not c!618549)) b!3569412))

(assert (= (and b!3569412 c!618547) b!3569413))

(assert (= (and b!3569412 (not c!618547)) b!3569417))

(assert (= (and b!3569417 (not res!1439319)) b!3569411))

(assert (= (and b!3569411 res!1439314) b!3569415))

(assert (= (and b!3569415 res!1439316) b!3569418))

(assert (= (and b!3569418 res!1439313) b!3569419))

(assert (= (and b!3569411 (not res!1439315)) b!3569416))

(assert (= (and b!3569416 res!1439317) b!3569414))

(assert (= (and b!3569414 (not res!1439318)) b!3569409))

(assert (= (and b!3569409 (not res!1439320)) b!3569410))

(assert (= (or b!3569421 b!3569414 b!3569415) bm!258694))

(declare-fun m!4057077 () Bool)

(assert (=> b!3569408 m!4057077))

(assert (=> b!3569410 m!4056297))

(assert (=> bm!258694 m!4056971))

(assert (=> b!3569419 m!4056297))

(assert (=> b!3569420 m!4056297))

(assert (=> b!3569420 m!4056297))

(declare-fun m!4057079 () Bool)

(assert (=> b!3569420 m!4057079))

(assert (=> b!3569420 m!4056975))

(assert (=> b!3569420 m!4057079))

(assert (=> b!3569420 m!4056975))

(declare-fun m!4057081 () Bool)

(assert (=> b!3569420 m!4057081))

(assert (=> b!3569418 m!4056975))

(assert (=> b!3569418 m!4056975))

(assert (=> b!3569418 m!4056979))

(assert (=> b!3569409 m!4056975))

(assert (=> b!3569409 m!4056975))

(assert (=> b!3569409 m!4056979))

(assert (=> d!1051885 m!4056971))

(assert (=> d!1051885 m!4057075))

(assert (=> b!3568880 d!1051885))

(declare-fun d!1051887 () Bool)

(declare-fun res!1439325 () Bool)

(declare-fun e!2208038 () Bool)

(assert (=> d!1051887 (=> res!1439325 e!2208038)))

(assert (=> d!1051887 (= res!1439325 (is-Nil!37487 tokens!494))))

(assert (=> d!1051887 (= (forall!8105 tokens!494 lambda!123410) e!2208038)))

(declare-fun b!3569426 () Bool)

(declare-fun e!2208039 () Bool)

(assert (=> b!3569426 (= e!2208038 e!2208039)))

(declare-fun res!1439326 () Bool)

(assert (=> b!3569426 (=> (not res!1439326) (not e!2208039))))

(declare-fun dynLambda!16091 (Int Token!10380) Bool)

(assert (=> b!3569426 (= res!1439326 (dynLambda!16091 lambda!123410 (h!42907 tokens!494)))))

(declare-fun b!3569427 () Bool)

(assert (=> b!3569427 (= e!2208039 (forall!8105 (t!288872 tokens!494) lambda!123410))))

(assert (= (and d!1051887 (not res!1439325)) b!3569426))

(assert (= (and b!3569426 res!1439326) b!3569427))

(declare-fun b_lambda!105145 () Bool)

(assert (=> (not b_lambda!105145) (not b!3569426)))

(declare-fun m!4057083 () Bool)

(assert (=> b!3569426 m!4057083))

(declare-fun m!4057085 () Bool)

(assert (=> b!3569427 m!4057085))

(assert (=> b!3568860 d!1051887))

(declare-fun d!1051889 () Bool)

(declare-fun res!1439331 () Bool)

(declare-fun e!2208044 () Bool)

(assert (=> d!1051889 (=> res!1439331 e!2208044)))

(assert (=> d!1051889 (= res!1439331 (not (is-Cons!37486 rules!2135)))))

(assert (=> d!1051889 (= (sepAndNonSepRulesDisjointChars!1701 rules!2135 rules!2135) e!2208044)))

(declare-fun b!3569432 () Bool)

(declare-fun e!2208045 () Bool)

(assert (=> b!3569432 (= e!2208044 e!2208045)))

(declare-fun res!1439332 () Bool)

(assert (=> b!3569432 (=> (not res!1439332) (not e!2208045))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!766 (Rule!10814 List!37610) Bool)

(assert (=> b!3569432 (= res!1439332 (ruleDisjointCharsFromAllFromOtherType!766 (h!42906 rules!2135) rules!2135))))

(declare-fun b!3569433 () Bool)

(assert (=> b!3569433 (= e!2208045 (sepAndNonSepRulesDisjointChars!1701 rules!2135 (t!288871 rules!2135)))))

(assert (= (and d!1051889 (not res!1439331)) b!3569432))

(assert (= (and b!3569432 res!1439332) b!3569433))

(declare-fun m!4057087 () Bool)

(assert (=> b!3569432 m!4057087))

(declare-fun m!4057089 () Bool)

(assert (=> b!3569433 m!4057089))

(assert (=> b!3568881 d!1051889))

(declare-fun d!1051891 () Bool)

(declare-fun lt!1223029 () Bool)

(declare-fun e!2208073 () Bool)

(assert (=> d!1051891 (= lt!1223029 e!2208073)))

(declare-fun res!1439363 () Bool)

(assert (=> d!1051891 (=> (not res!1439363) (not e!2208073))))

(assert (=> d!1051891 (= res!1439363 (= (list!13751 (_1!21828 (lex!2422 thiss!18206 rules!2135 (print!2161 thiss!18206 (singletonSeq!2603 (h!42907 tokens!494)))))) (list!13751 (singletonSeq!2603 (h!42907 tokens!494)))))))

(declare-fun e!2208072 () Bool)

(assert (=> d!1051891 (= lt!1223029 e!2208072)))

(declare-fun res!1439362 () Bool)

(assert (=> d!1051891 (=> (not res!1439362) (not e!2208072))))

(declare-fun lt!1223030 () tuple2!37388)

(assert (=> d!1051891 (= res!1439362 (= (size!28574 (_1!21828 lt!1223030)) 1))))

(assert (=> d!1051891 (= lt!1223030 (lex!2422 thiss!18206 rules!2135 (print!2161 thiss!18206 (singletonSeq!2603 (h!42907 tokens!494)))))))

(assert (=> d!1051891 (not (isEmpty!22010 rules!2135))))

(assert (=> d!1051891 (= (rulesProduceIndividualToken!2588 thiss!18206 rules!2135 (h!42907 tokens!494)) lt!1223029)))

(declare-fun b!3569477 () Bool)

(declare-fun res!1439364 () Bool)

(assert (=> b!3569477 (=> (not res!1439364) (not e!2208072))))

(assert (=> b!3569477 (= res!1439364 (= (apply!9002 (_1!21828 lt!1223030) 0) (h!42907 tokens!494)))))

(declare-fun b!3569478 () Bool)

(assert (=> b!3569478 (= e!2208072 (isEmpty!22008 (_2!21828 lt!1223030)))))

(declare-fun b!3569479 () Bool)

(assert (=> b!3569479 (= e!2208073 (isEmpty!22008 (_2!21828 (lex!2422 thiss!18206 rules!2135 (print!2161 thiss!18206 (singletonSeq!2603 (h!42907 tokens!494)))))))))

(assert (= (and d!1051891 res!1439362) b!3569477))

(assert (= (and b!3569477 res!1439364) b!3569478))

(assert (= (and d!1051891 res!1439363) b!3569479))

(assert (=> d!1051891 m!4056403))

(declare-fun m!4057151 () Bool)

(assert (=> d!1051891 m!4057151))

(declare-fun m!4057153 () Bool)

(assert (=> d!1051891 m!4057153))

(assert (=> d!1051891 m!4056367))

(declare-fun m!4057155 () Bool)

(assert (=> d!1051891 m!4057155))

(declare-fun m!4057157 () Bool)

(assert (=> d!1051891 m!4057157))

(declare-fun m!4057159 () Bool)

(assert (=> d!1051891 m!4057159))

(assert (=> d!1051891 m!4056403))

(assert (=> d!1051891 m!4057155))

(assert (=> d!1051891 m!4056403))

(declare-fun m!4057161 () Bool)

(assert (=> b!3569477 m!4057161))

(declare-fun m!4057163 () Bool)

(assert (=> b!3569478 m!4057163))

(assert (=> b!3569479 m!4056403))

(assert (=> b!3569479 m!4056403))

(assert (=> b!3569479 m!4057155))

(assert (=> b!3569479 m!4057155))

(assert (=> b!3569479 m!4057157))

(declare-fun m!4057165 () Bool)

(assert (=> b!3569479 m!4057165))

(assert (=> b!3568882 d!1051891))

(declare-fun d!1051911 () Bool)

(declare-fun lt!1223031 () Token!10380)

(assert (=> d!1051911 (= lt!1223031 (apply!9006 (list!13751 (_1!21828 lt!1222728)) 0))))

(assert (=> d!1051911 (= lt!1223031 (apply!9007 (c!618474 (_1!21828 lt!1222728)) 0))))

(declare-fun e!2208074 () Bool)

(assert (=> d!1051911 e!2208074))

(declare-fun res!1439365 () Bool)

(assert (=> d!1051911 (=> (not res!1439365) (not e!2208074))))

(assert (=> d!1051911 (= res!1439365 (<= 0 0))))

(assert (=> d!1051911 (= (apply!9002 (_1!21828 lt!1222728) 0) lt!1223031)))

(declare-fun b!3569480 () Bool)

(assert (=> b!3569480 (= e!2208074 (< 0 (size!28574 (_1!21828 lt!1222728))))))

(assert (= (and d!1051911 res!1439365) b!3569480))

(declare-fun m!4057167 () Bool)

(assert (=> d!1051911 m!4057167))

(assert (=> d!1051911 m!4057167))

(declare-fun m!4057169 () Bool)

(assert (=> d!1051911 m!4057169))

(declare-fun m!4057171 () Bool)

(assert (=> d!1051911 m!4057171))

(assert (=> b!3569480 m!4056329))

(assert (=> b!3568861 d!1051911))

(declare-fun d!1051913 () Bool)

(declare-fun lt!1223045 () BalanceConc!22392)

(assert (=> d!1051913 (= (list!13748 lt!1223045) (printList!1644 thiss!18206 (list!13751 lt!1222752)))))

(assert (=> d!1051913 (= lt!1223045 (printTailRec!1591 thiss!18206 lt!1222752 0 (BalanceConc!22393 Empty!11389)))))

(assert (=> d!1051913 (= (print!2161 thiss!18206 lt!1222752) lt!1223045)))

(declare-fun bs!569090 () Bool)

(assert (= bs!569090 d!1051913))

(declare-fun m!4057215 () Bool)

(assert (=> bs!569090 m!4057215))

(declare-fun m!4057217 () Bool)

(assert (=> bs!569090 m!4057217))

(assert (=> bs!569090 m!4057217))

(declare-fun m!4057219 () Bool)

(assert (=> bs!569090 m!4057219))

(assert (=> bs!569090 m!4056401))

(assert (=> b!3568862 d!1051913))

(declare-fun d!1051933 () Bool)

(declare-fun lt!1223069 () BalanceConc!22392)

(declare-fun printListTailRec!735 (LexerInterface!5096 List!37611 List!37609) List!37609)

(declare-fun dropList!1252 (BalanceConc!22394 Int) List!37611)

(assert (=> d!1051933 (= (list!13748 lt!1223069) (printListTailRec!735 thiss!18206 (dropList!1252 lt!1222752 0) (list!13748 (BalanceConc!22393 Empty!11389))))))

(declare-fun e!2208097 () BalanceConc!22392)

(assert (=> d!1051933 (= lt!1223069 e!2208097)))

(declare-fun c!618566 () Bool)

(assert (=> d!1051933 (= c!618566 (>= 0 (size!28574 lt!1222752)))))

(declare-fun e!2208096 () Bool)

(assert (=> d!1051933 e!2208096))

(declare-fun res!1439384 () Bool)

(assert (=> d!1051933 (=> (not res!1439384) (not e!2208096))))

(assert (=> d!1051933 (= res!1439384 (>= 0 0))))

(assert (=> d!1051933 (= (printTailRec!1591 thiss!18206 lt!1222752 0 (BalanceConc!22393 Empty!11389)) lt!1223069)))

(declare-fun b!3569513 () Bool)

(assert (=> b!3569513 (= e!2208096 (<= 0 (size!28574 lt!1222752)))))

(declare-fun b!3569514 () Bool)

(assert (=> b!3569514 (= e!2208097 (BalanceConc!22393 Empty!11389))))

(declare-fun b!3569515 () Bool)

(declare-fun ++!9320 (BalanceConc!22392 BalanceConc!22392) BalanceConc!22392)

(assert (=> b!3569515 (= e!2208097 (printTailRec!1591 thiss!18206 lt!1222752 (+ 0 1) (++!9320 (BalanceConc!22393 Empty!11389) (charsOf!3521 (apply!9002 lt!1222752 0)))))))

(declare-fun lt!1223068 () List!37611)

(assert (=> b!3569515 (= lt!1223068 (list!13751 lt!1222752))))

(declare-fun lt!1223070 () Unit!53462)

(declare-fun lemmaDropApply!1210 (List!37611 Int) Unit!53462)

(assert (=> b!3569515 (= lt!1223070 (lemmaDropApply!1210 lt!1223068 0))))

(declare-fun head!7436 (List!37611) Token!10380)

(declare-fun drop!2072 (List!37611 Int) List!37611)

(assert (=> b!3569515 (= (head!7436 (drop!2072 lt!1223068 0)) (apply!9006 lt!1223068 0))))

(declare-fun lt!1223071 () Unit!53462)

(assert (=> b!3569515 (= lt!1223071 lt!1223070)))

(declare-fun lt!1223072 () List!37611)

(assert (=> b!3569515 (= lt!1223072 (list!13751 lt!1222752))))

(declare-fun lt!1223066 () Unit!53462)

(declare-fun lemmaDropTail!1094 (List!37611 Int) Unit!53462)

(assert (=> b!3569515 (= lt!1223066 (lemmaDropTail!1094 lt!1223072 0))))

(declare-fun tail!5527 (List!37611) List!37611)

(assert (=> b!3569515 (= (tail!5527 (drop!2072 lt!1223072 0)) (drop!2072 lt!1223072 (+ 0 1)))))

(declare-fun lt!1223067 () Unit!53462)

(assert (=> b!3569515 (= lt!1223067 lt!1223066)))

(assert (= (and d!1051933 res!1439384) b!3569513))

(assert (= (and d!1051933 c!618566) b!3569514))

(assert (= (and d!1051933 (not c!618566)) b!3569515))

(declare-fun m!4057237 () Bool)

(assert (=> d!1051933 m!4057237))

(declare-fun m!4057239 () Bool)

(assert (=> d!1051933 m!4057239))

(declare-fun m!4057241 () Bool)

(assert (=> d!1051933 m!4057241))

(declare-fun m!4057243 () Bool)

(assert (=> d!1051933 m!4057243))

(assert (=> d!1051933 m!4057237))

(assert (=> d!1051933 m!4057239))

(declare-fun m!4057245 () Bool)

(assert (=> d!1051933 m!4057245))

(assert (=> b!3569513 m!4057243))

(declare-fun m!4057247 () Bool)

(assert (=> b!3569515 m!4057247))

(declare-fun m!4057249 () Bool)

(assert (=> b!3569515 m!4057249))

(declare-fun m!4057251 () Bool)

(assert (=> b!3569515 m!4057251))

(declare-fun m!4057253 () Bool)

(assert (=> b!3569515 m!4057253))

(declare-fun m!4057255 () Bool)

(assert (=> b!3569515 m!4057255))

(declare-fun m!4057257 () Bool)

(assert (=> b!3569515 m!4057257))

(declare-fun m!4057259 () Bool)

(assert (=> b!3569515 m!4057259))

(declare-fun m!4057261 () Bool)

(assert (=> b!3569515 m!4057261))

(assert (=> b!3569515 m!4057261))

(declare-fun m!4057263 () Bool)

(assert (=> b!3569515 m!4057263))

(assert (=> b!3569515 m!4057253))

(assert (=> b!3569515 m!4057217))

(assert (=> b!3569515 m!4057263))

(declare-fun m!4057265 () Bool)

(assert (=> b!3569515 m!4057265))

(assert (=> b!3569515 m!4057259))

(declare-fun m!4057267 () Bool)

(assert (=> b!3569515 m!4057267))

(assert (=> b!3569515 m!4057251))

(declare-fun m!4057269 () Bool)

(assert (=> b!3569515 m!4057269))

(assert (=> b!3568862 d!1051933))

(declare-fun d!1051943 () Bool)

(declare-fun e!2208100 () Bool)

(assert (=> d!1051943 e!2208100))

(declare-fun res!1439387 () Bool)

(assert (=> d!1051943 (=> (not res!1439387) (not e!2208100))))

(declare-fun lt!1223075 () BalanceConc!22394)

(assert (=> d!1051943 (= res!1439387 (= (list!13751 lt!1223075) (Cons!37487 (h!42907 tokens!494) Nil!37487)))))

(declare-fun singleton!1167 (Token!10380) BalanceConc!22394)

(assert (=> d!1051943 (= lt!1223075 (singleton!1167 (h!42907 tokens!494)))))

(assert (=> d!1051943 (= (singletonSeq!2603 (h!42907 tokens!494)) lt!1223075)))

(declare-fun b!3569518 () Bool)

(declare-fun isBalanced!3482 (Conc!11390) Bool)

(assert (=> b!3569518 (= e!2208100 (isBalanced!3482 (c!618474 lt!1223075)))))

(assert (= (and d!1051943 res!1439387) b!3569518))

(declare-fun m!4057271 () Bool)

(assert (=> d!1051943 m!4057271))

(declare-fun m!4057273 () Bool)

(assert (=> d!1051943 m!4057273))

(declare-fun m!4057275 () Bool)

(assert (=> b!3569518 m!4057275))

(assert (=> b!3568862 d!1051943))

(declare-fun d!1051945 () Bool)

(declare-fun c!618569 () Bool)

(assert (=> d!1051945 (= c!618569 (is-Cons!37487 (Cons!37487 (h!42907 tokens!494) Nil!37487)))))

(declare-fun e!2208103 () List!37609)

(assert (=> d!1051945 (= (printList!1644 thiss!18206 (Cons!37487 (h!42907 tokens!494) Nil!37487)) e!2208103)))

(declare-fun b!3569523 () Bool)

(assert (=> b!3569523 (= e!2208103 (++!9318 (list!13748 (charsOf!3521 (h!42907 (Cons!37487 (h!42907 tokens!494) Nil!37487)))) (printList!1644 thiss!18206 (t!288872 (Cons!37487 (h!42907 tokens!494) Nil!37487)))))))

(declare-fun b!3569524 () Bool)

(assert (=> b!3569524 (= e!2208103 Nil!37485)))

(assert (= (and d!1051945 c!618569) b!3569523))

(assert (= (and d!1051945 (not c!618569)) b!3569524))

(declare-fun m!4057277 () Bool)

(assert (=> b!3569523 m!4057277))

(assert (=> b!3569523 m!4057277))

(declare-fun m!4057279 () Bool)

(assert (=> b!3569523 m!4057279))

(declare-fun m!4057281 () Bool)

(assert (=> b!3569523 m!4057281))

(assert (=> b!3569523 m!4057279))

(assert (=> b!3569523 m!4057281))

(declare-fun m!4057283 () Bool)

(assert (=> b!3569523 m!4057283))

(assert (=> b!3568862 d!1051945))

(declare-fun d!1051947 () Bool)

(assert (=> d!1051947 (= (list!13748 lt!1222725) (list!13750 (c!618473 lt!1222725)))))

(declare-fun bs!569092 () Bool)

(assert (= bs!569092 d!1051947))

(declare-fun m!4057285 () Bool)

(assert (=> bs!569092 m!4057285))

(assert (=> b!3568862 d!1051947))

(declare-fun d!1051949 () Bool)

(declare-fun isEmpty!22019 (Option!7684) Bool)

(assert (=> d!1051949 (= (isDefined!5928 lt!1222745) (not (isEmpty!22019 lt!1222745)))))

(declare-fun bs!569093 () Bool)

(assert (= bs!569093 d!1051949))

(declare-fun m!4057287 () Bool)

(assert (=> bs!569093 m!4057287))

(assert (=> b!3568884 d!1051949))

(declare-fun b!3569544 () Bool)

(declare-fun res!1439408 () Bool)

(declare-fun e!2208110 () Bool)

(assert (=> b!3569544 (=> (not res!1439408) (not e!2208110))))

(declare-fun lt!1223086 () Option!7684)

(assert (=> b!3569544 (= res!1439408 (matchR!4850 (regex!5507 (rule!8197 (_1!21829 (get!12063 lt!1223086)))) (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223086))))))))

(declare-fun b!3569545 () Bool)

(declare-fun e!2208112 () Option!7684)

(declare-fun lt!1223088 () Option!7684)

(declare-fun lt!1223090 () Option!7684)

(assert (=> b!3569545 (= e!2208112 (ite (and (is-None!7683 lt!1223088) (is-None!7683 lt!1223090)) None!7683 (ite (is-None!7683 lt!1223090) lt!1223088 (ite (is-None!7683 lt!1223088) lt!1223090 (ite (>= (size!28572 (_1!21829 (v!37281 lt!1223088))) (size!28572 (_1!21829 (v!37281 lt!1223090)))) lt!1223088 lt!1223090)))))))

(declare-fun call!258704 () Option!7684)

(assert (=> b!3569545 (= lt!1223088 call!258704)))

(assert (=> b!3569545 (= lt!1223090 (maxPrefix!2636 thiss!18206 (t!288871 rules!2135) lt!1222711))))

(declare-fun b!3569546 () Bool)

(declare-fun res!1439404 () Bool)

(assert (=> b!3569546 (=> (not res!1439404) (not e!2208110))))

(assert (=> b!3569546 (= res!1439404 (= (++!9318 (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223086)))) (_2!21829 (get!12063 lt!1223086))) lt!1222711))))

(declare-fun b!3569547 () Bool)

(declare-fun e!2208111 () Bool)

(assert (=> b!3569547 (= e!2208111 e!2208110)))

(declare-fun res!1439406 () Bool)

(assert (=> b!3569547 (=> (not res!1439406) (not e!2208110))))

(assert (=> b!3569547 (= res!1439406 (isDefined!5928 lt!1223086))))

(declare-fun b!3569548 () Bool)

(declare-fun res!1439405 () Bool)

(assert (=> b!3569548 (=> (not res!1439405) (not e!2208110))))

(assert (=> b!3569548 (= res!1439405 (= (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223086)))) (originalCharacters!6221 (_1!21829 (get!12063 lt!1223086)))))))

(declare-fun b!3569549 () Bool)

(declare-fun res!1439407 () Bool)

(assert (=> b!3569549 (=> (not res!1439407) (not e!2208110))))

(assert (=> b!3569549 (= res!1439407 (= (value!177411 (_1!21829 (get!12063 lt!1223086))) (apply!9003 (transformation!5507 (rule!8197 (_1!21829 (get!12063 lt!1223086)))) (seqFromList!4068 (originalCharacters!6221 (_1!21829 (get!12063 lt!1223086)))))))))

(declare-fun bm!258699 () Bool)

(assert (=> bm!258699 (= call!258704 (maxPrefixOneRule!1803 thiss!18206 (h!42906 rules!2135) lt!1222711))))

(declare-fun b!3569543 () Bool)

(declare-fun res!1439402 () Bool)

(assert (=> b!3569543 (=> (not res!1439402) (not e!2208110))))

(assert (=> b!3569543 (= res!1439402 (< (size!28573 (_2!21829 (get!12063 lt!1223086))) (size!28573 lt!1222711)))))

(declare-fun d!1051951 () Bool)

(assert (=> d!1051951 e!2208111))

(declare-fun res!1439403 () Bool)

(assert (=> d!1051951 (=> res!1439403 e!2208111)))

(assert (=> d!1051951 (= res!1439403 (isEmpty!22019 lt!1223086))))

(assert (=> d!1051951 (= lt!1223086 e!2208112)))

(declare-fun c!618572 () Bool)

(assert (=> d!1051951 (= c!618572 (and (is-Cons!37486 rules!2135) (is-Nil!37486 (t!288871 rules!2135))))))

(declare-fun lt!1223089 () Unit!53462)

(declare-fun lt!1223087 () Unit!53462)

(assert (=> d!1051951 (= lt!1223089 lt!1223087)))

(declare-fun isPrefix!2891 (List!37609 List!37609) Bool)

(assert (=> d!1051951 (isPrefix!2891 lt!1222711 lt!1222711)))

(declare-fun lemmaIsPrefixRefl!1850 (List!37609 List!37609) Unit!53462)

(assert (=> d!1051951 (= lt!1223087 (lemmaIsPrefixRefl!1850 lt!1222711 lt!1222711))))

(declare-fun rulesValidInductive!1900 (LexerInterface!5096 List!37610) Bool)

(assert (=> d!1051951 (rulesValidInductive!1900 thiss!18206 rules!2135)))

(assert (=> d!1051951 (= (maxPrefix!2636 thiss!18206 rules!2135 lt!1222711) lt!1223086)))

(declare-fun b!3569550 () Bool)

(assert (=> b!3569550 (= e!2208112 call!258704)))

(declare-fun b!3569551 () Bool)

(assert (=> b!3569551 (= e!2208110 (contains!7087 rules!2135 (rule!8197 (_1!21829 (get!12063 lt!1223086)))))))

(assert (= (and d!1051951 c!618572) b!3569550))

(assert (= (and d!1051951 (not c!618572)) b!3569545))

(assert (= (or b!3569550 b!3569545) bm!258699))

(assert (= (and d!1051951 (not res!1439403)) b!3569547))

(assert (= (and b!3569547 res!1439406) b!3569548))

(assert (= (and b!3569548 res!1439405) b!3569543))

(assert (= (and b!3569543 res!1439402) b!3569546))

(assert (= (and b!3569546 res!1439404) b!3569549))

(assert (= (and b!3569549 res!1439407) b!3569544))

(assert (= (and b!3569544 res!1439408) b!3569551))

(declare-fun m!4057289 () Bool)

(assert (=> d!1051951 m!4057289))

(declare-fun m!4057291 () Bool)

(assert (=> d!1051951 m!4057291))

(declare-fun m!4057293 () Bool)

(assert (=> d!1051951 m!4057293))

(declare-fun m!4057295 () Bool)

(assert (=> d!1051951 m!4057295))

(declare-fun m!4057297 () Bool)

(assert (=> b!3569547 m!4057297))

(declare-fun m!4057299 () Bool)

(assert (=> b!3569548 m!4057299))

(declare-fun m!4057301 () Bool)

(assert (=> b!3569548 m!4057301))

(assert (=> b!3569548 m!4057301))

(declare-fun m!4057303 () Bool)

(assert (=> b!3569548 m!4057303))

(assert (=> b!3569551 m!4057299))

(declare-fun m!4057305 () Bool)

(assert (=> b!3569551 m!4057305))

(assert (=> b!3569546 m!4057299))

(assert (=> b!3569546 m!4057301))

(assert (=> b!3569546 m!4057301))

(assert (=> b!3569546 m!4057303))

(assert (=> b!3569546 m!4057303))

(declare-fun m!4057307 () Bool)

(assert (=> b!3569546 m!4057307))

(assert (=> b!3569544 m!4057299))

(assert (=> b!3569544 m!4057301))

(assert (=> b!3569544 m!4057301))

(assert (=> b!3569544 m!4057303))

(assert (=> b!3569544 m!4057303))

(declare-fun m!4057309 () Bool)

(assert (=> b!3569544 m!4057309))

(assert (=> b!3569549 m!4057299))

(declare-fun m!4057311 () Bool)

(assert (=> b!3569549 m!4057311))

(assert (=> b!3569549 m!4057311))

(declare-fun m!4057313 () Bool)

(assert (=> b!3569549 m!4057313))

(assert (=> b!3569543 m!4057299))

(declare-fun m!4057315 () Bool)

(assert (=> b!3569543 m!4057315))

(assert (=> b!3569543 m!4057047))

(declare-fun m!4057317 () Bool)

(assert (=> bm!258699 m!4057317))

(declare-fun m!4057319 () Bool)

(assert (=> b!3569545 m!4057319))

(assert (=> b!3568884 d!1051951))

(declare-fun bm!258700 () Bool)

(declare-fun call!258705 () Bool)

(assert (=> bm!258700 (= call!258705 (isEmpty!22011 lt!1222708))))

(declare-fun b!3569552 () Bool)

(declare-fun e!2208118 () Bool)

(assert (=> b!3569552 (= e!2208118 (nullable!3535 (regex!5507 lt!1222731)))))

(declare-fun b!3569554 () Bool)

(declare-fun e!2208114 () Bool)

(assert (=> b!3569554 (= e!2208114 (not (= (head!7434 lt!1222708) (c!618472 (regex!5507 lt!1222731)))))))

(declare-fun b!3569555 () Bool)

(declare-fun res!1439411 () Bool)

(declare-fun e!2208119 () Bool)

(assert (=> b!3569555 (=> res!1439411 e!2208119)))

(declare-fun e!2208115 () Bool)

(assert (=> b!3569555 (= res!1439411 e!2208115)))

(declare-fun res!1439410 () Bool)

(assert (=> b!3569555 (=> (not res!1439410) (not e!2208115))))

(declare-fun lt!1223091 () Bool)

(assert (=> b!3569555 (= res!1439410 lt!1223091)))

(declare-fun b!3569556 () Bool)

(declare-fun e!2208113 () Bool)

(declare-fun e!2208116 () Bool)

(assert (=> b!3569556 (= e!2208113 e!2208116)))

(declare-fun c!618573 () Bool)

(assert (=> b!3569556 (= c!618573 (is-EmptyLang!10266 (regex!5507 lt!1222731)))))

(declare-fun b!3569557 () Bool)

(assert (=> b!3569557 (= e!2208116 (not lt!1223091))))

(declare-fun b!3569558 () Bool)

(declare-fun e!2208117 () Bool)

(assert (=> b!3569558 (= e!2208117 e!2208114)))

(declare-fun res!1439414 () Bool)

(assert (=> b!3569558 (=> res!1439414 e!2208114)))

(assert (=> b!3569558 (= res!1439414 call!258705)))

(declare-fun b!3569559 () Bool)

(declare-fun res!1439412 () Bool)

(assert (=> b!3569559 (=> (not res!1439412) (not e!2208115))))

(assert (=> b!3569559 (= res!1439412 (not call!258705))))

(declare-fun b!3569560 () Bool)

(assert (=> b!3569560 (= e!2208119 e!2208117)))

(declare-fun res!1439413 () Bool)

(assert (=> b!3569560 (=> (not res!1439413) (not e!2208117))))

(assert (=> b!3569560 (= res!1439413 (not lt!1223091))))

(declare-fun b!3569561 () Bool)

(declare-fun res!1439415 () Bool)

(assert (=> b!3569561 (=> res!1439415 e!2208119)))

(assert (=> b!3569561 (= res!1439415 (not (is-ElementMatch!10266 (regex!5507 lt!1222731))))))

(assert (=> b!3569561 (= e!2208116 e!2208119)))

(declare-fun b!3569553 () Bool)

(declare-fun res!1439416 () Bool)

(assert (=> b!3569553 (=> res!1439416 e!2208114)))

(assert (=> b!3569553 (= res!1439416 (not (isEmpty!22011 (tail!5526 lt!1222708))))))

(declare-fun d!1051953 () Bool)

(assert (=> d!1051953 e!2208113))

(declare-fun c!618575 () Bool)

(assert (=> d!1051953 (= c!618575 (is-EmptyExpr!10266 (regex!5507 lt!1222731)))))

(assert (=> d!1051953 (= lt!1223091 e!2208118)))

(declare-fun c!618574 () Bool)

(assert (=> d!1051953 (= c!618574 (isEmpty!22011 lt!1222708))))

(assert (=> d!1051953 (validRegex!4691 (regex!5507 lt!1222731))))

(assert (=> d!1051953 (= (matchR!4850 (regex!5507 lt!1222731) lt!1222708) lt!1223091)))

(declare-fun b!3569562 () Bool)

(declare-fun res!1439409 () Bool)

(assert (=> b!3569562 (=> (not res!1439409) (not e!2208115))))

(assert (=> b!3569562 (= res!1439409 (isEmpty!22011 (tail!5526 lt!1222708)))))

(declare-fun b!3569563 () Bool)

(assert (=> b!3569563 (= e!2208115 (= (head!7434 lt!1222708) (c!618472 (regex!5507 lt!1222731))))))

(declare-fun b!3569564 () Bool)

(assert (=> b!3569564 (= e!2208118 (matchR!4850 (derivativeStep!3088 (regex!5507 lt!1222731) (head!7434 lt!1222708)) (tail!5526 lt!1222708)))))

(declare-fun b!3569565 () Bool)

(assert (=> b!3569565 (= e!2208113 (= lt!1223091 call!258705))))

(assert (= (and d!1051953 c!618574) b!3569552))

(assert (= (and d!1051953 (not c!618574)) b!3569564))

(assert (= (and d!1051953 c!618575) b!3569565))

(assert (= (and d!1051953 (not c!618575)) b!3569556))

(assert (= (and b!3569556 c!618573) b!3569557))

(assert (= (and b!3569556 (not c!618573)) b!3569561))

(assert (= (and b!3569561 (not res!1439415)) b!3569555))

(assert (= (and b!3569555 res!1439410) b!3569559))

(assert (= (and b!3569559 res!1439412) b!3569562))

(assert (= (and b!3569562 res!1439409) b!3569563))

(assert (= (and b!3569555 (not res!1439411)) b!3569560))

(assert (= (and b!3569560 res!1439413) b!3569558))

(assert (= (and b!3569558 (not res!1439414)) b!3569553))

(assert (= (and b!3569553 (not res!1439416)) b!3569554))

(assert (= (or b!3569565 b!3569558 b!3569559) bm!258700))

(declare-fun m!4057321 () Bool)

(assert (=> b!3569552 m!4057321))

(declare-fun m!4057323 () Bool)

(assert (=> b!3569554 m!4057323))

(declare-fun m!4057325 () Bool)

(assert (=> bm!258700 m!4057325))

(assert (=> b!3569563 m!4057323))

(assert (=> b!3569564 m!4057323))

(assert (=> b!3569564 m!4057323))

(declare-fun m!4057327 () Bool)

(assert (=> b!3569564 m!4057327))

(declare-fun m!4057329 () Bool)

(assert (=> b!3569564 m!4057329))

(assert (=> b!3569564 m!4057327))

(assert (=> b!3569564 m!4057329))

(declare-fun m!4057331 () Bool)

(assert (=> b!3569564 m!4057331))

(assert (=> b!3569562 m!4057329))

(assert (=> b!3569562 m!4057329))

(declare-fun m!4057333 () Bool)

(assert (=> b!3569562 m!4057333))

(assert (=> b!3569553 m!4057329))

(assert (=> b!3569553 m!4057329))

(assert (=> b!3569553 m!4057333))

(assert (=> d!1051953 m!4057325))

(declare-fun m!4057335 () Bool)

(assert (=> d!1051953 m!4057335))

(assert (=> b!3568863 d!1051953))

(declare-fun d!1051955 () Bool)

(assert (=> d!1051955 (= (get!12062 lt!1222750) (v!37280 lt!1222750))))

(assert (=> b!3568863 d!1051955))

(declare-fun d!1051957 () Bool)

(declare-fun res!1439417 () Bool)

(declare-fun e!2208120 () Bool)

(assert (=> d!1051957 (=> (not res!1439417) (not e!2208120))))

(assert (=> d!1051957 (= res!1439417 (not (isEmpty!22011 (originalCharacters!6221 (h!42907 tokens!494)))))))

(assert (=> d!1051957 (= (inv!50760 (h!42907 tokens!494)) e!2208120)))

(declare-fun b!3569566 () Bool)

(declare-fun res!1439418 () Bool)

(assert (=> b!3569566 (=> (not res!1439418) (not e!2208120))))

(assert (=> b!3569566 (= res!1439418 (= (originalCharacters!6221 (h!42907 tokens!494)) (list!13748 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (value!177411 (h!42907 tokens!494))))))))

(declare-fun b!3569567 () Bool)

(assert (=> b!3569567 (= e!2208120 (= (size!28572 (h!42907 tokens!494)) (size!28573 (originalCharacters!6221 (h!42907 tokens!494)))))))

(assert (= (and d!1051957 res!1439417) b!3569566))

(assert (= (and b!3569566 res!1439418) b!3569567))

(declare-fun b_lambda!105155 () Bool)

(assert (=> (not b_lambda!105155) (not b!3569566)))

(assert (=> b!3569566 t!288884))

(declare-fun b_and!256835 () Bool)

(assert (= b_and!256823 (and (=> t!288884 result!247796) b_and!256835)))

(assert (=> b!3569566 t!288886))

(declare-fun b_and!256837 () Bool)

(assert (= b_and!256825 (and (=> t!288886 result!247800) b_and!256837)))

(assert (=> b!3569566 t!288888))

(declare-fun b_and!256839 () Bool)

(assert (= b_and!256827 (and (=> t!288888 result!247802) b_and!256839)))

(declare-fun m!4057337 () Bool)

(assert (=> d!1051957 m!4057337))

(assert (=> b!3569566 m!4056743))

(assert (=> b!3569566 m!4056743))

(declare-fun m!4057339 () Bool)

(assert (=> b!3569566 m!4057339))

(declare-fun m!4057341 () Bool)

(assert (=> b!3569567 m!4057341))

(assert (=> b!3568853 d!1051957))

(declare-fun d!1051959 () Bool)

(declare-fun dynLambda!16093 (Int BalanceConc!22392) TokenValue!5737)

(assert (=> d!1051959 (= (apply!9003 (transformation!5507 (rule!8197 (h!42907 tokens!494))) lt!1222733) (dynLambda!16093 (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) lt!1222733))))

(declare-fun b_lambda!105157 () Bool)

(assert (=> (not b_lambda!105157) (not d!1051959)))

(declare-fun tb!203233 () Bool)

(declare-fun t!288909 () Bool)

(assert (=> (and b!3568869 (= (toValue!7775 (transformation!5507 (rule!8197 separatorToken!241))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288909) tb!203233))

(declare-fun result!247818 () Bool)

(assert (=> tb!203233 (= result!247818 (inv!21 (dynLambda!16093 (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) lt!1222733)))))

(declare-fun m!4057343 () Bool)

(assert (=> tb!203233 m!4057343))

(assert (=> d!1051959 t!288909))

(declare-fun b_and!256841 () Bool)

(assert (= b_and!256787 (and (=> t!288909 result!247818) b_and!256841)))

(declare-fun t!288911 () Bool)

(declare-fun tb!203235 () Bool)

(assert (=> (and b!3568885 (= (toValue!7775 (transformation!5507 (h!42906 rules!2135))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288911) tb!203235))

(declare-fun result!247822 () Bool)

(assert (= result!247822 result!247818))

(assert (=> d!1051959 t!288911))

(declare-fun b_and!256843 () Bool)

(assert (= b_and!256791 (and (=> t!288911 result!247822) b_and!256843)))

(declare-fun t!288913 () Bool)

(declare-fun tb!203237 () Bool)

(assert (=> (and b!3568883 (= (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288913) tb!203237))

(declare-fun result!247824 () Bool)

(assert (= result!247824 result!247818))

(assert (=> d!1051959 t!288913))

(declare-fun b_and!256845 () Bool)

(assert (= b_and!256795 (and (=> t!288913 result!247824) b_and!256845)))

(declare-fun m!4057345 () Bool)

(assert (=> d!1051959 m!4057345))

(assert (=> b!3568854 d!1051959))

(declare-fun d!1051961 () Bool)

(assert (=> d!1051961 (= (seqFromList!4068 lt!1222721) (fromListB!1876 lt!1222721))))

(declare-fun bs!569094 () Bool)

(assert (= bs!569094 d!1051961))

(declare-fun m!4057347 () Bool)

(assert (=> bs!569094 m!4057347))

(assert (=> b!3568854 d!1051961))

(declare-fun d!1051963 () Bool)

(declare-fun e!2208126 () Bool)

(assert (=> d!1051963 e!2208126))

(declare-fun res!1439423 () Bool)

(assert (=> d!1051963 (=> (not res!1439423) (not e!2208126))))

(assert (=> d!1051963 (= res!1439423 (isDefined!5927 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 tokens!494))))))))

(declare-fun lt!1223094 () Unit!53462)

(declare-fun choose!20737 (LexerInterface!5096 List!37610 List!37609 Token!10380) Unit!53462)

(assert (=> d!1051963 (= lt!1223094 (choose!20737 thiss!18206 rules!2135 lt!1222708 (h!42907 tokens!494)))))

(assert (=> d!1051963 (rulesInvariant!4493 thiss!18206 rules!2135)))

(assert (=> d!1051963 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1150 thiss!18206 rules!2135 lt!1222708 (h!42907 tokens!494)) lt!1223094)))

(declare-fun b!3569574 () Bool)

(declare-fun res!1439424 () Bool)

(assert (=> b!3569574 (=> (not res!1439424) (not e!2208126))))

(assert (=> b!3569574 (= res!1439424 (matchR!4850 (regex!5507 (get!12062 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 tokens!494)))))) (list!13748 (charsOf!3521 (h!42907 tokens!494)))))))

(declare-fun b!3569575 () Bool)

(assert (=> b!3569575 (= e!2208126 (= (rule!8197 (h!42907 tokens!494)) (get!12062 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 tokens!494)))))))))

(assert (= (and d!1051963 res!1439423) b!3569574))

(assert (= (and b!3569574 res!1439424) b!3569575))

(assert (=> d!1051963 m!4056281))

(assert (=> d!1051963 m!4056281))

(declare-fun m!4057349 () Bool)

(assert (=> d!1051963 m!4057349))

(declare-fun m!4057351 () Bool)

(assert (=> d!1051963 m!4057351))

(assert (=> d!1051963 m!4056397))

(assert (=> b!3569574 m!4056281))

(declare-fun m!4057353 () Bool)

(assert (=> b!3569574 m!4057353))

(assert (=> b!3569574 m!4056411))

(assert (=> b!3569574 m!4056413))

(declare-fun m!4057355 () Bool)

(assert (=> b!3569574 m!4057355))

(assert (=> b!3569574 m!4056281))

(assert (=> b!3569574 m!4056411))

(assert (=> b!3569574 m!4056413))

(assert (=> b!3569575 m!4056281))

(assert (=> b!3569575 m!4056281))

(assert (=> b!3569575 m!4057353))

(assert (=> b!3568854 d!1051963))

(declare-fun d!1051965 () Bool)

(declare-fun e!2208127 () Bool)

(assert (=> d!1051965 e!2208127))

(declare-fun res!1439425 () Bool)

(assert (=> d!1051965 (=> (not res!1439425) (not e!2208127))))

(declare-fun lt!1223095 () BalanceConc!22394)

(assert (=> d!1051965 (= res!1439425 (= (list!13751 lt!1223095) (Cons!37487 separatorToken!241 Nil!37487)))))

(assert (=> d!1051965 (= lt!1223095 (singleton!1167 separatorToken!241))))

(assert (=> d!1051965 (= (singletonSeq!2603 separatorToken!241) lt!1223095)))

(declare-fun b!3569576 () Bool)

(assert (=> b!3569576 (= e!2208127 (isBalanced!3482 (c!618474 lt!1223095)))))

(assert (= (and d!1051965 res!1439425) b!3569576))

(declare-fun m!4057357 () Bool)

(assert (=> d!1051965 m!4057357))

(declare-fun m!4057359 () Bool)

(assert (=> d!1051965 m!4057359))

(declare-fun m!4057361 () Bool)

(assert (=> b!3569576 m!4057361))

(assert (=> b!3568854 d!1051965))

(declare-fun d!1051967 () Bool)

(declare-fun isEmpty!22022 (Option!7683) Bool)

(assert (=> d!1051967 (= (isDefined!5927 lt!1222750) (not (isEmpty!22022 lt!1222750)))))

(declare-fun bs!569095 () Bool)

(assert (= bs!569095 d!1051967))

(declare-fun m!4057363 () Bool)

(assert (=> bs!569095 m!4057363))

(assert (=> b!3568854 d!1051967))

(declare-fun d!1051969 () Bool)

(assert (=> d!1051969 (= (head!7434 lt!1222711) (h!42905 lt!1222711))))

(assert (=> b!3568854 d!1051969))

(declare-fun d!1051971 () Bool)

(assert (=> d!1051971 (= (isDefined!5927 lt!1222719) (not (isEmpty!22022 lt!1222719)))))

(declare-fun bs!569096 () Bool)

(assert (= bs!569096 d!1051971))

(declare-fun m!4057365 () Bool)

(assert (=> bs!569096 m!4057365))

(assert (=> b!3568854 d!1051971))

(declare-fun d!1051973 () Bool)

(declare-fun e!2208132 () Bool)

(assert (=> d!1051973 e!2208132))

(declare-fun res!1439432 () Bool)

(assert (=> d!1051973 (=> (not res!1439432) (not e!2208132))))

(assert (=> d!1051973 (= res!1439432 (isDefined!5927 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494)))))))))

(declare-fun lt!1223100 () Unit!53462)

(assert (=> d!1051973 (= lt!1223100 (choose!20737 thiss!18206 rules!2135 lt!1222721 (h!42907 (t!288872 tokens!494))))))

(assert (=> d!1051973 (rulesInvariant!4493 thiss!18206 rules!2135)))

(assert (=> d!1051973 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1150 thiss!18206 rules!2135 lt!1222721 (h!42907 (t!288872 tokens!494))) lt!1223100)))

(declare-fun b!3569583 () Bool)

(declare-fun res!1439433 () Bool)

(assert (=> b!3569583 (=> (not res!1439433) (not e!2208132))))

(assert (=> b!3569583 (= res!1439433 (matchR!4850 (regex!5507 (get!12062 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494))))))) (list!13748 (charsOf!3521 (h!42907 (t!288872 tokens!494))))))))

(declare-fun b!3569584 () Bool)

(assert (=> b!3569584 (= e!2208132 (= (rule!8197 (h!42907 (t!288872 tokens!494))) (get!12062 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494))))))))))

(assert (= (and d!1051973 res!1439432) b!3569583))

(assert (= (and b!3569583 res!1439433) b!3569584))

(assert (=> d!1051973 m!4056295))

(assert (=> d!1051973 m!4056295))

(declare-fun m!4057367 () Bool)

(assert (=> d!1051973 m!4057367))

(declare-fun m!4057369 () Bool)

(assert (=> d!1051973 m!4057369))

(assert (=> d!1051973 m!4056397))

(assert (=> b!3569583 m!4056295))

(declare-fun m!4057371 () Bool)

(assert (=> b!3569583 m!4057371))

(assert (=> b!3569583 m!4056427))

(assert (=> b!3569583 m!4056435))

(declare-fun m!4057373 () Bool)

(assert (=> b!3569583 m!4057373))

(assert (=> b!3569583 m!4056295))

(assert (=> b!3569583 m!4056427))

(assert (=> b!3569583 m!4056435))

(assert (=> b!3569584 m!4056295))

(assert (=> b!3569584 m!4056295))

(assert (=> b!3569584 m!4057371))

(assert (=> b!3568854 d!1051973))

(declare-fun d!1051975 () Bool)

(assert (=> d!1051975 (= (apply!9003 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) (seqFromList!4068 lt!1222721)) (dynLambda!16093 (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (seqFromList!4068 lt!1222721)))))

(declare-fun b_lambda!105159 () Bool)

(assert (=> (not b_lambda!105159) (not d!1051975)))

(declare-fun tb!203239 () Bool)

(declare-fun t!288916 () Bool)

(assert (=> (and b!3568869 (= (toValue!7775 (transformation!5507 (rule!8197 separatorToken!241))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288916) tb!203239))

(declare-fun result!247826 () Bool)

(assert (=> tb!203239 (= result!247826 (inv!21 (dynLambda!16093 (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (seqFromList!4068 lt!1222721))))))

(declare-fun m!4057375 () Bool)

(assert (=> tb!203239 m!4057375))

(assert (=> d!1051975 t!288916))

(declare-fun b_and!256847 () Bool)

(assert (= b_and!256841 (and (=> t!288916 result!247826) b_and!256847)))

(declare-fun t!288918 () Bool)

(declare-fun tb!203241 () Bool)

(assert (=> (and b!3568885 (= (toValue!7775 (transformation!5507 (h!42906 rules!2135))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288918) tb!203241))

(declare-fun result!247828 () Bool)

(assert (= result!247828 result!247826))

(assert (=> d!1051975 t!288918))

(declare-fun b_and!256849 () Bool)

(assert (= b_and!256843 (and (=> t!288918 result!247828) b_and!256849)))

(declare-fun t!288920 () Bool)

(declare-fun tb!203243 () Bool)

(assert (=> (and b!3568883 (= (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288920) tb!203243))

(declare-fun result!247830 () Bool)

(assert (= result!247830 result!247826))

(assert (=> d!1051975 t!288920))

(declare-fun b_and!256851 () Bool)

(assert (= b_and!256845 (and (=> t!288920 result!247830) b_and!256851)))

(assert (=> d!1051975 m!4056247))

(declare-fun m!4057377 () Bool)

(assert (=> d!1051975 m!4057377))

(assert (=> b!3568854 d!1051975))

(declare-fun b!3569611 () Bool)

(declare-fun e!2208153 () List!37609)

(declare-fun e!2208150 () List!37609)

(assert (=> b!3569611 (= e!2208153 e!2208150)))

(declare-fun c!618587 () Bool)

(assert (=> b!3569611 (= c!618587 (is-Union!10266 (regex!5507 (rule!8197 (h!42907 tokens!494)))))))

(declare-fun b!3569612 () Bool)

(declare-fun call!258717 () List!37609)

(assert (=> b!3569612 (= e!2208153 call!258717)))

(declare-fun b!3569613 () Bool)

(declare-fun e!2208152 () List!37609)

(assert (=> b!3569613 (= e!2208152 (Cons!37485 (c!618472 (regex!5507 (rule!8197 (h!42907 tokens!494)))) Nil!37485))))

(declare-fun bm!258709 () Bool)

(declare-fun call!258715 () List!37609)

(assert (=> bm!258709 (= call!258715 call!258717)))

(declare-fun b!3569614 () Bool)

(declare-fun e!2208151 () List!37609)

(assert (=> b!3569614 (= e!2208151 Nil!37485)))

(declare-fun bm!258710 () Bool)

(declare-fun c!618586 () Bool)

(assert (=> bm!258710 (= call!258717 (usedCharacters!741 (ite c!618586 (reg!10595 (regex!5507 (rule!8197 (h!42907 tokens!494)))) (ite c!618587 (regTwo!21045 (regex!5507 (rule!8197 (h!42907 tokens!494)))) (regOne!21044 (regex!5507 (rule!8197 (h!42907 tokens!494))))))))))

(declare-fun bm!258711 () Bool)

(declare-fun call!258716 () List!37609)

(assert (=> bm!258711 (= call!258716 (usedCharacters!741 (ite c!618587 (regOne!21045 (regex!5507 (rule!8197 (h!42907 tokens!494)))) (regTwo!21044 (regex!5507 (rule!8197 (h!42907 tokens!494)))))))))

(declare-fun b!3569615 () Bool)

(declare-fun call!258714 () List!37609)

(assert (=> b!3569615 (= e!2208150 call!258714)))

(declare-fun b!3569616 () Bool)

(assert (=> b!3569616 (= e!2208151 e!2208152)))

(declare-fun c!618588 () Bool)

(assert (=> b!3569616 (= c!618588 (is-ElementMatch!10266 (regex!5507 (rule!8197 (h!42907 tokens!494)))))))

(declare-fun b!3569617 () Bool)

(assert (=> b!3569617 (= e!2208150 call!258714)))

(declare-fun d!1051977 () Bool)

(declare-fun c!618589 () Bool)

(assert (=> d!1051977 (= c!618589 (or (is-EmptyExpr!10266 (regex!5507 (rule!8197 (h!42907 tokens!494)))) (is-EmptyLang!10266 (regex!5507 (rule!8197 (h!42907 tokens!494))))))))

(assert (=> d!1051977 (= (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 tokens!494)))) e!2208151)))

(declare-fun b!3569618 () Bool)

(assert (=> b!3569618 (= c!618586 (is-Star!10266 (regex!5507 (rule!8197 (h!42907 tokens!494)))))))

(assert (=> b!3569618 (= e!2208152 e!2208153)))

(declare-fun bm!258712 () Bool)

(assert (=> bm!258712 (= call!258714 (++!9318 (ite c!618587 call!258716 call!258715) (ite c!618587 call!258715 call!258716)))))

(assert (= (and d!1051977 c!618589) b!3569614))

(assert (= (and d!1051977 (not c!618589)) b!3569616))

(assert (= (and b!3569616 c!618588) b!3569613))

(assert (= (and b!3569616 (not c!618588)) b!3569618))

(assert (= (and b!3569618 c!618586) b!3569612))

(assert (= (and b!3569618 (not c!618586)) b!3569611))

(assert (= (and b!3569611 c!618587) b!3569615))

(assert (= (and b!3569611 (not c!618587)) b!3569617))

(assert (= (or b!3569615 b!3569617) bm!258709))

(assert (= (or b!3569615 b!3569617) bm!258711))

(assert (= (or b!3569615 b!3569617) bm!258712))

(assert (= (or b!3569612 bm!258709) bm!258710))

(declare-fun m!4057409 () Bool)

(assert (=> bm!258710 m!4057409))

(declare-fun m!4057413 () Bool)

(assert (=> bm!258711 m!4057413))

(declare-fun m!4057415 () Bool)

(assert (=> bm!258712 m!4057415))

(assert (=> b!3568854 d!1051977))

(declare-fun d!1051991 () Bool)

(assert (=> d!1051991 (rulesProduceIndividualToken!2588 thiss!18206 rules!2135 (h!42907 tokens!494))))

(declare-fun lt!1223135 () Unit!53462)

(declare-fun choose!20738 (LexerInterface!5096 List!37610 List!37611 Token!10380) Unit!53462)

(assert (=> d!1051991 (= lt!1223135 (choose!20738 thiss!18206 rules!2135 tokens!494 (h!42907 tokens!494)))))

(assert (=> d!1051991 (not (isEmpty!22010 rules!2135))))

(assert (=> d!1051991 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1085 thiss!18206 rules!2135 tokens!494 (h!42907 tokens!494)) lt!1223135)))

(declare-fun bs!569100 () Bool)

(assert (= bs!569100 d!1051991))

(assert (=> bs!569100 m!4056419))

(declare-fun m!4057481 () Bool)

(assert (=> bs!569100 m!4057481))

(assert (=> bs!569100 m!4056367))

(assert (=> b!3568854 d!1051991))

(declare-fun d!1052001 () Bool)

(declare-fun lt!1223136 () Bool)

(assert (=> d!1052001 (= lt!1223136 (set.member lt!1222703 (content!5311 lt!1222741)))))

(declare-fun e!2208188 () Bool)

(assert (=> d!1052001 (= lt!1223136 e!2208188)))

(declare-fun res!1439465 () Bool)

(assert (=> d!1052001 (=> (not res!1439465) (not e!2208188))))

(assert (=> d!1052001 (= res!1439465 (is-Cons!37485 lt!1222741))))

(assert (=> d!1052001 (= (contains!7088 lt!1222741 lt!1222703) lt!1223136)))

(declare-fun b!3569684 () Bool)

(declare-fun e!2208189 () Bool)

(assert (=> b!3569684 (= e!2208188 e!2208189)))

(declare-fun res!1439466 () Bool)

(assert (=> b!3569684 (=> res!1439466 e!2208189)))

(assert (=> b!3569684 (= res!1439466 (= (h!42905 lt!1222741) lt!1222703))))

(declare-fun b!3569685 () Bool)

(assert (=> b!3569685 (= e!2208189 (contains!7088 (t!288870 lt!1222741) lt!1222703))))

(assert (= (and d!1052001 res!1439465) b!3569684))

(assert (= (and b!3569684 (not res!1439466)) b!3569685))

(assert (=> d!1052001 m!4056717))

(declare-fun m!4057483 () Bool)

(assert (=> d!1052001 m!4057483))

(declare-fun m!4057485 () Bool)

(assert (=> b!3569685 m!4057485))

(assert (=> b!3568854 d!1052001))

(declare-fun d!1052003 () Bool)

(declare-fun lt!1223140 () BalanceConc!22392)

(assert (=> d!1052003 (= (list!13748 lt!1223140) (printListTailRec!735 thiss!18206 (dropList!1252 lt!1222709 0) (list!13748 (BalanceConc!22393 Empty!11389))))))

(declare-fun e!2208191 () BalanceConc!22392)

(assert (=> d!1052003 (= lt!1223140 e!2208191)))

(declare-fun c!618609 () Bool)

(assert (=> d!1052003 (= c!618609 (>= 0 (size!28574 lt!1222709)))))

(declare-fun e!2208190 () Bool)

(assert (=> d!1052003 e!2208190))

(declare-fun res!1439467 () Bool)

(assert (=> d!1052003 (=> (not res!1439467) (not e!2208190))))

(assert (=> d!1052003 (= res!1439467 (>= 0 0))))

(assert (=> d!1052003 (= (printTailRec!1591 thiss!18206 lt!1222709 0 (BalanceConc!22393 Empty!11389)) lt!1223140)))

(declare-fun b!3569686 () Bool)

(assert (=> b!3569686 (= e!2208190 (<= 0 (size!28574 lt!1222709)))))

(declare-fun b!3569687 () Bool)

(assert (=> b!3569687 (= e!2208191 (BalanceConc!22393 Empty!11389))))

(declare-fun b!3569688 () Bool)

(assert (=> b!3569688 (= e!2208191 (printTailRec!1591 thiss!18206 lt!1222709 (+ 0 1) (++!9320 (BalanceConc!22393 Empty!11389) (charsOf!3521 (apply!9002 lt!1222709 0)))))))

(declare-fun lt!1223139 () List!37611)

(assert (=> b!3569688 (= lt!1223139 (list!13751 lt!1222709))))

(declare-fun lt!1223141 () Unit!53462)

(assert (=> b!3569688 (= lt!1223141 (lemmaDropApply!1210 lt!1223139 0))))

(assert (=> b!3569688 (= (head!7436 (drop!2072 lt!1223139 0)) (apply!9006 lt!1223139 0))))

(declare-fun lt!1223142 () Unit!53462)

(assert (=> b!3569688 (= lt!1223142 lt!1223141)))

(declare-fun lt!1223143 () List!37611)

(assert (=> b!3569688 (= lt!1223143 (list!13751 lt!1222709))))

(declare-fun lt!1223137 () Unit!53462)

(assert (=> b!3569688 (= lt!1223137 (lemmaDropTail!1094 lt!1223143 0))))

(assert (=> b!3569688 (= (tail!5527 (drop!2072 lt!1223143 0)) (drop!2072 lt!1223143 (+ 0 1)))))

(declare-fun lt!1223138 () Unit!53462)

(assert (=> b!3569688 (= lt!1223138 lt!1223137)))

(assert (= (and d!1052003 res!1439467) b!3569686))

(assert (= (and d!1052003 c!618609) b!3569687))

(assert (= (and d!1052003 (not c!618609)) b!3569688))

(declare-fun m!4057487 () Bool)

(assert (=> d!1052003 m!4057487))

(assert (=> d!1052003 m!4057239))

(declare-fun m!4057489 () Bool)

(assert (=> d!1052003 m!4057489))

(declare-fun m!4057491 () Bool)

(assert (=> d!1052003 m!4057491))

(assert (=> d!1052003 m!4057487))

(assert (=> d!1052003 m!4057239))

(declare-fun m!4057493 () Bool)

(assert (=> d!1052003 m!4057493))

(assert (=> b!3569686 m!4057491))

(declare-fun m!4057495 () Bool)

(assert (=> b!3569688 m!4057495))

(declare-fun m!4057497 () Bool)

(assert (=> b!3569688 m!4057497))

(declare-fun m!4057499 () Bool)

(assert (=> b!3569688 m!4057499))

(declare-fun m!4057501 () Bool)

(assert (=> b!3569688 m!4057501))

(declare-fun m!4057503 () Bool)

(assert (=> b!3569688 m!4057503))

(declare-fun m!4057505 () Bool)

(assert (=> b!3569688 m!4057505))

(declare-fun m!4057507 () Bool)

(assert (=> b!3569688 m!4057507))

(declare-fun m!4057509 () Bool)

(assert (=> b!3569688 m!4057509))

(assert (=> b!3569688 m!4057509))

(declare-fun m!4057511 () Bool)

(assert (=> b!3569688 m!4057511))

(assert (=> b!3569688 m!4057501))

(declare-fun m!4057513 () Bool)

(assert (=> b!3569688 m!4057513))

(assert (=> b!3569688 m!4057511))

(declare-fun m!4057515 () Bool)

(assert (=> b!3569688 m!4057515))

(assert (=> b!3569688 m!4057507))

(declare-fun m!4057517 () Bool)

(assert (=> b!3569688 m!4057517))

(assert (=> b!3569688 m!4057499))

(declare-fun m!4057519 () Bool)

(assert (=> b!3569688 m!4057519))

(assert (=> b!3568854 d!1052003))

(declare-fun d!1052005 () Bool)

(assert (=> d!1052005 (not (contains!7088 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 tokens!494)))) lt!1222715))))

(declare-fun lt!1223146 () Unit!53462)

(declare-fun choose!20740 (LexerInterface!5096 List!37610 List!37610 Rule!10814 Rule!10814 C!20718) Unit!53462)

(assert (=> d!1052005 (= lt!1223146 (choose!20740 thiss!18206 rules!2135 rules!2135 (rule!8197 (h!42907 tokens!494)) (rule!8197 separatorToken!241) lt!1222715))))

(assert (=> d!1052005 (rulesInvariant!4493 thiss!18206 rules!2135)))

(assert (=> d!1052005 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!307 thiss!18206 rules!2135 rules!2135 (rule!8197 (h!42907 tokens!494)) (rule!8197 separatorToken!241) lt!1222715) lt!1223146)))

(declare-fun bs!569101 () Bool)

(assert (= bs!569101 d!1052005))

(assert (=> bs!569101 m!4056261))

(assert (=> bs!569101 m!4056261))

(assert (=> bs!569101 m!4056293))

(declare-fun m!4057527 () Bool)

(assert (=> bs!569101 m!4057527))

(assert (=> bs!569101 m!4056397))

(assert (=> b!3568854 d!1052005))

(declare-fun d!1052009 () Bool)

(assert (=> d!1052009 (dynLambda!16091 lambda!123411 (h!42907 (t!288872 tokens!494)))))

(declare-fun lt!1223149 () Unit!53462)

(declare-fun choose!20741 (List!37611 Int Token!10380) Unit!53462)

(assert (=> d!1052009 (= lt!1223149 (choose!20741 tokens!494 lambda!123411 (h!42907 (t!288872 tokens!494))))))

(declare-fun e!2208198 () Bool)

(assert (=> d!1052009 e!2208198))

(declare-fun res!1439470 () Bool)

(assert (=> d!1052009 (=> (not res!1439470) (not e!2208198))))

(assert (=> d!1052009 (= res!1439470 (forall!8105 tokens!494 lambda!123411))))

(assert (=> d!1052009 (= (forallContained!1454 tokens!494 lambda!123411 (h!42907 (t!288872 tokens!494))) lt!1223149)))

(declare-fun b!3569699 () Bool)

(declare-fun contains!7091 (List!37611 Token!10380) Bool)

(assert (=> b!3569699 (= e!2208198 (contains!7091 tokens!494 (h!42907 (t!288872 tokens!494))))))

(assert (= (and d!1052009 res!1439470) b!3569699))

(declare-fun b_lambda!105163 () Bool)

(assert (=> (not b_lambda!105163) (not d!1052009)))

(declare-fun m!4057529 () Bool)

(assert (=> d!1052009 m!4057529))

(declare-fun m!4057531 () Bool)

(assert (=> d!1052009 m!4057531))

(declare-fun m!4057533 () Bool)

(assert (=> d!1052009 m!4057533))

(declare-fun m!4057535 () Bool)

(assert (=> b!3569699 m!4057535))

(assert (=> b!3568854 d!1052009))

(declare-fun d!1052011 () Bool)

(declare-fun lt!1223152 () Int)

(assert (=> d!1052011 (>= lt!1223152 0)))

(declare-fun e!2208201 () Int)

(assert (=> d!1052011 (= lt!1223152 e!2208201)))

(declare-fun c!618617 () Bool)

(assert (=> d!1052011 (= c!618617 (is-Nil!37485 lt!1222721))))

(assert (=> d!1052011 (= (size!28573 lt!1222721) lt!1223152)))

(declare-fun b!3569704 () Bool)

(assert (=> b!3569704 (= e!2208201 0)))

(declare-fun b!3569705 () Bool)

(assert (=> b!3569705 (= e!2208201 (+ 1 (size!28573 (t!288870 lt!1222721))))))

(assert (= (and d!1052011 c!618617) b!3569704))

(assert (= (and d!1052011 (not c!618617)) b!3569705))

(declare-fun m!4057537 () Bool)

(assert (=> b!3569705 m!4057537))

(assert (=> b!3568854 d!1052011))

(declare-fun d!1052013 () Bool)

(assert (=> d!1052013 (= (maxPrefixOneRule!1803 thiss!18206 (rule!8197 (h!42907 tokens!494)) lt!1222708) (Some!7683 (tuple2!37391 (Token!10381 (apply!9003 (transformation!5507 (rule!8197 (h!42907 tokens!494))) (seqFromList!4068 lt!1222708)) (rule!8197 (h!42907 tokens!494)) (size!28573 lt!1222708) lt!1222708) Nil!37485)))))

(declare-fun lt!1223155 () Unit!53462)

(declare-fun choose!20742 (LexerInterface!5096 List!37610 List!37609 List!37609 List!37609 Rule!10814) Unit!53462)

(assert (=> d!1052013 (= lt!1223155 (choose!20742 thiss!18206 rules!2135 lt!1222708 lt!1222708 Nil!37485 (rule!8197 (h!42907 tokens!494))))))

(assert (=> d!1052013 (not (isEmpty!22010 rules!2135))))

(assert (=> d!1052013 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!896 thiss!18206 rules!2135 lt!1222708 lt!1222708 Nil!37485 (rule!8197 (h!42907 tokens!494))) lt!1223155)))

(declare-fun bs!569102 () Bool)

(assert (= bs!569102 d!1052013))

(assert (=> bs!569102 m!4056355))

(declare-fun m!4057539 () Bool)

(assert (=> bs!569102 m!4057539))

(declare-fun m!4057541 () Bool)

(assert (=> bs!569102 m!4057541))

(assert (=> bs!569102 m!4056355))

(assert (=> bs!569102 m!4056323))

(assert (=> bs!569102 m!4056279))

(assert (=> bs!569102 m!4056367))

(assert (=> b!3568854 d!1052013))

(declare-fun d!1052015 () Bool)

(declare-fun e!2208210 () Bool)

(assert (=> d!1052015 e!2208210))

(declare-fun res!1439485 () Bool)

(assert (=> d!1052015 (=> res!1439485 e!2208210)))

(declare-fun lt!1223170 () Option!7684)

(assert (=> d!1052015 (= res!1439485 (isEmpty!22019 lt!1223170))))

(declare-fun e!2208211 () Option!7684)

(assert (=> d!1052015 (= lt!1223170 e!2208211)))

(declare-fun c!618620 () Bool)

(declare-datatypes ((tuple2!37398 0))(
  ( (tuple2!37399 (_1!21833 List!37609) (_2!21833 List!37609)) )
))
(declare-fun lt!1223169 () tuple2!37398)

(assert (=> d!1052015 (= c!618620 (isEmpty!22011 (_1!21833 lt!1223169)))))

(declare-fun findLongestMatch!871 (Regex!10266 List!37609) tuple2!37398)

(assert (=> d!1052015 (= lt!1223169 (findLongestMatch!871 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1222721))))

(assert (=> d!1052015 (ruleValid!1791 thiss!18206 (rule!8197 (h!42907 (t!288872 tokens!494))))))

(assert (=> d!1052015 (= (maxPrefixOneRule!1803 thiss!18206 (rule!8197 (h!42907 (t!288872 tokens!494))) lt!1222721) lt!1223170)))

(declare-fun b!3569724 () Bool)

(declare-fun res!1439487 () Bool)

(declare-fun e!2208212 () Bool)

(assert (=> b!3569724 (=> (not res!1439487) (not e!2208212))))

(assert (=> b!3569724 (= res!1439487 (= (rule!8197 (_1!21829 (get!12063 lt!1223170))) (rule!8197 (h!42907 (t!288872 tokens!494)))))))

(declare-fun b!3569725 () Bool)

(assert (=> b!3569725 (= e!2208211 (Some!7683 (tuple2!37391 (Token!10381 (apply!9003 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) (seqFromList!4068 (_1!21833 lt!1223169))) (rule!8197 (h!42907 (t!288872 tokens!494))) (size!28578 (seqFromList!4068 (_1!21833 lt!1223169))) (_1!21833 lt!1223169)) (_2!21833 lt!1223169))))))

(declare-fun lt!1223168 () Unit!53462)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!929 (Regex!10266 List!37609) Unit!53462)

(assert (=> b!3569725 (= lt!1223168 (longestMatchIsAcceptedByMatchOrIsEmpty!929 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1222721))))

(declare-fun res!1439490 () Bool)

(declare-fun findLongestMatchInner!956 (Regex!10266 List!37609 Int List!37609 List!37609 Int) tuple2!37398)

(assert (=> b!3569725 (= res!1439490 (isEmpty!22011 (_1!21833 (findLongestMatchInner!956 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) Nil!37485 (size!28573 Nil!37485) lt!1222721 lt!1222721 (size!28573 lt!1222721)))))))

(declare-fun e!2208213 () Bool)

(assert (=> b!3569725 (=> res!1439490 e!2208213)))

(assert (=> b!3569725 e!2208213))

(declare-fun lt!1223167 () Unit!53462)

(assert (=> b!3569725 (= lt!1223167 lt!1223168)))

(declare-fun lt!1223166 () Unit!53462)

(declare-fun lemmaSemiInverse!1308 (TokenValueInjection!10902 BalanceConc!22392) Unit!53462)

(assert (=> b!3569725 (= lt!1223166 (lemmaSemiInverse!1308 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) (seqFromList!4068 (_1!21833 lt!1223169))))))

(declare-fun b!3569726 () Bool)

(declare-fun res!1439488 () Bool)

(assert (=> b!3569726 (=> (not res!1439488) (not e!2208212))))

(assert (=> b!3569726 (= res!1439488 (= (++!9318 (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223170)))) (_2!21829 (get!12063 lt!1223170))) lt!1222721))))

(declare-fun b!3569727 () Bool)

(assert (=> b!3569727 (= e!2208213 (matchR!4850 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) (_1!21833 (findLongestMatchInner!956 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) Nil!37485 (size!28573 Nil!37485) lt!1222721 lt!1222721 (size!28573 lt!1222721)))))))

(declare-fun b!3569728 () Bool)

(assert (=> b!3569728 (= e!2208210 e!2208212)))

(declare-fun res!1439491 () Bool)

(assert (=> b!3569728 (=> (not res!1439491) (not e!2208212))))

(assert (=> b!3569728 (= res!1439491 (matchR!4850 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223170))))))))

(declare-fun b!3569729 () Bool)

(assert (=> b!3569729 (= e!2208211 None!7683)))

(declare-fun b!3569730 () Bool)

(declare-fun res!1439486 () Bool)

(assert (=> b!3569730 (=> (not res!1439486) (not e!2208212))))

(assert (=> b!3569730 (= res!1439486 (< (size!28573 (_2!21829 (get!12063 lt!1223170))) (size!28573 lt!1222721)))))

(declare-fun b!3569731 () Bool)

(assert (=> b!3569731 (= e!2208212 (= (size!28572 (_1!21829 (get!12063 lt!1223170))) (size!28573 (originalCharacters!6221 (_1!21829 (get!12063 lt!1223170))))))))

(declare-fun b!3569732 () Bool)

(declare-fun res!1439489 () Bool)

(assert (=> b!3569732 (=> (not res!1439489) (not e!2208212))))

(assert (=> b!3569732 (= res!1439489 (= (value!177411 (_1!21829 (get!12063 lt!1223170))) (apply!9003 (transformation!5507 (rule!8197 (_1!21829 (get!12063 lt!1223170)))) (seqFromList!4068 (originalCharacters!6221 (_1!21829 (get!12063 lt!1223170)))))))))

(assert (= (and d!1052015 c!618620) b!3569729))

(assert (= (and d!1052015 (not c!618620)) b!3569725))

(assert (= (and b!3569725 (not res!1439490)) b!3569727))

(assert (= (and d!1052015 (not res!1439485)) b!3569728))

(assert (= (and b!3569728 res!1439491) b!3569726))

(assert (= (and b!3569726 res!1439488) b!3569730))

(assert (= (and b!3569730 res!1439486) b!3569724))

(assert (= (and b!3569724 res!1439487) b!3569732))

(assert (= (and b!3569732 res!1439489) b!3569731))

(declare-fun m!4057543 () Bool)

(assert (=> b!3569730 m!4057543))

(declare-fun m!4057545 () Bool)

(assert (=> b!3569730 m!4057545))

(assert (=> b!3569730 m!4056335))

(declare-fun m!4057547 () Bool)

(assert (=> b!3569725 m!4057547))

(assert (=> b!3569725 m!4056335))

(declare-fun m!4057549 () Bool)

(assert (=> b!3569725 m!4057549))

(declare-fun m!4057551 () Bool)

(assert (=> b!3569725 m!4057551))

(declare-fun m!4057553 () Bool)

(assert (=> b!3569725 m!4057553))

(assert (=> b!3569725 m!4056335))

(assert (=> b!3569725 m!4057547))

(assert (=> b!3569725 m!4057551))

(declare-fun m!4057555 () Bool)

(assert (=> b!3569725 m!4057555))

(declare-fun m!4057557 () Bool)

(assert (=> b!3569725 m!4057557))

(assert (=> b!3569725 m!4057551))

(declare-fun m!4057559 () Bool)

(assert (=> b!3569725 m!4057559))

(assert (=> b!3569725 m!4057551))

(declare-fun m!4057561 () Bool)

(assert (=> b!3569725 m!4057561))

(assert (=> b!3569728 m!4057543))

(declare-fun m!4057563 () Bool)

(assert (=> b!3569728 m!4057563))

(assert (=> b!3569728 m!4057563))

(declare-fun m!4057565 () Bool)

(assert (=> b!3569728 m!4057565))

(assert (=> b!3569728 m!4057565))

(declare-fun m!4057567 () Bool)

(assert (=> b!3569728 m!4057567))

(assert (=> b!3569727 m!4057547))

(assert (=> b!3569727 m!4056335))

(assert (=> b!3569727 m!4057547))

(assert (=> b!3569727 m!4056335))

(assert (=> b!3569727 m!4057549))

(declare-fun m!4057569 () Bool)

(assert (=> b!3569727 m!4057569))

(assert (=> b!3569732 m!4057543))

(declare-fun m!4057571 () Bool)

(assert (=> b!3569732 m!4057571))

(assert (=> b!3569732 m!4057571))

(declare-fun m!4057573 () Bool)

(assert (=> b!3569732 m!4057573))

(assert (=> b!3569726 m!4057543))

(assert (=> b!3569726 m!4057563))

(assert (=> b!3569726 m!4057563))

(assert (=> b!3569726 m!4057565))

(assert (=> b!3569726 m!4057565))

(declare-fun m!4057575 () Bool)

(assert (=> b!3569726 m!4057575))

(declare-fun m!4057577 () Bool)

(assert (=> d!1052015 m!4057577))

(declare-fun m!4057579 () Bool)

(assert (=> d!1052015 m!4057579))

(declare-fun m!4057581 () Bool)

(assert (=> d!1052015 m!4057581))

(declare-fun m!4057583 () Bool)

(assert (=> d!1052015 m!4057583))

(assert (=> b!3569724 m!4057543))

(assert (=> b!3569731 m!4057543))

(declare-fun m!4057585 () Bool)

(assert (=> b!3569731 m!4057585))

(assert (=> b!3568854 d!1052015))

(declare-fun d!1052017 () Bool)

(assert (=> d!1052017 (= (maxPrefix!2636 thiss!18206 rules!2135 (++!9318 (list!13748 (charsOf!3521 (h!42907 tokens!494))) lt!1222747)) (Some!7683 (tuple2!37391 (h!42907 tokens!494) lt!1222747)))))

(declare-fun lt!1223181 () Unit!53462)

(declare-fun choose!20743 (LexerInterface!5096 List!37610 Token!10380 Rule!10814 List!37609 Rule!10814) Unit!53462)

(assert (=> d!1052017 (= lt!1223181 (choose!20743 thiss!18206 rules!2135 (h!42907 tokens!494) (rule!8197 (h!42907 tokens!494)) lt!1222747 (rule!8197 separatorToken!241)))))

(assert (=> d!1052017 (not (isEmpty!22010 rules!2135))))

(assert (=> d!1052017 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!263 thiss!18206 rules!2135 (h!42907 tokens!494) (rule!8197 (h!42907 tokens!494)) lt!1222747 (rule!8197 separatorToken!241)) lt!1223181)))

(declare-fun bs!569106 () Bool)

(assert (= bs!569106 d!1052017))

(assert (=> bs!569106 m!4056367))

(assert (=> bs!569106 m!4056411))

(assert (=> bs!569106 m!4056413))

(assert (=> bs!569106 m!4056411))

(declare-fun m!4057619 () Bool)

(assert (=> bs!569106 m!4057619))

(declare-fun m!4057621 () Bool)

(assert (=> bs!569106 m!4057621))

(assert (=> bs!569106 m!4056413))

(assert (=> bs!569106 m!4057619))

(declare-fun m!4057623 () Bool)

(assert (=> bs!569106 m!4057623))

(assert (=> b!3568854 d!1052017))

(declare-fun d!1052029 () Bool)

(declare-fun lt!1223182 () Bool)

(declare-fun e!2208219 () Bool)

(assert (=> d!1052029 (= lt!1223182 e!2208219)))

(declare-fun res!1439496 () Bool)

(assert (=> d!1052029 (=> (not res!1439496) (not e!2208219))))

(assert (=> d!1052029 (= res!1439496 (= (list!13751 (_1!21828 (lex!2422 thiss!18206 rules!2135 (print!2161 thiss!18206 (singletonSeq!2603 (h!42907 (t!288872 tokens!494))))))) (list!13751 (singletonSeq!2603 (h!42907 (t!288872 tokens!494))))))))

(declare-fun e!2208218 () Bool)

(assert (=> d!1052029 (= lt!1223182 e!2208218)))

(declare-fun res!1439495 () Bool)

(assert (=> d!1052029 (=> (not res!1439495) (not e!2208218))))

(declare-fun lt!1223183 () tuple2!37388)

(assert (=> d!1052029 (= res!1439495 (= (size!28574 (_1!21828 lt!1223183)) 1))))

(assert (=> d!1052029 (= lt!1223183 (lex!2422 thiss!18206 rules!2135 (print!2161 thiss!18206 (singletonSeq!2603 (h!42907 (t!288872 tokens!494))))))))

(assert (=> d!1052029 (not (isEmpty!22010 rules!2135))))

(assert (=> d!1052029 (= (rulesProduceIndividualToken!2588 thiss!18206 rules!2135 (h!42907 (t!288872 tokens!494))) lt!1223182)))

(declare-fun b!3569738 () Bool)

(declare-fun res!1439497 () Bool)

(assert (=> b!3569738 (=> (not res!1439497) (not e!2208218))))

(assert (=> b!3569738 (= res!1439497 (= (apply!9002 (_1!21828 lt!1223183) 0) (h!42907 (t!288872 tokens!494))))))

(declare-fun b!3569739 () Bool)

(assert (=> b!3569739 (= e!2208218 (isEmpty!22008 (_2!21828 lt!1223183)))))

(declare-fun b!3569740 () Bool)

(assert (=> b!3569740 (= e!2208219 (isEmpty!22008 (_2!21828 (lex!2422 thiss!18206 rules!2135 (print!2161 thiss!18206 (singletonSeq!2603 (h!42907 (t!288872 tokens!494))))))))))

(assert (= (and d!1052029 res!1439495) b!3569738))

(assert (= (and b!3569738 res!1439497) b!3569739))

(assert (= (and d!1052029 res!1439496) b!3569740))

(assert (=> d!1052029 m!4056325))

(declare-fun m!4057625 () Bool)

(assert (=> d!1052029 m!4057625))

(declare-fun m!4057627 () Bool)

(assert (=> d!1052029 m!4057627))

(assert (=> d!1052029 m!4056367))

(declare-fun m!4057629 () Bool)

(assert (=> d!1052029 m!4057629))

(declare-fun m!4057631 () Bool)

(assert (=> d!1052029 m!4057631))

(declare-fun m!4057633 () Bool)

(assert (=> d!1052029 m!4057633))

(assert (=> d!1052029 m!4056325))

(assert (=> d!1052029 m!4057629))

(assert (=> d!1052029 m!4056325))

(declare-fun m!4057635 () Bool)

(assert (=> b!3569738 m!4057635))

(declare-fun m!4057637 () Bool)

(assert (=> b!3569739 m!4057637))

(assert (=> b!3569740 m!4056325))

(assert (=> b!3569740 m!4056325))

(assert (=> b!3569740 m!4057629))

(assert (=> b!3569740 m!4057629))

(assert (=> b!3569740 m!4057631))

(declare-fun m!4057639 () Bool)

(assert (=> b!3569740 m!4057639))

(assert (=> b!3568854 d!1052029))

(declare-fun d!1052031 () Bool)

(assert (=> d!1052031 (rulesProduceIndividualToken!2588 thiss!18206 rules!2135 (h!42907 (t!288872 tokens!494)))))

(declare-fun lt!1223184 () Unit!53462)

(assert (=> d!1052031 (= lt!1223184 (choose!20738 thiss!18206 rules!2135 tokens!494 (h!42907 (t!288872 tokens!494))))))

(assert (=> d!1052031 (not (isEmpty!22010 rules!2135))))

(assert (=> d!1052031 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1085 thiss!18206 rules!2135 tokens!494 (h!42907 (t!288872 tokens!494))) lt!1223184)))

(declare-fun bs!569107 () Bool)

(assert (= bs!569107 d!1052031))

(assert (=> bs!569107 m!4056285))

(declare-fun m!4057641 () Bool)

(assert (=> bs!569107 m!4057641))

(assert (=> bs!569107 m!4056367))

(assert (=> b!3568854 d!1052031))

(declare-fun d!1052033 () Bool)

(declare-fun e!2208220 () Bool)

(assert (=> d!1052033 e!2208220))

(declare-fun res!1439498 () Bool)

(assert (=> d!1052033 (=> (not res!1439498) (not e!2208220))))

(assert (=> d!1052033 (= res!1439498 (isDefined!5927 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 separatorToken!241)))))))

(declare-fun lt!1223185 () Unit!53462)

(assert (=> d!1052033 (= lt!1223185 (choose!20737 thiss!18206 rules!2135 lt!1222711 separatorToken!241))))

(assert (=> d!1052033 (rulesInvariant!4493 thiss!18206 rules!2135)))

(assert (=> d!1052033 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1150 thiss!18206 rules!2135 lt!1222711 separatorToken!241) lt!1223185)))

(declare-fun b!3569741 () Bool)

(declare-fun res!1439499 () Bool)

(assert (=> b!3569741 (=> (not res!1439499) (not e!2208220))))

(assert (=> b!3569741 (= res!1439499 (matchR!4850 (regex!5507 (get!12062 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 separatorToken!241))))) (list!13748 (charsOf!3521 separatorToken!241))))))

(declare-fun b!3569742 () Bool)

(assert (=> b!3569742 (= e!2208220 (= (rule!8197 separatorToken!241) (get!12062 (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 separatorToken!241))))))))

(assert (= (and d!1052033 res!1439498) b!3569741))

(assert (= (and b!3569741 res!1439499) b!3569742))

(assert (=> d!1052033 m!4056309))

(assert (=> d!1052033 m!4056309))

(declare-fun m!4057643 () Bool)

(assert (=> d!1052033 m!4057643))

(declare-fun m!4057645 () Bool)

(assert (=> d!1052033 m!4057645))

(assert (=> d!1052033 m!4056397))

(assert (=> b!3569741 m!4056309))

(declare-fun m!4057647 () Bool)

(assert (=> b!3569741 m!4057647))

(assert (=> b!3569741 m!4056429))

(assert (=> b!3569741 m!4056439))

(declare-fun m!4057649 () Bool)

(assert (=> b!3569741 m!4057649))

(assert (=> b!3569741 m!4056309))

(assert (=> b!3569741 m!4056429))

(assert (=> b!3569741 m!4056439))

(assert (=> b!3569742 m!4056309))

(assert (=> b!3569742 m!4056309))

(assert (=> b!3569742 m!4057647))

(assert (=> b!3568854 d!1052033))

(declare-fun b!3569743 () Bool)

(declare-fun e!2208222 () Bool)

(declare-fun lt!1223186 () tuple2!37388)

(assert (=> b!3569743 (= e!2208222 (not (isEmpty!22009 (_1!21828 lt!1223186))))))

(declare-fun b!3569744 () Bool)

(declare-fun e!2208223 () Bool)

(assert (=> b!3569744 (= e!2208223 (= (_2!21828 lt!1223186) lt!1222746))))

(declare-fun d!1052035 () Bool)

(declare-fun e!2208221 () Bool)

(assert (=> d!1052035 e!2208221))

(declare-fun res!1439501 () Bool)

(assert (=> d!1052035 (=> (not res!1439501) (not e!2208221))))

(assert (=> d!1052035 (= res!1439501 e!2208223)))

(declare-fun c!618622 () Bool)

(assert (=> d!1052035 (= c!618622 (> (size!28574 (_1!21828 lt!1223186)) 0))))

(assert (=> d!1052035 (= lt!1223186 (lexTailRecV2!1103 thiss!18206 rules!2135 lt!1222746 (BalanceConc!22393 Empty!11389) lt!1222746 (BalanceConc!22395 Empty!11390)))))

(assert (=> d!1052035 (= (lex!2422 thiss!18206 rules!2135 lt!1222746) lt!1223186)))

(declare-fun b!3569745 () Bool)

(assert (=> b!3569745 (= e!2208223 e!2208222)))

(declare-fun res!1439500 () Bool)

(assert (=> b!3569745 (= res!1439500 (< (size!28578 (_2!21828 lt!1223186)) (size!28578 lt!1222746)))))

(assert (=> b!3569745 (=> (not res!1439500) (not e!2208222))))

(declare-fun b!3569746 () Bool)

(declare-fun res!1439502 () Bool)

(assert (=> b!3569746 (=> (not res!1439502) (not e!2208221))))

(assert (=> b!3569746 (= res!1439502 (= (list!13751 (_1!21828 lt!1223186)) (_1!21832 (lexList!1495 thiss!18206 rules!2135 (list!13748 lt!1222746)))))))

(declare-fun b!3569747 () Bool)

(assert (=> b!3569747 (= e!2208221 (= (list!13748 (_2!21828 lt!1223186)) (_2!21832 (lexList!1495 thiss!18206 rules!2135 (list!13748 lt!1222746)))))))

(assert (= (and d!1052035 c!618622) b!3569745))

(assert (= (and d!1052035 (not c!618622)) b!3569744))

(assert (= (and b!3569745 res!1439500) b!3569743))

(assert (= (and d!1052035 res!1439501) b!3569746))

(assert (= (and b!3569746 res!1439502) b!3569747))

(declare-fun m!4057651 () Bool)

(assert (=> d!1052035 m!4057651))

(declare-fun m!4057653 () Bool)

(assert (=> d!1052035 m!4057653))

(declare-fun m!4057655 () Bool)

(assert (=> b!3569746 m!4057655))

(declare-fun m!4057657 () Bool)

(assert (=> b!3569746 m!4057657))

(assert (=> b!3569746 m!4057657))

(declare-fun m!4057659 () Bool)

(assert (=> b!3569746 m!4057659))

(declare-fun m!4057661 () Bool)

(assert (=> b!3569745 m!4057661))

(declare-fun m!4057663 () Bool)

(assert (=> b!3569745 m!4057663))

(declare-fun m!4057665 () Bool)

(assert (=> b!3569743 m!4057665))

(declare-fun m!4057667 () Bool)

(assert (=> b!3569747 m!4057667))

(assert (=> b!3569747 m!4057657))

(assert (=> b!3569747 m!4057657))

(assert (=> b!3569747 m!4057659))

(assert (=> b!3568854 d!1052035))

(declare-fun b!3569776 () Bool)

(declare-fun e!2208242 () Option!7683)

(assert (=> b!3569776 (= e!2208242 (Some!7682 (h!42906 rules!2135)))))

(declare-fun b!3569777 () Bool)

(declare-fun e!2208243 () Bool)

(declare-fun lt!1223201 () Option!7683)

(assert (=> b!3569777 (= e!2208243 (= (tag!6163 (get!12062 lt!1223201)) (tag!6163 (rule!8197 (h!42907 tokens!494)))))))

(declare-fun b!3569778 () Bool)

(declare-fun e!2208244 () Bool)

(assert (=> b!3569778 (= e!2208244 e!2208243)))

(declare-fun res!1439519 () Bool)

(assert (=> b!3569778 (=> (not res!1439519) (not e!2208243))))

(assert (=> b!3569778 (= res!1439519 (contains!7087 rules!2135 (get!12062 lt!1223201)))))

(declare-fun b!3569779 () Bool)

(declare-fun e!2208245 () Option!7683)

(assert (=> b!3569779 (= e!2208242 e!2208245)))

(declare-fun c!618630 () Bool)

(assert (=> b!3569779 (= c!618630 (and (is-Cons!37486 rules!2135) (not (= (tag!6163 (h!42906 rules!2135)) (tag!6163 (rule!8197 (h!42907 tokens!494)))))))))

(declare-fun b!3569780 () Bool)

(assert (=> b!3569780 (= e!2208245 None!7682)))

(declare-fun d!1052037 () Bool)

(assert (=> d!1052037 e!2208244))

(declare-fun res!1439520 () Bool)

(assert (=> d!1052037 (=> res!1439520 e!2208244)))

(assert (=> d!1052037 (= res!1439520 (isEmpty!22022 lt!1223201))))

(assert (=> d!1052037 (= lt!1223201 e!2208242)))

(declare-fun c!618629 () Bool)

(assert (=> d!1052037 (= c!618629 (and (is-Cons!37486 rules!2135) (= (tag!6163 (h!42906 rules!2135)) (tag!6163 (rule!8197 (h!42907 tokens!494))))))))

(assert (=> d!1052037 (rulesInvariant!4493 thiss!18206 rules!2135)))

(assert (=> d!1052037 (= (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 tokens!494)))) lt!1223201)))

(declare-fun b!3569781 () Bool)

(declare-fun lt!1223203 () Unit!53462)

(declare-fun lt!1223202 () Unit!53462)

(assert (=> b!3569781 (= lt!1223203 lt!1223202)))

(assert (=> b!3569781 (rulesInvariant!4493 thiss!18206 (t!288871 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!479 (LexerInterface!5096 Rule!10814 List!37610) Unit!53462)

(assert (=> b!3569781 (= lt!1223202 (lemmaInvariantOnRulesThenOnTail!479 thiss!18206 (h!42906 rules!2135) (t!288871 rules!2135)))))

(assert (=> b!3569781 (= e!2208245 (getRuleFromTag!1150 thiss!18206 (t!288871 rules!2135) (tag!6163 (rule!8197 (h!42907 tokens!494)))))))

(assert (= (and d!1052037 c!618629) b!3569776))

(assert (= (and d!1052037 (not c!618629)) b!3569779))

(assert (= (and b!3569779 c!618630) b!3569781))

(assert (= (and b!3569779 (not c!618630)) b!3569780))

(assert (= (and d!1052037 (not res!1439520)) b!3569778))

(assert (= (and b!3569778 res!1439519) b!3569777))

(declare-fun m!4057701 () Bool)

(assert (=> b!3569777 m!4057701))

(assert (=> b!3569778 m!4057701))

(assert (=> b!3569778 m!4057701))

(declare-fun m!4057703 () Bool)

(assert (=> b!3569778 m!4057703))

(declare-fun m!4057705 () Bool)

(assert (=> d!1052037 m!4057705))

(assert (=> d!1052037 m!4056397))

(declare-fun m!4057707 () Bool)

(assert (=> b!3569781 m!4057707))

(declare-fun m!4057709 () Bool)

(assert (=> b!3569781 m!4057709))

(declare-fun m!4057711 () Bool)

(assert (=> b!3569781 m!4057711))

(assert (=> b!3568854 d!1052037))

(declare-fun d!1052049 () Bool)

(declare-fun lt!1223204 () BalanceConc!22392)

(assert (=> d!1052049 (= (list!13748 lt!1223204) (printList!1644 thiss!18206 (list!13751 lt!1222709)))))

(assert (=> d!1052049 (= lt!1223204 (printTailRec!1591 thiss!18206 lt!1222709 0 (BalanceConc!22393 Empty!11389)))))

(assert (=> d!1052049 (= (print!2161 thiss!18206 lt!1222709) lt!1223204)))

(declare-fun bs!569109 () Bool)

(assert (= bs!569109 d!1052049))

(declare-fun m!4057713 () Bool)

(assert (=> bs!569109 m!4057713))

(assert (=> bs!569109 m!4057513))

(assert (=> bs!569109 m!4057513))

(declare-fun m!4057715 () Bool)

(assert (=> bs!569109 m!4057715))

(assert (=> bs!569109 m!4056317))

(assert (=> b!3568854 d!1052049))

(declare-fun b!3569782 () Bool)

(declare-fun e!2208246 () Option!7683)

(assert (=> b!3569782 (= e!2208246 (Some!7682 (h!42906 rules!2135)))))

(declare-fun b!3569783 () Bool)

(declare-fun e!2208247 () Bool)

(declare-fun lt!1223205 () Option!7683)

(assert (=> b!3569783 (= e!2208247 (= (tag!6163 (get!12062 lt!1223205)) (tag!6163 (rule!8197 separatorToken!241))))))

(declare-fun b!3569784 () Bool)

(declare-fun e!2208248 () Bool)

(assert (=> b!3569784 (= e!2208248 e!2208247)))

(declare-fun res!1439521 () Bool)

(assert (=> b!3569784 (=> (not res!1439521) (not e!2208247))))

(assert (=> b!3569784 (= res!1439521 (contains!7087 rules!2135 (get!12062 lt!1223205)))))

(declare-fun b!3569785 () Bool)

(declare-fun e!2208249 () Option!7683)

(assert (=> b!3569785 (= e!2208246 e!2208249)))

(declare-fun c!618632 () Bool)

(assert (=> b!3569785 (= c!618632 (and (is-Cons!37486 rules!2135) (not (= (tag!6163 (h!42906 rules!2135)) (tag!6163 (rule!8197 separatorToken!241))))))))

(declare-fun b!3569786 () Bool)

(assert (=> b!3569786 (= e!2208249 None!7682)))

(declare-fun d!1052051 () Bool)

(assert (=> d!1052051 e!2208248))

(declare-fun res!1439522 () Bool)

(assert (=> d!1052051 (=> res!1439522 e!2208248)))

(assert (=> d!1052051 (= res!1439522 (isEmpty!22022 lt!1223205))))

(assert (=> d!1052051 (= lt!1223205 e!2208246)))

(declare-fun c!618631 () Bool)

(assert (=> d!1052051 (= c!618631 (and (is-Cons!37486 rules!2135) (= (tag!6163 (h!42906 rules!2135)) (tag!6163 (rule!8197 separatorToken!241)))))))

(assert (=> d!1052051 (rulesInvariant!4493 thiss!18206 rules!2135)))

(assert (=> d!1052051 (= (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 separatorToken!241))) lt!1223205)))

(declare-fun b!3569787 () Bool)

(declare-fun lt!1223207 () Unit!53462)

(declare-fun lt!1223206 () Unit!53462)

(assert (=> b!3569787 (= lt!1223207 lt!1223206)))

(assert (=> b!3569787 (rulesInvariant!4493 thiss!18206 (t!288871 rules!2135))))

(assert (=> b!3569787 (= lt!1223206 (lemmaInvariantOnRulesThenOnTail!479 thiss!18206 (h!42906 rules!2135) (t!288871 rules!2135)))))

(assert (=> b!3569787 (= e!2208249 (getRuleFromTag!1150 thiss!18206 (t!288871 rules!2135) (tag!6163 (rule!8197 separatorToken!241))))))

(assert (= (and d!1052051 c!618631) b!3569782))

(assert (= (and d!1052051 (not c!618631)) b!3569785))

(assert (= (and b!3569785 c!618632) b!3569787))

(assert (= (and b!3569785 (not c!618632)) b!3569786))

(assert (= (and d!1052051 (not res!1439522)) b!3569784))

(assert (= (and b!3569784 res!1439521) b!3569783))

(declare-fun m!4057717 () Bool)

(assert (=> b!3569783 m!4057717))

(assert (=> b!3569784 m!4057717))

(assert (=> b!3569784 m!4057717))

(declare-fun m!4057719 () Bool)

(assert (=> b!3569784 m!4057719))

(declare-fun m!4057721 () Bool)

(assert (=> d!1052051 m!4057721))

(assert (=> d!1052051 m!4056397))

(assert (=> b!3569787 m!4057707))

(assert (=> b!3569787 m!4057709))

(declare-fun m!4057723 () Bool)

(assert (=> b!3569787 m!4057723))

(assert (=> b!3568854 d!1052051))

(declare-fun d!1052053 () Bool)

(declare-fun lt!1223210 () Int)

(declare-fun size!28579 (List!37611) Int)

(assert (=> d!1052053 (= lt!1223210 (size!28579 (list!13751 (_1!21828 lt!1222728))))))

(declare-fun size!28580 (Conc!11390) Int)

(assert (=> d!1052053 (= lt!1223210 (size!28580 (c!618474 (_1!21828 lt!1222728))))))

(assert (=> d!1052053 (= (size!28574 (_1!21828 lt!1222728)) lt!1223210)))

(declare-fun bs!569110 () Bool)

(assert (= bs!569110 d!1052053))

(assert (=> bs!569110 m!4057167))

(assert (=> bs!569110 m!4057167))

(declare-fun m!4057725 () Bool)

(assert (=> bs!569110 m!4057725))

(declare-fun m!4057727 () Bool)

(assert (=> bs!569110 m!4057727))

(assert (=> b!3568854 d!1052053))

(declare-fun b!3569788 () Bool)

(declare-fun e!2208251 () Bool)

(declare-fun lt!1223211 () tuple2!37388)

(assert (=> b!3569788 (= e!2208251 (not (isEmpty!22009 (_1!21828 lt!1223211))))))

(declare-fun b!3569789 () Bool)

(declare-fun e!2208252 () Bool)

(assert (=> b!3569789 (= e!2208252 (= (_2!21828 lt!1223211) lt!1222706))))

(declare-fun d!1052055 () Bool)

(declare-fun e!2208250 () Bool)

(assert (=> d!1052055 e!2208250))

(declare-fun res!1439524 () Bool)

(assert (=> d!1052055 (=> (not res!1439524) (not e!2208250))))

(assert (=> d!1052055 (= res!1439524 e!2208252)))

(declare-fun c!618633 () Bool)

(assert (=> d!1052055 (= c!618633 (> (size!28574 (_1!21828 lt!1223211)) 0))))

(assert (=> d!1052055 (= lt!1223211 (lexTailRecV2!1103 thiss!18206 rules!2135 lt!1222706 (BalanceConc!22393 Empty!11389) lt!1222706 (BalanceConc!22395 Empty!11390)))))

(assert (=> d!1052055 (= (lex!2422 thiss!18206 rules!2135 lt!1222706) lt!1223211)))

(declare-fun b!3569790 () Bool)

(assert (=> b!3569790 (= e!2208252 e!2208251)))

(declare-fun res!1439523 () Bool)

(assert (=> b!3569790 (= res!1439523 (< (size!28578 (_2!21828 lt!1223211)) (size!28578 lt!1222706)))))

(assert (=> b!3569790 (=> (not res!1439523) (not e!2208251))))

(declare-fun b!3569791 () Bool)

(declare-fun res!1439525 () Bool)

(assert (=> b!3569791 (=> (not res!1439525) (not e!2208250))))

(assert (=> b!3569791 (= res!1439525 (= (list!13751 (_1!21828 lt!1223211)) (_1!21832 (lexList!1495 thiss!18206 rules!2135 (list!13748 lt!1222706)))))))

(declare-fun b!3569792 () Bool)

(assert (=> b!3569792 (= e!2208250 (= (list!13748 (_2!21828 lt!1223211)) (_2!21832 (lexList!1495 thiss!18206 rules!2135 (list!13748 lt!1222706)))))))

(assert (= (and d!1052055 c!618633) b!3569790))

(assert (= (and d!1052055 (not c!618633)) b!3569789))

(assert (= (and b!3569790 res!1439523) b!3569788))

(assert (= (and d!1052055 res!1439524) b!3569791))

(assert (= (and b!3569791 res!1439525) b!3569792))

(declare-fun m!4057729 () Bool)

(assert (=> d!1052055 m!4057729))

(declare-fun m!4057731 () Bool)

(assert (=> d!1052055 m!4057731))

(declare-fun m!4057733 () Bool)

(assert (=> b!3569791 m!4057733))

(declare-fun m!4057735 () Bool)

(assert (=> b!3569791 m!4057735))

(assert (=> b!3569791 m!4057735))

(declare-fun m!4057737 () Bool)

(assert (=> b!3569791 m!4057737))

(declare-fun m!4057739 () Bool)

(assert (=> b!3569790 m!4057739))

(declare-fun m!4057741 () Bool)

(assert (=> b!3569790 m!4057741))

(declare-fun m!4057743 () Bool)

(assert (=> b!3569788 m!4057743))

(declare-fun m!4057745 () Bool)

(assert (=> b!3569792 m!4057745))

(assert (=> b!3569792 m!4057735))

(assert (=> b!3569792 m!4057735))

(assert (=> b!3569792 m!4057737))

(assert (=> b!3568854 d!1052055))

(declare-fun b!3569793 () Bool)

(declare-fun e!2208256 () List!37609)

(declare-fun e!2208253 () List!37609)

(assert (=> b!3569793 (= e!2208256 e!2208253)))

(declare-fun c!618635 () Bool)

(assert (=> b!3569793 (= c!618635 (is-Union!10266 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(declare-fun b!3569794 () Bool)

(declare-fun call!258733 () List!37609)

(assert (=> b!3569794 (= e!2208256 call!258733)))

(declare-fun b!3569795 () Bool)

(declare-fun e!2208255 () List!37609)

(assert (=> b!3569795 (= e!2208255 (Cons!37485 (c!618472 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) Nil!37485))))

(declare-fun bm!258725 () Bool)

(declare-fun call!258731 () List!37609)

(assert (=> bm!258725 (= call!258731 call!258733)))

(declare-fun b!3569796 () Bool)

(declare-fun e!2208254 () List!37609)

(assert (=> b!3569796 (= e!2208254 Nil!37485)))

(declare-fun c!618634 () Bool)

(declare-fun bm!258726 () Bool)

(assert (=> bm!258726 (= call!258733 (usedCharacters!741 (ite c!618634 (reg!10595 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (ite c!618635 (regTwo!21045 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (regOne!21044 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))))))))

(declare-fun bm!258727 () Bool)

(declare-fun call!258732 () List!37609)

(assert (=> bm!258727 (= call!258732 (usedCharacters!741 (ite c!618635 (regOne!21045 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (regTwo!21044 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))))

(declare-fun b!3569797 () Bool)

(declare-fun call!258730 () List!37609)

(assert (=> b!3569797 (= e!2208253 call!258730)))

(declare-fun b!3569798 () Bool)

(assert (=> b!3569798 (= e!2208254 e!2208255)))

(declare-fun c!618636 () Bool)

(assert (=> b!3569798 (= c!618636 (is-ElementMatch!10266 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(declare-fun b!3569799 () Bool)

(assert (=> b!3569799 (= e!2208253 call!258730)))

(declare-fun d!1052057 () Bool)

(declare-fun c!618637 () Bool)

(assert (=> d!1052057 (= c!618637 (or (is-EmptyExpr!10266 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (is-EmptyLang!10266 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))))))

(assert (=> d!1052057 (= (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) e!2208254)))

(declare-fun b!3569800 () Bool)

(assert (=> b!3569800 (= c!618634 (is-Star!10266 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(assert (=> b!3569800 (= e!2208255 e!2208256)))

(declare-fun bm!258728 () Bool)

(assert (=> bm!258728 (= call!258730 (++!9318 (ite c!618635 call!258732 call!258731) (ite c!618635 call!258731 call!258732)))))

(assert (= (and d!1052057 c!618637) b!3569796))

(assert (= (and d!1052057 (not c!618637)) b!3569798))

(assert (= (and b!3569798 c!618636) b!3569795))

(assert (= (and b!3569798 (not c!618636)) b!3569800))

(assert (= (and b!3569800 c!618634) b!3569794))

(assert (= (and b!3569800 (not c!618634)) b!3569793))

(assert (= (and b!3569793 c!618635) b!3569797))

(assert (= (and b!3569793 (not c!618635)) b!3569799))

(assert (= (or b!3569797 b!3569799) bm!258725))

(assert (= (or b!3569797 b!3569799) bm!258727))

(assert (= (or b!3569797 b!3569799) bm!258728))

(assert (= (or b!3569794 bm!258725) bm!258726))

(declare-fun m!4057747 () Bool)

(assert (=> bm!258726 m!4057747))

(declare-fun m!4057749 () Bool)

(assert (=> bm!258727 m!4057749))

(declare-fun m!4057751 () Bool)

(assert (=> bm!258728 m!4057751))

(assert (=> b!3568854 d!1052057))

(declare-fun d!1052059 () Bool)

(assert (=> d!1052059 (not (contains!7088 (usedCharacters!741 (regex!5507 (rule!8197 separatorToken!241))) lt!1222703))))

(declare-fun lt!1223220 () Unit!53462)

(declare-fun choose!20744 (LexerInterface!5096 List!37610 List!37610 Rule!10814 Rule!10814 C!20718) Unit!53462)

(assert (=> d!1052059 (= lt!1223220 (choose!20744 thiss!18206 rules!2135 rules!2135 (rule!8197 (h!42907 (t!288872 tokens!494))) (rule!8197 separatorToken!241) lt!1222703))))

(assert (=> d!1052059 (rulesInvariant!4493 thiss!18206 rules!2135)))

(assert (=> d!1052059 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!189 thiss!18206 rules!2135 rules!2135 (rule!8197 (h!42907 (t!288872 tokens!494))) (rule!8197 separatorToken!241) lt!1222703) lt!1223220)))

(declare-fun bs!569112 () Bool)

(assert (= bs!569112 d!1052059))

(assert (=> bs!569112 m!4056277))

(assert (=> bs!569112 m!4056277))

(declare-fun m!4057765 () Bool)

(assert (=> bs!569112 m!4057765))

(declare-fun m!4057767 () Bool)

(assert (=> bs!569112 m!4057767))

(assert (=> bs!569112 m!4056397))

(assert (=> b!3568854 d!1052059))

(declare-fun d!1052065 () Bool)

(declare-fun lt!1223221 () Int)

(assert (=> d!1052065 (>= lt!1223221 0)))

(declare-fun e!2208261 () Int)

(assert (=> d!1052065 (= lt!1223221 e!2208261)))

(declare-fun c!618641 () Bool)

(assert (=> d!1052065 (= c!618641 (is-Nil!37485 lt!1222708))))

(assert (=> d!1052065 (= (size!28573 lt!1222708) lt!1223221)))

(declare-fun b!3569807 () Bool)

(assert (=> b!3569807 (= e!2208261 0)))

(declare-fun b!3569808 () Bool)

(assert (=> b!3569808 (= e!2208261 (+ 1 (size!28573 (t!288870 lt!1222708))))))

(assert (= (and d!1052065 c!618641) b!3569807))

(assert (= (and d!1052065 (not c!618641)) b!3569808))

(declare-fun m!4057769 () Bool)

(assert (=> b!3569808 m!4057769))

(assert (=> b!3568854 d!1052065))

(declare-fun d!1052067 () Bool)

(assert (=> d!1052067 (= (head!7434 lt!1222721) (h!42905 lt!1222721))))

(assert (=> b!3568854 d!1052067))

(declare-fun d!1052069 () Bool)

(assert (=> d!1052069 (= (maxPrefixOneRule!1803 thiss!18206 (rule!8197 (h!42907 (t!288872 tokens!494))) lt!1222721) (Some!7683 (tuple2!37391 (Token!10381 (apply!9003 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))) (seqFromList!4068 lt!1222721)) (rule!8197 (h!42907 (t!288872 tokens!494))) (size!28573 lt!1222721) lt!1222721) Nil!37485)))))

(declare-fun lt!1223222 () Unit!53462)

(assert (=> d!1052069 (= lt!1223222 (choose!20742 thiss!18206 rules!2135 lt!1222721 lt!1222721 Nil!37485 (rule!8197 (h!42907 (t!288872 tokens!494)))))))

(assert (=> d!1052069 (not (isEmpty!22010 rules!2135))))

(assert (=> d!1052069 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!896 thiss!18206 rules!2135 lt!1222721 lt!1222721 Nil!37485 (rule!8197 (h!42907 (t!288872 tokens!494)))) lt!1223222)))

(declare-fun bs!569113 () Bool)

(assert (= bs!569113 d!1052069))

(assert (=> bs!569113 m!4056247))

(assert (=> bs!569113 m!4056249))

(declare-fun m!4057771 () Bool)

(assert (=> bs!569113 m!4057771))

(assert (=> bs!569113 m!4056247))

(assert (=> bs!569113 m!4056335))

(assert (=> bs!569113 m!4056273))

(assert (=> bs!569113 m!4056367))

(assert (=> b!3568854 d!1052069))

(declare-fun d!1052071 () Bool)

(declare-fun e!2208262 () Bool)

(assert (=> d!1052071 e!2208262))

(declare-fun res!1439528 () Bool)

(assert (=> d!1052071 (=> (not res!1439528) (not e!2208262))))

(declare-fun lt!1223223 () BalanceConc!22394)

(assert (=> d!1052071 (= res!1439528 (= (list!13751 lt!1223223) (Cons!37487 (h!42907 (t!288872 tokens!494)) Nil!37487)))))

(assert (=> d!1052071 (= lt!1223223 (singleton!1167 (h!42907 (t!288872 tokens!494))))))

(assert (=> d!1052071 (= (singletonSeq!2603 (h!42907 (t!288872 tokens!494))) lt!1223223)))

(declare-fun b!3569809 () Bool)

(assert (=> b!3569809 (= e!2208262 (isBalanced!3482 (c!618474 lt!1223223)))))

(assert (= (and d!1052071 res!1439528) b!3569809))

(declare-fun m!4057773 () Bool)

(assert (=> d!1052071 m!4057773))

(declare-fun m!4057775 () Bool)

(assert (=> d!1052071 m!4057775))

(declare-fun m!4057777 () Bool)

(assert (=> b!3569809 m!4057777))

(assert (=> b!3568854 d!1052071))

(declare-fun d!1052073 () Bool)

(declare-fun lt!1223224 () BalanceConc!22392)

(assert (=> d!1052073 (= (list!13748 lt!1223224) (printList!1644 thiss!18206 (list!13751 lt!1222727)))))

(assert (=> d!1052073 (= lt!1223224 (printTailRec!1591 thiss!18206 lt!1222727 0 (BalanceConc!22393 Empty!11389)))))

(assert (=> d!1052073 (= (print!2161 thiss!18206 lt!1222727) lt!1223224)))

(declare-fun bs!569114 () Bool)

(assert (= bs!569114 d!1052073))

(declare-fun m!4057779 () Bool)

(assert (=> bs!569114 m!4057779))

(declare-fun m!4057781 () Bool)

(assert (=> bs!569114 m!4057781))

(assert (=> bs!569114 m!4057781))

(declare-fun m!4057783 () Bool)

(assert (=> bs!569114 m!4057783))

(assert (=> bs!569114 m!4056259))

(assert (=> b!3568854 d!1052073))

(declare-fun d!1052075 () Bool)

(declare-fun lt!1223227 () Bool)

(assert (=> d!1052075 (= lt!1223227 (set.member lt!1222715 (content!5311 lt!1222741)))))

(declare-fun e!2208263 () Bool)

(assert (=> d!1052075 (= lt!1223227 e!2208263)))

(declare-fun res!1439529 () Bool)

(assert (=> d!1052075 (=> (not res!1439529) (not e!2208263))))

(assert (=> d!1052075 (= res!1439529 (is-Cons!37485 lt!1222741))))

(assert (=> d!1052075 (= (contains!7088 lt!1222741 lt!1222715) lt!1223227)))

(declare-fun b!3569810 () Bool)

(declare-fun e!2208264 () Bool)

(assert (=> b!3569810 (= e!2208263 e!2208264)))

(declare-fun res!1439530 () Bool)

(assert (=> b!3569810 (=> res!1439530 e!2208264)))

(assert (=> b!3569810 (= res!1439530 (= (h!42905 lt!1222741) lt!1222715))))

(declare-fun b!3569811 () Bool)

(assert (=> b!3569811 (= e!2208264 (contains!7088 (t!288870 lt!1222741) lt!1222715))))

(assert (= (and d!1052075 res!1439529) b!3569810))

(assert (= (and b!3569810 (not res!1439530)) b!3569811))

(assert (=> d!1052075 m!4056717))

(declare-fun m!4057785 () Bool)

(assert (=> d!1052075 m!4057785))

(declare-fun m!4057787 () Bool)

(assert (=> b!3569811 m!4057787))

(assert (=> b!3568854 d!1052075))

(declare-fun d!1052077 () Bool)

(assert (=> d!1052077 (= (isDefined!5927 lt!1222707) (not (isEmpty!22022 lt!1222707)))))

(declare-fun bs!569115 () Bool)

(assert (= bs!569115 d!1052077))

(declare-fun m!4057789 () Bool)

(assert (=> bs!569115 m!4057789))

(assert (=> b!3568854 d!1052077))

(declare-fun d!1052079 () Bool)

(declare-fun lt!1223228 () Bool)

(assert (=> d!1052079 (= lt!1223228 (set.member lt!1222715 (content!5311 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 tokens!494)))))))))

(declare-fun e!2208265 () Bool)

(assert (=> d!1052079 (= lt!1223228 e!2208265)))

(declare-fun res!1439531 () Bool)

(assert (=> d!1052079 (=> (not res!1439531) (not e!2208265))))

(assert (=> d!1052079 (= res!1439531 (is-Cons!37485 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 tokens!494))))))))

(assert (=> d!1052079 (= (contains!7088 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 tokens!494)))) lt!1222715) lt!1223228)))

(declare-fun b!3569812 () Bool)

(declare-fun e!2208266 () Bool)

(assert (=> b!3569812 (= e!2208265 e!2208266)))

(declare-fun res!1439532 () Bool)

(assert (=> b!3569812 (=> res!1439532 e!2208266)))

(assert (=> b!3569812 (= res!1439532 (= (h!42905 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 tokens!494))))) lt!1222715))))

(declare-fun b!3569813 () Bool)

(assert (=> b!3569813 (= e!2208266 (contains!7088 (t!288870 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 tokens!494))))) lt!1222715))))

(assert (= (and d!1052079 res!1439531) b!3569812))

(assert (= (and b!3569812 (not res!1439532)) b!3569813))

(assert (=> d!1052079 m!4056261))

(declare-fun m!4057791 () Bool)

(assert (=> d!1052079 m!4057791))

(declare-fun m!4057793 () Bool)

(assert (=> d!1052079 m!4057793))

(declare-fun m!4057795 () Bool)

(assert (=> b!3569813 m!4057795))

(assert (=> b!3568854 d!1052079))

(declare-fun d!1052081 () Bool)

(declare-fun lt!1223233 () BalanceConc!22392)

(assert (=> d!1052081 (= (list!13748 lt!1223233) (printListTailRec!735 thiss!18206 (dropList!1252 lt!1222727 0) (list!13748 (BalanceConc!22393 Empty!11389))))))

(declare-fun e!2208270 () BalanceConc!22392)

(assert (=> d!1052081 (= lt!1223233 e!2208270)))

(declare-fun c!618643 () Bool)

(assert (=> d!1052081 (= c!618643 (>= 0 (size!28574 lt!1222727)))))

(declare-fun e!2208269 () Bool)

(assert (=> d!1052081 e!2208269))

(declare-fun res!1439533 () Bool)

(assert (=> d!1052081 (=> (not res!1439533) (not e!2208269))))

(assert (=> d!1052081 (= res!1439533 (>= 0 0))))

(assert (=> d!1052081 (= (printTailRec!1591 thiss!18206 lt!1222727 0 (BalanceConc!22393 Empty!11389)) lt!1223233)))

(declare-fun b!3569814 () Bool)

(assert (=> b!3569814 (= e!2208269 (<= 0 (size!28574 lt!1222727)))))

(declare-fun b!3569815 () Bool)

(assert (=> b!3569815 (= e!2208270 (BalanceConc!22393 Empty!11389))))

(declare-fun b!3569816 () Bool)

(assert (=> b!3569816 (= e!2208270 (printTailRec!1591 thiss!18206 lt!1222727 (+ 0 1) (++!9320 (BalanceConc!22393 Empty!11389) (charsOf!3521 (apply!9002 lt!1222727 0)))))))

(declare-fun lt!1223232 () List!37611)

(assert (=> b!3569816 (= lt!1223232 (list!13751 lt!1222727))))

(declare-fun lt!1223234 () Unit!53462)

(assert (=> b!3569816 (= lt!1223234 (lemmaDropApply!1210 lt!1223232 0))))

(assert (=> b!3569816 (= (head!7436 (drop!2072 lt!1223232 0)) (apply!9006 lt!1223232 0))))

(declare-fun lt!1223235 () Unit!53462)

(assert (=> b!3569816 (= lt!1223235 lt!1223234)))

(declare-fun lt!1223236 () List!37611)

(assert (=> b!3569816 (= lt!1223236 (list!13751 lt!1222727))))

(declare-fun lt!1223230 () Unit!53462)

(assert (=> b!3569816 (= lt!1223230 (lemmaDropTail!1094 lt!1223236 0))))

(assert (=> b!3569816 (= (tail!5527 (drop!2072 lt!1223236 0)) (drop!2072 lt!1223236 (+ 0 1)))))

(declare-fun lt!1223231 () Unit!53462)

(assert (=> b!3569816 (= lt!1223231 lt!1223230)))

(assert (= (and d!1052081 res!1439533) b!3569814))

(assert (= (and d!1052081 c!618643) b!3569815))

(assert (= (and d!1052081 (not c!618643)) b!3569816))

(declare-fun m!4057807 () Bool)

(assert (=> d!1052081 m!4057807))

(assert (=> d!1052081 m!4057239))

(declare-fun m!4057813 () Bool)

(assert (=> d!1052081 m!4057813))

(declare-fun m!4057815 () Bool)

(assert (=> d!1052081 m!4057815))

(assert (=> d!1052081 m!4057807))

(assert (=> d!1052081 m!4057239))

(declare-fun m!4057819 () Bool)

(assert (=> d!1052081 m!4057819))

(assert (=> b!3569814 m!4057815))

(declare-fun m!4057823 () Bool)

(assert (=> b!3569816 m!4057823))

(declare-fun m!4057827 () Bool)

(assert (=> b!3569816 m!4057827))

(declare-fun m!4057829 () Bool)

(assert (=> b!3569816 m!4057829))

(declare-fun m!4057831 () Bool)

(assert (=> b!3569816 m!4057831))

(declare-fun m!4057833 () Bool)

(assert (=> b!3569816 m!4057833))

(declare-fun m!4057835 () Bool)

(assert (=> b!3569816 m!4057835))

(declare-fun m!4057837 () Bool)

(assert (=> b!3569816 m!4057837))

(declare-fun m!4057839 () Bool)

(assert (=> b!3569816 m!4057839))

(assert (=> b!3569816 m!4057839))

(declare-fun m!4057841 () Bool)

(assert (=> b!3569816 m!4057841))

(assert (=> b!3569816 m!4057831))

(assert (=> b!3569816 m!4057781))

(assert (=> b!3569816 m!4057841))

(declare-fun m!4057843 () Bool)

(assert (=> b!3569816 m!4057843))

(assert (=> b!3569816 m!4057837))

(declare-fun m!4057845 () Bool)

(assert (=> b!3569816 m!4057845))

(assert (=> b!3569816 m!4057829))

(declare-fun m!4057847 () Bool)

(assert (=> b!3569816 m!4057847))

(assert (=> b!3568854 d!1052081))

(declare-fun b!3569832 () Bool)

(declare-fun res!1439550 () Bool)

(declare-fun e!2208275 () Bool)

(assert (=> b!3569832 (=> (not res!1439550) (not e!2208275))))

(declare-fun lt!1223243 () Option!7684)

(assert (=> b!3569832 (= res!1439550 (matchR!4850 (regex!5507 (rule!8197 (_1!21829 (get!12063 lt!1223243)))) (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223243))))))))

(declare-fun b!3569833 () Bool)

(declare-fun e!2208277 () Option!7684)

(declare-fun lt!1223245 () Option!7684)

(declare-fun lt!1223247 () Option!7684)

(assert (=> b!3569833 (= e!2208277 (ite (and (is-None!7683 lt!1223245) (is-None!7683 lt!1223247)) None!7683 (ite (is-None!7683 lt!1223247) lt!1223245 (ite (is-None!7683 lt!1223245) lt!1223247 (ite (>= (size!28572 (_1!21829 (v!37281 lt!1223245))) (size!28572 (_1!21829 (v!37281 lt!1223247)))) lt!1223245 lt!1223247)))))))

(declare-fun call!258735 () Option!7684)

(assert (=> b!3569833 (= lt!1223245 call!258735)))

(assert (=> b!3569833 (= lt!1223247 (maxPrefix!2636 thiss!18206 (t!288871 rules!2135) lt!1222749))))

(declare-fun b!3569834 () Bool)

(declare-fun res!1439546 () Bool)

(assert (=> b!3569834 (=> (not res!1439546) (not e!2208275))))

(assert (=> b!3569834 (= res!1439546 (= (++!9318 (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223243)))) (_2!21829 (get!12063 lt!1223243))) lt!1222749))))

(declare-fun b!3569835 () Bool)

(declare-fun e!2208276 () Bool)

(assert (=> b!3569835 (= e!2208276 e!2208275)))

(declare-fun res!1439548 () Bool)

(assert (=> b!3569835 (=> (not res!1439548) (not e!2208275))))

(assert (=> b!3569835 (= res!1439548 (isDefined!5928 lt!1223243))))

(declare-fun b!3569836 () Bool)

(declare-fun res!1439547 () Bool)

(assert (=> b!3569836 (=> (not res!1439547) (not e!2208275))))

(assert (=> b!3569836 (= res!1439547 (= (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223243)))) (originalCharacters!6221 (_1!21829 (get!12063 lt!1223243)))))))

(declare-fun b!3569837 () Bool)

(declare-fun res!1439549 () Bool)

(assert (=> b!3569837 (=> (not res!1439549) (not e!2208275))))

(assert (=> b!3569837 (= res!1439549 (= (value!177411 (_1!21829 (get!12063 lt!1223243))) (apply!9003 (transformation!5507 (rule!8197 (_1!21829 (get!12063 lt!1223243)))) (seqFromList!4068 (originalCharacters!6221 (_1!21829 (get!12063 lt!1223243)))))))))

(declare-fun bm!258730 () Bool)

(assert (=> bm!258730 (= call!258735 (maxPrefixOneRule!1803 thiss!18206 (h!42906 rules!2135) lt!1222749))))

(declare-fun b!3569831 () Bool)

(declare-fun res!1439544 () Bool)

(assert (=> b!3569831 (=> (not res!1439544) (not e!2208275))))

(assert (=> b!3569831 (= res!1439544 (< (size!28573 (_2!21829 (get!12063 lt!1223243))) (size!28573 lt!1222749)))))

(declare-fun d!1052087 () Bool)

(assert (=> d!1052087 e!2208276))

(declare-fun res!1439545 () Bool)

(assert (=> d!1052087 (=> res!1439545 e!2208276)))

(assert (=> d!1052087 (= res!1439545 (isEmpty!22019 lt!1223243))))

(assert (=> d!1052087 (= lt!1223243 e!2208277)))

(declare-fun c!618646 () Bool)

(assert (=> d!1052087 (= c!618646 (and (is-Cons!37486 rules!2135) (is-Nil!37486 (t!288871 rules!2135))))))

(declare-fun lt!1223246 () Unit!53462)

(declare-fun lt!1223244 () Unit!53462)

(assert (=> d!1052087 (= lt!1223246 lt!1223244)))

(assert (=> d!1052087 (isPrefix!2891 lt!1222749 lt!1222749)))

(assert (=> d!1052087 (= lt!1223244 (lemmaIsPrefixRefl!1850 lt!1222749 lt!1222749))))

(assert (=> d!1052087 (rulesValidInductive!1900 thiss!18206 rules!2135)))

(assert (=> d!1052087 (= (maxPrefix!2636 thiss!18206 rules!2135 lt!1222749) lt!1223243)))

(declare-fun b!3569838 () Bool)

(assert (=> b!3569838 (= e!2208277 call!258735)))

(declare-fun b!3569839 () Bool)

(assert (=> b!3569839 (= e!2208275 (contains!7087 rules!2135 (rule!8197 (_1!21829 (get!12063 lt!1223243)))))))

(assert (= (and d!1052087 c!618646) b!3569838))

(assert (= (and d!1052087 (not c!618646)) b!3569833))

(assert (= (or b!3569838 b!3569833) bm!258730))

(assert (= (and d!1052087 (not res!1439545)) b!3569835))

(assert (= (and b!3569835 res!1439548) b!3569836))

(assert (= (and b!3569836 res!1439547) b!3569831))

(assert (= (and b!3569831 res!1439544) b!3569834))

(assert (= (and b!3569834 res!1439546) b!3569837))

(assert (= (and b!3569837 res!1439549) b!3569832))

(assert (= (and b!3569832 res!1439550) b!3569839))

(declare-fun m!4057859 () Bool)

(assert (=> d!1052087 m!4057859))

(declare-fun m!4057861 () Bool)

(assert (=> d!1052087 m!4057861))

(declare-fun m!4057863 () Bool)

(assert (=> d!1052087 m!4057863))

(assert (=> d!1052087 m!4057295))

(declare-fun m!4057866 () Bool)

(assert (=> b!3569835 m!4057866))

(declare-fun m!4057869 () Bool)

(assert (=> b!3569836 m!4057869))

(declare-fun m!4057873 () Bool)

(assert (=> b!3569836 m!4057873))

(assert (=> b!3569836 m!4057873))

(declare-fun m!4057875 () Bool)

(assert (=> b!3569836 m!4057875))

(assert (=> b!3569839 m!4057869))

(declare-fun m!4057877 () Bool)

(assert (=> b!3569839 m!4057877))

(assert (=> b!3569834 m!4057869))

(assert (=> b!3569834 m!4057873))

(assert (=> b!3569834 m!4057873))

(assert (=> b!3569834 m!4057875))

(assert (=> b!3569834 m!4057875))

(declare-fun m!4057883 () Bool)

(assert (=> b!3569834 m!4057883))

(assert (=> b!3569832 m!4057869))

(assert (=> b!3569832 m!4057873))

(assert (=> b!3569832 m!4057873))

(assert (=> b!3569832 m!4057875))

(assert (=> b!3569832 m!4057875))

(declare-fun m!4057897 () Bool)

(assert (=> b!3569832 m!4057897))

(assert (=> b!3569837 m!4057869))

(declare-fun m!4057899 () Bool)

(assert (=> b!3569837 m!4057899))

(assert (=> b!3569837 m!4057899))

(declare-fun m!4057903 () Bool)

(assert (=> b!3569837 m!4057903))

(assert (=> b!3569831 m!4057869))

(declare-fun m!4057905 () Bool)

(assert (=> b!3569831 m!4057905))

(declare-fun m!4057907 () Bool)

(assert (=> b!3569831 m!4057907))

(declare-fun m!4057909 () Bool)

(assert (=> bm!258730 m!4057909))

(declare-fun m!4057911 () Bool)

(assert (=> b!3569833 m!4057911))

(assert (=> b!3568854 d!1052087))

(declare-fun d!1052093 () Bool)

(declare-fun lt!1223248 () Bool)

(assert (=> d!1052093 (= lt!1223248 (set.member (rule!8197 separatorToken!241) (content!5312 rules!2135)))))

(declare-fun e!2208282 () Bool)

(assert (=> d!1052093 (= lt!1223248 e!2208282)))

(declare-fun res!1439551 () Bool)

(assert (=> d!1052093 (=> (not res!1439551) (not e!2208282))))

(assert (=> d!1052093 (= res!1439551 (is-Cons!37486 rules!2135))))

(assert (=> d!1052093 (= (contains!7087 rules!2135 (rule!8197 separatorToken!241)) lt!1223248)))

(declare-fun b!3569848 () Bool)

(declare-fun e!2208283 () Bool)

(assert (=> b!3569848 (= e!2208282 e!2208283)))

(declare-fun res!1439552 () Bool)

(assert (=> b!3569848 (=> res!1439552 e!2208283)))

(assert (=> b!3569848 (= res!1439552 (= (h!42906 rules!2135) (rule!8197 separatorToken!241)))))

(declare-fun b!3569849 () Bool)

(assert (=> b!3569849 (= e!2208283 (contains!7087 (t!288871 rules!2135) (rule!8197 separatorToken!241)))))

(assert (= (and d!1052093 res!1439551) b!3569848))

(assert (= (and b!3569848 (not res!1439552)) b!3569849))

(assert (=> d!1052093 m!4056723))

(declare-fun m!4057913 () Bool)

(assert (=> d!1052093 m!4057913))

(declare-fun m!4057915 () Bool)

(assert (=> b!3569849 m!4057915))

(assert (=> b!3568854 d!1052093))

(declare-fun b!3569850 () Bool)

(declare-fun e!2208287 () List!37609)

(declare-fun e!2208284 () List!37609)

(assert (=> b!3569850 (= e!2208287 e!2208284)))

(declare-fun c!618652 () Bool)

(assert (=> b!3569850 (= c!618652 (is-Union!10266 (regex!5507 (rule!8197 separatorToken!241))))))

(declare-fun b!3569851 () Bool)

(declare-fun call!258743 () List!37609)

(assert (=> b!3569851 (= e!2208287 call!258743)))

(declare-fun b!3569852 () Bool)

(declare-fun e!2208286 () List!37609)

(assert (=> b!3569852 (= e!2208286 (Cons!37485 (c!618472 (regex!5507 (rule!8197 separatorToken!241))) Nil!37485))))

(declare-fun bm!258735 () Bool)

(declare-fun call!258741 () List!37609)

(assert (=> bm!258735 (= call!258741 call!258743)))

(declare-fun b!3569853 () Bool)

(declare-fun e!2208285 () List!37609)

(assert (=> b!3569853 (= e!2208285 Nil!37485)))

(declare-fun bm!258736 () Bool)

(declare-fun c!618651 () Bool)

(assert (=> bm!258736 (= call!258743 (usedCharacters!741 (ite c!618651 (reg!10595 (regex!5507 (rule!8197 separatorToken!241))) (ite c!618652 (regTwo!21045 (regex!5507 (rule!8197 separatorToken!241))) (regOne!21044 (regex!5507 (rule!8197 separatorToken!241)))))))))

(declare-fun bm!258737 () Bool)

(declare-fun call!258742 () List!37609)

(assert (=> bm!258737 (= call!258742 (usedCharacters!741 (ite c!618652 (regOne!21045 (regex!5507 (rule!8197 separatorToken!241))) (regTwo!21044 (regex!5507 (rule!8197 separatorToken!241))))))))

(declare-fun b!3569854 () Bool)

(declare-fun call!258740 () List!37609)

(assert (=> b!3569854 (= e!2208284 call!258740)))

(declare-fun b!3569855 () Bool)

(assert (=> b!3569855 (= e!2208285 e!2208286)))

(declare-fun c!618653 () Bool)

(assert (=> b!3569855 (= c!618653 (is-ElementMatch!10266 (regex!5507 (rule!8197 separatorToken!241))))))

(declare-fun b!3569856 () Bool)

(assert (=> b!3569856 (= e!2208284 call!258740)))

(declare-fun d!1052095 () Bool)

(declare-fun c!618654 () Bool)

(assert (=> d!1052095 (= c!618654 (or (is-EmptyExpr!10266 (regex!5507 (rule!8197 separatorToken!241))) (is-EmptyLang!10266 (regex!5507 (rule!8197 separatorToken!241)))))))

(assert (=> d!1052095 (= (usedCharacters!741 (regex!5507 (rule!8197 separatorToken!241))) e!2208285)))

(declare-fun b!3569857 () Bool)

(assert (=> b!3569857 (= c!618651 (is-Star!10266 (regex!5507 (rule!8197 separatorToken!241))))))

(assert (=> b!3569857 (= e!2208286 e!2208287)))

(declare-fun bm!258738 () Bool)

(assert (=> bm!258738 (= call!258740 (++!9318 (ite c!618652 call!258742 call!258741) (ite c!618652 call!258741 call!258742)))))

(assert (= (and d!1052095 c!618654) b!3569853))

(assert (= (and d!1052095 (not c!618654)) b!3569855))

(assert (= (and b!3569855 c!618653) b!3569852))

(assert (= (and b!3569855 (not c!618653)) b!3569857))

(assert (= (and b!3569857 c!618651) b!3569851))

(assert (= (and b!3569857 (not c!618651)) b!3569850))

(assert (= (and b!3569850 c!618652) b!3569854))

(assert (= (and b!3569850 (not c!618652)) b!3569856))

(assert (= (or b!3569854 b!3569856) bm!258735))

(assert (= (or b!3569854 b!3569856) bm!258737))

(assert (= (or b!3569854 b!3569856) bm!258738))

(assert (= (or b!3569851 bm!258735) bm!258736))

(declare-fun m!4057923 () Bool)

(assert (=> bm!258736 m!4057923))

(declare-fun m!4057925 () Bool)

(assert (=> bm!258737 m!4057925))

(declare-fun m!4057927 () Bool)

(assert (=> bm!258738 m!4057927))

(assert (=> b!3568854 d!1052095))

(declare-fun d!1052099 () Bool)

(declare-fun lt!1223250 () Bool)

(assert (=> d!1052099 (= lt!1223250 (set.member lt!1222703 (content!5311 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))))

(declare-fun e!2208288 () Bool)

(assert (=> d!1052099 (= lt!1223250 e!2208288)))

(declare-fun res!1439553 () Bool)

(assert (=> d!1052099 (=> (not res!1439553) (not e!2208288))))

(assert (=> d!1052099 (= res!1439553 (is-Cons!37485 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))))))

(assert (=> d!1052099 (= (contains!7088 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) lt!1222703) lt!1223250)))

(declare-fun b!3569858 () Bool)

(declare-fun e!2208289 () Bool)

(assert (=> b!3569858 (= e!2208288 e!2208289)))

(declare-fun res!1439554 () Bool)

(assert (=> b!3569858 (=> res!1439554 e!2208289)))

(assert (=> b!3569858 (= res!1439554 (= (h!42905 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) lt!1222703))))

(declare-fun b!3569859 () Bool)

(assert (=> b!3569859 (= e!2208289 (contains!7088 (t!288870 (usedCharacters!741 (regex!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) lt!1222703))))

(assert (= (and d!1052099 res!1439553) b!3569858))

(assert (= (and b!3569858 (not res!1439554)) b!3569859))

(assert (=> d!1052099 m!4056255))

(declare-fun m!4057931 () Bool)

(assert (=> d!1052099 m!4057931))

(declare-fun m!4057933 () Bool)

(assert (=> d!1052099 m!4057933))

(declare-fun m!4057935 () Bool)

(assert (=> b!3569859 m!4057935))

(assert (=> b!3568854 d!1052099))

(declare-fun d!1052103 () Bool)

(declare-fun lt!1223251 () Int)

(assert (=> d!1052103 (= lt!1223251 (size!28579 (list!13751 (_1!21828 lt!1222726))))))

(assert (=> d!1052103 (= lt!1223251 (size!28580 (c!618474 (_1!21828 lt!1222726))))))

(assert (=> d!1052103 (= (size!28574 (_1!21828 lt!1222726)) lt!1223251)))

(declare-fun bs!569118 () Bool)

(assert (= bs!569118 d!1052103))

(assert (=> bs!569118 m!4056963))

(assert (=> bs!569118 m!4056963))

(declare-fun m!4057937 () Bool)

(assert (=> bs!569118 m!4057937))

(declare-fun m!4057939 () Bool)

(assert (=> bs!569118 m!4057939))

(assert (=> b!3568854 d!1052103))

(declare-fun d!1052105 () Bool)

(declare-fun e!2208292 () Bool)

(assert (=> d!1052105 e!2208292))

(declare-fun res!1439556 () Bool)

(assert (=> d!1052105 (=> res!1439556 e!2208292)))

(declare-fun lt!1223263 () Option!7684)

(assert (=> d!1052105 (= res!1439556 (isEmpty!22019 lt!1223263))))

(declare-fun e!2208293 () Option!7684)

(assert (=> d!1052105 (= lt!1223263 e!2208293)))

(declare-fun c!618656 () Bool)

(declare-fun lt!1223262 () tuple2!37398)

(assert (=> d!1052105 (= c!618656 (isEmpty!22011 (_1!21833 lt!1223262)))))

(assert (=> d!1052105 (= lt!1223262 (findLongestMatch!871 (regex!5507 (rule!8197 (h!42907 tokens!494))) lt!1222708))))

(assert (=> d!1052105 (ruleValid!1791 thiss!18206 (rule!8197 (h!42907 tokens!494)))))

(assert (=> d!1052105 (= (maxPrefixOneRule!1803 thiss!18206 (rule!8197 (h!42907 tokens!494)) lt!1222708) lt!1223263)))

(declare-fun b!3569863 () Bool)

(declare-fun res!1439558 () Bool)

(declare-fun e!2208294 () Bool)

(assert (=> b!3569863 (=> (not res!1439558) (not e!2208294))))

(assert (=> b!3569863 (= res!1439558 (= (rule!8197 (_1!21829 (get!12063 lt!1223263))) (rule!8197 (h!42907 tokens!494))))))

(declare-fun b!3569864 () Bool)

(assert (=> b!3569864 (= e!2208293 (Some!7683 (tuple2!37391 (Token!10381 (apply!9003 (transformation!5507 (rule!8197 (h!42907 tokens!494))) (seqFromList!4068 (_1!21833 lt!1223262))) (rule!8197 (h!42907 tokens!494)) (size!28578 (seqFromList!4068 (_1!21833 lt!1223262))) (_1!21833 lt!1223262)) (_2!21833 lt!1223262))))))

(declare-fun lt!1223261 () Unit!53462)

(assert (=> b!3569864 (= lt!1223261 (longestMatchIsAcceptedByMatchOrIsEmpty!929 (regex!5507 (rule!8197 (h!42907 tokens!494))) lt!1222708))))

(declare-fun res!1439561 () Bool)

(assert (=> b!3569864 (= res!1439561 (isEmpty!22011 (_1!21833 (findLongestMatchInner!956 (regex!5507 (rule!8197 (h!42907 tokens!494))) Nil!37485 (size!28573 Nil!37485) lt!1222708 lt!1222708 (size!28573 lt!1222708)))))))

(declare-fun e!2208295 () Bool)

(assert (=> b!3569864 (=> res!1439561 e!2208295)))

(assert (=> b!3569864 e!2208295))

(declare-fun lt!1223260 () Unit!53462)

(assert (=> b!3569864 (= lt!1223260 lt!1223261)))

(declare-fun lt!1223259 () Unit!53462)

(assert (=> b!3569864 (= lt!1223259 (lemmaSemiInverse!1308 (transformation!5507 (rule!8197 (h!42907 tokens!494))) (seqFromList!4068 (_1!21833 lt!1223262))))))

(declare-fun b!3569865 () Bool)

(declare-fun res!1439559 () Bool)

(assert (=> b!3569865 (=> (not res!1439559) (not e!2208294))))

(assert (=> b!3569865 (= res!1439559 (= (++!9318 (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223263)))) (_2!21829 (get!12063 lt!1223263))) lt!1222708))))

(declare-fun b!3569866 () Bool)

(assert (=> b!3569866 (= e!2208295 (matchR!4850 (regex!5507 (rule!8197 (h!42907 tokens!494))) (_1!21833 (findLongestMatchInner!956 (regex!5507 (rule!8197 (h!42907 tokens!494))) Nil!37485 (size!28573 Nil!37485) lt!1222708 lt!1222708 (size!28573 lt!1222708)))))))

(declare-fun b!3569867 () Bool)

(assert (=> b!3569867 (= e!2208292 e!2208294)))

(declare-fun res!1439562 () Bool)

(assert (=> b!3569867 (=> (not res!1439562) (not e!2208294))))

(assert (=> b!3569867 (= res!1439562 (matchR!4850 (regex!5507 (rule!8197 (h!42907 tokens!494))) (list!13748 (charsOf!3521 (_1!21829 (get!12063 lt!1223263))))))))

(declare-fun b!3569868 () Bool)

(assert (=> b!3569868 (= e!2208293 None!7683)))

(declare-fun b!3569869 () Bool)

(declare-fun res!1439557 () Bool)

(assert (=> b!3569869 (=> (not res!1439557) (not e!2208294))))

(assert (=> b!3569869 (= res!1439557 (< (size!28573 (_2!21829 (get!12063 lt!1223263))) (size!28573 lt!1222708)))))

(declare-fun b!3569870 () Bool)

(assert (=> b!3569870 (= e!2208294 (= (size!28572 (_1!21829 (get!12063 lt!1223263))) (size!28573 (originalCharacters!6221 (_1!21829 (get!12063 lt!1223263))))))))

(declare-fun b!3569871 () Bool)

(declare-fun res!1439560 () Bool)

(assert (=> b!3569871 (=> (not res!1439560) (not e!2208294))))

(assert (=> b!3569871 (= res!1439560 (= (value!177411 (_1!21829 (get!12063 lt!1223263))) (apply!9003 (transformation!5507 (rule!8197 (_1!21829 (get!12063 lt!1223263)))) (seqFromList!4068 (originalCharacters!6221 (_1!21829 (get!12063 lt!1223263)))))))))

(assert (= (and d!1052105 c!618656) b!3569868))

(assert (= (and d!1052105 (not c!618656)) b!3569864))

(assert (= (and b!3569864 (not res!1439561)) b!3569866))

(assert (= (and d!1052105 (not res!1439556)) b!3569867))

(assert (= (and b!3569867 res!1439562) b!3569865))

(assert (= (and b!3569865 res!1439559) b!3569869))

(assert (= (and b!3569869 res!1439557) b!3569863))

(assert (= (and b!3569863 res!1439558) b!3569871))

(assert (= (and b!3569871 res!1439560) b!3569870))

(declare-fun m!4057979 () Bool)

(assert (=> b!3569869 m!4057979))

(declare-fun m!4057981 () Bool)

(assert (=> b!3569869 m!4057981))

(assert (=> b!3569869 m!4056323))

(assert (=> b!3569864 m!4057547))

(assert (=> b!3569864 m!4056323))

(declare-fun m!4057983 () Bool)

(assert (=> b!3569864 m!4057983))

(declare-fun m!4057985 () Bool)

(assert (=> b!3569864 m!4057985))

(declare-fun m!4057987 () Bool)

(assert (=> b!3569864 m!4057987))

(assert (=> b!3569864 m!4056323))

(assert (=> b!3569864 m!4057547))

(assert (=> b!3569864 m!4057985))

(declare-fun m!4057989 () Bool)

(assert (=> b!3569864 m!4057989))

(declare-fun m!4057991 () Bool)

(assert (=> b!3569864 m!4057991))

(assert (=> b!3569864 m!4057985))

(declare-fun m!4057993 () Bool)

(assert (=> b!3569864 m!4057993))

(assert (=> b!3569864 m!4057985))

(declare-fun m!4057995 () Bool)

(assert (=> b!3569864 m!4057995))

(assert (=> b!3569867 m!4057979))

(declare-fun m!4057997 () Bool)

(assert (=> b!3569867 m!4057997))

(assert (=> b!3569867 m!4057997))

(declare-fun m!4057999 () Bool)

(assert (=> b!3569867 m!4057999))

(assert (=> b!3569867 m!4057999))

(declare-fun m!4058001 () Bool)

(assert (=> b!3569867 m!4058001))

(assert (=> b!3569866 m!4057547))

(assert (=> b!3569866 m!4056323))

(assert (=> b!3569866 m!4057547))

(assert (=> b!3569866 m!4056323))

(assert (=> b!3569866 m!4057983))

(declare-fun m!4058003 () Bool)

(assert (=> b!3569866 m!4058003))

(assert (=> b!3569871 m!4057979))

(declare-fun m!4058005 () Bool)

(assert (=> b!3569871 m!4058005))

(assert (=> b!3569871 m!4058005))

(declare-fun m!4058007 () Bool)

(assert (=> b!3569871 m!4058007))

(assert (=> b!3569865 m!4057979))

(assert (=> b!3569865 m!4057997))

(assert (=> b!3569865 m!4057997))

(assert (=> b!3569865 m!4057999))

(assert (=> b!3569865 m!4057999))

(declare-fun m!4058009 () Bool)

(assert (=> b!3569865 m!4058009))

(declare-fun m!4058011 () Bool)

(assert (=> d!1052105 m!4058011))

(declare-fun m!4058013 () Bool)

(assert (=> d!1052105 m!4058013))

(declare-fun m!4058015 () Bool)

(assert (=> d!1052105 m!4058015))

(declare-fun m!4058017 () Bool)

(assert (=> d!1052105 m!4058017))

(assert (=> b!3569863 m!4057979))

(assert (=> b!3569870 m!4057979))

(declare-fun m!4058019 () Bool)

(assert (=> b!3569870 m!4058019))

(assert (=> b!3568854 d!1052105))

(declare-fun b!3569883 () Bool)

(declare-fun e!2208302 () Option!7683)

(assert (=> b!3569883 (= e!2208302 (Some!7682 (h!42906 rules!2135)))))

(declare-fun b!3569884 () Bool)

(declare-fun e!2208303 () Bool)

(declare-fun lt!1223270 () Option!7683)

(assert (=> b!3569884 (= e!2208303 (= (tag!6163 (get!12062 lt!1223270)) (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(declare-fun b!3569885 () Bool)

(declare-fun e!2208304 () Bool)

(assert (=> b!3569885 (= e!2208304 e!2208303)))

(declare-fun res!1439572 () Bool)

(assert (=> b!3569885 (=> (not res!1439572) (not e!2208303))))

(assert (=> b!3569885 (= res!1439572 (contains!7087 rules!2135 (get!12062 lt!1223270)))))

(declare-fun b!3569886 () Bool)

(declare-fun e!2208305 () Option!7683)

(assert (=> b!3569886 (= e!2208302 e!2208305)))

(declare-fun c!618659 () Bool)

(assert (=> b!3569886 (= c!618659 (and (is-Cons!37486 rules!2135) (not (= (tag!6163 (h!42906 rules!2135)) (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494))))))))))

(declare-fun b!3569887 () Bool)

(assert (=> b!3569887 (= e!2208305 None!7682)))

(declare-fun d!1052111 () Bool)

(assert (=> d!1052111 e!2208304))

(declare-fun res!1439573 () Bool)

(assert (=> d!1052111 (=> res!1439573 e!2208304)))

(assert (=> d!1052111 (= res!1439573 (isEmpty!22022 lt!1223270))))

(assert (=> d!1052111 (= lt!1223270 e!2208302)))

(declare-fun c!618658 () Bool)

(assert (=> d!1052111 (= c!618658 (and (is-Cons!37486 rules!2135) (= (tag!6163 (h!42906 rules!2135)) (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494)))))))))

(assert (=> d!1052111 (rulesInvariant!4493 thiss!18206 rules!2135)))

(assert (=> d!1052111 (= (getRuleFromTag!1150 thiss!18206 rules!2135 (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494))))) lt!1223270)))

(declare-fun b!3569888 () Bool)

(declare-fun lt!1223272 () Unit!53462)

(declare-fun lt!1223271 () Unit!53462)

(assert (=> b!3569888 (= lt!1223272 lt!1223271)))

(assert (=> b!3569888 (rulesInvariant!4493 thiss!18206 (t!288871 rules!2135))))

(assert (=> b!3569888 (= lt!1223271 (lemmaInvariantOnRulesThenOnTail!479 thiss!18206 (h!42906 rules!2135) (t!288871 rules!2135)))))

(assert (=> b!3569888 (= e!2208305 (getRuleFromTag!1150 thiss!18206 (t!288871 rules!2135) (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(assert (= (and d!1052111 c!618658) b!3569883))

(assert (= (and d!1052111 (not c!618658)) b!3569886))

(assert (= (and b!3569886 c!618659) b!3569888))

(assert (= (and b!3569886 (not c!618659)) b!3569887))

(assert (= (and d!1052111 (not res!1439573)) b!3569885))

(assert (= (and b!3569885 res!1439572) b!3569884))

(declare-fun m!4058023 () Bool)

(assert (=> b!3569884 m!4058023))

(assert (=> b!3569885 m!4058023))

(assert (=> b!3569885 m!4058023))

(declare-fun m!4058027 () Bool)

(assert (=> b!3569885 m!4058027))

(declare-fun m!4058031 () Bool)

(assert (=> d!1052111 m!4058031))

(assert (=> d!1052111 m!4056397))

(assert (=> b!3569888 m!4057707))

(assert (=> b!3569888 m!4057709))

(declare-fun m!4058037 () Bool)

(assert (=> b!3569888 m!4058037))

(assert (=> b!3568854 d!1052111))

(declare-fun d!1052113 () Bool)

(assert (=> d!1052113 (dynLambda!16091 lambda!123410 (h!42907 (t!288872 tokens!494)))))

(declare-fun lt!1223273 () Unit!53462)

(assert (=> d!1052113 (= lt!1223273 (choose!20741 tokens!494 lambda!123410 (h!42907 (t!288872 tokens!494))))))

(declare-fun e!2208306 () Bool)

(assert (=> d!1052113 e!2208306))

(declare-fun res!1439574 () Bool)

(assert (=> d!1052113 (=> (not res!1439574) (not e!2208306))))

(assert (=> d!1052113 (= res!1439574 (forall!8105 tokens!494 lambda!123410))))

(assert (=> d!1052113 (= (forallContained!1454 tokens!494 lambda!123410 (h!42907 (t!288872 tokens!494))) lt!1223273)))

(declare-fun b!3569889 () Bool)

(assert (=> b!3569889 (= e!2208306 (contains!7091 tokens!494 (h!42907 (t!288872 tokens!494))))))

(assert (= (and d!1052113 res!1439574) b!3569889))

(declare-fun b_lambda!105167 () Bool)

(assert (=> (not b_lambda!105167) (not d!1052113)))

(declare-fun m!4058051 () Bool)

(assert (=> d!1052113 m!4058051))

(declare-fun m!4058055 () Bool)

(assert (=> d!1052113 m!4058055))

(assert (=> d!1052113 m!4056417))

(assert (=> b!3569889 m!4057535))

(assert (=> b!3568855 d!1052113))

(declare-fun d!1052115 () Bool)

(assert (=> d!1052115 (dynLambda!16091 lambda!123410 (h!42907 tokens!494))))

(declare-fun lt!1223274 () Unit!53462)

(assert (=> d!1052115 (= lt!1223274 (choose!20741 tokens!494 lambda!123410 (h!42907 tokens!494)))))

(declare-fun e!2208307 () Bool)

(assert (=> d!1052115 e!2208307))

(declare-fun res!1439575 () Bool)

(assert (=> d!1052115 (=> (not res!1439575) (not e!2208307))))

(assert (=> d!1052115 (= res!1439575 (forall!8105 tokens!494 lambda!123410))))

(assert (=> d!1052115 (= (forallContained!1454 tokens!494 lambda!123410 (h!42907 tokens!494)) lt!1223274)))

(declare-fun b!3569890 () Bool)

(assert (=> b!3569890 (= e!2208307 (contains!7091 tokens!494 (h!42907 tokens!494)))))

(assert (= (and d!1052115 res!1439575) b!3569890))

(declare-fun b_lambda!105169 () Bool)

(assert (=> (not b_lambda!105169) (not d!1052115)))

(assert (=> d!1052115 m!4057083))

(declare-fun m!4058073 () Bool)

(assert (=> d!1052115 m!4058073))

(assert (=> d!1052115 m!4056417))

(declare-fun m!4058075 () Bool)

(assert (=> b!3569890 m!4058075))

(assert (=> b!3568855 d!1052115))

(declare-fun b!3569892 () Bool)

(declare-fun e!2208308 () List!37609)

(assert (=> b!3569892 (= e!2208308 (Cons!37485 (h!42905 lt!1222708) (++!9318 (t!288870 lt!1222708) lt!1222747)))))

(declare-fun b!3569894 () Bool)

(declare-fun e!2208309 () Bool)

(declare-fun lt!1223275 () List!37609)

(assert (=> b!3569894 (= e!2208309 (or (not (= lt!1222747 Nil!37485)) (= lt!1223275 lt!1222708)))))

(declare-fun b!3569893 () Bool)

(declare-fun res!1439577 () Bool)

(assert (=> b!3569893 (=> (not res!1439577) (not e!2208309))))

(assert (=> b!3569893 (= res!1439577 (= (size!28573 lt!1223275) (+ (size!28573 lt!1222708) (size!28573 lt!1222747))))))

(declare-fun b!3569891 () Bool)

(assert (=> b!3569891 (= e!2208308 lt!1222747)))

(declare-fun d!1052117 () Bool)

(assert (=> d!1052117 e!2208309))

(declare-fun res!1439576 () Bool)

(assert (=> d!1052117 (=> (not res!1439576) (not e!2208309))))

(assert (=> d!1052117 (= res!1439576 (= (content!5311 lt!1223275) (set.union (content!5311 lt!1222708) (content!5311 lt!1222747))))))

(assert (=> d!1052117 (= lt!1223275 e!2208308)))

(declare-fun c!618660 () Bool)

(assert (=> d!1052117 (= c!618660 (is-Nil!37485 lt!1222708))))

(assert (=> d!1052117 (= (++!9318 lt!1222708 lt!1222747) lt!1223275)))

(assert (= (and d!1052117 c!618660) b!3569891))

(assert (= (and d!1052117 (not c!618660)) b!3569892))

(assert (= (and d!1052117 res!1439576) b!3569893))

(assert (= (and b!3569893 res!1439577) b!3569894))

(declare-fun m!4058083 () Bool)

(assert (=> b!3569892 m!4058083))

(declare-fun m!4058085 () Bool)

(assert (=> b!3569893 m!4058085))

(assert (=> b!3569893 m!4056323))

(declare-fun m!4058087 () Bool)

(assert (=> b!3569893 m!4058087))

(declare-fun m!4058089 () Bool)

(assert (=> d!1052117 m!4058089))

(assert (=> d!1052117 m!4057055))

(declare-fun m!4058091 () Bool)

(assert (=> d!1052117 m!4058091))

(assert (=> b!3568856 d!1052117))

(declare-fun d!1052123 () Bool)

(assert (=> d!1052123 (= (++!9318 (++!9318 lt!1222708 lt!1222711) lt!1222713) (++!9318 lt!1222708 (++!9318 lt!1222711 lt!1222713)))))

(declare-fun lt!1223289 () Unit!53462)

(declare-fun choose!20749 (List!37609 List!37609 List!37609) Unit!53462)

(assert (=> d!1052123 (= lt!1223289 (choose!20749 lt!1222708 lt!1222711 lt!1222713))))

(assert (=> d!1052123 (= (lemmaConcatAssociativity!2047 lt!1222708 lt!1222711 lt!1222713) lt!1223289)))

(declare-fun bs!569120 () Bool)

(assert (= bs!569120 d!1052123))

(assert (=> bs!569120 m!4056445))

(assert (=> bs!569120 m!4056387))

(assert (=> bs!569120 m!4056389))

(assert (=> bs!569120 m!4056387))

(assert (=> bs!569120 m!4056445))

(declare-fun m!4058135 () Bool)

(assert (=> bs!569120 m!4058135))

(declare-fun m!4058138 () Bool)

(assert (=> bs!569120 m!4058138))

(assert (=> b!3568856 d!1052123))

(declare-fun d!1052131 () Bool)

(assert (=> d!1052131 (= (isEmpty!22011 (_2!21829 lt!1222723)) (is-Nil!37485 (_2!21829 lt!1222723)))))

(assert (=> b!3568878 d!1052131))

(declare-fun d!1052133 () Bool)

(declare-fun lt!1223290 () Bool)

(declare-fun e!2208317 () Bool)

(assert (=> d!1052133 (= lt!1223290 e!2208317)))

(declare-fun res!1439585 () Bool)

(assert (=> d!1052133 (=> (not res!1439585) (not e!2208317))))

(assert (=> d!1052133 (= res!1439585 (= (list!13751 (_1!21828 (lex!2422 thiss!18206 rules!2135 (print!2161 thiss!18206 (singletonSeq!2603 separatorToken!241))))) (list!13751 (singletonSeq!2603 separatorToken!241))))))

(declare-fun e!2208316 () Bool)

(assert (=> d!1052133 (= lt!1223290 e!2208316)))

(declare-fun res!1439584 () Bool)

(assert (=> d!1052133 (=> (not res!1439584) (not e!2208316))))

(declare-fun lt!1223291 () tuple2!37388)

(assert (=> d!1052133 (= res!1439584 (= (size!28574 (_1!21828 lt!1223291)) 1))))

(assert (=> d!1052133 (= lt!1223291 (lex!2422 thiss!18206 rules!2135 (print!2161 thiss!18206 (singletonSeq!2603 separatorToken!241))))))

(assert (=> d!1052133 (not (isEmpty!22010 rules!2135))))

(assert (=> d!1052133 (= (rulesProduceIndividualToken!2588 thiss!18206 rules!2135 separatorToken!241) lt!1223290)))

(declare-fun b!3569903 () Bool)

(declare-fun res!1439586 () Bool)

(assert (=> b!3569903 (=> (not res!1439586) (not e!2208316))))

(assert (=> b!3569903 (= res!1439586 (= (apply!9002 (_1!21828 lt!1223291) 0) separatorToken!241))))

(declare-fun b!3569904 () Bool)

(assert (=> b!3569904 (= e!2208316 (isEmpty!22008 (_2!21828 lt!1223291)))))

(declare-fun b!3569905 () Bool)

(assert (=> b!3569905 (= e!2208317 (isEmpty!22008 (_2!21828 (lex!2422 thiss!18206 rules!2135 (print!2161 thiss!18206 (singletonSeq!2603 separatorToken!241))))))))

(assert (= (and d!1052133 res!1439584) b!3569903))

(assert (= (and b!3569903 res!1439586) b!3569904))

(assert (= (and d!1052133 res!1439585) b!3569905))

(assert (=> d!1052133 m!4056283))

(declare-fun m!4058149 () Bool)

(assert (=> d!1052133 m!4058149))

(declare-fun m!4058151 () Bool)

(assert (=> d!1052133 m!4058151))

(assert (=> d!1052133 m!4056367))

(declare-fun m!4058153 () Bool)

(assert (=> d!1052133 m!4058153))

(declare-fun m!4058155 () Bool)

(assert (=> d!1052133 m!4058155))

(declare-fun m!4058157 () Bool)

(assert (=> d!1052133 m!4058157))

(assert (=> d!1052133 m!4056283))

(assert (=> d!1052133 m!4058153))

(assert (=> d!1052133 m!4056283))

(declare-fun m!4058159 () Bool)

(assert (=> b!3569903 m!4058159))

(declare-fun m!4058161 () Bool)

(assert (=> b!3569904 m!4058161))

(assert (=> b!3569905 m!4056283))

(assert (=> b!3569905 m!4056283))

(assert (=> b!3569905 m!4058153))

(assert (=> b!3569905 m!4058153))

(assert (=> b!3569905 m!4058155))

(declare-fun m!4058163 () Bool)

(assert (=> b!3569905 m!4058163))

(assert (=> b!3568857 d!1052133))

(declare-fun d!1052137 () Bool)

(assert (=> d!1052137 (= (get!12063 lt!1222745) (v!37281 lt!1222745))))

(assert (=> b!3568858 d!1052137))

(declare-fun d!1052139 () Bool)

(declare-fun c!618664 () Bool)

(assert (=> d!1052139 (= c!618664 (is-Cons!37487 tokens!494))))

(declare-fun e!2208320 () List!37609)

(assert (=> d!1052139 (= (printWithSeparatorTokenList!383 thiss!18206 tokens!494 separatorToken!241) e!2208320)))

(declare-fun b!3569910 () Bool)

(assert (=> b!3569910 (= e!2208320 (++!9318 (++!9318 (list!13748 (charsOf!3521 (h!42907 tokens!494))) (list!13748 (charsOf!3521 separatorToken!241))) (printWithSeparatorTokenList!383 thiss!18206 (t!288872 tokens!494) separatorToken!241)))))

(declare-fun b!3569911 () Bool)

(assert (=> b!3569911 (= e!2208320 Nil!37485)))

(assert (= (and d!1052139 c!618664) b!3569910))

(assert (= (and d!1052139 (not c!618664)) b!3569911))

(assert (=> b!3569910 m!4056433))

(assert (=> b!3569910 m!4056413))

(assert (=> b!3569910 m!4056439))

(declare-fun m!4058165 () Bool)

(assert (=> b!3569910 m!4058165))

(assert (=> b!3569910 m!4056411))

(assert (=> b!3569910 m!4056411))

(assert (=> b!3569910 m!4056413))

(assert (=> b!3569910 m!4056429))

(assert (=> b!3569910 m!4056429))

(assert (=> b!3569910 m!4056439))

(assert (=> b!3569910 m!4058165))

(assert (=> b!3569910 m!4056433))

(declare-fun m!4058167 () Bool)

(assert (=> b!3569910 m!4058167))

(assert (=> b!3568879 d!1052139))

(declare-fun b!3569913 () Bool)

(declare-fun e!2208321 () List!37609)

(assert (=> b!3569913 (= e!2208321 (Cons!37485 (h!42905 lt!1222711) (++!9318 (t!288870 lt!1222711) lt!1222713)))))

(declare-fun b!3569915 () Bool)

(declare-fun lt!1223292 () List!37609)

(declare-fun e!2208322 () Bool)

(assert (=> b!3569915 (= e!2208322 (or (not (= lt!1222713 Nil!37485)) (= lt!1223292 lt!1222711)))))

(declare-fun b!3569914 () Bool)

(declare-fun res!1439588 () Bool)

(assert (=> b!3569914 (=> (not res!1439588) (not e!2208322))))

(assert (=> b!3569914 (= res!1439588 (= (size!28573 lt!1223292) (+ (size!28573 lt!1222711) (size!28573 lt!1222713))))))

(declare-fun b!3569912 () Bool)

(assert (=> b!3569912 (= e!2208321 lt!1222713)))

(declare-fun d!1052141 () Bool)

(assert (=> d!1052141 e!2208322))

(declare-fun res!1439587 () Bool)

(assert (=> d!1052141 (=> (not res!1439587) (not e!2208322))))

(assert (=> d!1052141 (= res!1439587 (= (content!5311 lt!1223292) (set.union (content!5311 lt!1222711) (content!5311 lt!1222713))))))

(assert (=> d!1052141 (= lt!1223292 e!2208321)))

(declare-fun c!618665 () Bool)

(assert (=> d!1052141 (= c!618665 (is-Nil!37485 lt!1222711))))

(assert (=> d!1052141 (= (++!9318 lt!1222711 lt!1222713) lt!1223292)))

(assert (= (and d!1052141 c!618665) b!3569912))

(assert (= (and d!1052141 (not c!618665)) b!3569913))

(assert (= (and d!1052141 res!1439587) b!3569914))

(assert (= (and b!3569914 res!1439588) b!3569915))

(declare-fun m!4058169 () Bool)

(assert (=> b!3569913 m!4058169))

(declare-fun m!4058171 () Bool)

(assert (=> b!3569914 m!4058171))

(assert (=> b!3569914 m!4057047))

(assert (=> b!3569914 m!4057033))

(declare-fun m!4058173 () Bool)

(assert (=> d!1052141 m!4058173))

(assert (=> d!1052141 m!4057057))

(assert (=> d!1052141 m!4057039))

(assert (=> b!3568879 d!1052141))

(declare-fun e!2208323 () List!37609)

(declare-fun b!3569917 () Bool)

(assert (=> b!3569917 (= e!2208323 (Cons!37485 (h!42905 (++!9318 lt!1222721 lt!1222711)) (++!9318 (t!288870 (++!9318 lt!1222721 lt!1222711)) (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 tokens!494)) separatorToken!241))))))

(declare-fun lt!1223293 () List!37609)

(declare-fun b!3569919 () Bool)

(declare-fun e!2208324 () Bool)

(assert (=> b!3569919 (= e!2208324 (or (not (= (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 tokens!494)) separatorToken!241) Nil!37485)) (= lt!1223293 (++!9318 lt!1222721 lt!1222711))))))

(declare-fun b!3569918 () Bool)

(declare-fun res!1439590 () Bool)

(assert (=> b!3569918 (=> (not res!1439590) (not e!2208324))))

(assert (=> b!3569918 (= res!1439590 (= (size!28573 lt!1223293) (+ (size!28573 (++!9318 lt!1222721 lt!1222711)) (size!28573 (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 tokens!494)) separatorToken!241)))))))

(declare-fun b!3569916 () Bool)

(assert (=> b!3569916 (= e!2208323 (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 tokens!494)) separatorToken!241))))

(declare-fun d!1052143 () Bool)

(assert (=> d!1052143 e!2208324))

(declare-fun res!1439589 () Bool)

(assert (=> d!1052143 (=> (not res!1439589) (not e!2208324))))

(assert (=> d!1052143 (= res!1439589 (= (content!5311 lt!1223293) (set.union (content!5311 (++!9318 lt!1222721 lt!1222711)) (content!5311 (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 tokens!494)) separatorToken!241)))))))

(assert (=> d!1052143 (= lt!1223293 e!2208323)))

(declare-fun c!618666 () Bool)

(assert (=> d!1052143 (= c!618666 (is-Nil!37485 (++!9318 lt!1222721 lt!1222711)))))

(assert (=> d!1052143 (= (++!9318 (++!9318 lt!1222721 lt!1222711) (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 tokens!494)) separatorToken!241)) lt!1223293)))

(assert (= (and d!1052143 c!618666) b!3569916))

(assert (= (and d!1052143 (not c!618666)) b!3569917))

(assert (= (and d!1052143 res!1439589) b!3569918))

(assert (= (and b!3569918 res!1439590) b!3569919))

(assert (=> b!3569917 m!4056437))

(declare-fun m!4058175 () Bool)

(assert (=> b!3569917 m!4058175))

(declare-fun m!4058177 () Bool)

(assert (=> b!3569918 m!4058177))

(assert (=> b!3569918 m!4056441))

(declare-fun m!4058179 () Bool)

(assert (=> b!3569918 m!4058179))

(assert (=> b!3569918 m!4056437))

(declare-fun m!4058181 () Bool)

(assert (=> b!3569918 m!4058181))

(declare-fun m!4058183 () Bool)

(assert (=> d!1052143 m!4058183))

(assert (=> d!1052143 m!4056441))

(declare-fun m!4058185 () Bool)

(assert (=> d!1052143 m!4058185))

(assert (=> d!1052143 m!4056437))

(declare-fun m!4058187 () Bool)

(assert (=> d!1052143 m!4058187))

(assert (=> b!3568879 d!1052143))

(declare-fun d!1052145 () Bool)

(assert (=> d!1052145 (= (list!13748 (charsOf!3521 (h!42907 (t!288872 tokens!494)))) (list!13750 (c!618473 (charsOf!3521 (h!42907 (t!288872 tokens!494))))))))

(declare-fun bs!569121 () Bool)

(assert (= bs!569121 d!1052145))

(declare-fun m!4058189 () Bool)

(assert (=> bs!569121 m!4058189))

(assert (=> b!3568879 d!1052145))

(declare-fun d!1052147 () Bool)

(declare-fun c!618667 () Bool)

(assert (=> d!1052147 (= c!618667 (is-Cons!37487 (t!288872 (t!288872 tokens!494))))))

(declare-fun e!2208325 () List!37609)

(assert (=> d!1052147 (= (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 tokens!494)) separatorToken!241) e!2208325)))

(declare-fun b!3569920 () Bool)

(assert (=> b!3569920 (= e!2208325 (++!9318 (++!9318 (list!13748 (charsOf!3521 (h!42907 (t!288872 (t!288872 tokens!494))))) (list!13748 (charsOf!3521 separatorToken!241))) (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 (t!288872 tokens!494))) separatorToken!241)))))

(declare-fun b!3569921 () Bool)

(assert (=> b!3569921 (= e!2208325 Nil!37485)))

(assert (= (and d!1052147 c!618667) b!3569920))

(assert (= (and d!1052147 (not c!618667)) b!3569921))

(declare-fun m!4058191 () Bool)

(assert (=> b!3569920 m!4058191))

(declare-fun m!4058193 () Bool)

(assert (=> b!3569920 m!4058193))

(assert (=> b!3569920 m!4056439))

(declare-fun m!4058195 () Bool)

(assert (=> b!3569920 m!4058195))

(declare-fun m!4058197 () Bool)

(assert (=> b!3569920 m!4058197))

(assert (=> b!3569920 m!4058197))

(assert (=> b!3569920 m!4058193))

(assert (=> b!3569920 m!4056429))

(assert (=> b!3569920 m!4056429))

(assert (=> b!3569920 m!4056439))

(assert (=> b!3569920 m!4058195))

(assert (=> b!3569920 m!4058191))

(declare-fun m!4058199 () Bool)

(assert (=> b!3569920 m!4058199))

(assert (=> b!3568879 d!1052147))

(declare-fun d!1052149 () Bool)

(declare-fun c!618668 () Bool)

(assert (=> d!1052149 (= c!618668 (is-Cons!37487 (t!288872 tokens!494)))))

(declare-fun e!2208326 () List!37609)

(assert (=> d!1052149 (= (printWithSeparatorTokenList!383 thiss!18206 (t!288872 tokens!494) separatorToken!241) e!2208326)))

(declare-fun b!3569922 () Bool)

(assert (=> b!3569922 (= e!2208326 (++!9318 (++!9318 (list!13748 (charsOf!3521 (h!42907 (t!288872 tokens!494)))) (list!13748 (charsOf!3521 separatorToken!241))) (printWithSeparatorTokenList!383 thiss!18206 (t!288872 (t!288872 tokens!494)) separatorToken!241)))))

(declare-fun b!3569923 () Bool)

(assert (=> b!3569923 (= e!2208326 Nil!37485)))

(assert (= (and d!1052149 c!618668) b!3569922))

(assert (= (and d!1052149 (not c!618668)) b!3569923))

(assert (=> b!3569922 m!4056437))

(assert (=> b!3569922 m!4056435))

(assert (=> b!3569922 m!4056439))

(declare-fun m!4058201 () Bool)

(assert (=> b!3569922 m!4058201))

(assert (=> b!3569922 m!4056427))

(assert (=> b!3569922 m!4056427))

(assert (=> b!3569922 m!4056435))

(assert (=> b!3569922 m!4056429))

(assert (=> b!3569922 m!4056429))

(assert (=> b!3569922 m!4056439))

(assert (=> b!3569922 m!4058201))

(assert (=> b!3569922 m!4056437))

(declare-fun m!4058203 () Bool)

(assert (=> b!3569922 m!4058203))

(assert (=> b!3568879 d!1052149))

(declare-fun b!3569925 () Bool)

(declare-fun e!2208327 () List!37609)

(assert (=> b!3569925 (= e!2208327 (Cons!37485 (h!42905 lt!1222721) (++!9318 (t!288870 lt!1222721) lt!1222711)))))

(declare-fun b!3569927 () Bool)

(declare-fun e!2208328 () Bool)

(declare-fun lt!1223294 () List!37609)

(assert (=> b!3569927 (= e!2208328 (or (not (= lt!1222711 Nil!37485)) (= lt!1223294 lt!1222721)))))

(declare-fun b!3569926 () Bool)

(declare-fun res!1439592 () Bool)

(assert (=> b!3569926 (=> (not res!1439592) (not e!2208328))))

(assert (=> b!3569926 (= res!1439592 (= (size!28573 lt!1223294) (+ (size!28573 lt!1222721) (size!28573 lt!1222711))))))

(declare-fun b!3569924 () Bool)

(assert (=> b!3569924 (= e!2208327 lt!1222711)))

(declare-fun d!1052151 () Bool)

(assert (=> d!1052151 e!2208328))

(declare-fun res!1439591 () Bool)

(assert (=> d!1052151 (=> (not res!1439591) (not e!2208328))))

(assert (=> d!1052151 (= res!1439591 (= (content!5311 lt!1223294) (set.union (content!5311 lt!1222721) (content!5311 lt!1222711))))))

(assert (=> d!1052151 (= lt!1223294 e!2208327)))

(declare-fun c!618669 () Bool)

(assert (=> d!1052151 (= c!618669 (is-Nil!37485 lt!1222721))))

(assert (=> d!1052151 (= (++!9318 lt!1222721 lt!1222711) lt!1223294)))

(assert (= (and d!1052151 c!618669) b!3569924))

(assert (= (and d!1052151 (not c!618669)) b!3569925))

(assert (= (and d!1052151 res!1439591) b!3569926))

(assert (= (and b!3569926 res!1439592) b!3569927))

(declare-fun m!4058205 () Bool)

(assert (=> b!3569925 m!4058205))

(declare-fun m!4058207 () Bool)

(assert (=> b!3569926 m!4058207))

(assert (=> b!3569926 m!4056335))

(assert (=> b!3569926 m!4057047))

(declare-fun m!4058209 () Bool)

(assert (=> d!1052151 m!4058209))

(declare-fun m!4058211 () Bool)

(assert (=> d!1052151 m!4058211))

(assert (=> d!1052151 m!4057057))

(assert (=> b!3568879 d!1052151))

(declare-fun d!1052153 () Bool)

(declare-fun lt!1223295 () BalanceConc!22392)

(assert (=> d!1052153 (= (list!13748 lt!1223295) (originalCharacters!6221 separatorToken!241))))

(assert (=> d!1052153 (= lt!1223295 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (value!177411 separatorToken!241)))))

(assert (=> d!1052153 (= (charsOf!3521 separatorToken!241) lt!1223295)))

(declare-fun b_lambda!105171 () Bool)

(assert (=> (not b_lambda!105171) (not d!1052153)))

(assert (=> d!1052153 t!288901))

(declare-fun b_and!256865 () Bool)

(assert (= b_and!256835 (and (=> t!288901 result!247812) b_and!256865)))

(assert (=> d!1052153 t!288903))

(declare-fun b_and!256867 () Bool)

(assert (= b_and!256837 (and (=> t!288903 result!247814) b_and!256867)))

(assert (=> d!1052153 t!288905))

(declare-fun b_and!256869 () Bool)

(assert (= b_and!256839 (and (=> t!288905 result!247816) b_and!256869)))

(declare-fun m!4058213 () Bool)

(assert (=> d!1052153 m!4058213))

(assert (=> d!1052153 m!4056995))

(assert (=> b!3568879 d!1052153))

(declare-fun d!1052155 () Bool)

(assert (=> d!1052155 (= (list!13748 (charsOf!3521 separatorToken!241)) (list!13750 (c!618473 (charsOf!3521 separatorToken!241))))))

(declare-fun bs!569122 () Bool)

(assert (= bs!569122 d!1052155))

(declare-fun m!4058215 () Bool)

(assert (=> bs!569122 m!4058215))

(assert (=> b!3568879 d!1052155))

(declare-fun d!1052157 () Bool)

(declare-fun lt!1223296 () BalanceConc!22392)

(assert (=> d!1052157 (= (list!13748 lt!1223296) (originalCharacters!6221 (h!42907 (t!288872 tokens!494))))))

(assert (=> d!1052157 (= lt!1223296 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (value!177411 (h!42907 (t!288872 tokens!494)))))))

(assert (=> d!1052157 (= (charsOf!3521 (h!42907 (t!288872 tokens!494))) lt!1223296)))

(declare-fun b_lambda!105173 () Bool)

(assert (=> (not b_lambda!105173) (not d!1052157)))

(declare-fun t!288936 () Bool)

(declare-fun tb!203257 () Bool)

(assert (=> (and b!3568869 (= (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288936) tb!203257))

(declare-fun b!3569928 () Bool)

(declare-fun e!2208329 () Bool)

(declare-fun tp!1093462 () Bool)

(assert (=> b!3569928 (= e!2208329 (and (inv!50763 (c!618473 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (value!177411 (h!42907 (t!288872 tokens!494)))))) tp!1093462))))

(declare-fun result!247846 () Bool)

(assert (=> tb!203257 (= result!247846 (and (inv!50764 (dynLambda!16090 (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (value!177411 (h!42907 (t!288872 tokens!494))))) e!2208329))))

(assert (= tb!203257 b!3569928))

(declare-fun m!4058217 () Bool)

(assert (=> b!3569928 m!4058217))

(declare-fun m!4058219 () Bool)

(assert (=> tb!203257 m!4058219))

(assert (=> d!1052157 t!288936))

(declare-fun b_and!256871 () Bool)

(assert (= b_and!256865 (and (=> t!288936 result!247846) b_and!256871)))

(declare-fun tb!203259 () Bool)

(declare-fun t!288938 () Bool)

(assert (=> (and b!3568885 (= (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288938) tb!203259))

(declare-fun result!247848 () Bool)

(assert (= result!247848 result!247846))

(assert (=> d!1052157 t!288938))

(declare-fun b_and!256873 () Bool)

(assert (= b_and!256867 (and (=> t!288938 result!247848) b_and!256873)))

(declare-fun t!288940 () Bool)

(declare-fun tb!203261 () Bool)

(assert (=> (and b!3568883 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288940) tb!203261))

(declare-fun result!247850 () Bool)

(assert (= result!247850 result!247846))

(assert (=> d!1052157 t!288940))

(declare-fun b_and!256875 () Bool)

(assert (= b_and!256869 (and (=> t!288940 result!247850) b_and!256875)))

(declare-fun m!4058221 () Bool)

(assert (=> d!1052157 m!4058221))

(declare-fun m!4058223 () Bool)

(assert (=> d!1052157 m!4058223))

(assert (=> b!3568879 d!1052157))

(declare-fun e!2208332 () Bool)

(assert (=> b!3568891 (= tp!1093413 e!2208332)))

(declare-fun b!3569941 () Bool)

(declare-fun tp!1093473 () Bool)

(assert (=> b!3569941 (= e!2208332 tp!1093473)))

(declare-fun b!3569940 () Bool)

(declare-fun tp!1093475 () Bool)

(declare-fun tp!1093474 () Bool)

(assert (=> b!3569940 (= e!2208332 (and tp!1093475 tp!1093474))))

(declare-fun b!3569939 () Bool)

(declare-fun tp_is_empty!17651 () Bool)

(assert (=> b!3569939 (= e!2208332 tp_is_empty!17651)))

(declare-fun b!3569942 () Bool)

(declare-fun tp!1093477 () Bool)

(declare-fun tp!1093476 () Bool)

(assert (=> b!3569942 (= e!2208332 (and tp!1093477 tp!1093476))))

(assert (= (and b!3568891 (is-ElementMatch!10266 (regex!5507 (rule!8197 separatorToken!241)))) b!3569939))

(assert (= (and b!3568891 (is-Concat!16003 (regex!5507 (rule!8197 separatorToken!241)))) b!3569940))

(assert (= (and b!3568891 (is-Star!10266 (regex!5507 (rule!8197 separatorToken!241)))) b!3569941))

(assert (= (and b!3568891 (is-Union!10266 (regex!5507 (rule!8197 separatorToken!241)))) b!3569942))

(declare-fun b!3569953 () Bool)

(declare-fun b_free!91381 () Bool)

(declare-fun b_next!92085 () Bool)

(assert (=> b!3569953 (= b_free!91381 (not b_next!92085))))

(declare-fun tb!203263 () Bool)

(declare-fun t!288942 () Bool)

(assert (=> (and b!3569953 (= (toValue!7775 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288942) tb!203263))

(declare-fun result!247856 () Bool)

(assert (= result!247856 result!247818))

(assert (=> d!1051959 t!288942))

(declare-fun tb!203265 () Bool)

(declare-fun t!288944 () Bool)

(assert (=> (and b!3569953 (= (toValue!7775 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288944) tb!203265))

(declare-fun result!247858 () Bool)

(assert (= result!247858 result!247826))

(assert (=> d!1051975 t!288944))

(declare-fun tp!1093488 () Bool)

(declare-fun b_and!256877 () Bool)

(assert (=> b!3569953 (= tp!1093488 (and (=> t!288942 result!247856) (=> t!288944 result!247858) b_and!256877))))

(declare-fun b_free!91383 () Bool)

(declare-fun b_next!92087 () Bool)

(assert (=> b!3569953 (= b_free!91383 (not b_next!92087))))

(declare-fun t!288946 () Bool)

(declare-fun tb!203267 () Bool)

(assert (=> (and b!3569953 (= (toChars!7634 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241)))) t!288946) tb!203267))

(declare-fun result!247860 () Bool)

(assert (= result!247860 result!247812))

(assert (=> b!3569340 t!288946))

(declare-fun tb!203269 () Bool)

(declare-fun t!288948 () Bool)

(assert (=> (and b!3569953 (= (toChars!7634 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288948) tb!203269))

(declare-fun result!247862 () Bool)

(assert (= result!247862 result!247796))

(assert (=> d!1051777 t!288948))

(declare-fun t!288950 () Bool)

(declare-fun tb!203271 () Bool)

(assert (=> (and b!3569953 (= (toChars!7634 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288950) tb!203271))

(declare-fun result!247864 () Bool)

(assert (= result!247864 result!247846))

(assert (=> d!1052157 t!288950))

(assert (=> b!3569566 t!288948))

(assert (=> d!1052153 t!288946))

(declare-fun tp!1093487 () Bool)

(declare-fun b_and!256879 () Bool)

(assert (=> b!3569953 (= tp!1093487 (and (=> t!288946 result!247860) (=> t!288948 result!247862) (=> t!288950 result!247864) b_and!256879))))

(declare-fun e!2208344 () Bool)

(assert (=> b!3569953 (= e!2208344 (and tp!1093488 tp!1093487))))

(declare-fun tp!1093486 () Bool)

(declare-fun b!3569952 () Bool)

(declare-fun e!2208341 () Bool)

(assert (=> b!3569952 (= e!2208341 (and tp!1093486 (inv!50756 (tag!6163 (h!42906 (t!288871 rules!2135)))) (inv!50759 (transformation!5507 (h!42906 (t!288871 rules!2135)))) e!2208344))))

(declare-fun b!3569951 () Bool)

(declare-fun e!2208342 () Bool)

(declare-fun tp!1093489 () Bool)

(assert (=> b!3569951 (= e!2208342 (and e!2208341 tp!1093489))))

(assert (=> b!3568859 (= tp!1093411 e!2208342)))

(assert (= b!3569952 b!3569953))

(assert (= b!3569951 b!3569952))

(assert (= (and b!3568859 (is-Cons!37486 (t!288871 rules!2135))) b!3569951))

(declare-fun m!4058225 () Bool)

(assert (=> b!3569952 m!4058225))

(declare-fun m!4058227 () Bool)

(assert (=> b!3569952 m!4058227))

(declare-fun b!3569958 () Bool)

(declare-fun e!2208347 () Bool)

(declare-fun tp!1093492 () Bool)

(assert (=> b!3569958 (= e!2208347 (and tp_is_empty!17651 tp!1093492))))

(assert (=> b!3568850 (= tp!1093405 e!2208347)))

(assert (= (and b!3568850 (is-Cons!37485 (originalCharacters!6221 (h!42907 tokens!494)))) b!3569958))

(declare-fun b!3569961 () Bool)

(declare-fun e!2208350 () Bool)

(assert (=> b!3569961 (= e!2208350 true)))

(declare-fun b!3569960 () Bool)

(declare-fun e!2208349 () Bool)

(assert (=> b!3569960 (= e!2208349 e!2208350)))

(declare-fun b!3569959 () Bool)

(declare-fun e!2208348 () Bool)

(assert (=> b!3569959 (= e!2208348 e!2208349)))

(assert (=> b!3568901 e!2208348))

(assert (= b!3569960 b!3569961))

(assert (= b!3569959 b!3569960))

(assert (= (and b!3568901 (is-Cons!37486 (t!288871 rules!2135))) b!3569959))

(assert (=> b!3569961 (< (dynLambda!16084 order!20315 (toValue!7775 (transformation!5507 (h!42906 (t!288871 rules!2135))))) (dynLambda!16085 order!20317 lambda!123411))))

(assert (=> b!3569961 (< (dynLambda!16086 order!20319 (toChars!7634 (transformation!5507 (h!42906 (t!288871 rules!2135))))) (dynLambda!16085 order!20317 lambda!123411))))

(declare-fun e!2208353 () Bool)

(assert (=> b!3568851 (= tp!1093407 e!2208353)))

(declare-fun b!3569966 () Bool)

(declare-fun tp!1093493 () Bool)

(assert (=> b!3569966 (= e!2208353 tp!1093493)))

(declare-fun b!3569965 () Bool)

(declare-fun tp!1093495 () Bool)

(declare-fun tp!1093494 () Bool)

(assert (=> b!3569965 (= e!2208353 (and tp!1093495 tp!1093494))))

(declare-fun b!3569964 () Bool)

(assert (=> b!3569964 (= e!2208353 tp_is_empty!17651)))

(declare-fun b!3569967 () Bool)

(declare-fun tp!1093497 () Bool)

(declare-fun tp!1093496 () Bool)

(assert (=> b!3569967 (= e!2208353 (and tp!1093497 tp!1093496))))

(assert (= (and b!3568851 (is-ElementMatch!10266 (regex!5507 (h!42906 rules!2135)))) b!3569964))

(assert (= (and b!3568851 (is-Concat!16003 (regex!5507 (h!42906 rules!2135)))) b!3569965))

(assert (= (and b!3568851 (is-Star!10266 (regex!5507 (h!42906 rules!2135)))) b!3569966))

(assert (= (and b!3568851 (is-Union!10266 (regex!5507 (h!42906 rules!2135)))) b!3569967))

(declare-fun b!3569968 () Bool)

(declare-fun e!2208354 () Bool)

(declare-fun tp!1093498 () Bool)

(assert (=> b!3569968 (= e!2208354 (and tp_is_empty!17651 tp!1093498))))

(assert (=> b!3568874 (= tp!1093412 e!2208354)))

(assert (= (and b!3568874 (is-Cons!37485 (originalCharacters!6221 separatorToken!241))) b!3569968))

(declare-fun b!3569996 () Bool)

(declare-fun b_free!91385 () Bool)

(declare-fun b_next!92089 () Bool)

(assert (=> b!3569996 (= b_free!91385 (not b_next!92089))))

(declare-fun t!288958 () Bool)

(declare-fun tb!203279 () Bool)

(assert (=> (and b!3569996 (= (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288958) tb!203279))

(declare-fun result!247876 () Bool)

(assert (= result!247876 result!247818))

(assert (=> d!1051959 t!288958))

(declare-fun t!288960 () Bool)

(declare-fun tb!203281 () Bool)

(assert (=> (and b!3569996 (= (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288960) tb!203281))

(declare-fun result!247878 () Bool)

(assert (= result!247878 result!247826))

(assert (=> d!1051975 t!288960))

(declare-fun b_and!256887 () Bool)

(declare-fun tp!1093510 () Bool)

(assert (=> b!3569996 (= tp!1093510 (and (=> t!288958 result!247876) (=> t!288960 result!247878) b_and!256887))))

(declare-fun b_free!91387 () Bool)

(declare-fun b_next!92091 () Bool)

(assert (=> b!3569996 (= b_free!91387 (not b_next!92091))))

(declare-fun t!288962 () Bool)

(declare-fun tb!203283 () Bool)

(assert (=> (and b!3569996 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241)))) t!288962) tb!203283))

(declare-fun result!247880 () Bool)

(assert (= result!247880 result!247812))

(assert (=> b!3569340 t!288962))

(declare-fun t!288964 () Bool)

(declare-fun tb!203285 () Bool)

(assert (=> (and b!3569996 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494))))) t!288964) tb!203285))

(declare-fun result!247882 () Bool)

(assert (= result!247882 result!247796))

(assert (=> d!1051777 t!288964))

(declare-fun t!288966 () Bool)

(declare-fun tb!203287 () Bool)

(assert (=> (and b!3569996 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494)))))) t!288966) tb!203287))

(declare-fun result!247884 () Bool)

(assert (= result!247884 result!247846))

(assert (=> d!1052157 t!288966))

(assert (=> b!3569566 t!288964))

(assert (=> d!1052153 t!288962))

(declare-fun b_and!256889 () Bool)

(declare-fun tp!1093513 () Bool)

(assert (=> b!3569996 (= tp!1093513 (and (=> t!288964 result!247882) (=> t!288962 result!247880) (=> t!288966 result!247884) b_and!256889))))

(declare-fun e!2208380 () Bool)

(assert (=> b!3569996 (= e!2208380 (and tp!1093510 tp!1093513))))

(declare-fun e!2208379 () Bool)

(declare-fun tp!1093514 () Bool)

(declare-fun b!3569995 () Bool)

(assert (=> b!3569995 (= e!2208379 (and tp!1093514 (inv!50756 (tag!6163 (rule!8197 (h!42907 (t!288872 tokens!494))))) (inv!50759 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) e!2208380))))

(declare-fun e!2208378 () Bool)

(assert (=> b!3568853 (= tp!1093404 e!2208378)))

(declare-fun tp!1093512 () Bool)

(declare-fun b!3569993 () Bool)

(declare-fun e!2208375 () Bool)

(assert (=> b!3569993 (= e!2208378 (and (inv!50760 (h!42907 (t!288872 tokens!494))) e!2208375 tp!1093512))))

(declare-fun b!3569994 () Bool)

(declare-fun tp!1093511 () Bool)

(assert (=> b!3569994 (= e!2208375 (and (inv!21 (value!177411 (h!42907 (t!288872 tokens!494)))) e!2208379 tp!1093511))))

(assert (= b!3569995 b!3569996))

(assert (= b!3569994 b!3569995))

(assert (= b!3569993 b!3569994))

(assert (= (and b!3568853 (is-Cons!37487 (t!288872 tokens!494))) b!3569993))

(declare-fun m!4058279 () Bool)

(assert (=> b!3569995 m!4058279))

(declare-fun m!4058281 () Bool)

(assert (=> b!3569995 m!4058281))

(declare-fun m!4058283 () Bool)

(assert (=> b!3569993 m!4058283))

(declare-fun m!4058285 () Bool)

(assert (=> b!3569994 m!4058285))

(declare-fun e!2208383 () Bool)

(assert (=> b!3568847 (= tp!1093403 e!2208383)))

(declare-fun b!3570001 () Bool)

(declare-fun tp!1093515 () Bool)

(assert (=> b!3570001 (= e!2208383 tp!1093515)))

(declare-fun b!3570000 () Bool)

(declare-fun tp!1093517 () Bool)

(declare-fun tp!1093516 () Bool)

(assert (=> b!3570000 (= e!2208383 (and tp!1093517 tp!1093516))))

(declare-fun b!3569999 () Bool)

(assert (=> b!3569999 (= e!2208383 tp_is_empty!17651)))

(declare-fun b!3570002 () Bool)

(declare-fun tp!1093519 () Bool)

(declare-fun tp!1093518 () Bool)

(assert (=> b!3570002 (= e!2208383 (and tp!1093519 tp!1093518))))

(assert (= (and b!3568847 (is-ElementMatch!10266 (regex!5507 (rule!8197 (h!42907 tokens!494))))) b!3569999))

(assert (= (and b!3568847 (is-Concat!16003 (regex!5507 (rule!8197 (h!42907 tokens!494))))) b!3570000))

(assert (= (and b!3568847 (is-Star!10266 (regex!5507 (rule!8197 (h!42907 tokens!494))))) b!3570001))

(assert (= (and b!3568847 (is-Union!10266 (regex!5507 (rule!8197 (h!42907 tokens!494))))) b!3570002))

(declare-fun b_lambda!105177 () Bool)

(assert (= b_lambda!105163 (or b!3568854 b_lambda!105177)))

(declare-fun bs!569126 () Bool)

(declare-fun d!1052175 () Bool)

(assert (= bs!569126 (and d!1052175 b!3568854)))

(assert (=> bs!569126 (= (dynLambda!16091 lambda!123411 (h!42907 (t!288872 tokens!494))) (rulesProduceIndividualToken!2588 thiss!18206 rules!2135 (h!42907 (t!288872 tokens!494))))))

(assert (=> bs!569126 m!4056285))

(assert (=> d!1052009 d!1052175))

(declare-fun b_lambda!105179 () Bool)

(assert (= b_lambda!105167 (or b!3568860 b_lambda!105179)))

(declare-fun bs!569127 () Bool)

(declare-fun d!1052177 () Bool)

(assert (= bs!569127 (and d!1052177 b!3568860)))

(assert (=> bs!569127 (= (dynLambda!16091 lambda!123410 (h!42907 (t!288872 tokens!494))) (not (isSeparator!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))))

(assert (=> d!1052113 d!1052177))

(declare-fun b_lambda!105181 () Bool)

(assert (= b_lambda!105169 (or b!3568860 b_lambda!105181)))

(declare-fun bs!569128 () Bool)

(declare-fun d!1052179 () Bool)

(assert (= bs!569128 (and d!1052179 b!3568860)))

(assert (=> bs!569128 (= (dynLambda!16091 lambda!123410 (h!42907 tokens!494)) (not (isSeparator!5507 (rule!8197 (h!42907 tokens!494)))))))

(assert (=> d!1052115 d!1052179))

(declare-fun b_lambda!105183 () Bool)

(assert (= b_lambda!105171 (or (and b!3568883 b_free!91367 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))))) (and b!3568869 b_free!91359) (and b!3568885 b_free!91363 (= (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))))) (and b!3569953 b_free!91383 (= (toChars!7634 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))))) (and b!3569996 b_free!91387 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))))) b_lambda!105183)))

(declare-fun b_lambda!105185 () Bool)

(assert (= b_lambda!105173 (or (and b!3568883 b_free!91367 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))) (and b!3568869 b_free!91359 (= (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))) (and b!3569996 b_free!91387) (and b!3568885 b_free!91363 (= (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))) (and b!3569953 b_free!91383 (= (toChars!7634 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))) b_lambda!105185)))

(declare-fun b_lambda!105187 () Bool)

(assert (= b_lambda!105143 (or (and b!3568883 b_free!91367 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))))) (and b!3568869 b_free!91359) (and b!3568885 b_free!91363 (= (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))))) (and b!3569953 b_free!91383 (= (toChars!7634 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))))) (and b!3569996 b_free!91387 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))))) b_lambda!105187)))

(declare-fun b_lambda!105189 () Bool)

(assert (= b_lambda!105159 (or (and b!3568885 b_free!91361 (= (toValue!7775 (transformation!5507 (h!42906 rules!2135))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))) (and b!3569953 b_free!91381 (= (toValue!7775 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))) (and b!3568869 b_free!91357 (= (toValue!7775 (transformation!5507 (rule!8197 separatorToken!241))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))) (and b!3568883 b_free!91365 (= (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494)))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))))) (and b!3569996 b_free!91385) b_lambda!105189)))

(declare-fun b_lambda!105191 () Bool)

(assert (= b_lambda!105139 (or (and b!3569953 b_free!91383 (= (toChars!7634 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) (and b!3568885 b_free!91363 (= (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) (and b!3568869 b_free!91359 (= (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) (and b!3568883 b_free!91367) (and b!3569996 b_free!91387 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) b_lambda!105191)))

(declare-fun b_lambda!105193 () Bool)

(assert (= b_lambda!105157 (or (and b!3569953 b_free!91381 (= (toValue!7775 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) (and b!3568883 b_free!91365) (and b!3569996 b_free!91385 (= (toValue!7775 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) (and b!3568869 b_free!91357 (= (toValue!7775 (transformation!5507 (rule!8197 separatorToken!241))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) (and b!3568885 b_free!91361 (= (toValue!7775 (transformation!5507 (h!42906 rules!2135))) (toValue!7775 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) b_lambda!105193)))

(declare-fun b_lambda!105195 () Bool)

(assert (= b_lambda!105145 (or b!3568860 b_lambda!105195)))

(assert (=> b!3569426 d!1052179))

(declare-fun b_lambda!105197 () Bool)

(assert (= b_lambda!105155 (or (and b!3569953 b_free!91383 (= (toChars!7634 (transformation!5507 (h!42906 (t!288871 rules!2135)))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) (and b!3568885 b_free!91363 (= (toChars!7634 (transformation!5507 (h!42906 rules!2135))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) (and b!3568869 b_free!91359 (= (toChars!7634 (transformation!5507 (rule!8197 separatorToken!241))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) (and b!3568883 b_free!91367) (and b!3569996 b_free!91387 (= (toChars!7634 (transformation!5507 (rule!8197 (h!42907 (t!288872 tokens!494))))) (toChars!7634 (transformation!5507 (rule!8197 (h!42907 tokens!494)))))) b_lambda!105197)))

(push 1)

(assert b_and!256873)

(assert (not d!1052077))

(assert (not b_lambda!105177))

(assert (not b!3569418))

(assert (not b!3569849))

(assert (not bm!258730))

(assert (not d!1051973))

(assert (not b!3569918))

(assert (not b!3569968))

(assert (not d!1052123))

(assert (not b!3569994))

(assert (not d!1051849))

(assert (not b!3569784))

(assert (not d!1051793))

(assert (not d!1051965))

(assert (not b!3569904))

(assert (not d!1051963))

(assert (not d!1052015))

(assert (not b!3569330))

(assert (not d!1051765))

(assert (not b_next!92069))

(assert (not b!3569567))

(assert (not d!1051911))

(assert (not b!3569836))

(assert (not d!1051891))

(assert (not b!3569884))

(assert (not b!3569871))

(assert (not b!3569544))

(assert (not d!1052093))

(assert (not b!3569419))

(assert (not b!3569926))

(assert (not b!3569725))

(assert (not b!3570001))

(assert (not b!3569731))

(assert (not d!1052049))

(assert (not b!3569099))

(assert (not b!3569138))

(assert (not b!3569285))

(assert (not b!3569479))

(assert (not b!3569433))

(assert (not b_lambda!105187))

(assert (not b!3569547))

(assert (not bm!258712))

(assert (not b!3569730))

(assert (not bm!258738))

(assert (not d!1052051))

(assert (not b!3569158))

(assert (not b!3569291))

(assert (not b!3569913))

(assert (not d!1051885))

(assert (not d!1051829))

(assert (not b!3569548))

(assert (not d!1051831))

(assert (not b!3569928))

(assert (not b!3569834))

(assert (not b!3569739))

(assert (not b!3569098))

(assert (not bm!258711))

(assert (not b!3569563))

(assert b_and!256879)

(assert (not bm!258684))

(assert (not b_lambda!105181))

(assert (not b!3569392))

(assert (not b!3569813))

(assert (not b!3569952))

(assert (not b!3569910))

(assert (not d!1052115))

(assert (not b!3569552))

(assert (not b!3569554))

(assert (not b!3569832))

(assert (not b!3569688))

(assert (not b!3569889))

(assert (not b!3569574))

(assert (not b!3569518))

(assert (not bm!258726))

(assert (not b!3569866))

(assert (not b!3569156))

(assert (not d!1052117))

(assert (not b_lambda!105189))

(assert (not b!3569294))

(assert (not b!3569396))

(assert (not d!1051823))

(assert (not b_lambda!105191))

(assert (not b!3569808))

(assert (not b!3569290))

(assert (not d!1052017))

(assert (not d!1051781))

(assert (not d!1051883))

(assert (not b!3569965))

(assert (not d!1052155))

(assert (not b!3569778))

(assert (not b!3569320))

(assert (not b!3569284))

(assert (not b!3569995))

(assert (not d!1051833))

(assert (not b!3569583))

(assert (not d!1052055))

(assert (not b!3569409))

(assert (not b!3569523))

(assert (not b!3569136))

(assert (not d!1051881))

(assert (not d!1051787))

(assert (not b_lambda!105197))

(assert (not b!3569346))

(assert (not b!3569951))

(assert (not b!3569885))

(assert (not b_next!92085))

(assert (not d!1051761))

(assert (not d!1051775))

(assert (not b!3569545))

(assert (not b_next!92071))

(assert (not b!3569410))

(assert (not b!3569922))

(assert (not d!1052033))

(assert (not tb!203233))

(assert (not b!3569740))

(assert (not d!1051779))

(assert (not b!3569940))

(assert (not b!3569833))

(assert (not b!3569942))

(assert (not b!3569161))

(assert (not b!3569792))

(assert (not b!3569546))

(assert (not d!1051845))

(assert b_and!256875)

(assert (not b!3569788))

(assert (not b!3569304))

(assert (not bm!258700))

(assert (not d!1051967))

(assert (not b!3569732))

(assert (not b!3569432))

(assert (not b!3569564))

(assert (not d!1052005))

(assert (not d!1052009))

(assert (not d!1052105))

(assert (not b!3569685))

(assert (not b!3569160))

(assert (not b!3569791))

(assert (not b!3569905))

(assert (not b!3569318))

(assert (not bm!258728))

(assert (not d!1052079))

(assert (not b!3569781))

(assert (not b!3569406))

(assert (not b!3569288))

(assert (not tb!203215))

(assert (not b!3569993))

(assert (not d!1051771))

(assert (not b!3569811))

(assert (not d!1052071))

(assert (not d!1052143))

(assert b_and!256889)

(assert (not d!1052103))

(assert (not d!1051953))

(assert (not b!3569809))

(assert (not b!3569917))

(assert (not d!1051777))

(assert (not d!1051961))

(assert (not bm!258737))

(assert (not b!3569159))

(assert (not b!3569727))

(assert (not b!3569303))

(assert (not b!3569108))

(assert (not b!3569397))

(assert (not b_lambda!105185))

(assert (not b!3569890))

(assert (not b!3569790))

(assert (not b!3569743))

(assert (not tb!203239))

(assert (not bm!258692))

(assert (not b!3569553))

(assert (not b!3569515))

(assert (not d!1052087))

(assert (not d!1052053))

(assert (not d!1052003))

(assert (not d!1052113))

(assert (not b!3569109))

(assert (not d!1052029))

(assert b_and!256851)

(assert (not d!1052099))

(assert (not b!3569340))

(assert (not b_lambda!105183))

(assert tp_is_empty!17651)

(assert (not bm!258710))

(assert (not b!3569920))

(assert (not d!1051933))

(assert (not b!3569863))

(assert (not b!3569097))

(assert (not b!3569551))

(assert (not b!3569864))

(assert (not b_next!92067))

(assert (not b!3569427))

(assert (not bs!569126))

(assert (not b!3569787))

(assert (not b!3569865))

(assert (not b!3569888))

(assert (not d!1052059))

(assert (not tb!203227))

(assert (not d!1052111))

(assert (not d!1051861))

(assert (not b!3569726))

(assert (not d!1051991))

(assert (not b!3569549))

(assert (not d!1052013))

(assert (not b!3569321))

(assert (not b!3569576))

(assert (not b!3569480))

(assert (not d!1052075))

(assert (not b!3569870))

(assert (not d!1052157))

(assert (not b!3569814))

(assert (not b!3569329))

(assert (not d!1051949))

(assert (not b!3569139))

(assert b_and!256877)

(assert (not b!3569892))

(assert (not b!3569513))

(assert (not d!1051947))

(assert (not b!3569967))

(assert (not b!3569746))

(assert b_and!256847)

(assert (not b!3569835))

(assert (not b!3569305))

(assert (not b!3569119))

(assert (not b!3569777))

(assert (not b!3569859))

(assert (not b!3569295))

(assert (not bm!258736))

(assert (not d!1052073))

(assert (not d!1051943))

(assert (not b!3569705))

(assert (not b!3569107))

(assert (not d!1052001))

(assert (not b!3569478))

(assert (not b!3570002))

(assert (not bm!258699))

(assert (not b!3569893))

(assert (not b!3569113))

(assert (not b!3569869))

(assert b_and!256871)

(assert (not b_next!92061))

(assert (not b!3569125))

(assert (not d!1052145))

(assert (not d!1051875))

(assert (not b!3569903))

(assert (not b!3570000))

(assert (not b!3569293))

(assert (not d!1051869))

(assert (not b!3569738))

(assert (not b!3569686))

(assert (not b!3569914))

(assert (not b!3569699))

(assert (not b!3569575))

(assert (not b!3569367))

(assert (not d!1052133))

(assert (not b!3569839))

(assert (not b!3569724))

(assert (not d!1051951))

(assert (not bm!258694))

(assert (not b!3569959))

(assert (not b!3569562))

(assert (not b_next!92091))

(assert (not d!1052035))

(assert (not b!3569741))

(assert (not d!1052153))

(assert (not b!3569408))

(assert (not b!3569341))

(assert (not b!3569566))

(assert (not b!3569393))

(assert (not d!1051913))

(assert (not bm!258727))

(assert (not d!1052141))

(assert (not b_next!92089))

(assert (not d!1052069))

(assert (not d!1051791))

(assert (not d!1051767))

(assert (not b_next!92065))

(assert (not bm!258691))

(assert (not b!3569407))

(assert (not b!3569745))

(assert (not d!1051971))

(assert (not b!3569543))

(assert (not b!3569867))

(assert (not b!3569783))

(assert (not d!1052031))

(assert (not b_next!92063))

(assert (not b!3569742))

(assert b_and!256849)

(assert (not d!1051957))

(assert (not b!3569941))

(assert (not b!3569420))

(assert (not b!3569837))

(assert (not d!1051841))

(assert (not b!3569145))

(assert (not tb!203257))

(assert (not b!3569925))

(assert (not d!1051855))

(assert (not b!3569958))

(assert b_and!256887)

(assert (not d!1052081))

(assert (not b_lambda!105193))

(assert (not b!3569816))

(assert (not d!1051759))

(assert (not d!1052037))

(assert (not d!1051837))

(assert (not b_lambda!105195))

(assert (not b!3569747))

(assert (not b!3569584))

(assert (not b_next!92087))

(assert (not b!3569319))

(assert (not b!3569477))

(assert (not b!3569966))

(assert (not b_lambda!105179))

(assert (not b!3569728))

(assert (not b!3569831))

(assert (not b!3569331))

(assert (not d!1052151))

(check-sat)

(pop 1)

(push 1)

(assert b_and!256873)

(assert (not b_next!92069))

(assert b_and!256879)

(assert (not b_next!92085))

(assert (not b_next!92071))

(assert b_and!256875)

(assert b_and!256889)

(assert b_and!256851)

(assert (not b_next!92067))

(assert b_and!256877)

(assert b_and!256847)

(assert (not b_next!92091))

(assert (not b_next!92089))

(assert (not b_next!92065))

(assert (not b_next!92087))

(assert b_and!256871)

(assert (not b_next!92061))

(assert (not b_next!92063))

(assert b_and!256849)

(assert b_and!256887)

(check-sat)

(pop 1)


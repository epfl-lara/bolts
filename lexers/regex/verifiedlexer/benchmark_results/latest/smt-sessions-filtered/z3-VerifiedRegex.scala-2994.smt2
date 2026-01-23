; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179214 () Bool)

(assert start!179214)

(declare-fun b!1812540 () Bool)

(declare-fun b_free!49919 () Bool)

(declare-fun b_next!50623 () Bool)

(assert (=> b!1812540 (= b_free!49919 (not b_next!50623))))

(declare-fun tp!512018 () Bool)

(declare-fun b_and!139951 () Bool)

(assert (=> b!1812540 (= tp!512018 b_and!139951)))

(declare-fun b_free!49921 () Bool)

(declare-fun b_next!50625 () Bool)

(assert (=> b!1812540 (= b_free!49921 (not b_next!50625))))

(declare-fun tp!512012 () Bool)

(declare-fun b_and!139953 () Bool)

(assert (=> b!1812540 (= tp!512012 b_and!139953)))

(declare-fun b!1812530 () Bool)

(declare-fun b_free!49923 () Bool)

(declare-fun b_next!50627 () Bool)

(assert (=> b!1812530 (= b_free!49923 (not b_next!50627))))

(declare-fun tp!512016 () Bool)

(declare-fun b_and!139955 () Bool)

(assert (=> b!1812530 (= tp!512016 b_and!139955)))

(declare-fun b_free!49925 () Bool)

(declare-fun b_next!50629 () Bool)

(assert (=> b!1812530 (= b_free!49925 (not b_next!50629))))

(declare-fun tp!512019 () Bool)

(declare-fun b_and!139957 () Bool)

(assert (=> b!1812530 (= tp!512019 b_and!139957)))

(declare-fun b!1812537 () Bool)

(declare-fun b_free!49927 () Bool)

(declare-fun b_next!50631 () Bool)

(assert (=> b!1812537 (= b_free!49927 (not b_next!50631))))

(declare-fun tp!512015 () Bool)

(declare-fun b_and!139959 () Bool)

(assert (=> b!1812537 (= tp!512015 b_and!139959)))

(declare-fun b_free!49929 () Bool)

(declare-fun b_next!50633 () Bool)

(assert (=> b!1812537 (= b_free!49929 (not b_next!50633))))

(declare-fun tp!512021 () Bool)

(declare-fun b_and!139961 () Bool)

(assert (=> b!1812537 (= tp!512021 b_and!139961)))

(declare-fun b!1812558 () Bool)

(declare-fun e!1157881 () Bool)

(assert (=> b!1812558 (= e!1157881 true)))

(declare-fun b!1812557 () Bool)

(declare-fun e!1157880 () Bool)

(assert (=> b!1812557 (= e!1157880 e!1157881)))

(declare-fun b!1812556 () Bool)

(declare-fun e!1157879 () Bool)

(assert (=> b!1812556 (= e!1157879 e!1157880)))

(declare-fun b!1812546 () Bool)

(assert (=> b!1812546 e!1157879))

(assert (= b!1812557 b!1812558))

(assert (= b!1812556 b!1812557))

(assert (= b!1812546 b!1812556))

(declare-datatypes ((List!19839 0))(
  ( (Nil!19769) (Cons!19769 (h!25170 (_ BitVec 16)) (t!169208 List!19839)) )
))
(declare-datatypes ((TokenValue!3639 0))(
  ( (FloatLiteralValue!7278 (text!25918 List!19839)) (TokenValueExt!3638 (__x!12580 Int)) (Broken!18195 (value!110793 List!19839)) (Object!3708) (End!3639) (Def!3639) (Underscore!3639) (Match!3639) (Else!3639) (Error!3639) (Case!3639) (If!3639) (Extends!3639) (Abstract!3639) (Class!3639) (Val!3639) (DelimiterValue!7278 (del!3699 List!19839)) (KeywordValue!3645 (value!110794 List!19839)) (CommentValue!7278 (value!110795 List!19839)) (WhitespaceValue!7278 (value!110796 List!19839)) (IndentationValue!3639 (value!110797 List!19839)) (String!22526) (Int32!3639) (Broken!18196 (value!110798 List!19839)) (Boolean!3640) (Unit!34374) (OperatorValue!3642 (op!3699 List!19839)) (IdentifierValue!7278 (value!110799 List!19839)) (IdentifierValue!7279 (value!110800 List!19839)) (WhitespaceValue!7279 (value!110801 List!19839)) (True!7278) (False!7278) (Broken!18197 (value!110802 List!19839)) (Broken!18198 (value!110803 List!19839)) (True!7279) (RightBrace!3639) (RightBracket!3639) (Colon!3639) (Null!3639) (Comma!3639) (LeftBracket!3639) (False!7279) (LeftBrace!3639) (ImaginaryLiteralValue!3639 (text!25919 List!19839)) (StringLiteralValue!10917 (value!110804 List!19839)) (EOFValue!3639 (value!110805 List!19839)) (IdentValue!3639 (value!110806 List!19839)) (DelimiterValue!7279 (value!110807 List!19839)) (DedentValue!3639 (value!110808 List!19839)) (NewLineValue!3639 (value!110809 List!19839)) (IntegerValue!10917 (value!110810 (_ BitVec 32)) (text!25920 List!19839)) (IntegerValue!10918 (value!110811 Int) (text!25921 List!19839)) (Times!3639) (Or!3639) (Equal!3639) (Minus!3639) (Broken!18199 (value!110812 List!19839)) (And!3639) (Div!3639) (LessEqual!3639) (Mod!3639) (Concat!8516) (Not!3639) (Plus!3639) (SpaceValue!3639 (value!110813 List!19839)) (IntegerValue!10919 (value!110814 Int) (text!25922 List!19839)) (StringLiteralValue!10918 (text!25923 List!19839)) (FloatLiteralValue!7279 (text!25924 List!19839)) (BytesLiteralValue!3639 (value!110815 List!19839)) (CommentValue!7279 (value!110816 List!19839)) (StringLiteralValue!10919 (value!110817 List!19839)) (ErrorTokenValue!3639 (msg!3700 List!19839)) )
))
(declare-datatypes ((C!9928 0))(
  ( (C!9929 (val!5560 Int)) )
))
(declare-datatypes ((List!19840 0))(
  ( (Nil!19770) (Cons!19770 (h!25171 C!9928) (t!169209 List!19840)) )
))
(declare-datatypes ((String!22527 0))(
  ( (String!22528 (value!110818 String)) )
))
(declare-datatypes ((Regex!4877 0))(
  ( (ElementMatch!4877 (c!296104 C!9928)) (Concat!8517 (regOne!10266 Regex!4877) (regTwo!10266 Regex!4877)) (EmptyExpr!4877) (Star!4877 (reg!5206 Regex!4877)) (EmptyLang!4877) (Union!4877 (regOne!10267 Regex!4877) (regTwo!10267 Regex!4877)) )
))
(declare-datatypes ((IArray!13159 0))(
  ( (IArray!13160 (innerList!6637 List!19840)) )
))
(declare-datatypes ((Conc!6577 0))(
  ( (Node!6577 (left!15861 Conc!6577) (right!16191 Conc!6577) (csize!13384 Int) (cheight!6788 Int)) (Leaf!9572 (xs!9453 IArray!13159) (csize!13385 Int)) (Empty!6577) )
))
(declare-datatypes ((BalanceConc!13098 0))(
  ( (BalanceConc!13099 (c!296105 Conc!6577)) )
))
(declare-datatypes ((TokenValueInjection!6938 0))(
  ( (TokenValueInjection!6939 (toValue!5080 Int) (toChars!4939 Int)) )
))
(declare-datatypes ((Rule!6898 0))(
  ( (Rule!6899 (regex!3549 Regex!4877) (tag!3959 String!22527) (isSeparator!3549 Bool) (transformation!3549 TokenValueInjection!6938)) )
))
(declare-datatypes ((Token!6664 0))(
  ( (Token!6665 (value!110819 TokenValue!3639) (rule!5655 Rule!6898) (size!15716 Int) (originalCharacters!4363 List!19840)) )
))
(declare-datatypes ((tuple2!19354 0))(
  ( (tuple2!19355 (_1!11079 Token!6664) (_2!11079 List!19840)) )
))
(declare-fun lt!703640 () tuple2!19354)

(declare-fun lambda!71006 () Int)

(declare-fun order!12887 () Int)

(declare-fun order!12889 () Int)

(declare-fun dynLambda!9823 (Int Int) Int)

(declare-fun dynLambda!9824 (Int Int) Int)

(assert (=> b!1812558 (< (dynLambda!9823 order!12887 (toValue!5080 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) (dynLambda!9824 order!12889 lambda!71006))))

(declare-fun order!12891 () Int)

(declare-fun dynLambda!9825 (Int Int) Int)

(assert (=> b!1812558 (< (dynLambda!9825 order!12891 (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) (dynLambda!9824 order!12889 lambda!71006))))

(declare-fun b!1812508 () Bool)

(declare-fun e!1157866 () Bool)

(declare-fun e!1157851 () Bool)

(assert (=> b!1812508 (= e!1157866 e!1157851)))

(declare-fun res!814789 () Bool)

(assert (=> b!1812508 (=> res!814789 e!1157851)))

(declare-fun lt!703637 () List!19840)

(declare-fun lt!703643 () BalanceConc!13098)

(declare-fun list!8049 (BalanceConc!13098) List!19840)

(declare-fun dynLambda!9826 (Int TokenValue!3639) BalanceConc!13098)

(declare-fun dynLambda!9827 (Int BalanceConc!13098) TokenValue!3639)

(assert (=> b!1812508 (= res!814789 (not (= (list!8049 (dynLambda!9826 (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) (dynLambda!9827 (toValue!5080 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) lt!703643))) lt!703637)))))

(declare-datatypes ((Unit!34375 0))(
  ( (Unit!34376) )
))
(declare-fun lt!703616 () Unit!34375)

(declare-fun lemmaSemiInverse!687 (TokenValueInjection!6938 BalanceConc!13098) Unit!34375)

(assert (=> b!1812508 (= lt!703616 (lemmaSemiInverse!687 (transformation!3549 (rule!5655 (_1!11079 lt!703640))) lt!703643))))

(declare-fun b!1812509 () Bool)

(declare-fun res!814784 () Bool)

(declare-fun e!1157852 () Bool)

(assert (=> b!1812509 (=> res!814784 e!1157852)))

(declare-fun suffix!1421 () List!19840)

(declare-fun isEmpty!12510 (List!19840) Bool)

(assert (=> b!1812509 (= res!814784 (isEmpty!12510 suffix!1421))))

(declare-fun b!1812510 () Bool)

(declare-fun res!814794 () Bool)

(declare-fun e!1157854 () Bool)

(assert (=> b!1812510 (=> res!814794 e!1157854)))

(declare-fun matchR!2350 (Regex!4877 List!19840) Bool)

(assert (=> b!1812510 (= res!814794 (not (matchR!2350 (regex!3549 (rule!5655 (_1!11079 lt!703640))) lt!703637)))))

(declare-fun b!1812511 () Bool)

(declare-fun e!1157841 () Bool)

(declare-fun e!1157861 () Bool)

(assert (=> b!1812511 (= e!1157841 e!1157861)))

(declare-fun res!814786 () Bool)

(assert (=> b!1812511 (=> res!814786 e!1157861)))

(declare-fun lt!703619 () Int)

(declare-fun lt!703627 () Int)

(assert (=> b!1812511 (= res!814786 (>= lt!703619 lt!703627))))

(declare-fun lt!703600 () Unit!34375)

(declare-fun e!1157857 () Unit!34375)

(assert (=> b!1812511 (= lt!703600 e!1157857)))

(declare-fun c!296103 () Bool)

(assert (=> b!1812511 (= c!296103 (< lt!703627 lt!703619))))

(declare-datatypes ((List!19841 0))(
  ( (Nil!19771) (Cons!19771 (h!25172 Rule!6898) (t!169210 List!19841)) )
))
(declare-fun rules!3447 () List!19841)

(declare-fun getIndex!214 (List!19841 Rule!6898) Int)

(assert (=> b!1812511 (= lt!703619 (getIndex!214 rules!3447 (rule!5655 (_1!11079 lt!703640))))))

(declare-fun token!523 () Token!6664)

(assert (=> b!1812511 (= lt!703627 (getIndex!214 rules!3447 (rule!5655 token!523)))))

(declare-fun b!1812512 () Bool)

(declare-fun e!1157853 () Bool)

(declare-fun e!1157850 () Bool)

(assert (=> b!1812512 (= e!1157853 e!1157850)))

(declare-fun res!814793 () Bool)

(assert (=> b!1812512 (=> (not res!814793) (not e!1157850))))

(declare-datatypes ((Option!4124 0))(
  ( (None!4123) (Some!4123 (v!25642 tuple2!19354)) )
))
(declare-fun lt!703644 () Option!4124)

(declare-fun isDefined!3465 (Option!4124) Bool)

(assert (=> b!1812512 (= res!814793 (isDefined!3465 lt!703644))))

(declare-datatypes ((LexerInterface!3178 0))(
  ( (LexerInterfaceExt!3175 (__x!12581 Int)) (Lexer!3176) )
))
(declare-fun thiss!24550 () LexerInterface!3178)

(declare-fun lt!703618 () List!19840)

(declare-fun maxPrefix!1732 (LexerInterface!3178 List!19841 List!19840) Option!4124)

(assert (=> b!1812512 (= lt!703644 (maxPrefix!1732 thiss!24550 rules!3447 lt!703618))))

(declare-fun lt!703607 () BalanceConc!13098)

(assert (=> b!1812512 (= lt!703618 (list!8049 lt!703607))))

(declare-fun charsOf!2198 (Token!6664) BalanceConc!13098)

(assert (=> b!1812512 (= lt!703607 (charsOf!2198 token!523))))

(declare-fun b!1812513 () Bool)

(declare-fun e!1157858 () Bool)

(assert (=> b!1812513 (= e!1157858 (not e!1157852))))

(declare-fun res!814772 () Bool)

(assert (=> b!1812513 (=> res!814772 e!1157852)))

(declare-fun rule!422 () Rule!6898)

(assert (=> b!1812513 (= res!814772 (not (matchR!2350 (regex!3549 rule!422) lt!703618)))))

(declare-fun ruleValid!1047 (LexerInterface!3178 Rule!6898) Bool)

(assert (=> b!1812513 (ruleValid!1047 thiss!24550 rule!422)))

(declare-fun lt!703614 () Unit!34375)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!570 (LexerInterface!3178 Rule!6898 List!19841) Unit!34375)

(assert (=> b!1812513 (= lt!703614 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!570 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1157865 () Bool)

(declare-fun e!1157871 () Bool)

(declare-fun tp!512014 () Bool)

(declare-fun b!1812514 () Bool)

(declare-fun inv!25764 (String!22527) Bool)

(declare-fun inv!25769 (TokenValueInjection!6938) Bool)

(assert (=> b!1812514 (= e!1157865 (and tp!512014 (inv!25764 (tag!3959 (h!25172 rules!3447))) (inv!25769 (transformation!3549 (h!25172 rules!3447))) e!1157871))))

(declare-fun e!1157848 () Bool)

(declare-fun tp!512011 () Bool)

(declare-fun b!1812515 () Bool)

(declare-fun e!1157840 () Bool)

(declare-fun inv!21 (TokenValue!3639) Bool)

(assert (=> b!1812515 (= e!1157848 (and (inv!21 (value!110819 token!523)) e!1157840 tp!512011))))

(declare-fun b!1812516 () Bool)

(declare-fun e!1157869 () Bool)

(assert (=> b!1812516 (= e!1157869 e!1157841)))

(declare-fun res!814770 () Bool)

(assert (=> b!1812516 (=> res!814770 e!1157841)))

(assert (=> b!1812516 (= res!814770 (= (rule!5655 (_1!11079 lt!703640)) (rule!5655 token!523)))))

(assert (=> b!1812516 (= suffix!1421 (_2!11079 lt!703640))))

(declare-fun lt!703636 () List!19840)

(declare-fun lt!703624 () Unit!34375)

(declare-fun lemmaSamePrefixThenSameSuffix!900 (List!19840 List!19840 List!19840 List!19840 List!19840) Unit!34375)

(assert (=> b!1812516 (= lt!703624 (lemmaSamePrefixThenSameSuffix!900 lt!703618 suffix!1421 lt!703618 (_2!11079 lt!703640) lt!703636))))

(assert (=> b!1812516 (= lt!703637 lt!703618)))

(declare-fun lt!703613 () Unit!34375)

(declare-fun lemmaIsPrefixSameLengthThenSameList!285 (List!19840 List!19840 List!19840) Unit!34375)

(assert (=> b!1812516 (= lt!703613 (lemmaIsPrefixSameLengthThenSameList!285 lt!703637 lt!703618 lt!703636))))

(declare-fun b!1812517 () Bool)

(declare-fun e!1157845 () Unit!34375)

(declare-fun Unit!34377 () Unit!34375)

(assert (=> b!1812517 (= e!1157845 Unit!34377)))

(declare-fun b!1812518 () Bool)

(declare-fun e!1157844 () Bool)

(declare-fun tp!512017 () Bool)

(assert (=> b!1812518 (= e!1157840 (and tp!512017 (inv!25764 (tag!3959 (rule!5655 token!523))) (inv!25769 (transformation!3549 (rule!5655 token!523))) e!1157844))))

(declare-fun b!1812519 () Bool)

(declare-fun e!1157855 () Bool)

(declare-fun tp_is_empty!7997 () Bool)

(declare-fun tp!512022 () Bool)

(assert (=> b!1812519 (= e!1157855 (and tp_is_empty!7997 tp!512022))))

(declare-fun b!1812520 () Bool)

(declare-fun res!814774 () Bool)

(assert (=> b!1812520 (=> (not res!814774) (not e!1157853))))

(declare-fun rulesInvariant!2847 (LexerInterface!3178 List!19841) Bool)

(assert (=> b!1812520 (= res!814774 (rulesInvariant!2847 thiss!24550 rules!3447))))

(declare-fun b!1812521 () Bool)

(declare-fun e!1157856 () Bool)

(declare-fun tp!512020 () Bool)

(assert (=> b!1812521 (= e!1157856 (and e!1157865 tp!512020))))

(declare-fun b!1812522 () Bool)

(declare-fun e!1157860 () Bool)

(assert (=> b!1812522 (= e!1157851 e!1157860)))

(declare-fun res!814773 () Bool)

(assert (=> b!1812522 (=> res!814773 e!1157860)))

(declare-fun lt!703628 () Option!4124)

(declare-fun lt!703601 () TokenValue!3639)

(declare-fun lt!703609 () Int)

(assert (=> b!1812522 (= res!814773 (not (= lt!703628 (Some!4123 (tuple2!19355 (Token!6665 lt!703601 (rule!5655 (_1!11079 lt!703640)) lt!703609 lt!703637) (_2!11079 lt!703640))))))))

(declare-fun size!15717 (BalanceConc!13098) Int)

(assert (=> b!1812522 (= lt!703609 (size!15717 lt!703643))))

(declare-fun apply!5349 (TokenValueInjection!6938 BalanceConc!13098) TokenValue!3639)

(assert (=> b!1812522 (= lt!703601 (apply!5349 (transformation!3549 (rule!5655 (_1!11079 lt!703640))) lt!703643))))

(declare-fun lt!703642 () Unit!34375)

(declare-fun lemmaCharactersSize!607 (Token!6664) Unit!34375)

(assert (=> b!1812522 (= lt!703642 (lemmaCharactersSize!607 (_1!11079 lt!703640)))))

(declare-fun lt!703622 () Unit!34375)

(declare-fun lemmaEqSameImage!460 (TokenValueInjection!6938 BalanceConc!13098 BalanceConc!13098) Unit!34375)

(declare-fun seqFromList!2518 (List!19840) BalanceConc!13098)

(assert (=> b!1812522 (= lt!703622 (lemmaEqSameImage!460 (transformation!3549 (rule!5655 (_1!11079 lt!703640))) lt!703643 (seqFromList!2518 (originalCharacters!4363 (_1!11079 lt!703640)))))))

(declare-fun b!1812523 () Bool)

(declare-fun e!1157870 () Bool)

(assert (=> b!1812523 (= e!1157870 e!1157854)))

(declare-fun res!814792 () Bool)

(assert (=> b!1812523 (=> res!814792 e!1157854)))

(declare-fun isPrefix!1789 (List!19840 List!19840) Bool)

(assert (=> b!1812523 (= res!814792 (not (isPrefix!1789 lt!703637 lt!703636)))))

(declare-fun ++!5379 (List!19840 List!19840) List!19840)

(assert (=> b!1812523 (isPrefix!1789 lt!703637 (++!5379 lt!703637 (_2!11079 lt!703640)))))

(declare-fun lt!703610 () Unit!34375)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1298 (List!19840 List!19840) Unit!34375)

(assert (=> b!1812523 (= lt!703610 (lemmaConcatTwoListThenFirstIsPrefix!1298 lt!703637 (_2!11079 lt!703640)))))

(assert (=> b!1812523 (= lt!703637 (list!8049 lt!703643))))

(assert (=> b!1812523 (= lt!703643 (charsOf!2198 (_1!11079 lt!703640)))))

(declare-fun e!1157872 () Bool)

(assert (=> b!1812523 e!1157872))

(declare-fun res!814776 () Bool)

(assert (=> b!1812523 (=> (not res!814776) (not e!1157872))))

(declare-datatypes ((Option!4125 0))(
  ( (None!4124) (Some!4124 (v!25643 Rule!6898)) )
))
(declare-fun lt!703608 () Option!4125)

(declare-fun isDefined!3466 (Option!4125) Bool)

(assert (=> b!1812523 (= res!814776 (isDefined!3466 lt!703608))))

(declare-fun getRuleFromTag!597 (LexerInterface!3178 List!19841 String!22527) Option!4125)

(assert (=> b!1812523 (= lt!703608 (getRuleFromTag!597 thiss!24550 rules!3447 (tag!3959 (rule!5655 (_1!11079 lt!703640)))))))

(declare-fun lt!703639 () Unit!34375)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!597 (LexerInterface!3178 List!19841 List!19840 Token!6664) Unit!34375)

(assert (=> b!1812523 (= lt!703639 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!597 thiss!24550 rules!3447 lt!703636 (_1!11079 lt!703640)))))

(declare-fun get!6114 (Option!4124) tuple2!19354)

(assert (=> b!1812523 (= lt!703640 (get!6114 lt!703628))))

(declare-fun lt!703617 () Unit!34375)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!700 (LexerInterface!3178 List!19841 List!19840 List!19840) Unit!34375)

(assert (=> b!1812523 (= lt!703617 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!700 thiss!24550 rules!3447 lt!703618 suffix!1421))))

(assert (=> b!1812523 (= lt!703628 (maxPrefix!1732 thiss!24550 rules!3447 lt!703636))))

(assert (=> b!1812523 (isPrefix!1789 lt!703618 lt!703636)))

(declare-fun lt!703632 () Unit!34375)

(assert (=> b!1812523 (= lt!703632 (lemmaConcatTwoListThenFirstIsPrefix!1298 lt!703618 suffix!1421))))

(assert (=> b!1812523 (= lt!703636 (++!5379 lt!703618 suffix!1421))))

(declare-fun b!1812524 () Bool)

(assert (=> b!1812524 (= e!1157861 false)))

(assert (=> b!1812524 (not (matchR!2350 (regex!3549 (rule!5655 (_1!11079 lt!703640))) lt!703618))))

(declare-fun lt!703604 () Unit!34375)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!170 (LexerInterface!3178 List!19841 Rule!6898 List!19840 List!19840 Rule!6898) Unit!34375)

(assert (=> b!1812524 (= lt!703604 (lemmaMaxPrefNoSmallerRuleMatches!170 thiss!24550 rules!3447 (rule!5655 token!523) lt!703618 lt!703618 (rule!5655 (_1!11079 lt!703640))))))

(declare-fun b!1812525 () Bool)

(declare-fun e!1157849 () Bool)

(declare-fun lt!703647 () Rule!6898)

(assert (=> b!1812525 (= e!1157849 (= (rule!5655 (_1!11079 lt!703640)) lt!703647))))

(declare-fun b!1812526 () Bool)

(declare-fun e!1157859 () Bool)

(declare-fun e!1157864 () Bool)

(assert (=> b!1812526 (= e!1157859 e!1157864)))

(declare-fun res!814788 () Bool)

(assert (=> b!1812526 (=> res!814788 e!1157864)))

(declare-fun lt!703638 () Bool)

(assert (=> b!1812526 (= res!814788 lt!703638)))

(declare-fun lt!703602 () Unit!34375)

(declare-fun e!1157847 () Unit!34375)

(assert (=> b!1812526 (= lt!703602 e!1157847)))

(declare-fun c!296102 () Bool)

(assert (=> b!1812526 (= c!296102 lt!703638)))

(declare-fun lt!703623 () Int)

(assert (=> b!1812526 (= lt!703638 (> lt!703609 lt!703623))))

(assert (=> b!1812526 (= lt!703623 (size!15717 lt!703607))))

(declare-fun lt!703629 () Regex!4877)

(assert (=> b!1812526 (matchR!2350 lt!703629 lt!703618)))

(declare-fun lt!703620 () Unit!34375)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!256 (LexerInterface!3178 List!19841 List!19840 Token!6664 Rule!6898 List!19840) Unit!34375)

(assert (=> b!1812526 (= lt!703620 (lemmaMaxPrefixThenMatchesRulesRegex!256 thiss!24550 rules!3447 lt!703618 token!523 rule!422 Nil!19770))))

(declare-fun b!1812527 () Bool)

(declare-fun res!814787 () Bool)

(assert (=> b!1812527 (=> (not res!814787) (not e!1157853))))

(declare-fun isEmpty!12511 (List!19841) Bool)

(assert (=> b!1812527 (= res!814787 (not (isEmpty!12511 rules!3447)))))

(declare-fun b!1812528 () Bool)

(declare-fun res!814775 () Bool)

(assert (=> b!1812528 (=> (not res!814775) (not e!1157858))))

(declare-fun lt!703625 () tuple2!19354)

(assert (=> b!1812528 (= res!814775 (isEmpty!12510 (_2!11079 lt!703625)))))

(declare-fun b!1812529 () Bool)

(declare-fun res!814771 () Bool)

(assert (=> b!1812529 (=> (not res!814771) (not e!1157853))))

(declare-fun contains!3583 (List!19841 Rule!6898) Bool)

(assert (=> b!1812529 (= res!814771 (contains!3583 rules!3447 rule!422))))

(declare-fun res!814783 () Bool)

(assert (=> start!179214 (=> (not res!814783) (not e!1157853))))

(get-info :version)

(assert (=> start!179214 (= res!814783 ((_ is Lexer!3176) thiss!24550))))

(assert (=> start!179214 e!1157853))

(assert (=> start!179214 e!1157855))

(declare-fun e!1157862 () Bool)

(assert (=> start!179214 e!1157862))

(assert (=> start!179214 true))

(declare-fun inv!25770 (Token!6664) Bool)

(assert (=> start!179214 (and (inv!25770 token!523) e!1157848)))

(assert (=> start!179214 e!1157856))

(assert (=> b!1812530 (= e!1157871 (and tp!512016 tp!512019))))

(declare-fun b!1812531 () Bool)

(declare-fun Unit!34378 () Unit!34375)

(assert (=> b!1812531 (= e!1157847 Unit!34378)))

(declare-fun b!1812532 () Bool)

(assert (=> b!1812532 (= e!1157852 e!1157870)))

(declare-fun res!814779 () Bool)

(assert (=> b!1812532 (=> res!814779 e!1157870)))

(declare-fun lt!703615 () List!19840)

(declare-fun prefixMatch!760 (Regex!4877 List!19840) Bool)

(assert (=> b!1812532 (= res!814779 (prefixMatch!760 lt!703629 lt!703615))))

(declare-fun head!4212 (List!19840) C!9928)

(assert (=> b!1812532 (= lt!703615 (++!5379 lt!703618 (Cons!19770 (head!4212 suffix!1421) Nil!19770)))))

(declare-fun rulesRegex!905 (LexerInterface!3178 List!19841) Regex!4877)

(assert (=> b!1812532 (= lt!703629 (rulesRegex!905 thiss!24550 rules!3447))))

(declare-fun b!1812533 () Bool)

(assert (=> b!1812533 (= e!1157872 e!1157849)))

(declare-fun res!814785 () Bool)

(assert (=> b!1812533 (=> (not res!814785) (not e!1157849))))

(assert (=> b!1812533 (= res!814785 (matchR!2350 (regex!3549 lt!703647) (list!8049 (charsOf!2198 (_1!11079 lt!703640)))))))

(declare-fun get!6115 (Option!4125) Rule!6898)

(assert (=> b!1812533 (= lt!703647 (get!6115 lt!703608))))

(declare-fun b!1812534 () Bool)

(assert (=> b!1812534 (= e!1157864 e!1157869)))

(declare-fun res!814777 () Bool)

(assert (=> b!1812534 (=> res!814777 e!1157869)))

(assert (=> b!1812534 (= res!814777 (not (= lt!703609 lt!703623)))))

(declare-fun lt!703645 () Unit!34375)

(assert (=> b!1812534 (= lt!703645 e!1157845)))

(declare-fun c!296101 () Bool)

(assert (=> b!1812534 (= c!296101 (< lt!703609 lt!703623))))

(declare-fun b!1812535 () Bool)

(declare-fun Unit!34379 () Unit!34375)

(assert (=> b!1812535 (= e!1157857 Unit!34379)))

(declare-fun b!1812536 () Bool)

(assert (=> b!1812536 (= e!1157850 e!1157858)))

(declare-fun res!814778 () Bool)

(assert (=> b!1812536 (=> (not res!814778) (not e!1157858))))

(assert (=> b!1812536 (= res!814778 (= (_1!11079 lt!703625) token!523))))

(assert (=> b!1812536 (= lt!703625 (get!6114 lt!703644))))

(declare-fun e!1157868 () Bool)

(assert (=> b!1812537 (= e!1157868 (and tp!512015 tp!512021))))

(declare-fun b!1812538 () Bool)

(declare-fun res!814780 () Bool)

(assert (=> b!1812538 (=> res!814780 e!1157851)))

(assert (=> b!1812538 (= res!814780 (not (= lt!703643 (dynLambda!9826 (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) (value!110819 (_1!11079 lt!703640))))))))

(declare-fun b!1812539 () Bool)

(declare-fun res!814790 () Bool)

(assert (=> b!1812539 (=> (not res!814790) (not e!1157858))))

(assert (=> b!1812539 (= res!814790 (= (rule!5655 token!523) rule!422))))

(assert (=> b!1812540 (= e!1157844 (and tp!512018 tp!512012))))

(declare-fun b!1812541 () Bool)

(declare-fun Unit!34380 () Unit!34375)

(assert (=> b!1812541 (= e!1157847 Unit!34380)))

(declare-fun lt!703603 () Unit!34375)

(assert (=> b!1812541 (= lt!703603 (lemmaMaxPrefixThenMatchesRulesRegex!256 thiss!24550 rules!3447 lt!703636 (_1!11079 lt!703640) (rule!5655 (_1!11079 lt!703640)) (_2!11079 lt!703640)))))

(assert (=> b!1812541 (matchR!2350 lt!703629 lt!703637)))

(declare-fun lt!703630 () List!19840)

(declare-fun getSuffix!956 (List!19840 List!19840) List!19840)

(assert (=> b!1812541 (= lt!703630 (getSuffix!956 lt!703636 lt!703618))))

(declare-fun lt!703606 () Unit!34375)

(assert (=> b!1812541 (= lt!703606 (lemmaSamePrefixThenSameSuffix!900 lt!703618 suffix!1421 lt!703618 lt!703630 lt!703636))))

(assert (=> b!1812541 (= suffix!1421 lt!703630)))

(declare-fun lt!703635 () Unit!34375)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!325 (List!19840 List!19840) Unit!34375)

(assert (=> b!1812541 (= lt!703635 (lemmaAddHeadSuffixToPrefixStillPrefix!325 lt!703618 lt!703636))))

(assert (=> b!1812541 (isPrefix!1789 (++!5379 lt!703618 (Cons!19770 (head!4212 lt!703630) Nil!19770)) lt!703636)))

(declare-fun lt!703626 () Unit!34375)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!197 (List!19840 List!19840 List!19840) Unit!34375)

(assert (=> b!1812541 (= lt!703626 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!197 lt!703637 lt!703615 lt!703636))))

(assert (=> b!1812541 (isPrefix!1789 lt!703615 lt!703637)))

(declare-fun lt!703611 () Unit!34375)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!188 (Regex!4877 List!19840 List!19840) Unit!34375)

(assert (=> b!1812541 (= lt!703611 (lemmaNotPrefixMatchThenCannotMatchLonger!188 lt!703629 lt!703615 lt!703637))))

(assert (=> b!1812541 false))

(declare-fun b!1812542 () Bool)

(declare-fun e!1157846 () Bool)

(assert (=> b!1812542 (= e!1157846 false)))

(declare-fun b!1812543 () Bool)

(declare-fun Unit!34381 () Unit!34375)

(assert (=> b!1812543 (= e!1157857 Unit!34381)))

(declare-fun lt!703633 () Unit!34375)

(assert (=> b!1812543 (= lt!703633 (lemmaMaxPrefNoSmallerRuleMatches!170 thiss!24550 rules!3447 (rule!5655 (_1!11079 lt!703640)) lt!703637 lt!703636 (rule!5655 token!523)))))

(declare-fun res!814781 () Bool)

(assert (=> b!1812543 (= res!814781 (not (matchR!2350 (regex!3549 (rule!5655 token!523)) lt!703637)))))

(assert (=> b!1812543 (=> (not res!814781) (not e!1157846))))

(assert (=> b!1812543 e!1157846))

(declare-fun b!1812544 () Bool)

(declare-fun Unit!34382 () Unit!34375)

(assert (=> b!1812544 (= e!1157845 Unit!34382)))

(declare-fun lt!703605 () Unit!34375)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!258 (LexerInterface!3178 List!19841 Rule!6898 List!19840 List!19840 List!19840 Rule!6898) Unit!34375)

(assert (=> b!1812544 (= lt!703605 (lemmaMaxPrefixOutputsMaxPrefix!258 thiss!24550 rules!3447 (rule!5655 (_1!11079 lt!703640)) lt!703637 lt!703636 lt!703618 rule!422))))

(assert (=> b!1812544 false))

(declare-fun b!1812545 () Bool)

(declare-fun tp!512013 () Bool)

(assert (=> b!1812545 (= e!1157862 (and tp!512013 (inv!25764 (tag!3959 rule!422)) (inv!25769 (transformation!3549 rule!422)) e!1157868))))

(assert (=> b!1812546 (= e!1157854 e!1157866)))

(declare-fun res!814782 () Bool)

(assert (=> b!1812546 (=> res!814782 e!1157866)))

(declare-fun Forall!916 (Int) Bool)

(assert (=> b!1812546 (= res!814782 (not (Forall!916 lambda!71006)))))

(declare-fun lt!703641 () Unit!34375)

(declare-fun lemmaInv!748 (TokenValueInjection!6938) Unit!34375)

(assert (=> b!1812546 (= lt!703641 (lemmaInv!748 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))))))

(declare-fun b!1812547 () Bool)

(assert (=> b!1812547 (= e!1157860 e!1157859)))

(declare-fun res!814791 () Bool)

(assert (=> b!1812547 (=> res!814791 e!1157859)))

(declare-fun lt!703648 () List!19840)

(declare-fun lt!703621 () Option!4124)

(assert (=> b!1812547 (= res!814791 (or (not (= lt!703648 (_2!11079 lt!703640))) (not (= lt!703621 (Some!4123 (tuple2!19355 (_1!11079 lt!703640) lt!703648))))))))

(assert (=> b!1812547 (= (_2!11079 lt!703640) lt!703648)))

(declare-fun lt!703631 () Unit!34375)

(assert (=> b!1812547 (= lt!703631 (lemmaSamePrefixThenSameSuffix!900 lt!703637 (_2!11079 lt!703640) lt!703637 lt!703648 lt!703636))))

(assert (=> b!1812547 (= lt!703648 (getSuffix!956 lt!703636 lt!703637))))

(declare-fun lt!703646 () Int)

(declare-fun lt!703634 () TokenValue!3639)

(assert (=> b!1812547 (= lt!703621 (Some!4123 (tuple2!19355 (Token!6665 lt!703634 (rule!5655 (_1!11079 lt!703640)) lt!703646 lt!703637) (_2!11079 lt!703640))))))

(declare-fun maxPrefixOneRule!1101 (LexerInterface!3178 Rule!6898 List!19840) Option!4124)

(assert (=> b!1812547 (= lt!703621 (maxPrefixOneRule!1101 thiss!24550 (rule!5655 (_1!11079 lt!703640)) lt!703636))))

(declare-fun size!15718 (List!19840) Int)

(assert (=> b!1812547 (= lt!703646 (size!15718 lt!703637))))

(assert (=> b!1812547 (= lt!703634 (apply!5349 (transformation!3549 (rule!5655 (_1!11079 lt!703640))) (seqFromList!2518 lt!703637)))))

(declare-fun lt!703612 () Unit!34375)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!479 (LexerInterface!3178 List!19841 List!19840 List!19840 List!19840 Rule!6898) Unit!34375)

(assert (=> b!1812547 (= lt!703612 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!479 thiss!24550 rules!3447 lt!703637 lt!703636 (_2!11079 lt!703640) (rule!5655 (_1!11079 lt!703640))))))

(assert (= (and start!179214 res!814783) b!1812527))

(assert (= (and b!1812527 res!814787) b!1812520))

(assert (= (and b!1812520 res!814774) b!1812529))

(assert (= (and b!1812529 res!814771) b!1812512))

(assert (= (and b!1812512 res!814793) b!1812536))

(assert (= (and b!1812536 res!814778) b!1812528))

(assert (= (and b!1812528 res!814775) b!1812539))

(assert (= (and b!1812539 res!814790) b!1812513))

(assert (= (and b!1812513 (not res!814772)) b!1812509))

(assert (= (and b!1812509 (not res!814784)) b!1812532))

(assert (= (and b!1812532 (not res!814779)) b!1812523))

(assert (= (and b!1812523 res!814776) b!1812533))

(assert (= (and b!1812533 res!814785) b!1812525))

(assert (= (and b!1812523 (not res!814792)) b!1812510))

(assert (= (and b!1812510 (not res!814794)) b!1812546))

(assert (= (and b!1812546 (not res!814782)) b!1812508))

(assert (= (and b!1812508 (not res!814789)) b!1812538))

(assert (= (and b!1812538 (not res!814780)) b!1812522))

(assert (= (and b!1812522 (not res!814773)) b!1812547))

(assert (= (and b!1812547 (not res!814791)) b!1812526))

(assert (= (and b!1812526 c!296102) b!1812541))

(assert (= (and b!1812526 (not c!296102)) b!1812531))

(assert (= (and b!1812526 (not res!814788)) b!1812534))

(assert (= (and b!1812534 c!296101) b!1812544))

(assert (= (and b!1812534 (not c!296101)) b!1812517))

(assert (= (and b!1812534 (not res!814777)) b!1812516))

(assert (= (and b!1812516 (not res!814770)) b!1812511))

(assert (= (and b!1812511 c!296103) b!1812543))

(assert (= (and b!1812511 (not c!296103)) b!1812535))

(assert (= (and b!1812543 res!814781) b!1812542))

(assert (= (and b!1812511 (not res!814786)) b!1812524))

(assert (= (and start!179214 ((_ is Cons!19770) suffix!1421)) b!1812519))

(assert (= b!1812545 b!1812537))

(assert (= start!179214 b!1812545))

(assert (= b!1812518 b!1812540))

(assert (= b!1812515 b!1812518))

(assert (= start!179214 b!1812515))

(assert (= b!1812514 b!1812530))

(assert (= b!1812521 b!1812514))

(assert (= (and start!179214 ((_ is Cons!19771) rules!3447)) b!1812521))

(declare-fun b_lambda!59751 () Bool)

(assert (=> (not b_lambda!59751) (not b!1812508)))

(declare-fun t!169191 () Bool)

(declare-fun tb!110743 () Bool)

(assert (=> (and b!1812540 (= (toChars!4939 (transformation!3549 (rule!5655 token!523))) (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) t!169191) tb!110743))

(declare-fun tp!512025 () Bool)

(declare-fun e!1157884 () Bool)

(declare-fun b!1812563 () Bool)

(declare-fun inv!25771 (Conc!6577) Bool)

(assert (=> b!1812563 (= e!1157884 (and (inv!25771 (c!296105 (dynLambda!9826 (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) (dynLambda!9827 (toValue!5080 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) lt!703643)))) tp!512025))))

(declare-fun result!132978 () Bool)

(declare-fun inv!25772 (BalanceConc!13098) Bool)

(assert (=> tb!110743 (= result!132978 (and (inv!25772 (dynLambda!9826 (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) (dynLambda!9827 (toValue!5080 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) lt!703643))) e!1157884))))

(assert (= tb!110743 b!1812563))

(declare-fun m!2241531 () Bool)

(assert (=> b!1812563 m!2241531))

(declare-fun m!2241533 () Bool)

(assert (=> tb!110743 m!2241533))

(assert (=> b!1812508 t!169191))

(declare-fun b_and!139963 () Bool)

(assert (= b_and!139953 (and (=> t!169191 result!132978) b_and!139963)))

(declare-fun tb!110745 () Bool)

(declare-fun t!169193 () Bool)

(assert (=> (and b!1812530 (= (toChars!4939 (transformation!3549 (h!25172 rules!3447))) (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) t!169193) tb!110745))

(declare-fun result!132982 () Bool)

(assert (= result!132982 result!132978))

(assert (=> b!1812508 t!169193))

(declare-fun b_and!139965 () Bool)

(assert (= b_and!139957 (and (=> t!169193 result!132982) b_and!139965)))

(declare-fun t!169195 () Bool)

(declare-fun tb!110747 () Bool)

(assert (=> (and b!1812537 (= (toChars!4939 (transformation!3549 rule!422)) (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) t!169195) tb!110747))

(declare-fun result!132984 () Bool)

(assert (= result!132984 result!132978))

(assert (=> b!1812508 t!169195))

(declare-fun b_and!139967 () Bool)

(assert (= b_and!139961 (and (=> t!169195 result!132984) b_and!139967)))

(declare-fun b_lambda!59753 () Bool)

(assert (=> (not b_lambda!59753) (not b!1812508)))

(declare-fun t!169197 () Bool)

(declare-fun tb!110749 () Bool)

(assert (=> (and b!1812540 (= (toValue!5080 (transformation!3549 (rule!5655 token!523))) (toValue!5080 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) t!169197) tb!110749))

(declare-fun result!132986 () Bool)

(assert (=> tb!110749 (= result!132986 (inv!21 (dynLambda!9827 (toValue!5080 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) lt!703643)))))

(declare-fun m!2241535 () Bool)

(assert (=> tb!110749 m!2241535))

(assert (=> b!1812508 t!169197))

(declare-fun b_and!139969 () Bool)

(assert (= b_and!139951 (and (=> t!169197 result!132986) b_and!139969)))

(declare-fun t!169199 () Bool)

(declare-fun tb!110751 () Bool)

(assert (=> (and b!1812530 (= (toValue!5080 (transformation!3549 (h!25172 rules!3447))) (toValue!5080 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) t!169199) tb!110751))

(declare-fun result!132990 () Bool)

(assert (= result!132990 result!132986))

(assert (=> b!1812508 t!169199))

(declare-fun b_and!139971 () Bool)

(assert (= b_and!139955 (and (=> t!169199 result!132990) b_and!139971)))

(declare-fun t!169201 () Bool)

(declare-fun tb!110753 () Bool)

(assert (=> (and b!1812537 (= (toValue!5080 (transformation!3549 rule!422)) (toValue!5080 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) t!169201) tb!110753))

(declare-fun result!132992 () Bool)

(assert (= result!132992 result!132986))

(assert (=> b!1812508 t!169201))

(declare-fun b_and!139973 () Bool)

(assert (= b_and!139959 (and (=> t!169201 result!132992) b_and!139973)))

(declare-fun b_lambda!59755 () Bool)

(assert (=> (not b_lambda!59755) (not b!1812538)))

(declare-fun t!169203 () Bool)

(declare-fun tb!110755 () Bool)

(assert (=> (and b!1812540 (= (toChars!4939 (transformation!3549 (rule!5655 token!523))) (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) t!169203) tb!110755))

(declare-fun b!1812566 () Bool)

(declare-fun e!1157888 () Bool)

(declare-fun tp!512026 () Bool)

(assert (=> b!1812566 (= e!1157888 (and (inv!25771 (c!296105 (dynLambda!9826 (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) (value!110819 (_1!11079 lt!703640))))) tp!512026))))

(declare-fun result!132994 () Bool)

(assert (=> tb!110755 (= result!132994 (and (inv!25772 (dynLambda!9826 (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640)))) (value!110819 (_1!11079 lt!703640)))) e!1157888))))

(assert (= tb!110755 b!1812566))

(declare-fun m!2241537 () Bool)

(assert (=> b!1812566 m!2241537))

(declare-fun m!2241539 () Bool)

(assert (=> tb!110755 m!2241539))

(assert (=> b!1812538 t!169203))

(declare-fun b_and!139975 () Bool)

(assert (= b_and!139963 (and (=> t!169203 result!132994) b_and!139975)))

(declare-fun tb!110757 () Bool)

(declare-fun t!169205 () Bool)

(assert (=> (and b!1812530 (= (toChars!4939 (transformation!3549 (h!25172 rules!3447))) (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) t!169205) tb!110757))

(declare-fun result!132996 () Bool)

(assert (= result!132996 result!132994))

(assert (=> b!1812538 t!169205))

(declare-fun b_and!139977 () Bool)

(assert (= b_and!139965 (and (=> t!169205 result!132996) b_and!139977)))

(declare-fun t!169207 () Bool)

(declare-fun tb!110759 () Bool)

(assert (=> (and b!1812537 (= (toChars!4939 (transformation!3549 rule!422)) (toChars!4939 (transformation!3549 (rule!5655 (_1!11079 lt!703640))))) t!169207) tb!110759))

(declare-fun result!132998 () Bool)

(assert (= result!132998 result!132994))

(assert (=> b!1812538 t!169207))

(declare-fun b_and!139979 () Bool)

(assert (= b_and!139967 (and (=> t!169207 result!132998) b_and!139979)))

(declare-fun m!2241541 () Bool)

(assert (=> b!1812546 m!2241541))

(declare-fun m!2241543 () Bool)

(assert (=> b!1812546 m!2241543))

(declare-fun m!2241545 () Bool)

(assert (=> start!179214 m!2241545))

(declare-fun m!2241547 () Bool)

(assert (=> b!1812543 m!2241547))

(declare-fun m!2241549 () Bool)

(assert (=> b!1812543 m!2241549))

(declare-fun m!2241551 () Bool)

(assert (=> b!1812544 m!2241551))

(declare-fun m!2241553 () Bool)

(assert (=> b!1812533 m!2241553))

(assert (=> b!1812533 m!2241553))

(declare-fun m!2241555 () Bool)

(assert (=> b!1812533 m!2241555))

(assert (=> b!1812533 m!2241555))

(declare-fun m!2241557 () Bool)

(assert (=> b!1812533 m!2241557))

(declare-fun m!2241559 () Bool)

(assert (=> b!1812533 m!2241559))

(declare-fun m!2241561 () Bool)

(assert (=> b!1812518 m!2241561))

(declare-fun m!2241563 () Bool)

(assert (=> b!1812518 m!2241563))

(declare-fun m!2241565 () Bool)

(assert (=> b!1812512 m!2241565))

(declare-fun m!2241567 () Bool)

(assert (=> b!1812512 m!2241567))

(declare-fun m!2241569 () Bool)

(assert (=> b!1812512 m!2241569))

(declare-fun m!2241571 () Bool)

(assert (=> b!1812512 m!2241571))

(declare-fun m!2241573 () Bool)

(assert (=> b!1812520 m!2241573))

(declare-fun m!2241575 () Bool)

(assert (=> b!1812527 m!2241575))

(declare-fun m!2241577 () Bool)

(assert (=> b!1812508 m!2241577))

(assert (=> b!1812508 m!2241577))

(declare-fun m!2241579 () Bool)

(assert (=> b!1812508 m!2241579))

(assert (=> b!1812508 m!2241579))

(declare-fun m!2241581 () Bool)

(assert (=> b!1812508 m!2241581))

(declare-fun m!2241583 () Bool)

(assert (=> b!1812508 m!2241583))

(declare-fun m!2241585 () Bool)

(assert (=> b!1812514 m!2241585))

(declare-fun m!2241587 () Bool)

(assert (=> b!1812514 m!2241587))

(declare-fun m!2241589 () Bool)

(assert (=> b!1812511 m!2241589))

(declare-fun m!2241591 () Bool)

(assert (=> b!1812511 m!2241591))

(declare-fun m!2241593 () Bool)

(assert (=> b!1812528 m!2241593))

(declare-fun m!2241595 () Bool)

(assert (=> b!1812536 m!2241595))

(declare-fun m!2241597 () Bool)

(assert (=> b!1812545 m!2241597))

(declare-fun m!2241599 () Bool)

(assert (=> b!1812545 m!2241599))

(declare-fun m!2241601 () Bool)

(assert (=> b!1812547 m!2241601))

(declare-fun m!2241603 () Bool)

(assert (=> b!1812547 m!2241603))

(declare-fun m!2241605 () Bool)

(assert (=> b!1812547 m!2241605))

(declare-fun m!2241607 () Bool)

(assert (=> b!1812547 m!2241607))

(declare-fun m!2241609 () Bool)

(assert (=> b!1812547 m!2241609))

(declare-fun m!2241611 () Bool)

(assert (=> b!1812547 m!2241611))

(assert (=> b!1812547 m!2241601))

(declare-fun m!2241613 () Bool)

(assert (=> b!1812547 m!2241613))

(declare-fun m!2241615 () Bool)

(assert (=> b!1812529 m!2241615))

(declare-fun m!2241617 () Bool)

(assert (=> b!1812510 m!2241617))

(declare-fun m!2241619 () Bool)

(assert (=> b!1812515 m!2241619))

(declare-fun m!2241621 () Bool)

(assert (=> b!1812516 m!2241621))

(declare-fun m!2241623 () Bool)

(assert (=> b!1812516 m!2241623))

(declare-fun m!2241625 () Bool)

(assert (=> b!1812532 m!2241625))

(declare-fun m!2241627 () Bool)

(assert (=> b!1812532 m!2241627))

(declare-fun m!2241629 () Bool)

(assert (=> b!1812532 m!2241629))

(declare-fun m!2241631 () Bool)

(assert (=> b!1812532 m!2241631))

(declare-fun m!2241633 () Bool)

(assert (=> b!1812541 m!2241633))

(declare-fun m!2241635 () Bool)

(assert (=> b!1812541 m!2241635))

(declare-fun m!2241637 () Bool)

(assert (=> b!1812541 m!2241637))

(declare-fun m!2241639 () Bool)

(assert (=> b!1812541 m!2241639))

(declare-fun m!2241641 () Bool)

(assert (=> b!1812541 m!2241641))

(declare-fun m!2241643 () Bool)

(assert (=> b!1812541 m!2241643))

(assert (=> b!1812541 m!2241637))

(declare-fun m!2241645 () Bool)

(assert (=> b!1812541 m!2241645))

(declare-fun m!2241647 () Bool)

(assert (=> b!1812541 m!2241647))

(declare-fun m!2241649 () Bool)

(assert (=> b!1812541 m!2241649))

(declare-fun m!2241651 () Bool)

(assert (=> b!1812541 m!2241651))

(declare-fun m!2241653 () Bool)

(assert (=> b!1812541 m!2241653))

(declare-fun m!2241655 () Bool)

(assert (=> b!1812524 m!2241655))

(declare-fun m!2241657 () Bool)

(assert (=> b!1812524 m!2241657))

(declare-fun m!2241659 () Bool)

(assert (=> b!1812522 m!2241659))

(declare-fun m!2241661 () Bool)

(assert (=> b!1812522 m!2241661))

(declare-fun m!2241663 () Bool)

(assert (=> b!1812522 m!2241663))

(assert (=> b!1812522 m!2241659))

(declare-fun m!2241665 () Bool)

(assert (=> b!1812522 m!2241665))

(declare-fun m!2241667 () Bool)

(assert (=> b!1812522 m!2241667))

(declare-fun m!2241669 () Bool)

(assert (=> b!1812509 m!2241669))

(declare-fun m!2241671 () Bool)

(assert (=> b!1812513 m!2241671))

(declare-fun m!2241673 () Bool)

(assert (=> b!1812513 m!2241673))

(declare-fun m!2241675 () Bool)

(assert (=> b!1812513 m!2241675))

(declare-fun m!2241677 () Bool)

(assert (=> b!1812523 m!2241677))

(assert (=> b!1812523 m!2241553))

(declare-fun m!2241679 () Bool)

(assert (=> b!1812523 m!2241679))

(declare-fun m!2241681 () Bool)

(assert (=> b!1812523 m!2241681))

(declare-fun m!2241683 () Bool)

(assert (=> b!1812523 m!2241683))

(declare-fun m!2241685 () Bool)

(assert (=> b!1812523 m!2241685))

(declare-fun m!2241687 () Bool)

(assert (=> b!1812523 m!2241687))

(declare-fun m!2241689 () Bool)

(assert (=> b!1812523 m!2241689))

(assert (=> b!1812523 m!2241681))

(declare-fun m!2241691 () Bool)

(assert (=> b!1812523 m!2241691))

(declare-fun m!2241693 () Bool)

(assert (=> b!1812523 m!2241693))

(declare-fun m!2241695 () Bool)

(assert (=> b!1812523 m!2241695))

(declare-fun m!2241697 () Bool)

(assert (=> b!1812523 m!2241697))

(declare-fun m!2241699 () Bool)

(assert (=> b!1812523 m!2241699))

(declare-fun m!2241701 () Bool)

(assert (=> b!1812523 m!2241701))

(declare-fun m!2241703 () Bool)

(assert (=> b!1812523 m!2241703))

(declare-fun m!2241705 () Bool)

(assert (=> b!1812538 m!2241705))

(declare-fun m!2241707 () Bool)

(assert (=> b!1812526 m!2241707))

(declare-fun m!2241709 () Bool)

(assert (=> b!1812526 m!2241709))

(declare-fun m!2241711 () Bool)

(assert (=> b!1812526 m!2241711))

(check-sat (not b!1812523) (not b_lambda!59755) (not b_lambda!59753) (not b!1812529) (not b!1812543) (not b_next!50627) (not b!1812520) (not b!1812526) (not b!1812518) (not b!1812513) (not b!1812510) (not tb!110749) b_and!139977 (not b!1812524) (not b!1812544) (not start!179214) (not b!1812533) b_and!139973 (not b!1812511) (not b!1812515) (not b!1812541) (not b!1812563) (not b!1812508) (not b_next!50631) (not b!1812516) (not tb!110743) (not b_next!50629) (not b!1812514) (not b!1812512) (not b!1812522) (not b!1812547) (not b!1812519) (not b!1812566) b_and!139969 (not b!1812528) (not b_next!50633) tp_is_empty!7997 (not b_next!50623) (not b!1812527) (not b!1812532) (not b!1812536) (not b_next!50625) b_and!139975 b_and!139971 (not tb!110755) (not b_lambda!59751) (not b!1812546) b_and!139979 (not b!1812509) (not b!1812521) (not b!1812545))
(check-sat b_and!139977 b_and!139973 (not b_next!50631) (not b_next!50629) b_and!139969 (not b_next!50633) (not b_next!50627) (not b_next!50623) b_and!139971 b_and!139979 (not b_next!50625) b_and!139975)

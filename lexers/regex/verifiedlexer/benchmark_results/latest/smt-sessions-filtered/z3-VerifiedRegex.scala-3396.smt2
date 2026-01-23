; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192212 () Bool)

(assert start!192212)

(declare-fun b!1916772 () Bool)

(declare-fun b_free!54313 () Bool)

(declare-fun b_next!55017 () Bool)

(assert (=> b!1916772 (= b_free!54313 (not b_next!55017))))

(declare-fun tp!546909 () Bool)

(declare-fun b_and!149519 () Bool)

(assert (=> b!1916772 (= tp!546909 b_and!149519)))

(declare-fun b_free!54315 () Bool)

(declare-fun b_next!55019 () Bool)

(assert (=> b!1916772 (= b_free!54315 (not b_next!55019))))

(declare-fun tp!546911 () Bool)

(declare-fun b_and!149521 () Bool)

(assert (=> b!1916772 (= tp!546911 b_and!149521)))

(declare-fun b!1916775 () Bool)

(declare-fun b_free!54317 () Bool)

(declare-fun b_next!55021 () Bool)

(assert (=> b!1916775 (= b_free!54317 (not b_next!55021))))

(declare-fun tp!546912 () Bool)

(declare-fun b_and!149523 () Bool)

(assert (=> b!1916775 (= tp!546912 b_and!149523)))

(declare-fun b_free!54319 () Bool)

(declare-fun b_next!55023 () Bool)

(assert (=> b!1916775 (= b_free!54319 (not b_next!55023))))

(declare-fun tp!546907 () Bool)

(declare-fun b_and!149525 () Bool)

(assert (=> b!1916775 (= tp!546907 b_and!149525)))

(declare-fun b!1916773 () Bool)

(declare-fun b_free!54321 () Bool)

(declare-fun b_next!55025 () Bool)

(assert (=> b!1916773 (= b_free!54321 (not b_next!55025))))

(declare-fun tp!546916 () Bool)

(declare-fun b_and!149527 () Bool)

(assert (=> b!1916773 (= tp!546916 b_and!149527)))

(declare-fun b_free!54323 () Bool)

(declare-fun b_next!55027 () Bool)

(assert (=> b!1916773 (= b_free!54323 (not b_next!55027))))

(declare-fun tp!546915 () Bool)

(declare-fun b_and!149529 () Bool)

(assert (=> b!1916773 (= tp!546915 b_and!149529)))

(declare-fun b!1916747 () Bool)

(declare-fun e!1224512 () Bool)

(declare-fun e!1224538 () Bool)

(assert (=> b!1916747 (= e!1224512 e!1224538)))

(declare-fun res!856728 () Bool)

(assert (=> b!1916747 (=> res!856728 e!1224538)))

(declare-datatypes ((C!10732 0))(
  ( (C!10733 (val!6318 Int)) )
))
(declare-datatypes ((List!21740 0))(
  ( (Nil!21658) (Cons!21658 (h!27059 C!10732) (t!178533 List!21740)) )
))
(declare-fun lt!734655 () List!21740)

(declare-fun lt!734649 () C!10732)

(declare-fun contains!3940 (List!21740 C!10732) Bool)

(assert (=> b!1916747 (= res!856728 (contains!3940 lt!734655 lt!734649))))

(declare-fun lt!734664 () List!21740)

(declare-fun head!4478 (List!21740) C!10732)

(assert (=> b!1916747 (= lt!734649 (head!4478 lt!734664))))

(declare-fun res!856731 () Bool)

(declare-fun e!1224526 () Bool)

(assert (=> start!192212 (=> (not res!856731) (not e!1224526))))

(declare-datatypes ((LexerInterface!3481 0))(
  ( (LexerInterfaceExt!3478 (__x!13506 Int)) (Lexer!3479) )
))
(declare-fun thiss!23328 () LexerInterface!3481)

(get-info :version)

(assert (=> start!192212 (= res!856731 ((_ is Lexer!3479) thiss!23328))))

(assert (=> start!192212 e!1224526))

(assert (=> start!192212 true))

(declare-fun e!1224529 () Bool)

(assert (=> start!192212 e!1224529))

(declare-fun e!1224524 () Bool)

(assert (=> start!192212 e!1224524))

(declare-datatypes ((List!21741 0))(
  ( (Nil!21659) (Cons!21659 (h!27060 (_ BitVec 16)) (t!178534 List!21741)) )
))
(declare-datatypes ((TokenValue!4004 0))(
  ( (FloatLiteralValue!8008 (text!28473 List!21741)) (TokenValueExt!4003 (__x!13507 Int)) (Broken!20020 (value!121803 List!21741)) (Object!4085) (End!4004) (Def!4004) (Underscore!4004) (Match!4004) (Else!4004) (Error!4004) (Case!4004) (If!4004) (Extends!4004) (Abstract!4004) (Class!4004) (Val!4004) (DelimiterValue!8008 (del!4064 List!21741)) (KeywordValue!4010 (value!121804 List!21741)) (CommentValue!8008 (value!121805 List!21741)) (WhitespaceValue!8008 (value!121806 List!21741)) (IndentationValue!4004 (value!121807 List!21741)) (String!25137) (Int32!4004) (Broken!20021 (value!121808 List!21741)) (Boolean!4005) (Unit!36061) (OperatorValue!4007 (op!4064 List!21741)) (IdentifierValue!8008 (value!121809 List!21741)) (IdentifierValue!8009 (value!121810 List!21741)) (WhitespaceValue!8009 (value!121811 List!21741)) (True!8008) (False!8008) (Broken!20022 (value!121812 List!21741)) (Broken!20023 (value!121813 List!21741)) (True!8009) (RightBrace!4004) (RightBracket!4004) (Colon!4004) (Null!4004) (Comma!4004) (LeftBracket!4004) (False!8009) (LeftBrace!4004) (ImaginaryLiteralValue!4004 (text!28474 List!21741)) (StringLiteralValue!12012 (value!121814 List!21741)) (EOFValue!4004 (value!121815 List!21741)) (IdentValue!4004 (value!121816 List!21741)) (DelimiterValue!8009 (value!121817 List!21741)) (DedentValue!4004 (value!121818 List!21741)) (NewLineValue!4004 (value!121819 List!21741)) (IntegerValue!12012 (value!121820 (_ BitVec 32)) (text!28475 List!21741)) (IntegerValue!12013 (value!121821 Int) (text!28476 List!21741)) (Times!4004) (Or!4004) (Equal!4004) (Minus!4004) (Broken!20024 (value!121822 List!21741)) (And!4004) (Div!4004) (LessEqual!4004) (Mod!4004) (Concat!9297) (Not!4004) (Plus!4004) (SpaceValue!4004 (value!121823 List!21741)) (IntegerValue!12014 (value!121824 Int) (text!28477 List!21741)) (StringLiteralValue!12013 (text!28478 List!21741)) (FloatLiteralValue!8009 (text!28479 List!21741)) (BytesLiteralValue!4004 (value!121825 List!21741)) (CommentValue!8009 (value!121826 List!21741)) (StringLiteralValue!12014 (value!121827 List!21741)) (ErrorTokenValue!4004 (msg!4065 List!21741)) )
))
(declare-datatypes ((Regex!5293 0))(
  ( (ElementMatch!5293 (c!312016 C!10732)) (Concat!9298 (regOne!11098 Regex!5293) (regTwo!11098 Regex!5293)) (EmptyExpr!5293) (Star!5293 (reg!5622 Regex!5293)) (EmptyLang!5293) (Union!5293 (regOne!11099 Regex!5293) (regTwo!11099 Regex!5293)) )
))
(declare-datatypes ((String!25138 0))(
  ( (String!25139 (value!121828 String)) )
))
(declare-datatypes ((IArray!14461 0))(
  ( (IArray!14462 (innerList!7288 List!21740)) )
))
(declare-datatypes ((Conc!7228 0))(
  ( (Node!7228 (left!17296 Conc!7228) (right!17626 Conc!7228) (csize!14686 Int) (cheight!7439 Int)) (Leaf!10625 (xs!10122 IArray!14461) (csize!14687 Int)) (Empty!7228) )
))
(declare-datatypes ((BalanceConc!14272 0))(
  ( (BalanceConc!14273 (c!312017 Conc!7228)) )
))
(declare-datatypes ((TokenValueInjection!7592 0))(
  ( (TokenValueInjection!7593 (toValue!5497 Int) (toChars!5356 Int)) )
))
(declare-datatypes ((Rule!7536 0))(
  ( (Rule!7537 (regex!3868 Regex!5293) (tag!4308 String!25138) (isSeparator!3868 Bool) (transformation!3868 TokenValueInjection!7592)) )
))
(declare-datatypes ((Token!7288 0))(
  ( (Token!7289 (value!121829 TokenValue!4004) (rule!6071 Rule!7536) (size!17014 Int) (originalCharacters!4675 List!21740)) )
))
(declare-fun separatorToken!354 () Token!7288)

(declare-fun e!1224532 () Bool)

(declare-fun inv!28756 (Token!7288) Bool)

(assert (=> start!192212 (and (inv!28756 separatorToken!354) e!1224532)))

(declare-fun b!1916748 () Bool)

(declare-fun res!856729 () Bool)

(declare-fun e!1224515 () Bool)

(assert (=> b!1916748 (=> res!856729 e!1224515)))

(declare-datatypes ((List!21742 0))(
  ( (Nil!21660) (Cons!21660 (h!27061 Rule!7536) (t!178535 List!21742)) )
))
(declare-fun rules!3198 () List!21742)

(declare-datatypes ((List!21743 0))(
  ( (Nil!21661) (Cons!21661 (h!27062 Token!7288) (t!178536 List!21743)) )
))
(declare-fun tokens!598 () List!21743)

(declare-fun rulesProduceIndividualToken!1653 (LexerInterface!3481 List!21742 Token!7288) Bool)

(assert (=> b!1916748 (= res!856729 (not (rulesProduceIndividualToken!1653 thiss!23328 rules!3198 (h!27062 tokens!598))))))

(declare-fun tp!546913 () Bool)

(declare-fun e!1224527 () Bool)

(declare-fun e!1224519 () Bool)

(declare-fun b!1916749 () Bool)

(declare-fun inv!28753 (String!25138) Bool)

(declare-fun inv!28757 (TokenValueInjection!7592) Bool)

(assert (=> b!1916749 (= e!1224519 (and tp!546913 (inv!28753 (tag!4308 (rule!6071 (h!27062 tokens!598)))) (inv!28757 (transformation!3868 (rule!6071 (h!27062 tokens!598)))) e!1224527))))

(declare-fun b!1916750 () Bool)

(declare-fun e!1224514 () Bool)

(declare-fun e!1224531 () Bool)

(assert (=> b!1916750 (= e!1224514 e!1224531)))

(declare-fun res!856733 () Bool)

(assert (=> b!1916750 (=> (not res!856733) (not e!1224531))))

(declare-fun lt!734657 () Rule!7536)

(declare-fun lt!734671 () List!21740)

(declare-fun matchR!2579 (Regex!5293 List!21740) Bool)

(assert (=> b!1916750 (= res!856733 (matchR!2579 (regex!3868 lt!734657) lt!734671))))

(declare-datatypes ((Option!4441 0))(
  ( (None!4440) (Some!4440 (v!26513 Rule!7536)) )
))
(declare-fun lt!734665 () Option!4441)

(declare-fun get!6782 (Option!4441) Rule!7536)

(assert (=> b!1916750 (= lt!734657 (get!6782 lt!734665))))

(declare-fun b!1916751 () Bool)

(declare-fun e!1224537 () Bool)

(declare-fun e!1224520 () Bool)

(assert (=> b!1916751 (= e!1224537 e!1224520)))

(declare-fun res!856735 () Bool)

(assert (=> b!1916751 (=> (not res!856735) (not e!1224520))))

(declare-fun lt!734653 () Rule!7536)

(declare-fun lt!734654 () List!21740)

(assert (=> b!1916751 (= res!856735 (matchR!2579 (regex!3868 lt!734653) lt!734654))))

(declare-fun lt!734646 () Option!4441)

(assert (=> b!1916751 (= lt!734653 (get!6782 lt!734646))))

(declare-fun b!1916752 () Bool)

(declare-fun res!856720 () Bool)

(assert (=> b!1916752 (=> res!856720 e!1224512)))

(declare-fun isEmpty!13349 (List!21740) Bool)

(assert (=> b!1916752 (= res!856720 (isEmpty!13349 lt!734664))))

(declare-fun b!1916753 () Bool)

(declare-fun tp!546917 () Bool)

(declare-fun e!1224525 () Bool)

(declare-fun inv!21 (TokenValue!4004) Bool)

(assert (=> b!1916753 (= e!1224525 (and (inv!21 (value!121829 (h!27062 tokens!598))) e!1224519 tp!546917))))

(declare-fun b!1916754 () Bool)

(declare-fun e!1224535 () Bool)

(assert (=> b!1916754 (= e!1224538 e!1224535)))

(declare-fun res!856736 () Bool)

(assert (=> b!1916754 (=> res!856736 e!1224535)))

(declare-fun isEmpty!13350 (List!21743) Bool)

(assert (=> b!1916754 (= res!856736 (isEmpty!13350 tokens!598))))

(declare-fun lt!734648 () List!21740)

(declare-datatypes ((tuple2!20390 0))(
  ( (tuple2!20391 (_1!11664 Token!7288) (_2!11664 List!21740)) )
))
(declare-datatypes ((Option!4442 0))(
  ( (None!4441) (Some!4441 (v!26514 tuple2!20390)) )
))
(declare-fun maxPrefix!1927 (LexerInterface!3481 List!21742 List!21740) Option!4442)

(assert (=> b!1916754 (= (maxPrefix!1927 thiss!23328 rules!3198 lt!734648) (Some!4441 (tuple2!20391 (h!27062 tokens!598) lt!734664)))))

(declare-datatypes ((Unit!36062 0))(
  ( (Unit!36063) )
))
(declare-fun lt!734656 () Unit!36062)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!104 (LexerInterface!3481 List!21742 Token!7288 Rule!7536 List!21740 Rule!7536) Unit!36062)

(assert (=> b!1916754 (= lt!734656 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!104 thiss!23328 rules!3198 (h!27062 tokens!598) (rule!6071 (h!27062 tokens!598)) lt!734664 (rule!6071 separatorToken!354)))))

(declare-fun b!1916755 () Bool)

(declare-fun e!1224536 () Bool)

(declare-fun tp!546914 () Bool)

(assert (=> b!1916755 (= e!1224529 (and e!1224536 tp!546914))))

(declare-fun b!1916756 () Bool)

(declare-fun res!856723 () Bool)

(assert (=> b!1916756 (=> (not res!856723) (not e!1224526))))

(declare-fun sepAndNonSepRulesDisjointChars!966 (List!21742 List!21742) Bool)

(assert (=> b!1916756 (= res!856723 (sepAndNonSepRulesDisjointChars!966 rules!3198 rules!3198))))

(declare-fun b!1916757 () Bool)

(declare-fun res!856713 () Bool)

(assert (=> b!1916757 (=> (not res!856713) (not e!1224526))))

(declare-fun rulesInvariant!3088 (LexerInterface!3481 List!21742) Bool)

(assert (=> b!1916757 (= res!856713 (rulesInvariant!3088 thiss!23328 rules!3198))))

(declare-fun b!1916758 () Bool)

(declare-fun res!856718 () Bool)

(assert (=> b!1916758 (=> (not res!856718) (not e!1224526))))

(declare-fun rulesProduceEachTokenIndividuallyList!1212 (LexerInterface!3481 List!21742 List!21743) Bool)

(assert (=> b!1916758 (= res!856718 (rulesProduceEachTokenIndividuallyList!1212 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1916759 () Bool)

(declare-fun res!856739 () Bool)

(assert (=> b!1916759 (=> (not res!856739) (not e!1224526))))

(assert (=> b!1916759 (= res!856739 (isSeparator!3868 (rule!6071 separatorToken!354)))))

(declare-fun b!1916760 () Bool)

(declare-fun e!1224517 () Unit!36062)

(declare-fun Unit!36064 () Unit!36062)

(assert (=> b!1916760 (= e!1224517 Unit!36064)))

(declare-fun lt!734652 () Unit!36062)

(declare-fun lt!734647 () C!10732)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!276 (Regex!5293 List!21740 C!10732) Unit!36062)

(assert (=> b!1916760 (= lt!734652 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!276 (regex!3868 (rule!6071 separatorToken!354)) lt!734654 lt!734647))))

(declare-fun res!856738 () Bool)

(assert (=> b!1916760 (= res!856738 (not (matchR!2579 (regex!3868 (rule!6071 separatorToken!354)) lt!734654)))))

(declare-fun e!1224518 () Bool)

(assert (=> b!1916760 (=> (not res!856738) (not e!1224518))))

(assert (=> b!1916760 e!1224518))

(declare-fun b!1916761 () Bool)

(declare-fun e!1224530 () Bool)

(assert (=> b!1916761 (= e!1224526 (not e!1224530))))

(declare-fun res!856737 () Bool)

(assert (=> b!1916761 (=> res!856737 e!1224530)))

(declare-fun lt!734675 () Option!4442)

(declare-fun lt!734650 () Bool)

(assert (=> b!1916761 (= res!856737 (or (and (not lt!734650) (= (_1!11664 (v!26514 lt!734675)) (h!27062 tokens!598))) lt!734650 (= (_1!11664 (v!26514 lt!734675)) (h!27062 tokens!598))))))

(assert (=> b!1916761 (= lt!734650 (not ((_ is Some!4441) lt!734675)))))

(declare-fun lt!734651 () List!21740)

(declare-fun ++!5823 (List!21740 List!21740) List!21740)

(assert (=> b!1916761 (= lt!734675 (maxPrefix!1927 thiss!23328 rules!3198 (++!5823 lt!734671 lt!734651)))))

(declare-fun printWithSeparatorTokenWhenNeededList!524 (LexerInterface!3481 List!21742 List!21743 Token!7288) List!21740)

(assert (=> b!1916761 (= lt!734651 (printWithSeparatorTokenWhenNeededList!524 thiss!23328 rules!3198 (t!178536 tokens!598) separatorToken!354))))

(assert (=> b!1916761 e!1224514))

(declare-fun res!856730 () Bool)

(assert (=> b!1916761 (=> (not res!856730) (not e!1224514))))

(declare-fun isDefined!3739 (Option!4441) Bool)

(assert (=> b!1916761 (= res!856730 (isDefined!3739 lt!734665))))

(declare-fun getRuleFromTag!711 (LexerInterface!3481 List!21742 String!25138) Option!4441)

(assert (=> b!1916761 (= lt!734665 (getRuleFromTag!711 thiss!23328 rules!3198 (tag!4308 (rule!6071 (h!27062 tokens!598)))))))

(declare-fun lt!734669 () Unit!36062)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!711 (LexerInterface!3481 List!21742 List!21740 Token!7288) Unit!36062)

(assert (=> b!1916761 (= lt!734669 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!711 thiss!23328 rules!3198 lt!734671 (h!27062 tokens!598)))))

(declare-fun lt!734672 () tuple2!20390)

(assert (=> b!1916761 (= (_1!11664 lt!734672) (h!27062 tokens!598))))

(declare-fun lt!734673 () Option!4442)

(declare-fun get!6783 (Option!4442) tuple2!20390)

(assert (=> b!1916761 (= lt!734672 (get!6783 lt!734673))))

(declare-fun isDefined!3740 (Option!4442) Bool)

(assert (=> b!1916761 (isDefined!3740 lt!734673)))

(assert (=> b!1916761 (= lt!734673 (maxPrefix!1927 thiss!23328 rules!3198 lt!734671))))

(declare-fun lt!734658 () BalanceConc!14272)

(declare-fun list!8800 (BalanceConc!14272) List!21740)

(assert (=> b!1916761 (= lt!734671 (list!8800 lt!734658))))

(assert (=> b!1916761 e!1224537))

(declare-fun res!856717 () Bool)

(assert (=> b!1916761 (=> (not res!856717) (not e!1224537))))

(assert (=> b!1916761 (= res!856717 (isDefined!3739 lt!734646))))

(assert (=> b!1916761 (= lt!734646 (getRuleFromTag!711 thiss!23328 rules!3198 (tag!4308 (rule!6071 separatorToken!354))))))

(declare-fun lt!734674 () Unit!36062)

(assert (=> b!1916761 (= lt!734674 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!711 thiss!23328 rules!3198 lt!734654 separatorToken!354))))

(declare-fun charsOf!2424 (Token!7288) BalanceConc!14272)

(assert (=> b!1916761 (= lt!734654 (list!8800 (charsOf!2424 separatorToken!354)))))

(declare-fun lt!734645 () Unit!36062)

(declare-fun lemmaEqSameImage!576 (TokenValueInjection!7592 BalanceConc!14272 BalanceConc!14272) Unit!36062)

(declare-fun seqFromList!2740 (List!21740) BalanceConc!14272)

(assert (=> b!1916761 (= lt!734645 (lemmaEqSameImage!576 (transformation!3868 (rule!6071 (h!27062 tokens!598))) lt!734658 (seqFromList!2740 (originalCharacters!4675 (h!27062 tokens!598)))))))

(declare-fun lt!734666 () Unit!36062)

(declare-fun lemmaSemiInverse!847 (TokenValueInjection!7592 BalanceConc!14272) Unit!36062)

(assert (=> b!1916761 (= lt!734666 (lemmaSemiInverse!847 (transformation!3868 (rule!6071 (h!27062 tokens!598))) lt!734658))))

(assert (=> b!1916761 (= lt!734658 (charsOf!2424 (h!27062 tokens!598)))))

(declare-fun tp!546910 () Bool)

(declare-fun b!1916762 () Bool)

(declare-fun e!1224516 () Bool)

(assert (=> b!1916762 (= e!1224536 (and tp!546910 (inv!28753 (tag!4308 (h!27061 rules!3198))) (inv!28757 (transformation!3868 (h!27061 rules!3198))) e!1224516))))

(declare-fun b!1916763 () Bool)

(assert (=> b!1916763 (= e!1224535 (not (= tokens!598 Nil!21661)))))

(declare-fun b!1916764 () Bool)

(declare-fun res!856732 () Bool)

(assert (=> b!1916764 (=> (not res!856732) (not e!1224526))))

(assert (=> b!1916764 (= res!856732 ((_ is Cons!21661) tokens!598))))

(declare-fun b!1916765 () Bool)

(declare-fun res!856725 () Bool)

(assert (=> b!1916765 (=> (not res!856725) (not e!1224526))))

(declare-fun lambda!74803 () Int)

(declare-fun forall!4564 (List!21743 Int) Bool)

(assert (=> b!1916765 (= res!856725 (forall!4564 tokens!598 lambda!74803))))

(declare-fun b!1916766 () Bool)

(declare-fun res!856727 () Bool)

(assert (=> b!1916766 (=> (not res!856727) (not e!1224526))))

(declare-fun isEmpty!13351 (List!21742) Bool)

(assert (=> b!1916766 (= res!856727 (not (isEmpty!13351 rules!3198)))))

(declare-fun b!1916767 () Bool)

(assert (=> b!1916767 (= e!1224518 false)))

(declare-fun tp!546918 () Bool)

(declare-fun b!1916768 () Bool)

(assert (=> b!1916768 (= e!1224524 (and (inv!28756 (h!27062 tokens!598)) e!1224525 tp!546918))))

(declare-fun b!1916769 () Bool)

(assert (=> b!1916769 (= e!1224530 e!1224515)))

(declare-fun res!856714 () Bool)

(assert (=> b!1916769 (=> res!856714 e!1224515)))

(declare-fun lt!734668 () List!21740)

(declare-fun lt!734643 () List!21740)

(assert (=> b!1916769 (= res!856714 (or (not (= lt!734643 lt!734668)) (not (= lt!734668 lt!734671)) (not (= lt!734643 lt!734671))))))

(declare-fun printList!1064 (LexerInterface!3481 List!21743) List!21740)

(assert (=> b!1916769 (= lt!734668 (printList!1064 thiss!23328 (Cons!21661 (h!27062 tokens!598) Nil!21661)))))

(declare-fun lt!734662 () BalanceConc!14272)

(assert (=> b!1916769 (= lt!734643 (list!8800 lt!734662))))

(declare-datatypes ((IArray!14463 0))(
  ( (IArray!14464 (innerList!7289 List!21743)) )
))
(declare-datatypes ((Conc!7229 0))(
  ( (Node!7229 (left!17297 Conc!7229) (right!17627 Conc!7229) (csize!14688 Int) (cheight!7440 Int)) (Leaf!10626 (xs!10123 IArray!14463) (csize!14689 Int)) (Empty!7229) )
))
(declare-datatypes ((BalanceConc!14274 0))(
  ( (BalanceConc!14275 (c!312018 Conc!7229)) )
))
(declare-fun lt!734660 () BalanceConc!14274)

(declare-fun printTailRec!998 (LexerInterface!3481 BalanceConc!14274 Int BalanceConc!14272) BalanceConc!14272)

(assert (=> b!1916769 (= lt!734662 (printTailRec!998 thiss!23328 lt!734660 0 (BalanceConc!14273 Empty!7228)))))

(declare-fun print!1491 (LexerInterface!3481 BalanceConc!14274) BalanceConc!14272)

(assert (=> b!1916769 (= lt!734662 (print!1491 thiss!23328 lt!734660))))

(declare-fun singletonSeq!1891 (Token!7288) BalanceConc!14274)

(assert (=> b!1916769 (= lt!734660 (singletonSeq!1891 (h!27062 tokens!598)))))

(assert (=> b!1916769 (not (contains!3940 lt!734655 lt!734647))))

(declare-fun usedCharacters!376 (Regex!5293) List!21740)

(assert (=> b!1916769 (= lt!734655 (usedCharacters!376 (regex!3868 (rule!6071 (h!27062 tokens!598)))))))

(declare-fun lt!734659 () Unit!36062)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!72 (LexerInterface!3481 List!21742 List!21742 Rule!7536 Rule!7536 C!10732) Unit!36062)

(assert (=> b!1916769 (= lt!734659 (lemmaNonSepRuleNotContainsCharContainedInASepRule!72 thiss!23328 rules!3198 rules!3198 (rule!6071 (h!27062 tokens!598)) (rule!6071 separatorToken!354) lt!734647))))

(declare-fun lt!734663 () Unit!36062)

(assert (=> b!1916769 (= lt!734663 e!1224517)))

(declare-fun c!312015 () Bool)

(declare-fun lt!734644 () List!21740)

(assert (=> b!1916769 (= c!312015 (not (contains!3940 lt!734644 lt!734647)))))

(assert (=> b!1916769 (= lt!734647 (head!4478 lt!734654))))

(assert (=> b!1916769 (= lt!734644 (usedCharacters!376 (regex!3868 (rule!6071 separatorToken!354))))))

(declare-fun lt!734667 () List!21740)

(assert (=> b!1916769 (= lt!734667 lt!734648)))

(assert (=> b!1916769 (= lt!734648 (++!5823 lt!734671 lt!734664))))

(declare-fun lt!734670 () List!21740)

(assert (=> b!1916769 (= lt!734667 (++!5823 lt!734670 lt!734651))))

(assert (=> b!1916769 (= lt!734664 (++!5823 lt!734654 lt!734651))))

(assert (=> b!1916769 (= lt!734670 (++!5823 lt!734671 lt!734654))))

(declare-fun lt!734676 () Unit!36062)

(declare-fun lemmaConcatAssociativity!1183 (List!21740 List!21740 List!21740) Unit!36062)

(assert (=> b!1916769 (= lt!734676 (lemmaConcatAssociativity!1183 lt!734671 lt!734654 lt!734651))))

(declare-fun b!1916770 () Bool)

(declare-fun res!856740 () Bool)

(assert (=> b!1916770 (=> res!856740 e!1224515)))

(assert (=> b!1916770 (= res!856740 (isSeparator!3868 (rule!6071 (h!27062 tokens!598))))))

(declare-fun b!1916771 () Bool)

(declare-fun res!856734 () Bool)

(assert (=> b!1916771 (=> res!856734 e!1224538)))

(assert (=> b!1916771 (= res!856734 (not (contains!3940 lt!734644 lt!734649)))))

(assert (=> b!1916772 (= e!1224527 (and tp!546909 tp!546911))))

(assert (=> b!1916773 (= e!1224516 (and tp!546916 tp!546915))))

(declare-fun b!1916774 () Bool)

(declare-fun res!856719 () Bool)

(assert (=> b!1916774 (=> res!856719 e!1224515)))

(declare-fun contains!3941 (List!21742 Rule!7536) Bool)

(assert (=> b!1916774 (= res!856719 (not (contains!3941 rules!3198 (rule!6071 separatorToken!354))))))

(declare-fun e!1224533 () Bool)

(assert (=> b!1916775 (= e!1224533 (and tp!546912 tp!546907))))

(declare-fun b!1916776 () Bool)

(assert (=> b!1916776 (= e!1224520 (= (rule!6071 separatorToken!354) lt!734653))))

(declare-fun b!1916777 () Bool)

(declare-fun res!856722 () Bool)

(assert (=> b!1916777 (=> (not res!856722) (not e!1224526))))

(assert (=> b!1916777 (= res!856722 (rulesProduceIndividualToken!1653 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1224522 () Bool)

(declare-fun b!1916778 () Bool)

(declare-fun tp!546908 () Bool)

(assert (=> b!1916778 (= e!1224532 (and (inv!21 (value!121829 separatorToken!354)) e!1224522 tp!546908))))

(declare-fun b!1916779 () Bool)

(assert (=> b!1916779 (= e!1224531 (= (rule!6071 (h!27062 tokens!598)) lt!734657))))

(declare-fun b!1916780 () Bool)

(declare-fun res!856716 () Bool)

(assert (=> b!1916780 (=> res!856716 e!1224535)))

(assert (=> b!1916780 (= res!856716 (not (isDefined!3740 (maxPrefix!1927 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!524 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1916781 () Bool)

(assert (=> b!1916781 (= e!1224515 e!1224512)))

(declare-fun res!856724 () Bool)

(assert (=> b!1916781 (=> res!856724 e!1224512)))

(assert (=> b!1916781 (= res!856724 (not (matchR!2579 (regex!3868 (rule!6071 (h!27062 tokens!598))) lt!734671)))))

(declare-fun ruleValid!1187 (LexerInterface!3481 Rule!7536) Bool)

(assert (=> b!1916781 (ruleValid!1187 thiss!23328 (rule!6071 (h!27062 tokens!598)))))

(declare-fun lt!734661 () Unit!36062)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!684 (LexerInterface!3481 Rule!7536 List!21742) Unit!36062)

(assert (=> b!1916781 (= lt!734661 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!684 thiss!23328 (rule!6071 (h!27062 tokens!598)) rules!3198))))

(declare-fun b!1916782 () Bool)

(declare-fun res!856715 () Bool)

(assert (=> b!1916782 (=> res!856715 e!1224515)))

(assert (=> b!1916782 (= res!856715 (not (contains!3941 rules!3198 (rule!6071 (h!27062 tokens!598)))))))

(declare-fun b!1916783 () Bool)

(declare-fun res!856726 () Bool)

(assert (=> b!1916783 (=> res!856726 e!1224515)))

(declare-fun isEmpty!13352 (BalanceConc!14274) Bool)

(declare-datatypes ((tuple2!20392 0))(
  ( (tuple2!20393 (_1!11665 BalanceConc!14274) (_2!11665 BalanceConc!14272)) )
))
(declare-fun lex!1556 (LexerInterface!3481 List!21742 BalanceConc!14272) tuple2!20392)

(assert (=> b!1916783 (= res!856726 (isEmpty!13352 (_1!11665 (lex!1556 thiss!23328 rules!3198 (seqFromList!2740 lt!734671)))))))

(declare-fun b!1916784 () Bool)

(declare-fun res!856721 () Bool)

(assert (=> b!1916784 (=> res!856721 e!1224515)))

(assert (=> b!1916784 (= res!856721 (not (isEmpty!13349 (_2!11664 lt!734672))))))

(declare-fun b!1916785 () Bool)

(declare-fun Unit!36065 () Unit!36062)

(assert (=> b!1916785 (= e!1224517 Unit!36065)))

(declare-fun b!1916786 () Bool)

(declare-fun tp!546906 () Bool)

(assert (=> b!1916786 (= e!1224522 (and tp!546906 (inv!28753 (tag!4308 (rule!6071 separatorToken!354))) (inv!28757 (transformation!3868 (rule!6071 separatorToken!354))) e!1224533))))

(assert (= (and start!192212 res!856731) b!1916766))

(assert (= (and b!1916766 res!856727) b!1916757))

(assert (= (and b!1916757 res!856713) b!1916758))

(assert (= (and b!1916758 res!856718) b!1916777))

(assert (= (and b!1916777 res!856722) b!1916759))

(assert (= (and b!1916759 res!856739) b!1916765))

(assert (= (and b!1916765 res!856725) b!1916756))

(assert (= (and b!1916756 res!856723) b!1916764))

(assert (= (and b!1916764 res!856732) b!1916761))

(assert (= (and b!1916761 res!856717) b!1916751))

(assert (= (and b!1916751 res!856735) b!1916776))

(assert (= (and b!1916761 res!856730) b!1916750))

(assert (= (and b!1916750 res!856733) b!1916779))

(assert (= (and b!1916761 (not res!856737)) b!1916769))

(assert (= (and b!1916769 c!312015) b!1916760))

(assert (= (and b!1916769 (not c!312015)) b!1916785))

(assert (= (and b!1916760 res!856738) b!1916767))

(assert (= (and b!1916769 (not res!856714)) b!1916748))

(assert (= (and b!1916748 (not res!856729)) b!1916783))

(assert (= (and b!1916783 (not res!856726)) b!1916782))

(assert (= (and b!1916782 (not res!856715)) b!1916774))

(assert (= (and b!1916774 (not res!856719)) b!1916770))

(assert (= (and b!1916770 (not res!856740)) b!1916784))

(assert (= (and b!1916784 (not res!856721)) b!1916781))

(assert (= (and b!1916781 (not res!856724)) b!1916752))

(assert (= (and b!1916752 (not res!856720)) b!1916747))

(assert (= (and b!1916747 (not res!856728)) b!1916771))

(assert (= (and b!1916771 (not res!856734)) b!1916754))

(assert (= (and b!1916754 (not res!856736)) b!1916780))

(assert (= (and b!1916780 (not res!856716)) b!1916763))

(assert (= b!1916762 b!1916773))

(assert (= b!1916755 b!1916762))

(assert (= (and start!192212 ((_ is Cons!21660) rules!3198)) b!1916755))

(assert (= b!1916749 b!1916772))

(assert (= b!1916753 b!1916749))

(assert (= b!1916768 b!1916753))

(assert (= (and start!192212 ((_ is Cons!21661) tokens!598)) b!1916768))

(assert (= b!1916786 b!1916775))

(assert (= b!1916778 b!1916786))

(assert (= start!192212 b!1916778))

(declare-fun m!2351909 () Bool)

(assert (=> b!1916768 m!2351909))

(declare-fun m!2351911 () Bool)

(assert (=> b!1916777 m!2351911))

(declare-fun m!2351913 () Bool)

(assert (=> b!1916756 m!2351913))

(declare-fun m!2351915 () Bool)

(assert (=> b!1916774 m!2351915))

(declare-fun m!2351917 () Bool)

(assert (=> b!1916749 m!2351917))

(declare-fun m!2351919 () Bool)

(assert (=> b!1916749 m!2351919))

(declare-fun m!2351921 () Bool)

(assert (=> b!1916750 m!2351921))

(declare-fun m!2351923 () Bool)

(assert (=> b!1916750 m!2351923))

(declare-fun m!2351925 () Bool)

(assert (=> b!1916786 m!2351925))

(declare-fun m!2351927 () Bool)

(assert (=> b!1916786 m!2351927))

(declare-fun m!2351929 () Bool)

(assert (=> start!192212 m!2351929))

(declare-fun m!2351931 () Bool)

(assert (=> b!1916769 m!2351931))

(declare-fun m!2351933 () Bool)

(assert (=> b!1916769 m!2351933))

(declare-fun m!2351935 () Bool)

(assert (=> b!1916769 m!2351935))

(declare-fun m!2351937 () Bool)

(assert (=> b!1916769 m!2351937))

(declare-fun m!2351939 () Bool)

(assert (=> b!1916769 m!2351939))

(declare-fun m!2351941 () Bool)

(assert (=> b!1916769 m!2351941))

(declare-fun m!2351943 () Bool)

(assert (=> b!1916769 m!2351943))

(declare-fun m!2351945 () Bool)

(assert (=> b!1916769 m!2351945))

(declare-fun m!2351947 () Bool)

(assert (=> b!1916769 m!2351947))

(declare-fun m!2351949 () Bool)

(assert (=> b!1916769 m!2351949))

(declare-fun m!2351951 () Bool)

(assert (=> b!1916769 m!2351951))

(declare-fun m!2351953 () Bool)

(assert (=> b!1916769 m!2351953))

(declare-fun m!2351955 () Bool)

(assert (=> b!1916769 m!2351955))

(declare-fun m!2351957 () Bool)

(assert (=> b!1916769 m!2351957))

(declare-fun m!2351959 () Bool)

(assert (=> b!1916769 m!2351959))

(declare-fun m!2351961 () Bool)

(assert (=> b!1916769 m!2351961))

(declare-fun m!2351963 () Bool)

(assert (=> b!1916762 m!2351963))

(declare-fun m!2351965 () Bool)

(assert (=> b!1916762 m!2351965))

(declare-fun m!2351967 () Bool)

(assert (=> b!1916761 m!2351967))

(declare-fun m!2351969 () Bool)

(assert (=> b!1916761 m!2351969))

(declare-fun m!2351971 () Bool)

(assert (=> b!1916761 m!2351971))

(declare-fun m!2351973 () Bool)

(assert (=> b!1916761 m!2351973))

(declare-fun m!2351975 () Bool)

(assert (=> b!1916761 m!2351975))

(declare-fun m!2351977 () Bool)

(assert (=> b!1916761 m!2351977))

(assert (=> b!1916761 m!2351973))

(declare-fun m!2351979 () Bool)

(assert (=> b!1916761 m!2351979))

(declare-fun m!2351981 () Bool)

(assert (=> b!1916761 m!2351981))

(declare-fun m!2351983 () Bool)

(assert (=> b!1916761 m!2351983))

(declare-fun m!2351985 () Bool)

(assert (=> b!1916761 m!2351985))

(declare-fun m!2351987 () Bool)

(assert (=> b!1916761 m!2351987))

(declare-fun m!2351989 () Bool)

(assert (=> b!1916761 m!2351989))

(assert (=> b!1916761 m!2351967))

(declare-fun m!2351991 () Bool)

(assert (=> b!1916761 m!2351991))

(declare-fun m!2351993 () Bool)

(assert (=> b!1916761 m!2351993))

(declare-fun m!2351995 () Bool)

(assert (=> b!1916761 m!2351995))

(assert (=> b!1916761 m!2351987))

(declare-fun m!2351997 () Bool)

(assert (=> b!1916761 m!2351997))

(declare-fun m!2351999 () Bool)

(assert (=> b!1916761 m!2351999))

(declare-fun m!2352001 () Bool)

(assert (=> b!1916761 m!2352001))

(declare-fun m!2352003 () Bool)

(assert (=> b!1916761 m!2352003))

(declare-fun m!2352005 () Bool)

(assert (=> b!1916760 m!2352005))

(declare-fun m!2352007 () Bool)

(assert (=> b!1916760 m!2352007))

(declare-fun m!2352009 () Bool)

(assert (=> b!1916782 m!2352009))

(declare-fun m!2352011 () Bool)

(assert (=> b!1916765 m!2352011))

(declare-fun m!2352013 () Bool)

(assert (=> b!1916754 m!2352013))

(declare-fun m!2352015 () Bool)

(assert (=> b!1916754 m!2352015))

(declare-fun m!2352017 () Bool)

(assert (=> b!1916754 m!2352017))

(declare-fun m!2352019 () Bool)

(assert (=> b!1916747 m!2352019))

(declare-fun m!2352021 () Bool)

(assert (=> b!1916747 m!2352021))

(declare-fun m!2352023 () Bool)

(assert (=> b!1916757 m!2352023))

(declare-fun m!2352025 () Bool)

(assert (=> b!1916778 m!2352025))

(declare-fun m!2352027 () Bool)

(assert (=> b!1916758 m!2352027))

(declare-fun m!2352029 () Bool)

(assert (=> b!1916771 m!2352029))

(declare-fun m!2352031 () Bool)

(assert (=> b!1916781 m!2352031))

(declare-fun m!2352033 () Bool)

(assert (=> b!1916781 m!2352033))

(declare-fun m!2352035 () Bool)

(assert (=> b!1916781 m!2352035))

(declare-fun m!2352037 () Bool)

(assert (=> b!1916751 m!2352037))

(declare-fun m!2352039 () Bool)

(assert (=> b!1916751 m!2352039))

(declare-fun m!2352041 () Bool)

(assert (=> b!1916748 m!2352041))

(declare-fun m!2352043 () Bool)

(assert (=> b!1916784 m!2352043))

(declare-fun m!2352045 () Bool)

(assert (=> b!1916766 m!2352045))

(declare-fun m!2352047 () Bool)

(assert (=> b!1916780 m!2352047))

(assert (=> b!1916780 m!2352047))

(declare-fun m!2352049 () Bool)

(assert (=> b!1916780 m!2352049))

(assert (=> b!1916780 m!2352049))

(declare-fun m!2352051 () Bool)

(assert (=> b!1916780 m!2352051))

(declare-fun m!2352053 () Bool)

(assert (=> b!1916752 m!2352053))

(declare-fun m!2352055 () Bool)

(assert (=> b!1916783 m!2352055))

(assert (=> b!1916783 m!2352055))

(declare-fun m!2352057 () Bool)

(assert (=> b!1916783 m!2352057))

(declare-fun m!2352059 () Bool)

(assert (=> b!1916783 m!2352059))

(declare-fun m!2352061 () Bool)

(assert (=> b!1916753 m!2352061))

(check-sat (not b!1916781) b_and!149521 b_and!149519 (not b!1916750) (not b!1916748) (not b!1916754) (not b!1916783) (not b!1916766) (not b!1916761) (not b!1916769) (not b!1916782) (not b!1916758) (not b_next!55027) (not b!1916749) (not b!1916757) (not b!1916780) (not b!1916756) (not b_next!55025) (not b_next!55021) (not b!1916768) (not b_next!55019) b_and!149523 (not b!1916753) (not b!1916777) b_and!149525 (not b!1916751) (not b!1916747) (not b!1916771) (not b_next!55017) (not b!1916760) (not b!1916752) b_and!149529 (not b!1916786) (not b!1916755) (not b!1916778) (not b!1916774) (not b!1916762) (not start!192212) (not b_next!55023) (not b!1916765) (not b!1916784) b_and!149527)
(check-sat (not b_next!55027) b_and!149521 b_and!149519 b_and!149525 (not b_next!55017) b_and!149529 (not b_next!55025) (not b_next!55021) (not b_next!55019) b_and!149523 (not b_next!55023) b_and!149527)

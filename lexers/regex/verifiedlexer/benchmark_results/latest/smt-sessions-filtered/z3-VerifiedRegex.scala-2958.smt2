; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!175174 () Bool)

(assert start!175174)

(declare-fun b!1767030 () Bool)

(declare-fun b_free!48887 () Bool)

(declare-fun b_next!49591 () Bool)

(assert (=> b!1767030 (= b_free!48887 (not b_next!49591))))

(declare-fun tp!501469 () Bool)

(declare-fun b_and!133971 () Bool)

(assert (=> b!1767030 (= tp!501469 b_and!133971)))

(declare-fun b_free!48889 () Bool)

(declare-fun b_next!49593 () Bool)

(assert (=> b!1767030 (= b_free!48889 (not b_next!49593))))

(declare-fun tp!501462 () Bool)

(declare-fun b_and!133973 () Bool)

(assert (=> b!1767030 (= tp!501462 b_and!133973)))

(declare-fun b!1767018 () Bool)

(declare-fun b_free!48891 () Bool)

(declare-fun b_next!49595 () Bool)

(assert (=> b!1767018 (= b_free!48891 (not b_next!49595))))

(declare-fun tp!501461 () Bool)

(declare-fun b_and!133975 () Bool)

(assert (=> b!1767018 (= tp!501461 b_and!133975)))

(declare-fun b_free!48893 () Bool)

(declare-fun b_next!49597 () Bool)

(assert (=> b!1767018 (= b_free!48893 (not b_next!49597))))

(declare-fun tp!501467 () Bool)

(declare-fun b_and!133977 () Bool)

(assert (=> b!1767018 (= tp!501467 b_and!133977)))

(declare-fun b!1767011 () Bool)

(declare-fun b_free!48895 () Bool)

(declare-fun b_next!49599 () Bool)

(assert (=> b!1767011 (= b_free!48895 (not b_next!49599))))

(declare-fun tp!501459 () Bool)

(declare-fun b_and!133979 () Bool)

(assert (=> b!1767011 (= tp!501459 b_and!133979)))

(declare-fun b_free!48897 () Bool)

(declare-fun b_next!49601 () Bool)

(assert (=> b!1767011 (= b_free!48897 (not b_next!49601))))

(declare-fun tp!501460 () Bool)

(declare-fun b_and!133981 () Bool)

(assert (=> b!1767011 (= tp!501460 b_and!133981)))

(declare-fun b!1767042 () Bool)

(declare-fun e!1130777 () Bool)

(assert (=> b!1767042 (= e!1130777 true)))

(declare-fun b!1767041 () Bool)

(declare-fun e!1130776 () Bool)

(assert (=> b!1767041 (= e!1130776 e!1130777)))

(declare-fun b!1767040 () Bool)

(declare-fun e!1130775 () Bool)

(assert (=> b!1767040 (= e!1130775 e!1130776)))

(declare-fun b!1767012 () Bool)

(assert (=> b!1767012 e!1130775))

(assert (= b!1767041 b!1767042))

(assert (= b!1767040 b!1767041))

(assert (= b!1767012 b!1767040))

(declare-fun lambda!70320 () Int)

(declare-fun order!12387 () Int)

(declare-datatypes ((List!19523 0))(
  ( (Nil!19453) (Cons!19453 (h!24854 (_ BitVec 16)) (t!164868 List!19523)) )
))
(declare-datatypes ((TokenValue!3567 0))(
  ( (FloatLiteralValue!7134 (text!25414 List!19523)) (TokenValueExt!3566 (__x!12436 Int)) (Broken!17835 (value!108741 List!19523)) (Object!3636) (End!3567) (Def!3567) (Underscore!3567) (Match!3567) (Else!3567) (Error!3567) (Case!3567) (If!3567) (Extends!3567) (Abstract!3567) (Class!3567) (Val!3567) (DelimiterValue!7134 (del!3627 List!19523)) (KeywordValue!3573 (value!108742 List!19523)) (CommentValue!7134 (value!108743 List!19523)) (WhitespaceValue!7134 (value!108744 List!19523)) (IndentationValue!3567 (value!108745 List!19523)) (String!22166) (Int32!3567) (Broken!17836 (value!108746 List!19523)) (Boolean!3568) (Unit!33645) (OperatorValue!3570 (op!3627 List!19523)) (IdentifierValue!7134 (value!108747 List!19523)) (IdentifierValue!7135 (value!108748 List!19523)) (WhitespaceValue!7135 (value!108749 List!19523)) (True!7134) (False!7134) (Broken!17837 (value!108750 List!19523)) (Broken!17838 (value!108751 List!19523)) (True!7135) (RightBrace!3567) (RightBracket!3567) (Colon!3567) (Null!3567) (Comma!3567) (LeftBracket!3567) (False!7135) (LeftBrace!3567) (ImaginaryLiteralValue!3567 (text!25415 List!19523)) (StringLiteralValue!10701 (value!108752 List!19523)) (EOFValue!3567 (value!108753 List!19523)) (IdentValue!3567 (value!108754 List!19523)) (DelimiterValue!7135 (value!108755 List!19523)) (DedentValue!3567 (value!108756 List!19523)) (NewLineValue!3567 (value!108757 List!19523)) (IntegerValue!10701 (value!108758 (_ BitVec 32)) (text!25416 List!19523)) (IntegerValue!10702 (value!108759 Int) (text!25417 List!19523)) (Times!3567) (Or!3567) (Equal!3567) (Minus!3567) (Broken!17839 (value!108760 List!19523)) (And!3567) (Div!3567) (LessEqual!3567) (Mod!3567) (Concat!8372) (Not!3567) (Plus!3567) (SpaceValue!3567 (value!108761 List!19523)) (IntegerValue!10703 (value!108762 Int) (text!25418 List!19523)) (StringLiteralValue!10702 (text!25419 List!19523)) (FloatLiteralValue!7135 (text!25420 List!19523)) (BytesLiteralValue!3567 (value!108763 List!19523)) (CommentValue!7135 (value!108764 List!19523)) (StringLiteralValue!10703 (value!108765 List!19523)) (ErrorTokenValue!3567 (msg!3628 List!19523)) )
))
(declare-datatypes ((C!9784 0))(
  ( (C!9785 (val!5488 Int)) )
))
(declare-datatypes ((List!19524 0))(
  ( (Nil!19454) (Cons!19454 (h!24855 C!9784) (t!164869 List!19524)) )
))
(declare-datatypes ((Regex!4805 0))(
  ( (ElementMatch!4805 (c!287790 C!9784)) (Concat!8373 (regOne!10122 Regex!4805) (regTwo!10122 Regex!4805)) (EmptyExpr!4805) (Star!4805 (reg!5134 Regex!4805)) (EmptyLang!4805) (Union!4805 (regOne!10123 Regex!4805) (regTwo!10123 Regex!4805)) )
))
(declare-datatypes ((String!22167 0))(
  ( (String!22168 (value!108766 String)) )
))
(declare-datatypes ((IArray!12947 0))(
  ( (IArray!12948 (innerList!6531 List!19524)) )
))
(declare-datatypes ((Conc!6471 0))(
  ( (Node!6471 (left!15575 Conc!6471) (right!15905 Conc!6471) (csize!13172 Int) (cheight!6682 Int)) (Leaf!9430 (xs!9347 IArray!12947) (csize!13173 Int)) (Empty!6471) )
))
(declare-datatypes ((BalanceConc!12886 0))(
  ( (BalanceConc!12887 (c!287791 Conc!6471)) )
))
(declare-datatypes ((TokenValueInjection!6794 0))(
  ( (TokenValueInjection!6795 (toValue!5000 Int) (toChars!4859 Int)) )
))
(declare-datatypes ((Rule!6754 0))(
  ( (Rule!6755 (regex!3477 Regex!4805) (tag!3853 String!22167) (isSeparator!3477 Bool) (transformation!3477 TokenValueInjection!6794)) )
))
(declare-datatypes ((Token!6520 0))(
  ( (Token!6521 (value!108767 TokenValue!3567) (rule!5511 Rule!6754) (size!15450 Int) (originalCharacters!4291 List!19524)) )
))
(declare-datatypes ((tuple2!19062 0))(
  ( (tuple2!19063 (_1!10933 Token!6520) (_2!10933 List!19524)) )
))
(declare-fun lt!683662 () tuple2!19062)

(declare-fun order!12389 () Int)

(declare-fun dynLambda!9414 (Int Int) Int)

(declare-fun dynLambda!9415 (Int Int) Int)

(assert (=> b!1767042 (< (dynLambda!9414 order!12387 (toValue!5000 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) (dynLambda!9415 order!12389 lambda!70320))))

(declare-fun order!12391 () Int)

(declare-fun dynLambda!9416 (Int Int) Int)

(assert (=> b!1767042 (< (dynLambda!9416 order!12391 (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) (dynLambda!9415 order!12389 lambda!70320))))

(declare-fun b!1767002 () Bool)

(declare-fun e!1130745 () Bool)

(declare-fun e!1130748 () Bool)

(assert (=> b!1767002 (= e!1130745 e!1130748)))

(declare-fun res!795569 () Bool)

(assert (=> b!1767002 (=> (not res!795569) (not e!1130748))))

(declare-fun lt!683672 () Rule!6754)

(declare-fun matchR!2278 (Regex!4805 List!19524) Bool)

(declare-fun list!7899 (BalanceConc!12886) List!19524)

(declare-fun charsOf!2126 (Token!6520) BalanceConc!12886)

(assert (=> b!1767002 (= res!795569 (matchR!2278 (regex!3477 lt!683672) (list!7899 (charsOf!2126 (_1!10933 lt!683662)))))))

(declare-datatypes ((Option!3976 0))(
  ( (None!3975) (Some!3975 (v!25446 Rule!6754)) )
))
(declare-fun lt!683666 () Option!3976)

(declare-fun get!5932 (Option!3976) Rule!6754)

(assert (=> b!1767002 (= lt!683672 (get!5932 lt!683666))))

(declare-fun b!1767003 () Bool)

(declare-fun e!1130765 () Bool)

(assert (=> b!1767003 (= e!1130765 true)))

(declare-fun lt!683652 () List!19524)

(declare-fun lt!683680 () List!19524)

(declare-fun lt!683678 () List!19524)

(declare-fun getSuffix!884 (List!19524 List!19524) List!19524)

(assert (=> b!1767003 (= lt!683652 (getSuffix!884 lt!683680 lt!683678))))

(declare-fun lt!683677 () Regex!4805)

(declare-fun lt!683649 () List!19524)

(assert (=> b!1767003 (matchR!2278 lt!683677 lt!683649)))

(declare-datatypes ((LexerInterface!3106 0))(
  ( (LexerInterfaceExt!3103 (__x!12437 Int)) (Lexer!3104) )
))
(declare-fun thiss!24550 () LexerInterface!3106)

(declare-datatypes ((Unit!33646 0))(
  ( (Unit!33647) )
))
(declare-fun lt!683661 () Unit!33646)

(declare-datatypes ((List!19525 0))(
  ( (Nil!19455) (Cons!19455 (h!24856 Rule!6754) (t!164870 List!19525)) )
))
(declare-fun rules!3447 () List!19525)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!184 (LexerInterface!3106 List!19525 List!19524 Token!6520 Rule!6754 List!19524) Unit!33646)

(assert (=> b!1767003 (= lt!683661 (lemmaMaxPrefixThenMatchesRulesRegex!184 thiss!24550 rules!3447 lt!683680 (_1!10933 lt!683662) (rule!5511 (_1!10933 lt!683662)) (_2!10933 lt!683662)))))

(declare-fun res!795576 () Bool)

(declare-fun e!1130746 () Bool)

(assert (=> start!175174 (=> (not res!795576) (not e!1130746))))

(get-info :version)

(assert (=> start!175174 (= res!795576 ((_ is Lexer!3104) thiss!24550))))

(assert (=> start!175174 e!1130746))

(declare-fun e!1130750 () Bool)

(assert (=> start!175174 e!1130750))

(declare-fun e!1130757 () Bool)

(assert (=> start!175174 e!1130757))

(assert (=> start!175174 true))

(declare-fun token!523 () Token!6520)

(declare-fun e!1130767 () Bool)

(declare-fun inv!25275 (Token!6520) Bool)

(assert (=> start!175174 (and (inv!25275 token!523) e!1130767)))

(declare-fun e!1130759 () Bool)

(assert (=> start!175174 e!1130759))

(declare-fun b!1767004 () Bool)

(declare-fun e!1130752 () Bool)

(assert (=> b!1767004 (= e!1130752 e!1130765)))

(declare-fun res!795565 () Bool)

(assert (=> b!1767004 (=> res!795565 e!1130765)))

(declare-fun lt!683654 () Int)

(declare-fun lt!683660 () BalanceConc!12886)

(declare-fun size!15451 (BalanceConc!12886) Int)

(assert (=> b!1767004 (= res!795565 (<= lt!683654 (size!15451 lt!683660)))))

(assert (=> b!1767004 (matchR!2278 lt!683677 lt!683678)))

(declare-fun lt!683669 () Unit!33646)

(declare-fun rule!422 () Rule!6754)

(assert (=> b!1767004 (= lt!683669 (lemmaMaxPrefixThenMatchesRulesRegex!184 thiss!24550 rules!3447 lt!683678 token!523 rule!422 Nil!19454))))

(declare-fun b!1767005 () Bool)

(declare-fun e!1130756 () Bool)

(declare-fun e!1130762 () Bool)

(assert (=> b!1767005 (= e!1130756 e!1130762)))

(declare-fun res!795575 () Bool)

(assert (=> b!1767005 (=> res!795575 e!1130762)))

(declare-fun isPrefix!1717 (List!19524 List!19524) Bool)

(assert (=> b!1767005 (= res!795575 (not (isPrefix!1717 lt!683649 lt!683680)))))

(declare-fun ++!5301 (List!19524 List!19524) List!19524)

(assert (=> b!1767005 (isPrefix!1717 lt!683649 (++!5301 lt!683649 (_2!10933 lt!683662)))))

(declare-fun lt!683651 () Unit!33646)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1226 (List!19524 List!19524) Unit!33646)

(assert (=> b!1767005 (= lt!683651 (lemmaConcatTwoListThenFirstIsPrefix!1226 lt!683649 (_2!10933 lt!683662)))))

(declare-fun lt!683655 () BalanceConc!12886)

(assert (=> b!1767005 (= lt!683649 (list!7899 lt!683655))))

(assert (=> b!1767005 (= lt!683655 (charsOf!2126 (_1!10933 lt!683662)))))

(assert (=> b!1767005 e!1130745))

(declare-fun res!795572 () Bool)

(assert (=> b!1767005 (=> (not res!795572) (not e!1130745))))

(declare-fun isDefined!3319 (Option!3976) Bool)

(assert (=> b!1767005 (= res!795572 (isDefined!3319 lt!683666))))

(declare-fun getRuleFromTag!525 (LexerInterface!3106 List!19525 String!22167) Option!3976)

(assert (=> b!1767005 (= lt!683666 (getRuleFromTag!525 thiss!24550 rules!3447 (tag!3853 (rule!5511 (_1!10933 lt!683662)))))))

(declare-fun lt!683675 () Unit!33646)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!525 (LexerInterface!3106 List!19525 List!19524 Token!6520) Unit!33646)

(assert (=> b!1767005 (= lt!683675 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!525 thiss!24550 rules!3447 lt!683680 (_1!10933 lt!683662)))))

(declare-datatypes ((Option!3977 0))(
  ( (None!3976) (Some!3976 (v!25447 tuple2!19062)) )
))
(declare-fun lt!683668 () Option!3977)

(declare-fun get!5933 (Option!3977) tuple2!19062)

(assert (=> b!1767005 (= lt!683662 (get!5933 lt!683668))))

(declare-fun suffix!1421 () List!19524)

(declare-fun lt!683657 () Unit!33646)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!628 (LexerInterface!3106 List!19525 List!19524 List!19524) Unit!33646)

(assert (=> b!1767005 (= lt!683657 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!628 thiss!24550 rules!3447 lt!683678 suffix!1421))))

(declare-fun maxPrefix!1660 (LexerInterface!3106 List!19525 List!19524) Option!3977)

(assert (=> b!1767005 (= lt!683668 (maxPrefix!1660 thiss!24550 rules!3447 lt!683680))))

(assert (=> b!1767005 (isPrefix!1717 lt!683678 lt!683680)))

(declare-fun lt!683676 () Unit!33646)

(assert (=> b!1767005 (= lt!683676 (lemmaConcatTwoListThenFirstIsPrefix!1226 lt!683678 suffix!1421))))

(assert (=> b!1767005 (= lt!683680 (++!5301 lt!683678 suffix!1421))))

(declare-fun b!1767006 () Bool)

(declare-fun res!795578 () Bool)

(assert (=> b!1767006 (=> (not res!795578) (not e!1130746))))

(declare-fun rulesInvariant!2775 (LexerInterface!3106 List!19525) Bool)

(assert (=> b!1767006 (= res!795578 (rulesInvariant!2775 thiss!24550 rules!3447))))

(declare-fun b!1767007 () Bool)

(declare-fun e!1130763 () Bool)

(declare-fun tp!501463 () Bool)

(assert (=> b!1767007 (= e!1130759 (and e!1130763 tp!501463))))

(declare-fun b!1767008 () Bool)

(declare-fun e!1130761 () Bool)

(declare-fun e!1130766 () Bool)

(assert (=> b!1767008 (= e!1130761 e!1130766)))

(declare-fun res!795564 () Bool)

(assert (=> b!1767008 (=> (not res!795564) (not e!1130766))))

(declare-fun lt!683656 () tuple2!19062)

(assert (=> b!1767008 (= res!795564 (= (_1!10933 lt!683656) token!523))))

(declare-fun lt!683659 () Option!3977)

(assert (=> b!1767008 (= lt!683656 (get!5933 lt!683659))))

(declare-fun b!1767009 () Bool)

(declare-fun e!1130747 () Bool)

(assert (=> b!1767009 (= e!1130766 (not e!1130747))))

(declare-fun res!795570 () Bool)

(assert (=> b!1767009 (=> res!795570 e!1130747)))

(assert (=> b!1767009 (= res!795570 (not (matchR!2278 (regex!3477 rule!422) lt!683678)))))

(declare-fun ruleValid!975 (LexerInterface!3106 Rule!6754) Bool)

(assert (=> b!1767009 (ruleValid!975 thiss!24550 rule!422)))

(declare-fun lt!683670 () Unit!33646)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!498 (LexerInterface!3106 Rule!6754 List!19525) Unit!33646)

(assert (=> b!1767009 (= lt!683670 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!498 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1130768 () Bool)

(declare-fun b!1767010 () Bool)

(declare-fun tp!501465 () Bool)

(declare-fun inv!21 (TokenValue!3567) Bool)

(assert (=> b!1767010 (= e!1130767 (and (inv!21 (value!108767 token!523)) e!1130768 tp!501465))))

(declare-fun e!1130749 () Bool)

(assert (=> b!1767011 (= e!1130749 (and tp!501459 tp!501460))))

(declare-fun e!1130764 () Bool)

(assert (=> b!1767012 (= e!1130762 e!1130764)))

(declare-fun res!795582 () Bool)

(assert (=> b!1767012 (=> res!795582 e!1130764)))

(declare-fun Forall!844 (Int) Bool)

(assert (=> b!1767012 (= res!795582 (not (Forall!844 lambda!70320)))))

(declare-fun lt!683671 () Unit!33646)

(declare-fun lemmaInv!676 (TokenValueInjection!6794) Unit!33646)

(assert (=> b!1767012 (= lt!683671 (lemmaInv!676 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))))))

(declare-fun b!1767013 () Bool)

(declare-fun res!795580 () Bool)

(declare-fun e!1130744 () Bool)

(assert (=> b!1767013 (=> res!795580 e!1130744)))

(declare-fun dynLambda!9417 (Int TokenValue!3567) BalanceConc!12886)

(assert (=> b!1767013 (= res!795580 (not (= lt!683655 (dynLambda!9417 (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) (value!108767 (_1!10933 lt!683662))))))))

(declare-fun b!1767014 () Bool)

(declare-fun res!795577 () Bool)

(assert (=> b!1767014 (=> res!795577 e!1130747)))

(declare-fun isEmpty!12280 (List!19524) Bool)

(assert (=> b!1767014 (= res!795577 (isEmpty!12280 suffix!1421))))

(declare-fun b!1767015 () Bool)

(declare-fun res!795566 () Bool)

(assert (=> b!1767015 (=> res!795566 e!1130762)))

(assert (=> b!1767015 (= res!795566 (not (matchR!2278 (regex!3477 (rule!5511 (_1!10933 lt!683662))) lt!683649)))))

(declare-fun b!1767016 () Bool)

(assert (=> b!1767016 (= e!1130748 (= (rule!5511 (_1!10933 lt!683662)) lt!683672))))

(declare-fun b!1767017 () Bool)

(declare-fun e!1130743 () Bool)

(assert (=> b!1767017 (= e!1130743 e!1130752)))

(declare-fun res!795573 () Bool)

(assert (=> b!1767017 (=> res!795573 e!1130752)))

(declare-fun lt!683674 () Option!3977)

(declare-fun lt!683667 () List!19524)

(assert (=> b!1767017 (= res!795573 (or (not (= lt!683667 (_2!10933 lt!683662))) (not (= lt!683674 (Some!3976 (tuple2!19063 (_1!10933 lt!683662) lt!683667))))))))

(assert (=> b!1767017 (= (_2!10933 lt!683662) lt!683667)))

(declare-fun lt!683658 () Unit!33646)

(declare-fun lemmaSamePrefixThenSameSuffix!828 (List!19524 List!19524 List!19524 List!19524 List!19524) Unit!33646)

(assert (=> b!1767017 (= lt!683658 (lemmaSamePrefixThenSameSuffix!828 lt!683649 (_2!10933 lt!683662) lt!683649 lt!683667 lt!683680))))

(assert (=> b!1767017 (= lt!683667 (getSuffix!884 lt!683680 lt!683649))))

(declare-fun lt!683650 () Int)

(declare-fun lt!683679 () TokenValue!3567)

(assert (=> b!1767017 (= lt!683674 (Some!3976 (tuple2!19063 (Token!6521 lt!683679 (rule!5511 (_1!10933 lt!683662)) lt!683650 lt!683649) (_2!10933 lt!683662))))))

(declare-fun maxPrefixOneRule!1029 (LexerInterface!3106 Rule!6754 List!19524) Option!3977)

(assert (=> b!1767017 (= lt!683674 (maxPrefixOneRule!1029 thiss!24550 (rule!5511 (_1!10933 lt!683662)) lt!683680))))

(declare-fun size!15452 (List!19524) Int)

(assert (=> b!1767017 (= lt!683650 (size!15452 lt!683649))))

(declare-fun apply!5277 (TokenValueInjection!6794 BalanceConc!12886) TokenValue!3567)

(declare-fun seqFromList!2446 (List!19524) BalanceConc!12886)

(assert (=> b!1767017 (= lt!683679 (apply!5277 (transformation!3477 (rule!5511 (_1!10933 lt!683662))) (seqFromList!2446 lt!683649)))))

(declare-fun lt!683663 () Unit!33646)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!407 (LexerInterface!3106 List!19525 List!19524 List!19524 List!19524 Rule!6754) Unit!33646)

(assert (=> b!1767017 (= lt!683663 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!407 thiss!24550 rules!3447 lt!683649 lt!683680 (_2!10933 lt!683662) (rule!5511 (_1!10933 lt!683662))))))

(declare-fun e!1130753 () Bool)

(assert (=> b!1767018 (= e!1130753 (and tp!501461 tp!501467))))

(declare-fun b!1767019 () Bool)

(declare-fun res!795568 () Bool)

(assert (=> b!1767019 (=> (not res!795568) (not e!1130746))))

(declare-fun contains!3507 (List!19525 Rule!6754) Bool)

(assert (=> b!1767019 (= res!795568 (contains!3507 rules!3447 rule!422))))

(declare-fun b!1767020 () Bool)

(assert (=> b!1767020 (= e!1130746 e!1130761)))

(declare-fun res!795574 () Bool)

(assert (=> b!1767020 (=> (not res!795574) (not e!1130761))))

(declare-fun isDefined!3320 (Option!3977) Bool)

(assert (=> b!1767020 (= res!795574 (isDefined!3320 lt!683659))))

(assert (=> b!1767020 (= lt!683659 (maxPrefix!1660 thiss!24550 rules!3447 lt!683678))))

(assert (=> b!1767020 (= lt!683678 (list!7899 lt!683660))))

(assert (=> b!1767020 (= lt!683660 (charsOf!2126 token!523))))

(declare-fun b!1767021 () Bool)

(declare-fun e!1130755 () Bool)

(declare-fun tp!501468 () Bool)

(declare-fun inv!25270 (String!22167) Bool)

(declare-fun inv!25276 (TokenValueInjection!6794) Bool)

(assert (=> b!1767021 (= e!1130757 (and tp!501468 (inv!25270 (tag!3853 rule!422)) (inv!25276 (transformation!3477 rule!422)) e!1130755))))

(declare-fun b!1767022 () Bool)

(declare-fun res!795567 () Bool)

(assert (=> b!1767022 (=> (not res!795567) (not e!1130766))))

(assert (=> b!1767022 (= res!795567 (= (rule!5511 token!523) rule!422))))

(declare-fun b!1767023 () Bool)

(assert (=> b!1767023 (= e!1130764 e!1130744)))

(declare-fun res!795579 () Bool)

(assert (=> b!1767023 (=> res!795579 e!1130744)))

(declare-fun dynLambda!9418 (Int BalanceConc!12886) TokenValue!3567)

(assert (=> b!1767023 (= res!795579 (not (= (list!7899 (dynLambda!9417 (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) (dynLambda!9418 (toValue!5000 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) lt!683655))) lt!683649)))))

(declare-fun lt!683653 () Unit!33646)

(declare-fun lemmaSemiInverse!615 (TokenValueInjection!6794 BalanceConc!12886) Unit!33646)

(assert (=> b!1767023 (= lt!683653 (lemmaSemiInverse!615 (transformation!3477 (rule!5511 (_1!10933 lt!683662))) lt!683655))))

(declare-fun b!1767024 () Bool)

(declare-fun res!795571 () Bool)

(assert (=> b!1767024 (=> (not res!795571) (not e!1130746))))

(declare-fun isEmpty!12281 (List!19525) Bool)

(assert (=> b!1767024 (= res!795571 (not (isEmpty!12281 rules!3447)))))

(declare-fun b!1767025 () Bool)

(declare-fun tp!501470 () Bool)

(assert (=> b!1767025 (= e!1130763 (and tp!501470 (inv!25270 (tag!3853 (h!24856 rules!3447))) (inv!25276 (transformation!3477 (h!24856 rules!3447))) e!1130749))))

(declare-fun b!1767026 () Bool)

(assert (=> b!1767026 (= e!1130744 e!1130743)))

(declare-fun res!795583 () Bool)

(assert (=> b!1767026 (=> res!795583 e!1130743)))

(declare-fun lt!683665 () TokenValue!3567)

(assert (=> b!1767026 (= res!795583 (not (= lt!683668 (Some!3976 (tuple2!19063 (Token!6521 lt!683665 (rule!5511 (_1!10933 lt!683662)) lt!683654 lt!683649) (_2!10933 lt!683662))))))))

(assert (=> b!1767026 (= lt!683654 (size!15451 lt!683655))))

(assert (=> b!1767026 (= lt!683665 (apply!5277 (transformation!3477 (rule!5511 (_1!10933 lt!683662))) lt!683655))))

(declare-fun lt!683673 () Unit!33646)

(declare-fun lemmaCharactersSize!535 (Token!6520) Unit!33646)

(assert (=> b!1767026 (= lt!683673 (lemmaCharactersSize!535 (_1!10933 lt!683662)))))

(declare-fun lt!683664 () Unit!33646)

(declare-fun lemmaEqSameImage!388 (TokenValueInjection!6794 BalanceConc!12886 BalanceConc!12886) Unit!33646)

(assert (=> b!1767026 (= lt!683664 (lemmaEqSameImage!388 (transformation!3477 (rule!5511 (_1!10933 lt!683662))) lt!683655 (seqFromList!2446 (originalCharacters!4291 (_1!10933 lt!683662)))))))

(declare-fun tp!501464 () Bool)

(declare-fun b!1767027 () Bool)

(assert (=> b!1767027 (= e!1130768 (and tp!501464 (inv!25270 (tag!3853 (rule!5511 token!523))) (inv!25276 (transformation!3477 (rule!5511 token!523))) e!1130753))))

(declare-fun b!1767028 () Bool)

(declare-fun tp_is_empty!7853 () Bool)

(declare-fun tp!501466 () Bool)

(assert (=> b!1767028 (= e!1130750 (and tp_is_empty!7853 tp!501466))))

(declare-fun b!1767029 () Bool)

(declare-fun res!795581 () Bool)

(assert (=> b!1767029 (=> (not res!795581) (not e!1130766))))

(assert (=> b!1767029 (= res!795581 (isEmpty!12280 (_2!10933 lt!683656)))))

(assert (=> b!1767030 (= e!1130755 (and tp!501469 tp!501462))))

(declare-fun b!1767031 () Bool)

(assert (=> b!1767031 (= e!1130747 e!1130756)))

(declare-fun res!795584 () Bool)

(assert (=> b!1767031 (=> res!795584 e!1130756)))

(declare-fun prefixMatch!688 (Regex!4805 List!19524) Bool)

(declare-fun head!4102 (List!19524) C!9784)

(assert (=> b!1767031 (= res!795584 (prefixMatch!688 lt!683677 (++!5301 lt!683678 (Cons!19454 (head!4102 suffix!1421) Nil!19454))))))

(declare-fun rulesRegex!833 (LexerInterface!3106 List!19525) Regex!4805)

(assert (=> b!1767031 (= lt!683677 (rulesRegex!833 thiss!24550 rules!3447))))

(assert (= (and start!175174 res!795576) b!1767024))

(assert (= (and b!1767024 res!795571) b!1767006))

(assert (= (and b!1767006 res!795578) b!1767019))

(assert (= (and b!1767019 res!795568) b!1767020))

(assert (= (and b!1767020 res!795574) b!1767008))

(assert (= (and b!1767008 res!795564) b!1767029))

(assert (= (and b!1767029 res!795581) b!1767022))

(assert (= (and b!1767022 res!795567) b!1767009))

(assert (= (and b!1767009 (not res!795570)) b!1767014))

(assert (= (and b!1767014 (not res!795577)) b!1767031))

(assert (= (and b!1767031 (not res!795584)) b!1767005))

(assert (= (and b!1767005 res!795572) b!1767002))

(assert (= (and b!1767002 res!795569) b!1767016))

(assert (= (and b!1767005 (not res!795575)) b!1767015))

(assert (= (and b!1767015 (not res!795566)) b!1767012))

(assert (= (and b!1767012 (not res!795582)) b!1767023))

(assert (= (and b!1767023 (not res!795579)) b!1767013))

(assert (= (and b!1767013 (not res!795580)) b!1767026))

(assert (= (and b!1767026 (not res!795583)) b!1767017))

(assert (= (and b!1767017 (not res!795573)) b!1767004))

(assert (= (and b!1767004 (not res!795565)) b!1767003))

(assert (= (and start!175174 ((_ is Cons!19454) suffix!1421)) b!1767028))

(assert (= b!1767021 b!1767030))

(assert (= start!175174 b!1767021))

(assert (= b!1767027 b!1767018))

(assert (= b!1767010 b!1767027))

(assert (= start!175174 b!1767010))

(assert (= b!1767025 b!1767011))

(assert (= b!1767007 b!1767025))

(assert (= (and start!175174 ((_ is Cons!19455) rules!3447)) b!1767007))

(declare-fun b_lambda!57415 () Bool)

(assert (=> (not b_lambda!57415) (not b!1767013)))

(declare-fun tb!106743 () Bool)

(declare-fun t!164851 () Bool)

(assert (=> (and b!1767030 (= (toChars!4859 (transformation!3477 rule!422)) (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) t!164851) tb!106743))

(declare-fun b!1767047 () Bool)

(declare-fun e!1130780 () Bool)

(declare-fun tp!501473 () Bool)

(declare-fun inv!25277 (Conc!6471) Bool)

(assert (=> b!1767047 (= e!1130780 (and (inv!25277 (c!287791 (dynLambda!9417 (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) (value!108767 (_1!10933 lt!683662))))) tp!501473))))

(declare-fun result!128418 () Bool)

(declare-fun inv!25278 (BalanceConc!12886) Bool)

(assert (=> tb!106743 (= result!128418 (and (inv!25278 (dynLambda!9417 (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) (value!108767 (_1!10933 lt!683662)))) e!1130780))))

(assert (= tb!106743 b!1767047))

(declare-fun m!2184693 () Bool)

(assert (=> b!1767047 m!2184693))

(declare-fun m!2184695 () Bool)

(assert (=> tb!106743 m!2184695))

(assert (=> b!1767013 t!164851))

(declare-fun b_and!133983 () Bool)

(assert (= b_and!133973 (and (=> t!164851 result!128418) b_and!133983)))

(declare-fun t!164853 () Bool)

(declare-fun tb!106745 () Bool)

(assert (=> (and b!1767018 (= (toChars!4859 (transformation!3477 (rule!5511 token!523))) (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) t!164853) tb!106745))

(declare-fun result!128422 () Bool)

(assert (= result!128422 result!128418))

(assert (=> b!1767013 t!164853))

(declare-fun b_and!133985 () Bool)

(assert (= b_and!133977 (and (=> t!164853 result!128422) b_and!133985)))

(declare-fun tb!106747 () Bool)

(declare-fun t!164855 () Bool)

(assert (=> (and b!1767011 (= (toChars!4859 (transformation!3477 (h!24856 rules!3447))) (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) t!164855) tb!106747))

(declare-fun result!128424 () Bool)

(assert (= result!128424 result!128418))

(assert (=> b!1767013 t!164855))

(declare-fun b_and!133987 () Bool)

(assert (= b_and!133981 (and (=> t!164855 result!128424) b_and!133987)))

(declare-fun b_lambda!57417 () Bool)

(assert (=> (not b_lambda!57417) (not b!1767023)))

(declare-fun tb!106749 () Bool)

(declare-fun t!164857 () Bool)

(assert (=> (and b!1767030 (= (toChars!4859 (transformation!3477 rule!422)) (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) t!164857) tb!106749))

(declare-fun b!1767048 () Bool)

(declare-fun e!1130781 () Bool)

(declare-fun tp!501474 () Bool)

(assert (=> b!1767048 (= e!1130781 (and (inv!25277 (c!287791 (dynLambda!9417 (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) (dynLambda!9418 (toValue!5000 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) lt!683655)))) tp!501474))))

(declare-fun result!128426 () Bool)

(assert (=> tb!106749 (= result!128426 (and (inv!25278 (dynLambda!9417 (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) (dynLambda!9418 (toValue!5000 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) lt!683655))) e!1130781))))

(assert (= tb!106749 b!1767048))

(declare-fun m!2184697 () Bool)

(assert (=> b!1767048 m!2184697))

(declare-fun m!2184699 () Bool)

(assert (=> tb!106749 m!2184699))

(assert (=> b!1767023 t!164857))

(declare-fun b_and!133989 () Bool)

(assert (= b_and!133983 (and (=> t!164857 result!128426) b_and!133989)))

(declare-fun tb!106751 () Bool)

(declare-fun t!164859 () Bool)

(assert (=> (and b!1767018 (= (toChars!4859 (transformation!3477 (rule!5511 token!523))) (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) t!164859) tb!106751))

(declare-fun result!128428 () Bool)

(assert (= result!128428 result!128426))

(assert (=> b!1767023 t!164859))

(declare-fun b_and!133991 () Bool)

(assert (= b_and!133985 (and (=> t!164859 result!128428) b_and!133991)))

(declare-fun t!164861 () Bool)

(declare-fun tb!106753 () Bool)

(assert (=> (and b!1767011 (= (toChars!4859 (transformation!3477 (h!24856 rules!3447))) (toChars!4859 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) t!164861) tb!106753))

(declare-fun result!128430 () Bool)

(assert (= result!128430 result!128426))

(assert (=> b!1767023 t!164861))

(declare-fun b_and!133993 () Bool)

(assert (= b_and!133987 (and (=> t!164861 result!128430) b_and!133993)))

(declare-fun b_lambda!57419 () Bool)

(assert (=> (not b_lambda!57419) (not b!1767023)))

(declare-fun tb!106755 () Bool)

(declare-fun t!164863 () Bool)

(assert (=> (and b!1767030 (= (toValue!5000 (transformation!3477 rule!422)) (toValue!5000 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) t!164863) tb!106755))

(declare-fun result!128432 () Bool)

(assert (=> tb!106755 (= result!128432 (inv!21 (dynLambda!9418 (toValue!5000 (transformation!3477 (rule!5511 (_1!10933 lt!683662)))) lt!683655)))))

(declare-fun m!2184701 () Bool)

(assert (=> tb!106755 m!2184701))

(assert (=> b!1767023 t!164863))

(declare-fun b_and!133995 () Bool)

(assert (= b_and!133971 (and (=> t!164863 result!128432) b_and!133995)))

(declare-fun tb!106757 () Bool)

(declare-fun t!164865 () Bool)

(assert (=> (and b!1767018 (= (toValue!5000 (transformation!3477 (rule!5511 token!523))) (toValue!5000 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) t!164865) tb!106757))

(declare-fun result!128436 () Bool)

(assert (= result!128436 result!128432))

(assert (=> b!1767023 t!164865))

(declare-fun b_and!133997 () Bool)

(assert (= b_and!133975 (and (=> t!164865 result!128436) b_and!133997)))

(declare-fun tb!106759 () Bool)

(declare-fun t!164867 () Bool)

(assert (=> (and b!1767011 (= (toValue!5000 (transformation!3477 (h!24856 rules!3447))) (toValue!5000 (transformation!3477 (rule!5511 (_1!10933 lt!683662))))) t!164867) tb!106759))

(declare-fun result!128438 () Bool)

(assert (= result!128438 result!128432))

(assert (=> b!1767023 t!164867))

(declare-fun b_and!133999 () Bool)

(assert (= b_and!133979 (and (=> t!164867 result!128438) b_and!133999)))

(declare-fun m!2184703 () Bool)

(assert (=> b!1767026 m!2184703))

(declare-fun m!2184705 () Bool)

(assert (=> b!1767026 m!2184705))

(declare-fun m!2184707 () Bool)

(assert (=> b!1767026 m!2184707))

(declare-fun m!2184709 () Bool)

(assert (=> b!1767026 m!2184709))

(declare-fun m!2184711 () Bool)

(assert (=> b!1767026 m!2184711))

(assert (=> b!1767026 m!2184709))

(declare-fun m!2184713 () Bool)

(assert (=> b!1767017 m!2184713))

(declare-fun m!2184715 () Bool)

(assert (=> b!1767017 m!2184715))

(declare-fun m!2184717 () Bool)

(assert (=> b!1767017 m!2184717))

(declare-fun m!2184719 () Bool)

(assert (=> b!1767017 m!2184719))

(declare-fun m!2184721 () Bool)

(assert (=> b!1767017 m!2184721))

(declare-fun m!2184723 () Bool)

(assert (=> b!1767017 m!2184723))

(assert (=> b!1767017 m!2184717))

(declare-fun m!2184725 () Bool)

(assert (=> b!1767017 m!2184725))

(declare-fun m!2184727 () Bool)

(assert (=> b!1767029 m!2184727))

(declare-fun m!2184729 () Bool)

(assert (=> b!1767019 m!2184729))

(declare-fun m!2184731 () Bool)

(assert (=> start!175174 m!2184731))

(declare-fun m!2184733 () Bool)

(assert (=> b!1767003 m!2184733))

(declare-fun m!2184735 () Bool)

(assert (=> b!1767003 m!2184735))

(declare-fun m!2184737 () Bool)

(assert (=> b!1767003 m!2184737))

(declare-fun m!2184739 () Bool)

(assert (=> b!1767006 m!2184739))

(declare-fun m!2184741 () Bool)

(assert (=> b!1767021 m!2184741))

(declare-fun m!2184743 () Bool)

(assert (=> b!1767021 m!2184743))

(declare-fun m!2184745 () Bool)

(assert (=> b!1767005 m!2184745))

(declare-fun m!2184747 () Bool)

(assert (=> b!1767005 m!2184747))

(declare-fun m!2184749 () Bool)

(assert (=> b!1767005 m!2184749))

(declare-fun m!2184751 () Bool)

(assert (=> b!1767005 m!2184751))

(declare-fun m!2184753 () Bool)

(assert (=> b!1767005 m!2184753))

(declare-fun m!2184755 () Bool)

(assert (=> b!1767005 m!2184755))

(declare-fun m!2184757 () Bool)

(assert (=> b!1767005 m!2184757))

(declare-fun m!2184759 () Bool)

(assert (=> b!1767005 m!2184759))

(declare-fun m!2184761 () Bool)

(assert (=> b!1767005 m!2184761))

(declare-fun m!2184763 () Bool)

(assert (=> b!1767005 m!2184763))

(declare-fun m!2184765 () Bool)

(assert (=> b!1767005 m!2184765))

(declare-fun m!2184767 () Bool)

(assert (=> b!1767005 m!2184767))

(declare-fun m!2184769 () Bool)

(assert (=> b!1767005 m!2184769))

(declare-fun m!2184771 () Bool)

(assert (=> b!1767005 m!2184771))

(assert (=> b!1767005 m!2184755))

(declare-fun m!2184773 () Bool)

(assert (=> b!1767005 m!2184773))

(declare-fun m!2184775 () Bool)

(assert (=> b!1767015 m!2184775))

(declare-fun m!2184777 () Bool)

(assert (=> b!1767031 m!2184777))

(declare-fun m!2184779 () Bool)

(assert (=> b!1767031 m!2184779))

(assert (=> b!1767031 m!2184779))

(declare-fun m!2184781 () Bool)

(assert (=> b!1767031 m!2184781))

(declare-fun m!2184783 () Bool)

(assert (=> b!1767031 m!2184783))

(declare-fun m!2184785 () Bool)

(assert (=> b!1767009 m!2184785))

(declare-fun m!2184787 () Bool)

(assert (=> b!1767009 m!2184787))

(declare-fun m!2184789 () Bool)

(assert (=> b!1767009 m!2184789))

(assert (=> b!1767002 m!2184745))

(assert (=> b!1767002 m!2184745))

(declare-fun m!2184791 () Bool)

(assert (=> b!1767002 m!2184791))

(assert (=> b!1767002 m!2184791))

(declare-fun m!2184793 () Bool)

(assert (=> b!1767002 m!2184793))

(declare-fun m!2184795 () Bool)

(assert (=> b!1767002 m!2184795))

(declare-fun m!2184797 () Bool)

(assert (=> b!1767008 m!2184797))

(declare-fun m!2184799 () Bool)

(assert (=> b!1767020 m!2184799))

(declare-fun m!2184801 () Bool)

(assert (=> b!1767020 m!2184801))

(declare-fun m!2184803 () Bool)

(assert (=> b!1767020 m!2184803))

(declare-fun m!2184805 () Bool)

(assert (=> b!1767020 m!2184805))

(declare-fun m!2184807 () Bool)

(assert (=> b!1767010 m!2184807))

(declare-fun m!2184809 () Bool)

(assert (=> b!1767014 m!2184809))

(declare-fun m!2184811 () Bool)

(assert (=> b!1767027 m!2184811))

(declare-fun m!2184813 () Bool)

(assert (=> b!1767027 m!2184813))

(declare-fun m!2184815 () Bool)

(assert (=> b!1767023 m!2184815))

(assert (=> b!1767023 m!2184815))

(declare-fun m!2184817 () Bool)

(assert (=> b!1767023 m!2184817))

(assert (=> b!1767023 m!2184817))

(declare-fun m!2184819 () Bool)

(assert (=> b!1767023 m!2184819))

(declare-fun m!2184821 () Bool)

(assert (=> b!1767023 m!2184821))

(declare-fun m!2184823 () Bool)

(assert (=> b!1767004 m!2184823))

(declare-fun m!2184825 () Bool)

(assert (=> b!1767004 m!2184825))

(declare-fun m!2184827 () Bool)

(assert (=> b!1767004 m!2184827))

(declare-fun m!2184829 () Bool)

(assert (=> b!1767024 m!2184829))

(declare-fun m!2184831 () Bool)

(assert (=> b!1767013 m!2184831))

(declare-fun m!2184833 () Bool)

(assert (=> b!1767025 m!2184833))

(declare-fun m!2184835 () Bool)

(assert (=> b!1767025 m!2184835))

(declare-fun m!2184837 () Bool)

(assert (=> b!1767012 m!2184837))

(declare-fun m!2184839 () Bool)

(assert (=> b!1767012 m!2184839))

(check-sat (not b!1767009) (not b_next!49597) (not b!1767020) (not tb!106755) (not b!1767008) (not b_next!49599) (not b!1767031) (not b_lambda!57419) (not b!1767047) (not b!1767012) (not b!1767021) (not b!1767027) (not b_next!49591) (not b!1767024) (not b_next!49601) b_and!133997 (not b!1767028) (not b!1767017) (not b!1767019) b_and!133993 b_and!133991 (not b!1767023) (not b!1767006) (not b!1767025) (not b_next!49595) (not tb!106743) (not b_lambda!57417) (not b!1767004) (not b!1767014) (not start!175174) (not b!1767029) b_and!133999 (not tb!106749) (not b!1767002) tp_is_empty!7853 (not b!1767026) (not b!1767010) (not b!1767003) (not b!1767015) (not b_lambda!57415) b_and!133995 (not b_next!49593) (not b!1767005) (not b!1767048) (not b!1767007) b_and!133989)
(check-sat (not b_next!49591) (not b_next!49597) b_and!133993 b_and!133991 (not b_next!49595) b_and!133999 b_and!133995 (not b_next!49593) b_and!133989 (not b_next!49599) (not b_next!49601) b_and!133997)

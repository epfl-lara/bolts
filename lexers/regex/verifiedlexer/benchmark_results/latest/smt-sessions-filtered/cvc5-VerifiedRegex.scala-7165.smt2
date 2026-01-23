; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!380422 () Bool)

(assert start!380422)

(declare-fun b!4036083 () Bool)

(declare-fun b_free!112449 () Bool)

(declare-fun b_next!113153 () Bool)

(assert (=> b!4036083 (= b_free!112449 (not b_next!113153))))

(declare-fun tp!1226083 () Bool)

(declare-fun b_and!310167 () Bool)

(assert (=> b!4036083 (= tp!1226083 b_and!310167)))

(declare-fun b_free!112451 () Bool)

(declare-fun b_next!113155 () Bool)

(assert (=> b!4036083 (= b_free!112451 (not b_next!113155))))

(declare-fun tp!1226085 () Bool)

(declare-fun b_and!310169 () Bool)

(assert (=> b!4036083 (= tp!1226085 b_and!310169)))

(declare-fun b!4036114 () Bool)

(declare-fun b_free!112453 () Bool)

(declare-fun b_next!113157 () Bool)

(assert (=> b!4036114 (= b_free!112453 (not b_next!113157))))

(declare-fun tp!1226088 () Bool)

(declare-fun b_and!310171 () Bool)

(assert (=> b!4036114 (= tp!1226088 b_and!310171)))

(declare-fun b_free!112455 () Bool)

(declare-fun b_next!113159 () Bool)

(assert (=> b!4036114 (= b_free!112455 (not b_next!113159))))

(declare-fun tp!1226087 () Bool)

(declare-fun b_and!310173 () Bool)

(assert (=> b!4036114 (= tp!1226087 b_and!310173)))

(declare-fun e!2504365 () Bool)

(assert (=> b!4036083 (= e!2504365 (and tp!1226083 tp!1226085))))

(declare-fun b!4036084 () Bool)

(declare-fun res!1643499 () Bool)

(declare-fun e!2504374 () Bool)

(assert (=> b!4036084 (=> res!1643499 e!2504374)))

(declare-datatypes ((C!23830 0))(
  ( (C!23831 (val!14009 Int)) )
))
(declare-datatypes ((List!43346 0))(
  ( (Nil!43222) (Cons!43222 (h!48642 C!23830) (t!334587 List!43346)) )
))
(declare-fun lt!1435803 () List!43346)

(declare-datatypes ((IArray!26261 0))(
  ( (IArray!26262 (innerList!13188 List!43346)) )
))
(declare-datatypes ((Conc!13128 0))(
  ( (Node!13128 (left!32553 Conc!13128) (right!32883 Conc!13128) (csize!26486 Int) (cheight!13339 Int)) (Leaf!20294 (xs!16434 IArray!26261) (csize!26487 Int)) (Empty!13128) )
))
(declare-datatypes ((BalanceConc!25850 0))(
  ( (BalanceConc!25851 (c!697105 Conc!13128)) )
))
(declare-datatypes ((List!43347 0))(
  ( (Nil!43223) (Cons!43223 (h!48643 (_ BitVec 16)) (t!334588 List!43347)) )
))
(declare-datatypes ((TokenValue!7147 0))(
  ( (FloatLiteralValue!14294 (text!50474 List!43347)) (TokenValueExt!7146 (__x!26511 Int)) (Broken!35735 (value!217744 List!43347)) (Object!7270) (End!7147) (Def!7147) (Underscore!7147) (Match!7147) (Else!7147) (Error!7147) (Case!7147) (If!7147) (Extends!7147) (Abstract!7147) (Class!7147) (Val!7147) (DelimiterValue!14294 (del!7207 List!43347)) (KeywordValue!7153 (value!217745 List!43347)) (CommentValue!14294 (value!217746 List!43347)) (WhitespaceValue!14294 (value!217747 List!43347)) (IndentationValue!7147 (value!217748 List!43347)) (String!49454) (Int32!7147) (Broken!35736 (value!217749 List!43347)) (Boolean!7148) (Unit!62413) (OperatorValue!7150 (op!7207 List!43347)) (IdentifierValue!14294 (value!217750 List!43347)) (IdentifierValue!14295 (value!217751 List!43347)) (WhitespaceValue!14295 (value!217752 List!43347)) (True!14294) (False!14294) (Broken!35737 (value!217753 List!43347)) (Broken!35738 (value!217754 List!43347)) (True!14295) (RightBrace!7147) (RightBracket!7147) (Colon!7147) (Null!7147) (Comma!7147) (LeftBracket!7147) (False!14295) (LeftBrace!7147) (ImaginaryLiteralValue!7147 (text!50475 List!43347)) (StringLiteralValue!21441 (value!217755 List!43347)) (EOFValue!7147 (value!217756 List!43347)) (IdentValue!7147 (value!217757 List!43347)) (DelimiterValue!14295 (value!217758 List!43347)) (DedentValue!7147 (value!217759 List!43347)) (NewLineValue!7147 (value!217760 List!43347)) (IntegerValue!21441 (value!217761 (_ BitVec 32)) (text!50476 List!43347)) (IntegerValue!21442 (value!217762 Int) (text!50477 List!43347)) (Times!7147) (Or!7147) (Equal!7147) (Minus!7147) (Broken!35739 (value!217763 List!43347)) (And!7147) (Div!7147) (LessEqual!7147) (Mod!7147) (Concat!18969) (Not!7147) (Plus!7147) (SpaceValue!7147 (value!217764 List!43347)) (IntegerValue!21443 (value!217765 Int) (text!50478 List!43347)) (StringLiteralValue!21442 (text!50479 List!43347)) (FloatLiteralValue!14295 (text!50480 List!43347)) (BytesLiteralValue!7147 (value!217766 List!43347)) (CommentValue!14295 (value!217767 List!43347)) (StringLiteralValue!21443 (value!217768 List!43347)) (ErrorTokenValue!7147 (msg!7208 List!43347)) )
))
(declare-datatypes ((Regex!11822 0))(
  ( (ElementMatch!11822 (c!697106 C!23830)) (Concat!18970 (regOne!24156 Regex!11822) (regTwo!24156 Regex!11822)) (EmptyExpr!11822) (Star!11822 (reg!12151 Regex!11822)) (EmptyLang!11822) (Union!11822 (regOne!24157 Regex!11822) (regTwo!24157 Regex!11822)) )
))
(declare-datatypes ((String!49455 0))(
  ( (String!49456 (value!217769 String)) )
))
(declare-datatypes ((TokenValueInjection!13722 0))(
  ( (TokenValueInjection!13723 (toValue!9449 Int) (toChars!9308 Int)) )
))
(declare-datatypes ((Rule!13634 0))(
  ( (Rule!13635 (regex!6917 Regex!11822) (tag!7777 String!49455) (isSeparator!6917 Bool) (transformation!6917 TokenValueInjection!13722)) )
))
(declare-datatypes ((Token!12972 0))(
  ( (Token!12973 (value!217770 TokenValue!7147) (rule!9985 Rule!13634) (size!32307 Int) (originalCharacters!7517 List!43346)) )
))
(declare-datatypes ((tuple2!42304 0))(
  ( (tuple2!42305 (_1!24286 Token!12972) (_2!24286 List!43346)) )
))
(declare-datatypes ((Option!9331 0))(
  ( (None!9330) (Some!9330 (v!39726 tuple2!42304)) )
))
(declare-fun lt!1435811 () Option!9331)

(declare-fun lt!1435829 () List!43346)

(declare-fun ++!11319 (List!43346 List!43346) List!43346)

(assert (=> b!4036084 (= res!1643499 (not (= lt!1435829 (++!11319 lt!1435803 (_2!24286 (v!39726 lt!1435811))))))))

(declare-fun b!4036086 () Bool)

(declare-fun e!2504373 () Bool)

(declare-fun tp_is_empty!20615 () Bool)

(declare-fun tp!1226092 () Bool)

(assert (=> b!4036086 (= e!2504373 (and tp_is_empty!20615 tp!1226092))))

(declare-fun b!4036087 () Bool)

(declare-fun e!2504359 () Bool)

(declare-fun e!2504364 () Bool)

(assert (=> b!4036087 (= e!2504359 e!2504364)))

(declare-fun res!1643506 () Bool)

(assert (=> b!4036087 (=> res!1643506 e!2504364)))

(declare-fun token!484 () Token!12972)

(declare-fun lt!1435816 () List!43346)

(declare-fun matchR!5775 (Regex!11822 List!43346) Bool)

(assert (=> b!4036087 (= res!1643506 (not (matchR!5775 (regex!6917 (rule!9985 token!484)) lt!1435816)))))

(declare-fun isPrefix!4004 (List!43346 List!43346) Bool)

(assert (=> b!4036087 (isPrefix!4004 lt!1435816 lt!1435829)))

(declare-fun newSuffix!27 () List!43346)

(declare-fun prefix!494 () List!43346)

(declare-datatypes ((Unit!62414 0))(
  ( (Unit!62415) )
))
(declare-fun lt!1435821 () Unit!62414)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!797 (List!43346 List!43346 List!43346) Unit!62414)

(assert (=> b!4036087 (= lt!1435821 (lemmaPrefixStaysPrefixWhenAddingToSuffix!797 lt!1435816 prefix!494 newSuffix!27))))

(declare-fun lt!1435805 () Unit!62414)

(declare-fun suffix!1299 () List!43346)

(assert (=> b!4036087 (= lt!1435805 (lemmaPrefixStaysPrefixWhenAddingToSuffix!797 lt!1435816 prefix!494 suffix!1299))))

(declare-fun b!4036088 () Bool)

(declare-fun e!2504363 () Bool)

(declare-fun tp!1226089 () Bool)

(declare-fun e!2504369 () Bool)

(declare-fun inv!21 (TokenValue!7147) Bool)

(assert (=> b!4036088 (= e!2504369 (and (inv!21 (value!217770 token!484)) e!2504363 tp!1226089))))

(declare-fun b!4036089 () Bool)

(declare-fun e!2504357 () Bool)

(assert (=> b!4036089 (= e!2504364 e!2504357)))

(declare-fun res!1643503 () Bool)

(assert (=> b!4036089 (=> res!1643503 e!2504357)))

(declare-fun lt!1435817 () List!43346)

(declare-fun lt!1435831 () List!43346)

(assert (=> b!4036089 (= res!1643503 (not (= lt!1435817 lt!1435831)))))

(declare-fun lt!1435801 () List!43346)

(assert (=> b!4036089 (= lt!1435817 (++!11319 lt!1435816 lt!1435801))))

(declare-fun getSuffix!2421 (List!43346 List!43346) List!43346)

(assert (=> b!4036089 (= lt!1435801 (getSuffix!2421 lt!1435831 lt!1435816))))

(declare-fun e!2504367 () Bool)

(assert (=> b!4036089 e!2504367))

(declare-fun res!1643492 () Bool)

(assert (=> b!4036089 (=> (not res!1643492) (not e!2504367))))

(assert (=> b!4036089 (= res!1643492 (isPrefix!4004 lt!1435831 lt!1435831))))

(declare-fun lt!1435818 () Unit!62414)

(declare-fun lemmaIsPrefixRefl!2571 (List!43346 List!43346) Unit!62414)

(assert (=> b!4036089 (= lt!1435818 (lemmaIsPrefixRefl!2571 lt!1435831 lt!1435831))))

(declare-fun b!4036090 () Bool)

(declare-fun res!1643501 () Bool)

(declare-fun e!2504376 () Bool)

(assert (=> b!4036090 (=> (not res!1643501) (not e!2504376))))

(declare-datatypes ((LexerInterface!6506 0))(
  ( (LexerInterfaceExt!6503 (__x!26512 Int)) (Lexer!6504) )
))
(declare-fun thiss!21717 () LexerInterface!6506)

(declare-datatypes ((List!43348 0))(
  ( (Nil!43224) (Cons!43224 (h!48644 Rule!13634) (t!334589 List!43348)) )
))
(declare-fun rules!2999 () List!43348)

(declare-fun rulesInvariant!5849 (LexerInterface!6506 List!43348) Bool)

(assert (=> b!4036090 (= res!1643501 (rulesInvariant!5849 thiss!21717 rules!2999))))

(declare-fun tp!1226091 () Bool)

(declare-fun b!4036091 () Bool)

(declare-fun inv!57750 (String!49455) Bool)

(declare-fun inv!57753 (TokenValueInjection!13722) Bool)

(assert (=> b!4036091 (= e!2504363 (and tp!1226091 (inv!57750 (tag!7777 (rule!9985 token!484))) (inv!57753 (transformation!6917 (rule!9985 token!484))) e!2504365))))

(declare-fun b!4036092 () Bool)

(declare-fun e!2504356 () Bool)

(declare-fun tp!1226094 () Bool)

(assert (=> b!4036092 (= e!2504356 (and tp_is_empty!20615 tp!1226094))))

(declare-fun b!4036093 () Bool)

(declare-fun e!2504366 () Bool)

(assert (=> b!4036093 (= e!2504366 e!2504359)))

(declare-fun res!1643512 () Bool)

(assert (=> b!4036093 (=> res!1643512 e!2504359)))

(declare-fun lt!1435814 () Option!9331)

(declare-fun lt!1435830 () Option!9331)

(assert (=> b!4036093 (= res!1643512 (not (= lt!1435814 lt!1435830)))))

(declare-fun lt!1435833 () Token!12972)

(declare-fun suffixResult!105 () List!43346)

(assert (=> b!4036093 (= lt!1435814 (Some!9330 (tuple2!42305 lt!1435833 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2816 (LexerInterface!6506 Rule!13634 List!43346) Option!9331)

(assert (=> b!4036093 (= lt!1435814 (maxPrefixOneRule!2816 thiss!21717 (rule!9985 token!484) lt!1435831))))

(declare-fun lt!1435835 () Int)

(declare-fun lt!1435809 () TokenValue!7147)

(assert (=> b!4036093 (= lt!1435833 (Token!12973 lt!1435809 (rule!9985 token!484) lt!1435835 lt!1435816))))

(declare-fun apply!10106 (TokenValueInjection!13722 BalanceConc!25850) TokenValue!7147)

(declare-fun seqFromList!5134 (List!43346) BalanceConc!25850)

(assert (=> b!4036093 (= lt!1435809 (apply!10106 (transformation!6917 (rule!9985 token!484)) (seqFromList!5134 lt!1435816)))))

(declare-fun lt!1435812 () Unit!62414)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1622 (LexerInterface!6506 List!43348 List!43346 List!43346 List!43346 Rule!13634) Unit!62414)

(assert (=> b!4036093 (= lt!1435812 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1622 thiss!21717 rules!2999 lt!1435816 lt!1435831 suffixResult!105 (rule!9985 token!484)))))

(declare-fun lt!1435798 () List!43346)

(assert (=> b!4036093 (= lt!1435798 suffixResult!105)))

(declare-fun lt!1435810 () Unit!62414)

(declare-fun lemmaSamePrefixThenSameSuffix!2165 (List!43346 List!43346 List!43346 List!43346 List!43346) Unit!62414)

(assert (=> b!4036093 (= lt!1435810 (lemmaSamePrefixThenSameSuffix!2165 lt!1435816 lt!1435798 lt!1435816 suffixResult!105 lt!1435831))))

(declare-fun lt!1435822 () List!43346)

(assert (=> b!4036093 (isPrefix!4004 lt!1435816 lt!1435822)))

(declare-fun lt!1435815 () Unit!62414)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2839 (List!43346 List!43346) Unit!62414)

(assert (=> b!4036093 (= lt!1435815 (lemmaConcatTwoListThenFirstIsPrefix!2839 lt!1435816 lt!1435798))))

(declare-fun b!4036094 () Bool)

(declare-fun res!1643504 () Bool)

(assert (=> b!4036094 (=> (not res!1643504) (not e!2504376))))

(declare-fun size!32308 (List!43346) Int)

(assert (=> b!4036094 (= res!1643504 (>= (size!32308 suffix!1299) (size!32308 newSuffix!27)))))

(declare-fun b!4036095 () Bool)

(declare-fun res!1643502 () Bool)

(assert (=> b!4036095 (=> (not res!1643502) (not e!2504376))))

(declare-fun isEmpty!25794 (List!43348) Bool)

(assert (=> b!4036095 (= res!1643502 (not (isEmpty!25794 rules!2999)))))

(declare-fun b!4036096 () Bool)

(declare-fun e!2504353 () Bool)

(declare-fun e!2504372 () Bool)

(assert (=> b!4036096 (= e!2504353 (not e!2504372))))

(declare-fun res!1643511 () Bool)

(assert (=> b!4036096 (=> res!1643511 e!2504372)))

(declare-fun lt!1435806 () List!43346)

(assert (=> b!4036096 (= res!1643511 (not (= lt!1435806 lt!1435831)))))

(assert (=> b!4036096 (= lt!1435806 (++!11319 lt!1435816 suffixResult!105))))

(declare-fun lt!1435826 () Unit!62414)

(declare-fun lemmaInv!1126 (TokenValueInjection!13722) Unit!62414)

(assert (=> b!4036096 (= lt!1435826 (lemmaInv!1126 (transformation!6917 (rule!9985 token!484))))))

(declare-fun ruleValid!2847 (LexerInterface!6506 Rule!13634) Bool)

(assert (=> b!4036096 (ruleValid!2847 thiss!21717 (rule!9985 token!484))))

(declare-fun lt!1435832 () Unit!62414)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1917 (LexerInterface!6506 Rule!13634 List!43348) Unit!62414)

(assert (=> b!4036096 (= lt!1435832 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1917 thiss!21717 (rule!9985 token!484) rules!2999))))

(declare-fun res!1643507 () Bool)

(assert (=> start!380422 (=> (not res!1643507) (not e!2504376))))

(assert (=> start!380422 (= res!1643507 (is-Lexer!6504 thiss!21717))))

(assert (=> start!380422 e!2504376))

(assert (=> start!380422 e!2504373))

(declare-fun inv!57754 (Token!12972) Bool)

(assert (=> start!380422 (and (inv!57754 token!484) e!2504369)))

(declare-fun e!2504354 () Bool)

(assert (=> start!380422 e!2504354))

(declare-fun e!2504362 () Bool)

(assert (=> start!380422 e!2504362))

(assert (=> start!380422 e!2504356))

(assert (=> start!380422 true))

(declare-fun e!2504375 () Bool)

(assert (=> start!380422 e!2504375))

(declare-fun e!2504360 () Bool)

(assert (=> start!380422 e!2504360))

(declare-fun b!4036085 () Bool)

(declare-fun e!2504352 () Bool)

(assert (=> b!4036085 (= e!2504352 e!2504353)))

(declare-fun res!1643498 () Bool)

(assert (=> b!4036085 (=> (not res!1643498) (not e!2504353))))

(declare-fun maxPrefix!3804 (LexerInterface!6506 List!43348 List!43346) Option!9331)

(assert (=> b!4036085 (= res!1643498 (= (maxPrefix!3804 thiss!21717 rules!2999 lt!1435831) lt!1435830))))

(declare-fun lt!1435824 () tuple2!42304)

(assert (=> b!4036085 (= lt!1435830 (Some!9330 lt!1435824))))

(assert (=> b!4036085 (= lt!1435824 (tuple2!42305 token!484 suffixResult!105))))

(assert (=> b!4036085 (= lt!1435831 (++!11319 prefix!494 suffix!1299))))

(declare-fun b!4036097 () Bool)

(declare-fun e!2504371 () Bool)

(assert (=> b!4036097 (= e!2504371 e!2504374)))

(declare-fun res!1643510 () Bool)

(assert (=> b!4036097 (=> res!1643510 e!2504374)))

(declare-fun contains!8583 (List!43348 Rule!13634) Bool)

(assert (=> b!4036097 (= res!1643510 (not (contains!8583 rules!2999 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))))

(declare-fun list!16087 (BalanceConc!25850) List!43346)

(declare-fun charsOf!4733 (Token!12972) BalanceConc!25850)

(assert (=> b!4036097 (= lt!1435803 (list!16087 (charsOf!4733 (_1!24286 (v!39726 lt!1435811)))))))

(declare-fun lt!1435813 () Unit!62414)

(assert (=> b!4036097 (= lt!1435813 (lemmaInv!1126 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))))

(assert (=> b!4036097 (ruleValid!2847 thiss!21717 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))

(declare-fun lt!1435808 () Unit!62414)

(assert (=> b!4036097 (= lt!1435808 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1917 thiss!21717 (rule!9985 (_1!24286 (v!39726 lt!1435811))) rules!2999))))

(declare-fun lt!1435820 () Unit!62414)

(declare-fun lemmaCharactersSize!1436 (Token!12972) Unit!62414)

(assert (=> b!4036097 (= lt!1435820 (lemmaCharactersSize!1436 token!484))))

(declare-fun lt!1435800 () Unit!62414)

(assert (=> b!4036097 (= lt!1435800 (lemmaCharactersSize!1436 (_1!24286 (v!39726 lt!1435811))))))

(declare-fun b!4036098 () Bool)

(declare-fun e!2504358 () Bool)

(assert (=> b!4036098 (= e!2504358 e!2504366)))

(declare-fun res!1643495 () Bool)

(assert (=> b!4036098 (=> res!1643495 e!2504366)))

(declare-fun lt!1435823 () List!43346)

(assert (=> b!4036098 (= res!1643495 (or (not (= lt!1435831 lt!1435823)) (not (= lt!1435831 lt!1435822))))))

(assert (=> b!4036098 (= lt!1435823 lt!1435822)))

(assert (=> b!4036098 (= lt!1435822 (++!11319 lt!1435816 lt!1435798))))

(declare-fun lt!1435819 () List!43346)

(assert (=> b!4036098 (= lt!1435823 (++!11319 lt!1435819 suffix!1299))))

(declare-fun lt!1435836 () List!43346)

(assert (=> b!4036098 (= lt!1435798 (++!11319 lt!1435836 suffix!1299))))

(declare-fun lt!1435799 () Unit!62414)

(declare-fun lemmaConcatAssociativity!2621 (List!43346 List!43346 List!43346) Unit!62414)

(assert (=> b!4036098 (= lt!1435799 (lemmaConcatAssociativity!2621 lt!1435816 lt!1435836 suffix!1299))))

(declare-fun tp!1226095 () Bool)

(declare-fun e!2504351 () Bool)

(declare-fun b!4036099 () Bool)

(declare-fun e!2504377 () Bool)

(assert (=> b!4036099 (= e!2504351 (and tp!1226095 (inv!57750 (tag!7777 (h!48644 rules!2999))) (inv!57753 (transformation!6917 (h!48644 rules!2999))) e!2504377))))

(declare-fun b!4036100 () Bool)

(declare-fun e!2504361 () Bool)

(assert (=> b!4036100 (= e!2504372 e!2504361)))

(declare-fun res!1643500 () Bool)

(assert (=> b!4036100 (=> res!1643500 e!2504361)))

(assert (=> b!4036100 (= res!1643500 (not (isPrefix!4004 lt!1435816 lt!1435831)))))

(assert (=> b!4036100 (isPrefix!4004 prefix!494 lt!1435831)))

(declare-fun lt!1435828 () Unit!62414)

(assert (=> b!4036100 (= lt!1435828 (lemmaConcatTwoListThenFirstIsPrefix!2839 prefix!494 suffix!1299))))

(assert (=> b!4036100 (isPrefix!4004 lt!1435816 lt!1435806)))

(declare-fun lt!1435834 () Unit!62414)

(assert (=> b!4036100 (= lt!1435834 (lemmaConcatTwoListThenFirstIsPrefix!2839 lt!1435816 suffixResult!105))))

(declare-fun b!4036101 () Bool)

(assert (=> b!4036101 (= e!2504357 e!2504371)))

(declare-fun res!1643505 () Bool)

(assert (=> b!4036101 (=> res!1643505 e!2504371)))

(assert (=> b!4036101 (= res!1643505 (not (is-Some!9330 lt!1435811)))))

(assert (=> b!4036101 (= lt!1435811 (maxPrefix!3804 thiss!21717 rules!2999 lt!1435829))))

(assert (=> b!4036101 (and (= suffixResult!105 lt!1435801) (= lt!1435824 (tuple2!42305 lt!1435833 lt!1435801)))))

(declare-fun lt!1435807 () Unit!62414)

(assert (=> b!4036101 (= lt!1435807 (lemmaSamePrefixThenSameSuffix!2165 lt!1435816 suffixResult!105 lt!1435816 lt!1435801 lt!1435831))))

(assert (=> b!4036101 (isPrefix!4004 lt!1435816 lt!1435817)))

(declare-fun lt!1435802 () Unit!62414)

(assert (=> b!4036101 (= lt!1435802 (lemmaConcatTwoListThenFirstIsPrefix!2839 lt!1435816 lt!1435801))))

(declare-fun b!4036102 () Bool)

(declare-fun res!1643509 () Bool)

(assert (=> b!4036102 (=> (not res!1643509) (not e!2504367))))

(assert (=> b!4036102 (= res!1643509 (= (value!217770 token!484) lt!1435809))))

(declare-fun b!4036103 () Bool)

(declare-fun tp!1226086 () Bool)

(assert (=> b!4036103 (= e!2504362 (and tp_is_empty!20615 tp!1226086))))

(declare-fun b!4036104 () Bool)

(declare-fun res!1643493 () Bool)

(assert (=> b!4036104 (=> (not res!1643493) (not e!2504376))))

(assert (=> b!4036104 (= res!1643493 (isPrefix!4004 newSuffix!27 suffix!1299))))

(declare-fun b!4036105 () Bool)

(declare-fun tp!1226093 () Bool)

(assert (=> b!4036105 (= e!2504354 (and tp_is_empty!20615 tp!1226093))))

(declare-fun b!4036106 () Bool)

(declare-fun tp!1226090 () Bool)

(assert (=> b!4036106 (= e!2504360 (and tp_is_empty!20615 tp!1226090))))

(declare-fun b!4036107 () Bool)

(declare-fun tp!1226084 () Bool)

(assert (=> b!4036107 (= e!2504375 (and e!2504351 tp!1226084))))

(declare-fun b!4036108 () Bool)

(declare-fun res!1643494 () Bool)

(assert (=> b!4036108 (=> (not res!1643494) (not e!2504367))))

(assert (=> b!4036108 (= res!1643494 (= (size!32307 token!484) (size!32308 (originalCharacters!7517 token!484))))))

(declare-fun b!4036109 () Bool)

(assert (=> b!4036109 (= e!2504361 e!2504358)))

(declare-fun res!1643496 () Bool)

(assert (=> b!4036109 (=> res!1643496 e!2504358)))

(assert (=> b!4036109 (= res!1643496 (not (= lt!1435819 prefix!494)))))

(assert (=> b!4036109 (= lt!1435819 (++!11319 lt!1435816 lt!1435836))))

(assert (=> b!4036109 (= lt!1435836 (getSuffix!2421 prefix!494 lt!1435816))))

(assert (=> b!4036109 (isPrefix!4004 lt!1435816 prefix!494)))

(declare-fun lt!1435804 () Unit!62414)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!568 (List!43346 List!43346 List!43346) Unit!62414)

(assert (=> b!4036109 (= lt!1435804 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!568 prefix!494 lt!1435816 lt!1435831))))

(declare-fun b!4036110 () Bool)

(assert (=> b!4036110 (= e!2504367 (and (= (size!32307 token!484) lt!1435835) (= (originalCharacters!7517 token!484) lt!1435816)))))

(declare-fun b!4036111 () Bool)

(declare-fun isEmpty!25795 (List!43346) Bool)

(assert (=> b!4036111 (= e!2504374 (not (isEmpty!25795 lt!1435803)))))

(declare-fun b!4036112 () Bool)

(declare-fun e!2504368 () Bool)

(assert (=> b!4036112 (= e!2504368 e!2504352)))

(declare-fun res!1643508 () Bool)

(assert (=> b!4036112 (=> (not res!1643508) (not e!2504352))))

(declare-fun lt!1435825 () List!43346)

(assert (=> b!4036112 (= res!1643508 (= lt!1435825 lt!1435829))))

(assert (=> b!4036112 (= lt!1435829 (++!11319 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43346)

(assert (=> b!4036112 (= lt!1435825 (++!11319 lt!1435816 newSuffixResult!27))))

(declare-fun b!4036113 () Bool)

(assert (=> b!4036113 (= e!2504376 e!2504368)))

(declare-fun res!1643497 () Bool)

(assert (=> b!4036113 (=> (not res!1643497) (not e!2504368))))

(declare-fun lt!1435827 () Int)

(assert (=> b!4036113 (= res!1643497 (>= lt!1435827 lt!1435835))))

(assert (=> b!4036113 (= lt!1435835 (size!32308 lt!1435816))))

(assert (=> b!4036113 (= lt!1435827 (size!32308 prefix!494))))

(assert (=> b!4036113 (= lt!1435816 (list!16087 (charsOf!4733 token!484)))))

(assert (=> b!4036114 (= e!2504377 (and tp!1226088 tp!1226087))))

(assert (= (and start!380422 res!1643507) b!4036095))

(assert (= (and b!4036095 res!1643502) b!4036090))

(assert (= (and b!4036090 res!1643501) b!4036094))

(assert (= (and b!4036094 res!1643504) b!4036104))

(assert (= (and b!4036104 res!1643493) b!4036113))

(assert (= (and b!4036113 res!1643497) b!4036112))

(assert (= (and b!4036112 res!1643508) b!4036085))

(assert (= (and b!4036085 res!1643498) b!4036096))

(assert (= (and b!4036096 (not res!1643511)) b!4036100))

(assert (= (and b!4036100 (not res!1643500)) b!4036109))

(assert (= (and b!4036109 (not res!1643496)) b!4036098))

(assert (= (and b!4036098 (not res!1643495)) b!4036093))

(assert (= (and b!4036093 (not res!1643512)) b!4036087))

(assert (= (and b!4036087 (not res!1643506)) b!4036089))

(assert (= (and b!4036089 res!1643492) b!4036102))

(assert (= (and b!4036102 res!1643509) b!4036108))

(assert (= (and b!4036108 res!1643494) b!4036110))

(assert (= (and b!4036089 (not res!1643503)) b!4036101))

(assert (= (and b!4036101 (not res!1643505)) b!4036097))

(assert (= (and b!4036097 (not res!1643510)) b!4036084))

(assert (= (and b!4036084 (not res!1643499)) b!4036111))

(assert (= (and start!380422 (is-Cons!43222 prefix!494)) b!4036086))

(assert (= b!4036091 b!4036083))

(assert (= b!4036088 b!4036091))

(assert (= start!380422 b!4036088))

(assert (= (and start!380422 (is-Cons!43222 suffixResult!105)) b!4036105))

(assert (= (and start!380422 (is-Cons!43222 suffix!1299)) b!4036103))

(assert (= (and start!380422 (is-Cons!43222 newSuffix!27)) b!4036092))

(assert (= b!4036099 b!4036114))

(assert (= b!4036107 b!4036099))

(assert (= (and start!380422 (is-Cons!43224 rules!2999)) b!4036107))

(assert (= (and start!380422 (is-Cons!43222 newSuffixResult!27)) b!4036106))

(declare-fun m!4630161 () Bool)

(assert (=> b!4036098 m!4630161))

(declare-fun m!4630163 () Bool)

(assert (=> b!4036098 m!4630163))

(declare-fun m!4630165 () Bool)

(assert (=> b!4036098 m!4630165))

(declare-fun m!4630167 () Bool)

(assert (=> b!4036098 m!4630167))

(declare-fun m!4630169 () Bool)

(assert (=> b!4036108 m!4630169))

(declare-fun m!4630171 () Bool)

(assert (=> start!380422 m!4630171))

(declare-fun m!4630173 () Bool)

(assert (=> b!4036089 m!4630173))

(declare-fun m!4630175 () Bool)

(assert (=> b!4036089 m!4630175))

(declare-fun m!4630177 () Bool)

(assert (=> b!4036089 m!4630177))

(declare-fun m!4630179 () Bool)

(assert (=> b!4036089 m!4630179))

(declare-fun m!4630181 () Bool)

(assert (=> b!4036087 m!4630181))

(declare-fun m!4630183 () Bool)

(assert (=> b!4036087 m!4630183))

(declare-fun m!4630185 () Bool)

(assert (=> b!4036087 m!4630185))

(declare-fun m!4630187 () Bool)

(assert (=> b!4036087 m!4630187))

(declare-fun m!4630189 () Bool)

(assert (=> b!4036088 m!4630189))

(declare-fun m!4630191 () Bool)

(assert (=> b!4036084 m!4630191))

(declare-fun m!4630193 () Bool)

(assert (=> b!4036113 m!4630193))

(declare-fun m!4630195 () Bool)

(assert (=> b!4036113 m!4630195))

(declare-fun m!4630197 () Bool)

(assert (=> b!4036113 m!4630197))

(assert (=> b!4036113 m!4630197))

(declare-fun m!4630199 () Bool)

(assert (=> b!4036113 m!4630199))

(declare-fun m!4630201 () Bool)

(assert (=> b!4036109 m!4630201))

(declare-fun m!4630203 () Bool)

(assert (=> b!4036109 m!4630203))

(declare-fun m!4630205 () Bool)

(assert (=> b!4036109 m!4630205))

(declare-fun m!4630207 () Bool)

(assert (=> b!4036109 m!4630207))

(declare-fun m!4630209 () Bool)

(assert (=> b!4036096 m!4630209))

(declare-fun m!4630211 () Bool)

(assert (=> b!4036096 m!4630211))

(declare-fun m!4630213 () Bool)

(assert (=> b!4036096 m!4630213))

(declare-fun m!4630215 () Bool)

(assert (=> b!4036096 m!4630215))

(declare-fun m!4630217 () Bool)

(assert (=> b!4036094 m!4630217))

(declare-fun m!4630219 () Bool)

(assert (=> b!4036094 m!4630219))

(declare-fun m!4630221 () Bool)

(assert (=> b!4036111 m!4630221))

(declare-fun m!4630223 () Bool)

(assert (=> b!4036090 m!4630223))

(declare-fun m!4630225 () Bool)

(assert (=> b!4036101 m!4630225))

(declare-fun m!4630227 () Bool)

(assert (=> b!4036101 m!4630227))

(declare-fun m!4630229 () Bool)

(assert (=> b!4036101 m!4630229))

(declare-fun m!4630231 () Bool)

(assert (=> b!4036101 m!4630231))

(declare-fun m!4630233 () Bool)

(assert (=> b!4036112 m!4630233))

(declare-fun m!4630235 () Bool)

(assert (=> b!4036112 m!4630235))

(declare-fun m!4630237 () Bool)

(assert (=> b!4036104 m!4630237))

(declare-fun m!4630239 () Bool)

(assert (=> b!4036095 m!4630239))

(declare-fun m!4630241 () Bool)

(assert (=> b!4036091 m!4630241))

(declare-fun m!4630243 () Bool)

(assert (=> b!4036091 m!4630243))

(declare-fun m!4630245 () Bool)

(assert (=> b!4036099 m!4630245))

(declare-fun m!4630247 () Bool)

(assert (=> b!4036099 m!4630247))

(declare-fun m!4630249 () Bool)

(assert (=> b!4036097 m!4630249))

(declare-fun m!4630251 () Bool)

(assert (=> b!4036097 m!4630251))

(declare-fun m!4630253 () Bool)

(assert (=> b!4036097 m!4630253))

(declare-fun m!4630255 () Bool)

(assert (=> b!4036097 m!4630255))

(declare-fun m!4630257 () Bool)

(assert (=> b!4036097 m!4630257))

(declare-fun m!4630259 () Bool)

(assert (=> b!4036097 m!4630259))

(assert (=> b!4036097 m!4630259))

(declare-fun m!4630261 () Bool)

(assert (=> b!4036097 m!4630261))

(declare-fun m!4630263 () Bool)

(assert (=> b!4036097 m!4630263))

(declare-fun m!4630265 () Bool)

(assert (=> b!4036085 m!4630265))

(declare-fun m!4630267 () Bool)

(assert (=> b!4036085 m!4630267))

(declare-fun m!4630269 () Bool)

(assert (=> b!4036100 m!4630269))

(declare-fun m!4630271 () Bool)

(assert (=> b!4036100 m!4630271))

(declare-fun m!4630273 () Bool)

(assert (=> b!4036100 m!4630273))

(declare-fun m!4630275 () Bool)

(assert (=> b!4036100 m!4630275))

(declare-fun m!4630277 () Bool)

(assert (=> b!4036100 m!4630277))

(declare-fun m!4630279 () Bool)

(assert (=> b!4036093 m!4630279))

(declare-fun m!4630281 () Bool)

(assert (=> b!4036093 m!4630281))

(declare-fun m!4630283 () Bool)

(assert (=> b!4036093 m!4630283))

(declare-fun m!4630285 () Bool)

(assert (=> b!4036093 m!4630285))

(declare-fun m!4630287 () Bool)

(assert (=> b!4036093 m!4630287))

(declare-fun m!4630289 () Bool)

(assert (=> b!4036093 m!4630289))

(assert (=> b!4036093 m!4630279))

(declare-fun m!4630291 () Bool)

(assert (=> b!4036093 m!4630291))

(push 1)

(assert b_and!310171)

(assert (not b!4036111))

(assert (not b!4036104))

(assert (not b!4036097))

(assert (not b!4036112))

(assert (not b!4036101))

(assert (not b!4036094))

(assert (not start!380422))

(assert b_and!310173)

(assert tp_is_empty!20615)

(assert (not b!4036108))

(assert (not b!4036087))

(assert (not b!4036095))

(assert (not b!4036109))

(assert (not b!4036103))

(assert (not b!4036113))

(assert (not b_next!113155))

(assert (not b!4036092))

(assert (not b!4036090))

(assert (not b!4036093))

(assert (not b!4036105))

(assert (not b!4036099))

(assert (not b!4036100))

(assert (not b!4036106))

(assert (not b!4036089))

(assert (not b_next!113157))

(assert (not b!4036098))

(assert (not b!4036088))

(assert (not b!4036084))

(assert (not b!4036107))

(assert b_and!310169)

(assert (not b_next!113159))

(assert (not b_next!113153))

(assert (not b!4036086))

(assert b_and!310167)

(assert (not b!4036096))

(assert (not b!4036085))

(assert (not b!4036091))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!113155))

(assert b_and!310171)

(assert (not b_next!113157))

(assert b_and!310173)

(assert b_and!310167)

(assert b_and!310169)

(assert (not b_next!113159))

(assert (not b_next!113153))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1196006 () Bool)

(assert (=> d!1196006 (= (isEmpty!25794 rules!2999) (is-Nil!43224 rules!2999))))

(assert (=> b!4036095 d!1196006))

(declare-fun d!1196008 () Bool)

(declare-fun res!1643584 () Bool)

(declare-fun e!2504465 () Bool)

(assert (=> d!1196008 (=> (not res!1643584) (not e!2504465))))

(assert (=> d!1196008 (= res!1643584 (not (isEmpty!25795 (originalCharacters!7517 token!484))))))

(assert (=> d!1196008 (= (inv!57754 token!484) e!2504465)))

(declare-fun b!4036215 () Bool)

(declare-fun res!1643585 () Bool)

(assert (=> b!4036215 (=> (not res!1643585) (not e!2504465))))

(declare-fun dynLambda!18327 (Int TokenValue!7147) BalanceConc!25850)

(assert (=> b!4036215 (= res!1643585 (= (originalCharacters!7517 token!484) (list!16087 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))))))

(declare-fun b!4036216 () Bool)

(assert (=> b!4036216 (= e!2504465 (= (size!32307 token!484) (size!32308 (originalCharacters!7517 token!484))))))

(assert (= (and d!1196008 res!1643584) b!4036215))

(assert (= (and b!4036215 res!1643585) b!4036216))

(declare-fun b_lambda!117767 () Bool)

(assert (=> (not b_lambda!117767) (not b!4036215)))

(declare-fun t!334594 () Bool)

(declare-fun tb!242481 () Bool)

(assert (=> (and b!4036083 (= (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) t!334594) tb!242481))

(declare-fun b!4036221 () Bool)

(declare-fun e!2504468 () Bool)

(declare-fun tp!1226137 () Bool)

(declare-fun inv!57757 (Conc!13128) Bool)

(assert (=> b!4036221 (= e!2504468 (and (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))) tp!1226137))))

(declare-fun result!293930 () Bool)

(declare-fun inv!57758 (BalanceConc!25850) Bool)

(assert (=> tb!242481 (= result!293930 (and (inv!57758 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484))) e!2504468))))

(assert (= tb!242481 b!4036221))

(declare-fun m!4630425 () Bool)

(assert (=> b!4036221 m!4630425))

(declare-fun m!4630427 () Bool)

(assert (=> tb!242481 m!4630427))

(assert (=> b!4036215 t!334594))

(declare-fun b_and!310183 () Bool)

(assert (= b_and!310169 (and (=> t!334594 result!293930) b_and!310183)))

(declare-fun t!334596 () Bool)

(declare-fun tb!242483 () Bool)

(assert (=> (and b!4036114 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) t!334596) tb!242483))

(declare-fun result!293934 () Bool)

(assert (= result!293934 result!293930))

(assert (=> b!4036215 t!334596))

(declare-fun b_and!310185 () Bool)

(assert (= b_and!310173 (and (=> t!334596 result!293934) b_and!310185)))

(declare-fun m!4630429 () Bool)

(assert (=> d!1196008 m!4630429))

(declare-fun m!4630431 () Bool)

(assert (=> b!4036215 m!4630431))

(assert (=> b!4036215 m!4630431))

(declare-fun m!4630433 () Bool)

(assert (=> b!4036215 m!4630433))

(assert (=> b!4036216 m!4630169))

(assert (=> start!380422 d!1196008))

(declare-fun e!2504473 () Bool)

(declare-fun b!4036233 () Bool)

(declare-fun lt!1435956 () List!43346)

(assert (=> b!4036233 (= e!2504473 (or (not (= suffixResult!105 Nil!43222)) (= lt!1435956 lt!1435816)))))

(declare-fun b!4036232 () Bool)

(declare-fun res!1643591 () Bool)

(assert (=> b!4036232 (=> (not res!1643591) (not e!2504473))))

(assert (=> b!4036232 (= res!1643591 (= (size!32308 lt!1435956) (+ (size!32308 lt!1435816) (size!32308 suffixResult!105))))))

(declare-fun b!4036231 () Bool)

(declare-fun e!2504474 () List!43346)

(assert (=> b!4036231 (= e!2504474 (Cons!43222 (h!48642 lt!1435816) (++!11319 (t!334587 lt!1435816) suffixResult!105)))))

(declare-fun b!4036230 () Bool)

(assert (=> b!4036230 (= e!2504474 suffixResult!105)))

(declare-fun d!1196010 () Bool)

(assert (=> d!1196010 e!2504473))

(declare-fun res!1643590 () Bool)

(assert (=> d!1196010 (=> (not res!1643590) (not e!2504473))))

(declare-fun content!6568 (List!43346) (Set C!23830))

(assert (=> d!1196010 (= res!1643590 (= (content!6568 lt!1435956) (set.union (content!6568 lt!1435816) (content!6568 suffixResult!105))))))

(assert (=> d!1196010 (= lt!1435956 e!2504474)))

(declare-fun c!697112 () Bool)

(assert (=> d!1196010 (= c!697112 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196010 (= (++!11319 lt!1435816 suffixResult!105) lt!1435956)))

(assert (= (and d!1196010 c!697112) b!4036230))

(assert (= (and d!1196010 (not c!697112)) b!4036231))

(assert (= (and d!1196010 res!1643590) b!4036232))

(assert (= (and b!4036232 res!1643591) b!4036233))

(declare-fun m!4630435 () Bool)

(assert (=> b!4036232 m!4630435))

(assert (=> b!4036232 m!4630193))

(declare-fun m!4630437 () Bool)

(assert (=> b!4036232 m!4630437))

(declare-fun m!4630439 () Bool)

(assert (=> b!4036231 m!4630439))

(declare-fun m!4630441 () Bool)

(assert (=> d!1196010 m!4630441))

(declare-fun m!4630443 () Bool)

(assert (=> d!1196010 m!4630443))

(declare-fun m!4630445 () Bool)

(assert (=> d!1196010 m!4630445))

(assert (=> b!4036096 d!1196010))

(declare-fun d!1196012 () Bool)

(declare-fun e!2504477 () Bool)

(assert (=> d!1196012 e!2504477))

(declare-fun res!1643594 () Bool)

(assert (=> d!1196012 (=> (not res!1643594) (not e!2504477))))

(declare-fun semiInverseModEq!2953 (Int Int) Bool)

(assert (=> d!1196012 (= res!1643594 (semiInverseModEq!2953 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))))))

(declare-fun Unit!62419 () Unit!62414)

(assert (=> d!1196012 (= (lemmaInv!1126 (transformation!6917 (rule!9985 token!484))) Unit!62419)))

(declare-fun b!4036236 () Bool)

(declare-fun equivClasses!2852 (Int Int) Bool)

(assert (=> b!4036236 (= e!2504477 (equivClasses!2852 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))))))

(assert (= (and d!1196012 res!1643594) b!4036236))

(declare-fun m!4630447 () Bool)

(assert (=> d!1196012 m!4630447))

(declare-fun m!4630449 () Bool)

(assert (=> b!4036236 m!4630449))

(assert (=> b!4036096 d!1196012))

(declare-fun d!1196014 () Bool)

(declare-fun res!1643599 () Bool)

(declare-fun e!2504480 () Bool)

(assert (=> d!1196014 (=> (not res!1643599) (not e!2504480))))

(declare-fun validRegex!5345 (Regex!11822) Bool)

(assert (=> d!1196014 (= res!1643599 (validRegex!5345 (regex!6917 (rule!9985 token!484))))))

(assert (=> d!1196014 (= (ruleValid!2847 thiss!21717 (rule!9985 token!484)) e!2504480)))

(declare-fun b!4036241 () Bool)

(declare-fun res!1643600 () Bool)

(assert (=> b!4036241 (=> (not res!1643600) (not e!2504480))))

(declare-fun nullable!4145 (Regex!11822) Bool)

(assert (=> b!4036241 (= res!1643600 (not (nullable!4145 (regex!6917 (rule!9985 token!484)))))))

(declare-fun b!4036242 () Bool)

(assert (=> b!4036242 (= e!2504480 (not (= (tag!7777 (rule!9985 token!484)) (String!49456 ""))))))

(assert (= (and d!1196014 res!1643599) b!4036241))

(assert (= (and b!4036241 res!1643600) b!4036242))

(declare-fun m!4630451 () Bool)

(assert (=> d!1196014 m!4630451))

(declare-fun m!4630453 () Bool)

(assert (=> b!4036241 m!4630453))

(assert (=> b!4036096 d!1196014))

(declare-fun d!1196016 () Bool)

(assert (=> d!1196016 (ruleValid!2847 thiss!21717 (rule!9985 token!484))))

(declare-fun lt!1435959 () Unit!62414)

(declare-fun choose!24441 (LexerInterface!6506 Rule!13634 List!43348) Unit!62414)

(assert (=> d!1196016 (= lt!1435959 (choose!24441 thiss!21717 (rule!9985 token!484) rules!2999))))

(assert (=> d!1196016 (contains!8583 rules!2999 (rule!9985 token!484))))

(assert (=> d!1196016 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1917 thiss!21717 (rule!9985 token!484) rules!2999) lt!1435959)))

(declare-fun bs!590549 () Bool)

(assert (= bs!590549 d!1196016))

(assert (=> bs!590549 m!4630213))

(declare-fun m!4630455 () Bool)

(assert (=> bs!590549 m!4630455))

(declare-fun m!4630457 () Bool)

(assert (=> bs!590549 m!4630457))

(assert (=> b!4036096 d!1196016))

(declare-fun d!1196018 () Bool)

(declare-fun lt!1435962 () Int)

(assert (=> d!1196018 (>= lt!1435962 0)))

(declare-fun e!2504483 () Int)

(assert (=> d!1196018 (= lt!1435962 e!2504483)))

(declare-fun c!697115 () Bool)

(assert (=> d!1196018 (= c!697115 (is-Nil!43222 suffix!1299))))

(assert (=> d!1196018 (= (size!32308 suffix!1299) lt!1435962)))

(declare-fun b!4036247 () Bool)

(assert (=> b!4036247 (= e!2504483 0)))

(declare-fun b!4036248 () Bool)

(assert (=> b!4036248 (= e!2504483 (+ 1 (size!32308 (t!334587 suffix!1299))))))

(assert (= (and d!1196018 c!697115) b!4036247))

(assert (= (and d!1196018 (not c!697115)) b!4036248))

(declare-fun m!4630459 () Bool)

(assert (=> b!4036248 m!4630459))

(assert (=> b!4036094 d!1196018))

(declare-fun d!1196020 () Bool)

(declare-fun lt!1435963 () Int)

(assert (=> d!1196020 (>= lt!1435963 0)))

(declare-fun e!2504484 () Int)

(assert (=> d!1196020 (= lt!1435963 e!2504484)))

(declare-fun c!697116 () Bool)

(assert (=> d!1196020 (= c!697116 (is-Nil!43222 newSuffix!27))))

(assert (=> d!1196020 (= (size!32308 newSuffix!27) lt!1435963)))

(declare-fun b!4036249 () Bool)

(assert (=> b!4036249 (= e!2504484 0)))

(declare-fun b!4036250 () Bool)

(assert (=> b!4036250 (= e!2504484 (+ 1 (size!32308 (t!334587 newSuffix!27))))))

(assert (= (and d!1196020 c!697116) b!4036249))

(assert (= (and d!1196020 (not c!697116)) b!4036250))

(declare-fun m!4630461 () Bool)

(assert (=> b!4036250 m!4630461))

(assert (=> b!4036094 d!1196020))

(declare-fun d!1196022 () Bool)

(declare-fun e!2504492 () Bool)

(assert (=> d!1196022 e!2504492))

(declare-fun res!1643612 () Bool)

(assert (=> d!1196022 (=> res!1643612 e!2504492)))

(declare-fun lt!1435966 () Bool)

(assert (=> d!1196022 (= res!1643612 (not lt!1435966))))

(declare-fun e!2504493 () Bool)

(assert (=> d!1196022 (= lt!1435966 e!2504493)))

(declare-fun res!1643610 () Bool)

(assert (=> d!1196022 (=> res!1643610 e!2504493)))

(assert (=> d!1196022 (= res!1643610 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196022 (= (isPrefix!4004 lt!1435816 lt!1435822) lt!1435966)))

(declare-fun b!4036259 () Bool)

(declare-fun e!2504491 () Bool)

(assert (=> b!4036259 (= e!2504493 e!2504491)))

(declare-fun res!1643611 () Bool)

(assert (=> b!4036259 (=> (not res!1643611) (not e!2504491))))

(assert (=> b!4036259 (= res!1643611 (not (is-Nil!43222 lt!1435822)))))

(declare-fun b!4036261 () Bool)

(declare-fun tail!6280 (List!43346) List!43346)

(assert (=> b!4036261 (= e!2504491 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435822)))))

(declare-fun b!4036260 () Bool)

(declare-fun res!1643609 () Bool)

(assert (=> b!4036260 (=> (not res!1643609) (not e!2504491))))

(declare-fun head!8548 (List!43346) C!23830)

(assert (=> b!4036260 (= res!1643609 (= (head!8548 lt!1435816) (head!8548 lt!1435822)))))

(declare-fun b!4036262 () Bool)

(assert (=> b!4036262 (= e!2504492 (>= (size!32308 lt!1435822) (size!32308 lt!1435816)))))

(assert (= (and d!1196022 (not res!1643610)) b!4036259))

(assert (= (and b!4036259 res!1643611) b!4036260))

(assert (= (and b!4036260 res!1643609) b!4036261))

(assert (= (and d!1196022 (not res!1643612)) b!4036262))

(declare-fun m!4630463 () Bool)

(assert (=> b!4036261 m!4630463))

(declare-fun m!4630465 () Bool)

(assert (=> b!4036261 m!4630465))

(assert (=> b!4036261 m!4630463))

(assert (=> b!4036261 m!4630465))

(declare-fun m!4630467 () Bool)

(assert (=> b!4036261 m!4630467))

(declare-fun m!4630469 () Bool)

(assert (=> b!4036260 m!4630469))

(declare-fun m!4630471 () Bool)

(assert (=> b!4036260 m!4630471))

(declare-fun m!4630473 () Bool)

(assert (=> b!4036262 m!4630473))

(assert (=> b!4036262 m!4630193))

(assert (=> b!4036093 d!1196022))

(declare-fun d!1196028 () Bool)

(assert (=> d!1196028 (= lt!1435798 suffixResult!105)))

(declare-fun lt!1435969 () Unit!62414)

(declare-fun choose!24442 (List!43346 List!43346 List!43346 List!43346 List!43346) Unit!62414)

(assert (=> d!1196028 (= lt!1435969 (choose!24442 lt!1435816 lt!1435798 lt!1435816 suffixResult!105 lt!1435831))))

(assert (=> d!1196028 (isPrefix!4004 lt!1435816 lt!1435831)))

(assert (=> d!1196028 (= (lemmaSamePrefixThenSameSuffix!2165 lt!1435816 lt!1435798 lt!1435816 suffixResult!105 lt!1435831) lt!1435969)))

(declare-fun bs!590550 () Bool)

(assert (= bs!590550 d!1196028))

(declare-fun m!4630475 () Bool)

(assert (=> bs!590550 m!4630475))

(assert (=> bs!590550 m!4630277))

(assert (=> b!4036093 d!1196028))

(declare-fun d!1196030 () Bool)

(declare-fun dynLambda!18328 (Int BalanceConc!25850) TokenValue!7147)

(assert (=> d!1196030 (= (apply!10106 (transformation!6917 (rule!9985 token!484)) (seqFromList!5134 lt!1435816)) (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 lt!1435816)))))

(declare-fun b_lambda!117769 () Bool)

(assert (=> (not b_lambda!117769) (not d!1196030)))

(declare-fun t!334598 () Bool)

(declare-fun tb!242485 () Bool)

(assert (=> (and b!4036083 (= (toValue!9449 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) t!334598) tb!242485))

(declare-fun result!293936 () Bool)

(assert (=> tb!242485 (= result!293936 (inv!21 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 lt!1435816))))))

(declare-fun m!4630477 () Bool)

(assert (=> tb!242485 m!4630477))

(assert (=> d!1196030 t!334598))

(declare-fun b_and!310187 () Bool)

(assert (= b_and!310167 (and (=> t!334598 result!293936) b_and!310187)))

(declare-fun tb!242487 () Bool)

(declare-fun t!334600 () Bool)

(assert (=> (and b!4036114 (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) t!334600) tb!242487))

(declare-fun result!293940 () Bool)

(assert (= result!293940 result!293936))

(assert (=> d!1196030 t!334600))

(declare-fun b_and!310189 () Bool)

(assert (= b_and!310171 (and (=> t!334600 result!293940) b_and!310189)))

(assert (=> d!1196030 m!4630279))

(declare-fun m!4630479 () Bool)

(assert (=> d!1196030 m!4630479))

(assert (=> b!4036093 d!1196030))

(declare-fun d!1196032 () Bool)

(declare-fun e!2504540 () Bool)

(assert (=> d!1196032 e!2504540))

(declare-fun res!1643665 () Bool)

(assert (=> d!1196032 (=> res!1643665 e!2504540)))

(declare-fun lt!1435997 () Option!9331)

(declare-fun isEmpty!25798 (Option!9331) Bool)

(assert (=> d!1196032 (= res!1643665 (isEmpty!25798 lt!1435997))))

(declare-fun e!2504542 () Option!9331)

(assert (=> d!1196032 (= lt!1435997 e!2504542)))

(declare-fun c!697131 () Bool)

(declare-datatypes ((tuple2!42308 0))(
  ( (tuple2!42309 (_1!24288 List!43346) (_2!24288 List!43346)) )
))
(declare-fun lt!1435998 () tuple2!42308)

(assert (=> d!1196032 (= c!697131 (isEmpty!25795 (_1!24288 lt!1435998)))))

(declare-fun findLongestMatch!1295 (Regex!11822 List!43346) tuple2!42308)

(assert (=> d!1196032 (= lt!1435998 (findLongestMatch!1295 (regex!6917 (rule!9985 token!484)) lt!1435831))))

(assert (=> d!1196032 (ruleValid!2847 thiss!21717 (rule!9985 token!484))))

(assert (=> d!1196032 (= (maxPrefixOneRule!2816 thiss!21717 (rule!9985 token!484) lt!1435831) lt!1435997)))

(declare-fun b!4036344 () Bool)

(declare-fun res!1643664 () Bool)

(declare-fun e!2504543 () Bool)

(assert (=> b!4036344 (=> (not res!1643664) (not e!2504543))))

(declare-fun get!14182 (Option!9331) tuple2!42304)

(assert (=> b!4036344 (= res!1643664 (= (rule!9985 (_1!24286 (get!14182 lt!1435997))) (rule!9985 token!484)))))

(declare-fun b!4036345 () Bool)

(assert (=> b!4036345 (= e!2504542 None!9330)))

(declare-fun b!4036346 () Bool)

(declare-fun e!2504541 () Bool)

(declare-fun findLongestMatchInner!1382 (Regex!11822 List!43346 Int List!43346 List!43346 Int) tuple2!42308)

(assert (=> b!4036346 (= e!2504541 (matchR!5775 (regex!6917 (rule!9985 token!484)) (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))

(declare-fun b!4036347 () Bool)

(declare-fun res!1643666 () Bool)

(assert (=> b!4036347 (=> (not res!1643666) (not e!2504543))))

(assert (=> b!4036347 (= res!1643666 (< (size!32308 (_2!24286 (get!14182 lt!1435997))) (size!32308 lt!1435831)))))

(declare-fun b!4036348 () Bool)

(declare-fun size!32311 (BalanceConc!25850) Int)

(assert (=> b!4036348 (= e!2504542 (Some!9330 (tuple2!42305 (Token!12973 (apply!10106 (transformation!6917 (rule!9985 token!484)) (seqFromList!5134 (_1!24288 lt!1435998))) (rule!9985 token!484) (size!32311 (seqFromList!5134 (_1!24288 lt!1435998))) (_1!24288 lt!1435998)) (_2!24288 lt!1435998))))))

(declare-fun lt!1435995 () Unit!62414)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1355 (Regex!11822 List!43346) Unit!62414)

(assert (=> b!4036348 (= lt!1435995 (longestMatchIsAcceptedByMatchOrIsEmpty!1355 (regex!6917 (rule!9985 token!484)) lt!1435831))))

(declare-fun res!1643670 () Bool)

(assert (=> b!4036348 (= res!1643670 (isEmpty!25795 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))

(assert (=> b!4036348 (=> res!1643670 e!2504541)))

(assert (=> b!4036348 e!2504541))

(declare-fun lt!1435994 () Unit!62414)

(assert (=> b!4036348 (= lt!1435994 lt!1435995)))

(declare-fun lt!1435996 () Unit!62414)

(declare-fun lemmaSemiInverse!1902 (TokenValueInjection!13722 BalanceConc!25850) Unit!62414)

(assert (=> b!4036348 (= lt!1435996 (lemmaSemiInverse!1902 (transformation!6917 (rule!9985 token!484)) (seqFromList!5134 (_1!24288 lt!1435998))))))

(declare-fun b!4036349 () Bool)

(declare-fun res!1643668 () Bool)

(assert (=> b!4036349 (=> (not res!1643668) (not e!2504543))))

(assert (=> b!4036349 (= res!1643668 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997)))) (_2!24286 (get!14182 lt!1435997))) lt!1435831))))

(declare-fun b!4036350 () Bool)

(assert (=> b!4036350 (= e!2504543 (= (size!32307 (_1!24286 (get!14182 lt!1435997))) (size!32308 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997))))))))

(declare-fun b!4036351 () Bool)

(assert (=> b!4036351 (= e!2504540 e!2504543)))

(declare-fun res!1643669 () Bool)

(assert (=> b!4036351 (=> (not res!1643669) (not e!2504543))))

(assert (=> b!4036351 (= res!1643669 (matchR!5775 (regex!6917 (rule!9985 token!484)) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))))))

(declare-fun b!4036352 () Bool)

(declare-fun res!1643667 () Bool)

(assert (=> b!4036352 (=> (not res!1643667) (not e!2504543))))

(assert (=> b!4036352 (= res!1643667 (= (value!217770 (_1!24286 (get!14182 lt!1435997))) (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997)))))))))

(assert (= (and d!1196032 c!697131) b!4036345))

(assert (= (and d!1196032 (not c!697131)) b!4036348))

(assert (= (and b!4036348 (not res!1643670)) b!4036346))

(assert (= (and d!1196032 (not res!1643665)) b!4036351))

(assert (= (and b!4036351 res!1643669) b!4036349))

(assert (= (and b!4036349 res!1643668) b!4036347))

(assert (= (and b!4036347 res!1643666) b!4036344))

(assert (= (and b!4036344 res!1643664) b!4036352))

(assert (= (and b!4036352 res!1643667) b!4036350))

(declare-fun m!4630513 () Bool)

(assert (=> b!4036349 m!4630513))

(declare-fun m!4630515 () Bool)

(assert (=> b!4036349 m!4630515))

(assert (=> b!4036349 m!4630515))

(declare-fun m!4630517 () Bool)

(assert (=> b!4036349 m!4630517))

(assert (=> b!4036349 m!4630517))

(declare-fun m!4630519 () Bool)

(assert (=> b!4036349 m!4630519))

(declare-fun m!4630521 () Bool)

(assert (=> b!4036346 m!4630521))

(declare-fun m!4630523 () Bool)

(assert (=> b!4036346 m!4630523))

(assert (=> b!4036346 m!4630521))

(assert (=> b!4036346 m!4630523))

(declare-fun m!4630525 () Bool)

(assert (=> b!4036346 m!4630525))

(declare-fun m!4630527 () Bool)

(assert (=> b!4036346 m!4630527))

(assert (=> b!4036344 m!4630513))

(declare-fun m!4630529 () Bool)

(assert (=> b!4036348 m!4630529))

(declare-fun m!4630531 () Bool)

(assert (=> b!4036348 m!4630531))

(declare-fun m!4630533 () Bool)

(assert (=> b!4036348 m!4630533))

(declare-fun m!4630535 () Bool)

(assert (=> b!4036348 m!4630535))

(assert (=> b!4036348 m!4630521))

(assert (=> b!4036348 m!4630523))

(assert (=> b!4036348 m!4630525))

(assert (=> b!4036348 m!4630531))

(declare-fun m!4630537 () Bool)

(assert (=> b!4036348 m!4630537))

(assert (=> b!4036348 m!4630521))

(assert (=> b!4036348 m!4630523))

(assert (=> b!4036348 m!4630531))

(declare-fun m!4630539 () Bool)

(assert (=> b!4036348 m!4630539))

(assert (=> b!4036348 m!4630531))

(assert (=> b!4036351 m!4630513))

(assert (=> b!4036351 m!4630515))

(assert (=> b!4036351 m!4630515))

(assert (=> b!4036351 m!4630517))

(assert (=> b!4036351 m!4630517))

(declare-fun m!4630541 () Bool)

(assert (=> b!4036351 m!4630541))

(assert (=> b!4036352 m!4630513))

(declare-fun m!4630543 () Bool)

(assert (=> b!4036352 m!4630543))

(assert (=> b!4036352 m!4630543))

(declare-fun m!4630545 () Bool)

(assert (=> b!4036352 m!4630545))

(declare-fun m!4630547 () Bool)

(assert (=> d!1196032 m!4630547))

(declare-fun m!4630549 () Bool)

(assert (=> d!1196032 m!4630549))

(declare-fun m!4630551 () Bool)

(assert (=> d!1196032 m!4630551))

(assert (=> d!1196032 m!4630213))

(assert (=> b!4036347 m!4630513))

(declare-fun m!4630553 () Bool)

(assert (=> b!4036347 m!4630553))

(assert (=> b!4036347 m!4630523))

(assert (=> b!4036350 m!4630513))

(declare-fun m!4630555 () Bool)

(assert (=> b!4036350 m!4630555))

(assert (=> b!4036093 d!1196032))

(declare-fun d!1196044 () Bool)

(assert (=> d!1196044 (isPrefix!4004 lt!1435816 (++!11319 lt!1435816 lt!1435798))))

(declare-fun lt!1436001 () Unit!62414)

(declare-fun choose!24443 (List!43346 List!43346) Unit!62414)

(assert (=> d!1196044 (= lt!1436001 (choose!24443 lt!1435816 lt!1435798))))

(assert (=> d!1196044 (= (lemmaConcatTwoListThenFirstIsPrefix!2839 lt!1435816 lt!1435798) lt!1436001)))

(declare-fun bs!590552 () Bool)

(assert (= bs!590552 d!1196044))

(assert (=> bs!590552 m!4630161))

(assert (=> bs!590552 m!4630161))

(declare-fun m!4630557 () Bool)

(assert (=> bs!590552 m!4630557))

(declare-fun m!4630559 () Bool)

(assert (=> bs!590552 m!4630559))

(assert (=> b!4036093 d!1196044))

(declare-fun d!1196046 () Bool)

(declare-fun fromListB!2339 (List!43346) BalanceConc!25850)

(assert (=> d!1196046 (= (seqFromList!5134 lt!1435816) (fromListB!2339 lt!1435816))))

(declare-fun bs!590553 () Bool)

(assert (= bs!590553 d!1196046))

(declare-fun m!4630561 () Bool)

(assert (=> bs!590553 m!4630561))

(assert (=> b!4036093 d!1196046))

(declare-fun d!1196048 () Bool)

(assert (=> d!1196048 (= (maxPrefixOneRule!2816 thiss!21717 (rule!9985 token!484) lt!1435831) (Some!9330 (tuple2!42305 (Token!12973 (apply!10106 (transformation!6917 (rule!9985 token!484)) (seqFromList!5134 lt!1435816)) (rule!9985 token!484) (size!32308 lt!1435816) lt!1435816) suffixResult!105)))))

(declare-fun lt!1436008 () Unit!62414)

(declare-fun choose!24444 (LexerInterface!6506 List!43348 List!43346 List!43346 List!43346 Rule!13634) Unit!62414)

(assert (=> d!1196048 (= lt!1436008 (choose!24444 thiss!21717 rules!2999 lt!1435816 lt!1435831 suffixResult!105 (rule!9985 token!484)))))

(assert (=> d!1196048 (not (isEmpty!25794 rules!2999))))

(assert (=> d!1196048 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1622 thiss!21717 rules!2999 lt!1435816 lt!1435831 suffixResult!105 (rule!9985 token!484)) lt!1436008)))

(declare-fun bs!590554 () Bool)

(assert (= bs!590554 d!1196048))

(assert (=> bs!590554 m!4630193))

(assert (=> bs!590554 m!4630279))

(assert (=> bs!590554 m!4630281))

(assert (=> bs!590554 m!4630239))

(assert (=> bs!590554 m!4630285))

(assert (=> bs!590554 m!4630279))

(declare-fun m!4630583 () Bool)

(assert (=> bs!590554 m!4630583))

(assert (=> b!4036093 d!1196048))

(declare-fun d!1196054 () Bool)

(assert (=> d!1196054 (= (inv!57750 (tag!7777 (rule!9985 token!484))) (= (mod (str.len (value!217769 (tag!7777 (rule!9985 token!484)))) 2) 0))))

(assert (=> b!4036091 d!1196054))

(declare-fun d!1196058 () Bool)

(declare-fun res!1643687 () Bool)

(declare-fun e!2504558 () Bool)

(assert (=> d!1196058 (=> (not res!1643687) (not e!2504558))))

(assert (=> d!1196058 (= res!1643687 (semiInverseModEq!2953 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))))))

(assert (=> d!1196058 (= (inv!57753 (transformation!6917 (rule!9985 token!484))) e!2504558)))

(declare-fun b!4036377 () Bool)

(assert (=> b!4036377 (= e!2504558 (equivClasses!2852 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))))))

(assert (= (and d!1196058 res!1643687) b!4036377))

(assert (=> d!1196058 m!4630447))

(assert (=> b!4036377 m!4630449))

(assert (=> b!4036091 d!1196058))

(declare-fun d!1196064 () Bool)

(declare-fun lt!1436012 () Int)

(assert (=> d!1196064 (>= lt!1436012 0)))

(declare-fun e!2504559 () Int)

(assert (=> d!1196064 (= lt!1436012 e!2504559)))

(declare-fun c!697136 () Bool)

(assert (=> d!1196064 (= c!697136 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196064 (= (size!32308 lt!1435816) lt!1436012)))

(declare-fun b!4036378 () Bool)

(assert (=> b!4036378 (= e!2504559 0)))

(declare-fun b!4036379 () Bool)

(assert (=> b!4036379 (= e!2504559 (+ 1 (size!32308 (t!334587 lt!1435816))))))

(assert (= (and d!1196064 c!697136) b!4036378))

(assert (= (and d!1196064 (not c!697136)) b!4036379))

(declare-fun m!4630603 () Bool)

(assert (=> b!4036379 m!4630603))

(assert (=> b!4036113 d!1196064))

(declare-fun d!1196066 () Bool)

(declare-fun lt!1436013 () Int)

(assert (=> d!1196066 (>= lt!1436013 0)))

(declare-fun e!2504560 () Int)

(assert (=> d!1196066 (= lt!1436013 e!2504560)))

(declare-fun c!697137 () Bool)

(assert (=> d!1196066 (= c!697137 (is-Nil!43222 prefix!494))))

(assert (=> d!1196066 (= (size!32308 prefix!494) lt!1436013)))

(declare-fun b!4036380 () Bool)

(assert (=> b!4036380 (= e!2504560 0)))

(declare-fun b!4036381 () Bool)

(assert (=> b!4036381 (= e!2504560 (+ 1 (size!32308 (t!334587 prefix!494))))))

(assert (= (and d!1196066 c!697137) b!4036380))

(assert (= (and d!1196066 (not c!697137)) b!4036381))

(declare-fun m!4630605 () Bool)

(assert (=> b!4036381 m!4630605))

(assert (=> b!4036113 d!1196066))

(declare-fun d!1196068 () Bool)

(declare-fun list!16089 (Conc!13128) List!43346)

(assert (=> d!1196068 (= (list!16087 (charsOf!4733 token!484)) (list!16089 (c!697105 (charsOf!4733 token!484))))))

(declare-fun bs!590557 () Bool)

(assert (= bs!590557 d!1196068))

(declare-fun m!4630607 () Bool)

(assert (=> bs!590557 m!4630607))

(assert (=> b!4036113 d!1196068))

(declare-fun d!1196070 () Bool)

(declare-fun lt!1436016 () BalanceConc!25850)

(assert (=> d!1196070 (= (list!16087 lt!1436016) (originalCharacters!7517 token!484))))

(assert (=> d!1196070 (= lt!1436016 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))))

(assert (=> d!1196070 (= (charsOf!4733 token!484) lt!1436016)))

(declare-fun b_lambda!117771 () Bool)

(assert (=> (not b_lambda!117771) (not d!1196070)))

(assert (=> d!1196070 t!334594))

(declare-fun b_and!310191 () Bool)

(assert (= b_and!310183 (and (=> t!334594 result!293930) b_and!310191)))

(assert (=> d!1196070 t!334596))

(declare-fun b_and!310193 () Bool)

(assert (= b_and!310185 (and (=> t!334596 result!293934) b_and!310193)))

(declare-fun m!4630609 () Bool)

(assert (=> d!1196070 m!4630609))

(assert (=> d!1196070 m!4630431))

(assert (=> b!4036113 d!1196070))

(declare-fun b!4036431 () Bool)

(declare-fun e!2504587 () Option!9331)

(declare-fun lt!1436046 () Option!9331)

(declare-fun lt!1436044 () Option!9331)

(assert (=> b!4036431 (= e!2504587 (ite (and (is-None!9330 lt!1436046) (is-None!9330 lt!1436044)) None!9330 (ite (is-None!9330 lt!1436044) lt!1436046 (ite (is-None!9330 lt!1436046) lt!1436044 (ite (>= (size!32307 (_1!24286 (v!39726 lt!1436046))) (size!32307 (_1!24286 (v!39726 lt!1436044)))) lt!1436046 lt!1436044)))))))

(declare-fun call!287136 () Option!9331)

(assert (=> b!4036431 (= lt!1436046 call!287136)))

(assert (=> b!4036431 (= lt!1436044 (maxPrefix!3804 thiss!21717 (t!334589 rules!2999) lt!1435829))))

(declare-fun b!4036433 () Bool)

(declare-fun res!1643731 () Bool)

(declare-fun e!2504589 () Bool)

(assert (=> b!4036433 (=> (not res!1643731) (not e!2504589))))

(declare-fun lt!1436043 () Option!9331)

(assert (=> b!4036433 (= res!1643731 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043)))) (_2!24286 (get!14182 lt!1436043))) lt!1435829))))

(declare-fun b!4036434 () Bool)

(declare-fun e!2504588 () Bool)

(assert (=> b!4036434 (= e!2504588 e!2504589)))

(declare-fun res!1643727 () Bool)

(assert (=> b!4036434 (=> (not res!1643727) (not e!2504589))))

(declare-fun isDefined!7099 (Option!9331) Bool)

(assert (=> b!4036434 (= res!1643727 (isDefined!7099 lt!1436043))))

(declare-fun bm!287131 () Bool)

(assert (=> bm!287131 (= call!287136 (maxPrefixOneRule!2816 thiss!21717 (h!48644 rules!2999) lt!1435829))))

(declare-fun b!4036435 () Bool)

(declare-fun res!1643728 () Bool)

(assert (=> b!4036435 (=> (not res!1643728) (not e!2504589))))

(assert (=> b!4036435 (= res!1643728 (= (value!217770 (_1!24286 (get!14182 lt!1436043))) (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436043)))))))))

(declare-fun b!4036436 () Bool)

(declare-fun res!1643730 () Bool)

(assert (=> b!4036436 (=> (not res!1643730) (not e!2504589))))

(assert (=> b!4036436 (= res!1643730 (< (size!32308 (_2!24286 (get!14182 lt!1436043))) (size!32308 lt!1435829)))))

(declare-fun b!4036437 () Bool)

(assert (=> b!4036437 (= e!2504589 (contains!8583 rules!2999 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))))

(declare-fun b!4036438 () Bool)

(assert (=> b!4036438 (= e!2504587 call!287136)))

(declare-fun b!4036439 () Bool)

(declare-fun res!1643725 () Bool)

(assert (=> b!4036439 (=> (not res!1643725) (not e!2504589))))

(assert (=> b!4036439 (= res!1643725 (= (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043)))) (originalCharacters!7517 (_1!24286 (get!14182 lt!1436043)))))))

(declare-fun b!4036432 () Bool)

(declare-fun res!1643726 () Bool)

(assert (=> b!4036432 (=> (not res!1643726) (not e!2504589))))

(assert (=> b!4036432 (= res!1643726 (matchR!5775 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))))))

(declare-fun d!1196072 () Bool)

(assert (=> d!1196072 e!2504588))

(declare-fun res!1643729 () Bool)

(assert (=> d!1196072 (=> res!1643729 e!2504588)))

(assert (=> d!1196072 (= res!1643729 (isEmpty!25798 lt!1436043))))

(assert (=> d!1196072 (= lt!1436043 e!2504587)))

(declare-fun c!697144 () Bool)

(assert (=> d!1196072 (= c!697144 (and (is-Cons!43224 rules!2999) (is-Nil!43224 (t!334589 rules!2999))))))

(declare-fun lt!1436042 () Unit!62414)

(declare-fun lt!1436045 () Unit!62414)

(assert (=> d!1196072 (= lt!1436042 lt!1436045)))

(assert (=> d!1196072 (isPrefix!4004 lt!1435829 lt!1435829)))

(assert (=> d!1196072 (= lt!1436045 (lemmaIsPrefixRefl!2571 lt!1435829 lt!1435829))))

(declare-fun rulesValidInductive!2520 (LexerInterface!6506 List!43348) Bool)

(assert (=> d!1196072 (rulesValidInductive!2520 thiss!21717 rules!2999)))

(assert (=> d!1196072 (= (maxPrefix!3804 thiss!21717 rules!2999 lt!1435829) lt!1436043)))

(assert (= (and d!1196072 c!697144) b!4036438))

(assert (= (and d!1196072 (not c!697144)) b!4036431))

(assert (= (or b!4036438 b!4036431) bm!287131))

(assert (= (and d!1196072 (not res!1643729)) b!4036434))

(assert (= (and b!4036434 res!1643727) b!4036439))

(assert (= (and b!4036439 res!1643725) b!4036436))

(assert (= (and b!4036436 res!1643730) b!4036433))

(assert (= (and b!4036433 res!1643731) b!4036435))

(assert (= (and b!4036435 res!1643728) b!4036432))

(assert (= (and b!4036432 res!1643726) b!4036437))

(declare-fun m!4630665 () Bool)

(assert (=> b!4036439 m!4630665))

(declare-fun m!4630667 () Bool)

(assert (=> b!4036439 m!4630667))

(assert (=> b!4036439 m!4630667))

(declare-fun m!4630669 () Bool)

(assert (=> b!4036439 m!4630669))

(assert (=> b!4036435 m!4630665))

(declare-fun m!4630671 () Bool)

(assert (=> b!4036435 m!4630671))

(assert (=> b!4036435 m!4630671))

(declare-fun m!4630673 () Bool)

(assert (=> b!4036435 m!4630673))

(assert (=> b!4036437 m!4630665))

(declare-fun m!4630675 () Bool)

(assert (=> b!4036437 m!4630675))

(assert (=> b!4036436 m!4630665))

(declare-fun m!4630677 () Bool)

(assert (=> b!4036436 m!4630677))

(declare-fun m!4630679 () Bool)

(assert (=> b!4036436 m!4630679))

(declare-fun m!4630681 () Bool)

(assert (=> bm!287131 m!4630681))

(declare-fun m!4630683 () Bool)

(assert (=> b!4036431 m!4630683))

(declare-fun m!4630685 () Bool)

(assert (=> b!4036434 m!4630685))

(declare-fun m!4630687 () Bool)

(assert (=> d!1196072 m!4630687))

(declare-fun m!4630689 () Bool)

(assert (=> d!1196072 m!4630689))

(declare-fun m!4630691 () Bool)

(assert (=> d!1196072 m!4630691))

(declare-fun m!4630693 () Bool)

(assert (=> d!1196072 m!4630693))

(assert (=> b!4036433 m!4630665))

(assert (=> b!4036433 m!4630667))

(assert (=> b!4036433 m!4630667))

(assert (=> b!4036433 m!4630669))

(assert (=> b!4036433 m!4630669))

(declare-fun m!4630695 () Bool)

(assert (=> b!4036433 m!4630695))

(assert (=> b!4036432 m!4630665))

(assert (=> b!4036432 m!4630667))

(assert (=> b!4036432 m!4630667))

(assert (=> b!4036432 m!4630669))

(assert (=> b!4036432 m!4630669))

(declare-fun m!4630697 () Bool)

(assert (=> b!4036432 m!4630697))

(assert (=> b!4036101 d!1196072))

(declare-fun d!1196096 () Bool)

(assert (=> d!1196096 (= suffixResult!105 lt!1435801)))

(declare-fun lt!1436047 () Unit!62414)

(assert (=> d!1196096 (= lt!1436047 (choose!24442 lt!1435816 suffixResult!105 lt!1435816 lt!1435801 lt!1435831))))

(assert (=> d!1196096 (isPrefix!4004 lt!1435816 lt!1435831)))

(assert (=> d!1196096 (= (lemmaSamePrefixThenSameSuffix!2165 lt!1435816 suffixResult!105 lt!1435816 lt!1435801 lt!1435831) lt!1436047)))

(declare-fun bs!590562 () Bool)

(assert (= bs!590562 d!1196096))

(declare-fun m!4630699 () Bool)

(assert (=> bs!590562 m!4630699))

(assert (=> bs!590562 m!4630277))

(assert (=> b!4036101 d!1196096))

(declare-fun d!1196098 () Bool)

(declare-fun e!2504591 () Bool)

(assert (=> d!1196098 e!2504591))

(declare-fun res!1643735 () Bool)

(assert (=> d!1196098 (=> res!1643735 e!2504591)))

(declare-fun lt!1436048 () Bool)

(assert (=> d!1196098 (= res!1643735 (not lt!1436048))))

(declare-fun e!2504592 () Bool)

(assert (=> d!1196098 (= lt!1436048 e!2504592)))

(declare-fun res!1643733 () Bool)

(assert (=> d!1196098 (=> res!1643733 e!2504592)))

(assert (=> d!1196098 (= res!1643733 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196098 (= (isPrefix!4004 lt!1435816 lt!1435817) lt!1436048)))

(declare-fun b!4036440 () Bool)

(declare-fun e!2504590 () Bool)

(assert (=> b!4036440 (= e!2504592 e!2504590)))

(declare-fun res!1643734 () Bool)

(assert (=> b!4036440 (=> (not res!1643734) (not e!2504590))))

(assert (=> b!4036440 (= res!1643734 (not (is-Nil!43222 lt!1435817)))))

(declare-fun b!4036442 () Bool)

(assert (=> b!4036442 (= e!2504590 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435817)))))

(declare-fun b!4036441 () Bool)

(declare-fun res!1643732 () Bool)

(assert (=> b!4036441 (=> (not res!1643732) (not e!2504590))))

(assert (=> b!4036441 (= res!1643732 (= (head!8548 lt!1435816) (head!8548 lt!1435817)))))

(declare-fun b!4036443 () Bool)

(assert (=> b!4036443 (= e!2504591 (>= (size!32308 lt!1435817) (size!32308 lt!1435816)))))

(assert (= (and d!1196098 (not res!1643733)) b!4036440))

(assert (= (and b!4036440 res!1643734) b!4036441))

(assert (= (and b!4036441 res!1643732) b!4036442))

(assert (= (and d!1196098 (not res!1643735)) b!4036443))

(assert (=> b!4036442 m!4630463))

(declare-fun m!4630701 () Bool)

(assert (=> b!4036442 m!4630701))

(assert (=> b!4036442 m!4630463))

(assert (=> b!4036442 m!4630701))

(declare-fun m!4630703 () Bool)

(assert (=> b!4036442 m!4630703))

(assert (=> b!4036441 m!4630469))

(declare-fun m!4630705 () Bool)

(assert (=> b!4036441 m!4630705))

(declare-fun m!4630707 () Bool)

(assert (=> b!4036443 m!4630707))

(assert (=> b!4036443 m!4630193))

(assert (=> b!4036101 d!1196098))

(declare-fun d!1196100 () Bool)

(assert (=> d!1196100 (isPrefix!4004 lt!1435816 (++!11319 lt!1435816 lt!1435801))))

(declare-fun lt!1436049 () Unit!62414)

(assert (=> d!1196100 (= lt!1436049 (choose!24443 lt!1435816 lt!1435801))))

(assert (=> d!1196100 (= (lemmaConcatTwoListThenFirstIsPrefix!2839 lt!1435816 lt!1435801) lt!1436049)))

(declare-fun bs!590563 () Bool)

(assert (= bs!590563 d!1196100))

(assert (=> bs!590563 m!4630173))

(assert (=> bs!590563 m!4630173))

(declare-fun m!4630709 () Bool)

(assert (=> bs!590563 m!4630709))

(declare-fun m!4630711 () Bool)

(assert (=> bs!590563 m!4630711))

(assert (=> b!4036101 d!1196100))

(declare-fun d!1196102 () Bool)

(assert (=> d!1196102 (= (inv!57750 (tag!7777 (h!48644 rules!2999))) (= (mod (str.len (value!217769 (tag!7777 (h!48644 rules!2999)))) 2) 0))))

(assert (=> b!4036099 d!1196102))

(declare-fun d!1196104 () Bool)

(declare-fun res!1643736 () Bool)

(declare-fun e!2504593 () Bool)

(assert (=> d!1196104 (=> (not res!1643736) (not e!2504593))))

(assert (=> d!1196104 (= res!1643736 (semiInverseModEq!2953 (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (h!48644 rules!2999)))))))

(assert (=> d!1196104 (= (inv!57753 (transformation!6917 (h!48644 rules!2999))) e!2504593)))

(declare-fun b!4036444 () Bool)

(assert (=> b!4036444 (= e!2504593 (equivClasses!2852 (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (h!48644 rules!2999)))))))

(assert (= (and d!1196104 res!1643736) b!4036444))

(declare-fun m!4630713 () Bool)

(assert (=> d!1196104 m!4630713))

(declare-fun m!4630715 () Bool)

(assert (=> b!4036444 m!4630715))

(assert (=> b!4036099 d!1196104))

(declare-fun d!1196106 () Bool)

(declare-fun e!2504595 () Bool)

(assert (=> d!1196106 e!2504595))

(declare-fun res!1643740 () Bool)

(assert (=> d!1196106 (=> res!1643740 e!2504595)))

(declare-fun lt!1436050 () Bool)

(assert (=> d!1196106 (= res!1643740 (not lt!1436050))))

(declare-fun e!2504596 () Bool)

(assert (=> d!1196106 (= lt!1436050 e!2504596)))

(declare-fun res!1643738 () Bool)

(assert (=> d!1196106 (=> res!1643738 e!2504596)))

(assert (=> d!1196106 (= res!1643738 (is-Nil!43222 prefix!494))))

(assert (=> d!1196106 (= (isPrefix!4004 prefix!494 lt!1435831) lt!1436050)))

(declare-fun b!4036445 () Bool)

(declare-fun e!2504594 () Bool)

(assert (=> b!4036445 (= e!2504596 e!2504594)))

(declare-fun res!1643739 () Bool)

(assert (=> b!4036445 (=> (not res!1643739) (not e!2504594))))

(assert (=> b!4036445 (= res!1643739 (not (is-Nil!43222 lt!1435831)))))

(declare-fun b!4036447 () Bool)

(assert (=> b!4036447 (= e!2504594 (isPrefix!4004 (tail!6280 prefix!494) (tail!6280 lt!1435831)))))

(declare-fun b!4036446 () Bool)

(declare-fun res!1643737 () Bool)

(assert (=> b!4036446 (=> (not res!1643737) (not e!2504594))))

(assert (=> b!4036446 (= res!1643737 (= (head!8548 prefix!494) (head!8548 lt!1435831)))))

(declare-fun b!4036448 () Bool)

(assert (=> b!4036448 (= e!2504595 (>= (size!32308 lt!1435831) (size!32308 prefix!494)))))

(assert (= (and d!1196106 (not res!1643738)) b!4036445))

(assert (= (and b!4036445 res!1643739) b!4036446))

(assert (= (and b!4036446 res!1643737) b!4036447))

(assert (= (and d!1196106 (not res!1643740)) b!4036448))

(declare-fun m!4630717 () Bool)

(assert (=> b!4036447 m!4630717))

(declare-fun m!4630719 () Bool)

(assert (=> b!4036447 m!4630719))

(assert (=> b!4036447 m!4630717))

(assert (=> b!4036447 m!4630719))

(declare-fun m!4630721 () Bool)

(assert (=> b!4036447 m!4630721))

(declare-fun m!4630723 () Bool)

(assert (=> b!4036446 m!4630723))

(declare-fun m!4630725 () Bool)

(assert (=> b!4036446 m!4630725))

(assert (=> b!4036448 m!4630523))

(assert (=> b!4036448 m!4630195))

(assert (=> b!4036100 d!1196106))

(declare-fun d!1196108 () Bool)

(assert (=> d!1196108 (isPrefix!4004 lt!1435816 (++!11319 lt!1435816 suffixResult!105))))

(declare-fun lt!1436051 () Unit!62414)

(assert (=> d!1196108 (= lt!1436051 (choose!24443 lt!1435816 suffixResult!105))))

(assert (=> d!1196108 (= (lemmaConcatTwoListThenFirstIsPrefix!2839 lt!1435816 suffixResult!105) lt!1436051)))

(declare-fun bs!590564 () Bool)

(assert (= bs!590564 d!1196108))

(assert (=> bs!590564 m!4630209))

(assert (=> bs!590564 m!4630209))

(declare-fun m!4630727 () Bool)

(assert (=> bs!590564 m!4630727))

(declare-fun m!4630729 () Bool)

(assert (=> bs!590564 m!4630729))

(assert (=> b!4036100 d!1196108))

(declare-fun d!1196110 () Bool)

(assert (=> d!1196110 (isPrefix!4004 prefix!494 (++!11319 prefix!494 suffix!1299))))

(declare-fun lt!1436052 () Unit!62414)

(assert (=> d!1196110 (= lt!1436052 (choose!24443 prefix!494 suffix!1299))))

(assert (=> d!1196110 (= (lemmaConcatTwoListThenFirstIsPrefix!2839 prefix!494 suffix!1299) lt!1436052)))

(declare-fun bs!590565 () Bool)

(assert (= bs!590565 d!1196110))

(assert (=> bs!590565 m!4630267))

(assert (=> bs!590565 m!4630267))

(declare-fun m!4630731 () Bool)

(assert (=> bs!590565 m!4630731))

(declare-fun m!4630733 () Bool)

(assert (=> bs!590565 m!4630733))

(assert (=> b!4036100 d!1196110))

(declare-fun d!1196112 () Bool)

(declare-fun e!2504598 () Bool)

(assert (=> d!1196112 e!2504598))

(declare-fun res!1643744 () Bool)

(assert (=> d!1196112 (=> res!1643744 e!2504598)))

(declare-fun lt!1436053 () Bool)

(assert (=> d!1196112 (= res!1643744 (not lt!1436053))))

(declare-fun e!2504599 () Bool)

(assert (=> d!1196112 (= lt!1436053 e!2504599)))

(declare-fun res!1643742 () Bool)

(assert (=> d!1196112 (=> res!1643742 e!2504599)))

(assert (=> d!1196112 (= res!1643742 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196112 (= (isPrefix!4004 lt!1435816 lt!1435831) lt!1436053)))

(declare-fun b!4036449 () Bool)

(declare-fun e!2504597 () Bool)

(assert (=> b!4036449 (= e!2504599 e!2504597)))

(declare-fun res!1643743 () Bool)

(assert (=> b!4036449 (=> (not res!1643743) (not e!2504597))))

(assert (=> b!4036449 (= res!1643743 (not (is-Nil!43222 lt!1435831)))))

(declare-fun b!4036451 () Bool)

(assert (=> b!4036451 (= e!2504597 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435831)))))

(declare-fun b!4036450 () Bool)

(declare-fun res!1643741 () Bool)

(assert (=> b!4036450 (=> (not res!1643741) (not e!2504597))))

(assert (=> b!4036450 (= res!1643741 (= (head!8548 lt!1435816) (head!8548 lt!1435831)))))

(declare-fun b!4036452 () Bool)

(assert (=> b!4036452 (= e!2504598 (>= (size!32308 lt!1435831) (size!32308 lt!1435816)))))

(assert (= (and d!1196112 (not res!1643742)) b!4036449))

(assert (= (and b!4036449 res!1643743) b!4036450))

(assert (= (and b!4036450 res!1643741) b!4036451))

(assert (= (and d!1196112 (not res!1643744)) b!4036452))

(assert (=> b!4036451 m!4630463))

(assert (=> b!4036451 m!4630719))

(assert (=> b!4036451 m!4630463))

(assert (=> b!4036451 m!4630719))

(declare-fun m!4630735 () Bool)

(assert (=> b!4036451 m!4630735))

(assert (=> b!4036450 m!4630469))

(assert (=> b!4036450 m!4630725))

(assert (=> b!4036452 m!4630523))

(assert (=> b!4036452 m!4630193))

(assert (=> b!4036100 d!1196112))

(declare-fun d!1196114 () Bool)

(declare-fun e!2504601 () Bool)

(assert (=> d!1196114 e!2504601))

(declare-fun res!1643748 () Bool)

(assert (=> d!1196114 (=> res!1643748 e!2504601)))

(declare-fun lt!1436054 () Bool)

(assert (=> d!1196114 (= res!1643748 (not lt!1436054))))

(declare-fun e!2504602 () Bool)

(assert (=> d!1196114 (= lt!1436054 e!2504602)))

(declare-fun res!1643746 () Bool)

(assert (=> d!1196114 (=> res!1643746 e!2504602)))

(assert (=> d!1196114 (= res!1643746 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196114 (= (isPrefix!4004 lt!1435816 lt!1435806) lt!1436054)))

(declare-fun b!4036453 () Bool)

(declare-fun e!2504600 () Bool)

(assert (=> b!4036453 (= e!2504602 e!2504600)))

(declare-fun res!1643747 () Bool)

(assert (=> b!4036453 (=> (not res!1643747) (not e!2504600))))

(assert (=> b!4036453 (= res!1643747 (not (is-Nil!43222 lt!1435806)))))

(declare-fun b!4036455 () Bool)

(assert (=> b!4036455 (= e!2504600 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435806)))))

(declare-fun b!4036454 () Bool)

(declare-fun res!1643745 () Bool)

(assert (=> b!4036454 (=> (not res!1643745) (not e!2504600))))

(assert (=> b!4036454 (= res!1643745 (= (head!8548 lt!1435816) (head!8548 lt!1435806)))))

(declare-fun b!4036456 () Bool)

(assert (=> b!4036456 (= e!2504601 (>= (size!32308 lt!1435806) (size!32308 lt!1435816)))))

(assert (= (and d!1196114 (not res!1643746)) b!4036453))

(assert (= (and b!4036453 res!1643747) b!4036454))

(assert (= (and b!4036454 res!1643745) b!4036455))

(assert (= (and d!1196114 (not res!1643748)) b!4036456))

(assert (=> b!4036455 m!4630463))

(declare-fun m!4630737 () Bool)

(assert (=> b!4036455 m!4630737))

(assert (=> b!4036455 m!4630463))

(assert (=> b!4036455 m!4630737))

(declare-fun m!4630739 () Bool)

(assert (=> b!4036455 m!4630739))

(assert (=> b!4036454 m!4630469))

(declare-fun m!4630741 () Bool)

(assert (=> b!4036454 m!4630741))

(declare-fun m!4630743 () Bool)

(assert (=> b!4036456 m!4630743))

(assert (=> b!4036456 m!4630193))

(assert (=> b!4036100 d!1196114))

(declare-fun b!4036460 () Bool)

(declare-fun lt!1436055 () List!43346)

(declare-fun e!2504603 () Bool)

(assert (=> b!4036460 (= e!2504603 (or (not (= lt!1435798 Nil!43222)) (= lt!1436055 lt!1435816)))))

(declare-fun b!4036459 () Bool)

(declare-fun res!1643750 () Bool)

(assert (=> b!4036459 (=> (not res!1643750) (not e!2504603))))

(assert (=> b!4036459 (= res!1643750 (= (size!32308 lt!1436055) (+ (size!32308 lt!1435816) (size!32308 lt!1435798))))))

(declare-fun b!4036458 () Bool)

(declare-fun e!2504604 () List!43346)

(assert (=> b!4036458 (= e!2504604 (Cons!43222 (h!48642 lt!1435816) (++!11319 (t!334587 lt!1435816) lt!1435798)))))

(declare-fun b!4036457 () Bool)

(assert (=> b!4036457 (= e!2504604 lt!1435798)))

(declare-fun d!1196116 () Bool)

(assert (=> d!1196116 e!2504603))

(declare-fun res!1643749 () Bool)

(assert (=> d!1196116 (=> (not res!1643749) (not e!2504603))))

(assert (=> d!1196116 (= res!1643749 (= (content!6568 lt!1436055) (set.union (content!6568 lt!1435816) (content!6568 lt!1435798))))))

(assert (=> d!1196116 (= lt!1436055 e!2504604)))

(declare-fun c!697145 () Bool)

(assert (=> d!1196116 (= c!697145 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196116 (= (++!11319 lt!1435816 lt!1435798) lt!1436055)))

(assert (= (and d!1196116 c!697145) b!4036457))

(assert (= (and d!1196116 (not c!697145)) b!4036458))

(assert (= (and d!1196116 res!1643749) b!4036459))

(assert (= (and b!4036459 res!1643750) b!4036460))

(declare-fun m!4630745 () Bool)

(assert (=> b!4036459 m!4630745))

(assert (=> b!4036459 m!4630193))

(declare-fun m!4630747 () Bool)

(assert (=> b!4036459 m!4630747))

(declare-fun m!4630749 () Bool)

(assert (=> b!4036458 m!4630749))

(declare-fun m!4630751 () Bool)

(assert (=> d!1196116 m!4630751))

(assert (=> d!1196116 m!4630443))

(declare-fun m!4630753 () Bool)

(assert (=> d!1196116 m!4630753))

(assert (=> b!4036098 d!1196116))

(declare-fun lt!1436056 () List!43346)

(declare-fun e!2504605 () Bool)

(declare-fun b!4036464 () Bool)

(assert (=> b!4036464 (= e!2504605 (or (not (= suffix!1299 Nil!43222)) (= lt!1436056 lt!1435819)))))

(declare-fun b!4036463 () Bool)

(declare-fun res!1643752 () Bool)

(assert (=> b!4036463 (=> (not res!1643752) (not e!2504605))))

(assert (=> b!4036463 (= res!1643752 (= (size!32308 lt!1436056) (+ (size!32308 lt!1435819) (size!32308 suffix!1299))))))

(declare-fun b!4036462 () Bool)

(declare-fun e!2504606 () List!43346)

(assert (=> b!4036462 (= e!2504606 (Cons!43222 (h!48642 lt!1435819) (++!11319 (t!334587 lt!1435819) suffix!1299)))))

(declare-fun b!4036461 () Bool)

(assert (=> b!4036461 (= e!2504606 suffix!1299)))

(declare-fun d!1196118 () Bool)

(assert (=> d!1196118 e!2504605))

(declare-fun res!1643751 () Bool)

(assert (=> d!1196118 (=> (not res!1643751) (not e!2504605))))

(assert (=> d!1196118 (= res!1643751 (= (content!6568 lt!1436056) (set.union (content!6568 lt!1435819) (content!6568 suffix!1299))))))

(assert (=> d!1196118 (= lt!1436056 e!2504606)))

(declare-fun c!697146 () Bool)

(assert (=> d!1196118 (= c!697146 (is-Nil!43222 lt!1435819))))

(assert (=> d!1196118 (= (++!11319 lt!1435819 suffix!1299) lt!1436056)))

(assert (= (and d!1196118 c!697146) b!4036461))

(assert (= (and d!1196118 (not c!697146)) b!4036462))

(assert (= (and d!1196118 res!1643751) b!4036463))

(assert (= (and b!4036463 res!1643752) b!4036464))

(declare-fun m!4630755 () Bool)

(assert (=> b!4036463 m!4630755))

(declare-fun m!4630757 () Bool)

(assert (=> b!4036463 m!4630757))

(assert (=> b!4036463 m!4630217))

(declare-fun m!4630759 () Bool)

(assert (=> b!4036462 m!4630759))

(declare-fun m!4630761 () Bool)

(assert (=> d!1196118 m!4630761))

(declare-fun m!4630763 () Bool)

(assert (=> d!1196118 m!4630763))

(declare-fun m!4630765 () Bool)

(assert (=> d!1196118 m!4630765))

(assert (=> b!4036098 d!1196118))

(declare-fun lt!1436057 () List!43346)

(declare-fun b!4036468 () Bool)

(declare-fun e!2504607 () Bool)

(assert (=> b!4036468 (= e!2504607 (or (not (= suffix!1299 Nil!43222)) (= lt!1436057 lt!1435836)))))

(declare-fun b!4036467 () Bool)

(declare-fun res!1643754 () Bool)

(assert (=> b!4036467 (=> (not res!1643754) (not e!2504607))))

(assert (=> b!4036467 (= res!1643754 (= (size!32308 lt!1436057) (+ (size!32308 lt!1435836) (size!32308 suffix!1299))))))

(declare-fun b!4036466 () Bool)

(declare-fun e!2504608 () List!43346)

(assert (=> b!4036466 (= e!2504608 (Cons!43222 (h!48642 lt!1435836) (++!11319 (t!334587 lt!1435836) suffix!1299)))))

(declare-fun b!4036465 () Bool)

(assert (=> b!4036465 (= e!2504608 suffix!1299)))

(declare-fun d!1196120 () Bool)

(assert (=> d!1196120 e!2504607))

(declare-fun res!1643753 () Bool)

(assert (=> d!1196120 (=> (not res!1643753) (not e!2504607))))

(assert (=> d!1196120 (= res!1643753 (= (content!6568 lt!1436057) (set.union (content!6568 lt!1435836) (content!6568 suffix!1299))))))

(assert (=> d!1196120 (= lt!1436057 e!2504608)))

(declare-fun c!697147 () Bool)

(assert (=> d!1196120 (= c!697147 (is-Nil!43222 lt!1435836))))

(assert (=> d!1196120 (= (++!11319 lt!1435836 suffix!1299) lt!1436057)))

(assert (= (and d!1196120 c!697147) b!4036465))

(assert (= (and d!1196120 (not c!697147)) b!4036466))

(assert (= (and d!1196120 res!1643753) b!4036467))

(assert (= (and b!4036467 res!1643754) b!4036468))

(declare-fun m!4630767 () Bool)

(assert (=> b!4036467 m!4630767))

(declare-fun m!4630769 () Bool)

(assert (=> b!4036467 m!4630769))

(assert (=> b!4036467 m!4630217))

(declare-fun m!4630771 () Bool)

(assert (=> b!4036466 m!4630771))

(declare-fun m!4630773 () Bool)

(assert (=> d!1196120 m!4630773))

(declare-fun m!4630775 () Bool)

(assert (=> d!1196120 m!4630775))

(assert (=> d!1196120 m!4630765))

(assert (=> b!4036098 d!1196120))

(declare-fun d!1196122 () Bool)

(assert (=> d!1196122 (= (++!11319 (++!11319 lt!1435816 lt!1435836) suffix!1299) (++!11319 lt!1435816 (++!11319 lt!1435836 suffix!1299)))))

(declare-fun lt!1436060 () Unit!62414)

(declare-fun choose!24445 (List!43346 List!43346 List!43346) Unit!62414)

(assert (=> d!1196122 (= lt!1436060 (choose!24445 lt!1435816 lt!1435836 suffix!1299))))

(assert (=> d!1196122 (= (lemmaConcatAssociativity!2621 lt!1435816 lt!1435836 suffix!1299) lt!1436060)))

(declare-fun bs!590566 () Bool)

(assert (= bs!590566 d!1196122))

(assert (=> bs!590566 m!4630165))

(declare-fun m!4630777 () Bool)

(assert (=> bs!590566 m!4630777))

(assert (=> bs!590566 m!4630165))

(declare-fun m!4630779 () Bool)

(assert (=> bs!590566 m!4630779))

(assert (=> bs!590566 m!4630201))

(assert (=> bs!590566 m!4630201))

(declare-fun m!4630781 () Bool)

(assert (=> bs!590566 m!4630781))

(assert (=> b!4036098 d!1196122))

(declare-fun d!1196124 () Bool)

(assert (=> d!1196124 (= (size!32307 token!484) (size!32308 (originalCharacters!7517 token!484)))))

(declare-fun Unit!62420 () Unit!62414)

(assert (=> d!1196124 (= (lemmaCharactersSize!1436 token!484) Unit!62420)))

(declare-fun bs!590567 () Bool)

(assert (= bs!590567 d!1196124))

(assert (=> bs!590567 m!4630169))

(assert (=> b!4036097 d!1196124))

(declare-fun d!1196126 () Bool)

(assert (=> d!1196126 (= (size!32307 (_1!24286 (v!39726 lt!1435811))) (size!32308 (originalCharacters!7517 (_1!24286 (v!39726 lt!1435811)))))))

(declare-fun Unit!62421 () Unit!62414)

(assert (=> d!1196126 (= (lemmaCharactersSize!1436 (_1!24286 (v!39726 lt!1435811))) Unit!62421)))

(declare-fun bs!590568 () Bool)

(assert (= bs!590568 d!1196126))

(declare-fun m!4630783 () Bool)

(assert (=> bs!590568 m!4630783))

(assert (=> b!4036097 d!1196126))

(declare-fun d!1196128 () Bool)

(declare-fun res!1643755 () Bool)

(declare-fun e!2504609 () Bool)

(assert (=> d!1196128 (=> (not res!1643755) (not e!2504609))))

(assert (=> d!1196128 (= res!1643755 (validRegex!5345 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))))

(assert (=> d!1196128 (= (ruleValid!2847 thiss!21717 (rule!9985 (_1!24286 (v!39726 lt!1435811)))) e!2504609)))

(declare-fun b!4036469 () Bool)

(declare-fun res!1643756 () Bool)

(assert (=> b!4036469 (=> (not res!1643756) (not e!2504609))))

(assert (=> b!4036469 (= res!1643756 (not (nullable!4145 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))))))

(declare-fun b!4036470 () Bool)

(assert (=> b!4036470 (= e!2504609 (not (= (tag!7777 (rule!9985 (_1!24286 (v!39726 lt!1435811)))) (String!49456 ""))))))

(assert (= (and d!1196128 res!1643755) b!4036469))

(assert (= (and b!4036469 res!1643756) b!4036470))

(declare-fun m!4630785 () Bool)

(assert (=> d!1196128 m!4630785))

(declare-fun m!4630787 () Bool)

(assert (=> b!4036469 m!4630787))

(assert (=> b!4036097 d!1196128))

(declare-fun d!1196130 () Bool)

(declare-fun lt!1436061 () BalanceConc!25850)

(assert (=> d!1196130 (= (list!16087 lt!1436061) (originalCharacters!7517 (_1!24286 (v!39726 lt!1435811))))))

(assert (=> d!1196130 (= lt!1436061 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811)))))))

(assert (=> d!1196130 (= (charsOf!4733 (_1!24286 (v!39726 lt!1435811))) lt!1436061)))

(declare-fun b_lambda!117773 () Bool)

(assert (=> (not b_lambda!117773) (not d!1196130)))

(declare-fun t!334602 () Bool)

(declare-fun tb!242489 () Bool)

(assert (=> (and b!4036083 (= (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) t!334602) tb!242489))

(declare-fun b!4036471 () Bool)

(declare-fun e!2504610 () Bool)

(declare-fun tp!1226138 () Bool)

(assert (=> b!4036471 (= e!2504610 (and (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811)))))) tp!1226138))))

(declare-fun result!293942 () Bool)

(assert (=> tb!242489 (= result!293942 (and (inv!57758 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811))))) e!2504610))))

(assert (= tb!242489 b!4036471))

(declare-fun m!4630789 () Bool)

(assert (=> b!4036471 m!4630789))

(declare-fun m!4630791 () Bool)

(assert (=> tb!242489 m!4630791))

(assert (=> d!1196130 t!334602))

(declare-fun b_and!310195 () Bool)

(assert (= b_and!310191 (and (=> t!334602 result!293942) b_and!310195)))

(declare-fun tb!242491 () Bool)

(declare-fun t!334604 () Bool)

(assert (=> (and b!4036114 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) t!334604) tb!242491))

(declare-fun result!293944 () Bool)

(assert (= result!293944 result!293942))

(assert (=> d!1196130 t!334604))

(declare-fun b_and!310197 () Bool)

(assert (= b_and!310193 (and (=> t!334604 result!293944) b_and!310197)))

(declare-fun m!4630793 () Bool)

(assert (=> d!1196130 m!4630793))

(declare-fun m!4630795 () Bool)

(assert (=> d!1196130 m!4630795))

(assert (=> b!4036097 d!1196130))

(declare-fun d!1196132 () Bool)

(assert (=> d!1196132 (ruleValid!2847 thiss!21717 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))

(declare-fun lt!1436062 () Unit!62414)

(assert (=> d!1196132 (= lt!1436062 (choose!24441 thiss!21717 (rule!9985 (_1!24286 (v!39726 lt!1435811))) rules!2999))))

(assert (=> d!1196132 (contains!8583 rules!2999 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))

(assert (=> d!1196132 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1917 thiss!21717 (rule!9985 (_1!24286 (v!39726 lt!1435811))) rules!2999) lt!1436062)))

(declare-fun bs!590569 () Bool)

(assert (= bs!590569 d!1196132))

(assert (=> bs!590569 m!4630251))

(declare-fun m!4630797 () Bool)

(assert (=> bs!590569 m!4630797))

(assert (=> bs!590569 m!4630255))

(assert (=> b!4036097 d!1196132))

(declare-fun d!1196134 () Bool)

(assert (=> d!1196134 (= (list!16087 (charsOf!4733 (_1!24286 (v!39726 lt!1435811)))) (list!16089 (c!697105 (charsOf!4733 (_1!24286 (v!39726 lt!1435811))))))))

(declare-fun bs!590570 () Bool)

(assert (= bs!590570 d!1196134))

(declare-fun m!4630799 () Bool)

(assert (=> bs!590570 m!4630799))

(assert (=> b!4036097 d!1196134))

(declare-fun d!1196136 () Bool)

(declare-fun e!2504611 () Bool)

(assert (=> d!1196136 e!2504611))

(declare-fun res!1643757 () Bool)

(assert (=> d!1196136 (=> (not res!1643757) (not e!2504611))))

(assert (=> d!1196136 (= res!1643757 (semiInverseModEq!2953 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))))))

(declare-fun Unit!62422 () Unit!62414)

(assert (=> d!1196136 (= (lemmaInv!1126 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) Unit!62422)))

(declare-fun b!4036472 () Bool)

(assert (=> b!4036472 (= e!2504611 (equivClasses!2852 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))))))

(assert (= (and d!1196136 res!1643757) b!4036472))

(declare-fun m!4630801 () Bool)

(assert (=> d!1196136 m!4630801))

(declare-fun m!4630803 () Bool)

(assert (=> b!4036472 m!4630803))

(assert (=> b!4036097 d!1196136))

(declare-fun d!1196138 () Bool)

(declare-fun lt!1436065 () Bool)

(declare-fun content!6570 (List!43348) (Set Rule!13634))

(assert (=> d!1196138 (= lt!1436065 (set.member (rule!9985 (_1!24286 (v!39726 lt!1435811))) (content!6570 rules!2999)))))

(declare-fun e!2504617 () Bool)

(assert (=> d!1196138 (= lt!1436065 e!2504617)))

(declare-fun res!1643762 () Bool)

(assert (=> d!1196138 (=> (not res!1643762) (not e!2504617))))

(assert (=> d!1196138 (= res!1643762 (is-Cons!43224 rules!2999))))

(assert (=> d!1196138 (= (contains!8583 rules!2999 (rule!9985 (_1!24286 (v!39726 lt!1435811)))) lt!1436065)))

(declare-fun b!4036477 () Bool)

(declare-fun e!2504616 () Bool)

(assert (=> b!4036477 (= e!2504617 e!2504616)))

(declare-fun res!1643763 () Bool)

(assert (=> b!4036477 (=> res!1643763 e!2504616)))

(assert (=> b!4036477 (= res!1643763 (= (h!48644 rules!2999) (rule!9985 (_1!24286 (v!39726 lt!1435811)))))))

(declare-fun b!4036478 () Bool)

(assert (=> b!4036478 (= e!2504616 (contains!8583 (t!334589 rules!2999) (rule!9985 (_1!24286 (v!39726 lt!1435811)))))))

(assert (= (and d!1196138 res!1643762) b!4036477))

(assert (= (and b!4036477 (not res!1643763)) b!4036478))

(declare-fun m!4630805 () Bool)

(assert (=> d!1196138 m!4630805))

(declare-fun m!4630807 () Bool)

(assert (=> d!1196138 m!4630807))

(declare-fun m!4630809 () Bool)

(assert (=> b!4036478 m!4630809))

(assert (=> b!4036097 d!1196138))

(declare-fun b!4036479 () Bool)

(declare-fun e!2504618 () Option!9331)

(declare-fun lt!1436070 () Option!9331)

(declare-fun lt!1436068 () Option!9331)

(assert (=> b!4036479 (= e!2504618 (ite (and (is-None!9330 lt!1436070) (is-None!9330 lt!1436068)) None!9330 (ite (is-None!9330 lt!1436068) lt!1436070 (ite (is-None!9330 lt!1436070) lt!1436068 (ite (>= (size!32307 (_1!24286 (v!39726 lt!1436070))) (size!32307 (_1!24286 (v!39726 lt!1436068)))) lt!1436070 lt!1436068)))))))

(declare-fun call!287137 () Option!9331)

(assert (=> b!4036479 (= lt!1436070 call!287137)))

(assert (=> b!4036479 (= lt!1436068 (maxPrefix!3804 thiss!21717 (t!334589 rules!2999) lt!1435831))))

(declare-fun b!4036481 () Bool)

(declare-fun res!1643770 () Bool)

(declare-fun e!2504620 () Bool)

(assert (=> b!4036481 (=> (not res!1643770) (not e!2504620))))

(declare-fun lt!1436067 () Option!9331)

(assert (=> b!4036481 (= res!1643770 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067)))) (_2!24286 (get!14182 lt!1436067))) lt!1435831))))

(declare-fun b!4036482 () Bool)

(declare-fun e!2504619 () Bool)

(assert (=> b!4036482 (= e!2504619 e!2504620)))

(declare-fun res!1643766 () Bool)

(assert (=> b!4036482 (=> (not res!1643766) (not e!2504620))))

(assert (=> b!4036482 (= res!1643766 (isDefined!7099 lt!1436067))))

(declare-fun bm!287132 () Bool)

(assert (=> bm!287132 (= call!287137 (maxPrefixOneRule!2816 thiss!21717 (h!48644 rules!2999) lt!1435831))))

(declare-fun b!4036483 () Bool)

(declare-fun res!1643767 () Bool)

(assert (=> b!4036483 (=> (not res!1643767) (not e!2504620))))

(assert (=> b!4036483 (= res!1643767 (= (value!217770 (_1!24286 (get!14182 lt!1436067))) (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436067)))))))))

(declare-fun b!4036484 () Bool)

(declare-fun res!1643769 () Bool)

(assert (=> b!4036484 (=> (not res!1643769) (not e!2504620))))

(assert (=> b!4036484 (= res!1643769 (< (size!32308 (_2!24286 (get!14182 lt!1436067))) (size!32308 lt!1435831)))))

(declare-fun b!4036485 () Bool)

(assert (=> b!4036485 (= e!2504620 (contains!8583 rules!2999 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))))

(declare-fun b!4036486 () Bool)

(assert (=> b!4036486 (= e!2504618 call!287137)))

(declare-fun b!4036487 () Bool)

(declare-fun res!1643764 () Bool)

(assert (=> b!4036487 (=> (not res!1643764) (not e!2504620))))

(assert (=> b!4036487 (= res!1643764 (= (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067)))) (originalCharacters!7517 (_1!24286 (get!14182 lt!1436067)))))))

(declare-fun b!4036480 () Bool)

(declare-fun res!1643765 () Bool)

(assert (=> b!4036480 (=> (not res!1643765) (not e!2504620))))

(assert (=> b!4036480 (= res!1643765 (matchR!5775 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))))))

(declare-fun d!1196140 () Bool)

(assert (=> d!1196140 e!2504619))

(declare-fun res!1643768 () Bool)

(assert (=> d!1196140 (=> res!1643768 e!2504619)))

(assert (=> d!1196140 (= res!1643768 (isEmpty!25798 lt!1436067))))

(assert (=> d!1196140 (= lt!1436067 e!2504618)))

(declare-fun c!697148 () Bool)

(assert (=> d!1196140 (= c!697148 (and (is-Cons!43224 rules!2999) (is-Nil!43224 (t!334589 rules!2999))))))

(declare-fun lt!1436066 () Unit!62414)

(declare-fun lt!1436069 () Unit!62414)

(assert (=> d!1196140 (= lt!1436066 lt!1436069)))

(assert (=> d!1196140 (isPrefix!4004 lt!1435831 lt!1435831)))

(assert (=> d!1196140 (= lt!1436069 (lemmaIsPrefixRefl!2571 lt!1435831 lt!1435831))))

(assert (=> d!1196140 (rulesValidInductive!2520 thiss!21717 rules!2999)))

(assert (=> d!1196140 (= (maxPrefix!3804 thiss!21717 rules!2999 lt!1435831) lt!1436067)))

(assert (= (and d!1196140 c!697148) b!4036486))

(assert (= (and d!1196140 (not c!697148)) b!4036479))

(assert (= (or b!4036486 b!4036479) bm!287132))

(assert (= (and d!1196140 (not res!1643768)) b!4036482))

(assert (= (and b!4036482 res!1643766) b!4036487))

(assert (= (and b!4036487 res!1643764) b!4036484))

(assert (= (and b!4036484 res!1643769) b!4036481))

(assert (= (and b!4036481 res!1643770) b!4036483))

(assert (= (and b!4036483 res!1643767) b!4036480))

(assert (= (and b!4036480 res!1643765) b!4036485))

(declare-fun m!4630811 () Bool)

(assert (=> b!4036487 m!4630811))

(declare-fun m!4630813 () Bool)

(assert (=> b!4036487 m!4630813))

(assert (=> b!4036487 m!4630813))

(declare-fun m!4630815 () Bool)

(assert (=> b!4036487 m!4630815))

(assert (=> b!4036483 m!4630811))

(declare-fun m!4630817 () Bool)

(assert (=> b!4036483 m!4630817))

(assert (=> b!4036483 m!4630817))

(declare-fun m!4630819 () Bool)

(assert (=> b!4036483 m!4630819))

(assert (=> b!4036485 m!4630811))

(declare-fun m!4630821 () Bool)

(assert (=> b!4036485 m!4630821))

(assert (=> b!4036484 m!4630811))

(declare-fun m!4630823 () Bool)

(assert (=> b!4036484 m!4630823))

(assert (=> b!4036484 m!4630523))

(declare-fun m!4630825 () Bool)

(assert (=> bm!287132 m!4630825))

(declare-fun m!4630827 () Bool)

(assert (=> b!4036479 m!4630827))

(declare-fun m!4630829 () Bool)

(assert (=> b!4036482 m!4630829))

(declare-fun m!4630831 () Bool)

(assert (=> d!1196140 m!4630831))

(assert (=> d!1196140 m!4630177))

(assert (=> d!1196140 m!4630179))

(assert (=> d!1196140 m!4630693))

(assert (=> b!4036481 m!4630811))

(assert (=> b!4036481 m!4630813))

(assert (=> b!4036481 m!4630813))

(assert (=> b!4036481 m!4630815))

(assert (=> b!4036481 m!4630815))

(declare-fun m!4630833 () Bool)

(assert (=> b!4036481 m!4630833))

(assert (=> b!4036480 m!4630811))

(assert (=> b!4036480 m!4630813))

(assert (=> b!4036480 m!4630813))

(assert (=> b!4036480 m!4630815))

(assert (=> b!4036480 m!4630815))

(declare-fun m!4630835 () Bool)

(assert (=> b!4036480 m!4630835))

(assert (=> b!4036085 d!1196140))

(declare-fun b!4036491 () Bool)

(declare-fun e!2504621 () Bool)

(declare-fun lt!1436073 () List!43346)

(assert (=> b!4036491 (= e!2504621 (or (not (= suffix!1299 Nil!43222)) (= lt!1436073 prefix!494)))))

(declare-fun b!4036490 () Bool)

(declare-fun res!1643772 () Bool)

(assert (=> b!4036490 (=> (not res!1643772) (not e!2504621))))

(assert (=> b!4036490 (= res!1643772 (= (size!32308 lt!1436073) (+ (size!32308 prefix!494) (size!32308 suffix!1299))))))

(declare-fun b!4036489 () Bool)

(declare-fun e!2504622 () List!43346)

(assert (=> b!4036489 (= e!2504622 (Cons!43222 (h!48642 prefix!494) (++!11319 (t!334587 prefix!494) suffix!1299)))))

(declare-fun b!4036488 () Bool)

(assert (=> b!4036488 (= e!2504622 suffix!1299)))

(declare-fun d!1196142 () Bool)

(assert (=> d!1196142 e!2504621))

(declare-fun res!1643771 () Bool)

(assert (=> d!1196142 (=> (not res!1643771) (not e!2504621))))

(assert (=> d!1196142 (= res!1643771 (= (content!6568 lt!1436073) (set.union (content!6568 prefix!494) (content!6568 suffix!1299))))))

(assert (=> d!1196142 (= lt!1436073 e!2504622)))

(declare-fun c!697149 () Bool)

(assert (=> d!1196142 (= c!697149 (is-Nil!43222 prefix!494))))

(assert (=> d!1196142 (= (++!11319 prefix!494 suffix!1299) lt!1436073)))

(assert (= (and d!1196142 c!697149) b!4036488))

(assert (= (and d!1196142 (not c!697149)) b!4036489))

(assert (= (and d!1196142 res!1643771) b!4036490))

(assert (= (and b!4036490 res!1643772) b!4036491))

(declare-fun m!4630837 () Bool)

(assert (=> b!4036490 m!4630837))

(assert (=> b!4036490 m!4630195))

(assert (=> b!4036490 m!4630217))

(declare-fun m!4630839 () Bool)

(assert (=> b!4036489 m!4630839))

(declare-fun m!4630841 () Bool)

(assert (=> d!1196142 m!4630841))

(declare-fun m!4630843 () Bool)

(assert (=> d!1196142 m!4630843))

(assert (=> d!1196142 m!4630765))

(assert (=> b!4036085 d!1196142))

(declare-fun lt!1436075 () List!43346)

(declare-fun b!4036495 () Bool)

(declare-fun e!2504623 () Bool)

(assert (=> b!4036495 (= e!2504623 (or (not (= (_2!24286 (v!39726 lt!1435811)) Nil!43222)) (= lt!1436075 lt!1435803)))))

(declare-fun b!4036494 () Bool)

(declare-fun res!1643774 () Bool)

(assert (=> b!4036494 (=> (not res!1643774) (not e!2504623))))

(assert (=> b!4036494 (= res!1643774 (= (size!32308 lt!1436075) (+ (size!32308 lt!1435803) (size!32308 (_2!24286 (v!39726 lt!1435811))))))))

(declare-fun b!4036493 () Bool)

(declare-fun e!2504624 () List!43346)

(assert (=> b!4036493 (= e!2504624 (Cons!43222 (h!48642 lt!1435803) (++!11319 (t!334587 lt!1435803) (_2!24286 (v!39726 lt!1435811)))))))

(declare-fun b!4036492 () Bool)

(assert (=> b!4036492 (= e!2504624 (_2!24286 (v!39726 lt!1435811)))))

(declare-fun d!1196144 () Bool)

(assert (=> d!1196144 e!2504623))

(declare-fun res!1643773 () Bool)

(assert (=> d!1196144 (=> (not res!1643773) (not e!2504623))))

(assert (=> d!1196144 (= res!1643773 (= (content!6568 lt!1436075) (set.union (content!6568 lt!1435803) (content!6568 (_2!24286 (v!39726 lt!1435811))))))))

(assert (=> d!1196144 (= lt!1436075 e!2504624)))

(declare-fun c!697150 () Bool)

(assert (=> d!1196144 (= c!697150 (is-Nil!43222 lt!1435803))))

(assert (=> d!1196144 (= (++!11319 lt!1435803 (_2!24286 (v!39726 lt!1435811))) lt!1436075)))

(assert (= (and d!1196144 c!697150) b!4036492))

(assert (= (and d!1196144 (not c!697150)) b!4036493))

(assert (= (and d!1196144 res!1643773) b!4036494))

(assert (= (and b!4036494 res!1643774) b!4036495))

(declare-fun m!4630847 () Bool)

(assert (=> b!4036494 m!4630847))

(declare-fun m!4630849 () Bool)

(assert (=> b!4036494 m!4630849))

(declare-fun m!4630851 () Bool)

(assert (=> b!4036494 m!4630851))

(declare-fun m!4630853 () Bool)

(assert (=> b!4036493 m!4630853))

(declare-fun m!4630855 () Bool)

(assert (=> d!1196144 m!4630855))

(declare-fun m!4630857 () Bool)

(assert (=> d!1196144 m!4630857))

(declare-fun m!4630859 () Bool)

(assert (=> d!1196144 m!4630859))

(assert (=> b!4036084 d!1196144))

(declare-fun d!1196148 () Bool)

(declare-fun e!2504626 () Bool)

(assert (=> d!1196148 e!2504626))

(declare-fun res!1643778 () Bool)

(assert (=> d!1196148 (=> res!1643778 e!2504626)))

(declare-fun lt!1436076 () Bool)

(assert (=> d!1196148 (= res!1643778 (not lt!1436076))))

(declare-fun e!2504627 () Bool)

(assert (=> d!1196148 (= lt!1436076 e!2504627)))

(declare-fun res!1643776 () Bool)

(assert (=> d!1196148 (=> res!1643776 e!2504627)))

(assert (=> d!1196148 (= res!1643776 (is-Nil!43222 newSuffix!27))))

(assert (=> d!1196148 (= (isPrefix!4004 newSuffix!27 suffix!1299) lt!1436076)))

(declare-fun b!4036496 () Bool)

(declare-fun e!2504625 () Bool)

(assert (=> b!4036496 (= e!2504627 e!2504625)))

(declare-fun res!1643777 () Bool)

(assert (=> b!4036496 (=> (not res!1643777) (not e!2504625))))

(assert (=> b!4036496 (= res!1643777 (not (is-Nil!43222 suffix!1299)))))

(declare-fun b!4036498 () Bool)

(assert (=> b!4036498 (= e!2504625 (isPrefix!4004 (tail!6280 newSuffix!27) (tail!6280 suffix!1299)))))

(declare-fun b!4036497 () Bool)

(declare-fun res!1643775 () Bool)

(assert (=> b!4036497 (=> (not res!1643775) (not e!2504625))))

(assert (=> b!4036497 (= res!1643775 (= (head!8548 newSuffix!27) (head!8548 suffix!1299)))))

(declare-fun b!4036499 () Bool)

(assert (=> b!4036499 (= e!2504626 (>= (size!32308 suffix!1299) (size!32308 newSuffix!27)))))

(assert (= (and d!1196148 (not res!1643776)) b!4036496))

(assert (= (and b!4036496 res!1643777) b!4036497))

(assert (= (and b!4036497 res!1643775) b!4036498))

(assert (= (and d!1196148 (not res!1643778)) b!4036499))

(declare-fun m!4630861 () Bool)

(assert (=> b!4036498 m!4630861))

(declare-fun m!4630863 () Bool)

(assert (=> b!4036498 m!4630863))

(assert (=> b!4036498 m!4630861))

(assert (=> b!4036498 m!4630863))

(declare-fun m!4630865 () Bool)

(assert (=> b!4036498 m!4630865))

(declare-fun m!4630867 () Bool)

(assert (=> b!4036497 m!4630867))

(declare-fun m!4630869 () Bool)

(assert (=> b!4036497 m!4630869))

(assert (=> b!4036499 m!4630217))

(assert (=> b!4036499 m!4630219))

(assert (=> b!4036104 d!1196148))

(declare-fun d!1196150 () Bool)

(assert (=> d!1196150 (= (isEmpty!25795 lt!1435803) (is-Nil!43222 lt!1435803))))

(assert (=> b!4036111 d!1196150))

(declare-fun d!1196152 () Bool)

(declare-fun res!1643781 () Bool)

(declare-fun e!2504630 () Bool)

(assert (=> d!1196152 (=> (not res!1643781) (not e!2504630))))

(declare-fun rulesValid!2687 (LexerInterface!6506 List!43348) Bool)

(assert (=> d!1196152 (= res!1643781 (rulesValid!2687 thiss!21717 rules!2999))))

(assert (=> d!1196152 (= (rulesInvariant!5849 thiss!21717 rules!2999) e!2504630)))

(declare-fun b!4036502 () Bool)

(declare-datatypes ((List!43352 0))(
  ( (Nil!43228) (Cons!43228 (h!48648 String!49455) (t!334629 List!43352)) )
))
(declare-fun noDuplicateTag!2688 (LexerInterface!6506 List!43348 List!43352) Bool)

(assert (=> b!4036502 (= e!2504630 (noDuplicateTag!2688 thiss!21717 rules!2999 Nil!43228))))

(assert (= (and d!1196152 res!1643781) b!4036502))

(declare-fun m!4630871 () Bool)

(assert (=> d!1196152 m!4630871))

(declare-fun m!4630873 () Bool)

(assert (=> b!4036502 m!4630873))

(assert (=> b!4036090 d!1196152))

(declare-fun e!2504631 () Bool)

(declare-fun lt!1436077 () List!43346)

(declare-fun b!4036506 () Bool)

(assert (=> b!4036506 (= e!2504631 (or (not (= newSuffix!27 Nil!43222)) (= lt!1436077 prefix!494)))))

(declare-fun b!4036505 () Bool)

(declare-fun res!1643783 () Bool)

(assert (=> b!4036505 (=> (not res!1643783) (not e!2504631))))

(assert (=> b!4036505 (= res!1643783 (= (size!32308 lt!1436077) (+ (size!32308 prefix!494) (size!32308 newSuffix!27))))))

(declare-fun b!4036504 () Bool)

(declare-fun e!2504632 () List!43346)

(assert (=> b!4036504 (= e!2504632 (Cons!43222 (h!48642 prefix!494) (++!11319 (t!334587 prefix!494) newSuffix!27)))))

(declare-fun b!4036503 () Bool)

(assert (=> b!4036503 (= e!2504632 newSuffix!27)))

(declare-fun d!1196154 () Bool)

(assert (=> d!1196154 e!2504631))

(declare-fun res!1643782 () Bool)

(assert (=> d!1196154 (=> (not res!1643782) (not e!2504631))))

(assert (=> d!1196154 (= res!1643782 (= (content!6568 lt!1436077) (set.union (content!6568 prefix!494) (content!6568 newSuffix!27))))))

(assert (=> d!1196154 (= lt!1436077 e!2504632)))

(declare-fun c!697151 () Bool)

(assert (=> d!1196154 (= c!697151 (is-Nil!43222 prefix!494))))

(assert (=> d!1196154 (= (++!11319 prefix!494 newSuffix!27) lt!1436077)))

(assert (= (and d!1196154 c!697151) b!4036503))

(assert (= (and d!1196154 (not c!697151)) b!4036504))

(assert (= (and d!1196154 res!1643782) b!4036505))

(assert (= (and b!4036505 res!1643783) b!4036506))

(declare-fun m!4630875 () Bool)

(assert (=> b!4036505 m!4630875))

(assert (=> b!4036505 m!4630195))

(assert (=> b!4036505 m!4630219))

(declare-fun m!4630877 () Bool)

(assert (=> b!4036504 m!4630877))

(declare-fun m!4630879 () Bool)

(assert (=> d!1196154 m!4630879))

(assert (=> d!1196154 m!4630843))

(declare-fun m!4630881 () Bool)

(assert (=> d!1196154 m!4630881))

(assert (=> b!4036112 d!1196154))

(declare-fun e!2504633 () Bool)

(declare-fun lt!1436078 () List!43346)

(declare-fun b!4036510 () Bool)

(assert (=> b!4036510 (= e!2504633 (or (not (= newSuffixResult!27 Nil!43222)) (= lt!1436078 lt!1435816)))))

(declare-fun b!4036509 () Bool)

(declare-fun res!1643785 () Bool)

(assert (=> b!4036509 (=> (not res!1643785) (not e!2504633))))

(assert (=> b!4036509 (= res!1643785 (= (size!32308 lt!1436078) (+ (size!32308 lt!1435816) (size!32308 newSuffixResult!27))))))

(declare-fun b!4036508 () Bool)

(declare-fun e!2504634 () List!43346)

(assert (=> b!4036508 (= e!2504634 (Cons!43222 (h!48642 lt!1435816) (++!11319 (t!334587 lt!1435816) newSuffixResult!27)))))

(declare-fun b!4036507 () Bool)

(assert (=> b!4036507 (= e!2504634 newSuffixResult!27)))

(declare-fun d!1196156 () Bool)

(assert (=> d!1196156 e!2504633))

(declare-fun res!1643784 () Bool)

(assert (=> d!1196156 (=> (not res!1643784) (not e!2504633))))

(assert (=> d!1196156 (= res!1643784 (= (content!6568 lt!1436078) (set.union (content!6568 lt!1435816) (content!6568 newSuffixResult!27))))))

(assert (=> d!1196156 (= lt!1436078 e!2504634)))

(declare-fun c!697152 () Bool)

(assert (=> d!1196156 (= c!697152 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196156 (= (++!11319 lt!1435816 newSuffixResult!27) lt!1436078)))

(assert (= (and d!1196156 c!697152) b!4036507))

(assert (= (and d!1196156 (not c!697152)) b!4036508))

(assert (= (and d!1196156 res!1643784) b!4036509))

(assert (= (and b!4036509 res!1643785) b!4036510))

(declare-fun m!4630883 () Bool)

(assert (=> b!4036509 m!4630883))

(assert (=> b!4036509 m!4630193))

(declare-fun m!4630885 () Bool)

(assert (=> b!4036509 m!4630885))

(declare-fun m!4630887 () Bool)

(assert (=> b!4036508 m!4630887))

(declare-fun m!4630889 () Bool)

(assert (=> d!1196156 m!4630889))

(assert (=> d!1196156 m!4630443))

(declare-fun m!4630891 () Bool)

(assert (=> d!1196156 m!4630891))

(assert (=> b!4036112 d!1196156))

(declare-fun b!4036514 () Bool)

(declare-fun lt!1436079 () List!43346)

(declare-fun e!2504635 () Bool)

(assert (=> b!4036514 (= e!2504635 (or (not (= lt!1435801 Nil!43222)) (= lt!1436079 lt!1435816)))))

(declare-fun b!4036513 () Bool)

(declare-fun res!1643787 () Bool)

(assert (=> b!4036513 (=> (not res!1643787) (not e!2504635))))

(assert (=> b!4036513 (= res!1643787 (= (size!32308 lt!1436079) (+ (size!32308 lt!1435816) (size!32308 lt!1435801))))))

(declare-fun b!4036512 () Bool)

(declare-fun e!2504636 () List!43346)

(assert (=> b!4036512 (= e!2504636 (Cons!43222 (h!48642 lt!1435816) (++!11319 (t!334587 lt!1435816) lt!1435801)))))

(declare-fun b!4036511 () Bool)

(assert (=> b!4036511 (= e!2504636 lt!1435801)))

(declare-fun d!1196158 () Bool)

(assert (=> d!1196158 e!2504635))

(declare-fun res!1643786 () Bool)

(assert (=> d!1196158 (=> (not res!1643786) (not e!2504635))))

(assert (=> d!1196158 (= res!1643786 (= (content!6568 lt!1436079) (set.union (content!6568 lt!1435816) (content!6568 lt!1435801))))))

(assert (=> d!1196158 (= lt!1436079 e!2504636)))

(declare-fun c!697153 () Bool)

(assert (=> d!1196158 (= c!697153 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196158 (= (++!11319 lt!1435816 lt!1435801) lt!1436079)))

(assert (= (and d!1196158 c!697153) b!4036511))

(assert (= (and d!1196158 (not c!697153)) b!4036512))

(assert (= (and d!1196158 res!1643786) b!4036513))

(assert (= (and b!4036513 res!1643787) b!4036514))

(declare-fun m!4630893 () Bool)

(assert (=> b!4036513 m!4630893))

(assert (=> b!4036513 m!4630193))

(declare-fun m!4630895 () Bool)

(assert (=> b!4036513 m!4630895))

(declare-fun m!4630897 () Bool)

(assert (=> b!4036512 m!4630897))

(declare-fun m!4630899 () Bool)

(assert (=> d!1196158 m!4630899))

(assert (=> d!1196158 m!4630443))

(declare-fun m!4630901 () Bool)

(assert (=> d!1196158 m!4630901))

(assert (=> b!4036089 d!1196158))

(declare-fun d!1196160 () Bool)

(declare-fun lt!1436082 () List!43346)

(assert (=> d!1196160 (= (++!11319 lt!1435816 lt!1436082) lt!1435831)))

(declare-fun e!2504639 () List!43346)

(assert (=> d!1196160 (= lt!1436082 e!2504639)))

(declare-fun c!697156 () Bool)

(assert (=> d!1196160 (= c!697156 (is-Cons!43222 lt!1435816))))

(assert (=> d!1196160 (>= (size!32308 lt!1435831) (size!32308 lt!1435816))))

(assert (=> d!1196160 (= (getSuffix!2421 lt!1435831 lt!1435816) lt!1436082)))

(declare-fun b!4036519 () Bool)

(assert (=> b!4036519 (= e!2504639 (getSuffix!2421 (tail!6280 lt!1435831) (t!334587 lt!1435816)))))

(declare-fun b!4036520 () Bool)

(assert (=> b!4036520 (= e!2504639 lt!1435831)))

(assert (= (and d!1196160 c!697156) b!4036519))

(assert (= (and d!1196160 (not c!697156)) b!4036520))

(declare-fun m!4630903 () Bool)

(assert (=> d!1196160 m!4630903))

(assert (=> d!1196160 m!4630523))

(assert (=> d!1196160 m!4630193))

(assert (=> b!4036519 m!4630719))

(assert (=> b!4036519 m!4630719))

(declare-fun m!4630905 () Bool)

(assert (=> b!4036519 m!4630905))

(assert (=> b!4036089 d!1196160))

(declare-fun d!1196162 () Bool)

(declare-fun e!2504641 () Bool)

(assert (=> d!1196162 e!2504641))

(declare-fun res!1643791 () Bool)

(assert (=> d!1196162 (=> res!1643791 e!2504641)))

(declare-fun lt!1436083 () Bool)

(assert (=> d!1196162 (= res!1643791 (not lt!1436083))))

(declare-fun e!2504642 () Bool)

(assert (=> d!1196162 (= lt!1436083 e!2504642)))

(declare-fun res!1643789 () Bool)

(assert (=> d!1196162 (=> res!1643789 e!2504642)))

(assert (=> d!1196162 (= res!1643789 (is-Nil!43222 lt!1435831))))

(assert (=> d!1196162 (= (isPrefix!4004 lt!1435831 lt!1435831) lt!1436083)))

(declare-fun b!4036521 () Bool)

(declare-fun e!2504640 () Bool)

(assert (=> b!4036521 (= e!2504642 e!2504640)))

(declare-fun res!1643790 () Bool)

(assert (=> b!4036521 (=> (not res!1643790) (not e!2504640))))

(assert (=> b!4036521 (= res!1643790 (not (is-Nil!43222 lt!1435831)))))

(declare-fun b!4036523 () Bool)

(assert (=> b!4036523 (= e!2504640 (isPrefix!4004 (tail!6280 lt!1435831) (tail!6280 lt!1435831)))))

(declare-fun b!4036522 () Bool)

(declare-fun res!1643788 () Bool)

(assert (=> b!4036522 (=> (not res!1643788) (not e!2504640))))

(assert (=> b!4036522 (= res!1643788 (= (head!8548 lt!1435831) (head!8548 lt!1435831)))))

(declare-fun b!4036524 () Bool)

(assert (=> b!4036524 (= e!2504641 (>= (size!32308 lt!1435831) (size!32308 lt!1435831)))))

(assert (= (and d!1196162 (not res!1643789)) b!4036521))

(assert (= (and b!4036521 res!1643790) b!4036522))

(assert (= (and b!4036522 res!1643788) b!4036523))

(assert (= (and d!1196162 (not res!1643791)) b!4036524))

(assert (=> b!4036523 m!4630719))

(assert (=> b!4036523 m!4630719))

(assert (=> b!4036523 m!4630719))

(assert (=> b!4036523 m!4630719))

(declare-fun m!4630907 () Bool)

(assert (=> b!4036523 m!4630907))

(assert (=> b!4036522 m!4630725))

(assert (=> b!4036522 m!4630725))

(assert (=> b!4036524 m!4630523))

(assert (=> b!4036524 m!4630523))

(assert (=> b!4036089 d!1196162))

(declare-fun d!1196164 () Bool)

(assert (=> d!1196164 (isPrefix!4004 lt!1435831 lt!1435831)))

(declare-fun lt!1436086 () Unit!62414)

(declare-fun choose!24449 (List!43346 List!43346) Unit!62414)

(assert (=> d!1196164 (= lt!1436086 (choose!24449 lt!1435831 lt!1435831))))

(assert (=> d!1196164 (= (lemmaIsPrefixRefl!2571 lt!1435831 lt!1435831) lt!1436086)))

(declare-fun bs!590572 () Bool)

(assert (= bs!590572 d!1196164))

(assert (=> bs!590572 m!4630177))

(declare-fun m!4630909 () Bool)

(assert (=> bs!590572 m!4630909))

(assert (=> b!4036089 d!1196164))

(declare-fun b!4036553 () Bool)

(declare-fun e!2504660 () Bool)

(declare-fun e!2504662 () Bool)

(assert (=> b!4036553 (= e!2504660 e!2504662)))

(declare-fun res!1643809 () Bool)

(assert (=> b!4036553 (=> (not res!1643809) (not e!2504662))))

(declare-fun lt!1436089 () Bool)

(assert (=> b!4036553 (= res!1643809 (not lt!1436089))))

(declare-fun b!4036554 () Bool)

(declare-fun e!2504657 () Bool)

(declare-fun e!2504661 () Bool)

(assert (=> b!4036554 (= e!2504657 e!2504661)))

(declare-fun c!697164 () Bool)

(assert (=> b!4036554 (= c!697164 (is-EmptyLang!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun b!4036555 () Bool)

(declare-fun e!2504658 () Bool)

(assert (=> b!4036555 (= e!2504658 (not (= (head!8548 lt!1435816) (c!697106 (regex!6917 (rule!9985 token!484))))))))

(declare-fun b!4036556 () Bool)

(declare-fun res!1643815 () Bool)

(assert (=> b!4036556 (=> res!1643815 e!2504660)))

(assert (=> b!4036556 (= res!1643815 (not (is-ElementMatch!11822 (regex!6917 (rule!9985 token!484)))))))

(assert (=> b!4036556 (= e!2504661 e!2504660)))

(declare-fun d!1196166 () Bool)

(assert (=> d!1196166 e!2504657))

(declare-fun c!697165 () Bool)

(assert (=> d!1196166 (= c!697165 (is-EmptyExpr!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun e!2504659 () Bool)

(assert (=> d!1196166 (= lt!1436089 e!2504659)))

(declare-fun c!697163 () Bool)

(assert (=> d!1196166 (= c!697163 (isEmpty!25795 lt!1435816))))

(assert (=> d!1196166 (validRegex!5345 (regex!6917 (rule!9985 token!484)))))

(assert (=> d!1196166 (= (matchR!5775 (regex!6917 (rule!9985 token!484)) lt!1435816) lt!1436089)))

(declare-fun b!4036557 () Bool)

(assert (=> b!4036557 (= e!2504662 e!2504658)))

(declare-fun res!1643814 () Bool)

(assert (=> b!4036557 (=> res!1643814 e!2504658)))

(declare-fun call!287140 () Bool)

(assert (=> b!4036557 (= res!1643814 call!287140)))

(declare-fun b!4036558 () Bool)

(declare-fun derivativeStep!3551 (Regex!11822 C!23830) Regex!11822)

(assert (=> b!4036558 (= e!2504659 (matchR!5775 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816)) (tail!6280 lt!1435816)))))

(declare-fun b!4036559 () Bool)

(declare-fun res!1643808 () Bool)

(declare-fun e!2504663 () Bool)

(assert (=> b!4036559 (=> (not res!1643808) (not e!2504663))))

(assert (=> b!4036559 (= res!1643808 (not call!287140))))

(declare-fun bm!287135 () Bool)

(assert (=> bm!287135 (= call!287140 (isEmpty!25795 lt!1435816))))

(declare-fun b!4036560 () Bool)

(assert (=> b!4036560 (= e!2504663 (= (head!8548 lt!1435816) (c!697106 (regex!6917 (rule!9985 token!484)))))))

(declare-fun b!4036561 () Bool)

(declare-fun res!1643811 () Bool)

(assert (=> b!4036561 (=> res!1643811 e!2504658)))

(assert (=> b!4036561 (= res!1643811 (not (isEmpty!25795 (tail!6280 lt!1435816))))))

(declare-fun b!4036562 () Bool)

(declare-fun res!1643812 () Bool)

(assert (=> b!4036562 (=> res!1643812 e!2504660)))

(assert (=> b!4036562 (= res!1643812 e!2504663)))

(declare-fun res!1643813 () Bool)

(assert (=> b!4036562 (=> (not res!1643813) (not e!2504663))))

(assert (=> b!4036562 (= res!1643813 lt!1436089)))

(declare-fun b!4036563 () Bool)

(assert (=> b!4036563 (= e!2504659 (nullable!4145 (regex!6917 (rule!9985 token!484))))))

(declare-fun b!4036564 () Bool)

(assert (=> b!4036564 (= e!2504661 (not lt!1436089))))

(declare-fun b!4036565 () Bool)

(assert (=> b!4036565 (= e!2504657 (= lt!1436089 call!287140))))

(declare-fun b!4036566 () Bool)

(declare-fun res!1643810 () Bool)

(assert (=> b!4036566 (=> (not res!1643810) (not e!2504663))))

(assert (=> b!4036566 (= res!1643810 (isEmpty!25795 (tail!6280 lt!1435816)))))

(assert (= (and d!1196166 c!697163) b!4036563))

(assert (= (and d!1196166 (not c!697163)) b!4036558))

(assert (= (and d!1196166 c!697165) b!4036565))

(assert (= (and d!1196166 (not c!697165)) b!4036554))

(assert (= (and b!4036554 c!697164) b!4036564))

(assert (= (and b!4036554 (not c!697164)) b!4036556))

(assert (= (and b!4036556 (not res!1643815)) b!4036562))

(assert (= (and b!4036562 res!1643813) b!4036559))

(assert (= (and b!4036559 res!1643808) b!4036566))

(assert (= (and b!4036566 res!1643810) b!4036560))

(assert (= (and b!4036562 (not res!1643812)) b!4036553))

(assert (= (and b!4036553 res!1643809) b!4036557))

(assert (= (and b!4036557 (not res!1643814)) b!4036561))

(assert (= (and b!4036561 (not res!1643811)) b!4036555))

(assert (= (or b!4036565 b!4036557 b!4036559) bm!287135))

(declare-fun m!4630911 () Bool)

(assert (=> d!1196166 m!4630911))

(assert (=> d!1196166 m!4630451))

(assert (=> b!4036558 m!4630469))

(assert (=> b!4036558 m!4630469))

(declare-fun m!4630913 () Bool)

(assert (=> b!4036558 m!4630913))

(assert (=> b!4036558 m!4630463))

(assert (=> b!4036558 m!4630913))

(assert (=> b!4036558 m!4630463))

(declare-fun m!4630915 () Bool)

(assert (=> b!4036558 m!4630915))

(assert (=> b!4036566 m!4630463))

(assert (=> b!4036566 m!4630463))

(declare-fun m!4630917 () Bool)

(assert (=> b!4036566 m!4630917))

(assert (=> b!4036560 m!4630469))

(assert (=> b!4036563 m!4630453))

(assert (=> b!4036561 m!4630463))

(assert (=> b!4036561 m!4630463))

(assert (=> b!4036561 m!4630917))

(assert (=> b!4036555 m!4630469))

(assert (=> bm!287135 m!4630911))

(assert (=> b!4036087 d!1196166))

(declare-fun d!1196168 () Bool)

(declare-fun e!2504665 () Bool)

(assert (=> d!1196168 e!2504665))

(declare-fun res!1643819 () Bool)

(assert (=> d!1196168 (=> res!1643819 e!2504665)))

(declare-fun lt!1436090 () Bool)

(assert (=> d!1196168 (= res!1643819 (not lt!1436090))))

(declare-fun e!2504666 () Bool)

(assert (=> d!1196168 (= lt!1436090 e!2504666)))

(declare-fun res!1643817 () Bool)

(assert (=> d!1196168 (=> res!1643817 e!2504666)))

(assert (=> d!1196168 (= res!1643817 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196168 (= (isPrefix!4004 lt!1435816 lt!1435829) lt!1436090)))

(declare-fun b!4036567 () Bool)

(declare-fun e!2504664 () Bool)

(assert (=> b!4036567 (= e!2504666 e!2504664)))

(declare-fun res!1643818 () Bool)

(assert (=> b!4036567 (=> (not res!1643818) (not e!2504664))))

(assert (=> b!4036567 (= res!1643818 (not (is-Nil!43222 lt!1435829)))))

(declare-fun b!4036569 () Bool)

(assert (=> b!4036569 (= e!2504664 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435829)))))

(declare-fun b!4036568 () Bool)

(declare-fun res!1643816 () Bool)

(assert (=> b!4036568 (=> (not res!1643816) (not e!2504664))))

(assert (=> b!4036568 (= res!1643816 (= (head!8548 lt!1435816) (head!8548 lt!1435829)))))

(declare-fun b!4036570 () Bool)

(assert (=> b!4036570 (= e!2504665 (>= (size!32308 lt!1435829) (size!32308 lt!1435816)))))

(assert (= (and d!1196168 (not res!1643817)) b!4036567))

(assert (= (and b!4036567 res!1643818) b!4036568))

(assert (= (and b!4036568 res!1643816) b!4036569))

(assert (= (and d!1196168 (not res!1643819)) b!4036570))

(assert (=> b!4036569 m!4630463))

(declare-fun m!4630919 () Bool)

(assert (=> b!4036569 m!4630919))

(assert (=> b!4036569 m!4630463))

(assert (=> b!4036569 m!4630919))

(declare-fun m!4630921 () Bool)

(assert (=> b!4036569 m!4630921))

(assert (=> b!4036568 m!4630469))

(declare-fun m!4630923 () Bool)

(assert (=> b!4036568 m!4630923))

(assert (=> b!4036570 m!4630679))

(assert (=> b!4036570 m!4630193))

(assert (=> b!4036087 d!1196168))

(declare-fun d!1196170 () Bool)

(assert (=> d!1196170 (isPrefix!4004 lt!1435816 (++!11319 prefix!494 newSuffix!27))))

(declare-fun lt!1436093 () Unit!62414)

(declare-fun choose!24451 (List!43346 List!43346 List!43346) Unit!62414)

(assert (=> d!1196170 (= lt!1436093 (choose!24451 lt!1435816 prefix!494 newSuffix!27))))

(assert (=> d!1196170 (isPrefix!4004 lt!1435816 prefix!494)))

(assert (=> d!1196170 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!797 lt!1435816 prefix!494 newSuffix!27) lt!1436093)))

(declare-fun bs!590573 () Bool)

(assert (= bs!590573 d!1196170))

(assert (=> bs!590573 m!4630233))

(assert (=> bs!590573 m!4630233))

(declare-fun m!4630925 () Bool)

(assert (=> bs!590573 m!4630925))

(declare-fun m!4630927 () Bool)

(assert (=> bs!590573 m!4630927))

(assert (=> bs!590573 m!4630205))

(assert (=> b!4036087 d!1196170))

(declare-fun d!1196172 () Bool)

(assert (=> d!1196172 (isPrefix!4004 lt!1435816 (++!11319 prefix!494 suffix!1299))))

(declare-fun lt!1436094 () Unit!62414)

(assert (=> d!1196172 (= lt!1436094 (choose!24451 lt!1435816 prefix!494 suffix!1299))))

(assert (=> d!1196172 (isPrefix!4004 lt!1435816 prefix!494)))

(assert (=> d!1196172 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!797 lt!1435816 prefix!494 suffix!1299) lt!1436094)))

(declare-fun bs!590574 () Bool)

(assert (= bs!590574 d!1196172))

(assert (=> bs!590574 m!4630267))

(assert (=> bs!590574 m!4630267))

(declare-fun m!4630929 () Bool)

(assert (=> bs!590574 m!4630929))

(declare-fun m!4630931 () Bool)

(assert (=> bs!590574 m!4630931))

(assert (=> bs!590574 m!4630205))

(assert (=> b!4036087 d!1196172))

(declare-fun lt!1436095 () List!43346)

(declare-fun e!2504667 () Bool)

(declare-fun b!4036574 () Bool)

(assert (=> b!4036574 (= e!2504667 (or (not (= lt!1435836 Nil!43222)) (= lt!1436095 lt!1435816)))))

(declare-fun b!4036573 () Bool)

(declare-fun res!1643821 () Bool)

(assert (=> b!4036573 (=> (not res!1643821) (not e!2504667))))

(assert (=> b!4036573 (= res!1643821 (= (size!32308 lt!1436095) (+ (size!32308 lt!1435816) (size!32308 lt!1435836))))))

(declare-fun b!4036572 () Bool)

(declare-fun e!2504668 () List!43346)

(assert (=> b!4036572 (= e!2504668 (Cons!43222 (h!48642 lt!1435816) (++!11319 (t!334587 lt!1435816) lt!1435836)))))

(declare-fun b!4036571 () Bool)

(assert (=> b!4036571 (= e!2504668 lt!1435836)))

(declare-fun d!1196174 () Bool)

(assert (=> d!1196174 e!2504667))

(declare-fun res!1643820 () Bool)

(assert (=> d!1196174 (=> (not res!1643820) (not e!2504667))))

(assert (=> d!1196174 (= res!1643820 (= (content!6568 lt!1436095) (set.union (content!6568 lt!1435816) (content!6568 lt!1435836))))))

(assert (=> d!1196174 (= lt!1436095 e!2504668)))

(declare-fun c!697166 () Bool)

(assert (=> d!1196174 (= c!697166 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196174 (= (++!11319 lt!1435816 lt!1435836) lt!1436095)))

(assert (= (and d!1196174 c!697166) b!4036571))

(assert (= (and d!1196174 (not c!697166)) b!4036572))

(assert (= (and d!1196174 res!1643820) b!4036573))

(assert (= (and b!4036573 res!1643821) b!4036574))

(declare-fun m!4630933 () Bool)

(assert (=> b!4036573 m!4630933))

(assert (=> b!4036573 m!4630193))

(assert (=> b!4036573 m!4630769))

(declare-fun m!4630935 () Bool)

(assert (=> b!4036572 m!4630935))

(declare-fun m!4630937 () Bool)

(assert (=> d!1196174 m!4630937))

(assert (=> d!1196174 m!4630443))

(assert (=> d!1196174 m!4630775))

(assert (=> b!4036109 d!1196174))

(declare-fun d!1196176 () Bool)

(declare-fun lt!1436096 () List!43346)

(assert (=> d!1196176 (= (++!11319 lt!1435816 lt!1436096) prefix!494)))

(declare-fun e!2504669 () List!43346)

(assert (=> d!1196176 (= lt!1436096 e!2504669)))

(declare-fun c!697167 () Bool)

(assert (=> d!1196176 (= c!697167 (is-Cons!43222 lt!1435816))))

(assert (=> d!1196176 (>= (size!32308 prefix!494) (size!32308 lt!1435816))))

(assert (=> d!1196176 (= (getSuffix!2421 prefix!494 lt!1435816) lt!1436096)))

(declare-fun b!4036575 () Bool)

(assert (=> b!4036575 (= e!2504669 (getSuffix!2421 (tail!6280 prefix!494) (t!334587 lt!1435816)))))

(declare-fun b!4036576 () Bool)

(assert (=> b!4036576 (= e!2504669 prefix!494)))

(assert (= (and d!1196176 c!697167) b!4036575))

(assert (= (and d!1196176 (not c!697167)) b!4036576))

(declare-fun m!4630939 () Bool)

(assert (=> d!1196176 m!4630939))

(assert (=> d!1196176 m!4630195))

(assert (=> d!1196176 m!4630193))

(assert (=> b!4036575 m!4630717))

(assert (=> b!4036575 m!4630717))

(declare-fun m!4630941 () Bool)

(assert (=> b!4036575 m!4630941))

(assert (=> b!4036109 d!1196176))

(declare-fun d!1196178 () Bool)

(declare-fun e!2504671 () Bool)

(assert (=> d!1196178 e!2504671))

(declare-fun res!1643825 () Bool)

(assert (=> d!1196178 (=> res!1643825 e!2504671)))

(declare-fun lt!1436097 () Bool)

(assert (=> d!1196178 (= res!1643825 (not lt!1436097))))

(declare-fun e!2504672 () Bool)

(assert (=> d!1196178 (= lt!1436097 e!2504672)))

(declare-fun res!1643823 () Bool)

(assert (=> d!1196178 (=> res!1643823 e!2504672)))

(assert (=> d!1196178 (= res!1643823 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196178 (= (isPrefix!4004 lt!1435816 prefix!494) lt!1436097)))

(declare-fun b!4036577 () Bool)

(declare-fun e!2504670 () Bool)

(assert (=> b!4036577 (= e!2504672 e!2504670)))

(declare-fun res!1643824 () Bool)

(assert (=> b!4036577 (=> (not res!1643824) (not e!2504670))))

(assert (=> b!4036577 (= res!1643824 (not (is-Nil!43222 prefix!494)))))

(declare-fun b!4036579 () Bool)

(assert (=> b!4036579 (= e!2504670 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 prefix!494)))))

(declare-fun b!4036578 () Bool)

(declare-fun res!1643822 () Bool)

(assert (=> b!4036578 (=> (not res!1643822) (not e!2504670))))

(assert (=> b!4036578 (= res!1643822 (= (head!8548 lt!1435816) (head!8548 prefix!494)))))

(declare-fun b!4036580 () Bool)

(assert (=> b!4036580 (= e!2504671 (>= (size!32308 prefix!494) (size!32308 lt!1435816)))))

(assert (= (and d!1196178 (not res!1643823)) b!4036577))

(assert (= (and b!4036577 res!1643824) b!4036578))

(assert (= (and b!4036578 res!1643822) b!4036579))

(assert (= (and d!1196178 (not res!1643825)) b!4036580))

(assert (=> b!4036579 m!4630463))

(assert (=> b!4036579 m!4630717))

(assert (=> b!4036579 m!4630463))

(assert (=> b!4036579 m!4630717))

(declare-fun m!4630943 () Bool)

(assert (=> b!4036579 m!4630943))

(assert (=> b!4036578 m!4630469))

(assert (=> b!4036578 m!4630723))

(assert (=> b!4036580 m!4630195))

(assert (=> b!4036580 m!4630193))

(assert (=> b!4036109 d!1196178))

(declare-fun d!1196180 () Bool)

(assert (=> d!1196180 (isPrefix!4004 lt!1435816 prefix!494)))

(declare-fun lt!1436100 () Unit!62414)

(declare-fun choose!24453 (List!43346 List!43346 List!43346) Unit!62414)

(assert (=> d!1196180 (= lt!1436100 (choose!24453 prefix!494 lt!1435816 lt!1435831))))

(assert (=> d!1196180 (isPrefix!4004 prefix!494 lt!1435831)))

(assert (=> d!1196180 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!568 prefix!494 lt!1435816 lt!1435831) lt!1436100)))

(declare-fun bs!590575 () Bool)

(assert (= bs!590575 d!1196180))

(assert (=> bs!590575 m!4630205))

(declare-fun m!4630945 () Bool)

(assert (=> bs!590575 m!4630945))

(assert (=> bs!590575 m!4630269))

(assert (=> b!4036109 d!1196180))

(declare-fun b!4036591 () Bool)

(declare-fun e!2504679 () Bool)

(declare-fun inv!15 (TokenValue!7147) Bool)

(assert (=> b!4036591 (= e!2504679 (inv!15 (value!217770 token!484)))))

(declare-fun d!1196182 () Bool)

(declare-fun c!697172 () Bool)

(assert (=> d!1196182 (= c!697172 (is-IntegerValue!21441 (value!217770 token!484)))))

(declare-fun e!2504680 () Bool)

(assert (=> d!1196182 (= (inv!21 (value!217770 token!484)) e!2504680)))

(declare-fun b!4036592 () Bool)

(declare-fun res!1643828 () Bool)

(assert (=> b!4036592 (=> res!1643828 e!2504679)))

(assert (=> b!4036592 (= res!1643828 (not (is-IntegerValue!21443 (value!217770 token!484))))))

(declare-fun e!2504681 () Bool)

(assert (=> b!4036592 (= e!2504681 e!2504679)))

(declare-fun b!4036593 () Bool)

(assert (=> b!4036593 (= e!2504680 e!2504681)))

(declare-fun c!697173 () Bool)

(assert (=> b!4036593 (= c!697173 (is-IntegerValue!21442 (value!217770 token!484)))))

(declare-fun b!4036594 () Bool)

(declare-fun inv!16 (TokenValue!7147) Bool)

(assert (=> b!4036594 (= e!2504680 (inv!16 (value!217770 token!484)))))

(declare-fun b!4036595 () Bool)

(declare-fun inv!17 (TokenValue!7147) Bool)

(assert (=> b!4036595 (= e!2504681 (inv!17 (value!217770 token!484)))))

(assert (= (and d!1196182 c!697172) b!4036594))

(assert (= (and d!1196182 (not c!697172)) b!4036593))

(assert (= (and b!4036593 c!697173) b!4036595))

(assert (= (and b!4036593 (not c!697173)) b!4036592))

(assert (= (and b!4036592 (not res!1643828)) b!4036591))

(declare-fun m!4630947 () Bool)

(assert (=> b!4036591 m!4630947))

(declare-fun m!4630949 () Bool)

(assert (=> b!4036594 m!4630949))

(declare-fun m!4630951 () Bool)

(assert (=> b!4036595 m!4630951))

(assert (=> b!4036088 d!1196182))

(declare-fun d!1196184 () Bool)

(declare-fun lt!1436101 () Int)

(assert (=> d!1196184 (>= lt!1436101 0)))

(declare-fun e!2504682 () Int)

(assert (=> d!1196184 (= lt!1436101 e!2504682)))

(declare-fun c!697174 () Bool)

(assert (=> d!1196184 (= c!697174 (is-Nil!43222 (originalCharacters!7517 token!484)))))

(assert (=> d!1196184 (= (size!32308 (originalCharacters!7517 token!484)) lt!1436101)))

(declare-fun b!4036596 () Bool)

(assert (=> b!4036596 (= e!2504682 0)))

(declare-fun b!4036597 () Bool)

(assert (=> b!4036597 (= e!2504682 (+ 1 (size!32308 (t!334587 (originalCharacters!7517 token!484)))))))

(assert (= (and d!1196184 c!697174) b!4036596))

(assert (= (and d!1196184 (not c!697174)) b!4036597))

(declare-fun m!4630953 () Bool)

(assert (=> b!4036597 m!4630953))

(assert (=> b!4036108 d!1196184))

(declare-fun b!4036602 () Bool)

(declare-fun e!2504685 () Bool)

(declare-fun tp!1226141 () Bool)

(assert (=> b!4036602 (= e!2504685 (and tp_is_empty!20615 tp!1226141))))

(assert (=> b!4036106 (= tp!1226090 e!2504685)))

(assert (= (and b!4036106 (is-Cons!43222 (t!334587 newSuffixResult!27))) b!4036602))

(declare-fun b!4036616 () Bool)

(declare-fun e!2504688 () Bool)

(declare-fun tp!1226154 () Bool)

(declare-fun tp!1226153 () Bool)

(assert (=> b!4036616 (= e!2504688 (and tp!1226154 tp!1226153))))

(assert (=> b!4036099 (= tp!1226095 e!2504688)))

(declare-fun b!4036613 () Bool)

(assert (=> b!4036613 (= e!2504688 tp_is_empty!20615)))

(declare-fun b!4036615 () Bool)

(declare-fun tp!1226156 () Bool)

(assert (=> b!4036615 (= e!2504688 tp!1226156)))

(declare-fun b!4036614 () Bool)

(declare-fun tp!1226155 () Bool)

(declare-fun tp!1226152 () Bool)

(assert (=> b!4036614 (= e!2504688 (and tp!1226155 tp!1226152))))

(assert (= (and b!4036099 (is-ElementMatch!11822 (regex!6917 (h!48644 rules!2999)))) b!4036613))

(assert (= (and b!4036099 (is-Concat!18970 (regex!6917 (h!48644 rules!2999)))) b!4036614))

(assert (= (and b!4036099 (is-Star!11822 (regex!6917 (h!48644 rules!2999)))) b!4036615))

(assert (= (and b!4036099 (is-Union!11822 (regex!6917 (h!48644 rules!2999)))) b!4036616))

(declare-fun b!4036617 () Bool)

(declare-fun e!2504689 () Bool)

(declare-fun tp!1226157 () Bool)

(assert (=> b!4036617 (= e!2504689 (and tp_is_empty!20615 tp!1226157))))

(assert (=> b!4036105 (= tp!1226093 e!2504689)))

(assert (= (and b!4036105 (is-Cons!43222 (t!334587 suffixResult!105))) b!4036617))

(declare-fun b!4036618 () Bool)

(declare-fun e!2504690 () Bool)

(declare-fun tp!1226158 () Bool)

(assert (=> b!4036618 (= e!2504690 (and tp_is_empty!20615 tp!1226158))))

(assert (=> b!4036103 (= tp!1226086 e!2504690)))

(assert (= (and b!4036103 (is-Cons!43222 (t!334587 suffix!1299))) b!4036618))

(declare-fun b!4036619 () Bool)

(declare-fun e!2504691 () Bool)

(declare-fun tp!1226159 () Bool)

(assert (=> b!4036619 (= e!2504691 (and tp_is_empty!20615 tp!1226159))))

(assert (=> b!4036088 (= tp!1226089 e!2504691)))

(assert (= (and b!4036088 (is-Cons!43222 (originalCharacters!7517 token!484))) b!4036619))

(declare-fun b!4036630 () Bool)

(declare-fun b_free!112465 () Bool)

(declare-fun b_next!113169 () Bool)

(assert (=> b!4036630 (= b_free!112465 (not b_next!113169))))

(declare-fun tb!242493 () Bool)

(declare-fun t!334606 () Bool)

(assert (=> (and b!4036630 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) t!334606) tb!242493))

(declare-fun result!293952 () Bool)

(assert (= result!293952 result!293936))

(assert (=> d!1196030 t!334606))

(declare-fun b_and!310199 () Bool)

(declare-fun tp!1226170 () Bool)

(assert (=> b!4036630 (= tp!1226170 (and (=> t!334606 result!293952) b_and!310199))))

(declare-fun b_free!112467 () Bool)

(declare-fun b_next!113171 () Bool)

(assert (=> b!4036630 (= b_free!112467 (not b_next!113171))))

(declare-fun tb!242495 () Bool)

(declare-fun t!334608 () Bool)

(assert (=> (and b!4036630 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) t!334608) tb!242495))

(declare-fun result!293954 () Bool)

(assert (= result!293954 result!293930))

(assert (=> b!4036215 t!334608))

(assert (=> d!1196070 t!334608))

(declare-fun tb!242497 () Bool)

(declare-fun t!334610 () Bool)

(assert (=> (and b!4036630 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) t!334610) tb!242497))

(declare-fun result!293956 () Bool)

(assert (= result!293956 result!293942))

(assert (=> d!1196130 t!334610))

(declare-fun tp!1226171 () Bool)

(declare-fun b_and!310201 () Bool)

(assert (=> b!4036630 (= tp!1226171 (and (=> t!334608 result!293954) (=> t!334610 result!293956) b_and!310201))))

(declare-fun e!2504700 () Bool)

(assert (=> b!4036630 (= e!2504700 (and tp!1226170 tp!1226171))))

(declare-fun b!4036629 () Bool)

(declare-fun tp!1226168 () Bool)

(declare-fun e!2504702 () Bool)

(assert (=> b!4036629 (= e!2504702 (and tp!1226168 (inv!57750 (tag!7777 (h!48644 (t!334589 rules!2999)))) (inv!57753 (transformation!6917 (h!48644 (t!334589 rules!2999)))) e!2504700))))

(declare-fun b!4036628 () Bool)

(declare-fun e!2504701 () Bool)

(declare-fun tp!1226169 () Bool)

(assert (=> b!4036628 (= e!2504701 (and e!2504702 tp!1226169))))

(assert (=> b!4036107 (= tp!1226084 e!2504701)))

(assert (= b!4036629 b!4036630))

(assert (= b!4036628 b!4036629))

(assert (= (and b!4036107 (is-Cons!43224 (t!334589 rules!2999))) b!4036628))

(declare-fun m!4630955 () Bool)

(assert (=> b!4036629 m!4630955))

(declare-fun m!4630957 () Bool)

(assert (=> b!4036629 m!4630957))

(declare-fun b!4036634 () Bool)

(declare-fun e!2504704 () Bool)

(declare-fun tp!1226174 () Bool)

(declare-fun tp!1226173 () Bool)

(assert (=> b!4036634 (= e!2504704 (and tp!1226174 tp!1226173))))

(assert (=> b!4036091 (= tp!1226091 e!2504704)))

(declare-fun b!4036631 () Bool)

(assert (=> b!4036631 (= e!2504704 tp_is_empty!20615)))

(declare-fun b!4036633 () Bool)

(declare-fun tp!1226176 () Bool)

(assert (=> b!4036633 (= e!2504704 tp!1226176)))

(declare-fun b!4036632 () Bool)

(declare-fun tp!1226175 () Bool)

(declare-fun tp!1226172 () Bool)

(assert (=> b!4036632 (= e!2504704 (and tp!1226175 tp!1226172))))

(assert (= (and b!4036091 (is-ElementMatch!11822 (regex!6917 (rule!9985 token!484)))) b!4036631))

(assert (= (and b!4036091 (is-Concat!18970 (regex!6917 (rule!9985 token!484)))) b!4036632))

(assert (= (and b!4036091 (is-Star!11822 (regex!6917 (rule!9985 token!484)))) b!4036633))

(assert (= (and b!4036091 (is-Union!11822 (regex!6917 (rule!9985 token!484)))) b!4036634))

(declare-fun b!4036635 () Bool)

(declare-fun e!2504705 () Bool)

(declare-fun tp!1226177 () Bool)

(assert (=> b!4036635 (= e!2504705 (and tp_is_empty!20615 tp!1226177))))

(assert (=> b!4036086 (= tp!1226092 e!2504705)))

(assert (= (and b!4036086 (is-Cons!43222 (t!334587 prefix!494))) b!4036635))

(declare-fun b!4036636 () Bool)

(declare-fun e!2504706 () Bool)

(declare-fun tp!1226178 () Bool)

(assert (=> b!4036636 (= e!2504706 (and tp_is_empty!20615 tp!1226178))))

(assert (=> b!4036092 (= tp!1226094 e!2504706)))

(assert (= (and b!4036092 (is-Cons!43222 (t!334587 newSuffix!27))) b!4036636))

(declare-fun b_lambda!117775 () Bool)

(assert (= b_lambda!117771 (or (and b!4036083 b_free!112451) (and b!4036114 b_free!112455 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 token!484))))) (and b!4036630 b_free!112467 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 token!484))))) b_lambda!117775)))

(declare-fun b_lambda!117777 () Bool)

(assert (= b_lambda!117767 (or (and b!4036083 b_free!112451) (and b!4036114 b_free!112455 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 token!484))))) (and b!4036630 b_free!112467 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 token!484))))) b_lambda!117777)))

(declare-fun b_lambda!117779 () Bool)

(assert (= b_lambda!117769 (or (and b!4036083 b_free!112449) (and b!4036114 b_free!112453 (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) (and b!4036630 b_free!112465 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) b_lambda!117779)))

(push 1)

(assert (not d!1196058))

(assert (not b!4036349))

(assert (not b!4036459))

(assert (not b!4036347))

(assert (not b!4036348))

(assert (not d!1196028))

(assert (not b_next!113155))

(assert (not d!1196014))

(assert (not d!1196130))

(assert (not b!4036508))

(assert (not d!1196134))

(assert (not b!4036221))

(assert (not d!1196158))

(assert (not b!4036629))

(assert (not d!1196100))

(assert (not b!4036485))

(assert (not b!4036519))

(assert (not b!4036434))

(assert (not d!1196124))

(assert (not b!4036616))

(assert (not b!4036452))

(assert (not b_lambda!117777))

(assert (not b!4036483))

(assert (not d!1196136))

(assert (not b!4036497))

(assert (not b!4036379))

(assert (not b!4036560))

(assert (not b!4036572))

(assert (not d!1196172))

(assert (not b!4036509))

(assert (not b!4036636))

(assert (not b!4036594))

(assert (not b!4036444))

(assert (not b!4036523))

(assert (not d!1196128))

(assert (not d!1196046))

(assert (not d!1196140))

(assert (not d!1196138))

(assert (not b!4036575))

(assert (not b!4036634))

(assert (not b!4036447))

(assert (not b!4036437))

(assert (not b!4036466))

(assert (not b_lambda!117773))

(assert (not d!1196118))

(assert (not b!4036484))

(assert (not b!4036482))

(assert (not d!1196152))

(assert (not b!4036471))

(assert (not bm!287132))

(assert b_and!310197)

(assert b_and!310199)

(assert (not b!4036381))

(assert (not b!4036448))

(assert (not b!4036504))

(assert (not b!4036433))

(assert (not b!4036435))

(assert (not b!4036463))

(assert (not b!4036489))

(assert (not b_next!113157))

(assert (not b!4036479))

(assert (not d!1196096))

(assert (not b!4036618))

(assert (not b!4036580))

(assert (not b!4036458))

(assert (not b!4036260))

(assert (not b!4036555))

(assert (not d!1196170))

(assert (not d!1196072))

(assert (not b!4036262))

(assert (not tb!242481))

(assert (not b!4036236))

(assert (not d!1196068))

(assert (not b!4036248))

(assert (not b!4036505))

(assert (not b!4036617))

(assert (not d!1196180))

(assert (not b!4036451))

(assert (not d!1196008))

(assert (not d!1196010))

(assert (not b!4036619))

(assert (not b!4036499))

(assert (not d!1196156))

(assert (not b!4036455))

(assert b_and!310195)

(assert (not d!1196070))

(assert (not b!4036261))

(assert (not b!4036635))

(assert (not d!1196108))

(assert (not d!1196144))

(assert (not b!4036632))

(assert (not b!4036481))

(assert (not d!1196048))

(assert (not b!4036346))

(assert (not d!1196176))

(assert b_and!310187)

(assert (not b!4036350))

(assert (not tb!242489))

(assert (not b!4036472))

(assert (not b!4036469))

(assert (not d!1196044))

(assert (not d!1196012))

(assert (not d!1196160))

(assert (not b!4036431))

(assert (not d!1196164))

(assert (not b!4036566))

(assert (not b!4036498))

(assert (not b!4036561))

(assert (not b!4036579))

(assert (not b!4036432))

(assert (not d!1196174))

(assert (not b!4036216))

(assert (not bm!287135))

(assert (not b!4036439))

(assert (not b!4036456))

(assert tp_is_empty!20615)

(assert (not b!4036595))

(assert (not b_lambda!117779))

(assert b_and!310189)

(assert (not b!4036478))

(assert (not d!1196120))

(assert (not tb!242485))

(assert (not b!4036344))

(assert (not b!4036573))

(assert (not b_next!113159))

(assert (not b_next!113171))

(assert (not b!4036352))

(assert (not b_next!113153))

(assert b_and!310201)

(assert (not b!4036232))

(assert (not b!4036512))

(assert (not b!4036591))

(assert (not b!4036450))

(assert (not b!4036231))

(assert (not b!4036241))

(assert (not b!4036480))

(assert (not b!4036633))

(assert (not b!4036602))

(assert (not b_next!113169))

(assert (not b!4036502))

(assert (not d!1196132))

(assert (not b!4036462))

(assert (not bm!287131))

(assert (not d!1196110))

(assert (not b!4036628))

(assert (not b!4036215))

(assert (not d!1196104))

(assert (not b!4036615))

(assert (not d!1196154))

(assert (not b!4036558))

(assert (not b!4036570))

(assert (not b!4036597))

(assert (not b!4036467))

(assert (not d!1196126))

(assert (not b!4036522))

(assert (not b!4036377))

(assert (not b!4036487))

(assert (not b!4036494))

(assert (not b!4036250))

(assert (not b!4036578))

(assert (not b!4036436))

(assert (not b!4036441))

(assert (not d!1196122))

(assert (not b!4036351))

(assert (not b!4036493))

(assert (not b!4036454))

(assert (not d!1196166))

(assert (not d!1196032))

(assert (not d!1196016))

(assert (not b!4036490))

(assert (not b!4036446))

(assert (not b_lambda!117775))

(assert (not d!1196116))

(assert (not b!4036442))

(assert (not b!4036568))

(assert (not b!4036443))

(assert (not d!1196142))

(assert (not b!4036524))

(assert (not b!4036614))

(assert (not b!4036513))

(assert (not b!4036569))

(assert (not b!4036563))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!113155))

(assert (not b_next!113157))

(assert b_and!310195)

(assert b_and!310187)

(assert b_and!310189)

(assert (not b_next!113169))

(assert b_and!310197)

(assert b_and!310199)

(assert (not b_next!113159))

(assert (not b_next!113171))

(assert (not b_next!113153))

(assert b_and!310201)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4036845 () Bool)

(declare-fun e!2504822 () List!43346)

(declare-fun list!16091 (IArray!26261) List!43346)

(assert (=> b!4036845 (= e!2504822 (list!16091 (xs!16434 (c!697105 (charsOf!4733 token!484)))))))

(declare-fun b!4036844 () Bool)

(declare-fun e!2504821 () List!43346)

(assert (=> b!4036844 (= e!2504821 e!2504822)))

(declare-fun c!697205 () Bool)

(assert (=> b!4036844 (= c!697205 (is-Leaf!20294 (c!697105 (charsOf!4733 token!484))))))

(declare-fun b!4036846 () Bool)

(assert (=> b!4036846 (= e!2504822 (++!11319 (list!16089 (left!32553 (c!697105 (charsOf!4733 token!484)))) (list!16089 (right!32883 (c!697105 (charsOf!4733 token!484))))))))

(declare-fun d!1196270 () Bool)

(declare-fun c!697204 () Bool)

(assert (=> d!1196270 (= c!697204 (is-Empty!13128 (c!697105 (charsOf!4733 token!484))))))

(assert (=> d!1196270 (= (list!16089 (c!697105 (charsOf!4733 token!484))) e!2504821)))

(declare-fun b!4036843 () Bool)

(assert (=> b!4036843 (= e!2504821 Nil!43222)))

(assert (= (and d!1196270 c!697204) b!4036843))

(assert (= (and d!1196270 (not c!697204)) b!4036844))

(assert (= (and b!4036844 c!697205) b!4036845))

(assert (= (and b!4036844 (not c!697205)) b!4036846))

(declare-fun m!4631241 () Bool)

(assert (=> b!4036845 m!4631241))

(declare-fun m!4631243 () Bool)

(assert (=> b!4036846 m!4631243))

(declare-fun m!4631245 () Bool)

(assert (=> b!4036846 m!4631245))

(assert (=> b!4036846 m!4631243))

(assert (=> b!4036846 m!4631245))

(declare-fun m!4631247 () Bool)

(assert (=> b!4036846 m!4631247))

(assert (=> d!1196068 d!1196270))

(declare-fun d!1196272 () Bool)

(declare-fun e!2504824 () Bool)

(assert (=> d!1196272 e!2504824))

(declare-fun res!1643933 () Bool)

(assert (=> d!1196272 (=> res!1643933 e!2504824)))

(declare-fun lt!1436172 () Bool)

(assert (=> d!1196272 (= res!1643933 (not lt!1436172))))

(declare-fun e!2504825 () Bool)

(assert (=> d!1196272 (= lt!1436172 e!2504825)))

(declare-fun res!1643931 () Bool)

(assert (=> d!1196272 (=> res!1643931 e!2504825)))

(assert (=> d!1196272 (= res!1643931 (is-Nil!43222 (tail!6280 lt!1435816)))))

(assert (=> d!1196272 (= (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435822)) lt!1436172)))

(declare-fun b!4036847 () Bool)

(declare-fun e!2504823 () Bool)

(assert (=> b!4036847 (= e!2504825 e!2504823)))

(declare-fun res!1643932 () Bool)

(assert (=> b!4036847 (=> (not res!1643932) (not e!2504823))))

(assert (=> b!4036847 (= res!1643932 (not (is-Nil!43222 (tail!6280 lt!1435822))))))

(declare-fun b!4036849 () Bool)

(assert (=> b!4036849 (= e!2504823 (isPrefix!4004 (tail!6280 (tail!6280 lt!1435816)) (tail!6280 (tail!6280 lt!1435822))))))

(declare-fun b!4036848 () Bool)

(declare-fun res!1643930 () Bool)

(assert (=> b!4036848 (=> (not res!1643930) (not e!2504823))))

(assert (=> b!4036848 (= res!1643930 (= (head!8548 (tail!6280 lt!1435816)) (head!8548 (tail!6280 lt!1435822))))))

(declare-fun b!4036850 () Bool)

(assert (=> b!4036850 (= e!2504824 (>= (size!32308 (tail!6280 lt!1435822)) (size!32308 (tail!6280 lt!1435816))))))

(assert (= (and d!1196272 (not res!1643931)) b!4036847))

(assert (= (and b!4036847 res!1643932) b!4036848))

(assert (= (and b!4036848 res!1643930) b!4036849))

(assert (= (and d!1196272 (not res!1643933)) b!4036850))

(assert (=> b!4036849 m!4630463))

(declare-fun m!4631249 () Bool)

(assert (=> b!4036849 m!4631249))

(assert (=> b!4036849 m!4630465))

(declare-fun m!4631251 () Bool)

(assert (=> b!4036849 m!4631251))

(assert (=> b!4036849 m!4631249))

(assert (=> b!4036849 m!4631251))

(declare-fun m!4631253 () Bool)

(assert (=> b!4036849 m!4631253))

(assert (=> b!4036848 m!4630463))

(declare-fun m!4631255 () Bool)

(assert (=> b!4036848 m!4631255))

(assert (=> b!4036848 m!4630465))

(declare-fun m!4631257 () Bool)

(assert (=> b!4036848 m!4631257))

(assert (=> b!4036850 m!4630465))

(declare-fun m!4631259 () Bool)

(assert (=> b!4036850 m!4631259))

(assert (=> b!4036850 m!4630463))

(declare-fun m!4631261 () Bool)

(assert (=> b!4036850 m!4631261))

(assert (=> b!4036261 d!1196272))

(declare-fun d!1196274 () Bool)

(assert (=> d!1196274 (= (tail!6280 lt!1435816) (t!334587 lt!1435816))))

(assert (=> b!4036261 d!1196274))

(declare-fun d!1196276 () Bool)

(assert (=> d!1196276 (= (tail!6280 lt!1435822) (t!334587 lt!1435822))))

(assert (=> b!4036261 d!1196276))

(declare-fun d!1196278 () Bool)

(assert (=> d!1196278 (= (head!8548 lt!1435831) (h!48642 lt!1435831))))

(assert (=> b!4036522 d!1196278))

(declare-fun d!1196280 () Bool)

(declare-fun charsToInt!0 (List!43347) (_ BitVec 32))

(assert (=> d!1196280 (= (inv!16 (value!217770 token!484)) (= (charsToInt!0 (text!50476 (value!217770 token!484))) (value!217761 (value!217770 token!484))))))

(declare-fun bs!590587 () Bool)

(assert (= bs!590587 d!1196280))

(declare-fun m!4631263 () Bool)

(assert (=> bs!590587 m!4631263))

(assert (=> b!4036594 d!1196280))

(declare-fun d!1196282 () Bool)

(declare-fun lt!1436173 () Bool)

(assert (=> d!1196282 (= lt!1436173 (set.member (rule!9985 (_1!24286 (get!14182 lt!1436067))) (content!6570 rules!2999)))))

(declare-fun e!2504827 () Bool)

(assert (=> d!1196282 (= lt!1436173 e!2504827)))

(declare-fun res!1643934 () Bool)

(assert (=> d!1196282 (=> (not res!1643934) (not e!2504827))))

(assert (=> d!1196282 (= res!1643934 (is-Cons!43224 rules!2999))))

(assert (=> d!1196282 (= (contains!8583 rules!2999 (rule!9985 (_1!24286 (get!14182 lt!1436067)))) lt!1436173)))

(declare-fun b!4036851 () Bool)

(declare-fun e!2504826 () Bool)

(assert (=> b!4036851 (= e!2504827 e!2504826)))

(declare-fun res!1643935 () Bool)

(assert (=> b!4036851 (=> res!1643935 e!2504826)))

(assert (=> b!4036851 (= res!1643935 (= (h!48644 rules!2999) (rule!9985 (_1!24286 (get!14182 lt!1436067)))))))

(declare-fun b!4036852 () Bool)

(assert (=> b!4036852 (= e!2504826 (contains!8583 (t!334589 rules!2999) (rule!9985 (_1!24286 (get!14182 lt!1436067)))))))

(assert (= (and d!1196282 res!1643934) b!4036851))

(assert (= (and b!4036851 (not res!1643935)) b!4036852))

(assert (=> d!1196282 m!4630805))

(declare-fun m!4631265 () Bool)

(assert (=> d!1196282 m!4631265))

(declare-fun m!4631267 () Bool)

(assert (=> b!4036852 m!4631267))

(assert (=> b!4036485 d!1196282))

(declare-fun d!1196284 () Bool)

(assert (=> d!1196284 (= (get!14182 lt!1436067) (v!39726 lt!1436067))))

(assert (=> b!4036485 d!1196284))

(declare-fun d!1196286 () Bool)

(declare-fun nullableFct!1161 (Regex!11822) Bool)

(assert (=> d!1196286 (= (nullable!4145 (regex!6917 (rule!9985 token!484))) (nullableFct!1161 (regex!6917 (rule!9985 token!484))))))

(declare-fun bs!590588 () Bool)

(assert (= bs!590588 d!1196286))

(declare-fun m!4631269 () Bool)

(assert (=> bs!590588 m!4631269))

(assert (=> b!4036241 d!1196286))

(declare-fun d!1196288 () Bool)

(declare-fun lt!1436174 () Int)

(assert (=> d!1196288 (>= lt!1436174 0)))

(declare-fun e!2504828 () Int)

(assert (=> d!1196288 (= lt!1436174 e!2504828)))

(declare-fun c!697206 () Bool)

(assert (=> d!1196288 (= c!697206 (is-Nil!43222 lt!1436095))))

(assert (=> d!1196288 (= (size!32308 lt!1436095) lt!1436174)))

(declare-fun b!4036853 () Bool)

(assert (=> b!4036853 (= e!2504828 0)))

(declare-fun b!4036854 () Bool)

(assert (=> b!4036854 (= e!2504828 (+ 1 (size!32308 (t!334587 lt!1436095))))))

(assert (= (and d!1196288 c!697206) b!4036853))

(assert (= (and d!1196288 (not c!697206)) b!4036854))

(declare-fun m!4631271 () Bool)

(assert (=> b!4036854 m!4631271))

(assert (=> b!4036573 d!1196288))

(assert (=> b!4036573 d!1196064))

(declare-fun d!1196290 () Bool)

(declare-fun lt!1436175 () Int)

(assert (=> d!1196290 (>= lt!1436175 0)))

(declare-fun e!2504829 () Int)

(assert (=> d!1196290 (= lt!1436175 e!2504829)))

(declare-fun c!697207 () Bool)

(assert (=> d!1196290 (= c!697207 (is-Nil!43222 lt!1435836))))

(assert (=> d!1196290 (= (size!32308 lt!1435836) lt!1436175)))

(declare-fun b!4036855 () Bool)

(assert (=> b!4036855 (= e!2504829 0)))

(declare-fun b!4036856 () Bool)

(assert (=> b!4036856 (= e!2504829 (+ 1 (size!32308 (t!334587 lt!1435836))))))

(assert (= (and d!1196290 c!697207) b!4036855))

(assert (= (and d!1196290 (not c!697207)) b!4036856))

(declare-fun m!4631273 () Bool)

(assert (=> b!4036856 m!4631273))

(assert (=> b!4036573 d!1196290))

(declare-fun d!1196292 () Bool)

(declare-fun lt!1436176 () Int)

(assert (=> d!1196292 (>= lt!1436176 0)))

(declare-fun e!2504830 () Int)

(assert (=> d!1196292 (= lt!1436176 e!2504830)))

(declare-fun c!697208 () Bool)

(assert (=> d!1196292 (= c!697208 (is-Nil!43222 (originalCharacters!7517 (_1!24286 (v!39726 lt!1435811)))))))

(assert (=> d!1196292 (= (size!32308 (originalCharacters!7517 (_1!24286 (v!39726 lt!1435811)))) lt!1436176)))

(declare-fun b!4036857 () Bool)

(assert (=> b!4036857 (= e!2504830 0)))

(declare-fun b!4036858 () Bool)

(assert (=> b!4036858 (= e!2504830 (+ 1 (size!32308 (t!334587 (originalCharacters!7517 (_1!24286 (v!39726 lt!1435811)))))))))

(assert (= (and d!1196292 c!697208) b!4036857))

(assert (= (and d!1196292 (not c!697208)) b!4036858))

(declare-fun m!4631275 () Bool)

(assert (=> b!4036858 m!4631275))

(assert (=> d!1196126 d!1196292))

(declare-fun d!1196294 () Bool)

(assert (=> d!1196294 (= (get!14182 lt!1436043) (v!39726 lt!1436043))))

(assert (=> b!4036435 d!1196294))

(declare-fun d!1196296 () Bool)

(assert (=> d!1196296 (= (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436043))))) (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043))))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436043))))))))

(declare-fun b_lambda!117795 () Bool)

(assert (=> (not b_lambda!117795) (not d!1196296)))

(declare-fun t!334633 () Bool)

(declare-fun tb!242517 () Bool)

(assert (=> (and b!4036083 (= (toValue!9449 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))) t!334633) tb!242517))

(declare-fun result!293986 () Bool)

(assert (=> tb!242517 (= result!293986 (inv!21 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043))))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436043)))))))))

(declare-fun m!4631277 () Bool)

(assert (=> tb!242517 m!4631277))

(assert (=> d!1196296 t!334633))

(declare-fun b_and!310223 () Bool)

(assert (= b_and!310187 (and (=> t!334633 result!293986) b_and!310223)))

(declare-fun t!334635 () Bool)

(declare-fun tb!242519 () Bool)

(assert (=> (and b!4036114 (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))) t!334635) tb!242519))

(declare-fun result!293988 () Bool)

(assert (= result!293988 result!293986))

(assert (=> d!1196296 t!334635))

(declare-fun b_and!310225 () Bool)

(assert (= b_and!310189 (and (=> t!334635 result!293988) b_and!310225)))

(declare-fun tb!242521 () Bool)

(declare-fun t!334637 () Bool)

(assert (=> (and b!4036630 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))) t!334637) tb!242521))

(declare-fun result!293990 () Bool)

(assert (= result!293990 result!293986))

(assert (=> d!1196296 t!334637))

(declare-fun b_and!310227 () Bool)

(assert (= b_and!310199 (and (=> t!334637 result!293990) b_and!310227)))

(assert (=> d!1196296 m!4630671))

(declare-fun m!4631279 () Bool)

(assert (=> d!1196296 m!4631279))

(assert (=> b!4036435 d!1196296))

(declare-fun d!1196298 () Bool)

(assert (=> d!1196298 (= (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436043)))) (fromListB!2339 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436043)))))))

(declare-fun bs!590589 () Bool)

(assert (= bs!590589 d!1196298))

(declare-fun m!4631281 () Bool)

(assert (=> bs!590589 m!4631281))

(assert (=> b!4036435 d!1196298))

(declare-fun d!1196300 () Bool)

(assert (=> d!1196300 (= (head!8548 lt!1435816) (h!48642 lt!1435816))))

(assert (=> b!4036568 d!1196300))

(declare-fun d!1196302 () Bool)

(assert (=> d!1196302 (= (head!8548 lt!1435829) (h!48642 lt!1435829))))

(assert (=> b!4036568 d!1196302))

(declare-fun d!1196304 () Bool)

(declare-fun lt!1436177 () Int)

(assert (=> d!1196304 (>= lt!1436177 0)))

(declare-fun e!2504832 () Int)

(assert (=> d!1196304 (= lt!1436177 e!2504832)))

(declare-fun c!697209 () Bool)

(assert (=> d!1196304 (= c!697209 (is-Nil!43222 lt!1435806))))

(assert (=> d!1196304 (= (size!32308 lt!1435806) lt!1436177)))

(declare-fun b!4036859 () Bool)

(assert (=> b!4036859 (= e!2504832 0)))

(declare-fun b!4036860 () Bool)

(assert (=> b!4036860 (= e!2504832 (+ 1 (size!32308 (t!334587 lt!1435806))))))

(assert (= (and d!1196304 c!697209) b!4036859))

(assert (= (and d!1196304 (not c!697209)) b!4036860))

(declare-fun m!4631283 () Bool)

(assert (=> b!4036860 m!4631283))

(assert (=> b!4036456 d!1196304))

(assert (=> b!4036456 d!1196064))

(declare-fun d!1196306 () Bool)

(declare-fun lt!1436178 () List!43346)

(assert (=> d!1196306 (= (++!11319 (t!334587 lt!1435816) lt!1436178) (tail!6280 lt!1435831))))

(declare-fun e!2504833 () List!43346)

(assert (=> d!1196306 (= lt!1436178 e!2504833)))

(declare-fun c!697210 () Bool)

(assert (=> d!1196306 (= c!697210 (is-Cons!43222 (t!334587 lt!1435816)))))

(assert (=> d!1196306 (>= (size!32308 (tail!6280 lt!1435831)) (size!32308 (t!334587 lt!1435816)))))

(assert (=> d!1196306 (= (getSuffix!2421 (tail!6280 lt!1435831) (t!334587 lt!1435816)) lt!1436178)))

(declare-fun b!4036861 () Bool)

(assert (=> b!4036861 (= e!2504833 (getSuffix!2421 (tail!6280 (tail!6280 lt!1435831)) (t!334587 (t!334587 lt!1435816))))))

(declare-fun b!4036862 () Bool)

(assert (=> b!4036862 (= e!2504833 (tail!6280 lt!1435831))))

(assert (= (and d!1196306 c!697210) b!4036861))

(assert (= (and d!1196306 (not c!697210)) b!4036862))

(declare-fun m!4631285 () Bool)

(assert (=> d!1196306 m!4631285))

(assert (=> d!1196306 m!4630719))

(declare-fun m!4631287 () Bool)

(assert (=> d!1196306 m!4631287))

(assert (=> d!1196306 m!4630603))

(assert (=> b!4036861 m!4630719))

(declare-fun m!4631289 () Bool)

(assert (=> b!4036861 m!4631289))

(assert (=> b!4036861 m!4631289))

(declare-fun m!4631291 () Bool)

(assert (=> b!4036861 m!4631291))

(assert (=> b!4036519 d!1196306))

(declare-fun d!1196308 () Bool)

(assert (=> d!1196308 (= (tail!6280 lt!1435831) (t!334587 lt!1435831))))

(assert (=> b!4036519 d!1196308))

(declare-fun d!1196310 () Bool)

(declare-fun lt!1436179 () Int)

(assert (=> d!1196310 (>= lt!1436179 0)))

(declare-fun e!2504834 () Int)

(assert (=> d!1196310 (= lt!1436179 e!2504834)))

(declare-fun c!697211 () Bool)

(assert (=> d!1196310 (= c!697211 (is-Nil!43222 (t!334587 suffix!1299)))))

(assert (=> d!1196310 (= (size!32308 (t!334587 suffix!1299)) lt!1436179)))

(declare-fun b!4036863 () Bool)

(assert (=> b!4036863 (= e!2504834 0)))

(declare-fun b!4036864 () Bool)

(assert (=> b!4036864 (= e!2504834 (+ 1 (size!32308 (t!334587 (t!334587 suffix!1299)))))))

(assert (= (and d!1196310 c!697211) b!4036863))

(assert (= (and d!1196310 (not c!697211)) b!4036864))

(declare-fun m!4631293 () Bool)

(assert (=> b!4036864 m!4631293))

(assert (=> b!4036248 d!1196310))

(declare-fun d!1196312 () Bool)

(assert (=> d!1196312 (= (isEmpty!25795 (originalCharacters!7517 token!484)) (is-Nil!43222 (originalCharacters!7517 token!484)))))

(assert (=> d!1196008 d!1196312))

(declare-fun d!1196314 () Bool)

(assert (=> d!1196314 (= (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043)))) (list!16089 (c!697105 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))))))

(declare-fun bs!590590 () Bool)

(assert (= bs!590590 d!1196314))

(declare-fun m!4631295 () Bool)

(assert (=> bs!590590 m!4631295))

(assert (=> b!4036439 d!1196314))

(declare-fun d!1196316 () Bool)

(declare-fun lt!1436180 () BalanceConc!25850)

(assert (=> d!1196316 (= (list!16087 lt!1436180) (originalCharacters!7517 (_1!24286 (get!14182 lt!1436043))))))

(assert (=> d!1196316 (= lt!1436180 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043))))) (value!217770 (_1!24286 (get!14182 lt!1436043)))))))

(assert (=> d!1196316 (= (charsOf!4733 (_1!24286 (get!14182 lt!1436043))) lt!1436180)))

(declare-fun b_lambda!117797 () Bool)

(assert (=> (not b_lambda!117797) (not d!1196316)))

(declare-fun t!334639 () Bool)

(declare-fun tb!242523 () Bool)

(assert (=> (and b!4036083 (= (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))) t!334639) tb!242523))

(declare-fun b!4036865 () Bool)

(declare-fun e!2504835 () Bool)

(declare-fun tp!1226223 () Bool)

(assert (=> b!4036865 (= e!2504835 (and (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043))))) (value!217770 (_1!24286 (get!14182 lt!1436043)))))) tp!1226223))))

(declare-fun result!293992 () Bool)

(assert (=> tb!242523 (= result!293992 (and (inv!57758 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043))))) (value!217770 (_1!24286 (get!14182 lt!1436043))))) e!2504835))))

(assert (= tb!242523 b!4036865))

(declare-fun m!4631297 () Bool)

(assert (=> b!4036865 m!4631297))

(declare-fun m!4631299 () Bool)

(assert (=> tb!242523 m!4631299))

(assert (=> d!1196316 t!334639))

(declare-fun b_and!310229 () Bool)

(assert (= b_and!310195 (and (=> t!334639 result!293992) b_and!310229)))

(declare-fun tb!242525 () Bool)

(declare-fun t!334641 () Bool)

(assert (=> (and b!4036114 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))) t!334641) tb!242525))

(declare-fun result!293994 () Bool)

(assert (= result!293994 result!293992))

(assert (=> d!1196316 t!334641))

(declare-fun b_and!310231 () Bool)

(assert (= b_and!310197 (and (=> t!334641 result!293994) b_and!310231)))

(declare-fun t!334643 () Bool)

(declare-fun tb!242527 () Bool)

(assert (=> (and b!4036630 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))) t!334643) tb!242527))

(declare-fun result!293996 () Bool)

(assert (= result!293996 result!293992))

(assert (=> d!1196316 t!334643))

(declare-fun b_and!310233 () Bool)

(assert (= b_and!310201 (and (=> t!334643 result!293996) b_and!310233)))

(declare-fun m!4631301 () Bool)

(assert (=> d!1196316 m!4631301))

(declare-fun m!4631303 () Bool)

(assert (=> d!1196316 m!4631303))

(assert (=> b!4036439 d!1196316))

(assert (=> b!4036439 d!1196294))

(declare-fun d!1196318 () Bool)

(declare-fun res!1643940 () Bool)

(declare-fun e!2504840 () Bool)

(assert (=> d!1196318 (=> res!1643940 e!2504840)))

(assert (=> d!1196318 (= res!1643940 (is-Nil!43224 rules!2999))))

(assert (=> d!1196318 (= (noDuplicateTag!2688 thiss!21717 rules!2999 Nil!43228) e!2504840)))

(declare-fun b!4036870 () Bool)

(declare-fun e!2504841 () Bool)

(assert (=> b!4036870 (= e!2504840 e!2504841)))

(declare-fun res!1643941 () Bool)

(assert (=> b!4036870 (=> (not res!1643941) (not e!2504841))))

(declare-fun contains!8585 (List!43352 String!49455) Bool)

(assert (=> b!4036870 (= res!1643941 (not (contains!8585 Nil!43228 (tag!7777 (h!48644 rules!2999)))))))

(declare-fun b!4036871 () Bool)

(assert (=> b!4036871 (= e!2504841 (noDuplicateTag!2688 thiss!21717 (t!334589 rules!2999) (Cons!43228 (tag!7777 (h!48644 rules!2999)) Nil!43228)))))

(assert (= (and d!1196318 (not res!1643940)) b!4036870))

(assert (= (and b!4036870 res!1643941) b!4036871))

(declare-fun m!4631305 () Bool)

(assert (=> b!4036870 m!4631305))

(declare-fun m!4631307 () Bool)

(assert (=> b!4036871 m!4631307))

(assert (=> b!4036502 d!1196318))

(declare-fun d!1196320 () Bool)

(declare-fun e!2504843 () Bool)

(assert (=> d!1196320 e!2504843))

(declare-fun res!1643945 () Bool)

(assert (=> d!1196320 (=> res!1643945 e!2504843)))

(declare-fun lt!1436181 () Bool)

(assert (=> d!1196320 (= res!1643945 (not lt!1436181))))

(declare-fun e!2504844 () Bool)

(assert (=> d!1196320 (= lt!1436181 e!2504844)))

(declare-fun res!1643943 () Bool)

(assert (=> d!1196320 (=> res!1643943 e!2504844)))

(assert (=> d!1196320 (= res!1643943 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196320 (= (isPrefix!4004 lt!1435816 (++!11319 prefix!494 suffix!1299)) lt!1436181)))

(declare-fun b!4036872 () Bool)

(declare-fun e!2504842 () Bool)

(assert (=> b!4036872 (= e!2504844 e!2504842)))

(declare-fun res!1643944 () Bool)

(assert (=> b!4036872 (=> (not res!1643944) (not e!2504842))))

(assert (=> b!4036872 (= res!1643944 (not (is-Nil!43222 (++!11319 prefix!494 suffix!1299))))))

(declare-fun b!4036874 () Bool)

(assert (=> b!4036874 (= e!2504842 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 (++!11319 prefix!494 suffix!1299))))))

(declare-fun b!4036873 () Bool)

(declare-fun res!1643942 () Bool)

(assert (=> b!4036873 (=> (not res!1643942) (not e!2504842))))

(assert (=> b!4036873 (= res!1643942 (= (head!8548 lt!1435816) (head!8548 (++!11319 prefix!494 suffix!1299))))))

(declare-fun b!4036875 () Bool)

(assert (=> b!4036875 (= e!2504843 (>= (size!32308 (++!11319 prefix!494 suffix!1299)) (size!32308 lt!1435816)))))

(assert (= (and d!1196320 (not res!1643943)) b!4036872))

(assert (= (and b!4036872 res!1643944) b!4036873))

(assert (= (and b!4036873 res!1643942) b!4036874))

(assert (= (and d!1196320 (not res!1643945)) b!4036875))

(assert (=> b!4036874 m!4630463))

(assert (=> b!4036874 m!4630267))

(declare-fun m!4631309 () Bool)

(assert (=> b!4036874 m!4631309))

(assert (=> b!4036874 m!4630463))

(assert (=> b!4036874 m!4631309))

(declare-fun m!4631311 () Bool)

(assert (=> b!4036874 m!4631311))

(assert (=> b!4036873 m!4630469))

(assert (=> b!4036873 m!4630267))

(declare-fun m!4631313 () Bool)

(assert (=> b!4036873 m!4631313))

(assert (=> b!4036875 m!4630267))

(declare-fun m!4631315 () Bool)

(assert (=> b!4036875 m!4631315))

(assert (=> b!4036875 m!4630193))

(assert (=> d!1196172 d!1196320))

(assert (=> d!1196172 d!1196142))

(declare-fun d!1196322 () Bool)

(assert (=> d!1196322 (isPrefix!4004 lt!1435816 (++!11319 prefix!494 suffix!1299))))

(assert (=> d!1196322 true))

(declare-fun _$58!569 () Unit!62414)

(assert (=> d!1196322 (= (choose!24451 lt!1435816 prefix!494 suffix!1299) _$58!569)))

(declare-fun bs!590591 () Bool)

(assert (= bs!590591 d!1196322))

(assert (=> bs!590591 m!4630267))

(assert (=> bs!590591 m!4630267))

(assert (=> bs!590591 m!4630929))

(assert (=> d!1196172 d!1196322))

(assert (=> d!1196172 d!1196178))

(declare-fun b!4036878 () Bool)

(declare-fun e!2504846 () List!43346)

(assert (=> b!4036878 (= e!2504846 (list!16091 (xs!16434 (c!697105 (charsOf!4733 (_1!24286 (v!39726 lt!1435811)))))))))

(declare-fun b!4036877 () Bool)

(declare-fun e!2504845 () List!43346)

(assert (=> b!4036877 (= e!2504845 e!2504846)))

(declare-fun c!697213 () Bool)

(assert (=> b!4036877 (= c!697213 (is-Leaf!20294 (c!697105 (charsOf!4733 (_1!24286 (v!39726 lt!1435811))))))))

(declare-fun b!4036879 () Bool)

(assert (=> b!4036879 (= e!2504846 (++!11319 (list!16089 (left!32553 (c!697105 (charsOf!4733 (_1!24286 (v!39726 lt!1435811)))))) (list!16089 (right!32883 (c!697105 (charsOf!4733 (_1!24286 (v!39726 lt!1435811))))))))))

(declare-fun d!1196324 () Bool)

(declare-fun c!697212 () Bool)

(assert (=> d!1196324 (= c!697212 (is-Empty!13128 (c!697105 (charsOf!4733 (_1!24286 (v!39726 lt!1435811))))))))

(assert (=> d!1196324 (= (list!16089 (c!697105 (charsOf!4733 (_1!24286 (v!39726 lt!1435811))))) e!2504845)))

(declare-fun b!4036876 () Bool)

(assert (=> b!4036876 (= e!2504845 Nil!43222)))

(assert (= (and d!1196324 c!697212) b!4036876))

(assert (= (and d!1196324 (not c!697212)) b!4036877))

(assert (= (and b!4036877 c!697213) b!4036878))

(assert (= (and b!4036877 (not c!697213)) b!4036879))

(declare-fun m!4631317 () Bool)

(assert (=> b!4036878 m!4631317))

(declare-fun m!4631319 () Bool)

(assert (=> b!4036879 m!4631319))

(declare-fun m!4631321 () Bool)

(assert (=> b!4036879 m!4631321))

(assert (=> b!4036879 m!4631319))

(assert (=> b!4036879 m!4631321))

(declare-fun m!4631323 () Bool)

(assert (=> b!4036879 m!4631323))

(assert (=> d!1196134 d!1196324))

(declare-fun d!1196326 () Bool)

(declare-fun c!697216 () Bool)

(assert (=> d!1196326 (= c!697216 (is-Nil!43222 lt!1436095))))

(declare-fun e!2504849 () (Set C!23830))

(assert (=> d!1196326 (= (content!6568 lt!1436095) e!2504849)))

(declare-fun b!4036884 () Bool)

(assert (=> b!4036884 (= e!2504849 (as set.empty (Set C!23830)))))

(declare-fun b!4036885 () Bool)

(assert (=> b!4036885 (= e!2504849 (set.union (set.insert (h!48642 lt!1436095) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1436095))))))

(assert (= (and d!1196326 c!697216) b!4036884))

(assert (= (and d!1196326 (not c!697216)) b!4036885))

(declare-fun m!4631325 () Bool)

(assert (=> b!4036885 m!4631325))

(declare-fun m!4631327 () Bool)

(assert (=> b!4036885 m!4631327))

(assert (=> d!1196174 d!1196326))

(declare-fun d!1196328 () Bool)

(declare-fun c!697217 () Bool)

(assert (=> d!1196328 (= c!697217 (is-Nil!43222 lt!1435816))))

(declare-fun e!2504850 () (Set C!23830))

(assert (=> d!1196328 (= (content!6568 lt!1435816) e!2504850)))

(declare-fun b!4036886 () Bool)

(assert (=> b!4036886 (= e!2504850 (as set.empty (Set C!23830)))))

(declare-fun b!4036887 () Bool)

(assert (=> b!4036887 (= e!2504850 (set.union (set.insert (h!48642 lt!1435816) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1435816))))))

(assert (= (and d!1196328 c!697217) b!4036886))

(assert (= (and d!1196328 (not c!697217)) b!4036887))

(declare-fun m!4631329 () Bool)

(assert (=> b!4036887 m!4631329))

(declare-fun m!4631331 () Bool)

(assert (=> b!4036887 m!4631331))

(assert (=> d!1196174 d!1196328))

(declare-fun d!1196330 () Bool)

(declare-fun c!697218 () Bool)

(assert (=> d!1196330 (= c!697218 (is-Nil!43222 lt!1435836))))

(declare-fun e!2504851 () (Set C!23830))

(assert (=> d!1196330 (= (content!6568 lt!1435836) e!2504851)))

(declare-fun b!4036888 () Bool)

(assert (=> b!4036888 (= e!2504851 (as set.empty (Set C!23830)))))

(declare-fun b!4036889 () Bool)

(assert (=> b!4036889 (= e!2504851 (set.union (set.insert (h!48642 lt!1435836) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1435836))))))

(assert (= (and d!1196330 c!697218) b!4036888))

(assert (= (and d!1196330 (not c!697218)) b!4036889))

(declare-fun m!4631333 () Bool)

(assert (=> b!4036889 m!4631333))

(declare-fun m!4631335 () Bool)

(assert (=> b!4036889 m!4631335))

(assert (=> d!1196174 d!1196330))

(declare-fun d!1196332 () Bool)

(assert (=> d!1196332 true))

(declare-fun lt!1436184 () Bool)

(assert (=> d!1196332 (= lt!1436184 (rulesValidInductive!2520 thiss!21717 rules!2999))))

(declare-fun lambda!127304 () Int)

(declare-fun forall!8369 (List!43348 Int) Bool)

(assert (=> d!1196332 (= lt!1436184 (forall!8369 rules!2999 lambda!127304))))

(assert (=> d!1196332 (= (rulesValid!2687 thiss!21717 rules!2999) lt!1436184)))

(declare-fun bs!590592 () Bool)

(assert (= bs!590592 d!1196332))

(assert (=> bs!590592 m!4630693))

(declare-fun m!4631337 () Bool)

(assert (=> bs!590592 m!4631337))

(assert (=> d!1196152 d!1196332))

(declare-fun d!1196334 () Bool)

(assert (=> d!1196334 (= (isEmpty!25798 lt!1436043) (not (is-Some!9330 lt!1436043)))))

(assert (=> d!1196072 d!1196334))

(declare-fun d!1196336 () Bool)

(declare-fun e!2504853 () Bool)

(assert (=> d!1196336 e!2504853))

(declare-fun res!1643949 () Bool)

(assert (=> d!1196336 (=> res!1643949 e!2504853)))

(declare-fun lt!1436185 () Bool)

(assert (=> d!1196336 (= res!1643949 (not lt!1436185))))

(declare-fun e!2504854 () Bool)

(assert (=> d!1196336 (= lt!1436185 e!2504854)))

(declare-fun res!1643947 () Bool)

(assert (=> d!1196336 (=> res!1643947 e!2504854)))

(assert (=> d!1196336 (= res!1643947 (is-Nil!43222 lt!1435829))))

(assert (=> d!1196336 (= (isPrefix!4004 lt!1435829 lt!1435829) lt!1436185)))

(declare-fun b!4036892 () Bool)

(declare-fun e!2504852 () Bool)

(assert (=> b!4036892 (= e!2504854 e!2504852)))

(declare-fun res!1643948 () Bool)

(assert (=> b!4036892 (=> (not res!1643948) (not e!2504852))))

(assert (=> b!4036892 (= res!1643948 (not (is-Nil!43222 lt!1435829)))))

(declare-fun b!4036894 () Bool)

(assert (=> b!4036894 (= e!2504852 (isPrefix!4004 (tail!6280 lt!1435829) (tail!6280 lt!1435829)))))

(declare-fun b!4036893 () Bool)

(declare-fun res!1643946 () Bool)

(assert (=> b!4036893 (=> (not res!1643946) (not e!2504852))))

(assert (=> b!4036893 (= res!1643946 (= (head!8548 lt!1435829) (head!8548 lt!1435829)))))

(declare-fun b!4036895 () Bool)

(assert (=> b!4036895 (= e!2504853 (>= (size!32308 lt!1435829) (size!32308 lt!1435829)))))

(assert (= (and d!1196336 (not res!1643947)) b!4036892))

(assert (= (and b!4036892 res!1643948) b!4036893))

(assert (= (and b!4036893 res!1643946) b!4036894))

(assert (= (and d!1196336 (not res!1643949)) b!4036895))

(assert (=> b!4036894 m!4630919))

(assert (=> b!4036894 m!4630919))

(assert (=> b!4036894 m!4630919))

(assert (=> b!4036894 m!4630919))

(declare-fun m!4631339 () Bool)

(assert (=> b!4036894 m!4631339))

(assert (=> b!4036893 m!4630923))

(assert (=> b!4036893 m!4630923))

(assert (=> b!4036895 m!4630679))

(assert (=> b!4036895 m!4630679))

(assert (=> d!1196072 d!1196336))

(declare-fun d!1196338 () Bool)

(assert (=> d!1196338 (isPrefix!4004 lt!1435829 lt!1435829)))

(declare-fun lt!1436186 () Unit!62414)

(assert (=> d!1196338 (= lt!1436186 (choose!24449 lt!1435829 lt!1435829))))

(assert (=> d!1196338 (= (lemmaIsPrefixRefl!2571 lt!1435829 lt!1435829) lt!1436186)))

(declare-fun bs!590593 () Bool)

(assert (= bs!590593 d!1196338))

(assert (=> bs!590593 m!4630689))

(declare-fun m!4631341 () Bool)

(assert (=> bs!590593 m!4631341))

(assert (=> d!1196072 d!1196338))

(declare-fun bs!590594 () Bool)

(declare-fun d!1196340 () Bool)

(assert (= bs!590594 (and d!1196340 d!1196332)))

(declare-fun lambda!127307 () Int)

(assert (=> bs!590594 (= lambda!127307 lambda!127304)))

(assert (=> d!1196340 true))

(declare-fun lt!1436189 () Bool)

(assert (=> d!1196340 (= lt!1436189 (forall!8369 rules!2999 lambda!127307))))

(declare-fun e!2504860 () Bool)

(assert (=> d!1196340 (= lt!1436189 e!2504860)))

(declare-fun res!1643955 () Bool)

(assert (=> d!1196340 (=> res!1643955 e!2504860)))

(assert (=> d!1196340 (= res!1643955 (not (is-Cons!43224 rules!2999)))))

(assert (=> d!1196340 (= (rulesValidInductive!2520 thiss!21717 rules!2999) lt!1436189)))

(declare-fun b!4036900 () Bool)

(declare-fun e!2504859 () Bool)

(assert (=> b!4036900 (= e!2504860 e!2504859)))

(declare-fun res!1643954 () Bool)

(assert (=> b!4036900 (=> (not res!1643954) (not e!2504859))))

(assert (=> b!4036900 (= res!1643954 (ruleValid!2847 thiss!21717 (h!48644 rules!2999)))))

(declare-fun b!4036901 () Bool)

(assert (=> b!4036901 (= e!2504859 (rulesValidInductive!2520 thiss!21717 (t!334589 rules!2999)))))

(assert (= (and d!1196340 (not res!1643955)) b!4036900))

(assert (= (and b!4036900 res!1643954) b!4036901))

(declare-fun m!4631343 () Bool)

(assert (=> d!1196340 m!4631343))

(declare-fun m!4631345 () Bool)

(assert (=> b!4036900 m!4631345))

(declare-fun m!4631347 () Bool)

(assert (=> b!4036901 m!4631347))

(assert (=> d!1196072 d!1196340))

(declare-fun b!4036905 () Bool)

(declare-fun e!2504861 () Bool)

(declare-fun lt!1436190 () List!43346)

(assert (=> b!4036905 (= e!2504861 (or (not (= (_2!24286 (get!14182 lt!1435997)) Nil!43222)) (= lt!1436190 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997)))))))))

(declare-fun b!4036904 () Bool)

(declare-fun res!1643957 () Bool)

(assert (=> b!4036904 (=> (not res!1643957) (not e!2504861))))

(assert (=> b!4036904 (= res!1643957 (= (size!32308 lt!1436190) (+ (size!32308 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))) (size!32308 (_2!24286 (get!14182 lt!1435997))))))))

(declare-fun b!4036903 () Bool)

(declare-fun e!2504862 () List!43346)

(assert (=> b!4036903 (= e!2504862 (Cons!43222 (h!48642 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))) (++!11319 (t!334587 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))) (_2!24286 (get!14182 lt!1435997)))))))

(declare-fun b!4036902 () Bool)

(assert (=> b!4036902 (= e!2504862 (_2!24286 (get!14182 lt!1435997)))))

(declare-fun d!1196342 () Bool)

(assert (=> d!1196342 e!2504861))

(declare-fun res!1643956 () Bool)

(assert (=> d!1196342 (=> (not res!1643956) (not e!2504861))))

(assert (=> d!1196342 (= res!1643956 (= (content!6568 lt!1436190) (set.union (content!6568 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))) (content!6568 (_2!24286 (get!14182 lt!1435997))))))))

(assert (=> d!1196342 (= lt!1436190 e!2504862)))

(declare-fun c!697219 () Bool)

(assert (=> d!1196342 (= c!697219 (is-Nil!43222 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))))))

(assert (=> d!1196342 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997)))) (_2!24286 (get!14182 lt!1435997))) lt!1436190)))

(assert (= (and d!1196342 c!697219) b!4036902))

(assert (= (and d!1196342 (not c!697219)) b!4036903))

(assert (= (and d!1196342 res!1643956) b!4036904))

(assert (= (and b!4036904 res!1643957) b!4036905))

(declare-fun m!4631349 () Bool)

(assert (=> b!4036904 m!4631349))

(assert (=> b!4036904 m!4630517))

(declare-fun m!4631351 () Bool)

(assert (=> b!4036904 m!4631351))

(assert (=> b!4036904 m!4630553))

(declare-fun m!4631353 () Bool)

(assert (=> b!4036903 m!4631353))

(declare-fun m!4631355 () Bool)

(assert (=> d!1196342 m!4631355))

(assert (=> d!1196342 m!4630517))

(declare-fun m!4631357 () Bool)

(assert (=> d!1196342 m!4631357))

(declare-fun m!4631359 () Bool)

(assert (=> d!1196342 m!4631359))

(assert (=> b!4036349 d!1196342))

(declare-fun d!1196344 () Bool)

(assert (=> d!1196344 (= (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997)))) (list!16089 (c!697105 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))))))

(declare-fun bs!590595 () Bool)

(assert (= bs!590595 d!1196344))

(declare-fun m!4631361 () Bool)

(assert (=> bs!590595 m!4631361))

(assert (=> b!4036349 d!1196344))

(declare-fun d!1196346 () Bool)

(declare-fun lt!1436191 () BalanceConc!25850)

(assert (=> d!1196346 (= (list!16087 lt!1436191) (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997))))))

(assert (=> d!1196346 (= lt!1436191 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997))))) (value!217770 (_1!24286 (get!14182 lt!1435997)))))))

(assert (=> d!1196346 (= (charsOf!4733 (_1!24286 (get!14182 lt!1435997))) lt!1436191)))

(declare-fun b_lambda!117799 () Bool)

(assert (=> (not b_lambda!117799) (not d!1196346)))

(declare-fun tb!242529 () Bool)

(declare-fun t!334645 () Bool)

(assert (=> (and b!4036083 (= (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))))) t!334645) tb!242529))

(declare-fun b!4036906 () Bool)

(declare-fun e!2504863 () Bool)

(declare-fun tp!1226224 () Bool)

(assert (=> b!4036906 (= e!2504863 (and (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997))))) (value!217770 (_1!24286 (get!14182 lt!1435997)))))) tp!1226224))))

(declare-fun result!293998 () Bool)

(assert (=> tb!242529 (= result!293998 (and (inv!57758 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997))))) (value!217770 (_1!24286 (get!14182 lt!1435997))))) e!2504863))))

(assert (= tb!242529 b!4036906))

(declare-fun m!4631363 () Bool)

(assert (=> b!4036906 m!4631363))

(declare-fun m!4631365 () Bool)

(assert (=> tb!242529 m!4631365))

(assert (=> d!1196346 t!334645))

(declare-fun b_and!310235 () Bool)

(assert (= b_and!310229 (and (=> t!334645 result!293998) b_and!310235)))

(declare-fun tb!242531 () Bool)

(declare-fun t!334647 () Bool)

(assert (=> (and b!4036114 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))))) t!334647) tb!242531))

(declare-fun result!294000 () Bool)

(assert (= result!294000 result!293998))

(assert (=> d!1196346 t!334647))

(declare-fun b_and!310237 () Bool)

(assert (= b_and!310231 (and (=> t!334647 result!294000) b_and!310237)))

(declare-fun t!334649 () Bool)

(declare-fun tb!242533 () Bool)

(assert (=> (and b!4036630 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))))) t!334649) tb!242533))

(declare-fun result!294002 () Bool)

(assert (= result!294002 result!293998))

(assert (=> d!1196346 t!334649))

(declare-fun b_and!310239 () Bool)

(assert (= b_and!310233 (and (=> t!334649 result!294002) b_and!310239)))

(declare-fun m!4631367 () Bool)

(assert (=> d!1196346 m!4631367))

(declare-fun m!4631369 () Bool)

(assert (=> d!1196346 m!4631369))

(assert (=> b!4036349 d!1196346))

(declare-fun d!1196348 () Bool)

(assert (=> d!1196348 (= (get!14182 lt!1435997) (v!39726 lt!1435997))))

(assert (=> b!4036349 d!1196348))

(declare-fun d!1196350 () Bool)

(declare-fun lt!1436192 () Int)

(assert (=> d!1196350 (>= lt!1436192 0)))

(declare-fun e!2504864 () Int)

(assert (=> d!1196350 (= lt!1436192 e!2504864)))

(declare-fun c!697220 () Bool)

(assert (=> d!1196350 (= c!697220 (is-Nil!43222 (t!334587 lt!1435816)))))

(assert (=> d!1196350 (= (size!32308 (t!334587 lt!1435816)) lt!1436192)))

(declare-fun b!4036907 () Bool)

(assert (=> b!4036907 (= e!2504864 0)))

(declare-fun b!4036908 () Bool)

(assert (=> b!4036908 (= e!2504864 (+ 1 (size!32308 (t!334587 (t!334587 lt!1435816)))))))

(assert (= (and d!1196350 c!697220) b!4036907))

(assert (= (and d!1196350 (not c!697220)) b!4036908))

(declare-fun m!4631371 () Bool)

(assert (=> b!4036908 m!4631371))

(assert (=> b!4036379 d!1196350))

(declare-fun d!1196352 () Bool)

(assert (=> d!1196352 (= (list!16087 lt!1436016) (list!16089 (c!697105 lt!1436016)))))

(declare-fun bs!590596 () Bool)

(assert (= bs!590596 d!1196352))

(declare-fun m!4631373 () Bool)

(assert (=> bs!590596 m!4631373))

(assert (=> d!1196070 d!1196352))

(declare-fun d!1196354 () Bool)

(declare-fun e!2504866 () Bool)

(assert (=> d!1196354 e!2504866))

(declare-fun res!1643961 () Bool)

(assert (=> d!1196354 (=> res!1643961 e!2504866)))

(declare-fun lt!1436193 () Bool)

(assert (=> d!1196354 (= res!1643961 (not lt!1436193))))

(declare-fun e!2504867 () Bool)

(assert (=> d!1196354 (= lt!1436193 e!2504867)))

(declare-fun res!1643959 () Bool)

(assert (=> d!1196354 (=> res!1643959 e!2504867)))

(assert (=> d!1196354 (= res!1643959 (is-Nil!43222 (tail!6280 lt!1435816)))))

(assert (=> d!1196354 (= (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435831)) lt!1436193)))

(declare-fun b!4036909 () Bool)

(declare-fun e!2504865 () Bool)

(assert (=> b!4036909 (= e!2504867 e!2504865)))

(declare-fun res!1643960 () Bool)

(assert (=> b!4036909 (=> (not res!1643960) (not e!2504865))))

(assert (=> b!4036909 (= res!1643960 (not (is-Nil!43222 (tail!6280 lt!1435831))))))

(declare-fun b!4036911 () Bool)

(assert (=> b!4036911 (= e!2504865 (isPrefix!4004 (tail!6280 (tail!6280 lt!1435816)) (tail!6280 (tail!6280 lt!1435831))))))

(declare-fun b!4036910 () Bool)

(declare-fun res!1643958 () Bool)

(assert (=> b!4036910 (=> (not res!1643958) (not e!2504865))))

(assert (=> b!4036910 (= res!1643958 (= (head!8548 (tail!6280 lt!1435816)) (head!8548 (tail!6280 lt!1435831))))))

(declare-fun b!4036912 () Bool)

(assert (=> b!4036912 (= e!2504866 (>= (size!32308 (tail!6280 lt!1435831)) (size!32308 (tail!6280 lt!1435816))))))

(assert (= (and d!1196354 (not res!1643959)) b!4036909))

(assert (= (and b!4036909 res!1643960) b!4036910))

(assert (= (and b!4036910 res!1643958) b!4036911))

(assert (= (and d!1196354 (not res!1643961)) b!4036912))

(assert (=> b!4036911 m!4630463))

(assert (=> b!4036911 m!4631249))

(assert (=> b!4036911 m!4630719))

(assert (=> b!4036911 m!4631289))

(assert (=> b!4036911 m!4631249))

(assert (=> b!4036911 m!4631289))

(declare-fun m!4631375 () Bool)

(assert (=> b!4036911 m!4631375))

(assert (=> b!4036910 m!4630463))

(assert (=> b!4036910 m!4631255))

(assert (=> b!4036910 m!4630719))

(declare-fun m!4631377 () Bool)

(assert (=> b!4036910 m!4631377))

(assert (=> b!4036912 m!4630719))

(assert (=> b!4036912 m!4631287))

(assert (=> b!4036912 m!4630463))

(assert (=> b!4036912 m!4631261))

(assert (=> b!4036451 d!1196354))

(assert (=> b!4036451 d!1196274))

(assert (=> b!4036451 d!1196308))

(assert (=> b!4036560 d!1196300))

(assert (=> b!4036499 d!1196018))

(assert (=> b!4036499 d!1196020))

(declare-fun b!4036913 () Bool)

(declare-fun e!2504868 () Option!9331)

(declare-fun lt!1436198 () Option!9331)

(declare-fun lt!1436196 () Option!9331)

(assert (=> b!4036913 (= e!2504868 (ite (and (is-None!9330 lt!1436198) (is-None!9330 lt!1436196)) None!9330 (ite (is-None!9330 lt!1436196) lt!1436198 (ite (is-None!9330 lt!1436198) lt!1436196 (ite (>= (size!32307 (_1!24286 (v!39726 lt!1436198))) (size!32307 (_1!24286 (v!39726 lt!1436196)))) lt!1436198 lt!1436196)))))))

(declare-fun call!287145 () Option!9331)

(assert (=> b!4036913 (= lt!1436198 call!287145)))

(assert (=> b!4036913 (= lt!1436196 (maxPrefix!3804 thiss!21717 (t!334589 (t!334589 rules!2999)) lt!1435829))))

(declare-fun b!4036915 () Bool)

(declare-fun res!1643968 () Bool)

(declare-fun e!2504870 () Bool)

(assert (=> b!4036915 (=> (not res!1643968) (not e!2504870))))

(declare-fun lt!1436195 () Option!9331)

(assert (=> b!4036915 (= res!1643968 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436195)))) (_2!24286 (get!14182 lt!1436195))) lt!1435829))))

(declare-fun b!4036916 () Bool)

(declare-fun e!2504869 () Bool)

(assert (=> b!4036916 (= e!2504869 e!2504870)))

(declare-fun res!1643964 () Bool)

(assert (=> b!4036916 (=> (not res!1643964) (not e!2504870))))

(assert (=> b!4036916 (= res!1643964 (isDefined!7099 lt!1436195))))

(declare-fun bm!287140 () Bool)

(assert (=> bm!287140 (= call!287145 (maxPrefixOneRule!2816 thiss!21717 (h!48644 (t!334589 rules!2999)) lt!1435829))))

(declare-fun b!4036917 () Bool)

(declare-fun res!1643965 () Bool)

(assert (=> b!4036917 (=> (not res!1643965) (not e!2504870))))

(assert (=> b!4036917 (= res!1643965 (= (value!217770 (_1!24286 (get!14182 lt!1436195))) (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436195)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436195)))))))))

(declare-fun b!4036918 () Bool)

(declare-fun res!1643967 () Bool)

(assert (=> b!4036918 (=> (not res!1643967) (not e!2504870))))

(assert (=> b!4036918 (= res!1643967 (< (size!32308 (_2!24286 (get!14182 lt!1436195))) (size!32308 lt!1435829)))))

(declare-fun b!4036919 () Bool)

(assert (=> b!4036919 (= e!2504870 (contains!8583 (t!334589 rules!2999) (rule!9985 (_1!24286 (get!14182 lt!1436195)))))))

(declare-fun b!4036920 () Bool)

(assert (=> b!4036920 (= e!2504868 call!287145)))

(declare-fun b!4036921 () Bool)

(declare-fun res!1643962 () Bool)

(assert (=> b!4036921 (=> (not res!1643962) (not e!2504870))))

(assert (=> b!4036921 (= res!1643962 (= (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436195)))) (originalCharacters!7517 (_1!24286 (get!14182 lt!1436195)))))))

(declare-fun b!4036914 () Bool)

(declare-fun res!1643963 () Bool)

(assert (=> b!4036914 (=> (not res!1643963) (not e!2504870))))

(assert (=> b!4036914 (= res!1643963 (matchR!5775 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436195)))) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436195))))))))

(declare-fun d!1196356 () Bool)

(assert (=> d!1196356 e!2504869))

(declare-fun res!1643966 () Bool)

(assert (=> d!1196356 (=> res!1643966 e!2504869)))

(assert (=> d!1196356 (= res!1643966 (isEmpty!25798 lt!1436195))))

(assert (=> d!1196356 (= lt!1436195 e!2504868)))

(declare-fun c!697221 () Bool)

(assert (=> d!1196356 (= c!697221 (and (is-Cons!43224 (t!334589 rules!2999)) (is-Nil!43224 (t!334589 (t!334589 rules!2999)))))))

(declare-fun lt!1436194 () Unit!62414)

(declare-fun lt!1436197 () Unit!62414)

(assert (=> d!1196356 (= lt!1436194 lt!1436197)))

(assert (=> d!1196356 (isPrefix!4004 lt!1435829 lt!1435829)))

(assert (=> d!1196356 (= lt!1436197 (lemmaIsPrefixRefl!2571 lt!1435829 lt!1435829))))

(assert (=> d!1196356 (rulesValidInductive!2520 thiss!21717 (t!334589 rules!2999))))

(assert (=> d!1196356 (= (maxPrefix!3804 thiss!21717 (t!334589 rules!2999) lt!1435829) lt!1436195)))

(assert (= (and d!1196356 c!697221) b!4036920))

(assert (= (and d!1196356 (not c!697221)) b!4036913))

(assert (= (or b!4036920 b!4036913) bm!287140))

(assert (= (and d!1196356 (not res!1643966)) b!4036916))

(assert (= (and b!4036916 res!1643964) b!4036921))

(assert (= (and b!4036921 res!1643962) b!4036918))

(assert (= (and b!4036918 res!1643967) b!4036915))

(assert (= (and b!4036915 res!1643968) b!4036917))

(assert (= (and b!4036917 res!1643965) b!4036914))

(assert (= (and b!4036914 res!1643963) b!4036919))

(declare-fun m!4631379 () Bool)

(assert (=> b!4036921 m!4631379))

(declare-fun m!4631381 () Bool)

(assert (=> b!4036921 m!4631381))

(assert (=> b!4036921 m!4631381))

(declare-fun m!4631383 () Bool)

(assert (=> b!4036921 m!4631383))

(assert (=> b!4036917 m!4631379))

(declare-fun m!4631385 () Bool)

(assert (=> b!4036917 m!4631385))

(assert (=> b!4036917 m!4631385))

(declare-fun m!4631387 () Bool)

(assert (=> b!4036917 m!4631387))

(assert (=> b!4036919 m!4631379))

(declare-fun m!4631389 () Bool)

(assert (=> b!4036919 m!4631389))

(assert (=> b!4036918 m!4631379))

(declare-fun m!4631391 () Bool)

(assert (=> b!4036918 m!4631391))

(assert (=> b!4036918 m!4630679))

(declare-fun m!4631393 () Bool)

(assert (=> bm!287140 m!4631393))

(declare-fun m!4631395 () Bool)

(assert (=> b!4036913 m!4631395))

(declare-fun m!4631397 () Bool)

(assert (=> b!4036916 m!4631397))

(declare-fun m!4631399 () Bool)

(assert (=> d!1196356 m!4631399))

(assert (=> d!1196356 m!4630689))

(assert (=> d!1196356 m!4630691))

(assert (=> d!1196356 m!4631347))

(assert (=> b!4036915 m!4631379))

(assert (=> b!4036915 m!4631381))

(assert (=> b!4036915 m!4631381))

(assert (=> b!4036915 m!4631383))

(assert (=> b!4036915 m!4631383))

(declare-fun m!4631401 () Bool)

(assert (=> b!4036915 m!4631401))

(assert (=> b!4036914 m!4631379))

(assert (=> b!4036914 m!4631381))

(assert (=> b!4036914 m!4631381))

(assert (=> b!4036914 m!4631383))

(assert (=> b!4036914 m!4631383))

(declare-fun m!4631403 () Bool)

(assert (=> b!4036914 m!4631403))

(assert (=> b!4036431 d!1196356))

(declare-fun d!1196358 () Bool)

(declare-fun lt!1436199 () Int)

(assert (=> d!1196358 (>= lt!1436199 0)))

(declare-fun e!2504871 () Int)

(assert (=> d!1196358 (= lt!1436199 e!2504871)))

(declare-fun c!697222 () Bool)

(assert (=> d!1196358 (= c!697222 (is-Nil!43222 (_2!24286 (get!14182 lt!1436067))))))

(assert (=> d!1196358 (= (size!32308 (_2!24286 (get!14182 lt!1436067))) lt!1436199)))

(declare-fun b!4036922 () Bool)

(assert (=> b!4036922 (= e!2504871 0)))

(declare-fun b!4036923 () Bool)

(assert (=> b!4036923 (= e!2504871 (+ 1 (size!32308 (t!334587 (_2!24286 (get!14182 lt!1436067))))))))

(assert (= (and d!1196358 c!697222) b!4036922))

(assert (= (and d!1196358 (not c!697222)) b!4036923))

(declare-fun m!4631405 () Bool)

(assert (=> b!4036923 m!4631405))

(assert (=> b!4036484 d!1196358))

(assert (=> b!4036484 d!1196284))

(declare-fun d!1196360 () Bool)

(declare-fun lt!1436200 () Int)

(assert (=> d!1196360 (>= lt!1436200 0)))

(declare-fun e!2504872 () Int)

(assert (=> d!1196360 (= lt!1436200 e!2504872)))

(declare-fun c!697223 () Bool)

(assert (=> d!1196360 (= c!697223 (is-Nil!43222 lt!1435831))))

(assert (=> d!1196360 (= (size!32308 lt!1435831) lt!1436200)))

(declare-fun b!4036924 () Bool)

(assert (=> b!4036924 (= e!2504872 0)))

(declare-fun b!4036925 () Bool)

(assert (=> b!4036925 (= e!2504872 (+ 1 (size!32308 (t!334587 lt!1435831))))))

(assert (= (and d!1196360 c!697223) b!4036924))

(assert (= (and d!1196360 (not c!697223)) b!4036925))

(declare-fun m!4631407 () Bool)

(assert (=> b!4036925 m!4631407))

(assert (=> b!4036484 d!1196360))

(declare-fun b!4036929 () Bool)

(declare-fun e!2504873 () Bool)

(declare-fun lt!1436201 () List!43346)

(assert (=> b!4036929 (= e!2504873 (or (not (= (_2!24286 (get!14182 lt!1436067)) Nil!43222)) (= lt!1436201 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067)))))))))

(declare-fun b!4036928 () Bool)

(declare-fun res!1643970 () Bool)

(assert (=> b!4036928 (=> (not res!1643970) (not e!2504873))))

(assert (=> b!4036928 (= res!1643970 (= (size!32308 lt!1436201) (+ (size!32308 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))) (size!32308 (_2!24286 (get!14182 lt!1436067))))))))

(declare-fun b!4036927 () Bool)

(declare-fun e!2504874 () List!43346)

(assert (=> b!4036927 (= e!2504874 (Cons!43222 (h!48642 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))) (++!11319 (t!334587 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))) (_2!24286 (get!14182 lt!1436067)))))))

(declare-fun b!4036926 () Bool)

(assert (=> b!4036926 (= e!2504874 (_2!24286 (get!14182 lt!1436067)))))

(declare-fun d!1196362 () Bool)

(assert (=> d!1196362 e!2504873))

(declare-fun res!1643969 () Bool)

(assert (=> d!1196362 (=> (not res!1643969) (not e!2504873))))

(assert (=> d!1196362 (= res!1643969 (= (content!6568 lt!1436201) (set.union (content!6568 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))) (content!6568 (_2!24286 (get!14182 lt!1436067))))))))

(assert (=> d!1196362 (= lt!1436201 e!2504874)))

(declare-fun c!697224 () Bool)

(assert (=> d!1196362 (= c!697224 (is-Nil!43222 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))))))

(assert (=> d!1196362 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067)))) (_2!24286 (get!14182 lt!1436067))) lt!1436201)))

(assert (= (and d!1196362 c!697224) b!4036926))

(assert (= (and d!1196362 (not c!697224)) b!4036927))

(assert (= (and d!1196362 res!1643969) b!4036928))

(assert (= (and b!4036928 res!1643970) b!4036929))

(declare-fun m!4631409 () Bool)

(assert (=> b!4036928 m!4631409))

(assert (=> b!4036928 m!4630815))

(declare-fun m!4631411 () Bool)

(assert (=> b!4036928 m!4631411))

(assert (=> b!4036928 m!4630823))

(declare-fun m!4631413 () Bool)

(assert (=> b!4036927 m!4631413))

(declare-fun m!4631415 () Bool)

(assert (=> d!1196362 m!4631415))

(assert (=> d!1196362 m!4630815))

(declare-fun m!4631417 () Bool)

(assert (=> d!1196362 m!4631417))

(declare-fun m!4631419 () Bool)

(assert (=> d!1196362 m!4631419))

(assert (=> b!4036481 d!1196362))

(declare-fun d!1196364 () Bool)

(assert (=> d!1196364 (= (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067)))) (list!16089 (c!697105 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))))))

(declare-fun bs!590597 () Bool)

(assert (= bs!590597 d!1196364))

(declare-fun m!4631421 () Bool)

(assert (=> bs!590597 m!4631421))

(assert (=> b!4036481 d!1196364))

(declare-fun d!1196366 () Bool)

(declare-fun lt!1436202 () BalanceConc!25850)

(assert (=> d!1196366 (= (list!16087 lt!1436202) (originalCharacters!7517 (_1!24286 (get!14182 lt!1436067))))))

(assert (=> d!1196366 (= lt!1436202 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067))))) (value!217770 (_1!24286 (get!14182 lt!1436067)))))))

(assert (=> d!1196366 (= (charsOf!4733 (_1!24286 (get!14182 lt!1436067))) lt!1436202)))

(declare-fun b_lambda!117801 () Bool)

(assert (=> (not b_lambda!117801) (not d!1196366)))

(declare-fun tb!242535 () Bool)

(declare-fun t!334651 () Bool)

(assert (=> (and b!4036083 (= (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))) t!334651) tb!242535))

(declare-fun b!4036930 () Bool)

(declare-fun e!2504875 () Bool)

(declare-fun tp!1226225 () Bool)

(assert (=> b!4036930 (= e!2504875 (and (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067))))) (value!217770 (_1!24286 (get!14182 lt!1436067)))))) tp!1226225))))

(declare-fun result!294004 () Bool)

(assert (=> tb!242535 (= result!294004 (and (inv!57758 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067))))) (value!217770 (_1!24286 (get!14182 lt!1436067))))) e!2504875))))

(assert (= tb!242535 b!4036930))

(declare-fun m!4631423 () Bool)

(assert (=> b!4036930 m!4631423))

(declare-fun m!4631425 () Bool)

(assert (=> tb!242535 m!4631425))

(assert (=> d!1196366 t!334651))

(declare-fun b_and!310241 () Bool)

(assert (= b_and!310235 (and (=> t!334651 result!294004) b_and!310241)))

(declare-fun t!334653 () Bool)

(declare-fun tb!242537 () Bool)

(assert (=> (and b!4036114 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))) t!334653) tb!242537))

(declare-fun result!294006 () Bool)

(assert (= result!294006 result!294004))

(assert (=> d!1196366 t!334653))

(declare-fun b_and!310243 () Bool)

(assert (= b_and!310237 (and (=> t!334653 result!294006) b_and!310243)))

(declare-fun t!334655 () Bool)

(declare-fun tb!242539 () Bool)

(assert (=> (and b!4036630 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))) t!334655) tb!242539))

(declare-fun result!294008 () Bool)

(assert (= result!294008 result!294004))

(assert (=> d!1196366 t!334655))

(declare-fun b_and!310245 () Bool)

(assert (= b_and!310239 (and (=> t!334655 result!294008) b_and!310245)))

(declare-fun m!4631427 () Bool)

(assert (=> d!1196366 m!4631427))

(declare-fun m!4631429 () Bool)

(assert (=> d!1196366 m!4631429))

(assert (=> b!4036481 d!1196366))

(assert (=> b!4036481 d!1196284))

(declare-fun d!1196368 () Bool)

(declare-fun e!2504878 () Bool)

(assert (=> d!1196368 e!2504878))

(declare-fun res!1643973 () Bool)

(assert (=> d!1196368 (=> (not res!1643973) (not e!2504878))))

(declare-fun lt!1436205 () BalanceConc!25850)

(assert (=> d!1196368 (= res!1643973 (= (list!16087 lt!1436205) lt!1435816))))

(declare-fun fromList!856 (List!43346) Conc!13128)

(assert (=> d!1196368 (= lt!1436205 (BalanceConc!25851 (fromList!856 lt!1435816)))))

(assert (=> d!1196368 (= (fromListB!2339 lt!1435816) lt!1436205)))

(declare-fun b!4036933 () Bool)

(declare-fun isBalanced!3676 (Conc!13128) Bool)

(assert (=> b!4036933 (= e!2504878 (isBalanced!3676 (fromList!856 lt!1435816)))))

(assert (= (and d!1196368 res!1643973) b!4036933))

(declare-fun m!4631431 () Bool)

(assert (=> d!1196368 m!4631431))

(declare-fun m!4631433 () Bool)

(assert (=> d!1196368 m!4631433))

(assert (=> b!4036933 m!4631433))

(assert (=> b!4036933 m!4631433))

(declare-fun m!4631435 () Bool)

(assert (=> b!4036933 m!4631435))

(assert (=> d!1196046 d!1196368))

(declare-fun d!1196370 () Bool)

(assert (=> d!1196370 (= (list!16087 lt!1436061) (list!16089 (c!697105 lt!1436061)))))

(declare-fun bs!590598 () Bool)

(assert (= bs!590598 d!1196370))

(declare-fun m!4631437 () Bool)

(assert (=> bs!590598 m!4631437))

(assert (=> d!1196130 d!1196370))

(declare-fun d!1196372 () Bool)

(declare-fun lt!1436206 () Int)

(assert (=> d!1196372 (>= lt!1436206 0)))

(declare-fun e!2504879 () Int)

(assert (=> d!1196372 (= lt!1436206 e!2504879)))

(declare-fun c!697226 () Bool)

(assert (=> d!1196372 (= c!697226 (is-Nil!43222 lt!1435817))))

(assert (=> d!1196372 (= (size!32308 lt!1435817) lt!1436206)))

(declare-fun b!4036934 () Bool)

(assert (=> b!4036934 (= e!2504879 0)))

(declare-fun b!4036935 () Bool)

(assert (=> b!4036935 (= e!2504879 (+ 1 (size!32308 (t!334587 lt!1435817))))))

(assert (= (and d!1196372 c!697226) b!4036934))

(assert (= (and d!1196372 (not c!697226)) b!4036935))

(declare-fun m!4631439 () Bool)

(assert (=> b!4036935 m!4631439))

(assert (=> b!4036443 d!1196372))

(assert (=> b!4036443 d!1196064))

(declare-fun d!1196374 () Bool)

(declare-fun lt!1436207 () Int)

(assert (=> d!1196374 (>= lt!1436207 0)))

(declare-fun e!2504880 () Int)

(assert (=> d!1196374 (= lt!1436207 e!2504880)))

(declare-fun c!697227 () Bool)

(assert (=> d!1196374 (= c!697227 (is-Nil!43222 (_2!24286 (get!14182 lt!1436043))))))

(assert (=> d!1196374 (= (size!32308 (_2!24286 (get!14182 lt!1436043))) lt!1436207)))

(declare-fun b!4036936 () Bool)

(assert (=> b!4036936 (= e!2504880 0)))

(declare-fun b!4036937 () Bool)

(assert (=> b!4036937 (= e!2504880 (+ 1 (size!32308 (t!334587 (_2!24286 (get!14182 lt!1436043))))))))

(assert (= (and d!1196374 c!697227) b!4036936))

(assert (= (and d!1196374 (not c!697227)) b!4036937))

(declare-fun m!4631441 () Bool)

(assert (=> b!4036937 m!4631441))

(assert (=> b!4036436 d!1196374))

(assert (=> b!4036436 d!1196294))

(declare-fun d!1196376 () Bool)

(declare-fun lt!1436208 () Int)

(assert (=> d!1196376 (>= lt!1436208 0)))

(declare-fun e!2504881 () Int)

(assert (=> d!1196376 (= lt!1436208 e!2504881)))

(declare-fun c!697228 () Bool)

(assert (=> d!1196376 (= c!697228 (is-Nil!43222 lt!1435829))))

(assert (=> d!1196376 (= (size!32308 lt!1435829) lt!1436208)))

(declare-fun b!4036938 () Bool)

(assert (=> b!4036938 (= e!2504881 0)))

(declare-fun b!4036939 () Bool)

(assert (=> b!4036939 (= e!2504881 (+ 1 (size!32308 (t!334587 lt!1435829))))))

(assert (= (and d!1196376 c!697228) b!4036938))

(assert (= (and d!1196376 (not c!697228)) b!4036939))

(declare-fun m!4631443 () Bool)

(assert (=> b!4036939 m!4631443))

(assert (=> b!4036436 d!1196376))

(declare-fun d!1196378 () Bool)

(assert (=> d!1196378 (= (isEmpty!25795 (tail!6280 lt!1435816)) (is-Nil!43222 (tail!6280 lt!1435816)))))

(assert (=> b!4036566 d!1196378))

(assert (=> b!4036566 d!1196274))

(declare-fun d!1196380 () Bool)

(declare-fun e!2504883 () Bool)

(assert (=> d!1196380 e!2504883))

(declare-fun res!1643977 () Bool)

(assert (=> d!1196380 (=> res!1643977 e!2504883)))

(declare-fun lt!1436209 () Bool)

(assert (=> d!1196380 (= res!1643977 (not lt!1436209))))

(declare-fun e!2504884 () Bool)

(assert (=> d!1196380 (= lt!1436209 e!2504884)))

(declare-fun res!1643975 () Bool)

(assert (=> d!1196380 (=> res!1643975 e!2504884)))

(assert (=> d!1196380 (= res!1643975 (is-Nil!43222 (tail!6280 lt!1435816)))))

(assert (=> d!1196380 (= (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435829)) lt!1436209)))

(declare-fun b!4036940 () Bool)

(declare-fun e!2504882 () Bool)

(assert (=> b!4036940 (= e!2504884 e!2504882)))

(declare-fun res!1643976 () Bool)

(assert (=> b!4036940 (=> (not res!1643976) (not e!2504882))))

(assert (=> b!4036940 (= res!1643976 (not (is-Nil!43222 (tail!6280 lt!1435829))))))

(declare-fun b!4036942 () Bool)

(assert (=> b!4036942 (= e!2504882 (isPrefix!4004 (tail!6280 (tail!6280 lt!1435816)) (tail!6280 (tail!6280 lt!1435829))))))

(declare-fun b!4036941 () Bool)

(declare-fun res!1643974 () Bool)

(assert (=> b!4036941 (=> (not res!1643974) (not e!2504882))))

(assert (=> b!4036941 (= res!1643974 (= (head!8548 (tail!6280 lt!1435816)) (head!8548 (tail!6280 lt!1435829))))))

(declare-fun b!4036943 () Bool)

(assert (=> b!4036943 (= e!2504883 (>= (size!32308 (tail!6280 lt!1435829)) (size!32308 (tail!6280 lt!1435816))))))

(assert (= (and d!1196380 (not res!1643975)) b!4036940))

(assert (= (and b!4036940 res!1643976) b!4036941))

(assert (= (and b!4036941 res!1643974) b!4036942))

(assert (= (and d!1196380 (not res!1643977)) b!4036943))

(assert (=> b!4036942 m!4630463))

(assert (=> b!4036942 m!4631249))

(assert (=> b!4036942 m!4630919))

(declare-fun m!4631445 () Bool)

(assert (=> b!4036942 m!4631445))

(assert (=> b!4036942 m!4631249))

(assert (=> b!4036942 m!4631445))

(declare-fun m!4631447 () Bool)

(assert (=> b!4036942 m!4631447))

(assert (=> b!4036941 m!4630463))

(assert (=> b!4036941 m!4631255))

(assert (=> b!4036941 m!4630919))

(declare-fun m!4631449 () Bool)

(assert (=> b!4036941 m!4631449))

(assert (=> b!4036943 m!4630919))

(declare-fun m!4631451 () Bool)

(assert (=> b!4036943 m!4631451))

(assert (=> b!4036943 m!4630463))

(assert (=> b!4036943 m!4631261))

(assert (=> b!4036569 d!1196380))

(assert (=> b!4036569 d!1196274))

(declare-fun d!1196382 () Bool)

(assert (=> d!1196382 (= (tail!6280 lt!1435829) (t!334587 lt!1435829))))

(assert (=> b!4036569 d!1196382))

(declare-fun lt!1436210 () List!43346)

(declare-fun e!2504885 () Bool)

(declare-fun b!4036947 () Bool)

(assert (=> b!4036947 (= e!2504885 (or (not (= lt!1435798 Nil!43222)) (= lt!1436210 (t!334587 lt!1435816))))))

(declare-fun b!4036946 () Bool)

(declare-fun res!1643979 () Bool)

(assert (=> b!4036946 (=> (not res!1643979) (not e!2504885))))

(assert (=> b!4036946 (= res!1643979 (= (size!32308 lt!1436210) (+ (size!32308 (t!334587 lt!1435816)) (size!32308 lt!1435798))))))

(declare-fun b!4036945 () Bool)

(declare-fun e!2504886 () List!43346)

(assert (=> b!4036945 (= e!2504886 (Cons!43222 (h!48642 (t!334587 lt!1435816)) (++!11319 (t!334587 (t!334587 lt!1435816)) lt!1435798)))))

(declare-fun b!4036944 () Bool)

(assert (=> b!4036944 (= e!2504886 lt!1435798)))

(declare-fun d!1196384 () Bool)

(assert (=> d!1196384 e!2504885))

(declare-fun res!1643978 () Bool)

(assert (=> d!1196384 (=> (not res!1643978) (not e!2504885))))

(assert (=> d!1196384 (= res!1643978 (= (content!6568 lt!1436210) (set.union (content!6568 (t!334587 lt!1435816)) (content!6568 lt!1435798))))))

(assert (=> d!1196384 (= lt!1436210 e!2504886)))

(declare-fun c!697229 () Bool)

(assert (=> d!1196384 (= c!697229 (is-Nil!43222 (t!334587 lt!1435816)))))

(assert (=> d!1196384 (= (++!11319 (t!334587 lt!1435816) lt!1435798) lt!1436210)))

(assert (= (and d!1196384 c!697229) b!4036944))

(assert (= (and d!1196384 (not c!697229)) b!4036945))

(assert (= (and d!1196384 res!1643978) b!4036946))

(assert (= (and b!4036946 res!1643979) b!4036947))

(declare-fun m!4631453 () Bool)

(assert (=> b!4036946 m!4631453))

(assert (=> b!4036946 m!4630603))

(assert (=> b!4036946 m!4630747))

(declare-fun m!4631455 () Bool)

(assert (=> b!4036945 m!4631455))

(declare-fun m!4631457 () Bool)

(assert (=> d!1196384 m!4631457))

(assert (=> d!1196384 m!4631331))

(assert (=> d!1196384 m!4630753))

(assert (=> b!4036458 d!1196384))

(declare-fun d!1196386 () Bool)

(assert (=> d!1196386 true))

(declare-fun order!22607 () Int)

(declare-fun order!22609 () Int)

(declare-fun lambda!127310 () Int)

(declare-fun dynLambda!18331 (Int Int) Int)

(declare-fun dynLambda!18332 (Int Int) Int)

(assert (=> d!1196386 (< (dynLambda!18331 order!22607 (toValue!9449 (transformation!6917 (rule!9985 token!484)))) (dynLambda!18332 order!22609 lambda!127310))))

(declare-fun Forall2!1086 (Int) Bool)

(assert (=> d!1196386 (= (equivClasses!2852 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) (Forall2!1086 lambda!127310))))

(declare-fun bs!590599 () Bool)

(assert (= bs!590599 d!1196386))

(declare-fun m!4631459 () Bool)

(assert (=> bs!590599 m!4631459))

(assert (=> b!4036377 d!1196386))

(declare-fun d!1196388 () Bool)

(declare-fun c!697230 () Bool)

(assert (=> d!1196388 (= c!697230 (is-Nil!43222 lt!1436057))))

(declare-fun e!2504889 () (Set C!23830))

(assert (=> d!1196388 (= (content!6568 lt!1436057) e!2504889)))

(declare-fun b!4036952 () Bool)

(assert (=> b!4036952 (= e!2504889 (as set.empty (Set C!23830)))))

(declare-fun b!4036953 () Bool)

(assert (=> b!4036953 (= e!2504889 (set.union (set.insert (h!48642 lt!1436057) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1436057))))))

(assert (= (and d!1196388 c!697230) b!4036952))

(assert (= (and d!1196388 (not c!697230)) b!4036953))

(declare-fun m!4631461 () Bool)

(assert (=> b!4036953 m!4631461))

(declare-fun m!4631463 () Bool)

(assert (=> b!4036953 m!4631463))

(assert (=> d!1196120 d!1196388))

(assert (=> d!1196120 d!1196330))

(declare-fun d!1196390 () Bool)

(declare-fun c!697231 () Bool)

(assert (=> d!1196390 (= c!697231 (is-Nil!43222 suffix!1299))))

(declare-fun e!2504890 () (Set C!23830))

(assert (=> d!1196390 (= (content!6568 suffix!1299) e!2504890)))

(declare-fun b!4036954 () Bool)

(assert (=> b!4036954 (= e!2504890 (as set.empty (Set C!23830)))))

(declare-fun b!4036955 () Bool)

(assert (=> b!4036955 (= e!2504890 (set.union (set.insert (h!48642 suffix!1299) (as set.empty (Set C!23830))) (content!6568 (t!334587 suffix!1299))))))

(assert (= (and d!1196390 c!697231) b!4036954))

(assert (= (and d!1196390 (not c!697231)) b!4036955))

(declare-fun m!4631465 () Bool)

(assert (=> b!4036955 m!4631465))

(declare-fun m!4631467 () Bool)

(assert (=> b!4036955 m!4631467))

(assert (=> d!1196120 d!1196390))

(declare-fun d!1196392 () Bool)

(declare-fun charsToBigInt!1 (List!43347) Int)

(assert (=> d!1196392 (= (inv!17 (value!217770 token!484)) (= (charsToBigInt!1 (text!50477 (value!217770 token!484))) (value!217762 (value!217770 token!484))))))

(declare-fun bs!590600 () Bool)

(assert (= bs!590600 d!1196392))

(declare-fun m!4631469 () Bool)

(assert (=> bs!590600 m!4631469))

(assert (=> b!4036595 d!1196392))

(declare-fun d!1196394 () Bool)

(assert (=> d!1196394 (= (isEmpty!25795 lt!1435816) (is-Nil!43222 lt!1435816))))

(assert (=> d!1196166 d!1196394))

(declare-fun b!4036974 () Bool)

(declare-fun e!2504907 () Bool)

(declare-fun e!2504911 () Bool)

(assert (=> b!4036974 (= e!2504907 e!2504911)))

(declare-fun c!697237 () Bool)

(assert (=> b!4036974 (= c!697237 (is-Star!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun bm!287147 () Bool)

(declare-fun call!287154 () Bool)

(declare-fun c!697236 () Bool)

(assert (=> bm!287147 (= call!287154 (validRegex!5345 (ite c!697236 (regOne!24157 (regex!6917 (rule!9985 token!484))) (regOne!24156 (regex!6917 (rule!9985 token!484))))))))

(declare-fun b!4036975 () Bool)

(declare-fun e!2504908 () Bool)

(assert (=> b!4036975 (= e!2504911 e!2504908)))

(assert (=> b!4036975 (= c!697236 (is-Union!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun d!1196396 () Bool)

(declare-fun res!1643992 () Bool)

(assert (=> d!1196396 (=> res!1643992 e!2504907)))

(assert (=> d!1196396 (= res!1643992 (is-ElementMatch!11822 (regex!6917 (rule!9985 token!484))))))

(assert (=> d!1196396 (= (validRegex!5345 (regex!6917 (rule!9985 token!484))) e!2504907)))

(declare-fun b!4036976 () Bool)

(declare-fun e!2504906 () Bool)

(assert (=> b!4036976 (= e!2504911 e!2504906)))

(declare-fun res!1643995 () Bool)

(assert (=> b!4036976 (= res!1643995 (not (nullable!4145 (reg!12151 (regex!6917 (rule!9985 token!484))))))))

(assert (=> b!4036976 (=> (not res!1643995) (not e!2504906))))

(declare-fun bm!287148 () Bool)

(declare-fun call!287153 () Bool)

(assert (=> bm!287148 (= call!287153 (validRegex!5345 (ite c!697237 (reg!12151 (regex!6917 (rule!9985 token!484))) (ite c!697236 (regTwo!24157 (regex!6917 (rule!9985 token!484))) (regTwo!24156 (regex!6917 (rule!9985 token!484)))))))))

(declare-fun b!4036977 () Bool)

(declare-fun res!1643993 () Bool)

(declare-fun e!2504905 () Bool)

(assert (=> b!4036977 (=> res!1643993 e!2504905)))

(assert (=> b!4036977 (= res!1643993 (not (is-Concat!18970 (regex!6917 (rule!9985 token!484)))))))

(assert (=> b!4036977 (= e!2504908 e!2504905)))

(declare-fun b!4036978 () Bool)

(declare-fun e!2504909 () Bool)

(assert (=> b!4036978 (= e!2504905 e!2504909)))

(declare-fun res!1643996 () Bool)

(assert (=> b!4036978 (=> (not res!1643996) (not e!2504909))))

(assert (=> b!4036978 (= res!1643996 call!287154)))

(declare-fun b!4036979 () Bool)

(declare-fun e!2504910 () Bool)

(declare-fun call!287152 () Bool)

(assert (=> b!4036979 (= e!2504910 call!287152)))

(declare-fun b!4036980 () Bool)

(declare-fun res!1643994 () Bool)

(assert (=> b!4036980 (=> (not res!1643994) (not e!2504910))))

(assert (=> b!4036980 (= res!1643994 call!287154)))

(assert (=> b!4036980 (= e!2504908 e!2504910)))

(declare-fun b!4036981 () Bool)

(assert (=> b!4036981 (= e!2504909 call!287152)))

(declare-fun b!4036982 () Bool)

(assert (=> b!4036982 (= e!2504906 call!287153)))

(declare-fun bm!287149 () Bool)

(assert (=> bm!287149 (= call!287152 call!287153)))

(assert (= (and d!1196396 (not res!1643992)) b!4036974))

(assert (= (and b!4036974 c!697237) b!4036976))

(assert (= (and b!4036974 (not c!697237)) b!4036975))

(assert (= (and b!4036976 res!1643995) b!4036982))

(assert (= (and b!4036975 c!697236) b!4036980))

(assert (= (and b!4036975 (not c!697236)) b!4036977))

(assert (= (and b!4036980 res!1643994) b!4036979))

(assert (= (and b!4036977 (not res!1643993)) b!4036978))

(assert (= (and b!4036978 res!1643996) b!4036981))

(assert (= (or b!4036979 b!4036981) bm!287149))

(assert (= (or b!4036980 b!4036978) bm!287147))

(assert (= (or b!4036982 bm!287149) bm!287148))

(declare-fun m!4631471 () Bool)

(assert (=> bm!287147 m!4631471))

(declare-fun m!4631473 () Bool)

(assert (=> b!4036976 m!4631473))

(declare-fun m!4631475 () Bool)

(assert (=> bm!287148 m!4631475))

(assert (=> d!1196166 d!1196396))

(declare-fun e!2504912 () Bool)

(declare-fun lt!1436211 () List!43346)

(declare-fun b!4036986 () Bool)

(assert (=> b!4036986 (= e!2504912 (or (not (= suffix!1299 Nil!43222)) (= lt!1436211 (t!334587 lt!1435836))))))

(declare-fun b!4036985 () Bool)

(declare-fun res!1643998 () Bool)

(assert (=> b!4036985 (=> (not res!1643998) (not e!2504912))))

(assert (=> b!4036985 (= res!1643998 (= (size!32308 lt!1436211) (+ (size!32308 (t!334587 lt!1435836)) (size!32308 suffix!1299))))))

(declare-fun b!4036984 () Bool)

(declare-fun e!2504913 () List!43346)

(assert (=> b!4036984 (= e!2504913 (Cons!43222 (h!48642 (t!334587 lt!1435836)) (++!11319 (t!334587 (t!334587 lt!1435836)) suffix!1299)))))

(declare-fun b!4036983 () Bool)

(assert (=> b!4036983 (= e!2504913 suffix!1299)))

(declare-fun d!1196398 () Bool)

(assert (=> d!1196398 e!2504912))

(declare-fun res!1643997 () Bool)

(assert (=> d!1196398 (=> (not res!1643997) (not e!2504912))))

(assert (=> d!1196398 (= res!1643997 (= (content!6568 lt!1436211) (set.union (content!6568 (t!334587 lt!1435836)) (content!6568 suffix!1299))))))

(assert (=> d!1196398 (= lt!1436211 e!2504913)))

(declare-fun c!697238 () Bool)

(assert (=> d!1196398 (= c!697238 (is-Nil!43222 (t!334587 lt!1435836)))))

(assert (=> d!1196398 (= (++!11319 (t!334587 lt!1435836) suffix!1299) lt!1436211)))

(assert (= (and d!1196398 c!697238) b!4036983))

(assert (= (and d!1196398 (not c!697238)) b!4036984))

(assert (= (and d!1196398 res!1643997) b!4036985))

(assert (= (and b!4036985 res!1643998) b!4036986))

(declare-fun m!4631477 () Bool)

(assert (=> b!4036985 m!4631477))

(assert (=> b!4036985 m!4631273))

(assert (=> b!4036985 m!4630217))

(declare-fun m!4631479 () Bool)

(assert (=> b!4036984 m!4631479))

(declare-fun m!4631481 () Bool)

(assert (=> d!1196398 m!4631481))

(assert (=> d!1196398 m!4631335))

(assert (=> d!1196398 m!4630765))

(assert (=> b!4036466 d!1196398))

(declare-fun d!1196400 () Bool)

(declare-fun lt!1436212 () Bool)

(assert (=> d!1196400 (= lt!1436212 (set.member (rule!9985 (_1!24286 (v!39726 lt!1435811))) (content!6570 (t!334589 rules!2999))))))

(declare-fun e!2504915 () Bool)

(assert (=> d!1196400 (= lt!1436212 e!2504915)))

(declare-fun res!1643999 () Bool)

(assert (=> d!1196400 (=> (not res!1643999) (not e!2504915))))

(assert (=> d!1196400 (= res!1643999 (is-Cons!43224 (t!334589 rules!2999)))))

(assert (=> d!1196400 (= (contains!8583 (t!334589 rules!2999) (rule!9985 (_1!24286 (v!39726 lt!1435811)))) lt!1436212)))

(declare-fun b!4036987 () Bool)

(declare-fun e!2504914 () Bool)

(assert (=> b!4036987 (= e!2504915 e!2504914)))

(declare-fun res!1644000 () Bool)

(assert (=> b!4036987 (=> res!1644000 e!2504914)))

(assert (=> b!4036987 (= res!1644000 (= (h!48644 (t!334589 rules!2999)) (rule!9985 (_1!24286 (v!39726 lt!1435811)))))))

(declare-fun b!4036988 () Bool)

(assert (=> b!4036988 (= e!2504914 (contains!8583 (t!334589 (t!334589 rules!2999)) (rule!9985 (_1!24286 (v!39726 lt!1435811)))))))

(assert (= (and d!1196400 res!1643999) b!4036987))

(assert (= (and b!4036987 (not res!1644000)) b!4036988))

(declare-fun m!4631483 () Bool)

(assert (=> d!1196400 m!4631483))

(declare-fun m!4631485 () Bool)

(assert (=> d!1196400 m!4631485))

(declare-fun m!4631487 () Bool)

(assert (=> b!4036988 m!4631487))

(assert (=> b!4036478 d!1196400))

(assert (=> b!4036578 d!1196300))

(declare-fun d!1196402 () Bool)

(assert (=> d!1196402 (= (head!8548 prefix!494) (h!48642 prefix!494))))

(assert (=> b!4036578 d!1196402))

(declare-fun d!1196404 () Bool)

(declare-fun e!2504917 () Bool)

(assert (=> d!1196404 e!2504917))

(declare-fun res!1644004 () Bool)

(assert (=> d!1196404 (=> res!1644004 e!2504917)))

(declare-fun lt!1436213 () Bool)

(assert (=> d!1196404 (= res!1644004 (not lt!1436213))))

(declare-fun e!2504918 () Bool)

(assert (=> d!1196404 (= lt!1436213 e!2504918)))

(declare-fun res!1644002 () Bool)

(assert (=> d!1196404 (=> res!1644002 e!2504918)))

(assert (=> d!1196404 (= res!1644002 (is-Nil!43222 (tail!6280 lt!1435831)))))

(assert (=> d!1196404 (= (isPrefix!4004 (tail!6280 lt!1435831) (tail!6280 lt!1435831)) lt!1436213)))

(declare-fun b!4036989 () Bool)

(declare-fun e!2504916 () Bool)

(assert (=> b!4036989 (= e!2504918 e!2504916)))

(declare-fun res!1644003 () Bool)

(assert (=> b!4036989 (=> (not res!1644003) (not e!2504916))))

(assert (=> b!4036989 (= res!1644003 (not (is-Nil!43222 (tail!6280 lt!1435831))))))

(declare-fun b!4036991 () Bool)

(assert (=> b!4036991 (= e!2504916 (isPrefix!4004 (tail!6280 (tail!6280 lt!1435831)) (tail!6280 (tail!6280 lt!1435831))))))

(declare-fun b!4036990 () Bool)

(declare-fun res!1644001 () Bool)

(assert (=> b!4036990 (=> (not res!1644001) (not e!2504916))))

(assert (=> b!4036990 (= res!1644001 (= (head!8548 (tail!6280 lt!1435831)) (head!8548 (tail!6280 lt!1435831))))))

(declare-fun b!4036992 () Bool)

(assert (=> b!4036992 (= e!2504917 (>= (size!32308 (tail!6280 lt!1435831)) (size!32308 (tail!6280 lt!1435831))))))

(assert (= (and d!1196404 (not res!1644002)) b!4036989))

(assert (= (and b!4036989 res!1644003) b!4036990))

(assert (= (and b!4036990 res!1644001) b!4036991))

(assert (= (and d!1196404 (not res!1644004)) b!4036992))

(assert (=> b!4036991 m!4630719))

(assert (=> b!4036991 m!4631289))

(assert (=> b!4036991 m!4630719))

(assert (=> b!4036991 m!4631289))

(assert (=> b!4036991 m!4631289))

(assert (=> b!4036991 m!4631289))

(declare-fun m!4631489 () Bool)

(assert (=> b!4036991 m!4631489))

(assert (=> b!4036990 m!4630719))

(assert (=> b!4036990 m!4631377))

(assert (=> b!4036990 m!4630719))

(assert (=> b!4036990 m!4631377))

(assert (=> b!4036992 m!4630719))

(assert (=> b!4036992 m!4631287))

(assert (=> b!4036992 m!4630719))

(assert (=> b!4036992 m!4631287))

(assert (=> b!4036523 d!1196404))

(assert (=> b!4036523 d!1196308))

(declare-fun d!1196406 () Bool)

(declare-fun c!697241 () Bool)

(assert (=> d!1196406 (= c!697241 (is-Nil!43224 rules!2999))))

(declare-fun e!2504921 () (Set Rule!13634))

(assert (=> d!1196406 (= (content!6570 rules!2999) e!2504921)))

(declare-fun b!4036997 () Bool)

(assert (=> b!4036997 (= e!2504921 (as set.empty (Set Rule!13634)))))

(declare-fun b!4036998 () Bool)

(assert (=> b!4036998 (= e!2504921 (set.union (set.insert (h!48644 rules!2999) (as set.empty (Set Rule!13634))) (content!6570 (t!334589 rules!2999))))))

(assert (= (and d!1196406 c!697241) b!4036997))

(assert (= (and d!1196406 (not c!697241)) b!4036998))

(declare-fun m!4631491 () Bool)

(assert (=> b!4036998 m!4631491))

(assert (=> b!4036998 m!4631483))

(assert (=> d!1196138 d!1196406))

(declare-fun d!1196408 () Bool)

(declare-fun e!2504923 () Bool)

(assert (=> d!1196408 e!2504923))

(declare-fun res!1644008 () Bool)

(assert (=> d!1196408 (=> res!1644008 e!2504923)))

(declare-fun lt!1436214 () Bool)

(assert (=> d!1196408 (= res!1644008 (not lt!1436214))))

(declare-fun e!2504924 () Bool)

(assert (=> d!1196408 (= lt!1436214 e!2504924)))

(declare-fun res!1644006 () Bool)

(assert (=> d!1196408 (=> res!1644006 e!2504924)))

(assert (=> d!1196408 (= res!1644006 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196408 (= (isPrefix!4004 lt!1435816 (++!11319 lt!1435816 lt!1435801)) lt!1436214)))

(declare-fun b!4036999 () Bool)

(declare-fun e!2504922 () Bool)

(assert (=> b!4036999 (= e!2504924 e!2504922)))

(declare-fun res!1644007 () Bool)

(assert (=> b!4036999 (=> (not res!1644007) (not e!2504922))))

(assert (=> b!4036999 (= res!1644007 (not (is-Nil!43222 (++!11319 lt!1435816 lt!1435801))))))

(declare-fun b!4037001 () Bool)

(assert (=> b!4037001 (= e!2504922 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 (++!11319 lt!1435816 lt!1435801))))))

(declare-fun b!4037000 () Bool)

(declare-fun res!1644005 () Bool)

(assert (=> b!4037000 (=> (not res!1644005) (not e!2504922))))

(assert (=> b!4037000 (= res!1644005 (= (head!8548 lt!1435816) (head!8548 (++!11319 lt!1435816 lt!1435801))))))

(declare-fun b!4037002 () Bool)

(assert (=> b!4037002 (= e!2504923 (>= (size!32308 (++!11319 lt!1435816 lt!1435801)) (size!32308 lt!1435816)))))

(assert (= (and d!1196408 (not res!1644006)) b!4036999))

(assert (= (and b!4036999 res!1644007) b!4037000))

(assert (= (and b!4037000 res!1644005) b!4037001))

(assert (= (and d!1196408 (not res!1644008)) b!4037002))

(assert (=> b!4037001 m!4630463))

(assert (=> b!4037001 m!4630173))

(declare-fun m!4631493 () Bool)

(assert (=> b!4037001 m!4631493))

(assert (=> b!4037001 m!4630463))

(assert (=> b!4037001 m!4631493))

(declare-fun m!4631495 () Bool)

(assert (=> b!4037001 m!4631495))

(assert (=> b!4037000 m!4630469))

(assert (=> b!4037000 m!4630173))

(declare-fun m!4631497 () Bool)

(assert (=> b!4037000 m!4631497))

(assert (=> b!4037002 m!4630173))

(declare-fun m!4631499 () Bool)

(assert (=> b!4037002 m!4631499))

(assert (=> b!4037002 m!4630193))

(assert (=> d!1196100 d!1196408))

(assert (=> d!1196100 d!1196158))

(declare-fun d!1196410 () Bool)

(assert (=> d!1196410 (isPrefix!4004 lt!1435816 (++!11319 lt!1435816 lt!1435801))))

(assert (=> d!1196410 true))

(declare-fun _$46!1738 () Unit!62414)

(assert (=> d!1196410 (= (choose!24443 lt!1435816 lt!1435801) _$46!1738)))

(declare-fun bs!590601 () Bool)

(assert (= bs!590601 d!1196410))

(assert (=> bs!590601 m!4630173))

(assert (=> bs!590601 m!4630173))

(assert (=> bs!590601 m!4630709))

(assert (=> d!1196100 d!1196410))

(declare-fun d!1196412 () Bool)

(declare-fun lt!1436215 () Int)

(assert (=> d!1196412 (>= lt!1436215 0)))

(declare-fun e!2504925 () Int)

(assert (=> d!1196412 (= lt!1436215 e!2504925)))

(declare-fun c!697242 () Bool)

(assert (=> d!1196412 (= c!697242 (is-Nil!43222 lt!1435822))))

(assert (=> d!1196412 (= (size!32308 lt!1435822) lt!1436215)))

(declare-fun b!4037003 () Bool)

(assert (=> b!4037003 (= e!2504925 0)))

(declare-fun b!4037004 () Bool)

(assert (=> b!4037004 (= e!2504925 (+ 1 (size!32308 (t!334587 lt!1435822))))))

(assert (= (and d!1196412 c!697242) b!4037003))

(assert (= (and d!1196412 (not c!697242)) b!4037004))

(declare-fun m!4631501 () Bool)

(assert (=> b!4037004 m!4631501))

(assert (=> b!4036262 d!1196412))

(assert (=> b!4036262 d!1196064))

(declare-fun b!4037005 () Bool)

(declare-fun e!2504928 () Bool)

(declare-fun e!2504932 () Bool)

(assert (=> b!4037005 (= e!2504928 e!2504932)))

(declare-fun c!697244 () Bool)

(assert (=> b!4037005 (= c!697244 (is-Star!11822 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))))

(declare-fun bm!287150 () Bool)

(declare-fun call!287157 () Bool)

(declare-fun c!697243 () Bool)

(assert (=> bm!287150 (= call!287157 (validRegex!5345 (ite c!697243 (regOne!24157 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (regOne!24156 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))))))

(declare-fun b!4037006 () Bool)

(declare-fun e!2504929 () Bool)

(assert (=> b!4037006 (= e!2504932 e!2504929)))

(assert (=> b!4037006 (= c!697243 (is-Union!11822 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))))

(declare-fun d!1196414 () Bool)

(declare-fun res!1644009 () Bool)

(assert (=> d!1196414 (=> res!1644009 e!2504928)))

(assert (=> d!1196414 (= res!1644009 (is-ElementMatch!11822 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))))

(assert (=> d!1196414 (= (validRegex!5345 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) e!2504928)))

(declare-fun b!4037007 () Bool)

(declare-fun e!2504927 () Bool)

(assert (=> b!4037007 (= e!2504932 e!2504927)))

(declare-fun res!1644012 () Bool)

(assert (=> b!4037007 (= res!1644012 (not (nullable!4145 (reg!12151 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))))))

(assert (=> b!4037007 (=> (not res!1644012) (not e!2504927))))

(declare-fun call!287156 () Bool)

(declare-fun bm!287151 () Bool)

(assert (=> bm!287151 (= call!287156 (validRegex!5345 (ite c!697244 (reg!12151 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (ite c!697243 (regTwo!24157 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (regTwo!24156 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))))))))

(declare-fun b!4037008 () Bool)

(declare-fun res!1644010 () Bool)

(declare-fun e!2504926 () Bool)

(assert (=> b!4037008 (=> res!1644010 e!2504926)))

(assert (=> b!4037008 (= res!1644010 (not (is-Concat!18970 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))))))

(assert (=> b!4037008 (= e!2504929 e!2504926)))

(declare-fun b!4037009 () Bool)

(declare-fun e!2504930 () Bool)

(assert (=> b!4037009 (= e!2504926 e!2504930)))

(declare-fun res!1644013 () Bool)

(assert (=> b!4037009 (=> (not res!1644013) (not e!2504930))))

(assert (=> b!4037009 (= res!1644013 call!287157)))

(declare-fun b!4037010 () Bool)

(declare-fun e!2504931 () Bool)

(declare-fun call!287155 () Bool)

(assert (=> b!4037010 (= e!2504931 call!287155)))

(declare-fun b!4037011 () Bool)

(declare-fun res!1644011 () Bool)

(assert (=> b!4037011 (=> (not res!1644011) (not e!2504931))))

(assert (=> b!4037011 (= res!1644011 call!287157)))

(assert (=> b!4037011 (= e!2504929 e!2504931)))

(declare-fun b!4037012 () Bool)

(assert (=> b!4037012 (= e!2504930 call!287155)))

(declare-fun b!4037013 () Bool)

(assert (=> b!4037013 (= e!2504927 call!287156)))

(declare-fun bm!287152 () Bool)

(assert (=> bm!287152 (= call!287155 call!287156)))

(assert (= (and d!1196414 (not res!1644009)) b!4037005))

(assert (= (and b!4037005 c!697244) b!4037007))

(assert (= (and b!4037005 (not c!697244)) b!4037006))

(assert (= (and b!4037007 res!1644012) b!4037013))

(assert (= (and b!4037006 c!697243) b!4037011))

(assert (= (and b!4037006 (not c!697243)) b!4037008))

(assert (= (and b!4037011 res!1644011) b!4037010))

(assert (= (and b!4037008 (not res!1644010)) b!4037009))

(assert (= (and b!4037009 res!1644013) b!4037012))

(assert (= (or b!4037010 b!4037012) bm!287152))

(assert (= (or b!4037011 b!4037009) bm!287150))

(assert (= (or b!4037013 bm!287152) bm!287151))

(declare-fun m!4631503 () Bool)

(assert (=> bm!287150 m!4631503))

(declare-fun m!4631505 () Bool)

(assert (=> b!4037007 m!4631505))

(declare-fun m!4631507 () Bool)

(assert (=> bm!287151 m!4631507))

(assert (=> d!1196128 d!1196414))

(declare-fun d!1196416 () Bool)

(assert (=> d!1196416 (= (inv!57750 (tag!7777 (h!48644 (t!334589 rules!2999)))) (= (mod (str.len (value!217769 (tag!7777 (h!48644 (t!334589 rules!2999))))) 2) 0))))

(assert (=> b!4036629 d!1196416))

(declare-fun d!1196418 () Bool)

(declare-fun res!1644014 () Bool)

(declare-fun e!2504933 () Bool)

(assert (=> d!1196418 (=> (not res!1644014) (not e!2504933))))

(assert (=> d!1196418 (= res!1644014 (semiInverseModEq!2953 (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999))))))))

(assert (=> d!1196418 (= (inv!57753 (transformation!6917 (h!48644 (t!334589 rules!2999)))) e!2504933)))

(declare-fun b!4037014 () Bool)

(assert (=> b!4037014 (= e!2504933 (equivClasses!2852 (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999))))))))

(assert (= (and d!1196418 res!1644014) b!4037014))

(declare-fun m!4631509 () Bool)

(assert (=> d!1196418 m!4631509))

(declare-fun m!4631511 () Bool)

(assert (=> b!4037014 m!4631511))

(assert (=> b!4036629 d!1196418))

(assert (=> b!4036446 d!1196402))

(assert (=> b!4036446 d!1196278))

(assert (=> b!4036452 d!1196360))

(assert (=> b!4036452 d!1196064))

(declare-fun d!1196420 () Bool)

(declare-fun lt!1436216 () List!43346)

(assert (=> d!1196420 (= (++!11319 (t!334587 lt!1435816) lt!1436216) (tail!6280 prefix!494))))

(declare-fun e!2504934 () List!43346)

(assert (=> d!1196420 (= lt!1436216 e!2504934)))

(declare-fun c!697245 () Bool)

(assert (=> d!1196420 (= c!697245 (is-Cons!43222 (t!334587 lt!1435816)))))

(assert (=> d!1196420 (>= (size!32308 (tail!6280 prefix!494)) (size!32308 (t!334587 lt!1435816)))))

(assert (=> d!1196420 (= (getSuffix!2421 (tail!6280 prefix!494) (t!334587 lt!1435816)) lt!1436216)))

(declare-fun b!4037015 () Bool)

(assert (=> b!4037015 (= e!2504934 (getSuffix!2421 (tail!6280 (tail!6280 prefix!494)) (t!334587 (t!334587 lt!1435816))))))

(declare-fun b!4037016 () Bool)

(assert (=> b!4037016 (= e!2504934 (tail!6280 prefix!494))))

(assert (= (and d!1196420 c!697245) b!4037015))

(assert (= (and d!1196420 (not c!697245)) b!4037016))

(declare-fun m!4631513 () Bool)

(assert (=> d!1196420 m!4631513))

(assert (=> d!1196420 m!4630717))

(declare-fun m!4631515 () Bool)

(assert (=> d!1196420 m!4631515))

(assert (=> d!1196420 m!4630603))

(assert (=> b!4037015 m!4630717))

(declare-fun m!4631517 () Bool)

(assert (=> b!4037015 m!4631517))

(assert (=> b!4037015 m!4631517))

(declare-fun m!4631519 () Bool)

(assert (=> b!4037015 m!4631519))

(assert (=> b!4036575 d!1196420))

(declare-fun d!1196422 () Bool)

(assert (=> d!1196422 (= (tail!6280 prefix!494) (t!334587 prefix!494))))

(assert (=> b!4036575 d!1196422))

(declare-fun d!1196424 () Bool)

(assert (=> d!1196424 (= (nullable!4145 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (nullableFct!1161 (regex!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))))

(declare-fun bs!590602 () Bool)

(assert (= bs!590602 d!1196424))

(declare-fun m!4631521 () Bool)

(assert (=> bs!590602 m!4631521))

(assert (=> b!4036469 d!1196424))

(declare-fun d!1196426 () Bool)

(declare-fun c!697246 () Bool)

(assert (=> d!1196426 (= c!697246 (is-Nil!43222 lt!1436078))))

(declare-fun e!2504935 () (Set C!23830))

(assert (=> d!1196426 (= (content!6568 lt!1436078) e!2504935)))

(declare-fun b!4037017 () Bool)

(assert (=> b!4037017 (= e!2504935 (as set.empty (Set C!23830)))))

(declare-fun b!4037018 () Bool)

(assert (=> b!4037018 (= e!2504935 (set.union (set.insert (h!48642 lt!1436078) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1436078))))))

(assert (= (and d!1196426 c!697246) b!4037017))

(assert (= (and d!1196426 (not c!697246)) b!4037018))

(declare-fun m!4631523 () Bool)

(assert (=> b!4037018 m!4631523))

(declare-fun m!4631525 () Bool)

(assert (=> b!4037018 m!4631525))

(assert (=> d!1196156 d!1196426))

(assert (=> d!1196156 d!1196328))

(declare-fun d!1196428 () Bool)

(declare-fun c!697247 () Bool)

(assert (=> d!1196428 (= c!697247 (is-Nil!43222 newSuffixResult!27))))

(declare-fun e!2504936 () (Set C!23830))

(assert (=> d!1196428 (= (content!6568 newSuffixResult!27) e!2504936)))

(declare-fun b!4037019 () Bool)

(assert (=> b!4037019 (= e!2504936 (as set.empty (Set C!23830)))))

(declare-fun b!4037020 () Bool)

(assert (=> b!4037020 (= e!2504936 (set.union (set.insert (h!48642 newSuffixResult!27) (as set.empty (Set C!23830))) (content!6568 (t!334587 newSuffixResult!27))))))

(assert (= (and d!1196428 c!697247) b!4037019))

(assert (= (and d!1196428 (not c!697247)) b!4037020))

(declare-fun m!4631527 () Bool)

(assert (=> b!4037020 m!4631527))

(declare-fun m!4631529 () Bool)

(assert (=> b!4037020 m!4631529))

(assert (=> d!1196156 d!1196428))

(declare-fun b!4037024 () Bool)

(declare-fun lt!1436217 () List!43346)

(declare-fun e!2504937 () Bool)

(assert (=> b!4037024 (= e!2504937 (or (not (= lt!1436096 Nil!43222)) (= lt!1436217 lt!1435816)))))

(declare-fun b!4037023 () Bool)

(declare-fun res!1644016 () Bool)

(assert (=> b!4037023 (=> (not res!1644016) (not e!2504937))))

(assert (=> b!4037023 (= res!1644016 (= (size!32308 lt!1436217) (+ (size!32308 lt!1435816) (size!32308 lt!1436096))))))

(declare-fun b!4037022 () Bool)

(declare-fun e!2504938 () List!43346)

(assert (=> b!4037022 (= e!2504938 (Cons!43222 (h!48642 lt!1435816) (++!11319 (t!334587 lt!1435816) lt!1436096)))))

(declare-fun b!4037021 () Bool)

(assert (=> b!4037021 (= e!2504938 lt!1436096)))

(declare-fun d!1196430 () Bool)

(assert (=> d!1196430 e!2504937))

(declare-fun res!1644015 () Bool)

(assert (=> d!1196430 (=> (not res!1644015) (not e!2504937))))

(assert (=> d!1196430 (= res!1644015 (= (content!6568 lt!1436217) (set.union (content!6568 lt!1435816) (content!6568 lt!1436096))))))

(assert (=> d!1196430 (= lt!1436217 e!2504938)))

(declare-fun c!697248 () Bool)

(assert (=> d!1196430 (= c!697248 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196430 (= (++!11319 lt!1435816 lt!1436096) lt!1436217)))

(assert (= (and d!1196430 c!697248) b!4037021))

(assert (= (and d!1196430 (not c!697248)) b!4037022))

(assert (= (and d!1196430 res!1644015) b!4037023))

(assert (= (and b!4037023 res!1644016) b!4037024))

(declare-fun m!4631531 () Bool)

(assert (=> b!4037023 m!4631531))

(assert (=> b!4037023 m!4630193))

(declare-fun m!4631533 () Bool)

(assert (=> b!4037023 m!4631533))

(declare-fun m!4631535 () Bool)

(assert (=> b!4037022 m!4631535))

(declare-fun m!4631537 () Bool)

(assert (=> d!1196430 m!4631537))

(assert (=> d!1196430 m!4630443))

(declare-fun m!4631539 () Bool)

(assert (=> d!1196430 m!4631539))

(assert (=> d!1196176 d!1196430))

(assert (=> d!1196176 d!1196066))

(assert (=> d!1196176 d!1196064))

(declare-fun b!4037025 () Bool)

(declare-fun e!2504942 () Bool)

(declare-fun e!2504944 () Bool)

(assert (=> b!4037025 (= e!2504942 e!2504944)))

(declare-fun res!1644018 () Bool)

(assert (=> b!4037025 (=> (not res!1644018) (not e!2504944))))

(declare-fun lt!1436218 () Bool)

(assert (=> b!4037025 (= res!1644018 (not lt!1436218))))

(declare-fun b!4037026 () Bool)

(declare-fun e!2504939 () Bool)

(declare-fun e!2504943 () Bool)

(assert (=> b!4037026 (= e!2504939 e!2504943)))

(declare-fun c!697250 () Bool)

(assert (=> b!4037026 (= c!697250 (is-EmptyLang!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun b!4037027 () Bool)

(declare-fun e!2504940 () Bool)

(assert (=> b!4037027 (= e!2504940 (not (= (head!8548 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))) (c!697106 (regex!6917 (rule!9985 token!484))))))))

(declare-fun b!4037028 () Bool)

(declare-fun res!1644024 () Bool)

(assert (=> b!4037028 (=> res!1644024 e!2504942)))

(assert (=> b!4037028 (= res!1644024 (not (is-ElementMatch!11822 (regex!6917 (rule!9985 token!484)))))))

(assert (=> b!4037028 (= e!2504943 e!2504942)))

(declare-fun d!1196432 () Bool)

(assert (=> d!1196432 e!2504939))

(declare-fun c!697251 () Bool)

(assert (=> d!1196432 (= c!697251 (is-EmptyExpr!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun e!2504941 () Bool)

(assert (=> d!1196432 (= lt!1436218 e!2504941)))

(declare-fun c!697249 () Bool)

(assert (=> d!1196432 (= c!697249 (isEmpty!25795 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))

(assert (=> d!1196432 (validRegex!5345 (regex!6917 (rule!9985 token!484)))))

(assert (=> d!1196432 (= (matchR!5775 (regex!6917 (rule!9985 token!484)) (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))) lt!1436218)))

(declare-fun b!4037029 () Bool)

(assert (=> b!4037029 (= e!2504944 e!2504940)))

(declare-fun res!1644023 () Bool)

(assert (=> b!4037029 (=> res!1644023 e!2504940)))

(declare-fun call!287158 () Bool)

(assert (=> b!4037029 (= res!1644023 call!287158)))

(declare-fun b!4037030 () Bool)

(assert (=> b!4037030 (= e!2504941 (matchR!5775 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831))))) (tail!6280 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831))))))))

(declare-fun b!4037031 () Bool)

(declare-fun res!1644017 () Bool)

(declare-fun e!2504945 () Bool)

(assert (=> b!4037031 (=> (not res!1644017) (not e!2504945))))

(assert (=> b!4037031 (= res!1644017 (not call!287158))))

(declare-fun bm!287153 () Bool)

(assert (=> bm!287153 (= call!287158 (isEmpty!25795 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))

(declare-fun b!4037032 () Bool)

(assert (=> b!4037032 (= e!2504945 (= (head!8548 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))) (c!697106 (regex!6917 (rule!9985 token!484)))))))

(declare-fun b!4037033 () Bool)

(declare-fun res!1644020 () Bool)

(assert (=> b!4037033 (=> res!1644020 e!2504940)))

(assert (=> b!4037033 (= res!1644020 (not (isEmpty!25795 (tail!6280 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))))

(declare-fun b!4037034 () Bool)

(declare-fun res!1644021 () Bool)

(assert (=> b!4037034 (=> res!1644021 e!2504942)))

(assert (=> b!4037034 (= res!1644021 e!2504945)))

(declare-fun res!1644022 () Bool)

(assert (=> b!4037034 (=> (not res!1644022) (not e!2504945))))

(assert (=> b!4037034 (= res!1644022 lt!1436218)))

(declare-fun b!4037035 () Bool)

(assert (=> b!4037035 (= e!2504941 (nullable!4145 (regex!6917 (rule!9985 token!484))))))

(declare-fun b!4037036 () Bool)

(assert (=> b!4037036 (= e!2504943 (not lt!1436218))))

(declare-fun b!4037037 () Bool)

(assert (=> b!4037037 (= e!2504939 (= lt!1436218 call!287158))))

(declare-fun b!4037038 () Bool)

(declare-fun res!1644019 () Bool)

(assert (=> b!4037038 (=> (not res!1644019) (not e!2504945))))

(assert (=> b!4037038 (= res!1644019 (isEmpty!25795 (tail!6280 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831))))))))

(assert (= (and d!1196432 c!697249) b!4037035))

(assert (= (and d!1196432 (not c!697249)) b!4037030))

(assert (= (and d!1196432 c!697251) b!4037037))

(assert (= (and d!1196432 (not c!697251)) b!4037026))

(assert (= (and b!4037026 c!697250) b!4037036))

(assert (= (and b!4037026 (not c!697250)) b!4037028))

(assert (= (and b!4037028 (not res!1644024)) b!4037034))

(assert (= (and b!4037034 res!1644022) b!4037031))

(assert (= (and b!4037031 res!1644017) b!4037038))

(assert (= (and b!4037038 res!1644019) b!4037032))

(assert (= (and b!4037034 (not res!1644021)) b!4037025))

(assert (= (and b!4037025 res!1644018) b!4037029))

(assert (= (and b!4037029 (not res!1644023)) b!4037033))

(assert (= (and b!4037033 (not res!1644020)) b!4037027))

(assert (= (or b!4037037 b!4037029 b!4037031) bm!287153))

(assert (=> d!1196432 m!4630535))

(assert (=> d!1196432 m!4630451))

(declare-fun m!4631541 () Bool)

(assert (=> b!4037030 m!4631541))

(assert (=> b!4037030 m!4631541))

(declare-fun m!4631543 () Bool)

(assert (=> b!4037030 m!4631543))

(declare-fun m!4631545 () Bool)

(assert (=> b!4037030 m!4631545))

(assert (=> b!4037030 m!4631543))

(assert (=> b!4037030 m!4631545))

(declare-fun m!4631547 () Bool)

(assert (=> b!4037030 m!4631547))

(assert (=> b!4037038 m!4631545))

(assert (=> b!4037038 m!4631545))

(declare-fun m!4631549 () Bool)

(assert (=> b!4037038 m!4631549))

(assert (=> b!4037032 m!4631541))

(assert (=> b!4037035 m!4630453))

(assert (=> b!4037033 m!4631545))

(assert (=> b!4037033 m!4631545))

(assert (=> b!4037033 m!4631549))

(assert (=> b!4037027 m!4631541))

(assert (=> bm!287153 m!4630535))

(assert (=> b!4036346 d!1196432))

(declare-fun b!4037136 () Bool)

(declare-fun e!2505013 () Unit!62414)

(declare-fun Unit!62427 () Unit!62414)

(assert (=> b!4037136 (= e!2505013 Unit!62427)))

(declare-fun lt!1436326 () Unit!62414)

(declare-fun call!287187 () Unit!62414)

(assert (=> b!4037136 (= lt!1436326 call!287187)))

(declare-fun call!287186 () Bool)

(assert (=> b!4037136 call!287186))

(declare-fun lt!1436315 () Unit!62414)

(assert (=> b!4037136 (= lt!1436315 lt!1436326)))

(declare-fun lt!1436336 () Unit!62414)

(declare-fun call!287185 () Unit!62414)

(assert (=> b!4037136 (= lt!1436336 call!287185)))

(assert (=> b!4037136 (= lt!1435831 Nil!43222)))

(declare-fun lt!1436325 () Unit!62414)

(assert (=> b!4037136 (= lt!1436325 lt!1436336)))

(assert (=> b!4037136 false))

(declare-fun b!4037137 () Bool)

(declare-fun e!2505010 () tuple2!42308)

(declare-fun e!2505016 () tuple2!42308)

(assert (=> b!4037137 (= e!2505010 e!2505016)))

(declare-fun c!697281 () Bool)

(assert (=> b!4037137 (= c!697281 (= (size!32308 Nil!43222) (size!32308 lt!1435831)))))

(declare-fun bm!287180 () Bool)

(assert (=> bm!287180 (= call!287186 (isPrefix!4004 lt!1435831 lt!1435831))))

(declare-fun b!4037138 () Bool)

(declare-fun c!697283 () Bool)

(declare-fun call!287191 () Bool)

(assert (=> b!4037138 (= c!697283 call!287191)))

(declare-fun lt!1436321 () Unit!62414)

(declare-fun lt!1436319 () Unit!62414)

(assert (=> b!4037138 (= lt!1436321 lt!1436319)))

(declare-fun lt!1436311 () C!23830)

(declare-fun lt!1436329 () List!43346)

(assert (=> b!4037138 (= (++!11319 (++!11319 Nil!43222 (Cons!43222 lt!1436311 Nil!43222)) lt!1436329) lt!1435831)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1250 (List!43346 C!23830 List!43346 List!43346) Unit!62414)

(assert (=> b!4037138 (= lt!1436319 (lemmaMoveElementToOtherListKeepsConcatEq!1250 Nil!43222 lt!1436311 lt!1436329 lt!1435831))))

(assert (=> b!4037138 (= lt!1436329 (tail!6280 lt!1435831))))

(assert (=> b!4037138 (= lt!1436311 (head!8548 lt!1435831))))

(declare-fun lt!1436313 () Unit!62414)

(declare-fun lt!1436316 () Unit!62414)

(assert (=> b!4037138 (= lt!1436313 lt!1436316)))

(assert (=> b!4037138 (isPrefix!4004 (++!11319 Nil!43222 (Cons!43222 (head!8548 (getSuffix!2421 lt!1435831 Nil!43222)) Nil!43222)) lt!1435831)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!632 (List!43346 List!43346) Unit!62414)

(assert (=> b!4037138 (= lt!1436316 (lemmaAddHeadSuffixToPrefixStillPrefix!632 Nil!43222 lt!1435831))))

(declare-fun lt!1436337 () Unit!62414)

(declare-fun lt!1436331 () Unit!62414)

(assert (=> b!4037138 (= lt!1436337 lt!1436331)))

(assert (=> b!4037138 (= lt!1436331 (lemmaAddHeadSuffixToPrefixStillPrefix!632 Nil!43222 lt!1435831))))

(declare-fun lt!1436324 () List!43346)

(assert (=> b!4037138 (= lt!1436324 (++!11319 Nil!43222 (Cons!43222 (head!8548 lt!1435831) Nil!43222)))))

(declare-fun lt!1436320 () Unit!62414)

(assert (=> b!4037138 (= lt!1436320 e!2505013)))

(declare-fun c!697285 () Bool)

(assert (=> b!4037138 (= c!697285 (= (size!32308 Nil!43222) (size!32308 lt!1435831)))))

(declare-fun lt!1436323 () Unit!62414)

(declare-fun lt!1436318 () Unit!62414)

(assert (=> b!4037138 (= lt!1436323 lt!1436318)))

(assert (=> b!4037138 (<= (size!32308 Nil!43222) (size!32308 lt!1435831))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!440 (List!43346 List!43346) Unit!62414)

(assert (=> b!4037138 (= lt!1436318 (lemmaIsPrefixThenSmallerEqSize!440 Nil!43222 lt!1435831))))

(declare-fun e!2505011 () tuple2!42308)

(assert (=> b!4037138 (= e!2505016 e!2505011)))

(declare-fun d!1196434 () Bool)

(declare-fun e!2505014 () Bool)

(assert (=> d!1196434 e!2505014))

(declare-fun res!1644062 () Bool)

(assert (=> d!1196434 (=> (not res!1644062) (not e!2505014))))

(declare-fun lt!1436338 () tuple2!42308)

(assert (=> d!1196434 (= res!1644062 (= (++!11319 (_1!24288 lt!1436338) (_2!24288 lt!1436338)) lt!1435831))))

(assert (=> d!1196434 (= lt!1436338 e!2505010)))

(declare-fun c!697286 () Bool)

(declare-fun lostCause!1006 (Regex!11822) Bool)

(assert (=> d!1196434 (= c!697286 (lostCause!1006 (regex!6917 (rule!9985 token!484))))))

(declare-fun lt!1436334 () Unit!62414)

(declare-fun Unit!62428 () Unit!62414)

(assert (=> d!1196434 (= lt!1436334 Unit!62428)))

(assert (=> d!1196434 (= (getSuffix!2421 lt!1435831 Nil!43222) lt!1435831)))

(declare-fun lt!1436317 () Unit!62414)

(declare-fun lt!1436322 () Unit!62414)

(assert (=> d!1196434 (= lt!1436317 lt!1436322)))

(declare-fun lt!1436314 () List!43346)

(assert (=> d!1196434 (= lt!1435831 lt!1436314)))

(assert (=> d!1196434 (= lt!1436322 (lemmaSamePrefixThenSameSuffix!2165 Nil!43222 lt!1435831 Nil!43222 lt!1436314 lt!1435831))))

(assert (=> d!1196434 (= lt!1436314 (getSuffix!2421 lt!1435831 Nil!43222))))

(declare-fun lt!1436330 () Unit!62414)

(declare-fun lt!1436328 () Unit!62414)

(assert (=> d!1196434 (= lt!1436330 lt!1436328)))

(assert (=> d!1196434 (isPrefix!4004 Nil!43222 (++!11319 Nil!43222 lt!1435831))))

(assert (=> d!1196434 (= lt!1436328 (lemmaConcatTwoListThenFirstIsPrefix!2839 Nil!43222 lt!1435831))))

(assert (=> d!1196434 (validRegex!5345 (regex!6917 (rule!9985 token!484)))))

(assert (=> d!1196434 (= (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)) lt!1436338)))

(declare-fun b!4037139 () Bool)

(declare-fun c!697284 () Bool)

(assert (=> b!4037139 (= c!697284 call!287191)))

(declare-fun lt!1436312 () Unit!62414)

(declare-fun lt!1436335 () Unit!62414)

(assert (=> b!4037139 (= lt!1436312 lt!1436335)))

(assert (=> b!4037139 (= lt!1435831 Nil!43222)))

(assert (=> b!4037139 (= lt!1436335 call!287185)))

(declare-fun lt!1436333 () Unit!62414)

(declare-fun lt!1436327 () Unit!62414)

(assert (=> b!4037139 (= lt!1436333 lt!1436327)))

(assert (=> b!4037139 call!287186))

(assert (=> b!4037139 (= lt!1436327 call!287187)))

(declare-fun e!2505009 () tuple2!42308)

(assert (=> b!4037139 (= e!2505016 e!2505009)))

(declare-fun b!4037140 () Bool)

(declare-fun call!287189 () tuple2!42308)

(assert (=> b!4037140 (= e!2505011 call!287189)))

(declare-fun b!4037141 () Bool)

(declare-fun Unit!62429 () Unit!62414)

(assert (=> b!4037141 (= e!2505013 Unit!62429)))

(declare-fun bm!287181 () Bool)

(assert (=> bm!287181 (= call!287187 (lemmaIsPrefixRefl!2571 lt!1435831 lt!1435831))))

(declare-fun b!4037142 () Bool)

(assert (=> b!4037142 (= e!2505009 (tuple2!42309 Nil!43222 lt!1435831))))

(declare-fun b!4037143 () Bool)

(assert (=> b!4037143 (= e!2505009 (tuple2!42309 Nil!43222 Nil!43222))))

(declare-fun b!4037144 () Bool)

(declare-fun e!2505012 () tuple2!42308)

(assert (=> b!4037144 (= e!2505012 (tuple2!42309 Nil!43222 lt!1435831))))

(declare-fun bm!287182 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!916 (List!43346 List!43346 List!43346) Unit!62414)

(assert (=> bm!287182 (= call!287185 (lemmaIsPrefixSameLengthThenSameList!916 lt!1435831 Nil!43222 lt!1435831))))

(declare-fun bm!287183 () Bool)

(declare-fun call!287190 () List!43346)

(assert (=> bm!287183 (= call!287190 (tail!6280 lt!1435831))))

(declare-fun b!4037145 () Bool)

(declare-fun lt!1436332 () tuple2!42308)

(assert (=> b!4037145 (= e!2505012 lt!1436332)))

(declare-fun bm!287184 () Bool)

(declare-fun call!287188 () C!23830)

(assert (=> bm!287184 (= call!287188 (head!8548 lt!1435831))))

(declare-fun b!4037146 () Bool)

(assert (=> b!4037146 (= e!2505011 e!2505012)))

(assert (=> b!4037146 (= lt!1436332 call!287189)))

(declare-fun c!697282 () Bool)

(assert (=> b!4037146 (= c!697282 (isEmpty!25795 (_1!24288 lt!1436332)))))

(declare-fun call!287192 () Regex!11822)

(declare-fun bm!287185 () Bool)

(assert (=> bm!287185 (= call!287189 (findLongestMatchInner!1382 call!287192 lt!1436324 (+ (size!32308 Nil!43222) 1) call!287190 lt!1435831 (size!32308 lt!1435831)))))

(declare-fun b!4037147 () Bool)

(declare-fun e!2505015 () Bool)

(assert (=> b!4037147 (= e!2505014 e!2505015)))

(declare-fun res!1644063 () Bool)

(assert (=> b!4037147 (=> res!1644063 e!2505015)))

(assert (=> b!4037147 (= res!1644063 (isEmpty!25795 (_1!24288 lt!1436338)))))

(declare-fun b!4037148 () Bool)

(assert (=> b!4037148 (= e!2505010 (tuple2!42309 Nil!43222 lt!1435831))))

(declare-fun bm!287186 () Bool)

(assert (=> bm!287186 (= call!287191 (nullable!4145 (regex!6917 (rule!9985 token!484))))))

(declare-fun b!4037149 () Bool)

(assert (=> b!4037149 (= e!2505015 (>= (size!32308 (_1!24288 lt!1436338)) (size!32308 Nil!43222)))))

(declare-fun bm!287187 () Bool)

(assert (=> bm!287187 (= call!287192 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) call!287188))))

(assert (= (and d!1196434 c!697286) b!4037148))

(assert (= (and d!1196434 (not c!697286)) b!4037137))

(assert (= (and b!4037137 c!697281) b!4037139))

(assert (= (and b!4037137 (not c!697281)) b!4037138))

(assert (= (and b!4037139 c!697284) b!4037143))

(assert (= (and b!4037139 (not c!697284)) b!4037142))

(assert (= (and b!4037138 c!697285) b!4037136))

(assert (= (and b!4037138 (not c!697285)) b!4037141))

(assert (= (and b!4037138 c!697283) b!4037146))

(assert (= (and b!4037138 (not c!697283)) b!4037140))

(assert (= (and b!4037146 c!697282) b!4037144))

(assert (= (and b!4037146 (not c!697282)) b!4037145))

(assert (= (or b!4037146 b!4037140) bm!287184))

(assert (= (or b!4037146 b!4037140) bm!287183))

(assert (= (or b!4037146 b!4037140) bm!287187))

(assert (= (or b!4037146 b!4037140) bm!287185))

(assert (= (or b!4037139 b!4037136) bm!287180))

(assert (= (or b!4037139 b!4037138) bm!287186))

(assert (= (or b!4037139 b!4037136) bm!287182))

(assert (= (or b!4037139 b!4037136) bm!287181))

(assert (= (and d!1196434 res!1644062) b!4037147))

(assert (= (and b!4037147 (not res!1644063)) b!4037149))

(declare-fun m!4631661 () Bool)

(assert (=> b!4037149 m!4631661))

(assert (=> b!4037149 m!4630521))

(assert (=> bm!287184 m!4630725))

(declare-fun m!4631663 () Bool)

(assert (=> bm!287187 m!4631663))

(assert (=> bm!287183 m!4630719))

(assert (=> bm!287186 m!4630453))

(assert (=> bm!287181 m!4630179))

(declare-fun m!4631665 () Bool)

(assert (=> b!4037138 m!4631665))

(declare-fun m!4631667 () Bool)

(assert (=> b!4037138 m!4631667))

(assert (=> b!4037138 m!4631667))

(declare-fun m!4631669 () Bool)

(assert (=> b!4037138 m!4631669))

(declare-fun m!4631671 () Bool)

(assert (=> b!4037138 m!4631671))

(declare-fun m!4631673 () Bool)

(assert (=> b!4037138 m!4631673))

(declare-fun m!4631675 () Bool)

(assert (=> b!4037138 m!4631675))

(declare-fun m!4631677 () Bool)

(assert (=> b!4037138 m!4631677))

(assert (=> b!4037138 m!4630719))

(declare-fun m!4631679 () Bool)

(assert (=> b!4037138 m!4631679))

(assert (=> b!4037138 m!4630725))

(assert (=> b!4037138 m!4631671))

(assert (=> b!4037138 m!4631675))

(declare-fun m!4631681 () Bool)

(assert (=> b!4037138 m!4631681))

(assert (=> b!4037138 m!4630521))

(assert (=> b!4037138 m!4630523))

(declare-fun m!4631683 () Bool)

(assert (=> b!4037138 m!4631683))

(assert (=> bm!287180 m!4630177))

(declare-fun m!4631685 () Bool)

(assert (=> b!4037147 m!4631685))

(assert (=> bm!287185 m!4630523))

(declare-fun m!4631687 () Bool)

(assert (=> bm!287185 m!4631687))

(assert (=> d!1196434 m!4631667))

(declare-fun m!4631689 () Bool)

(assert (=> d!1196434 m!4631689))

(declare-fun m!4631691 () Bool)

(assert (=> d!1196434 m!4631691))

(assert (=> d!1196434 m!4631691))

(declare-fun m!4631693 () Bool)

(assert (=> d!1196434 m!4631693))

(assert (=> d!1196434 m!4630451))

(declare-fun m!4631695 () Bool)

(assert (=> d!1196434 m!4631695))

(declare-fun m!4631697 () Bool)

(assert (=> d!1196434 m!4631697))

(declare-fun m!4631699 () Bool)

(assert (=> d!1196434 m!4631699))

(declare-fun m!4631701 () Bool)

(assert (=> bm!287182 m!4631701))

(declare-fun m!4631703 () Bool)

(assert (=> b!4037146 m!4631703))

(assert (=> b!4036346 d!1196434))

(declare-fun d!1196496 () Bool)

(declare-fun lt!1436341 () Int)

(assert (=> d!1196496 (>= lt!1436341 0)))

(declare-fun e!2505019 () Int)

(assert (=> d!1196496 (= lt!1436341 e!2505019)))

(declare-fun c!697287 () Bool)

(assert (=> d!1196496 (= c!697287 (is-Nil!43222 Nil!43222))))

(assert (=> d!1196496 (= (size!32308 Nil!43222) lt!1436341)))

(declare-fun b!4037152 () Bool)

(assert (=> b!4037152 (= e!2505019 0)))

(declare-fun b!4037153 () Bool)

(assert (=> b!4037153 (= e!2505019 (+ 1 (size!32308 (t!334587 Nil!43222))))))

(assert (= (and d!1196496 c!697287) b!4037152))

(assert (= (and d!1196496 (not c!697287)) b!4037153))

(declare-fun m!4631705 () Bool)

(assert (=> b!4037153 m!4631705))

(assert (=> b!4036346 d!1196496))

(assert (=> b!4036346 d!1196360))

(declare-fun lt!1436342 () List!43346)

(declare-fun b!4037158 () Bool)

(declare-fun e!2505020 () Bool)

(assert (=> b!4037158 (= e!2505020 (or (not (= newSuffixResult!27 Nil!43222)) (= lt!1436342 (t!334587 lt!1435816))))))

(declare-fun b!4037156 () Bool)

(declare-fun res!1644067 () Bool)

(assert (=> b!4037156 (=> (not res!1644067) (not e!2505020))))

(assert (=> b!4037156 (= res!1644067 (= (size!32308 lt!1436342) (+ (size!32308 (t!334587 lt!1435816)) (size!32308 newSuffixResult!27))))))

(declare-fun b!4037155 () Bool)

(declare-fun e!2505021 () List!43346)

(assert (=> b!4037155 (= e!2505021 (Cons!43222 (h!48642 (t!334587 lt!1435816)) (++!11319 (t!334587 (t!334587 lt!1435816)) newSuffixResult!27)))))

(declare-fun b!4037154 () Bool)

(assert (=> b!4037154 (= e!2505021 newSuffixResult!27)))

(declare-fun d!1196498 () Bool)

(assert (=> d!1196498 e!2505020))

(declare-fun res!1644066 () Bool)

(assert (=> d!1196498 (=> (not res!1644066) (not e!2505020))))

(assert (=> d!1196498 (= res!1644066 (= (content!6568 lt!1436342) (set.union (content!6568 (t!334587 lt!1435816)) (content!6568 newSuffixResult!27))))))

(assert (=> d!1196498 (= lt!1436342 e!2505021)))

(declare-fun c!697288 () Bool)

(assert (=> d!1196498 (= c!697288 (is-Nil!43222 (t!334587 lt!1435816)))))

(assert (=> d!1196498 (= (++!11319 (t!334587 lt!1435816) newSuffixResult!27) lt!1436342)))

(assert (= (and d!1196498 c!697288) b!4037154))

(assert (= (and d!1196498 (not c!697288)) b!4037155))

(assert (= (and d!1196498 res!1644066) b!4037156))

(assert (= (and b!4037156 res!1644067) b!4037158))

(declare-fun m!4631707 () Bool)

(assert (=> b!4037156 m!4631707))

(assert (=> b!4037156 m!4630603))

(assert (=> b!4037156 m!4630885))

(declare-fun m!4631709 () Bool)

(assert (=> b!4037155 m!4631709))

(declare-fun m!4631711 () Bool)

(assert (=> d!1196498 m!4631711))

(assert (=> d!1196498 m!4631331))

(assert (=> d!1196498 m!4630891))

(assert (=> b!4036508 d!1196498))

(declare-fun b!4037159 () Bool)

(declare-fun e!2505026 () Bool)

(declare-fun e!2505028 () Bool)

(assert (=> b!4037159 (= e!2505026 e!2505028)))

(declare-fun res!1644070 () Bool)

(assert (=> b!4037159 (=> (not res!1644070) (not e!2505028))))

(declare-fun lt!1436344 () Bool)

(assert (=> b!4037159 (= res!1644070 (not lt!1436344))))

(declare-fun b!4037160 () Bool)

(declare-fun e!2505023 () Bool)

(declare-fun e!2505027 () Bool)

(assert (=> b!4037160 (= e!2505023 e!2505027)))

(declare-fun c!697290 () Bool)

(assert (=> b!4037160 (= c!697290 (is-EmptyLang!11822 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043))))))))

(declare-fun b!4037161 () Bool)

(declare-fun e!2505024 () Bool)

(assert (=> b!4037161 (= e!2505024 (not (= (head!8548 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))) (c!697106 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043))))))))))

(declare-fun b!4037162 () Bool)

(declare-fun res!1644076 () Bool)

(assert (=> b!4037162 (=> res!1644076 e!2505026)))

(assert (=> b!4037162 (= res!1644076 (not (is-ElementMatch!11822 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))))))

(assert (=> b!4037162 (= e!2505027 e!2505026)))

(declare-fun d!1196500 () Bool)

(assert (=> d!1196500 e!2505023))

(declare-fun c!697291 () Bool)

(assert (=> d!1196500 (= c!697291 (is-EmptyExpr!11822 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043))))))))

(declare-fun e!2505025 () Bool)

(assert (=> d!1196500 (= lt!1436344 e!2505025)))

(declare-fun c!697289 () Bool)

(assert (=> d!1196500 (= c!697289 (isEmpty!25795 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))))))

(assert (=> d!1196500 (validRegex!5345 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))))

(assert (=> d!1196500 (= (matchR!5775 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))) lt!1436344)))

(declare-fun b!4037163 () Bool)

(assert (=> b!4037163 (= e!2505028 e!2505024)))

(declare-fun res!1644075 () Bool)

(assert (=> b!4037163 (=> res!1644075 e!2505024)))

(declare-fun call!287193 () Bool)

(assert (=> b!4037163 (= res!1644075 call!287193)))

(declare-fun b!4037164 () Bool)

(assert (=> b!4037164 (= e!2505025 (matchR!5775 (derivativeStep!3551 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))) (head!8548 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043)))))) (tail!6280 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043)))))))))

(declare-fun b!4037165 () Bool)

(declare-fun res!1644069 () Bool)

(declare-fun e!2505029 () Bool)

(assert (=> b!4037165 (=> (not res!1644069) (not e!2505029))))

(assert (=> b!4037165 (= res!1644069 (not call!287193))))

(declare-fun bm!287188 () Bool)

(assert (=> bm!287188 (= call!287193 (isEmpty!25795 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))))))

(declare-fun b!4037166 () Bool)

(assert (=> b!4037166 (= e!2505029 (= (head!8548 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))) (c!697106 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))))))

(declare-fun b!4037167 () Bool)

(declare-fun res!1644072 () Bool)

(assert (=> b!4037167 (=> res!1644072 e!2505024)))

(assert (=> b!4037167 (= res!1644072 (not (isEmpty!25795 (tail!6280 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))))))))

(declare-fun b!4037168 () Bool)

(declare-fun res!1644073 () Bool)

(assert (=> b!4037168 (=> res!1644073 e!2505026)))

(assert (=> b!4037168 (= res!1644073 e!2505029)))

(declare-fun res!1644074 () Bool)

(assert (=> b!4037168 (=> (not res!1644074) (not e!2505029))))

(assert (=> b!4037168 (= res!1644074 lt!1436344)))

(declare-fun b!4037169 () Bool)

(assert (=> b!4037169 (= e!2505025 (nullable!4145 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043))))))))

(declare-fun b!4037170 () Bool)

(assert (=> b!4037170 (= e!2505027 (not lt!1436344))))

(declare-fun b!4037171 () Bool)

(assert (=> b!4037171 (= e!2505023 (= lt!1436344 call!287193))))

(declare-fun b!4037172 () Bool)

(declare-fun res!1644071 () Bool)

(assert (=> b!4037172 (=> (not res!1644071) (not e!2505029))))

(assert (=> b!4037172 (= res!1644071 (isEmpty!25795 (tail!6280 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043)))))))))

(assert (= (and d!1196500 c!697289) b!4037169))

(assert (= (and d!1196500 (not c!697289)) b!4037164))

(assert (= (and d!1196500 c!697291) b!4037171))

(assert (= (and d!1196500 (not c!697291)) b!4037160))

(assert (= (and b!4037160 c!697290) b!4037170))

(assert (= (and b!4037160 (not c!697290)) b!4037162))

(assert (= (and b!4037162 (not res!1644076)) b!4037168))

(assert (= (and b!4037168 res!1644074) b!4037165))

(assert (= (and b!4037165 res!1644069) b!4037172))

(assert (= (and b!4037172 res!1644071) b!4037166))

(assert (= (and b!4037168 (not res!1644073)) b!4037159))

(assert (= (and b!4037159 res!1644070) b!4037163))

(assert (= (and b!4037163 (not res!1644075)) b!4037167))

(assert (= (and b!4037167 (not res!1644072)) b!4037161))

(assert (= (or b!4037171 b!4037163 b!4037165) bm!287188))

(assert (=> d!1196500 m!4630669))

(declare-fun m!4631717 () Bool)

(assert (=> d!1196500 m!4631717))

(declare-fun m!4631719 () Bool)

(assert (=> d!1196500 m!4631719))

(assert (=> b!4037164 m!4630669))

(declare-fun m!4631721 () Bool)

(assert (=> b!4037164 m!4631721))

(assert (=> b!4037164 m!4631721))

(declare-fun m!4631723 () Bool)

(assert (=> b!4037164 m!4631723))

(assert (=> b!4037164 m!4630669))

(declare-fun m!4631725 () Bool)

(assert (=> b!4037164 m!4631725))

(assert (=> b!4037164 m!4631723))

(assert (=> b!4037164 m!4631725))

(declare-fun m!4631727 () Bool)

(assert (=> b!4037164 m!4631727))

(assert (=> b!4037172 m!4630669))

(assert (=> b!4037172 m!4631725))

(assert (=> b!4037172 m!4631725))

(declare-fun m!4631729 () Bool)

(assert (=> b!4037172 m!4631729))

(assert (=> b!4037166 m!4630669))

(assert (=> b!4037166 m!4631721))

(declare-fun m!4631731 () Bool)

(assert (=> b!4037169 m!4631731))

(assert (=> b!4037167 m!4630669))

(assert (=> b!4037167 m!4631725))

(assert (=> b!4037167 m!4631725))

(assert (=> b!4037167 m!4631729))

(assert (=> b!4037161 m!4630669))

(assert (=> b!4037161 m!4631721))

(assert (=> bm!287188 m!4630669))

(assert (=> bm!287188 m!4631717))

(assert (=> b!4036432 d!1196500))

(assert (=> b!4036432 d!1196294))

(assert (=> b!4036432 d!1196314))

(assert (=> b!4036432 d!1196316))

(declare-fun d!1196508 () Bool)

(assert (=> d!1196508 true))

(declare-fun lambda!127313 () Int)

(declare-fun order!22611 () Int)

(declare-fun order!22613 () Int)

(declare-fun dynLambda!18333 (Int Int) Int)

(declare-fun dynLambda!18334 (Int Int) Int)

(assert (=> d!1196508 (< (dynLambda!18333 order!22611 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) (dynLambda!18334 order!22613 lambda!127313))))

(assert (=> d!1196508 true))

(assert (=> d!1196508 (< (dynLambda!18331 order!22607 (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) (dynLambda!18334 order!22613 lambda!127313))))

(declare-fun Forall!1486 (Int) Bool)

(assert (=> d!1196508 (= (semiInverseModEq!2953 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) (Forall!1486 lambda!127313))))

(declare-fun bs!590611 () Bool)

(assert (= bs!590611 d!1196508))

(declare-fun m!4631733 () Bool)

(assert (=> bs!590611 m!4631733))

(assert (=> d!1196136 d!1196508))

(declare-fun d!1196510 () Bool)

(declare-fun lt!1436348 () Int)

(assert (=> d!1196510 (>= lt!1436348 0)))

(declare-fun e!2505031 () Int)

(assert (=> d!1196510 (= lt!1436348 e!2505031)))

(declare-fun c!697294 () Bool)

(assert (=> d!1196510 (= c!697294 (is-Nil!43222 (t!334587 newSuffix!27)))))

(assert (=> d!1196510 (= (size!32308 (t!334587 newSuffix!27)) lt!1436348)))

(declare-fun b!4037179 () Bool)

(assert (=> b!4037179 (= e!2505031 0)))

(declare-fun b!4037180 () Bool)

(assert (=> b!4037180 (= e!2505031 (+ 1 (size!32308 (t!334587 (t!334587 newSuffix!27)))))))

(assert (= (and d!1196510 c!697294) b!4037179))

(assert (= (and d!1196510 (not c!697294)) b!4037180))

(declare-fun m!4631735 () Bool)

(assert (=> b!4037180 m!4631735))

(assert (=> b!4036250 d!1196510))

(assert (=> b!4036561 d!1196378))

(assert (=> b!4036561 d!1196274))

(declare-fun d!1196512 () Bool)

(declare-fun lt!1436349 () Int)

(assert (=> d!1196512 (>= lt!1436349 0)))

(declare-fun e!2505032 () Int)

(assert (=> d!1196512 (= lt!1436349 e!2505032)))

(declare-fun c!697295 () Bool)

(assert (=> d!1196512 (= c!697295 (is-Nil!43222 (t!334587 prefix!494)))))

(assert (=> d!1196512 (= (size!32308 (t!334587 prefix!494)) lt!1436349)))

(declare-fun b!4037181 () Bool)

(assert (=> b!4037181 (= e!2505032 0)))

(declare-fun b!4037182 () Bool)

(assert (=> b!4037182 (= e!2505032 (+ 1 (size!32308 (t!334587 (t!334587 prefix!494)))))))

(assert (= (and d!1196512 c!697295) b!4037181))

(assert (= (and d!1196512 (not c!697295)) b!4037182))

(declare-fun m!4631737 () Bool)

(assert (=> b!4037182 m!4631737))

(assert (=> b!4036381 d!1196512))

(declare-fun d!1196514 () Bool)

(assert (=> d!1196514 (= (isEmpty!25798 lt!1435997) (not (is-Some!9330 lt!1435997)))))

(assert (=> d!1196032 d!1196514))

(declare-fun d!1196516 () Bool)

(assert (=> d!1196516 (= (isEmpty!25795 (_1!24288 lt!1435998)) (is-Nil!43222 (_1!24288 lt!1435998)))))

(assert (=> d!1196032 d!1196516))

(declare-fun d!1196518 () Bool)

(declare-fun lt!1436372 () tuple2!42308)

(assert (=> d!1196518 (= (++!11319 (_1!24288 lt!1436372) (_2!24288 lt!1436372)) lt!1435831)))

(declare-fun sizeTr!269 (List!43346 Int) Int)

(assert (=> d!1196518 (= lt!1436372 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 0 lt!1435831 lt!1435831 (sizeTr!269 lt!1435831 0)))))

(declare-fun lt!1436371 () Unit!62414)

(declare-fun lt!1436367 () Unit!62414)

(assert (=> d!1196518 (= lt!1436371 lt!1436367)))

(declare-fun lt!1436366 () List!43346)

(declare-fun lt!1436369 () Int)

(assert (=> d!1196518 (= (sizeTr!269 lt!1436366 lt!1436369) (+ (size!32308 lt!1436366) lt!1436369))))

(declare-fun lemmaSizeTrEqualsSize!268 (List!43346 Int) Unit!62414)

(assert (=> d!1196518 (= lt!1436367 (lemmaSizeTrEqualsSize!268 lt!1436366 lt!1436369))))

(assert (=> d!1196518 (= lt!1436369 0)))

(assert (=> d!1196518 (= lt!1436366 Nil!43222)))

(declare-fun lt!1436370 () Unit!62414)

(declare-fun lt!1436368 () Unit!62414)

(assert (=> d!1196518 (= lt!1436370 lt!1436368)))

(declare-fun lt!1436373 () Int)

(assert (=> d!1196518 (= (sizeTr!269 lt!1435831 lt!1436373) (+ (size!32308 lt!1435831) lt!1436373))))

(assert (=> d!1196518 (= lt!1436368 (lemmaSizeTrEqualsSize!268 lt!1435831 lt!1436373))))

(assert (=> d!1196518 (= lt!1436373 0)))

(assert (=> d!1196518 (validRegex!5345 (regex!6917 (rule!9985 token!484)))))

(assert (=> d!1196518 (= (findLongestMatch!1295 (regex!6917 (rule!9985 token!484)) lt!1435831) lt!1436372)))

(declare-fun bs!590612 () Bool)

(assert (= bs!590612 d!1196518))

(assert (=> bs!590612 m!4630523))

(assert (=> bs!590612 m!4630451))

(declare-fun m!4631739 () Bool)

(assert (=> bs!590612 m!4631739))

(declare-fun m!4631741 () Bool)

(assert (=> bs!590612 m!4631741))

(declare-fun m!4631743 () Bool)

(assert (=> bs!590612 m!4631743))

(declare-fun m!4631745 () Bool)

(assert (=> bs!590612 m!4631745))

(declare-fun m!4631747 () Bool)

(assert (=> bs!590612 m!4631747))

(declare-fun m!4631749 () Bool)

(assert (=> bs!590612 m!4631749))

(declare-fun m!4631751 () Bool)

(assert (=> bs!590612 m!4631751))

(assert (=> bs!590612 m!4631749))

(declare-fun m!4631753 () Bool)

(assert (=> bs!590612 m!4631753))

(assert (=> d!1196032 d!1196518))

(assert (=> d!1196032 d!1196014))

(declare-fun b!4037183 () Bool)

(declare-fun e!2505036 () Bool)

(declare-fun e!2505038 () Bool)

(assert (=> b!4037183 (= e!2505036 e!2505038)))

(declare-fun res!1644078 () Bool)

(assert (=> b!4037183 (=> (not res!1644078) (not e!2505038))))

(declare-fun lt!1436374 () Bool)

(assert (=> b!4037183 (= res!1644078 (not lt!1436374))))

(declare-fun b!4037184 () Bool)

(declare-fun e!2505033 () Bool)

(declare-fun e!2505037 () Bool)

(assert (=> b!4037184 (= e!2505033 e!2505037)))

(declare-fun c!697297 () Bool)

(assert (=> b!4037184 (= c!697297 (is-EmptyLang!11822 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816))))))

(declare-fun b!4037185 () Bool)

(declare-fun e!2505034 () Bool)

(assert (=> b!4037185 (= e!2505034 (not (= (head!8548 (tail!6280 lt!1435816)) (c!697106 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816))))))))

(declare-fun b!4037186 () Bool)

(declare-fun res!1644084 () Bool)

(assert (=> b!4037186 (=> res!1644084 e!2505036)))

(assert (=> b!4037186 (= res!1644084 (not (is-ElementMatch!11822 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816)))))))

(assert (=> b!4037186 (= e!2505037 e!2505036)))

(declare-fun d!1196520 () Bool)

(assert (=> d!1196520 e!2505033))

(declare-fun c!697298 () Bool)

(assert (=> d!1196520 (= c!697298 (is-EmptyExpr!11822 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816))))))

(declare-fun e!2505035 () Bool)

(assert (=> d!1196520 (= lt!1436374 e!2505035)))

(declare-fun c!697296 () Bool)

(assert (=> d!1196520 (= c!697296 (isEmpty!25795 (tail!6280 lt!1435816)))))

(assert (=> d!1196520 (validRegex!5345 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816)))))

(assert (=> d!1196520 (= (matchR!5775 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816)) (tail!6280 lt!1435816)) lt!1436374)))

(declare-fun b!4037187 () Bool)

(assert (=> b!4037187 (= e!2505038 e!2505034)))

(declare-fun res!1644083 () Bool)

(assert (=> b!4037187 (=> res!1644083 e!2505034)))

(declare-fun call!287194 () Bool)

(assert (=> b!4037187 (= res!1644083 call!287194)))

(declare-fun b!4037188 () Bool)

(assert (=> b!4037188 (= e!2505035 (matchR!5775 (derivativeStep!3551 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816)) (head!8548 (tail!6280 lt!1435816))) (tail!6280 (tail!6280 lt!1435816))))))

(declare-fun b!4037189 () Bool)

(declare-fun res!1644077 () Bool)

(declare-fun e!2505039 () Bool)

(assert (=> b!4037189 (=> (not res!1644077) (not e!2505039))))

(assert (=> b!4037189 (= res!1644077 (not call!287194))))

(declare-fun bm!287189 () Bool)

(assert (=> bm!287189 (= call!287194 (isEmpty!25795 (tail!6280 lt!1435816)))))

(declare-fun b!4037190 () Bool)

(assert (=> b!4037190 (= e!2505039 (= (head!8548 (tail!6280 lt!1435816)) (c!697106 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816)))))))

(declare-fun b!4037191 () Bool)

(declare-fun res!1644080 () Bool)

(assert (=> b!4037191 (=> res!1644080 e!2505034)))

(assert (=> b!4037191 (= res!1644080 (not (isEmpty!25795 (tail!6280 (tail!6280 lt!1435816)))))))

(declare-fun b!4037192 () Bool)

(declare-fun res!1644081 () Bool)

(assert (=> b!4037192 (=> res!1644081 e!2505036)))

(assert (=> b!4037192 (= res!1644081 e!2505039)))

(declare-fun res!1644082 () Bool)

(assert (=> b!4037192 (=> (not res!1644082) (not e!2505039))))

(assert (=> b!4037192 (= res!1644082 lt!1436374)))

(declare-fun b!4037193 () Bool)

(assert (=> b!4037193 (= e!2505035 (nullable!4145 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816))))))

(declare-fun b!4037194 () Bool)

(assert (=> b!4037194 (= e!2505037 (not lt!1436374))))

(declare-fun b!4037195 () Bool)

(assert (=> b!4037195 (= e!2505033 (= lt!1436374 call!287194))))

(declare-fun b!4037196 () Bool)

(declare-fun res!1644079 () Bool)

(assert (=> b!4037196 (=> (not res!1644079) (not e!2505039))))

(assert (=> b!4037196 (= res!1644079 (isEmpty!25795 (tail!6280 (tail!6280 lt!1435816))))))

(assert (= (and d!1196520 c!697296) b!4037193))

(assert (= (and d!1196520 (not c!697296)) b!4037188))

(assert (= (and d!1196520 c!697298) b!4037195))

(assert (= (and d!1196520 (not c!697298)) b!4037184))

(assert (= (and b!4037184 c!697297) b!4037194))

(assert (= (and b!4037184 (not c!697297)) b!4037186))

(assert (= (and b!4037186 (not res!1644084)) b!4037192))

(assert (= (and b!4037192 res!1644082) b!4037189))

(assert (= (and b!4037189 res!1644077) b!4037196))

(assert (= (and b!4037196 res!1644079) b!4037190))

(assert (= (and b!4037192 (not res!1644081)) b!4037183))

(assert (= (and b!4037183 res!1644078) b!4037187))

(assert (= (and b!4037187 (not res!1644083)) b!4037191))

(assert (= (and b!4037191 (not res!1644080)) b!4037185))

(assert (= (or b!4037195 b!4037187 b!4037189) bm!287189))

(assert (=> d!1196520 m!4630463))

(assert (=> d!1196520 m!4630917))

(assert (=> d!1196520 m!4630913))

(declare-fun m!4631755 () Bool)

(assert (=> d!1196520 m!4631755))

(assert (=> b!4037188 m!4630463))

(assert (=> b!4037188 m!4631255))

(assert (=> b!4037188 m!4630913))

(assert (=> b!4037188 m!4631255))

(declare-fun m!4631757 () Bool)

(assert (=> b!4037188 m!4631757))

(assert (=> b!4037188 m!4630463))

(assert (=> b!4037188 m!4631249))

(assert (=> b!4037188 m!4631757))

(assert (=> b!4037188 m!4631249))

(declare-fun m!4631759 () Bool)

(assert (=> b!4037188 m!4631759))

(assert (=> b!4037196 m!4630463))

(assert (=> b!4037196 m!4631249))

(assert (=> b!4037196 m!4631249))

(declare-fun m!4631761 () Bool)

(assert (=> b!4037196 m!4631761))

(assert (=> b!4037190 m!4630463))

(assert (=> b!4037190 m!4631255))

(assert (=> b!4037193 m!4630913))

(declare-fun m!4631763 () Bool)

(assert (=> b!4037193 m!4631763))

(assert (=> b!4037191 m!4630463))

(assert (=> b!4037191 m!4631249))

(assert (=> b!4037191 m!4631249))

(assert (=> b!4037191 m!4631761))

(assert (=> b!4037185 m!4630463))

(assert (=> b!4037185 m!4631255))

(assert (=> bm!287189 m!4630463))

(assert (=> bm!287189 m!4630917))

(assert (=> b!4036558 d!1196520))

(declare-fun b!4037217 () Bool)

(declare-fun e!2505051 () Regex!11822)

(assert (=> b!4037217 (= e!2505051 (ite (= (head!8548 lt!1435816) (c!697106 (regex!6917 (rule!9985 token!484)))) EmptyExpr!11822 EmptyLang!11822))))

(declare-fun b!4037218 () Bool)

(declare-fun c!697311 () Bool)

(assert (=> b!4037218 (= c!697311 (nullable!4145 (regOne!24156 (regex!6917 (rule!9985 token!484)))))))

(declare-fun e!2505054 () Regex!11822)

(declare-fun e!2505053 () Regex!11822)

(assert (=> b!4037218 (= e!2505054 e!2505053)))

(declare-fun bm!287198 () Bool)

(declare-fun call!287205 () Regex!11822)

(declare-fun call!287206 () Regex!11822)

(assert (=> bm!287198 (= call!287205 call!287206)))

(declare-fun b!4037219 () Bool)

(declare-fun e!2505050 () Regex!11822)

(assert (=> b!4037219 (= e!2505050 e!2505054)))

(declare-fun c!697310 () Bool)

(assert (=> b!4037219 (= c!697310 (is-Star!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun b!4037220 () Bool)

(declare-fun call!287204 () Regex!11822)

(assert (=> b!4037220 (= e!2505050 (Union!11822 call!287204 call!287206))))

(declare-fun b!4037221 () Bool)

(assert (=> b!4037221 (= e!2505054 (Concat!18970 call!287205 (regex!6917 (rule!9985 token!484))))))

(declare-fun bm!287199 () Bool)

(declare-fun call!287203 () Regex!11822)

(assert (=> bm!287199 (= call!287203 call!287205)))

(declare-fun c!697313 () Bool)

(declare-fun bm!287200 () Bool)

(assert (=> bm!287200 (= call!287204 (derivativeStep!3551 (ite c!697313 (regOne!24157 (regex!6917 (rule!9985 token!484))) (regTwo!24156 (regex!6917 (rule!9985 token!484)))) (head!8548 lt!1435816)))))

(declare-fun bm!287201 () Bool)

(assert (=> bm!287201 (= call!287206 (derivativeStep!3551 (ite c!697313 (regTwo!24157 (regex!6917 (rule!9985 token!484))) (ite c!697310 (reg!12151 (regex!6917 (rule!9985 token!484))) (regOne!24156 (regex!6917 (rule!9985 token!484))))) (head!8548 lt!1435816)))))

(declare-fun b!4037223 () Bool)

(assert (=> b!4037223 (= e!2505053 (Union!11822 (Concat!18970 call!287203 (regTwo!24156 (regex!6917 (rule!9985 token!484)))) EmptyLang!11822))))

(declare-fun b!4037224 () Bool)

(declare-fun e!2505052 () Regex!11822)

(assert (=> b!4037224 (= e!2505052 e!2505051)))

(declare-fun c!697309 () Bool)

(assert (=> b!4037224 (= c!697309 (is-ElementMatch!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun b!4037222 () Bool)

(assert (=> b!4037222 (= c!697313 (is-Union!11822 (regex!6917 (rule!9985 token!484))))))

(assert (=> b!4037222 (= e!2505051 e!2505050)))

(declare-fun d!1196522 () Bool)

(declare-fun lt!1436377 () Regex!11822)

(assert (=> d!1196522 (validRegex!5345 lt!1436377)))

(assert (=> d!1196522 (= lt!1436377 e!2505052)))

(declare-fun c!697312 () Bool)

(assert (=> d!1196522 (= c!697312 (or (is-EmptyExpr!11822 (regex!6917 (rule!9985 token!484))) (is-EmptyLang!11822 (regex!6917 (rule!9985 token!484)))))))

(assert (=> d!1196522 (validRegex!5345 (regex!6917 (rule!9985 token!484)))))

(assert (=> d!1196522 (= (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 lt!1435816)) lt!1436377)))

(declare-fun b!4037225 () Bool)

(assert (=> b!4037225 (= e!2505053 (Union!11822 (Concat!18970 call!287203 (regTwo!24156 (regex!6917 (rule!9985 token!484)))) call!287204))))

(declare-fun b!4037226 () Bool)

(assert (=> b!4037226 (= e!2505052 EmptyLang!11822)))

(assert (= (and d!1196522 c!697312) b!4037226))

(assert (= (and d!1196522 (not c!697312)) b!4037224))

(assert (= (and b!4037224 c!697309) b!4037217))

(assert (= (and b!4037224 (not c!697309)) b!4037222))

(assert (= (and b!4037222 c!697313) b!4037220))

(assert (= (and b!4037222 (not c!697313)) b!4037219))

(assert (= (and b!4037219 c!697310) b!4037221))

(assert (= (and b!4037219 (not c!697310)) b!4037218))

(assert (= (and b!4037218 c!697311) b!4037225))

(assert (= (and b!4037218 (not c!697311)) b!4037223))

(assert (= (or b!4037225 b!4037223) bm!287199))

(assert (= (or b!4037221 bm!287199) bm!287198))

(assert (= (or b!4037220 b!4037225) bm!287200))

(assert (= (or b!4037220 bm!287198) bm!287201))

(declare-fun m!4631765 () Bool)

(assert (=> b!4037218 m!4631765))

(assert (=> bm!287200 m!4630469))

(declare-fun m!4631767 () Bool)

(assert (=> bm!287200 m!4631767))

(assert (=> bm!287201 m!4630469))

(declare-fun m!4631769 () Bool)

(assert (=> bm!287201 m!4631769))

(declare-fun m!4631771 () Bool)

(assert (=> d!1196522 m!4631771))

(assert (=> d!1196522 m!4630451))

(assert (=> b!4036558 d!1196522))

(assert (=> b!4036558 d!1196300))

(assert (=> b!4036558 d!1196274))

(assert (=> b!4036350 d!1196348))

(declare-fun d!1196524 () Bool)

(declare-fun lt!1436378 () Int)

(assert (=> d!1196524 (>= lt!1436378 0)))

(declare-fun e!2505055 () Int)

(assert (=> d!1196524 (= lt!1436378 e!2505055)))

(declare-fun c!697314 () Bool)

(assert (=> d!1196524 (= c!697314 (is-Nil!43222 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997)))))))

(assert (=> d!1196524 (= (size!32308 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997)))) lt!1436378)))

(declare-fun b!4037227 () Bool)

(assert (=> b!4037227 (= e!2505055 0)))

(declare-fun b!4037228 () Bool)

(assert (=> b!4037228 (= e!2505055 (+ 1 (size!32308 (t!334587 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997)))))))))

(assert (= (and d!1196524 c!697314) b!4037227))

(assert (= (and d!1196524 (not c!697314)) b!4037228))

(declare-fun m!4631773 () Bool)

(assert (=> b!4037228 m!4631773))

(assert (=> b!4036350 d!1196524))

(declare-fun d!1196526 () Bool)

(assert (=> d!1196526 (= (isEmpty!25798 lt!1436067) (not (is-Some!9330 lt!1436067)))))

(assert (=> d!1196140 d!1196526))

(assert (=> d!1196140 d!1196162))

(assert (=> d!1196140 d!1196164))

(assert (=> d!1196140 d!1196340))

(declare-fun d!1196528 () Bool)

(assert (=> d!1196528 (= (isDefined!7099 lt!1436067) (not (isEmpty!25798 lt!1436067)))))

(declare-fun bs!590613 () Bool)

(assert (= bs!590613 d!1196528))

(assert (=> bs!590613 m!4630831))

(assert (=> b!4036482 d!1196528))

(assert (=> b!4036570 d!1196376))

(assert (=> b!4036570 d!1196064))

(declare-fun d!1196530 () Bool)

(declare-fun e!2505057 () Bool)

(assert (=> d!1196530 e!2505057))

(declare-fun res!1644088 () Bool)

(assert (=> d!1196530 (=> res!1644088 e!2505057)))

(declare-fun lt!1436379 () Bool)

(assert (=> d!1196530 (= res!1644088 (not lt!1436379))))

(declare-fun e!2505058 () Bool)

(assert (=> d!1196530 (= lt!1436379 e!2505058)))

(declare-fun res!1644086 () Bool)

(assert (=> d!1196530 (=> res!1644086 e!2505058)))

(assert (=> d!1196530 (= res!1644086 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196530 (= (isPrefix!4004 lt!1435816 (++!11319 lt!1435816 lt!1435798)) lt!1436379)))

(declare-fun b!4037229 () Bool)

(declare-fun e!2505056 () Bool)

(assert (=> b!4037229 (= e!2505058 e!2505056)))

(declare-fun res!1644087 () Bool)

(assert (=> b!4037229 (=> (not res!1644087) (not e!2505056))))

(assert (=> b!4037229 (= res!1644087 (not (is-Nil!43222 (++!11319 lt!1435816 lt!1435798))))))

(declare-fun b!4037231 () Bool)

(assert (=> b!4037231 (= e!2505056 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 (++!11319 lt!1435816 lt!1435798))))))

(declare-fun b!4037230 () Bool)

(declare-fun res!1644085 () Bool)

(assert (=> b!4037230 (=> (not res!1644085) (not e!2505056))))

(assert (=> b!4037230 (= res!1644085 (= (head!8548 lt!1435816) (head!8548 (++!11319 lt!1435816 lt!1435798))))))

(declare-fun b!4037232 () Bool)

(assert (=> b!4037232 (= e!2505057 (>= (size!32308 (++!11319 lt!1435816 lt!1435798)) (size!32308 lt!1435816)))))

(assert (= (and d!1196530 (not res!1644086)) b!4037229))

(assert (= (and b!4037229 res!1644087) b!4037230))

(assert (= (and b!4037230 res!1644085) b!4037231))

(assert (= (and d!1196530 (not res!1644088)) b!4037232))

(assert (=> b!4037231 m!4630463))

(assert (=> b!4037231 m!4630161))

(declare-fun m!4631775 () Bool)

(assert (=> b!4037231 m!4631775))

(assert (=> b!4037231 m!4630463))

(assert (=> b!4037231 m!4631775))

(declare-fun m!4631777 () Bool)

(assert (=> b!4037231 m!4631777))

(assert (=> b!4037230 m!4630469))

(assert (=> b!4037230 m!4630161))

(declare-fun m!4631779 () Bool)

(assert (=> b!4037230 m!4631779))

(assert (=> b!4037232 m!4630161))

(declare-fun m!4631781 () Bool)

(assert (=> b!4037232 m!4631781))

(assert (=> b!4037232 m!4630193))

(assert (=> d!1196044 d!1196530))

(assert (=> d!1196044 d!1196116))

(declare-fun d!1196532 () Bool)

(assert (=> d!1196532 (isPrefix!4004 lt!1435816 (++!11319 lt!1435816 lt!1435798))))

(assert (=> d!1196532 true))

(declare-fun _$46!1739 () Unit!62414)

(assert (=> d!1196532 (= (choose!24443 lt!1435816 lt!1435798) _$46!1739)))

(declare-fun bs!590614 () Bool)

(assert (= bs!590614 d!1196532))

(assert (=> bs!590614 m!4630161))

(assert (=> bs!590614 m!4630161))

(assert (=> bs!590614 m!4630557))

(assert (=> d!1196044 d!1196532))

(declare-fun d!1196534 () Bool)

(assert (=> d!1196534 (= (inv!57758 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811))))) (isBalanced!3676 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811)))))))))

(declare-fun bs!590615 () Bool)

(assert (= bs!590615 d!1196534))

(declare-fun m!4631783 () Bool)

(assert (=> bs!590615 m!4631783))

(assert (=> tb!242489 d!1196534))

(declare-fun d!1196536 () Bool)

(declare-fun lt!1436380 () Bool)

(assert (=> d!1196536 (= lt!1436380 (set.member (rule!9985 (_1!24286 (get!14182 lt!1436043))) (content!6570 rules!2999)))))

(declare-fun e!2505060 () Bool)

(assert (=> d!1196536 (= lt!1436380 e!2505060)))

(declare-fun res!1644089 () Bool)

(assert (=> d!1196536 (=> (not res!1644089) (not e!2505060))))

(assert (=> d!1196536 (= res!1644089 (is-Cons!43224 rules!2999))))

(assert (=> d!1196536 (= (contains!8583 rules!2999 (rule!9985 (_1!24286 (get!14182 lt!1436043)))) lt!1436380)))

(declare-fun b!4037233 () Bool)

(declare-fun e!2505059 () Bool)

(assert (=> b!4037233 (= e!2505060 e!2505059)))

(declare-fun res!1644090 () Bool)

(assert (=> b!4037233 (=> res!1644090 e!2505059)))

(assert (=> b!4037233 (= res!1644090 (= (h!48644 rules!2999) (rule!9985 (_1!24286 (get!14182 lt!1436043)))))))

(declare-fun b!4037234 () Bool)

(assert (=> b!4037234 (= e!2505059 (contains!8583 (t!334589 rules!2999) (rule!9985 (_1!24286 (get!14182 lt!1436043)))))))

(assert (= (and d!1196536 res!1644089) b!4037233))

(assert (= (and b!4037233 (not res!1644090)) b!4037234))

(assert (=> d!1196536 m!4630805))

(declare-fun m!4631785 () Bool)

(assert (=> d!1196536 m!4631785))

(declare-fun m!4631787 () Bool)

(assert (=> b!4037234 m!4631787))

(assert (=> b!4036437 d!1196536))

(assert (=> b!4036437 d!1196294))

(assert (=> d!1196122 d!1196120))

(declare-fun lt!1436381 () List!43346)

(declare-fun e!2505061 () Bool)

(declare-fun b!4037238 () Bool)

(assert (=> b!4037238 (= e!2505061 (or (not (= suffix!1299 Nil!43222)) (= lt!1436381 (++!11319 lt!1435816 lt!1435836))))))

(declare-fun b!4037237 () Bool)

(declare-fun res!1644092 () Bool)

(assert (=> b!4037237 (=> (not res!1644092) (not e!2505061))))

(assert (=> b!4037237 (= res!1644092 (= (size!32308 lt!1436381) (+ (size!32308 (++!11319 lt!1435816 lt!1435836)) (size!32308 suffix!1299))))))

(declare-fun b!4037236 () Bool)

(declare-fun e!2505062 () List!43346)

(assert (=> b!4037236 (= e!2505062 (Cons!43222 (h!48642 (++!11319 lt!1435816 lt!1435836)) (++!11319 (t!334587 (++!11319 lt!1435816 lt!1435836)) suffix!1299)))))

(declare-fun b!4037235 () Bool)

(assert (=> b!4037235 (= e!2505062 suffix!1299)))

(declare-fun d!1196538 () Bool)

(assert (=> d!1196538 e!2505061))

(declare-fun res!1644091 () Bool)

(assert (=> d!1196538 (=> (not res!1644091) (not e!2505061))))

(assert (=> d!1196538 (= res!1644091 (= (content!6568 lt!1436381) (set.union (content!6568 (++!11319 lt!1435816 lt!1435836)) (content!6568 suffix!1299))))))

(assert (=> d!1196538 (= lt!1436381 e!2505062)))

(declare-fun c!697315 () Bool)

(assert (=> d!1196538 (= c!697315 (is-Nil!43222 (++!11319 lt!1435816 lt!1435836)))))

(assert (=> d!1196538 (= (++!11319 (++!11319 lt!1435816 lt!1435836) suffix!1299) lt!1436381)))

(assert (= (and d!1196538 c!697315) b!4037235))

(assert (= (and d!1196538 (not c!697315)) b!4037236))

(assert (= (and d!1196538 res!1644091) b!4037237))

(assert (= (and b!4037237 res!1644092) b!4037238))

(declare-fun m!4631789 () Bool)

(assert (=> b!4037237 m!4631789))

(assert (=> b!4037237 m!4630201))

(declare-fun m!4631791 () Bool)

(assert (=> b!4037237 m!4631791))

(assert (=> b!4037237 m!4630217))

(declare-fun m!4631793 () Bool)

(assert (=> b!4037236 m!4631793))

(declare-fun m!4631795 () Bool)

(assert (=> d!1196538 m!4631795))

(assert (=> d!1196538 m!4630201))

(declare-fun m!4631797 () Bool)

(assert (=> d!1196538 m!4631797))

(assert (=> d!1196538 m!4630765))

(assert (=> d!1196122 d!1196538))

(declare-fun lt!1436382 () List!43346)

(declare-fun b!4037242 () Bool)

(declare-fun e!2505063 () Bool)

(assert (=> b!4037242 (= e!2505063 (or (not (= (++!11319 lt!1435836 suffix!1299) Nil!43222)) (= lt!1436382 lt!1435816)))))

(declare-fun b!4037241 () Bool)

(declare-fun res!1644094 () Bool)

(assert (=> b!4037241 (=> (not res!1644094) (not e!2505063))))

(assert (=> b!4037241 (= res!1644094 (= (size!32308 lt!1436382) (+ (size!32308 lt!1435816) (size!32308 (++!11319 lt!1435836 suffix!1299)))))))

(declare-fun e!2505064 () List!43346)

(declare-fun b!4037240 () Bool)

(assert (=> b!4037240 (= e!2505064 (Cons!43222 (h!48642 lt!1435816) (++!11319 (t!334587 lt!1435816) (++!11319 lt!1435836 suffix!1299))))))

(declare-fun b!4037239 () Bool)

(assert (=> b!4037239 (= e!2505064 (++!11319 lt!1435836 suffix!1299))))

(declare-fun d!1196540 () Bool)

(assert (=> d!1196540 e!2505063))

(declare-fun res!1644093 () Bool)

(assert (=> d!1196540 (=> (not res!1644093) (not e!2505063))))

(assert (=> d!1196540 (= res!1644093 (= (content!6568 lt!1436382) (set.union (content!6568 lt!1435816) (content!6568 (++!11319 lt!1435836 suffix!1299)))))))

(assert (=> d!1196540 (= lt!1436382 e!2505064)))

(declare-fun c!697316 () Bool)

(assert (=> d!1196540 (= c!697316 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196540 (= (++!11319 lt!1435816 (++!11319 lt!1435836 suffix!1299)) lt!1436382)))

(assert (= (and d!1196540 c!697316) b!4037239))

(assert (= (and d!1196540 (not c!697316)) b!4037240))

(assert (= (and d!1196540 res!1644093) b!4037241))

(assert (= (and b!4037241 res!1644094) b!4037242))

(declare-fun m!4631799 () Bool)

(assert (=> b!4037241 m!4631799))

(assert (=> b!4037241 m!4630193))

(assert (=> b!4037241 m!4630165))

(declare-fun m!4631801 () Bool)

(assert (=> b!4037241 m!4631801))

(assert (=> b!4037240 m!4630165))

(declare-fun m!4631803 () Bool)

(assert (=> b!4037240 m!4631803))

(declare-fun m!4631805 () Bool)

(assert (=> d!1196540 m!4631805))

(assert (=> d!1196540 m!4630443))

(assert (=> d!1196540 m!4630165))

(declare-fun m!4631807 () Bool)

(assert (=> d!1196540 m!4631807))

(assert (=> d!1196122 d!1196540))

(declare-fun d!1196542 () Bool)

(assert (=> d!1196542 (= (++!11319 (++!11319 lt!1435816 lt!1435836) suffix!1299) (++!11319 lt!1435816 (++!11319 lt!1435836 suffix!1299)))))

(assert (=> d!1196542 true))

(declare-fun _$52!2301 () Unit!62414)

(assert (=> d!1196542 (= (choose!24445 lt!1435816 lt!1435836 suffix!1299) _$52!2301)))

(declare-fun bs!590616 () Bool)

(assert (= bs!590616 d!1196542))

(assert (=> bs!590616 m!4630201))

(assert (=> bs!590616 m!4630201))

(assert (=> bs!590616 m!4630781))

(assert (=> bs!590616 m!4630165))

(assert (=> bs!590616 m!4630165))

(assert (=> bs!590616 m!4630777))

(assert (=> d!1196122 d!1196542))

(assert (=> d!1196122 d!1196174))

(declare-fun d!1196544 () Bool)

(declare-fun lt!1436383 () Int)

(assert (=> d!1196544 (>= lt!1436383 0)))

(declare-fun e!2505065 () Int)

(assert (=> d!1196544 (= lt!1436383 e!2505065)))

(declare-fun c!697317 () Bool)

(assert (=> d!1196544 (= c!697317 (is-Nil!43222 lt!1436077))))

(assert (=> d!1196544 (= (size!32308 lt!1436077) lt!1436383)))

(declare-fun b!4037243 () Bool)

(assert (=> b!4037243 (= e!2505065 0)))

(declare-fun b!4037244 () Bool)

(assert (=> b!4037244 (= e!2505065 (+ 1 (size!32308 (t!334587 lt!1436077))))))

(assert (= (and d!1196544 c!697317) b!4037243))

(assert (= (and d!1196544 (not c!697317)) b!4037244))

(declare-fun m!4631809 () Bool)

(assert (=> b!4037244 m!4631809))

(assert (=> b!4036505 d!1196544))

(assert (=> b!4036505 d!1196066))

(assert (=> b!4036505 d!1196020))

(declare-fun d!1196546 () Bool)

(assert (=> d!1196546 (= (isDefined!7099 lt!1436043) (not (isEmpty!25798 lt!1436043)))))

(declare-fun bs!590617 () Bool)

(assert (= bs!590617 d!1196546))

(assert (=> bs!590617 m!4630687))

(assert (=> b!4036434 d!1196546))

(assert (=> b!4036563 d!1196286))

(assert (=> b!4036487 d!1196364))

(assert (=> b!4036487 d!1196366))

(assert (=> b!4036487 d!1196284))

(declare-fun d!1196548 () Bool)

(declare-fun lt!1436384 () Int)

(assert (=> d!1196548 (>= lt!1436384 0)))

(declare-fun e!2505066 () Int)

(assert (=> d!1196548 (= lt!1436384 e!2505066)))

(declare-fun c!697318 () Bool)

(assert (=> d!1196548 (= c!697318 (is-Nil!43222 lt!1436057))))

(assert (=> d!1196548 (= (size!32308 lt!1436057) lt!1436384)))

(declare-fun b!4037245 () Bool)

(assert (=> b!4037245 (= e!2505066 0)))

(declare-fun b!4037246 () Bool)

(assert (=> b!4037246 (= e!2505066 (+ 1 (size!32308 (t!334587 lt!1436057))))))

(assert (= (and d!1196548 c!697318) b!4037245))

(assert (= (and d!1196548 (not c!697318)) b!4037246))

(declare-fun m!4631811 () Bool)

(assert (=> b!4037246 m!4631811))

(assert (=> b!4036467 d!1196548))

(assert (=> b!4036467 d!1196290))

(assert (=> b!4036467 d!1196018))

(declare-fun bs!590618 () Bool)

(declare-fun d!1196550 () Bool)

(assert (= bs!590618 (and d!1196550 d!1196508)))

(declare-fun lambda!127314 () Int)

(assert (=> bs!590618 (= (and (= (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) (= (toValue!9449 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))) (= lambda!127314 lambda!127313))))

(assert (=> d!1196550 true))

(assert (=> d!1196550 (< (dynLambda!18333 order!22611 (toChars!9308 (transformation!6917 (rule!9985 token!484)))) (dynLambda!18334 order!22613 lambda!127314))))

(assert (=> d!1196550 true))

(assert (=> d!1196550 (< (dynLambda!18331 order!22607 (toValue!9449 (transformation!6917 (rule!9985 token!484)))) (dynLambda!18334 order!22613 lambda!127314))))

(assert (=> d!1196550 (= (semiInverseModEq!2953 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) (Forall!1486 lambda!127314))))

(declare-fun bs!590619 () Bool)

(assert (= bs!590619 d!1196550))

(declare-fun m!4631813 () Bool)

(assert (=> bs!590619 m!4631813))

(assert (=> d!1196058 d!1196550))

(assert (=> b!4036454 d!1196300))

(declare-fun d!1196552 () Bool)

(assert (=> d!1196552 (= (head!8548 lt!1435806) (h!48642 lt!1435806))))

(assert (=> b!4036454 d!1196552))

(declare-fun lt!1436385 () List!43346)

(declare-fun b!4037250 () Bool)

(declare-fun e!2505067 () Bool)

(assert (=> b!4037250 (= e!2505067 (or (not (= (_2!24286 (v!39726 lt!1435811)) Nil!43222)) (= lt!1436385 (t!334587 lt!1435803))))))

(declare-fun b!4037249 () Bool)

(declare-fun res!1644096 () Bool)

(assert (=> b!4037249 (=> (not res!1644096) (not e!2505067))))

(assert (=> b!4037249 (= res!1644096 (= (size!32308 lt!1436385) (+ (size!32308 (t!334587 lt!1435803)) (size!32308 (_2!24286 (v!39726 lt!1435811))))))))

(declare-fun b!4037248 () Bool)

(declare-fun e!2505068 () List!43346)

(assert (=> b!4037248 (= e!2505068 (Cons!43222 (h!48642 (t!334587 lt!1435803)) (++!11319 (t!334587 (t!334587 lt!1435803)) (_2!24286 (v!39726 lt!1435811)))))))

(declare-fun b!4037247 () Bool)

(assert (=> b!4037247 (= e!2505068 (_2!24286 (v!39726 lt!1435811)))))

(declare-fun d!1196554 () Bool)

(assert (=> d!1196554 e!2505067))

(declare-fun res!1644095 () Bool)

(assert (=> d!1196554 (=> (not res!1644095) (not e!2505067))))

(assert (=> d!1196554 (= res!1644095 (= (content!6568 lt!1436385) (set.union (content!6568 (t!334587 lt!1435803)) (content!6568 (_2!24286 (v!39726 lt!1435811))))))))

(assert (=> d!1196554 (= lt!1436385 e!2505068)))

(declare-fun c!697319 () Bool)

(assert (=> d!1196554 (= c!697319 (is-Nil!43222 (t!334587 lt!1435803)))))

(assert (=> d!1196554 (= (++!11319 (t!334587 lt!1435803) (_2!24286 (v!39726 lt!1435811))) lt!1436385)))

(assert (= (and d!1196554 c!697319) b!4037247))

(assert (= (and d!1196554 (not c!697319)) b!4037248))

(assert (= (and d!1196554 res!1644095) b!4037249))

(assert (= (and b!4037249 res!1644096) b!4037250))

(declare-fun m!4631815 () Bool)

(assert (=> b!4037249 m!4631815))

(declare-fun m!4631817 () Bool)

(assert (=> b!4037249 m!4631817))

(assert (=> b!4037249 m!4630851))

(declare-fun m!4631819 () Bool)

(assert (=> b!4037248 m!4631819))

(declare-fun m!4631821 () Bool)

(assert (=> d!1196554 m!4631821))

(declare-fun m!4631823 () Bool)

(assert (=> d!1196554 m!4631823))

(assert (=> d!1196554 m!4630859))

(assert (=> b!4036493 d!1196554))

(declare-fun e!2505069 () Bool)

(declare-fun b!4037254 () Bool)

(declare-fun lt!1436386 () List!43346)

(assert (=> b!4037254 (= e!2505069 (or (not (= suffix!1299 Nil!43222)) (= lt!1436386 (t!334587 lt!1435819))))))

(declare-fun b!4037253 () Bool)

(declare-fun res!1644098 () Bool)

(assert (=> b!4037253 (=> (not res!1644098) (not e!2505069))))

(assert (=> b!4037253 (= res!1644098 (= (size!32308 lt!1436386) (+ (size!32308 (t!334587 lt!1435819)) (size!32308 suffix!1299))))))

(declare-fun b!4037252 () Bool)

(declare-fun e!2505070 () List!43346)

(assert (=> b!4037252 (= e!2505070 (Cons!43222 (h!48642 (t!334587 lt!1435819)) (++!11319 (t!334587 (t!334587 lt!1435819)) suffix!1299)))))

(declare-fun b!4037251 () Bool)

(assert (=> b!4037251 (= e!2505070 suffix!1299)))

(declare-fun d!1196556 () Bool)

(assert (=> d!1196556 e!2505069))

(declare-fun res!1644097 () Bool)

(assert (=> d!1196556 (=> (not res!1644097) (not e!2505069))))

(assert (=> d!1196556 (= res!1644097 (= (content!6568 lt!1436386) (set.union (content!6568 (t!334587 lt!1435819)) (content!6568 suffix!1299))))))

(assert (=> d!1196556 (= lt!1436386 e!2505070)))

(declare-fun c!697320 () Bool)

(assert (=> d!1196556 (= c!697320 (is-Nil!43222 (t!334587 lt!1435819)))))

(assert (=> d!1196556 (= (++!11319 (t!334587 lt!1435819) suffix!1299) lt!1436386)))

(assert (= (and d!1196556 c!697320) b!4037251))

(assert (= (and d!1196556 (not c!697320)) b!4037252))

(assert (= (and d!1196556 res!1644097) b!4037253))

(assert (= (and b!4037253 res!1644098) b!4037254))

(declare-fun m!4631825 () Bool)

(assert (=> b!4037253 m!4631825))

(declare-fun m!4631827 () Bool)

(assert (=> b!4037253 m!4631827))

(assert (=> b!4037253 m!4630217))

(declare-fun m!4631829 () Bool)

(assert (=> b!4037252 m!4631829))

(declare-fun m!4631831 () Bool)

(assert (=> d!1196556 m!4631831))

(declare-fun m!4631833 () Bool)

(assert (=> d!1196556 m!4631833))

(assert (=> d!1196556 m!4630765))

(assert (=> b!4036462 d!1196556))

(declare-fun e!2505071 () Bool)

(declare-fun lt!1436387 () List!43346)

(declare-fun b!4037258 () Bool)

(assert (=> b!4037258 (= e!2505071 (or (not (= suffix!1299 Nil!43222)) (= lt!1436387 (t!334587 prefix!494))))))

(declare-fun b!4037257 () Bool)

(declare-fun res!1644100 () Bool)

(assert (=> b!4037257 (=> (not res!1644100) (not e!2505071))))

(assert (=> b!4037257 (= res!1644100 (= (size!32308 lt!1436387) (+ (size!32308 (t!334587 prefix!494)) (size!32308 suffix!1299))))))

(declare-fun b!4037256 () Bool)

(declare-fun e!2505072 () List!43346)

(assert (=> b!4037256 (= e!2505072 (Cons!43222 (h!48642 (t!334587 prefix!494)) (++!11319 (t!334587 (t!334587 prefix!494)) suffix!1299)))))

(declare-fun b!4037255 () Bool)

(assert (=> b!4037255 (= e!2505072 suffix!1299)))

(declare-fun d!1196558 () Bool)

(assert (=> d!1196558 e!2505071))

(declare-fun res!1644099 () Bool)

(assert (=> d!1196558 (=> (not res!1644099) (not e!2505071))))

(assert (=> d!1196558 (= res!1644099 (= (content!6568 lt!1436387) (set.union (content!6568 (t!334587 prefix!494)) (content!6568 suffix!1299))))))

(assert (=> d!1196558 (= lt!1436387 e!2505072)))

(declare-fun c!697321 () Bool)

(assert (=> d!1196558 (= c!697321 (is-Nil!43222 (t!334587 prefix!494)))))

(assert (=> d!1196558 (= (++!11319 (t!334587 prefix!494) suffix!1299) lt!1436387)))

(assert (= (and d!1196558 c!697321) b!4037255))

(assert (= (and d!1196558 (not c!697321)) b!4037256))

(assert (= (and d!1196558 res!1644099) b!4037257))

(assert (= (and b!4037257 res!1644100) b!4037258))

(declare-fun m!4631835 () Bool)

(assert (=> b!4037257 m!4631835))

(assert (=> b!4037257 m!4630605))

(assert (=> b!4037257 m!4630217))

(declare-fun m!4631837 () Bool)

(assert (=> b!4037256 m!4631837))

(declare-fun m!4631839 () Bool)

(assert (=> d!1196558 m!4631839))

(declare-fun m!4631841 () Bool)

(assert (=> d!1196558 m!4631841))

(assert (=> d!1196558 m!4630765))

(assert (=> b!4036489 d!1196558))

(declare-fun d!1196560 () Bool)

(declare-fun lt!1436388 () Int)

(assert (=> d!1196560 (>= lt!1436388 0)))

(declare-fun e!2505073 () Int)

(assert (=> d!1196560 (= lt!1436388 e!2505073)))

(declare-fun c!697322 () Bool)

(assert (=> d!1196560 (= c!697322 (is-Nil!43222 lt!1436055))))

(assert (=> d!1196560 (= (size!32308 lt!1436055) lt!1436388)))

(declare-fun b!4037259 () Bool)

(assert (=> b!4037259 (= e!2505073 0)))

(declare-fun b!4037260 () Bool)

(assert (=> b!4037260 (= e!2505073 (+ 1 (size!32308 (t!334587 lt!1436055))))))

(assert (= (and d!1196560 c!697322) b!4037259))

(assert (= (and d!1196560 (not c!697322)) b!4037260))

(declare-fun m!4631843 () Bool)

(assert (=> b!4037260 m!4631843))

(assert (=> b!4036459 d!1196560))

(assert (=> b!4036459 d!1196064))

(declare-fun d!1196562 () Bool)

(declare-fun lt!1436389 () Int)

(assert (=> d!1196562 (>= lt!1436389 0)))

(declare-fun e!2505074 () Int)

(assert (=> d!1196562 (= lt!1436389 e!2505074)))

(declare-fun c!697323 () Bool)

(assert (=> d!1196562 (= c!697323 (is-Nil!43222 lt!1435798))))

(assert (=> d!1196562 (= (size!32308 lt!1435798) lt!1436389)))

(declare-fun b!4037261 () Bool)

(assert (=> b!4037261 (= e!2505074 0)))

(declare-fun b!4037262 () Bool)

(assert (=> b!4037262 (= e!2505074 (+ 1 (size!32308 (t!334587 lt!1435798))))))

(assert (= (and d!1196562 c!697323) b!4037261))

(assert (= (and d!1196562 (not c!697323)) b!4037262))

(declare-fun m!4631845 () Bool)

(assert (=> b!4037262 m!4631845))

(assert (=> b!4036459 d!1196562))

(assert (=> d!1196132 d!1196128))

(declare-fun d!1196564 () Bool)

(assert (=> d!1196564 (ruleValid!2847 thiss!21717 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))

(assert (=> d!1196564 true))

(declare-fun _$65!1490 () Unit!62414)

(assert (=> d!1196564 (= (choose!24441 thiss!21717 (rule!9985 (_1!24286 (v!39726 lt!1435811))) rules!2999) _$65!1490)))

(declare-fun bs!590620 () Bool)

(assert (= bs!590620 d!1196564))

(assert (=> bs!590620 m!4630251))

(assert (=> d!1196132 d!1196564))

(assert (=> d!1196132 d!1196138))

(assert (=> b!4036524 d!1196360))

(declare-fun d!1196566 () Bool)

(declare-fun e!2505076 () Bool)

(assert (=> d!1196566 e!2505076))

(declare-fun res!1644104 () Bool)

(assert (=> d!1196566 (=> res!1644104 e!2505076)))

(declare-fun lt!1436390 () Bool)

(assert (=> d!1196566 (= res!1644104 (not lt!1436390))))

(declare-fun e!2505077 () Bool)

(assert (=> d!1196566 (= lt!1436390 e!2505077)))

(declare-fun res!1644102 () Bool)

(assert (=> d!1196566 (=> res!1644102 e!2505077)))

(assert (=> d!1196566 (= res!1644102 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196566 (= (isPrefix!4004 lt!1435816 (++!11319 lt!1435816 suffixResult!105)) lt!1436390)))

(declare-fun b!4037263 () Bool)

(declare-fun e!2505075 () Bool)

(assert (=> b!4037263 (= e!2505077 e!2505075)))

(declare-fun res!1644103 () Bool)

(assert (=> b!4037263 (=> (not res!1644103) (not e!2505075))))

(assert (=> b!4037263 (= res!1644103 (not (is-Nil!43222 (++!11319 lt!1435816 suffixResult!105))))))

(declare-fun b!4037265 () Bool)

(assert (=> b!4037265 (= e!2505075 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 (++!11319 lt!1435816 suffixResult!105))))))

(declare-fun b!4037264 () Bool)

(declare-fun res!1644101 () Bool)

(assert (=> b!4037264 (=> (not res!1644101) (not e!2505075))))

(assert (=> b!4037264 (= res!1644101 (= (head!8548 lt!1435816) (head!8548 (++!11319 lt!1435816 suffixResult!105))))))

(declare-fun b!4037266 () Bool)

(assert (=> b!4037266 (= e!2505076 (>= (size!32308 (++!11319 lt!1435816 suffixResult!105)) (size!32308 lt!1435816)))))

(assert (= (and d!1196566 (not res!1644102)) b!4037263))

(assert (= (and b!4037263 res!1644103) b!4037264))

(assert (= (and b!4037264 res!1644101) b!4037265))

(assert (= (and d!1196566 (not res!1644104)) b!4037266))

(assert (=> b!4037265 m!4630463))

(assert (=> b!4037265 m!4630209))

(declare-fun m!4631847 () Bool)

(assert (=> b!4037265 m!4631847))

(assert (=> b!4037265 m!4630463))

(assert (=> b!4037265 m!4631847))

(declare-fun m!4631849 () Bool)

(assert (=> b!4037265 m!4631849))

(assert (=> b!4037264 m!4630469))

(assert (=> b!4037264 m!4630209))

(declare-fun m!4631851 () Bool)

(assert (=> b!4037264 m!4631851))

(assert (=> b!4037266 m!4630209))

(declare-fun m!4631853 () Bool)

(assert (=> b!4037266 m!4631853))

(assert (=> b!4037266 m!4630193))

(assert (=> d!1196108 d!1196566))

(assert (=> d!1196108 d!1196010))

(declare-fun d!1196568 () Bool)

(assert (=> d!1196568 (isPrefix!4004 lt!1435816 (++!11319 lt!1435816 suffixResult!105))))

(assert (=> d!1196568 true))

(declare-fun _$46!1740 () Unit!62414)

(assert (=> d!1196568 (= (choose!24443 lt!1435816 suffixResult!105) _$46!1740)))

(declare-fun bs!590621 () Bool)

(assert (= bs!590621 d!1196568))

(assert (=> bs!590621 m!4630209))

(assert (=> bs!590621 m!4630209))

(assert (=> bs!590621 m!4630727))

(assert (=> d!1196108 d!1196568))

(declare-fun d!1196570 () Bool)

(declare-fun lt!1436391 () Int)

(assert (=> d!1196570 (>= lt!1436391 0)))

(declare-fun e!2505078 () Int)

(assert (=> d!1196570 (= lt!1436391 e!2505078)))

(declare-fun c!697324 () Bool)

(assert (=> d!1196570 (= c!697324 (is-Nil!43222 (t!334587 (originalCharacters!7517 token!484))))))

(assert (=> d!1196570 (= (size!32308 (t!334587 (originalCharacters!7517 token!484))) lt!1436391)))

(declare-fun b!4037267 () Bool)

(assert (=> b!4037267 (= e!2505078 0)))

(declare-fun b!4037268 () Bool)

(assert (=> b!4037268 (= e!2505078 (+ 1 (size!32308 (t!334587 (t!334587 (originalCharacters!7517 token!484))))))))

(assert (= (and d!1196570 c!697324) b!4037267))

(assert (= (and d!1196570 (not c!697324)) b!4037268))

(declare-fun m!4631855 () Bool)

(assert (=> b!4037268 m!4631855))

(assert (=> b!4036597 d!1196570))

(assert (=> b!4036441 d!1196300))

(declare-fun d!1196572 () Bool)

(assert (=> d!1196572 (= (head!8548 lt!1435817) (h!48642 lt!1435817))))

(assert (=> b!4036441 d!1196572))

(declare-fun b!4037269 () Bool)

(declare-fun e!2505079 () Option!9331)

(declare-fun lt!1436396 () Option!9331)

(declare-fun lt!1436394 () Option!9331)

(assert (=> b!4037269 (= e!2505079 (ite (and (is-None!9330 lt!1436396) (is-None!9330 lt!1436394)) None!9330 (ite (is-None!9330 lt!1436394) lt!1436396 (ite (is-None!9330 lt!1436396) lt!1436394 (ite (>= (size!32307 (_1!24286 (v!39726 lt!1436396))) (size!32307 (_1!24286 (v!39726 lt!1436394)))) lt!1436396 lt!1436394)))))))

(declare-fun call!287207 () Option!9331)

(assert (=> b!4037269 (= lt!1436396 call!287207)))

(assert (=> b!4037269 (= lt!1436394 (maxPrefix!3804 thiss!21717 (t!334589 (t!334589 rules!2999)) lt!1435831))))

(declare-fun b!4037271 () Bool)

(declare-fun res!1644111 () Bool)

(declare-fun e!2505081 () Bool)

(assert (=> b!4037271 (=> (not res!1644111) (not e!2505081))))

(declare-fun lt!1436393 () Option!9331)

(assert (=> b!4037271 (= res!1644111 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436393)))) (_2!24286 (get!14182 lt!1436393))) lt!1435831))))

(declare-fun b!4037272 () Bool)

(declare-fun e!2505080 () Bool)

(assert (=> b!4037272 (= e!2505080 e!2505081)))

(declare-fun res!1644107 () Bool)

(assert (=> b!4037272 (=> (not res!1644107) (not e!2505081))))

(assert (=> b!4037272 (= res!1644107 (isDefined!7099 lt!1436393))))

(declare-fun bm!287202 () Bool)

(assert (=> bm!287202 (= call!287207 (maxPrefixOneRule!2816 thiss!21717 (h!48644 (t!334589 rules!2999)) lt!1435831))))

(declare-fun b!4037273 () Bool)

(declare-fun res!1644108 () Bool)

(assert (=> b!4037273 (=> (not res!1644108) (not e!2505081))))

(assert (=> b!4037273 (= res!1644108 (= (value!217770 (_1!24286 (get!14182 lt!1436393))) (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436393)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436393)))))))))

(declare-fun b!4037274 () Bool)

(declare-fun res!1644110 () Bool)

(assert (=> b!4037274 (=> (not res!1644110) (not e!2505081))))

(assert (=> b!4037274 (= res!1644110 (< (size!32308 (_2!24286 (get!14182 lt!1436393))) (size!32308 lt!1435831)))))

(declare-fun b!4037275 () Bool)

(assert (=> b!4037275 (= e!2505081 (contains!8583 (t!334589 rules!2999) (rule!9985 (_1!24286 (get!14182 lt!1436393)))))))

(declare-fun b!4037276 () Bool)

(assert (=> b!4037276 (= e!2505079 call!287207)))

(declare-fun b!4037277 () Bool)

(declare-fun res!1644105 () Bool)

(assert (=> b!4037277 (=> (not res!1644105) (not e!2505081))))

(assert (=> b!4037277 (= res!1644105 (= (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436393)))) (originalCharacters!7517 (_1!24286 (get!14182 lt!1436393)))))))

(declare-fun b!4037270 () Bool)

(declare-fun res!1644106 () Bool)

(assert (=> b!4037270 (=> (not res!1644106) (not e!2505081))))

(assert (=> b!4037270 (= res!1644106 (matchR!5775 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436393)))) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436393))))))))

(declare-fun d!1196574 () Bool)

(assert (=> d!1196574 e!2505080))

(declare-fun res!1644109 () Bool)

(assert (=> d!1196574 (=> res!1644109 e!2505080)))

(assert (=> d!1196574 (= res!1644109 (isEmpty!25798 lt!1436393))))

(assert (=> d!1196574 (= lt!1436393 e!2505079)))

(declare-fun c!697325 () Bool)

(assert (=> d!1196574 (= c!697325 (and (is-Cons!43224 (t!334589 rules!2999)) (is-Nil!43224 (t!334589 (t!334589 rules!2999)))))))

(declare-fun lt!1436392 () Unit!62414)

(declare-fun lt!1436395 () Unit!62414)

(assert (=> d!1196574 (= lt!1436392 lt!1436395)))

(assert (=> d!1196574 (isPrefix!4004 lt!1435831 lt!1435831)))

(assert (=> d!1196574 (= lt!1436395 (lemmaIsPrefixRefl!2571 lt!1435831 lt!1435831))))

(assert (=> d!1196574 (rulesValidInductive!2520 thiss!21717 (t!334589 rules!2999))))

(assert (=> d!1196574 (= (maxPrefix!3804 thiss!21717 (t!334589 rules!2999) lt!1435831) lt!1436393)))

(assert (= (and d!1196574 c!697325) b!4037276))

(assert (= (and d!1196574 (not c!697325)) b!4037269))

(assert (= (or b!4037276 b!4037269) bm!287202))

(assert (= (and d!1196574 (not res!1644109)) b!4037272))

(assert (= (and b!4037272 res!1644107) b!4037277))

(assert (= (and b!4037277 res!1644105) b!4037274))

(assert (= (and b!4037274 res!1644110) b!4037271))

(assert (= (and b!4037271 res!1644111) b!4037273))

(assert (= (and b!4037273 res!1644108) b!4037270))

(assert (= (and b!4037270 res!1644106) b!4037275))

(declare-fun m!4631857 () Bool)

(assert (=> b!4037277 m!4631857))

(declare-fun m!4631859 () Bool)

(assert (=> b!4037277 m!4631859))

(assert (=> b!4037277 m!4631859))

(declare-fun m!4631861 () Bool)

(assert (=> b!4037277 m!4631861))

(assert (=> b!4037273 m!4631857))

(declare-fun m!4631863 () Bool)

(assert (=> b!4037273 m!4631863))

(assert (=> b!4037273 m!4631863))

(declare-fun m!4631865 () Bool)

(assert (=> b!4037273 m!4631865))

(assert (=> b!4037275 m!4631857))

(declare-fun m!4631867 () Bool)

(assert (=> b!4037275 m!4631867))

(assert (=> b!4037274 m!4631857))

(declare-fun m!4631869 () Bool)

(assert (=> b!4037274 m!4631869))

(assert (=> b!4037274 m!4630523))

(declare-fun m!4631871 () Bool)

(assert (=> bm!287202 m!4631871))

(declare-fun m!4631873 () Bool)

(assert (=> b!4037269 m!4631873))

(declare-fun m!4631875 () Bool)

(assert (=> b!4037272 m!4631875))

(declare-fun m!4631877 () Bool)

(assert (=> d!1196574 m!4631877))

(assert (=> d!1196574 m!4630177))

(assert (=> d!1196574 m!4630179))

(assert (=> d!1196574 m!4631347))

(assert (=> b!4037271 m!4631857))

(assert (=> b!4037271 m!4631859))

(assert (=> b!4037271 m!4631859))

(assert (=> b!4037271 m!4631861))

(assert (=> b!4037271 m!4631861))

(declare-fun m!4631879 () Bool)

(assert (=> b!4037271 m!4631879))

(assert (=> b!4037270 m!4631857))

(assert (=> b!4037270 m!4631859))

(assert (=> b!4037270 m!4631859))

(assert (=> b!4037270 m!4631861))

(assert (=> b!4037270 m!4631861))

(declare-fun m!4631881 () Bool)

(assert (=> b!4037270 m!4631881))

(assert (=> b!4036479 d!1196574))

(declare-fun d!1196576 () Bool)

(declare-fun e!2505083 () Bool)

(assert (=> d!1196576 e!2505083))

(declare-fun res!1644115 () Bool)

(assert (=> d!1196576 (=> res!1644115 e!2505083)))

(declare-fun lt!1436397 () Bool)

(assert (=> d!1196576 (= res!1644115 (not lt!1436397))))

(declare-fun e!2505084 () Bool)

(assert (=> d!1196576 (= lt!1436397 e!2505084)))

(declare-fun res!1644113 () Bool)

(assert (=> d!1196576 (=> res!1644113 e!2505084)))

(assert (=> d!1196576 (= res!1644113 (is-Nil!43222 prefix!494))))

(assert (=> d!1196576 (= (isPrefix!4004 prefix!494 (++!11319 prefix!494 suffix!1299)) lt!1436397)))

(declare-fun b!4037278 () Bool)

(declare-fun e!2505082 () Bool)

(assert (=> b!4037278 (= e!2505084 e!2505082)))

(declare-fun res!1644114 () Bool)

(assert (=> b!4037278 (=> (not res!1644114) (not e!2505082))))

(assert (=> b!4037278 (= res!1644114 (not (is-Nil!43222 (++!11319 prefix!494 suffix!1299))))))

(declare-fun b!4037280 () Bool)

(assert (=> b!4037280 (= e!2505082 (isPrefix!4004 (tail!6280 prefix!494) (tail!6280 (++!11319 prefix!494 suffix!1299))))))

(declare-fun b!4037279 () Bool)

(declare-fun res!1644112 () Bool)

(assert (=> b!4037279 (=> (not res!1644112) (not e!2505082))))

(assert (=> b!4037279 (= res!1644112 (= (head!8548 prefix!494) (head!8548 (++!11319 prefix!494 suffix!1299))))))

(declare-fun b!4037281 () Bool)

(assert (=> b!4037281 (= e!2505083 (>= (size!32308 (++!11319 prefix!494 suffix!1299)) (size!32308 prefix!494)))))

(assert (= (and d!1196576 (not res!1644113)) b!4037278))

(assert (= (and b!4037278 res!1644114) b!4037279))

(assert (= (and b!4037279 res!1644112) b!4037280))

(assert (= (and d!1196576 (not res!1644115)) b!4037281))

(assert (=> b!4037280 m!4630717))

(assert (=> b!4037280 m!4630267))

(assert (=> b!4037280 m!4631309))

(assert (=> b!4037280 m!4630717))

(assert (=> b!4037280 m!4631309))

(declare-fun m!4631883 () Bool)

(assert (=> b!4037280 m!4631883))

(assert (=> b!4037279 m!4630723))

(assert (=> b!4037279 m!4630267))

(assert (=> b!4037279 m!4631313))

(assert (=> b!4037281 m!4630267))

(assert (=> b!4037281 m!4631315))

(assert (=> b!4037281 m!4630195))

(assert (=> d!1196110 d!1196576))

(assert (=> d!1196110 d!1196142))

(declare-fun d!1196578 () Bool)

(assert (=> d!1196578 (isPrefix!4004 prefix!494 (++!11319 prefix!494 suffix!1299))))

(assert (=> d!1196578 true))

(declare-fun _$46!1741 () Unit!62414)

(assert (=> d!1196578 (= (choose!24443 prefix!494 suffix!1299) _$46!1741)))

(declare-fun bs!590622 () Bool)

(assert (= bs!590622 d!1196578))

(assert (=> bs!590622 m!4630267))

(assert (=> bs!590622 m!4630267))

(assert (=> bs!590622 m!4630731))

(assert (=> d!1196110 d!1196578))

(declare-fun d!1196580 () Bool)

(declare-fun e!2505086 () Bool)

(assert (=> d!1196580 e!2505086))

(declare-fun res!1644119 () Bool)

(assert (=> d!1196580 (=> res!1644119 e!2505086)))

(declare-fun lt!1436398 () Bool)

(assert (=> d!1196580 (= res!1644119 (not lt!1436398))))

(declare-fun e!2505087 () Bool)

(assert (=> d!1196580 (= lt!1436398 e!2505087)))

(declare-fun res!1644117 () Bool)

(assert (=> d!1196580 (=> res!1644117 e!2505087)))

(assert (=> d!1196580 (= res!1644117 (is-Nil!43222 (tail!6280 prefix!494)))))

(assert (=> d!1196580 (= (isPrefix!4004 (tail!6280 prefix!494) (tail!6280 lt!1435831)) lt!1436398)))

(declare-fun b!4037282 () Bool)

(declare-fun e!2505085 () Bool)

(assert (=> b!4037282 (= e!2505087 e!2505085)))

(declare-fun res!1644118 () Bool)

(assert (=> b!4037282 (=> (not res!1644118) (not e!2505085))))

(assert (=> b!4037282 (= res!1644118 (not (is-Nil!43222 (tail!6280 lt!1435831))))))

(declare-fun b!4037284 () Bool)

(assert (=> b!4037284 (= e!2505085 (isPrefix!4004 (tail!6280 (tail!6280 prefix!494)) (tail!6280 (tail!6280 lt!1435831))))))

(declare-fun b!4037283 () Bool)

(declare-fun res!1644116 () Bool)

(assert (=> b!4037283 (=> (not res!1644116) (not e!2505085))))

(assert (=> b!4037283 (= res!1644116 (= (head!8548 (tail!6280 prefix!494)) (head!8548 (tail!6280 lt!1435831))))))

(declare-fun b!4037285 () Bool)

(assert (=> b!4037285 (= e!2505086 (>= (size!32308 (tail!6280 lt!1435831)) (size!32308 (tail!6280 prefix!494))))))

(assert (= (and d!1196580 (not res!1644117)) b!4037282))

(assert (= (and b!4037282 res!1644118) b!4037283))

(assert (= (and b!4037283 res!1644116) b!4037284))

(assert (= (and d!1196580 (not res!1644119)) b!4037285))

(assert (=> b!4037284 m!4630717))

(assert (=> b!4037284 m!4631517))

(assert (=> b!4037284 m!4630719))

(assert (=> b!4037284 m!4631289))

(assert (=> b!4037284 m!4631517))

(assert (=> b!4037284 m!4631289))

(declare-fun m!4631885 () Bool)

(assert (=> b!4037284 m!4631885))

(assert (=> b!4037283 m!4630717))

(declare-fun m!4631887 () Bool)

(assert (=> b!4037283 m!4631887))

(assert (=> b!4037283 m!4630719))

(assert (=> b!4037283 m!4631377))

(assert (=> b!4037285 m!4630719))

(assert (=> b!4037285 m!4631287))

(assert (=> b!4037285 m!4630717))

(assert (=> b!4037285 m!4631515))

(assert (=> b!4036447 d!1196580))

(assert (=> b!4036447 d!1196422))

(assert (=> b!4036447 d!1196308))

(assert (=> d!1196164 d!1196162))

(declare-fun d!1196582 () Bool)

(assert (=> d!1196582 (isPrefix!4004 lt!1435831 lt!1435831)))

(assert (=> d!1196582 true))

(declare-fun _$45!1979 () Unit!62414)

(assert (=> d!1196582 (= (choose!24449 lt!1435831 lt!1435831) _$45!1979)))

(declare-fun bs!590623 () Bool)

(assert (= bs!590623 d!1196582))

(assert (=> bs!590623 m!4630177))

(assert (=> d!1196164 d!1196582))

(declare-fun d!1196584 () Bool)

(assert (=> d!1196584 (= (list!16087 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484))) (list!16089 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))))))

(declare-fun bs!590624 () Bool)

(assert (= bs!590624 d!1196584))

(declare-fun m!4631889 () Bool)

(assert (=> bs!590624 m!4631889))

(assert (=> b!4036215 d!1196584))

(declare-fun d!1196586 () Bool)

(declare-fun c!697326 () Bool)

(assert (=> d!1196586 (= c!697326 (is-Nil!43222 lt!1436079))))

(declare-fun e!2505088 () (Set C!23830))

(assert (=> d!1196586 (= (content!6568 lt!1436079) e!2505088)))

(declare-fun b!4037286 () Bool)

(assert (=> b!4037286 (= e!2505088 (as set.empty (Set C!23830)))))

(declare-fun b!4037287 () Bool)

(assert (=> b!4037287 (= e!2505088 (set.union (set.insert (h!48642 lt!1436079) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1436079))))))

(assert (= (and d!1196586 c!697326) b!4037286))

(assert (= (and d!1196586 (not c!697326)) b!4037287))

(declare-fun m!4631891 () Bool)

(assert (=> b!4037287 m!4631891))

(declare-fun m!4631893 () Bool)

(assert (=> b!4037287 m!4631893))

(assert (=> d!1196158 d!1196586))

(assert (=> d!1196158 d!1196328))

(declare-fun d!1196588 () Bool)

(declare-fun c!697327 () Bool)

(assert (=> d!1196588 (= c!697327 (is-Nil!43222 lt!1435801))))

(declare-fun e!2505089 () (Set C!23830))

(assert (=> d!1196588 (= (content!6568 lt!1435801) e!2505089)))

(declare-fun b!4037288 () Bool)

(assert (=> b!4037288 (= e!2505089 (as set.empty (Set C!23830)))))

(declare-fun b!4037289 () Bool)

(assert (=> b!4037289 (= e!2505089 (set.union (set.insert (h!48642 lt!1435801) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1435801))))))

(assert (= (and d!1196588 c!697327) b!4037288))

(assert (= (and d!1196588 (not c!697327)) b!4037289))

(declare-fun m!4631895 () Bool)

(assert (=> b!4037289 m!4631895))

(declare-fun m!4631897 () Bool)

(assert (=> b!4037289 m!4631897))

(assert (=> d!1196158 d!1196588))

(declare-fun d!1196590 () Bool)

(declare-fun e!2505091 () Bool)

(assert (=> d!1196590 e!2505091))

(declare-fun res!1644123 () Bool)

(assert (=> d!1196590 (=> res!1644123 e!2505091)))

(declare-fun lt!1436399 () Bool)

(assert (=> d!1196590 (= res!1644123 (not lt!1436399))))

(declare-fun e!2505092 () Bool)

(assert (=> d!1196590 (= lt!1436399 e!2505092)))

(declare-fun res!1644121 () Bool)

(assert (=> d!1196590 (=> res!1644121 e!2505092)))

(assert (=> d!1196590 (= res!1644121 (is-Nil!43222 (tail!6280 lt!1435816)))))

(assert (=> d!1196590 (= (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 prefix!494)) lt!1436399)))

(declare-fun b!4037290 () Bool)

(declare-fun e!2505090 () Bool)

(assert (=> b!4037290 (= e!2505092 e!2505090)))

(declare-fun res!1644122 () Bool)

(assert (=> b!4037290 (=> (not res!1644122) (not e!2505090))))

(assert (=> b!4037290 (= res!1644122 (not (is-Nil!43222 (tail!6280 prefix!494))))))

(declare-fun b!4037292 () Bool)

(assert (=> b!4037292 (= e!2505090 (isPrefix!4004 (tail!6280 (tail!6280 lt!1435816)) (tail!6280 (tail!6280 prefix!494))))))

(declare-fun b!4037291 () Bool)

(declare-fun res!1644120 () Bool)

(assert (=> b!4037291 (=> (not res!1644120) (not e!2505090))))

(assert (=> b!4037291 (= res!1644120 (= (head!8548 (tail!6280 lt!1435816)) (head!8548 (tail!6280 prefix!494))))))

(declare-fun b!4037293 () Bool)

(assert (=> b!4037293 (= e!2505091 (>= (size!32308 (tail!6280 prefix!494)) (size!32308 (tail!6280 lt!1435816))))))

(assert (= (and d!1196590 (not res!1644121)) b!4037290))

(assert (= (and b!4037290 res!1644122) b!4037291))

(assert (= (and b!4037291 res!1644120) b!4037292))

(assert (= (and d!1196590 (not res!1644123)) b!4037293))

(assert (=> b!4037292 m!4630463))

(assert (=> b!4037292 m!4631249))

(assert (=> b!4037292 m!4630717))

(assert (=> b!4037292 m!4631517))

(assert (=> b!4037292 m!4631249))

(assert (=> b!4037292 m!4631517))

(declare-fun m!4631899 () Bool)

(assert (=> b!4037292 m!4631899))

(assert (=> b!4037291 m!4630463))

(assert (=> b!4037291 m!4631255))

(assert (=> b!4037291 m!4630717))

(assert (=> b!4037291 m!4631887))

(assert (=> b!4037293 m!4630717))

(assert (=> b!4037293 m!4631515))

(assert (=> b!4037293 m!4630463))

(assert (=> b!4037293 m!4631261))

(assert (=> b!4036579 d!1196590))

(assert (=> b!4036579 d!1196274))

(assert (=> b!4036579 d!1196422))

(assert (=> b!4036236 d!1196386))

(declare-fun d!1196592 () Bool)

(declare-fun e!2505094 () Bool)

(assert (=> d!1196592 e!2505094))

(declare-fun res!1644127 () Bool)

(assert (=> d!1196592 (=> res!1644127 e!2505094)))

(declare-fun lt!1436400 () Bool)

(assert (=> d!1196592 (= res!1644127 (not lt!1436400))))

(declare-fun e!2505095 () Bool)

(assert (=> d!1196592 (= lt!1436400 e!2505095)))

(declare-fun res!1644125 () Bool)

(assert (=> d!1196592 (=> res!1644125 e!2505095)))

(assert (=> d!1196592 (= res!1644125 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196592 (= (isPrefix!4004 lt!1435816 (++!11319 prefix!494 newSuffix!27)) lt!1436400)))

(declare-fun b!4037294 () Bool)

(declare-fun e!2505093 () Bool)

(assert (=> b!4037294 (= e!2505095 e!2505093)))

(declare-fun res!1644126 () Bool)

(assert (=> b!4037294 (=> (not res!1644126) (not e!2505093))))

(assert (=> b!4037294 (= res!1644126 (not (is-Nil!43222 (++!11319 prefix!494 newSuffix!27))))))

(declare-fun b!4037296 () Bool)

(assert (=> b!4037296 (= e!2505093 (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 (++!11319 prefix!494 newSuffix!27))))))

(declare-fun b!4037295 () Bool)

(declare-fun res!1644124 () Bool)

(assert (=> b!4037295 (=> (not res!1644124) (not e!2505093))))

(assert (=> b!4037295 (= res!1644124 (= (head!8548 lt!1435816) (head!8548 (++!11319 prefix!494 newSuffix!27))))))

(declare-fun b!4037297 () Bool)

(assert (=> b!4037297 (= e!2505094 (>= (size!32308 (++!11319 prefix!494 newSuffix!27)) (size!32308 lt!1435816)))))

(assert (= (and d!1196592 (not res!1644125)) b!4037294))

(assert (= (and b!4037294 res!1644126) b!4037295))

(assert (= (and b!4037295 res!1644124) b!4037296))

(assert (= (and d!1196592 (not res!1644127)) b!4037297))

(assert (=> b!4037296 m!4630463))

(assert (=> b!4037296 m!4630233))

(declare-fun m!4631901 () Bool)

(assert (=> b!4037296 m!4631901))

(assert (=> b!4037296 m!4630463))

(assert (=> b!4037296 m!4631901))

(declare-fun m!4631903 () Bool)

(assert (=> b!4037296 m!4631903))

(assert (=> b!4037295 m!4630469))

(assert (=> b!4037295 m!4630233))

(declare-fun m!4631905 () Bool)

(assert (=> b!4037295 m!4631905))

(assert (=> b!4037297 m!4630233))

(declare-fun m!4631907 () Bool)

(assert (=> b!4037297 m!4631907))

(assert (=> b!4037297 m!4630193))

(assert (=> d!1196170 d!1196592))

(assert (=> d!1196170 d!1196154))

(declare-fun d!1196594 () Bool)

(assert (=> d!1196594 (isPrefix!4004 lt!1435816 (++!11319 prefix!494 newSuffix!27))))

(assert (=> d!1196594 true))

(declare-fun _$58!570 () Unit!62414)

(assert (=> d!1196594 (= (choose!24451 lt!1435816 prefix!494 newSuffix!27) _$58!570)))

(declare-fun bs!590625 () Bool)

(assert (= bs!590625 d!1196594))

(assert (=> bs!590625 m!4630233))

(assert (=> bs!590625 m!4630233))

(assert (=> bs!590625 m!4630925))

(assert (=> d!1196170 d!1196594))

(assert (=> d!1196170 d!1196178))

(declare-fun d!1196596 () Bool)

(declare-fun c!697328 () Bool)

(assert (=> d!1196596 (= c!697328 (is-Nil!43222 lt!1436077))))

(declare-fun e!2505096 () (Set C!23830))

(assert (=> d!1196596 (= (content!6568 lt!1436077) e!2505096)))

(declare-fun b!4037298 () Bool)

(assert (=> b!4037298 (= e!2505096 (as set.empty (Set C!23830)))))

(declare-fun b!4037299 () Bool)

(assert (=> b!4037299 (= e!2505096 (set.union (set.insert (h!48642 lt!1436077) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1436077))))))

(assert (= (and d!1196596 c!697328) b!4037298))

(assert (= (and d!1196596 (not c!697328)) b!4037299))

(declare-fun m!4631909 () Bool)

(assert (=> b!4037299 m!4631909))

(declare-fun m!4631911 () Bool)

(assert (=> b!4037299 m!4631911))

(assert (=> d!1196154 d!1196596))

(declare-fun d!1196598 () Bool)

(declare-fun c!697329 () Bool)

(assert (=> d!1196598 (= c!697329 (is-Nil!43222 prefix!494))))

(declare-fun e!2505097 () (Set C!23830))

(assert (=> d!1196598 (= (content!6568 prefix!494) e!2505097)))

(declare-fun b!4037300 () Bool)

(assert (=> b!4037300 (= e!2505097 (as set.empty (Set C!23830)))))

(declare-fun b!4037301 () Bool)

(assert (=> b!4037301 (= e!2505097 (set.union (set.insert (h!48642 prefix!494) (as set.empty (Set C!23830))) (content!6568 (t!334587 prefix!494))))))

(assert (= (and d!1196598 c!697329) b!4037300))

(assert (= (and d!1196598 (not c!697329)) b!4037301))

(declare-fun m!4631913 () Bool)

(assert (=> b!4037301 m!4631913))

(assert (=> b!4037301 m!4631841))

(assert (=> d!1196154 d!1196598))

(declare-fun d!1196600 () Bool)

(declare-fun c!697330 () Bool)

(assert (=> d!1196600 (= c!697330 (is-Nil!43222 newSuffix!27))))

(declare-fun e!2505098 () (Set C!23830))

(assert (=> d!1196600 (= (content!6568 newSuffix!27) e!2505098)))

(declare-fun b!4037302 () Bool)

(assert (=> b!4037302 (= e!2505098 (as set.empty (Set C!23830)))))

(declare-fun b!4037303 () Bool)

(assert (=> b!4037303 (= e!2505098 (set.union (set.insert (h!48642 newSuffix!27) (as set.empty (Set C!23830))) (content!6568 (t!334587 newSuffix!27))))))

(assert (= (and d!1196600 c!697330) b!4037302))

(assert (= (and d!1196600 (not c!697330)) b!4037303))

(declare-fun m!4631915 () Bool)

(assert (=> b!4037303 m!4631915))

(declare-fun m!4631917 () Bool)

(assert (=> b!4037303 m!4631917))

(assert (=> d!1196154 d!1196600))

(declare-fun d!1196602 () Bool)

(declare-fun lt!1436401 () Int)

(assert (=> d!1196602 (>= lt!1436401 0)))

(declare-fun e!2505099 () Int)

(assert (=> d!1196602 (= lt!1436401 e!2505099)))

(declare-fun c!697331 () Bool)

(assert (=> d!1196602 (= c!697331 (is-Nil!43222 (_2!24286 (get!14182 lt!1435997))))))

(assert (=> d!1196602 (= (size!32308 (_2!24286 (get!14182 lt!1435997))) lt!1436401)))

(declare-fun b!4037304 () Bool)

(assert (=> b!4037304 (= e!2505099 0)))

(declare-fun b!4037305 () Bool)

(assert (=> b!4037305 (= e!2505099 (+ 1 (size!32308 (t!334587 (_2!24286 (get!14182 lt!1435997))))))))

(assert (= (and d!1196602 c!697331) b!4037304))

(assert (= (and d!1196602 (not c!697331)) b!4037305))

(declare-fun m!4631919 () Bool)

(assert (=> b!4037305 m!4631919))

(assert (=> b!4036347 d!1196602))

(assert (=> b!4036347 d!1196348))

(assert (=> b!4036347 d!1196360))

(assert (=> b!4036555 d!1196300))

(declare-fun bs!590626 () Bool)

(declare-fun d!1196604 () Bool)

(assert (= bs!590626 (and d!1196604 d!1196386)))

(declare-fun lambda!127315 () Int)

(assert (=> bs!590626 (= (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) (= lambda!127315 lambda!127310))))

(assert (=> d!1196604 true))

(assert (=> d!1196604 (< (dynLambda!18331 order!22607 (toValue!9449 (transformation!6917 (h!48644 rules!2999)))) (dynLambda!18332 order!22609 lambda!127315))))

(assert (=> d!1196604 (= (equivClasses!2852 (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (h!48644 rules!2999)))) (Forall2!1086 lambda!127315))))

(declare-fun bs!590627 () Bool)

(assert (= bs!590627 d!1196604))

(declare-fun m!4631921 () Bool)

(assert (=> bs!590627 m!4631921))

(assert (=> b!4036444 d!1196604))

(declare-fun d!1196606 () Bool)

(declare-fun charsToBigInt!0 (List!43347 Int) Int)

(assert (=> d!1196606 (= (inv!15 (value!217770 token!484)) (= (charsToBigInt!0 (text!50478 (value!217770 token!484)) 0) (value!217765 (value!217770 token!484))))))

(declare-fun bs!590628 () Bool)

(assert (= bs!590628 d!1196606))

(declare-fun m!4631923 () Bool)

(assert (=> bs!590628 m!4631923))

(assert (=> b!4036591 d!1196606))

(declare-fun d!1196608 () Bool)

(declare-fun e!2505100 () Bool)

(assert (=> d!1196608 e!2505100))

(declare-fun res!1644129 () Bool)

(assert (=> d!1196608 (=> res!1644129 e!2505100)))

(declare-fun lt!1436405 () Option!9331)

(assert (=> d!1196608 (= res!1644129 (isEmpty!25798 lt!1436405))))

(declare-fun e!2505102 () Option!9331)

(assert (=> d!1196608 (= lt!1436405 e!2505102)))

(declare-fun c!697332 () Bool)

(declare-fun lt!1436406 () tuple2!42308)

(assert (=> d!1196608 (= c!697332 (isEmpty!25795 (_1!24288 lt!1436406)))))

(assert (=> d!1196608 (= lt!1436406 (findLongestMatch!1295 (regex!6917 (h!48644 rules!2999)) lt!1435831))))

(assert (=> d!1196608 (ruleValid!2847 thiss!21717 (h!48644 rules!2999))))

(assert (=> d!1196608 (= (maxPrefixOneRule!2816 thiss!21717 (h!48644 rules!2999) lt!1435831) lt!1436405)))

(declare-fun b!4037306 () Bool)

(declare-fun res!1644128 () Bool)

(declare-fun e!2505103 () Bool)

(assert (=> b!4037306 (=> (not res!1644128) (not e!2505103))))

(assert (=> b!4037306 (= res!1644128 (= (rule!9985 (_1!24286 (get!14182 lt!1436405))) (h!48644 rules!2999)))))

(declare-fun b!4037307 () Bool)

(assert (=> b!4037307 (= e!2505102 None!9330)))

(declare-fun b!4037308 () Bool)

(declare-fun e!2505101 () Bool)

(assert (=> b!4037308 (= e!2505101 (matchR!5775 (regex!6917 (h!48644 rules!2999)) (_1!24288 (findLongestMatchInner!1382 (regex!6917 (h!48644 rules!2999)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))

(declare-fun b!4037309 () Bool)

(declare-fun res!1644130 () Bool)

(assert (=> b!4037309 (=> (not res!1644130) (not e!2505103))))

(assert (=> b!4037309 (= res!1644130 (< (size!32308 (_2!24286 (get!14182 lt!1436405))) (size!32308 lt!1435831)))))

(declare-fun b!4037310 () Bool)

(assert (=> b!4037310 (= e!2505102 (Some!9330 (tuple2!42305 (Token!12973 (apply!10106 (transformation!6917 (h!48644 rules!2999)) (seqFromList!5134 (_1!24288 lt!1436406))) (h!48644 rules!2999) (size!32311 (seqFromList!5134 (_1!24288 lt!1436406))) (_1!24288 lt!1436406)) (_2!24288 lt!1436406))))))

(declare-fun lt!1436403 () Unit!62414)

(assert (=> b!4037310 (= lt!1436403 (longestMatchIsAcceptedByMatchOrIsEmpty!1355 (regex!6917 (h!48644 rules!2999)) lt!1435831))))

(declare-fun res!1644134 () Bool)

(assert (=> b!4037310 (= res!1644134 (isEmpty!25795 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (h!48644 rules!2999)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))

(assert (=> b!4037310 (=> res!1644134 e!2505101)))

(assert (=> b!4037310 e!2505101))

(declare-fun lt!1436402 () Unit!62414)

(assert (=> b!4037310 (= lt!1436402 lt!1436403)))

(declare-fun lt!1436404 () Unit!62414)

(assert (=> b!4037310 (= lt!1436404 (lemmaSemiInverse!1902 (transformation!6917 (h!48644 rules!2999)) (seqFromList!5134 (_1!24288 lt!1436406))))))

(declare-fun b!4037311 () Bool)

(declare-fun res!1644132 () Bool)

(assert (=> b!4037311 (=> (not res!1644132) (not e!2505103))))

(assert (=> b!4037311 (= res!1644132 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436405)))) (_2!24286 (get!14182 lt!1436405))) lt!1435831))))

(declare-fun b!4037312 () Bool)

(assert (=> b!4037312 (= e!2505103 (= (size!32307 (_1!24286 (get!14182 lt!1436405))) (size!32308 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436405))))))))

(declare-fun b!4037313 () Bool)

(assert (=> b!4037313 (= e!2505100 e!2505103)))

(declare-fun res!1644133 () Bool)

(assert (=> b!4037313 (=> (not res!1644133) (not e!2505103))))

(assert (=> b!4037313 (= res!1644133 (matchR!5775 (regex!6917 (h!48644 rules!2999)) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436405))))))))

(declare-fun b!4037314 () Bool)

(declare-fun res!1644131 () Bool)

(assert (=> b!4037314 (=> (not res!1644131) (not e!2505103))))

(assert (=> b!4037314 (= res!1644131 (= (value!217770 (_1!24286 (get!14182 lt!1436405))) (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436405)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436405)))))))))

(assert (= (and d!1196608 c!697332) b!4037307))

(assert (= (and d!1196608 (not c!697332)) b!4037310))

(assert (= (and b!4037310 (not res!1644134)) b!4037308))

(assert (= (and d!1196608 (not res!1644129)) b!4037313))

(assert (= (and b!4037313 res!1644133) b!4037311))

(assert (= (and b!4037311 res!1644132) b!4037309))

(assert (= (and b!4037309 res!1644130) b!4037306))

(assert (= (and b!4037306 res!1644128) b!4037314))

(assert (= (and b!4037314 res!1644131) b!4037312))

(declare-fun m!4631925 () Bool)

(assert (=> b!4037311 m!4631925))

(declare-fun m!4631927 () Bool)

(assert (=> b!4037311 m!4631927))

(assert (=> b!4037311 m!4631927))

(declare-fun m!4631929 () Bool)

(assert (=> b!4037311 m!4631929))

(assert (=> b!4037311 m!4631929))

(declare-fun m!4631931 () Bool)

(assert (=> b!4037311 m!4631931))

(assert (=> b!4037308 m!4630521))

(assert (=> b!4037308 m!4630523))

(assert (=> b!4037308 m!4630521))

(assert (=> b!4037308 m!4630523))

(declare-fun m!4631933 () Bool)

(assert (=> b!4037308 m!4631933))

(declare-fun m!4631935 () Bool)

(assert (=> b!4037308 m!4631935))

(assert (=> b!4037306 m!4631925))

(declare-fun m!4631937 () Bool)

(assert (=> b!4037310 m!4631937))

(declare-fun m!4631939 () Bool)

(assert (=> b!4037310 m!4631939))

(declare-fun m!4631941 () Bool)

(assert (=> b!4037310 m!4631941))

(declare-fun m!4631943 () Bool)

(assert (=> b!4037310 m!4631943))

(assert (=> b!4037310 m!4630521))

(assert (=> b!4037310 m!4630523))

(assert (=> b!4037310 m!4631933))

(assert (=> b!4037310 m!4631939))

(declare-fun m!4631945 () Bool)

(assert (=> b!4037310 m!4631945))

(assert (=> b!4037310 m!4630521))

(assert (=> b!4037310 m!4630523))

(assert (=> b!4037310 m!4631939))

(declare-fun m!4631947 () Bool)

(assert (=> b!4037310 m!4631947))

(assert (=> b!4037310 m!4631939))

(assert (=> b!4037313 m!4631925))

(assert (=> b!4037313 m!4631927))

(assert (=> b!4037313 m!4631927))

(assert (=> b!4037313 m!4631929))

(assert (=> b!4037313 m!4631929))

(declare-fun m!4631949 () Bool)

(assert (=> b!4037313 m!4631949))

(assert (=> b!4037314 m!4631925))

(declare-fun m!4631951 () Bool)

(assert (=> b!4037314 m!4631951))

(assert (=> b!4037314 m!4631951))

(declare-fun m!4631953 () Bool)

(assert (=> b!4037314 m!4631953))

(declare-fun m!4631955 () Bool)

(assert (=> d!1196608 m!4631955))

(declare-fun m!4631957 () Bool)

(assert (=> d!1196608 m!4631957))

(declare-fun m!4631959 () Bool)

(assert (=> d!1196608 m!4631959))

(assert (=> d!1196608 m!4631345))

(assert (=> b!4037309 m!4631925))

(declare-fun m!4631961 () Bool)

(assert (=> b!4037309 m!4631961))

(assert (=> b!4037309 m!4630523))

(assert (=> b!4037312 m!4631925))

(declare-fun m!4631963 () Bool)

(assert (=> b!4037312 m!4631963))

(assert (=> bm!287132 d!1196608))

(declare-fun e!2505104 () Bool)

(declare-fun lt!1436407 () List!43346)

(declare-fun b!4037318 () Bool)

(assert (=> b!4037318 (= e!2505104 (or (not (= lt!1435801 Nil!43222)) (= lt!1436407 (t!334587 lt!1435816))))))

(declare-fun b!4037317 () Bool)

(declare-fun res!1644136 () Bool)

(assert (=> b!4037317 (=> (not res!1644136) (not e!2505104))))

(assert (=> b!4037317 (= res!1644136 (= (size!32308 lt!1436407) (+ (size!32308 (t!334587 lt!1435816)) (size!32308 lt!1435801))))))

(declare-fun b!4037316 () Bool)

(declare-fun e!2505105 () List!43346)

(assert (=> b!4037316 (= e!2505105 (Cons!43222 (h!48642 (t!334587 lt!1435816)) (++!11319 (t!334587 (t!334587 lt!1435816)) lt!1435801)))))

(declare-fun b!4037315 () Bool)

(assert (=> b!4037315 (= e!2505105 lt!1435801)))

(declare-fun d!1196610 () Bool)

(assert (=> d!1196610 e!2505104))

(declare-fun res!1644135 () Bool)

(assert (=> d!1196610 (=> (not res!1644135) (not e!2505104))))

(assert (=> d!1196610 (= res!1644135 (= (content!6568 lt!1436407) (set.union (content!6568 (t!334587 lt!1435816)) (content!6568 lt!1435801))))))

(assert (=> d!1196610 (= lt!1436407 e!2505105)))

(declare-fun c!697333 () Bool)

(assert (=> d!1196610 (= c!697333 (is-Nil!43222 (t!334587 lt!1435816)))))

(assert (=> d!1196610 (= (++!11319 (t!334587 lt!1435816) lt!1435801) lt!1436407)))

(assert (= (and d!1196610 c!697333) b!4037315))

(assert (= (and d!1196610 (not c!697333)) b!4037316))

(assert (= (and d!1196610 res!1644135) b!4037317))

(assert (= (and b!4037317 res!1644136) b!4037318))

(declare-fun m!4631965 () Bool)

(assert (=> b!4037317 m!4631965))

(assert (=> b!4037317 m!4630603))

(assert (=> b!4037317 m!4630895))

(declare-fun m!4631967 () Bool)

(assert (=> b!4037316 m!4631967))

(declare-fun m!4631969 () Bool)

(assert (=> d!1196610 m!4631969))

(assert (=> d!1196610 m!4631331))

(assert (=> d!1196610 m!4630901))

(assert (=> b!4036512 d!1196610))

(assert (=> d!1196014 d!1196396))

(declare-fun b!4037322 () Bool)

(declare-fun e!2505106 () Bool)

(declare-fun lt!1436408 () List!43346)

(assert (=> b!4037322 (= e!2505106 (or (not (= (_2!24286 (get!14182 lt!1436043)) Nil!43222)) (= lt!1436408 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043)))))))))

(declare-fun b!4037321 () Bool)

(declare-fun res!1644138 () Bool)

(assert (=> b!4037321 (=> (not res!1644138) (not e!2505106))))

(assert (=> b!4037321 (= res!1644138 (= (size!32308 lt!1436408) (+ (size!32308 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))) (size!32308 (_2!24286 (get!14182 lt!1436043))))))))

(declare-fun b!4037320 () Bool)

(declare-fun e!2505107 () List!43346)

(assert (=> b!4037320 (= e!2505107 (Cons!43222 (h!48642 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))) (++!11319 (t!334587 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))) (_2!24286 (get!14182 lt!1436043)))))))

(declare-fun b!4037319 () Bool)

(assert (=> b!4037319 (= e!2505107 (_2!24286 (get!14182 lt!1436043)))))

(declare-fun d!1196612 () Bool)

(assert (=> d!1196612 e!2505106))

(declare-fun res!1644137 () Bool)

(assert (=> d!1196612 (=> (not res!1644137) (not e!2505106))))

(assert (=> d!1196612 (= res!1644137 (= (content!6568 lt!1436408) (set.union (content!6568 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))) (content!6568 (_2!24286 (get!14182 lt!1436043))))))))

(assert (=> d!1196612 (= lt!1436408 e!2505107)))

(declare-fun c!697334 () Bool)

(assert (=> d!1196612 (= c!697334 (is-Nil!43222 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043))))))))

(assert (=> d!1196612 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436043)))) (_2!24286 (get!14182 lt!1436043))) lt!1436408)))

(assert (= (and d!1196612 c!697334) b!4037319))

(assert (= (and d!1196612 (not c!697334)) b!4037320))

(assert (= (and d!1196612 res!1644137) b!4037321))

(assert (= (and b!4037321 res!1644138) b!4037322))

(declare-fun m!4631971 () Bool)

(assert (=> b!4037321 m!4631971))

(assert (=> b!4037321 m!4630669))

(declare-fun m!4631973 () Bool)

(assert (=> b!4037321 m!4631973))

(assert (=> b!4037321 m!4630677))

(declare-fun m!4631975 () Bool)

(assert (=> b!4037320 m!4631975))

(declare-fun m!4631977 () Bool)

(assert (=> d!1196612 m!4631977))

(assert (=> d!1196612 m!4630669))

(declare-fun m!4631979 () Bool)

(assert (=> d!1196612 m!4631979))

(declare-fun m!4631981 () Bool)

(assert (=> d!1196612 m!4631981))

(assert (=> b!4036433 d!1196612))

(assert (=> b!4036433 d!1196314))

(assert (=> b!4036433 d!1196316))

(assert (=> b!4036433 d!1196294))

(declare-fun e!2505108 () Bool)

(declare-fun b!4037326 () Bool)

(declare-fun lt!1436409 () List!43346)

(assert (=> b!4037326 (= e!2505108 (or (not (= newSuffix!27 Nil!43222)) (= lt!1436409 (t!334587 prefix!494))))))

(declare-fun b!4037325 () Bool)

(declare-fun res!1644140 () Bool)

(assert (=> b!4037325 (=> (not res!1644140) (not e!2505108))))

(assert (=> b!4037325 (= res!1644140 (= (size!32308 lt!1436409) (+ (size!32308 (t!334587 prefix!494)) (size!32308 newSuffix!27))))))

(declare-fun b!4037324 () Bool)

(declare-fun e!2505109 () List!43346)

(assert (=> b!4037324 (= e!2505109 (Cons!43222 (h!48642 (t!334587 prefix!494)) (++!11319 (t!334587 (t!334587 prefix!494)) newSuffix!27)))))

(declare-fun b!4037323 () Bool)

(assert (=> b!4037323 (= e!2505109 newSuffix!27)))

(declare-fun d!1196614 () Bool)

(assert (=> d!1196614 e!2505108))

(declare-fun res!1644139 () Bool)

(assert (=> d!1196614 (=> (not res!1644139) (not e!2505108))))

(assert (=> d!1196614 (= res!1644139 (= (content!6568 lt!1436409) (set.union (content!6568 (t!334587 prefix!494)) (content!6568 newSuffix!27))))))

(assert (=> d!1196614 (= lt!1436409 e!2505109)))

(declare-fun c!697335 () Bool)

(assert (=> d!1196614 (= c!697335 (is-Nil!43222 (t!334587 prefix!494)))))

(assert (=> d!1196614 (= (++!11319 (t!334587 prefix!494) newSuffix!27) lt!1436409)))

(assert (= (and d!1196614 c!697335) b!4037323))

(assert (= (and d!1196614 (not c!697335)) b!4037324))

(assert (= (and d!1196614 res!1644139) b!4037325))

(assert (= (and b!4037325 res!1644140) b!4037326))

(declare-fun m!4631983 () Bool)

(assert (=> b!4037325 m!4631983))

(assert (=> b!4037325 m!4630605))

(assert (=> b!4037325 m!4630219))

(declare-fun m!4631985 () Bool)

(assert (=> b!4037324 m!4631985))

(declare-fun m!4631987 () Bool)

(assert (=> d!1196614 m!4631987))

(assert (=> d!1196614 m!4631841))

(assert (=> d!1196614 m!4630881))

(assert (=> b!4036504 d!1196614))

(declare-fun d!1196616 () Bool)

(declare-fun lt!1436410 () Int)

(assert (=> d!1196616 (>= lt!1436410 0)))

(declare-fun e!2505110 () Int)

(assert (=> d!1196616 (= lt!1436410 e!2505110)))

(declare-fun c!697336 () Bool)

(assert (=> d!1196616 (= c!697336 (is-Nil!43222 lt!1436078))))

(assert (=> d!1196616 (= (size!32308 lt!1436078) lt!1436410)))

(declare-fun b!4037327 () Bool)

(assert (=> b!4037327 (= e!2505110 0)))

(declare-fun b!4037328 () Bool)

(assert (=> b!4037328 (= e!2505110 (+ 1 (size!32308 (t!334587 lt!1436078))))))

(assert (= (and d!1196616 c!697336) b!4037327))

(assert (= (and d!1196616 (not c!697336)) b!4037328))

(declare-fun m!4631989 () Bool)

(assert (=> b!4037328 m!4631989))

(assert (=> b!4036509 d!1196616))

(assert (=> b!4036509 d!1196064))

(declare-fun d!1196618 () Bool)

(declare-fun lt!1436411 () Int)

(assert (=> d!1196618 (>= lt!1436411 0)))

(declare-fun e!2505111 () Int)

(assert (=> d!1196618 (= lt!1436411 e!2505111)))

(declare-fun c!697337 () Bool)

(assert (=> d!1196618 (= c!697337 (is-Nil!43222 newSuffixResult!27))))

(assert (=> d!1196618 (= (size!32308 newSuffixResult!27) lt!1436411)))

(declare-fun b!4037329 () Bool)

(assert (=> b!4037329 (= e!2505111 0)))

(declare-fun b!4037330 () Bool)

(assert (=> b!4037330 (= e!2505111 (+ 1 (size!32308 (t!334587 newSuffixResult!27))))))

(assert (= (and d!1196618 c!697337) b!4037329))

(assert (= (and d!1196618 (not c!697337)) b!4037330))

(declare-fun m!4631991 () Bool)

(assert (=> b!4037330 m!4631991))

(assert (=> b!4036509 d!1196618))

(declare-fun b!4037331 () Bool)

(declare-fun e!2505115 () Bool)

(declare-fun e!2505117 () Bool)

(assert (=> b!4037331 (= e!2505115 e!2505117)))

(declare-fun res!1644142 () Bool)

(assert (=> b!4037331 (=> (not res!1644142) (not e!2505117))))

(declare-fun lt!1436412 () Bool)

(assert (=> b!4037331 (= res!1644142 (not lt!1436412))))

(declare-fun b!4037332 () Bool)

(declare-fun e!2505112 () Bool)

(declare-fun e!2505116 () Bool)

(assert (=> b!4037332 (= e!2505112 e!2505116)))

(declare-fun c!697339 () Bool)

(assert (=> b!4037332 (= c!697339 (is-EmptyLang!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun b!4037333 () Bool)

(declare-fun e!2505113 () Bool)

(assert (=> b!4037333 (= e!2505113 (not (= (head!8548 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))) (c!697106 (regex!6917 (rule!9985 token!484))))))))

(declare-fun b!4037334 () Bool)

(declare-fun res!1644148 () Bool)

(assert (=> b!4037334 (=> res!1644148 e!2505115)))

(assert (=> b!4037334 (= res!1644148 (not (is-ElementMatch!11822 (regex!6917 (rule!9985 token!484)))))))

(assert (=> b!4037334 (= e!2505116 e!2505115)))

(declare-fun d!1196620 () Bool)

(assert (=> d!1196620 e!2505112))

(declare-fun c!697340 () Bool)

(assert (=> d!1196620 (= c!697340 (is-EmptyExpr!11822 (regex!6917 (rule!9985 token!484))))))

(declare-fun e!2505114 () Bool)

(assert (=> d!1196620 (= lt!1436412 e!2505114)))

(declare-fun c!697338 () Bool)

(assert (=> d!1196620 (= c!697338 (isEmpty!25795 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))))))

(assert (=> d!1196620 (validRegex!5345 (regex!6917 (rule!9985 token!484)))))

(assert (=> d!1196620 (= (matchR!5775 (regex!6917 (rule!9985 token!484)) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))) lt!1436412)))

(declare-fun b!4037335 () Bool)

(assert (=> b!4037335 (= e!2505117 e!2505113)))

(declare-fun res!1644147 () Bool)

(assert (=> b!4037335 (=> res!1644147 e!2505113)))

(declare-fun call!287208 () Bool)

(assert (=> b!4037335 (= res!1644147 call!287208)))

(declare-fun b!4037336 () Bool)

(assert (=> b!4037336 (= e!2505114 (matchR!5775 (derivativeStep!3551 (regex!6917 (rule!9985 token!484)) (head!8548 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997)))))) (tail!6280 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997)))))))))

(declare-fun b!4037337 () Bool)

(declare-fun res!1644141 () Bool)

(declare-fun e!2505118 () Bool)

(assert (=> b!4037337 (=> (not res!1644141) (not e!2505118))))

(assert (=> b!4037337 (= res!1644141 (not call!287208))))

(declare-fun bm!287203 () Bool)

(assert (=> bm!287203 (= call!287208 (isEmpty!25795 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))))))

(declare-fun b!4037338 () Bool)

(assert (=> b!4037338 (= e!2505118 (= (head!8548 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))) (c!697106 (regex!6917 (rule!9985 token!484)))))))

(declare-fun b!4037339 () Bool)

(declare-fun res!1644144 () Bool)

(assert (=> b!4037339 (=> res!1644144 e!2505113)))

(assert (=> b!4037339 (= res!1644144 (not (isEmpty!25795 (tail!6280 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997))))))))))

(declare-fun b!4037340 () Bool)

(declare-fun res!1644145 () Bool)

(assert (=> b!4037340 (=> res!1644145 e!2505115)))

(assert (=> b!4037340 (= res!1644145 e!2505118)))

(declare-fun res!1644146 () Bool)

(assert (=> b!4037340 (=> (not res!1644146) (not e!2505118))))

(assert (=> b!4037340 (= res!1644146 lt!1436412)))

(declare-fun b!4037341 () Bool)

(assert (=> b!4037341 (= e!2505114 (nullable!4145 (regex!6917 (rule!9985 token!484))))))

(declare-fun b!4037342 () Bool)

(assert (=> b!4037342 (= e!2505116 (not lt!1436412))))

(declare-fun b!4037343 () Bool)

(assert (=> b!4037343 (= e!2505112 (= lt!1436412 call!287208))))

(declare-fun b!4037344 () Bool)

(declare-fun res!1644143 () Bool)

(assert (=> b!4037344 (=> (not res!1644143) (not e!2505118))))

(assert (=> b!4037344 (= res!1644143 (isEmpty!25795 (tail!6280 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1435997)))))))))

(assert (= (and d!1196620 c!697338) b!4037341))

(assert (= (and d!1196620 (not c!697338)) b!4037336))

(assert (= (and d!1196620 c!697340) b!4037343))

(assert (= (and d!1196620 (not c!697340)) b!4037332))

(assert (= (and b!4037332 c!697339) b!4037342))

(assert (= (and b!4037332 (not c!697339)) b!4037334))

(assert (= (and b!4037334 (not res!1644148)) b!4037340))

(assert (= (and b!4037340 res!1644146) b!4037337))

(assert (= (and b!4037337 res!1644141) b!4037344))

(assert (= (and b!4037344 res!1644143) b!4037338))

(assert (= (and b!4037340 (not res!1644145)) b!4037331))

(assert (= (and b!4037331 res!1644142) b!4037335))

(assert (= (and b!4037335 (not res!1644147)) b!4037339))

(assert (= (and b!4037339 (not res!1644144)) b!4037333))

(assert (= (or b!4037343 b!4037335 b!4037337) bm!287203))

(assert (=> d!1196620 m!4630517))

(declare-fun m!4631993 () Bool)

(assert (=> d!1196620 m!4631993))

(assert (=> d!1196620 m!4630451))

(assert (=> b!4037336 m!4630517))

(declare-fun m!4631995 () Bool)

(assert (=> b!4037336 m!4631995))

(assert (=> b!4037336 m!4631995))

(declare-fun m!4631997 () Bool)

(assert (=> b!4037336 m!4631997))

(assert (=> b!4037336 m!4630517))

(declare-fun m!4631999 () Bool)

(assert (=> b!4037336 m!4631999))

(assert (=> b!4037336 m!4631997))

(assert (=> b!4037336 m!4631999))

(declare-fun m!4632001 () Bool)

(assert (=> b!4037336 m!4632001))

(assert (=> b!4037344 m!4630517))

(assert (=> b!4037344 m!4631999))

(assert (=> b!4037344 m!4631999))

(declare-fun m!4632003 () Bool)

(assert (=> b!4037344 m!4632003))

(assert (=> b!4037338 m!4630517))

(assert (=> b!4037338 m!4631995))

(assert (=> b!4037341 m!4630453))

(assert (=> b!4037339 m!4630517))

(assert (=> b!4037339 m!4631999))

(assert (=> b!4037339 m!4631999))

(assert (=> b!4037339 m!4632003))

(assert (=> b!4037333 m!4630517))

(assert (=> b!4037333 m!4631995))

(assert (=> bm!287203 m!4630517))

(assert (=> bm!287203 m!4631993))

(assert (=> b!4036351 d!1196620))

(assert (=> b!4036351 d!1196344))

(assert (=> b!4036351 d!1196346))

(assert (=> b!4036351 d!1196348))

(declare-fun d!1196622 () Bool)

(assert (=> d!1196622 (= (head!8548 newSuffix!27) (h!48642 newSuffix!27))))

(assert (=> b!4036497 d!1196622))

(declare-fun d!1196624 () Bool)

(assert (=> d!1196624 (= (head!8548 suffix!1299) (h!48642 suffix!1299))))

(assert (=> b!4036497 d!1196624))

(declare-fun d!1196626 () Bool)

(declare-fun c!697341 () Bool)

(assert (=> d!1196626 (= c!697341 (is-Nil!43222 lt!1435956))))

(declare-fun e!2505119 () (Set C!23830))

(assert (=> d!1196626 (= (content!6568 lt!1435956) e!2505119)))

(declare-fun b!4037345 () Bool)

(assert (=> b!4037345 (= e!2505119 (as set.empty (Set C!23830)))))

(declare-fun b!4037346 () Bool)

(assert (=> b!4037346 (= e!2505119 (set.union (set.insert (h!48642 lt!1435956) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1435956))))))

(assert (= (and d!1196626 c!697341) b!4037345))

(assert (= (and d!1196626 (not c!697341)) b!4037346))

(declare-fun m!4632005 () Bool)

(assert (=> b!4037346 m!4632005))

(declare-fun m!4632007 () Bool)

(assert (=> b!4037346 m!4632007))

(assert (=> d!1196010 d!1196626))

(assert (=> d!1196010 d!1196328))

(declare-fun d!1196628 () Bool)

(declare-fun c!697342 () Bool)

(assert (=> d!1196628 (= c!697342 (is-Nil!43222 suffixResult!105))))

(declare-fun e!2505120 () (Set C!23830))

(assert (=> d!1196628 (= (content!6568 suffixResult!105) e!2505120)))

(declare-fun b!4037347 () Bool)

(assert (=> b!4037347 (= e!2505120 (as set.empty (Set C!23830)))))

(declare-fun b!4037348 () Bool)

(assert (=> b!4037348 (= e!2505120 (set.union (set.insert (h!48642 suffixResult!105) (as set.empty (Set C!23830))) (content!6568 (t!334587 suffixResult!105))))))

(assert (= (and d!1196628 c!697342) b!4037347))

(assert (= (and d!1196628 (not c!697342)) b!4037348))

(declare-fun m!4632009 () Bool)

(assert (=> b!4037348 m!4632009))

(declare-fun m!4632011 () Bool)

(assert (=> b!4037348 m!4632011))

(assert (=> d!1196010 d!1196628))

(declare-fun d!1196630 () Bool)

(declare-fun c!697343 () Bool)

(assert (=> d!1196630 (= c!697343 (is-Nil!43222 lt!1436055))))

(declare-fun e!2505121 () (Set C!23830))

(assert (=> d!1196630 (= (content!6568 lt!1436055) e!2505121)))

(declare-fun b!4037349 () Bool)

(assert (=> b!4037349 (= e!2505121 (as set.empty (Set C!23830)))))

(declare-fun b!4037350 () Bool)

(assert (=> b!4037350 (= e!2505121 (set.union (set.insert (h!48642 lt!1436055) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1436055))))))

(assert (= (and d!1196630 c!697343) b!4037349))

(assert (= (and d!1196630 (not c!697343)) b!4037350))

(declare-fun m!4632013 () Bool)

(assert (=> b!4037350 m!4632013))

(declare-fun m!4632015 () Bool)

(assert (=> b!4037350 m!4632015))

(assert (=> d!1196116 d!1196630))

(assert (=> d!1196116 d!1196328))

(declare-fun d!1196632 () Bool)

(declare-fun c!697344 () Bool)

(assert (=> d!1196632 (= c!697344 (is-Nil!43222 lt!1435798))))

(declare-fun e!2505122 () (Set C!23830))

(assert (=> d!1196632 (= (content!6568 lt!1435798) e!2505122)))

(declare-fun b!4037351 () Bool)

(assert (=> b!4037351 (= e!2505122 (as set.empty (Set C!23830)))))

(declare-fun b!4037352 () Bool)

(assert (=> b!4037352 (= e!2505122 (set.union (set.insert (h!48642 lt!1435798) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1435798))))))

(assert (= (and d!1196632 c!697344) b!4037351))

(assert (= (and d!1196632 (not c!697344)) b!4037352))

(declare-fun m!4632017 () Bool)

(assert (=> b!4037352 m!4632017))

(declare-fun m!4632019 () Bool)

(assert (=> b!4037352 m!4632019))

(assert (=> d!1196116 d!1196632))

(declare-fun b!4037356 () Bool)

(declare-fun lt!1436413 () List!43346)

(declare-fun e!2505123 () Bool)

(assert (=> b!4037356 (= e!2505123 (or (not (= suffixResult!105 Nil!43222)) (= lt!1436413 (t!334587 lt!1435816))))))

(declare-fun b!4037355 () Bool)

(declare-fun res!1644150 () Bool)

(assert (=> b!4037355 (=> (not res!1644150) (not e!2505123))))

(assert (=> b!4037355 (= res!1644150 (= (size!32308 lt!1436413) (+ (size!32308 (t!334587 lt!1435816)) (size!32308 suffixResult!105))))))

(declare-fun b!4037354 () Bool)

(declare-fun e!2505124 () List!43346)

(assert (=> b!4037354 (= e!2505124 (Cons!43222 (h!48642 (t!334587 lt!1435816)) (++!11319 (t!334587 (t!334587 lt!1435816)) suffixResult!105)))))

(declare-fun b!4037353 () Bool)

(assert (=> b!4037353 (= e!2505124 suffixResult!105)))

(declare-fun d!1196634 () Bool)

(assert (=> d!1196634 e!2505123))

(declare-fun res!1644149 () Bool)

(assert (=> d!1196634 (=> (not res!1644149) (not e!2505123))))

(assert (=> d!1196634 (= res!1644149 (= (content!6568 lt!1436413) (set.union (content!6568 (t!334587 lt!1435816)) (content!6568 suffixResult!105))))))

(assert (=> d!1196634 (= lt!1436413 e!2505124)))

(declare-fun c!697345 () Bool)

(assert (=> d!1196634 (= c!697345 (is-Nil!43222 (t!334587 lt!1435816)))))

(assert (=> d!1196634 (= (++!11319 (t!334587 lt!1435816) suffixResult!105) lt!1436413)))

(assert (= (and d!1196634 c!697345) b!4037353))

(assert (= (and d!1196634 (not c!697345)) b!4037354))

(assert (= (and d!1196634 res!1644149) b!4037355))

(assert (= (and b!4037355 res!1644150) b!4037356))

(declare-fun m!4632021 () Bool)

(assert (=> b!4037355 m!4632021))

(assert (=> b!4037355 m!4630603))

(assert (=> b!4037355 m!4630437))

(declare-fun m!4632023 () Bool)

(assert (=> b!4037354 m!4632023))

(declare-fun m!4632025 () Bool)

(assert (=> d!1196634 m!4632025))

(assert (=> d!1196634 m!4631331))

(assert (=> d!1196634 m!4630445))

(assert (=> b!4036231 d!1196634))

(assert (=> b!4036260 d!1196300))

(declare-fun d!1196636 () Bool)

(assert (=> d!1196636 (= (head!8548 lt!1435822) (h!48642 lt!1435822))))

(assert (=> b!4036260 d!1196636))

(assert (=> d!1196048 d!1196006))

(assert (=> d!1196048 d!1196030))

(assert (=> d!1196048 d!1196032))

(declare-fun d!1196638 () Bool)

(assert (=> d!1196638 (= (maxPrefixOneRule!2816 thiss!21717 (rule!9985 token!484) lt!1435831) (Some!9330 (tuple2!42305 (Token!12973 (apply!10106 (transformation!6917 (rule!9985 token!484)) (seqFromList!5134 lt!1435816)) (rule!9985 token!484) (size!32308 lt!1435816) lt!1435816) suffixResult!105)))))

(assert (=> d!1196638 true))

(declare-fun _$59!680 () Unit!62414)

(assert (=> d!1196638 (= (choose!24444 thiss!21717 rules!2999 lt!1435816 lt!1435831 suffixResult!105 (rule!9985 token!484)) _$59!680)))

(declare-fun bs!590629 () Bool)

(assert (= bs!590629 d!1196638))

(assert (=> bs!590629 m!4630285))

(assert (=> bs!590629 m!4630279))

(assert (=> bs!590629 m!4630279))

(assert (=> bs!590629 m!4630281))

(assert (=> bs!590629 m!4630193))

(assert (=> d!1196048 d!1196638))

(assert (=> d!1196048 d!1196046))

(assert (=> d!1196048 d!1196064))

(declare-fun bs!590630 () Bool)

(declare-fun d!1196640 () Bool)

(assert (= bs!590630 (and d!1196640 d!1196386)))

(declare-fun lambda!127316 () Int)

(assert (=> bs!590630 (= (= (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) (= lambda!127316 lambda!127310))))

(declare-fun bs!590631 () Bool)

(assert (= bs!590631 (and d!1196640 d!1196604)))

(assert (=> bs!590631 (= (= (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (toValue!9449 (transformation!6917 (h!48644 rules!2999)))) (= lambda!127316 lambda!127315))))

(assert (=> d!1196640 true))

(assert (=> d!1196640 (< (dynLambda!18331 order!22607 (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) (dynLambda!18332 order!22609 lambda!127316))))

(assert (=> d!1196640 (= (equivClasses!2852 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) (Forall2!1086 lambda!127316))))

(declare-fun bs!590632 () Bool)

(assert (= bs!590632 d!1196640))

(declare-fun m!4632027 () Bool)

(assert (=> bs!590632 m!4632027))

(assert (=> b!4036472 d!1196640))

(declare-fun lt!1436414 () List!43346)

(declare-fun e!2505125 () Bool)

(declare-fun b!4037360 () Bool)

(assert (=> b!4037360 (= e!2505125 (or (not (= lt!1435836 Nil!43222)) (= lt!1436414 (t!334587 lt!1435816))))))

(declare-fun b!4037359 () Bool)

(declare-fun res!1644152 () Bool)

(assert (=> b!4037359 (=> (not res!1644152) (not e!2505125))))

(assert (=> b!4037359 (= res!1644152 (= (size!32308 lt!1436414) (+ (size!32308 (t!334587 lt!1435816)) (size!32308 lt!1435836))))))

(declare-fun b!4037358 () Bool)

(declare-fun e!2505126 () List!43346)

(assert (=> b!4037358 (= e!2505126 (Cons!43222 (h!48642 (t!334587 lt!1435816)) (++!11319 (t!334587 (t!334587 lt!1435816)) lt!1435836)))))

(declare-fun b!4037357 () Bool)

(assert (=> b!4037357 (= e!2505126 lt!1435836)))

(declare-fun d!1196642 () Bool)

(assert (=> d!1196642 e!2505125))

(declare-fun res!1644151 () Bool)

(assert (=> d!1196642 (=> (not res!1644151) (not e!2505125))))

(assert (=> d!1196642 (= res!1644151 (= (content!6568 lt!1436414) (set.union (content!6568 (t!334587 lt!1435816)) (content!6568 lt!1435836))))))

(assert (=> d!1196642 (= lt!1436414 e!2505126)))

(declare-fun c!697346 () Bool)

(assert (=> d!1196642 (= c!697346 (is-Nil!43222 (t!334587 lt!1435816)))))

(assert (=> d!1196642 (= (++!11319 (t!334587 lt!1435816) lt!1435836) lt!1436414)))

(assert (= (and d!1196642 c!697346) b!4037357))

(assert (= (and d!1196642 (not c!697346)) b!4037358))

(assert (= (and d!1196642 res!1644151) b!4037359))

(assert (= (and b!4037359 res!1644152) b!4037360))

(declare-fun m!4632029 () Bool)

(assert (=> b!4037359 m!4632029))

(assert (=> b!4037359 m!4630603))

(assert (=> b!4037359 m!4630769))

(declare-fun m!4632031 () Bool)

(assert (=> b!4037358 m!4632031))

(declare-fun m!4632033 () Bool)

(assert (=> d!1196642 m!4632033))

(assert (=> d!1196642 m!4631331))

(assert (=> d!1196642 m!4630775))

(assert (=> b!4036572 d!1196642))

(declare-fun d!1196644 () Bool)

(declare-fun e!2505127 () Bool)

(assert (=> d!1196644 e!2505127))

(declare-fun res!1644154 () Bool)

(assert (=> d!1196644 (=> res!1644154 e!2505127)))

(declare-fun lt!1436418 () Option!9331)

(assert (=> d!1196644 (= res!1644154 (isEmpty!25798 lt!1436418))))

(declare-fun e!2505129 () Option!9331)

(assert (=> d!1196644 (= lt!1436418 e!2505129)))

(declare-fun c!697347 () Bool)

(declare-fun lt!1436419 () tuple2!42308)

(assert (=> d!1196644 (= c!697347 (isEmpty!25795 (_1!24288 lt!1436419)))))

(assert (=> d!1196644 (= lt!1436419 (findLongestMatch!1295 (regex!6917 (h!48644 rules!2999)) lt!1435829))))

(assert (=> d!1196644 (ruleValid!2847 thiss!21717 (h!48644 rules!2999))))

(assert (=> d!1196644 (= (maxPrefixOneRule!2816 thiss!21717 (h!48644 rules!2999) lt!1435829) lt!1436418)))

(declare-fun b!4037361 () Bool)

(declare-fun res!1644153 () Bool)

(declare-fun e!2505130 () Bool)

(assert (=> b!4037361 (=> (not res!1644153) (not e!2505130))))

(assert (=> b!4037361 (= res!1644153 (= (rule!9985 (_1!24286 (get!14182 lt!1436418))) (h!48644 rules!2999)))))

(declare-fun b!4037362 () Bool)

(assert (=> b!4037362 (= e!2505129 None!9330)))

(declare-fun b!4037363 () Bool)

(declare-fun e!2505128 () Bool)

(assert (=> b!4037363 (= e!2505128 (matchR!5775 (regex!6917 (h!48644 rules!2999)) (_1!24288 (findLongestMatchInner!1382 (regex!6917 (h!48644 rules!2999)) Nil!43222 (size!32308 Nil!43222) lt!1435829 lt!1435829 (size!32308 lt!1435829)))))))

(declare-fun b!4037364 () Bool)

(declare-fun res!1644155 () Bool)

(assert (=> b!4037364 (=> (not res!1644155) (not e!2505130))))

(assert (=> b!4037364 (= res!1644155 (< (size!32308 (_2!24286 (get!14182 lt!1436418))) (size!32308 lt!1435829)))))

(declare-fun b!4037365 () Bool)

(assert (=> b!4037365 (= e!2505129 (Some!9330 (tuple2!42305 (Token!12973 (apply!10106 (transformation!6917 (h!48644 rules!2999)) (seqFromList!5134 (_1!24288 lt!1436419))) (h!48644 rules!2999) (size!32311 (seqFromList!5134 (_1!24288 lt!1436419))) (_1!24288 lt!1436419)) (_2!24288 lt!1436419))))))

(declare-fun lt!1436416 () Unit!62414)

(assert (=> b!4037365 (= lt!1436416 (longestMatchIsAcceptedByMatchOrIsEmpty!1355 (regex!6917 (h!48644 rules!2999)) lt!1435829))))

(declare-fun res!1644159 () Bool)

(assert (=> b!4037365 (= res!1644159 (isEmpty!25795 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (h!48644 rules!2999)) Nil!43222 (size!32308 Nil!43222) lt!1435829 lt!1435829 (size!32308 lt!1435829)))))))

(assert (=> b!4037365 (=> res!1644159 e!2505128)))

(assert (=> b!4037365 e!2505128))

(declare-fun lt!1436415 () Unit!62414)

(assert (=> b!4037365 (= lt!1436415 lt!1436416)))

(declare-fun lt!1436417 () Unit!62414)

(assert (=> b!4037365 (= lt!1436417 (lemmaSemiInverse!1902 (transformation!6917 (h!48644 rules!2999)) (seqFromList!5134 (_1!24288 lt!1436419))))))

(declare-fun b!4037366 () Bool)

(declare-fun res!1644157 () Bool)

(assert (=> b!4037366 (=> (not res!1644157) (not e!2505130))))

(assert (=> b!4037366 (= res!1644157 (= (++!11319 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436418)))) (_2!24286 (get!14182 lt!1436418))) lt!1435829))))

(declare-fun b!4037367 () Bool)

(assert (=> b!4037367 (= e!2505130 (= (size!32307 (_1!24286 (get!14182 lt!1436418))) (size!32308 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436418))))))))

(declare-fun b!4037368 () Bool)

(assert (=> b!4037368 (= e!2505127 e!2505130)))

(declare-fun res!1644158 () Bool)

(assert (=> b!4037368 (=> (not res!1644158) (not e!2505130))))

(assert (=> b!4037368 (= res!1644158 (matchR!5775 (regex!6917 (h!48644 rules!2999)) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436418))))))))

(declare-fun b!4037369 () Bool)

(declare-fun res!1644156 () Bool)

(assert (=> b!4037369 (=> (not res!1644156) (not e!2505130))))

(assert (=> b!4037369 (= res!1644156 (= (value!217770 (_1!24286 (get!14182 lt!1436418))) (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436418)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436418)))))))))

(assert (= (and d!1196644 c!697347) b!4037362))

(assert (= (and d!1196644 (not c!697347)) b!4037365))

(assert (= (and b!4037365 (not res!1644159)) b!4037363))

(assert (= (and d!1196644 (not res!1644154)) b!4037368))

(assert (= (and b!4037368 res!1644158) b!4037366))

(assert (= (and b!4037366 res!1644157) b!4037364))

(assert (= (and b!4037364 res!1644155) b!4037361))

(assert (= (and b!4037361 res!1644153) b!4037369))

(assert (= (and b!4037369 res!1644156) b!4037367))

(declare-fun m!4632035 () Bool)

(assert (=> b!4037366 m!4632035))

(declare-fun m!4632037 () Bool)

(assert (=> b!4037366 m!4632037))

(assert (=> b!4037366 m!4632037))

(declare-fun m!4632039 () Bool)

(assert (=> b!4037366 m!4632039))

(assert (=> b!4037366 m!4632039))

(declare-fun m!4632041 () Bool)

(assert (=> b!4037366 m!4632041))

(assert (=> b!4037363 m!4630521))

(assert (=> b!4037363 m!4630679))

(assert (=> b!4037363 m!4630521))

(assert (=> b!4037363 m!4630679))

(declare-fun m!4632043 () Bool)

(assert (=> b!4037363 m!4632043))

(declare-fun m!4632045 () Bool)

(assert (=> b!4037363 m!4632045))

(assert (=> b!4037361 m!4632035))

(declare-fun m!4632047 () Bool)

(assert (=> b!4037365 m!4632047))

(declare-fun m!4632049 () Bool)

(assert (=> b!4037365 m!4632049))

(declare-fun m!4632051 () Bool)

(assert (=> b!4037365 m!4632051))

(declare-fun m!4632053 () Bool)

(assert (=> b!4037365 m!4632053))

(assert (=> b!4037365 m!4630521))

(assert (=> b!4037365 m!4630679))

(assert (=> b!4037365 m!4632043))

(assert (=> b!4037365 m!4632049))

(declare-fun m!4632055 () Bool)

(assert (=> b!4037365 m!4632055))

(assert (=> b!4037365 m!4630521))

(assert (=> b!4037365 m!4630679))

(assert (=> b!4037365 m!4632049))

(declare-fun m!4632057 () Bool)

(assert (=> b!4037365 m!4632057))

(assert (=> b!4037365 m!4632049))

(assert (=> b!4037368 m!4632035))

(assert (=> b!4037368 m!4632037))

(assert (=> b!4037368 m!4632037))

(assert (=> b!4037368 m!4632039))

(assert (=> b!4037368 m!4632039))

(declare-fun m!4632059 () Bool)

(assert (=> b!4037368 m!4632059))

(assert (=> b!4037369 m!4632035))

(declare-fun m!4632061 () Bool)

(assert (=> b!4037369 m!4632061))

(assert (=> b!4037369 m!4632061))

(declare-fun m!4632063 () Bool)

(assert (=> b!4037369 m!4632063))

(declare-fun m!4632065 () Bool)

(assert (=> d!1196644 m!4632065))

(declare-fun m!4632067 () Bool)

(assert (=> d!1196644 m!4632067))

(declare-fun m!4632069 () Bool)

(assert (=> d!1196644 m!4632069))

(assert (=> d!1196644 m!4631345))

(assert (=> b!4037364 m!4632035))

(declare-fun m!4632071 () Bool)

(assert (=> b!4037364 m!4632071))

(assert (=> b!4037364 m!4630679))

(assert (=> b!4037367 m!4632035))

(declare-fun m!4632073 () Bool)

(assert (=> b!4037367 m!4632073))

(assert (=> bm!287131 d!1196644))

(declare-fun d!1196646 () Bool)

(declare-fun c!697350 () Bool)

(assert (=> d!1196646 (= c!697350 (is-Node!13128 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811)))))))))

(declare-fun e!2505135 () Bool)

(assert (=> d!1196646 (= (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811)))))) e!2505135)))

(declare-fun b!4037376 () Bool)

(declare-fun inv!57761 (Conc!13128) Bool)

(assert (=> b!4037376 (= e!2505135 (inv!57761 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811)))))))))

(declare-fun b!4037377 () Bool)

(declare-fun e!2505136 () Bool)

(assert (=> b!4037377 (= e!2505135 e!2505136)))

(declare-fun res!1644162 () Bool)

(assert (=> b!4037377 (= res!1644162 (not (is-Leaf!20294 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811))))))))))

(assert (=> b!4037377 (=> res!1644162 e!2505136)))

(declare-fun b!4037378 () Bool)

(declare-fun inv!57762 (Conc!13128) Bool)

(assert (=> b!4037378 (= e!2505136 (inv!57762 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811)))))))))

(assert (= (and d!1196646 c!697350) b!4037376))

(assert (= (and d!1196646 (not c!697350)) b!4037377))

(assert (= (and b!4037377 (not res!1644162)) b!4037378))

(declare-fun m!4632075 () Bool)

(assert (=> b!4037376 m!4632075))

(declare-fun m!4632077 () Bool)

(assert (=> b!4037378 m!4632077))

(assert (=> b!4036471 d!1196646))

(assert (=> b!4036344 d!1196348))

(assert (=> d!1196016 d!1196014))

(declare-fun d!1196648 () Bool)

(assert (=> d!1196648 (ruleValid!2847 thiss!21717 (rule!9985 token!484))))

(assert (=> d!1196648 true))

(declare-fun _$65!1491 () Unit!62414)

(assert (=> d!1196648 (= (choose!24441 thiss!21717 (rule!9985 token!484) rules!2999) _$65!1491)))

(declare-fun bs!590633 () Bool)

(assert (= bs!590633 d!1196648))

(assert (=> bs!590633 m!4630213))

(assert (=> d!1196016 d!1196648))

(declare-fun d!1196650 () Bool)

(declare-fun lt!1436420 () Bool)

(assert (=> d!1196650 (= lt!1436420 (set.member (rule!9985 token!484) (content!6570 rules!2999)))))

(declare-fun e!2505138 () Bool)

(assert (=> d!1196650 (= lt!1436420 e!2505138)))

(declare-fun res!1644163 () Bool)

(assert (=> d!1196650 (=> (not res!1644163) (not e!2505138))))

(assert (=> d!1196650 (= res!1644163 (is-Cons!43224 rules!2999))))

(assert (=> d!1196650 (= (contains!8583 rules!2999 (rule!9985 token!484)) lt!1436420)))

(declare-fun b!4037379 () Bool)

(declare-fun e!2505137 () Bool)

(assert (=> b!4037379 (= e!2505138 e!2505137)))

(declare-fun res!1644164 () Bool)

(assert (=> b!4037379 (=> res!1644164 e!2505137)))

(assert (=> b!4037379 (= res!1644164 (= (h!48644 rules!2999) (rule!9985 token!484)))))

(declare-fun b!4037380 () Bool)

(assert (=> b!4037380 (= e!2505137 (contains!8583 (t!334589 rules!2999) (rule!9985 token!484)))))

(assert (= (and d!1196650 res!1644163) b!4037379))

(assert (= (and b!4037379 (not res!1644164)) b!4037380))

(assert (=> d!1196650 m!4630805))

(declare-fun m!4632079 () Bool)

(assert (=> d!1196650 m!4632079))

(declare-fun m!4632081 () Bool)

(assert (=> b!4037380 m!4632081))

(assert (=> d!1196016 d!1196650))

(declare-fun d!1196652 () Bool)

(declare-fun lt!1436421 () Int)

(assert (=> d!1196652 (>= lt!1436421 0)))

(declare-fun e!2505139 () Int)

(assert (=> d!1196652 (= lt!1436421 e!2505139)))

(declare-fun c!697351 () Bool)

(assert (=> d!1196652 (= c!697351 (is-Nil!43222 lt!1436075))))

(assert (=> d!1196652 (= (size!32308 lt!1436075) lt!1436421)))

(declare-fun b!4037381 () Bool)

(assert (=> b!4037381 (= e!2505139 0)))

(declare-fun b!4037382 () Bool)

(assert (=> b!4037382 (= e!2505139 (+ 1 (size!32308 (t!334587 lt!1436075))))))

(assert (= (and d!1196652 c!697351) b!4037381))

(assert (= (and d!1196652 (not c!697351)) b!4037382))

(declare-fun m!4632083 () Bool)

(assert (=> b!4037382 m!4632083))

(assert (=> b!4036494 d!1196652))

(declare-fun d!1196654 () Bool)

(declare-fun lt!1436422 () Int)

(assert (=> d!1196654 (>= lt!1436422 0)))

(declare-fun e!2505140 () Int)

(assert (=> d!1196654 (= lt!1436422 e!2505140)))

(declare-fun c!697352 () Bool)

(assert (=> d!1196654 (= c!697352 (is-Nil!43222 lt!1435803))))

(assert (=> d!1196654 (= (size!32308 lt!1435803) lt!1436422)))

(declare-fun b!4037383 () Bool)

(assert (=> b!4037383 (= e!2505140 0)))

(declare-fun b!4037384 () Bool)

(assert (=> b!4037384 (= e!2505140 (+ 1 (size!32308 (t!334587 lt!1435803))))))

(assert (= (and d!1196654 c!697352) b!4037383))

(assert (= (and d!1196654 (not c!697352)) b!4037384))

(assert (=> b!4037384 m!4631817))

(assert (=> b!4036494 d!1196654))

(declare-fun d!1196656 () Bool)

(declare-fun lt!1436423 () Int)

(assert (=> d!1196656 (>= lt!1436423 0)))

(declare-fun e!2505141 () Int)

(assert (=> d!1196656 (= lt!1436423 e!2505141)))

(declare-fun c!697353 () Bool)

(assert (=> d!1196656 (= c!697353 (is-Nil!43222 (_2!24286 (v!39726 lt!1435811))))))

(assert (=> d!1196656 (= (size!32308 (_2!24286 (v!39726 lt!1435811))) lt!1436423)))

(declare-fun b!4037385 () Bool)

(assert (=> b!4037385 (= e!2505141 0)))

(declare-fun b!4037386 () Bool)

(assert (=> b!4037386 (= e!2505141 (+ 1 (size!32308 (t!334587 (_2!24286 (v!39726 lt!1435811))))))))

(assert (= (and d!1196656 c!697353) b!4037385))

(assert (= (and d!1196656 (not c!697353)) b!4037386))

(declare-fun m!4632085 () Bool)

(assert (=> b!4037386 m!4632085))

(assert (=> b!4036494 d!1196656))

(declare-fun d!1196658 () Bool)

(declare-fun lt!1436424 () Int)

(assert (=> d!1196658 (>= lt!1436424 0)))

(declare-fun e!2505142 () Int)

(assert (=> d!1196658 (= lt!1436424 e!2505142)))

(declare-fun c!697354 () Bool)

(assert (=> d!1196658 (= c!697354 (is-Nil!43222 lt!1436056))))

(assert (=> d!1196658 (= (size!32308 lt!1436056) lt!1436424)))

(declare-fun b!4037387 () Bool)

(assert (=> b!4037387 (= e!2505142 0)))

(declare-fun b!4037388 () Bool)

(assert (=> b!4037388 (= e!2505142 (+ 1 (size!32308 (t!334587 lt!1436056))))))

(assert (= (and d!1196658 c!697354) b!4037387))

(assert (= (and d!1196658 (not c!697354)) b!4037388))

(declare-fun m!4632087 () Bool)

(assert (=> b!4037388 m!4632087))

(assert (=> b!4036463 d!1196658))

(declare-fun d!1196660 () Bool)

(declare-fun lt!1436425 () Int)

(assert (=> d!1196660 (>= lt!1436425 0)))

(declare-fun e!2505143 () Int)

(assert (=> d!1196660 (= lt!1436425 e!2505143)))

(declare-fun c!697355 () Bool)

(assert (=> d!1196660 (= c!697355 (is-Nil!43222 lt!1435819))))

(assert (=> d!1196660 (= (size!32308 lt!1435819) lt!1436425)))

(declare-fun b!4037389 () Bool)

(assert (=> b!4037389 (= e!2505143 0)))

(declare-fun b!4037390 () Bool)

(assert (=> b!4037390 (= e!2505143 (+ 1 (size!32308 (t!334587 lt!1435819))))))

(assert (= (and d!1196660 c!697355) b!4037389))

(assert (= (and d!1196660 (not c!697355)) b!4037390))

(assert (=> b!4037390 m!4631827))

(assert (=> b!4036463 d!1196660))

(assert (=> b!4036463 d!1196018))

(declare-fun b!4037391 () Bool)

(declare-fun e!2505144 () Bool)

(assert (=> b!4037391 (= e!2505144 (inv!15 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 lt!1435816))))))

(declare-fun d!1196662 () Bool)

(declare-fun c!697356 () Bool)

(assert (=> d!1196662 (= c!697356 (is-IntegerValue!21441 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 lt!1435816))))))

(declare-fun e!2505145 () Bool)

(assert (=> d!1196662 (= (inv!21 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 lt!1435816))) e!2505145)))

(declare-fun b!4037392 () Bool)

(declare-fun res!1644165 () Bool)

(assert (=> b!4037392 (=> res!1644165 e!2505144)))

(assert (=> b!4037392 (= res!1644165 (not (is-IntegerValue!21443 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 lt!1435816)))))))

(declare-fun e!2505146 () Bool)

(assert (=> b!4037392 (= e!2505146 e!2505144)))

(declare-fun b!4037393 () Bool)

(assert (=> b!4037393 (= e!2505145 e!2505146)))

(declare-fun c!697357 () Bool)

(assert (=> b!4037393 (= c!697357 (is-IntegerValue!21442 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 lt!1435816))))))

(declare-fun b!4037394 () Bool)

(assert (=> b!4037394 (= e!2505145 (inv!16 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 lt!1435816))))))

(declare-fun b!4037395 () Bool)

(assert (=> b!4037395 (= e!2505146 (inv!17 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 lt!1435816))))))

(assert (= (and d!1196662 c!697356) b!4037394))

(assert (= (and d!1196662 (not c!697356)) b!4037393))

(assert (= (and b!4037393 c!697357) b!4037395))

(assert (= (and b!4037393 (not c!697357)) b!4037392))

(assert (= (and b!4037392 (not res!1644165)) b!4037391))

(declare-fun m!4632089 () Bool)

(assert (=> b!4037391 m!4632089))

(declare-fun m!4632091 () Bool)

(assert (=> b!4037394 m!4632091))

(declare-fun m!4632093 () Bool)

(assert (=> b!4037395 m!4632093))

(assert (=> tb!242485 d!1196662))

(declare-fun d!1196664 () Bool)

(declare-fun lt!1436426 () Int)

(assert (=> d!1196664 (>= lt!1436426 0)))

(declare-fun e!2505147 () Int)

(assert (=> d!1196664 (= lt!1436426 e!2505147)))

(declare-fun c!697358 () Bool)

(assert (=> d!1196664 (= c!697358 (is-Nil!43222 lt!1436073))))

(assert (=> d!1196664 (= (size!32308 lt!1436073) lt!1436426)))

(declare-fun b!4037396 () Bool)

(assert (=> b!4037396 (= e!2505147 0)))

(declare-fun b!4037397 () Bool)

(assert (=> b!4037397 (= e!2505147 (+ 1 (size!32308 (t!334587 lt!1436073))))))

(assert (= (and d!1196664 c!697358) b!4037396))

(assert (= (and d!1196664 (not c!697358)) b!4037397))

(declare-fun m!4632095 () Bool)

(assert (=> b!4037397 m!4632095))

(assert (=> b!4036490 d!1196664))

(assert (=> b!4036490 d!1196066))

(assert (=> b!4036490 d!1196018))

(declare-fun d!1196666 () Bool)

(declare-fun e!2505149 () Bool)

(assert (=> d!1196666 e!2505149))

(declare-fun res!1644169 () Bool)

(assert (=> d!1196666 (=> res!1644169 e!2505149)))

(declare-fun lt!1436427 () Bool)

(assert (=> d!1196666 (= res!1644169 (not lt!1436427))))

(declare-fun e!2505150 () Bool)

(assert (=> d!1196666 (= lt!1436427 e!2505150)))

(declare-fun res!1644167 () Bool)

(assert (=> d!1196666 (=> res!1644167 e!2505150)))

(assert (=> d!1196666 (= res!1644167 (is-Nil!43222 (tail!6280 lt!1435816)))))

(assert (=> d!1196666 (= (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435806)) lt!1436427)))

(declare-fun b!4037398 () Bool)

(declare-fun e!2505148 () Bool)

(assert (=> b!4037398 (= e!2505150 e!2505148)))

(declare-fun res!1644168 () Bool)

(assert (=> b!4037398 (=> (not res!1644168) (not e!2505148))))

(assert (=> b!4037398 (= res!1644168 (not (is-Nil!43222 (tail!6280 lt!1435806))))))

(declare-fun b!4037400 () Bool)

(assert (=> b!4037400 (= e!2505148 (isPrefix!4004 (tail!6280 (tail!6280 lt!1435816)) (tail!6280 (tail!6280 lt!1435806))))))

(declare-fun b!4037399 () Bool)

(declare-fun res!1644166 () Bool)

(assert (=> b!4037399 (=> (not res!1644166) (not e!2505148))))

(assert (=> b!4037399 (= res!1644166 (= (head!8548 (tail!6280 lt!1435816)) (head!8548 (tail!6280 lt!1435806))))))

(declare-fun b!4037401 () Bool)

(assert (=> b!4037401 (= e!2505149 (>= (size!32308 (tail!6280 lt!1435806)) (size!32308 (tail!6280 lt!1435816))))))

(assert (= (and d!1196666 (not res!1644167)) b!4037398))

(assert (= (and b!4037398 res!1644168) b!4037399))

(assert (= (and b!4037399 res!1644166) b!4037400))

(assert (= (and d!1196666 (not res!1644169)) b!4037401))

(assert (=> b!4037400 m!4630463))

(assert (=> b!4037400 m!4631249))

(assert (=> b!4037400 m!4630737))

(declare-fun m!4632097 () Bool)

(assert (=> b!4037400 m!4632097))

(assert (=> b!4037400 m!4631249))

(assert (=> b!4037400 m!4632097))

(declare-fun m!4632099 () Bool)

(assert (=> b!4037400 m!4632099))

(assert (=> b!4037399 m!4630463))

(assert (=> b!4037399 m!4631255))

(assert (=> b!4037399 m!4630737))

(declare-fun m!4632101 () Bool)

(assert (=> b!4037399 m!4632101))

(assert (=> b!4037401 m!4630737))

(declare-fun m!4632103 () Bool)

(assert (=> b!4037401 m!4632103))

(assert (=> b!4037401 m!4630463))

(assert (=> b!4037401 m!4631261))

(assert (=> b!4036455 d!1196666))

(assert (=> b!4036455 d!1196274))

(declare-fun d!1196668 () Bool)

(assert (=> d!1196668 (= (tail!6280 lt!1435806) (t!334587 lt!1435806))))

(assert (=> b!4036455 d!1196668))

(assert (=> d!1196012 d!1196550))

(declare-fun d!1196670 () Bool)

(assert (=> d!1196670 (= (isEmpty!25795 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))) (is-Nil!43222 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))

(assert (=> b!4036348 d!1196670))

(declare-fun bs!590634 () Bool)

(declare-fun d!1196672 () Bool)

(assert (= bs!590634 (and d!1196672 d!1196508)))

(declare-fun lambda!127319 () Int)

(assert (=> bs!590634 (= (and (= (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) (= (toValue!9449 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))) (= lambda!127319 lambda!127313))))

(declare-fun bs!590635 () Bool)

(assert (= bs!590635 (and d!1196672 d!1196550)))

(assert (=> bs!590635 (= lambda!127319 lambda!127314)))

(declare-fun b!4037406 () Bool)

(declare-fun e!2505153 () Bool)

(assert (=> b!4037406 (= e!2505153 true)))

(assert (=> d!1196672 e!2505153))

(assert (= d!1196672 b!4037406))

(assert (=> b!4037406 (< (dynLambda!18331 order!22607 (toValue!9449 (transformation!6917 (rule!9985 token!484)))) (dynLambda!18334 order!22613 lambda!127319))))

(assert (=> b!4037406 (< (dynLambda!18333 order!22611 (toChars!9308 (transformation!6917 (rule!9985 token!484)))) (dynLambda!18334 order!22613 lambda!127319))))

(assert (=> d!1196672 (= (list!16087 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 (_1!24288 lt!1435998))))) (list!16087 (seqFromList!5134 (_1!24288 lt!1435998))))))

(declare-fun lt!1436430 () Unit!62414)

(declare-fun ForallOf!821 (Int BalanceConc!25850) Unit!62414)

(assert (=> d!1196672 (= lt!1436430 (ForallOf!821 lambda!127319 (seqFromList!5134 (_1!24288 lt!1435998))))))

(assert (=> d!1196672 (= (lemmaSemiInverse!1902 (transformation!6917 (rule!9985 token!484)) (seqFromList!5134 (_1!24288 lt!1435998))) lt!1436430)))

(declare-fun b_lambda!117809 () Bool)

(assert (=> (not b_lambda!117809) (not d!1196672)))

(declare-fun t!334675 () Bool)

(declare-fun tb!242559 () Bool)

(assert (=> (and b!4036083 (= (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) t!334675) tb!242559))

(declare-fun b!4037407 () Bool)

(declare-fun e!2505154 () Bool)

(declare-fun tp!1226228 () Bool)

(assert (=> b!4037407 (= e!2505154 (and (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 (_1!24288 lt!1435998)))))) tp!1226228))))

(declare-fun result!294028 () Bool)

(assert (=> tb!242559 (= result!294028 (and (inv!57758 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 (_1!24288 lt!1435998))))) e!2505154))))

(assert (= tb!242559 b!4037407))

(declare-fun m!4632105 () Bool)

(assert (=> b!4037407 m!4632105))

(declare-fun m!4632107 () Bool)

(assert (=> tb!242559 m!4632107))

(assert (=> d!1196672 t!334675))

(declare-fun b_and!310265 () Bool)

(assert (= b_and!310241 (and (=> t!334675 result!294028) b_and!310265)))

(declare-fun t!334677 () Bool)

(declare-fun tb!242561 () Bool)

(assert (=> (and b!4036114 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) t!334677) tb!242561))

(declare-fun result!294030 () Bool)

(assert (= result!294030 result!294028))

(assert (=> d!1196672 t!334677))

(declare-fun b_and!310267 () Bool)

(assert (= b_and!310243 (and (=> t!334677 result!294030) b_and!310267)))

(declare-fun tb!242563 () Bool)

(declare-fun t!334679 () Bool)

(assert (=> (and b!4036630 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) t!334679) tb!242563))

(declare-fun result!294032 () Bool)

(assert (= result!294032 result!294028))

(assert (=> d!1196672 t!334679))

(declare-fun b_and!310269 () Bool)

(assert (= b_and!310245 (and (=> t!334679 result!294032) b_and!310269)))

(declare-fun b_lambda!117811 () Bool)

(assert (=> (not b_lambda!117811) (not d!1196672)))

(declare-fun t!334681 () Bool)

(declare-fun tb!242565 () Bool)

(assert (=> (and b!4036083 (= (toValue!9449 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) t!334681) tb!242565))

(declare-fun result!294034 () Bool)

(assert (=> tb!242565 (= result!294034 (inv!21 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 (_1!24288 lt!1435998)))))))

(declare-fun m!4632109 () Bool)

(assert (=> tb!242565 m!4632109))

(assert (=> d!1196672 t!334681))

(declare-fun b_and!310271 () Bool)

(assert (= b_and!310223 (and (=> t!334681 result!294034) b_and!310271)))

(declare-fun tb!242567 () Bool)

(declare-fun t!334683 () Bool)

(assert (=> (and b!4036114 (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) t!334683) tb!242567))

(declare-fun result!294036 () Bool)

(assert (= result!294036 result!294034))

(assert (=> d!1196672 t!334683))

(declare-fun b_and!310273 () Bool)

(assert (= b_and!310225 (and (=> t!334683 result!294036) b_and!310273)))

(declare-fun tb!242569 () Bool)

(declare-fun t!334685 () Bool)

(assert (=> (and b!4036630 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) t!334685) tb!242569))

(declare-fun result!294038 () Bool)

(assert (= result!294038 result!294034))

(assert (=> d!1196672 t!334685))

(declare-fun b_and!310275 () Bool)

(assert (= b_and!310227 (and (=> t!334685 result!294038) b_and!310275)))

(declare-fun m!4632111 () Bool)

(assert (=> d!1196672 m!4632111))

(declare-fun m!4632113 () Bool)

(assert (=> d!1196672 m!4632113))

(declare-fun m!4632115 () Bool)

(assert (=> d!1196672 m!4632115))

(assert (=> d!1196672 m!4632111))

(assert (=> d!1196672 m!4630531))

(declare-fun m!4632117 () Bool)

(assert (=> d!1196672 m!4632117))

(assert (=> d!1196672 m!4630531))

(declare-fun m!4632119 () Bool)

(assert (=> d!1196672 m!4632119))

(assert (=> d!1196672 m!4630531))

(assert (=> d!1196672 m!4632115))

(assert (=> b!4036348 d!1196672))

(assert (=> b!4036348 d!1196434))

(declare-fun d!1196674 () Bool)

(assert (=> d!1196674 (= (seqFromList!5134 (_1!24288 lt!1435998)) (fromListB!2339 (_1!24288 lt!1435998)))))

(declare-fun bs!590636 () Bool)

(assert (= bs!590636 d!1196674))

(declare-fun m!4632121 () Bool)

(assert (=> bs!590636 m!4632121))

(assert (=> b!4036348 d!1196674))

(declare-fun d!1196676 () Bool)

(assert (=> d!1196676 (= (apply!10106 (transformation!6917 (rule!9985 token!484)) (seqFromList!5134 (_1!24288 lt!1435998))) (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 token!484))) (seqFromList!5134 (_1!24288 lt!1435998))))))

(declare-fun b_lambda!117813 () Bool)

(assert (=> (not b_lambda!117813) (not d!1196676)))

(assert (=> d!1196676 t!334681))

(declare-fun b_and!310277 () Bool)

(assert (= b_and!310271 (and (=> t!334681 result!294034) b_and!310277)))

(assert (=> d!1196676 t!334683))

(declare-fun b_and!310279 () Bool)

(assert (= b_and!310273 (and (=> t!334683 result!294036) b_and!310279)))

(assert (=> d!1196676 t!334685))

(declare-fun b_and!310281 () Bool)

(assert (= b_and!310275 (and (=> t!334685 result!294038) b_and!310281)))

(assert (=> d!1196676 m!4630531))

(assert (=> d!1196676 m!4632115))

(assert (=> b!4036348 d!1196676))

(declare-fun d!1196678 () Bool)

(declare-fun lt!1436433 () Int)

(assert (=> d!1196678 (= lt!1436433 (size!32308 (list!16087 (seqFromList!5134 (_1!24288 lt!1435998)))))))

(declare-fun size!32314 (Conc!13128) Int)

(assert (=> d!1196678 (= lt!1436433 (size!32314 (c!697105 (seqFromList!5134 (_1!24288 lt!1435998)))))))

(assert (=> d!1196678 (= (size!32311 (seqFromList!5134 (_1!24288 lt!1435998))) lt!1436433)))

(declare-fun bs!590637 () Bool)

(assert (= bs!590637 d!1196678))

(assert (=> bs!590637 m!4630531))

(assert (=> bs!590637 m!4632117))

(assert (=> bs!590637 m!4632117))

(declare-fun m!4632123 () Bool)

(assert (=> bs!590637 m!4632123))

(declare-fun m!4632125 () Bool)

(assert (=> bs!590637 m!4632125))

(assert (=> b!4036348 d!1196678))

(declare-fun d!1196680 () Bool)

(declare-fun e!2505158 () Bool)

(assert (=> d!1196680 e!2505158))

(declare-fun res!1644172 () Bool)

(assert (=> d!1196680 (=> res!1644172 e!2505158)))

(assert (=> d!1196680 (= res!1644172 (isEmpty!25795 (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))

(declare-fun lt!1436436 () Unit!62414)

(declare-fun choose!24458 (Regex!11822 List!43346) Unit!62414)

(assert (=> d!1196680 (= lt!1436436 (choose!24458 (regex!6917 (rule!9985 token!484)) lt!1435831))))

(assert (=> d!1196680 (validRegex!5345 (regex!6917 (rule!9985 token!484)))))

(assert (=> d!1196680 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1355 (regex!6917 (rule!9985 token!484)) lt!1435831) lt!1436436)))

(declare-fun b!4037410 () Bool)

(assert (=> b!4037410 (= e!2505158 (matchR!5775 (regex!6917 (rule!9985 token!484)) (_1!24288 (findLongestMatchInner!1382 (regex!6917 (rule!9985 token!484)) Nil!43222 (size!32308 Nil!43222) lt!1435831 lt!1435831 (size!32308 lt!1435831)))))))

(assert (= (and d!1196680 (not res!1644172)) b!4037410))

(assert (=> d!1196680 m!4630535))

(assert (=> d!1196680 m!4630451))

(assert (=> d!1196680 m!4630523))

(assert (=> d!1196680 m!4630521))

(declare-fun m!4632127 () Bool)

(assert (=> d!1196680 m!4632127))

(assert (=> d!1196680 m!4630521))

(assert (=> d!1196680 m!4630523))

(assert (=> d!1196680 m!4630525))

(assert (=> b!4037410 m!4630521))

(assert (=> b!4037410 m!4630523))

(assert (=> b!4037410 m!4630521))

(assert (=> b!4037410 m!4630523))

(assert (=> b!4037410 m!4630525))

(assert (=> b!4037410 m!4630527))

(assert (=> b!4036348 d!1196680))

(assert (=> b!4036348 d!1196496))

(assert (=> b!4036348 d!1196360))

(declare-fun d!1196682 () Bool)

(declare-fun c!697360 () Bool)

(assert (=> d!1196682 (= c!697360 (is-Node!13128 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))))))

(declare-fun e!2505159 () Bool)

(assert (=> d!1196682 (= (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))) e!2505159)))

(declare-fun b!4037411 () Bool)

(assert (=> b!4037411 (= e!2505159 (inv!57761 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))))))

(declare-fun b!4037412 () Bool)

(declare-fun e!2505160 () Bool)

(assert (=> b!4037412 (= e!2505159 e!2505160)))

(declare-fun res!1644173 () Bool)

(assert (=> b!4037412 (= res!1644173 (not (is-Leaf!20294 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484))))))))

(assert (=> b!4037412 (=> res!1644173 e!2505160)))

(declare-fun b!4037413 () Bool)

(assert (=> b!4037413 (= e!2505160 (inv!57762 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))))))

(assert (= (and d!1196682 c!697360) b!4037411))

(assert (= (and d!1196682 (not c!697360)) b!4037412))

(assert (= (and b!4037412 (not res!1644173)) b!4037413))

(declare-fun m!4632129 () Bool)

(assert (=> b!4037411 m!4632129))

(declare-fun m!4632131 () Bool)

(assert (=> b!4037413 m!4632131))

(assert (=> b!4036221 d!1196682))

(declare-fun b!4037414 () Bool)

(declare-fun e!2505164 () Bool)

(declare-fun e!2505166 () Bool)

(assert (=> b!4037414 (= e!2505164 e!2505166)))

(declare-fun res!1644175 () Bool)

(assert (=> b!4037414 (=> (not res!1644175) (not e!2505166))))

(declare-fun lt!1436437 () Bool)

(assert (=> b!4037414 (= res!1644175 (not lt!1436437))))

(declare-fun b!4037415 () Bool)

(declare-fun e!2505161 () Bool)

(declare-fun e!2505165 () Bool)

(assert (=> b!4037415 (= e!2505161 e!2505165)))

(declare-fun c!697362 () Bool)

(assert (=> b!4037415 (= c!697362 (is-EmptyLang!11822 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067))))))))

(declare-fun b!4037416 () Bool)

(declare-fun e!2505162 () Bool)

(assert (=> b!4037416 (= e!2505162 (not (= (head!8548 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))) (c!697106 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067))))))))))

(declare-fun b!4037417 () Bool)

(declare-fun res!1644181 () Bool)

(assert (=> b!4037417 (=> res!1644181 e!2505164)))

(assert (=> b!4037417 (= res!1644181 (not (is-ElementMatch!11822 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))))))

(assert (=> b!4037417 (= e!2505165 e!2505164)))

(declare-fun d!1196684 () Bool)

(assert (=> d!1196684 e!2505161))

(declare-fun c!697363 () Bool)

(assert (=> d!1196684 (= c!697363 (is-EmptyExpr!11822 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067))))))))

(declare-fun e!2505163 () Bool)

(assert (=> d!1196684 (= lt!1436437 e!2505163)))

(declare-fun c!697361 () Bool)

(assert (=> d!1196684 (= c!697361 (isEmpty!25795 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))))))

(assert (=> d!1196684 (validRegex!5345 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))))

(assert (=> d!1196684 (= (matchR!5775 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))) (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))) lt!1436437)))

(declare-fun b!4037418 () Bool)

(assert (=> b!4037418 (= e!2505166 e!2505162)))

(declare-fun res!1644180 () Bool)

(assert (=> b!4037418 (=> res!1644180 e!2505162)))

(declare-fun call!287209 () Bool)

(assert (=> b!4037418 (= res!1644180 call!287209)))

(declare-fun b!4037419 () Bool)

(assert (=> b!4037419 (= e!2505163 (matchR!5775 (derivativeStep!3551 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))) (head!8548 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067)))))) (tail!6280 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067)))))))))

(declare-fun b!4037420 () Bool)

(declare-fun res!1644174 () Bool)

(declare-fun e!2505167 () Bool)

(assert (=> b!4037420 (=> (not res!1644174) (not e!2505167))))

(assert (=> b!4037420 (= res!1644174 (not call!287209))))

(declare-fun bm!287204 () Bool)

(assert (=> bm!287204 (= call!287209 (isEmpty!25795 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))))))

(declare-fun b!4037421 () Bool)

(assert (=> b!4037421 (= e!2505167 (= (head!8548 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))) (c!697106 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))))))

(declare-fun b!4037422 () Bool)

(declare-fun res!1644177 () Bool)

(assert (=> b!4037422 (=> res!1644177 e!2505162)))

(assert (=> b!4037422 (= res!1644177 (not (isEmpty!25795 (tail!6280 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067))))))))))

(declare-fun b!4037423 () Bool)

(declare-fun res!1644178 () Bool)

(assert (=> b!4037423 (=> res!1644178 e!2505164)))

(assert (=> b!4037423 (= res!1644178 e!2505167)))

(declare-fun res!1644179 () Bool)

(assert (=> b!4037423 (=> (not res!1644179) (not e!2505167))))

(assert (=> b!4037423 (= res!1644179 lt!1436437)))

(declare-fun b!4037424 () Bool)

(assert (=> b!4037424 (= e!2505163 (nullable!4145 (regex!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067))))))))

(declare-fun b!4037425 () Bool)

(assert (=> b!4037425 (= e!2505165 (not lt!1436437))))

(declare-fun b!4037426 () Bool)

(assert (=> b!4037426 (= e!2505161 (= lt!1436437 call!287209))))

(declare-fun b!4037427 () Bool)

(declare-fun res!1644176 () Bool)

(assert (=> b!4037427 (=> (not res!1644176) (not e!2505167))))

(assert (=> b!4037427 (= res!1644176 (isEmpty!25795 (tail!6280 (list!16087 (charsOf!4733 (_1!24286 (get!14182 lt!1436067)))))))))

(assert (= (and d!1196684 c!697361) b!4037424))

(assert (= (and d!1196684 (not c!697361)) b!4037419))

(assert (= (and d!1196684 c!697363) b!4037426))

(assert (= (and d!1196684 (not c!697363)) b!4037415))

(assert (= (and b!4037415 c!697362) b!4037425))

(assert (= (and b!4037415 (not c!697362)) b!4037417))

(assert (= (and b!4037417 (not res!1644181)) b!4037423))

(assert (= (and b!4037423 res!1644179) b!4037420))

(assert (= (and b!4037420 res!1644174) b!4037427))

(assert (= (and b!4037427 res!1644176) b!4037421))

(assert (= (and b!4037423 (not res!1644178)) b!4037414))

(assert (= (and b!4037414 res!1644175) b!4037418))

(assert (= (and b!4037418 (not res!1644180)) b!4037422))

(assert (= (and b!4037422 (not res!1644177)) b!4037416))

(assert (= (or b!4037426 b!4037418 b!4037420) bm!287204))

(assert (=> d!1196684 m!4630815))

(declare-fun m!4632133 () Bool)

(assert (=> d!1196684 m!4632133))

(declare-fun m!4632135 () Bool)

(assert (=> d!1196684 m!4632135))

(assert (=> b!4037419 m!4630815))

(declare-fun m!4632137 () Bool)

(assert (=> b!4037419 m!4632137))

(assert (=> b!4037419 m!4632137))

(declare-fun m!4632139 () Bool)

(assert (=> b!4037419 m!4632139))

(assert (=> b!4037419 m!4630815))

(declare-fun m!4632141 () Bool)

(assert (=> b!4037419 m!4632141))

(assert (=> b!4037419 m!4632139))

(assert (=> b!4037419 m!4632141))

(declare-fun m!4632143 () Bool)

(assert (=> b!4037419 m!4632143))

(assert (=> b!4037427 m!4630815))

(assert (=> b!4037427 m!4632141))

(assert (=> b!4037427 m!4632141))

(declare-fun m!4632145 () Bool)

(assert (=> b!4037427 m!4632145))

(assert (=> b!4037421 m!4630815))

(assert (=> b!4037421 m!4632137))

(declare-fun m!4632147 () Bool)

(assert (=> b!4037424 m!4632147))

(assert (=> b!4037422 m!4630815))

(assert (=> b!4037422 m!4632141))

(assert (=> b!4037422 m!4632141))

(assert (=> b!4037422 m!4632145))

(assert (=> b!4037416 m!4630815))

(assert (=> b!4037416 m!4632137))

(assert (=> bm!287204 m!4630815))

(assert (=> bm!287204 m!4632133))

(assert (=> b!4036480 d!1196684))

(assert (=> b!4036480 d!1196284))

(assert (=> b!4036480 d!1196364))

(assert (=> b!4036480 d!1196366))

(assert (=> b!4036450 d!1196300))

(assert (=> b!4036450 d!1196278))

(assert (=> b!4036580 d!1196066))

(assert (=> b!4036580 d!1196064))

(declare-fun e!2505168 () Bool)

(declare-fun b!4037431 () Bool)

(declare-fun lt!1436438 () List!43346)

(assert (=> b!4037431 (= e!2505168 (or (not (= lt!1436082 Nil!43222)) (= lt!1436438 lt!1435816)))))

(declare-fun b!4037430 () Bool)

(declare-fun res!1644183 () Bool)

(assert (=> b!4037430 (=> (not res!1644183) (not e!2505168))))

(assert (=> b!4037430 (= res!1644183 (= (size!32308 lt!1436438) (+ (size!32308 lt!1435816) (size!32308 lt!1436082))))))

(declare-fun b!4037429 () Bool)

(declare-fun e!2505169 () List!43346)

(assert (=> b!4037429 (= e!2505169 (Cons!43222 (h!48642 lt!1435816) (++!11319 (t!334587 lt!1435816) lt!1436082)))))

(declare-fun b!4037428 () Bool)

(assert (=> b!4037428 (= e!2505169 lt!1436082)))

(declare-fun d!1196686 () Bool)

(assert (=> d!1196686 e!2505168))

(declare-fun res!1644182 () Bool)

(assert (=> d!1196686 (=> (not res!1644182) (not e!2505168))))

(assert (=> d!1196686 (= res!1644182 (= (content!6568 lt!1436438) (set.union (content!6568 lt!1435816) (content!6568 lt!1436082))))))

(assert (=> d!1196686 (= lt!1436438 e!2505169)))

(declare-fun c!697364 () Bool)

(assert (=> d!1196686 (= c!697364 (is-Nil!43222 lt!1435816))))

(assert (=> d!1196686 (= (++!11319 lt!1435816 lt!1436082) lt!1436438)))

(assert (= (and d!1196686 c!697364) b!4037428))

(assert (= (and d!1196686 (not c!697364)) b!4037429))

(assert (= (and d!1196686 res!1644182) b!4037430))

(assert (= (and b!4037430 res!1644183) b!4037431))

(declare-fun m!4632149 () Bool)

(assert (=> b!4037430 m!4632149))

(assert (=> b!4037430 m!4630193))

(declare-fun m!4632151 () Bool)

(assert (=> b!4037430 m!4632151))

(declare-fun m!4632153 () Bool)

(assert (=> b!4037429 m!4632153))

(declare-fun m!4632155 () Bool)

(assert (=> d!1196686 m!4632155))

(assert (=> d!1196686 m!4630443))

(declare-fun m!4632157 () Bool)

(assert (=> d!1196686 m!4632157))

(assert (=> d!1196160 d!1196686))

(assert (=> d!1196160 d!1196360))

(assert (=> d!1196160 d!1196064))

(assert (=> b!4036216 d!1196184))

(declare-fun d!1196688 () Bool)

(assert (=> d!1196688 (= lt!1435798 suffixResult!105)))

(assert (=> d!1196688 true))

(declare-fun _$63!1096 () Unit!62414)

(assert (=> d!1196688 (= (choose!24442 lt!1435816 lt!1435798 lt!1435816 suffixResult!105 lt!1435831) _$63!1096)))

(assert (=> d!1196028 d!1196688))

(assert (=> d!1196028 d!1196112))

(assert (=> b!4036483 d!1196284))

(declare-fun d!1196690 () Bool)

(assert (=> d!1196690 (= (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436067))))) (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067))))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436067))))))))

(declare-fun b_lambda!117815 () Bool)

(assert (=> (not b_lambda!117815) (not d!1196690)))

(declare-fun tb!242571 () Bool)

(declare-fun t!334687 () Bool)

(assert (=> (and b!4036083 (= (toValue!9449 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))) t!334687) tb!242571))

(declare-fun result!294040 () Bool)

(assert (=> tb!242571 (= result!294040 (inv!21 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067))))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436067)))))))))

(declare-fun m!4632159 () Bool)

(assert (=> tb!242571 m!4632159))

(assert (=> d!1196690 t!334687))

(declare-fun b_and!310283 () Bool)

(assert (= b_and!310277 (and (=> t!334687 result!294040) b_and!310283)))

(declare-fun t!334689 () Bool)

(declare-fun tb!242573 () Bool)

(assert (=> (and b!4036114 (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))) t!334689) tb!242573))

(declare-fun result!294042 () Bool)

(assert (= result!294042 result!294040))

(assert (=> d!1196690 t!334689))

(declare-fun b_and!310285 () Bool)

(assert (= b_and!310279 (and (=> t!334689 result!294042) b_and!310285)))

(declare-fun tb!242575 () Bool)

(declare-fun t!334691 () Bool)

(assert (=> (and b!4036630 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))) t!334691) tb!242575))

(declare-fun result!294044 () Bool)

(assert (= result!294044 result!294040))

(assert (=> d!1196690 t!334691))

(declare-fun b_and!310287 () Bool)

(assert (= b_and!310281 (and (=> t!334691 result!294044) b_and!310287)))

(assert (=> d!1196690 m!4630817))

(declare-fun m!4632161 () Bool)

(assert (=> d!1196690 m!4632161))

(assert (=> b!4036483 d!1196690))

(declare-fun d!1196692 () Bool)

(assert (=> d!1196692 (= (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436067)))) (fromListB!2339 (originalCharacters!7517 (_1!24286 (get!14182 lt!1436067)))))))

(declare-fun bs!590638 () Bool)

(assert (= bs!590638 d!1196692))

(declare-fun m!4632163 () Bool)

(assert (=> bs!590638 m!4632163))

(assert (=> b!4036483 d!1196692))

(declare-fun d!1196694 () Bool)

(declare-fun c!697365 () Bool)

(assert (=> d!1196694 (= c!697365 (is-Nil!43222 lt!1436075))))

(declare-fun e!2505171 () (Set C!23830))

(assert (=> d!1196694 (= (content!6568 lt!1436075) e!2505171)))

(declare-fun b!4037432 () Bool)

(assert (=> b!4037432 (= e!2505171 (as set.empty (Set C!23830)))))

(declare-fun b!4037433 () Bool)

(assert (=> b!4037433 (= e!2505171 (set.union (set.insert (h!48642 lt!1436075) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1436075))))))

(assert (= (and d!1196694 c!697365) b!4037432))

(assert (= (and d!1196694 (not c!697365)) b!4037433))

(declare-fun m!4632165 () Bool)

(assert (=> b!4037433 m!4632165))

(declare-fun m!4632167 () Bool)

(assert (=> b!4037433 m!4632167))

(assert (=> d!1196144 d!1196694))

(declare-fun d!1196696 () Bool)

(declare-fun c!697366 () Bool)

(assert (=> d!1196696 (= c!697366 (is-Nil!43222 lt!1435803))))

(declare-fun e!2505172 () (Set C!23830))

(assert (=> d!1196696 (= (content!6568 lt!1435803) e!2505172)))

(declare-fun b!4037434 () Bool)

(assert (=> b!4037434 (= e!2505172 (as set.empty (Set C!23830)))))

(declare-fun b!4037435 () Bool)

(assert (=> b!4037435 (= e!2505172 (set.union (set.insert (h!48642 lt!1435803) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1435803))))))

(assert (= (and d!1196696 c!697366) b!4037434))

(assert (= (and d!1196696 (not c!697366)) b!4037435))

(declare-fun m!4632169 () Bool)

(assert (=> b!4037435 m!4632169))

(assert (=> b!4037435 m!4631823))

(assert (=> d!1196144 d!1196696))

(declare-fun d!1196698 () Bool)

(declare-fun c!697367 () Bool)

(assert (=> d!1196698 (= c!697367 (is-Nil!43222 (_2!24286 (v!39726 lt!1435811))))))

(declare-fun e!2505173 () (Set C!23830))

(assert (=> d!1196698 (= (content!6568 (_2!24286 (v!39726 lt!1435811))) e!2505173)))

(declare-fun b!4037436 () Bool)

(assert (=> b!4037436 (= e!2505173 (as set.empty (Set C!23830)))))

(declare-fun b!4037437 () Bool)

(assert (=> b!4037437 (= e!2505173 (set.union (set.insert (h!48642 (_2!24286 (v!39726 lt!1435811))) (as set.empty (Set C!23830))) (content!6568 (t!334587 (_2!24286 (v!39726 lt!1435811))))))))

(assert (= (and d!1196698 c!697367) b!4037436))

(assert (= (and d!1196698 (not c!697367)) b!4037437))

(declare-fun m!4632171 () Bool)

(assert (=> b!4037437 m!4632171))

(declare-fun m!4632173 () Bool)

(assert (=> b!4037437 m!4632173))

(assert (=> d!1196144 d!1196698))

(declare-fun d!1196700 () Bool)

(declare-fun c!697368 () Bool)

(assert (=> d!1196700 (= c!697368 (is-Nil!43222 lt!1436056))))

(declare-fun e!2505174 () (Set C!23830))

(assert (=> d!1196700 (= (content!6568 lt!1436056) e!2505174)))

(declare-fun b!4037438 () Bool)

(assert (=> b!4037438 (= e!2505174 (as set.empty (Set C!23830)))))

(declare-fun b!4037439 () Bool)

(assert (=> b!4037439 (= e!2505174 (set.union (set.insert (h!48642 lt!1436056) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1436056))))))

(assert (= (and d!1196700 c!697368) b!4037438))

(assert (= (and d!1196700 (not c!697368)) b!4037439))

(declare-fun m!4632175 () Bool)

(assert (=> b!4037439 m!4632175))

(declare-fun m!4632177 () Bool)

(assert (=> b!4037439 m!4632177))

(assert (=> d!1196118 d!1196700))

(declare-fun d!1196702 () Bool)

(declare-fun c!697369 () Bool)

(assert (=> d!1196702 (= c!697369 (is-Nil!43222 lt!1435819))))

(declare-fun e!2505175 () (Set C!23830))

(assert (=> d!1196702 (= (content!6568 lt!1435819) e!2505175)))

(declare-fun b!4037440 () Bool)

(assert (=> b!4037440 (= e!2505175 (as set.empty (Set C!23830)))))

(declare-fun b!4037441 () Bool)

(assert (=> b!4037441 (= e!2505175 (set.union (set.insert (h!48642 lt!1435819) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1435819))))))

(assert (= (and d!1196702 c!697369) b!4037440))

(assert (= (and d!1196702 (not c!697369)) b!4037441))

(declare-fun m!4632179 () Bool)

(assert (=> b!4037441 m!4632179))

(assert (=> b!4037441 m!4631833))

(assert (=> d!1196118 d!1196702))

(assert (=> d!1196118 d!1196390))

(declare-fun d!1196704 () Bool)

(declare-fun lt!1436439 () Int)

(assert (=> d!1196704 (>= lt!1436439 0)))

(declare-fun e!2505176 () Int)

(assert (=> d!1196704 (= lt!1436439 e!2505176)))

(declare-fun c!697370 () Bool)

(assert (=> d!1196704 (= c!697370 (is-Nil!43222 lt!1435956))))

(assert (=> d!1196704 (= (size!32308 lt!1435956) lt!1436439)))

(declare-fun b!4037442 () Bool)

(assert (=> b!4037442 (= e!2505176 0)))

(declare-fun b!4037443 () Bool)

(assert (=> b!4037443 (= e!2505176 (+ 1 (size!32308 (t!334587 lt!1435956))))))

(assert (= (and d!1196704 c!697370) b!4037442))

(assert (= (and d!1196704 (not c!697370)) b!4037443))

(declare-fun m!4632181 () Bool)

(assert (=> b!4037443 m!4632181))

(assert (=> b!4036232 d!1196704))

(assert (=> b!4036232 d!1196064))

(declare-fun d!1196706 () Bool)

(declare-fun lt!1436440 () Int)

(assert (=> d!1196706 (>= lt!1436440 0)))

(declare-fun e!2505177 () Int)

(assert (=> d!1196706 (= lt!1436440 e!2505177)))

(declare-fun c!697371 () Bool)

(assert (=> d!1196706 (= c!697371 (is-Nil!43222 suffixResult!105))))

(assert (=> d!1196706 (= (size!32308 suffixResult!105) lt!1436440)))

(declare-fun b!4037444 () Bool)

(assert (=> b!4037444 (= e!2505177 0)))

(declare-fun b!4037445 () Bool)

(assert (=> b!4037445 (= e!2505177 (+ 1 (size!32308 (t!334587 suffixResult!105))))))

(assert (= (and d!1196706 c!697371) b!4037444))

(assert (= (and d!1196706 (not c!697371)) b!4037445))

(declare-fun m!4632183 () Bool)

(assert (=> b!4037445 m!4632183))

(assert (=> b!4036232 d!1196706))

(declare-fun d!1196708 () Bool)

(declare-fun c!697372 () Bool)

(assert (=> d!1196708 (= c!697372 (is-Nil!43222 lt!1436073))))

(declare-fun e!2505178 () (Set C!23830))

(assert (=> d!1196708 (= (content!6568 lt!1436073) e!2505178)))

(declare-fun b!4037446 () Bool)

(assert (=> b!4037446 (= e!2505178 (as set.empty (Set C!23830)))))

(declare-fun b!4037447 () Bool)

(assert (=> b!4037447 (= e!2505178 (set.union (set.insert (h!48642 lt!1436073) (as set.empty (Set C!23830))) (content!6568 (t!334587 lt!1436073))))))

(assert (= (and d!1196708 c!697372) b!4037446))

(assert (= (and d!1196708 (not c!697372)) b!4037447))

(declare-fun m!4632185 () Bool)

(assert (=> b!4037447 m!4632185))

(declare-fun m!4632187 () Bool)

(assert (=> b!4037447 m!4632187))

(assert (=> d!1196142 d!1196708))

(assert (=> d!1196142 d!1196598))

(assert (=> d!1196142 d!1196390))

(declare-fun d!1196710 () Bool)

(assert (=> d!1196710 (= suffixResult!105 lt!1435801)))

(assert (=> d!1196710 true))

(declare-fun _$63!1097 () Unit!62414)

(assert (=> d!1196710 (= (choose!24442 lt!1435816 suffixResult!105 lt!1435816 lt!1435801 lt!1435831) _$63!1097)))

(assert (=> d!1196096 d!1196710))

(assert (=> d!1196096 d!1196112))

(declare-fun d!1196712 () Bool)

(assert (=> d!1196712 (= (inv!57758 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484))) (isBalanced!3676 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))))))

(declare-fun bs!590639 () Bool)

(assert (= bs!590639 d!1196712))

(declare-fun m!4632189 () Bool)

(assert (=> bs!590639 m!4632189))

(assert (=> tb!242481 d!1196712))

(declare-fun d!1196714 () Bool)

(declare-fun lt!1436441 () Int)

(assert (=> d!1196714 (>= lt!1436441 0)))

(declare-fun e!2505179 () Int)

(assert (=> d!1196714 (= lt!1436441 e!2505179)))

(declare-fun c!697373 () Bool)

(assert (=> d!1196714 (= c!697373 (is-Nil!43222 lt!1436079))))

(assert (=> d!1196714 (= (size!32308 lt!1436079) lt!1436441)))

(declare-fun b!4037448 () Bool)

(assert (=> b!4037448 (= e!2505179 0)))

(declare-fun b!4037449 () Bool)

(assert (=> b!4037449 (= e!2505179 (+ 1 (size!32308 (t!334587 lt!1436079))))))

(assert (= (and d!1196714 c!697373) b!4037448))

(assert (= (and d!1196714 (not c!697373)) b!4037449))

(declare-fun m!4632191 () Bool)

(assert (=> b!4037449 m!4632191))

(assert (=> b!4036513 d!1196714))

(assert (=> b!4036513 d!1196064))

(declare-fun d!1196716 () Bool)

(declare-fun lt!1436442 () Int)

(assert (=> d!1196716 (>= lt!1436442 0)))

(declare-fun e!2505180 () Int)

(assert (=> d!1196716 (= lt!1436442 e!2505180)))

(declare-fun c!697374 () Bool)

(assert (=> d!1196716 (= c!697374 (is-Nil!43222 lt!1435801))))

(assert (=> d!1196716 (= (size!32308 lt!1435801) lt!1436442)))

(declare-fun b!4037450 () Bool)

(assert (=> b!4037450 (= e!2505180 0)))

(declare-fun b!4037451 () Bool)

(assert (=> b!4037451 (= e!2505180 (+ 1 (size!32308 (t!334587 lt!1435801))))))

(assert (= (and d!1196716 c!697374) b!4037450))

(assert (= (and d!1196716 (not c!697374)) b!4037451))

(declare-fun m!4632193 () Bool)

(assert (=> b!4037451 m!4632193))

(assert (=> b!4036513 d!1196716))

(declare-fun d!1196718 () Bool)

(declare-fun e!2505182 () Bool)

(assert (=> d!1196718 e!2505182))

(declare-fun res!1644187 () Bool)

(assert (=> d!1196718 (=> res!1644187 e!2505182)))

(declare-fun lt!1436443 () Bool)

(assert (=> d!1196718 (= res!1644187 (not lt!1436443))))

(declare-fun e!2505183 () Bool)

(assert (=> d!1196718 (= lt!1436443 e!2505183)))

(declare-fun res!1644185 () Bool)

(assert (=> d!1196718 (=> res!1644185 e!2505183)))

(assert (=> d!1196718 (= res!1644185 (is-Nil!43222 (tail!6280 lt!1435816)))))

(assert (=> d!1196718 (= (isPrefix!4004 (tail!6280 lt!1435816) (tail!6280 lt!1435817)) lt!1436443)))

(declare-fun b!4037452 () Bool)

(declare-fun e!2505181 () Bool)

(assert (=> b!4037452 (= e!2505183 e!2505181)))

(declare-fun res!1644186 () Bool)

(assert (=> b!4037452 (=> (not res!1644186) (not e!2505181))))

(assert (=> b!4037452 (= res!1644186 (not (is-Nil!43222 (tail!6280 lt!1435817))))))

(declare-fun b!4037454 () Bool)

(assert (=> b!4037454 (= e!2505181 (isPrefix!4004 (tail!6280 (tail!6280 lt!1435816)) (tail!6280 (tail!6280 lt!1435817))))))

(declare-fun b!4037453 () Bool)

(declare-fun res!1644184 () Bool)

(assert (=> b!4037453 (=> (not res!1644184) (not e!2505181))))

(assert (=> b!4037453 (= res!1644184 (= (head!8548 (tail!6280 lt!1435816)) (head!8548 (tail!6280 lt!1435817))))))

(declare-fun b!4037455 () Bool)

(assert (=> b!4037455 (= e!2505182 (>= (size!32308 (tail!6280 lt!1435817)) (size!32308 (tail!6280 lt!1435816))))))

(assert (= (and d!1196718 (not res!1644185)) b!4037452))

(assert (= (and b!4037452 res!1644186) b!4037453))

(assert (= (and b!4037453 res!1644184) b!4037454))

(assert (= (and d!1196718 (not res!1644187)) b!4037455))

(assert (=> b!4037454 m!4630463))

(assert (=> b!4037454 m!4631249))

(assert (=> b!4037454 m!4630701))

(declare-fun m!4632195 () Bool)

(assert (=> b!4037454 m!4632195))

(assert (=> b!4037454 m!4631249))

(assert (=> b!4037454 m!4632195))

(declare-fun m!4632197 () Bool)

(assert (=> b!4037454 m!4632197))

(assert (=> b!4037453 m!4630463))

(assert (=> b!4037453 m!4631255))

(assert (=> b!4037453 m!4630701))

(declare-fun m!4632199 () Bool)

(assert (=> b!4037453 m!4632199))

(assert (=> b!4037455 m!4630701))

(declare-fun m!4632201 () Bool)

(assert (=> b!4037455 m!4632201))

(assert (=> b!4037455 m!4630463))

(assert (=> b!4037455 m!4631261))

(assert (=> b!4036442 d!1196718))

(assert (=> b!4036442 d!1196274))

(declare-fun d!1196720 () Bool)

(assert (=> d!1196720 (= (tail!6280 lt!1435817) (t!334587 lt!1435817))))

(assert (=> b!4036442 d!1196720))

(assert (=> d!1196180 d!1196178))

(declare-fun d!1196722 () Bool)

(assert (=> d!1196722 (isPrefix!4004 lt!1435816 prefix!494)))

(assert (=> d!1196722 true))

(declare-fun _$69!280 () Unit!62414)

(assert (=> d!1196722 (= (choose!24453 prefix!494 lt!1435816 lt!1435831) _$69!280)))

(declare-fun bs!590640 () Bool)

(assert (= bs!590640 d!1196722))

(assert (=> bs!590640 m!4630205))

(assert (=> d!1196180 d!1196722))

(assert (=> d!1196180 d!1196106))

(assert (=> b!4036448 d!1196360))

(assert (=> b!4036448 d!1196066))

(declare-fun bs!590641 () Bool)

(declare-fun d!1196724 () Bool)

(assert (= bs!590641 (and d!1196724 d!1196508)))

(declare-fun lambda!127320 () Int)

(assert (=> bs!590641 (= (and (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))) (= lambda!127320 lambda!127313))))

(declare-fun bs!590642 () Bool)

(assert (= bs!590642 (and d!1196724 d!1196550)))

(assert (=> bs!590642 (= (and (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) (= lambda!127320 lambda!127314))))

(declare-fun bs!590643 () Bool)

(assert (= bs!590643 (and d!1196724 d!1196672)))

(assert (=> bs!590643 (= (and (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) (= lambda!127320 lambda!127319))))

(assert (=> d!1196724 true))

(assert (=> d!1196724 (< (dynLambda!18333 order!22611 (toChars!9308 (transformation!6917 (h!48644 rules!2999)))) (dynLambda!18334 order!22613 lambda!127320))))

(assert (=> d!1196724 true))

(assert (=> d!1196724 (< (dynLambda!18331 order!22607 (toValue!9449 (transformation!6917 (h!48644 rules!2999)))) (dynLambda!18334 order!22613 lambda!127320))))

(assert (=> d!1196724 (= (semiInverseModEq!2953 (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (h!48644 rules!2999)))) (Forall!1486 lambda!127320))))

(declare-fun bs!590644 () Bool)

(assert (= bs!590644 d!1196724))

(declare-fun m!4632203 () Bool)

(assert (=> bs!590644 m!4632203))

(assert (=> d!1196104 d!1196724))

(assert (=> b!4036352 d!1196348))

(declare-fun d!1196726 () Bool)

(assert (=> d!1196726 (= (apply!10106 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997))))) (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997))))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997))))))))

(declare-fun b_lambda!117817 () Bool)

(assert (=> (not b_lambda!117817) (not d!1196726)))

(declare-fun tb!242577 () Bool)

(declare-fun t!334693 () Bool)

(assert (=> (and b!4036083 (= (toValue!9449 (transformation!6917 (rule!9985 token!484))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))))) t!334693) tb!242577))

(declare-fun result!294046 () Bool)

(assert (=> tb!242577 (= result!294046 (inv!21 (dynLambda!18328 (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997))))) (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997)))))))))

(declare-fun m!4632205 () Bool)

(assert (=> tb!242577 m!4632205))

(assert (=> d!1196726 t!334693))

(declare-fun b_and!310289 () Bool)

(assert (= b_and!310283 (and (=> t!334693 result!294046) b_and!310289)))

(declare-fun t!334695 () Bool)

(declare-fun tb!242579 () Bool)

(assert (=> (and b!4036114 (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))))) t!334695) tb!242579))

(declare-fun result!294048 () Bool)

(assert (= result!294048 result!294046))

(assert (=> d!1196726 t!334695))

(declare-fun b_and!310291 () Bool)

(assert (= b_and!310285 (and (=> t!334695 result!294048) b_and!310291)))

(declare-fun tb!242581 () Bool)

(declare-fun t!334697 () Bool)

(assert (=> (and b!4036630 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))))) t!334697) tb!242581))

(declare-fun result!294050 () Bool)

(assert (= result!294050 result!294046))

(assert (=> d!1196726 t!334697))

(declare-fun b_and!310293 () Bool)

(assert (= b_and!310287 (and (=> t!334697 result!294050) b_and!310293)))

(assert (=> d!1196726 m!4630543))

(declare-fun m!4632207 () Bool)

(assert (=> d!1196726 m!4632207))

(assert (=> b!4036352 d!1196726))

(declare-fun d!1196728 () Bool)

(assert (=> d!1196728 (= (seqFromList!5134 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997)))) (fromListB!2339 (originalCharacters!7517 (_1!24286 (get!14182 lt!1435997)))))))

(declare-fun bs!590645 () Bool)

(assert (= bs!590645 d!1196728))

(declare-fun m!4632209 () Bool)

(assert (=> bs!590645 m!4632209))

(assert (=> b!4036352 d!1196728))

(assert (=> d!1196124 d!1196184))

(assert (=> bm!287135 d!1196394))

(declare-fun d!1196730 () Bool)

(declare-fun e!2505186 () Bool)

(assert (=> d!1196730 e!2505186))

(declare-fun res!1644191 () Bool)

(assert (=> d!1196730 (=> res!1644191 e!2505186)))

(declare-fun lt!1436444 () Bool)

(assert (=> d!1196730 (= res!1644191 (not lt!1436444))))

(declare-fun e!2505187 () Bool)

(assert (=> d!1196730 (= lt!1436444 e!2505187)))

(declare-fun res!1644189 () Bool)

(assert (=> d!1196730 (=> res!1644189 e!2505187)))

(assert (=> d!1196730 (= res!1644189 (is-Nil!43222 (tail!6280 newSuffix!27)))))

(assert (=> d!1196730 (= (isPrefix!4004 (tail!6280 newSuffix!27) (tail!6280 suffix!1299)) lt!1436444)))

(declare-fun b!4037456 () Bool)

(declare-fun e!2505185 () Bool)

(assert (=> b!4037456 (= e!2505187 e!2505185)))

(declare-fun res!1644190 () Bool)

(assert (=> b!4037456 (=> (not res!1644190) (not e!2505185))))

(assert (=> b!4037456 (= res!1644190 (not (is-Nil!43222 (tail!6280 suffix!1299))))))

(declare-fun b!4037458 () Bool)

(assert (=> b!4037458 (= e!2505185 (isPrefix!4004 (tail!6280 (tail!6280 newSuffix!27)) (tail!6280 (tail!6280 suffix!1299))))))

(declare-fun b!4037457 () Bool)

(declare-fun res!1644188 () Bool)

(assert (=> b!4037457 (=> (not res!1644188) (not e!2505185))))

(assert (=> b!4037457 (= res!1644188 (= (head!8548 (tail!6280 newSuffix!27)) (head!8548 (tail!6280 suffix!1299))))))

(declare-fun b!4037459 () Bool)

(assert (=> b!4037459 (= e!2505186 (>= (size!32308 (tail!6280 suffix!1299)) (size!32308 (tail!6280 newSuffix!27))))))

(assert (= (and d!1196730 (not res!1644189)) b!4037456))

(assert (= (and b!4037456 res!1644190) b!4037457))

(assert (= (and b!4037457 res!1644188) b!4037458))

(assert (= (and d!1196730 (not res!1644191)) b!4037459))

(assert (=> b!4037458 m!4630861))

(declare-fun m!4632211 () Bool)

(assert (=> b!4037458 m!4632211))

(assert (=> b!4037458 m!4630863))

(declare-fun m!4632213 () Bool)

(assert (=> b!4037458 m!4632213))

(assert (=> b!4037458 m!4632211))

(assert (=> b!4037458 m!4632213))

(declare-fun m!4632215 () Bool)

(assert (=> b!4037458 m!4632215))

(assert (=> b!4037457 m!4630861))

(declare-fun m!4632217 () Bool)

(assert (=> b!4037457 m!4632217))

(assert (=> b!4037457 m!4630863))

(declare-fun m!4632219 () Bool)

(assert (=> b!4037457 m!4632219))

(assert (=> b!4037459 m!4630863))

(declare-fun m!4632221 () Bool)

(assert (=> b!4037459 m!4632221))

(assert (=> b!4037459 m!4630861))

(declare-fun m!4632223 () Bool)

(assert (=> b!4037459 m!4632223))

(assert (=> b!4036498 d!1196730))

(declare-fun d!1196732 () Bool)

(assert (=> d!1196732 (= (tail!6280 newSuffix!27) (t!334587 newSuffix!27))))

(assert (=> b!4036498 d!1196732))

(declare-fun d!1196734 () Bool)

(assert (=> d!1196734 (= (tail!6280 suffix!1299) (t!334587 suffix!1299))))

(assert (=> b!4036498 d!1196734))

(declare-fun b!4037463 () Bool)

(declare-fun e!2505188 () Bool)

(declare-fun tp!1226231 () Bool)

(declare-fun tp!1226230 () Bool)

(assert (=> b!4037463 (= e!2505188 (and tp!1226231 tp!1226230))))

(assert (=> b!4036616 (= tp!1226154 e!2505188)))

(declare-fun b!4037460 () Bool)

(assert (=> b!4037460 (= e!2505188 tp_is_empty!20615)))

(declare-fun b!4037462 () Bool)

(declare-fun tp!1226233 () Bool)

(assert (=> b!4037462 (= e!2505188 tp!1226233)))

(declare-fun b!4037461 () Bool)

(declare-fun tp!1226232 () Bool)

(declare-fun tp!1226229 () Bool)

(assert (=> b!4037461 (= e!2505188 (and tp!1226232 tp!1226229))))

(assert (= (and b!4036616 (is-ElementMatch!11822 (regOne!24157 (regex!6917 (h!48644 rules!2999))))) b!4037460))

(assert (= (and b!4036616 (is-Concat!18970 (regOne!24157 (regex!6917 (h!48644 rules!2999))))) b!4037461))

(assert (= (and b!4036616 (is-Star!11822 (regOne!24157 (regex!6917 (h!48644 rules!2999))))) b!4037462))

(assert (= (and b!4036616 (is-Union!11822 (regOne!24157 (regex!6917 (h!48644 rules!2999))))) b!4037463))

(declare-fun b!4037467 () Bool)

(declare-fun e!2505189 () Bool)

(declare-fun tp!1226236 () Bool)

(declare-fun tp!1226235 () Bool)

(assert (=> b!4037467 (= e!2505189 (and tp!1226236 tp!1226235))))

(assert (=> b!4036616 (= tp!1226153 e!2505189)))

(declare-fun b!4037464 () Bool)

(assert (=> b!4037464 (= e!2505189 tp_is_empty!20615)))

(declare-fun b!4037466 () Bool)

(declare-fun tp!1226238 () Bool)

(assert (=> b!4037466 (= e!2505189 tp!1226238)))

(declare-fun b!4037465 () Bool)

(declare-fun tp!1226237 () Bool)

(declare-fun tp!1226234 () Bool)

(assert (=> b!4037465 (= e!2505189 (and tp!1226237 tp!1226234))))

(assert (= (and b!4036616 (is-ElementMatch!11822 (regTwo!24157 (regex!6917 (h!48644 rules!2999))))) b!4037464))

(assert (= (and b!4036616 (is-Concat!18970 (regTwo!24157 (regex!6917 (h!48644 rules!2999))))) b!4037465))

(assert (= (and b!4036616 (is-Star!11822 (regTwo!24157 (regex!6917 (h!48644 rules!2999))))) b!4037466))

(assert (= (and b!4036616 (is-Union!11822 (regTwo!24157 (regex!6917 (h!48644 rules!2999))))) b!4037467))

(declare-fun e!2505195 () Bool)

(declare-fun tp!1226246 () Bool)

(declare-fun b!4037476 () Bool)

(declare-fun tp!1226247 () Bool)

(assert (=> b!4037476 (= e!2505195 (and (inv!57757 (left!32553 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484))))) tp!1226246 (inv!57757 (right!32883 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484))))) tp!1226247))))

(declare-fun b!4037478 () Bool)

(declare-fun e!2505194 () Bool)

(declare-fun tp!1226245 () Bool)

(assert (=> b!4037478 (= e!2505194 tp!1226245)))

(declare-fun b!4037477 () Bool)

(declare-fun inv!57763 (IArray!26261) Bool)

(assert (=> b!4037477 (= e!2505195 (and (inv!57763 (xs!16434 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484))))) e!2505194))))

(assert (=> b!4036221 (= tp!1226137 (and (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484)))) e!2505195))))

(assert (= (and b!4036221 (is-Node!13128 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484))))) b!4037476))

(assert (= b!4037477 b!4037478))

(assert (= (and b!4036221 (is-Leaf!20294 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 token!484))) (value!217770 token!484))))) b!4037477))

(declare-fun m!4632225 () Bool)

(assert (=> b!4037476 m!4632225))

(declare-fun m!4632227 () Bool)

(assert (=> b!4037476 m!4632227))

(declare-fun m!4632229 () Bool)

(assert (=> b!4037477 m!4632229))

(assert (=> b!4036221 m!4630425))

(declare-fun b!4037479 () Bool)

(declare-fun e!2505196 () Bool)

(declare-fun tp!1226248 () Bool)

(assert (=> b!4037479 (= e!2505196 (and tp_is_empty!20615 tp!1226248))))

(assert (=> b!4036619 (= tp!1226159 e!2505196)))

(assert (= (and b!4036619 (is-Cons!43222 (t!334587 (originalCharacters!7517 token!484)))) b!4037479))

(declare-fun b!4037483 () Bool)

(declare-fun e!2505197 () Bool)

(declare-fun tp!1226251 () Bool)

(declare-fun tp!1226250 () Bool)

(assert (=> b!4037483 (= e!2505197 (and tp!1226251 tp!1226250))))

(assert (=> b!4036614 (= tp!1226155 e!2505197)))

(declare-fun b!4037480 () Bool)

(assert (=> b!4037480 (= e!2505197 tp_is_empty!20615)))

(declare-fun b!4037482 () Bool)

(declare-fun tp!1226253 () Bool)

(assert (=> b!4037482 (= e!2505197 tp!1226253)))

(declare-fun b!4037481 () Bool)

(declare-fun tp!1226252 () Bool)

(declare-fun tp!1226249 () Bool)

(assert (=> b!4037481 (= e!2505197 (and tp!1226252 tp!1226249))))

(assert (= (and b!4036614 (is-ElementMatch!11822 (regOne!24156 (regex!6917 (h!48644 rules!2999))))) b!4037480))

(assert (= (and b!4036614 (is-Concat!18970 (regOne!24156 (regex!6917 (h!48644 rules!2999))))) b!4037481))

(assert (= (and b!4036614 (is-Star!11822 (regOne!24156 (regex!6917 (h!48644 rules!2999))))) b!4037482))

(assert (= (and b!4036614 (is-Union!11822 (regOne!24156 (regex!6917 (h!48644 rules!2999))))) b!4037483))

(declare-fun b!4037487 () Bool)

(declare-fun e!2505198 () Bool)

(declare-fun tp!1226256 () Bool)

(declare-fun tp!1226255 () Bool)

(assert (=> b!4037487 (= e!2505198 (and tp!1226256 tp!1226255))))

(assert (=> b!4036614 (= tp!1226152 e!2505198)))

(declare-fun b!4037484 () Bool)

(assert (=> b!4037484 (= e!2505198 tp_is_empty!20615)))

(declare-fun b!4037486 () Bool)

(declare-fun tp!1226258 () Bool)

(assert (=> b!4037486 (= e!2505198 tp!1226258)))

(declare-fun b!4037485 () Bool)

(declare-fun tp!1226257 () Bool)

(declare-fun tp!1226254 () Bool)

(assert (=> b!4037485 (= e!2505198 (and tp!1226257 tp!1226254))))

(assert (= (and b!4036614 (is-ElementMatch!11822 (regTwo!24156 (regex!6917 (h!48644 rules!2999))))) b!4037484))

(assert (= (and b!4036614 (is-Concat!18970 (regTwo!24156 (regex!6917 (h!48644 rules!2999))))) b!4037485))

(assert (= (and b!4036614 (is-Star!11822 (regTwo!24156 (regex!6917 (h!48644 rules!2999))))) b!4037486))

(assert (= (and b!4036614 (is-Union!11822 (regTwo!24156 (regex!6917 (h!48644 rules!2999))))) b!4037487))

(declare-fun b!4037491 () Bool)

(declare-fun e!2505199 () Bool)

(declare-fun tp!1226261 () Bool)

(declare-fun tp!1226260 () Bool)

(assert (=> b!4037491 (= e!2505199 (and tp!1226261 tp!1226260))))

(assert (=> b!4036615 (= tp!1226156 e!2505199)))

(declare-fun b!4037488 () Bool)

(assert (=> b!4037488 (= e!2505199 tp_is_empty!20615)))

(declare-fun b!4037490 () Bool)

(declare-fun tp!1226263 () Bool)

(assert (=> b!4037490 (= e!2505199 tp!1226263)))

(declare-fun b!4037489 () Bool)

(declare-fun tp!1226262 () Bool)

(declare-fun tp!1226259 () Bool)

(assert (=> b!4037489 (= e!2505199 (and tp!1226262 tp!1226259))))

(assert (= (and b!4036615 (is-ElementMatch!11822 (reg!12151 (regex!6917 (h!48644 rules!2999))))) b!4037488))

(assert (= (and b!4036615 (is-Concat!18970 (reg!12151 (regex!6917 (h!48644 rules!2999))))) b!4037489))

(assert (= (and b!4036615 (is-Star!11822 (reg!12151 (regex!6917 (h!48644 rules!2999))))) b!4037490))

(assert (= (and b!4036615 (is-Union!11822 (reg!12151 (regex!6917 (h!48644 rules!2999))))) b!4037491))

(declare-fun b!4037492 () Bool)

(declare-fun e!2505200 () Bool)

(declare-fun tp!1226264 () Bool)

(assert (=> b!4037492 (= e!2505200 (and tp_is_empty!20615 tp!1226264))))

(assert (=> b!4036635 (= tp!1226177 e!2505200)))

(assert (= (and b!4036635 (is-Cons!43222 (t!334587 (t!334587 prefix!494)))) b!4037492))

(declare-fun b!4037493 () Bool)

(declare-fun e!2505202 () Bool)

(declare-fun tp!1226266 () Bool)

(declare-fun tp!1226267 () Bool)

(assert (=> b!4037493 (= e!2505202 (and (inv!57757 (left!32553 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811))))))) tp!1226266 (inv!57757 (right!32883 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811))))))) tp!1226267))))

(declare-fun b!4037495 () Bool)

(declare-fun e!2505201 () Bool)

(declare-fun tp!1226265 () Bool)

(assert (=> b!4037495 (= e!2505201 tp!1226265)))

(declare-fun b!4037494 () Bool)

(assert (=> b!4037494 (= e!2505202 (and (inv!57763 (xs!16434 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811))))))) e!2505201))))

(assert (=> b!4036471 (= tp!1226138 (and (inv!57757 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811)))))) e!2505202))))

(assert (= (and b!4036471 (is-Node!13128 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811))))))) b!4037493))

(assert (= b!4037494 b!4037495))

(assert (= (and b!4036471 (is-Leaf!20294 (c!697105 (dynLambda!18327 (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))) (value!217770 (_1!24286 (v!39726 lt!1435811))))))) b!4037494))

(declare-fun m!4632231 () Bool)

(assert (=> b!4037493 m!4632231))

(declare-fun m!4632233 () Bool)

(assert (=> b!4037493 m!4632233))

(declare-fun m!4632235 () Bool)

(assert (=> b!4037494 m!4632235))

(assert (=> b!4036471 m!4630789))

(declare-fun b!4037499 () Bool)

(declare-fun e!2505203 () Bool)

(declare-fun tp!1226270 () Bool)

(declare-fun tp!1226269 () Bool)

(assert (=> b!4037499 (= e!2505203 (and tp!1226270 tp!1226269))))

(assert (=> b!4036632 (= tp!1226175 e!2505203)))

(declare-fun b!4037496 () Bool)

(assert (=> b!4037496 (= e!2505203 tp_is_empty!20615)))

(declare-fun b!4037498 () Bool)

(declare-fun tp!1226272 () Bool)

(assert (=> b!4037498 (= e!2505203 tp!1226272)))

(declare-fun b!4037497 () Bool)

(declare-fun tp!1226271 () Bool)

(declare-fun tp!1226268 () Bool)

(assert (=> b!4037497 (= e!2505203 (and tp!1226271 tp!1226268))))

(assert (= (and b!4036632 (is-ElementMatch!11822 (regOne!24156 (regex!6917 (rule!9985 token!484))))) b!4037496))

(assert (= (and b!4036632 (is-Concat!18970 (regOne!24156 (regex!6917 (rule!9985 token!484))))) b!4037497))

(assert (= (and b!4036632 (is-Star!11822 (regOne!24156 (regex!6917 (rule!9985 token!484))))) b!4037498))

(assert (= (and b!4036632 (is-Union!11822 (regOne!24156 (regex!6917 (rule!9985 token!484))))) b!4037499))

(declare-fun b!4037503 () Bool)

(declare-fun e!2505204 () Bool)

(declare-fun tp!1226275 () Bool)

(declare-fun tp!1226274 () Bool)

(assert (=> b!4037503 (= e!2505204 (and tp!1226275 tp!1226274))))

(assert (=> b!4036632 (= tp!1226172 e!2505204)))

(declare-fun b!4037500 () Bool)

(assert (=> b!4037500 (= e!2505204 tp_is_empty!20615)))

(declare-fun b!4037502 () Bool)

(declare-fun tp!1226277 () Bool)

(assert (=> b!4037502 (= e!2505204 tp!1226277)))

(declare-fun b!4037501 () Bool)

(declare-fun tp!1226276 () Bool)

(declare-fun tp!1226273 () Bool)

(assert (=> b!4037501 (= e!2505204 (and tp!1226276 tp!1226273))))

(assert (= (and b!4036632 (is-ElementMatch!11822 (regTwo!24156 (regex!6917 (rule!9985 token!484))))) b!4037500))

(assert (= (and b!4036632 (is-Concat!18970 (regTwo!24156 (regex!6917 (rule!9985 token!484))))) b!4037501))

(assert (= (and b!4036632 (is-Star!11822 (regTwo!24156 (regex!6917 (rule!9985 token!484))))) b!4037502))

(assert (= (and b!4036632 (is-Union!11822 (regTwo!24156 (regex!6917 (rule!9985 token!484))))) b!4037503))

(declare-fun b!4037507 () Bool)

(declare-fun e!2505205 () Bool)

(declare-fun tp!1226280 () Bool)

(declare-fun tp!1226279 () Bool)

(assert (=> b!4037507 (= e!2505205 (and tp!1226280 tp!1226279))))

(assert (=> b!4036633 (= tp!1226176 e!2505205)))

(declare-fun b!4037504 () Bool)

(assert (=> b!4037504 (= e!2505205 tp_is_empty!20615)))

(declare-fun b!4037506 () Bool)

(declare-fun tp!1226282 () Bool)

(assert (=> b!4037506 (= e!2505205 tp!1226282)))

(declare-fun b!4037505 () Bool)

(declare-fun tp!1226281 () Bool)

(declare-fun tp!1226278 () Bool)

(assert (=> b!4037505 (= e!2505205 (and tp!1226281 tp!1226278))))

(assert (= (and b!4036633 (is-ElementMatch!11822 (reg!12151 (regex!6917 (rule!9985 token!484))))) b!4037504))

(assert (= (and b!4036633 (is-Concat!18970 (reg!12151 (regex!6917 (rule!9985 token!484))))) b!4037505))

(assert (= (and b!4036633 (is-Star!11822 (reg!12151 (regex!6917 (rule!9985 token!484))))) b!4037506))

(assert (= (and b!4036633 (is-Union!11822 (reg!12151 (regex!6917 (rule!9985 token!484))))) b!4037507))

(declare-fun b!4037508 () Bool)

(declare-fun e!2505206 () Bool)

(declare-fun tp!1226283 () Bool)

(assert (=> b!4037508 (= e!2505206 (and tp_is_empty!20615 tp!1226283))))

(assert (=> b!4036618 (= tp!1226158 e!2505206)))

(assert (= (and b!4036618 (is-Cons!43222 (t!334587 (t!334587 suffix!1299)))) b!4037508))

(declare-fun b!4037509 () Bool)

(declare-fun e!2505207 () Bool)

(declare-fun tp!1226284 () Bool)

(assert (=> b!4037509 (= e!2505207 (and tp_is_empty!20615 tp!1226284))))

(assert (=> b!4036602 (= tp!1226141 e!2505207)))

(assert (= (and b!4036602 (is-Cons!43222 (t!334587 (t!334587 newSuffixResult!27)))) b!4037509))

(declare-fun b!4037513 () Bool)

(declare-fun e!2505208 () Bool)

(declare-fun tp!1226287 () Bool)

(declare-fun tp!1226286 () Bool)

(assert (=> b!4037513 (= e!2505208 (and tp!1226287 tp!1226286))))

(assert (=> b!4036634 (= tp!1226174 e!2505208)))

(declare-fun b!4037510 () Bool)

(assert (=> b!4037510 (= e!2505208 tp_is_empty!20615)))

(declare-fun b!4037512 () Bool)

(declare-fun tp!1226289 () Bool)

(assert (=> b!4037512 (= e!2505208 tp!1226289)))

(declare-fun b!4037511 () Bool)

(declare-fun tp!1226288 () Bool)

(declare-fun tp!1226285 () Bool)

(assert (=> b!4037511 (= e!2505208 (and tp!1226288 tp!1226285))))

(assert (= (and b!4036634 (is-ElementMatch!11822 (regOne!24157 (regex!6917 (rule!9985 token!484))))) b!4037510))

(assert (= (and b!4036634 (is-Concat!18970 (regOne!24157 (regex!6917 (rule!9985 token!484))))) b!4037511))

(assert (= (and b!4036634 (is-Star!11822 (regOne!24157 (regex!6917 (rule!9985 token!484))))) b!4037512))

(assert (= (and b!4036634 (is-Union!11822 (regOne!24157 (regex!6917 (rule!9985 token!484))))) b!4037513))

(declare-fun b!4037517 () Bool)

(declare-fun e!2505209 () Bool)

(declare-fun tp!1226292 () Bool)

(declare-fun tp!1226291 () Bool)

(assert (=> b!4037517 (= e!2505209 (and tp!1226292 tp!1226291))))

(assert (=> b!4036634 (= tp!1226173 e!2505209)))

(declare-fun b!4037514 () Bool)

(assert (=> b!4037514 (= e!2505209 tp_is_empty!20615)))

(declare-fun b!4037516 () Bool)

(declare-fun tp!1226294 () Bool)

(assert (=> b!4037516 (= e!2505209 tp!1226294)))

(declare-fun b!4037515 () Bool)

(declare-fun tp!1226293 () Bool)

(declare-fun tp!1226290 () Bool)

(assert (=> b!4037515 (= e!2505209 (and tp!1226293 tp!1226290))))

(assert (= (and b!4036634 (is-ElementMatch!11822 (regTwo!24157 (regex!6917 (rule!9985 token!484))))) b!4037514))

(assert (= (and b!4036634 (is-Concat!18970 (regTwo!24157 (regex!6917 (rule!9985 token!484))))) b!4037515))

(assert (= (and b!4036634 (is-Star!11822 (regTwo!24157 (regex!6917 (rule!9985 token!484))))) b!4037516))

(assert (= (and b!4036634 (is-Union!11822 (regTwo!24157 (regex!6917 (rule!9985 token!484))))) b!4037517))

(declare-fun b!4037518 () Bool)

(declare-fun e!2505210 () Bool)

(declare-fun tp!1226295 () Bool)

(assert (=> b!4037518 (= e!2505210 (and tp_is_empty!20615 tp!1226295))))

(assert (=> b!4036636 (= tp!1226178 e!2505210)))

(assert (= (and b!4036636 (is-Cons!43222 (t!334587 (t!334587 newSuffix!27)))) b!4037518))

(declare-fun b!4037519 () Bool)

(declare-fun e!2505211 () Bool)

(declare-fun tp!1226296 () Bool)

(assert (=> b!4037519 (= e!2505211 (and tp_is_empty!20615 tp!1226296))))

(assert (=> b!4036617 (= tp!1226157 e!2505211)))

(assert (= (and b!4036617 (is-Cons!43222 (t!334587 (t!334587 suffixResult!105)))) b!4037519))

(declare-fun b!4037522 () Bool)

(declare-fun b_free!112473 () Bool)

(declare-fun b_next!113177 () Bool)

(assert (=> b!4037522 (= b_free!112473 (not b_next!113177))))

(declare-fun t!334699 () Bool)

(declare-fun tb!242583 () Bool)

(assert (=> (and b!4037522 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) t!334699) tb!242583))

(declare-fun result!294054 () Bool)

(assert (= result!294054 result!294034))

(assert (=> d!1196676 t!334699))

(declare-fun tb!242585 () Bool)

(declare-fun t!334701 () Bool)

(assert (=> (and b!4037522 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toValue!9449 (transformation!6917 (rule!9985 token!484)))) t!334701) tb!242585))

(declare-fun result!294056 () Bool)

(assert (= result!294056 result!293936))

(assert (=> d!1196030 t!334701))

(declare-fun tb!242587 () Bool)

(declare-fun t!334703 () Bool)

(assert (=> (and b!4037522 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))) t!334703) tb!242587))

(declare-fun result!294058 () Bool)

(assert (= result!294058 result!293986))

(assert (=> d!1196296 t!334703))

(assert (=> d!1196672 t!334699))

(declare-fun tb!242589 () Bool)

(declare-fun t!334705 () Bool)

(assert (=> (and b!4037522 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))))) t!334705) tb!242589))

(declare-fun result!294060 () Bool)

(assert (= result!294060 result!294046))

(assert (=> d!1196726 t!334705))

(declare-fun tb!242591 () Bool)

(declare-fun t!334707 () Bool)

(assert (=> (and b!4037522 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toValue!9449 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))) t!334707) tb!242591))

(declare-fun result!294062 () Bool)

(assert (= result!294062 result!294040))

(assert (=> d!1196690 t!334707))

(declare-fun tp!1226299 () Bool)

(declare-fun b_and!310295 () Bool)

(assert (=> b!4037522 (= tp!1226299 (and (=> t!334699 result!294054) (=> t!334701 result!294056) (=> t!334705 result!294060) (=> t!334707 result!294062) (=> t!334703 result!294058) b_and!310295))))

(declare-fun b_free!112475 () Bool)

(declare-fun b_next!113179 () Bool)

(assert (=> b!4037522 (= b_free!112475 (not b_next!113179))))

(declare-fun tb!242593 () Bool)

(declare-fun t!334709 () Bool)

(assert (=> (and b!4037522 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811)))))) t!334709) tb!242593))

(declare-fun result!294064 () Bool)

(assert (= result!294064 result!293942))

(assert (=> d!1196130 t!334709))

(declare-fun t!334711 () Bool)

(declare-fun tb!242595 () Bool)

(assert (=> (and b!4037522 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) t!334711) tb!242595))

(declare-fun result!294066 () Bool)

(assert (= result!294066 result!293930))

(assert (=> b!4036215 t!334711))

(declare-fun t!334713 () Bool)

(declare-fun tb!242597 () Bool)

(assert (=> (and b!4037522 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1435997)))))) t!334713) tb!242597))

(declare-fun result!294068 () Bool)

(assert (= result!294068 result!293998))

(assert (=> d!1196346 t!334713))

(declare-fun t!334715 () Bool)

(declare-fun tb!242599 () Bool)

(assert (=> (and b!4037522 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436067)))))) t!334715) tb!242599))

(declare-fun result!294070 () Bool)

(assert (= result!294070 result!294004))

(assert (=> d!1196366 t!334715))

(declare-fun t!334717 () Bool)

(declare-fun tb!242601 () Bool)

(assert (=> (and b!4037522 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toChars!9308 (transformation!6917 (rule!9985 token!484)))) t!334717) tb!242601))

(declare-fun result!294072 () Bool)

(assert (= result!294072 result!294028))

(assert (=> d!1196672 t!334717))

(declare-fun t!334719 () Bool)

(declare-fun tb!242603 () Bool)

(assert (=> (and b!4037522 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (get!14182 lt!1436043)))))) t!334719) tb!242603))

(declare-fun result!294074 () Bool)

(assert (= result!294074 result!293992))

(assert (=> d!1196316 t!334719))

(assert (=> d!1196070 t!334711))

(declare-fun tp!1226300 () Bool)

(declare-fun b_and!310297 () Bool)

(assert (=> b!4037522 (= tp!1226300 (and (=> t!334713 result!294068) (=> t!334711 result!294066) (=> t!334719 result!294074) (=> t!334715 result!294070) (=> t!334717 result!294072) (=> t!334709 result!294064) b_and!310297))))

(declare-fun e!2505212 () Bool)

(assert (=> b!4037522 (= e!2505212 (and tp!1226299 tp!1226300))))

(declare-fun b!4037521 () Bool)

(declare-fun e!2505214 () Bool)

(declare-fun tp!1226297 () Bool)

(assert (=> b!4037521 (= e!2505214 (and tp!1226297 (inv!57750 (tag!7777 (h!48644 (t!334589 (t!334589 rules!2999))))) (inv!57753 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) e!2505212))))

(declare-fun b!4037520 () Bool)

(declare-fun e!2505213 () Bool)

(declare-fun tp!1226298 () Bool)

(assert (=> b!4037520 (= e!2505213 (and e!2505214 tp!1226298))))

(assert (=> b!4036628 (= tp!1226169 e!2505213)))

(assert (= b!4037521 b!4037522))

(assert (= b!4037520 b!4037521))

(assert (= (and b!4036628 (is-Cons!43224 (t!334589 (t!334589 rules!2999)))) b!4037520))

(declare-fun m!4632237 () Bool)

(assert (=> b!4037521 m!4632237))

(declare-fun m!4632239 () Bool)

(assert (=> b!4037521 m!4632239))

(declare-fun b!4037526 () Bool)

(declare-fun e!2505216 () Bool)

(declare-fun tp!1226303 () Bool)

(declare-fun tp!1226302 () Bool)

(assert (=> b!4037526 (= e!2505216 (and tp!1226303 tp!1226302))))

(assert (=> b!4036629 (= tp!1226168 e!2505216)))

(declare-fun b!4037523 () Bool)

(assert (=> b!4037523 (= e!2505216 tp_is_empty!20615)))

(declare-fun b!4037525 () Bool)

(declare-fun tp!1226305 () Bool)

(assert (=> b!4037525 (= e!2505216 tp!1226305)))

(declare-fun b!4037524 () Bool)

(declare-fun tp!1226304 () Bool)

(declare-fun tp!1226301 () Bool)

(assert (=> b!4037524 (= e!2505216 (and tp!1226304 tp!1226301))))

(assert (= (and b!4036629 (is-ElementMatch!11822 (regex!6917 (h!48644 (t!334589 rules!2999))))) b!4037523))

(assert (= (and b!4036629 (is-Concat!18970 (regex!6917 (h!48644 (t!334589 rules!2999))))) b!4037524))

(assert (= (and b!4036629 (is-Star!11822 (regex!6917 (h!48644 (t!334589 rules!2999))))) b!4037525))

(assert (= (and b!4036629 (is-Union!11822 (regex!6917 (h!48644 (t!334589 rules!2999))))) b!4037526))

(declare-fun b_lambda!117819 () Bool)

(assert (= b_lambda!117809 (or (and b!4036083 b_free!112451) (and b!4036114 b_free!112455 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 token!484))))) (and b!4036630 b_free!112467 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 token!484))))) (and b!4037522 b_free!112475 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toChars!9308 (transformation!6917 (rule!9985 token!484))))) b_lambda!117819)))

(declare-fun b_lambda!117821 () Bool)

(assert (= b_lambda!117773 (or (and b!4036083 b_free!112451 (= (toChars!9308 (transformation!6917 (rule!9985 token!484))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))) (and b!4036114 b_free!112455 (= (toChars!9308 (transformation!6917 (h!48644 rules!2999))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))) (and b!4036630 b_free!112467 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))) (and b!4037522 b_free!112475 (= (toChars!9308 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toChars!9308 (transformation!6917 (rule!9985 (_1!24286 (v!39726 lt!1435811))))))) b_lambda!117821)))

(declare-fun b_lambda!117823 () Bool)

(assert (= b_lambda!117811 (or (and b!4036083 b_free!112449) (and b!4036114 b_free!112453 (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) (and b!4036630 b_free!112465 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) (and b!4037522 b_free!112473 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) b_lambda!117823)))

(declare-fun b_lambda!117825 () Bool)

(assert (= b_lambda!117813 (or (and b!4036083 b_free!112449) (and b!4036114 b_free!112453 (= (toValue!9449 (transformation!6917 (h!48644 rules!2999))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) (and b!4036630 b_free!112465 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 rules!2999)))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) (and b!4037522 b_free!112473 (= (toValue!9449 (transformation!6917 (h!48644 (t!334589 (t!334589 rules!2999))))) (toValue!9449 (transformation!6917 (rule!9985 token!484))))) b_lambda!117825)))

(push 1)

(assert (not b!4037289))

(assert (not d!1196620))

(assert (not b!4037490))

(assert b_and!310267)

(assert (not b!4037400))

(assert (not b!4037002))

(assert (not d!1196728))

(assert (not b!4037283))

(assert (not d!1196556))

(assert (not d!1196642))

(assert (not b_next!113155))

(assert (not b!4037390))

(assert (not b!4037314))

(assert (not b!4037439))

(assert (not b!4037518))

(assert (not b!4037301))

(assert (not b!4037293))

(assert (not b!4037358))

(assert (not d!1196370))

(assert (not b!4036221))

(assert (not b_lambda!117795))

(assert (not b!4037499))

(assert (not b!4037325))

(assert (not b!4036939))

(assert (not b_lambda!117777))

(assert (not b!4037240))

(assert (not b!4036901))

(assert (not b!4037427))

(assert (not bm!287200))

(assert (not b!4037320))

(assert (not d!1196366))

(assert (not b!4037339))

(assert (not b!4037511))

(assert (not b!4037274))

(assert (not b!4037000))

(assert (not tb!242517))

(assert (not b!4037264))

(assert (not b!4037462))

(assert (not b!4037348))

(assert (not b!4037027))

(assert (not b!4037244))

(assert (not b!4037020))

(assert (not b!4037344))

(assert (not b!4036923))

(assert (not d!1196352))

(assert (not b!4036861))

(assert (not bm!287181))

(assert (not b!4037316))

(assert (not b!4037190))

(assert (not b!4036900))

(assert (not d!1196722))

(assert (not d!1196640))

(assert (not d!1196400))

(assert (not b!4037507))

(assert (not bm!287188))

(assert (not b!4036943))

(assert (not d!1196558))

(assert (not b!4037309))

(assert (not b!4037391))

(assert (not d!1196672))

(assert (not b!4036858))

(assert (not b!4037266))

(assert (not b!4037330))

(assert (not d!1196498))

(assert (not bm!287202))

(assert (not b!4036928))

(assert (not d!1196280))

(assert (not b!4037424))

(assert (not d!1196546))

(assert (not b!4037519))

(assert (not d!1196342))

(assert (not b!4036992))

(assert (not b!4037193))

(assert (not b!4037032))

(assert (not b!4036984))

(assert (not b!4037317))

(assert (not tb!242559))

(assert (not b!4036911))

(assert (not bm!287140))

(assert (not b!4037506))

(assert (not d!1196678))

(assert (not b!4037014))

(assert (not b!4036918))

(assert (not bm!287185))

(assert (not b!4036471))

(assert (not d!1196286))

(assert (not b!4037346))

(assert (not d!1196424))

(assert (not b!4037228))

(assert (not b!4037257))

(assert (not b!4037486))

(assert (not b!4037149))

(assert (not b!4036894))

(assert (not d!1196568))

(assert (not b_lambda!117825))

(assert (not b!4037465))

(assert (not b!4036990))

(assert (not b!4037447))

(assert (not b!4037015))

(assert (not b!4037156))

(assert (not b!4037185))

(assert (not tb!242529))

(assert (not b!4037380))

(assert (not d!1196316))

(assert (not b!4037435))

(assert (not b_next!113177))

(assert (not d!1196638))

(assert (not b!4036904))

(assert (not bm!287182))

(assert (not b_lambda!117823))

(assert (not b!4037503))

(assert (not b!4037485))

(assert (not b!4037341))

(assert (not b!4037384))

(assert (not d!1196332))

(assert (not d!1196604))

(assert (not b_next!113157))

(assert (not b!4036885))

(assert (not bm!287203))

(assert (not d!1196674))

(assert (not b!4036873))

(assert (not b!4037007))

(assert (not d!1196574))

(assert (not b!4037364))

(assert (not d!1196344))

(assert (not d!1196386))

(assert (not d!1196518))

(assert (not b!4037449))

(assert (not d!1196306))

(assert (not d!1196340))

(assert (not b!4037505))

(assert (not b_lambda!117817))

(assert (not b_lambda!117819))

(assert (not d!1196594))

(assert (not b!4037394))

(assert (not b!4036998))

(assert (not b!4037169))

(assert (not d!1196578))

(assert (not d!1196614))

(assert (not b!4037022))

(assert (not b!4037354))

(assert (not b!4037497))

(assert (not b!4036912))

(assert (not b!4036903))

(assert (not b!4037413))

(assert (not b!4037268))

(assert (not b!4037366))

(assert (not d!1196398))

(assert (not d!1196564))

(assert (not b!4037397))

(assert (not b!4037273))

(assert (not b!4037262))

(assert (not b!4037253))

(assert (not b!4036854))

(assert b_and!310293)

(assert (not b!4036915))

(assert (not b!4037492))

(assert (not b!4037004))

(assert (not b!4037508))

(assert (not b!4036865))

(assert (not d!1196540))

(assert (not b!4036906))

(assert (not d!1196532))

(assert (not d!1196368))

(assert (not b!4037166))

(assert (not b!4037467))

(assert (not d!1196538))

(assert (not d!1196542))

(assert (not b!4037236))

(assert (not b!4037437))

(assert (not b!4036927))

(assert (not b!4036945))

(assert (not b!4037407))

(assert (not b!4037386))

(assert (not b!4037038))

(assert (not d!1196680))

(assert (not b!4036908))

(assert (not b!4037421))

(assert (not d!1196712))

(assert (not b!4037147))

(assert (not b!4036895))

(assert (not d!1196582))

(assert (not b!4037279))

(assert (not d!1196418))

(assert (not b!4037479))

(assert (not d!1196410))

(assert (not b!4037241))

(assert (not d!1196634))

(assert (not d!1196684))

(assert (not b!4037153))

(assert (not b!4037430))

(assert (not b!4037303))

(assert (not b!4037422))

(assert (not b!4037516))

(assert (not d!1196528))

(assert (not b!4037489))

(assert (not d!1196584))

(assert (not b!4037336))

(assert (not d!1196392))

(assert (not b!4037271))

(assert (not b!4036917))

(assert (not bm!287187))

(assert (not b!4037395))

(assert (not d!1196650))

(assert (not b!4037478))

(assert (not b!4037272))

(assert (not b!4037376))

(assert (not tb!242571))

(assert (not b!4037260))

(assert (not d!1196550))

(assert (not b!4036910))

(assert (not b!4037191))

(assert (not d!1196508))

(assert (not b!4037443))

(assert (not b!4037275))

(assert (not b!4037512))

(assert (not b!4037313))

(assert (not b!4037433))

(assert b_and!310265)

(assert (not b!4037281))

(assert (not b!4037167))

(assert (not b!4037231))

(assert (not b!4037333))

(assert b_and!310297)

(assert (not b!4037299))

(assert (not b!4036848))

(assert (not b!4037328))

(assert (not b!4037018))

(assert (not bm!287153))

(assert (not b!4037388))

(assert (not d!1196724))

(assert (not b!4037382))

(assert (not b!4037453))

(assert (not b!4037365))

(assert (not b_lambda!117797))

(assert (not b!4036852))

(assert (not b!4037491))

(assert (not b!4037285))

(assert (not d!1196648))

(assert (not b!4037270))

(assert (not b!4037419))

(assert (not b!4037454))

(assert (not b!4037246))

(assert (not b!4037305))

(assert (not b!4037515))

(assert (not b!4037429))

(assert (not b!4037520))

(assert (not b!4037476))

(assert (not b!4037248))

(assert (not b!4037297))

(assert (not d!1196500))

(assert (not b!4037023))

(assert (not d!1196338))

(assert tp_is_empty!20615)

(assert (not b!4036955))

(assert (not b!4036991))

(assert (not bm!287204))

(assert (not b!4037455))

(assert (not b!4037457))

(assert (not b!4036846))

(assert (not b!4037378))

(assert (not b_lambda!117779))

(assert (not b!4036913))

(assert (not b!4036887))

(assert (not b!4037525))

(assert (not b!4037161))

(assert (not b!4037495))

(assert (not b!4037292))

(assert (not b!4037359))

(assert (not b!4036875))

(assert (not b!4037481))

(assert (not bm!287150))

(assert (not d!1196314))

(assert (not d!1196384))

(assert (not b_next!113179))

(assert (not tb!242535))

(assert (not b_next!113159))

(assert (not b!4037494))

(assert (not b!4036937))

(assert (not b!4037463))

(assert (not b_next!113171))

(assert (not b!4037501))

(assert (not b!4036919))

(assert (not b!4037138))

(assert (not bm!287183))

(assert (not b!4037487))

(assert (not b_next!113153))

(assert (not b_lambda!117799))

(assert (not b!4037237))

(assert (not tb!242577))

(assert (not bm!287201))

(assert (not d!1196282))

(assert (not b!4037461))

(assert (not d!1196534))

(assert (not d!1196612))

(assert (not bm!287151))

(assert (not b!4036985))

(assert (not d!1196606))

(assert (not b!4037368))

(assert (not b!4036953))

(assert (not b!4037411))

(assert (not b!4037287))

(assert (not b!4036870))

(assert (not b!4036942))

(assert (not b!4037182))

(assert b_and!310291)

(assert b_and!310269)

(assert (not d!1196608))

(assert (not b!4037310))

(assert (not b!4037280))

(assert (not b!4036874))

(assert (not b!4037401))

(assert (not d!1196536))

(assert (not b!4037291))

(assert (not b!4036860))

(assert (not b!4037521))

(assert (not b!4036845))

(assert (not b!4037306))

(assert (not b!4037269))

(assert (not tb!242565))

(assert (not b_next!113169))

(assert (not b!4036988))

(assert (not d!1196356))

(assert (not b!4036879))

(assert b_and!310295)

(assert (not b!4036925))

(assert (not d!1196364))

(assert (not bm!287186))

(assert (not b!4037033))

(assert (not b!4037338))

(assert (not b!4037308))

(assert (not b!4037155))

(assert (not b!4037188))

(assert (not b!4037284))

(assert (not b!4037172))

(assert (not b!4036921))

(assert (not b!4037509))

(assert (not b!4037312))

(assert (not b!4036850))

(assert (not b_lambda!117821))

(assert (not b!4037218))

(assert (not b!4037367))

(assert (not b!4037445))

(assert (not b!4036976))

(assert (not b!4037502))

(assert (not b!4037363))

(assert (not b!4037482))

(assert (not b!4037350))

(assert (not b!4037277))

(assert b_and!310289)

(assert (not b!4037321))

(assert (not b!4037265))

(assert (not b!4037369))

(assert (not d!1196686))

(assert (not d!1196692))

(assert (not b!4037252))

(assert (not bm!287147))

(assert (not d!1196434))

(assert (not b!4037498))

(assert (not d!1196420))

(assert (not b!4036935))

(assert (not b!4037526))

(assert (not b!4036864))

(assert (not b_lambda!117815))

(assert (not b!4037296))

(assert (not b!4037180))

(assert (not b!4037230))

(assert (not b!4037249))

(assert (not b!4036878))

(assert (not b!4037524))

(assert (not b!4036856))

(assert (not d!1196610))

(assert (not b!4036916))

(assert (not b!4036941))

(assert (not b!4037416))

(assert (not d!1196554))

(assert (not b!4036889))

(assert (not bm!287148))

(assert (not tb!242523))

(assert (not b!4037517))

(assert (not b!4036849))

(assert (not d!1196362))

(assert (not b!4037493))

(assert (not b!4036930))

(assert (not b!4037324))

(assert (not b!4037513))

(assert (not b!4037458))

(assert (not b!4037030))

(assert (not d!1196298))

(assert (not b!4037352))

(assert (not b!4037256))

(assert (not b!4037164))

(assert (not b!4037232))

(assert (not b!4037441))

(assert (not b!4037410))

(assert (not bm!287184))

(assert (not b!4037146))

(assert (not b!4037451))

(assert (not b!4037361))

(assert (not b!4037196))

(assert (not d!1196322))

(assert (not b!4036914))

(assert (not b!4037234))

(assert (not b_lambda!117775))

(assert (not b!4036933))

(assert (not b!4036871))

(assert (not b!4037311))

(assert (not b!4037459))

(assert (not d!1196644))

(assert (not b!4037483))

(assert (not b!4037295))

(assert (not d!1196520))

(assert (not b!4036893))

(assert (not b!4037399))

(assert (not d!1196346))

(assert (not b!4037001))

(assert (not b!4036946))

(assert (not bm!287180))

(assert (not b!4037477))

(assert (not d!1196432))

(assert (not b!4037466))

(assert (not d!1196430))

(assert (not bm!287189))

(assert (not d!1196522))

(assert (not b!4037035))

(assert (not b!4037355))

(assert (not b_lambda!117801))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!113177))

(assert (not b_next!113157))

(assert b_and!310293)

(assert b_and!310265)

(assert b_and!310297)

(assert b_and!310289)

(assert b_and!310267)

(assert (not b_next!113155))

(assert (not b_next!113179))

(assert (not b_next!113159))

(assert (not b_next!113153))

(assert (not b_next!113171))

(assert b_and!310291)

(assert b_and!310269)

(assert (not b_next!113169))

(assert b_and!310295)

(check-sat)

(pop 1)


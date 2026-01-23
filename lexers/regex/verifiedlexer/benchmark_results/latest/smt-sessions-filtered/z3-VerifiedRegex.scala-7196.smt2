; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383704 () Bool)

(assert start!383704)

(declare-fun b!4067740 () Bool)

(declare-fun b_free!113145 () Bool)

(declare-fun b_next!113849 () Bool)

(assert (=> b!4067740 (= b_free!113145 (not b_next!113849))))

(declare-fun tp!1231214 () Bool)

(declare-fun b_and!312627 () Bool)

(assert (=> b!4067740 (= tp!1231214 b_and!312627)))

(declare-fun b_free!113147 () Bool)

(declare-fun b_next!113851 () Bool)

(assert (=> b!4067740 (= b_free!113147 (not b_next!113851))))

(declare-fun tp!1231211 () Bool)

(declare-fun b_and!312629 () Bool)

(assert (=> b!4067740 (= tp!1231211 b_and!312629)))

(declare-fun b!4067749 () Bool)

(declare-fun b_free!113149 () Bool)

(declare-fun b_next!113853 () Bool)

(assert (=> b!4067749 (= b_free!113149 (not b_next!113853))))

(declare-fun tp!1231209 () Bool)

(declare-fun b_and!312631 () Bool)

(assert (=> b!4067749 (= tp!1231209 b_and!312631)))

(declare-fun b_free!113151 () Bool)

(declare-fun b_next!113855 () Bool)

(assert (=> b!4067749 (= b_free!113151 (not b_next!113855))))

(declare-fun tp!1231204 () Bool)

(declare-fun b_and!312633 () Bool)

(assert (=> b!4067749 (= tp!1231204 b_and!312633)))

(declare-fun b!4067734 () Bool)

(declare-fun res!1660408 () Bool)

(declare-fun e!2524427 () Bool)

(assert (=> b!4067734 (=> res!1660408 e!2524427)))

(declare-datatypes ((C!23956 0))(
  ( (C!23957 (val!14072 Int)) )
))
(declare-datatypes ((List!43569 0))(
  ( (Nil!43445) (Cons!43445 (h!48865 C!23956) (t!336920 List!43569)) )
))
(declare-datatypes ((IArray!26387 0))(
  ( (IArray!26388 (innerList!13251 List!43569)) )
))
(declare-datatypes ((Conc!13191 0))(
  ( (Node!13191 (left!32675 Conc!13191) (right!33005 Conc!13191) (csize!26612 Int) (cheight!13402 Int)) (Leaf!20388 (xs!16497 IArray!26387) (csize!26613 Int)) (Empty!13191) )
))
(declare-datatypes ((BalanceConc!25976 0))(
  ( (BalanceConc!25977 (c!702310 Conc!13191)) )
))
(declare-datatypes ((String!49767 0))(
  ( (String!49768 (value!219538 String)) )
))
(declare-datatypes ((List!43570 0))(
  ( (Nil!43446) (Cons!43446 (h!48866 (_ BitVec 16)) (t!336921 List!43570)) )
))
(declare-datatypes ((TokenValue!7210 0))(
  ( (FloatLiteralValue!14420 (text!50915 List!43570)) (TokenValueExt!7209 (__x!26637 Int)) (Broken!36050 (value!219539 List!43570)) (Object!7333) (End!7210) (Def!7210) (Underscore!7210) (Match!7210) (Else!7210) (Error!7210) (Case!7210) (If!7210) (Extends!7210) (Abstract!7210) (Class!7210) (Val!7210) (DelimiterValue!14420 (del!7270 List!43570)) (KeywordValue!7216 (value!219540 List!43570)) (CommentValue!14420 (value!219541 List!43570)) (WhitespaceValue!14420 (value!219542 List!43570)) (IndentationValue!7210 (value!219543 List!43570)) (String!49769) (Int32!7210) (Broken!36051 (value!219544 List!43570)) (Boolean!7211) (Unit!63004) (OperatorValue!7213 (op!7270 List!43570)) (IdentifierValue!14420 (value!219545 List!43570)) (IdentifierValue!14421 (value!219546 List!43570)) (WhitespaceValue!14421 (value!219547 List!43570)) (True!14420) (False!14420) (Broken!36052 (value!219548 List!43570)) (Broken!36053 (value!219549 List!43570)) (True!14421) (RightBrace!7210) (RightBracket!7210) (Colon!7210) (Null!7210) (Comma!7210) (LeftBracket!7210) (False!14421) (LeftBrace!7210) (ImaginaryLiteralValue!7210 (text!50916 List!43570)) (StringLiteralValue!21630 (value!219550 List!43570)) (EOFValue!7210 (value!219551 List!43570)) (IdentValue!7210 (value!219552 List!43570)) (DelimiterValue!14421 (value!219553 List!43570)) (DedentValue!7210 (value!219554 List!43570)) (NewLineValue!7210 (value!219555 List!43570)) (IntegerValue!21630 (value!219556 (_ BitVec 32)) (text!50917 List!43570)) (IntegerValue!21631 (value!219557 Int) (text!50918 List!43570)) (Times!7210) (Or!7210) (Equal!7210) (Minus!7210) (Broken!36054 (value!219558 List!43570)) (And!7210) (Div!7210) (LessEqual!7210) (Mod!7210) (Concat!19095) (Not!7210) (Plus!7210) (SpaceValue!7210 (value!219559 List!43570)) (IntegerValue!21632 (value!219560 Int) (text!50919 List!43570)) (StringLiteralValue!21631 (text!50920 List!43570)) (FloatLiteralValue!14421 (text!50921 List!43570)) (BytesLiteralValue!7210 (value!219561 List!43570)) (CommentValue!14421 (value!219562 List!43570)) (StringLiteralValue!21632 (value!219563 List!43570)) (ErrorTokenValue!7210 (msg!7271 List!43570)) )
))
(declare-datatypes ((Regex!11885 0))(
  ( (ElementMatch!11885 (c!702311 C!23956)) (Concat!19096 (regOne!24282 Regex!11885) (regTwo!24282 Regex!11885)) (EmptyExpr!11885) (Star!11885 (reg!12214 Regex!11885)) (EmptyLang!11885) (Union!11885 (regOne!24283 Regex!11885) (regTwo!24283 Regex!11885)) )
))
(declare-datatypes ((TokenValueInjection!13848 0))(
  ( (TokenValueInjection!13849 (toValue!9540 Int) (toChars!9399 Int)) )
))
(declare-datatypes ((Rule!13760 0))(
  ( (Rule!13761 (regex!6980 Regex!11885) (tag!7840 String!49767) (isSeparator!6980 Bool) (transformation!6980 TokenValueInjection!13848)) )
))
(declare-datatypes ((List!43571 0))(
  ( (Nil!43447) (Cons!43447 (h!48867 Rule!13760) (t!336922 List!43571)) )
))
(declare-fun rules!2999 () List!43571)

(declare-datatypes ((Token!13098 0))(
  ( (Token!13099 (value!219564 TokenValue!7210) (rule!10082 Rule!13760) (size!32481 Int) (originalCharacters!7580 List!43569)) )
))
(declare-fun token!484 () Token!13098)

(declare-fun contains!8646 (List!43571 Rule!13760) Bool)

(assert (=> b!4067734 (= res!1660408 (not (contains!8646 rules!2999 (rule!10082 token!484))))))

(declare-fun b!4067735 () Bool)

(declare-fun res!1660412 () Bool)

(declare-fun e!2524441 () Bool)

(assert (=> b!4067735 (=> (not res!1660412) (not e!2524441))))

(declare-datatypes ((LexerInterface!6569 0))(
  ( (LexerInterfaceExt!6566 (__x!26638 Int)) (Lexer!6567) )
))
(declare-fun thiss!21717 () LexerInterface!6569)

(declare-fun rulesInvariant!5912 (LexerInterface!6569 List!43571) Bool)

(assert (=> b!4067735 (= res!1660412 (rulesInvariant!5912 thiss!21717 rules!2999))))

(declare-fun b!4067736 () Bool)

(declare-fun res!1660425 () Bool)

(assert (=> b!4067736 (=> (not res!1660425) (not e!2524441))))

(declare-fun suffix!1299 () List!43569)

(declare-fun newSuffix!27 () List!43569)

(declare-fun size!32482 (List!43569) Int)

(assert (=> b!4067736 (= res!1660425 (>= (size!32482 suffix!1299) (size!32482 newSuffix!27)))))

(declare-fun b!4067737 () Bool)

(declare-fun e!2524451 () Bool)

(declare-fun tp_is_empty!20741 () Bool)

(declare-fun tp!1231212 () Bool)

(assert (=> b!4067737 (= e!2524451 (and tp_is_empty!20741 tp!1231212))))

(declare-fun b!4067738 () Bool)

(declare-fun e!2524444 () Bool)

(assert (=> b!4067738 (= e!2524444 e!2524427)))

(declare-fun res!1660437 () Bool)

(assert (=> b!4067738 (=> res!1660437 e!2524427)))

(declare-datatypes ((tuple2!42498 0))(
  ( (tuple2!42499 (_1!24383 Token!13098) (_2!24383 List!43569)) )
))
(declare-datatypes ((Option!9394 0))(
  ( (None!9393) (Some!9393 (v!39823 tuple2!42498)) )
))
(declare-fun lt!1455698 () Option!9394)

(assert (=> b!4067738 (= res!1660437 (not (contains!8646 rules!2999 (rule!10082 (_1!24383 (v!39823 lt!1455698))))))))

(declare-datatypes ((Unit!63005 0))(
  ( (Unit!63006) )
))
(declare-fun lt!1455723 () Unit!63005)

(declare-fun e!2524423 () Unit!63005)

(assert (=> b!4067738 (= lt!1455723 e!2524423)))

(declare-fun c!702307 () Bool)

(declare-fun lt!1455709 () Int)

(declare-fun lt!1455665 () Int)

(assert (=> b!4067738 (= c!702307 (> lt!1455709 lt!1455665))))

(declare-fun lt!1455679 () Unit!63005)

(declare-fun e!2524418 () Unit!63005)

(assert (=> b!4067738 (= lt!1455679 e!2524418)))

(declare-fun c!702306 () Bool)

(assert (=> b!4067738 (= c!702306 (< lt!1455709 lt!1455665))))

(declare-fun getIndex!592 (List!43571 Rule!13760) Int)

(assert (=> b!4067738 (= lt!1455665 (getIndex!592 rules!2999 (rule!10082 token!484)))))

(assert (=> b!4067738 (= lt!1455709 (getIndex!592 rules!2999 (rule!10082 (_1!24383 (v!39823 lt!1455698)))))))

(declare-fun newSuffixResult!27 () List!43569)

(assert (=> b!4067738 (= (_2!24383 (v!39823 lt!1455698)) newSuffixResult!27)))

(declare-fun lt!1455695 () List!43569)

(declare-fun lt!1455673 () Unit!63005)

(declare-fun lt!1455693 () List!43569)

(declare-fun lt!1455678 () List!43569)

(declare-fun lemmaSamePrefixThenSameSuffix!2228 (List!43569 List!43569 List!43569 List!43569 List!43569) Unit!63005)

(assert (=> b!4067738 (= lt!1455673 (lemmaSamePrefixThenSameSuffix!2228 lt!1455678 (_2!24383 (v!39823 lt!1455698)) lt!1455695 newSuffixResult!27 lt!1455693))))

(assert (=> b!4067738 (= lt!1455678 lt!1455695)))

(declare-fun lt!1455666 () Unit!63005)

(declare-fun lemmaIsPrefixSameLengthThenSameList!957 (List!43569 List!43569 List!43569) Unit!63005)

(assert (=> b!4067738 (= lt!1455666 (lemmaIsPrefixSameLengthThenSameList!957 lt!1455678 lt!1455695 lt!1455693))))

(declare-fun b!4067739 () Bool)

(declare-fun Unit!63007 () Unit!63005)

(assert (=> b!4067739 (= e!2524423 Unit!63007)))

(declare-fun lt!1455710 () Unit!63005)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!308 (LexerInterface!6569 List!43571 Rule!13760 List!43569 List!43569 Rule!13760) Unit!63005)

(assert (=> b!4067739 (= lt!1455710 (lemmaMaxPrefNoSmallerRuleMatches!308 thiss!21717 rules!2999 (rule!10082 (_1!24383 (v!39823 lt!1455698))) lt!1455678 lt!1455693 (rule!10082 token!484)))))

(declare-fun res!1660413 () Bool)

(declare-fun matchR!5838 (Regex!11885 List!43569) Bool)

(assert (=> b!4067739 (= res!1660413 (not (matchR!5838 (regex!6980 (rule!10082 token!484)) lt!1455678)))))

(declare-fun e!2524424 () Bool)

(assert (=> b!4067739 (=> (not res!1660413) (not e!2524424))))

(assert (=> b!4067739 e!2524424))

(declare-fun res!1660421 () Bool)

(assert (=> start!383704 (=> (not res!1660421) (not e!2524441))))

(get-info :version)

(assert (=> start!383704 (= res!1660421 ((_ is Lexer!6567) thiss!21717))))

(assert (=> start!383704 e!2524441))

(declare-fun e!2524454 () Bool)

(assert (=> start!383704 e!2524454))

(declare-fun e!2524434 () Bool)

(declare-fun inv!58080 (Token!13098) Bool)

(assert (=> start!383704 (and (inv!58080 token!484) e!2524434)))

(declare-fun e!2524452 () Bool)

(assert (=> start!383704 e!2524452))

(assert (=> start!383704 e!2524451))

(declare-fun e!2524442 () Bool)

(assert (=> start!383704 e!2524442))

(assert (=> start!383704 true))

(declare-fun e!2524443 () Bool)

(assert (=> start!383704 e!2524443))

(declare-fun e!2524450 () Bool)

(assert (=> start!383704 e!2524450))

(declare-fun e!2524432 () Bool)

(assert (=> b!4067740 (= e!2524432 (and tp!1231214 tp!1231211))))

(declare-fun b!4067741 () Bool)

(declare-fun e!2524426 () Bool)

(declare-fun e!2524449 () Bool)

(assert (=> b!4067741 (= e!2524426 e!2524449)))

(declare-fun res!1660434 () Bool)

(assert (=> b!4067741 (=> res!1660434 e!2524449)))

(declare-fun lt!1455677 () Option!9394)

(declare-fun lt!1455699 () Option!9394)

(assert (=> b!4067741 (= res!1660434 (not (= lt!1455677 lt!1455699)))))

(declare-fun lt!1455680 () Token!13098)

(declare-fun suffixResult!105 () List!43569)

(assert (=> b!4067741 (= lt!1455677 (Some!9393 (tuple2!42499 lt!1455680 suffixResult!105)))))

(declare-fun lt!1455681 () List!43569)

(declare-fun maxPrefixOneRule!2879 (LexerInterface!6569 Rule!13760 List!43569) Option!9394)

(assert (=> b!4067741 (= lt!1455677 (maxPrefixOneRule!2879 thiss!21717 (rule!10082 token!484) lt!1455681))))

(declare-fun lt!1455714 () TokenValue!7210)

(declare-fun lt!1455686 () Int)

(assert (=> b!4067741 (= lt!1455680 (Token!13099 lt!1455714 (rule!10082 token!484) lt!1455686 lt!1455695))))

(declare-fun apply!10169 (TokenValueInjection!13848 BalanceConc!25976) TokenValue!7210)

(declare-fun seqFromList!5197 (List!43569) BalanceConc!25976)

(assert (=> b!4067741 (= lt!1455714 (apply!10169 (transformation!6980 (rule!10082 token!484)) (seqFromList!5197 lt!1455695)))))

(declare-fun lt!1455722 () Unit!63005)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1685 (LexerInterface!6569 List!43571 List!43569 List!43569 List!43569 Rule!13760) Unit!63005)

(assert (=> b!4067741 (= lt!1455722 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1685 thiss!21717 rules!2999 lt!1455695 lt!1455681 suffixResult!105 (rule!10082 token!484)))))

(declare-fun lt!1455712 () List!43569)

(assert (=> b!4067741 (= lt!1455712 suffixResult!105)))

(declare-fun lt!1455670 () Unit!63005)

(assert (=> b!4067741 (= lt!1455670 (lemmaSamePrefixThenSameSuffix!2228 lt!1455695 lt!1455712 lt!1455695 suffixResult!105 lt!1455681))))

(declare-fun lt!1455671 () List!43569)

(declare-fun isPrefix!4067 (List!43569 List!43569) Bool)

(assert (=> b!4067741 (isPrefix!4067 lt!1455695 lt!1455671)))

(declare-fun lt!1455683 () Unit!63005)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2902 (List!43569 List!43569) Unit!63005)

(assert (=> b!4067741 (= lt!1455683 (lemmaConcatTwoListThenFirstIsPrefix!2902 lt!1455695 lt!1455712))))

(declare-fun b!4067742 () Bool)

(declare-fun e!2524439 () Bool)

(declare-fun e!2524445 () Bool)

(assert (=> b!4067742 (= e!2524439 (not e!2524445))))

(declare-fun res!1660420 () Bool)

(assert (=> b!4067742 (=> res!1660420 e!2524445)))

(declare-fun lt!1455708 () List!43569)

(assert (=> b!4067742 (= res!1660420 (not (= lt!1455708 lt!1455681)))))

(declare-fun ++!11382 (List!43569 List!43569) List!43569)

(assert (=> b!4067742 (= lt!1455708 (++!11382 lt!1455695 suffixResult!105))))

(declare-fun lt!1455684 () Unit!63005)

(declare-fun lemmaInv!1189 (TokenValueInjection!13848) Unit!63005)

(assert (=> b!4067742 (= lt!1455684 (lemmaInv!1189 (transformation!6980 (rule!10082 token!484))))))

(declare-fun ruleValid!2910 (LexerInterface!6569 Rule!13760) Bool)

(assert (=> b!4067742 (ruleValid!2910 thiss!21717 (rule!10082 token!484))))

(declare-fun lt!1455711 () Unit!63005)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1980 (LexerInterface!6569 Rule!13760 List!43571) Unit!63005)

(assert (=> b!4067742 (= lt!1455711 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1980 thiss!21717 (rule!10082 token!484) rules!2999))))

(declare-fun b!4067743 () Bool)

(declare-fun e!2524429 () Unit!63005)

(declare-fun Unit!63008 () Unit!63005)

(assert (=> b!4067743 (= e!2524429 Unit!63008)))

(declare-fun b!4067744 () Bool)

(declare-fun e!2524414 () Bool)

(declare-fun e!2524440 () Bool)

(assert (=> b!4067744 (= e!2524414 e!2524440)))

(declare-fun res!1660435 () Bool)

(assert (=> b!4067744 (=> (not res!1660435) (not e!2524440))))

(declare-fun lt!1455717 () List!43569)

(assert (=> b!4067744 (= res!1660435 (= lt!1455717 lt!1455693))))

(declare-fun prefix!494 () List!43569)

(assert (=> b!4067744 (= lt!1455693 (++!11382 prefix!494 newSuffix!27))))

(assert (=> b!4067744 (= lt!1455717 (++!11382 lt!1455695 newSuffixResult!27))))

(declare-fun b!4067745 () Bool)

(declare-fun e!2524415 () Bool)

(declare-fun e!2524428 () Bool)

(assert (=> b!4067745 (= e!2524415 e!2524428)))

(declare-fun res!1660431 () Bool)

(assert (=> b!4067745 (=> res!1660431 e!2524428)))

(declare-fun lt!1455700 () Option!9394)

(assert (=> b!4067745 (= res!1660431 (not (= lt!1455700 (Some!9393 (v!39823 lt!1455698)))))))

(assert (=> b!4067745 (isPrefix!4067 lt!1455678 (++!11382 lt!1455678 newSuffixResult!27))))

(declare-fun lt!1455682 () Unit!63005)

(assert (=> b!4067745 (= lt!1455682 (lemmaConcatTwoListThenFirstIsPrefix!2902 lt!1455678 newSuffixResult!27))))

(declare-fun lt!1455675 () List!43569)

(assert (=> b!4067745 (isPrefix!4067 lt!1455678 lt!1455675)))

(assert (=> b!4067745 (= lt!1455675 (++!11382 lt!1455678 (_2!24383 (v!39823 lt!1455698))))))

(declare-fun lt!1455705 () Unit!63005)

(assert (=> b!4067745 (= lt!1455705 (lemmaConcatTwoListThenFirstIsPrefix!2902 lt!1455678 (_2!24383 (v!39823 lt!1455698))))))

(declare-fun lt!1455706 () Int)

(declare-fun lt!1455725 () TokenValue!7210)

(assert (=> b!4067745 (= lt!1455700 (Some!9393 (tuple2!42499 (Token!13099 lt!1455725 (rule!10082 (_1!24383 (v!39823 lt!1455698))) lt!1455706 lt!1455678) (_2!24383 (v!39823 lt!1455698)))))))

(assert (=> b!4067745 (= lt!1455700 (maxPrefixOneRule!2879 thiss!21717 (rule!10082 (_1!24383 (v!39823 lt!1455698))) lt!1455693))))

(assert (=> b!4067745 (= lt!1455706 (size!32482 lt!1455678))))

(assert (=> b!4067745 (= lt!1455725 (apply!10169 (transformation!6980 (rule!10082 (_1!24383 (v!39823 lt!1455698)))) (seqFromList!5197 lt!1455678)))))

(declare-fun lt!1455728 () Unit!63005)

(assert (=> b!4067745 (= lt!1455728 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1685 thiss!21717 rules!2999 lt!1455678 lt!1455693 (_2!24383 (v!39823 lt!1455698)) (rule!10082 (_1!24383 (v!39823 lt!1455698)))))))

(declare-fun list!16198 (BalanceConc!25976) List!43569)

(declare-fun charsOf!4796 (Token!13098) BalanceConc!25976)

(assert (=> b!4067745 (= lt!1455678 (list!16198 (charsOf!4796 (_1!24383 (v!39823 lt!1455698)))))))

(declare-fun lt!1455702 () Unit!63005)

(assert (=> b!4067745 (= lt!1455702 (lemmaInv!1189 (transformation!6980 (rule!10082 (_1!24383 (v!39823 lt!1455698))))))))

(assert (=> b!4067745 (ruleValid!2910 thiss!21717 (rule!10082 (_1!24383 (v!39823 lt!1455698))))))

(declare-fun lt!1455688 () Unit!63005)

(assert (=> b!4067745 (= lt!1455688 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1980 thiss!21717 (rule!10082 (_1!24383 (v!39823 lt!1455698))) rules!2999))))

(declare-fun lt!1455669 () Unit!63005)

(declare-fun lemmaCharactersSize!1499 (Token!13098) Unit!63005)

(assert (=> b!4067745 (= lt!1455669 (lemmaCharactersSize!1499 token!484))))

(declare-fun lt!1455672 () Unit!63005)

(assert (=> b!4067745 (= lt!1455672 (lemmaCharactersSize!1499 (_1!24383 (v!39823 lt!1455698))))))

(declare-fun b!4067746 () Bool)

(declare-fun e!2524420 () Bool)

(assert (=> b!4067746 (= e!2524445 e!2524420)))

(declare-fun res!1660430 () Bool)

(assert (=> b!4067746 (=> res!1660430 e!2524420)))

(assert (=> b!4067746 (= res!1660430 (not (isPrefix!4067 lt!1455695 lt!1455681)))))

(assert (=> b!4067746 (isPrefix!4067 prefix!494 lt!1455681)))

(declare-fun lt!1455676 () Unit!63005)

(assert (=> b!4067746 (= lt!1455676 (lemmaConcatTwoListThenFirstIsPrefix!2902 prefix!494 suffix!1299))))

(assert (=> b!4067746 (isPrefix!4067 lt!1455695 lt!1455708)))

(declare-fun lt!1455668 () Unit!63005)

(assert (=> b!4067746 (= lt!1455668 (lemmaConcatTwoListThenFirstIsPrefix!2902 lt!1455695 suffixResult!105))))

(declare-fun tp!1231205 () Bool)

(declare-fun e!2524422 () Bool)

(declare-fun b!4067747 () Bool)

(declare-fun inv!58077 (String!49767) Bool)

(declare-fun inv!58081 (TokenValueInjection!13848) Bool)

(assert (=> b!4067747 (= e!2524422 (and tp!1231205 (inv!58077 (tag!7840 (rule!10082 token!484))) (inv!58081 (transformation!6980 (rule!10082 token!484))) e!2524432))))

(declare-fun b!4067748 () Bool)

(declare-fun e!2524437 () Bool)

(assert (=> b!4067748 (= e!2524420 e!2524437)))

(declare-fun res!1660429 () Bool)

(assert (=> b!4067748 (=> res!1660429 e!2524437)))

(declare-fun lt!1455663 () List!43569)

(assert (=> b!4067748 (= res!1660429 (not (= lt!1455663 prefix!494)))))

(declare-fun lt!1455696 () List!43569)

(assert (=> b!4067748 (= lt!1455663 (++!11382 lt!1455695 lt!1455696))))

(declare-fun getSuffix!2484 (List!43569 List!43569) List!43569)

(assert (=> b!4067748 (= lt!1455696 (getSuffix!2484 prefix!494 lt!1455695))))

(assert (=> b!4067748 (isPrefix!4067 lt!1455695 prefix!494)))

(declare-fun lt!1455664 () Unit!63005)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!631 (List!43569 List!43569 List!43569) Unit!63005)

(assert (=> b!4067748 (= lt!1455664 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!631 prefix!494 lt!1455695 lt!1455681))))

(declare-fun e!2524425 () Bool)

(assert (=> b!4067749 (= e!2524425 (and tp!1231209 tp!1231204))))

(declare-fun b!4067750 () Bool)

(assert (=> b!4067750 (= e!2524427 (= lt!1455709 lt!1455665))))

(declare-fun b!4067751 () Bool)

(assert (=> b!4067751 (= e!2524440 e!2524439)))

(declare-fun res!1660418 () Bool)

(assert (=> b!4067751 (=> (not res!1660418) (not e!2524439))))

(declare-fun maxPrefix!3867 (LexerInterface!6569 List!43571 List!43569) Option!9394)

(assert (=> b!4067751 (= res!1660418 (= (maxPrefix!3867 thiss!21717 rules!2999 lt!1455681) lt!1455699))))

(declare-fun lt!1455687 () tuple2!42498)

(assert (=> b!4067751 (= lt!1455699 (Some!9393 lt!1455687))))

(assert (=> b!4067751 (= lt!1455687 (tuple2!42499 token!484 suffixResult!105))))

(assert (=> b!4067751 (= lt!1455681 (++!11382 prefix!494 suffix!1299))))

(declare-fun b!4067752 () Bool)

(declare-fun tp!1231203 () Bool)

(declare-fun inv!21 (TokenValue!7210) Bool)

(assert (=> b!4067752 (= e!2524434 (and (inv!21 (value!219564 token!484)) e!2524422 tp!1231203))))

(declare-fun b!4067753 () Bool)

(declare-fun e!2524433 () Bool)

(assert (=> b!4067753 (= e!2524433 false)))

(declare-fun b!4067754 () Bool)

(declare-fun res!1660426 () Bool)

(declare-fun e!2524448 () Bool)

(assert (=> b!4067754 (=> (not res!1660426) (not e!2524448))))

(assert (=> b!4067754 (= res!1660426 (= (size!32481 token!484) (size!32482 (originalCharacters!7580 token!484))))))

(declare-fun b!4067755 () Bool)

(declare-fun res!1660406 () Bool)

(assert (=> b!4067755 (=> (not res!1660406) (not e!2524441))))

(declare-fun isEmpty!25929 (List!43571) Bool)

(assert (=> b!4067755 (= res!1660406 (not (isEmpty!25929 rules!2999)))))

(declare-fun b!4067756 () Bool)

(declare-fun e!2524453 () Bool)

(assert (=> b!4067756 (= e!2524453 e!2524444)))

(declare-fun res!1660409 () Bool)

(assert (=> b!4067756 (=> res!1660409 e!2524444)))

(assert (=> b!4067756 (= res!1660409 (not (= lt!1455686 lt!1455706)))))

(declare-fun lt!1455727 () Unit!63005)

(assert (=> b!4067756 (= lt!1455727 e!2524429)))

(declare-fun c!702309 () Bool)

(assert (=> b!4067756 (= c!702309 (< lt!1455706 lt!1455686))))

(declare-fun lt!1455724 () Unit!63005)

(declare-fun e!2524416 () Unit!63005)

(assert (=> b!4067756 (= lt!1455724 e!2524416)))

(declare-fun c!702308 () Bool)

(assert (=> b!4067756 (= c!702308 (> lt!1455706 lt!1455686))))

(declare-fun lt!1455694 () List!43569)

(assert (=> b!4067756 (= (_2!24383 (v!39823 lt!1455698)) lt!1455694)))

(declare-fun lt!1455703 () Unit!63005)

(assert (=> b!4067756 (= lt!1455703 (lemmaSamePrefixThenSameSuffix!2228 lt!1455678 (_2!24383 (v!39823 lt!1455698)) lt!1455678 lt!1455694 lt!1455693))))

(declare-fun lt!1455707 () List!43569)

(assert (=> b!4067756 (isPrefix!4067 lt!1455678 lt!1455707)))

(declare-fun lt!1455718 () Unit!63005)

(assert (=> b!4067756 (= lt!1455718 (lemmaConcatTwoListThenFirstIsPrefix!2902 lt!1455678 lt!1455694))))

(declare-fun b!4067757 () Bool)

(declare-fun tp!1231210 () Bool)

(assert (=> b!4067757 (= e!2524454 (and tp_is_empty!20741 tp!1231210))))

(declare-fun b!4067758 () Bool)

(declare-fun res!1660423 () Bool)

(assert (=> b!4067758 (=> (not res!1660423) (not e!2524448))))

(assert (=> b!4067758 (= res!1660423 (= (value!219564 token!484) lt!1455714))))

(declare-fun b!4067759 () Bool)

(declare-fun e!2524446 () Bool)

(assert (=> b!4067759 (= e!2524446 e!2524415)))

(declare-fun res!1660419 () Bool)

(assert (=> b!4067759 (=> res!1660419 e!2524415)))

(assert (=> b!4067759 (= res!1660419 (not ((_ is Some!9393) lt!1455698)))))

(assert (=> b!4067759 (= lt!1455698 (maxPrefix!3867 thiss!21717 rules!2999 lt!1455693))))

(declare-fun lt!1455729 () List!43569)

(assert (=> b!4067759 (and (= suffixResult!105 lt!1455729) (= lt!1455687 (tuple2!42499 lt!1455680 lt!1455729)))))

(declare-fun lt!1455721 () Unit!63005)

(assert (=> b!4067759 (= lt!1455721 (lemmaSamePrefixThenSameSuffix!2228 lt!1455695 suffixResult!105 lt!1455695 lt!1455729 lt!1455681))))

(declare-fun lt!1455692 () List!43569)

(assert (=> b!4067759 (isPrefix!4067 lt!1455695 lt!1455692)))

(declare-fun lt!1455690 () Unit!63005)

(assert (=> b!4067759 (= lt!1455690 (lemmaConcatTwoListThenFirstIsPrefix!2902 lt!1455695 lt!1455729))))

(declare-fun b!4067760 () Bool)

(declare-fun e!2524430 () Bool)

(assert (=> b!4067760 (= e!2524428 e!2524430)))

(declare-fun res!1660436 () Bool)

(assert (=> b!4067760 (=> res!1660436 e!2524430)))

(declare-fun lt!1455689 () List!43569)

(assert (=> b!4067760 (= res!1660436 (not (= lt!1455689 suffix!1299)))))

(declare-fun lt!1455697 () List!43569)

(assert (=> b!4067760 (= lt!1455689 (++!11382 newSuffix!27 lt!1455697))))

(assert (=> b!4067760 (= lt!1455697 (getSuffix!2484 suffix!1299 newSuffix!27))))

(declare-fun b!4067761 () Bool)

(assert (=> b!4067761 (= e!2524441 e!2524414)))

(declare-fun res!1660416 () Bool)

(assert (=> b!4067761 (=> (not res!1660416) (not e!2524414))))

(declare-fun lt!1455704 () Int)

(assert (=> b!4067761 (= res!1660416 (>= lt!1455704 lt!1455686))))

(assert (=> b!4067761 (= lt!1455686 (size!32482 lt!1455695))))

(assert (=> b!4067761 (= lt!1455704 (size!32482 prefix!494))))

(assert (=> b!4067761 (= lt!1455695 (list!16198 (charsOf!4796 token!484)))))

(declare-fun tp!1231213 () Bool)

(declare-fun b!4067762 () Bool)

(declare-fun e!2524417 () Bool)

(assert (=> b!4067762 (= e!2524417 (and tp!1231213 (inv!58077 (tag!7840 (h!48867 rules!2999))) (inv!58081 (transformation!6980 (h!48867 rules!2999))) e!2524425))))

(declare-fun b!4067763 () Bool)

(declare-fun Unit!63009 () Unit!63005)

(assert (=> b!4067763 (= e!2524429 Unit!63009)))

(declare-fun lt!1455674 () Unit!63005)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!506 (LexerInterface!6569 List!43571 Rule!13760 List!43569 List!43569 List!43569 Rule!13760) Unit!63005)

(assert (=> b!4067763 (= lt!1455674 (lemmaMaxPrefixOutputsMaxPrefix!506 thiss!21717 rules!2999 (rule!10082 (_1!24383 (v!39823 lt!1455698))) lt!1455678 lt!1455693 lt!1455695 (rule!10082 token!484)))))

(assert (=> b!4067763 false))

(declare-fun b!4067764 () Bool)

(assert (=> b!4067764 (= e!2524424 false)))

(declare-fun b!4067765 () Bool)

(declare-fun tp!1231208 () Bool)

(assert (=> b!4067765 (= e!2524443 (and e!2524417 tp!1231208))))

(declare-fun b!4067766 () Bool)

(declare-fun e!2524436 () Bool)

(assert (=> b!4067766 (= e!2524436 false)))

(declare-fun b!4067767 () Bool)

(declare-fun Unit!63010 () Unit!63005)

(assert (=> b!4067767 (= e!2524423 Unit!63010)))

(declare-fun b!4067768 () Bool)

(declare-fun tp!1231206 () Bool)

(assert (=> b!4067768 (= e!2524442 (and tp_is_empty!20741 tp!1231206))))

(declare-fun b!4067769 () Bool)

(declare-fun e!2524435 () Bool)

(assert (=> b!4067769 (= e!2524430 e!2524435)))

(declare-fun res!1660428 () Bool)

(assert (=> b!4067769 (=> res!1660428 e!2524435)))

(declare-fun lt!1455716 () List!43569)

(assert (=> b!4067769 (= res!1660428 (not (= lt!1455716 lt!1455681)))))

(assert (=> b!4067769 (= lt!1455716 (++!11382 prefix!494 lt!1455689))))

(assert (=> b!4067769 (= lt!1455716 (++!11382 lt!1455693 lt!1455697))))

(declare-fun lt!1455720 () Unit!63005)

(declare-fun lemmaConcatAssociativity!2684 (List!43569 List!43569 List!43569) Unit!63005)

(assert (=> b!4067769 (= lt!1455720 (lemmaConcatAssociativity!2684 prefix!494 newSuffix!27 lt!1455697))))

(declare-fun b!4067770 () Bool)

(declare-fun tp!1231202 () Bool)

(assert (=> b!4067770 (= e!2524450 (and tp_is_empty!20741 tp!1231202))))

(declare-fun b!4067771 () Bool)

(declare-fun res!1660407 () Bool)

(assert (=> b!4067771 (=> (not res!1660407) (not e!2524441))))

(assert (=> b!4067771 (= res!1660407 (isPrefix!4067 newSuffix!27 suffix!1299))))

(declare-fun b!4067772 () Bool)

(declare-fun e!2524419 () Bool)

(assert (=> b!4067772 (= e!2524435 e!2524419)))

(declare-fun res!1660410 () Bool)

(assert (=> b!4067772 (=> res!1660410 e!2524419)))

(assert (=> b!4067772 (= res!1660410 (not (isPrefix!4067 lt!1455678 lt!1455681)))))

(assert (=> b!4067772 (isPrefix!4067 lt!1455678 lt!1455716)))

(declare-fun lt!1455719 () Unit!63005)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!860 (List!43569 List!43569 List!43569) Unit!63005)

(assert (=> b!4067772 (= lt!1455719 (lemmaPrefixStaysPrefixWhenAddingToSuffix!860 lt!1455678 lt!1455693 lt!1455697))))

(declare-fun b!4067773 () Bool)

(declare-fun res!1660424 () Bool)

(assert (=> b!4067773 (=> res!1660424 e!2524444)))

(assert (=> b!4067773 (= res!1660424 (not (isPrefix!4067 lt!1455678 lt!1455693)))))

(declare-fun b!4067774 () Bool)

(declare-fun Unit!63011 () Unit!63005)

(assert (=> b!4067774 (= e!2524416 Unit!63011)))

(declare-fun lt!1455691 () Unit!63005)

(assert (=> b!4067774 (= lt!1455691 (lemmaMaxPrefixOutputsMaxPrefix!506 thiss!21717 rules!2999 (rule!10082 token!484) lt!1455695 lt!1455681 lt!1455678 (rule!10082 (_1!24383 (v!39823 lt!1455698)))))))

(declare-fun res!1660411 () Bool)

(assert (=> b!4067774 (= res!1660411 (not (matchR!5838 (regex!6980 (rule!10082 (_1!24383 (v!39823 lt!1455698)))) lt!1455678)))))

(assert (=> b!4067774 (=> (not res!1660411) (not e!2524436))))

(assert (=> b!4067774 e!2524436))

(declare-fun b!4067775 () Bool)

(declare-fun e!2524431 () Bool)

(assert (=> b!4067775 (= e!2524431 e!2524446)))

(declare-fun res!1660427 () Bool)

(assert (=> b!4067775 (=> res!1660427 e!2524446)))

(assert (=> b!4067775 (= res!1660427 (not (= lt!1455692 lt!1455681)))))

(assert (=> b!4067775 (= lt!1455692 (++!11382 lt!1455695 lt!1455729))))

(assert (=> b!4067775 (= lt!1455729 (getSuffix!2484 lt!1455681 lt!1455695))))

(assert (=> b!4067775 e!2524448))

(declare-fun res!1660417 () Bool)

(assert (=> b!4067775 (=> (not res!1660417) (not e!2524448))))

(assert (=> b!4067775 (= res!1660417 (isPrefix!4067 lt!1455681 lt!1455681))))

(declare-fun lt!1455713 () Unit!63005)

(declare-fun lemmaIsPrefixRefl!2634 (List!43569 List!43569) Unit!63005)

(assert (=> b!4067775 (= lt!1455713 (lemmaIsPrefixRefl!2634 lt!1455681 lt!1455681))))

(declare-fun b!4067776 () Bool)

(assert (=> b!4067776 (= e!2524437 e!2524426)))

(declare-fun res!1660415 () Bool)

(assert (=> b!4067776 (=> res!1660415 e!2524426)))

(declare-fun lt!1455715 () List!43569)

(assert (=> b!4067776 (= res!1660415 (or (not (= lt!1455681 lt!1455715)) (not (= lt!1455681 lt!1455671))))))

(assert (=> b!4067776 (= lt!1455715 lt!1455671)))

(assert (=> b!4067776 (= lt!1455671 (++!11382 lt!1455695 lt!1455712))))

(assert (=> b!4067776 (= lt!1455715 (++!11382 lt!1455663 suffix!1299))))

(assert (=> b!4067776 (= lt!1455712 (++!11382 lt!1455696 suffix!1299))))

(declare-fun lt!1455726 () Unit!63005)

(assert (=> b!4067776 (= lt!1455726 (lemmaConcatAssociativity!2684 lt!1455695 lt!1455696 suffix!1299))))

(declare-fun b!4067777 () Bool)

(declare-fun Unit!63012 () Unit!63005)

(assert (=> b!4067777 (= e!2524416 Unit!63012)))

(declare-fun b!4067778 () Bool)

(declare-fun res!1660422 () Bool)

(assert (=> b!4067778 (=> res!1660422 e!2524419)))

(assert (=> b!4067778 (= res!1660422 (not (= lt!1455675 lt!1455693)))))

(declare-fun b!4067779 () Bool)

(declare-fun Unit!63013 () Unit!63005)

(assert (=> b!4067779 (= e!2524418 Unit!63013)))

(declare-fun b!4067780 () Bool)

(assert (=> b!4067780 (= e!2524448 (and (= (size!32481 token!484) lt!1455686) (= (originalCharacters!7580 token!484) lt!1455695)))))

(declare-fun b!4067781 () Bool)

(assert (=> b!4067781 (= e!2524449 e!2524431)))

(declare-fun res!1660414 () Bool)

(assert (=> b!4067781 (=> res!1660414 e!2524431)))

(assert (=> b!4067781 (= res!1660414 (not (matchR!5838 (regex!6980 (rule!10082 token!484)) lt!1455695)))))

(assert (=> b!4067781 (isPrefix!4067 lt!1455695 lt!1455693)))

(declare-fun lt!1455701 () Unit!63005)

(assert (=> b!4067781 (= lt!1455701 (lemmaPrefixStaysPrefixWhenAddingToSuffix!860 lt!1455695 prefix!494 newSuffix!27))))

(declare-fun lt!1455667 () Unit!63005)

(assert (=> b!4067781 (= lt!1455667 (lemmaPrefixStaysPrefixWhenAddingToSuffix!860 lt!1455695 prefix!494 suffix!1299))))

(declare-fun b!4067782 () Bool)

(declare-fun tp!1231207 () Bool)

(assert (=> b!4067782 (= e!2524452 (and tp_is_empty!20741 tp!1231207))))

(declare-fun b!4067783 () Bool)

(assert (=> b!4067783 (= e!2524419 e!2524453)))

(declare-fun res!1660432 () Bool)

(assert (=> b!4067783 (=> res!1660432 e!2524453)))

(assert (=> b!4067783 (= res!1660432 (not (= lt!1455707 lt!1455693)))))

(assert (=> b!4067783 (= lt!1455707 (++!11382 lt!1455678 lt!1455694))))

(assert (=> b!4067783 (= lt!1455694 (getSuffix!2484 lt!1455693 lt!1455678))))

(declare-fun b!4067784 () Bool)

(declare-fun Unit!63014 () Unit!63005)

(assert (=> b!4067784 (= e!2524418 Unit!63014)))

(declare-fun lt!1455685 () Unit!63005)

(assert (=> b!4067784 (= lt!1455685 (lemmaMaxPrefNoSmallerRuleMatches!308 thiss!21717 rules!2999 (rule!10082 token!484) lt!1455695 lt!1455681 (rule!10082 (_1!24383 (v!39823 lt!1455698)))))))

(declare-fun res!1660433 () Bool)

(assert (=> b!4067784 (= res!1660433 (not (matchR!5838 (regex!6980 (rule!10082 (_1!24383 (v!39823 lt!1455698)))) lt!1455695)))))

(assert (=> b!4067784 (=> (not res!1660433) (not e!2524433))))

(assert (=> b!4067784 e!2524433))

(assert (= (and start!383704 res!1660421) b!4067755))

(assert (= (and b!4067755 res!1660406) b!4067735))

(assert (= (and b!4067735 res!1660412) b!4067736))

(assert (= (and b!4067736 res!1660425) b!4067771))

(assert (= (and b!4067771 res!1660407) b!4067761))

(assert (= (and b!4067761 res!1660416) b!4067744))

(assert (= (and b!4067744 res!1660435) b!4067751))

(assert (= (and b!4067751 res!1660418) b!4067742))

(assert (= (and b!4067742 (not res!1660420)) b!4067746))

(assert (= (and b!4067746 (not res!1660430)) b!4067748))

(assert (= (and b!4067748 (not res!1660429)) b!4067776))

(assert (= (and b!4067776 (not res!1660415)) b!4067741))

(assert (= (and b!4067741 (not res!1660434)) b!4067781))

(assert (= (and b!4067781 (not res!1660414)) b!4067775))

(assert (= (and b!4067775 res!1660417) b!4067758))

(assert (= (and b!4067758 res!1660423) b!4067754))

(assert (= (and b!4067754 res!1660426) b!4067780))

(assert (= (and b!4067775 (not res!1660427)) b!4067759))

(assert (= (and b!4067759 (not res!1660419)) b!4067745))

(assert (= (and b!4067745 (not res!1660431)) b!4067760))

(assert (= (and b!4067760 (not res!1660436)) b!4067769))

(assert (= (and b!4067769 (not res!1660428)) b!4067772))

(assert (= (and b!4067772 (not res!1660410)) b!4067778))

(assert (= (and b!4067778 (not res!1660422)) b!4067783))

(assert (= (and b!4067783 (not res!1660432)) b!4067756))

(assert (= (and b!4067756 c!702308) b!4067774))

(assert (= (and b!4067756 (not c!702308)) b!4067777))

(assert (= (and b!4067774 res!1660411) b!4067766))

(assert (= (and b!4067756 c!702309) b!4067763))

(assert (= (and b!4067756 (not c!702309)) b!4067743))

(assert (= (and b!4067756 (not res!1660409)) b!4067773))

(assert (= (and b!4067773 (not res!1660424)) b!4067738))

(assert (= (and b!4067738 c!702306) b!4067784))

(assert (= (and b!4067738 (not c!702306)) b!4067779))

(assert (= (and b!4067784 res!1660433) b!4067753))

(assert (= (and b!4067738 c!702307) b!4067739))

(assert (= (and b!4067738 (not c!702307)) b!4067767))

(assert (= (and b!4067739 res!1660413) b!4067764))

(assert (= (and b!4067738 (not res!1660437)) b!4067734))

(assert (= (and b!4067734 (not res!1660408)) b!4067750))

(assert (= (and start!383704 ((_ is Cons!43445) prefix!494)) b!4067757))

(assert (= b!4067747 b!4067740))

(assert (= b!4067752 b!4067747))

(assert (= start!383704 b!4067752))

(assert (= (and start!383704 ((_ is Cons!43445) suffixResult!105)) b!4067782))

(assert (= (and start!383704 ((_ is Cons!43445) suffix!1299)) b!4067737))

(assert (= (and start!383704 ((_ is Cons!43445) newSuffix!27)) b!4067768))

(assert (= b!4067762 b!4067749))

(assert (= b!4067765 b!4067762))

(assert (= (and start!383704 ((_ is Cons!43447) rules!2999)) b!4067765))

(assert (= (and start!383704 ((_ is Cons!43445) newSuffixResult!27)) b!4067770))

(declare-fun m!4676127 () Bool)

(assert (=> b!4067781 m!4676127))

(declare-fun m!4676129 () Bool)

(assert (=> b!4067781 m!4676129))

(declare-fun m!4676131 () Bool)

(assert (=> b!4067781 m!4676131))

(declare-fun m!4676133 () Bool)

(assert (=> b!4067781 m!4676133))

(declare-fun m!4676135 () Bool)

(assert (=> b!4067776 m!4676135))

(declare-fun m!4676137 () Bool)

(assert (=> b!4067776 m!4676137))

(declare-fun m!4676139 () Bool)

(assert (=> b!4067776 m!4676139))

(declare-fun m!4676141 () Bool)

(assert (=> b!4067776 m!4676141))

(declare-fun m!4676143 () Bool)

(assert (=> b!4067769 m!4676143))

(declare-fun m!4676145 () Bool)

(assert (=> b!4067769 m!4676145))

(declare-fun m!4676147 () Bool)

(assert (=> b!4067769 m!4676147))

(declare-fun m!4676149 () Bool)

(assert (=> b!4067741 m!4676149))

(declare-fun m!4676151 () Bool)

(assert (=> b!4067741 m!4676151))

(declare-fun m!4676153 () Bool)

(assert (=> b!4067741 m!4676153))

(declare-fun m!4676155 () Bool)

(assert (=> b!4067741 m!4676155))

(assert (=> b!4067741 m!4676149))

(declare-fun m!4676157 () Bool)

(assert (=> b!4067741 m!4676157))

(declare-fun m!4676159 () Bool)

(assert (=> b!4067741 m!4676159))

(declare-fun m!4676161 () Bool)

(assert (=> b!4067741 m!4676161))

(declare-fun m!4676163 () Bool)

(assert (=> start!383704 m!4676163))

(declare-fun m!4676165 () Bool)

(assert (=> b!4067772 m!4676165))

(declare-fun m!4676167 () Bool)

(assert (=> b!4067772 m!4676167))

(declare-fun m!4676169 () Bool)

(assert (=> b!4067772 m!4676169))

(declare-fun m!4676171 () Bool)

(assert (=> b!4067754 m!4676171))

(declare-fun m!4676173 () Bool)

(assert (=> b!4067762 m!4676173))

(declare-fun m!4676175 () Bool)

(assert (=> b!4067762 m!4676175))

(declare-fun m!4676177 () Bool)

(assert (=> b!4067738 m!4676177))

(declare-fun m!4676179 () Bool)

(assert (=> b!4067738 m!4676179))

(declare-fun m!4676181 () Bool)

(assert (=> b!4067738 m!4676181))

(declare-fun m!4676183 () Bool)

(assert (=> b!4067738 m!4676183))

(declare-fun m!4676185 () Bool)

(assert (=> b!4067738 m!4676185))

(declare-fun m!4676187 () Bool)

(assert (=> b!4067735 m!4676187))

(declare-fun m!4676189 () Bool)

(assert (=> b!4067774 m!4676189))

(declare-fun m!4676191 () Bool)

(assert (=> b!4067774 m!4676191))

(declare-fun m!4676193 () Bool)

(assert (=> b!4067739 m!4676193))

(declare-fun m!4676195 () Bool)

(assert (=> b!4067739 m!4676195))

(declare-fun m!4676197 () Bool)

(assert (=> b!4067747 m!4676197))

(declare-fun m!4676199 () Bool)

(assert (=> b!4067747 m!4676199))

(declare-fun m!4676201 () Bool)

(assert (=> b!4067748 m!4676201))

(declare-fun m!4676203 () Bool)

(assert (=> b!4067748 m!4676203))

(declare-fun m!4676205 () Bool)

(assert (=> b!4067748 m!4676205))

(declare-fun m!4676207 () Bool)

(assert (=> b!4067748 m!4676207))

(declare-fun m!4676209 () Bool)

(assert (=> b!4067759 m!4676209))

(declare-fun m!4676211 () Bool)

(assert (=> b!4067759 m!4676211))

(declare-fun m!4676213 () Bool)

(assert (=> b!4067759 m!4676213))

(declare-fun m!4676215 () Bool)

(assert (=> b!4067759 m!4676215))

(declare-fun m!4676217 () Bool)

(assert (=> b!4067761 m!4676217))

(declare-fun m!4676219 () Bool)

(assert (=> b!4067761 m!4676219))

(declare-fun m!4676221 () Bool)

(assert (=> b!4067761 m!4676221))

(assert (=> b!4067761 m!4676221))

(declare-fun m!4676223 () Bool)

(assert (=> b!4067761 m!4676223))

(declare-fun m!4676225 () Bool)

(assert (=> b!4067773 m!4676225))

(declare-fun m!4676227 () Bool)

(assert (=> b!4067752 m!4676227))

(declare-fun m!4676229 () Bool)

(assert (=> b!4067734 m!4676229))

(declare-fun m!4676231 () Bool)

(assert (=> b!4067736 m!4676231))

(declare-fun m!4676233 () Bool)

(assert (=> b!4067736 m!4676233))

(declare-fun m!4676235 () Bool)

(assert (=> b!4067784 m!4676235))

(declare-fun m!4676237 () Bool)

(assert (=> b!4067784 m!4676237))

(declare-fun m!4676239 () Bool)

(assert (=> b!4067744 m!4676239))

(declare-fun m!4676241 () Bool)

(assert (=> b!4067744 m!4676241))

(declare-fun m!4676243 () Bool)

(assert (=> b!4067760 m!4676243))

(declare-fun m!4676245 () Bool)

(assert (=> b!4067760 m!4676245))

(declare-fun m!4676247 () Bool)

(assert (=> b!4067745 m!4676247))

(declare-fun m!4676249 () Bool)

(assert (=> b!4067745 m!4676249))

(declare-fun m!4676251 () Bool)

(assert (=> b!4067745 m!4676251))

(declare-fun m!4676253 () Bool)

(assert (=> b!4067745 m!4676253))

(declare-fun m!4676255 () Bool)

(assert (=> b!4067745 m!4676255))

(declare-fun m!4676257 () Bool)

(assert (=> b!4067745 m!4676257))

(declare-fun m!4676259 () Bool)

(assert (=> b!4067745 m!4676259))

(declare-fun m!4676261 () Bool)

(assert (=> b!4067745 m!4676261))

(declare-fun m!4676263 () Bool)

(assert (=> b!4067745 m!4676263))

(declare-fun m!4676265 () Bool)

(assert (=> b!4067745 m!4676265))

(declare-fun m!4676267 () Bool)

(assert (=> b!4067745 m!4676267))

(declare-fun m!4676269 () Bool)

(assert (=> b!4067745 m!4676269))

(assert (=> b!4067745 m!4676247))

(declare-fun m!4676271 () Bool)

(assert (=> b!4067745 m!4676271))

(declare-fun m!4676273 () Bool)

(assert (=> b!4067745 m!4676273))

(assert (=> b!4067745 m!4676271))

(declare-fun m!4676275 () Bool)

(assert (=> b!4067745 m!4676275))

(declare-fun m!4676277 () Bool)

(assert (=> b!4067745 m!4676277))

(assert (=> b!4067745 m!4676253))

(declare-fun m!4676279 () Bool)

(assert (=> b!4067745 m!4676279))

(declare-fun m!4676281 () Bool)

(assert (=> b!4067745 m!4676281))

(declare-fun m!4676283 () Bool)

(assert (=> b!4067771 m!4676283))

(declare-fun m!4676285 () Bool)

(assert (=> b!4067746 m!4676285))

(declare-fun m!4676287 () Bool)

(assert (=> b!4067746 m!4676287))

(declare-fun m!4676289 () Bool)

(assert (=> b!4067746 m!4676289))

(declare-fun m!4676291 () Bool)

(assert (=> b!4067746 m!4676291))

(declare-fun m!4676293 () Bool)

(assert (=> b!4067746 m!4676293))

(declare-fun m!4676295 () Bool)

(assert (=> b!4067755 m!4676295))

(declare-fun m!4676297 () Bool)

(assert (=> b!4067763 m!4676297))

(declare-fun m!4676299 () Bool)

(assert (=> b!4067742 m!4676299))

(declare-fun m!4676301 () Bool)

(assert (=> b!4067742 m!4676301))

(declare-fun m!4676303 () Bool)

(assert (=> b!4067742 m!4676303))

(declare-fun m!4676305 () Bool)

(assert (=> b!4067742 m!4676305))

(declare-fun m!4676307 () Bool)

(assert (=> b!4067756 m!4676307))

(declare-fun m!4676309 () Bool)

(assert (=> b!4067756 m!4676309))

(declare-fun m!4676311 () Bool)

(assert (=> b!4067756 m!4676311))

(declare-fun m!4676313 () Bool)

(assert (=> b!4067751 m!4676313))

(declare-fun m!4676315 () Bool)

(assert (=> b!4067751 m!4676315))

(declare-fun m!4676317 () Bool)

(assert (=> b!4067775 m!4676317))

(declare-fun m!4676319 () Bool)

(assert (=> b!4067775 m!4676319))

(declare-fun m!4676321 () Bool)

(assert (=> b!4067775 m!4676321))

(declare-fun m!4676323 () Bool)

(assert (=> b!4067775 m!4676323))

(declare-fun m!4676325 () Bool)

(assert (=> b!4067783 m!4676325))

(declare-fun m!4676327 () Bool)

(assert (=> b!4067783 m!4676327))

(check-sat b_and!312633 (not b!4067741) b_and!312629 (not b!4067752) (not b!4067772) (not b!4067771) (not b!4067737) (not b_next!113853) (not b!4067775) (not b!4067773) (not b!4067739) (not b!4067744) (not b!4067748) (not b!4067776) (not b!4067746) (not b!4067736) (not b!4067781) (not b!4067770) (not b!4067756) (not b_next!113851) (not b!4067761) (not b!4067760) (not b!4067783) (not b!4067738) (not b!4067735) (not b_next!113849) (not b!4067757) (not b!4067784) (not b!4067745) (not b!4067742) (not b!4067765) (not start!383704) (not b!4067763) b_and!312627 (not b_next!113855) (not b!4067755) (not b!4067747) (not b!4067751) (not b!4067774) (not b!4067759) (not b!4067734) b_and!312631 (not b!4067754) (not b!4067762) (not b!4067769) tp_is_empty!20741 (not b!4067768) (not b!4067782))
(check-sat (not b_next!113851) b_and!312633 b_and!312629 (not b_next!113849) b_and!312627 (not b_next!113855) (not b_next!113853) b_and!312631)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375384 () Bool)

(assert start!375384)

(declare-fun b!3989016 () Bool)

(declare-fun b_free!110801 () Bool)

(declare-fun b_next!111505 () Bool)

(assert (=> b!3989016 (= b_free!110801 (not b_next!111505))))

(declare-fun tp!1215303 () Bool)

(declare-fun b_and!306511 () Bool)

(assert (=> b!3989016 (= tp!1215303 b_and!306511)))

(declare-fun b_free!110803 () Bool)

(declare-fun b_next!111507 () Bool)

(assert (=> b!3989016 (= b_free!110803 (not b_next!111507))))

(declare-fun tp!1215311 () Bool)

(declare-fun b_and!306513 () Bool)

(assert (=> b!3989016 (= tp!1215311 b_and!306513)))

(declare-fun b!3989023 () Bool)

(declare-fun b_free!110805 () Bool)

(declare-fun b_next!111509 () Bool)

(assert (=> b!3989023 (= b_free!110805 (not b_next!111509))))

(declare-fun tp!1215300 () Bool)

(declare-fun b_and!306515 () Bool)

(assert (=> b!3989023 (= tp!1215300 b_and!306515)))

(declare-fun b_free!110807 () Bool)

(declare-fun b_next!111511 () Bool)

(assert (=> b!3989023 (= b_free!110807 (not b_next!111511))))

(declare-fun tp!1215301 () Bool)

(declare-fun b_and!306517 () Bool)

(assert (=> b!3989023 (= tp!1215301 b_and!306517)))

(declare-fun b!3988991 () Bool)

(declare-fun res!1618513 () Bool)

(declare-fun e!2472723 () Bool)

(assert (=> b!3988991 (=> (not res!1618513) (not e!2472723))))

(declare-datatypes ((LexerInterface!6341 0))(
  ( (LexerInterfaceExt!6338 (__x!26181 Int)) (Lexer!6339) )
))
(declare-fun thiss!21717 () LexerInterface!6341)

(declare-datatypes ((C!23500 0))(
  ( (C!23501 (val!13844 Int)) )
))
(declare-datatypes ((List!42792 0))(
  ( (Nil!42668) (Cons!42668 (h!48088 C!23500) (t!331687 List!42792)) )
))
(declare-datatypes ((IArray!25931 0))(
  ( (IArray!25932 (innerList!13023 List!42792)) )
))
(declare-datatypes ((Conc!12963 0))(
  ( (Node!12963 (left!32241 Conc!12963) (right!32571 Conc!12963) (csize!26156 Int) (cheight!13174 Int)) (Leaf!20046 (xs!16269 IArray!25931) (csize!26157 Int)) (Empty!12963) )
))
(declare-datatypes ((BalanceConc!25520 0))(
  ( (BalanceConc!25521 (c!690458 Conc!12963)) )
))
(declare-datatypes ((String!48627 0))(
  ( (String!48628 (value!213040 String)) )
))
(declare-datatypes ((List!42793 0))(
  ( (Nil!42669) (Cons!42669 (h!48089 (_ BitVec 16)) (t!331688 List!42793)) )
))
(declare-datatypes ((TokenValue!6982 0))(
  ( (FloatLiteralValue!13964 (text!49319 List!42793)) (TokenValueExt!6981 (__x!26182 Int)) (Broken!34910 (value!213041 List!42793)) (Object!7105) (End!6982) (Def!6982) (Underscore!6982) (Match!6982) (Else!6982) (Error!6982) (Case!6982) (If!6982) (Extends!6982) (Abstract!6982) (Class!6982) (Val!6982) (DelimiterValue!13964 (del!7042 List!42793)) (KeywordValue!6988 (value!213042 List!42793)) (CommentValue!13964 (value!213043 List!42793)) (WhitespaceValue!13964 (value!213044 List!42793)) (IndentationValue!6982 (value!213045 List!42793)) (String!48629) (Int32!6982) (Broken!34911 (value!213046 List!42793)) (Boolean!6983) (Unit!61412) (OperatorValue!6985 (op!7042 List!42793)) (IdentifierValue!13964 (value!213047 List!42793)) (IdentifierValue!13965 (value!213048 List!42793)) (WhitespaceValue!13965 (value!213049 List!42793)) (True!13964) (False!13964) (Broken!34912 (value!213050 List!42793)) (Broken!34913 (value!213051 List!42793)) (True!13965) (RightBrace!6982) (RightBracket!6982) (Colon!6982) (Null!6982) (Comma!6982) (LeftBracket!6982) (False!13965) (LeftBrace!6982) (ImaginaryLiteralValue!6982 (text!49320 List!42793)) (StringLiteralValue!20946 (value!213052 List!42793)) (EOFValue!6982 (value!213053 List!42793)) (IdentValue!6982 (value!213054 List!42793)) (DelimiterValue!13965 (value!213055 List!42793)) (DedentValue!6982 (value!213056 List!42793)) (NewLineValue!6982 (value!213057 List!42793)) (IntegerValue!20946 (value!213058 (_ BitVec 32)) (text!49321 List!42793)) (IntegerValue!20947 (value!213059 Int) (text!49322 List!42793)) (Times!6982) (Or!6982) (Equal!6982) (Minus!6982) (Broken!34914 (value!213060 List!42793)) (And!6982) (Div!6982) (LessEqual!6982) (Mod!6982) (Concat!18639) (Not!6982) (Plus!6982) (SpaceValue!6982 (value!213061 List!42793)) (IntegerValue!20948 (value!213062 Int) (text!49323 List!42793)) (StringLiteralValue!20947 (text!49324 List!42793)) (FloatLiteralValue!13965 (text!49325 List!42793)) (BytesLiteralValue!6982 (value!213063 List!42793)) (CommentValue!13965 (value!213064 List!42793)) (StringLiteralValue!20948 (value!213065 List!42793)) (ErrorTokenValue!6982 (msg!7043 List!42793)) )
))
(declare-datatypes ((Regex!11657 0))(
  ( (ElementMatch!11657 (c!690459 C!23500)) (Concat!18640 (regOne!23826 Regex!11657) (regTwo!23826 Regex!11657)) (EmptyExpr!11657) (Star!11657 (reg!11986 Regex!11657)) (EmptyLang!11657) (Union!11657 (regOne!23827 Regex!11657) (regTwo!23827 Regex!11657)) )
))
(declare-datatypes ((TokenValueInjection!13392 0))(
  ( (TokenValueInjection!13393 (toValue!9240 Int) (toChars!9099 Int)) )
))
(declare-datatypes ((Rule!13304 0))(
  ( (Rule!13305 (regex!6752 Regex!11657) (tag!7612 String!48627) (isSeparator!6752 Bool) (transformation!6752 TokenValueInjection!13392)) )
))
(declare-datatypes ((List!42794 0))(
  ( (Nil!42670) (Cons!42670 (h!48090 Rule!13304) (t!331689 List!42794)) )
))
(declare-fun rules!2999 () List!42794)

(declare-fun rulesInvariant!5684 (LexerInterface!6341 List!42794) Bool)

(assert (=> b!3988991 (= res!1618513 (rulesInvariant!5684 thiss!21717 rules!2999))))

(declare-fun b!3988992 () Bool)

(declare-fun e!2472732 () Bool)

(assert (=> b!3988992 (= e!2472732 false)))

(declare-fun e!2472734 () Bool)

(declare-fun b!3988993 () Bool)

(declare-fun tp!1215312 () Bool)

(declare-fun e!2472712 () Bool)

(declare-fun inv!56988 (String!48627) Bool)

(declare-fun inv!56991 (TokenValueInjection!13392) Bool)

(assert (=> b!3988993 (= e!2472712 (and tp!1215312 (inv!56988 (tag!7612 (h!48090 rules!2999))) (inv!56991 (transformation!6752 (h!48090 rules!2999))) e!2472734))))

(declare-fun b!3988994 () Bool)

(declare-fun e!2472713 () Bool)

(declare-fun e!2472715 () Bool)

(assert (=> b!3988994 (= e!2472713 e!2472715)))

(declare-fun res!1618495 () Bool)

(assert (=> b!3988994 (=> res!1618495 e!2472715)))

(declare-fun lt!1405545 () List!42792)

(declare-fun lt!1405564 () List!42792)

(assert (=> b!3988994 (= res!1618495 (not (= lt!1405545 lt!1405564)))))

(declare-fun prefix!494 () List!42792)

(declare-fun lt!1405588 () List!42792)

(declare-fun ++!11154 (List!42792 List!42792) List!42792)

(assert (=> b!3988994 (= lt!1405545 (++!11154 prefix!494 lt!1405588))))

(declare-fun lt!1405559 () List!42792)

(declare-fun lt!1405577 () List!42792)

(assert (=> b!3988994 (= lt!1405545 (++!11154 lt!1405559 lt!1405577))))

(declare-fun newSuffix!27 () List!42792)

(declare-datatypes ((Unit!61413 0))(
  ( (Unit!61414) )
))
(declare-fun lt!1405554 () Unit!61413)

(declare-fun lemmaConcatAssociativity!2474 (List!42792 List!42792 List!42792) Unit!61413)

(assert (=> b!3988994 (= lt!1405554 (lemmaConcatAssociativity!2474 prefix!494 newSuffix!27 lt!1405577))))

(declare-fun b!3988995 () Bool)

(declare-fun e!2472731 () Bool)

(declare-fun rulesValidInductive!2453 (LexerInterface!6341 List!42794) Bool)

(assert (=> b!3988995 (= e!2472731 (rulesValidInductive!2453 thiss!21717 rules!2999))))

(declare-fun b!3988996 () Bool)

(declare-fun e!2472735 () Bool)

(declare-fun tp!1215306 () Bool)

(assert (=> b!3988996 (= e!2472735 (and e!2472712 tp!1215306))))

(declare-fun tp!1215302 () Bool)

(declare-datatypes ((Token!12642 0))(
  ( (Token!12643 (value!213066 TokenValue!6982) (rule!9768 Rule!13304) (size!31912 Int) (originalCharacters!7352 List!42792)) )
))
(declare-fun token!484 () Token!12642)

(declare-fun e!2472737 () Bool)

(declare-fun e!2472718 () Bool)

(declare-fun b!3988997 () Bool)

(assert (=> b!3988997 (= e!2472718 (and tp!1215302 (inv!56988 (tag!7612 (rule!9768 token!484))) (inv!56991 (transformation!6752 (rule!9768 token!484))) e!2472737))))

(declare-fun b!3988998 () Bool)

(declare-fun e!2472733 () Unit!61413)

(declare-fun Unit!61415 () Unit!61413)

(assert (=> b!3988998 (= e!2472733 Unit!61415)))

(declare-fun lt!1405581 () List!42792)

(declare-datatypes ((tuple2!41872 0))(
  ( (tuple2!41873 (_1!24070 Token!12642) (_2!24070 List!42792)) )
))
(declare-datatypes ((Option!9166 0))(
  ( (None!9165) (Some!9165 (v!39521 tuple2!41872)) )
))
(declare-fun lt!1405599 () Option!9166)

(declare-fun lt!1405573 () List!42792)

(declare-fun lt!1405603 () Unit!61413)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!406 (LexerInterface!6341 List!42794 Rule!13304 List!42792 List!42792 List!42792 Rule!13304) Unit!61413)

(assert (=> b!3988998 (= lt!1405603 (lemmaMaxPrefixOutputsMaxPrefix!406 thiss!21717 rules!2999 (rule!9768 token!484) lt!1405581 lt!1405564 lt!1405573 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))

(declare-fun res!1618514 () Bool)

(declare-fun matchR!5634 (Regex!11657 List!42792) Bool)

(assert (=> b!3988998 (= res!1618514 (not (matchR!5634 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) lt!1405573)))))

(assert (=> b!3988998 (=> (not res!1618514) (not e!2472732))))

(assert (=> b!3988998 e!2472732))

(declare-fun b!3988999 () Bool)

(declare-fun res!1618512 () Bool)

(assert (=> b!3988999 (=> (not res!1618512) (not e!2472723))))

(declare-fun suffix!1299 () List!42792)

(declare-fun size!31913 (List!42792) Int)

(assert (=> b!3988999 (= res!1618512 (>= (size!31913 suffix!1299) (size!31913 newSuffix!27)))))

(declare-fun b!3989000 () Bool)

(declare-fun res!1618499 () Bool)

(declare-fun e!2472717 () Bool)

(assert (=> b!3989000 (=> (not res!1618499) (not e!2472717))))

(assert (=> b!3989000 (= res!1618499 (= (size!31912 token!484) (size!31913 (originalCharacters!7352 token!484))))))

(declare-fun b!3989001 () Bool)

(declare-fun res!1618510 () Bool)

(assert (=> b!3989001 (=> (not res!1618510) (not e!2472717))))

(declare-fun lt!1405600 () TokenValue!6982)

(assert (=> b!3989001 (= res!1618510 (= (value!213066 token!484) lt!1405600))))

(declare-fun b!3989002 () Bool)

(declare-fun e!2472739 () Bool)

(declare-fun e!2472741 () Bool)

(assert (=> b!3989002 (= e!2472739 e!2472741)))

(declare-fun res!1618507 () Bool)

(assert (=> b!3989002 (=> (not res!1618507) (not e!2472741))))

(declare-fun lt!1405574 () List!42792)

(assert (=> b!3989002 (= res!1618507 (= lt!1405574 lt!1405559))))

(assert (=> b!3989002 (= lt!1405559 (++!11154 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42792)

(assert (=> b!3989002 (= lt!1405574 (++!11154 lt!1405581 newSuffixResult!27))))

(declare-fun b!3989003 () Bool)

(declare-fun e!2472747 () Bool)

(declare-fun e!2472721 () Bool)

(assert (=> b!3989003 (= e!2472747 (not e!2472721))))

(declare-fun res!1618493 () Bool)

(assert (=> b!3989003 (=> res!1618493 e!2472721)))

(declare-fun lt!1405547 () List!42792)

(assert (=> b!3989003 (= res!1618493 (not (= lt!1405547 lt!1405564)))))

(declare-fun suffixResult!105 () List!42792)

(assert (=> b!3989003 (= lt!1405547 (++!11154 lt!1405581 suffixResult!105))))

(declare-fun lt!1405550 () Unit!61413)

(declare-fun lemmaInv!967 (TokenValueInjection!13392) Unit!61413)

(assert (=> b!3989003 (= lt!1405550 (lemmaInv!967 (transformation!6752 (rule!9768 token!484))))))

(declare-fun ruleValid!2684 (LexerInterface!6341 Rule!13304) Bool)

(assert (=> b!3989003 (ruleValid!2684 thiss!21717 (rule!9768 token!484))))

(declare-fun lt!1405582 () Unit!61413)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1758 (LexerInterface!6341 Rule!13304 List!42794) Unit!61413)

(assert (=> b!3989003 (= lt!1405582 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1758 thiss!21717 (rule!9768 token!484) rules!2999))))

(declare-fun b!3989004 () Bool)

(declare-fun e!2472730 () Bool)

(declare-fun tp_is_empty!20285 () Bool)

(declare-fun tp!1215305 () Bool)

(assert (=> b!3989004 (= e!2472730 (and tp_is_empty!20285 tp!1215305))))

(declare-fun b!3989005 () Bool)

(declare-fun e!2472743 () Bool)

(declare-fun e!2472716 () Bool)

(assert (=> b!3989005 (= e!2472743 e!2472716)))

(declare-fun res!1618503 () Bool)

(assert (=> b!3989005 (=> res!1618503 e!2472716)))

(declare-fun lt!1405553 () List!42792)

(assert (=> b!3989005 (= res!1618503 (not (= lt!1405553 lt!1405559)))))

(declare-fun lt!1405569 () List!42792)

(assert (=> b!3989005 (= lt!1405553 (++!11154 lt!1405573 lt!1405569))))

(declare-fun getSuffix!2270 (List!42792 List!42792) List!42792)

(assert (=> b!3989005 (= lt!1405569 (getSuffix!2270 lt!1405559 lt!1405573))))

(declare-fun b!3989006 () Bool)

(declare-fun res!1618502 () Bool)

(assert (=> b!3989006 (=> (not res!1618502) (not e!2472723))))

(declare-fun isEmpty!25500 (List!42794) Bool)

(assert (=> b!3989006 (= res!1618502 (not (isEmpty!25500 rules!2999)))))

(declare-fun b!3989007 () Bool)

(declare-fun e!2472740 () Bool)

(declare-fun tp!1215310 () Bool)

(assert (=> b!3989007 (= e!2472740 (and tp_is_empty!20285 tp!1215310))))

(declare-fun e!2472724 () Bool)

(declare-fun tp!1215309 () Bool)

(declare-fun b!3989008 () Bool)

(declare-fun inv!21 (TokenValue!6982) Bool)

(assert (=> b!3989008 (= e!2472724 (and (inv!21 (value!213066 token!484)) e!2472718 tp!1215309))))

(declare-fun b!3989009 () Bool)

(assert (=> b!3989009 (= e!2472715 e!2472743)))

(declare-fun res!1618498 () Bool)

(assert (=> b!3989009 (=> res!1618498 e!2472743)))

(declare-fun isPrefix!3839 (List!42792 List!42792) Bool)

(assert (=> b!3989009 (= res!1618498 (not (isPrefix!3839 lt!1405573 lt!1405564)))))

(assert (=> b!3989009 (isPrefix!3839 lt!1405573 lt!1405545)))

(declare-fun lt!1405592 () Unit!61413)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!672 (List!42792 List!42792 List!42792) Unit!61413)

(assert (=> b!3989009 (= lt!1405592 (lemmaPrefixStaysPrefixWhenAddingToSuffix!672 lt!1405573 lt!1405559 lt!1405577))))

(declare-fun b!3989010 () Bool)

(declare-fun e!2472722 () Bool)

(assert (=> b!3989010 (= e!2472716 e!2472722)))

(declare-fun res!1618501 () Bool)

(assert (=> b!3989010 (=> res!1618501 e!2472722)))

(declare-fun lt!1405604 () Int)

(declare-fun lt!1405587 () Int)

(assert (=> b!3989010 (= res!1618501 (not (= lt!1405604 lt!1405587)))))

(declare-fun lt!1405565 () Unit!61413)

(declare-fun e!2472744 () Unit!61413)

(assert (=> b!3989010 (= lt!1405565 e!2472744)))

(declare-fun c!690456 () Bool)

(assert (=> b!3989010 (= c!690456 (< lt!1405587 lt!1405604))))

(declare-fun lt!1405572 () Unit!61413)

(assert (=> b!3989010 (= lt!1405572 e!2472733)))

(declare-fun c!690457 () Bool)

(assert (=> b!3989010 (= c!690457 (> lt!1405587 lt!1405604))))

(assert (=> b!3989010 (= (_2!24070 (v!39521 lt!1405599)) lt!1405569)))

(declare-fun lt!1405570 () Unit!61413)

(declare-fun lemmaSamePrefixThenSameSuffix!2026 (List!42792 List!42792 List!42792 List!42792 List!42792) Unit!61413)

(assert (=> b!3989010 (= lt!1405570 (lemmaSamePrefixThenSameSuffix!2026 lt!1405573 (_2!24070 (v!39521 lt!1405599)) lt!1405573 lt!1405569 lt!1405559))))

(assert (=> b!3989010 (isPrefix!3839 lt!1405573 lt!1405553)))

(declare-fun lt!1405556 () Unit!61413)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2682 (List!42792 List!42792) Unit!61413)

(assert (=> b!3989010 (= lt!1405556 (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405573 lt!1405569))))

(declare-fun b!3989011 () Bool)

(declare-fun e!2472742 () Bool)

(declare-fun tp!1215304 () Bool)

(assert (=> b!3989011 (= e!2472742 (and tp_is_empty!20285 tp!1215304))))

(declare-fun b!3989012 () Bool)

(declare-fun e!2472729 () Bool)

(assert (=> b!3989012 (= e!2472729 e!2472713)))

(declare-fun res!1618516 () Bool)

(assert (=> b!3989012 (=> res!1618516 e!2472713)))

(assert (=> b!3989012 (= res!1618516 (not (= lt!1405588 suffix!1299)))))

(assert (=> b!3989012 (= lt!1405588 (++!11154 newSuffix!27 lt!1405577))))

(assert (=> b!3989012 (= lt!1405577 (getSuffix!2270 suffix!1299 newSuffix!27))))

(declare-fun b!3989013 () Bool)

(declare-fun e!2472727 () Bool)

(declare-fun tp!1215307 () Bool)

(assert (=> b!3989013 (= e!2472727 (and tp_is_empty!20285 tp!1215307))))

(declare-fun b!3989014 () Bool)

(declare-fun e!2472748 () Bool)

(declare-fun e!2472746 () Bool)

(assert (=> b!3989014 (= e!2472748 e!2472746)))

(declare-fun res!1618494 () Bool)

(assert (=> b!3989014 (=> res!1618494 e!2472746)))

(declare-fun lt!1405578 () Option!9166)

(declare-fun lt!1405568 () Option!9166)

(assert (=> b!3989014 (= res!1618494 (not (= lt!1405578 lt!1405568)))))

(declare-fun lt!1405595 () Token!12642)

(assert (=> b!3989014 (= lt!1405578 (Some!9165 (tuple2!41873 lt!1405595 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2673 (LexerInterface!6341 Rule!13304 List!42792) Option!9166)

(assert (=> b!3989014 (= lt!1405578 (maxPrefixOneRule!2673 thiss!21717 (rule!9768 token!484) lt!1405564))))

(assert (=> b!3989014 (= lt!1405595 (Token!12643 lt!1405600 (rule!9768 token!484) lt!1405604 lt!1405581))))

(declare-fun apply!9963 (TokenValueInjection!13392 BalanceConc!25520) TokenValue!6982)

(declare-fun seqFromList!4991 (List!42792) BalanceConc!25520)

(assert (=> b!3989014 (= lt!1405600 (apply!9963 (transformation!6752 (rule!9768 token!484)) (seqFromList!4991 lt!1405581)))))

(declare-fun lt!1405551 () Unit!61413)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1495 (LexerInterface!6341 List!42794 List!42792 List!42792 List!42792 Rule!13304) Unit!61413)

(assert (=> b!3989014 (= lt!1405551 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1495 thiss!21717 rules!2999 lt!1405581 lt!1405564 suffixResult!105 (rule!9768 token!484)))))

(declare-fun lt!1405566 () List!42792)

(assert (=> b!3989014 (= lt!1405566 suffixResult!105)))

(declare-fun lt!1405548 () Unit!61413)

(assert (=> b!3989014 (= lt!1405548 (lemmaSamePrefixThenSameSuffix!2026 lt!1405581 lt!1405566 lt!1405581 suffixResult!105 lt!1405564))))

(declare-fun lt!1405605 () List!42792)

(assert (=> b!3989014 (isPrefix!3839 lt!1405581 lt!1405605)))

(declare-fun lt!1405585 () Unit!61413)

(assert (=> b!3989014 (= lt!1405585 (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405581 lt!1405566))))

(declare-fun b!3989015 () Bool)

(declare-fun Unit!61416 () Unit!61413)

(assert (=> b!3989015 (= e!2472744 Unit!61416)))

(declare-fun lt!1405563 () Unit!61413)

(assert (=> b!3989015 (= lt!1405563 (lemmaMaxPrefixOutputsMaxPrefix!406 thiss!21717 rules!2999 (rule!9768 (_1!24070 (v!39521 lt!1405599))) lt!1405573 lt!1405559 lt!1405581 (rule!9768 token!484)))))

(assert (=> b!3989015 false))

(assert (=> b!3989016 (= e!2472734 (and tp!1215303 tp!1215311))))

(declare-fun b!3989017 () Bool)

(declare-fun res!1618515 () Bool)

(assert (=> b!3989017 (=> (not res!1618515) (not e!2472723))))

(assert (=> b!3989017 (= res!1618515 (isPrefix!3839 newSuffix!27 suffix!1299))))

(declare-fun b!3989018 () Bool)

(declare-fun e!2472726 () Bool)

(declare-fun e!2472738 () Bool)

(assert (=> b!3989018 (= e!2472726 e!2472738)))

(declare-fun res!1618490 () Bool)

(assert (=> b!3989018 (=> res!1618490 e!2472738)))

(declare-fun lt!1405591 () List!42792)

(assert (=> b!3989018 (= res!1618490 (not (= lt!1405591 lt!1405564)))))

(declare-fun lt!1405562 () List!42792)

(assert (=> b!3989018 (= lt!1405591 (++!11154 lt!1405581 lt!1405562))))

(assert (=> b!3989018 (= lt!1405562 (getSuffix!2270 lt!1405564 lt!1405581))))

(assert (=> b!3989018 e!2472717))

(declare-fun res!1618500 () Bool)

(assert (=> b!3989018 (=> (not res!1618500) (not e!2472717))))

(assert (=> b!3989018 (= res!1618500 (isPrefix!3839 lt!1405564 lt!1405564))))

(declare-fun lt!1405596 () Unit!61413)

(declare-fun lemmaIsPrefixRefl!2431 (List!42792 List!42792) Unit!61413)

(assert (=> b!3989018 (= lt!1405596 (lemmaIsPrefixRefl!2431 lt!1405564 lt!1405564))))

(declare-fun b!3989019 () Bool)

(declare-fun res!1618506 () Bool)

(assert (=> b!3989019 (=> res!1618506 e!2472743)))

(declare-fun lt!1405583 () List!42792)

(assert (=> b!3989019 (= res!1618506 (not (= lt!1405583 lt!1405559)))))

(declare-fun b!3989020 () Bool)

(assert (=> b!3989020 (= e!2472723 e!2472739)))

(declare-fun res!1618496 () Bool)

(assert (=> b!3989020 (=> (not res!1618496) (not e!2472739))))

(declare-fun lt!1405598 () Int)

(assert (=> b!3989020 (= res!1618496 (>= lt!1405598 lt!1405604))))

(assert (=> b!3989020 (= lt!1405604 (size!31913 lt!1405581))))

(assert (=> b!3989020 (= lt!1405598 (size!31913 prefix!494))))

(declare-fun list!15840 (BalanceConc!25520) List!42792)

(declare-fun charsOf!4568 (Token!12642) BalanceConc!25520)

(assert (=> b!3989020 (= lt!1405581 (list!15840 (charsOf!4568 token!484)))))

(declare-fun b!3989021 () Bool)

(assert (=> b!3989021 (= e!2472741 e!2472747)))

(declare-fun res!1618508 () Bool)

(assert (=> b!3989021 (=> (not res!1618508) (not e!2472747))))

(declare-fun maxPrefix!3639 (LexerInterface!6341 List!42794 List!42792) Option!9166)

(assert (=> b!3989021 (= res!1618508 (= (maxPrefix!3639 thiss!21717 rules!2999 lt!1405564) lt!1405568))))

(declare-fun lt!1405560 () tuple2!41872)

(assert (=> b!3989021 (= lt!1405568 (Some!9165 lt!1405560))))

(assert (=> b!3989021 (= lt!1405560 (tuple2!41873 token!484 suffixResult!105))))

(assert (=> b!3989021 (= lt!1405564 (++!11154 prefix!494 suffix!1299))))

(declare-fun b!3989022 () Bool)

(declare-fun Unit!61417 () Unit!61413)

(assert (=> b!3989022 (= e!2472744 Unit!61417)))

(assert (=> b!3989023 (= e!2472737 (and tp!1215300 tp!1215301))))

(declare-fun b!3989024 () Bool)

(declare-fun e!2472728 () Bool)

(declare-fun e!2472714 () Bool)

(assert (=> b!3989024 (= e!2472728 e!2472714)))

(declare-fun res!1618518 () Bool)

(assert (=> b!3989024 (=> res!1618518 e!2472714)))

(declare-fun lt!1405586 () List!42792)

(assert (=> b!3989024 (= res!1618518 (not (= lt!1405586 prefix!494)))))

(declare-fun lt!1405584 () List!42792)

(assert (=> b!3989024 (= lt!1405586 (++!11154 lt!1405581 lt!1405584))))

(assert (=> b!3989024 (= lt!1405584 (getSuffix!2270 prefix!494 lt!1405581))))

(assert (=> b!3989024 (isPrefix!3839 lt!1405581 prefix!494)))

(declare-fun lt!1405580 () Unit!61413)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!417 (List!42792 List!42792 List!42792) Unit!61413)

(assert (=> b!3989024 (= lt!1405580 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!417 prefix!494 lt!1405581 lt!1405564))))

(declare-fun b!3989025 () Bool)

(assert (=> b!3989025 (= e!2472746 e!2472726)))

(declare-fun res!1618491 () Bool)

(assert (=> b!3989025 (=> res!1618491 e!2472726)))

(assert (=> b!3989025 (= res!1618491 (not (matchR!5634 (regex!6752 (rule!9768 token!484)) lt!1405581)))))

(assert (=> b!3989025 (isPrefix!3839 lt!1405581 lt!1405559)))

(declare-fun lt!1405576 () Unit!61413)

(assert (=> b!3989025 (= lt!1405576 (lemmaPrefixStaysPrefixWhenAddingToSuffix!672 lt!1405581 prefix!494 newSuffix!27))))

(declare-fun lt!1405558 () Unit!61413)

(assert (=> b!3989025 (= lt!1405558 (lemmaPrefixStaysPrefixWhenAddingToSuffix!672 lt!1405581 prefix!494 suffix!1299))))

(declare-fun b!3989026 () Bool)

(declare-fun e!2472719 () Bool)

(assert (=> b!3989026 (= e!2472719 e!2472729)))

(declare-fun res!1618517 () Bool)

(assert (=> b!3989026 (=> res!1618517 e!2472729)))

(declare-fun lt!1405567 () Option!9166)

(assert (=> b!3989026 (= res!1618517 (not (= lt!1405567 (Some!9165 (v!39521 lt!1405599)))))))

(assert (=> b!3989026 (isPrefix!3839 lt!1405573 (++!11154 lt!1405573 newSuffixResult!27))))

(declare-fun lt!1405602 () Unit!61413)

(assert (=> b!3989026 (= lt!1405602 (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405573 newSuffixResult!27))))

(assert (=> b!3989026 (isPrefix!3839 lt!1405573 lt!1405583)))

(assert (=> b!3989026 (= lt!1405583 (++!11154 lt!1405573 (_2!24070 (v!39521 lt!1405599))))))

(declare-fun lt!1405575 () Unit!61413)

(assert (=> b!3989026 (= lt!1405575 (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405573 (_2!24070 (v!39521 lt!1405599))))))

(declare-fun lt!1405590 () TokenValue!6982)

(assert (=> b!3989026 (= lt!1405567 (Some!9165 (tuple2!41873 (Token!12643 lt!1405590 (rule!9768 (_1!24070 (v!39521 lt!1405599))) lt!1405587 lt!1405573) (_2!24070 (v!39521 lt!1405599)))))))

(assert (=> b!3989026 (= lt!1405567 (maxPrefixOneRule!2673 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599))) lt!1405559))))

(assert (=> b!3989026 (= lt!1405587 (size!31913 lt!1405573))))

(assert (=> b!3989026 (= lt!1405590 (apply!9963 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (seqFromList!4991 lt!1405573)))))

(declare-fun lt!1405557 () Unit!61413)

(assert (=> b!3989026 (= lt!1405557 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1495 thiss!21717 rules!2999 lt!1405573 lt!1405559 (_2!24070 (v!39521 lt!1405599)) (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))

(assert (=> b!3989026 (= lt!1405573 (list!15840 (charsOf!4568 (_1!24070 (v!39521 lt!1405599)))))))

(declare-fun lt!1405589 () Unit!61413)

(assert (=> b!3989026 (= lt!1405589 (lemmaInv!967 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))))

(assert (=> b!3989026 (ruleValid!2684 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))

(declare-fun lt!1405579 () Unit!61413)

(assert (=> b!3989026 (= lt!1405579 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1758 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599))) rules!2999))))

(declare-fun lt!1405601 () Unit!61413)

(declare-fun lemmaCharactersSize!1347 (Token!12642) Unit!61413)

(assert (=> b!3989026 (= lt!1405601 (lemmaCharactersSize!1347 token!484))))

(declare-fun lt!1405546 () Unit!61413)

(assert (=> b!3989026 (= lt!1405546 (lemmaCharactersSize!1347 (_1!24070 (v!39521 lt!1405599))))))

(declare-fun b!3989027 () Bool)

(declare-fun res!1618492 () Bool)

(assert (=> b!3989027 (=> res!1618492 e!2472722)))

(assert (=> b!3989027 (= res!1618492 (not (isPrefix!3839 lt!1405573 lt!1405559)))))

(declare-fun b!3989028 () Bool)

(assert (=> b!3989028 (= e!2472714 e!2472748)))

(declare-fun res!1618511 () Bool)

(assert (=> b!3989028 (=> res!1618511 e!2472748)))

(declare-fun lt!1405552 () List!42792)

(assert (=> b!3989028 (= res!1618511 (or (not (= lt!1405564 lt!1405552)) (not (= lt!1405564 lt!1405605))))))

(assert (=> b!3989028 (= lt!1405552 lt!1405605)))

(assert (=> b!3989028 (= lt!1405605 (++!11154 lt!1405581 lt!1405566))))

(assert (=> b!3989028 (= lt!1405552 (++!11154 lt!1405586 suffix!1299))))

(assert (=> b!3989028 (= lt!1405566 (++!11154 lt!1405584 suffix!1299))))

(declare-fun lt!1405594 () Unit!61413)

(assert (=> b!3989028 (= lt!1405594 (lemmaConcatAssociativity!2474 lt!1405581 lt!1405584 suffix!1299))))

(declare-fun b!3989029 () Bool)

(declare-fun Unit!61418 () Unit!61413)

(assert (=> b!3989029 (= e!2472733 Unit!61418)))

(declare-fun b!3989030 () Bool)

(assert (=> b!3989030 (= e!2472722 e!2472731)))

(declare-fun res!1618505 () Bool)

(assert (=> b!3989030 (=> res!1618505 e!2472731)))

(declare-fun getIndex!522 (List!42794 Rule!13304) Int)

(assert (=> b!3989030 (= res!1618505 (>= (getIndex!522 rules!2999 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (getIndex!522 rules!2999 (rule!9768 token!484))))))

(assert (=> b!3989030 (= (_2!24070 (v!39521 lt!1405599)) newSuffixResult!27)))

(declare-fun lt!1405555 () Unit!61413)

(assert (=> b!3989030 (= lt!1405555 (lemmaSamePrefixThenSameSuffix!2026 lt!1405573 (_2!24070 (v!39521 lt!1405599)) lt!1405581 newSuffixResult!27 lt!1405559))))

(assert (=> b!3989030 (= lt!1405573 lt!1405581)))

(declare-fun lt!1405549 () Unit!61413)

(declare-fun lemmaIsPrefixSameLengthThenSameList!861 (List!42792 List!42792 List!42792) Unit!61413)

(assert (=> b!3989030 (= lt!1405549 (lemmaIsPrefixSameLengthThenSameList!861 lt!1405573 lt!1405581 lt!1405559))))

(declare-fun b!3989031 () Bool)

(assert (=> b!3989031 (= e!2472738 e!2472719)))

(declare-fun res!1618497 () Bool)

(assert (=> b!3989031 (=> res!1618497 e!2472719)))

(get-info :version)

(assert (=> b!3989031 (= res!1618497 (not ((_ is Some!9165) lt!1405599)))))

(assert (=> b!3989031 (= lt!1405599 (maxPrefix!3639 thiss!21717 rules!2999 lt!1405559))))

(assert (=> b!3989031 (and (= suffixResult!105 lt!1405562) (= lt!1405560 (tuple2!41873 lt!1405595 lt!1405562)))))

(declare-fun lt!1405561 () Unit!61413)

(assert (=> b!3989031 (= lt!1405561 (lemmaSamePrefixThenSameSuffix!2026 lt!1405581 suffixResult!105 lt!1405581 lt!1405562 lt!1405564))))

(assert (=> b!3989031 (isPrefix!3839 lt!1405581 lt!1405591)))

(declare-fun lt!1405597 () Unit!61413)

(assert (=> b!3989031 (= lt!1405597 (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405581 lt!1405562))))

(declare-fun res!1618504 () Bool)

(assert (=> start!375384 (=> (not res!1618504) (not e!2472723))))

(assert (=> start!375384 (= res!1618504 ((_ is Lexer!6339) thiss!21717))))

(assert (=> start!375384 e!2472723))

(assert (=> start!375384 e!2472727))

(declare-fun inv!56992 (Token!12642) Bool)

(assert (=> start!375384 (and (inv!56992 token!484) e!2472724)))

(assert (=> start!375384 e!2472742))

(assert (=> start!375384 e!2472740))

(declare-fun e!2472720 () Bool)

(assert (=> start!375384 e!2472720))

(assert (=> start!375384 true))

(assert (=> start!375384 e!2472735))

(assert (=> start!375384 e!2472730))

(declare-fun b!3989032 () Bool)

(assert (=> b!3989032 (= e!2472717 (and (= (size!31912 token!484) lt!1405604) (= (originalCharacters!7352 token!484) lt!1405581)))))

(declare-fun b!3989033 () Bool)

(declare-fun tp!1215308 () Bool)

(assert (=> b!3989033 (= e!2472720 (and tp_is_empty!20285 tp!1215308))))

(declare-fun b!3989034 () Bool)

(assert (=> b!3989034 (= e!2472721 e!2472728)))

(declare-fun res!1618509 () Bool)

(assert (=> b!3989034 (=> res!1618509 e!2472728)))

(assert (=> b!3989034 (= res!1618509 (not (isPrefix!3839 lt!1405581 lt!1405564)))))

(assert (=> b!3989034 (isPrefix!3839 prefix!494 lt!1405564)))

(declare-fun lt!1405571 () Unit!61413)

(assert (=> b!3989034 (= lt!1405571 (lemmaConcatTwoListThenFirstIsPrefix!2682 prefix!494 suffix!1299))))

(assert (=> b!3989034 (isPrefix!3839 lt!1405581 lt!1405547)))

(declare-fun lt!1405593 () Unit!61413)

(assert (=> b!3989034 (= lt!1405593 (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405581 suffixResult!105))))

(assert (= (and start!375384 res!1618504) b!3989006))

(assert (= (and b!3989006 res!1618502) b!3988991))

(assert (= (and b!3988991 res!1618513) b!3988999))

(assert (= (and b!3988999 res!1618512) b!3989017))

(assert (= (and b!3989017 res!1618515) b!3989020))

(assert (= (and b!3989020 res!1618496) b!3989002))

(assert (= (and b!3989002 res!1618507) b!3989021))

(assert (= (and b!3989021 res!1618508) b!3989003))

(assert (= (and b!3989003 (not res!1618493)) b!3989034))

(assert (= (and b!3989034 (not res!1618509)) b!3989024))

(assert (= (and b!3989024 (not res!1618518)) b!3989028))

(assert (= (and b!3989028 (not res!1618511)) b!3989014))

(assert (= (and b!3989014 (not res!1618494)) b!3989025))

(assert (= (and b!3989025 (not res!1618491)) b!3989018))

(assert (= (and b!3989018 res!1618500) b!3989001))

(assert (= (and b!3989001 res!1618510) b!3989000))

(assert (= (and b!3989000 res!1618499) b!3989032))

(assert (= (and b!3989018 (not res!1618490)) b!3989031))

(assert (= (and b!3989031 (not res!1618497)) b!3989026))

(assert (= (and b!3989026 (not res!1618517)) b!3989012))

(assert (= (and b!3989012 (not res!1618516)) b!3988994))

(assert (= (and b!3988994 (not res!1618495)) b!3989009))

(assert (= (and b!3989009 (not res!1618498)) b!3989019))

(assert (= (and b!3989019 (not res!1618506)) b!3989005))

(assert (= (and b!3989005 (not res!1618503)) b!3989010))

(assert (= (and b!3989010 c!690457) b!3988998))

(assert (= (and b!3989010 (not c!690457)) b!3989029))

(assert (= (and b!3988998 res!1618514) b!3988992))

(assert (= (and b!3989010 c!690456) b!3989015))

(assert (= (and b!3989010 (not c!690456)) b!3989022))

(assert (= (and b!3989010 (not res!1618501)) b!3989027))

(assert (= (and b!3989027 (not res!1618492)) b!3989030))

(assert (= (and b!3989030 (not res!1618505)) b!3988995))

(assert (= (and start!375384 ((_ is Cons!42668) prefix!494)) b!3989013))

(assert (= b!3988997 b!3989023))

(assert (= b!3989008 b!3988997))

(assert (= start!375384 b!3989008))

(assert (= (and start!375384 ((_ is Cons!42668) suffixResult!105)) b!3989011))

(assert (= (and start!375384 ((_ is Cons!42668) suffix!1299)) b!3989007))

(assert (= (and start!375384 ((_ is Cons!42668) newSuffix!27)) b!3989033))

(assert (= b!3988993 b!3989016))

(assert (= b!3988996 b!3988993))

(assert (= (and start!375384 ((_ is Cons!42670) rules!2999)) b!3988996))

(assert (= (and start!375384 ((_ is Cons!42668) newSuffixResult!27)) b!3989004))

(declare-fun m!4566569 () Bool)

(assert (=> b!3989005 m!4566569))

(declare-fun m!4566571 () Bool)

(assert (=> b!3989005 m!4566571))

(declare-fun m!4566573 () Bool)

(assert (=> b!3989006 m!4566573))

(declare-fun m!4566575 () Bool)

(assert (=> b!3989003 m!4566575))

(declare-fun m!4566577 () Bool)

(assert (=> b!3989003 m!4566577))

(declare-fun m!4566579 () Bool)

(assert (=> b!3989003 m!4566579))

(declare-fun m!4566581 () Bool)

(assert (=> b!3989003 m!4566581))

(declare-fun m!4566583 () Bool)

(assert (=> b!3988998 m!4566583))

(declare-fun m!4566585 () Bool)

(assert (=> b!3988998 m!4566585))

(declare-fun m!4566587 () Bool)

(assert (=> b!3989000 m!4566587))

(declare-fun m!4566589 () Bool)

(assert (=> b!3989017 m!4566589))

(declare-fun m!4566591 () Bool)

(assert (=> b!3989008 m!4566591))

(declare-fun m!4566593 () Bool)

(assert (=> b!3989025 m!4566593))

(declare-fun m!4566595 () Bool)

(assert (=> b!3989025 m!4566595))

(declare-fun m!4566597 () Bool)

(assert (=> b!3989025 m!4566597))

(declare-fun m!4566599 () Bool)

(assert (=> b!3989025 m!4566599))

(declare-fun m!4566601 () Bool)

(assert (=> b!3988994 m!4566601))

(declare-fun m!4566603 () Bool)

(assert (=> b!3988994 m!4566603))

(declare-fun m!4566605 () Bool)

(assert (=> b!3988994 m!4566605))

(declare-fun m!4566607 () Bool)

(assert (=> b!3989015 m!4566607))

(declare-fun m!4566609 () Bool)

(assert (=> b!3988999 m!4566609))

(declare-fun m!4566611 () Bool)

(assert (=> b!3988999 m!4566611))

(declare-fun m!4566613 () Bool)

(assert (=> start!375384 m!4566613))

(declare-fun m!4566615 () Bool)

(assert (=> b!3989031 m!4566615))

(declare-fun m!4566617 () Bool)

(assert (=> b!3989031 m!4566617))

(declare-fun m!4566619 () Bool)

(assert (=> b!3989031 m!4566619))

(declare-fun m!4566621 () Bool)

(assert (=> b!3989031 m!4566621))

(declare-fun m!4566623 () Bool)

(assert (=> b!3989024 m!4566623))

(declare-fun m!4566625 () Bool)

(assert (=> b!3989024 m!4566625))

(declare-fun m!4566627 () Bool)

(assert (=> b!3989024 m!4566627))

(declare-fun m!4566629 () Bool)

(assert (=> b!3989024 m!4566629))

(declare-fun m!4566631 () Bool)

(assert (=> b!3988993 m!4566631))

(declare-fun m!4566633 () Bool)

(assert (=> b!3988993 m!4566633))

(declare-fun m!4566635 () Bool)

(assert (=> b!3989010 m!4566635))

(declare-fun m!4566637 () Bool)

(assert (=> b!3989010 m!4566637))

(declare-fun m!4566639 () Bool)

(assert (=> b!3989010 m!4566639))

(declare-fun m!4566641 () Bool)

(assert (=> b!3989026 m!4566641))

(declare-fun m!4566643 () Bool)

(assert (=> b!3989026 m!4566643))

(declare-fun m!4566645 () Bool)

(assert (=> b!3989026 m!4566645))

(declare-fun m!4566647 () Bool)

(assert (=> b!3989026 m!4566647))

(declare-fun m!4566649 () Bool)

(assert (=> b!3989026 m!4566649))

(declare-fun m!4566651 () Bool)

(assert (=> b!3989026 m!4566651))

(declare-fun m!4566653 () Bool)

(assert (=> b!3989026 m!4566653))

(declare-fun m!4566655 () Bool)

(assert (=> b!3989026 m!4566655))

(declare-fun m!4566657 () Bool)

(assert (=> b!3989026 m!4566657))

(assert (=> b!3989026 m!4566641))

(assert (=> b!3989026 m!4566651))

(declare-fun m!4566659 () Bool)

(assert (=> b!3989026 m!4566659))

(declare-fun m!4566661 () Bool)

(assert (=> b!3989026 m!4566661))

(declare-fun m!4566663 () Bool)

(assert (=> b!3989026 m!4566663))

(assert (=> b!3989026 m!4566661))

(declare-fun m!4566665 () Bool)

(assert (=> b!3989026 m!4566665))

(declare-fun m!4566667 () Bool)

(assert (=> b!3989026 m!4566667))

(declare-fun m!4566669 () Bool)

(assert (=> b!3989026 m!4566669))

(declare-fun m!4566671 () Bool)

(assert (=> b!3989026 m!4566671))

(declare-fun m!4566673 () Bool)

(assert (=> b!3989026 m!4566673))

(declare-fun m!4566675 () Bool)

(assert (=> b!3989026 m!4566675))

(declare-fun m!4566677 () Bool)

(assert (=> b!3989009 m!4566677))

(declare-fun m!4566679 () Bool)

(assert (=> b!3989009 m!4566679))

(declare-fun m!4566681 () Bool)

(assert (=> b!3989009 m!4566681))

(declare-fun m!4566683 () Bool)

(assert (=> b!3989027 m!4566683))

(declare-fun m!4566685 () Bool)

(assert (=> b!3989021 m!4566685))

(declare-fun m!4566687 () Bool)

(assert (=> b!3989021 m!4566687))

(declare-fun m!4566689 () Bool)

(assert (=> b!3989012 m!4566689))

(declare-fun m!4566691 () Bool)

(assert (=> b!3989012 m!4566691))

(declare-fun m!4566693 () Bool)

(assert (=> b!3989030 m!4566693))

(declare-fun m!4566695 () Bool)

(assert (=> b!3989030 m!4566695))

(declare-fun m!4566697 () Bool)

(assert (=> b!3989030 m!4566697))

(declare-fun m!4566699 () Bool)

(assert (=> b!3989030 m!4566699))

(declare-fun m!4566701 () Bool)

(assert (=> b!3989034 m!4566701))

(declare-fun m!4566703 () Bool)

(assert (=> b!3989034 m!4566703))

(declare-fun m!4566705 () Bool)

(assert (=> b!3989034 m!4566705))

(declare-fun m!4566707 () Bool)

(assert (=> b!3989034 m!4566707))

(declare-fun m!4566709 () Bool)

(assert (=> b!3989034 m!4566709))

(declare-fun m!4566711 () Bool)

(assert (=> b!3988991 m!4566711))

(declare-fun m!4566713 () Bool)

(assert (=> b!3989002 m!4566713))

(declare-fun m!4566715 () Bool)

(assert (=> b!3989002 m!4566715))

(declare-fun m!4566717 () Bool)

(assert (=> b!3989018 m!4566717))

(declare-fun m!4566719 () Bool)

(assert (=> b!3989018 m!4566719))

(declare-fun m!4566721 () Bool)

(assert (=> b!3989018 m!4566721))

(declare-fun m!4566723 () Bool)

(assert (=> b!3989018 m!4566723))

(declare-fun m!4566725 () Bool)

(assert (=> b!3989028 m!4566725))

(declare-fun m!4566727 () Bool)

(assert (=> b!3989028 m!4566727))

(declare-fun m!4566729 () Bool)

(assert (=> b!3989028 m!4566729))

(declare-fun m!4566731 () Bool)

(assert (=> b!3989028 m!4566731))

(declare-fun m!4566733 () Bool)

(assert (=> b!3989020 m!4566733))

(declare-fun m!4566735 () Bool)

(assert (=> b!3989020 m!4566735))

(declare-fun m!4566737 () Bool)

(assert (=> b!3989020 m!4566737))

(assert (=> b!3989020 m!4566737))

(declare-fun m!4566739 () Bool)

(assert (=> b!3989020 m!4566739))

(declare-fun m!4566741 () Bool)

(assert (=> b!3988997 m!4566741))

(declare-fun m!4566743 () Bool)

(assert (=> b!3988997 m!4566743))

(declare-fun m!4566745 () Bool)

(assert (=> b!3989014 m!4566745))

(declare-fun m!4566747 () Bool)

(assert (=> b!3989014 m!4566747))

(assert (=> b!3989014 m!4566747))

(declare-fun m!4566749 () Bool)

(assert (=> b!3989014 m!4566749))

(declare-fun m!4566751 () Bool)

(assert (=> b!3989014 m!4566751))

(declare-fun m!4566753 () Bool)

(assert (=> b!3989014 m!4566753))

(declare-fun m!4566755 () Bool)

(assert (=> b!3989014 m!4566755))

(declare-fun m!4566757 () Bool)

(assert (=> b!3989014 m!4566757))

(declare-fun m!4566759 () Bool)

(assert (=> b!3988995 m!4566759))

(check-sat (not b!3989010) (not b_next!111507) (not b!3989033) (not b!3989011) (not b!3988998) b_and!306517 (not b!3989004) (not b!3989013) (not b!3989020) (not b!3989007) (not b_next!111505) (not b!3989030) (not b!3989018) b_and!306511 (not b!3989005) (not b!3989002) (not b!3989017) (not b!3988996) (not b!3989000) (not b!3989024) (not b!3989003) (not b!3989006) (not b!3989015) (not b!3988991) (not b!3989025) (not b_next!111509) (not b!3989012) (not b!3988995) (not b!3989008) (not b!3989026) (not b!3988997) (not b!3989027) (not b!3989009) b_and!306513 (not b_next!111511) (not b!3988993) tp_is_empty!20285 (not b!3989034) (not b!3989014) (not b!3989021) (not start!375384) (not b!3989031) (not b!3988999) (not b!3989028) b_and!306515 (not b!3988994))
(check-sat (not b_next!111507) b_and!306517 (not b_next!111509) (not b_next!111505) b_and!306511 b_and!306515 b_and!306513 (not b_next!111511))
(get-model)

(declare-fun d!1180387 () Bool)

(assert (=> d!1180387 (not (matchR!5634 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) lt!1405573))))

(declare-fun lt!1405608 () Unit!61413)

(declare-fun choose!23976 (LexerInterface!6341 List!42794 Rule!13304 List!42792 List!42792 List!42792 Rule!13304) Unit!61413)

(assert (=> d!1180387 (= lt!1405608 (choose!23976 thiss!21717 rules!2999 (rule!9768 token!484) lt!1405581 lt!1405564 lt!1405573 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))

(assert (=> d!1180387 (isPrefix!3839 lt!1405581 lt!1405564)))

(assert (=> d!1180387 (= (lemmaMaxPrefixOutputsMaxPrefix!406 thiss!21717 rules!2999 (rule!9768 token!484) lt!1405581 lt!1405564 lt!1405573 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) lt!1405608)))

(declare-fun bs!588289 () Bool)

(assert (= bs!588289 d!1180387))

(assert (=> bs!588289 m!4566585))

(declare-fun m!4566761 () Bool)

(assert (=> bs!588289 m!4566761))

(assert (=> bs!588289 m!4566709))

(assert (=> b!3988998 d!1180387))

(declare-fun b!3989071 () Bool)

(declare-fun e!2472771 () Bool)

(declare-fun e!2472774 () Bool)

(assert (=> b!3989071 (= e!2472771 e!2472774)))

(declare-fun res!1618549 () Bool)

(assert (=> b!3989071 (=> res!1618549 e!2472774)))

(declare-fun call!285803 () Bool)

(assert (=> b!3989071 (= res!1618549 call!285803)))

(declare-fun b!3989072 () Bool)

(declare-fun res!1618548 () Bool)

(declare-fun e!2472768 () Bool)

(assert (=> b!3989072 (=> (not res!1618548) (not e!2472768))))

(declare-fun isEmpty!25501 (List!42792) Bool)

(declare-fun tail!6221 (List!42792) List!42792)

(assert (=> b!3989072 (= res!1618548 (isEmpty!25501 (tail!6221 lt!1405573)))))

(declare-fun b!3989073 () Bool)

(declare-fun e!2472772 () Bool)

(declare-fun lt!1405613 () Bool)

(assert (=> b!3989073 (= e!2472772 (not lt!1405613))))

(declare-fun b!3989074 () Bool)

(declare-fun e!2472773 () Bool)

(declare-fun nullable!4087 (Regex!11657) Bool)

(assert (=> b!3989074 (= e!2472773 (nullable!4087 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))))

(declare-fun b!3989075 () Bool)

(declare-fun derivativeStep!3499 (Regex!11657 C!23500) Regex!11657)

(declare-fun head!8489 (List!42792) C!23500)

(assert (=> b!3989075 (= e!2472773 (matchR!5634 (derivativeStep!3499 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (head!8489 lt!1405573)) (tail!6221 lt!1405573)))))

(declare-fun b!3989076 () Bool)

(declare-fun res!1618547 () Bool)

(declare-fun e!2472769 () Bool)

(assert (=> b!3989076 (=> res!1618547 e!2472769)))

(assert (=> b!3989076 (= res!1618547 e!2472768)))

(declare-fun res!1618550 () Bool)

(assert (=> b!3989076 (=> (not res!1618550) (not e!2472768))))

(assert (=> b!3989076 (= res!1618550 lt!1405613)))

(declare-fun b!3989077 () Bool)

(assert (=> b!3989077 (= e!2472774 (not (= (head!8489 lt!1405573) (c!690459 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))))))

(declare-fun b!3989078 () Bool)

(declare-fun e!2472770 () Bool)

(assert (=> b!3989078 (= e!2472770 (= lt!1405613 call!285803))))

(declare-fun b!3989079 () Bool)

(assert (=> b!3989079 (= e!2472770 e!2472772)))

(declare-fun c!690471 () Bool)

(assert (=> b!3989079 (= c!690471 ((_ is EmptyLang!11657) (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))))

(declare-fun b!3989080 () Bool)

(assert (=> b!3989080 (= e!2472769 e!2472771)))

(declare-fun res!1618543 () Bool)

(assert (=> b!3989080 (=> (not res!1618543) (not e!2472771))))

(assert (=> b!3989080 (= res!1618543 (not lt!1405613))))

(declare-fun b!3989081 () Bool)

(declare-fun res!1618546 () Bool)

(assert (=> b!3989081 (=> res!1618546 e!2472774)))

(assert (=> b!3989081 (= res!1618546 (not (isEmpty!25501 (tail!6221 lt!1405573))))))

(declare-fun d!1180389 () Bool)

(assert (=> d!1180389 e!2472770))

(declare-fun c!690472 () Bool)

(assert (=> d!1180389 (= c!690472 ((_ is EmptyExpr!11657) (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))))

(assert (=> d!1180389 (= lt!1405613 e!2472773)))

(declare-fun c!690470 () Bool)

(assert (=> d!1180389 (= c!690470 (isEmpty!25501 lt!1405573))))

(declare-fun validRegex!5288 (Regex!11657) Bool)

(assert (=> d!1180389 (validRegex!5288 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))

(assert (=> d!1180389 (= (matchR!5634 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) lt!1405573) lt!1405613)))

(declare-fun b!3989082 () Bool)

(assert (=> b!3989082 (= e!2472768 (= (head!8489 lt!1405573) (c!690459 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))))

(declare-fun b!3989083 () Bool)

(declare-fun res!1618545 () Bool)

(assert (=> b!3989083 (=> res!1618545 e!2472769)))

(assert (=> b!3989083 (= res!1618545 (not ((_ is ElementMatch!11657) (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))))

(assert (=> b!3989083 (= e!2472772 e!2472769)))

(declare-fun bm!285798 () Bool)

(assert (=> bm!285798 (= call!285803 (isEmpty!25501 lt!1405573))))

(declare-fun b!3989084 () Bool)

(declare-fun res!1618544 () Bool)

(assert (=> b!3989084 (=> (not res!1618544) (not e!2472768))))

(assert (=> b!3989084 (= res!1618544 (not call!285803))))

(assert (= (and d!1180389 c!690470) b!3989074))

(assert (= (and d!1180389 (not c!690470)) b!3989075))

(assert (= (and d!1180389 c!690472) b!3989078))

(assert (= (and d!1180389 (not c!690472)) b!3989079))

(assert (= (and b!3989079 c!690471) b!3989073))

(assert (= (and b!3989079 (not c!690471)) b!3989083))

(assert (= (and b!3989083 (not res!1618545)) b!3989076))

(assert (= (and b!3989076 res!1618550) b!3989084))

(assert (= (and b!3989084 res!1618544) b!3989072))

(assert (= (and b!3989072 res!1618548) b!3989082))

(assert (= (and b!3989076 (not res!1618547)) b!3989080))

(assert (= (and b!3989080 res!1618543) b!3989071))

(assert (= (and b!3989071 (not res!1618549)) b!3989081))

(assert (= (and b!3989081 (not res!1618546)) b!3989077))

(assert (= (or b!3989078 b!3989071 b!3989084) bm!285798))

(declare-fun m!4566767 () Bool)

(assert (=> b!3989077 m!4566767))

(declare-fun m!4566769 () Bool)

(assert (=> b!3989072 m!4566769))

(assert (=> b!3989072 m!4566769))

(declare-fun m!4566775 () Bool)

(assert (=> b!3989072 m!4566775))

(assert (=> b!3989082 m!4566767))

(assert (=> b!3989081 m!4566769))

(assert (=> b!3989081 m!4566769))

(assert (=> b!3989081 m!4566775))

(assert (=> b!3989075 m!4566767))

(assert (=> b!3989075 m!4566767))

(declare-fun m!4566777 () Bool)

(assert (=> b!3989075 m!4566777))

(assert (=> b!3989075 m!4566769))

(assert (=> b!3989075 m!4566777))

(assert (=> b!3989075 m!4566769))

(declare-fun m!4566779 () Bool)

(assert (=> b!3989075 m!4566779))

(declare-fun m!4566781 () Bool)

(assert (=> d!1180389 m!4566781))

(declare-fun m!4566783 () Bool)

(assert (=> d!1180389 m!4566783))

(assert (=> bm!285798 m!4566781))

(declare-fun m!4566785 () Bool)

(assert (=> b!3989074 m!4566785))

(assert (=> b!3988998 d!1180389))

(declare-fun d!1180397 () Bool)

(assert (=> d!1180397 (= (inv!56988 (tag!7612 (rule!9768 token!484))) (= (mod (str.len (value!213040 (tag!7612 (rule!9768 token!484)))) 2) 0))))

(assert (=> b!3988997 d!1180397))

(declare-fun d!1180401 () Bool)

(declare-fun res!1618560 () Bool)

(declare-fun e!2472788 () Bool)

(assert (=> d!1180401 (=> (not res!1618560) (not e!2472788))))

(declare-fun semiInverseModEq!2895 (Int Int) Bool)

(assert (=> d!1180401 (= res!1618560 (semiInverseModEq!2895 (toChars!9099 (transformation!6752 (rule!9768 token!484))) (toValue!9240 (transformation!6752 (rule!9768 token!484)))))))

(assert (=> d!1180401 (= (inv!56991 (transformation!6752 (rule!9768 token!484))) e!2472788)))

(declare-fun b!3989106 () Bool)

(declare-fun equivClasses!2794 (Int Int) Bool)

(assert (=> b!3989106 (= e!2472788 (equivClasses!2794 (toChars!9099 (transformation!6752 (rule!9768 token!484))) (toValue!9240 (transformation!6752 (rule!9768 token!484)))))))

(assert (= (and d!1180401 res!1618560) b!3989106))

(declare-fun m!4566795 () Bool)

(assert (=> d!1180401 m!4566795))

(declare-fun m!4566797 () Bool)

(assert (=> b!3989106 m!4566797))

(assert (=> b!3988997 d!1180401))

(declare-fun e!2472811 () Bool)

(declare-fun b!3989146 () Bool)

(declare-fun lt!1405635 () List!42792)

(assert (=> b!3989146 (= e!2472811 (or (not (= lt!1405562 Nil!42668)) (= lt!1405635 lt!1405581)))))

(declare-fun d!1180407 () Bool)

(assert (=> d!1180407 e!2472811))

(declare-fun res!1618582 () Bool)

(assert (=> d!1180407 (=> (not res!1618582) (not e!2472811))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6471 (List!42792) (InoxSet C!23500))

(assert (=> d!1180407 (= res!1618582 (= (content!6471 lt!1405635) ((_ map or) (content!6471 lt!1405581) (content!6471 lt!1405562))))))

(declare-fun e!2472810 () List!42792)

(assert (=> d!1180407 (= lt!1405635 e!2472810)))

(declare-fun c!690487 () Bool)

(assert (=> d!1180407 (= c!690487 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180407 (= (++!11154 lt!1405581 lt!1405562) lt!1405635)))

(declare-fun b!3989144 () Bool)

(assert (=> b!3989144 (= e!2472810 (Cons!42668 (h!48088 lt!1405581) (++!11154 (t!331687 lt!1405581) lt!1405562)))))

(declare-fun b!3989145 () Bool)

(declare-fun res!1618581 () Bool)

(assert (=> b!3989145 (=> (not res!1618581) (not e!2472811))))

(assert (=> b!3989145 (= res!1618581 (= (size!31913 lt!1405635) (+ (size!31913 lt!1405581) (size!31913 lt!1405562))))))

(declare-fun b!3989143 () Bool)

(assert (=> b!3989143 (= e!2472810 lt!1405562)))

(assert (= (and d!1180407 c!690487) b!3989143))

(assert (= (and d!1180407 (not c!690487)) b!3989144))

(assert (= (and d!1180407 res!1618582) b!3989145))

(assert (= (and b!3989145 res!1618581) b!3989146))

(declare-fun m!4566847 () Bool)

(assert (=> d!1180407 m!4566847))

(declare-fun m!4566849 () Bool)

(assert (=> d!1180407 m!4566849))

(declare-fun m!4566851 () Bool)

(assert (=> d!1180407 m!4566851))

(declare-fun m!4566853 () Bool)

(assert (=> b!3989144 m!4566853))

(declare-fun m!4566855 () Bool)

(assert (=> b!3989145 m!4566855))

(assert (=> b!3989145 m!4566733))

(declare-fun m!4566857 () Bool)

(assert (=> b!3989145 m!4566857))

(assert (=> b!3989018 d!1180407))

(declare-fun d!1180421 () Bool)

(declare-fun lt!1405646 () List!42792)

(assert (=> d!1180421 (= (++!11154 lt!1405581 lt!1405646) lt!1405564)))

(declare-fun e!2472817 () List!42792)

(assert (=> d!1180421 (= lt!1405646 e!2472817)))

(declare-fun c!690492 () Bool)

(assert (=> d!1180421 (= c!690492 ((_ is Cons!42668) lt!1405581))))

(assert (=> d!1180421 (>= (size!31913 lt!1405564) (size!31913 lt!1405581))))

(assert (=> d!1180421 (= (getSuffix!2270 lt!1405564 lt!1405581) lt!1405646)))

(declare-fun b!3989157 () Bool)

(assert (=> b!3989157 (= e!2472817 (getSuffix!2270 (tail!6221 lt!1405564) (t!331687 lt!1405581)))))

(declare-fun b!3989158 () Bool)

(assert (=> b!3989158 (= e!2472817 lt!1405564)))

(assert (= (and d!1180421 c!690492) b!3989157))

(assert (= (and d!1180421 (not c!690492)) b!3989158))

(declare-fun m!4566879 () Bool)

(assert (=> d!1180421 m!4566879))

(declare-fun m!4566881 () Bool)

(assert (=> d!1180421 m!4566881))

(assert (=> d!1180421 m!4566733))

(declare-fun m!4566883 () Bool)

(assert (=> b!3989157 m!4566883))

(assert (=> b!3989157 m!4566883))

(declare-fun m!4566885 () Bool)

(assert (=> b!3989157 m!4566885))

(assert (=> b!3989018 d!1180421))

(declare-fun b!3989211 () Bool)

(declare-fun e!2472849 () Bool)

(declare-fun e!2472847 () Bool)

(assert (=> b!3989211 (= e!2472849 e!2472847)))

(declare-fun res!1618620 () Bool)

(assert (=> b!3989211 (=> (not res!1618620) (not e!2472847))))

(assert (=> b!3989211 (= res!1618620 (not ((_ is Nil!42668) lt!1405564)))))

(declare-fun b!3989213 () Bool)

(assert (=> b!3989213 (= e!2472847 (isPrefix!3839 (tail!6221 lt!1405564) (tail!6221 lt!1405564)))))

(declare-fun d!1180429 () Bool)

(declare-fun e!2472848 () Bool)

(assert (=> d!1180429 e!2472848))

(declare-fun res!1618619 () Bool)

(assert (=> d!1180429 (=> res!1618619 e!2472848)))

(declare-fun lt!1405652 () Bool)

(assert (=> d!1180429 (= res!1618619 (not lt!1405652))))

(assert (=> d!1180429 (= lt!1405652 e!2472849)))

(declare-fun res!1618622 () Bool)

(assert (=> d!1180429 (=> res!1618622 e!2472849)))

(assert (=> d!1180429 (= res!1618622 ((_ is Nil!42668) lt!1405564))))

(assert (=> d!1180429 (= (isPrefix!3839 lt!1405564 lt!1405564) lt!1405652)))

(declare-fun b!3989214 () Bool)

(assert (=> b!3989214 (= e!2472848 (>= (size!31913 lt!1405564) (size!31913 lt!1405564)))))

(declare-fun b!3989212 () Bool)

(declare-fun res!1618621 () Bool)

(assert (=> b!3989212 (=> (not res!1618621) (not e!2472847))))

(assert (=> b!3989212 (= res!1618621 (= (head!8489 lt!1405564) (head!8489 lt!1405564)))))

(assert (= (and d!1180429 (not res!1618622)) b!3989211))

(assert (= (and b!3989211 res!1618620) b!3989212))

(assert (= (and b!3989212 res!1618621) b!3989213))

(assert (= (and d!1180429 (not res!1618619)) b!3989214))

(assert (=> b!3989213 m!4566883))

(assert (=> b!3989213 m!4566883))

(assert (=> b!3989213 m!4566883))

(assert (=> b!3989213 m!4566883))

(declare-fun m!4566907 () Bool)

(assert (=> b!3989213 m!4566907))

(assert (=> b!3989214 m!4566881))

(assert (=> b!3989214 m!4566881))

(declare-fun m!4566909 () Bool)

(assert (=> b!3989212 m!4566909))

(assert (=> b!3989212 m!4566909))

(assert (=> b!3989018 d!1180429))

(declare-fun d!1180437 () Bool)

(assert (=> d!1180437 (isPrefix!3839 lt!1405564 lt!1405564)))

(declare-fun lt!1405660 () Unit!61413)

(declare-fun choose!23978 (List!42792 List!42792) Unit!61413)

(assert (=> d!1180437 (= lt!1405660 (choose!23978 lt!1405564 lt!1405564))))

(assert (=> d!1180437 (= (lemmaIsPrefixRefl!2431 lt!1405564 lt!1405564) lt!1405660)))

(declare-fun bs!588295 () Bool)

(assert (= bs!588295 d!1180437))

(assert (=> bs!588295 m!4566721))

(declare-fun m!4566931 () Bool)

(assert (=> bs!588295 m!4566931))

(assert (=> b!3989018 d!1180437))

(declare-fun b!3989224 () Bool)

(declare-fun e!2472859 () Bool)

(declare-fun e!2472857 () Bool)

(assert (=> b!3989224 (= e!2472859 e!2472857)))

(declare-fun res!1618633 () Bool)

(assert (=> b!3989224 (=> (not res!1618633) (not e!2472857))))

(assert (=> b!3989224 (= res!1618633 (not ((_ is Nil!42668) suffix!1299)))))

(declare-fun b!3989226 () Bool)

(assert (=> b!3989226 (= e!2472857 (isPrefix!3839 (tail!6221 newSuffix!27) (tail!6221 suffix!1299)))))

(declare-fun d!1180445 () Bool)

(declare-fun e!2472858 () Bool)

(assert (=> d!1180445 e!2472858))

(declare-fun res!1618632 () Bool)

(assert (=> d!1180445 (=> res!1618632 e!2472858)))

(declare-fun lt!1405661 () Bool)

(assert (=> d!1180445 (= res!1618632 (not lt!1405661))))

(assert (=> d!1180445 (= lt!1405661 e!2472859)))

(declare-fun res!1618635 () Bool)

(assert (=> d!1180445 (=> res!1618635 e!2472859)))

(assert (=> d!1180445 (= res!1618635 ((_ is Nil!42668) newSuffix!27))))

(assert (=> d!1180445 (= (isPrefix!3839 newSuffix!27 suffix!1299) lt!1405661)))

(declare-fun b!3989227 () Bool)

(assert (=> b!3989227 (= e!2472858 (>= (size!31913 suffix!1299) (size!31913 newSuffix!27)))))

(declare-fun b!3989225 () Bool)

(declare-fun res!1618634 () Bool)

(assert (=> b!3989225 (=> (not res!1618634) (not e!2472857))))

(assert (=> b!3989225 (= res!1618634 (= (head!8489 newSuffix!27) (head!8489 suffix!1299)))))

(assert (= (and d!1180445 (not res!1618635)) b!3989224))

(assert (= (and b!3989224 res!1618633) b!3989225))

(assert (= (and b!3989225 res!1618634) b!3989226))

(assert (= (and d!1180445 (not res!1618632)) b!3989227))

(declare-fun m!4566933 () Bool)

(assert (=> b!3989226 m!4566933))

(declare-fun m!4566935 () Bool)

(assert (=> b!3989226 m!4566935))

(assert (=> b!3989226 m!4566933))

(assert (=> b!3989226 m!4566935))

(declare-fun m!4566937 () Bool)

(assert (=> b!3989226 m!4566937))

(assert (=> b!3989227 m!4566609))

(assert (=> b!3989227 m!4566611))

(declare-fun m!4566939 () Bool)

(assert (=> b!3989225 m!4566939))

(declare-fun m!4566941 () Bool)

(assert (=> b!3989225 m!4566941))

(assert (=> b!3989017 d!1180445))

(declare-fun b!3989283 () Bool)

(declare-fun res!1618674 () Bool)

(declare-fun e!2472890 () Bool)

(assert (=> b!3989283 (=> (not res!1618674) (not e!2472890))))

(declare-fun lt!1405681 () Option!9166)

(declare-fun get!14039 (Option!9166) tuple2!41872)

(assert (=> b!3989283 (= res!1618674 (< (size!31913 (_2!24070 (get!14039 lt!1405681))) (size!31913 lt!1405564)))))

(declare-fun b!3989284 () Bool)

(declare-fun res!1618669 () Bool)

(assert (=> b!3989284 (=> (not res!1618669) (not e!2472890))))

(assert (=> b!3989284 (= res!1618669 (= (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405681)))) (originalCharacters!7352 (_1!24070 (get!14039 lt!1405681)))))))

(declare-fun b!3989285 () Bool)

(declare-fun contains!8491 (List!42794 Rule!13304) Bool)

(assert (=> b!3989285 (= e!2472890 (contains!8491 rules!2999 (rule!9768 (_1!24070 (get!14039 lt!1405681)))))))

(declare-fun b!3989286 () Bool)

(declare-fun res!1618670 () Bool)

(assert (=> b!3989286 (=> (not res!1618670) (not e!2472890))))

(assert (=> b!3989286 (= res!1618670 (= (value!213066 (_1!24070 (get!14039 lt!1405681))) (apply!9963 (transformation!6752 (rule!9768 (_1!24070 (get!14039 lt!1405681)))) (seqFromList!4991 (originalCharacters!7352 (_1!24070 (get!14039 lt!1405681)))))))))

(declare-fun b!3989287 () Bool)

(declare-fun e!2472891 () Option!9166)

(declare-fun lt!1405680 () Option!9166)

(declare-fun lt!1405679 () Option!9166)

(assert (=> b!3989287 (= e!2472891 (ite (and ((_ is None!9165) lt!1405680) ((_ is None!9165) lt!1405679)) None!9165 (ite ((_ is None!9165) lt!1405679) lt!1405680 (ite ((_ is None!9165) lt!1405680) lt!1405679 (ite (>= (size!31912 (_1!24070 (v!39521 lt!1405680))) (size!31912 (_1!24070 (v!39521 lt!1405679)))) lt!1405680 lt!1405679)))))))

(declare-fun call!285810 () Option!9166)

(assert (=> b!3989287 (= lt!1405680 call!285810)))

(assert (=> b!3989287 (= lt!1405679 (maxPrefix!3639 thiss!21717 (t!331689 rules!2999) lt!1405564))))

(declare-fun bm!285805 () Bool)

(assert (=> bm!285805 (= call!285810 (maxPrefixOneRule!2673 thiss!21717 (h!48090 rules!2999) lt!1405564))))

(declare-fun d!1180447 () Bool)

(declare-fun e!2472889 () Bool)

(assert (=> d!1180447 e!2472889))

(declare-fun res!1618671 () Bool)

(assert (=> d!1180447 (=> res!1618671 e!2472889)))

(declare-fun isEmpty!25503 (Option!9166) Bool)

(assert (=> d!1180447 (= res!1618671 (isEmpty!25503 lt!1405681))))

(assert (=> d!1180447 (= lt!1405681 e!2472891)))

(declare-fun c!690513 () Bool)

(assert (=> d!1180447 (= c!690513 (and ((_ is Cons!42670) rules!2999) ((_ is Nil!42670) (t!331689 rules!2999))))))

(declare-fun lt!1405682 () Unit!61413)

(declare-fun lt!1405678 () Unit!61413)

(assert (=> d!1180447 (= lt!1405682 lt!1405678)))

(assert (=> d!1180447 (isPrefix!3839 lt!1405564 lt!1405564)))

(assert (=> d!1180447 (= lt!1405678 (lemmaIsPrefixRefl!2431 lt!1405564 lt!1405564))))

(assert (=> d!1180447 (rulesValidInductive!2453 thiss!21717 rules!2999)))

(assert (=> d!1180447 (= (maxPrefix!3639 thiss!21717 rules!2999 lt!1405564) lt!1405681)))

(declare-fun b!3989288 () Bool)

(declare-fun res!1618675 () Bool)

(assert (=> b!3989288 (=> (not res!1618675) (not e!2472890))))

(assert (=> b!3989288 (= res!1618675 (matchR!5634 (regex!6752 (rule!9768 (_1!24070 (get!14039 lt!1405681)))) (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405681))))))))

(declare-fun b!3989289 () Bool)

(assert (=> b!3989289 (= e!2472889 e!2472890)))

(declare-fun res!1618673 () Bool)

(assert (=> b!3989289 (=> (not res!1618673) (not e!2472890))))

(declare-fun isDefined!7039 (Option!9166) Bool)

(assert (=> b!3989289 (= res!1618673 (isDefined!7039 lt!1405681))))

(declare-fun b!3989290 () Bool)

(declare-fun res!1618672 () Bool)

(assert (=> b!3989290 (=> (not res!1618672) (not e!2472890))))

(assert (=> b!3989290 (= res!1618672 (= (++!11154 (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405681)))) (_2!24070 (get!14039 lt!1405681))) lt!1405564))))

(declare-fun b!3989291 () Bool)

(assert (=> b!3989291 (= e!2472891 call!285810)))

(assert (= (and d!1180447 c!690513) b!3989291))

(assert (= (and d!1180447 (not c!690513)) b!3989287))

(assert (= (or b!3989291 b!3989287) bm!285805))

(assert (= (and d!1180447 (not res!1618671)) b!3989289))

(assert (= (and b!3989289 res!1618673) b!3989284))

(assert (= (and b!3989284 res!1618669) b!3989283))

(assert (= (and b!3989283 res!1618674) b!3989290))

(assert (= (and b!3989290 res!1618672) b!3989286))

(assert (= (and b!3989286 res!1618670) b!3989288))

(assert (= (and b!3989288 res!1618675) b!3989285))

(declare-fun m!4566973 () Bool)

(assert (=> b!3989285 m!4566973))

(declare-fun m!4566975 () Bool)

(assert (=> b!3989285 m!4566975))

(assert (=> b!3989290 m!4566973))

(declare-fun m!4566977 () Bool)

(assert (=> b!3989290 m!4566977))

(assert (=> b!3989290 m!4566977))

(declare-fun m!4566979 () Bool)

(assert (=> b!3989290 m!4566979))

(assert (=> b!3989290 m!4566979))

(declare-fun m!4566981 () Bool)

(assert (=> b!3989290 m!4566981))

(assert (=> b!3989288 m!4566973))

(assert (=> b!3989288 m!4566977))

(assert (=> b!3989288 m!4566977))

(assert (=> b!3989288 m!4566979))

(assert (=> b!3989288 m!4566979))

(declare-fun m!4566983 () Bool)

(assert (=> b!3989288 m!4566983))

(assert (=> b!3989284 m!4566973))

(assert (=> b!3989284 m!4566977))

(assert (=> b!3989284 m!4566977))

(assert (=> b!3989284 m!4566979))

(declare-fun m!4566985 () Bool)

(assert (=> b!3989287 m!4566985))

(assert (=> b!3989283 m!4566973))

(declare-fun m!4566987 () Bool)

(assert (=> b!3989283 m!4566987))

(assert (=> b!3989283 m!4566881))

(assert (=> b!3989286 m!4566973))

(declare-fun m!4566989 () Bool)

(assert (=> b!3989286 m!4566989))

(assert (=> b!3989286 m!4566989))

(declare-fun m!4566991 () Bool)

(assert (=> b!3989286 m!4566991))

(declare-fun m!4566993 () Bool)

(assert (=> bm!285805 m!4566993))

(declare-fun m!4566995 () Bool)

(assert (=> d!1180447 m!4566995))

(assert (=> d!1180447 m!4566721))

(assert (=> d!1180447 m!4566723))

(assert (=> d!1180447 m!4566759))

(declare-fun m!4566997 () Bool)

(assert (=> b!3989289 m!4566997))

(assert (=> b!3989021 d!1180447))

(declare-fun lt!1405683 () List!42792)

(declare-fun b!3989295 () Bool)

(declare-fun e!2472893 () Bool)

(assert (=> b!3989295 (= e!2472893 (or (not (= suffix!1299 Nil!42668)) (= lt!1405683 prefix!494)))))

(declare-fun d!1180459 () Bool)

(assert (=> d!1180459 e!2472893))

(declare-fun res!1618677 () Bool)

(assert (=> d!1180459 (=> (not res!1618677) (not e!2472893))))

(assert (=> d!1180459 (= res!1618677 (= (content!6471 lt!1405683) ((_ map or) (content!6471 prefix!494) (content!6471 suffix!1299))))))

(declare-fun e!2472892 () List!42792)

(assert (=> d!1180459 (= lt!1405683 e!2472892)))

(declare-fun c!690514 () Bool)

(assert (=> d!1180459 (= c!690514 ((_ is Nil!42668) prefix!494))))

(assert (=> d!1180459 (= (++!11154 prefix!494 suffix!1299) lt!1405683)))

(declare-fun b!3989293 () Bool)

(assert (=> b!3989293 (= e!2472892 (Cons!42668 (h!48088 prefix!494) (++!11154 (t!331687 prefix!494) suffix!1299)))))

(declare-fun b!3989294 () Bool)

(declare-fun res!1618676 () Bool)

(assert (=> b!3989294 (=> (not res!1618676) (not e!2472893))))

(assert (=> b!3989294 (= res!1618676 (= (size!31913 lt!1405683) (+ (size!31913 prefix!494) (size!31913 suffix!1299))))))

(declare-fun b!3989292 () Bool)

(assert (=> b!3989292 (= e!2472892 suffix!1299)))

(assert (= (and d!1180459 c!690514) b!3989292))

(assert (= (and d!1180459 (not c!690514)) b!3989293))

(assert (= (and d!1180459 res!1618677) b!3989294))

(assert (= (and b!3989294 res!1618676) b!3989295))

(declare-fun m!4566999 () Bool)

(assert (=> d!1180459 m!4566999))

(declare-fun m!4567001 () Bool)

(assert (=> d!1180459 m!4567001))

(declare-fun m!4567003 () Bool)

(assert (=> d!1180459 m!4567003))

(declare-fun m!4567005 () Bool)

(assert (=> b!3989293 m!4567005))

(declare-fun m!4567007 () Bool)

(assert (=> b!3989294 m!4567007))

(assert (=> b!3989294 m!4566735))

(assert (=> b!3989294 m!4566609))

(assert (=> b!3989021 d!1180459))

(declare-fun d!1180461 () Bool)

(declare-fun lt!1405686 () Int)

(assert (=> d!1180461 (>= lt!1405686 0)))

(declare-fun e!2472896 () Int)

(assert (=> d!1180461 (= lt!1405686 e!2472896)))

(declare-fun c!690517 () Bool)

(assert (=> d!1180461 (= c!690517 ((_ is Nil!42668) (originalCharacters!7352 token!484)))))

(assert (=> d!1180461 (= (size!31913 (originalCharacters!7352 token!484)) lt!1405686)))

(declare-fun b!3989300 () Bool)

(assert (=> b!3989300 (= e!2472896 0)))

(declare-fun b!3989301 () Bool)

(assert (=> b!3989301 (= e!2472896 (+ 1 (size!31913 (t!331687 (originalCharacters!7352 token!484)))))))

(assert (= (and d!1180461 c!690517) b!3989300))

(assert (= (and d!1180461 (not c!690517)) b!3989301))

(declare-fun m!4567009 () Bool)

(assert (=> b!3989301 m!4567009))

(assert (=> b!3989000 d!1180461))

(declare-fun d!1180463 () Bool)

(declare-fun lt!1405687 () Int)

(assert (=> d!1180463 (>= lt!1405687 0)))

(declare-fun e!2472897 () Int)

(assert (=> d!1180463 (= lt!1405687 e!2472897)))

(declare-fun c!690518 () Bool)

(assert (=> d!1180463 (= c!690518 ((_ is Nil!42668) suffix!1299))))

(assert (=> d!1180463 (= (size!31913 suffix!1299) lt!1405687)))

(declare-fun b!3989302 () Bool)

(assert (=> b!3989302 (= e!2472897 0)))

(declare-fun b!3989303 () Bool)

(assert (=> b!3989303 (= e!2472897 (+ 1 (size!31913 (t!331687 suffix!1299))))))

(assert (= (and d!1180463 c!690518) b!3989302))

(assert (= (and d!1180463 (not c!690518)) b!3989303))

(declare-fun m!4567011 () Bool)

(assert (=> b!3989303 m!4567011))

(assert (=> b!3988999 d!1180463))

(declare-fun d!1180465 () Bool)

(declare-fun lt!1405688 () Int)

(assert (=> d!1180465 (>= lt!1405688 0)))

(declare-fun e!2472898 () Int)

(assert (=> d!1180465 (= lt!1405688 e!2472898)))

(declare-fun c!690519 () Bool)

(assert (=> d!1180465 (= c!690519 ((_ is Nil!42668) newSuffix!27))))

(assert (=> d!1180465 (= (size!31913 newSuffix!27) lt!1405688)))

(declare-fun b!3989304 () Bool)

(assert (=> b!3989304 (= e!2472898 0)))

(declare-fun b!3989305 () Bool)

(assert (=> b!3989305 (= e!2472898 (+ 1 (size!31913 (t!331687 newSuffix!27))))))

(assert (= (and d!1180465 c!690519) b!3989304))

(assert (= (and d!1180465 (not c!690519)) b!3989305))

(declare-fun m!4567013 () Bool)

(assert (=> b!3989305 m!4567013))

(assert (=> b!3988999 d!1180465))

(declare-fun d!1180467 () Bool)

(declare-fun lt!1405689 () Int)

(assert (=> d!1180467 (>= lt!1405689 0)))

(declare-fun e!2472899 () Int)

(assert (=> d!1180467 (= lt!1405689 e!2472899)))

(declare-fun c!690520 () Bool)

(assert (=> d!1180467 (= c!690520 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180467 (= (size!31913 lt!1405581) lt!1405689)))

(declare-fun b!3989306 () Bool)

(assert (=> b!3989306 (= e!2472899 0)))

(declare-fun b!3989307 () Bool)

(assert (=> b!3989307 (= e!2472899 (+ 1 (size!31913 (t!331687 lt!1405581))))))

(assert (= (and d!1180467 c!690520) b!3989306))

(assert (= (and d!1180467 (not c!690520)) b!3989307))

(declare-fun m!4567015 () Bool)

(assert (=> b!3989307 m!4567015))

(assert (=> b!3989020 d!1180467))

(declare-fun d!1180469 () Bool)

(declare-fun lt!1405690 () Int)

(assert (=> d!1180469 (>= lt!1405690 0)))

(declare-fun e!2472900 () Int)

(assert (=> d!1180469 (= lt!1405690 e!2472900)))

(declare-fun c!690521 () Bool)

(assert (=> d!1180469 (= c!690521 ((_ is Nil!42668) prefix!494))))

(assert (=> d!1180469 (= (size!31913 prefix!494) lt!1405690)))

(declare-fun b!3989308 () Bool)

(assert (=> b!3989308 (= e!2472900 0)))

(declare-fun b!3989309 () Bool)

(assert (=> b!3989309 (= e!2472900 (+ 1 (size!31913 (t!331687 prefix!494))))))

(assert (= (and d!1180469 c!690521) b!3989308))

(assert (= (and d!1180469 (not c!690521)) b!3989309))

(declare-fun m!4567017 () Bool)

(assert (=> b!3989309 m!4567017))

(assert (=> b!3989020 d!1180469))

(declare-fun d!1180471 () Bool)

(declare-fun list!15841 (Conc!12963) List!42792)

(assert (=> d!1180471 (= (list!15840 (charsOf!4568 token!484)) (list!15841 (c!690458 (charsOf!4568 token!484))))))

(declare-fun bs!588298 () Bool)

(assert (= bs!588298 d!1180471))

(declare-fun m!4567019 () Bool)

(assert (=> bs!588298 m!4567019))

(assert (=> b!3989020 d!1180471))

(declare-fun d!1180473 () Bool)

(declare-fun lt!1405693 () BalanceConc!25520)

(assert (=> d!1180473 (= (list!15840 lt!1405693) (originalCharacters!7352 token!484))))

(declare-fun dynLambda!18126 (Int TokenValue!6982) BalanceConc!25520)

(assert (=> d!1180473 (= lt!1405693 (dynLambda!18126 (toChars!9099 (transformation!6752 (rule!9768 token!484))) (value!213066 token!484)))))

(assert (=> d!1180473 (= (charsOf!4568 token!484) lt!1405693)))

(declare-fun b_lambda!116463 () Bool)

(assert (=> (not b_lambda!116463) (not d!1180473)))

(declare-fun tb!240157 () Bool)

(declare-fun t!331691 () Bool)

(assert (=> (and b!3989016 (= (toChars!9099 (transformation!6752 (h!48090 rules!2999))) (toChars!9099 (transformation!6752 (rule!9768 token!484)))) t!331691) tb!240157))

(declare-fun b!3989314 () Bool)

(declare-fun e!2472903 () Bool)

(declare-fun tp!1215315 () Bool)

(declare-fun inv!56993 (Conc!12963) Bool)

(assert (=> b!3989314 (= e!2472903 (and (inv!56993 (c!690458 (dynLambda!18126 (toChars!9099 (transformation!6752 (rule!9768 token!484))) (value!213066 token!484)))) tp!1215315))))

(declare-fun result!290978 () Bool)

(declare-fun inv!56994 (BalanceConc!25520) Bool)

(assert (=> tb!240157 (= result!290978 (and (inv!56994 (dynLambda!18126 (toChars!9099 (transformation!6752 (rule!9768 token!484))) (value!213066 token!484))) e!2472903))))

(assert (= tb!240157 b!3989314))

(declare-fun m!4567021 () Bool)

(assert (=> b!3989314 m!4567021))

(declare-fun m!4567023 () Bool)

(assert (=> tb!240157 m!4567023))

(assert (=> d!1180473 t!331691))

(declare-fun b_and!306519 () Bool)

(assert (= b_and!306513 (and (=> t!331691 result!290978) b_and!306519)))

(declare-fun t!331693 () Bool)

(declare-fun tb!240159 () Bool)

(assert (=> (and b!3989023 (= (toChars!9099 (transformation!6752 (rule!9768 token!484))) (toChars!9099 (transformation!6752 (rule!9768 token!484)))) t!331693) tb!240159))

(declare-fun result!290982 () Bool)

(assert (= result!290982 result!290978))

(assert (=> d!1180473 t!331693))

(declare-fun b_and!306521 () Bool)

(assert (= b_and!306517 (and (=> t!331693 result!290982) b_and!306521)))

(declare-fun m!4567025 () Bool)

(assert (=> d!1180473 m!4567025))

(declare-fun m!4567027 () Bool)

(assert (=> d!1180473 m!4567027))

(assert (=> b!3989020 d!1180473))

(declare-fun b!3989333 () Bool)

(declare-fun res!1618694 () Bool)

(declare-fun e!2472913 () Bool)

(assert (=> b!3989333 (=> (not res!1618694) (not e!2472913))))

(declare-fun lt!1405707 () Option!9166)

(assert (=> b!3989333 (= res!1618694 (< (size!31913 (_2!24070 (get!14039 lt!1405707))) (size!31913 lt!1405564)))))

(declare-fun d!1180475 () Bool)

(declare-fun e!2472914 () Bool)

(assert (=> d!1180475 e!2472914))

(declare-fun res!1618693 () Bool)

(assert (=> d!1180475 (=> res!1618693 e!2472914)))

(assert (=> d!1180475 (= res!1618693 (isEmpty!25503 lt!1405707))))

(declare-fun e!2472915 () Option!9166)

(assert (=> d!1180475 (= lt!1405707 e!2472915)))

(declare-fun c!690524 () Bool)

(declare-datatypes ((tuple2!41874 0))(
  ( (tuple2!41875 (_1!24071 List!42792) (_2!24071 List!42792)) )
))
(declare-fun lt!1405708 () tuple2!41874)

(assert (=> d!1180475 (= c!690524 (isEmpty!25501 (_1!24071 lt!1405708)))))

(declare-fun findLongestMatch!1244 (Regex!11657 List!42792) tuple2!41874)

(assert (=> d!1180475 (= lt!1405708 (findLongestMatch!1244 (regex!6752 (rule!9768 token!484)) lt!1405564))))

(assert (=> d!1180475 (ruleValid!2684 thiss!21717 (rule!9768 token!484))))

(assert (=> d!1180475 (= (maxPrefixOneRule!2673 thiss!21717 (rule!9768 token!484) lt!1405564) lt!1405707)))

(declare-fun b!3989334 () Bool)

(assert (=> b!3989334 (= e!2472915 None!9165)))

(declare-fun b!3989335 () Bool)

(declare-fun e!2472912 () Bool)

(declare-fun findLongestMatchInner!1331 (Regex!11657 List!42792 Int List!42792 List!42792 Int) tuple2!41874)

(assert (=> b!3989335 (= e!2472912 (matchR!5634 (regex!6752 (rule!9768 token!484)) (_1!24071 (findLongestMatchInner!1331 (regex!6752 (rule!9768 token!484)) Nil!42668 (size!31913 Nil!42668) lt!1405564 lt!1405564 (size!31913 lt!1405564)))))))

(declare-fun b!3989336 () Bool)

(assert (=> b!3989336 (= e!2472913 (= (size!31912 (_1!24070 (get!14039 lt!1405707))) (size!31913 (originalCharacters!7352 (_1!24070 (get!14039 lt!1405707))))))))

(declare-fun b!3989337 () Bool)

(declare-fun res!1618692 () Bool)

(assert (=> b!3989337 (=> (not res!1618692) (not e!2472913))))

(assert (=> b!3989337 (= res!1618692 (= (++!11154 (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405707)))) (_2!24070 (get!14039 lt!1405707))) lt!1405564))))

(declare-fun b!3989338 () Bool)

(declare-fun res!1618697 () Bool)

(assert (=> b!3989338 (=> (not res!1618697) (not e!2472913))))

(assert (=> b!3989338 (= res!1618697 (= (rule!9768 (_1!24070 (get!14039 lt!1405707))) (rule!9768 token!484)))))

(declare-fun b!3989339 () Bool)

(declare-fun size!31914 (BalanceConc!25520) Int)

(assert (=> b!3989339 (= e!2472915 (Some!9165 (tuple2!41873 (Token!12643 (apply!9963 (transformation!6752 (rule!9768 token!484)) (seqFromList!4991 (_1!24071 lt!1405708))) (rule!9768 token!484) (size!31914 (seqFromList!4991 (_1!24071 lt!1405708))) (_1!24071 lt!1405708)) (_2!24071 lt!1405708))))))

(declare-fun lt!1405704 () Unit!61413)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1304 (Regex!11657 List!42792) Unit!61413)

(assert (=> b!3989339 (= lt!1405704 (longestMatchIsAcceptedByMatchOrIsEmpty!1304 (regex!6752 (rule!9768 token!484)) lt!1405564))))

(declare-fun res!1618696 () Bool)

(assert (=> b!3989339 (= res!1618696 (isEmpty!25501 (_1!24071 (findLongestMatchInner!1331 (regex!6752 (rule!9768 token!484)) Nil!42668 (size!31913 Nil!42668) lt!1405564 lt!1405564 (size!31913 lt!1405564)))))))

(assert (=> b!3989339 (=> res!1618696 e!2472912)))

(assert (=> b!3989339 e!2472912))

(declare-fun lt!1405705 () Unit!61413)

(assert (=> b!3989339 (= lt!1405705 lt!1405704)))

(declare-fun lt!1405706 () Unit!61413)

(declare-fun lemmaSemiInverse!1847 (TokenValueInjection!13392 BalanceConc!25520) Unit!61413)

(assert (=> b!3989339 (= lt!1405706 (lemmaSemiInverse!1847 (transformation!6752 (rule!9768 token!484)) (seqFromList!4991 (_1!24071 lt!1405708))))))

(declare-fun b!3989340 () Bool)

(assert (=> b!3989340 (= e!2472914 e!2472913)))

(declare-fun res!1618695 () Bool)

(assert (=> b!3989340 (=> (not res!1618695) (not e!2472913))))

(assert (=> b!3989340 (= res!1618695 (matchR!5634 (regex!6752 (rule!9768 token!484)) (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405707))))))))

(declare-fun b!3989341 () Bool)

(declare-fun res!1618698 () Bool)

(assert (=> b!3989341 (=> (not res!1618698) (not e!2472913))))

(assert (=> b!3989341 (= res!1618698 (= (value!213066 (_1!24070 (get!14039 lt!1405707))) (apply!9963 (transformation!6752 (rule!9768 (_1!24070 (get!14039 lt!1405707)))) (seqFromList!4991 (originalCharacters!7352 (_1!24070 (get!14039 lt!1405707)))))))))

(assert (= (and d!1180475 c!690524) b!3989334))

(assert (= (and d!1180475 (not c!690524)) b!3989339))

(assert (= (and b!3989339 (not res!1618696)) b!3989335))

(assert (= (and d!1180475 (not res!1618693)) b!3989340))

(assert (= (and b!3989340 res!1618695) b!3989337))

(assert (= (and b!3989337 res!1618692) b!3989333))

(assert (= (and b!3989333 res!1618694) b!3989338))

(assert (= (and b!3989338 res!1618697) b!3989341))

(assert (= (and b!3989341 res!1618698) b!3989336))

(declare-fun m!4567029 () Bool)

(assert (=> b!3989338 m!4567029))

(assert (=> b!3989333 m!4567029))

(declare-fun m!4567031 () Bool)

(assert (=> b!3989333 m!4567031))

(assert (=> b!3989333 m!4566881))

(declare-fun m!4567033 () Bool)

(assert (=> b!3989335 m!4567033))

(assert (=> b!3989335 m!4566881))

(assert (=> b!3989335 m!4567033))

(assert (=> b!3989335 m!4566881))

(declare-fun m!4567035 () Bool)

(assert (=> b!3989335 m!4567035))

(declare-fun m!4567037 () Bool)

(assert (=> b!3989335 m!4567037))

(assert (=> b!3989340 m!4567029))

(declare-fun m!4567039 () Bool)

(assert (=> b!3989340 m!4567039))

(assert (=> b!3989340 m!4567039))

(declare-fun m!4567041 () Bool)

(assert (=> b!3989340 m!4567041))

(assert (=> b!3989340 m!4567041))

(declare-fun m!4567043 () Bool)

(assert (=> b!3989340 m!4567043))

(assert (=> b!3989337 m!4567029))

(assert (=> b!3989337 m!4567039))

(assert (=> b!3989337 m!4567039))

(assert (=> b!3989337 m!4567041))

(assert (=> b!3989337 m!4567041))

(declare-fun m!4567045 () Bool)

(assert (=> b!3989337 m!4567045))

(declare-fun m!4567047 () Bool)

(assert (=> d!1180475 m!4567047))

(declare-fun m!4567049 () Bool)

(assert (=> d!1180475 m!4567049))

(declare-fun m!4567051 () Bool)

(assert (=> d!1180475 m!4567051))

(assert (=> d!1180475 m!4566579))

(declare-fun m!4567053 () Bool)

(assert (=> b!3989339 m!4567053))

(declare-fun m!4567055 () Bool)

(assert (=> b!3989339 m!4567055))

(assert (=> b!3989339 m!4567053))

(declare-fun m!4567057 () Bool)

(assert (=> b!3989339 m!4567057))

(assert (=> b!3989339 m!4567053))

(declare-fun m!4567059 () Bool)

(assert (=> b!3989339 m!4567059))

(assert (=> b!3989339 m!4567033))

(assert (=> b!3989339 m!4566881))

(assert (=> b!3989339 m!4567035))

(assert (=> b!3989339 m!4566881))

(declare-fun m!4567061 () Bool)

(assert (=> b!3989339 m!4567061))

(declare-fun m!4567063 () Bool)

(assert (=> b!3989339 m!4567063))

(assert (=> b!3989339 m!4567033))

(assert (=> b!3989339 m!4567053))

(assert (=> b!3989341 m!4567029))

(declare-fun m!4567065 () Bool)

(assert (=> b!3989341 m!4567065))

(assert (=> b!3989341 m!4567065))

(declare-fun m!4567067 () Bool)

(assert (=> b!3989341 m!4567067))

(assert (=> b!3989336 m!4567029))

(declare-fun m!4567069 () Bool)

(assert (=> b!3989336 m!4567069))

(assert (=> b!3989014 d!1180475))

(declare-fun d!1180477 () Bool)

(assert (=> d!1180477 (= (maxPrefixOneRule!2673 thiss!21717 (rule!9768 token!484) lt!1405564) (Some!9165 (tuple2!41873 (Token!12643 (apply!9963 (transformation!6752 (rule!9768 token!484)) (seqFromList!4991 lt!1405581)) (rule!9768 token!484) (size!31913 lt!1405581) lt!1405581) suffixResult!105)))))

(declare-fun lt!1405711 () Unit!61413)

(declare-fun choose!23980 (LexerInterface!6341 List!42794 List!42792 List!42792 List!42792 Rule!13304) Unit!61413)

(assert (=> d!1180477 (= lt!1405711 (choose!23980 thiss!21717 rules!2999 lt!1405581 lt!1405564 suffixResult!105 (rule!9768 token!484)))))

(assert (=> d!1180477 (not (isEmpty!25500 rules!2999))))

(assert (=> d!1180477 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1495 thiss!21717 rules!2999 lt!1405581 lt!1405564 suffixResult!105 (rule!9768 token!484)) lt!1405711)))

(declare-fun bs!588299 () Bool)

(assert (= bs!588299 d!1180477))

(assert (=> bs!588299 m!4566747))

(assert (=> bs!588299 m!4566749))

(assert (=> bs!588299 m!4566755))

(assert (=> bs!588299 m!4566733))

(declare-fun m!4567071 () Bool)

(assert (=> bs!588299 m!4567071))

(assert (=> bs!588299 m!4566573))

(assert (=> bs!588299 m!4566747))

(assert (=> b!3989014 d!1180477))

(declare-fun d!1180479 () Bool)

(assert (=> d!1180479 (= lt!1405566 suffixResult!105)))

(declare-fun lt!1405714 () Unit!61413)

(declare-fun choose!23981 (List!42792 List!42792 List!42792 List!42792 List!42792) Unit!61413)

(assert (=> d!1180479 (= lt!1405714 (choose!23981 lt!1405581 lt!1405566 lt!1405581 suffixResult!105 lt!1405564))))

(assert (=> d!1180479 (isPrefix!3839 lt!1405581 lt!1405564)))

(assert (=> d!1180479 (= (lemmaSamePrefixThenSameSuffix!2026 lt!1405581 lt!1405566 lt!1405581 suffixResult!105 lt!1405564) lt!1405714)))

(declare-fun bs!588300 () Bool)

(assert (= bs!588300 d!1180479))

(declare-fun m!4567073 () Bool)

(assert (=> bs!588300 m!4567073))

(assert (=> bs!588300 m!4566709))

(assert (=> b!3989014 d!1180479))

(declare-fun d!1180481 () Bool)

(assert (=> d!1180481 (isPrefix!3839 lt!1405581 (++!11154 lt!1405581 lt!1405566))))

(declare-fun lt!1405717 () Unit!61413)

(declare-fun choose!23982 (List!42792 List!42792) Unit!61413)

(assert (=> d!1180481 (= lt!1405717 (choose!23982 lt!1405581 lt!1405566))))

(assert (=> d!1180481 (= (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405581 lt!1405566) lt!1405717)))

(declare-fun bs!588301 () Bool)

(assert (= bs!588301 d!1180481))

(assert (=> bs!588301 m!4566725))

(assert (=> bs!588301 m!4566725))

(declare-fun m!4567075 () Bool)

(assert (=> bs!588301 m!4567075))

(declare-fun m!4567077 () Bool)

(assert (=> bs!588301 m!4567077))

(assert (=> b!3989014 d!1180481))

(declare-fun d!1180483 () Bool)

(declare-fun fromListB!2289 (List!42792) BalanceConc!25520)

(assert (=> d!1180483 (= (seqFromList!4991 lt!1405581) (fromListB!2289 lt!1405581))))

(declare-fun bs!588302 () Bool)

(assert (= bs!588302 d!1180483))

(declare-fun m!4567079 () Bool)

(assert (=> bs!588302 m!4567079))

(assert (=> b!3989014 d!1180483))

(declare-fun d!1180485 () Bool)

(declare-fun dynLambda!18127 (Int BalanceConc!25520) TokenValue!6982)

(assert (=> d!1180485 (= (apply!9963 (transformation!6752 (rule!9768 token!484)) (seqFromList!4991 lt!1405581)) (dynLambda!18127 (toValue!9240 (transformation!6752 (rule!9768 token!484))) (seqFromList!4991 lt!1405581)))))

(declare-fun b_lambda!116465 () Bool)

(assert (=> (not b_lambda!116465) (not d!1180485)))

(declare-fun t!331695 () Bool)

(declare-fun tb!240161 () Bool)

(assert (=> (and b!3989016 (= (toValue!9240 (transformation!6752 (h!48090 rules!2999))) (toValue!9240 (transformation!6752 (rule!9768 token!484)))) t!331695) tb!240161))

(declare-fun result!290984 () Bool)

(assert (=> tb!240161 (= result!290984 (inv!21 (dynLambda!18127 (toValue!9240 (transformation!6752 (rule!9768 token!484))) (seqFromList!4991 lt!1405581))))))

(declare-fun m!4567081 () Bool)

(assert (=> tb!240161 m!4567081))

(assert (=> d!1180485 t!331695))

(declare-fun b_and!306523 () Bool)

(assert (= b_and!306511 (and (=> t!331695 result!290984) b_and!306523)))

(declare-fun t!331697 () Bool)

(declare-fun tb!240163 () Bool)

(assert (=> (and b!3989023 (= (toValue!9240 (transformation!6752 (rule!9768 token!484))) (toValue!9240 (transformation!6752 (rule!9768 token!484)))) t!331697) tb!240163))

(declare-fun result!290988 () Bool)

(assert (= result!290988 result!290984))

(assert (=> d!1180485 t!331697))

(declare-fun b_and!306525 () Bool)

(assert (= b_and!306515 (and (=> t!331697 result!290988) b_and!306525)))

(assert (=> d!1180485 m!4566747))

(declare-fun m!4567083 () Bool)

(assert (=> d!1180485 m!4567083))

(assert (=> b!3989014 d!1180485))

(declare-fun b!3989344 () Bool)

(declare-fun e!2472921 () Bool)

(declare-fun e!2472919 () Bool)

(assert (=> b!3989344 (= e!2472921 e!2472919)))

(declare-fun res!1618700 () Bool)

(assert (=> b!3989344 (=> (not res!1618700) (not e!2472919))))

(assert (=> b!3989344 (= res!1618700 (not ((_ is Nil!42668) lt!1405605)))))

(declare-fun b!3989346 () Bool)

(assert (=> b!3989346 (= e!2472919 (isPrefix!3839 (tail!6221 lt!1405581) (tail!6221 lt!1405605)))))

(declare-fun d!1180487 () Bool)

(declare-fun e!2472920 () Bool)

(assert (=> d!1180487 e!2472920))

(declare-fun res!1618699 () Bool)

(assert (=> d!1180487 (=> res!1618699 e!2472920)))

(declare-fun lt!1405718 () Bool)

(assert (=> d!1180487 (= res!1618699 (not lt!1405718))))

(assert (=> d!1180487 (= lt!1405718 e!2472921)))

(declare-fun res!1618702 () Bool)

(assert (=> d!1180487 (=> res!1618702 e!2472921)))

(assert (=> d!1180487 (= res!1618702 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180487 (= (isPrefix!3839 lt!1405581 lt!1405605) lt!1405718)))

(declare-fun b!3989347 () Bool)

(assert (=> b!3989347 (= e!2472920 (>= (size!31913 lt!1405605) (size!31913 lt!1405581)))))

(declare-fun b!3989345 () Bool)

(declare-fun res!1618701 () Bool)

(assert (=> b!3989345 (=> (not res!1618701) (not e!2472919))))

(assert (=> b!3989345 (= res!1618701 (= (head!8489 lt!1405581) (head!8489 lt!1405605)))))

(assert (= (and d!1180487 (not res!1618702)) b!3989344))

(assert (= (and b!3989344 res!1618700) b!3989345))

(assert (= (and b!3989345 res!1618701) b!3989346))

(assert (= (and d!1180487 (not res!1618699)) b!3989347))

(declare-fun m!4567085 () Bool)

(assert (=> b!3989346 m!4567085))

(declare-fun m!4567087 () Bool)

(assert (=> b!3989346 m!4567087))

(assert (=> b!3989346 m!4567085))

(assert (=> b!3989346 m!4567087))

(declare-fun m!4567089 () Bool)

(assert (=> b!3989346 m!4567089))

(declare-fun m!4567091 () Bool)

(assert (=> b!3989347 m!4567091))

(assert (=> b!3989347 m!4566733))

(declare-fun m!4567093 () Bool)

(assert (=> b!3989345 m!4567093))

(declare-fun m!4567095 () Bool)

(assert (=> b!3989345 m!4567095))

(assert (=> b!3989014 d!1180487))

(declare-fun d!1180489 () Bool)

(declare-fun res!1618705 () Bool)

(declare-fun e!2472924 () Bool)

(assert (=> d!1180489 (=> (not res!1618705) (not e!2472924))))

(declare-fun rulesValid!2629 (LexerInterface!6341 List!42794) Bool)

(assert (=> d!1180489 (= res!1618705 (rulesValid!2629 thiss!21717 rules!2999))))

(assert (=> d!1180489 (= (rulesInvariant!5684 thiss!21717 rules!2999) e!2472924)))

(declare-fun b!3989350 () Bool)

(declare-datatypes ((List!42796 0))(
  ( (Nil!42672) (Cons!42672 (h!48092 String!48627) (t!331739 List!42796)) )
))
(declare-fun noDuplicateTag!2630 (LexerInterface!6341 List!42794 List!42796) Bool)

(assert (=> b!3989350 (= e!2472924 (noDuplicateTag!2630 thiss!21717 rules!2999 Nil!42672))))

(assert (= (and d!1180489 res!1618705) b!3989350))

(declare-fun m!4567097 () Bool)

(assert (=> d!1180489 m!4567097))

(declare-fun m!4567099 () Bool)

(assert (=> b!3989350 m!4567099))

(assert (=> b!3988991 d!1180489))

(declare-fun d!1180491 () Bool)

(assert (=> d!1180491 (isPrefix!3839 lt!1405581 (++!11154 lt!1405581 suffixResult!105))))

(declare-fun lt!1405719 () Unit!61413)

(assert (=> d!1180491 (= lt!1405719 (choose!23982 lt!1405581 suffixResult!105))))

(assert (=> d!1180491 (= (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405581 suffixResult!105) lt!1405719)))

(declare-fun bs!588303 () Bool)

(assert (= bs!588303 d!1180491))

(assert (=> bs!588303 m!4566575))

(assert (=> bs!588303 m!4566575))

(declare-fun m!4567101 () Bool)

(assert (=> bs!588303 m!4567101))

(declare-fun m!4567103 () Bool)

(assert (=> bs!588303 m!4567103))

(assert (=> b!3989034 d!1180491))

(declare-fun b!3989351 () Bool)

(declare-fun e!2472927 () Bool)

(declare-fun e!2472925 () Bool)

(assert (=> b!3989351 (= e!2472927 e!2472925)))

(declare-fun res!1618707 () Bool)

(assert (=> b!3989351 (=> (not res!1618707) (not e!2472925))))

(assert (=> b!3989351 (= res!1618707 (not ((_ is Nil!42668) lt!1405547)))))

(declare-fun b!3989353 () Bool)

(assert (=> b!3989353 (= e!2472925 (isPrefix!3839 (tail!6221 lt!1405581) (tail!6221 lt!1405547)))))

(declare-fun d!1180493 () Bool)

(declare-fun e!2472926 () Bool)

(assert (=> d!1180493 e!2472926))

(declare-fun res!1618706 () Bool)

(assert (=> d!1180493 (=> res!1618706 e!2472926)))

(declare-fun lt!1405720 () Bool)

(assert (=> d!1180493 (= res!1618706 (not lt!1405720))))

(assert (=> d!1180493 (= lt!1405720 e!2472927)))

(declare-fun res!1618709 () Bool)

(assert (=> d!1180493 (=> res!1618709 e!2472927)))

(assert (=> d!1180493 (= res!1618709 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180493 (= (isPrefix!3839 lt!1405581 lt!1405547) lt!1405720)))

(declare-fun b!3989354 () Bool)

(assert (=> b!3989354 (= e!2472926 (>= (size!31913 lt!1405547) (size!31913 lt!1405581)))))

(declare-fun b!3989352 () Bool)

(declare-fun res!1618708 () Bool)

(assert (=> b!3989352 (=> (not res!1618708) (not e!2472925))))

(assert (=> b!3989352 (= res!1618708 (= (head!8489 lt!1405581) (head!8489 lt!1405547)))))

(assert (= (and d!1180493 (not res!1618709)) b!3989351))

(assert (= (and b!3989351 res!1618707) b!3989352))

(assert (= (and b!3989352 res!1618708) b!3989353))

(assert (= (and d!1180493 (not res!1618706)) b!3989354))

(assert (=> b!3989353 m!4567085))

(declare-fun m!4567105 () Bool)

(assert (=> b!3989353 m!4567105))

(assert (=> b!3989353 m!4567085))

(assert (=> b!3989353 m!4567105))

(declare-fun m!4567107 () Bool)

(assert (=> b!3989353 m!4567107))

(declare-fun m!4567109 () Bool)

(assert (=> b!3989354 m!4567109))

(assert (=> b!3989354 m!4566733))

(assert (=> b!3989352 m!4567093))

(declare-fun m!4567111 () Bool)

(assert (=> b!3989352 m!4567111))

(assert (=> b!3989034 d!1180493))

(declare-fun d!1180495 () Bool)

(assert (=> d!1180495 (isPrefix!3839 prefix!494 (++!11154 prefix!494 suffix!1299))))

(declare-fun lt!1405721 () Unit!61413)

(assert (=> d!1180495 (= lt!1405721 (choose!23982 prefix!494 suffix!1299))))

(assert (=> d!1180495 (= (lemmaConcatTwoListThenFirstIsPrefix!2682 prefix!494 suffix!1299) lt!1405721)))

(declare-fun bs!588304 () Bool)

(assert (= bs!588304 d!1180495))

(assert (=> bs!588304 m!4566687))

(assert (=> bs!588304 m!4566687))

(declare-fun m!4567113 () Bool)

(assert (=> bs!588304 m!4567113))

(declare-fun m!4567115 () Bool)

(assert (=> bs!588304 m!4567115))

(assert (=> b!3989034 d!1180495))

(declare-fun b!3989355 () Bool)

(declare-fun e!2472930 () Bool)

(declare-fun e!2472928 () Bool)

(assert (=> b!3989355 (= e!2472930 e!2472928)))

(declare-fun res!1618711 () Bool)

(assert (=> b!3989355 (=> (not res!1618711) (not e!2472928))))

(assert (=> b!3989355 (= res!1618711 (not ((_ is Nil!42668) lt!1405564)))))

(declare-fun b!3989357 () Bool)

(assert (=> b!3989357 (= e!2472928 (isPrefix!3839 (tail!6221 prefix!494) (tail!6221 lt!1405564)))))

(declare-fun d!1180497 () Bool)

(declare-fun e!2472929 () Bool)

(assert (=> d!1180497 e!2472929))

(declare-fun res!1618710 () Bool)

(assert (=> d!1180497 (=> res!1618710 e!2472929)))

(declare-fun lt!1405722 () Bool)

(assert (=> d!1180497 (= res!1618710 (not lt!1405722))))

(assert (=> d!1180497 (= lt!1405722 e!2472930)))

(declare-fun res!1618713 () Bool)

(assert (=> d!1180497 (=> res!1618713 e!2472930)))

(assert (=> d!1180497 (= res!1618713 ((_ is Nil!42668) prefix!494))))

(assert (=> d!1180497 (= (isPrefix!3839 prefix!494 lt!1405564) lt!1405722)))

(declare-fun b!3989358 () Bool)

(assert (=> b!3989358 (= e!2472929 (>= (size!31913 lt!1405564) (size!31913 prefix!494)))))

(declare-fun b!3989356 () Bool)

(declare-fun res!1618712 () Bool)

(assert (=> b!3989356 (=> (not res!1618712) (not e!2472928))))

(assert (=> b!3989356 (= res!1618712 (= (head!8489 prefix!494) (head!8489 lt!1405564)))))

(assert (= (and d!1180497 (not res!1618713)) b!3989355))

(assert (= (and b!3989355 res!1618711) b!3989356))

(assert (= (and b!3989356 res!1618712) b!3989357))

(assert (= (and d!1180497 (not res!1618710)) b!3989358))

(declare-fun m!4567117 () Bool)

(assert (=> b!3989357 m!4567117))

(assert (=> b!3989357 m!4566883))

(assert (=> b!3989357 m!4567117))

(assert (=> b!3989357 m!4566883))

(declare-fun m!4567119 () Bool)

(assert (=> b!3989357 m!4567119))

(assert (=> b!3989358 m!4566881))

(assert (=> b!3989358 m!4566735))

(declare-fun m!4567121 () Bool)

(assert (=> b!3989356 m!4567121))

(assert (=> b!3989356 m!4566909))

(assert (=> b!3989034 d!1180497))

(declare-fun b!3989359 () Bool)

(declare-fun e!2472933 () Bool)

(declare-fun e!2472931 () Bool)

(assert (=> b!3989359 (= e!2472933 e!2472931)))

(declare-fun res!1618715 () Bool)

(assert (=> b!3989359 (=> (not res!1618715) (not e!2472931))))

(assert (=> b!3989359 (= res!1618715 (not ((_ is Nil!42668) lt!1405564)))))

(declare-fun b!3989361 () Bool)

(assert (=> b!3989361 (= e!2472931 (isPrefix!3839 (tail!6221 lt!1405581) (tail!6221 lt!1405564)))))

(declare-fun d!1180499 () Bool)

(declare-fun e!2472932 () Bool)

(assert (=> d!1180499 e!2472932))

(declare-fun res!1618714 () Bool)

(assert (=> d!1180499 (=> res!1618714 e!2472932)))

(declare-fun lt!1405723 () Bool)

(assert (=> d!1180499 (= res!1618714 (not lt!1405723))))

(assert (=> d!1180499 (= lt!1405723 e!2472933)))

(declare-fun res!1618717 () Bool)

(assert (=> d!1180499 (=> res!1618717 e!2472933)))

(assert (=> d!1180499 (= res!1618717 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180499 (= (isPrefix!3839 lt!1405581 lt!1405564) lt!1405723)))

(declare-fun b!3989362 () Bool)

(assert (=> b!3989362 (= e!2472932 (>= (size!31913 lt!1405564) (size!31913 lt!1405581)))))

(declare-fun b!3989360 () Bool)

(declare-fun res!1618716 () Bool)

(assert (=> b!3989360 (=> (not res!1618716) (not e!2472931))))

(assert (=> b!3989360 (= res!1618716 (= (head!8489 lt!1405581) (head!8489 lt!1405564)))))

(assert (= (and d!1180499 (not res!1618717)) b!3989359))

(assert (= (and b!3989359 res!1618715) b!3989360))

(assert (= (and b!3989360 res!1618716) b!3989361))

(assert (= (and d!1180499 (not res!1618714)) b!3989362))

(assert (=> b!3989361 m!4567085))

(assert (=> b!3989361 m!4566883))

(assert (=> b!3989361 m!4567085))

(assert (=> b!3989361 m!4566883))

(declare-fun m!4567123 () Bool)

(assert (=> b!3989361 m!4567123))

(assert (=> b!3989362 m!4566881))

(assert (=> b!3989362 m!4566733))

(assert (=> b!3989360 m!4567093))

(assert (=> b!3989360 m!4566909))

(assert (=> b!3989034 d!1180499))

(declare-fun e!2472935 () Bool)

(declare-fun lt!1405724 () List!42792)

(declare-fun b!3989366 () Bool)

(assert (=> b!3989366 (= e!2472935 (or (not (= lt!1405577 Nil!42668)) (= lt!1405724 newSuffix!27)))))

(declare-fun d!1180501 () Bool)

(assert (=> d!1180501 e!2472935))

(declare-fun res!1618719 () Bool)

(assert (=> d!1180501 (=> (not res!1618719) (not e!2472935))))

(assert (=> d!1180501 (= res!1618719 (= (content!6471 lt!1405724) ((_ map or) (content!6471 newSuffix!27) (content!6471 lt!1405577))))))

(declare-fun e!2472934 () List!42792)

(assert (=> d!1180501 (= lt!1405724 e!2472934)))

(declare-fun c!690525 () Bool)

(assert (=> d!1180501 (= c!690525 ((_ is Nil!42668) newSuffix!27))))

(assert (=> d!1180501 (= (++!11154 newSuffix!27 lt!1405577) lt!1405724)))

(declare-fun b!3989364 () Bool)

(assert (=> b!3989364 (= e!2472934 (Cons!42668 (h!48088 newSuffix!27) (++!11154 (t!331687 newSuffix!27) lt!1405577)))))

(declare-fun b!3989365 () Bool)

(declare-fun res!1618718 () Bool)

(assert (=> b!3989365 (=> (not res!1618718) (not e!2472935))))

(assert (=> b!3989365 (= res!1618718 (= (size!31913 lt!1405724) (+ (size!31913 newSuffix!27) (size!31913 lt!1405577))))))

(declare-fun b!3989363 () Bool)

(assert (=> b!3989363 (= e!2472934 lt!1405577)))

(assert (= (and d!1180501 c!690525) b!3989363))

(assert (= (and d!1180501 (not c!690525)) b!3989364))

(assert (= (and d!1180501 res!1618719) b!3989365))

(assert (= (and b!3989365 res!1618718) b!3989366))

(declare-fun m!4567125 () Bool)

(assert (=> d!1180501 m!4567125))

(declare-fun m!4567127 () Bool)

(assert (=> d!1180501 m!4567127))

(declare-fun m!4567129 () Bool)

(assert (=> d!1180501 m!4567129))

(declare-fun m!4567131 () Bool)

(assert (=> b!3989364 m!4567131))

(declare-fun m!4567133 () Bool)

(assert (=> b!3989365 m!4567133))

(assert (=> b!3989365 m!4566611))

(declare-fun m!4567135 () Bool)

(assert (=> b!3989365 m!4567135))

(assert (=> b!3989012 d!1180501))

(declare-fun d!1180503 () Bool)

(declare-fun lt!1405725 () List!42792)

(assert (=> d!1180503 (= (++!11154 newSuffix!27 lt!1405725) suffix!1299)))

(declare-fun e!2472936 () List!42792)

(assert (=> d!1180503 (= lt!1405725 e!2472936)))

(declare-fun c!690526 () Bool)

(assert (=> d!1180503 (= c!690526 ((_ is Cons!42668) newSuffix!27))))

(assert (=> d!1180503 (>= (size!31913 suffix!1299) (size!31913 newSuffix!27))))

(assert (=> d!1180503 (= (getSuffix!2270 suffix!1299 newSuffix!27) lt!1405725)))

(declare-fun b!3989367 () Bool)

(assert (=> b!3989367 (= e!2472936 (getSuffix!2270 (tail!6221 suffix!1299) (t!331687 newSuffix!27)))))

(declare-fun b!3989368 () Bool)

(assert (=> b!3989368 (= e!2472936 suffix!1299)))

(assert (= (and d!1180503 c!690526) b!3989367))

(assert (= (and d!1180503 (not c!690526)) b!3989368))

(declare-fun m!4567137 () Bool)

(assert (=> d!1180503 m!4567137))

(assert (=> d!1180503 m!4566609))

(assert (=> d!1180503 m!4566611))

(assert (=> b!3989367 m!4566935))

(assert (=> b!3989367 m!4566935))

(declare-fun m!4567139 () Bool)

(assert (=> b!3989367 m!4567139))

(assert (=> b!3989012 d!1180503))

(declare-fun d!1180505 () Bool)

(assert (=> d!1180505 true))

(declare-fun lt!1405831 () Bool)

(declare-fun lambda!126893 () Int)

(declare-fun forall!8339 (List!42794 Int) Bool)

(assert (=> d!1180505 (= lt!1405831 (forall!8339 rules!2999 lambda!126893))))

(declare-fun e!2473055 () Bool)

(assert (=> d!1180505 (= lt!1405831 e!2473055)))

(declare-fun res!1618866 () Bool)

(assert (=> d!1180505 (=> res!1618866 e!2473055)))

(assert (=> d!1180505 (= res!1618866 (not ((_ is Cons!42670) rules!2999)))))

(assert (=> d!1180505 (= (rulesValidInductive!2453 thiss!21717 rules!2999) lt!1405831)))

(declare-fun b!3989582 () Bool)

(declare-fun e!2473054 () Bool)

(assert (=> b!3989582 (= e!2473055 e!2473054)))

(declare-fun res!1618865 () Bool)

(assert (=> b!3989582 (=> (not res!1618865) (not e!2473054))))

(assert (=> b!3989582 (= res!1618865 (ruleValid!2684 thiss!21717 (h!48090 rules!2999)))))

(declare-fun b!3989583 () Bool)

(assert (=> b!3989583 (= e!2473054 (rulesValidInductive!2453 thiss!21717 (t!331689 rules!2999)))))

(assert (= (and d!1180505 (not res!1618866)) b!3989582))

(assert (= (and b!3989582 res!1618865) b!3989583))

(declare-fun m!4567571 () Bool)

(assert (=> d!1180505 m!4567571))

(declare-fun m!4567575 () Bool)

(assert (=> b!3989582 m!4567575))

(declare-fun m!4567577 () Bool)

(assert (=> b!3989583 m!4567577))

(assert (=> b!3988995 d!1180505))

(declare-fun d!1180647 () Bool)

(assert (=> d!1180647 (not (matchR!5634 (regex!6752 (rule!9768 token!484)) lt!1405581))))

(declare-fun lt!1405834 () Unit!61413)

(assert (=> d!1180647 (= lt!1405834 (choose!23976 thiss!21717 rules!2999 (rule!9768 (_1!24070 (v!39521 lt!1405599))) lt!1405573 lt!1405559 lt!1405581 (rule!9768 token!484)))))

(assert (=> d!1180647 (isPrefix!3839 lt!1405573 lt!1405559)))

(assert (=> d!1180647 (= (lemmaMaxPrefixOutputsMaxPrefix!406 thiss!21717 rules!2999 (rule!9768 (_1!24070 (v!39521 lt!1405599))) lt!1405573 lt!1405559 lt!1405581 (rule!9768 token!484)) lt!1405834)))

(declare-fun bs!588329 () Bool)

(assert (= bs!588329 d!1180647))

(assert (=> bs!588329 m!4566593))

(declare-fun m!4567579 () Bool)

(assert (=> bs!588329 m!4567579))

(assert (=> bs!588329 m!4566683))

(assert (=> b!3989015 d!1180647))

(declare-fun e!2473063 () Bool)

(declare-fun b!3989598 () Bool)

(declare-fun lt!1405835 () List!42792)

(assert (=> b!3989598 (= e!2473063 (or (not (= lt!1405588 Nil!42668)) (= lt!1405835 prefix!494)))))

(declare-fun d!1180649 () Bool)

(assert (=> d!1180649 e!2473063))

(declare-fun res!1618872 () Bool)

(assert (=> d!1180649 (=> (not res!1618872) (not e!2473063))))

(assert (=> d!1180649 (= res!1618872 (= (content!6471 lt!1405835) ((_ map or) (content!6471 prefix!494) (content!6471 lt!1405588))))))

(declare-fun e!2473062 () List!42792)

(assert (=> d!1180649 (= lt!1405835 e!2473062)))

(declare-fun c!690556 () Bool)

(assert (=> d!1180649 (= c!690556 ((_ is Nil!42668) prefix!494))))

(assert (=> d!1180649 (= (++!11154 prefix!494 lt!1405588) lt!1405835)))

(declare-fun b!3989596 () Bool)

(assert (=> b!3989596 (= e!2473062 (Cons!42668 (h!48088 prefix!494) (++!11154 (t!331687 prefix!494) lt!1405588)))))

(declare-fun b!3989597 () Bool)

(declare-fun res!1618871 () Bool)

(assert (=> b!3989597 (=> (not res!1618871) (not e!2473063))))

(assert (=> b!3989597 (= res!1618871 (= (size!31913 lt!1405835) (+ (size!31913 prefix!494) (size!31913 lt!1405588))))))

(declare-fun b!3989595 () Bool)

(assert (=> b!3989595 (= e!2473062 lt!1405588)))

(assert (= (and d!1180649 c!690556) b!3989595))

(assert (= (and d!1180649 (not c!690556)) b!3989596))

(assert (= (and d!1180649 res!1618872) b!3989597))

(assert (= (and b!3989597 res!1618871) b!3989598))

(declare-fun m!4567581 () Bool)

(assert (=> d!1180649 m!4567581))

(assert (=> d!1180649 m!4567001))

(declare-fun m!4567583 () Bool)

(assert (=> d!1180649 m!4567583))

(declare-fun m!4567585 () Bool)

(assert (=> b!3989596 m!4567585))

(declare-fun m!4567587 () Bool)

(assert (=> b!3989597 m!4567587))

(assert (=> b!3989597 m!4566735))

(declare-fun m!4567589 () Bool)

(assert (=> b!3989597 m!4567589))

(assert (=> b!3988994 d!1180649))

(declare-fun b!3989615 () Bool)

(declare-fun lt!1405836 () List!42792)

(declare-fun e!2473070 () Bool)

(assert (=> b!3989615 (= e!2473070 (or (not (= lt!1405577 Nil!42668)) (= lt!1405836 lt!1405559)))))

(declare-fun d!1180651 () Bool)

(assert (=> d!1180651 e!2473070))

(declare-fun res!1618874 () Bool)

(assert (=> d!1180651 (=> (not res!1618874) (not e!2473070))))

(assert (=> d!1180651 (= res!1618874 (= (content!6471 lt!1405836) ((_ map or) (content!6471 lt!1405559) (content!6471 lt!1405577))))))

(declare-fun e!2473069 () List!42792)

(assert (=> d!1180651 (= lt!1405836 e!2473069)))

(declare-fun c!690557 () Bool)

(assert (=> d!1180651 (= c!690557 ((_ is Nil!42668) lt!1405559))))

(assert (=> d!1180651 (= (++!11154 lt!1405559 lt!1405577) lt!1405836)))

(declare-fun b!3989613 () Bool)

(assert (=> b!3989613 (= e!2473069 (Cons!42668 (h!48088 lt!1405559) (++!11154 (t!331687 lt!1405559) lt!1405577)))))

(declare-fun b!3989614 () Bool)

(declare-fun res!1618873 () Bool)

(assert (=> b!3989614 (=> (not res!1618873) (not e!2473070))))

(assert (=> b!3989614 (= res!1618873 (= (size!31913 lt!1405836) (+ (size!31913 lt!1405559) (size!31913 lt!1405577))))))

(declare-fun b!3989612 () Bool)

(assert (=> b!3989612 (= e!2473069 lt!1405577)))

(assert (= (and d!1180651 c!690557) b!3989612))

(assert (= (and d!1180651 (not c!690557)) b!3989613))

(assert (= (and d!1180651 res!1618874) b!3989614))

(assert (= (and b!3989614 res!1618873) b!3989615))

(declare-fun m!4567591 () Bool)

(assert (=> d!1180651 m!4567591))

(declare-fun m!4567593 () Bool)

(assert (=> d!1180651 m!4567593))

(assert (=> d!1180651 m!4567129))

(declare-fun m!4567595 () Bool)

(assert (=> b!3989613 m!4567595))

(declare-fun m!4567597 () Bool)

(assert (=> b!3989614 m!4567597))

(declare-fun m!4567599 () Bool)

(assert (=> b!3989614 m!4567599))

(assert (=> b!3989614 m!4567135))

(assert (=> b!3988994 d!1180651))

(declare-fun d!1180653 () Bool)

(assert (=> d!1180653 (= (++!11154 (++!11154 prefix!494 newSuffix!27) lt!1405577) (++!11154 prefix!494 (++!11154 newSuffix!27 lt!1405577)))))

(declare-fun lt!1405839 () Unit!61413)

(declare-fun choose!23984 (List!42792 List!42792 List!42792) Unit!61413)

(assert (=> d!1180653 (= lt!1405839 (choose!23984 prefix!494 newSuffix!27 lt!1405577))))

(assert (=> d!1180653 (= (lemmaConcatAssociativity!2474 prefix!494 newSuffix!27 lt!1405577) lt!1405839)))

(declare-fun bs!588330 () Bool)

(assert (= bs!588330 d!1180653))

(assert (=> bs!588330 m!4566689))

(assert (=> bs!588330 m!4566689))

(declare-fun m!4567601 () Bool)

(assert (=> bs!588330 m!4567601))

(assert (=> bs!588330 m!4566713))

(declare-fun m!4567603 () Bool)

(assert (=> bs!588330 m!4567603))

(assert (=> bs!588330 m!4566713))

(declare-fun m!4567605 () Bool)

(assert (=> bs!588330 m!4567605))

(assert (=> b!3988994 d!1180653))

(declare-fun d!1180655 () Bool)

(assert (=> d!1180655 (= (inv!56988 (tag!7612 (h!48090 rules!2999))) (= (mod (str.len (value!213040 (tag!7612 (h!48090 rules!2999)))) 2) 0))))

(assert (=> b!3988993 d!1180655))

(declare-fun d!1180657 () Bool)

(declare-fun res!1618875 () Bool)

(declare-fun e!2473085 () Bool)

(assert (=> d!1180657 (=> (not res!1618875) (not e!2473085))))

(assert (=> d!1180657 (= res!1618875 (semiInverseModEq!2895 (toChars!9099 (transformation!6752 (h!48090 rules!2999))) (toValue!9240 (transformation!6752 (h!48090 rules!2999)))))))

(assert (=> d!1180657 (= (inv!56991 (transformation!6752 (h!48090 rules!2999))) e!2473085)))

(declare-fun b!3989632 () Bool)

(assert (=> b!3989632 (= e!2473085 (equivClasses!2794 (toChars!9099 (transformation!6752 (h!48090 rules!2999))) (toValue!9240 (transformation!6752 (h!48090 rules!2999)))))))

(assert (= (and d!1180657 res!1618875) b!3989632))

(declare-fun m!4567607 () Bool)

(assert (=> d!1180657 m!4567607))

(declare-fun m!4567611 () Bool)

(assert (=> b!3989632 m!4567611))

(assert (=> b!3988993 d!1180657))

(declare-fun b!3989648 () Bool)

(declare-fun e!2473094 () Int)

(assert (=> b!3989648 (= e!2473094 (+ 1 (getIndex!522 (t!331689 rules!2999) (rule!9768 (_1!24070 (v!39521 lt!1405599))))))))

(declare-fun b!3989649 () Bool)

(assert (=> b!3989649 (= e!2473094 (- 1))))

(declare-fun b!3989647 () Bool)

(declare-fun e!2473093 () Int)

(assert (=> b!3989647 (= e!2473093 e!2473094)))

(declare-fun c!690562 () Bool)

(assert (=> b!3989647 (= c!690562 (and ((_ is Cons!42670) rules!2999) (not (= (h!48090 rules!2999) (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))))

(declare-fun d!1180659 () Bool)

(declare-fun lt!1405842 () Int)

(assert (=> d!1180659 (>= lt!1405842 0)))

(assert (=> d!1180659 (= lt!1405842 e!2473093)))

(declare-fun c!690563 () Bool)

(assert (=> d!1180659 (= c!690563 (and ((_ is Cons!42670) rules!2999) (= (h!48090 rules!2999) (rule!9768 (_1!24070 (v!39521 lt!1405599))))))))

(assert (=> d!1180659 (contains!8491 rules!2999 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))

(assert (=> d!1180659 (= (getIndex!522 rules!2999 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) lt!1405842)))

(declare-fun b!3989646 () Bool)

(assert (=> b!3989646 (= e!2473093 0)))

(assert (= (and d!1180659 c!690563) b!3989646))

(assert (= (and d!1180659 (not c!690563)) b!3989647))

(assert (= (and b!3989647 c!690562) b!3989648))

(assert (= (and b!3989647 (not c!690562)) b!3989649))

(declare-fun m!4567615 () Bool)

(assert (=> b!3989648 m!4567615))

(declare-fun m!4567617 () Bool)

(assert (=> d!1180659 m!4567617))

(assert (=> b!3989030 d!1180659))

(declare-fun b!3989652 () Bool)

(declare-fun e!2473096 () Int)

(assert (=> b!3989652 (= e!2473096 (+ 1 (getIndex!522 (t!331689 rules!2999) (rule!9768 token!484))))))

(declare-fun b!3989653 () Bool)

(assert (=> b!3989653 (= e!2473096 (- 1))))

(declare-fun b!3989651 () Bool)

(declare-fun e!2473095 () Int)

(assert (=> b!3989651 (= e!2473095 e!2473096)))

(declare-fun c!690564 () Bool)

(assert (=> b!3989651 (= c!690564 (and ((_ is Cons!42670) rules!2999) (not (= (h!48090 rules!2999) (rule!9768 token!484)))))))

(declare-fun d!1180661 () Bool)

(declare-fun lt!1405843 () Int)

(assert (=> d!1180661 (>= lt!1405843 0)))

(assert (=> d!1180661 (= lt!1405843 e!2473095)))

(declare-fun c!690565 () Bool)

(assert (=> d!1180661 (= c!690565 (and ((_ is Cons!42670) rules!2999) (= (h!48090 rules!2999) (rule!9768 token!484))))))

(assert (=> d!1180661 (contains!8491 rules!2999 (rule!9768 token!484))))

(assert (=> d!1180661 (= (getIndex!522 rules!2999 (rule!9768 token!484)) lt!1405843)))

(declare-fun b!3989650 () Bool)

(assert (=> b!3989650 (= e!2473095 0)))

(assert (= (and d!1180661 c!690565) b!3989650))

(assert (= (and d!1180661 (not c!690565)) b!3989651))

(assert (= (and b!3989651 c!690564) b!3989652))

(assert (= (and b!3989651 (not c!690564)) b!3989653))

(declare-fun m!4567619 () Bool)

(assert (=> b!3989652 m!4567619))

(declare-fun m!4567621 () Bool)

(assert (=> d!1180661 m!4567621))

(assert (=> b!3989030 d!1180661))

(declare-fun d!1180663 () Bool)

(assert (=> d!1180663 (= (_2!24070 (v!39521 lt!1405599)) newSuffixResult!27)))

(declare-fun lt!1405844 () Unit!61413)

(assert (=> d!1180663 (= lt!1405844 (choose!23981 lt!1405573 (_2!24070 (v!39521 lt!1405599)) lt!1405581 newSuffixResult!27 lt!1405559))))

(assert (=> d!1180663 (isPrefix!3839 lt!1405573 lt!1405559)))

(assert (=> d!1180663 (= (lemmaSamePrefixThenSameSuffix!2026 lt!1405573 (_2!24070 (v!39521 lt!1405599)) lt!1405581 newSuffixResult!27 lt!1405559) lt!1405844)))

(declare-fun bs!588331 () Bool)

(assert (= bs!588331 d!1180663))

(declare-fun m!4567623 () Bool)

(assert (=> bs!588331 m!4567623))

(assert (=> bs!588331 m!4566683))

(assert (=> b!3989030 d!1180663))

(declare-fun d!1180665 () Bool)

(assert (=> d!1180665 (= lt!1405573 lt!1405581)))

(declare-fun lt!1405847 () Unit!61413)

(declare-fun choose!23986 (List!42792 List!42792 List!42792) Unit!61413)

(assert (=> d!1180665 (= lt!1405847 (choose!23986 lt!1405573 lt!1405581 lt!1405559))))

(assert (=> d!1180665 (isPrefix!3839 lt!1405573 lt!1405559)))

(assert (=> d!1180665 (= (lemmaIsPrefixSameLengthThenSameList!861 lt!1405573 lt!1405581 lt!1405559) lt!1405847)))

(declare-fun bs!588332 () Bool)

(assert (= bs!588332 d!1180665))

(declare-fun m!4567625 () Bool)

(assert (=> bs!588332 m!4567625))

(assert (=> bs!588332 m!4566683))

(assert (=> b!3989030 d!1180665))

(declare-fun b!3989664 () Bool)

(declare-fun e!2473105 () Bool)

(declare-fun inv!16 (TokenValue!6982) Bool)

(assert (=> b!3989664 (= e!2473105 (inv!16 (value!213066 token!484)))))

(declare-fun b!3989665 () Bool)

(declare-fun e!2473103 () Bool)

(declare-fun inv!15 (TokenValue!6982) Bool)

(assert (=> b!3989665 (= e!2473103 (inv!15 (value!213066 token!484)))))

(declare-fun b!3989666 () Bool)

(declare-fun e!2473104 () Bool)

(assert (=> b!3989666 (= e!2473105 e!2473104)))

(declare-fun c!690570 () Bool)

(assert (=> b!3989666 (= c!690570 ((_ is IntegerValue!20947) (value!213066 token!484)))))

(declare-fun b!3989667 () Bool)

(declare-fun inv!17 (TokenValue!6982) Bool)

(assert (=> b!3989667 (= e!2473104 (inv!17 (value!213066 token!484)))))

(declare-fun b!3989668 () Bool)

(declare-fun res!1618878 () Bool)

(assert (=> b!3989668 (=> res!1618878 e!2473103)))

(assert (=> b!3989668 (= res!1618878 (not ((_ is IntegerValue!20948) (value!213066 token!484))))))

(assert (=> b!3989668 (= e!2473104 e!2473103)))

(declare-fun d!1180667 () Bool)

(declare-fun c!690571 () Bool)

(assert (=> d!1180667 (= c!690571 ((_ is IntegerValue!20946) (value!213066 token!484)))))

(assert (=> d!1180667 (= (inv!21 (value!213066 token!484)) e!2473105)))

(assert (= (and d!1180667 c!690571) b!3989664))

(assert (= (and d!1180667 (not c!690571)) b!3989666))

(assert (= (and b!3989666 c!690570) b!3989667))

(assert (= (and b!3989666 (not c!690570)) b!3989668))

(assert (= (and b!3989668 (not res!1618878)) b!3989665))

(declare-fun m!4567627 () Bool)

(assert (=> b!3989664 m!4567627))

(declare-fun m!4567629 () Bool)

(assert (=> b!3989665 m!4567629))

(declare-fun m!4567631 () Bool)

(assert (=> b!3989667 m!4567631))

(assert (=> b!3989008 d!1180667))

(declare-fun d!1180669 () Bool)

(declare-fun res!1618883 () Bool)

(declare-fun e!2473108 () Bool)

(assert (=> d!1180669 (=> (not res!1618883) (not e!2473108))))

(assert (=> d!1180669 (= res!1618883 (not (isEmpty!25501 (originalCharacters!7352 token!484))))))

(assert (=> d!1180669 (= (inv!56992 token!484) e!2473108)))

(declare-fun b!3989673 () Bool)

(declare-fun res!1618884 () Bool)

(assert (=> b!3989673 (=> (not res!1618884) (not e!2473108))))

(assert (=> b!3989673 (= res!1618884 (= (originalCharacters!7352 token!484) (list!15840 (dynLambda!18126 (toChars!9099 (transformation!6752 (rule!9768 token!484))) (value!213066 token!484)))))))

(declare-fun b!3989674 () Bool)

(assert (=> b!3989674 (= e!2473108 (= (size!31912 token!484) (size!31913 (originalCharacters!7352 token!484))))))

(assert (= (and d!1180669 res!1618883) b!3989673))

(assert (= (and b!3989673 res!1618884) b!3989674))

(declare-fun b_lambda!116483 () Bool)

(assert (=> (not b_lambda!116483) (not b!3989673)))

(assert (=> b!3989673 t!331691))

(declare-fun b_and!306551 () Bool)

(assert (= b_and!306519 (and (=> t!331691 result!290978) b_and!306551)))

(assert (=> b!3989673 t!331693))

(declare-fun b_and!306553 () Bool)

(assert (= b_and!306521 (and (=> t!331693 result!290982) b_and!306553)))

(declare-fun m!4567633 () Bool)

(assert (=> d!1180669 m!4567633))

(assert (=> b!3989673 m!4567027))

(assert (=> b!3989673 m!4567027))

(declare-fun m!4567635 () Bool)

(assert (=> b!3989673 m!4567635))

(assert (=> b!3989674 m!4566587))

(assert (=> start!375384 d!1180669))

(declare-fun lt!1405848 () List!42792)

(declare-fun e!2473110 () Bool)

(declare-fun b!3989678 () Bool)

(assert (=> b!3989678 (= e!2473110 (or (not (= lt!1405566 Nil!42668)) (= lt!1405848 lt!1405581)))))

(declare-fun d!1180671 () Bool)

(assert (=> d!1180671 e!2473110))

(declare-fun res!1618886 () Bool)

(assert (=> d!1180671 (=> (not res!1618886) (not e!2473110))))

(assert (=> d!1180671 (= res!1618886 (= (content!6471 lt!1405848) ((_ map or) (content!6471 lt!1405581) (content!6471 lt!1405566))))))

(declare-fun e!2473109 () List!42792)

(assert (=> d!1180671 (= lt!1405848 e!2473109)))

(declare-fun c!690572 () Bool)

(assert (=> d!1180671 (= c!690572 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180671 (= (++!11154 lt!1405581 lt!1405566) lt!1405848)))

(declare-fun b!3989676 () Bool)

(assert (=> b!3989676 (= e!2473109 (Cons!42668 (h!48088 lt!1405581) (++!11154 (t!331687 lt!1405581) lt!1405566)))))

(declare-fun b!3989677 () Bool)

(declare-fun res!1618885 () Bool)

(assert (=> b!3989677 (=> (not res!1618885) (not e!2473110))))

(assert (=> b!3989677 (= res!1618885 (= (size!31913 lt!1405848) (+ (size!31913 lt!1405581) (size!31913 lt!1405566))))))

(declare-fun b!3989675 () Bool)

(assert (=> b!3989675 (= e!2473109 lt!1405566)))

(assert (= (and d!1180671 c!690572) b!3989675))

(assert (= (and d!1180671 (not c!690572)) b!3989676))

(assert (= (and d!1180671 res!1618886) b!3989677))

(assert (= (and b!3989677 res!1618885) b!3989678))

(declare-fun m!4567637 () Bool)

(assert (=> d!1180671 m!4567637))

(assert (=> d!1180671 m!4566849))

(declare-fun m!4567639 () Bool)

(assert (=> d!1180671 m!4567639))

(declare-fun m!4567641 () Bool)

(assert (=> b!3989676 m!4567641))

(declare-fun m!4567643 () Bool)

(assert (=> b!3989677 m!4567643))

(assert (=> b!3989677 m!4566733))

(declare-fun m!4567645 () Bool)

(assert (=> b!3989677 m!4567645))

(assert (=> b!3989028 d!1180671))

(declare-fun e!2473112 () Bool)

(declare-fun b!3989682 () Bool)

(declare-fun lt!1405849 () List!42792)

(assert (=> b!3989682 (= e!2473112 (or (not (= suffix!1299 Nil!42668)) (= lt!1405849 lt!1405586)))))

(declare-fun d!1180673 () Bool)

(assert (=> d!1180673 e!2473112))

(declare-fun res!1618888 () Bool)

(assert (=> d!1180673 (=> (not res!1618888) (not e!2473112))))

(assert (=> d!1180673 (= res!1618888 (= (content!6471 lt!1405849) ((_ map or) (content!6471 lt!1405586) (content!6471 suffix!1299))))))

(declare-fun e!2473111 () List!42792)

(assert (=> d!1180673 (= lt!1405849 e!2473111)))

(declare-fun c!690573 () Bool)

(assert (=> d!1180673 (= c!690573 ((_ is Nil!42668) lt!1405586))))

(assert (=> d!1180673 (= (++!11154 lt!1405586 suffix!1299) lt!1405849)))

(declare-fun b!3989680 () Bool)

(assert (=> b!3989680 (= e!2473111 (Cons!42668 (h!48088 lt!1405586) (++!11154 (t!331687 lt!1405586) suffix!1299)))))

(declare-fun b!3989681 () Bool)

(declare-fun res!1618887 () Bool)

(assert (=> b!3989681 (=> (not res!1618887) (not e!2473112))))

(assert (=> b!3989681 (= res!1618887 (= (size!31913 lt!1405849) (+ (size!31913 lt!1405586) (size!31913 suffix!1299))))))

(declare-fun b!3989679 () Bool)

(assert (=> b!3989679 (= e!2473111 suffix!1299)))

(assert (= (and d!1180673 c!690573) b!3989679))

(assert (= (and d!1180673 (not c!690573)) b!3989680))

(assert (= (and d!1180673 res!1618888) b!3989681))

(assert (= (and b!3989681 res!1618887) b!3989682))

(declare-fun m!4567647 () Bool)

(assert (=> d!1180673 m!4567647))

(declare-fun m!4567649 () Bool)

(assert (=> d!1180673 m!4567649))

(assert (=> d!1180673 m!4567003))

(declare-fun m!4567651 () Bool)

(assert (=> b!3989680 m!4567651))

(declare-fun m!4567653 () Bool)

(assert (=> b!3989681 m!4567653))

(declare-fun m!4567655 () Bool)

(assert (=> b!3989681 m!4567655))

(assert (=> b!3989681 m!4566609))

(assert (=> b!3989028 d!1180673))

(declare-fun b!3989686 () Bool)

(declare-fun e!2473114 () Bool)

(declare-fun lt!1405850 () List!42792)

(assert (=> b!3989686 (= e!2473114 (or (not (= suffix!1299 Nil!42668)) (= lt!1405850 lt!1405584)))))

(declare-fun d!1180675 () Bool)

(assert (=> d!1180675 e!2473114))

(declare-fun res!1618890 () Bool)

(assert (=> d!1180675 (=> (not res!1618890) (not e!2473114))))

(assert (=> d!1180675 (= res!1618890 (= (content!6471 lt!1405850) ((_ map or) (content!6471 lt!1405584) (content!6471 suffix!1299))))))

(declare-fun e!2473113 () List!42792)

(assert (=> d!1180675 (= lt!1405850 e!2473113)))

(declare-fun c!690574 () Bool)

(assert (=> d!1180675 (= c!690574 ((_ is Nil!42668) lt!1405584))))

(assert (=> d!1180675 (= (++!11154 lt!1405584 suffix!1299) lt!1405850)))

(declare-fun b!3989684 () Bool)

(assert (=> b!3989684 (= e!2473113 (Cons!42668 (h!48088 lt!1405584) (++!11154 (t!331687 lt!1405584) suffix!1299)))))

(declare-fun b!3989685 () Bool)

(declare-fun res!1618889 () Bool)

(assert (=> b!3989685 (=> (not res!1618889) (not e!2473114))))

(assert (=> b!3989685 (= res!1618889 (= (size!31913 lt!1405850) (+ (size!31913 lt!1405584) (size!31913 suffix!1299))))))

(declare-fun b!3989683 () Bool)

(assert (=> b!3989683 (= e!2473113 suffix!1299)))

(assert (= (and d!1180675 c!690574) b!3989683))

(assert (= (and d!1180675 (not c!690574)) b!3989684))

(assert (= (and d!1180675 res!1618890) b!3989685))

(assert (= (and b!3989685 res!1618889) b!3989686))

(declare-fun m!4567657 () Bool)

(assert (=> d!1180675 m!4567657))

(declare-fun m!4567659 () Bool)

(assert (=> d!1180675 m!4567659))

(assert (=> d!1180675 m!4567003))

(declare-fun m!4567661 () Bool)

(assert (=> b!3989684 m!4567661))

(declare-fun m!4567663 () Bool)

(assert (=> b!3989685 m!4567663))

(declare-fun m!4567665 () Bool)

(assert (=> b!3989685 m!4567665))

(assert (=> b!3989685 m!4566609))

(assert (=> b!3989028 d!1180675))

(declare-fun d!1180677 () Bool)

(assert (=> d!1180677 (= (++!11154 (++!11154 lt!1405581 lt!1405584) suffix!1299) (++!11154 lt!1405581 (++!11154 lt!1405584 suffix!1299)))))

(declare-fun lt!1405851 () Unit!61413)

(assert (=> d!1180677 (= lt!1405851 (choose!23984 lt!1405581 lt!1405584 suffix!1299))))

(assert (=> d!1180677 (= (lemmaConcatAssociativity!2474 lt!1405581 lt!1405584 suffix!1299) lt!1405851)))

(declare-fun bs!588333 () Bool)

(assert (= bs!588333 d!1180677))

(assert (=> bs!588333 m!4566729))

(assert (=> bs!588333 m!4566729))

(declare-fun m!4567667 () Bool)

(assert (=> bs!588333 m!4567667))

(assert (=> bs!588333 m!4566623))

(declare-fun m!4567669 () Bool)

(assert (=> bs!588333 m!4567669))

(assert (=> bs!588333 m!4566623))

(declare-fun m!4567671 () Bool)

(assert (=> bs!588333 m!4567671))

(assert (=> b!3989028 d!1180677))

(declare-fun b!3989687 () Bool)

(declare-fun res!1618896 () Bool)

(declare-fun e!2473116 () Bool)

(assert (=> b!3989687 (=> (not res!1618896) (not e!2473116))))

(declare-fun lt!1405855 () Option!9166)

(assert (=> b!3989687 (= res!1618896 (< (size!31913 (_2!24070 (get!14039 lt!1405855))) (size!31913 lt!1405559)))))

(declare-fun b!3989688 () Bool)

(declare-fun res!1618891 () Bool)

(assert (=> b!3989688 (=> (not res!1618891) (not e!2473116))))

(assert (=> b!3989688 (= res!1618891 (= (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405855)))) (originalCharacters!7352 (_1!24070 (get!14039 lt!1405855)))))))

(declare-fun b!3989689 () Bool)

(assert (=> b!3989689 (= e!2473116 (contains!8491 rules!2999 (rule!9768 (_1!24070 (get!14039 lt!1405855)))))))

(declare-fun b!3989690 () Bool)

(declare-fun res!1618892 () Bool)

(assert (=> b!3989690 (=> (not res!1618892) (not e!2473116))))

(assert (=> b!3989690 (= res!1618892 (= (value!213066 (_1!24070 (get!14039 lt!1405855))) (apply!9963 (transformation!6752 (rule!9768 (_1!24070 (get!14039 lt!1405855)))) (seqFromList!4991 (originalCharacters!7352 (_1!24070 (get!14039 lt!1405855)))))))))

(declare-fun b!3989691 () Bool)

(declare-fun e!2473117 () Option!9166)

(declare-fun lt!1405854 () Option!9166)

(declare-fun lt!1405853 () Option!9166)

(assert (=> b!3989691 (= e!2473117 (ite (and ((_ is None!9165) lt!1405854) ((_ is None!9165) lt!1405853)) None!9165 (ite ((_ is None!9165) lt!1405853) lt!1405854 (ite ((_ is None!9165) lt!1405854) lt!1405853 (ite (>= (size!31912 (_1!24070 (v!39521 lt!1405854))) (size!31912 (_1!24070 (v!39521 lt!1405853)))) lt!1405854 lt!1405853)))))))

(declare-fun call!285815 () Option!9166)

(assert (=> b!3989691 (= lt!1405854 call!285815)))

(assert (=> b!3989691 (= lt!1405853 (maxPrefix!3639 thiss!21717 (t!331689 rules!2999) lt!1405559))))

(declare-fun bm!285810 () Bool)

(assert (=> bm!285810 (= call!285815 (maxPrefixOneRule!2673 thiss!21717 (h!48090 rules!2999) lt!1405559))))

(declare-fun d!1180679 () Bool)

(declare-fun e!2473115 () Bool)

(assert (=> d!1180679 e!2473115))

(declare-fun res!1618893 () Bool)

(assert (=> d!1180679 (=> res!1618893 e!2473115)))

(assert (=> d!1180679 (= res!1618893 (isEmpty!25503 lt!1405855))))

(assert (=> d!1180679 (= lt!1405855 e!2473117)))

(declare-fun c!690575 () Bool)

(assert (=> d!1180679 (= c!690575 (and ((_ is Cons!42670) rules!2999) ((_ is Nil!42670) (t!331689 rules!2999))))))

(declare-fun lt!1405856 () Unit!61413)

(declare-fun lt!1405852 () Unit!61413)

(assert (=> d!1180679 (= lt!1405856 lt!1405852)))

(assert (=> d!1180679 (isPrefix!3839 lt!1405559 lt!1405559)))

(assert (=> d!1180679 (= lt!1405852 (lemmaIsPrefixRefl!2431 lt!1405559 lt!1405559))))

(assert (=> d!1180679 (rulesValidInductive!2453 thiss!21717 rules!2999)))

(assert (=> d!1180679 (= (maxPrefix!3639 thiss!21717 rules!2999 lt!1405559) lt!1405855)))

(declare-fun b!3989692 () Bool)

(declare-fun res!1618897 () Bool)

(assert (=> b!3989692 (=> (not res!1618897) (not e!2473116))))

(assert (=> b!3989692 (= res!1618897 (matchR!5634 (regex!6752 (rule!9768 (_1!24070 (get!14039 lt!1405855)))) (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405855))))))))

(declare-fun b!3989693 () Bool)

(assert (=> b!3989693 (= e!2473115 e!2473116)))

(declare-fun res!1618895 () Bool)

(assert (=> b!3989693 (=> (not res!1618895) (not e!2473116))))

(assert (=> b!3989693 (= res!1618895 (isDefined!7039 lt!1405855))))

(declare-fun b!3989694 () Bool)

(declare-fun res!1618894 () Bool)

(assert (=> b!3989694 (=> (not res!1618894) (not e!2473116))))

(assert (=> b!3989694 (= res!1618894 (= (++!11154 (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405855)))) (_2!24070 (get!14039 lt!1405855))) lt!1405559))))

(declare-fun b!3989695 () Bool)

(assert (=> b!3989695 (= e!2473117 call!285815)))

(assert (= (and d!1180679 c!690575) b!3989695))

(assert (= (and d!1180679 (not c!690575)) b!3989691))

(assert (= (or b!3989695 b!3989691) bm!285810))

(assert (= (and d!1180679 (not res!1618893)) b!3989693))

(assert (= (and b!3989693 res!1618895) b!3989688))

(assert (= (and b!3989688 res!1618891) b!3989687))

(assert (= (and b!3989687 res!1618896) b!3989694))

(assert (= (and b!3989694 res!1618894) b!3989690))

(assert (= (and b!3989690 res!1618892) b!3989692))

(assert (= (and b!3989692 res!1618897) b!3989689))

(declare-fun m!4567673 () Bool)

(assert (=> b!3989689 m!4567673))

(declare-fun m!4567675 () Bool)

(assert (=> b!3989689 m!4567675))

(assert (=> b!3989694 m!4567673))

(declare-fun m!4567677 () Bool)

(assert (=> b!3989694 m!4567677))

(assert (=> b!3989694 m!4567677))

(declare-fun m!4567679 () Bool)

(assert (=> b!3989694 m!4567679))

(assert (=> b!3989694 m!4567679))

(declare-fun m!4567681 () Bool)

(assert (=> b!3989694 m!4567681))

(assert (=> b!3989692 m!4567673))

(assert (=> b!3989692 m!4567677))

(assert (=> b!3989692 m!4567677))

(assert (=> b!3989692 m!4567679))

(assert (=> b!3989692 m!4567679))

(declare-fun m!4567683 () Bool)

(assert (=> b!3989692 m!4567683))

(assert (=> b!3989688 m!4567673))

(assert (=> b!3989688 m!4567677))

(assert (=> b!3989688 m!4567677))

(assert (=> b!3989688 m!4567679))

(declare-fun m!4567685 () Bool)

(assert (=> b!3989691 m!4567685))

(assert (=> b!3989687 m!4567673))

(declare-fun m!4567687 () Bool)

(assert (=> b!3989687 m!4567687))

(assert (=> b!3989687 m!4567599))

(assert (=> b!3989690 m!4567673))

(declare-fun m!4567689 () Bool)

(assert (=> b!3989690 m!4567689))

(assert (=> b!3989690 m!4567689))

(declare-fun m!4567691 () Bool)

(assert (=> b!3989690 m!4567691))

(declare-fun m!4567693 () Bool)

(assert (=> bm!285810 m!4567693))

(declare-fun m!4567695 () Bool)

(assert (=> d!1180679 m!4567695))

(declare-fun m!4567697 () Bool)

(assert (=> d!1180679 m!4567697))

(declare-fun m!4567699 () Bool)

(assert (=> d!1180679 m!4567699))

(assert (=> d!1180679 m!4566759))

(declare-fun m!4567701 () Bool)

(assert (=> b!3989693 m!4567701))

(assert (=> b!3989031 d!1180679))

(declare-fun d!1180681 () Bool)

(assert (=> d!1180681 (= suffixResult!105 lt!1405562)))

(declare-fun lt!1405857 () Unit!61413)

(assert (=> d!1180681 (= lt!1405857 (choose!23981 lt!1405581 suffixResult!105 lt!1405581 lt!1405562 lt!1405564))))

(assert (=> d!1180681 (isPrefix!3839 lt!1405581 lt!1405564)))

(assert (=> d!1180681 (= (lemmaSamePrefixThenSameSuffix!2026 lt!1405581 suffixResult!105 lt!1405581 lt!1405562 lt!1405564) lt!1405857)))

(declare-fun bs!588334 () Bool)

(assert (= bs!588334 d!1180681))

(declare-fun m!4567703 () Bool)

(assert (=> bs!588334 m!4567703))

(assert (=> bs!588334 m!4566709))

(assert (=> b!3989031 d!1180681))

(declare-fun b!3989696 () Bool)

(declare-fun e!2473120 () Bool)

(declare-fun e!2473118 () Bool)

(assert (=> b!3989696 (= e!2473120 e!2473118)))

(declare-fun res!1618899 () Bool)

(assert (=> b!3989696 (=> (not res!1618899) (not e!2473118))))

(assert (=> b!3989696 (= res!1618899 (not ((_ is Nil!42668) lt!1405591)))))

(declare-fun b!3989698 () Bool)

(assert (=> b!3989698 (= e!2473118 (isPrefix!3839 (tail!6221 lt!1405581) (tail!6221 lt!1405591)))))

(declare-fun d!1180683 () Bool)

(declare-fun e!2473119 () Bool)

(assert (=> d!1180683 e!2473119))

(declare-fun res!1618898 () Bool)

(assert (=> d!1180683 (=> res!1618898 e!2473119)))

(declare-fun lt!1405858 () Bool)

(assert (=> d!1180683 (= res!1618898 (not lt!1405858))))

(assert (=> d!1180683 (= lt!1405858 e!2473120)))

(declare-fun res!1618901 () Bool)

(assert (=> d!1180683 (=> res!1618901 e!2473120)))

(assert (=> d!1180683 (= res!1618901 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180683 (= (isPrefix!3839 lt!1405581 lt!1405591) lt!1405858)))

(declare-fun b!3989699 () Bool)

(assert (=> b!3989699 (= e!2473119 (>= (size!31913 lt!1405591) (size!31913 lt!1405581)))))

(declare-fun b!3989697 () Bool)

(declare-fun res!1618900 () Bool)

(assert (=> b!3989697 (=> (not res!1618900) (not e!2473118))))

(assert (=> b!3989697 (= res!1618900 (= (head!8489 lt!1405581) (head!8489 lt!1405591)))))

(assert (= (and d!1180683 (not res!1618901)) b!3989696))

(assert (= (and b!3989696 res!1618899) b!3989697))

(assert (= (and b!3989697 res!1618900) b!3989698))

(assert (= (and d!1180683 (not res!1618898)) b!3989699))

(assert (=> b!3989698 m!4567085))

(declare-fun m!4567705 () Bool)

(assert (=> b!3989698 m!4567705))

(assert (=> b!3989698 m!4567085))

(assert (=> b!3989698 m!4567705))

(declare-fun m!4567707 () Bool)

(assert (=> b!3989698 m!4567707))

(declare-fun m!4567709 () Bool)

(assert (=> b!3989699 m!4567709))

(assert (=> b!3989699 m!4566733))

(assert (=> b!3989697 m!4567093))

(declare-fun m!4567711 () Bool)

(assert (=> b!3989697 m!4567711))

(assert (=> b!3989031 d!1180683))

(declare-fun d!1180685 () Bool)

(assert (=> d!1180685 (isPrefix!3839 lt!1405581 (++!11154 lt!1405581 lt!1405562))))

(declare-fun lt!1405859 () Unit!61413)

(assert (=> d!1180685 (= lt!1405859 (choose!23982 lt!1405581 lt!1405562))))

(assert (=> d!1180685 (= (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405581 lt!1405562) lt!1405859)))

(declare-fun bs!588335 () Bool)

(assert (= bs!588335 d!1180685))

(assert (=> bs!588335 m!4566717))

(assert (=> bs!588335 m!4566717))

(declare-fun m!4567713 () Bool)

(assert (=> bs!588335 m!4567713))

(declare-fun m!4567715 () Bool)

(assert (=> bs!588335 m!4567715))

(assert (=> b!3989031 d!1180685))

(declare-fun d!1180687 () Bool)

(assert (=> d!1180687 (= (_2!24070 (v!39521 lt!1405599)) lt!1405569)))

(declare-fun lt!1405860 () Unit!61413)

(assert (=> d!1180687 (= lt!1405860 (choose!23981 lt!1405573 (_2!24070 (v!39521 lt!1405599)) lt!1405573 lt!1405569 lt!1405559))))

(assert (=> d!1180687 (isPrefix!3839 lt!1405573 lt!1405559)))

(assert (=> d!1180687 (= (lemmaSamePrefixThenSameSuffix!2026 lt!1405573 (_2!24070 (v!39521 lt!1405599)) lt!1405573 lt!1405569 lt!1405559) lt!1405860)))

(declare-fun bs!588336 () Bool)

(assert (= bs!588336 d!1180687))

(declare-fun m!4567717 () Bool)

(assert (=> bs!588336 m!4567717))

(assert (=> bs!588336 m!4566683))

(assert (=> b!3989010 d!1180687))

(declare-fun b!3989700 () Bool)

(declare-fun e!2473123 () Bool)

(declare-fun e!2473121 () Bool)

(assert (=> b!3989700 (= e!2473123 e!2473121)))

(declare-fun res!1618903 () Bool)

(assert (=> b!3989700 (=> (not res!1618903) (not e!2473121))))

(assert (=> b!3989700 (= res!1618903 (not ((_ is Nil!42668) lt!1405553)))))

(declare-fun b!3989702 () Bool)

(assert (=> b!3989702 (= e!2473121 (isPrefix!3839 (tail!6221 lt!1405573) (tail!6221 lt!1405553)))))

(declare-fun d!1180689 () Bool)

(declare-fun e!2473122 () Bool)

(assert (=> d!1180689 e!2473122))

(declare-fun res!1618902 () Bool)

(assert (=> d!1180689 (=> res!1618902 e!2473122)))

(declare-fun lt!1405861 () Bool)

(assert (=> d!1180689 (= res!1618902 (not lt!1405861))))

(assert (=> d!1180689 (= lt!1405861 e!2473123)))

(declare-fun res!1618905 () Bool)

(assert (=> d!1180689 (=> res!1618905 e!2473123)))

(assert (=> d!1180689 (= res!1618905 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180689 (= (isPrefix!3839 lt!1405573 lt!1405553) lt!1405861)))

(declare-fun b!3989703 () Bool)

(assert (=> b!3989703 (= e!2473122 (>= (size!31913 lt!1405553) (size!31913 lt!1405573)))))

(declare-fun b!3989701 () Bool)

(declare-fun res!1618904 () Bool)

(assert (=> b!3989701 (=> (not res!1618904) (not e!2473121))))

(assert (=> b!3989701 (= res!1618904 (= (head!8489 lt!1405573) (head!8489 lt!1405553)))))

(assert (= (and d!1180689 (not res!1618905)) b!3989700))

(assert (= (and b!3989700 res!1618903) b!3989701))

(assert (= (and b!3989701 res!1618904) b!3989702))

(assert (= (and d!1180689 (not res!1618902)) b!3989703))

(assert (=> b!3989702 m!4566769))

(declare-fun m!4567719 () Bool)

(assert (=> b!3989702 m!4567719))

(assert (=> b!3989702 m!4566769))

(assert (=> b!3989702 m!4567719))

(declare-fun m!4567721 () Bool)

(assert (=> b!3989702 m!4567721))

(declare-fun m!4567723 () Bool)

(assert (=> b!3989703 m!4567723))

(assert (=> b!3989703 m!4566647))

(assert (=> b!3989701 m!4566767))

(declare-fun m!4567725 () Bool)

(assert (=> b!3989701 m!4567725))

(assert (=> b!3989010 d!1180689))

(declare-fun d!1180691 () Bool)

(assert (=> d!1180691 (isPrefix!3839 lt!1405573 (++!11154 lt!1405573 lt!1405569))))

(declare-fun lt!1405862 () Unit!61413)

(assert (=> d!1180691 (= lt!1405862 (choose!23982 lt!1405573 lt!1405569))))

(assert (=> d!1180691 (= (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405573 lt!1405569) lt!1405862)))

(declare-fun bs!588337 () Bool)

(assert (= bs!588337 d!1180691))

(assert (=> bs!588337 m!4566569))

(assert (=> bs!588337 m!4566569))

(declare-fun m!4567727 () Bool)

(assert (=> bs!588337 m!4567727))

(declare-fun m!4567729 () Bool)

(assert (=> bs!588337 m!4567729))

(assert (=> b!3989010 d!1180691))

(declare-fun b!3989704 () Bool)

(declare-fun e!2473126 () Bool)

(declare-fun e!2473124 () Bool)

(assert (=> b!3989704 (= e!2473126 e!2473124)))

(declare-fun res!1618907 () Bool)

(assert (=> b!3989704 (=> (not res!1618907) (not e!2473124))))

(assert (=> b!3989704 (= res!1618907 (not ((_ is Nil!42668) lt!1405564)))))

(declare-fun b!3989706 () Bool)

(assert (=> b!3989706 (= e!2473124 (isPrefix!3839 (tail!6221 lt!1405573) (tail!6221 lt!1405564)))))

(declare-fun d!1180693 () Bool)

(declare-fun e!2473125 () Bool)

(assert (=> d!1180693 e!2473125))

(declare-fun res!1618906 () Bool)

(assert (=> d!1180693 (=> res!1618906 e!2473125)))

(declare-fun lt!1405863 () Bool)

(assert (=> d!1180693 (= res!1618906 (not lt!1405863))))

(assert (=> d!1180693 (= lt!1405863 e!2473126)))

(declare-fun res!1618909 () Bool)

(assert (=> d!1180693 (=> res!1618909 e!2473126)))

(assert (=> d!1180693 (= res!1618909 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180693 (= (isPrefix!3839 lt!1405573 lt!1405564) lt!1405863)))

(declare-fun b!3989707 () Bool)

(assert (=> b!3989707 (= e!2473125 (>= (size!31913 lt!1405564) (size!31913 lt!1405573)))))

(declare-fun b!3989705 () Bool)

(declare-fun res!1618908 () Bool)

(assert (=> b!3989705 (=> (not res!1618908) (not e!2473124))))

(assert (=> b!3989705 (= res!1618908 (= (head!8489 lt!1405573) (head!8489 lt!1405564)))))

(assert (= (and d!1180693 (not res!1618909)) b!3989704))

(assert (= (and b!3989704 res!1618907) b!3989705))

(assert (= (and b!3989705 res!1618908) b!3989706))

(assert (= (and d!1180693 (not res!1618906)) b!3989707))

(assert (=> b!3989706 m!4566769))

(assert (=> b!3989706 m!4566883))

(assert (=> b!3989706 m!4566769))

(assert (=> b!3989706 m!4566883))

(declare-fun m!4567731 () Bool)

(assert (=> b!3989706 m!4567731))

(assert (=> b!3989707 m!4566881))

(assert (=> b!3989707 m!4566647))

(assert (=> b!3989705 m!4566767))

(assert (=> b!3989705 m!4566909))

(assert (=> b!3989009 d!1180693))

(declare-fun b!3989708 () Bool)

(declare-fun e!2473129 () Bool)

(declare-fun e!2473127 () Bool)

(assert (=> b!3989708 (= e!2473129 e!2473127)))

(declare-fun res!1618911 () Bool)

(assert (=> b!3989708 (=> (not res!1618911) (not e!2473127))))

(assert (=> b!3989708 (= res!1618911 (not ((_ is Nil!42668) lt!1405545)))))

(declare-fun b!3989710 () Bool)

(assert (=> b!3989710 (= e!2473127 (isPrefix!3839 (tail!6221 lt!1405573) (tail!6221 lt!1405545)))))

(declare-fun d!1180695 () Bool)

(declare-fun e!2473128 () Bool)

(assert (=> d!1180695 e!2473128))

(declare-fun res!1618910 () Bool)

(assert (=> d!1180695 (=> res!1618910 e!2473128)))

(declare-fun lt!1405864 () Bool)

(assert (=> d!1180695 (= res!1618910 (not lt!1405864))))

(assert (=> d!1180695 (= lt!1405864 e!2473129)))

(declare-fun res!1618913 () Bool)

(assert (=> d!1180695 (=> res!1618913 e!2473129)))

(assert (=> d!1180695 (= res!1618913 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180695 (= (isPrefix!3839 lt!1405573 lt!1405545) lt!1405864)))

(declare-fun b!3989711 () Bool)

(assert (=> b!3989711 (= e!2473128 (>= (size!31913 lt!1405545) (size!31913 lt!1405573)))))

(declare-fun b!3989709 () Bool)

(declare-fun res!1618912 () Bool)

(assert (=> b!3989709 (=> (not res!1618912) (not e!2473127))))

(assert (=> b!3989709 (= res!1618912 (= (head!8489 lt!1405573) (head!8489 lt!1405545)))))

(assert (= (and d!1180695 (not res!1618913)) b!3989708))

(assert (= (and b!3989708 res!1618911) b!3989709))

(assert (= (and b!3989709 res!1618912) b!3989710))

(assert (= (and d!1180695 (not res!1618910)) b!3989711))

(assert (=> b!3989710 m!4566769))

(declare-fun m!4567733 () Bool)

(assert (=> b!3989710 m!4567733))

(assert (=> b!3989710 m!4566769))

(assert (=> b!3989710 m!4567733))

(declare-fun m!4567735 () Bool)

(assert (=> b!3989710 m!4567735))

(declare-fun m!4567737 () Bool)

(assert (=> b!3989711 m!4567737))

(assert (=> b!3989711 m!4566647))

(assert (=> b!3989709 m!4566767))

(declare-fun m!4567739 () Bool)

(assert (=> b!3989709 m!4567739))

(assert (=> b!3989009 d!1180695))

(declare-fun d!1180697 () Bool)

(assert (=> d!1180697 (isPrefix!3839 lt!1405573 (++!11154 lt!1405559 lt!1405577))))

(declare-fun lt!1405867 () Unit!61413)

(declare-fun choose!23988 (List!42792 List!42792 List!42792) Unit!61413)

(assert (=> d!1180697 (= lt!1405867 (choose!23988 lt!1405573 lt!1405559 lt!1405577))))

(assert (=> d!1180697 (isPrefix!3839 lt!1405573 lt!1405559)))

(assert (=> d!1180697 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!672 lt!1405573 lt!1405559 lt!1405577) lt!1405867)))

(declare-fun bs!588338 () Bool)

(assert (= bs!588338 d!1180697))

(assert (=> bs!588338 m!4566603))

(assert (=> bs!588338 m!4566603))

(declare-fun m!4567741 () Bool)

(assert (=> bs!588338 m!4567741))

(declare-fun m!4567743 () Bool)

(assert (=> bs!588338 m!4567743))

(assert (=> bs!588338 m!4566683))

(assert (=> b!3989009 d!1180697))

(declare-fun e!2473131 () Bool)

(declare-fun b!3989715 () Bool)

(declare-fun lt!1405868 () List!42792)

(assert (=> b!3989715 (= e!2473131 (or (not (= suffixResult!105 Nil!42668)) (= lt!1405868 lt!1405581)))))

(declare-fun d!1180699 () Bool)

(assert (=> d!1180699 e!2473131))

(declare-fun res!1618915 () Bool)

(assert (=> d!1180699 (=> (not res!1618915) (not e!2473131))))

(assert (=> d!1180699 (= res!1618915 (= (content!6471 lt!1405868) ((_ map or) (content!6471 lt!1405581) (content!6471 suffixResult!105))))))

(declare-fun e!2473130 () List!42792)

(assert (=> d!1180699 (= lt!1405868 e!2473130)))

(declare-fun c!690576 () Bool)

(assert (=> d!1180699 (= c!690576 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180699 (= (++!11154 lt!1405581 suffixResult!105) lt!1405868)))

(declare-fun b!3989713 () Bool)

(assert (=> b!3989713 (= e!2473130 (Cons!42668 (h!48088 lt!1405581) (++!11154 (t!331687 lt!1405581) suffixResult!105)))))

(declare-fun b!3989714 () Bool)

(declare-fun res!1618914 () Bool)

(assert (=> b!3989714 (=> (not res!1618914) (not e!2473131))))

(assert (=> b!3989714 (= res!1618914 (= (size!31913 lt!1405868) (+ (size!31913 lt!1405581) (size!31913 suffixResult!105))))))

(declare-fun b!3989712 () Bool)

(assert (=> b!3989712 (= e!2473130 suffixResult!105)))

(assert (= (and d!1180699 c!690576) b!3989712))

(assert (= (and d!1180699 (not c!690576)) b!3989713))

(assert (= (and d!1180699 res!1618915) b!3989714))

(assert (= (and b!3989714 res!1618914) b!3989715))

(declare-fun m!4567745 () Bool)

(assert (=> d!1180699 m!4567745))

(assert (=> d!1180699 m!4566849))

(declare-fun m!4567747 () Bool)

(assert (=> d!1180699 m!4567747))

(declare-fun m!4567749 () Bool)

(assert (=> b!3989713 m!4567749))

(declare-fun m!4567751 () Bool)

(assert (=> b!3989714 m!4567751))

(assert (=> b!3989714 m!4566733))

(declare-fun m!4567753 () Bool)

(assert (=> b!3989714 m!4567753))

(assert (=> b!3989003 d!1180699))

(declare-fun d!1180701 () Bool)

(declare-fun e!2473134 () Bool)

(assert (=> d!1180701 e!2473134))

(declare-fun res!1618918 () Bool)

(assert (=> d!1180701 (=> (not res!1618918) (not e!2473134))))

(assert (=> d!1180701 (= res!1618918 (semiInverseModEq!2895 (toChars!9099 (transformation!6752 (rule!9768 token!484))) (toValue!9240 (transformation!6752 (rule!9768 token!484)))))))

(declare-fun Unit!61422 () Unit!61413)

(assert (=> d!1180701 (= (lemmaInv!967 (transformation!6752 (rule!9768 token!484))) Unit!61422)))

(declare-fun b!3989718 () Bool)

(assert (=> b!3989718 (= e!2473134 (equivClasses!2794 (toChars!9099 (transformation!6752 (rule!9768 token!484))) (toValue!9240 (transformation!6752 (rule!9768 token!484)))))))

(assert (= (and d!1180701 res!1618918) b!3989718))

(assert (=> d!1180701 m!4566795))

(assert (=> b!3989718 m!4566797))

(assert (=> b!3989003 d!1180701))

(declare-fun d!1180703 () Bool)

(declare-fun res!1618923 () Bool)

(declare-fun e!2473137 () Bool)

(assert (=> d!1180703 (=> (not res!1618923) (not e!2473137))))

(assert (=> d!1180703 (= res!1618923 (validRegex!5288 (regex!6752 (rule!9768 token!484))))))

(assert (=> d!1180703 (= (ruleValid!2684 thiss!21717 (rule!9768 token!484)) e!2473137)))

(declare-fun b!3989723 () Bool)

(declare-fun res!1618924 () Bool)

(assert (=> b!3989723 (=> (not res!1618924) (not e!2473137))))

(assert (=> b!3989723 (= res!1618924 (not (nullable!4087 (regex!6752 (rule!9768 token!484)))))))

(declare-fun b!3989724 () Bool)

(assert (=> b!3989724 (= e!2473137 (not (= (tag!7612 (rule!9768 token!484)) (String!48628 ""))))))

(assert (= (and d!1180703 res!1618923) b!3989723))

(assert (= (and b!3989723 res!1618924) b!3989724))

(declare-fun m!4567755 () Bool)

(assert (=> d!1180703 m!4567755))

(declare-fun m!4567757 () Bool)

(assert (=> b!3989723 m!4567757))

(assert (=> b!3989003 d!1180703))

(declare-fun d!1180705 () Bool)

(assert (=> d!1180705 (ruleValid!2684 thiss!21717 (rule!9768 token!484))))

(declare-fun lt!1405871 () Unit!61413)

(declare-fun choose!23989 (LexerInterface!6341 Rule!13304 List!42794) Unit!61413)

(assert (=> d!1180705 (= lt!1405871 (choose!23989 thiss!21717 (rule!9768 token!484) rules!2999))))

(assert (=> d!1180705 (contains!8491 rules!2999 (rule!9768 token!484))))

(assert (=> d!1180705 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1758 thiss!21717 (rule!9768 token!484) rules!2999) lt!1405871)))

(declare-fun bs!588339 () Bool)

(assert (= bs!588339 d!1180705))

(assert (=> bs!588339 m!4566579))

(declare-fun m!4567759 () Bool)

(assert (=> bs!588339 m!4567759))

(assert (=> bs!588339 m!4567621))

(assert (=> b!3989003 d!1180705))

(declare-fun e!2473139 () Bool)

(declare-fun lt!1405872 () List!42792)

(declare-fun b!3989728 () Bool)

(assert (=> b!3989728 (= e!2473139 (or (not (= lt!1405584 Nil!42668)) (= lt!1405872 lt!1405581)))))

(declare-fun d!1180707 () Bool)

(assert (=> d!1180707 e!2473139))

(declare-fun res!1618926 () Bool)

(assert (=> d!1180707 (=> (not res!1618926) (not e!2473139))))

(assert (=> d!1180707 (= res!1618926 (= (content!6471 lt!1405872) ((_ map or) (content!6471 lt!1405581) (content!6471 lt!1405584))))))

(declare-fun e!2473138 () List!42792)

(assert (=> d!1180707 (= lt!1405872 e!2473138)))

(declare-fun c!690577 () Bool)

(assert (=> d!1180707 (= c!690577 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180707 (= (++!11154 lt!1405581 lt!1405584) lt!1405872)))

(declare-fun b!3989726 () Bool)

(assert (=> b!3989726 (= e!2473138 (Cons!42668 (h!48088 lt!1405581) (++!11154 (t!331687 lt!1405581) lt!1405584)))))

(declare-fun b!3989727 () Bool)

(declare-fun res!1618925 () Bool)

(assert (=> b!3989727 (=> (not res!1618925) (not e!2473139))))

(assert (=> b!3989727 (= res!1618925 (= (size!31913 lt!1405872) (+ (size!31913 lt!1405581) (size!31913 lt!1405584))))))

(declare-fun b!3989725 () Bool)

(assert (=> b!3989725 (= e!2473138 lt!1405584)))

(assert (= (and d!1180707 c!690577) b!3989725))

(assert (= (and d!1180707 (not c!690577)) b!3989726))

(assert (= (and d!1180707 res!1618926) b!3989727))

(assert (= (and b!3989727 res!1618925) b!3989728))

(declare-fun m!4567761 () Bool)

(assert (=> d!1180707 m!4567761))

(assert (=> d!1180707 m!4566849))

(assert (=> d!1180707 m!4567659))

(declare-fun m!4567763 () Bool)

(assert (=> b!3989726 m!4567763))

(declare-fun m!4567765 () Bool)

(assert (=> b!3989727 m!4567765))

(assert (=> b!3989727 m!4566733))

(assert (=> b!3989727 m!4567665))

(assert (=> b!3989024 d!1180707))

(declare-fun d!1180709 () Bool)

(declare-fun lt!1405873 () List!42792)

(assert (=> d!1180709 (= (++!11154 lt!1405581 lt!1405873) prefix!494)))

(declare-fun e!2473140 () List!42792)

(assert (=> d!1180709 (= lt!1405873 e!2473140)))

(declare-fun c!690578 () Bool)

(assert (=> d!1180709 (= c!690578 ((_ is Cons!42668) lt!1405581))))

(assert (=> d!1180709 (>= (size!31913 prefix!494) (size!31913 lt!1405581))))

(assert (=> d!1180709 (= (getSuffix!2270 prefix!494 lt!1405581) lt!1405873)))

(declare-fun b!3989729 () Bool)

(assert (=> b!3989729 (= e!2473140 (getSuffix!2270 (tail!6221 prefix!494) (t!331687 lt!1405581)))))

(declare-fun b!3989730 () Bool)

(assert (=> b!3989730 (= e!2473140 prefix!494)))

(assert (= (and d!1180709 c!690578) b!3989729))

(assert (= (and d!1180709 (not c!690578)) b!3989730))

(declare-fun m!4567767 () Bool)

(assert (=> d!1180709 m!4567767))

(assert (=> d!1180709 m!4566735))

(assert (=> d!1180709 m!4566733))

(assert (=> b!3989729 m!4567117))

(assert (=> b!3989729 m!4567117))

(declare-fun m!4567769 () Bool)

(assert (=> b!3989729 m!4567769))

(assert (=> b!3989024 d!1180709))

(declare-fun b!3989731 () Bool)

(declare-fun e!2473143 () Bool)

(declare-fun e!2473141 () Bool)

(assert (=> b!3989731 (= e!2473143 e!2473141)))

(declare-fun res!1618928 () Bool)

(assert (=> b!3989731 (=> (not res!1618928) (not e!2473141))))

(assert (=> b!3989731 (= res!1618928 (not ((_ is Nil!42668) prefix!494)))))

(declare-fun b!3989733 () Bool)

(assert (=> b!3989733 (= e!2473141 (isPrefix!3839 (tail!6221 lt!1405581) (tail!6221 prefix!494)))))

(declare-fun d!1180711 () Bool)

(declare-fun e!2473142 () Bool)

(assert (=> d!1180711 e!2473142))

(declare-fun res!1618927 () Bool)

(assert (=> d!1180711 (=> res!1618927 e!2473142)))

(declare-fun lt!1405874 () Bool)

(assert (=> d!1180711 (= res!1618927 (not lt!1405874))))

(assert (=> d!1180711 (= lt!1405874 e!2473143)))

(declare-fun res!1618930 () Bool)

(assert (=> d!1180711 (=> res!1618930 e!2473143)))

(assert (=> d!1180711 (= res!1618930 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180711 (= (isPrefix!3839 lt!1405581 prefix!494) lt!1405874)))

(declare-fun b!3989734 () Bool)

(assert (=> b!3989734 (= e!2473142 (>= (size!31913 prefix!494) (size!31913 lt!1405581)))))

(declare-fun b!3989732 () Bool)

(declare-fun res!1618929 () Bool)

(assert (=> b!3989732 (=> (not res!1618929) (not e!2473141))))

(assert (=> b!3989732 (= res!1618929 (= (head!8489 lt!1405581) (head!8489 prefix!494)))))

(assert (= (and d!1180711 (not res!1618930)) b!3989731))

(assert (= (and b!3989731 res!1618928) b!3989732))

(assert (= (and b!3989732 res!1618929) b!3989733))

(assert (= (and d!1180711 (not res!1618927)) b!3989734))

(assert (=> b!3989733 m!4567085))

(assert (=> b!3989733 m!4567117))

(assert (=> b!3989733 m!4567085))

(assert (=> b!3989733 m!4567117))

(declare-fun m!4567771 () Bool)

(assert (=> b!3989733 m!4567771))

(assert (=> b!3989734 m!4566735))

(assert (=> b!3989734 m!4566733))

(assert (=> b!3989732 m!4567093))

(assert (=> b!3989732 m!4567121))

(assert (=> b!3989024 d!1180711))

(declare-fun d!1180713 () Bool)

(assert (=> d!1180713 (isPrefix!3839 lt!1405581 prefix!494)))

(declare-fun lt!1405877 () Unit!61413)

(declare-fun choose!23990 (List!42792 List!42792 List!42792) Unit!61413)

(assert (=> d!1180713 (= lt!1405877 (choose!23990 prefix!494 lt!1405581 lt!1405564))))

(assert (=> d!1180713 (isPrefix!3839 prefix!494 lt!1405564)))

(assert (=> d!1180713 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!417 prefix!494 lt!1405581 lt!1405564) lt!1405877)))

(declare-fun bs!588340 () Bool)

(assert (= bs!588340 d!1180713))

(assert (=> bs!588340 m!4566627))

(declare-fun m!4567773 () Bool)

(assert (=> bs!588340 m!4567773))

(assert (=> bs!588340 m!4566707))

(assert (=> b!3989024 d!1180713))

(declare-fun b!3989738 () Bool)

(declare-fun e!2473145 () Bool)

(declare-fun lt!1405878 () List!42792)

(assert (=> b!3989738 (= e!2473145 (or (not (= newSuffix!27 Nil!42668)) (= lt!1405878 prefix!494)))))

(declare-fun d!1180715 () Bool)

(assert (=> d!1180715 e!2473145))

(declare-fun res!1618932 () Bool)

(assert (=> d!1180715 (=> (not res!1618932) (not e!2473145))))

(assert (=> d!1180715 (= res!1618932 (= (content!6471 lt!1405878) ((_ map or) (content!6471 prefix!494) (content!6471 newSuffix!27))))))

(declare-fun e!2473144 () List!42792)

(assert (=> d!1180715 (= lt!1405878 e!2473144)))

(declare-fun c!690579 () Bool)

(assert (=> d!1180715 (= c!690579 ((_ is Nil!42668) prefix!494))))

(assert (=> d!1180715 (= (++!11154 prefix!494 newSuffix!27) lt!1405878)))

(declare-fun b!3989736 () Bool)

(assert (=> b!3989736 (= e!2473144 (Cons!42668 (h!48088 prefix!494) (++!11154 (t!331687 prefix!494) newSuffix!27)))))

(declare-fun b!3989737 () Bool)

(declare-fun res!1618931 () Bool)

(assert (=> b!3989737 (=> (not res!1618931) (not e!2473145))))

(assert (=> b!3989737 (= res!1618931 (= (size!31913 lt!1405878) (+ (size!31913 prefix!494) (size!31913 newSuffix!27))))))

(declare-fun b!3989735 () Bool)

(assert (=> b!3989735 (= e!2473144 newSuffix!27)))

(assert (= (and d!1180715 c!690579) b!3989735))

(assert (= (and d!1180715 (not c!690579)) b!3989736))

(assert (= (and d!1180715 res!1618932) b!3989737))

(assert (= (and b!3989737 res!1618931) b!3989738))

(declare-fun m!4567775 () Bool)

(assert (=> d!1180715 m!4567775))

(assert (=> d!1180715 m!4567001))

(assert (=> d!1180715 m!4567127))

(declare-fun m!4567777 () Bool)

(assert (=> b!3989736 m!4567777))

(declare-fun m!4567779 () Bool)

(assert (=> b!3989737 m!4567779))

(assert (=> b!3989737 m!4566735))

(assert (=> b!3989737 m!4566611))

(assert (=> b!3989002 d!1180715))

(declare-fun e!2473147 () Bool)

(declare-fun lt!1405879 () List!42792)

(declare-fun b!3989742 () Bool)

(assert (=> b!3989742 (= e!2473147 (or (not (= newSuffixResult!27 Nil!42668)) (= lt!1405879 lt!1405581)))))

(declare-fun d!1180717 () Bool)

(assert (=> d!1180717 e!2473147))

(declare-fun res!1618934 () Bool)

(assert (=> d!1180717 (=> (not res!1618934) (not e!2473147))))

(assert (=> d!1180717 (= res!1618934 (= (content!6471 lt!1405879) ((_ map or) (content!6471 lt!1405581) (content!6471 newSuffixResult!27))))))

(declare-fun e!2473146 () List!42792)

(assert (=> d!1180717 (= lt!1405879 e!2473146)))

(declare-fun c!690580 () Bool)

(assert (=> d!1180717 (= c!690580 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180717 (= (++!11154 lt!1405581 newSuffixResult!27) lt!1405879)))

(declare-fun b!3989740 () Bool)

(assert (=> b!3989740 (= e!2473146 (Cons!42668 (h!48088 lt!1405581) (++!11154 (t!331687 lt!1405581) newSuffixResult!27)))))

(declare-fun b!3989741 () Bool)

(declare-fun res!1618933 () Bool)

(assert (=> b!3989741 (=> (not res!1618933) (not e!2473147))))

(assert (=> b!3989741 (= res!1618933 (= (size!31913 lt!1405879) (+ (size!31913 lt!1405581) (size!31913 newSuffixResult!27))))))

(declare-fun b!3989739 () Bool)

(assert (=> b!3989739 (= e!2473146 newSuffixResult!27)))

(assert (= (and d!1180717 c!690580) b!3989739))

(assert (= (and d!1180717 (not c!690580)) b!3989740))

(assert (= (and d!1180717 res!1618934) b!3989741))

(assert (= (and b!3989741 res!1618933) b!3989742))

(declare-fun m!4567781 () Bool)

(assert (=> d!1180717 m!4567781))

(assert (=> d!1180717 m!4566849))

(declare-fun m!4567783 () Bool)

(assert (=> d!1180717 m!4567783))

(declare-fun m!4567785 () Bool)

(assert (=> b!3989740 m!4567785))

(declare-fun m!4567787 () Bool)

(assert (=> b!3989741 m!4567787))

(assert (=> b!3989741 m!4566733))

(declare-fun m!4567789 () Bool)

(assert (=> b!3989741 m!4567789))

(assert (=> b!3989002 d!1180717))

(declare-fun b!3989743 () Bool)

(declare-fun e!2473150 () Bool)

(declare-fun e!2473148 () Bool)

(assert (=> b!3989743 (= e!2473150 e!2473148)))

(declare-fun res!1618936 () Bool)

(assert (=> b!3989743 (=> (not res!1618936) (not e!2473148))))

(assert (=> b!3989743 (= res!1618936 (not ((_ is Nil!42668) lt!1405559)))))

(declare-fun b!3989745 () Bool)

(assert (=> b!3989745 (= e!2473148 (isPrefix!3839 (tail!6221 lt!1405573) (tail!6221 lt!1405559)))))

(declare-fun d!1180719 () Bool)

(declare-fun e!2473149 () Bool)

(assert (=> d!1180719 e!2473149))

(declare-fun res!1618935 () Bool)

(assert (=> d!1180719 (=> res!1618935 e!2473149)))

(declare-fun lt!1405880 () Bool)

(assert (=> d!1180719 (= res!1618935 (not lt!1405880))))

(assert (=> d!1180719 (= lt!1405880 e!2473150)))

(declare-fun res!1618938 () Bool)

(assert (=> d!1180719 (=> res!1618938 e!2473150)))

(assert (=> d!1180719 (= res!1618938 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180719 (= (isPrefix!3839 lt!1405573 lt!1405559) lt!1405880)))

(declare-fun b!3989746 () Bool)

(assert (=> b!3989746 (= e!2473149 (>= (size!31913 lt!1405559) (size!31913 lt!1405573)))))

(declare-fun b!3989744 () Bool)

(declare-fun res!1618937 () Bool)

(assert (=> b!3989744 (=> (not res!1618937) (not e!2473148))))

(assert (=> b!3989744 (= res!1618937 (= (head!8489 lt!1405573) (head!8489 lt!1405559)))))

(assert (= (and d!1180719 (not res!1618938)) b!3989743))

(assert (= (and b!3989743 res!1618936) b!3989744))

(assert (= (and b!3989744 res!1618937) b!3989745))

(assert (= (and d!1180719 (not res!1618935)) b!3989746))

(assert (=> b!3989745 m!4566769))

(declare-fun m!4567791 () Bool)

(assert (=> b!3989745 m!4567791))

(assert (=> b!3989745 m!4566769))

(assert (=> b!3989745 m!4567791))

(declare-fun m!4567793 () Bool)

(assert (=> b!3989745 m!4567793))

(assert (=> b!3989746 m!4567599))

(assert (=> b!3989746 m!4566647))

(assert (=> b!3989744 m!4566767))

(declare-fun m!4567795 () Bool)

(assert (=> b!3989744 m!4567795))

(assert (=> b!3989027 d!1180719))

(declare-fun d!1180721 () Bool)

(assert (=> d!1180721 (= (isEmpty!25500 rules!2999) ((_ is Nil!42670) rules!2999))))

(assert (=> b!3989006 d!1180721))

(declare-fun lt!1405881 () List!42792)

(declare-fun b!3989750 () Bool)

(declare-fun e!2473152 () Bool)

(assert (=> b!3989750 (= e!2473152 (or (not (= lt!1405569 Nil!42668)) (= lt!1405881 lt!1405573)))))

(declare-fun d!1180723 () Bool)

(assert (=> d!1180723 e!2473152))

(declare-fun res!1618940 () Bool)

(assert (=> d!1180723 (=> (not res!1618940) (not e!2473152))))

(assert (=> d!1180723 (= res!1618940 (= (content!6471 lt!1405881) ((_ map or) (content!6471 lt!1405573) (content!6471 lt!1405569))))))

(declare-fun e!2473151 () List!42792)

(assert (=> d!1180723 (= lt!1405881 e!2473151)))

(declare-fun c!690581 () Bool)

(assert (=> d!1180723 (= c!690581 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180723 (= (++!11154 lt!1405573 lt!1405569) lt!1405881)))

(declare-fun b!3989748 () Bool)

(assert (=> b!3989748 (= e!2473151 (Cons!42668 (h!48088 lt!1405573) (++!11154 (t!331687 lt!1405573) lt!1405569)))))

(declare-fun b!3989749 () Bool)

(declare-fun res!1618939 () Bool)

(assert (=> b!3989749 (=> (not res!1618939) (not e!2473152))))

(assert (=> b!3989749 (= res!1618939 (= (size!31913 lt!1405881) (+ (size!31913 lt!1405573) (size!31913 lt!1405569))))))

(declare-fun b!3989747 () Bool)

(assert (=> b!3989747 (= e!2473151 lt!1405569)))

(assert (= (and d!1180723 c!690581) b!3989747))

(assert (= (and d!1180723 (not c!690581)) b!3989748))

(assert (= (and d!1180723 res!1618940) b!3989749))

(assert (= (and b!3989749 res!1618939) b!3989750))

(declare-fun m!4567797 () Bool)

(assert (=> d!1180723 m!4567797))

(declare-fun m!4567799 () Bool)

(assert (=> d!1180723 m!4567799))

(declare-fun m!4567801 () Bool)

(assert (=> d!1180723 m!4567801))

(declare-fun m!4567803 () Bool)

(assert (=> b!3989748 m!4567803))

(declare-fun m!4567805 () Bool)

(assert (=> b!3989749 m!4567805))

(assert (=> b!3989749 m!4566647))

(declare-fun m!4567807 () Bool)

(assert (=> b!3989749 m!4567807))

(assert (=> b!3989005 d!1180723))

(declare-fun d!1180725 () Bool)

(declare-fun lt!1405882 () List!42792)

(assert (=> d!1180725 (= (++!11154 lt!1405573 lt!1405882) lt!1405559)))

(declare-fun e!2473153 () List!42792)

(assert (=> d!1180725 (= lt!1405882 e!2473153)))

(declare-fun c!690582 () Bool)

(assert (=> d!1180725 (= c!690582 ((_ is Cons!42668) lt!1405573))))

(assert (=> d!1180725 (>= (size!31913 lt!1405559) (size!31913 lt!1405573))))

(assert (=> d!1180725 (= (getSuffix!2270 lt!1405559 lt!1405573) lt!1405882)))

(declare-fun b!3989751 () Bool)

(assert (=> b!3989751 (= e!2473153 (getSuffix!2270 (tail!6221 lt!1405559) (t!331687 lt!1405573)))))

(declare-fun b!3989752 () Bool)

(assert (=> b!3989752 (= e!2473153 lt!1405559)))

(assert (= (and d!1180725 c!690582) b!3989751))

(assert (= (and d!1180725 (not c!690582)) b!3989752))

(declare-fun m!4567809 () Bool)

(assert (=> d!1180725 m!4567809))

(assert (=> d!1180725 m!4567599))

(assert (=> d!1180725 m!4566647))

(assert (=> b!3989751 m!4567791))

(assert (=> b!3989751 m!4567791))

(declare-fun m!4567811 () Bool)

(assert (=> b!3989751 m!4567811))

(assert (=> b!3989005 d!1180725))

(declare-fun d!1180727 () Bool)

(assert (=> d!1180727 (= (list!15840 (charsOf!4568 (_1!24070 (v!39521 lt!1405599)))) (list!15841 (c!690458 (charsOf!4568 (_1!24070 (v!39521 lt!1405599))))))))

(declare-fun bs!588341 () Bool)

(assert (= bs!588341 d!1180727))

(declare-fun m!4567813 () Bool)

(assert (=> bs!588341 m!4567813))

(assert (=> b!3989026 d!1180727))

(declare-fun b!3989753 () Bool)

(declare-fun e!2473156 () Bool)

(declare-fun e!2473154 () Bool)

(assert (=> b!3989753 (= e!2473156 e!2473154)))

(declare-fun res!1618942 () Bool)

(assert (=> b!3989753 (=> (not res!1618942) (not e!2473154))))

(assert (=> b!3989753 (= res!1618942 (not ((_ is Nil!42668) lt!1405583)))))

(declare-fun b!3989755 () Bool)

(assert (=> b!3989755 (= e!2473154 (isPrefix!3839 (tail!6221 lt!1405573) (tail!6221 lt!1405583)))))

(declare-fun d!1180729 () Bool)

(declare-fun e!2473155 () Bool)

(assert (=> d!1180729 e!2473155))

(declare-fun res!1618941 () Bool)

(assert (=> d!1180729 (=> res!1618941 e!2473155)))

(declare-fun lt!1405883 () Bool)

(assert (=> d!1180729 (= res!1618941 (not lt!1405883))))

(assert (=> d!1180729 (= lt!1405883 e!2473156)))

(declare-fun res!1618944 () Bool)

(assert (=> d!1180729 (=> res!1618944 e!2473156)))

(assert (=> d!1180729 (= res!1618944 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180729 (= (isPrefix!3839 lt!1405573 lt!1405583) lt!1405883)))

(declare-fun b!3989756 () Bool)

(assert (=> b!3989756 (= e!2473155 (>= (size!31913 lt!1405583) (size!31913 lt!1405573)))))

(declare-fun b!3989754 () Bool)

(declare-fun res!1618943 () Bool)

(assert (=> b!3989754 (=> (not res!1618943) (not e!2473154))))

(assert (=> b!3989754 (= res!1618943 (= (head!8489 lt!1405573) (head!8489 lt!1405583)))))

(assert (= (and d!1180729 (not res!1618944)) b!3989753))

(assert (= (and b!3989753 res!1618942) b!3989754))

(assert (= (and b!3989754 res!1618943) b!3989755))

(assert (= (and d!1180729 (not res!1618941)) b!3989756))

(assert (=> b!3989755 m!4566769))

(declare-fun m!4567815 () Bool)

(assert (=> b!3989755 m!4567815))

(assert (=> b!3989755 m!4566769))

(assert (=> b!3989755 m!4567815))

(declare-fun m!4567817 () Bool)

(assert (=> b!3989755 m!4567817))

(declare-fun m!4567819 () Bool)

(assert (=> b!3989756 m!4567819))

(assert (=> b!3989756 m!4566647))

(assert (=> b!3989754 m!4566767))

(declare-fun m!4567821 () Bool)

(assert (=> b!3989754 m!4567821))

(assert (=> b!3989026 d!1180729))

(declare-fun d!1180731 () Bool)

(assert (=> d!1180731 (= (maxPrefixOneRule!2673 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599))) lt!1405559) (Some!9165 (tuple2!41873 (Token!12643 (apply!9963 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (seqFromList!4991 lt!1405573)) (rule!9768 (_1!24070 (v!39521 lt!1405599))) (size!31913 lt!1405573) lt!1405573) (_2!24070 (v!39521 lt!1405599)))))))

(declare-fun lt!1405884 () Unit!61413)

(assert (=> d!1180731 (= lt!1405884 (choose!23980 thiss!21717 rules!2999 lt!1405573 lt!1405559 (_2!24070 (v!39521 lt!1405599)) (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))

(assert (=> d!1180731 (not (isEmpty!25500 rules!2999))))

(assert (=> d!1180731 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1495 thiss!21717 rules!2999 lt!1405573 lt!1405559 (_2!24070 (v!39521 lt!1405599)) (rule!9768 (_1!24070 (v!39521 lt!1405599)))) lt!1405884)))

(declare-fun bs!588342 () Bool)

(assert (= bs!588342 d!1180731))

(assert (=> bs!588342 m!4566641))

(assert (=> bs!588342 m!4566643))

(assert (=> bs!588342 m!4566645))

(assert (=> bs!588342 m!4566647))

(declare-fun m!4567823 () Bool)

(assert (=> bs!588342 m!4567823))

(assert (=> bs!588342 m!4566573))

(assert (=> bs!588342 m!4566641))

(assert (=> b!3989026 d!1180731))

(declare-fun b!3989757 () Bool)

(declare-fun e!2473159 () Bool)

(declare-fun e!2473157 () Bool)

(assert (=> b!3989757 (= e!2473159 e!2473157)))

(declare-fun res!1618946 () Bool)

(assert (=> b!3989757 (=> (not res!1618946) (not e!2473157))))

(assert (=> b!3989757 (= res!1618946 (not ((_ is Nil!42668) (++!11154 lt!1405573 newSuffixResult!27))))))

(declare-fun b!3989759 () Bool)

(assert (=> b!3989759 (= e!2473157 (isPrefix!3839 (tail!6221 lt!1405573) (tail!6221 (++!11154 lt!1405573 newSuffixResult!27))))))

(declare-fun d!1180733 () Bool)

(declare-fun e!2473158 () Bool)

(assert (=> d!1180733 e!2473158))

(declare-fun res!1618945 () Bool)

(assert (=> d!1180733 (=> res!1618945 e!2473158)))

(declare-fun lt!1405885 () Bool)

(assert (=> d!1180733 (= res!1618945 (not lt!1405885))))

(assert (=> d!1180733 (= lt!1405885 e!2473159)))

(declare-fun res!1618948 () Bool)

(assert (=> d!1180733 (=> res!1618948 e!2473159)))

(assert (=> d!1180733 (= res!1618948 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180733 (= (isPrefix!3839 lt!1405573 (++!11154 lt!1405573 newSuffixResult!27)) lt!1405885)))

(declare-fun b!3989760 () Bool)

(assert (=> b!3989760 (= e!2473158 (>= (size!31913 (++!11154 lt!1405573 newSuffixResult!27)) (size!31913 lt!1405573)))))

(declare-fun b!3989758 () Bool)

(declare-fun res!1618947 () Bool)

(assert (=> b!3989758 (=> (not res!1618947) (not e!2473157))))

(assert (=> b!3989758 (= res!1618947 (= (head!8489 lt!1405573) (head!8489 (++!11154 lt!1405573 newSuffixResult!27))))))

(assert (= (and d!1180733 (not res!1618948)) b!3989757))

(assert (= (and b!3989757 res!1618946) b!3989758))

(assert (= (and b!3989758 res!1618947) b!3989759))

(assert (= (and d!1180733 (not res!1618945)) b!3989760))

(assert (=> b!3989759 m!4566769))

(assert (=> b!3989759 m!4566651))

(declare-fun m!4567825 () Bool)

(assert (=> b!3989759 m!4567825))

(assert (=> b!3989759 m!4566769))

(assert (=> b!3989759 m!4567825))

(declare-fun m!4567827 () Bool)

(assert (=> b!3989759 m!4567827))

(assert (=> b!3989760 m!4566651))

(declare-fun m!4567829 () Bool)

(assert (=> b!3989760 m!4567829))

(assert (=> b!3989760 m!4566647))

(assert (=> b!3989758 m!4566767))

(assert (=> b!3989758 m!4566651))

(declare-fun m!4567831 () Bool)

(assert (=> b!3989758 m!4567831))

(assert (=> b!3989026 d!1180733))

(declare-fun d!1180735 () Bool)

(declare-fun e!2473160 () Bool)

(assert (=> d!1180735 e!2473160))

(declare-fun res!1618949 () Bool)

(assert (=> d!1180735 (=> (not res!1618949) (not e!2473160))))

(assert (=> d!1180735 (= res!1618949 (semiInverseModEq!2895 (toChars!9099 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))) (toValue!9240 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))))

(declare-fun Unit!61424 () Unit!61413)

(assert (=> d!1180735 (= (lemmaInv!967 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))) Unit!61424)))

(declare-fun b!3989761 () Bool)

(assert (=> b!3989761 (= e!2473160 (equivClasses!2794 (toChars!9099 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))) (toValue!9240 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))))

(assert (= (and d!1180735 res!1618949) b!3989761))

(declare-fun m!4567833 () Bool)

(assert (=> d!1180735 m!4567833))

(declare-fun m!4567835 () Bool)

(assert (=> b!3989761 m!4567835))

(assert (=> b!3989026 d!1180735))

(declare-fun d!1180737 () Bool)

(assert (=> d!1180737 (= (apply!9963 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (seqFromList!4991 lt!1405573)) (dynLambda!18127 (toValue!9240 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))) (seqFromList!4991 lt!1405573)))))

(declare-fun b_lambda!116485 () Bool)

(assert (=> (not b_lambda!116485) (not d!1180737)))

(declare-fun tb!240189 () Bool)

(declare-fun t!331724 () Bool)

(assert (=> (and b!3989016 (= (toValue!9240 (transformation!6752 (h!48090 rules!2999))) (toValue!9240 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))) t!331724) tb!240189))

(declare-fun result!291024 () Bool)

(assert (=> tb!240189 (= result!291024 (inv!21 (dynLambda!18127 (toValue!9240 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))) (seqFromList!4991 lt!1405573))))))

(declare-fun m!4567837 () Bool)

(assert (=> tb!240189 m!4567837))

(assert (=> d!1180737 t!331724))

(declare-fun b_and!306555 () Bool)

(assert (= b_and!306523 (and (=> t!331724 result!291024) b_and!306555)))

(declare-fun t!331726 () Bool)

(declare-fun tb!240191 () Bool)

(assert (=> (and b!3989023 (= (toValue!9240 (transformation!6752 (rule!9768 token!484))) (toValue!9240 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))) t!331726) tb!240191))

(declare-fun result!291026 () Bool)

(assert (= result!291026 result!291024))

(assert (=> d!1180737 t!331726))

(declare-fun b_and!306557 () Bool)

(assert (= b_and!306525 (and (=> t!331726 result!291026) b_and!306557)))

(assert (=> d!1180737 m!4566641))

(declare-fun m!4567839 () Bool)

(assert (=> d!1180737 m!4567839))

(assert (=> b!3989026 d!1180737))

(declare-fun d!1180739 () Bool)

(assert (=> d!1180739 (ruleValid!2684 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))

(declare-fun lt!1405886 () Unit!61413)

(assert (=> d!1180739 (= lt!1405886 (choose!23989 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599))) rules!2999))))

(assert (=> d!1180739 (contains!8491 rules!2999 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))

(assert (=> d!1180739 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1758 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599))) rules!2999) lt!1405886)))

(declare-fun bs!588343 () Bool)

(assert (= bs!588343 d!1180739))

(assert (=> bs!588343 m!4566655))

(declare-fun m!4567841 () Bool)

(assert (=> bs!588343 m!4567841))

(assert (=> bs!588343 m!4567617))

(assert (=> b!3989026 d!1180739))

(declare-fun d!1180741 () Bool)

(declare-fun lt!1405887 () Int)

(assert (=> d!1180741 (>= lt!1405887 0)))

(declare-fun e!2473162 () Int)

(assert (=> d!1180741 (= lt!1405887 e!2473162)))

(declare-fun c!690583 () Bool)

(assert (=> d!1180741 (= c!690583 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180741 (= (size!31913 lt!1405573) lt!1405887)))

(declare-fun b!3989762 () Bool)

(assert (=> b!3989762 (= e!2473162 0)))

(declare-fun b!3989763 () Bool)

(assert (=> b!3989763 (= e!2473162 (+ 1 (size!31913 (t!331687 lt!1405573))))))

(assert (= (and d!1180741 c!690583) b!3989762))

(assert (= (and d!1180741 (not c!690583)) b!3989763))

(declare-fun m!4567843 () Bool)

(assert (=> b!3989763 m!4567843))

(assert (=> b!3989026 d!1180741))

(declare-fun d!1180743 () Bool)

(declare-fun res!1618950 () Bool)

(declare-fun e!2473163 () Bool)

(assert (=> d!1180743 (=> (not res!1618950) (not e!2473163))))

(assert (=> d!1180743 (= res!1618950 (validRegex!5288 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))))

(assert (=> d!1180743 (= (ruleValid!2684 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) e!2473163)))

(declare-fun b!3989764 () Bool)

(declare-fun res!1618951 () Bool)

(assert (=> b!3989764 (=> (not res!1618951) (not e!2473163))))

(assert (=> b!3989764 (= res!1618951 (not (nullable!4087 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))))

(declare-fun b!3989765 () Bool)

(assert (=> b!3989765 (= e!2473163 (not (= (tag!7612 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (String!48628 ""))))))

(assert (= (and d!1180743 res!1618950) b!3989764))

(assert (= (and b!3989764 res!1618951) b!3989765))

(assert (=> d!1180743 m!4566783))

(assert (=> b!3989764 m!4566785))

(assert (=> b!3989026 d!1180743))

(declare-fun d!1180745 () Bool)

(assert (=> d!1180745 (= (seqFromList!4991 lt!1405573) (fromListB!2289 lt!1405573))))

(declare-fun bs!588344 () Bool)

(assert (= bs!588344 d!1180745))

(declare-fun m!4567845 () Bool)

(assert (=> bs!588344 m!4567845))

(assert (=> b!3989026 d!1180745))

(declare-fun lt!1405888 () List!42792)

(declare-fun e!2473165 () Bool)

(declare-fun b!3989769 () Bool)

(assert (=> b!3989769 (= e!2473165 (or (not (= (_2!24070 (v!39521 lt!1405599)) Nil!42668)) (= lt!1405888 lt!1405573)))))

(declare-fun d!1180747 () Bool)

(assert (=> d!1180747 e!2473165))

(declare-fun res!1618953 () Bool)

(assert (=> d!1180747 (=> (not res!1618953) (not e!2473165))))

(assert (=> d!1180747 (= res!1618953 (= (content!6471 lt!1405888) ((_ map or) (content!6471 lt!1405573) (content!6471 (_2!24070 (v!39521 lt!1405599))))))))

(declare-fun e!2473164 () List!42792)

(assert (=> d!1180747 (= lt!1405888 e!2473164)))

(declare-fun c!690584 () Bool)

(assert (=> d!1180747 (= c!690584 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180747 (= (++!11154 lt!1405573 (_2!24070 (v!39521 lt!1405599))) lt!1405888)))

(declare-fun b!3989767 () Bool)

(assert (=> b!3989767 (= e!2473164 (Cons!42668 (h!48088 lt!1405573) (++!11154 (t!331687 lt!1405573) (_2!24070 (v!39521 lt!1405599)))))))

(declare-fun b!3989768 () Bool)

(declare-fun res!1618952 () Bool)

(assert (=> b!3989768 (=> (not res!1618952) (not e!2473165))))

(assert (=> b!3989768 (= res!1618952 (= (size!31913 lt!1405888) (+ (size!31913 lt!1405573) (size!31913 (_2!24070 (v!39521 lt!1405599))))))))

(declare-fun b!3989766 () Bool)

(assert (=> b!3989766 (= e!2473164 (_2!24070 (v!39521 lt!1405599)))))

(assert (= (and d!1180747 c!690584) b!3989766))

(assert (= (and d!1180747 (not c!690584)) b!3989767))

(assert (= (and d!1180747 res!1618953) b!3989768))

(assert (= (and b!3989768 res!1618952) b!3989769))

(declare-fun m!4567847 () Bool)

(assert (=> d!1180747 m!4567847))

(assert (=> d!1180747 m!4567799))

(declare-fun m!4567849 () Bool)

(assert (=> d!1180747 m!4567849))

(declare-fun m!4567851 () Bool)

(assert (=> b!3989767 m!4567851))

(declare-fun m!4567853 () Bool)

(assert (=> b!3989768 m!4567853))

(assert (=> b!3989768 m!4566647))

(declare-fun m!4567855 () Bool)

(assert (=> b!3989768 m!4567855))

(assert (=> b!3989026 d!1180747))

(declare-fun d!1180749 () Bool)

(assert (=> d!1180749 (= (size!31912 token!484) (size!31913 (originalCharacters!7352 token!484)))))

(declare-fun Unit!61425 () Unit!61413)

(assert (=> d!1180749 (= (lemmaCharactersSize!1347 token!484) Unit!61425)))

(declare-fun bs!588345 () Bool)

(assert (= bs!588345 d!1180749))

(assert (=> bs!588345 m!4566587))

(assert (=> b!3989026 d!1180749))

(declare-fun b!3989770 () Bool)

(declare-fun res!1618956 () Bool)

(declare-fun e!2473167 () Bool)

(assert (=> b!3989770 (=> (not res!1618956) (not e!2473167))))

(declare-fun lt!1405892 () Option!9166)

(assert (=> b!3989770 (= res!1618956 (< (size!31913 (_2!24070 (get!14039 lt!1405892))) (size!31913 lt!1405559)))))

(declare-fun d!1180751 () Bool)

(declare-fun e!2473168 () Bool)

(assert (=> d!1180751 e!2473168))

(declare-fun res!1618955 () Bool)

(assert (=> d!1180751 (=> res!1618955 e!2473168)))

(assert (=> d!1180751 (= res!1618955 (isEmpty!25503 lt!1405892))))

(declare-fun e!2473169 () Option!9166)

(assert (=> d!1180751 (= lt!1405892 e!2473169)))

(declare-fun c!690585 () Bool)

(declare-fun lt!1405893 () tuple2!41874)

(assert (=> d!1180751 (= c!690585 (isEmpty!25501 (_1!24071 lt!1405893)))))

(assert (=> d!1180751 (= lt!1405893 (findLongestMatch!1244 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) lt!1405559))))

(assert (=> d!1180751 (ruleValid!2684 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599))))))

(assert (=> d!1180751 (= (maxPrefixOneRule!2673 thiss!21717 (rule!9768 (_1!24070 (v!39521 lt!1405599))) lt!1405559) lt!1405892)))

(declare-fun b!3989771 () Bool)

(assert (=> b!3989771 (= e!2473169 None!9165)))

(declare-fun b!3989772 () Bool)

(declare-fun e!2473166 () Bool)

(assert (=> b!3989772 (= e!2473166 (matchR!5634 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (_1!24071 (findLongestMatchInner!1331 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) Nil!42668 (size!31913 Nil!42668) lt!1405559 lt!1405559 (size!31913 lt!1405559)))))))

(declare-fun b!3989773 () Bool)

(assert (=> b!3989773 (= e!2473167 (= (size!31912 (_1!24070 (get!14039 lt!1405892))) (size!31913 (originalCharacters!7352 (_1!24070 (get!14039 lt!1405892))))))))

(declare-fun b!3989774 () Bool)

(declare-fun res!1618954 () Bool)

(assert (=> b!3989774 (=> (not res!1618954) (not e!2473167))))

(assert (=> b!3989774 (= res!1618954 (= (++!11154 (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405892)))) (_2!24070 (get!14039 lt!1405892))) lt!1405559))))

(declare-fun b!3989775 () Bool)

(declare-fun res!1618959 () Bool)

(assert (=> b!3989775 (=> (not res!1618959) (not e!2473167))))

(assert (=> b!3989775 (= res!1618959 (= (rule!9768 (_1!24070 (get!14039 lt!1405892))) (rule!9768 (_1!24070 (v!39521 lt!1405599)))))))

(declare-fun b!3989776 () Bool)

(assert (=> b!3989776 (= e!2473169 (Some!9165 (tuple2!41873 (Token!12643 (apply!9963 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (seqFromList!4991 (_1!24071 lt!1405893))) (rule!9768 (_1!24070 (v!39521 lt!1405599))) (size!31914 (seqFromList!4991 (_1!24071 lt!1405893))) (_1!24071 lt!1405893)) (_2!24071 lt!1405893))))))

(declare-fun lt!1405889 () Unit!61413)

(assert (=> b!3989776 (= lt!1405889 (longestMatchIsAcceptedByMatchOrIsEmpty!1304 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) lt!1405559))))

(declare-fun res!1618958 () Bool)

(assert (=> b!3989776 (= res!1618958 (isEmpty!25501 (_1!24071 (findLongestMatchInner!1331 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) Nil!42668 (size!31913 Nil!42668) lt!1405559 lt!1405559 (size!31913 lt!1405559)))))))

(assert (=> b!3989776 (=> res!1618958 e!2473166)))

(assert (=> b!3989776 e!2473166))

(declare-fun lt!1405890 () Unit!61413)

(assert (=> b!3989776 (= lt!1405890 lt!1405889)))

(declare-fun lt!1405891 () Unit!61413)

(assert (=> b!3989776 (= lt!1405891 (lemmaSemiInverse!1847 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (seqFromList!4991 (_1!24071 lt!1405893))))))

(declare-fun b!3989777 () Bool)

(assert (=> b!3989777 (= e!2473168 e!2473167)))

(declare-fun res!1618957 () Bool)

(assert (=> b!3989777 (=> (not res!1618957) (not e!2473167))))

(assert (=> b!3989777 (= res!1618957 (matchR!5634 (regex!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))) (list!15840 (charsOf!4568 (_1!24070 (get!14039 lt!1405892))))))))

(declare-fun b!3989778 () Bool)

(declare-fun res!1618960 () Bool)

(assert (=> b!3989778 (=> (not res!1618960) (not e!2473167))))

(assert (=> b!3989778 (= res!1618960 (= (value!213066 (_1!24070 (get!14039 lt!1405892))) (apply!9963 (transformation!6752 (rule!9768 (_1!24070 (get!14039 lt!1405892)))) (seqFromList!4991 (originalCharacters!7352 (_1!24070 (get!14039 lt!1405892)))))))))

(assert (= (and d!1180751 c!690585) b!3989771))

(assert (= (and d!1180751 (not c!690585)) b!3989776))

(assert (= (and b!3989776 (not res!1618958)) b!3989772))

(assert (= (and d!1180751 (not res!1618955)) b!3989777))

(assert (= (and b!3989777 res!1618957) b!3989774))

(assert (= (and b!3989774 res!1618954) b!3989770))

(assert (= (and b!3989770 res!1618956) b!3989775))

(assert (= (and b!3989775 res!1618959) b!3989778))

(assert (= (and b!3989778 res!1618960) b!3989773))

(declare-fun m!4567857 () Bool)

(assert (=> b!3989775 m!4567857))

(assert (=> b!3989770 m!4567857))

(declare-fun m!4567859 () Bool)

(assert (=> b!3989770 m!4567859))

(assert (=> b!3989770 m!4567599))

(assert (=> b!3989772 m!4567033))

(assert (=> b!3989772 m!4567599))

(assert (=> b!3989772 m!4567033))

(assert (=> b!3989772 m!4567599))

(declare-fun m!4567861 () Bool)

(assert (=> b!3989772 m!4567861))

(declare-fun m!4567863 () Bool)

(assert (=> b!3989772 m!4567863))

(assert (=> b!3989777 m!4567857))

(declare-fun m!4567865 () Bool)

(assert (=> b!3989777 m!4567865))

(assert (=> b!3989777 m!4567865))

(declare-fun m!4567867 () Bool)

(assert (=> b!3989777 m!4567867))

(assert (=> b!3989777 m!4567867))

(declare-fun m!4567869 () Bool)

(assert (=> b!3989777 m!4567869))

(assert (=> b!3989774 m!4567857))

(assert (=> b!3989774 m!4567865))

(assert (=> b!3989774 m!4567865))

(assert (=> b!3989774 m!4567867))

(assert (=> b!3989774 m!4567867))

(declare-fun m!4567871 () Bool)

(assert (=> b!3989774 m!4567871))

(declare-fun m!4567873 () Bool)

(assert (=> d!1180751 m!4567873))

(declare-fun m!4567875 () Bool)

(assert (=> d!1180751 m!4567875))

(declare-fun m!4567877 () Bool)

(assert (=> d!1180751 m!4567877))

(assert (=> d!1180751 m!4566655))

(declare-fun m!4567879 () Bool)

(assert (=> b!3989776 m!4567879))

(declare-fun m!4567881 () Bool)

(assert (=> b!3989776 m!4567881))

(assert (=> b!3989776 m!4567879))

(declare-fun m!4567883 () Bool)

(assert (=> b!3989776 m!4567883))

(assert (=> b!3989776 m!4567879))

(declare-fun m!4567885 () Bool)

(assert (=> b!3989776 m!4567885))

(assert (=> b!3989776 m!4567033))

(assert (=> b!3989776 m!4567599))

(assert (=> b!3989776 m!4567861))

(assert (=> b!3989776 m!4567599))

(declare-fun m!4567887 () Bool)

(assert (=> b!3989776 m!4567887))

(declare-fun m!4567889 () Bool)

(assert (=> b!3989776 m!4567889))

(assert (=> b!3989776 m!4567033))

(assert (=> b!3989776 m!4567879))

(assert (=> b!3989778 m!4567857))

(declare-fun m!4567891 () Bool)

(assert (=> b!3989778 m!4567891))

(assert (=> b!3989778 m!4567891))

(declare-fun m!4567893 () Bool)

(assert (=> b!3989778 m!4567893))

(assert (=> b!3989773 m!4567857))

(declare-fun m!4567895 () Bool)

(assert (=> b!3989773 m!4567895))

(assert (=> b!3989026 d!1180751))

(declare-fun d!1180753 () Bool)

(assert (=> d!1180753 (= (size!31912 (_1!24070 (v!39521 lt!1405599))) (size!31913 (originalCharacters!7352 (_1!24070 (v!39521 lt!1405599)))))))

(declare-fun Unit!61426 () Unit!61413)

(assert (=> d!1180753 (= (lemmaCharactersSize!1347 (_1!24070 (v!39521 lt!1405599))) Unit!61426)))

(declare-fun bs!588346 () Bool)

(assert (= bs!588346 d!1180753))

(declare-fun m!4567897 () Bool)

(assert (=> bs!588346 m!4567897))

(assert (=> b!3989026 d!1180753))

(declare-fun d!1180755 () Bool)

(assert (=> d!1180755 (isPrefix!3839 lt!1405573 (++!11154 lt!1405573 (_2!24070 (v!39521 lt!1405599))))))

(declare-fun lt!1405894 () Unit!61413)

(assert (=> d!1180755 (= lt!1405894 (choose!23982 lt!1405573 (_2!24070 (v!39521 lt!1405599))))))

(assert (=> d!1180755 (= (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405573 (_2!24070 (v!39521 lt!1405599))) lt!1405894)))

(declare-fun bs!588347 () Bool)

(assert (= bs!588347 d!1180755))

(assert (=> bs!588347 m!4566649))

(assert (=> bs!588347 m!4566649))

(declare-fun m!4567899 () Bool)

(assert (=> bs!588347 m!4567899))

(declare-fun m!4567901 () Bool)

(assert (=> bs!588347 m!4567901))

(assert (=> b!3989026 d!1180755))

(declare-fun d!1180757 () Bool)

(declare-fun lt!1405895 () BalanceConc!25520)

(assert (=> d!1180757 (= (list!15840 lt!1405895) (originalCharacters!7352 (_1!24070 (v!39521 lt!1405599))))))

(assert (=> d!1180757 (= lt!1405895 (dynLambda!18126 (toChars!9099 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))) (value!213066 (_1!24070 (v!39521 lt!1405599)))))))

(assert (=> d!1180757 (= (charsOf!4568 (_1!24070 (v!39521 lt!1405599))) lt!1405895)))

(declare-fun b_lambda!116487 () Bool)

(assert (=> (not b_lambda!116487) (not d!1180757)))

(declare-fun t!331728 () Bool)

(declare-fun tb!240193 () Bool)

(assert (=> (and b!3989016 (= (toChars!9099 (transformation!6752 (h!48090 rules!2999))) (toChars!9099 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))) t!331728) tb!240193))

(declare-fun b!3989779 () Bool)

(declare-fun e!2473170 () Bool)

(declare-fun tp!1215360 () Bool)

(assert (=> b!3989779 (= e!2473170 (and (inv!56993 (c!690458 (dynLambda!18126 (toChars!9099 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))) (value!213066 (_1!24070 (v!39521 lt!1405599)))))) tp!1215360))))

(declare-fun result!291028 () Bool)

(assert (=> tb!240193 (= result!291028 (and (inv!56994 (dynLambda!18126 (toChars!9099 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599))))) (value!213066 (_1!24070 (v!39521 lt!1405599))))) e!2473170))))

(assert (= tb!240193 b!3989779))

(declare-fun m!4567903 () Bool)

(assert (=> b!3989779 m!4567903))

(declare-fun m!4567905 () Bool)

(assert (=> tb!240193 m!4567905))

(assert (=> d!1180757 t!331728))

(declare-fun b_and!306559 () Bool)

(assert (= b_and!306551 (and (=> t!331728 result!291028) b_and!306559)))

(declare-fun t!331730 () Bool)

(declare-fun tb!240195 () Bool)

(assert (=> (and b!3989023 (= (toChars!9099 (transformation!6752 (rule!9768 token!484))) (toChars!9099 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))) t!331730) tb!240195))

(declare-fun result!291030 () Bool)

(assert (= result!291030 result!291028))

(assert (=> d!1180757 t!331730))

(declare-fun b_and!306561 () Bool)

(assert (= b_and!306553 (and (=> t!331730 result!291030) b_and!306561)))

(declare-fun m!4567907 () Bool)

(assert (=> d!1180757 m!4567907))

(declare-fun m!4567909 () Bool)

(assert (=> d!1180757 m!4567909))

(assert (=> b!3989026 d!1180757))

(declare-fun e!2473172 () Bool)

(declare-fun b!3989783 () Bool)

(declare-fun lt!1405896 () List!42792)

(assert (=> b!3989783 (= e!2473172 (or (not (= newSuffixResult!27 Nil!42668)) (= lt!1405896 lt!1405573)))))

(declare-fun d!1180759 () Bool)

(assert (=> d!1180759 e!2473172))

(declare-fun res!1618962 () Bool)

(assert (=> d!1180759 (=> (not res!1618962) (not e!2473172))))

(assert (=> d!1180759 (= res!1618962 (= (content!6471 lt!1405896) ((_ map or) (content!6471 lt!1405573) (content!6471 newSuffixResult!27))))))

(declare-fun e!2473171 () List!42792)

(assert (=> d!1180759 (= lt!1405896 e!2473171)))

(declare-fun c!690586 () Bool)

(assert (=> d!1180759 (= c!690586 ((_ is Nil!42668) lt!1405573))))

(assert (=> d!1180759 (= (++!11154 lt!1405573 newSuffixResult!27) lt!1405896)))

(declare-fun b!3989781 () Bool)

(assert (=> b!3989781 (= e!2473171 (Cons!42668 (h!48088 lt!1405573) (++!11154 (t!331687 lt!1405573) newSuffixResult!27)))))

(declare-fun b!3989782 () Bool)

(declare-fun res!1618961 () Bool)

(assert (=> b!3989782 (=> (not res!1618961) (not e!2473172))))

(assert (=> b!3989782 (= res!1618961 (= (size!31913 lt!1405896) (+ (size!31913 lt!1405573) (size!31913 newSuffixResult!27))))))

(declare-fun b!3989780 () Bool)

(assert (=> b!3989780 (= e!2473171 newSuffixResult!27)))

(assert (= (and d!1180759 c!690586) b!3989780))

(assert (= (and d!1180759 (not c!690586)) b!3989781))

(assert (= (and d!1180759 res!1618962) b!3989782))

(assert (= (and b!3989782 res!1618961) b!3989783))

(declare-fun m!4567911 () Bool)

(assert (=> d!1180759 m!4567911))

(assert (=> d!1180759 m!4567799))

(assert (=> d!1180759 m!4567783))

(declare-fun m!4567913 () Bool)

(assert (=> b!3989781 m!4567913))

(declare-fun m!4567915 () Bool)

(assert (=> b!3989782 m!4567915))

(assert (=> b!3989782 m!4566647))

(assert (=> b!3989782 m!4567789))

(assert (=> b!3989026 d!1180759))

(declare-fun d!1180761 () Bool)

(assert (=> d!1180761 (isPrefix!3839 lt!1405573 (++!11154 lt!1405573 newSuffixResult!27))))

(declare-fun lt!1405897 () Unit!61413)

(assert (=> d!1180761 (= lt!1405897 (choose!23982 lt!1405573 newSuffixResult!27))))

(assert (=> d!1180761 (= (lemmaConcatTwoListThenFirstIsPrefix!2682 lt!1405573 newSuffixResult!27) lt!1405897)))

(declare-fun bs!588348 () Bool)

(assert (= bs!588348 d!1180761))

(assert (=> bs!588348 m!4566651))

(assert (=> bs!588348 m!4566651))

(assert (=> bs!588348 m!4566653))

(declare-fun m!4567917 () Bool)

(assert (=> bs!588348 m!4567917))

(assert (=> b!3989026 d!1180761))

(declare-fun b!3989784 () Bool)

(declare-fun e!2473176 () Bool)

(declare-fun e!2473179 () Bool)

(assert (=> b!3989784 (= e!2473176 e!2473179)))

(declare-fun res!1618969 () Bool)

(assert (=> b!3989784 (=> res!1618969 e!2473179)))

(declare-fun call!285816 () Bool)

(assert (=> b!3989784 (= res!1618969 call!285816)))

(declare-fun b!3989785 () Bool)

(declare-fun res!1618968 () Bool)

(declare-fun e!2473173 () Bool)

(assert (=> b!3989785 (=> (not res!1618968) (not e!2473173))))

(assert (=> b!3989785 (= res!1618968 (isEmpty!25501 (tail!6221 lt!1405581)))))

(declare-fun b!3989786 () Bool)

(declare-fun e!2473177 () Bool)

(declare-fun lt!1405898 () Bool)

(assert (=> b!3989786 (= e!2473177 (not lt!1405898))))

(declare-fun b!3989787 () Bool)

(declare-fun e!2473178 () Bool)

(assert (=> b!3989787 (= e!2473178 (nullable!4087 (regex!6752 (rule!9768 token!484))))))

(declare-fun b!3989788 () Bool)

(assert (=> b!3989788 (= e!2473178 (matchR!5634 (derivativeStep!3499 (regex!6752 (rule!9768 token!484)) (head!8489 lt!1405581)) (tail!6221 lt!1405581)))))

(declare-fun b!3989789 () Bool)

(declare-fun res!1618967 () Bool)

(declare-fun e!2473174 () Bool)

(assert (=> b!3989789 (=> res!1618967 e!2473174)))

(assert (=> b!3989789 (= res!1618967 e!2473173)))

(declare-fun res!1618970 () Bool)

(assert (=> b!3989789 (=> (not res!1618970) (not e!2473173))))

(assert (=> b!3989789 (= res!1618970 lt!1405898)))

(declare-fun b!3989790 () Bool)

(assert (=> b!3989790 (= e!2473179 (not (= (head!8489 lt!1405581) (c!690459 (regex!6752 (rule!9768 token!484))))))))

(declare-fun b!3989791 () Bool)

(declare-fun e!2473175 () Bool)

(assert (=> b!3989791 (= e!2473175 (= lt!1405898 call!285816))))

(declare-fun b!3989792 () Bool)

(assert (=> b!3989792 (= e!2473175 e!2473177)))

(declare-fun c!690588 () Bool)

(assert (=> b!3989792 (= c!690588 ((_ is EmptyLang!11657) (regex!6752 (rule!9768 token!484))))))

(declare-fun b!3989793 () Bool)

(assert (=> b!3989793 (= e!2473174 e!2473176)))

(declare-fun res!1618963 () Bool)

(assert (=> b!3989793 (=> (not res!1618963) (not e!2473176))))

(assert (=> b!3989793 (= res!1618963 (not lt!1405898))))

(declare-fun b!3989794 () Bool)

(declare-fun res!1618966 () Bool)

(assert (=> b!3989794 (=> res!1618966 e!2473179)))

(assert (=> b!3989794 (= res!1618966 (not (isEmpty!25501 (tail!6221 lt!1405581))))))

(declare-fun d!1180763 () Bool)

(assert (=> d!1180763 e!2473175))

(declare-fun c!690589 () Bool)

(assert (=> d!1180763 (= c!690589 ((_ is EmptyExpr!11657) (regex!6752 (rule!9768 token!484))))))

(assert (=> d!1180763 (= lt!1405898 e!2473178)))

(declare-fun c!690587 () Bool)

(assert (=> d!1180763 (= c!690587 (isEmpty!25501 lt!1405581))))

(assert (=> d!1180763 (validRegex!5288 (regex!6752 (rule!9768 token!484)))))

(assert (=> d!1180763 (= (matchR!5634 (regex!6752 (rule!9768 token!484)) lt!1405581) lt!1405898)))

(declare-fun b!3989795 () Bool)

(assert (=> b!3989795 (= e!2473173 (= (head!8489 lt!1405581) (c!690459 (regex!6752 (rule!9768 token!484)))))))

(declare-fun b!3989796 () Bool)

(declare-fun res!1618965 () Bool)

(assert (=> b!3989796 (=> res!1618965 e!2473174)))

(assert (=> b!3989796 (= res!1618965 (not ((_ is ElementMatch!11657) (regex!6752 (rule!9768 token!484)))))))

(assert (=> b!3989796 (= e!2473177 e!2473174)))

(declare-fun bm!285811 () Bool)

(assert (=> bm!285811 (= call!285816 (isEmpty!25501 lt!1405581))))

(declare-fun b!3989797 () Bool)

(declare-fun res!1618964 () Bool)

(assert (=> b!3989797 (=> (not res!1618964) (not e!2473173))))

(assert (=> b!3989797 (= res!1618964 (not call!285816))))

(assert (= (and d!1180763 c!690587) b!3989787))

(assert (= (and d!1180763 (not c!690587)) b!3989788))

(assert (= (and d!1180763 c!690589) b!3989791))

(assert (= (and d!1180763 (not c!690589)) b!3989792))

(assert (= (and b!3989792 c!690588) b!3989786))

(assert (= (and b!3989792 (not c!690588)) b!3989796))

(assert (= (and b!3989796 (not res!1618965)) b!3989789))

(assert (= (and b!3989789 res!1618970) b!3989797))

(assert (= (and b!3989797 res!1618964) b!3989785))

(assert (= (and b!3989785 res!1618968) b!3989795))

(assert (= (and b!3989789 (not res!1618967)) b!3989793))

(assert (= (and b!3989793 res!1618963) b!3989784))

(assert (= (and b!3989784 (not res!1618969)) b!3989794))

(assert (= (and b!3989794 (not res!1618966)) b!3989790))

(assert (= (or b!3989791 b!3989784 b!3989797) bm!285811))

(assert (=> b!3989790 m!4567093))

(assert (=> b!3989785 m!4567085))

(assert (=> b!3989785 m!4567085))

(declare-fun m!4567919 () Bool)

(assert (=> b!3989785 m!4567919))

(assert (=> b!3989795 m!4567093))

(assert (=> b!3989794 m!4567085))

(assert (=> b!3989794 m!4567085))

(assert (=> b!3989794 m!4567919))

(assert (=> b!3989788 m!4567093))

(assert (=> b!3989788 m!4567093))

(declare-fun m!4567921 () Bool)

(assert (=> b!3989788 m!4567921))

(assert (=> b!3989788 m!4567085))

(assert (=> b!3989788 m!4567921))

(assert (=> b!3989788 m!4567085))

(declare-fun m!4567923 () Bool)

(assert (=> b!3989788 m!4567923))

(declare-fun m!4567925 () Bool)

(assert (=> d!1180763 m!4567925))

(assert (=> d!1180763 m!4567755))

(assert (=> bm!285811 m!4567925))

(assert (=> b!3989787 m!4567757))

(assert (=> b!3989025 d!1180763))

(declare-fun b!3989798 () Bool)

(declare-fun e!2473182 () Bool)

(declare-fun e!2473180 () Bool)

(assert (=> b!3989798 (= e!2473182 e!2473180)))

(declare-fun res!1618972 () Bool)

(assert (=> b!3989798 (=> (not res!1618972) (not e!2473180))))

(assert (=> b!3989798 (= res!1618972 (not ((_ is Nil!42668) lt!1405559)))))

(declare-fun b!3989800 () Bool)

(assert (=> b!3989800 (= e!2473180 (isPrefix!3839 (tail!6221 lt!1405581) (tail!6221 lt!1405559)))))

(declare-fun d!1180765 () Bool)

(declare-fun e!2473181 () Bool)

(assert (=> d!1180765 e!2473181))

(declare-fun res!1618971 () Bool)

(assert (=> d!1180765 (=> res!1618971 e!2473181)))

(declare-fun lt!1405899 () Bool)

(assert (=> d!1180765 (= res!1618971 (not lt!1405899))))

(assert (=> d!1180765 (= lt!1405899 e!2473182)))

(declare-fun res!1618974 () Bool)

(assert (=> d!1180765 (=> res!1618974 e!2473182)))

(assert (=> d!1180765 (= res!1618974 ((_ is Nil!42668) lt!1405581))))

(assert (=> d!1180765 (= (isPrefix!3839 lt!1405581 lt!1405559) lt!1405899)))

(declare-fun b!3989801 () Bool)

(assert (=> b!3989801 (= e!2473181 (>= (size!31913 lt!1405559) (size!31913 lt!1405581)))))

(declare-fun b!3989799 () Bool)

(declare-fun res!1618973 () Bool)

(assert (=> b!3989799 (=> (not res!1618973) (not e!2473180))))

(assert (=> b!3989799 (= res!1618973 (= (head!8489 lt!1405581) (head!8489 lt!1405559)))))

(assert (= (and d!1180765 (not res!1618974)) b!3989798))

(assert (= (and b!3989798 res!1618972) b!3989799))

(assert (= (and b!3989799 res!1618973) b!3989800))

(assert (= (and d!1180765 (not res!1618971)) b!3989801))

(assert (=> b!3989800 m!4567085))

(assert (=> b!3989800 m!4567791))

(assert (=> b!3989800 m!4567085))

(assert (=> b!3989800 m!4567791))

(declare-fun m!4567927 () Bool)

(assert (=> b!3989800 m!4567927))

(assert (=> b!3989801 m!4567599))

(assert (=> b!3989801 m!4566733))

(assert (=> b!3989799 m!4567093))

(assert (=> b!3989799 m!4567795))

(assert (=> b!3989025 d!1180765))

(declare-fun d!1180767 () Bool)

(assert (=> d!1180767 (isPrefix!3839 lt!1405581 (++!11154 prefix!494 newSuffix!27))))

(declare-fun lt!1405900 () Unit!61413)

(assert (=> d!1180767 (= lt!1405900 (choose!23988 lt!1405581 prefix!494 newSuffix!27))))

(assert (=> d!1180767 (isPrefix!3839 lt!1405581 prefix!494)))

(assert (=> d!1180767 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!672 lt!1405581 prefix!494 newSuffix!27) lt!1405900)))

(declare-fun bs!588349 () Bool)

(assert (= bs!588349 d!1180767))

(assert (=> bs!588349 m!4566713))

(assert (=> bs!588349 m!4566713))

(declare-fun m!4567929 () Bool)

(assert (=> bs!588349 m!4567929))

(declare-fun m!4567931 () Bool)

(assert (=> bs!588349 m!4567931))

(assert (=> bs!588349 m!4566627))

(assert (=> b!3989025 d!1180767))

(declare-fun d!1180769 () Bool)

(assert (=> d!1180769 (isPrefix!3839 lt!1405581 (++!11154 prefix!494 suffix!1299))))

(declare-fun lt!1405901 () Unit!61413)

(assert (=> d!1180769 (= lt!1405901 (choose!23988 lt!1405581 prefix!494 suffix!1299))))

(assert (=> d!1180769 (isPrefix!3839 lt!1405581 prefix!494)))

(assert (=> d!1180769 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!672 lt!1405581 prefix!494 suffix!1299) lt!1405901)))

(declare-fun bs!588350 () Bool)

(assert (= bs!588350 d!1180769))

(assert (=> bs!588350 m!4566687))

(assert (=> bs!588350 m!4566687))

(declare-fun m!4567933 () Bool)

(assert (=> bs!588350 m!4567933))

(declare-fun m!4567935 () Bool)

(assert (=> bs!588350 m!4567935))

(assert (=> bs!588350 m!4566627))

(assert (=> b!3989025 d!1180769))

(declare-fun b!3989815 () Bool)

(declare-fun e!2473185 () Bool)

(declare-fun tp!1215374 () Bool)

(declare-fun tp!1215372 () Bool)

(assert (=> b!3989815 (= e!2473185 (and tp!1215374 tp!1215372))))

(assert (=> b!3988997 (= tp!1215302 e!2473185)))

(declare-fun b!3989814 () Bool)

(declare-fun tp!1215373 () Bool)

(assert (=> b!3989814 (= e!2473185 tp!1215373)))

(declare-fun b!3989813 () Bool)

(declare-fun tp!1215375 () Bool)

(declare-fun tp!1215371 () Bool)

(assert (=> b!3989813 (= e!2473185 (and tp!1215375 tp!1215371))))

(declare-fun b!3989812 () Bool)

(assert (=> b!3989812 (= e!2473185 tp_is_empty!20285)))

(assert (= (and b!3988997 ((_ is ElementMatch!11657) (regex!6752 (rule!9768 token!484)))) b!3989812))

(assert (= (and b!3988997 ((_ is Concat!18640) (regex!6752 (rule!9768 token!484)))) b!3989813))

(assert (= (and b!3988997 ((_ is Star!11657) (regex!6752 (rule!9768 token!484)))) b!3989814))

(assert (= (and b!3988997 ((_ is Union!11657) (regex!6752 (rule!9768 token!484)))) b!3989815))

(declare-fun b!3989820 () Bool)

(declare-fun e!2473188 () Bool)

(declare-fun tp!1215378 () Bool)

(assert (=> b!3989820 (= e!2473188 (and tp_is_empty!20285 tp!1215378))))

(assert (=> b!3989013 (= tp!1215307 e!2473188)))

(assert (= (and b!3989013 ((_ is Cons!42668) (t!331687 prefix!494))) b!3989820))

(declare-fun b!3989821 () Bool)

(declare-fun e!2473189 () Bool)

(declare-fun tp!1215379 () Bool)

(assert (=> b!3989821 (= e!2473189 (and tp_is_empty!20285 tp!1215379))))

(assert (=> b!3989008 (= tp!1215309 e!2473189)))

(assert (= (and b!3989008 ((_ is Cons!42668) (originalCharacters!7352 token!484))) b!3989821))

(declare-fun b!3989822 () Bool)

(declare-fun e!2473190 () Bool)

(declare-fun tp!1215380 () Bool)

(assert (=> b!3989822 (= e!2473190 (and tp_is_empty!20285 tp!1215380))))

(assert (=> b!3989007 (= tp!1215310 e!2473190)))

(assert (= (and b!3989007 ((_ is Cons!42668) (t!331687 suffix!1299))) b!3989822))

(declare-fun b!3989823 () Bool)

(declare-fun e!2473191 () Bool)

(declare-fun tp!1215381 () Bool)

(assert (=> b!3989823 (= e!2473191 (and tp_is_empty!20285 tp!1215381))))

(assert (=> b!3989033 (= tp!1215308 e!2473191)))

(assert (= (and b!3989033 ((_ is Cons!42668) (t!331687 newSuffix!27))) b!3989823))

(declare-fun b!3989834 () Bool)

(declare-fun b_free!110813 () Bool)

(declare-fun b_next!111517 () Bool)

(assert (=> b!3989834 (= b_free!110813 (not b_next!111517))))

(declare-fun tb!240197 () Bool)

(declare-fun t!331732 () Bool)

(assert (=> (and b!3989834 (= (toValue!9240 (transformation!6752 (h!48090 (t!331689 rules!2999)))) (toValue!9240 (transformation!6752 (rule!9768 token!484)))) t!331732) tb!240197))

(declare-fun result!291038 () Bool)

(assert (= result!291038 result!290984))

(assert (=> d!1180485 t!331732))

(declare-fun t!331734 () Bool)

(declare-fun tb!240199 () Bool)

(assert (=> (and b!3989834 (= (toValue!9240 (transformation!6752 (h!48090 (t!331689 rules!2999)))) (toValue!9240 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))) t!331734) tb!240199))

(declare-fun result!291040 () Bool)

(assert (= result!291040 result!291024))

(assert (=> d!1180737 t!331734))

(declare-fun b_and!306563 () Bool)

(declare-fun tp!1215390 () Bool)

(assert (=> b!3989834 (= tp!1215390 (and (=> t!331732 result!291038) (=> t!331734 result!291040) b_and!306563))))

(declare-fun b_free!110815 () Bool)

(declare-fun b_next!111519 () Bool)

(assert (=> b!3989834 (= b_free!110815 (not b_next!111519))))

(declare-fun t!331736 () Bool)

(declare-fun tb!240201 () Bool)

(assert (=> (and b!3989834 (= (toChars!9099 (transformation!6752 (h!48090 (t!331689 rules!2999)))) (toChars!9099 (transformation!6752 (rule!9768 token!484)))) t!331736) tb!240201))

(declare-fun result!291042 () Bool)

(assert (= result!291042 result!290978))

(assert (=> d!1180473 t!331736))

(assert (=> b!3989673 t!331736))

(declare-fun tb!240203 () Bool)

(declare-fun t!331738 () Bool)

(assert (=> (and b!3989834 (= (toChars!9099 (transformation!6752 (h!48090 (t!331689 rules!2999)))) (toChars!9099 (transformation!6752 (rule!9768 (_1!24070 (v!39521 lt!1405599)))))) t!331738) tb!240203))

(declare-fun result!291044 () Bool)

(assert (= result!291044 result!291028))

(assert (=> d!1180757 t!331738))

(declare-fun b_and!306565 () Bool)

(declare-fun tp!1215393 () Bool)

(assert (=> b!3989834 (= tp!1215393 (and (=> t!331736 result!291042) (=> t!331738 result!291044) b_and!306565))))

(declare-fun e!2473201 () Bool)

(assert (=> b!3989834 (= e!2473201 (and tp!1215390 tp!1215393))))

(declare-fun e!2473203 () Bool)

(declare-fun tp!1215391 () Bool)

(declare-fun b!3989833 () Bool)

(assert (=> b!3989833 (= e!2473203 (and tp!1215391 (inv!56988 (tag!7612 (h!48090 (t!331689 rules!2999)))) (inv!56991 (transformation!6752 (h!48090 (t!331689 rules!2999)))) e!2473201))))

(declare-fun b!3989832 () Bool)

(declare-fun e!2473202 () Bool)

(declare-fun tp!1215392 () Bool)

(assert (=> b!3989832 (= e!2473202 (and e!2473203 tp!1215392))))

(assert (=> b!3988996 (= tp!1215306 e!2473202)))

(assert (= b!3989833 b!3989834))

(assert (= b!3989832 b!3989833))

(assert (= (and b!3988996 ((_ is Cons!42670) (t!331689 rules!2999))) b!3989832))

(declare-fun m!4567937 () Bool)

(assert (=> b!3989833 m!4567937))

(declare-fun m!4567939 () Bool)

(assert (=> b!3989833 m!4567939))

(declare-fun b!3989835 () Bool)

(declare-fun e!2473204 () Bool)

(declare-fun tp!1215394 () Bool)

(assert (=> b!3989835 (= e!2473204 (and tp_is_empty!20285 tp!1215394))))

(assert (=> b!3989011 (= tp!1215304 e!2473204)))

(assert (= (and b!3989011 ((_ is Cons!42668) (t!331687 suffixResult!105))) b!3989835))

(declare-fun b!3989839 () Bool)

(declare-fun e!2473205 () Bool)

(declare-fun tp!1215398 () Bool)

(declare-fun tp!1215396 () Bool)

(assert (=> b!3989839 (= e!2473205 (and tp!1215398 tp!1215396))))

(assert (=> b!3988993 (= tp!1215312 e!2473205)))

(declare-fun b!3989838 () Bool)

(declare-fun tp!1215397 () Bool)

(assert (=> b!3989838 (= e!2473205 tp!1215397)))

(declare-fun b!3989837 () Bool)

(declare-fun tp!1215399 () Bool)

(declare-fun tp!1215395 () Bool)

(assert (=> b!3989837 (= e!2473205 (and tp!1215399 tp!1215395))))

(declare-fun b!3989836 () Bool)

(assert (=> b!3989836 (= e!2473205 tp_is_empty!20285)))

(assert (= (and b!3988993 ((_ is ElementMatch!11657) (regex!6752 (h!48090 rules!2999)))) b!3989836))

(assert (= (and b!3988993 ((_ is Concat!18640) (regex!6752 (h!48090 rules!2999)))) b!3989837))

(assert (= (and b!3988993 ((_ is Star!11657) (regex!6752 (h!48090 rules!2999)))) b!3989838))

(assert (= (and b!3988993 ((_ is Union!11657) (regex!6752 (h!48090 rules!2999)))) b!3989839))

(declare-fun b!3989840 () Bool)

(declare-fun e!2473206 () Bool)

(declare-fun tp!1215400 () Bool)

(assert (=> b!3989840 (= e!2473206 (and tp_is_empty!20285 tp!1215400))))

(assert (=> b!3989004 (= tp!1215305 e!2473206)))

(assert (= (and b!3989004 ((_ is Cons!42668) (t!331687 newSuffixResult!27))) b!3989840))

(declare-fun b_lambda!116489 () Bool)

(assert (= b_lambda!116463 (or (and b!3989016 b_free!110803 (= (toChars!9099 (transformation!6752 (h!48090 rules!2999))) (toChars!9099 (transformation!6752 (rule!9768 token!484))))) (and b!3989023 b_free!110807) (and b!3989834 b_free!110815 (= (toChars!9099 (transformation!6752 (h!48090 (t!331689 rules!2999)))) (toChars!9099 (transformation!6752 (rule!9768 token!484))))) b_lambda!116489)))

(declare-fun b_lambda!116491 () Bool)

(assert (= b_lambda!116483 (or (and b!3989016 b_free!110803 (= (toChars!9099 (transformation!6752 (h!48090 rules!2999))) (toChars!9099 (transformation!6752 (rule!9768 token!484))))) (and b!3989023 b_free!110807) (and b!3989834 b_free!110815 (= (toChars!9099 (transformation!6752 (h!48090 (t!331689 rules!2999)))) (toChars!9099 (transformation!6752 (rule!9768 token!484))))) b_lambda!116491)))

(declare-fun b_lambda!116493 () Bool)

(assert (= b_lambda!116465 (or (and b!3989016 b_free!110801 (= (toValue!9240 (transformation!6752 (h!48090 rules!2999))) (toValue!9240 (transformation!6752 (rule!9768 token!484))))) (and b!3989023 b_free!110805) (and b!3989834 b_free!110813 (= (toValue!9240 (transformation!6752 (h!48090 (t!331689 rules!2999)))) (toValue!9240 (transformation!6752 (rule!9768 token!484))))) b_lambda!116493)))

(check-sat (not b!3989755) (not b!3989761) (not d!1180401) (not d!1180675) (not b!3989821) (not d!1180671) (not b!3989800) (not d!1180755) (not b!3989709) (not b!3989776) (not b!3989365) (not b!3989367) (not d!1180661) (not b!3989794) (not b!3989294) (not d!1180677) (not b_lambda!116493) (not b!3989081) (not b!3989596) (not b!3989597) (not b!3989823) (not b!3989711) (not b_next!111507) (not b!3989835) b_and!306561 (not b!3989779) (not d!1180705) (not b!3989352) (not b!3989813) (not b!3989773) (not d!1180491) (not b!3989785) (not b!3989760) (not d!1180713) (not b!3989787) (not b!3989820) (not d!1180483) (not b!3989353) (not b!3989822) (not b!3989781) (not d!1180657) (not b!3989688) (not b!3989741) (not b!3989703) (not b!3989314) (not b!3989772) (not d!1180691) (not b!3989777) (not b!3989648) (not b!3989338) (not bm!285798) (not b!3989303) (not b!3989726) b_and!306557 (not b!3989286) (not d!1180685) (not b!3989734) (not b!3989350) (not b!3989767) (not b!3989283) (not b!3989157) (not b!3989341) (not b!3989749) (not d!1180723) (not b!3989106) (not d!1180663) (not b!3989782) b_and!306565 (not d!1180697) b_and!306563 (not d!1180709) (not b!3989746) (not b!3989718) (not d!1180481) (not b!3989693) (not b!3989685) (not b!3989340) (not b!3989664) (not b!3989689) (not b!3989714) (not b!3989347) (not d!1180479) (not b!3989723) (not b!3989763) (not d!1180659) (not b!3989815) (not b!3989687) (not b!3989736) (not b!3989759) b_and!306555 (not b!3989699) (not d!1180407) (not d!1180471) (not b!3989288) (not b!3989333) (not d!1180389) (not b_lambda!116485) (not d!1180437) (not b!3989583) (not d!1180699) (not b!3989710) (not b!3989690) (not d!1180495) (not b!3989745) (not b!3989833) (not d!1180731) (not b!3989613) (not b!3989698) (not d!1180725) (not b!3989764) (not b!3989360) (not b!3989778) (not b!3989077) (not b!3989284) (not b!3989799) (not d!1180505) (not d!1180473) (not b!3989309) (not b!3989285) (not d!1180747) (not d!1180701) (not b!3989788) (not b!3989801) (not b_next!111509) (not b!3989684) (not b!3989733) (not d!1180715) (not b!3989694) (not b!3989361) (not b!3989075) (not d!1180735) (not b!3989289) (not b!3989652) (not d!1180743) (not b!3989691) (not d!1180421) (not d!1180703) (not b!3989336) (not b!3989356) (not b!3989145) (not b!3989680) (not b!3989632) (not d!1180707) (not d!1180681) (not b!3989582) (not bm!285810) (not b!3989357) (not tb!240189) (not b!3989287) (not b!3989707) (not bm!285811) (not d!1180763) (not d!1180665) (not b!3989748) (not b!3989674) (not b!3989676) (not d!1180769) (not b!3989692) (not b_next!111511) (not b!3989358) (not b!3989226) (not b!3989754) (not d!1180753) (not b!3989758) (not b!3989744) (not d!1180739) (not d!1180759) (not d!1180475) (not d!1180647) (not d!1180477) (not b!3989345) (not b!3989673) (not b!3989697) (not b!3989790) (not b!3989144) (not b!3989665) (not b!3989227) (not b!3989795) (not b!3989293) (not b!3989751) (not b!3989713) tp_is_empty!20285 (not b!3989732) (not b!3989702) (not b!3989072) (not b!3989362) (not d!1180679) (not b!3989839) (not d!1180489) (not b!3989705) (not b!3989214) b_and!306559 (not tb!240157) (not d!1180503) (not b!3989307) (not b!3989706) (not b!3989677) (not b!3989681) (not b!3989775) (not b!3989770) (not b!3989701) (not b!3989774) (not b!3989354) (not b_next!111505) (not d!1180649) (not b!3989814) (not b!3989667) (not b_lambda!116489) (not d!1180751) (not d!1180651) (not d!1180727) (not b!3989301) (not b_next!111519) (not d!1180673) (not b!3989213) (not b!3989337) (not d!1180501) (not b!3989290) (not b!3989082) (not b!3989840) (not b!3989614) (not d!1180447) (not b!3989837) (not b!3989832) (not d!1180717) (not b!3989305) (not d!1180767) (not d!1180745) (not b!3989729) (not d!1180749) (not b!3989364) (not d!1180757) (not b_next!111517) (not b!3989335) (not b!3989740) (not d!1180459) (not b!3989727) (not b!3989768) (not d!1180653) (not b!3989074) (not b!3989838) (not d!1180387) (not b!3989737) (not b!3989339) (not tb!240193) (not b!3989212) (not tb!240161) (not b!3989756) (not b!3989346) (not b_lambda!116487) (not d!1180687) (not b_lambda!116491) (not d!1180669) (not d!1180761) (not bm!285805) (not b!3989225))
(check-sat b_and!306557 b_and!306555 (not b_next!111509) (not b_next!111511) b_and!306559 (not b_next!111505) (not b_next!111519) (not b_next!111517) (not b_next!111507) b_and!306561 b_and!306565 b_and!306563)

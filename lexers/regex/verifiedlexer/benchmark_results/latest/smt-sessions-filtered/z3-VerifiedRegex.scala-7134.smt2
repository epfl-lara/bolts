; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378440 () Bool)

(assert start!378440)

(declare-fun b!4018805 () Bool)

(declare-fun b_free!111825 () Bool)

(declare-fun b_next!112529 () Bool)

(assert (=> b!4018805 (= b_free!111825 (not b_next!112529))))

(declare-fun tp!1221813 () Bool)

(declare-fun b_and!308727 () Bool)

(assert (=> b!4018805 (= tp!1221813 b_and!308727)))

(declare-fun b_free!111827 () Bool)

(declare-fun b_next!112531 () Bool)

(assert (=> b!4018805 (= b_free!111827 (not b_next!112531))))

(declare-fun tp!1221816 () Bool)

(declare-fun b_and!308729 () Bool)

(assert (=> b!4018805 (= tp!1221816 b_and!308729)))

(declare-fun b!4018818 () Bool)

(declare-fun b_free!111829 () Bool)

(declare-fun b_next!112533 () Bool)

(assert (=> b!4018818 (= b_free!111829 (not b_next!112533))))

(declare-fun tp!1221820 () Bool)

(declare-fun b_and!308731 () Bool)

(assert (=> b!4018818 (= tp!1221820 b_and!308731)))

(declare-fun b_free!111831 () Bool)

(declare-fun b_next!112535 () Bool)

(assert (=> b!4018818 (= b_free!111831 (not b_next!112535))))

(declare-fun tp!1221818 () Bool)

(declare-fun b_and!308733 () Bool)

(assert (=> b!4018818 (= tp!1221818 b_and!308733)))

(declare-fun b!4018790 () Bool)

(declare-fun e!2492878 () Bool)

(declare-fun e!2492889 () Bool)

(assert (=> b!4018790 (= e!2492878 e!2492889)))

(declare-fun res!1634947 () Bool)

(assert (=> b!4018790 (=> (not res!1634947) (not e!2492889))))

(declare-datatypes ((C!23708 0))(
  ( (C!23709 (val!13948 Int)) )
))
(declare-datatypes ((List!43142 0))(
  ( (Nil!43018) (Cons!43018 (h!48438 C!23708) (t!333475 List!43142)) )
))
(declare-fun lt!1426420 () List!43142)

(declare-datatypes ((IArray!26139 0))(
  ( (IArray!26140 (innerList!13127 List!43142)) )
))
(declare-datatypes ((Conc!13067 0))(
  ( (Node!13067 (left!32429 Conc!13067) (right!32759 Conc!13067) (csize!26364 Int) (cheight!13278 Int)) (Leaf!20202 (xs!16373 IArray!26139) (csize!26365 Int)) (Empty!13067) )
))
(declare-datatypes ((BalanceConc!25728 0))(
  ( (BalanceConc!25729 (c!694504 Conc!13067)) )
))
(declare-datatypes ((List!43143 0))(
  ( (Nil!43019) (Cons!43019 (h!48439 (_ BitVec 16)) (t!333476 List!43143)) )
))
(declare-datatypes ((TokenValue!7086 0))(
  ( (FloatLiteralValue!14172 (text!50047 List!43143)) (TokenValueExt!7085 (__x!26389 Int)) (Broken!35430 (value!216004 List!43143)) (Object!7209) (End!7086) (Def!7086) (Underscore!7086) (Match!7086) (Else!7086) (Error!7086) (Case!7086) (If!7086) (Extends!7086) (Abstract!7086) (Class!7086) (Val!7086) (DelimiterValue!14172 (del!7146 List!43143)) (KeywordValue!7092 (value!216005 List!43143)) (CommentValue!14172 (value!216006 List!43143)) (WhitespaceValue!14172 (value!216007 List!43143)) (IndentationValue!7086 (value!216008 List!43143)) (String!49147) (Int32!7086) (Broken!35431 (value!216009 List!43143)) (Boolean!7087) (Unit!62115) (OperatorValue!7089 (op!7146 List!43143)) (IdentifierValue!14172 (value!216010 List!43143)) (IdentifierValue!14173 (value!216011 List!43143)) (WhitespaceValue!14173 (value!216012 List!43143)) (True!14172) (False!14172) (Broken!35432 (value!216013 List!43143)) (Broken!35433 (value!216014 List!43143)) (True!14173) (RightBrace!7086) (RightBracket!7086) (Colon!7086) (Null!7086) (Comma!7086) (LeftBracket!7086) (False!14173) (LeftBrace!7086) (ImaginaryLiteralValue!7086 (text!50048 List!43143)) (StringLiteralValue!21258 (value!216015 List!43143)) (EOFValue!7086 (value!216016 List!43143)) (IdentValue!7086 (value!216017 List!43143)) (DelimiterValue!14173 (value!216018 List!43143)) (DedentValue!7086 (value!216019 List!43143)) (NewLineValue!7086 (value!216020 List!43143)) (IntegerValue!21258 (value!216021 (_ BitVec 32)) (text!50049 List!43143)) (IntegerValue!21259 (value!216022 Int) (text!50050 List!43143)) (Times!7086) (Or!7086) (Equal!7086) (Minus!7086) (Broken!35434 (value!216023 List!43143)) (And!7086) (Div!7086) (LessEqual!7086) (Mod!7086) (Concat!18847) (Not!7086) (Plus!7086) (SpaceValue!7086 (value!216024 List!43143)) (IntegerValue!21260 (value!216025 Int) (text!50051 List!43143)) (StringLiteralValue!21259 (text!50052 List!43143)) (FloatLiteralValue!14173 (text!50053 List!43143)) (BytesLiteralValue!7086 (value!216026 List!43143)) (CommentValue!14173 (value!216027 List!43143)) (StringLiteralValue!21260 (value!216028 List!43143)) (ErrorTokenValue!7086 (msg!7147 List!43143)) )
))
(declare-datatypes ((Regex!11761 0))(
  ( (ElementMatch!11761 (c!694505 C!23708)) (Concat!18848 (regOne!24034 Regex!11761) (regTwo!24034 Regex!11761)) (EmptyExpr!11761) (Star!11761 (reg!12090 Regex!11761)) (EmptyLang!11761) (Union!11761 (regOne!24035 Regex!11761) (regTwo!24035 Regex!11761)) )
))
(declare-datatypes ((String!49148 0))(
  ( (String!49149 (value!216029 String)) )
))
(declare-datatypes ((TokenValueInjection!13600 0))(
  ( (TokenValueInjection!13601 (toValue!9364 Int) (toChars!9223 Int)) )
))
(declare-datatypes ((Rule!13512 0))(
  ( (Rule!13513 (regex!6856 Regex!11761) (tag!7716 String!49148) (isSeparator!6856 Bool) (transformation!6856 TokenValueInjection!13600)) )
))
(declare-datatypes ((List!43144 0))(
  ( (Nil!43020) (Cons!43020 (h!48440 Rule!13512) (t!333477 List!43144)) )
))
(declare-fun rules!2999 () List!43144)

(declare-datatypes ((Token!12850 0))(
  ( (Token!12851 (value!216030 TokenValue!7086) (rule!9908 Rule!13512) (size!32163 Int) (originalCharacters!7456 List!43142)) )
))
(declare-datatypes ((tuple2!42150 0))(
  ( (tuple2!42151 (_1!24209 Token!12850) (_2!24209 List!43142)) )
))
(declare-datatypes ((Option!9270 0))(
  ( (None!9269) (Some!9269 (v!39643 tuple2!42150)) )
))
(declare-fun lt!1426463 () Option!9270)

(declare-datatypes ((LexerInterface!6445 0))(
  ( (LexerInterfaceExt!6442 (__x!26390 Int)) (Lexer!6443) )
))
(declare-fun thiss!21717 () LexerInterface!6445)

(declare-fun maxPrefix!3743 (LexerInterface!6445 List!43144 List!43142) Option!9270)

(assert (=> b!4018790 (= res!1634947 (= (maxPrefix!3743 thiss!21717 rules!2999 lt!1426420) lt!1426463))))

(declare-fun lt!1426453 () tuple2!42150)

(assert (=> b!4018790 (= lt!1426463 (Some!9269 lt!1426453))))

(declare-fun token!484 () Token!12850)

(declare-fun suffixResult!105 () List!43142)

(assert (=> b!4018790 (= lt!1426453 (tuple2!42151 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43142)

(declare-fun suffix!1299 () List!43142)

(declare-fun ++!11258 (List!43142 List!43142) List!43142)

(assert (=> b!4018790 (= lt!1426420 (++!11258 prefix!494 suffix!1299))))

(declare-fun b!4018791 () Bool)

(declare-fun e!2492881 () Bool)

(assert (=> b!4018791 (= e!2492881 true)))

(declare-fun lt!1426440 () Option!9270)

(declare-fun newSuffixResult!27 () List!43142)

(assert (=> b!4018791 (= (_2!24209 (v!39643 lt!1426440)) newSuffixResult!27)))

(declare-fun lt!1426459 () List!43142)

(declare-datatypes ((Unit!62116 0))(
  ( (Unit!62117) )
))
(declare-fun lt!1426427 () Unit!62116)

(declare-fun lt!1426429 () List!43142)

(declare-fun lt!1426445 () List!43142)

(declare-fun lemmaSamePrefixThenSameSuffix!2114 (List!43142 List!43142 List!43142 List!43142 List!43142) Unit!62116)

(assert (=> b!4018791 (= lt!1426427 (lemmaSamePrefixThenSameSuffix!2114 lt!1426429 (_2!24209 (v!39643 lt!1426440)) lt!1426445 newSuffixResult!27 lt!1426459))))

(assert (=> b!4018791 (= lt!1426429 lt!1426445)))

(declare-fun lt!1426447 () Unit!62116)

(declare-fun lemmaIsPrefixSameLengthThenSameList!903 (List!43142 List!43142 List!43142) Unit!62116)

(assert (=> b!4018791 (= lt!1426447 (lemmaIsPrefixSameLengthThenSameList!903 lt!1426429 lt!1426445 lt!1426459))))

(declare-fun b!4018792 () Bool)

(declare-fun e!2492885 () Bool)

(declare-fun tp_is_empty!20493 () Bool)

(declare-fun tp!1221811 () Bool)

(assert (=> b!4018792 (= e!2492885 (and tp_is_empty!20493 tp!1221811))))

(declare-fun b!4018793 () Bool)

(declare-fun res!1634963 () Bool)

(assert (=> b!4018793 (=> res!1634963 e!2492881)))

(declare-fun isPrefix!3943 (List!43142 List!43142) Bool)

(assert (=> b!4018793 (= res!1634963 (not (isPrefix!3943 lt!1426429 lt!1426459)))))

(declare-fun b!4018794 () Bool)

(declare-fun e!2492904 () Bool)

(declare-fun e!2492890 () Bool)

(assert (=> b!4018794 (= e!2492904 e!2492890)))

(declare-fun res!1634966 () Bool)

(assert (=> b!4018794 (=> res!1634966 e!2492890)))

(declare-fun lt!1426465 () List!43142)

(assert (=> b!4018794 (= res!1634966 (not (= lt!1426465 suffix!1299)))))

(declare-fun newSuffix!27 () List!43142)

(declare-fun lt!1426446 () List!43142)

(assert (=> b!4018794 (= lt!1426465 (++!11258 newSuffix!27 lt!1426446))))

(declare-fun getSuffix!2368 (List!43142 List!43142) List!43142)

(assert (=> b!4018794 (= lt!1426446 (getSuffix!2368 suffix!1299 newSuffix!27))))

(declare-fun b!4018795 () Bool)

(declare-fun res!1634943 () Bool)

(declare-fun e!2492873 () Bool)

(assert (=> b!4018795 (=> (not res!1634943) (not e!2492873))))

(declare-fun lt!1426426 () TokenValue!7086)

(assert (=> b!4018795 (= res!1634943 (= (value!216030 token!484) lt!1426426))))

(declare-fun b!4018796 () Bool)

(declare-fun e!2492891 () Bool)

(assert (=> b!4018796 (= e!2492891 e!2492881)))

(declare-fun res!1634945 () Bool)

(assert (=> b!4018796 (=> res!1634945 e!2492881)))

(declare-fun lt!1426456 () Int)

(declare-fun lt!1426468 () Int)

(assert (=> b!4018796 (= res!1634945 (not (= lt!1426456 lt!1426468)))))

(declare-fun lt!1426418 () Unit!62116)

(declare-fun e!2492882 () Unit!62116)

(assert (=> b!4018796 (= lt!1426418 e!2492882)))

(declare-fun c!694503 () Bool)

(assert (=> b!4018796 (= c!694503 (< lt!1426468 lt!1426456))))

(declare-fun lt!1426423 () Unit!62116)

(declare-fun e!2492903 () Unit!62116)

(assert (=> b!4018796 (= lt!1426423 e!2492903)))

(declare-fun c!694502 () Bool)

(assert (=> b!4018796 (= c!694502 (> lt!1426468 lt!1426456))))

(declare-fun lt!1426438 () List!43142)

(assert (=> b!4018796 (= (_2!24209 (v!39643 lt!1426440)) lt!1426438)))

(declare-fun lt!1426457 () Unit!62116)

(assert (=> b!4018796 (= lt!1426457 (lemmaSamePrefixThenSameSuffix!2114 lt!1426429 (_2!24209 (v!39643 lt!1426440)) lt!1426429 lt!1426438 lt!1426459))))

(declare-fun lt!1426425 () List!43142)

(assert (=> b!4018796 (isPrefix!3943 lt!1426429 lt!1426425)))

(declare-fun lt!1426413 () Unit!62116)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2784 (List!43142 List!43142) Unit!62116)

(assert (=> b!4018796 (= lt!1426413 (lemmaConcatTwoListThenFirstIsPrefix!2784 lt!1426429 lt!1426438))))

(declare-fun b!4018797 () Bool)

(declare-fun e!2492897 () Bool)

(declare-fun e!2492894 () Bool)

(declare-fun tp!1221819 () Bool)

(assert (=> b!4018797 (= e!2492897 (and e!2492894 tp!1221819))))

(declare-fun b!4018798 () Bool)

(declare-fun e!2492883 () Bool)

(declare-fun e!2492907 () Bool)

(assert (=> b!4018798 (= e!2492883 e!2492907)))

(declare-fun res!1634954 () Bool)

(assert (=> b!4018798 (=> res!1634954 e!2492907)))

(declare-fun lt!1426452 () List!43142)

(declare-fun lt!1426434 () List!43142)

(assert (=> b!4018798 (= res!1634954 (or (not (= lt!1426420 lt!1426434)) (not (= lt!1426420 lt!1426452))))))

(assert (=> b!4018798 (= lt!1426434 lt!1426452)))

(declare-fun lt!1426458 () List!43142)

(assert (=> b!4018798 (= lt!1426452 (++!11258 lt!1426445 lt!1426458))))

(declare-fun lt!1426439 () List!43142)

(assert (=> b!4018798 (= lt!1426434 (++!11258 lt!1426439 suffix!1299))))

(declare-fun lt!1426411 () List!43142)

(assert (=> b!4018798 (= lt!1426458 (++!11258 lt!1426411 suffix!1299))))

(declare-fun lt!1426435 () Unit!62116)

(declare-fun lemmaConcatAssociativity!2568 (List!43142 List!43142 List!43142) Unit!62116)

(assert (=> b!4018798 (= lt!1426435 (lemmaConcatAssociativity!2568 lt!1426445 lt!1426411 suffix!1299))))

(declare-fun b!4018799 () Bool)

(declare-fun e!2492892 () Bool)

(assert (=> b!4018799 (= e!2492892 false)))

(declare-fun b!4018800 () Bool)

(declare-fun e!2492900 () Bool)

(declare-fun tp!1221808 () Bool)

(assert (=> b!4018800 (= e!2492900 (and tp_is_empty!20493 tp!1221808))))

(declare-fun b!4018801 () Bool)

(declare-fun Unit!62118 () Unit!62116)

(assert (=> b!4018801 (= e!2492882 Unit!62118)))

(declare-fun lt!1426421 () Unit!62116)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!450 (LexerInterface!6445 List!43144 Rule!13512 List!43142 List!43142 List!43142 Rule!13512) Unit!62116)

(assert (=> b!4018801 (= lt!1426421 (lemmaMaxPrefixOutputsMaxPrefix!450 thiss!21717 rules!2999 (rule!9908 (_1!24209 (v!39643 lt!1426440))) lt!1426429 lt!1426459 lt!1426445 (rule!9908 token!484)))))

(assert (=> b!4018801 false))

(declare-fun b!4018802 () Bool)

(declare-fun e!2492908 () Bool)

(assert (=> b!4018802 (= e!2492889 (not e!2492908))))

(declare-fun res!1634951 () Bool)

(assert (=> b!4018802 (=> res!1634951 e!2492908)))

(declare-fun lt!1426436 () List!43142)

(assert (=> b!4018802 (= res!1634951 (not (= lt!1426436 lt!1426420)))))

(assert (=> b!4018802 (= lt!1426436 (++!11258 lt!1426445 suffixResult!105))))

(declare-fun lt!1426437 () Unit!62116)

(declare-fun lemmaInv!1071 (TokenValueInjection!13600) Unit!62116)

(assert (=> b!4018802 (= lt!1426437 (lemmaInv!1071 (transformation!6856 (rule!9908 token!484))))))

(declare-fun ruleValid!2788 (LexerInterface!6445 Rule!13512) Bool)

(assert (=> b!4018802 (ruleValid!2788 thiss!21717 (rule!9908 token!484))))

(declare-fun lt!1426444 () Unit!62116)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1862 (LexerInterface!6445 Rule!13512 List!43144) Unit!62116)

(assert (=> b!4018802 (= lt!1426444 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1862 thiss!21717 (rule!9908 token!484) rules!2999))))

(declare-fun b!4018803 () Bool)

(declare-fun res!1634961 () Bool)

(declare-fun e!2492877 () Bool)

(assert (=> b!4018803 (=> res!1634961 e!2492877)))

(declare-fun lt!1426449 () List!43142)

(assert (=> b!4018803 (= res!1634961 (not (= lt!1426449 lt!1426459)))))

(declare-fun b!4018804 () Bool)

(declare-fun e!2492901 () Bool)

(declare-fun tp!1221817 () Bool)

(assert (=> b!4018804 (= e!2492901 (and tp_is_empty!20493 tp!1221817))))

(declare-fun e!2492906 () Bool)

(assert (=> b!4018805 (= e!2492906 (and tp!1221813 tp!1221816))))

(declare-fun b!4018806 () Bool)

(declare-fun e!2492898 () Bool)

(declare-fun e!2492888 () Bool)

(assert (=> b!4018806 (= e!2492898 e!2492888)))

(declare-fun res!1634959 () Bool)

(assert (=> b!4018806 (=> res!1634959 e!2492888)))

(get-info :version)

(assert (=> b!4018806 (= res!1634959 (not ((_ is Some!9269) lt!1426440)))))

(assert (=> b!4018806 (= lt!1426440 (maxPrefix!3743 thiss!21717 rules!2999 lt!1426459))))

(declare-fun lt!1426471 () Token!12850)

(declare-fun lt!1426451 () List!43142)

(assert (=> b!4018806 (and (= suffixResult!105 lt!1426451) (= lt!1426453 (tuple2!42151 lt!1426471 lt!1426451)))))

(declare-fun lt!1426443 () Unit!62116)

(assert (=> b!4018806 (= lt!1426443 (lemmaSamePrefixThenSameSuffix!2114 lt!1426445 suffixResult!105 lt!1426445 lt!1426451 lt!1426420))))

(declare-fun lt!1426416 () List!43142)

(assert (=> b!4018806 (isPrefix!3943 lt!1426445 lt!1426416)))

(declare-fun lt!1426442 () Unit!62116)

(assert (=> b!4018806 (= lt!1426442 (lemmaConcatTwoListThenFirstIsPrefix!2784 lt!1426445 lt!1426451))))

(declare-fun b!4018807 () Bool)

(declare-fun Unit!62119 () Unit!62116)

(assert (=> b!4018807 (= e!2492882 Unit!62119)))

(declare-fun b!4018808 () Bool)

(declare-fun e!2492884 () Bool)

(declare-fun e!2492896 () Bool)

(declare-fun tp!1221815 () Bool)

(declare-fun inv!57455 (String!49148) Bool)

(declare-fun inv!57458 (TokenValueInjection!13600) Bool)

(assert (=> b!4018808 (= e!2492896 (and tp!1221815 (inv!57455 (tag!7716 (rule!9908 token!484))) (inv!57458 (transformation!6856 (rule!9908 token!484))) e!2492884))))

(declare-fun b!4018809 () Bool)

(declare-fun e!2492893 () Bool)

(declare-fun e!2492875 () Bool)

(assert (=> b!4018809 (= e!2492893 e!2492875)))

(declare-fun res!1634941 () Bool)

(assert (=> b!4018809 (=> res!1634941 e!2492875)))

(declare-fun matchR!5722 (Regex!11761 List!43142) Bool)

(assert (=> b!4018809 (= res!1634941 (not (matchR!5722 (regex!6856 (rule!9908 token!484)) lt!1426445)))))

(assert (=> b!4018809 (isPrefix!3943 lt!1426445 lt!1426459)))

(declare-fun lt!1426424 () Unit!62116)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!756 (List!43142 List!43142 List!43142) Unit!62116)

(assert (=> b!4018809 (= lt!1426424 (lemmaPrefixStaysPrefixWhenAddingToSuffix!756 lt!1426445 prefix!494 newSuffix!27))))

(declare-fun lt!1426461 () Unit!62116)

(assert (=> b!4018809 (= lt!1426461 (lemmaPrefixStaysPrefixWhenAddingToSuffix!756 lt!1426445 prefix!494 suffix!1299))))

(declare-fun b!4018810 () Bool)

(assert (=> b!4018810 (= e!2492877 e!2492891)))

(declare-fun res!1634952 () Bool)

(assert (=> b!4018810 (=> res!1634952 e!2492891)))

(assert (=> b!4018810 (= res!1634952 (not (= lt!1426425 lt!1426459)))))

(assert (=> b!4018810 (= lt!1426425 (++!11258 lt!1426429 lt!1426438))))

(assert (=> b!4018810 (= lt!1426438 (getSuffix!2368 lt!1426459 lt!1426429))))

(declare-fun b!4018811 () Bool)

(declare-fun e!2492879 () Bool)

(assert (=> b!4018811 (= e!2492879 e!2492877)))

(declare-fun res!1634956 () Bool)

(assert (=> b!4018811 (=> res!1634956 e!2492877)))

(assert (=> b!4018811 (= res!1634956 (not (isPrefix!3943 lt!1426429 lt!1426420)))))

(declare-fun lt!1426470 () List!43142)

(assert (=> b!4018811 (isPrefix!3943 lt!1426429 lt!1426470)))

(declare-fun lt!1426462 () Unit!62116)

(assert (=> b!4018811 (= lt!1426462 (lemmaPrefixStaysPrefixWhenAddingToSuffix!756 lt!1426429 lt!1426459 lt!1426446))))

(declare-fun b!4018812 () Bool)

(declare-fun res!1634949 () Bool)

(assert (=> b!4018812 (=> (not res!1634949) (not e!2492873))))

(declare-fun size!32164 (List!43142) Int)

(assert (=> b!4018812 (= res!1634949 (= (size!32163 token!484) (size!32164 (originalCharacters!7456 token!484))))))

(declare-fun b!4018813 () Bool)

(declare-fun e!2492905 () Bool)

(declare-fun tp!1221809 () Bool)

(assert (=> b!4018813 (= e!2492905 (and tp_is_empty!20493 tp!1221809))))

(declare-fun b!4018814 () Bool)

(declare-fun res!1634962 () Bool)

(declare-fun e!2492876 () Bool)

(assert (=> b!4018814 (=> (not res!1634962) (not e!2492876))))

(assert (=> b!4018814 (= res!1634962 (isPrefix!3943 newSuffix!27 suffix!1299))))

(declare-fun tp!1221814 () Bool)

(declare-fun e!2492886 () Bool)

(declare-fun b!4018815 () Bool)

(declare-fun inv!21 (TokenValue!7086) Bool)

(assert (=> b!4018815 (= e!2492886 (and (inv!21 (value!216030 token!484)) e!2492896 tp!1221814))))

(declare-fun b!4018816 () Bool)

(declare-fun e!2492895 () Bool)

(assert (=> b!4018816 (= e!2492876 e!2492895)))

(declare-fun res!1634964 () Bool)

(assert (=> b!4018816 (=> (not res!1634964) (not e!2492895))))

(declare-fun lt!1426412 () Int)

(assert (=> b!4018816 (= res!1634964 (>= lt!1426412 lt!1426456))))

(assert (=> b!4018816 (= lt!1426456 (size!32164 lt!1426445))))

(assert (=> b!4018816 (= lt!1426412 (size!32164 prefix!494))))

(declare-fun list!15992 (BalanceConc!25728) List!43142)

(declare-fun charsOf!4672 (Token!12850) BalanceConc!25728)

(assert (=> b!4018816 (= lt!1426445 (list!15992 (charsOf!4672 token!484)))))

(declare-fun b!4018817 () Bool)

(declare-fun res!1634960 () Bool)

(assert (=> b!4018817 (=> (not res!1634960) (not e!2492876))))

(assert (=> b!4018817 (= res!1634960 (>= (size!32164 suffix!1299) (size!32164 newSuffix!27)))))

(assert (=> b!4018818 (= e!2492884 (and tp!1221820 tp!1221818))))

(declare-fun b!4018819 () Bool)

(declare-fun res!1634950 () Bool)

(assert (=> b!4018819 (=> (not res!1634950) (not e!2492876))))

(declare-fun rulesInvariant!5788 (LexerInterface!6445 List!43144) Bool)

(assert (=> b!4018819 (= res!1634950 (rulesInvariant!5788 thiss!21717 rules!2999))))

(declare-fun b!4018820 () Bool)

(assert (=> b!4018820 (= e!2492873 (and (= (size!32163 token!484) lt!1426456) (= (originalCharacters!7456 token!484) lt!1426445)))))

(declare-fun b!4018821 () Bool)

(assert (=> b!4018821 (= e!2492907 e!2492893)))

(declare-fun res!1634958 () Bool)

(assert (=> b!4018821 (=> res!1634958 e!2492893)))

(declare-fun lt!1426414 () Option!9270)

(assert (=> b!4018821 (= res!1634958 (not (= lt!1426414 lt!1426463)))))

(assert (=> b!4018821 (= lt!1426414 (Some!9269 (tuple2!42151 lt!1426471 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2763 (LexerInterface!6445 Rule!13512 List!43142) Option!9270)

(assert (=> b!4018821 (= lt!1426414 (maxPrefixOneRule!2763 thiss!21717 (rule!9908 token!484) lt!1426420))))

(assert (=> b!4018821 (= lt!1426471 (Token!12851 lt!1426426 (rule!9908 token!484) lt!1426456 lt!1426445))))

(declare-fun apply!10053 (TokenValueInjection!13600 BalanceConc!25728) TokenValue!7086)

(declare-fun seqFromList!5081 (List!43142) BalanceConc!25728)

(assert (=> b!4018821 (= lt!1426426 (apply!10053 (transformation!6856 (rule!9908 token!484)) (seqFromList!5081 lt!1426445)))))

(declare-fun lt!1426417 () Unit!62116)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1581 (LexerInterface!6445 List!43144 List!43142 List!43142 List!43142 Rule!13512) Unit!62116)

(assert (=> b!4018821 (= lt!1426417 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1581 thiss!21717 rules!2999 lt!1426445 lt!1426420 suffixResult!105 (rule!9908 token!484)))))

(assert (=> b!4018821 (= lt!1426458 suffixResult!105)))

(declare-fun lt!1426454 () Unit!62116)

(assert (=> b!4018821 (= lt!1426454 (lemmaSamePrefixThenSameSuffix!2114 lt!1426445 lt!1426458 lt!1426445 suffixResult!105 lt!1426420))))

(assert (=> b!4018821 (isPrefix!3943 lt!1426445 lt!1426452)))

(declare-fun lt!1426432 () Unit!62116)

(assert (=> b!4018821 (= lt!1426432 (lemmaConcatTwoListThenFirstIsPrefix!2784 lt!1426445 lt!1426458))))

(declare-fun tp!1221812 () Bool)

(declare-fun b!4018822 () Bool)

(assert (=> b!4018822 (= e!2492894 (and tp!1221812 (inv!57455 (tag!7716 (h!48440 rules!2999))) (inv!57458 (transformation!6856 (h!48440 rules!2999))) e!2492906))))

(declare-fun b!4018823 () Bool)

(declare-fun Unit!62120 () Unit!62116)

(assert (=> b!4018823 (= e!2492903 Unit!62120)))

(declare-fun lt!1426450 () Unit!62116)

(assert (=> b!4018823 (= lt!1426450 (lemmaMaxPrefixOutputsMaxPrefix!450 thiss!21717 rules!2999 (rule!9908 token!484) lt!1426445 lt!1426420 lt!1426429 (rule!9908 (_1!24209 (v!39643 lt!1426440)))))))

(declare-fun res!1634946 () Bool)

(assert (=> b!4018823 (= res!1634946 (not (matchR!5722 (regex!6856 (rule!9908 (_1!24209 (v!39643 lt!1426440)))) lt!1426429)))))

(assert (=> b!4018823 (=> (not res!1634946) (not e!2492892))))

(assert (=> b!4018823 e!2492892))

(declare-fun b!4018824 () Bool)

(declare-fun Unit!62121 () Unit!62116)

(assert (=> b!4018824 (= e!2492903 Unit!62121)))

(declare-fun b!4018825 () Bool)

(assert (=> b!4018825 (= e!2492895 e!2492878)))

(declare-fun res!1634957 () Bool)

(assert (=> b!4018825 (=> (not res!1634957) (not e!2492878))))

(declare-fun lt!1426431 () List!43142)

(assert (=> b!4018825 (= res!1634957 (= lt!1426431 lt!1426459))))

(assert (=> b!4018825 (= lt!1426459 (++!11258 prefix!494 newSuffix!27))))

(assert (=> b!4018825 (= lt!1426431 (++!11258 lt!1426445 newSuffixResult!27))))

(declare-fun b!4018826 () Bool)

(declare-fun e!2492880 () Bool)

(assert (=> b!4018826 (= e!2492880 e!2492883)))

(declare-fun res!1634942 () Bool)

(assert (=> b!4018826 (=> res!1634942 e!2492883)))

(assert (=> b!4018826 (= res!1634942 (not (= lt!1426439 prefix!494)))))

(assert (=> b!4018826 (= lt!1426439 (++!11258 lt!1426445 lt!1426411))))

(assert (=> b!4018826 (= lt!1426411 (getSuffix!2368 prefix!494 lt!1426445))))

(assert (=> b!4018826 (isPrefix!3943 lt!1426445 prefix!494)))

(declare-fun lt!1426460 () Unit!62116)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!515 (List!43142 List!43142 List!43142) Unit!62116)

(assert (=> b!4018826 (= lt!1426460 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!515 prefix!494 lt!1426445 lt!1426420))))

(declare-fun res!1634955 () Bool)

(assert (=> start!378440 (=> (not res!1634955) (not e!2492876))))

(assert (=> start!378440 (= res!1634955 ((_ is Lexer!6443) thiss!21717))))

(assert (=> start!378440 e!2492876))

(assert (=> start!378440 e!2492900))

(declare-fun inv!57459 (Token!12850) Bool)

(assert (=> start!378440 (and (inv!57459 token!484) e!2492886)))

(assert (=> start!378440 e!2492901))

(declare-fun e!2492902 () Bool)

(assert (=> start!378440 e!2492902))

(assert (=> start!378440 e!2492885))

(assert (=> start!378440 true))

(assert (=> start!378440 e!2492897))

(assert (=> start!378440 e!2492905))

(declare-fun b!4018827 () Bool)

(declare-fun res!1634944 () Bool)

(assert (=> b!4018827 (=> (not res!1634944) (not e!2492876))))

(declare-fun isEmpty!25688 (List!43144) Bool)

(assert (=> b!4018827 (= res!1634944 (not (isEmpty!25688 rules!2999)))))

(declare-fun b!4018828 () Bool)

(assert (=> b!4018828 (= e!2492890 e!2492879)))

(declare-fun res!1634940 () Bool)

(assert (=> b!4018828 (=> res!1634940 e!2492879)))

(assert (=> b!4018828 (= res!1634940 (not (= lt!1426470 lt!1426420)))))

(assert (=> b!4018828 (= lt!1426470 (++!11258 prefix!494 lt!1426465))))

(assert (=> b!4018828 (= lt!1426470 (++!11258 lt!1426459 lt!1426446))))

(declare-fun lt!1426433 () Unit!62116)

(assert (=> b!4018828 (= lt!1426433 (lemmaConcatAssociativity!2568 prefix!494 newSuffix!27 lt!1426446))))

(declare-fun b!4018829 () Bool)

(declare-fun tp!1221810 () Bool)

(assert (=> b!4018829 (= e!2492902 (and tp_is_empty!20493 tp!1221810))))

(declare-fun b!4018830 () Bool)

(assert (=> b!4018830 (= e!2492908 e!2492880)))

(declare-fun res!1634965 () Bool)

(assert (=> b!4018830 (=> res!1634965 e!2492880)))

(assert (=> b!4018830 (= res!1634965 (not (isPrefix!3943 lt!1426445 lt!1426420)))))

(assert (=> b!4018830 (isPrefix!3943 prefix!494 lt!1426420)))

(declare-fun lt!1426464 () Unit!62116)

(assert (=> b!4018830 (= lt!1426464 (lemmaConcatTwoListThenFirstIsPrefix!2784 prefix!494 suffix!1299))))

(assert (=> b!4018830 (isPrefix!3943 lt!1426445 lt!1426436)))

(declare-fun lt!1426428 () Unit!62116)

(assert (=> b!4018830 (= lt!1426428 (lemmaConcatTwoListThenFirstIsPrefix!2784 lt!1426445 suffixResult!105))))

(declare-fun b!4018831 () Bool)

(assert (=> b!4018831 (= e!2492875 e!2492898)))

(declare-fun res!1634953 () Bool)

(assert (=> b!4018831 (=> res!1634953 e!2492898)))

(assert (=> b!4018831 (= res!1634953 (not (= lt!1426416 lt!1426420)))))

(assert (=> b!4018831 (= lt!1426416 (++!11258 lt!1426445 lt!1426451))))

(assert (=> b!4018831 (= lt!1426451 (getSuffix!2368 lt!1426420 lt!1426445))))

(assert (=> b!4018831 e!2492873))

(declare-fun res!1634948 () Bool)

(assert (=> b!4018831 (=> (not res!1634948) (not e!2492873))))

(assert (=> b!4018831 (= res!1634948 (isPrefix!3943 lt!1426420 lt!1426420))))

(declare-fun lt!1426430 () Unit!62116)

(declare-fun lemmaIsPrefixRefl!2519 (List!43142 List!43142) Unit!62116)

(assert (=> b!4018831 (= lt!1426430 (lemmaIsPrefixRefl!2519 lt!1426420 lt!1426420))))

(declare-fun b!4018832 () Bool)

(assert (=> b!4018832 (= e!2492888 e!2492904)))

(declare-fun res!1634967 () Bool)

(assert (=> b!4018832 (=> res!1634967 e!2492904)))

(declare-fun lt!1426441 () Option!9270)

(assert (=> b!4018832 (= res!1634967 (not (= lt!1426441 (Some!9269 (v!39643 lt!1426440)))))))

(assert (=> b!4018832 (isPrefix!3943 lt!1426429 (++!11258 lt!1426429 newSuffixResult!27))))

(declare-fun lt!1426466 () Unit!62116)

(assert (=> b!4018832 (= lt!1426466 (lemmaConcatTwoListThenFirstIsPrefix!2784 lt!1426429 newSuffixResult!27))))

(assert (=> b!4018832 (isPrefix!3943 lt!1426429 lt!1426449)))

(assert (=> b!4018832 (= lt!1426449 (++!11258 lt!1426429 (_2!24209 (v!39643 lt!1426440))))))

(declare-fun lt!1426469 () Unit!62116)

(assert (=> b!4018832 (= lt!1426469 (lemmaConcatTwoListThenFirstIsPrefix!2784 lt!1426429 (_2!24209 (v!39643 lt!1426440))))))

(declare-fun lt!1426419 () TokenValue!7086)

(assert (=> b!4018832 (= lt!1426441 (Some!9269 (tuple2!42151 (Token!12851 lt!1426419 (rule!9908 (_1!24209 (v!39643 lt!1426440))) lt!1426468 lt!1426429) (_2!24209 (v!39643 lt!1426440)))))))

(assert (=> b!4018832 (= lt!1426441 (maxPrefixOneRule!2763 thiss!21717 (rule!9908 (_1!24209 (v!39643 lt!1426440))) lt!1426459))))

(assert (=> b!4018832 (= lt!1426468 (size!32164 lt!1426429))))

(assert (=> b!4018832 (= lt!1426419 (apply!10053 (transformation!6856 (rule!9908 (_1!24209 (v!39643 lt!1426440)))) (seqFromList!5081 lt!1426429)))))

(declare-fun lt!1426422 () Unit!62116)

(assert (=> b!4018832 (= lt!1426422 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1581 thiss!21717 rules!2999 lt!1426429 lt!1426459 (_2!24209 (v!39643 lt!1426440)) (rule!9908 (_1!24209 (v!39643 lt!1426440)))))))

(assert (=> b!4018832 (= lt!1426429 (list!15992 (charsOf!4672 (_1!24209 (v!39643 lt!1426440)))))))

(declare-fun lt!1426448 () Unit!62116)

(assert (=> b!4018832 (= lt!1426448 (lemmaInv!1071 (transformation!6856 (rule!9908 (_1!24209 (v!39643 lt!1426440))))))))

(assert (=> b!4018832 (ruleValid!2788 thiss!21717 (rule!9908 (_1!24209 (v!39643 lt!1426440))))))

(declare-fun lt!1426455 () Unit!62116)

(assert (=> b!4018832 (= lt!1426455 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1862 thiss!21717 (rule!9908 (_1!24209 (v!39643 lt!1426440))) rules!2999))))

(declare-fun lt!1426467 () Unit!62116)

(declare-fun lemmaCharactersSize!1415 (Token!12850) Unit!62116)

(assert (=> b!4018832 (= lt!1426467 (lemmaCharactersSize!1415 token!484))))

(declare-fun lt!1426415 () Unit!62116)

(assert (=> b!4018832 (= lt!1426415 (lemmaCharactersSize!1415 (_1!24209 (v!39643 lt!1426440))))))

(assert (= (and start!378440 res!1634955) b!4018827))

(assert (= (and b!4018827 res!1634944) b!4018819))

(assert (= (and b!4018819 res!1634950) b!4018817))

(assert (= (and b!4018817 res!1634960) b!4018814))

(assert (= (and b!4018814 res!1634962) b!4018816))

(assert (= (and b!4018816 res!1634964) b!4018825))

(assert (= (and b!4018825 res!1634957) b!4018790))

(assert (= (and b!4018790 res!1634947) b!4018802))

(assert (= (and b!4018802 (not res!1634951)) b!4018830))

(assert (= (and b!4018830 (not res!1634965)) b!4018826))

(assert (= (and b!4018826 (not res!1634942)) b!4018798))

(assert (= (and b!4018798 (not res!1634954)) b!4018821))

(assert (= (and b!4018821 (not res!1634958)) b!4018809))

(assert (= (and b!4018809 (not res!1634941)) b!4018831))

(assert (= (and b!4018831 res!1634948) b!4018795))

(assert (= (and b!4018795 res!1634943) b!4018812))

(assert (= (and b!4018812 res!1634949) b!4018820))

(assert (= (and b!4018831 (not res!1634953)) b!4018806))

(assert (= (and b!4018806 (not res!1634959)) b!4018832))

(assert (= (and b!4018832 (not res!1634967)) b!4018794))

(assert (= (and b!4018794 (not res!1634966)) b!4018828))

(assert (= (and b!4018828 (not res!1634940)) b!4018811))

(assert (= (and b!4018811 (not res!1634956)) b!4018803))

(assert (= (and b!4018803 (not res!1634961)) b!4018810))

(assert (= (and b!4018810 (not res!1634952)) b!4018796))

(assert (= (and b!4018796 c!694502) b!4018823))

(assert (= (and b!4018796 (not c!694502)) b!4018824))

(assert (= (and b!4018823 res!1634946) b!4018799))

(assert (= (and b!4018796 c!694503) b!4018801))

(assert (= (and b!4018796 (not c!694503)) b!4018807))

(assert (= (and b!4018796 (not res!1634945)) b!4018793))

(assert (= (and b!4018793 (not res!1634963)) b!4018791))

(assert (= (and start!378440 ((_ is Cons!43018) prefix!494)) b!4018800))

(assert (= b!4018808 b!4018818))

(assert (= b!4018815 b!4018808))

(assert (= start!378440 b!4018815))

(assert (= (and start!378440 ((_ is Cons!43018) suffixResult!105)) b!4018804))

(assert (= (and start!378440 ((_ is Cons!43018) suffix!1299)) b!4018829))

(assert (= (and start!378440 ((_ is Cons!43018) newSuffix!27)) b!4018792))

(assert (= b!4018822 b!4018805))

(assert (= b!4018797 b!4018822))

(assert (= (and start!378440 ((_ is Cons!43020) rules!2999)) b!4018797))

(assert (= (and start!378440 ((_ is Cons!43018) newSuffixResult!27)) b!4018813))

(declare-fun m!4608139 () Bool)

(assert (=> b!4018808 m!4608139))

(declare-fun m!4608141 () Bool)

(assert (=> b!4018808 m!4608141))

(declare-fun m!4608143 () Bool)

(assert (=> b!4018830 m!4608143))

(declare-fun m!4608145 () Bool)

(assert (=> b!4018830 m!4608145))

(declare-fun m!4608147 () Bool)

(assert (=> b!4018830 m!4608147))

(declare-fun m!4608149 () Bool)

(assert (=> b!4018830 m!4608149))

(declare-fun m!4608151 () Bool)

(assert (=> b!4018830 m!4608151))

(declare-fun m!4608153 () Bool)

(assert (=> b!4018831 m!4608153))

(declare-fun m!4608155 () Bool)

(assert (=> b!4018831 m!4608155))

(declare-fun m!4608157 () Bool)

(assert (=> b!4018831 m!4608157))

(declare-fun m!4608159 () Bool)

(assert (=> b!4018831 m!4608159))

(declare-fun m!4608161 () Bool)

(assert (=> b!4018810 m!4608161))

(declare-fun m!4608163 () Bool)

(assert (=> b!4018810 m!4608163))

(declare-fun m!4608165 () Bool)

(assert (=> b!4018793 m!4608165))

(declare-fun m!4608167 () Bool)

(assert (=> b!4018832 m!4608167))

(declare-fun m!4608169 () Bool)

(assert (=> b!4018832 m!4608169))

(declare-fun m!4608171 () Bool)

(assert (=> b!4018832 m!4608171))

(declare-fun m!4608173 () Bool)

(assert (=> b!4018832 m!4608173))

(declare-fun m!4608175 () Bool)

(assert (=> b!4018832 m!4608175))

(declare-fun m!4608177 () Bool)

(assert (=> b!4018832 m!4608177))

(declare-fun m!4608179 () Bool)

(assert (=> b!4018832 m!4608179))

(declare-fun m!4608181 () Bool)

(assert (=> b!4018832 m!4608181))

(declare-fun m!4608183 () Bool)

(assert (=> b!4018832 m!4608183))

(declare-fun m!4608185 () Bool)

(assert (=> b!4018832 m!4608185))

(declare-fun m!4608187 () Bool)

(assert (=> b!4018832 m!4608187))

(declare-fun m!4608189 () Bool)

(assert (=> b!4018832 m!4608189))

(assert (=> b!4018832 m!4608175))

(assert (=> b!4018832 m!4608187))

(declare-fun m!4608191 () Bool)

(assert (=> b!4018832 m!4608191))

(declare-fun m!4608193 () Bool)

(assert (=> b!4018832 m!4608193))

(declare-fun m!4608195 () Bool)

(assert (=> b!4018832 m!4608195))

(assert (=> b!4018832 m!4608173))

(declare-fun m!4608197 () Bool)

(assert (=> b!4018832 m!4608197))

(declare-fun m!4608199 () Bool)

(assert (=> b!4018832 m!4608199))

(declare-fun m!4608201 () Bool)

(assert (=> b!4018832 m!4608201))

(declare-fun m!4608203 () Bool)

(assert (=> b!4018798 m!4608203))

(declare-fun m!4608205 () Bool)

(assert (=> b!4018798 m!4608205))

(declare-fun m!4608207 () Bool)

(assert (=> b!4018798 m!4608207))

(declare-fun m!4608209 () Bool)

(assert (=> b!4018798 m!4608209))

(declare-fun m!4608211 () Bool)

(assert (=> b!4018809 m!4608211))

(declare-fun m!4608213 () Bool)

(assert (=> b!4018809 m!4608213))

(declare-fun m!4608215 () Bool)

(assert (=> b!4018809 m!4608215))

(declare-fun m!4608217 () Bool)

(assert (=> b!4018809 m!4608217))

(declare-fun m!4608219 () Bool)

(assert (=> b!4018811 m!4608219))

(declare-fun m!4608221 () Bool)

(assert (=> b!4018811 m!4608221))

(declare-fun m!4608223 () Bool)

(assert (=> b!4018811 m!4608223))

(declare-fun m!4608225 () Bool)

(assert (=> b!4018791 m!4608225))

(declare-fun m!4608227 () Bool)

(assert (=> b!4018791 m!4608227))

(declare-fun m!4608229 () Bool)

(assert (=> b!4018822 m!4608229))

(declare-fun m!4608231 () Bool)

(assert (=> b!4018822 m!4608231))

(declare-fun m!4608233 () Bool)

(assert (=> b!4018796 m!4608233))

(declare-fun m!4608235 () Bool)

(assert (=> b!4018796 m!4608235))

(declare-fun m!4608237 () Bool)

(assert (=> b!4018796 m!4608237))

(declare-fun m!4608239 () Bool)

(assert (=> b!4018828 m!4608239))

(declare-fun m!4608241 () Bool)

(assert (=> b!4018828 m!4608241))

(declare-fun m!4608243 () Bool)

(assert (=> b!4018828 m!4608243))

(declare-fun m!4608245 () Bool)

(assert (=> b!4018823 m!4608245))

(declare-fun m!4608247 () Bool)

(assert (=> b!4018823 m!4608247))

(declare-fun m!4608249 () Bool)

(assert (=> start!378440 m!4608249))

(declare-fun m!4608251 () Bool)

(assert (=> b!4018801 m!4608251))

(declare-fun m!4608253 () Bool)

(assert (=> b!4018825 m!4608253))

(declare-fun m!4608255 () Bool)

(assert (=> b!4018825 m!4608255))

(declare-fun m!4608257 () Bool)

(assert (=> b!4018821 m!4608257))

(declare-fun m!4608259 () Bool)

(assert (=> b!4018821 m!4608259))

(declare-fun m!4608261 () Bool)

(assert (=> b!4018821 m!4608261))

(declare-fun m!4608263 () Bool)

(assert (=> b!4018821 m!4608263))

(declare-fun m!4608265 () Bool)

(assert (=> b!4018821 m!4608265))

(declare-fun m!4608267 () Bool)

(assert (=> b!4018821 m!4608267))

(assert (=> b!4018821 m!4608257))

(declare-fun m!4608269 () Bool)

(assert (=> b!4018821 m!4608269))

(declare-fun m!4608271 () Bool)

(assert (=> b!4018815 m!4608271))

(declare-fun m!4608273 () Bool)

(assert (=> b!4018806 m!4608273))

(declare-fun m!4608275 () Bool)

(assert (=> b!4018806 m!4608275))

(declare-fun m!4608277 () Bool)

(assert (=> b!4018806 m!4608277))

(declare-fun m!4608279 () Bool)

(assert (=> b!4018806 m!4608279))

(declare-fun m!4608281 () Bool)

(assert (=> b!4018790 m!4608281))

(declare-fun m!4608283 () Bool)

(assert (=> b!4018790 m!4608283))

(declare-fun m!4608285 () Bool)

(assert (=> b!4018816 m!4608285))

(declare-fun m!4608287 () Bool)

(assert (=> b!4018816 m!4608287))

(declare-fun m!4608289 () Bool)

(assert (=> b!4018816 m!4608289))

(assert (=> b!4018816 m!4608289))

(declare-fun m!4608291 () Bool)

(assert (=> b!4018816 m!4608291))

(declare-fun m!4608293 () Bool)

(assert (=> b!4018812 m!4608293))

(declare-fun m!4608295 () Bool)

(assert (=> b!4018827 m!4608295))

(declare-fun m!4608297 () Bool)

(assert (=> b!4018794 m!4608297))

(declare-fun m!4608299 () Bool)

(assert (=> b!4018794 m!4608299))

(declare-fun m!4608301 () Bool)

(assert (=> b!4018817 m!4608301))

(declare-fun m!4608303 () Bool)

(assert (=> b!4018817 m!4608303))

(declare-fun m!4608305 () Bool)

(assert (=> b!4018802 m!4608305))

(declare-fun m!4608307 () Bool)

(assert (=> b!4018802 m!4608307))

(declare-fun m!4608309 () Bool)

(assert (=> b!4018802 m!4608309))

(declare-fun m!4608311 () Bool)

(assert (=> b!4018802 m!4608311))

(declare-fun m!4608313 () Bool)

(assert (=> b!4018819 m!4608313))

(declare-fun m!4608315 () Bool)

(assert (=> b!4018826 m!4608315))

(declare-fun m!4608317 () Bool)

(assert (=> b!4018826 m!4608317))

(declare-fun m!4608319 () Bool)

(assert (=> b!4018826 m!4608319))

(declare-fun m!4608321 () Bool)

(assert (=> b!4018826 m!4608321))

(declare-fun m!4608323 () Bool)

(assert (=> b!4018814 m!4608323))

(check-sat (not b!4018809) (not b!4018832) (not b!4018825) (not b_next!112529) (not b!4018810) (not b!4018791) (not b!4018797) tp_is_empty!20493 (not b!4018827) (not b!4018831) (not start!378440) (not b!4018816) b_and!308733 (not b!4018811) (not b!4018796) b_and!308727 (not b!4018794) (not b!4018790) (not b!4018829) b_and!308731 (not b_next!112535) (not b!4018801) (not b!4018819) (not b!4018802) (not b!4018822) (not b!4018806) (not b!4018800) (not b!4018815) (not b!4018817) (not b_next!112531) (not b!4018821) (not b_next!112533) (not b!4018813) (not b!4018826) (not b!4018792) (not b!4018812) (not b!4018808) (not b!4018804) (not b!4018814) (not b!4018823) (not b!4018828) b_and!308729 (not b!4018798) (not b!4018830) (not b!4018793))
(check-sat b_and!308733 b_and!308727 (not b_next!112529) b_and!308729 b_and!308731 (not b_next!112535) (not b_next!112531) (not b_next!112533))

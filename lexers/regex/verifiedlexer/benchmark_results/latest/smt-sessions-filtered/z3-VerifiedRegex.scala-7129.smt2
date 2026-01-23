; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378420 () Bool)

(assert start!378420)

(declare-fun b!4017589 () Bool)

(declare-fun b_free!111745 () Bool)

(declare-fun b_next!112449 () Bool)

(assert (=> b!4017589 (= b_free!111745 (not b_next!112449))))

(declare-fun tp!1221423 () Bool)

(declare-fun b_and!308647 () Bool)

(assert (=> b!4017589 (= tp!1221423 b_and!308647)))

(declare-fun b_free!111747 () Bool)

(declare-fun b_next!112451 () Bool)

(assert (=> b!4017589 (= b_free!111747 (not b_next!112451))))

(declare-fun tp!1221428 () Bool)

(declare-fun b_and!308649 () Bool)

(assert (=> b!4017589 (= tp!1221428 b_and!308649)))

(declare-fun b!4017551 () Bool)

(declare-fun b_free!111749 () Bool)

(declare-fun b_next!112453 () Bool)

(assert (=> b!4017551 (= b_free!111749 (not b_next!112453))))

(declare-fun tp!1221425 () Bool)

(declare-fun b_and!308651 () Bool)

(assert (=> b!4017551 (= tp!1221425 b_and!308651)))

(declare-fun b_free!111751 () Bool)

(declare-fun b_next!112455 () Bool)

(assert (=> b!4017551 (= b_free!111751 (not b_next!112455))))

(declare-fun tp!1221426 () Bool)

(declare-fun b_and!308653 () Bool)

(assert (=> b!4017551 (= tp!1221426 b_and!308653)))

(declare-fun e!2491817 () Bool)

(assert (=> b!4017551 (= e!2491817 (and tp!1221425 tp!1221426))))

(declare-fun b!4017552 () Bool)

(declare-fun e!2491827 () Bool)

(declare-fun e!2491836 () Bool)

(assert (=> b!4017552 (= e!2491827 e!2491836)))

(declare-fun res!1634161 () Bool)

(assert (=> b!4017552 (=> res!1634161 e!2491836)))

(declare-datatypes ((C!23688 0))(
  ( (C!23689 (val!13938 Int)) )
))
(declare-datatypes ((List!43112 0))(
  ( (Nil!42988) (Cons!42988 (h!48408 C!23688) (t!333445 List!43112)) )
))
(declare-fun lt!1424689 () List!43112)

(declare-fun lt!1424659 () List!43112)

(declare-fun lt!1424666 () List!43112)

(assert (=> b!4017552 (= res!1634161 (or (not (= lt!1424689 lt!1424666)) (not (= lt!1424689 lt!1424659))))))

(assert (=> b!4017552 (= lt!1424666 lt!1424659)))

(declare-fun lt!1424639 () List!43112)

(declare-fun lt!1424683 () List!43112)

(declare-fun ++!11248 (List!43112 List!43112) List!43112)

(assert (=> b!4017552 (= lt!1424659 (++!11248 lt!1424639 lt!1424683))))

(declare-fun lt!1424651 () List!43112)

(declare-fun suffix!1299 () List!43112)

(assert (=> b!4017552 (= lt!1424666 (++!11248 lt!1424651 suffix!1299))))

(declare-fun lt!1424641 () List!43112)

(assert (=> b!4017552 (= lt!1424683 (++!11248 lt!1424641 suffix!1299))))

(declare-datatypes ((Unit!62051 0))(
  ( (Unit!62052) )
))
(declare-fun lt!1424681 () Unit!62051)

(declare-fun lemmaConcatAssociativity!2558 (List!43112 List!43112 List!43112) Unit!62051)

(assert (=> b!4017552 (= lt!1424681 (lemmaConcatAssociativity!2558 lt!1424639 lt!1424641 suffix!1299))))

(declare-fun b!4017553 () Bool)

(declare-fun e!2491824 () Bool)

(declare-fun e!2491842 () Bool)

(assert (=> b!4017553 (= e!2491824 e!2491842)))

(declare-fun res!1634140 () Bool)

(assert (=> b!4017553 (=> res!1634140 e!2491842)))

(declare-datatypes ((IArray!26119 0))(
  ( (IArray!26120 (innerList!13117 List!43112)) )
))
(declare-datatypes ((Conc!13057 0))(
  ( (Node!13057 (left!32414 Conc!13057) (right!32744 Conc!13057) (csize!26344 Int) (cheight!13268 Int)) (Leaf!20187 (xs!16363 IArray!26119) (csize!26345 Int)) (Empty!13057) )
))
(declare-datatypes ((BalanceConc!25708 0))(
  ( (BalanceConc!25709 (c!694420 Conc!13057)) )
))
(declare-datatypes ((List!43113 0))(
  ( (Nil!42989) (Cons!42989 (h!48409 (_ BitVec 16)) (t!333446 List!43113)) )
))
(declare-datatypes ((TokenValue!7076 0))(
  ( (FloatLiteralValue!14152 (text!49977 List!43113)) (TokenValueExt!7075 (__x!26369 Int)) (Broken!35380 (value!215719 List!43113)) (Object!7199) (End!7076) (Def!7076) (Underscore!7076) (Match!7076) (Else!7076) (Error!7076) (Case!7076) (If!7076) (Extends!7076) (Abstract!7076) (Class!7076) (Val!7076) (DelimiterValue!14152 (del!7136 List!43113)) (KeywordValue!7082 (value!215720 List!43113)) (CommentValue!14152 (value!215721 List!43113)) (WhitespaceValue!14152 (value!215722 List!43113)) (IndentationValue!7076 (value!215723 List!43113)) (String!49097) (Int32!7076) (Broken!35381 (value!215724 List!43113)) (Boolean!7077) (Unit!62053) (OperatorValue!7079 (op!7136 List!43113)) (IdentifierValue!14152 (value!215725 List!43113)) (IdentifierValue!14153 (value!215726 List!43113)) (WhitespaceValue!14153 (value!215727 List!43113)) (True!14152) (False!14152) (Broken!35382 (value!215728 List!43113)) (Broken!35383 (value!215729 List!43113)) (True!14153) (RightBrace!7076) (RightBracket!7076) (Colon!7076) (Null!7076) (Comma!7076) (LeftBracket!7076) (False!14153) (LeftBrace!7076) (ImaginaryLiteralValue!7076 (text!49978 List!43113)) (StringLiteralValue!21228 (value!215730 List!43113)) (EOFValue!7076 (value!215731 List!43113)) (IdentValue!7076 (value!215732 List!43113)) (DelimiterValue!14153 (value!215733 List!43113)) (DedentValue!7076 (value!215734 List!43113)) (NewLineValue!7076 (value!215735 List!43113)) (IntegerValue!21228 (value!215736 (_ BitVec 32)) (text!49979 List!43113)) (IntegerValue!21229 (value!215737 Int) (text!49980 List!43113)) (Times!7076) (Or!7076) (Equal!7076) (Minus!7076) (Broken!35384 (value!215738 List!43113)) (And!7076) (Div!7076) (LessEqual!7076) (Mod!7076) (Concat!18827) (Not!7076) (Plus!7076) (SpaceValue!7076 (value!215739 List!43113)) (IntegerValue!21230 (value!215740 Int) (text!49981 List!43113)) (StringLiteralValue!21229 (text!49982 List!43113)) (FloatLiteralValue!14153 (text!49983 List!43113)) (BytesLiteralValue!7076 (value!215741 List!43113)) (CommentValue!14153 (value!215742 List!43113)) (StringLiteralValue!21230 (value!215743 List!43113)) (ErrorTokenValue!7076 (msg!7137 List!43113)) )
))
(declare-datatypes ((Regex!11751 0))(
  ( (ElementMatch!11751 (c!694421 C!23688)) (Concat!18828 (regOne!24014 Regex!11751) (regTwo!24014 Regex!11751)) (EmptyExpr!11751) (Star!11751 (reg!12080 Regex!11751)) (EmptyLang!11751) (Union!11751 (regOne!24015 Regex!11751) (regTwo!24015 Regex!11751)) )
))
(declare-datatypes ((String!49098 0))(
  ( (String!49099 (value!215744 String)) )
))
(declare-datatypes ((TokenValueInjection!13580 0))(
  ( (TokenValueInjection!13581 (toValue!9354 Int) (toChars!9213 Int)) )
))
(declare-datatypes ((Rule!13492 0))(
  ( (Rule!13493 (regex!6846 Regex!11751) (tag!7706 String!49098) (isSeparator!6846 Bool) (transformation!6846 TokenValueInjection!13580)) )
))
(declare-datatypes ((Token!12830 0))(
  ( (Token!12831 (value!215745 TokenValue!7076) (rule!9898 Rule!13492) (size!32143 Int) (originalCharacters!7446 List!43112)) )
))
(declare-fun token!484 () Token!12830)

(declare-fun matchR!5712 (Regex!11751 List!43112) Bool)

(assert (=> b!4017553 (= res!1634140 (not (matchR!5712 (regex!6846 (rule!9898 token!484)) lt!1424639)))))

(declare-fun lt!1424673 () List!43112)

(declare-fun isPrefix!3933 (List!43112 List!43112) Bool)

(assert (=> b!4017553 (isPrefix!3933 lt!1424639 lt!1424673)))

(declare-fun prefix!494 () List!43112)

(declare-fun newSuffix!27 () List!43112)

(declare-fun lt!1424644 () Unit!62051)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!746 (List!43112 List!43112 List!43112) Unit!62051)

(assert (=> b!4017553 (= lt!1424644 (lemmaPrefixStaysPrefixWhenAddingToSuffix!746 lt!1424639 prefix!494 newSuffix!27))))

(declare-fun lt!1424677 () Unit!62051)

(assert (=> b!4017553 (= lt!1424677 (lemmaPrefixStaysPrefixWhenAddingToSuffix!746 lt!1424639 prefix!494 suffix!1299))))

(declare-fun b!4017554 () Bool)

(declare-fun e!2491823 () Bool)

(declare-fun e!2491834 () Bool)

(assert (=> b!4017554 (= e!2491823 e!2491834)))

(declare-fun res!1634149 () Bool)

(assert (=> b!4017554 (=> res!1634149 e!2491834)))

(declare-datatypes ((tuple2!42130 0))(
  ( (tuple2!42131 (_1!24199 Token!12830) (_2!24199 List!43112)) )
))
(declare-datatypes ((Option!9260 0))(
  ( (None!9259) (Some!9259 (v!39633 tuple2!42130)) )
))
(declare-fun lt!1424671 () Option!9260)

(get-info :version)

(assert (=> b!4017554 (= res!1634149 (not ((_ is Some!9259) lt!1424671)))))

(declare-datatypes ((LexerInterface!6435 0))(
  ( (LexerInterfaceExt!6432 (__x!26370 Int)) (Lexer!6433) )
))
(declare-fun thiss!21717 () LexerInterface!6435)

(declare-datatypes ((List!43114 0))(
  ( (Nil!42990) (Cons!42990 (h!48410 Rule!13492) (t!333447 List!43114)) )
))
(declare-fun rules!2999 () List!43114)

(declare-fun maxPrefix!3733 (LexerInterface!6435 List!43114 List!43112) Option!9260)

(assert (=> b!4017554 (= lt!1424671 (maxPrefix!3733 thiss!21717 rules!2999 lt!1424673))))

(declare-fun lt!1424665 () Token!12830)

(declare-fun suffixResult!105 () List!43112)

(declare-fun lt!1424655 () List!43112)

(declare-fun lt!1424643 () tuple2!42130)

(assert (=> b!4017554 (and (= suffixResult!105 lt!1424655) (= lt!1424643 (tuple2!42131 lt!1424665 lt!1424655)))))

(declare-fun lt!1424685 () Unit!62051)

(declare-fun lemmaSamePrefixThenSameSuffix!2104 (List!43112 List!43112 List!43112 List!43112 List!43112) Unit!62051)

(assert (=> b!4017554 (= lt!1424685 (lemmaSamePrefixThenSameSuffix!2104 lt!1424639 suffixResult!105 lt!1424639 lt!1424655 lt!1424689))))

(declare-fun lt!1424667 () List!43112)

(assert (=> b!4017554 (isPrefix!3933 lt!1424639 lt!1424667)))

(declare-fun lt!1424640 () Unit!62051)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2774 (List!43112 List!43112) Unit!62051)

(assert (=> b!4017554 (= lt!1424640 (lemmaConcatTwoListThenFirstIsPrefix!2774 lt!1424639 lt!1424655))))

(declare-fun b!4017555 () Bool)

(declare-fun res!1634155 () Bool)

(declare-fun e!2491814 () Bool)

(assert (=> b!4017555 (=> res!1634155 e!2491814)))

(declare-fun lt!1424653 () List!43112)

(assert (=> b!4017555 (= res!1634155 (not (= lt!1424653 lt!1424673)))))

(declare-fun b!4017557 () Bool)

(assert (=> b!4017557 (= e!2491836 e!2491824)))

(declare-fun res!1634143 () Bool)

(assert (=> b!4017557 (=> res!1634143 e!2491824)))

(declare-fun lt!1424661 () Option!9260)

(declare-fun lt!1424678 () Option!9260)

(assert (=> b!4017557 (= res!1634143 (not (= lt!1424661 lt!1424678)))))

(assert (=> b!4017557 (= lt!1424661 (Some!9259 (tuple2!42131 lt!1424665 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2753 (LexerInterface!6435 Rule!13492 List!43112) Option!9260)

(assert (=> b!4017557 (= lt!1424661 (maxPrefixOneRule!2753 thiss!21717 (rule!9898 token!484) lt!1424689))))

(declare-fun lt!1424649 () Int)

(declare-fun lt!1424647 () TokenValue!7076)

(assert (=> b!4017557 (= lt!1424665 (Token!12831 lt!1424647 (rule!9898 token!484) lt!1424649 lt!1424639))))

(declare-fun apply!10043 (TokenValueInjection!13580 BalanceConc!25708) TokenValue!7076)

(declare-fun seqFromList!5071 (List!43112) BalanceConc!25708)

(assert (=> b!4017557 (= lt!1424647 (apply!10043 (transformation!6846 (rule!9898 token!484)) (seqFromList!5071 lt!1424639)))))

(declare-fun lt!1424658 () Unit!62051)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1571 (LexerInterface!6435 List!43114 List!43112 List!43112 List!43112 Rule!13492) Unit!62051)

(assert (=> b!4017557 (= lt!1424658 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1571 thiss!21717 rules!2999 lt!1424639 lt!1424689 suffixResult!105 (rule!9898 token!484)))))

(assert (=> b!4017557 (= lt!1424683 suffixResult!105)))

(declare-fun lt!1424642 () Unit!62051)

(assert (=> b!4017557 (= lt!1424642 (lemmaSamePrefixThenSameSuffix!2104 lt!1424639 lt!1424683 lt!1424639 suffixResult!105 lt!1424689))))

(assert (=> b!4017557 (isPrefix!3933 lt!1424639 lt!1424659)))

(declare-fun lt!1424694 () Unit!62051)

(assert (=> b!4017557 (= lt!1424694 (lemmaConcatTwoListThenFirstIsPrefix!2774 lt!1424639 lt!1424683))))

(declare-fun b!4017558 () Bool)

(declare-fun res!1634163 () Bool)

(declare-fun e!2491844 () Bool)

(assert (=> b!4017558 (=> (not res!1634163) (not e!2491844))))

(declare-fun rulesInvariant!5778 (LexerInterface!6435 List!43114) Bool)

(assert (=> b!4017558 (= res!1634163 (rulesInvariant!5778 thiss!21717 rules!2999))))

(declare-fun tp!1221430 () Bool)

(declare-fun b!4017559 () Bool)

(declare-fun e!2491840 () Bool)

(declare-fun inv!57420 (String!49098) Bool)

(declare-fun inv!57423 (TokenValueInjection!13580) Bool)

(assert (=> b!4017559 (= e!2491840 (and tp!1221430 (inv!57420 (tag!7706 (rule!9898 token!484))) (inv!57423 (transformation!6846 (rule!9898 token!484))) e!2491817))))

(declare-fun b!4017560 () Bool)

(declare-fun e!2491820 () Bool)

(declare-fun tp_is_empty!20473 () Bool)

(declare-fun tp!1221429 () Bool)

(assert (=> b!4017560 (= e!2491820 (and tp_is_empty!20473 tp!1221429))))

(declare-fun b!4017561 () Bool)

(declare-fun e!2491813 () Bool)

(declare-fun e!2491833 () Bool)

(assert (=> b!4017561 (= e!2491813 e!2491833)))

(declare-fun res!1634139 () Bool)

(assert (=> b!4017561 (=> res!1634139 e!2491833)))

(declare-fun lt!1424674 () List!43112)

(assert (=> b!4017561 (= res!1634139 (not (= lt!1424674 lt!1424689)))))

(declare-fun lt!1424693 () List!43112)

(assert (=> b!4017561 (= lt!1424674 (++!11248 prefix!494 lt!1424693))))

(declare-fun lt!1424686 () List!43112)

(assert (=> b!4017561 (= lt!1424674 (++!11248 lt!1424673 lt!1424686))))

(declare-fun lt!1424650 () Unit!62051)

(assert (=> b!4017561 (= lt!1424650 (lemmaConcatAssociativity!2558 prefix!494 newSuffix!27 lt!1424686))))

(declare-fun b!4017562 () Bool)

(declare-fun e!2491819 () Bool)

(declare-fun tp!1221424 () Bool)

(assert (=> b!4017562 (= e!2491819 (and tp_is_empty!20473 tp!1221424))))

(declare-fun b!4017563 () Bool)

(declare-fun e!2491845 () Bool)

(assert (=> b!4017563 (= e!2491845 false)))

(declare-fun b!4017564 () Bool)

(declare-fun res!1634142 () Bool)

(declare-fun e!2491831 () Bool)

(assert (=> b!4017564 (=> (not res!1634142) (not e!2491831))))

(declare-fun size!32144 (List!43112) Int)

(assert (=> b!4017564 (= res!1634142 (= (size!32143 token!484) (size!32144 (originalCharacters!7446 token!484))))))

(declare-fun b!4017565 () Bool)

(declare-fun e!2491812 () Bool)

(assert (=> b!4017565 (= e!2491812 e!2491827)))

(declare-fun res!1634153 () Bool)

(assert (=> b!4017565 (=> res!1634153 e!2491827)))

(assert (=> b!4017565 (= res!1634153 (not (= lt!1424651 prefix!494)))))

(assert (=> b!4017565 (= lt!1424651 (++!11248 lt!1424639 lt!1424641))))

(declare-fun getSuffix!2358 (List!43112 List!43112) List!43112)

(assert (=> b!4017565 (= lt!1424641 (getSuffix!2358 prefix!494 lt!1424639))))

(assert (=> b!4017565 (isPrefix!3933 lt!1424639 prefix!494)))

(declare-fun lt!1424695 () Unit!62051)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!505 (List!43112 List!43112 List!43112) Unit!62051)

(assert (=> b!4017565 (= lt!1424695 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!505 prefix!494 lt!1424639 lt!1424689))))

(declare-fun b!4017566 () Bool)

(declare-fun res!1634150 () Bool)

(assert (=> b!4017566 (=> (not res!1634150) (not e!2491831))))

(assert (=> b!4017566 (= res!1634150 (= (value!215745 token!484) lt!1424647))))

(declare-fun b!4017567 () Bool)

(declare-fun e!2491837 () Bool)

(declare-fun tp!1221427 () Bool)

(assert (=> b!4017567 (= e!2491837 (and tp_is_empty!20473 tp!1221427))))

(declare-fun tp!1221419 () Bool)

(declare-fun e!2491822 () Bool)

(declare-fun b!4017568 () Bool)

(declare-fun e!2491818 () Bool)

(assert (=> b!4017568 (= e!2491818 (and tp!1221419 (inv!57420 (tag!7706 (h!48410 rules!2999))) (inv!57423 (transformation!6846 (h!48410 rules!2999))) e!2491822))))

(declare-fun b!4017569 () Bool)

(declare-fun e!2491846 () Bool)

(assert (=> b!4017569 (= e!2491846 e!2491812)))

(declare-fun res!1634158 () Bool)

(assert (=> b!4017569 (=> res!1634158 e!2491812)))

(assert (=> b!4017569 (= res!1634158 (not (isPrefix!3933 lt!1424639 lt!1424689)))))

(assert (=> b!4017569 (isPrefix!3933 prefix!494 lt!1424689)))

(declare-fun lt!1424660 () Unit!62051)

(assert (=> b!4017569 (= lt!1424660 (lemmaConcatTwoListThenFirstIsPrefix!2774 prefix!494 suffix!1299))))

(declare-fun lt!1424670 () List!43112)

(assert (=> b!4017569 (isPrefix!3933 lt!1424639 lt!1424670)))

(declare-fun lt!1424657 () Unit!62051)

(assert (=> b!4017569 (= lt!1424657 (lemmaConcatTwoListThenFirstIsPrefix!2774 lt!1424639 suffixResult!105))))

(declare-fun b!4017570 () Bool)

(declare-fun e!2491830 () Bool)

(declare-fun e!2491815 () Bool)

(assert (=> b!4017570 (= e!2491830 e!2491815)))

(declare-fun res!1634144 () Bool)

(assert (=> b!4017570 (=> (not res!1634144) (not e!2491815))))

(assert (=> b!4017570 (= res!1634144 (= (maxPrefix!3733 thiss!21717 rules!2999 lt!1424689) lt!1424678))))

(assert (=> b!4017570 (= lt!1424678 (Some!9259 lt!1424643))))

(assert (=> b!4017570 (= lt!1424643 (tuple2!42131 token!484 suffixResult!105))))

(assert (=> b!4017570 (= lt!1424689 (++!11248 prefix!494 suffix!1299))))

(declare-fun b!4017571 () Bool)

(declare-fun e!2491829 () Unit!62051)

(declare-fun Unit!62054 () Unit!62051)

(assert (=> b!4017571 (= e!2491829 Unit!62054)))

(declare-fun lt!1424682 () Unit!62051)

(declare-fun lt!1424680 () List!43112)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!440 (LexerInterface!6435 List!43114 Rule!13492 List!43112 List!43112 List!43112 Rule!13492) Unit!62051)

(assert (=> b!4017571 (= lt!1424682 (lemmaMaxPrefixOutputsMaxPrefix!440 thiss!21717 rules!2999 (rule!9898 token!484) lt!1424639 lt!1424689 lt!1424680 (rule!9898 (_1!24199 (v!39633 lt!1424671)))))))

(declare-fun res!1634157 () Bool)

(assert (=> b!4017571 (= res!1634157 (not (matchR!5712 (regex!6846 (rule!9898 (_1!24199 (v!39633 lt!1424671)))) lt!1424680)))))

(assert (=> b!4017571 (=> (not res!1634157) (not e!2491845))))

(assert (=> b!4017571 e!2491845))

(declare-fun b!4017572 () Bool)

(declare-fun e!2491838 () Bool)

(assert (=> b!4017572 (= e!2491838 e!2491830)))

(declare-fun res!1634152 () Bool)

(assert (=> b!4017572 (=> (not res!1634152) (not e!2491830))))

(declare-fun lt!1424669 () List!43112)

(assert (=> b!4017572 (= res!1634152 (= lt!1424669 lt!1424673))))

(assert (=> b!4017572 (= lt!1424673 (++!11248 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43112)

(assert (=> b!4017572 (= lt!1424669 (++!11248 lt!1424639 newSuffixResult!27))))

(declare-fun b!4017573 () Bool)

(declare-fun e!2491828 () Bool)

(declare-fun tp!1221420 () Bool)

(assert (=> b!4017573 (= e!2491828 (and tp_is_empty!20473 tp!1221420))))

(declare-fun b!4017556 () Bool)

(declare-fun res!1634137 () Bool)

(assert (=> b!4017556 (=> (not res!1634137) (not e!2491844))))

(assert (=> b!4017556 (= res!1634137 (isPrefix!3933 newSuffix!27 suffix!1299))))

(declare-fun res!1634162 () Bool)

(assert (=> start!378420 (=> (not res!1634162) (not e!2491844))))

(assert (=> start!378420 (= res!1634162 ((_ is Lexer!6433) thiss!21717))))

(assert (=> start!378420 e!2491844))

(assert (=> start!378420 e!2491820))

(declare-fun e!2491821 () Bool)

(declare-fun inv!57424 (Token!12830) Bool)

(assert (=> start!378420 (and (inv!57424 token!484) e!2491821)))

(assert (=> start!378420 e!2491819))

(assert (=> start!378420 e!2491828))

(declare-fun e!2491826 () Bool)

(assert (=> start!378420 e!2491826))

(assert (=> start!378420 true))

(declare-fun e!2491841 () Bool)

(assert (=> start!378420 e!2491841))

(assert (=> start!378420 e!2491837))

(declare-fun b!4017574 () Bool)

(declare-fun e!2491835 () Bool)

(assert (=> b!4017574 (= e!2491835 (isPrefix!3933 lt!1424680 lt!1424673))))

(declare-fun b!4017575 () Bool)

(assert (=> b!4017575 (= e!2491842 e!2491823)))

(declare-fun res!1634154 () Bool)

(assert (=> b!4017575 (=> res!1634154 e!2491823)))

(assert (=> b!4017575 (= res!1634154 (not (= lt!1424667 lt!1424689)))))

(assert (=> b!4017575 (= lt!1424667 (++!11248 lt!1424639 lt!1424655))))

(assert (=> b!4017575 (= lt!1424655 (getSuffix!2358 lt!1424689 lt!1424639))))

(assert (=> b!4017575 e!2491831))

(declare-fun res!1634141 () Bool)

(assert (=> b!4017575 (=> (not res!1634141) (not e!2491831))))

(assert (=> b!4017575 (= res!1634141 (isPrefix!3933 lt!1424689 lt!1424689))))

(declare-fun lt!1424652 () Unit!62051)

(declare-fun lemmaIsPrefixRefl!2509 (List!43112 List!43112) Unit!62051)

(assert (=> b!4017575 (= lt!1424652 (lemmaIsPrefixRefl!2509 lt!1424689 lt!1424689))))

(declare-fun b!4017576 () Bool)

(declare-fun tp!1221421 () Bool)

(assert (=> b!4017576 (= e!2491841 (and e!2491818 tp!1221421))))

(declare-fun b!4017577 () Bool)

(declare-fun res!1634151 () Bool)

(assert (=> b!4017577 (=> (not res!1634151) (not e!2491844))))

(declare-fun isEmpty!25678 (List!43114) Bool)

(assert (=> b!4017577 (= res!1634151 (not (isEmpty!25678 rules!2999)))))

(declare-fun b!4017578 () Bool)

(declare-fun e!2491825 () Bool)

(assert (=> b!4017578 (= e!2491825 e!2491813)))

(declare-fun res!1634146 () Bool)

(assert (=> b!4017578 (=> res!1634146 e!2491813)))

(assert (=> b!4017578 (= res!1634146 (not (= lt!1424693 suffix!1299)))))

(assert (=> b!4017578 (= lt!1424693 (++!11248 newSuffix!27 lt!1424686))))

(assert (=> b!4017578 (= lt!1424686 (getSuffix!2358 suffix!1299 newSuffix!27))))

(declare-fun b!4017579 () Bool)

(declare-fun e!2491832 () Bool)

(assert (=> b!4017579 (= e!2491832 e!2491835)))

(declare-fun res!1634138 () Bool)

(assert (=> b!4017579 (=> res!1634138 e!2491835)))

(declare-fun lt!1424679 () Int)

(assert (=> b!4017579 (= res!1634138 (>= lt!1424679 lt!1424649))))

(declare-fun lt!1424684 () Unit!62051)

(assert (=> b!4017579 (= lt!1424684 e!2491829)))

(declare-fun c!694419 () Bool)

(assert (=> b!4017579 (= c!694419 (> lt!1424679 lt!1424649))))

(declare-fun lt!1424654 () List!43112)

(assert (=> b!4017579 (= (_2!24199 (v!39633 lt!1424671)) lt!1424654)))

(declare-fun lt!1424662 () Unit!62051)

(assert (=> b!4017579 (= lt!1424662 (lemmaSamePrefixThenSameSuffix!2104 lt!1424680 (_2!24199 (v!39633 lt!1424671)) lt!1424680 lt!1424654 lt!1424673))))

(declare-fun lt!1424687 () List!43112)

(assert (=> b!4017579 (isPrefix!3933 lt!1424680 lt!1424687)))

(declare-fun lt!1424646 () Unit!62051)

(assert (=> b!4017579 (= lt!1424646 (lemmaConcatTwoListThenFirstIsPrefix!2774 lt!1424680 lt!1424654))))

(declare-fun tp!1221422 () Bool)

(declare-fun b!4017580 () Bool)

(declare-fun inv!21 (TokenValue!7076) Bool)

(assert (=> b!4017580 (= e!2491821 (and (inv!21 (value!215745 token!484)) e!2491840 tp!1221422))))

(declare-fun b!4017581 () Bool)

(assert (=> b!4017581 (= e!2491815 (not e!2491846))))

(declare-fun res!1634147 () Bool)

(assert (=> b!4017581 (=> res!1634147 e!2491846)))

(assert (=> b!4017581 (= res!1634147 (not (= lt!1424670 lt!1424689)))))

(assert (=> b!4017581 (= lt!1424670 (++!11248 lt!1424639 suffixResult!105))))

(declare-fun lt!1424664 () Unit!62051)

(declare-fun lemmaInv!1061 (TokenValueInjection!13580) Unit!62051)

(assert (=> b!4017581 (= lt!1424664 (lemmaInv!1061 (transformation!6846 (rule!9898 token!484))))))

(declare-fun ruleValid!2778 (LexerInterface!6435 Rule!13492) Bool)

(assert (=> b!4017581 (ruleValid!2778 thiss!21717 (rule!9898 token!484))))

(declare-fun lt!1424675 () Unit!62051)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1852 (LexerInterface!6435 Rule!13492 List!43114) Unit!62051)

(assert (=> b!4017581 (= lt!1424675 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1852 thiss!21717 (rule!9898 token!484) rules!2999))))

(declare-fun b!4017582 () Bool)

(assert (=> b!4017582 (= e!2491814 e!2491832)))

(declare-fun res!1634145 () Bool)

(assert (=> b!4017582 (=> res!1634145 e!2491832)))

(assert (=> b!4017582 (= res!1634145 (not (= lt!1424687 lt!1424673)))))

(assert (=> b!4017582 (= lt!1424687 (++!11248 lt!1424680 lt!1424654))))

(assert (=> b!4017582 (= lt!1424654 (getSuffix!2358 lt!1424673 lt!1424680))))

(declare-fun b!4017583 () Bool)

(declare-fun res!1634160 () Bool)

(assert (=> b!4017583 (=> (not res!1634160) (not e!2491844))))

(assert (=> b!4017583 (= res!1634160 (>= (size!32144 suffix!1299) (size!32144 newSuffix!27)))))

(declare-fun b!4017584 () Bool)

(assert (=> b!4017584 (= e!2491844 e!2491838)))

(declare-fun res!1634148 () Bool)

(assert (=> b!4017584 (=> (not res!1634148) (not e!2491838))))

(declare-fun lt!1424663 () Int)

(assert (=> b!4017584 (= res!1634148 (>= lt!1424663 lt!1424649))))

(assert (=> b!4017584 (= lt!1424649 (size!32144 lt!1424639))))

(assert (=> b!4017584 (= lt!1424663 (size!32144 prefix!494))))

(declare-fun list!15982 (BalanceConc!25708) List!43112)

(declare-fun charsOf!4662 (Token!12830) BalanceConc!25708)

(assert (=> b!4017584 (= lt!1424639 (list!15982 (charsOf!4662 token!484)))))

(declare-fun b!4017585 () Bool)

(assert (=> b!4017585 (= e!2491831 (and (= (size!32143 token!484) lt!1424649) (= (originalCharacters!7446 token!484) lt!1424639)))))

(declare-fun b!4017586 () Bool)

(declare-fun tp!1221418 () Bool)

(assert (=> b!4017586 (= e!2491826 (and tp_is_empty!20473 tp!1221418))))

(declare-fun b!4017587 () Bool)

(assert (=> b!4017587 (= e!2491833 e!2491814)))

(declare-fun res!1634156 () Bool)

(assert (=> b!4017587 (=> res!1634156 e!2491814)))

(assert (=> b!4017587 (= res!1634156 (not (isPrefix!3933 lt!1424680 lt!1424689)))))

(assert (=> b!4017587 (isPrefix!3933 lt!1424680 lt!1424674)))

(declare-fun lt!1424688 () Unit!62051)

(assert (=> b!4017587 (= lt!1424688 (lemmaPrefixStaysPrefixWhenAddingToSuffix!746 lt!1424680 lt!1424673 lt!1424686))))

(declare-fun b!4017588 () Bool)

(assert (=> b!4017588 (= e!2491834 e!2491825)))

(declare-fun res!1634159 () Bool)

(assert (=> b!4017588 (=> res!1634159 e!2491825)))

(declare-fun lt!1424676 () Option!9260)

(assert (=> b!4017588 (= res!1634159 (not (= lt!1424676 (Some!9259 (v!39633 lt!1424671)))))))

(assert (=> b!4017588 (isPrefix!3933 lt!1424680 (++!11248 lt!1424680 newSuffixResult!27))))

(declare-fun lt!1424692 () Unit!62051)

(assert (=> b!4017588 (= lt!1424692 (lemmaConcatTwoListThenFirstIsPrefix!2774 lt!1424680 newSuffixResult!27))))

(assert (=> b!4017588 (isPrefix!3933 lt!1424680 lt!1424653)))

(assert (=> b!4017588 (= lt!1424653 (++!11248 lt!1424680 (_2!24199 (v!39633 lt!1424671))))))

(declare-fun lt!1424656 () Unit!62051)

(assert (=> b!4017588 (= lt!1424656 (lemmaConcatTwoListThenFirstIsPrefix!2774 lt!1424680 (_2!24199 (v!39633 lt!1424671))))))

(declare-fun lt!1424691 () TokenValue!7076)

(assert (=> b!4017588 (= lt!1424676 (Some!9259 (tuple2!42131 (Token!12831 lt!1424691 (rule!9898 (_1!24199 (v!39633 lt!1424671))) lt!1424679 lt!1424680) (_2!24199 (v!39633 lt!1424671)))))))

(assert (=> b!4017588 (= lt!1424676 (maxPrefixOneRule!2753 thiss!21717 (rule!9898 (_1!24199 (v!39633 lt!1424671))) lt!1424673))))

(assert (=> b!4017588 (= lt!1424679 (size!32144 lt!1424680))))

(assert (=> b!4017588 (= lt!1424691 (apply!10043 (transformation!6846 (rule!9898 (_1!24199 (v!39633 lt!1424671)))) (seqFromList!5071 lt!1424680)))))

(declare-fun lt!1424672 () Unit!62051)

(assert (=> b!4017588 (= lt!1424672 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1571 thiss!21717 rules!2999 lt!1424680 lt!1424673 (_2!24199 (v!39633 lt!1424671)) (rule!9898 (_1!24199 (v!39633 lt!1424671)))))))

(assert (=> b!4017588 (= lt!1424680 (list!15982 (charsOf!4662 (_1!24199 (v!39633 lt!1424671)))))))

(declare-fun lt!1424690 () Unit!62051)

(assert (=> b!4017588 (= lt!1424690 (lemmaInv!1061 (transformation!6846 (rule!9898 (_1!24199 (v!39633 lt!1424671))))))))

(assert (=> b!4017588 (ruleValid!2778 thiss!21717 (rule!9898 (_1!24199 (v!39633 lt!1424671))))))

(declare-fun lt!1424648 () Unit!62051)

(assert (=> b!4017588 (= lt!1424648 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1852 thiss!21717 (rule!9898 (_1!24199 (v!39633 lt!1424671))) rules!2999))))

(declare-fun lt!1424668 () Unit!62051)

(declare-fun lemmaCharactersSize!1405 (Token!12830) Unit!62051)

(assert (=> b!4017588 (= lt!1424668 (lemmaCharactersSize!1405 token!484))))

(declare-fun lt!1424645 () Unit!62051)

(assert (=> b!4017588 (= lt!1424645 (lemmaCharactersSize!1405 (_1!24199 (v!39633 lt!1424671))))))

(assert (=> b!4017589 (= e!2491822 (and tp!1221423 tp!1221428))))

(declare-fun b!4017590 () Bool)

(declare-fun Unit!62055 () Unit!62051)

(assert (=> b!4017590 (= e!2491829 Unit!62055)))

(assert (= (and start!378420 res!1634162) b!4017577))

(assert (= (and b!4017577 res!1634151) b!4017558))

(assert (= (and b!4017558 res!1634163) b!4017583))

(assert (= (and b!4017583 res!1634160) b!4017556))

(assert (= (and b!4017556 res!1634137) b!4017584))

(assert (= (and b!4017584 res!1634148) b!4017572))

(assert (= (and b!4017572 res!1634152) b!4017570))

(assert (= (and b!4017570 res!1634144) b!4017581))

(assert (= (and b!4017581 (not res!1634147)) b!4017569))

(assert (= (and b!4017569 (not res!1634158)) b!4017565))

(assert (= (and b!4017565 (not res!1634153)) b!4017552))

(assert (= (and b!4017552 (not res!1634161)) b!4017557))

(assert (= (and b!4017557 (not res!1634143)) b!4017553))

(assert (= (and b!4017553 (not res!1634140)) b!4017575))

(assert (= (and b!4017575 res!1634141) b!4017566))

(assert (= (and b!4017566 res!1634150) b!4017564))

(assert (= (and b!4017564 res!1634142) b!4017585))

(assert (= (and b!4017575 (not res!1634154)) b!4017554))

(assert (= (and b!4017554 (not res!1634149)) b!4017588))

(assert (= (and b!4017588 (not res!1634159)) b!4017578))

(assert (= (and b!4017578 (not res!1634146)) b!4017561))

(assert (= (and b!4017561 (not res!1634139)) b!4017587))

(assert (= (and b!4017587 (not res!1634156)) b!4017555))

(assert (= (and b!4017555 (not res!1634155)) b!4017582))

(assert (= (and b!4017582 (not res!1634145)) b!4017579))

(assert (= (and b!4017579 c!694419) b!4017571))

(assert (= (and b!4017579 (not c!694419)) b!4017590))

(assert (= (and b!4017571 res!1634157) b!4017563))

(assert (= (and b!4017579 (not res!1634138)) b!4017574))

(assert (= (and start!378420 ((_ is Cons!42988) prefix!494)) b!4017560))

(assert (= b!4017559 b!4017551))

(assert (= b!4017580 b!4017559))

(assert (= start!378420 b!4017580))

(assert (= (and start!378420 ((_ is Cons!42988) suffixResult!105)) b!4017562))

(assert (= (and start!378420 ((_ is Cons!42988) suffix!1299)) b!4017573))

(assert (= (and start!378420 ((_ is Cons!42988) newSuffix!27)) b!4017586))

(assert (= b!4017568 b!4017589))

(assert (= b!4017576 b!4017568))

(assert (= (and start!378420 ((_ is Cons!42990) rules!2999)) b!4017576))

(assert (= (and start!378420 ((_ is Cons!42988) newSuffixResult!27)) b!4017567))

(declare-fun m!4606329 () Bool)

(assert (=> b!4017581 m!4606329))

(declare-fun m!4606331 () Bool)

(assert (=> b!4017581 m!4606331))

(declare-fun m!4606333 () Bool)

(assert (=> b!4017581 m!4606333))

(declare-fun m!4606335 () Bool)

(assert (=> b!4017581 m!4606335))

(declare-fun m!4606337 () Bool)

(assert (=> start!378420 m!4606337))

(declare-fun m!4606339 () Bool)

(assert (=> b!4017579 m!4606339))

(declare-fun m!4606341 () Bool)

(assert (=> b!4017579 m!4606341))

(declare-fun m!4606343 () Bool)

(assert (=> b!4017579 m!4606343))

(declare-fun m!4606345 () Bool)

(assert (=> b!4017587 m!4606345))

(declare-fun m!4606347 () Bool)

(assert (=> b!4017587 m!4606347))

(declare-fun m!4606349 () Bool)

(assert (=> b!4017587 m!4606349))

(declare-fun m!4606351 () Bool)

(assert (=> b!4017569 m!4606351))

(declare-fun m!4606353 () Bool)

(assert (=> b!4017569 m!4606353))

(declare-fun m!4606355 () Bool)

(assert (=> b!4017569 m!4606355))

(declare-fun m!4606357 () Bool)

(assert (=> b!4017569 m!4606357))

(declare-fun m!4606359 () Bool)

(assert (=> b!4017569 m!4606359))

(declare-fun m!4606361 () Bool)

(assert (=> b!4017574 m!4606361))

(declare-fun m!4606363 () Bool)

(assert (=> b!4017578 m!4606363))

(declare-fun m!4606365 () Bool)

(assert (=> b!4017578 m!4606365))

(declare-fun m!4606367 () Bool)

(assert (=> b!4017584 m!4606367))

(declare-fun m!4606369 () Bool)

(assert (=> b!4017584 m!4606369))

(declare-fun m!4606371 () Bool)

(assert (=> b!4017584 m!4606371))

(assert (=> b!4017584 m!4606371))

(declare-fun m!4606373 () Bool)

(assert (=> b!4017584 m!4606373))

(declare-fun m!4606375 () Bool)

(assert (=> b!4017568 m!4606375))

(declare-fun m!4606377 () Bool)

(assert (=> b!4017568 m!4606377))

(declare-fun m!4606379 () Bool)

(assert (=> b!4017583 m!4606379))

(declare-fun m!4606381 () Bool)

(assert (=> b!4017583 m!4606381))

(declare-fun m!4606383 () Bool)

(assert (=> b!4017572 m!4606383))

(declare-fun m!4606385 () Bool)

(assert (=> b!4017572 m!4606385))

(declare-fun m!4606387 () Bool)

(assert (=> b!4017552 m!4606387))

(declare-fun m!4606389 () Bool)

(assert (=> b!4017552 m!4606389))

(declare-fun m!4606391 () Bool)

(assert (=> b!4017552 m!4606391))

(declare-fun m!4606393 () Bool)

(assert (=> b!4017552 m!4606393))

(declare-fun m!4606395 () Bool)

(assert (=> b!4017561 m!4606395))

(declare-fun m!4606397 () Bool)

(assert (=> b!4017561 m!4606397))

(declare-fun m!4606399 () Bool)

(assert (=> b!4017561 m!4606399))

(declare-fun m!4606401 () Bool)

(assert (=> b!4017588 m!4606401))

(declare-fun m!4606403 () Bool)

(assert (=> b!4017588 m!4606403))

(declare-fun m!4606405 () Bool)

(assert (=> b!4017588 m!4606405))

(declare-fun m!4606407 () Bool)

(assert (=> b!4017588 m!4606407))

(declare-fun m!4606409 () Bool)

(assert (=> b!4017588 m!4606409))

(declare-fun m!4606411 () Bool)

(assert (=> b!4017588 m!4606411))

(assert (=> b!4017588 m!4606407))

(declare-fun m!4606413 () Bool)

(assert (=> b!4017588 m!4606413))

(declare-fun m!4606415 () Bool)

(assert (=> b!4017588 m!4606415))

(declare-fun m!4606417 () Bool)

(assert (=> b!4017588 m!4606417))

(declare-fun m!4606419 () Bool)

(assert (=> b!4017588 m!4606419))

(declare-fun m!4606421 () Bool)

(assert (=> b!4017588 m!4606421))

(declare-fun m!4606423 () Bool)

(assert (=> b!4017588 m!4606423))

(declare-fun m!4606425 () Bool)

(assert (=> b!4017588 m!4606425))

(declare-fun m!4606427 () Bool)

(assert (=> b!4017588 m!4606427))

(declare-fun m!4606429 () Bool)

(assert (=> b!4017588 m!4606429))

(declare-fun m!4606431 () Bool)

(assert (=> b!4017588 m!4606431))

(assert (=> b!4017588 m!4606401))

(declare-fun m!4606433 () Bool)

(assert (=> b!4017588 m!4606433))

(assert (=> b!4017588 m!4606417))

(declare-fun m!4606435 () Bool)

(assert (=> b!4017588 m!4606435))

(declare-fun m!4606437 () Bool)

(assert (=> b!4017577 m!4606437))

(declare-fun m!4606439 () Bool)

(assert (=> b!4017571 m!4606439))

(declare-fun m!4606441 () Bool)

(assert (=> b!4017571 m!4606441))

(declare-fun m!4606443 () Bool)

(assert (=> b!4017565 m!4606443))

(declare-fun m!4606445 () Bool)

(assert (=> b!4017565 m!4606445))

(declare-fun m!4606447 () Bool)

(assert (=> b!4017565 m!4606447))

(declare-fun m!4606449 () Bool)

(assert (=> b!4017565 m!4606449))

(declare-fun m!4606451 () Bool)

(assert (=> b!4017554 m!4606451))

(declare-fun m!4606453 () Bool)

(assert (=> b!4017554 m!4606453))

(declare-fun m!4606455 () Bool)

(assert (=> b!4017554 m!4606455))

(declare-fun m!4606457 () Bool)

(assert (=> b!4017554 m!4606457))

(declare-fun m!4606459 () Bool)

(assert (=> b!4017582 m!4606459))

(declare-fun m!4606461 () Bool)

(assert (=> b!4017582 m!4606461))

(declare-fun m!4606463 () Bool)

(assert (=> b!4017557 m!4606463))

(assert (=> b!4017557 m!4606463))

(declare-fun m!4606465 () Bool)

(assert (=> b!4017557 m!4606465))

(declare-fun m!4606467 () Bool)

(assert (=> b!4017557 m!4606467))

(declare-fun m!4606469 () Bool)

(assert (=> b!4017557 m!4606469))

(declare-fun m!4606471 () Bool)

(assert (=> b!4017557 m!4606471))

(declare-fun m!4606473 () Bool)

(assert (=> b!4017557 m!4606473))

(declare-fun m!4606475 () Bool)

(assert (=> b!4017557 m!4606475))

(declare-fun m!4606477 () Bool)

(assert (=> b!4017556 m!4606477))

(declare-fun m!4606479 () Bool)

(assert (=> b!4017553 m!4606479))

(declare-fun m!4606481 () Bool)

(assert (=> b!4017553 m!4606481))

(declare-fun m!4606483 () Bool)

(assert (=> b!4017553 m!4606483))

(declare-fun m!4606485 () Bool)

(assert (=> b!4017553 m!4606485))

(declare-fun m!4606487 () Bool)

(assert (=> b!4017580 m!4606487))

(declare-fun m!4606489 () Bool)

(assert (=> b!4017575 m!4606489))

(declare-fun m!4606491 () Bool)

(assert (=> b!4017575 m!4606491))

(declare-fun m!4606493 () Bool)

(assert (=> b!4017575 m!4606493))

(declare-fun m!4606495 () Bool)

(assert (=> b!4017575 m!4606495))

(declare-fun m!4606497 () Bool)

(assert (=> b!4017559 m!4606497))

(declare-fun m!4606499 () Bool)

(assert (=> b!4017559 m!4606499))

(declare-fun m!4606501 () Bool)

(assert (=> b!4017558 m!4606501))

(declare-fun m!4606503 () Bool)

(assert (=> b!4017570 m!4606503))

(declare-fun m!4606505 () Bool)

(assert (=> b!4017570 m!4606505))

(declare-fun m!4606507 () Bool)

(assert (=> b!4017564 m!4606507))

(check-sat b_and!308647 (not b!4017579) (not b!4017581) (not b_next!112453) (not b!4017578) (not b!4017558) (not start!378420) (not b!4017556) (not b!4017576) (not b!4017559) (not b_next!112451) (not b_next!112455) (not b!4017567) b_and!308649 (not b!4017552) (not b!4017570) (not b!4017568) (not b!4017560) (not b!4017557) (not b!4017575) b_and!308651 tp_is_empty!20473 (not b!4017584) (not b!4017564) (not b!4017574) (not b!4017573) (not b!4017569) (not b!4017553) (not b!4017572) (not b!4017577) (not b!4017571) (not b!4017588) (not b!4017554) (not b_next!112449) (not b!4017561) (not b!4017583) (not b!4017565) (not b!4017586) (not b!4017580) b_and!308653 (not b!4017582) (not b!4017587) (not b!4017562))
(check-sat b_and!308647 b_and!308651 (not b_next!112453) (not b_next!112449) (not b_next!112451) b_and!308653 (not b_next!112455) b_and!308649)

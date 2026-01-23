; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400614 () Bool)

(assert start!400614)

(declare-fun b!4195740 () Bool)

(declare-fun b_free!122255 () Bool)

(declare-fun b_next!122959 () Bool)

(assert (=> b!4195740 (= b_free!122255 (not b_next!122959))))

(declare-fun tp!1281833 () Bool)

(declare-fun b_and!329069 () Bool)

(assert (=> b!4195740 (= tp!1281833 b_and!329069)))

(declare-fun b_free!122257 () Bool)

(declare-fun b_next!122961 () Bool)

(assert (=> b!4195740 (= b_free!122257 (not b_next!122961))))

(declare-fun tp!1281827 () Bool)

(declare-fun b_and!329071 () Bool)

(assert (=> b!4195740 (= tp!1281827 b_and!329071)))

(declare-fun b!4195731 () Bool)

(declare-fun b_free!122259 () Bool)

(declare-fun b_next!122963 () Bool)

(assert (=> b!4195731 (= b_free!122259 (not b_next!122963))))

(declare-fun tp!1281825 () Bool)

(declare-fun b_and!329073 () Bool)

(assert (=> b!4195731 (= tp!1281825 b_and!329073)))

(declare-fun b_free!122261 () Bool)

(declare-fun b_next!122965 () Bool)

(assert (=> b!4195731 (= b_free!122261 (not b_next!122965))))

(declare-fun tp!1281828 () Bool)

(declare-fun b_and!329075 () Bool)

(assert (=> b!4195731 (= tp!1281828 b_and!329075)))

(declare-fun b!4195734 () Bool)

(declare-fun b_free!122263 () Bool)

(declare-fun b_next!122967 () Bool)

(assert (=> b!4195734 (= b_free!122263 (not b_next!122967))))

(declare-fun tp!1281835 () Bool)

(declare-fun b_and!329077 () Bool)

(assert (=> b!4195734 (= tp!1281835 b_and!329077)))

(declare-fun b_free!122265 () Bool)

(declare-fun b_next!122969 () Bool)

(assert (=> b!4195734 (= b_free!122265 (not b_next!122969))))

(declare-fun tp!1281830 () Bool)

(declare-fun b_and!329079 () Bool)

(assert (=> b!4195734 (= tp!1281830 b_and!329079)))

(declare-fun b!4195712 () Bool)

(declare-fun e!2604470 () Bool)

(declare-fun tp_is_empty!22149 () Bool)

(declare-fun tp!1281832 () Bool)

(assert (=> b!4195712 (= e!2604470 (and tp_is_empty!22149 tp!1281832))))

(declare-fun b!4195713 () Bool)

(declare-fun e!2604472 () Bool)

(declare-fun e!2604487 () Bool)

(declare-fun tp!1281831 () Bool)

(assert (=> b!4195713 (= e!2604472 (and e!2604487 tp!1281831))))

(declare-fun b!4195714 () Bool)

(declare-fun e!2604479 () Bool)

(declare-fun e!2604486 () Bool)

(assert (=> b!4195714 (= e!2604479 e!2604486)))

(declare-fun res!1722440 () Bool)

(assert (=> b!4195714 (=> res!1722440 e!2604486)))

(declare-datatypes ((C!25376 0))(
  ( (C!25377 (val!14850 Int)) )
))
(declare-datatypes ((List!46207 0))(
  ( (Nil!46083) (Cons!46083 (h!51503 C!25376) (t!346470 List!46207)) )
))
(declare-fun lt!1494650 () List!46207)

(declare-fun pBis!107 () List!46207)

(assert (=> b!4195714 (= res!1722440 (= lt!1494650 pBis!107))))

(declare-datatypes ((List!46208 0))(
  ( (Nil!46084) (Cons!46084 (h!51504 (_ BitVec 16)) (t!346471 List!46208)) )
))
(declare-datatypes ((TokenValue!7918 0))(
  ( (FloatLiteralValue!15836 (text!55871 List!46208)) (TokenValueExt!7917 (__x!28057 Int)) (Broken!39590 (value!239614 List!46208)) (Object!8041) (End!7918) (Def!7918) (Underscore!7918) (Match!7918) (Else!7918) (Error!7918) (Case!7918) (If!7918) (Extends!7918) (Abstract!7918) (Class!7918) (Val!7918) (DelimiterValue!15836 (del!7978 List!46208)) (KeywordValue!7924 (value!239615 List!46208)) (CommentValue!15836 (value!239616 List!46208)) (WhitespaceValue!15836 (value!239617 List!46208)) (IndentationValue!7918 (value!239618 List!46208)) (String!53455) (Int32!7918) (Broken!39591 (value!239619 List!46208)) (Boolean!7919) (Unit!65180) (OperatorValue!7921 (op!7978 List!46208)) (IdentifierValue!15836 (value!239620 List!46208)) (IdentifierValue!15837 (value!239621 List!46208)) (WhitespaceValue!15837 (value!239622 List!46208)) (True!15836) (False!15836) (Broken!39592 (value!239623 List!46208)) (Broken!39593 (value!239624 List!46208)) (True!15837) (RightBrace!7918) (RightBracket!7918) (Colon!7918) (Null!7918) (Comma!7918) (LeftBracket!7918) (False!15837) (LeftBrace!7918) (ImaginaryLiteralValue!7918 (text!55872 List!46208)) (StringLiteralValue!23754 (value!239625 List!46208)) (EOFValue!7918 (value!239626 List!46208)) (IdentValue!7918 (value!239627 List!46208)) (DelimiterValue!15837 (value!239628 List!46208)) (DedentValue!7918 (value!239629 List!46208)) (NewLineValue!7918 (value!239630 List!46208)) (IntegerValue!23754 (value!239631 (_ BitVec 32)) (text!55873 List!46208)) (IntegerValue!23755 (value!239632 Int) (text!55874 List!46208)) (Times!7918) (Or!7918) (Equal!7918) (Minus!7918) (Broken!39594 (value!239633 List!46208)) (And!7918) (Div!7918) (LessEqual!7918) (Mod!7918) (Concat!20511) (Not!7918) (Plus!7918) (SpaceValue!7918 (value!239634 List!46208)) (IntegerValue!23756 (value!239635 Int) (text!55875 List!46208)) (StringLiteralValue!23755 (text!55876 List!46208)) (FloatLiteralValue!15837 (text!55877 List!46208)) (BytesLiteralValue!7918 (value!239636 List!46208)) (CommentValue!15837 (value!239637 List!46208)) (StringLiteralValue!23756 (value!239638 List!46208)) (ErrorTokenValue!7918 (msg!7979 List!46208)) )
))
(declare-datatypes ((Regex!12593 0))(
  ( (ElementMatch!12593 (c!715718 C!25376)) (Concat!20512 (regOne!25698 Regex!12593) (regTwo!25698 Regex!12593)) (EmptyExpr!12593) (Star!12593 (reg!12922 Regex!12593)) (EmptyLang!12593) (Union!12593 (regOne!25699 Regex!12593) (regTwo!25699 Regex!12593)) )
))
(declare-datatypes ((String!53456 0))(
  ( (String!53457 (value!239639 String)) )
))
(declare-datatypes ((IArray!27803 0))(
  ( (IArray!27804 (innerList!13959 List!46207)) )
))
(declare-datatypes ((Conc!13899 0))(
  ( (Node!13899 (left!34329 Conc!13899) (right!34659 Conc!13899) (csize!28028 Int) (cheight!14110 Int)) (Leaf!21486 (xs!17205 IArray!27803) (csize!28029 Int)) (Empty!13899) )
))
(declare-datatypes ((BalanceConc!27392 0))(
  ( (BalanceConc!27393 (c!715719 Conc!13899)) )
))
(declare-datatypes ((TokenValueInjection!15264 0))(
  ( (TokenValueInjection!15265 (toValue!10388 Int) (toChars!10247 Int)) )
))
(declare-datatypes ((Rule!15176 0))(
  ( (Rule!15177 (regex!7688 Regex!12593) (tag!8552 String!53456) (isSeparator!7688 Bool) (transformation!7688 TokenValueInjection!15264)) )
))
(declare-datatypes ((Token!14090 0))(
  ( (Token!14091 (value!239640 TokenValue!7918) (rule!10780 Rule!15176) (size!33871 Int) (originalCharacters!8076 List!46207)) )
))
(declare-datatypes ((tuple2!43874 0))(
  ( (tuple2!43875 (_1!25071 Token!14090) (_2!25071 List!46207)) )
))
(declare-fun lt!1494644 () tuple2!43874)

(declare-fun isPrefix!4545 (List!46207 List!46207) Bool)

(declare-fun ++!11760 (List!46207 List!46207) List!46207)

(assert (=> b!4195714 (isPrefix!4545 lt!1494650 (++!11760 lt!1494650 (_2!25071 lt!1494644)))))

(declare-datatypes ((Unit!65181 0))(
  ( (Unit!65182) )
))
(declare-fun lt!1494647 () Unit!65181)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3042 (List!46207 List!46207) Unit!65181)

(assert (=> b!4195714 (= lt!1494647 (lemmaConcatTwoListThenFirstIsPrefix!3042 lt!1494650 (_2!25071 lt!1494644)))))

(declare-fun lt!1494640 () BalanceConc!27392)

(declare-fun list!16658 (BalanceConc!27392) List!46207)

(assert (=> b!4195714 (= lt!1494650 (list!16658 lt!1494640))))

(declare-fun charsOf!5123 (Token!14090) BalanceConc!27392)

(assert (=> b!4195714 (= lt!1494640 (charsOf!5123 (_1!25071 lt!1494644)))))

(declare-datatypes ((Option!9882 0))(
  ( (None!9881) (Some!9881 (v!40721 tuple2!43874)) )
))
(declare-fun lt!1494641 () Option!9882)

(declare-fun get!14991 (Option!9882) tuple2!43874)

(assert (=> b!4195714 (= lt!1494644 (get!14991 lt!1494641))))

(declare-fun b!4195715 () Bool)

(declare-fun res!1722438 () Bool)

(declare-fun e!2604473 () Bool)

(assert (=> b!4195715 (=> (not res!1722438) (not e!2604473))))

(declare-fun p!2959 () List!46207)

(declare-fun input!3342 () List!46207)

(assert (=> b!4195715 (= res!1722438 (isPrefix!4545 p!2959 input!3342))))

(declare-fun b!4195716 () Bool)

(declare-fun res!1722429 () Bool)

(assert (=> b!4195716 (=> (not res!1722429) (not e!2604473))))

(declare-datatypes ((List!46209 0))(
  ( (Nil!46085) (Cons!46085 (h!51505 Rule!15176) (t!346472 List!46209)) )
))
(declare-fun rules!3843 () List!46209)

(declare-fun rBis!167 () Rule!15176)

(declare-fun contains!9499 (List!46209 Rule!15176) Bool)

(assert (=> b!4195716 (= res!1722429 (contains!9499 rules!3843 rBis!167))))

(declare-fun b!4195717 () Bool)

(declare-fun e!2604484 () Bool)

(declare-fun tp!1281829 () Bool)

(assert (=> b!4195717 (= e!2604484 (and tp_is_empty!22149 tp!1281829))))

(declare-fun b!4195718 () Bool)

(declare-fun e!2604474 () Bool)

(assert (=> b!4195718 (= e!2604474 e!2604479)))

(declare-fun res!1722437 () Bool)

(assert (=> b!4195718 (=> res!1722437 e!2604479)))

(declare-fun isEmpty!27290 (Option!9882) Bool)

(assert (=> b!4195718 (= res!1722437 (isEmpty!27290 lt!1494641))))

(declare-datatypes ((LexerInterface!7281 0))(
  ( (LexerInterfaceExt!7278 (__x!28058 Int)) (Lexer!7279) )
))
(declare-fun thiss!25986 () LexerInterface!7281)

(declare-fun maxPrefixOneRule!3290 (LexerInterface!7281 Rule!15176 List!46207) Option!9882)

(assert (=> b!4195718 (= lt!1494641 (maxPrefixOneRule!3290 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1494645 () Unit!65181)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2412 (LexerInterface!7281 Rule!15176 List!46209) Unit!65181)

(assert (=> b!4195718 (= lt!1494645 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2412 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1494655 () Int)

(declare-fun size!33872 (List!46207) Int)

(assert (=> b!4195718 (<= lt!1494655 (size!33872 input!3342))))

(declare-fun lt!1494649 () Unit!65181)

(declare-fun lemmaIsPrefixThenSmallerEqSize!575 (List!46207 List!46207) Unit!65181)

(assert (=> b!4195718 (= lt!1494649 (lemmaIsPrefixThenSmallerEqSize!575 pBis!107 input!3342))))

(declare-fun b!4195719 () Bool)

(declare-fun res!1722431 () Bool)

(assert (=> b!4195719 (=> (not res!1722431) (not e!2604473))))

(declare-fun r!4142 () Rule!15176)

(assert (=> b!4195719 (= res!1722431 (contains!9499 rules!3843 r!4142))))

(declare-fun b!4195721 () Bool)

(declare-fun e!2604488 () Bool)

(declare-fun e!2604476 () Bool)

(assert (=> b!4195721 (= e!2604488 e!2604476)))

(declare-fun res!1722433 () Bool)

(assert (=> b!4195721 (=> res!1722433 e!2604476)))

(declare-fun lt!1494648 () Int)

(assert (=> b!4195721 (= res!1722433 (>= lt!1494655 lt!1494648))))

(declare-fun lt!1494651 () Unit!65181)

(declare-fun e!2604468 () Unit!65181)

(assert (=> b!4195721 (= lt!1494651 e!2604468)))

(declare-fun c!715717 () Bool)

(assert (=> b!4195721 (= c!715717 (= lt!1494655 (size!33872 lt!1494650)))))

(declare-fun b!4195722 () Bool)

(assert (=> b!4195722 (= e!2604486 e!2604488)))

(declare-fun res!1722430 () Bool)

(assert (=> b!4195722 (=> res!1722430 e!2604488)))

(assert (=> b!4195722 (= res!1722430 (< lt!1494648 lt!1494655))))

(declare-fun size!33873 (BalanceConc!27392) Int)

(assert (=> b!4195722 (= lt!1494648 (size!33873 lt!1494640))))

(declare-fun b!4195723 () Bool)

(declare-fun res!1722441 () Bool)

(assert (=> b!4195723 (=> (not res!1722441) (not e!2604473))))

(declare-fun ruleValid!3406 (LexerInterface!7281 Rule!15176) Bool)

(assert (=> b!4195723 (= res!1722441 (ruleValid!3406 thiss!25986 r!4142))))

(declare-fun b!4195724 () Bool)

(declare-fun res!1722432 () Bool)

(assert (=> b!4195724 (=> (not res!1722432) (not e!2604473))))

(declare-fun matchR!6332 (Regex!12593 List!46207) Bool)

(assert (=> b!4195724 (= res!1722432 (matchR!6332 (regex!7688 r!4142) p!2959))))

(declare-fun b!4195725 () Bool)

(declare-fun res!1722439 () Bool)

(assert (=> b!4195725 (=> (not res!1722439) (not e!2604473))))

(declare-fun validRegex!5710 (Regex!12593) Bool)

(assert (=> b!4195725 (= res!1722439 (validRegex!5710 (regex!7688 r!4142)))))

(declare-fun e!2604480 () Bool)

(declare-fun b!4195726 () Bool)

(declare-fun tp!1281836 () Bool)

(declare-fun e!2604477 () Bool)

(declare-fun inv!60640 (String!53456) Bool)

(declare-fun inv!60642 (TokenValueInjection!15264) Bool)

(assert (=> b!4195726 (= e!2604477 (and tp!1281836 (inv!60640 (tag!8552 rBis!167)) (inv!60642 (transformation!7688 rBis!167)) e!2604480))))

(declare-fun b!4195727 () Bool)

(declare-fun e!2604475 () Bool)

(assert (=> b!4195727 (= e!2604475 e!2604474)))

(declare-fun res!1722434 () Bool)

(assert (=> b!4195727 (=> res!1722434 e!2604474)))

(declare-fun lt!1494646 () Int)

(assert (=> b!4195727 (= res!1722434 (<= lt!1494655 lt!1494646))))

(assert (=> b!4195727 (= lt!1494655 (size!33872 pBis!107))))

(declare-fun b!4195728 () Bool)

(declare-fun res!1722443 () Bool)

(assert (=> b!4195728 (=> res!1722443 e!2604476)))

(declare-fun lt!1494643 () List!46207)

(assert (=> b!4195728 (= res!1722443 (not (= (++!11760 p!2959 lt!1494643) input!3342)))))

(declare-fun b!4195729 () Bool)

(declare-fun Unit!65183 () Unit!65181)

(assert (=> b!4195729 (= e!2604468 Unit!65183)))

(declare-fun b!4195730 () Bool)

(declare-fun res!1722442 () Bool)

(assert (=> b!4195730 (=> res!1722442 e!2604474)))

(declare-fun lt!1494652 () Option!9882)

(declare-fun maxPrefix!4329 (LexerInterface!7281 List!46209 List!46207) Option!9882)

(assert (=> b!4195730 (= res!1722442 (not (= (maxPrefix!4329 thiss!25986 rules!3843 input!3342) lt!1494652)))))

(declare-fun e!2604471 () Bool)

(assert (=> b!4195731 (= e!2604471 (and tp!1281825 tp!1281828))))

(declare-fun tp!1281824 () Bool)

(declare-fun e!2604481 () Bool)

(declare-fun e!2604485 () Bool)

(declare-fun b!4195732 () Bool)

(assert (=> b!4195732 (= e!2604481 (and tp!1281824 (inv!60640 (tag!8552 r!4142)) (inv!60642 (transformation!7688 r!4142)) e!2604485))))

(declare-fun b!4195733 () Bool)

(assert (=> b!4195733 (= e!2604473 (not e!2604475))))

(declare-fun res!1722426 () Bool)

(assert (=> b!4195733 (=> res!1722426 e!2604475)))

(assert (=> b!4195733 (= res!1722426 (not (= (maxPrefixOneRule!3290 thiss!25986 r!4142 input!3342) lt!1494652)))))

(declare-fun lt!1494642 () TokenValue!7918)

(assert (=> b!4195733 (= lt!1494652 (Some!9881 (tuple2!43875 (Token!14091 lt!1494642 r!4142 lt!1494646 p!2959) lt!1494643)))))

(declare-fun getSuffix!2838 (List!46207 List!46207) List!46207)

(assert (=> b!4195733 (= lt!1494643 (getSuffix!2838 input!3342 p!2959))))

(assert (=> b!4195733 (= lt!1494646 (size!33872 p!2959))))

(declare-fun lt!1494653 () BalanceConc!27392)

(declare-fun apply!10653 (TokenValueInjection!15264 BalanceConc!27392) TokenValue!7918)

(assert (=> b!4195733 (= lt!1494642 (apply!10653 (transformation!7688 r!4142) lt!1494653))))

(assert (=> b!4195733 (isPrefix!4545 input!3342 input!3342)))

(declare-fun lt!1494639 () Unit!65181)

(declare-fun lemmaIsPrefixRefl!2974 (List!46207 List!46207) Unit!65181)

(assert (=> b!4195733 (= lt!1494639 (lemmaIsPrefixRefl!2974 input!3342 input!3342))))

(declare-fun lt!1494656 () Unit!65181)

(declare-fun lemmaSemiInverse!2454 (TokenValueInjection!15264 BalanceConc!27392) Unit!65181)

(assert (=> b!4195733 (= lt!1494656 (lemmaSemiInverse!2454 (transformation!7688 r!4142) lt!1494653))))

(declare-fun seqFromList!5713 (List!46207) BalanceConc!27392)

(assert (=> b!4195733 (= lt!1494653 (seqFromList!5713 p!2959))))

(assert (=> b!4195734 (= e!2604485 (and tp!1281835 tp!1281830))))

(declare-fun b!4195720 () Bool)

(declare-fun res!1722428 () Bool)

(assert (=> b!4195720 (=> (not res!1722428) (not e!2604473))))

(declare-fun rulesInvariant!6494 (LexerInterface!7281 List!46209) Bool)

(assert (=> b!4195720 (= res!1722428 (rulesInvariant!6494 thiss!25986 rules!3843))))

(declare-fun res!1722436 () Bool)

(assert (=> start!400614 (=> (not res!1722436) (not e!2604473))))

(get-info :version)

(assert (=> start!400614 (= res!1722436 ((_ is Lexer!7279) thiss!25986))))

(assert (=> start!400614 e!2604473))

(assert (=> start!400614 true))

(assert (=> start!400614 e!2604477))

(assert (=> start!400614 e!2604481))

(assert (=> start!400614 e!2604472))

(assert (=> start!400614 e!2604470))

(declare-fun e!2604469 () Bool)

(assert (=> start!400614 e!2604469))

(assert (=> start!400614 e!2604484))

(declare-fun b!4195735 () Bool)

(declare-fun res!1722435 () Bool)

(assert (=> b!4195735 (=> (not res!1722435) (not e!2604473))))

(declare-fun isEmpty!27291 (List!46209) Bool)

(assert (=> b!4195735 (= res!1722435 (not (isEmpty!27291 rules!3843)))))

(declare-fun b!4195736 () Bool)

(declare-fun Unit!65184 () Unit!65181)

(assert (=> b!4195736 (= e!2604468 Unit!65184)))

(declare-fun lt!1494654 () Unit!65181)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1009 (List!46207 List!46207 List!46207) Unit!65181)

(assert (=> b!4195736 (= lt!1494654 (lemmaIsPrefixSameLengthThenSameList!1009 pBis!107 lt!1494650 input!3342))))

(assert (=> b!4195736 false))

(declare-fun tp!1281834 () Bool)

(declare-fun b!4195737 () Bool)

(assert (=> b!4195737 (= e!2604487 (and tp!1281834 (inv!60640 (tag!8552 (h!51505 rules!3843))) (inv!60642 (transformation!7688 (h!51505 rules!3843))) e!2604471))))

(declare-fun b!4195738 () Bool)

(declare-fun tp!1281826 () Bool)

(assert (=> b!4195738 (= e!2604469 (and tp_is_empty!22149 tp!1281826))))

(declare-fun b!4195739 () Bool)

(declare-fun res!1722444 () Bool)

(assert (=> b!4195739 (=> res!1722444 e!2604474)))

(assert (=> b!4195739 (= res!1722444 (not (ruleValid!3406 thiss!25986 rBis!167)))))

(assert (=> b!4195740 (= e!2604480 (and tp!1281833 tp!1281827))))

(declare-fun b!4195741 () Bool)

(declare-fun res!1722427 () Bool)

(assert (=> b!4195741 (=> (not res!1722427) (not e!2604473))))

(assert (=> b!4195741 (= res!1722427 (isPrefix!4545 pBis!107 input!3342))))

(declare-fun b!4195742 () Bool)

(assert (=> b!4195742 (= e!2604476 (isPrefix!4545 lt!1494650 input!3342))))

(assert (= (and start!400614 res!1722436) b!4195715))

(assert (= (and b!4195715 res!1722438) b!4195741))

(assert (= (and b!4195741 res!1722427) b!4195735))

(assert (= (and b!4195735 res!1722435) b!4195720))

(assert (= (and b!4195720 res!1722428) b!4195719))

(assert (= (and b!4195719 res!1722431) b!4195716))

(assert (= (and b!4195716 res!1722429) b!4195725))

(assert (= (and b!4195725 res!1722439) b!4195724))

(assert (= (and b!4195724 res!1722432) b!4195723))

(assert (= (and b!4195723 res!1722441) b!4195733))

(assert (= (and b!4195733 (not res!1722426)) b!4195727))

(assert (= (and b!4195727 (not res!1722434)) b!4195739))

(assert (= (and b!4195739 (not res!1722444)) b!4195730))

(assert (= (and b!4195730 (not res!1722442)) b!4195718))

(assert (= (and b!4195718 (not res!1722437)) b!4195714))

(assert (= (and b!4195714 (not res!1722440)) b!4195722))

(assert (= (and b!4195722 (not res!1722430)) b!4195721))

(assert (= (and b!4195721 c!715717) b!4195736))

(assert (= (and b!4195721 (not c!715717)) b!4195729))

(assert (= (and b!4195721 (not res!1722433)) b!4195728))

(assert (= (and b!4195728 (not res!1722443)) b!4195742))

(assert (= b!4195726 b!4195740))

(assert (= start!400614 b!4195726))

(assert (= b!4195732 b!4195734))

(assert (= start!400614 b!4195732))

(assert (= b!4195737 b!4195731))

(assert (= b!4195713 b!4195737))

(assert (= (and start!400614 ((_ is Cons!46085) rules!3843)) b!4195713))

(assert (= (and start!400614 ((_ is Cons!46083) input!3342)) b!4195712))

(assert (= (and start!400614 ((_ is Cons!46083) pBis!107)) b!4195738))

(assert (= (and start!400614 ((_ is Cons!46083) p!2959)) b!4195717))

(declare-fun m!4784575 () Bool)

(assert (=> b!4195742 m!4784575))

(declare-fun m!4784577 () Bool)

(assert (=> b!4195726 m!4784577))

(declare-fun m!4784579 () Bool)

(assert (=> b!4195726 m!4784579))

(declare-fun m!4784581 () Bool)

(assert (=> b!4195733 m!4784581))

(declare-fun m!4784583 () Bool)

(assert (=> b!4195733 m!4784583))

(declare-fun m!4784585 () Bool)

(assert (=> b!4195733 m!4784585))

(declare-fun m!4784587 () Bool)

(assert (=> b!4195733 m!4784587))

(declare-fun m!4784589 () Bool)

(assert (=> b!4195733 m!4784589))

(declare-fun m!4784591 () Bool)

(assert (=> b!4195733 m!4784591))

(declare-fun m!4784593 () Bool)

(assert (=> b!4195733 m!4784593))

(declare-fun m!4784595 () Bool)

(assert (=> b!4195733 m!4784595))

(declare-fun m!4784597 () Bool)

(assert (=> b!4195736 m!4784597))

(declare-fun m!4784599 () Bool)

(assert (=> b!4195728 m!4784599))

(declare-fun m!4784601 () Bool)

(assert (=> b!4195718 m!4784601))

(declare-fun m!4784603 () Bool)

(assert (=> b!4195718 m!4784603))

(declare-fun m!4784605 () Bool)

(assert (=> b!4195718 m!4784605))

(declare-fun m!4784607 () Bool)

(assert (=> b!4195718 m!4784607))

(declare-fun m!4784609 () Bool)

(assert (=> b!4195718 m!4784609))

(declare-fun m!4784611 () Bool)

(assert (=> b!4195732 m!4784611))

(declare-fun m!4784613 () Bool)

(assert (=> b!4195732 m!4784613))

(declare-fun m!4784615 () Bool)

(assert (=> b!4195723 m!4784615))

(declare-fun m!4784617 () Bool)

(assert (=> b!4195721 m!4784617))

(declare-fun m!4784619 () Bool)

(assert (=> b!4195741 m!4784619))

(declare-fun m!4784621 () Bool)

(assert (=> b!4195730 m!4784621))

(declare-fun m!4784623 () Bool)

(assert (=> b!4195716 m!4784623))

(declare-fun m!4784625 () Bool)

(assert (=> b!4195735 m!4784625))

(declare-fun m!4784627 () Bool)

(assert (=> b!4195714 m!4784627))

(declare-fun m!4784629 () Bool)

(assert (=> b!4195714 m!4784629))

(declare-fun m!4784631 () Bool)

(assert (=> b!4195714 m!4784631))

(declare-fun m!4784633 () Bool)

(assert (=> b!4195714 m!4784633))

(assert (=> b!4195714 m!4784633))

(declare-fun m!4784635 () Bool)

(assert (=> b!4195714 m!4784635))

(declare-fun m!4784637 () Bool)

(assert (=> b!4195714 m!4784637))

(declare-fun m!4784639 () Bool)

(assert (=> b!4195724 m!4784639))

(declare-fun m!4784641 () Bool)

(assert (=> b!4195727 m!4784641))

(declare-fun m!4784643 () Bool)

(assert (=> b!4195720 m!4784643))

(declare-fun m!4784645 () Bool)

(assert (=> b!4195719 m!4784645))

(declare-fun m!4784647 () Bool)

(assert (=> b!4195739 m!4784647))

(declare-fun m!4784649 () Bool)

(assert (=> b!4195725 m!4784649))

(declare-fun m!4784651 () Bool)

(assert (=> b!4195737 m!4784651))

(declare-fun m!4784653 () Bool)

(assert (=> b!4195737 m!4784653))

(declare-fun m!4784655 () Bool)

(assert (=> b!4195722 m!4784655))

(declare-fun m!4784657 () Bool)

(assert (=> b!4195715 m!4784657))

(check-sat (not b!4195718) (not b!4195716) b_and!329073 (not b!4195742) (not b!4195737) (not b!4195730) (not b!4195738) (not b!4195728) b_and!329071 (not b!4195722) (not b!4195739) (not b!4195724) b_and!329079 b_and!329077 b_and!329075 (not b!4195721) (not b_next!122959) tp_is_empty!22149 (not b_next!122967) (not b!4195727) (not b!4195736) (not b!4195719) (not b_next!122963) b_and!329069 (not b!4195720) (not b!4195733) (not b_next!122969) (not b!4195741) (not b!4195712) (not b_next!122961) (not b!4195726) (not b!4195735) (not b!4195713) (not b!4195725) (not b!4195723) (not b!4195717) (not b!4195714) (not b_next!122965) (not b!4195732) (not b!4195715))
(check-sat b_and!329075 (not b_next!122959) (not b_next!122967) b_and!329073 (not b_next!122969) (not b_next!122961) (not b_next!122965) b_and!329071 b_and!329079 b_and!329077 (not b_next!122963) b_and!329069)
(get-model)

(declare-fun b!4195818 () Bool)

(declare-fun res!1722514 () Bool)

(declare-fun e!2604537 () Bool)

(assert (=> b!4195818 (=> (not res!1722514) (not e!2604537))))

(declare-fun lt!1494679 () Option!9882)

(assert (=> b!4195818 (= res!1722514 (= (list!16658 (charsOf!5123 (_1!25071 (get!14991 lt!1494679)))) (originalCharacters!8076 (_1!25071 (get!14991 lt!1494679)))))))

(declare-fun b!4195819 () Bool)

(declare-fun res!1722512 () Bool)

(assert (=> b!4195819 (=> (not res!1722512) (not e!2604537))))

(assert (=> b!4195819 (= res!1722512 (= (value!239640 (_1!25071 (get!14991 lt!1494679))) (apply!10653 (transformation!7688 (rule!10780 (_1!25071 (get!14991 lt!1494679)))) (seqFromList!5713 (originalCharacters!8076 (_1!25071 (get!14991 lt!1494679)))))))))

(declare-fun b!4195820 () Bool)

(assert (=> b!4195820 (= e!2604537 (contains!9499 rules!3843 (rule!10780 (_1!25071 (get!14991 lt!1494679)))))))

(declare-fun bm!292425 () Bool)

(declare-fun call!292430 () Option!9882)

(assert (=> bm!292425 (= call!292430 (maxPrefixOneRule!3290 thiss!25986 (h!51505 rules!3843) input!3342))))

(declare-fun b!4195821 () Bool)

(declare-fun res!1722509 () Bool)

(assert (=> b!4195821 (=> (not res!1722509) (not e!2604537))))

(assert (=> b!4195821 (= res!1722509 (matchR!6332 (regex!7688 (rule!10780 (_1!25071 (get!14991 lt!1494679)))) (list!16658 (charsOf!5123 (_1!25071 (get!14991 lt!1494679))))))))

(declare-fun b!4195822 () Bool)

(declare-fun e!2604539 () Option!9882)

(declare-fun lt!1494683 () Option!9882)

(declare-fun lt!1494680 () Option!9882)

(assert (=> b!4195822 (= e!2604539 (ite (and ((_ is None!9881) lt!1494683) ((_ is None!9881) lt!1494680)) None!9881 (ite ((_ is None!9881) lt!1494680) lt!1494683 (ite ((_ is None!9881) lt!1494683) lt!1494680 (ite (>= (size!33871 (_1!25071 (v!40721 lt!1494683))) (size!33871 (_1!25071 (v!40721 lt!1494680)))) lt!1494683 lt!1494680)))))))

(assert (=> b!4195822 (= lt!1494683 call!292430)))

(assert (=> b!4195822 (= lt!1494680 (maxPrefix!4329 thiss!25986 (t!346472 rules!3843) input!3342))))

(declare-fun b!4195823 () Bool)

(assert (=> b!4195823 (= e!2604539 call!292430)))

(declare-fun b!4195824 () Bool)

(declare-fun res!1722510 () Bool)

(assert (=> b!4195824 (=> (not res!1722510) (not e!2604537))))

(assert (=> b!4195824 (= res!1722510 (= (++!11760 (list!16658 (charsOf!5123 (_1!25071 (get!14991 lt!1494679)))) (_2!25071 (get!14991 lt!1494679))) input!3342))))

(declare-fun d!1237419 () Bool)

(declare-fun e!2604538 () Bool)

(assert (=> d!1237419 e!2604538))

(declare-fun res!1722511 () Bool)

(assert (=> d!1237419 (=> res!1722511 e!2604538)))

(assert (=> d!1237419 (= res!1722511 (isEmpty!27290 lt!1494679))))

(assert (=> d!1237419 (= lt!1494679 e!2604539)))

(declare-fun c!715731 () Bool)

(assert (=> d!1237419 (= c!715731 (and ((_ is Cons!46085) rules!3843) ((_ is Nil!46085) (t!346472 rules!3843))))))

(declare-fun lt!1494682 () Unit!65181)

(declare-fun lt!1494681 () Unit!65181)

(assert (=> d!1237419 (= lt!1494682 lt!1494681)))

(assert (=> d!1237419 (isPrefix!4545 input!3342 input!3342)))

(assert (=> d!1237419 (= lt!1494681 (lemmaIsPrefixRefl!2974 input!3342 input!3342))))

(declare-fun rulesValidInductive!2841 (LexerInterface!7281 List!46209) Bool)

(assert (=> d!1237419 (rulesValidInductive!2841 thiss!25986 rules!3843)))

(assert (=> d!1237419 (= (maxPrefix!4329 thiss!25986 rules!3843 input!3342) lt!1494679)))

(declare-fun b!4195825 () Bool)

(assert (=> b!4195825 (= e!2604538 e!2604537)))

(declare-fun res!1722508 () Bool)

(assert (=> b!4195825 (=> (not res!1722508) (not e!2604537))))

(declare-fun isDefined!7357 (Option!9882) Bool)

(assert (=> b!4195825 (= res!1722508 (isDefined!7357 lt!1494679))))

(declare-fun b!4195826 () Bool)

(declare-fun res!1722513 () Bool)

(assert (=> b!4195826 (=> (not res!1722513) (not e!2604537))))

(assert (=> b!4195826 (= res!1722513 (< (size!33872 (_2!25071 (get!14991 lt!1494679))) (size!33872 input!3342)))))

(assert (= (and d!1237419 c!715731) b!4195823))

(assert (= (and d!1237419 (not c!715731)) b!4195822))

(assert (= (or b!4195823 b!4195822) bm!292425))

(assert (= (and d!1237419 (not res!1722511)) b!4195825))

(assert (= (and b!4195825 res!1722508) b!4195818))

(assert (= (and b!4195818 res!1722514) b!4195826))

(assert (= (and b!4195826 res!1722513) b!4195824))

(assert (= (and b!4195824 res!1722510) b!4195819))

(assert (= (and b!4195819 res!1722512) b!4195821))

(assert (= (and b!4195821 res!1722509) b!4195820))

(declare-fun m!4784687 () Bool)

(assert (=> b!4195822 m!4784687))

(declare-fun m!4784689 () Bool)

(assert (=> bm!292425 m!4784689))

(declare-fun m!4784691 () Bool)

(assert (=> b!4195826 m!4784691))

(declare-fun m!4784693 () Bool)

(assert (=> b!4195826 m!4784693))

(assert (=> b!4195826 m!4784603))

(assert (=> b!4195819 m!4784691))

(declare-fun m!4784695 () Bool)

(assert (=> b!4195819 m!4784695))

(assert (=> b!4195819 m!4784695))

(declare-fun m!4784697 () Bool)

(assert (=> b!4195819 m!4784697))

(assert (=> b!4195818 m!4784691))

(declare-fun m!4784699 () Bool)

(assert (=> b!4195818 m!4784699))

(assert (=> b!4195818 m!4784699))

(declare-fun m!4784701 () Bool)

(assert (=> b!4195818 m!4784701))

(assert (=> b!4195824 m!4784691))

(assert (=> b!4195824 m!4784699))

(assert (=> b!4195824 m!4784699))

(assert (=> b!4195824 m!4784701))

(assert (=> b!4195824 m!4784701))

(declare-fun m!4784703 () Bool)

(assert (=> b!4195824 m!4784703))

(assert (=> b!4195820 m!4784691))

(declare-fun m!4784705 () Bool)

(assert (=> b!4195820 m!4784705))

(assert (=> b!4195821 m!4784691))

(assert (=> b!4195821 m!4784699))

(assert (=> b!4195821 m!4784699))

(assert (=> b!4195821 m!4784701))

(assert (=> b!4195821 m!4784701))

(declare-fun m!4784707 () Bool)

(assert (=> b!4195821 m!4784707))

(declare-fun m!4784709 () Bool)

(assert (=> b!4195825 m!4784709))

(declare-fun m!4784711 () Bool)

(assert (=> d!1237419 m!4784711))

(assert (=> d!1237419 m!4784593))

(assert (=> d!1237419 m!4784585))

(declare-fun m!4784713 () Bool)

(assert (=> d!1237419 m!4784713))

(assert (=> b!4195730 d!1237419))

(declare-fun d!1237437 () Bool)

(declare-fun lt!1494686 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7188 (List!46209) (InoxSet Rule!15176))

(assert (=> d!1237437 (= lt!1494686 (select (content!7188 rules!3843) r!4142))))

(declare-fun e!2604545 () Bool)

(assert (=> d!1237437 (= lt!1494686 e!2604545)))

(declare-fun res!1722519 () Bool)

(assert (=> d!1237437 (=> (not res!1722519) (not e!2604545))))

(assert (=> d!1237437 (= res!1722519 ((_ is Cons!46085) rules!3843))))

(assert (=> d!1237437 (= (contains!9499 rules!3843 r!4142) lt!1494686)))

(declare-fun b!4195831 () Bool)

(declare-fun e!2604544 () Bool)

(assert (=> b!4195831 (= e!2604545 e!2604544)))

(declare-fun res!1722520 () Bool)

(assert (=> b!4195831 (=> res!1722520 e!2604544)))

(assert (=> b!4195831 (= res!1722520 (= (h!51505 rules!3843) r!4142))))

(declare-fun b!4195832 () Bool)

(assert (=> b!4195832 (= e!2604544 (contains!9499 (t!346472 rules!3843) r!4142))))

(assert (= (and d!1237437 res!1722519) b!4195831))

(assert (= (and b!4195831 (not res!1722520)) b!4195832))

(declare-fun m!4784715 () Bool)

(assert (=> d!1237437 m!4784715))

(declare-fun m!4784717 () Bool)

(assert (=> d!1237437 m!4784717))

(declare-fun m!4784719 () Bool)

(assert (=> b!4195832 m!4784719))

(assert (=> b!4195719 d!1237437))

(declare-fun d!1237439 () Bool)

(declare-fun res!1722523 () Bool)

(declare-fun e!2604548 () Bool)

(assert (=> d!1237439 (=> (not res!1722523) (not e!2604548))))

(declare-fun rulesValid!3003 (LexerInterface!7281 List!46209) Bool)

(assert (=> d!1237439 (= res!1722523 (rulesValid!3003 thiss!25986 rules!3843))))

(assert (=> d!1237439 (= (rulesInvariant!6494 thiss!25986 rules!3843) e!2604548)))

(declare-fun b!4195835 () Bool)

(declare-datatypes ((List!46210 0))(
  ( (Nil!46086) (Cons!46086 (h!51506 String!53456) (t!346521 List!46210)) )
))
(declare-fun noDuplicateTag!3164 (LexerInterface!7281 List!46209 List!46210) Bool)

(assert (=> b!4195835 (= e!2604548 (noDuplicateTag!3164 thiss!25986 rules!3843 Nil!46086))))

(assert (= (and d!1237439 res!1722523) b!4195835))

(declare-fun m!4784721 () Bool)

(assert (=> d!1237439 m!4784721))

(declare-fun m!4784723 () Bool)

(assert (=> b!4195835 m!4784723))

(assert (=> b!4195720 d!1237439))

(declare-fun d!1237441 () Bool)

(declare-fun e!2604564 () Bool)

(assert (=> d!1237441 e!2604564))

(declare-fun res!1722546 () Bool)

(assert (=> d!1237441 (=> res!1722546 e!2604564)))

(declare-fun lt!1494699 () Bool)

(assert (=> d!1237441 (= res!1722546 (not lt!1494699))))

(declare-fun e!2604563 () Bool)

(assert (=> d!1237441 (= lt!1494699 e!2604563)))

(declare-fun res!1722547 () Bool)

(assert (=> d!1237441 (=> res!1722547 e!2604563)))

(assert (=> d!1237441 (= res!1722547 ((_ is Nil!46083) pBis!107))))

(assert (=> d!1237441 (= (isPrefix!4545 pBis!107 input!3342) lt!1494699)))

(declare-fun b!4195862 () Bool)

(declare-fun e!2604565 () Bool)

(assert (=> b!4195862 (= e!2604563 e!2604565)))

(declare-fun res!1722549 () Bool)

(assert (=> b!4195862 (=> (not res!1722549) (not e!2604565))))

(assert (=> b!4195862 (= res!1722549 (not ((_ is Nil!46083) input!3342)))))

(declare-fun b!4195864 () Bool)

(declare-fun tail!6751 (List!46207) List!46207)

(assert (=> b!4195864 (= e!2604565 (isPrefix!4545 (tail!6751 pBis!107) (tail!6751 input!3342)))))

(declare-fun b!4195865 () Bool)

(assert (=> b!4195865 (= e!2604564 (>= (size!33872 input!3342) (size!33872 pBis!107)))))

(declare-fun b!4195863 () Bool)

(declare-fun res!1722548 () Bool)

(assert (=> b!4195863 (=> (not res!1722548) (not e!2604565))))

(declare-fun head!8904 (List!46207) C!25376)

(assert (=> b!4195863 (= res!1722548 (= (head!8904 pBis!107) (head!8904 input!3342)))))

(assert (= (and d!1237441 (not res!1722547)) b!4195862))

(assert (= (and b!4195862 res!1722549) b!4195863))

(assert (= (and b!4195863 res!1722548) b!4195864))

(assert (= (and d!1237441 (not res!1722546)) b!4195865))

(declare-fun m!4784725 () Bool)

(assert (=> b!4195864 m!4784725))

(declare-fun m!4784727 () Bool)

(assert (=> b!4195864 m!4784727))

(assert (=> b!4195864 m!4784725))

(assert (=> b!4195864 m!4784727))

(declare-fun m!4784729 () Bool)

(assert (=> b!4195864 m!4784729))

(assert (=> b!4195865 m!4784603))

(assert (=> b!4195865 m!4784641))

(declare-fun m!4784731 () Bool)

(assert (=> b!4195863 m!4784731))

(declare-fun m!4784733 () Bool)

(assert (=> b!4195863 m!4784733))

(assert (=> b!4195741 d!1237441))

(declare-fun d!1237443 () Bool)

(assert (=> d!1237443 (= (isEmpty!27290 lt!1494641) (not ((_ is Some!9881) lt!1494641)))))

(assert (=> b!4195718 d!1237443))

(declare-fun d!1237445 () Bool)

(assert (=> d!1237445 (ruleValid!3406 thiss!25986 rBis!167)))

(declare-fun lt!1494707 () Unit!65181)

(declare-fun choose!25718 (LexerInterface!7281 Rule!15176 List!46209) Unit!65181)

(assert (=> d!1237445 (= lt!1494707 (choose!25718 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1237445 (contains!9499 rules!3843 rBis!167)))

(assert (=> d!1237445 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2412 thiss!25986 rBis!167 rules!3843) lt!1494707)))

(declare-fun bs!596817 () Bool)

(assert (= bs!596817 d!1237445))

(assert (=> bs!596817 m!4784647))

(declare-fun m!4784761 () Bool)

(assert (=> bs!596817 m!4784761))

(assert (=> bs!596817 m!4784623))

(assert (=> b!4195718 d!1237445))

(declare-fun b!4195901 () Bool)

(declare-fun e!2604584 () Bool)

(declare-fun e!2604586 () Bool)

(assert (=> b!4195901 (= e!2604584 e!2604586)))

(declare-fun res!1722576 () Bool)

(assert (=> b!4195901 (=> (not res!1722576) (not e!2604586))))

(declare-fun lt!1494727 () Option!9882)

(assert (=> b!4195901 (= res!1722576 (matchR!6332 (regex!7688 rBis!167) (list!16658 (charsOf!5123 (_1!25071 (get!14991 lt!1494727))))))))

(declare-fun b!4195902 () Bool)

(declare-fun res!1722575 () Bool)

(assert (=> b!4195902 (=> (not res!1722575) (not e!2604586))))

(assert (=> b!4195902 (= res!1722575 (= (rule!10780 (_1!25071 (get!14991 lt!1494727))) rBis!167))))

(declare-fun b!4195903 () Bool)

(declare-fun e!2604585 () Option!9882)

(assert (=> b!4195903 (= e!2604585 None!9881)))

(declare-fun b!4195904 () Bool)

(assert (=> b!4195904 (= e!2604586 (= (size!33871 (_1!25071 (get!14991 lt!1494727))) (size!33872 (originalCharacters!8076 (_1!25071 (get!14991 lt!1494727))))))))

(declare-fun b!4195905 () Bool)

(declare-fun res!1722577 () Bool)

(assert (=> b!4195905 (=> (not res!1722577) (not e!2604586))))

(assert (=> b!4195905 (= res!1722577 (= (value!239640 (_1!25071 (get!14991 lt!1494727))) (apply!10653 (transformation!7688 (rule!10780 (_1!25071 (get!14991 lt!1494727)))) (seqFromList!5713 (originalCharacters!8076 (_1!25071 (get!14991 lt!1494727)))))))))

(declare-fun b!4195906 () Bool)

(declare-fun e!2604587 () Bool)

(declare-datatypes ((tuple2!43878 0))(
  ( (tuple2!43879 (_1!25073 List!46207) (_2!25073 List!46207)) )
))
(declare-fun findLongestMatchInner!1617 (Regex!12593 List!46207 Int List!46207 List!46207 Int) tuple2!43878)

(assert (=> b!4195906 (= e!2604587 (matchR!6332 (regex!7688 rBis!167) (_1!25073 (findLongestMatchInner!1617 (regex!7688 rBis!167) Nil!46083 (size!33872 Nil!46083) input!3342 input!3342 (size!33872 input!3342)))))))

(declare-fun b!4195907 () Bool)

(declare-fun lt!1494725 () tuple2!43878)

(assert (=> b!4195907 (= e!2604585 (Some!9881 (tuple2!43875 (Token!14091 (apply!10653 (transformation!7688 rBis!167) (seqFromList!5713 (_1!25073 lt!1494725))) rBis!167 (size!33873 (seqFromList!5713 (_1!25073 lt!1494725))) (_1!25073 lt!1494725)) (_2!25073 lt!1494725))))))

(declare-fun lt!1494723 () Unit!65181)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1590 (Regex!12593 List!46207) Unit!65181)

(assert (=> b!4195907 (= lt!1494723 (longestMatchIsAcceptedByMatchOrIsEmpty!1590 (regex!7688 rBis!167) input!3342))))

(declare-fun res!1722571 () Bool)

(declare-fun isEmpty!27293 (List!46207) Bool)

(assert (=> b!4195907 (= res!1722571 (isEmpty!27293 (_1!25073 (findLongestMatchInner!1617 (regex!7688 rBis!167) Nil!46083 (size!33872 Nil!46083) input!3342 input!3342 (size!33872 input!3342)))))))

(assert (=> b!4195907 (=> res!1722571 e!2604587)))

(assert (=> b!4195907 e!2604587))

(declare-fun lt!1494726 () Unit!65181)

(assert (=> b!4195907 (= lt!1494726 lt!1494723)))

(declare-fun lt!1494724 () Unit!65181)

(assert (=> b!4195907 (= lt!1494724 (lemmaSemiInverse!2454 (transformation!7688 rBis!167) (seqFromList!5713 (_1!25073 lt!1494725))))))

(declare-fun b!4195908 () Bool)

(declare-fun res!1722573 () Bool)

(assert (=> b!4195908 (=> (not res!1722573) (not e!2604586))))

(assert (=> b!4195908 (= res!1722573 (< (size!33872 (_2!25071 (get!14991 lt!1494727))) (size!33872 input!3342)))))

(declare-fun b!4195909 () Bool)

(declare-fun res!1722572 () Bool)

(assert (=> b!4195909 (=> (not res!1722572) (not e!2604586))))

(assert (=> b!4195909 (= res!1722572 (= (++!11760 (list!16658 (charsOf!5123 (_1!25071 (get!14991 lt!1494727)))) (_2!25071 (get!14991 lt!1494727))) input!3342))))

(declare-fun d!1237447 () Bool)

(assert (=> d!1237447 e!2604584))

(declare-fun res!1722574 () Bool)

(assert (=> d!1237447 (=> res!1722574 e!2604584)))

(assert (=> d!1237447 (= res!1722574 (isEmpty!27290 lt!1494727))))

(assert (=> d!1237447 (= lt!1494727 e!2604585)))

(declare-fun c!715741 () Bool)

(assert (=> d!1237447 (= c!715741 (isEmpty!27293 (_1!25073 lt!1494725)))))

(declare-fun findLongestMatch!1530 (Regex!12593 List!46207) tuple2!43878)

(assert (=> d!1237447 (= lt!1494725 (findLongestMatch!1530 (regex!7688 rBis!167) input!3342))))

(assert (=> d!1237447 (ruleValid!3406 thiss!25986 rBis!167)))

(assert (=> d!1237447 (= (maxPrefixOneRule!3290 thiss!25986 rBis!167 input!3342) lt!1494727)))

(assert (= (and d!1237447 c!715741) b!4195903))

(assert (= (and d!1237447 (not c!715741)) b!4195907))

(assert (= (and b!4195907 (not res!1722571)) b!4195906))

(assert (= (and d!1237447 (not res!1722574)) b!4195901))

(assert (= (and b!4195901 res!1722576) b!4195909))

(assert (= (and b!4195909 res!1722572) b!4195908))

(assert (= (and b!4195908 res!1722573) b!4195902))

(assert (= (and b!4195902 res!1722575) b!4195905))

(assert (= (and b!4195905 res!1722577) b!4195904))

(declare-fun m!4784785 () Bool)

(assert (=> d!1237447 m!4784785))

(declare-fun m!4784787 () Bool)

(assert (=> d!1237447 m!4784787))

(declare-fun m!4784789 () Bool)

(assert (=> d!1237447 m!4784789))

(assert (=> d!1237447 m!4784647))

(declare-fun m!4784791 () Bool)

(assert (=> b!4195909 m!4784791))

(declare-fun m!4784793 () Bool)

(assert (=> b!4195909 m!4784793))

(assert (=> b!4195909 m!4784793))

(declare-fun m!4784795 () Bool)

(assert (=> b!4195909 m!4784795))

(assert (=> b!4195909 m!4784795))

(declare-fun m!4784797 () Bool)

(assert (=> b!4195909 m!4784797))

(assert (=> b!4195902 m!4784791))

(assert (=> b!4195904 m!4784791))

(declare-fun m!4784799 () Bool)

(assert (=> b!4195904 m!4784799))

(assert (=> b!4195901 m!4784791))

(assert (=> b!4195901 m!4784793))

(assert (=> b!4195901 m!4784793))

(assert (=> b!4195901 m!4784795))

(assert (=> b!4195901 m!4784795))

(declare-fun m!4784801 () Bool)

(assert (=> b!4195901 m!4784801))

(declare-fun m!4784803 () Bool)

(assert (=> b!4195906 m!4784803))

(assert (=> b!4195906 m!4784603))

(assert (=> b!4195906 m!4784803))

(assert (=> b!4195906 m!4784603))

(declare-fun m!4784805 () Bool)

(assert (=> b!4195906 m!4784805))

(declare-fun m!4784807 () Bool)

(assert (=> b!4195906 m!4784807))

(assert (=> b!4195908 m!4784791))

(declare-fun m!4784809 () Bool)

(assert (=> b!4195908 m!4784809))

(assert (=> b!4195908 m!4784603))

(assert (=> b!4195905 m!4784791))

(declare-fun m!4784811 () Bool)

(assert (=> b!4195905 m!4784811))

(assert (=> b!4195905 m!4784811))

(declare-fun m!4784813 () Bool)

(assert (=> b!4195905 m!4784813))

(assert (=> b!4195907 m!4784803))

(assert (=> b!4195907 m!4784603))

(assert (=> b!4195907 m!4784805))

(declare-fun m!4784815 () Bool)

(assert (=> b!4195907 m!4784815))

(declare-fun m!4784817 () Bool)

(assert (=> b!4195907 m!4784817))

(declare-fun m!4784819 () Bool)

(assert (=> b!4195907 m!4784819))

(assert (=> b!4195907 m!4784603))

(declare-fun m!4784821 () Bool)

(assert (=> b!4195907 m!4784821))

(assert (=> b!4195907 m!4784817))

(assert (=> b!4195907 m!4784817))

(declare-fun m!4784823 () Bool)

(assert (=> b!4195907 m!4784823))

(assert (=> b!4195907 m!4784803))

(assert (=> b!4195907 m!4784817))

(declare-fun m!4784825 () Bool)

(assert (=> b!4195907 m!4784825))

(assert (=> b!4195718 d!1237447))

(declare-fun d!1237455 () Bool)

(assert (=> d!1237455 (<= (size!33872 pBis!107) (size!33872 input!3342))))

(declare-fun lt!1494730 () Unit!65181)

(declare-fun choose!25720 (List!46207 List!46207) Unit!65181)

(assert (=> d!1237455 (= lt!1494730 (choose!25720 pBis!107 input!3342))))

(assert (=> d!1237455 (isPrefix!4545 pBis!107 input!3342)))

(assert (=> d!1237455 (= (lemmaIsPrefixThenSmallerEqSize!575 pBis!107 input!3342) lt!1494730)))

(declare-fun bs!596818 () Bool)

(assert (= bs!596818 d!1237455))

(assert (=> bs!596818 m!4784641))

(assert (=> bs!596818 m!4784603))

(declare-fun m!4784827 () Bool)

(assert (=> bs!596818 m!4784827))

(assert (=> bs!596818 m!4784619))

(assert (=> b!4195718 d!1237455))

(declare-fun d!1237457 () Bool)

(declare-fun lt!1494733 () Int)

(assert (=> d!1237457 (>= lt!1494733 0)))

(declare-fun e!2604590 () Int)

(assert (=> d!1237457 (= lt!1494733 e!2604590)))

(declare-fun c!715744 () Bool)

(assert (=> d!1237457 (= c!715744 ((_ is Nil!46083) input!3342))))

(assert (=> d!1237457 (= (size!33872 input!3342) lt!1494733)))

(declare-fun b!4195914 () Bool)

(assert (=> b!4195914 (= e!2604590 0)))

(declare-fun b!4195915 () Bool)

(assert (=> b!4195915 (= e!2604590 (+ 1 (size!33872 (t!346470 input!3342))))))

(assert (= (and d!1237457 c!715744) b!4195914))

(assert (= (and d!1237457 (not c!715744)) b!4195915))

(declare-fun m!4784829 () Bool)

(assert (=> b!4195915 m!4784829))

(assert (=> b!4195718 d!1237457))

(declare-fun d!1237459 () Bool)

(declare-fun res!1722582 () Bool)

(declare-fun e!2604593 () Bool)

(assert (=> d!1237459 (=> (not res!1722582) (not e!2604593))))

(assert (=> d!1237459 (= res!1722582 (validRegex!5710 (regex!7688 rBis!167)))))

(assert (=> d!1237459 (= (ruleValid!3406 thiss!25986 rBis!167) e!2604593)))

(declare-fun b!4195920 () Bool)

(declare-fun res!1722583 () Bool)

(assert (=> b!4195920 (=> (not res!1722583) (not e!2604593))))

(declare-fun nullable!4427 (Regex!12593) Bool)

(assert (=> b!4195920 (= res!1722583 (not (nullable!4427 (regex!7688 rBis!167))))))

(declare-fun b!4195921 () Bool)

(assert (=> b!4195921 (= e!2604593 (not (= (tag!8552 rBis!167) (String!53457 ""))))))

(assert (= (and d!1237459 res!1722582) b!4195920))

(assert (= (and b!4195920 res!1722583) b!4195921))

(declare-fun m!4784831 () Bool)

(assert (=> d!1237459 m!4784831))

(declare-fun m!4784833 () Bool)

(assert (=> b!4195920 m!4784833))

(assert (=> b!4195739 d!1237459))

(declare-fun d!1237461 () Bool)

(declare-fun lt!1494734 () Int)

(assert (=> d!1237461 (>= lt!1494734 0)))

(declare-fun e!2604594 () Int)

(assert (=> d!1237461 (= lt!1494734 e!2604594)))

(declare-fun c!715745 () Bool)

(assert (=> d!1237461 (= c!715745 ((_ is Nil!46083) pBis!107))))

(assert (=> d!1237461 (= (size!33872 pBis!107) lt!1494734)))

(declare-fun b!4195922 () Bool)

(assert (=> b!4195922 (= e!2604594 0)))

(declare-fun b!4195923 () Bool)

(assert (=> b!4195923 (= e!2604594 (+ 1 (size!33872 (t!346470 pBis!107))))))

(assert (= (and d!1237461 c!715745) b!4195922))

(assert (= (and d!1237461 (not c!715745)) b!4195923))

(declare-fun m!4784835 () Bool)

(assert (=> b!4195923 m!4784835))

(assert (=> b!4195727 d!1237461))

(declare-fun b!4195935 () Bool)

(declare-fun lt!1494737 () List!46207)

(declare-fun e!2604600 () Bool)

(assert (=> b!4195935 (= e!2604600 (or (not (= lt!1494643 Nil!46083)) (= lt!1494737 p!2959)))))

(declare-fun b!4195933 () Bool)

(declare-fun e!2604599 () List!46207)

(assert (=> b!4195933 (= e!2604599 (Cons!46083 (h!51503 p!2959) (++!11760 (t!346470 p!2959) lt!1494643)))))

(declare-fun b!4195932 () Bool)

(assert (=> b!4195932 (= e!2604599 lt!1494643)))

(declare-fun d!1237463 () Bool)

(assert (=> d!1237463 e!2604600))

(declare-fun res!1722588 () Bool)

(assert (=> d!1237463 (=> (not res!1722588) (not e!2604600))))

(declare-fun content!7189 (List!46207) (InoxSet C!25376))

(assert (=> d!1237463 (= res!1722588 (= (content!7189 lt!1494737) ((_ map or) (content!7189 p!2959) (content!7189 lt!1494643))))))

(assert (=> d!1237463 (= lt!1494737 e!2604599)))

(declare-fun c!715748 () Bool)

(assert (=> d!1237463 (= c!715748 ((_ is Nil!46083) p!2959))))

(assert (=> d!1237463 (= (++!11760 p!2959 lt!1494643) lt!1494737)))

(declare-fun b!4195934 () Bool)

(declare-fun res!1722589 () Bool)

(assert (=> b!4195934 (=> (not res!1722589) (not e!2604600))))

(assert (=> b!4195934 (= res!1722589 (= (size!33872 lt!1494737) (+ (size!33872 p!2959) (size!33872 lt!1494643))))))

(assert (= (and d!1237463 c!715748) b!4195932))

(assert (= (and d!1237463 (not c!715748)) b!4195933))

(assert (= (and d!1237463 res!1722588) b!4195934))

(assert (= (and b!4195934 res!1722589) b!4195935))

(declare-fun m!4784837 () Bool)

(assert (=> b!4195933 m!4784837))

(declare-fun m!4784839 () Bool)

(assert (=> d!1237463 m!4784839))

(declare-fun m!4784841 () Bool)

(assert (=> d!1237463 m!4784841))

(declare-fun m!4784843 () Bool)

(assert (=> d!1237463 m!4784843))

(declare-fun m!4784845 () Bool)

(assert (=> b!4195934 m!4784845))

(assert (=> b!4195934 m!4784589))

(declare-fun m!4784847 () Bool)

(assert (=> b!4195934 m!4784847))

(assert (=> b!4195728 d!1237463))

(declare-fun d!1237465 () Bool)

(assert (=> d!1237465 (= (inv!60640 (tag!8552 rBis!167)) (= (mod (str.len (value!239639 (tag!8552 rBis!167))) 2) 0))))

(assert (=> b!4195726 d!1237465))

(declare-fun d!1237467 () Bool)

(declare-fun res!1722592 () Bool)

(declare-fun e!2604603 () Bool)

(assert (=> d!1237467 (=> (not res!1722592) (not e!2604603))))

(declare-fun semiInverseModEq!3336 (Int Int) Bool)

(assert (=> d!1237467 (= res!1722592 (semiInverseModEq!3336 (toChars!10247 (transformation!7688 rBis!167)) (toValue!10388 (transformation!7688 rBis!167))))))

(assert (=> d!1237467 (= (inv!60642 (transformation!7688 rBis!167)) e!2604603)))

(declare-fun b!4195938 () Bool)

(declare-fun equivClasses!3235 (Int Int) Bool)

(assert (=> b!4195938 (= e!2604603 (equivClasses!3235 (toChars!10247 (transformation!7688 rBis!167)) (toValue!10388 (transformation!7688 rBis!167))))))

(assert (= (and d!1237467 res!1722592) b!4195938))

(declare-fun m!4784849 () Bool)

(assert (=> d!1237467 m!4784849))

(declare-fun m!4784851 () Bool)

(assert (=> b!4195938 m!4784851))

(assert (=> b!4195726 d!1237467))

(declare-fun d!1237469 () Bool)

(declare-fun e!2604605 () Bool)

(assert (=> d!1237469 e!2604605))

(declare-fun res!1722593 () Bool)

(assert (=> d!1237469 (=> res!1722593 e!2604605)))

(declare-fun lt!1494738 () Bool)

(assert (=> d!1237469 (= res!1722593 (not lt!1494738))))

(declare-fun e!2604604 () Bool)

(assert (=> d!1237469 (= lt!1494738 e!2604604)))

(declare-fun res!1722594 () Bool)

(assert (=> d!1237469 (=> res!1722594 e!2604604)))

(assert (=> d!1237469 (= res!1722594 ((_ is Nil!46083) p!2959))))

(assert (=> d!1237469 (= (isPrefix!4545 p!2959 input!3342) lt!1494738)))

(declare-fun b!4195939 () Bool)

(declare-fun e!2604606 () Bool)

(assert (=> b!4195939 (= e!2604604 e!2604606)))

(declare-fun res!1722596 () Bool)

(assert (=> b!4195939 (=> (not res!1722596) (not e!2604606))))

(assert (=> b!4195939 (= res!1722596 (not ((_ is Nil!46083) input!3342)))))

(declare-fun b!4195941 () Bool)

(assert (=> b!4195941 (= e!2604606 (isPrefix!4545 (tail!6751 p!2959) (tail!6751 input!3342)))))

(declare-fun b!4195942 () Bool)

(assert (=> b!4195942 (= e!2604605 (>= (size!33872 input!3342) (size!33872 p!2959)))))

(declare-fun b!4195940 () Bool)

(declare-fun res!1722595 () Bool)

(assert (=> b!4195940 (=> (not res!1722595) (not e!2604606))))

(assert (=> b!4195940 (= res!1722595 (= (head!8904 p!2959) (head!8904 input!3342)))))

(assert (= (and d!1237469 (not res!1722594)) b!4195939))

(assert (= (and b!4195939 res!1722596) b!4195940))

(assert (= (and b!4195940 res!1722595) b!4195941))

(assert (= (and d!1237469 (not res!1722593)) b!4195942))

(declare-fun m!4784853 () Bool)

(assert (=> b!4195941 m!4784853))

(assert (=> b!4195941 m!4784727))

(assert (=> b!4195941 m!4784853))

(assert (=> b!4195941 m!4784727))

(declare-fun m!4784855 () Bool)

(assert (=> b!4195941 m!4784855))

(assert (=> b!4195942 m!4784603))

(assert (=> b!4195942 m!4784589))

(declare-fun m!4784857 () Bool)

(assert (=> b!4195940 m!4784857))

(assert (=> b!4195940 m!4784733))

(assert (=> b!4195715 d!1237469))

(declare-fun d!1237471 () Bool)

(declare-fun lt!1494739 () Bool)

(assert (=> d!1237471 (= lt!1494739 (select (content!7188 rules!3843) rBis!167))))

(declare-fun e!2604608 () Bool)

(assert (=> d!1237471 (= lt!1494739 e!2604608)))

(declare-fun res!1722597 () Bool)

(assert (=> d!1237471 (=> (not res!1722597) (not e!2604608))))

(assert (=> d!1237471 (= res!1722597 ((_ is Cons!46085) rules!3843))))

(assert (=> d!1237471 (= (contains!9499 rules!3843 rBis!167) lt!1494739)))

(declare-fun b!4195943 () Bool)

(declare-fun e!2604607 () Bool)

(assert (=> b!4195943 (= e!2604608 e!2604607)))

(declare-fun res!1722598 () Bool)

(assert (=> b!4195943 (=> res!1722598 e!2604607)))

(assert (=> b!4195943 (= res!1722598 (= (h!51505 rules!3843) rBis!167))))

(declare-fun b!4195944 () Bool)

(assert (=> b!4195944 (= e!2604607 (contains!9499 (t!346472 rules!3843) rBis!167))))

(assert (= (and d!1237471 res!1722597) b!4195943))

(assert (= (and b!4195943 (not res!1722598)) b!4195944))

(assert (=> d!1237471 m!4784715))

(declare-fun m!4784859 () Bool)

(assert (=> d!1237471 m!4784859))

(declare-fun m!4784861 () Bool)

(assert (=> b!4195944 m!4784861))

(assert (=> b!4195716 d!1237471))

(declare-fun d!1237473 () Bool)

(assert (=> d!1237473 (= (inv!60640 (tag!8552 (h!51505 rules!3843))) (= (mod (str.len (value!239639 (tag!8552 (h!51505 rules!3843)))) 2) 0))))

(assert (=> b!4195737 d!1237473))

(declare-fun d!1237475 () Bool)

(declare-fun res!1722599 () Bool)

(declare-fun e!2604609 () Bool)

(assert (=> d!1237475 (=> (not res!1722599) (not e!2604609))))

(assert (=> d!1237475 (= res!1722599 (semiInverseModEq!3336 (toChars!10247 (transformation!7688 (h!51505 rules!3843))) (toValue!10388 (transformation!7688 (h!51505 rules!3843)))))))

(assert (=> d!1237475 (= (inv!60642 (transformation!7688 (h!51505 rules!3843))) e!2604609)))

(declare-fun b!4195945 () Bool)

(assert (=> b!4195945 (= e!2604609 (equivClasses!3235 (toChars!10247 (transformation!7688 (h!51505 rules!3843))) (toValue!10388 (transformation!7688 (h!51505 rules!3843)))))))

(assert (= (and d!1237475 res!1722599) b!4195945))

(declare-fun m!4784863 () Bool)

(assert (=> d!1237475 m!4784863))

(declare-fun m!4784865 () Bool)

(assert (=> b!4195945 m!4784865))

(assert (=> b!4195737 d!1237475))

(declare-fun e!2604611 () Bool)

(declare-fun b!4195949 () Bool)

(declare-fun lt!1494740 () List!46207)

(assert (=> b!4195949 (= e!2604611 (or (not (= (_2!25071 lt!1494644) Nil!46083)) (= lt!1494740 lt!1494650)))))

(declare-fun b!4195947 () Bool)

(declare-fun e!2604610 () List!46207)

(assert (=> b!4195947 (= e!2604610 (Cons!46083 (h!51503 lt!1494650) (++!11760 (t!346470 lt!1494650) (_2!25071 lt!1494644))))))

(declare-fun b!4195946 () Bool)

(assert (=> b!4195946 (= e!2604610 (_2!25071 lt!1494644))))

(declare-fun d!1237477 () Bool)

(assert (=> d!1237477 e!2604611))

(declare-fun res!1722600 () Bool)

(assert (=> d!1237477 (=> (not res!1722600) (not e!2604611))))

(assert (=> d!1237477 (= res!1722600 (= (content!7189 lt!1494740) ((_ map or) (content!7189 lt!1494650) (content!7189 (_2!25071 lt!1494644)))))))

(assert (=> d!1237477 (= lt!1494740 e!2604610)))

(declare-fun c!715749 () Bool)

(assert (=> d!1237477 (= c!715749 ((_ is Nil!46083) lt!1494650))))

(assert (=> d!1237477 (= (++!11760 lt!1494650 (_2!25071 lt!1494644)) lt!1494740)))

(declare-fun b!4195948 () Bool)

(declare-fun res!1722601 () Bool)

(assert (=> b!4195948 (=> (not res!1722601) (not e!2604611))))

(assert (=> b!4195948 (= res!1722601 (= (size!33872 lt!1494740) (+ (size!33872 lt!1494650) (size!33872 (_2!25071 lt!1494644)))))))

(assert (= (and d!1237477 c!715749) b!4195946))

(assert (= (and d!1237477 (not c!715749)) b!4195947))

(assert (= (and d!1237477 res!1722600) b!4195948))

(assert (= (and b!4195948 res!1722601) b!4195949))

(declare-fun m!4784867 () Bool)

(assert (=> b!4195947 m!4784867))

(declare-fun m!4784869 () Bool)

(assert (=> d!1237477 m!4784869))

(declare-fun m!4784871 () Bool)

(assert (=> d!1237477 m!4784871))

(declare-fun m!4784873 () Bool)

(assert (=> d!1237477 m!4784873))

(declare-fun m!4784875 () Bool)

(assert (=> b!4195948 m!4784875))

(assert (=> b!4195948 m!4784617))

(declare-fun m!4784877 () Bool)

(assert (=> b!4195948 m!4784877))

(assert (=> b!4195714 d!1237477))

(declare-fun d!1237479 () Bool)

(assert (=> d!1237479 (isPrefix!4545 lt!1494650 (++!11760 lt!1494650 (_2!25071 lt!1494644)))))

(declare-fun lt!1494743 () Unit!65181)

(declare-fun choose!25722 (List!46207 List!46207) Unit!65181)

(assert (=> d!1237479 (= lt!1494743 (choose!25722 lt!1494650 (_2!25071 lt!1494644)))))

(assert (=> d!1237479 (= (lemmaConcatTwoListThenFirstIsPrefix!3042 lt!1494650 (_2!25071 lt!1494644)) lt!1494743)))

(declare-fun bs!596819 () Bool)

(assert (= bs!596819 d!1237479))

(assert (=> bs!596819 m!4784633))

(assert (=> bs!596819 m!4784633))

(assert (=> bs!596819 m!4784635))

(declare-fun m!4784879 () Bool)

(assert (=> bs!596819 m!4784879))

(assert (=> b!4195714 d!1237479))

(declare-fun d!1237481 () Bool)

(declare-fun e!2604613 () Bool)

(assert (=> d!1237481 e!2604613))

(declare-fun res!1722602 () Bool)

(assert (=> d!1237481 (=> res!1722602 e!2604613)))

(declare-fun lt!1494744 () Bool)

(assert (=> d!1237481 (= res!1722602 (not lt!1494744))))

(declare-fun e!2604612 () Bool)

(assert (=> d!1237481 (= lt!1494744 e!2604612)))

(declare-fun res!1722603 () Bool)

(assert (=> d!1237481 (=> res!1722603 e!2604612)))

(assert (=> d!1237481 (= res!1722603 ((_ is Nil!46083) lt!1494650))))

(assert (=> d!1237481 (= (isPrefix!4545 lt!1494650 (++!11760 lt!1494650 (_2!25071 lt!1494644))) lt!1494744)))

(declare-fun b!4195950 () Bool)

(declare-fun e!2604614 () Bool)

(assert (=> b!4195950 (= e!2604612 e!2604614)))

(declare-fun res!1722605 () Bool)

(assert (=> b!4195950 (=> (not res!1722605) (not e!2604614))))

(assert (=> b!4195950 (= res!1722605 (not ((_ is Nil!46083) (++!11760 lt!1494650 (_2!25071 lt!1494644)))))))

(declare-fun b!4195952 () Bool)

(assert (=> b!4195952 (= e!2604614 (isPrefix!4545 (tail!6751 lt!1494650) (tail!6751 (++!11760 lt!1494650 (_2!25071 lt!1494644)))))))

(declare-fun b!4195953 () Bool)

(assert (=> b!4195953 (= e!2604613 (>= (size!33872 (++!11760 lt!1494650 (_2!25071 lt!1494644))) (size!33872 lt!1494650)))))

(declare-fun b!4195951 () Bool)

(declare-fun res!1722604 () Bool)

(assert (=> b!4195951 (=> (not res!1722604) (not e!2604614))))

(assert (=> b!4195951 (= res!1722604 (= (head!8904 lt!1494650) (head!8904 (++!11760 lt!1494650 (_2!25071 lt!1494644)))))))

(assert (= (and d!1237481 (not res!1722603)) b!4195950))

(assert (= (and b!4195950 res!1722605) b!4195951))

(assert (= (and b!4195951 res!1722604) b!4195952))

(assert (= (and d!1237481 (not res!1722602)) b!4195953))

(declare-fun m!4784881 () Bool)

(assert (=> b!4195952 m!4784881))

(assert (=> b!4195952 m!4784633))

(declare-fun m!4784883 () Bool)

(assert (=> b!4195952 m!4784883))

(assert (=> b!4195952 m!4784881))

(assert (=> b!4195952 m!4784883))

(declare-fun m!4784885 () Bool)

(assert (=> b!4195952 m!4784885))

(assert (=> b!4195953 m!4784633))

(declare-fun m!4784887 () Bool)

(assert (=> b!4195953 m!4784887))

(assert (=> b!4195953 m!4784617))

(declare-fun m!4784889 () Bool)

(assert (=> b!4195951 m!4784889))

(assert (=> b!4195951 m!4784633))

(declare-fun m!4784891 () Bool)

(assert (=> b!4195951 m!4784891))

(assert (=> b!4195714 d!1237481))

(declare-fun d!1237483 () Bool)

(assert (=> d!1237483 (= (get!14991 lt!1494641) (v!40721 lt!1494641))))

(assert (=> b!4195714 d!1237483))

(declare-fun d!1237485 () Bool)

(declare-fun lt!1494747 () BalanceConc!27392)

(assert (=> d!1237485 (= (list!16658 lt!1494747) (originalCharacters!8076 (_1!25071 lt!1494644)))))

(declare-fun dynLambda!19859 (Int TokenValue!7918) BalanceConc!27392)

(assert (=> d!1237485 (= lt!1494747 (dynLambda!19859 (toChars!10247 (transformation!7688 (rule!10780 (_1!25071 lt!1494644)))) (value!239640 (_1!25071 lt!1494644))))))

(assert (=> d!1237485 (= (charsOf!5123 (_1!25071 lt!1494644)) lt!1494747)))

(declare-fun b_lambda!123481 () Bool)

(assert (=> (not b_lambda!123481) (not d!1237485)))

(declare-fun t!346480 () Bool)

(declare-fun tb!251481 () Bool)

(assert (=> (and b!4195740 (= (toChars!10247 (transformation!7688 rBis!167)) (toChars!10247 (transformation!7688 (rule!10780 (_1!25071 lt!1494644))))) t!346480) tb!251481))

(declare-fun b!4195958 () Bool)

(declare-fun e!2604617 () Bool)

(declare-fun tp!1281839 () Bool)

(declare-fun inv!60645 (Conc!13899) Bool)

(assert (=> b!4195958 (= e!2604617 (and (inv!60645 (c!715719 (dynLambda!19859 (toChars!10247 (transformation!7688 (rule!10780 (_1!25071 lt!1494644)))) (value!239640 (_1!25071 lt!1494644))))) tp!1281839))))

(declare-fun result!306492 () Bool)

(declare-fun inv!60646 (BalanceConc!27392) Bool)

(assert (=> tb!251481 (= result!306492 (and (inv!60646 (dynLambda!19859 (toChars!10247 (transformation!7688 (rule!10780 (_1!25071 lt!1494644)))) (value!239640 (_1!25071 lt!1494644)))) e!2604617))))

(assert (= tb!251481 b!4195958))

(declare-fun m!4784893 () Bool)

(assert (=> b!4195958 m!4784893))

(declare-fun m!4784895 () Bool)

(assert (=> tb!251481 m!4784895))

(assert (=> d!1237485 t!346480))

(declare-fun b_and!329087 () Bool)

(assert (= b_and!329071 (and (=> t!346480 result!306492) b_and!329087)))

(declare-fun tb!251483 () Bool)

(declare-fun t!346482 () Bool)

(assert (=> (and b!4195731 (= (toChars!10247 (transformation!7688 (h!51505 rules!3843))) (toChars!10247 (transformation!7688 (rule!10780 (_1!25071 lt!1494644))))) t!346482) tb!251483))

(declare-fun result!306496 () Bool)

(assert (= result!306496 result!306492))

(assert (=> d!1237485 t!346482))

(declare-fun b_and!329089 () Bool)

(assert (= b_and!329075 (and (=> t!346482 result!306496) b_and!329089)))

(declare-fun t!346484 () Bool)

(declare-fun tb!251485 () Bool)

(assert (=> (and b!4195734 (= (toChars!10247 (transformation!7688 r!4142)) (toChars!10247 (transformation!7688 (rule!10780 (_1!25071 lt!1494644))))) t!346484) tb!251485))

(declare-fun result!306498 () Bool)

(assert (= result!306498 result!306492))

(assert (=> d!1237485 t!346484))

(declare-fun b_and!329091 () Bool)

(assert (= b_and!329079 (and (=> t!346484 result!306498) b_and!329091)))

(declare-fun m!4784897 () Bool)

(assert (=> d!1237485 m!4784897))

(declare-fun m!4784899 () Bool)

(assert (=> d!1237485 m!4784899))

(assert (=> b!4195714 d!1237485))

(declare-fun d!1237487 () Bool)

(declare-fun list!16660 (Conc!13899) List!46207)

(assert (=> d!1237487 (= (list!16658 lt!1494640) (list!16660 (c!715719 lt!1494640)))))

(declare-fun bs!596820 () Bool)

(assert (= bs!596820 d!1237487))

(declare-fun m!4784901 () Bool)

(assert (=> bs!596820 m!4784901))

(assert (=> b!4195714 d!1237487))

(declare-fun d!1237489 () Bool)

(assert (=> d!1237489 (= (isEmpty!27291 rules!3843) ((_ is Nil!46085) rules!3843))))

(assert (=> b!4195735 d!1237489))

(declare-fun d!1237491 () Bool)

(assert (=> d!1237491 (= pBis!107 lt!1494650)))

(declare-fun lt!1494750 () Unit!65181)

(declare-fun choose!25724 (List!46207 List!46207 List!46207) Unit!65181)

(assert (=> d!1237491 (= lt!1494750 (choose!25724 pBis!107 lt!1494650 input!3342))))

(assert (=> d!1237491 (isPrefix!4545 pBis!107 input!3342)))

(assert (=> d!1237491 (= (lemmaIsPrefixSameLengthThenSameList!1009 pBis!107 lt!1494650 input!3342) lt!1494750)))

(declare-fun bs!596821 () Bool)

(assert (= bs!596821 d!1237491))

(declare-fun m!4784903 () Bool)

(assert (=> bs!596821 m!4784903))

(assert (=> bs!596821 m!4784619))

(assert (=> b!4195736 d!1237491))

(declare-fun b!4195977 () Bool)

(declare-fun e!2604632 () Bool)

(declare-fun call!292437 () Bool)

(assert (=> b!4195977 (= e!2604632 call!292437)))

(declare-fun bm!292432 () Bool)

(declare-fun call!292439 () Bool)

(assert (=> bm!292432 (= call!292439 call!292437)))

(declare-fun b!4195978 () Bool)

(declare-fun e!2604637 () Bool)

(declare-fun e!2604636 () Bool)

(assert (=> b!4195978 (= e!2604637 e!2604636)))

(declare-fun c!715755 () Bool)

(assert (=> b!4195978 (= c!715755 ((_ is Union!12593) (regex!7688 r!4142)))))

(declare-fun b!4195979 () Bool)

(declare-fun res!1722620 () Bool)

(declare-fun e!2604635 () Bool)

(assert (=> b!4195979 (=> res!1722620 e!2604635)))

(assert (=> b!4195979 (= res!1722620 (not ((_ is Concat!20512) (regex!7688 r!4142))))))

(assert (=> b!4195979 (= e!2604636 e!2604635)))

(declare-fun b!4195980 () Bool)

(declare-fun e!2604634 () Bool)

(assert (=> b!4195980 (= e!2604634 call!292439)))

(declare-fun b!4195981 () Bool)

(declare-fun e!2604638 () Bool)

(assert (=> b!4195981 (= e!2604638 call!292439)))

(declare-fun b!4195982 () Bool)

(declare-fun e!2604633 () Bool)

(assert (=> b!4195982 (= e!2604633 e!2604637)))

(declare-fun c!715754 () Bool)

(assert (=> b!4195982 (= c!715754 ((_ is Star!12593) (regex!7688 r!4142)))))

(declare-fun b!4195983 () Bool)

(declare-fun res!1722616 () Bool)

(assert (=> b!4195983 (=> (not res!1722616) (not e!2604638))))

(declare-fun call!292438 () Bool)

(assert (=> b!4195983 (= res!1722616 call!292438)))

(assert (=> b!4195983 (= e!2604636 e!2604638)))

(declare-fun b!4195984 () Bool)

(assert (=> b!4195984 (= e!2604635 e!2604634)))

(declare-fun res!1722618 () Bool)

(assert (=> b!4195984 (=> (not res!1722618) (not e!2604634))))

(assert (=> b!4195984 (= res!1722618 call!292438)))

(declare-fun bm!292433 () Bool)

(assert (=> bm!292433 (= call!292438 (validRegex!5710 (ite c!715755 (regOne!25699 (regex!7688 r!4142)) (regOne!25698 (regex!7688 r!4142)))))))

(declare-fun d!1237493 () Bool)

(declare-fun res!1722617 () Bool)

(assert (=> d!1237493 (=> res!1722617 e!2604633)))

(assert (=> d!1237493 (= res!1722617 ((_ is ElementMatch!12593) (regex!7688 r!4142)))))

(assert (=> d!1237493 (= (validRegex!5710 (regex!7688 r!4142)) e!2604633)))

(declare-fun b!4195985 () Bool)

(assert (=> b!4195985 (= e!2604637 e!2604632)))

(declare-fun res!1722619 () Bool)

(assert (=> b!4195985 (= res!1722619 (not (nullable!4427 (reg!12922 (regex!7688 r!4142)))))))

(assert (=> b!4195985 (=> (not res!1722619) (not e!2604632))))

(declare-fun bm!292434 () Bool)

(assert (=> bm!292434 (= call!292437 (validRegex!5710 (ite c!715754 (reg!12922 (regex!7688 r!4142)) (ite c!715755 (regTwo!25699 (regex!7688 r!4142)) (regTwo!25698 (regex!7688 r!4142))))))))

(assert (= (and d!1237493 (not res!1722617)) b!4195982))

(assert (= (and b!4195982 c!715754) b!4195985))

(assert (= (and b!4195982 (not c!715754)) b!4195978))

(assert (= (and b!4195985 res!1722619) b!4195977))

(assert (= (and b!4195978 c!715755) b!4195983))

(assert (= (and b!4195978 (not c!715755)) b!4195979))

(assert (= (and b!4195983 res!1722616) b!4195981))

(assert (= (and b!4195979 (not res!1722620)) b!4195984))

(assert (= (and b!4195984 res!1722618) b!4195980))

(assert (= (or b!4195981 b!4195980) bm!292432))

(assert (= (or b!4195983 b!4195984) bm!292433))

(assert (= (or b!4195977 bm!292432) bm!292434))

(declare-fun m!4784905 () Bool)

(assert (=> bm!292433 m!4784905))

(declare-fun m!4784907 () Bool)

(assert (=> b!4195985 m!4784907))

(declare-fun m!4784909 () Bool)

(assert (=> bm!292434 m!4784909))

(assert (=> b!4195725 d!1237493))

(declare-fun d!1237495 () Bool)

(declare-fun res!1722621 () Bool)

(declare-fun e!2604639 () Bool)

(assert (=> d!1237495 (=> (not res!1722621) (not e!2604639))))

(assert (=> d!1237495 (= res!1722621 (validRegex!5710 (regex!7688 r!4142)))))

(assert (=> d!1237495 (= (ruleValid!3406 thiss!25986 r!4142) e!2604639)))

(declare-fun b!4195986 () Bool)

(declare-fun res!1722622 () Bool)

(assert (=> b!4195986 (=> (not res!1722622) (not e!2604639))))

(assert (=> b!4195986 (= res!1722622 (not (nullable!4427 (regex!7688 r!4142))))))

(declare-fun b!4195987 () Bool)

(assert (=> b!4195987 (= e!2604639 (not (= (tag!8552 r!4142) (String!53457 ""))))))

(assert (= (and d!1237495 res!1722621) b!4195986))

(assert (= (and b!4195986 res!1722622) b!4195987))

(assert (=> d!1237495 m!4784649))

(declare-fun m!4784911 () Bool)

(assert (=> b!4195986 m!4784911))

(assert (=> b!4195723 d!1237495))

(declare-fun b!4196016 () Bool)

(declare-fun e!2604655 () Bool)

(assert (=> b!4196016 (= e!2604655 (not (= (head!8904 p!2959) (c!715718 (regex!7688 r!4142)))))))

(declare-fun b!4196017 () Bool)

(declare-fun e!2604659 () Bool)

(assert (=> b!4196017 (= e!2604659 (nullable!4427 (regex!7688 r!4142)))))

(declare-fun b!4196018 () Bool)

(declare-fun res!1722643 () Bool)

(declare-fun e!2604654 () Bool)

(assert (=> b!4196018 (=> res!1722643 e!2604654)))

(assert (=> b!4196018 (= res!1722643 (not ((_ is ElementMatch!12593) (regex!7688 r!4142))))))

(declare-fun e!2604658 () Bool)

(assert (=> b!4196018 (= e!2604658 e!2604654)))

(declare-fun b!4196019 () Bool)

(declare-fun e!2604660 () Bool)

(assert (=> b!4196019 (= e!2604660 e!2604658)))

(declare-fun c!715763 () Bool)

(assert (=> b!4196019 (= c!715763 ((_ is EmptyLang!12593) (regex!7688 r!4142)))))

(declare-fun b!4196020 () Bool)

(declare-fun res!1722644 () Bool)

(declare-fun e!2604656 () Bool)

(assert (=> b!4196020 (=> (not res!1722644) (not e!2604656))))

(assert (=> b!4196020 (= res!1722644 (isEmpty!27293 (tail!6751 p!2959)))))

(declare-fun b!4196021 () Bool)

(declare-fun res!1722639 () Bool)

(assert (=> b!4196021 (=> res!1722639 e!2604654)))

(assert (=> b!4196021 (= res!1722639 e!2604656)))

(declare-fun res!1722640 () Bool)

(assert (=> b!4196021 (=> (not res!1722640) (not e!2604656))))

(declare-fun lt!1494753 () Bool)

(assert (=> b!4196021 (= res!1722640 lt!1494753)))

(declare-fun b!4196022 () Bool)

(declare-fun call!292442 () Bool)

(assert (=> b!4196022 (= e!2604660 (= lt!1494753 call!292442))))

(declare-fun b!4196023 () Bool)

(declare-fun res!1722641 () Bool)

(assert (=> b!4196023 (=> (not res!1722641) (not e!2604656))))

(assert (=> b!4196023 (= res!1722641 (not call!292442))))

(declare-fun b!4196024 () Bool)

(declare-fun res!1722646 () Bool)

(assert (=> b!4196024 (=> res!1722646 e!2604655)))

(assert (=> b!4196024 (= res!1722646 (not (isEmpty!27293 (tail!6751 p!2959))))))

(declare-fun b!4196025 () Bool)

(declare-fun derivativeStep!3817 (Regex!12593 C!25376) Regex!12593)

(assert (=> b!4196025 (= e!2604659 (matchR!6332 (derivativeStep!3817 (regex!7688 r!4142) (head!8904 p!2959)) (tail!6751 p!2959)))))

(declare-fun b!4196026 () Bool)

(declare-fun e!2604657 () Bool)

(assert (=> b!4196026 (= e!2604657 e!2604655)))

(declare-fun res!1722645 () Bool)

(assert (=> b!4196026 (=> res!1722645 e!2604655)))

(assert (=> b!4196026 (= res!1722645 call!292442)))

(declare-fun b!4196027 () Bool)

(assert (=> b!4196027 (= e!2604656 (= (head!8904 p!2959) (c!715718 (regex!7688 r!4142))))))

(declare-fun bm!292437 () Bool)

(assert (=> bm!292437 (= call!292442 (isEmpty!27293 p!2959))))

(declare-fun d!1237497 () Bool)

(assert (=> d!1237497 e!2604660))

(declare-fun c!715762 () Bool)

(assert (=> d!1237497 (= c!715762 ((_ is EmptyExpr!12593) (regex!7688 r!4142)))))

(assert (=> d!1237497 (= lt!1494753 e!2604659)))

(declare-fun c!715764 () Bool)

(assert (=> d!1237497 (= c!715764 (isEmpty!27293 p!2959))))

(assert (=> d!1237497 (validRegex!5710 (regex!7688 r!4142))))

(assert (=> d!1237497 (= (matchR!6332 (regex!7688 r!4142) p!2959) lt!1494753)))

(declare-fun b!4196028 () Bool)

(assert (=> b!4196028 (= e!2604658 (not lt!1494753))))

(declare-fun b!4196029 () Bool)

(assert (=> b!4196029 (= e!2604654 e!2604657)))

(declare-fun res!1722642 () Bool)

(assert (=> b!4196029 (=> (not res!1722642) (not e!2604657))))

(assert (=> b!4196029 (= res!1722642 (not lt!1494753))))

(assert (= (and d!1237497 c!715764) b!4196017))

(assert (= (and d!1237497 (not c!715764)) b!4196025))

(assert (= (and d!1237497 c!715762) b!4196022))

(assert (= (and d!1237497 (not c!715762)) b!4196019))

(assert (= (and b!4196019 c!715763) b!4196028))

(assert (= (and b!4196019 (not c!715763)) b!4196018))

(assert (= (and b!4196018 (not res!1722643)) b!4196021))

(assert (= (and b!4196021 res!1722640) b!4196023))

(assert (= (and b!4196023 res!1722641) b!4196020))

(assert (= (and b!4196020 res!1722644) b!4196027))

(assert (= (and b!4196021 (not res!1722639)) b!4196029))

(assert (= (and b!4196029 res!1722642) b!4196026))

(assert (= (and b!4196026 (not res!1722645)) b!4196024))

(assert (= (and b!4196024 (not res!1722646)) b!4196016))

(assert (= (or b!4196022 b!4196023 b!4196026) bm!292437))

(assert (=> b!4196017 m!4784911))

(declare-fun m!4784913 () Bool)

(assert (=> d!1237497 m!4784913))

(assert (=> d!1237497 m!4784649))

(assert (=> b!4196025 m!4784857))

(assert (=> b!4196025 m!4784857))

(declare-fun m!4784915 () Bool)

(assert (=> b!4196025 m!4784915))

(assert (=> b!4196025 m!4784853))

(assert (=> b!4196025 m!4784915))

(assert (=> b!4196025 m!4784853))

(declare-fun m!4784917 () Bool)

(assert (=> b!4196025 m!4784917))

(assert (=> b!4196016 m!4784857))

(assert (=> b!4196024 m!4784853))

(assert (=> b!4196024 m!4784853))

(declare-fun m!4784919 () Bool)

(assert (=> b!4196024 m!4784919))

(assert (=> b!4196027 m!4784857))

(assert (=> bm!292437 m!4784913))

(assert (=> b!4196020 m!4784853))

(assert (=> b!4196020 m!4784853))

(assert (=> b!4196020 m!4784919))

(assert (=> b!4195724 d!1237497))

(declare-fun d!1237499 () Bool)

(declare-fun lt!1494756 () Int)

(assert (=> d!1237499 (= lt!1494756 (size!33872 (list!16658 lt!1494640)))))

(declare-fun size!33875 (Conc!13899) Int)

(assert (=> d!1237499 (= lt!1494756 (size!33875 (c!715719 lt!1494640)))))

(assert (=> d!1237499 (= (size!33873 lt!1494640) lt!1494756)))

(declare-fun bs!596822 () Bool)

(assert (= bs!596822 d!1237499))

(assert (=> bs!596822 m!4784637))

(assert (=> bs!596822 m!4784637))

(declare-fun m!4784921 () Bool)

(assert (=> bs!596822 m!4784921))

(declare-fun m!4784923 () Bool)

(assert (=> bs!596822 m!4784923))

(assert (=> b!4195722 d!1237499))

(declare-fun b!4196213 () Bool)

(declare-fun e!2604760 () Bool)

(assert (=> b!4196213 (= e!2604760 true)))

(declare-fun d!1237501 () Bool)

(assert (=> d!1237501 e!2604760))

(assert (= d!1237501 b!4196213))

(declare-fun lambda!129547 () Int)

(declare-fun order!24415 () Int)

(declare-fun order!24413 () Int)

(declare-fun dynLambda!19860 (Int Int) Int)

(declare-fun dynLambda!19861 (Int Int) Int)

(assert (=> b!4196213 (< (dynLambda!19860 order!24413 (toValue!10388 (transformation!7688 r!4142))) (dynLambda!19861 order!24415 lambda!129547))))

(declare-fun order!24417 () Int)

(declare-fun dynLambda!19862 (Int Int) Int)

(assert (=> b!4196213 (< (dynLambda!19862 order!24417 (toChars!10247 (transformation!7688 r!4142))) (dynLambda!19861 order!24415 lambda!129547))))

(declare-fun dynLambda!19863 (Int BalanceConc!27392) TokenValue!7918)

(assert (=> d!1237501 (= (list!16658 (dynLambda!19859 (toChars!10247 (transformation!7688 r!4142)) (dynLambda!19863 (toValue!10388 (transformation!7688 r!4142)) lt!1494653))) (list!16658 lt!1494653))))

(declare-fun lt!1494813 () Unit!65181)

(declare-fun ForallOf!1070 (Int BalanceConc!27392) Unit!65181)

(assert (=> d!1237501 (= lt!1494813 (ForallOf!1070 lambda!129547 lt!1494653))))

(assert (=> d!1237501 (= (lemmaSemiInverse!2454 (transformation!7688 r!4142) lt!1494653) lt!1494813)))

(declare-fun b_lambda!123495 () Bool)

(assert (=> (not b_lambda!123495) (not d!1237501)))

(declare-fun t!346504 () Bool)

(declare-fun tb!251505 () Bool)

(assert (=> (and b!4195740 (= (toChars!10247 (transformation!7688 rBis!167)) (toChars!10247 (transformation!7688 r!4142))) t!346504) tb!251505))

(declare-fun tp!1281886 () Bool)

(declare-fun b!4196214 () Bool)

(declare-fun e!2604761 () Bool)

(assert (=> b!4196214 (= e!2604761 (and (inv!60645 (c!715719 (dynLambda!19859 (toChars!10247 (transformation!7688 r!4142)) (dynLambda!19863 (toValue!10388 (transformation!7688 r!4142)) lt!1494653)))) tp!1281886))))

(declare-fun result!306526 () Bool)

(assert (=> tb!251505 (= result!306526 (and (inv!60646 (dynLambda!19859 (toChars!10247 (transformation!7688 r!4142)) (dynLambda!19863 (toValue!10388 (transformation!7688 r!4142)) lt!1494653))) e!2604761))))

(assert (= tb!251505 b!4196214))

(declare-fun m!4785119 () Bool)

(assert (=> b!4196214 m!4785119))

(declare-fun m!4785121 () Bool)

(assert (=> tb!251505 m!4785121))

(assert (=> d!1237501 t!346504))

(declare-fun b_and!329115 () Bool)

(assert (= b_and!329087 (and (=> t!346504 result!306526) b_and!329115)))

(declare-fun t!346506 () Bool)

(declare-fun tb!251507 () Bool)

(assert (=> (and b!4195731 (= (toChars!10247 (transformation!7688 (h!51505 rules!3843))) (toChars!10247 (transformation!7688 r!4142))) t!346506) tb!251507))

(declare-fun result!306528 () Bool)

(assert (= result!306528 result!306526))

(assert (=> d!1237501 t!346506))

(declare-fun b_and!329117 () Bool)

(assert (= b_and!329089 (and (=> t!346506 result!306528) b_and!329117)))

(declare-fun t!346508 () Bool)

(declare-fun tb!251509 () Bool)

(assert (=> (and b!4195734 (= (toChars!10247 (transformation!7688 r!4142)) (toChars!10247 (transformation!7688 r!4142))) t!346508) tb!251509))

(declare-fun result!306530 () Bool)

(assert (= result!306530 result!306526))

(assert (=> d!1237501 t!346508))

(declare-fun b_and!329119 () Bool)

(assert (= b_and!329091 (and (=> t!346508 result!306530) b_and!329119)))

(declare-fun b_lambda!123497 () Bool)

(assert (=> (not b_lambda!123497) (not d!1237501)))

(declare-fun t!346510 () Bool)

(declare-fun tb!251511 () Bool)

(assert (=> (and b!4195740 (= (toValue!10388 (transformation!7688 rBis!167)) (toValue!10388 (transformation!7688 r!4142))) t!346510) tb!251511))

(declare-fun result!306532 () Bool)

(declare-fun inv!21 (TokenValue!7918) Bool)

(assert (=> tb!251511 (= result!306532 (inv!21 (dynLambda!19863 (toValue!10388 (transformation!7688 r!4142)) lt!1494653)))))

(declare-fun m!4785123 () Bool)

(assert (=> tb!251511 m!4785123))

(assert (=> d!1237501 t!346510))

(declare-fun b_and!329121 () Bool)

(assert (= b_and!329069 (and (=> t!346510 result!306532) b_and!329121)))

(declare-fun t!346512 () Bool)

(declare-fun tb!251513 () Bool)

(assert (=> (and b!4195731 (= (toValue!10388 (transformation!7688 (h!51505 rules!3843))) (toValue!10388 (transformation!7688 r!4142))) t!346512) tb!251513))

(declare-fun result!306536 () Bool)

(assert (= result!306536 result!306532))

(assert (=> d!1237501 t!346512))

(declare-fun b_and!329123 () Bool)

(assert (= b_and!329073 (and (=> t!346512 result!306536) b_and!329123)))

(declare-fun t!346514 () Bool)

(declare-fun tb!251515 () Bool)

(assert (=> (and b!4195734 (= (toValue!10388 (transformation!7688 r!4142)) (toValue!10388 (transformation!7688 r!4142))) t!346514) tb!251515))

(declare-fun result!306538 () Bool)

(assert (= result!306538 result!306532))

(assert (=> d!1237501 t!346514))

(declare-fun b_and!329125 () Bool)

(assert (= b_and!329077 (and (=> t!346514 result!306538) b_and!329125)))

(declare-fun m!4785125 () Bool)

(assert (=> d!1237501 m!4785125))

(declare-fun m!4785127 () Bool)

(assert (=> d!1237501 m!4785127))

(declare-fun m!4785129 () Bool)

(assert (=> d!1237501 m!4785129))

(declare-fun m!4785131 () Bool)

(assert (=> d!1237501 m!4785131))

(declare-fun m!4785133 () Bool)

(assert (=> d!1237501 m!4785133))

(assert (=> d!1237501 m!4785129))

(assert (=> d!1237501 m!4785125))

(assert (=> b!4195733 d!1237501))

(declare-fun d!1237565 () Bool)

(declare-fun lt!1494816 () List!46207)

(assert (=> d!1237565 (= (++!11760 p!2959 lt!1494816) input!3342)))

(declare-fun e!2604767 () List!46207)

(assert (=> d!1237565 (= lt!1494816 e!2604767)))

(declare-fun c!715788 () Bool)

(assert (=> d!1237565 (= c!715788 ((_ is Cons!46083) p!2959))))

(assert (=> d!1237565 (>= (size!33872 input!3342) (size!33872 p!2959))))

(assert (=> d!1237565 (= (getSuffix!2838 input!3342 p!2959) lt!1494816)))

(declare-fun b!4196221 () Bool)

(assert (=> b!4196221 (= e!2604767 (getSuffix!2838 (tail!6751 input!3342) (t!346470 p!2959)))))

(declare-fun b!4196222 () Bool)

(assert (=> b!4196222 (= e!2604767 input!3342)))

(assert (= (and d!1237565 c!715788) b!4196221))

(assert (= (and d!1237565 (not c!715788)) b!4196222))

(declare-fun m!4785135 () Bool)

(assert (=> d!1237565 m!4785135))

(assert (=> d!1237565 m!4784603))

(assert (=> d!1237565 m!4784589))

(assert (=> b!4196221 m!4784727))

(assert (=> b!4196221 m!4784727))

(declare-fun m!4785137 () Bool)

(assert (=> b!4196221 m!4785137))

(assert (=> b!4195733 d!1237565))

(declare-fun d!1237567 () Bool)

(declare-fun e!2604769 () Bool)

(assert (=> d!1237567 e!2604769))

(declare-fun res!1722735 () Bool)

(assert (=> d!1237567 (=> res!1722735 e!2604769)))

(declare-fun lt!1494817 () Bool)

(assert (=> d!1237567 (= res!1722735 (not lt!1494817))))

(declare-fun e!2604768 () Bool)

(assert (=> d!1237567 (= lt!1494817 e!2604768)))

(declare-fun res!1722736 () Bool)

(assert (=> d!1237567 (=> res!1722736 e!2604768)))

(assert (=> d!1237567 (= res!1722736 ((_ is Nil!46083) input!3342))))

(assert (=> d!1237567 (= (isPrefix!4545 input!3342 input!3342) lt!1494817)))

(declare-fun b!4196223 () Bool)

(declare-fun e!2604770 () Bool)

(assert (=> b!4196223 (= e!2604768 e!2604770)))

(declare-fun res!1722738 () Bool)

(assert (=> b!4196223 (=> (not res!1722738) (not e!2604770))))

(assert (=> b!4196223 (= res!1722738 (not ((_ is Nil!46083) input!3342)))))

(declare-fun b!4196225 () Bool)

(assert (=> b!4196225 (= e!2604770 (isPrefix!4545 (tail!6751 input!3342) (tail!6751 input!3342)))))

(declare-fun b!4196226 () Bool)

(assert (=> b!4196226 (= e!2604769 (>= (size!33872 input!3342) (size!33872 input!3342)))))

(declare-fun b!4196224 () Bool)

(declare-fun res!1722737 () Bool)

(assert (=> b!4196224 (=> (not res!1722737) (not e!2604770))))

(assert (=> b!4196224 (= res!1722737 (= (head!8904 input!3342) (head!8904 input!3342)))))

(assert (= (and d!1237567 (not res!1722736)) b!4196223))

(assert (= (and b!4196223 res!1722738) b!4196224))

(assert (= (and b!4196224 res!1722737) b!4196225))

(assert (= (and d!1237567 (not res!1722735)) b!4196226))

(assert (=> b!4196225 m!4784727))

(assert (=> b!4196225 m!4784727))

(assert (=> b!4196225 m!4784727))

(assert (=> b!4196225 m!4784727))

(declare-fun m!4785139 () Bool)

(assert (=> b!4196225 m!4785139))

(assert (=> b!4196226 m!4784603))

(assert (=> b!4196226 m!4784603))

(assert (=> b!4196224 m!4784733))

(assert (=> b!4196224 m!4784733))

(assert (=> b!4195733 d!1237567))

(declare-fun d!1237569 () Bool)

(declare-fun fromListB!2619 (List!46207) BalanceConc!27392)

(assert (=> d!1237569 (= (seqFromList!5713 p!2959) (fromListB!2619 p!2959))))

(declare-fun bs!596830 () Bool)

(assert (= bs!596830 d!1237569))

(declare-fun m!4785141 () Bool)

(assert (=> bs!596830 m!4785141))

(assert (=> b!4195733 d!1237569))

(declare-fun d!1237571 () Bool)

(assert (=> d!1237571 (isPrefix!4545 input!3342 input!3342)))

(declare-fun lt!1494820 () Unit!65181)

(declare-fun choose!25725 (List!46207 List!46207) Unit!65181)

(assert (=> d!1237571 (= lt!1494820 (choose!25725 input!3342 input!3342))))

(assert (=> d!1237571 (= (lemmaIsPrefixRefl!2974 input!3342 input!3342) lt!1494820)))

(declare-fun bs!596831 () Bool)

(assert (= bs!596831 d!1237571))

(assert (=> bs!596831 m!4784593))

(declare-fun m!4785143 () Bool)

(assert (=> bs!596831 m!4785143))

(assert (=> b!4195733 d!1237571))

(declare-fun d!1237573 () Bool)

(assert (=> d!1237573 (= (apply!10653 (transformation!7688 r!4142) lt!1494653) (dynLambda!19863 (toValue!10388 (transformation!7688 r!4142)) lt!1494653))))

(declare-fun b_lambda!123499 () Bool)

(assert (=> (not b_lambda!123499) (not d!1237573)))

(assert (=> d!1237573 t!346510))

(declare-fun b_and!329127 () Bool)

(assert (= b_and!329121 (and (=> t!346510 result!306532) b_and!329127)))

(assert (=> d!1237573 t!346512))

(declare-fun b_and!329129 () Bool)

(assert (= b_and!329123 (and (=> t!346512 result!306536) b_and!329129)))

(assert (=> d!1237573 t!346514))

(declare-fun b_and!329131 () Bool)

(assert (= b_and!329125 (and (=> t!346514 result!306538) b_and!329131)))

(assert (=> d!1237573 m!4785129))

(assert (=> b!4195733 d!1237573))

(declare-fun b!4196227 () Bool)

(declare-fun e!2604771 () Bool)

(declare-fun e!2604773 () Bool)

(assert (=> b!4196227 (= e!2604771 e!2604773)))

(declare-fun res!1722744 () Bool)

(assert (=> b!4196227 (=> (not res!1722744) (not e!2604773))))

(declare-fun lt!1494825 () Option!9882)

(assert (=> b!4196227 (= res!1722744 (matchR!6332 (regex!7688 r!4142) (list!16658 (charsOf!5123 (_1!25071 (get!14991 lt!1494825))))))))

(declare-fun b!4196228 () Bool)

(declare-fun res!1722743 () Bool)

(assert (=> b!4196228 (=> (not res!1722743) (not e!2604773))))

(assert (=> b!4196228 (= res!1722743 (= (rule!10780 (_1!25071 (get!14991 lt!1494825))) r!4142))))

(declare-fun b!4196229 () Bool)

(declare-fun e!2604772 () Option!9882)

(assert (=> b!4196229 (= e!2604772 None!9881)))

(declare-fun b!4196230 () Bool)

(assert (=> b!4196230 (= e!2604773 (= (size!33871 (_1!25071 (get!14991 lt!1494825))) (size!33872 (originalCharacters!8076 (_1!25071 (get!14991 lt!1494825))))))))

(declare-fun b!4196231 () Bool)

(declare-fun res!1722745 () Bool)

(assert (=> b!4196231 (=> (not res!1722745) (not e!2604773))))

(assert (=> b!4196231 (= res!1722745 (= (value!239640 (_1!25071 (get!14991 lt!1494825))) (apply!10653 (transformation!7688 (rule!10780 (_1!25071 (get!14991 lt!1494825)))) (seqFromList!5713 (originalCharacters!8076 (_1!25071 (get!14991 lt!1494825)))))))))

(declare-fun b!4196232 () Bool)

(declare-fun e!2604774 () Bool)

(assert (=> b!4196232 (= e!2604774 (matchR!6332 (regex!7688 r!4142) (_1!25073 (findLongestMatchInner!1617 (regex!7688 r!4142) Nil!46083 (size!33872 Nil!46083) input!3342 input!3342 (size!33872 input!3342)))))))

(declare-fun b!4196233 () Bool)

(declare-fun lt!1494823 () tuple2!43878)

(assert (=> b!4196233 (= e!2604772 (Some!9881 (tuple2!43875 (Token!14091 (apply!10653 (transformation!7688 r!4142) (seqFromList!5713 (_1!25073 lt!1494823))) r!4142 (size!33873 (seqFromList!5713 (_1!25073 lt!1494823))) (_1!25073 lt!1494823)) (_2!25073 lt!1494823))))))

(declare-fun lt!1494821 () Unit!65181)

(assert (=> b!4196233 (= lt!1494821 (longestMatchIsAcceptedByMatchOrIsEmpty!1590 (regex!7688 r!4142) input!3342))))

(declare-fun res!1722739 () Bool)

(assert (=> b!4196233 (= res!1722739 (isEmpty!27293 (_1!25073 (findLongestMatchInner!1617 (regex!7688 r!4142) Nil!46083 (size!33872 Nil!46083) input!3342 input!3342 (size!33872 input!3342)))))))

(assert (=> b!4196233 (=> res!1722739 e!2604774)))

(assert (=> b!4196233 e!2604774))

(declare-fun lt!1494824 () Unit!65181)

(assert (=> b!4196233 (= lt!1494824 lt!1494821)))

(declare-fun lt!1494822 () Unit!65181)

(assert (=> b!4196233 (= lt!1494822 (lemmaSemiInverse!2454 (transformation!7688 r!4142) (seqFromList!5713 (_1!25073 lt!1494823))))))

(declare-fun b!4196234 () Bool)

(declare-fun res!1722741 () Bool)

(assert (=> b!4196234 (=> (not res!1722741) (not e!2604773))))

(assert (=> b!4196234 (= res!1722741 (< (size!33872 (_2!25071 (get!14991 lt!1494825))) (size!33872 input!3342)))))

(declare-fun b!4196235 () Bool)

(declare-fun res!1722740 () Bool)

(assert (=> b!4196235 (=> (not res!1722740) (not e!2604773))))

(assert (=> b!4196235 (= res!1722740 (= (++!11760 (list!16658 (charsOf!5123 (_1!25071 (get!14991 lt!1494825)))) (_2!25071 (get!14991 lt!1494825))) input!3342))))

(declare-fun d!1237575 () Bool)

(assert (=> d!1237575 e!2604771))

(declare-fun res!1722742 () Bool)

(assert (=> d!1237575 (=> res!1722742 e!2604771)))

(assert (=> d!1237575 (= res!1722742 (isEmpty!27290 lt!1494825))))

(assert (=> d!1237575 (= lt!1494825 e!2604772)))

(declare-fun c!715789 () Bool)

(assert (=> d!1237575 (= c!715789 (isEmpty!27293 (_1!25073 lt!1494823)))))

(assert (=> d!1237575 (= lt!1494823 (findLongestMatch!1530 (regex!7688 r!4142) input!3342))))

(assert (=> d!1237575 (ruleValid!3406 thiss!25986 r!4142)))

(assert (=> d!1237575 (= (maxPrefixOneRule!3290 thiss!25986 r!4142 input!3342) lt!1494825)))

(assert (= (and d!1237575 c!715789) b!4196229))

(assert (= (and d!1237575 (not c!715789)) b!4196233))

(assert (= (and b!4196233 (not res!1722739)) b!4196232))

(assert (= (and d!1237575 (not res!1722742)) b!4196227))

(assert (= (and b!4196227 res!1722744) b!4196235))

(assert (= (and b!4196235 res!1722740) b!4196234))

(assert (= (and b!4196234 res!1722741) b!4196228))

(assert (= (and b!4196228 res!1722743) b!4196231))

(assert (= (and b!4196231 res!1722745) b!4196230))

(declare-fun m!4785145 () Bool)

(assert (=> d!1237575 m!4785145))

(declare-fun m!4785147 () Bool)

(assert (=> d!1237575 m!4785147))

(declare-fun m!4785149 () Bool)

(assert (=> d!1237575 m!4785149))

(assert (=> d!1237575 m!4784615))

(declare-fun m!4785151 () Bool)

(assert (=> b!4196235 m!4785151))

(declare-fun m!4785153 () Bool)

(assert (=> b!4196235 m!4785153))

(assert (=> b!4196235 m!4785153))

(declare-fun m!4785155 () Bool)

(assert (=> b!4196235 m!4785155))

(assert (=> b!4196235 m!4785155))

(declare-fun m!4785157 () Bool)

(assert (=> b!4196235 m!4785157))

(assert (=> b!4196228 m!4785151))

(assert (=> b!4196230 m!4785151))

(declare-fun m!4785159 () Bool)

(assert (=> b!4196230 m!4785159))

(assert (=> b!4196227 m!4785151))

(assert (=> b!4196227 m!4785153))

(assert (=> b!4196227 m!4785153))

(assert (=> b!4196227 m!4785155))

(assert (=> b!4196227 m!4785155))

(declare-fun m!4785161 () Bool)

(assert (=> b!4196227 m!4785161))

(assert (=> b!4196232 m!4784803))

(assert (=> b!4196232 m!4784603))

(assert (=> b!4196232 m!4784803))

(assert (=> b!4196232 m!4784603))

(declare-fun m!4785163 () Bool)

(assert (=> b!4196232 m!4785163))

(declare-fun m!4785165 () Bool)

(assert (=> b!4196232 m!4785165))

(assert (=> b!4196234 m!4785151))

(declare-fun m!4785167 () Bool)

(assert (=> b!4196234 m!4785167))

(assert (=> b!4196234 m!4784603))

(assert (=> b!4196231 m!4785151))

(declare-fun m!4785169 () Bool)

(assert (=> b!4196231 m!4785169))

(assert (=> b!4196231 m!4785169))

(declare-fun m!4785171 () Bool)

(assert (=> b!4196231 m!4785171))

(assert (=> b!4196233 m!4784803))

(assert (=> b!4196233 m!4784603))

(assert (=> b!4196233 m!4785163))

(declare-fun m!4785173 () Bool)

(assert (=> b!4196233 m!4785173))

(declare-fun m!4785175 () Bool)

(assert (=> b!4196233 m!4785175))

(declare-fun m!4785177 () Bool)

(assert (=> b!4196233 m!4785177))

(assert (=> b!4196233 m!4784603))

(declare-fun m!4785179 () Bool)

(assert (=> b!4196233 m!4785179))

(assert (=> b!4196233 m!4785175))

(assert (=> b!4196233 m!4785175))

(declare-fun m!4785181 () Bool)

(assert (=> b!4196233 m!4785181))

(assert (=> b!4196233 m!4784803))

(assert (=> b!4196233 m!4785175))

(declare-fun m!4785183 () Bool)

(assert (=> b!4196233 m!4785183))

(assert (=> b!4195733 d!1237575))

(declare-fun d!1237577 () Bool)

(declare-fun lt!1494826 () Int)

(assert (=> d!1237577 (>= lt!1494826 0)))

(declare-fun e!2604775 () Int)

(assert (=> d!1237577 (= lt!1494826 e!2604775)))

(declare-fun c!715790 () Bool)

(assert (=> d!1237577 (= c!715790 ((_ is Nil!46083) p!2959))))

(assert (=> d!1237577 (= (size!33872 p!2959) lt!1494826)))

(declare-fun b!4196236 () Bool)

(assert (=> b!4196236 (= e!2604775 0)))

(declare-fun b!4196237 () Bool)

(assert (=> b!4196237 (= e!2604775 (+ 1 (size!33872 (t!346470 p!2959))))))

(assert (= (and d!1237577 c!715790) b!4196236))

(assert (= (and d!1237577 (not c!715790)) b!4196237))

(declare-fun m!4785185 () Bool)

(assert (=> b!4196237 m!4785185))

(assert (=> b!4195733 d!1237577))

(declare-fun d!1237579 () Bool)

(declare-fun e!2604777 () Bool)

(assert (=> d!1237579 e!2604777))

(declare-fun res!1722746 () Bool)

(assert (=> d!1237579 (=> res!1722746 e!2604777)))

(declare-fun lt!1494827 () Bool)

(assert (=> d!1237579 (= res!1722746 (not lt!1494827))))

(declare-fun e!2604776 () Bool)

(assert (=> d!1237579 (= lt!1494827 e!2604776)))

(declare-fun res!1722747 () Bool)

(assert (=> d!1237579 (=> res!1722747 e!2604776)))

(assert (=> d!1237579 (= res!1722747 ((_ is Nil!46083) lt!1494650))))

(assert (=> d!1237579 (= (isPrefix!4545 lt!1494650 input!3342) lt!1494827)))

(declare-fun b!4196238 () Bool)

(declare-fun e!2604778 () Bool)

(assert (=> b!4196238 (= e!2604776 e!2604778)))

(declare-fun res!1722749 () Bool)

(assert (=> b!4196238 (=> (not res!1722749) (not e!2604778))))

(assert (=> b!4196238 (= res!1722749 (not ((_ is Nil!46083) input!3342)))))

(declare-fun b!4196240 () Bool)

(assert (=> b!4196240 (= e!2604778 (isPrefix!4545 (tail!6751 lt!1494650) (tail!6751 input!3342)))))

(declare-fun b!4196241 () Bool)

(assert (=> b!4196241 (= e!2604777 (>= (size!33872 input!3342) (size!33872 lt!1494650)))))

(declare-fun b!4196239 () Bool)

(declare-fun res!1722748 () Bool)

(assert (=> b!4196239 (=> (not res!1722748) (not e!2604778))))

(assert (=> b!4196239 (= res!1722748 (= (head!8904 lt!1494650) (head!8904 input!3342)))))

(assert (= (and d!1237579 (not res!1722747)) b!4196238))

(assert (= (and b!4196238 res!1722749) b!4196239))

(assert (= (and b!4196239 res!1722748) b!4196240))

(assert (= (and d!1237579 (not res!1722746)) b!4196241))

(assert (=> b!4196240 m!4784881))

(assert (=> b!4196240 m!4784727))

(assert (=> b!4196240 m!4784881))

(assert (=> b!4196240 m!4784727))

(declare-fun m!4785187 () Bool)

(assert (=> b!4196240 m!4785187))

(assert (=> b!4196241 m!4784603))

(assert (=> b!4196241 m!4784617))

(assert (=> b!4196239 m!4784889))

(assert (=> b!4196239 m!4784733))

(assert (=> b!4195742 d!1237579))

(declare-fun d!1237581 () Bool)

(assert (=> d!1237581 (= (inv!60640 (tag!8552 r!4142)) (= (mod (str.len (value!239639 (tag!8552 r!4142))) 2) 0))))

(assert (=> b!4195732 d!1237581))

(declare-fun d!1237583 () Bool)

(declare-fun res!1722750 () Bool)

(declare-fun e!2604779 () Bool)

(assert (=> d!1237583 (=> (not res!1722750) (not e!2604779))))

(assert (=> d!1237583 (= res!1722750 (semiInverseModEq!3336 (toChars!10247 (transformation!7688 r!4142)) (toValue!10388 (transformation!7688 r!4142))))))

(assert (=> d!1237583 (= (inv!60642 (transformation!7688 r!4142)) e!2604779)))

(declare-fun b!4196242 () Bool)

(assert (=> b!4196242 (= e!2604779 (equivClasses!3235 (toChars!10247 (transformation!7688 r!4142)) (toValue!10388 (transformation!7688 r!4142))))))

(assert (= (and d!1237583 res!1722750) b!4196242))

(declare-fun m!4785189 () Bool)

(assert (=> d!1237583 m!4785189))

(declare-fun m!4785191 () Bool)

(assert (=> b!4196242 m!4785191))

(assert (=> b!4195732 d!1237583))

(declare-fun d!1237585 () Bool)

(declare-fun lt!1494828 () Int)

(assert (=> d!1237585 (>= lt!1494828 0)))

(declare-fun e!2604780 () Int)

(assert (=> d!1237585 (= lt!1494828 e!2604780)))

(declare-fun c!715791 () Bool)

(assert (=> d!1237585 (= c!715791 ((_ is Nil!46083) lt!1494650))))

(assert (=> d!1237585 (= (size!33872 lt!1494650) lt!1494828)))

(declare-fun b!4196243 () Bool)

(assert (=> b!4196243 (= e!2604780 0)))

(declare-fun b!4196244 () Bool)

(assert (=> b!4196244 (= e!2604780 (+ 1 (size!33872 (t!346470 lt!1494650))))))

(assert (= (and d!1237585 c!715791) b!4196243))

(assert (= (and d!1237585 (not c!715791)) b!4196244))

(declare-fun m!4785193 () Bool)

(assert (=> b!4196244 m!4785193))

(assert (=> b!4195721 d!1237585))

(declare-fun b!4196255 () Bool)

(declare-fun b_free!122271 () Bool)

(declare-fun b_next!122975 () Bool)

(assert (=> b!4196255 (= b_free!122271 (not b_next!122975))))

(declare-fun t!346516 () Bool)

(declare-fun tb!251517 () Bool)

(assert (=> (and b!4196255 (= (toValue!10388 (transformation!7688 (h!51505 (t!346472 rules!3843)))) (toValue!10388 (transformation!7688 r!4142))) t!346516) tb!251517))

(declare-fun result!306542 () Bool)

(assert (= result!306542 result!306532))

(assert (=> d!1237501 t!346516))

(assert (=> d!1237573 t!346516))

(declare-fun b_and!329133 () Bool)

(declare-fun tp!1281898 () Bool)

(assert (=> b!4196255 (= tp!1281898 (and (=> t!346516 result!306542) b_and!329133))))

(declare-fun b_free!122273 () Bool)

(declare-fun b_next!122977 () Bool)

(assert (=> b!4196255 (= b_free!122273 (not b_next!122977))))

(declare-fun tb!251519 () Bool)

(declare-fun t!346518 () Bool)

(assert (=> (and b!4196255 (= (toChars!10247 (transformation!7688 (h!51505 (t!346472 rules!3843)))) (toChars!10247 (transformation!7688 (rule!10780 (_1!25071 lt!1494644))))) t!346518) tb!251519))

(declare-fun result!306544 () Bool)

(assert (= result!306544 result!306492))

(assert (=> d!1237485 t!346518))

(declare-fun t!346520 () Bool)

(declare-fun tb!251521 () Bool)

(assert (=> (and b!4196255 (= (toChars!10247 (transformation!7688 (h!51505 (t!346472 rules!3843)))) (toChars!10247 (transformation!7688 r!4142))) t!346520) tb!251521))

(declare-fun result!306546 () Bool)

(assert (= result!306546 result!306526))

(assert (=> d!1237501 t!346520))

(declare-fun b_and!329135 () Bool)

(declare-fun tp!1281895 () Bool)

(assert (=> b!4196255 (= tp!1281895 (and (=> t!346518 result!306544) (=> t!346520 result!306546) b_and!329135))))

(declare-fun e!2604789 () Bool)

(assert (=> b!4196255 (= e!2604789 (and tp!1281898 tp!1281895))))

(declare-fun tp!1281896 () Bool)

(declare-fun b!4196254 () Bool)

(declare-fun e!2604791 () Bool)

(assert (=> b!4196254 (= e!2604791 (and tp!1281896 (inv!60640 (tag!8552 (h!51505 (t!346472 rules!3843)))) (inv!60642 (transformation!7688 (h!51505 (t!346472 rules!3843)))) e!2604789))))

(declare-fun b!4196253 () Bool)

(declare-fun e!2604792 () Bool)

(declare-fun tp!1281897 () Bool)

(assert (=> b!4196253 (= e!2604792 (and e!2604791 tp!1281897))))

(assert (=> b!4195713 (= tp!1281831 e!2604792)))

(assert (= b!4196254 b!4196255))

(assert (= b!4196253 b!4196254))

(assert (= (and b!4195713 ((_ is Cons!46085) (t!346472 rules!3843))) b!4196253))

(declare-fun m!4785195 () Bool)

(assert (=> b!4196254 m!4785195))

(declare-fun m!4785197 () Bool)

(assert (=> b!4196254 m!4785197))

(declare-fun b!4196260 () Bool)

(declare-fun e!2604795 () Bool)

(declare-fun tp!1281901 () Bool)

(assert (=> b!4196260 (= e!2604795 (and tp_is_empty!22149 tp!1281901))))

(assert (=> b!4195738 (= tp!1281826 e!2604795)))

(assert (= (and b!4195738 ((_ is Cons!46083) (t!346470 pBis!107))) b!4196260))

(declare-fun b!4196261 () Bool)

(declare-fun e!2604796 () Bool)

(declare-fun tp!1281902 () Bool)

(assert (=> b!4196261 (= e!2604796 (and tp_is_empty!22149 tp!1281902))))

(assert (=> b!4195712 (= tp!1281832 e!2604796)))

(assert (= (and b!4195712 ((_ is Cons!46083) (t!346470 input!3342))) b!4196261))

(declare-fun b!4196262 () Bool)

(declare-fun e!2604797 () Bool)

(declare-fun tp!1281903 () Bool)

(assert (=> b!4196262 (= e!2604797 (and tp_is_empty!22149 tp!1281903))))

(assert (=> b!4195717 (= tp!1281829 e!2604797)))

(assert (= (and b!4195717 ((_ is Cons!46083) (t!346470 p!2959))) b!4196262))

(declare-fun b!4196274 () Bool)

(declare-fun e!2604800 () Bool)

(declare-fun tp!1281918 () Bool)

(declare-fun tp!1281916 () Bool)

(assert (=> b!4196274 (= e!2604800 (and tp!1281918 tp!1281916))))

(assert (=> b!4195726 (= tp!1281836 e!2604800)))

(declare-fun b!4196275 () Bool)

(declare-fun tp!1281915 () Bool)

(assert (=> b!4196275 (= e!2604800 tp!1281915)))

(declare-fun b!4196276 () Bool)

(declare-fun tp!1281914 () Bool)

(declare-fun tp!1281917 () Bool)

(assert (=> b!4196276 (= e!2604800 (and tp!1281914 tp!1281917))))

(declare-fun b!4196273 () Bool)

(assert (=> b!4196273 (= e!2604800 tp_is_empty!22149)))

(assert (= (and b!4195726 ((_ is ElementMatch!12593) (regex!7688 rBis!167))) b!4196273))

(assert (= (and b!4195726 ((_ is Concat!20512) (regex!7688 rBis!167))) b!4196274))

(assert (= (and b!4195726 ((_ is Star!12593) (regex!7688 rBis!167))) b!4196275))

(assert (= (and b!4195726 ((_ is Union!12593) (regex!7688 rBis!167))) b!4196276))

(declare-fun b!4196278 () Bool)

(declare-fun e!2604801 () Bool)

(declare-fun tp!1281923 () Bool)

(declare-fun tp!1281921 () Bool)

(assert (=> b!4196278 (= e!2604801 (and tp!1281923 tp!1281921))))

(assert (=> b!4195732 (= tp!1281824 e!2604801)))

(declare-fun b!4196279 () Bool)

(declare-fun tp!1281920 () Bool)

(assert (=> b!4196279 (= e!2604801 tp!1281920)))

(declare-fun b!4196280 () Bool)

(declare-fun tp!1281919 () Bool)

(declare-fun tp!1281922 () Bool)

(assert (=> b!4196280 (= e!2604801 (and tp!1281919 tp!1281922))))

(declare-fun b!4196277 () Bool)

(assert (=> b!4196277 (= e!2604801 tp_is_empty!22149)))

(assert (= (and b!4195732 ((_ is ElementMatch!12593) (regex!7688 r!4142))) b!4196277))

(assert (= (and b!4195732 ((_ is Concat!20512) (regex!7688 r!4142))) b!4196278))

(assert (= (and b!4195732 ((_ is Star!12593) (regex!7688 r!4142))) b!4196279))

(assert (= (and b!4195732 ((_ is Union!12593) (regex!7688 r!4142))) b!4196280))

(declare-fun b!4196282 () Bool)

(declare-fun e!2604802 () Bool)

(declare-fun tp!1281928 () Bool)

(declare-fun tp!1281926 () Bool)

(assert (=> b!4196282 (= e!2604802 (and tp!1281928 tp!1281926))))

(assert (=> b!4195737 (= tp!1281834 e!2604802)))

(declare-fun b!4196283 () Bool)

(declare-fun tp!1281925 () Bool)

(assert (=> b!4196283 (= e!2604802 tp!1281925)))

(declare-fun b!4196284 () Bool)

(declare-fun tp!1281924 () Bool)

(declare-fun tp!1281927 () Bool)

(assert (=> b!4196284 (= e!2604802 (and tp!1281924 tp!1281927))))

(declare-fun b!4196281 () Bool)

(assert (=> b!4196281 (= e!2604802 tp_is_empty!22149)))

(assert (= (and b!4195737 ((_ is ElementMatch!12593) (regex!7688 (h!51505 rules!3843)))) b!4196281))

(assert (= (and b!4195737 ((_ is Concat!20512) (regex!7688 (h!51505 rules!3843)))) b!4196282))

(assert (= (and b!4195737 ((_ is Star!12593) (regex!7688 (h!51505 rules!3843)))) b!4196283))

(assert (= (and b!4195737 ((_ is Union!12593) (regex!7688 (h!51505 rules!3843)))) b!4196284))

(declare-fun b_lambda!123501 () Bool)

(assert (= b_lambda!123497 (or (and b!4195740 b_free!122255 (= (toValue!10388 (transformation!7688 rBis!167)) (toValue!10388 (transformation!7688 r!4142)))) (and b!4195731 b_free!122259 (= (toValue!10388 (transformation!7688 (h!51505 rules!3843))) (toValue!10388 (transformation!7688 r!4142)))) (and b!4195734 b_free!122263) (and b!4196255 b_free!122271 (= (toValue!10388 (transformation!7688 (h!51505 (t!346472 rules!3843)))) (toValue!10388 (transformation!7688 r!4142)))) b_lambda!123501)))

(declare-fun b_lambda!123503 () Bool)

(assert (= b_lambda!123495 (or (and b!4195740 b_free!122257 (= (toChars!10247 (transformation!7688 rBis!167)) (toChars!10247 (transformation!7688 r!4142)))) (and b!4195731 b_free!122261 (= (toChars!10247 (transformation!7688 (h!51505 rules!3843))) (toChars!10247 (transformation!7688 r!4142)))) (and b!4195734 b_free!122265) (and b!4196255 b_free!122273 (= (toChars!10247 (transformation!7688 (h!51505 (t!346472 rules!3843)))) (toChars!10247 (transformation!7688 r!4142)))) b_lambda!123503)))

(declare-fun b_lambda!123505 () Bool)

(assert (= b_lambda!123499 (or (and b!4195740 b_free!122255 (= (toValue!10388 (transformation!7688 rBis!167)) (toValue!10388 (transformation!7688 r!4142)))) (and b!4195731 b_free!122259 (= (toValue!10388 (transformation!7688 (h!51505 rules!3843))) (toValue!10388 (transformation!7688 r!4142)))) (and b!4195734 b_free!122263) (and b!4196255 b_free!122271 (= (toValue!10388 (transformation!7688 (h!51505 (t!346472 rules!3843)))) (toValue!10388 (transformation!7688 r!4142)))) b_lambda!123505)))

(check-sat (not b!4195944) (not d!1237499) (not tb!251511) (not d!1237463) (not d!1237583) (not b!4195934) (not b!4196016) b_and!329133 (not b!4196284) b_and!329135 (not b!4196224) b_and!329131 (not b!4196214) (not b!4196242) (not b!4195986) (not d!1237477) (not bm!292437) (not b!4195819) (not b!4195945) (not b!4196232) (not b_lambda!123503) (not b!4195906) (not d!1237575) (not b!4196228) (not b!4196239) (not b!4196244) (not b!4195902) (not b!4195907) (not b!4195923) (not b!4196241) (not b_next!122959) (not d!1237479) (not b!4196275) tp_is_empty!22149 (not b!4195818) (not d!1237571) (not b!4195904) (not b_next!122967) (not b!4196261) (not b!4196282) (not d!1237447) (not b!4195822) (not b!4196235) (not b!4195908) (not d!1237485) (not d!1237495) b_and!329119 (not b!4195909) (not bm!292433) (not b!4195821) (not b!4195948) (not d!1237437) (not d!1237471) (not b!4196024) (not d!1237501) (not b!4195920) (not b!4195826) (not b!4195865) (not b!4195863) (not b!4195938) b_and!329115 (not b!4195905) b_and!329127 (not b!4195941) (not d!1237455) (not b!4196233) (not b!4196237) (not b!4195820) (not b!4195824) (not b!4196025) (not d!1237491) (not b_next!122963) (not b!4196254) (not d!1237419) (not b!4195825) (not b!4195985) (not b_lambda!123481) (not d!1237445) (not b!4196027) (not b!4196279) (not b!4195864) (not b!4196226) (not d!1237569) (not b!4195942) (not b_next!122969) (not b!4196231) (not b!4196280) (not tb!251481) (not b_next!122961) (not d!1237475) (not bm!292434) (not b!4196230) (not d!1237565) (not b_lambda!123501) (not b!4196017) (not d!1237439) (not b!4195835) (not bm!292425) (not b!4195933) (not b!4196253) (not b_next!122975) (not d!1237459) (not b!4195952) (not b_lambda!123505) (not d!1237467) (not b_next!122977) (not b!4196020) (not b!4195953) b_and!329117 (not b!4196274) (not b_next!122965) (not d!1237497) (not b!4196260) (not b!4196240) (not b!4196221) (not b!4195951) (not b!4196276) (not b!4196227) (not b!4195940) (not b!4195901) b_and!329129 (not b!4195832) (not b!4196225) (not b!4195947) (not b!4196278) (not b!4195958) (not b!4196283) (not b!4195915) (not tb!251505) (not b!4196262) (not d!1237487) (not b!4196234))
(check-sat b_and!329133 (not b_next!122959) (not b_next!122967) b_and!329119 (not b_next!122963) (not b_next!122969) (not b_next!122961) (not b_next!122975) (not b_next!122977) b_and!329129 b_and!329135 b_and!329131 b_and!329115 b_and!329127 b_and!329117 (not b_next!122965))

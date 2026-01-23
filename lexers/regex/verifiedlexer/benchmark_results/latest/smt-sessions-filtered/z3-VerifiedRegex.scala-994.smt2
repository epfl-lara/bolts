; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49796 () Bool)

(assert start!49796)

(declare-fun b!539147 () Bool)

(declare-fun b_free!14841 () Bool)

(declare-fun b_next!14857 () Bool)

(assert (=> b!539147 (= b_free!14841 (not b_next!14857))))

(declare-fun tp!171878 () Bool)

(declare-fun b_and!52715 () Bool)

(assert (=> b!539147 (= tp!171878 b_and!52715)))

(declare-fun b_free!14843 () Bool)

(declare-fun b_next!14859 () Bool)

(assert (=> b!539147 (= b_free!14843 (not b_next!14859))))

(declare-fun tp!171884 () Bool)

(declare-fun b_and!52717 () Bool)

(assert (=> b!539147 (= tp!171884 b_and!52717)))

(declare-fun b!539120 () Bool)

(declare-fun b_free!14845 () Bool)

(declare-fun b_next!14861 () Bool)

(assert (=> b!539120 (= b_free!14845 (not b_next!14861))))

(declare-fun tp!171881 () Bool)

(declare-fun b_and!52719 () Bool)

(assert (=> b!539120 (= tp!171881 b_and!52719)))

(declare-fun b_free!14847 () Bool)

(declare-fun b_next!14863 () Bool)

(assert (=> b!539120 (= b_free!14847 (not b_next!14863))))

(declare-fun tp!171877 () Bool)

(declare-fun b_and!52721 () Bool)

(assert (=> b!539120 (= tp!171877 b_and!52721)))

(declare-fun b!539117 () Bool)

(declare-fun res!228782 () Bool)

(declare-fun e!325441 () Bool)

(assert (=> b!539117 (=> (not res!228782) (not e!325441))))

(declare-datatypes ((C!3540 0))(
  ( (C!3541 (val!1996 Int)) )
))
(declare-datatypes ((Regex!1309 0))(
  ( (ElementMatch!1309 (c!102260 C!3540)) (Concat!2308 (regOne!3130 Regex!1309) (regTwo!3130 Regex!1309)) (EmptyExpr!1309) (Star!1309 (reg!1638 Regex!1309)) (EmptyLang!1309) (Union!1309 (regOne!3131 Regex!1309) (regTwo!3131 Regex!1309)) )
))
(declare-datatypes ((List!5265 0))(
  ( (Nil!5255) (Cons!5255 (h!10656 (_ BitVec 16)) (t!74314 List!5265)) )
))
(declare-datatypes ((String!6738 0))(
  ( (String!6739 (value!32628 String)) )
))
(declare-datatypes ((TokenValue!999 0))(
  ( (FloatLiteralValue!1998 (text!7438 List!5265)) (TokenValueExt!998 (__x!3896 Int)) (Broken!4995 (value!32629 List!5265)) (Object!1008) (End!999) (Def!999) (Underscore!999) (Match!999) (Else!999) (Error!999) (Case!999) (If!999) (Extends!999) (Abstract!999) (Class!999) (Val!999) (DelimiterValue!1998 (del!1059 List!5265)) (KeywordValue!1005 (value!32630 List!5265)) (CommentValue!1998 (value!32631 List!5265)) (WhitespaceValue!1998 (value!32632 List!5265)) (IndentationValue!999 (value!32633 List!5265)) (String!6740) (Int32!999) (Broken!4996 (value!32634 List!5265)) (Boolean!1000) (Unit!9182) (OperatorValue!1002 (op!1059 List!5265)) (IdentifierValue!1998 (value!32635 List!5265)) (IdentifierValue!1999 (value!32636 List!5265)) (WhitespaceValue!1999 (value!32637 List!5265)) (True!1998) (False!1998) (Broken!4997 (value!32638 List!5265)) (Broken!4998 (value!32639 List!5265)) (True!1999) (RightBrace!999) (RightBracket!999) (Colon!999) (Null!999) (Comma!999) (LeftBracket!999) (False!1999) (LeftBrace!999) (ImaginaryLiteralValue!999 (text!7439 List!5265)) (StringLiteralValue!2997 (value!32640 List!5265)) (EOFValue!999 (value!32641 List!5265)) (IdentValue!999 (value!32642 List!5265)) (DelimiterValue!1999 (value!32643 List!5265)) (DedentValue!999 (value!32644 List!5265)) (NewLineValue!999 (value!32645 List!5265)) (IntegerValue!2997 (value!32646 (_ BitVec 32)) (text!7440 List!5265)) (IntegerValue!2998 (value!32647 Int) (text!7441 List!5265)) (Times!999) (Or!999) (Equal!999) (Minus!999) (Broken!4999 (value!32648 List!5265)) (And!999) (Div!999) (LessEqual!999) (Mod!999) (Concat!2309) (Not!999) (Plus!999) (SpaceValue!999 (value!32649 List!5265)) (IntegerValue!2999 (value!32650 Int) (text!7442 List!5265)) (StringLiteralValue!2998 (text!7443 List!5265)) (FloatLiteralValue!1999 (text!7444 List!5265)) (BytesLiteralValue!999 (value!32651 List!5265)) (CommentValue!1999 (value!32652 List!5265)) (StringLiteralValue!2999 (value!32653 List!5265)) (ErrorTokenValue!999 (msg!1060 List!5265)) )
))
(declare-datatypes ((List!5266 0))(
  ( (Nil!5256) (Cons!5256 (h!10657 C!3540) (t!74315 List!5266)) )
))
(declare-datatypes ((IArray!3385 0))(
  ( (IArray!3386 (innerList!1750 List!5266)) )
))
(declare-datatypes ((Conc!1692 0))(
  ( (Node!1692 (left!4384 Conc!1692) (right!4714 Conc!1692) (csize!3614 Int) (cheight!1903 Int)) (Leaf!2687 (xs!4329 IArray!3385) (csize!3615 Int)) (Empty!1692) )
))
(declare-datatypes ((BalanceConc!3392 0))(
  ( (BalanceConc!3393 (c!102261 Conc!1692)) )
))
(declare-datatypes ((TokenValueInjection!1766 0))(
  ( (TokenValueInjection!1767 (toValue!1822 Int) (toChars!1681 Int)) )
))
(declare-datatypes ((Rule!1750 0))(
  ( (Rule!1751 (regex!975 Regex!1309) (tag!1237 String!6738) (isSeparator!975 Bool) (transformation!975 TokenValueInjection!1766)) )
))
(declare-datatypes ((Token!1686 0))(
  ( (Token!1687 (value!32654 TokenValue!999) (rule!1683 Rule!1750) (size!4226 Int) (originalCharacters!1014 List!5266)) )
))
(declare-fun token!491 () Token!1686)

(declare-fun size!4227 (List!5266) Int)

(assert (=> b!539117 (= res!228782 (= (size!4226 token!491) (size!4227 (originalCharacters!1014 token!491))))))

(declare-fun b!539118 () Bool)

(declare-fun e!325438 () Bool)

(assert (=> b!539118 (= e!325438 true)))

(declare-fun lt!223968 () Int)

(declare-fun input!2705 () List!5266)

(assert (=> b!539118 (= lt!223968 (size!4227 input!2705))))

(declare-fun b!539119 () Bool)

(declare-fun res!228802 () Bool)

(assert (=> b!539119 (=> res!228802 e!325438)))

(declare-fun lt!223941 () List!5266)

(declare-fun lt!223939 () List!5266)

(declare-fun ++!1463 (List!5266 List!5266) List!5266)

(assert (=> b!539119 (= res!228802 (not (= (++!1463 lt!223941 lt!223939) input!2705)))))

(declare-fun e!325445 () Bool)

(assert (=> b!539120 (= e!325445 (and tp!171881 tp!171877))))

(declare-fun b!539121 () Bool)

(declare-fun res!228806 () Bool)

(assert (=> b!539121 (=> res!228806 e!325438)))

(declare-fun lt!223953 () List!5266)

(assert (=> b!539121 (= res!228806 (not (= lt!223953 input!2705)))))

(declare-fun b!539122 () Bool)

(declare-fun e!325458 () Bool)

(declare-fun e!325459 () Bool)

(declare-fun tp!171880 () Bool)

(assert (=> b!539122 (= e!325458 (and e!325459 tp!171880))))

(declare-fun tp!171882 () Bool)

(declare-fun b!539123 () Bool)

(declare-fun e!325455 () Bool)

(declare-fun inv!6593 (String!6738) Bool)

(declare-fun inv!6596 (TokenValueInjection!1766) Bool)

(assert (=> b!539123 (= e!325455 (and tp!171882 (inv!6593 (tag!1237 (rule!1683 token!491))) (inv!6596 (transformation!975 (rule!1683 token!491))) e!325445))))

(declare-fun b!539124 () Bool)

(declare-datatypes ((Unit!9183 0))(
  ( (Unit!9184) )
))
(declare-fun e!325444 () Unit!9183)

(declare-fun Unit!9185 () Unit!9183)

(assert (=> b!539124 (= e!325444 Unit!9185)))

(declare-datatypes ((List!5267 0))(
  ( (Nil!5257) (Cons!5257 (h!10658 Rule!1750) (t!74316 List!5267)) )
))
(declare-fun rules!3103 () List!5267)

(declare-fun e!325439 () Bool)

(declare-fun b!539125 () Bool)

(declare-fun tp!171879 () Bool)

(assert (=> b!539125 (= e!325459 (and tp!171879 (inv!6593 (tag!1237 (h!10658 rules!3103))) (inv!6596 (transformation!975 (h!10658 rules!3103))) e!325439))))

(declare-fun b!539126 () Bool)

(declare-fun res!228796 () Bool)

(assert (=> b!539126 (=> res!228796 e!325438)))

(declare-fun contains!1219 (List!5267 Rule!1750) Bool)

(assert (=> b!539126 (= res!228796 (not (contains!1219 rules!3103 (rule!1683 token!491))))))

(declare-fun b!539127 () Bool)

(declare-fun e!325448 () Bool)

(assert (=> b!539127 (= e!325448 e!325438)))

(declare-fun res!228797 () Bool)

(assert (=> b!539127 (=> res!228797 e!325438)))

(declare-fun lt!223947 () Int)

(declare-fun lt!223962 () Int)

(assert (=> b!539127 (= res!228797 (>= lt!223947 lt!223962))))

(declare-fun e!325456 () Bool)

(assert (=> b!539127 e!325456))

(declare-fun res!228800 () Bool)

(assert (=> b!539127 (=> (not res!228800) (not e!325456))))

(declare-fun suffix!1342 () List!5266)

(declare-fun lt!223964 () List!5266)

(declare-fun lt!223956 () List!5266)

(declare-fun lt!223944 () TokenValue!999)

(declare-datatypes ((LexerInterface!861 0))(
  ( (LexerInterfaceExt!858 (__x!3897 Int)) (Lexer!859) )
))
(declare-fun thiss!22590 () LexerInterface!861)

(declare-datatypes ((tuple2!6320 0))(
  ( (tuple2!6321 (_1!3424 Token!1686) (_2!3424 List!5266)) )
))
(declare-datatypes ((Option!1325 0))(
  ( (None!1324) (Some!1324 (v!16133 tuple2!6320)) )
))
(declare-fun maxPrefixOneRule!274 (LexerInterface!861 Rule!1750 List!5266) Option!1325)

(assert (=> b!539127 (= res!228800 (= (maxPrefixOneRule!274 thiss!22590 (rule!1683 token!491) lt!223964) (Some!1324 (tuple2!6321 (Token!1687 lt!223944 (rule!1683 token!491) lt!223962 lt!223956) suffix!1342))))))

(declare-fun lt!223950 () Unit!9183)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!26 (LexerInterface!861 List!5267 List!5266 List!5266 List!5266 Rule!1750) Unit!9183)

(assert (=> b!539127 (= lt!223950 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!26 thiss!22590 rules!3103 lt!223956 lt!223964 suffix!1342 (rule!1683 token!491)))))

(declare-fun lt!223949 () TokenValue!999)

(declare-fun lt!223945 () Option!1325)

(assert (=> b!539127 (= (maxPrefixOneRule!274 thiss!22590 (rule!1683 (_1!3424 (v!16133 lt!223945))) input!2705) (Some!1324 (tuple2!6321 (Token!1687 lt!223949 (rule!1683 (_1!3424 (v!16133 lt!223945))) lt!223947 lt!223941) (_2!3424 (v!16133 lt!223945)))))))

(declare-fun lt!223943 () Unit!9183)

(assert (=> b!539127 (= lt!223943 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!26 thiss!22590 rules!3103 lt!223941 input!2705 (_2!3424 (v!16133 lt!223945)) (rule!1683 (_1!3424 (v!16133 lt!223945)))))))

(assert (=> b!539127 e!325441))

(declare-fun res!228805 () Bool)

(assert (=> b!539127 (=> (not res!228805) (not e!325441))))

(assert (=> b!539127 (= res!228805 (= (value!32654 token!491) lt!223944))))

(declare-fun apply!1250 (TokenValueInjection!1766 BalanceConc!3392) TokenValue!999)

(declare-fun seqFromList!1173 (List!5266) BalanceConc!3392)

(assert (=> b!539127 (= lt!223944 (apply!1250 (transformation!975 (rule!1683 token!491)) (seqFromList!1173 lt!223956)))))

(declare-fun lt!223958 () List!5266)

(assert (=> b!539127 (= suffix!1342 lt!223958)))

(declare-fun lt!223965 () Unit!9183)

(declare-fun lemmaSamePrefixThenSameSuffix!344 (List!5266 List!5266 List!5266 List!5266 List!5266) Unit!9183)

(assert (=> b!539127 (= lt!223965 (lemmaSamePrefixThenSameSuffix!344 lt!223956 suffix!1342 lt!223956 lt!223958 lt!223964))))

(declare-fun getSuffix!140 (List!5266 List!5266) List!5266)

(assert (=> b!539127 (= lt!223958 (getSuffix!140 lt!223964 lt!223956))))

(declare-fun b!539128 () Bool)

(declare-fun res!228792 () Bool)

(declare-fun e!325460 () Bool)

(assert (=> b!539128 (=> (not res!228792) (not e!325460))))

(declare-fun isEmpty!3798 (List!5266) Bool)

(assert (=> b!539128 (= res!228792 (not (isEmpty!3798 input!2705)))))

(declare-fun b!539129 () Bool)

(declare-fun res!228801 () Bool)

(assert (=> b!539129 (=> (not res!228801) (not e!325460))))

(declare-fun rulesInvariant!824 (LexerInterface!861 List!5267) Bool)

(assert (=> b!539129 (= res!228801 (rulesInvariant!824 thiss!22590 rules!3103))))

(declare-fun res!228784 () Bool)

(assert (=> start!49796 (=> (not res!228784) (not e!325460))))

(get-info :version)

(assert (=> start!49796 (= res!228784 ((_ is Lexer!859) thiss!22590))))

(assert (=> start!49796 e!325460))

(declare-fun e!325440 () Bool)

(assert (=> start!49796 e!325440))

(assert (=> start!49796 e!325458))

(declare-fun e!325442 () Bool)

(declare-fun inv!6597 (Token!1686) Bool)

(assert (=> start!49796 (and (inv!6597 token!491) e!325442)))

(assert (=> start!49796 true))

(declare-fun e!325443 () Bool)

(assert (=> start!49796 e!325443))

(declare-fun b!539130 () Bool)

(declare-fun res!228798 () Bool)

(assert (=> b!539130 (=> res!228798 e!325438)))

(declare-fun isPrefix!617 (List!5266 List!5266) Bool)

(assert (=> b!539130 (= res!228798 (not (isPrefix!617 lt!223956 input!2705)))))

(declare-fun b!539131 () Bool)

(declare-fun e!325450 () Bool)

(declare-fun e!325452 () Bool)

(assert (=> b!539131 (= e!325450 e!325452)))

(declare-fun res!228804 () Bool)

(assert (=> b!539131 (=> (not res!228804) (not e!325452))))

(declare-fun lt!223946 () tuple2!6320)

(assert (=> b!539131 (= res!228804 (and (= (_1!3424 lt!223946) token!491) (= (_2!3424 lt!223946) suffix!1342)))))

(declare-fun lt!223960 () Option!1325)

(declare-fun get!1977 (Option!1325) tuple2!6320)

(assert (=> b!539131 (= lt!223946 (get!1977 lt!223960))))

(declare-fun b!539132 () Bool)

(declare-fun e!325447 () Bool)

(assert (=> b!539132 (= e!325447 (= (_1!3424 (get!1977 lt!223945)) (_1!3424 (v!16133 lt!223945))))))

(declare-fun b!539133 () Bool)

(declare-fun res!228799 () Bool)

(declare-fun e!325461 () Bool)

(assert (=> b!539133 (=> (not res!228799) (not e!325461))))

(assert (=> b!539133 (= res!228799 (= (size!4226 (_1!3424 (v!16133 lt!223945))) (size!4227 (originalCharacters!1014 (_1!3424 (v!16133 lt!223945))))))))

(declare-fun b!539134 () Bool)

(declare-fun tp!171883 () Bool)

(declare-fun inv!21 (TokenValue!999) Bool)

(assert (=> b!539134 (= e!325442 (and (inv!21 (value!32654 token!491)) e!325455 tp!171883))))

(declare-fun b!539135 () Bool)

(declare-fun res!228787 () Bool)

(assert (=> b!539135 (=> (not res!228787) (not e!325460))))

(declare-fun isEmpty!3799 (List!5267) Bool)

(assert (=> b!539135 (= res!228787 (not (isEmpty!3799 rules!3103)))))

(declare-fun b!539136 () Bool)

(declare-fun e!325449 () Bool)

(assert (=> b!539136 (= e!325460 e!325449)))

(declare-fun res!228789 () Bool)

(assert (=> b!539136 (=> (not res!228789) (not e!325449))))

(assert (=> b!539136 (= res!228789 (= lt!223956 input!2705))))

(declare-fun list!2183 (BalanceConc!3392) List!5266)

(declare-fun charsOf!604 (Token!1686) BalanceConc!3392)

(assert (=> b!539136 (= lt!223956 (list!2183 (charsOf!604 token!491)))))

(declare-fun b!539137 () Bool)

(declare-fun res!228795 () Bool)

(assert (=> b!539137 (=> res!228795 e!325438)))

(assert (=> b!539137 (= res!228795 (not (= (getSuffix!140 input!2705 input!2705) Nil!5256)))))

(declare-fun b!539138 () Bool)

(assert (=> b!539138 (= e!325441 (and (= (size!4226 token!491) lt!223962) (= (originalCharacters!1014 token!491) lt!223956) (= (tuple2!6321 token!491 suffix!1342) (tuple2!6321 (Token!1687 lt!223944 (rule!1683 token!491) lt!223962 lt!223956) lt!223958))))))

(declare-fun b!539139 () Bool)

(declare-fun e!325446 () Bool)

(assert (=> b!539139 (= e!325446 e!325447)))

(declare-fun res!228783 () Bool)

(assert (=> b!539139 (=> (not res!228783) (not e!325447))))

(declare-fun isDefined!1137 (Option!1325) Bool)

(assert (=> b!539139 (= res!228783 (isDefined!1137 lt!223945))))

(declare-fun b!539140 () Bool)

(declare-fun res!228793 () Bool)

(assert (=> b!539140 (=> res!228793 e!325438)))

(assert (=> b!539140 (= res!228793 (not (isPrefix!617 lt!223941 input!2705)))))

(declare-fun b!539141 () Bool)

(assert (=> b!539141 (= e!325456 e!325446)))

(declare-fun res!228786 () Bool)

(assert (=> b!539141 (=> res!228786 e!325446)))

(assert (=> b!539141 (= res!228786 (>= lt!223947 lt!223962))))

(declare-fun b!539142 () Bool)

(declare-fun e!325451 () Bool)

(assert (=> b!539142 (= e!325452 e!325451)))

(declare-fun res!228791 () Bool)

(assert (=> b!539142 (=> (not res!228791) (not e!325451))))

(assert (=> b!539142 (= res!228791 ((_ is Some!1324) lt!223945))))

(declare-fun maxPrefix!559 (LexerInterface!861 List!5267 List!5266) Option!1325)

(assert (=> b!539142 (= lt!223945 (maxPrefix!559 thiss!22590 rules!3103 input!2705))))

(declare-fun b!539143 () Bool)

(declare-fun tp_is_empty!2973 () Bool)

(declare-fun tp!171875 () Bool)

(assert (=> b!539143 (= e!325443 (and tp_is_empty!2973 tp!171875))))

(declare-fun b!539144 () Bool)

(assert (=> b!539144 (= e!325449 e!325450)))

(declare-fun res!228794 () Bool)

(assert (=> b!539144 (=> (not res!228794) (not e!325450))))

(assert (=> b!539144 (= res!228794 (isDefined!1137 lt!223960))))

(assert (=> b!539144 (= lt!223960 (maxPrefix!559 thiss!22590 rules!3103 lt!223964))))

(assert (=> b!539144 (= lt!223964 (++!1463 input!2705 suffix!1342))))

(declare-fun b!539145 () Bool)

(declare-fun res!228790 () Bool)

(assert (=> b!539145 (=> res!228790 e!325438)))

(declare-fun matchR!468 (Regex!1309 List!5266) Bool)

(assert (=> b!539145 (= res!228790 (not (matchR!468 (regex!975 (rule!1683 token!491)) input!2705)))))

(declare-fun b!539146 () Bool)

(declare-fun e!325454 () Bool)

(assert (=> b!539146 (= e!325454 (not e!325448))))

(declare-fun res!228803 () Bool)

(assert (=> b!539146 (=> res!228803 e!325448)))

(declare-fun lt!223961 () List!5266)

(assert (=> b!539146 (= res!228803 (not (isPrefix!617 input!2705 lt!223961)))))

(assert (=> b!539146 (isPrefix!617 lt!223956 lt!223961)))

(declare-fun lt!223957 () Unit!9183)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!468 (List!5266 List!5266) Unit!9183)

(assert (=> b!539146 (= lt!223957 (lemmaConcatTwoListThenFirstIsPrefix!468 lt!223956 suffix!1342))))

(assert (=> b!539146 (isPrefix!617 input!2705 lt!223964)))

(declare-fun lt!223938 () Unit!9183)

(assert (=> b!539146 (= lt!223938 (lemmaConcatTwoListThenFirstIsPrefix!468 input!2705 suffix!1342))))

(assert (=> b!539146 e!325461))

(declare-fun res!228788 () Bool)

(assert (=> b!539146 (=> (not res!228788) (not e!325461))))

(assert (=> b!539146 (= res!228788 (= (value!32654 (_1!3424 (v!16133 lt!223945))) lt!223949))))

(assert (=> b!539146 (= lt!223949 (apply!1250 (transformation!975 (rule!1683 (_1!3424 (v!16133 lt!223945)))) (seqFromList!1173 lt!223941)))))

(declare-fun lt!223948 () Unit!9183)

(declare-fun lemmaInv!123 (TokenValueInjection!1766) Unit!9183)

(assert (=> b!539146 (= lt!223948 (lemmaInv!123 (transformation!975 (rule!1683 token!491))))))

(declare-fun lt!223942 () Unit!9183)

(assert (=> b!539146 (= lt!223942 (lemmaInv!123 (transformation!975 (rule!1683 (_1!3424 (v!16133 lt!223945))))))))

(declare-fun ruleValid!195 (LexerInterface!861 Rule!1750) Bool)

(assert (=> b!539146 (ruleValid!195 thiss!22590 (rule!1683 token!491))))

(declare-fun lt!223967 () Unit!9183)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!54 (LexerInterface!861 Rule!1750 List!5267) Unit!9183)

(assert (=> b!539146 (= lt!223967 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!54 thiss!22590 (rule!1683 token!491) rules!3103))))

(assert (=> b!539146 (ruleValid!195 thiss!22590 (rule!1683 (_1!3424 (v!16133 lt!223945))))))

(declare-fun lt!223969 () Unit!9183)

(assert (=> b!539146 (= lt!223969 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!54 thiss!22590 (rule!1683 (_1!3424 (v!16133 lt!223945))) rules!3103))))

(assert (=> b!539146 (isPrefix!617 input!2705 input!2705)))

(declare-fun lt!223951 () Unit!9183)

(declare-fun lemmaIsPrefixRefl!357 (List!5266 List!5266) Unit!9183)

(assert (=> b!539146 (= lt!223951 (lemmaIsPrefixRefl!357 input!2705 input!2705))))

(assert (=> b!539146 (= (_2!3424 (v!16133 lt!223945)) lt!223939)))

(declare-fun lt!223940 () Unit!9183)

(assert (=> b!539146 (= lt!223940 (lemmaSamePrefixThenSameSuffix!344 lt!223941 (_2!3424 (v!16133 lt!223945)) lt!223941 lt!223939 input!2705))))

(assert (=> b!539146 (= lt!223939 (getSuffix!140 input!2705 lt!223941))))

(assert (=> b!539146 (isPrefix!617 lt!223941 lt!223953)))

(assert (=> b!539146 (= lt!223953 (++!1463 lt!223941 (_2!3424 (v!16133 lt!223945))))))

(declare-fun lt!223952 () Unit!9183)

(assert (=> b!539146 (= lt!223952 (lemmaConcatTwoListThenFirstIsPrefix!468 lt!223941 (_2!3424 (v!16133 lt!223945))))))

(declare-fun lt!223959 () Unit!9183)

(declare-fun lemmaCharactersSize!54 (Token!1686) Unit!9183)

(assert (=> b!539146 (= lt!223959 (lemmaCharactersSize!54 token!491))))

(declare-fun lt!223966 () Unit!9183)

(assert (=> b!539146 (= lt!223966 (lemmaCharactersSize!54 (_1!3424 (v!16133 lt!223945))))))

(declare-fun lt!223955 () Unit!9183)

(assert (=> b!539146 (= lt!223955 e!325444)))

(declare-fun c!102259 () Bool)

(assert (=> b!539146 (= c!102259 (> lt!223947 lt!223962))))

(assert (=> b!539146 (= lt!223962 (size!4227 lt!223956))))

(assert (=> b!539146 (= lt!223947 (size!4227 lt!223941))))

(assert (=> b!539146 (= lt!223941 (list!2183 (charsOf!604 (_1!3424 (v!16133 lt!223945)))))))

(declare-fun lt!223963 () tuple2!6320)

(assert (=> b!539146 (= lt!223945 (Some!1324 lt!223963))))

(assert (=> b!539146 (= lt!223963 (tuple2!6321 (_1!3424 (v!16133 lt!223945)) (_2!3424 (v!16133 lt!223945))))))

(declare-fun lt!223954 () Unit!9183)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!60 (List!5266 List!5266 List!5266 List!5266) Unit!9183)

(assert (=> b!539146 (= lt!223954 (lemmaConcatSameAndSameSizesThenSameLists!60 lt!223956 suffix!1342 input!2705 suffix!1342))))

(assert (=> b!539147 (= e!325439 (and tp!171878 tp!171884))))

(declare-fun b!539148 () Bool)

(assert (=> b!539148 (= e!325461 (and (= (size!4226 (_1!3424 (v!16133 lt!223945))) lt!223947) (= (originalCharacters!1014 (_1!3424 (v!16133 lt!223945))) lt!223941) (= lt!223963 (tuple2!6321 (Token!1687 lt!223949 (rule!1683 (_1!3424 (v!16133 lt!223945))) lt!223947 lt!223941) lt!223939))))))

(declare-fun b!539149 () Bool)

(declare-fun tp!171876 () Bool)

(assert (=> b!539149 (= e!325440 (and tp_is_empty!2973 tp!171876))))

(declare-fun b!539150 () Bool)

(declare-fun Unit!9186 () Unit!9183)

(assert (=> b!539150 (= e!325444 Unit!9186)))

(assert (=> b!539150 false))

(declare-fun b!539151 () Bool)

(assert (=> b!539151 (= e!325451 e!325454)))

(declare-fun res!228785 () Bool)

(assert (=> b!539151 (=> (not res!228785) (not e!325454))))

(assert (=> b!539151 (= res!228785 (= lt!223961 lt!223964))))

(assert (=> b!539151 (= lt!223961 (++!1463 lt!223956 suffix!1342))))

(assert (= (and start!49796 res!228784) b!539135))

(assert (= (and b!539135 res!228787) b!539129))

(assert (= (and b!539129 res!228801) b!539128))

(assert (= (and b!539128 res!228792) b!539136))

(assert (= (and b!539136 res!228789) b!539144))

(assert (= (and b!539144 res!228794) b!539131))

(assert (= (and b!539131 res!228804) b!539142))

(assert (= (and b!539142 res!228791) b!539151))

(assert (= (and b!539151 res!228785) b!539146))

(assert (= (and b!539146 c!102259) b!539150))

(assert (= (and b!539146 (not c!102259)) b!539124))

(assert (= (and b!539146 res!228788) b!539133))

(assert (= (and b!539133 res!228799) b!539148))

(assert (= (and b!539146 (not res!228803)) b!539127))

(assert (= (and b!539127 res!228805) b!539117))

(assert (= (and b!539117 res!228782) b!539138))

(assert (= (and b!539127 res!228800) b!539141))

(assert (= (and b!539141 (not res!228786)) b!539139))

(assert (= (and b!539139 res!228783) b!539132))

(assert (= (and b!539127 (not res!228797)) b!539126))

(assert (= (and b!539126 (not res!228796)) b!539145))

(assert (= (and b!539145 (not res!228790)) b!539130))

(assert (= (and b!539130 (not res!228798)) b!539137))

(assert (= (and b!539137 (not res!228795)) b!539121))

(assert (= (and b!539121 (not res!228806)) b!539140))

(assert (= (and b!539140 (not res!228793)) b!539119))

(assert (= (and b!539119 (not res!228802)) b!539118))

(assert (= (and start!49796 ((_ is Cons!5256) suffix!1342)) b!539149))

(assert (= b!539125 b!539147))

(assert (= b!539122 b!539125))

(assert (= (and start!49796 ((_ is Cons!5257) rules!3103)) b!539122))

(assert (= b!539123 b!539120))

(assert (= b!539134 b!539123))

(assert (= start!49796 b!539134))

(assert (= (and start!49796 ((_ is Cons!5256) input!2705)) b!539143))

(declare-fun m!786401 () Bool)

(assert (=> b!539146 m!786401))

(declare-fun m!786403 () Bool)

(assert (=> b!539146 m!786403))

(declare-fun m!786405 () Bool)

(assert (=> b!539146 m!786405))

(declare-fun m!786407 () Bool)

(assert (=> b!539146 m!786407))

(declare-fun m!786409 () Bool)

(assert (=> b!539146 m!786409))

(declare-fun m!786411 () Bool)

(assert (=> b!539146 m!786411))

(declare-fun m!786413 () Bool)

(assert (=> b!539146 m!786413))

(declare-fun m!786415 () Bool)

(assert (=> b!539146 m!786415))

(declare-fun m!786417 () Bool)

(assert (=> b!539146 m!786417))

(declare-fun m!786419 () Bool)

(assert (=> b!539146 m!786419))

(declare-fun m!786421 () Bool)

(assert (=> b!539146 m!786421))

(declare-fun m!786423 () Bool)

(assert (=> b!539146 m!786423))

(declare-fun m!786425 () Bool)

(assert (=> b!539146 m!786425))

(declare-fun m!786427 () Bool)

(assert (=> b!539146 m!786427))

(declare-fun m!786429 () Bool)

(assert (=> b!539146 m!786429))

(declare-fun m!786431 () Bool)

(assert (=> b!539146 m!786431))

(declare-fun m!786433 () Bool)

(assert (=> b!539146 m!786433))

(declare-fun m!786435 () Bool)

(assert (=> b!539146 m!786435))

(declare-fun m!786437 () Bool)

(assert (=> b!539146 m!786437))

(declare-fun m!786439 () Bool)

(assert (=> b!539146 m!786439))

(declare-fun m!786441 () Bool)

(assert (=> b!539146 m!786441))

(declare-fun m!786443 () Bool)

(assert (=> b!539146 m!786443))

(declare-fun m!786445 () Bool)

(assert (=> b!539146 m!786445))

(assert (=> b!539146 m!786437))

(declare-fun m!786447 () Bool)

(assert (=> b!539146 m!786447))

(assert (=> b!539146 m!786401))

(declare-fun m!786449 () Bool)

(assert (=> b!539146 m!786449))

(declare-fun m!786451 () Bool)

(assert (=> b!539146 m!786451))

(declare-fun m!786453 () Bool)

(assert (=> b!539146 m!786453))

(declare-fun m!786455 () Bool)

(assert (=> b!539125 m!786455))

(declare-fun m!786457 () Bool)

(assert (=> b!539125 m!786457))

(declare-fun m!786459 () Bool)

(assert (=> b!539119 m!786459))

(declare-fun m!786461 () Bool)

(assert (=> b!539127 m!786461))

(declare-fun m!786463 () Bool)

(assert (=> b!539127 m!786463))

(declare-fun m!786465 () Bool)

(assert (=> b!539127 m!786465))

(declare-fun m!786467 () Bool)

(assert (=> b!539127 m!786467))

(declare-fun m!786469 () Bool)

(assert (=> b!539127 m!786469))

(declare-fun m!786471 () Bool)

(assert (=> b!539127 m!786471))

(assert (=> b!539127 m!786467))

(declare-fun m!786473 () Bool)

(assert (=> b!539127 m!786473))

(declare-fun m!786475 () Bool)

(assert (=> b!539127 m!786475))

(declare-fun m!786477 () Bool)

(assert (=> b!539135 m!786477))

(declare-fun m!786479 () Bool)

(assert (=> b!539131 m!786479))

(declare-fun m!786481 () Bool)

(assert (=> b!539126 m!786481))

(declare-fun m!786483 () Bool)

(assert (=> b!539118 m!786483))

(declare-fun m!786485 () Bool)

(assert (=> b!539139 m!786485))

(declare-fun m!786487 () Bool)

(assert (=> b!539134 m!786487))

(declare-fun m!786489 () Bool)

(assert (=> b!539151 m!786489))

(declare-fun m!786491 () Bool)

(assert (=> b!539142 m!786491))

(declare-fun m!786493 () Bool)

(assert (=> b!539137 m!786493))

(declare-fun m!786495 () Bool)

(assert (=> b!539129 m!786495))

(declare-fun m!786497 () Bool)

(assert (=> b!539145 m!786497))

(declare-fun m!786499 () Bool)

(assert (=> b!539123 m!786499))

(declare-fun m!786501 () Bool)

(assert (=> b!539123 m!786501))

(declare-fun m!786503 () Bool)

(assert (=> b!539117 m!786503))

(declare-fun m!786505 () Bool)

(assert (=> b!539132 m!786505))

(declare-fun m!786507 () Bool)

(assert (=> b!539130 m!786507))

(declare-fun m!786509 () Bool)

(assert (=> b!539144 m!786509))

(declare-fun m!786511 () Bool)

(assert (=> b!539144 m!786511))

(declare-fun m!786513 () Bool)

(assert (=> b!539144 m!786513))

(declare-fun m!786515 () Bool)

(assert (=> b!539133 m!786515))

(declare-fun m!786517 () Bool)

(assert (=> b!539140 m!786517))

(declare-fun m!786519 () Bool)

(assert (=> start!49796 m!786519))

(declare-fun m!786521 () Bool)

(assert (=> b!539128 m!786521))

(declare-fun m!786523 () Bool)

(assert (=> b!539136 m!786523))

(assert (=> b!539136 m!786523))

(declare-fun m!786525 () Bool)

(assert (=> b!539136 m!786525))

(check-sat (not b!539151) (not b!539122) (not b!539119) (not b!539128) (not b!539132) tp_is_empty!2973 (not b_next!14863) (not b!539142) (not b!539117) (not b!539137) (not b!539139) (not b!539149) (not b!539146) (not b!539131) (not b!539133) (not b!539127) (not b!539118) (not b_next!14861) (not b!539130) b_and!52715 b_and!52721 (not b!539140) (not b!539129) b_and!52717 (not b!539136) (not b!539125) (not b!539144) (not b!539145) (not b!539143) (not b!539135) b_and!52719 (not start!49796) (not b_next!14857) (not b!539123) (not b_next!14859) (not b!539126) (not b!539134))
(check-sat (not b_next!14861) b_and!52715 b_and!52721 (not b_next!14863) b_and!52717 b_and!52719 (not b_next!14857) (not b_next!14859))

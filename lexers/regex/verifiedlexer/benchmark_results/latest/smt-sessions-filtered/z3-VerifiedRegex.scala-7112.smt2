; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376792 () Bool)

(assert start!376792)

(declare-fun b!4003572 () Bool)

(declare-fun b_free!111369 () Bool)

(declare-fun b_next!112073 () Bool)

(assert (=> b!4003572 (= b_free!111369 (not b_next!112073))))

(declare-fun tp!1218672 () Bool)

(declare-fun b_and!307455 () Bool)

(assert (=> b!4003572 (= tp!1218672 b_and!307455)))

(declare-fun b_free!111371 () Bool)

(declare-fun b_next!112075 () Bool)

(assert (=> b!4003572 (= b_free!111371 (not b_next!112075))))

(declare-fun tp!1218673 () Bool)

(declare-fun b_and!307457 () Bool)

(assert (=> b!4003572 (= tp!1218673 b_and!307457)))

(declare-fun b!4003570 () Bool)

(declare-fun b_free!111373 () Bool)

(declare-fun b_next!112077 () Bool)

(assert (=> b!4003570 (= b_free!111373 (not b_next!112077))))

(declare-fun tp!1218677 () Bool)

(declare-fun b_and!307459 () Bool)

(assert (=> b!4003570 (= tp!1218677 b_and!307459)))

(declare-fun b_free!111375 () Bool)

(declare-fun b_next!112079 () Bool)

(assert (=> b!4003570 (= b_free!111375 (not b_next!112079))))

(declare-fun tp!1218674 () Bool)

(declare-fun b_and!307461 () Bool)

(assert (=> b!4003570 (= tp!1218674 b_and!307461)))

(declare-fun b!4003550 () Bool)

(declare-fun e!2482791 () Bool)

(declare-fun e!2482786 () Bool)

(assert (=> b!4003550 (= e!2482791 e!2482786)))

(declare-fun res!1626823 () Bool)

(assert (=> b!4003550 (=> (not res!1626823) (not e!2482786))))

(declare-datatypes ((LexerInterface!6401 0))(
  ( (LexerInterfaceExt!6398 (__x!26301 Int)) (Lexer!6399) )
))
(declare-fun thiss!21717 () LexerInterface!6401)

(declare-datatypes ((C!23620 0))(
  ( (C!23621 (val!13904 Int)) )
))
(declare-datatypes ((List!42992 0))(
  ( (Nil!42868) (Cons!42868 (h!48288 C!23620) (t!332333 List!42992)) )
))
(declare-fun lt!1416044 () List!42992)

(declare-datatypes ((IArray!26051 0))(
  ( (IArray!26052 (innerList!13083 List!42992)) )
))
(declare-datatypes ((Conc!13023 0))(
  ( (Node!13023 (left!32347 Conc!13023) (right!32677 Conc!13023) (csize!26276 Int) (cheight!13234 Int)) (Leaf!20136 (xs!16329 IArray!26051) (csize!26277 Int)) (Empty!13023) )
))
(declare-datatypes ((BalanceConc!25640 0))(
  ( (BalanceConc!25641 (c!692248 Conc!13023)) )
))
(declare-datatypes ((List!42993 0))(
  ( (Nil!42869) (Cons!42869 (h!48289 (_ BitVec 16)) (t!332334 List!42993)) )
))
(declare-datatypes ((TokenValue!7042 0))(
  ( (FloatLiteralValue!14084 (text!49739 List!42993)) (TokenValueExt!7041 (__x!26302 Int)) (Broken!35210 (value!214750 List!42993)) (Object!7165) (End!7042) (Def!7042) (Underscore!7042) (Match!7042) (Else!7042) (Error!7042) (Case!7042) (If!7042) (Extends!7042) (Abstract!7042) (Class!7042) (Val!7042) (DelimiterValue!14084 (del!7102 List!42993)) (KeywordValue!7048 (value!214751 List!42993)) (CommentValue!14084 (value!214752 List!42993)) (WhitespaceValue!14084 (value!214753 List!42993)) (IndentationValue!7042 (value!214754 List!42993)) (String!48927) (Int32!7042) (Broken!35211 (value!214755 List!42993)) (Boolean!7043) (Unit!61857) (OperatorValue!7045 (op!7102 List!42993)) (IdentifierValue!14084 (value!214756 List!42993)) (IdentifierValue!14085 (value!214757 List!42993)) (WhitespaceValue!14085 (value!214758 List!42993)) (True!14084) (False!14084) (Broken!35212 (value!214759 List!42993)) (Broken!35213 (value!214760 List!42993)) (True!14085) (RightBrace!7042) (RightBracket!7042) (Colon!7042) (Null!7042) (Comma!7042) (LeftBracket!7042) (False!14085) (LeftBrace!7042) (ImaginaryLiteralValue!7042 (text!49740 List!42993)) (StringLiteralValue!21126 (value!214761 List!42993)) (EOFValue!7042 (value!214762 List!42993)) (IdentValue!7042 (value!214763 List!42993)) (DelimiterValue!14085 (value!214764 List!42993)) (DedentValue!7042 (value!214765 List!42993)) (NewLineValue!7042 (value!214766 List!42993)) (IntegerValue!21126 (value!214767 (_ BitVec 32)) (text!49741 List!42993)) (IntegerValue!21127 (value!214768 Int) (text!49742 List!42993)) (Times!7042) (Or!7042) (Equal!7042) (Minus!7042) (Broken!35214 (value!214769 List!42993)) (And!7042) (Div!7042) (LessEqual!7042) (Mod!7042) (Concat!18759) (Not!7042) (Plus!7042) (SpaceValue!7042 (value!214770 List!42993)) (IntegerValue!21128 (value!214771 Int) (text!49743 List!42993)) (StringLiteralValue!21127 (text!49744 List!42993)) (FloatLiteralValue!14085 (text!49745 List!42993)) (BytesLiteralValue!7042 (value!214772 List!42993)) (CommentValue!14085 (value!214773 List!42993)) (StringLiteralValue!21128 (value!214774 List!42993)) (ErrorTokenValue!7042 (msg!7103 List!42993)) )
))
(declare-datatypes ((String!48928 0))(
  ( (String!48929 (value!214775 String)) )
))
(declare-datatypes ((Regex!11717 0))(
  ( (ElementMatch!11717 (c!692249 C!23620)) (Concat!18760 (regOne!23946 Regex!11717) (regTwo!23946 Regex!11717)) (EmptyExpr!11717) (Star!11717 (reg!12046 Regex!11717)) (EmptyLang!11717) (Union!11717 (regOne!23947 Regex!11717) (regTwo!23947 Regex!11717)) )
))
(declare-datatypes ((TokenValueInjection!13512 0))(
  ( (TokenValueInjection!13513 (toValue!9304 Int) (toChars!9163 Int)) )
))
(declare-datatypes ((Rule!13424 0))(
  ( (Rule!13425 (regex!6812 Regex!11717) (tag!7672 String!48928) (isSeparator!6812 Bool) (transformation!6812 TokenValueInjection!13512)) )
))
(declare-datatypes ((List!42994 0))(
  ( (Nil!42870) (Cons!42870 (h!48290 Rule!13424) (t!332335 List!42994)) )
))
(declare-fun rules!2999 () List!42994)

(declare-datatypes ((Token!12762 0))(
  ( (Token!12763 (value!214776 TokenValue!7042) (rule!9846 Rule!13424) (size!32049 Int) (originalCharacters!7412 List!42992)) )
))
(declare-datatypes ((tuple2!42026 0))(
  ( (tuple2!42027 (_1!24147 Token!12762) (_2!24147 List!42992)) )
))
(declare-datatypes ((Option!9226 0))(
  ( (None!9225) (Some!9225 (v!39587 tuple2!42026)) )
))
(declare-fun lt!1416042 () Option!9226)

(declare-fun maxPrefix!3699 (LexerInterface!6401 List!42994 List!42992) Option!9226)

(assert (=> b!4003550 (= res!1626823 (= (maxPrefix!3699 thiss!21717 rules!2999 lt!1416044) lt!1416042))))

(declare-fun token!484 () Token!12762)

(declare-fun suffixResult!105 () List!42992)

(assert (=> b!4003550 (= lt!1416042 (Some!9225 (tuple2!42027 token!484 suffixResult!105)))))

(declare-fun prefix!494 () List!42992)

(declare-fun suffix!1299 () List!42992)

(declare-fun ++!11214 (List!42992 List!42992) List!42992)

(assert (=> b!4003550 (= lt!1416044 (++!11214 prefix!494 suffix!1299))))

(declare-fun b!4003551 () Bool)

(declare-fun e!2482788 () Bool)

(declare-fun tp_is_empty!20405 () Bool)

(declare-fun tp!1218666 () Bool)

(assert (=> b!4003551 (= e!2482788 (and tp_is_empty!20405 tp!1218666))))

(declare-fun b!4003552 () Bool)

(declare-fun res!1626820 () Bool)

(declare-fun e!2482790 () Bool)

(assert (=> b!4003552 (=> (not res!1626820) (not e!2482790))))

(declare-fun isEmpty!25608 (List!42994) Bool)

(assert (=> b!4003552 (= res!1626820 (not (isEmpty!25608 rules!2999)))))

(declare-fun b!4003553 () Bool)

(declare-fun e!2482804 () Bool)

(declare-fun tp!1218676 () Bool)

(assert (=> b!4003553 (= e!2482804 (and tp_is_empty!20405 tp!1218676))))

(declare-fun b!4003554 () Bool)

(declare-fun res!1626827 () Bool)

(assert (=> b!4003554 (=> (not res!1626827) (not e!2482791))))

(declare-fun newSuffix!27 () List!42992)

(declare-fun lt!1416025 () List!42992)

(declare-fun newSuffixResult!27 () List!42992)

(assert (=> b!4003554 (= res!1626827 (= (++!11214 lt!1416025 newSuffixResult!27) (++!11214 prefix!494 newSuffix!27)))))

(declare-fun b!4003555 () Bool)

(declare-fun e!2482805 () Bool)

(declare-fun e!2482799 () Bool)

(assert (=> b!4003555 (= e!2482805 e!2482799)))

(declare-fun res!1626822 () Bool)

(assert (=> b!4003555 (=> res!1626822 e!2482799)))

(declare-fun lt!1416045 () List!42992)

(assert (=> b!4003555 (= res!1626822 (not (= lt!1416045 prefix!494)))))

(declare-fun lt!1416031 () List!42992)

(assert (=> b!4003555 (= lt!1416045 (++!11214 lt!1416025 lt!1416031))))

(declare-fun getSuffix!2324 (List!42992 List!42992) List!42992)

(assert (=> b!4003555 (= lt!1416031 (getSuffix!2324 prefix!494 lt!1416025))))

(declare-fun isPrefix!3899 (List!42992 List!42992) Bool)

(assert (=> b!4003555 (isPrefix!3899 lt!1416025 prefix!494)))

(declare-datatypes ((Unit!61858 0))(
  ( (Unit!61859) )
))
(declare-fun lt!1416024 () Unit!61858)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!471 (List!42992 List!42992 List!42992) Unit!61858)

(assert (=> b!4003555 (= lt!1416024 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!471 prefix!494 lt!1416025 lt!1416044))))

(declare-fun b!4003556 () Bool)

(declare-fun res!1626816 () Bool)

(assert (=> b!4003556 (=> (not res!1626816) (not e!2482790))))

(declare-fun size!32050 (List!42992) Int)

(assert (=> b!4003556 (= res!1626816 (>= (size!32050 suffix!1299) (size!32050 newSuffix!27)))))

(declare-fun b!4003557 () Bool)

(declare-fun res!1626825 () Bool)

(assert (=> b!4003557 (=> (not res!1626825) (not e!2482790))))

(declare-fun rulesInvariant!5744 (LexerInterface!6401 List!42994) Bool)

(assert (=> b!4003557 (= res!1626825 (rulesInvariant!5744 thiss!21717 rules!2999))))

(declare-fun b!4003558 () Bool)

(declare-fun e!2482806 () Bool)

(declare-fun lt!1416038 () Option!9226)

(assert (=> b!4003558 (= e!2482806 (= lt!1416038 lt!1416042))))

(declare-fun lt!1416043 () TokenValue!7042)

(declare-fun lt!1416041 () Int)

(assert (=> b!4003558 (= lt!1416038 (Some!9225 (tuple2!42027 (Token!12763 lt!1416043 (rule!9846 token!484) lt!1416041 lt!1416025) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2719 (LexerInterface!6401 Rule!13424 List!42992) Option!9226)

(assert (=> b!4003558 (= lt!1416038 (maxPrefixOneRule!2719 thiss!21717 (rule!9846 token!484) lt!1416044))))

(declare-fun apply!10009 (TokenValueInjection!13512 BalanceConc!25640) TokenValue!7042)

(declare-fun seqFromList!5037 (List!42992) BalanceConc!25640)

(assert (=> b!4003558 (= lt!1416043 (apply!10009 (transformation!6812 (rule!9846 token!484)) (seqFromList!5037 lt!1416025)))))

(declare-fun lt!1416033 () Unit!61858)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1537 (LexerInterface!6401 List!42994 List!42992 List!42992 List!42992 Rule!13424) Unit!61858)

(assert (=> b!4003558 (= lt!1416033 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1537 thiss!21717 rules!2999 lt!1416025 lt!1416044 suffixResult!105 (rule!9846 token!484)))))

(declare-fun lt!1416039 () List!42992)

(assert (=> b!4003558 (= lt!1416039 suffixResult!105)))

(declare-fun lt!1416040 () Unit!61858)

(declare-fun lemmaSamePrefixThenSameSuffix!2070 (List!42992 List!42992 List!42992 List!42992 List!42992) Unit!61858)

(assert (=> b!4003558 (= lt!1416040 (lemmaSamePrefixThenSameSuffix!2070 lt!1416025 lt!1416039 lt!1416025 suffixResult!105 lt!1416044))))

(declare-fun lt!1416028 () List!42992)

(assert (=> b!4003558 (isPrefix!3899 lt!1416025 lt!1416028)))

(declare-fun lt!1416026 () Unit!61858)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2740 (List!42992 List!42992) Unit!61858)

(assert (=> b!4003558 (= lt!1416026 (lemmaConcatTwoListThenFirstIsPrefix!2740 lt!1416025 lt!1416039))))

(declare-fun b!4003559 () Bool)

(declare-fun e!2482796 () Bool)

(assert (=> b!4003559 (= e!2482786 (not e!2482796))))

(declare-fun res!1626817 () Bool)

(assert (=> b!4003559 (=> res!1626817 e!2482796)))

(declare-fun lt!1416037 () List!42992)

(assert (=> b!4003559 (= res!1626817 (not (= lt!1416037 lt!1416044)))))

(assert (=> b!4003559 (= lt!1416037 (++!11214 lt!1416025 suffixResult!105))))

(declare-fun lt!1416029 () Unit!61858)

(declare-fun lemmaInv!1027 (TokenValueInjection!13512) Unit!61858)

(assert (=> b!4003559 (= lt!1416029 (lemmaInv!1027 (transformation!6812 (rule!9846 token!484))))))

(declare-fun ruleValid!2744 (LexerInterface!6401 Rule!13424) Bool)

(assert (=> b!4003559 (ruleValid!2744 thiss!21717 (rule!9846 token!484))))

(declare-fun lt!1416034 () Unit!61858)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1818 (LexerInterface!6401 Rule!13424 List!42994) Unit!61858)

(assert (=> b!4003559 (= lt!1416034 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1818 thiss!21717 (rule!9846 token!484) rules!2999))))

(declare-fun b!4003560 () Bool)

(declare-fun e!2482803 () Bool)

(declare-fun tp!1218678 () Bool)

(assert (=> b!4003560 (= e!2482803 (and tp_is_empty!20405 tp!1218678))))

(declare-fun b!4003561 () Bool)

(assert (=> b!4003561 (= e!2482796 e!2482805)))

(declare-fun res!1626818 () Bool)

(assert (=> b!4003561 (=> res!1626818 e!2482805)))

(assert (=> b!4003561 (= res!1626818 (not (isPrefix!3899 lt!1416025 lt!1416044)))))

(assert (=> b!4003561 (isPrefix!3899 prefix!494 lt!1416044)))

(declare-fun lt!1416027 () Unit!61858)

(assert (=> b!4003561 (= lt!1416027 (lemmaConcatTwoListThenFirstIsPrefix!2740 prefix!494 suffix!1299))))

(assert (=> b!4003561 (isPrefix!3899 lt!1416025 lt!1416037)))

(declare-fun lt!1416030 () Unit!61858)

(assert (=> b!4003561 (= lt!1416030 (lemmaConcatTwoListThenFirstIsPrefix!2740 lt!1416025 suffixResult!105))))

(declare-fun b!4003562 () Bool)

(declare-fun e!2482792 () Bool)

(declare-fun e!2482798 () Bool)

(declare-fun tp!1218669 () Bool)

(assert (=> b!4003562 (= e!2482792 (and e!2482798 tp!1218669))))

(declare-fun b!4003563 () Bool)

(assert (=> b!4003563 (= e!2482790 e!2482791)))

(declare-fun res!1626824 () Bool)

(assert (=> b!4003563 (=> (not res!1626824) (not e!2482791))))

(declare-fun lt!1416032 () Int)

(assert (=> b!4003563 (= res!1626824 (>= lt!1416032 lt!1416041))))

(assert (=> b!4003563 (= lt!1416041 (size!32050 lt!1416025))))

(assert (=> b!4003563 (= lt!1416032 (size!32050 prefix!494))))

(declare-fun list!15922 (BalanceConc!25640) List!42992)

(declare-fun charsOf!4628 (Token!12762) BalanceConc!25640)

(assert (=> b!4003563 (= lt!1416025 (list!15922 (charsOf!4628 token!484)))))

(declare-fun e!2482787 () Bool)

(declare-fun tp!1218668 () Bool)

(declare-fun b!4003565 () Bool)

(declare-fun e!2482797 () Bool)

(declare-fun inv!21 (TokenValue!7042) Bool)

(assert (=> b!4003565 (= e!2482797 (and (inv!21 (value!214776 token!484)) e!2482787 tp!1218668))))

(declare-fun b!4003566 () Bool)

(assert (=> b!4003566 (= e!2482799 e!2482806)))

(declare-fun res!1626819 () Bool)

(assert (=> b!4003566 (=> res!1626819 e!2482806)))

(declare-fun lt!1416036 () List!42992)

(assert (=> b!4003566 (= res!1626819 (or (not (= lt!1416044 lt!1416036)) (not (= lt!1416044 lt!1416028))))))

(assert (=> b!4003566 (= lt!1416036 lt!1416028)))

(assert (=> b!4003566 (= lt!1416028 (++!11214 lt!1416025 lt!1416039))))

(assert (=> b!4003566 (= lt!1416036 (++!11214 lt!1416045 suffix!1299))))

(assert (=> b!4003566 (= lt!1416039 (++!11214 lt!1416031 suffix!1299))))

(declare-fun lt!1416035 () Unit!61858)

(declare-fun lemmaConcatAssociativity!2524 (List!42992 List!42992 List!42992) Unit!61858)

(assert (=> b!4003566 (= lt!1416035 (lemmaConcatAssociativity!2524 lt!1416025 lt!1416031 suffix!1299))))

(declare-fun tp!1218670 () Bool)

(declare-fun e!2482793 () Bool)

(declare-fun b!4003567 () Bool)

(declare-fun inv!57241 (String!48928) Bool)

(declare-fun inv!57244 (TokenValueInjection!13512) Bool)

(assert (=> b!4003567 (= e!2482798 (and tp!1218670 (inv!57241 (tag!7672 (h!48290 rules!2999))) (inv!57244 (transformation!6812 (h!48290 rules!2999))) e!2482793))))

(declare-fun e!2482789 () Bool)

(declare-fun tp!1218671 () Bool)

(declare-fun b!4003568 () Bool)

(assert (=> b!4003568 (= e!2482787 (and tp!1218671 (inv!57241 (tag!7672 (rule!9846 token!484))) (inv!57244 (transformation!6812 (rule!9846 token!484))) e!2482789))))

(declare-fun b!4003569 () Bool)

(declare-fun e!2482801 () Bool)

(declare-fun tp!1218675 () Bool)

(assert (=> b!4003569 (= e!2482801 (and tp_is_empty!20405 tp!1218675))))

(assert (=> b!4003570 (= e!2482793 (and tp!1218677 tp!1218674))))

(declare-fun b!4003571 () Bool)

(declare-fun res!1626821 () Bool)

(assert (=> b!4003571 (=> (not res!1626821) (not e!2482790))))

(assert (=> b!4003571 (= res!1626821 (isPrefix!3899 newSuffix!27 suffix!1299))))

(assert (=> b!4003572 (= e!2482789 (and tp!1218672 tp!1218673))))

(declare-fun b!4003564 () Bool)

(declare-fun e!2482795 () Bool)

(declare-fun tp!1218667 () Bool)

(assert (=> b!4003564 (= e!2482795 (and tp_is_empty!20405 tp!1218667))))

(declare-fun res!1626826 () Bool)

(assert (=> start!376792 (=> (not res!1626826) (not e!2482790))))

(get-info :version)

(assert (=> start!376792 (= res!1626826 ((_ is Lexer!6399) thiss!21717))))

(assert (=> start!376792 e!2482790))

(assert (=> start!376792 e!2482804))

(declare-fun inv!57245 (Token!12762) Bool)

(assert (=> start!376792 (and (inv!57245 token!484) e!2482797)))

(assert (=> start!376792 e!2482795))

(assert (=> start!376792 e!2482801))

(assert (=> start!376792 e!2482788))

(assert (=> start!376792 true))

(assert (=> start!376792 e!2482792))

(assert (=> start!376792 e!2482803))

(assert (= (and start!376792 res!1626826) b!4003552))

(assert (= (and b!4003552 res!1626820) b!4003557))

(assert (= (and b!4003557 res!1626825) b!4003556))

(assert (= (and b!4003556 res!1626816) b!4003571))

(assert (= (and b!4003571 res!1626821) b!4003563))

(assert (= (and b!4003563 res!1626824) b!4003554))

(assert (= (and b!4003554 res!1626827) b!4003550))

(assert (= (and b!4003550 res!1626823) b!4003559))

(assert (= (and b!4003559 (not res!1626817)) b!4003561))

(assert (= (and b!4003561 (not res!1626818)) b!4003555))

(assert (= (and b!4003555 (not res!1626822)) b!4003566))

(assert (= (and b!4003566 (not res!1626819)) b!4003558))

(assert (= (and start!376792 ((_ is Cons!42868) prefix!494)) b!4003553))

(assert (= b!4003568 b!4003572))

(assert (= b!4003565 b!4003568))

(assert (= start!376792 b!4003565))

(assert (= (and start!376792 ((_ is Cons!42868) suffixResult!105)) b!4003564))

(assert (= (and start!376792 ((_ is Cons!42868) suffix!1299)) b!4003569))

(assert (= (and start!376792 ((_ is Cons!42868) newSuffix!27)) b!4003551))

(assert (= b!4003567 b!4003570))

(assert (= b!4003562 b!4003567))

(assert (= (and start!376792 ((_ is Cons!42870) rules!2999)) b!4003562))

(assert (= (and start!376792 ((_ is Cons!42868) newSuffixResult!27)) b!4003560))

(declare-fun m!4586031 () Bool)

(assert (=> b!4003556 m!4586031))

(declare-fun m!4586033 () Bool)

(assert (=> b!4003556 m!4586033))

(declare-fun m!4586035 () Bool)

(assert (=> b!4003565 m!4586035))

(declare-fun m!4586037 () Bool)

(assert (=> b!4003550 m!4586037))

(declare-fun m!4586039 () Bool)

(assert (=> b!4003550 m!4586039))

(declare-fun m!4586041 () Bool)

(assert (=> b!4003559 m!4586041))

(declare-fun m!4586043 () Bool)

(assert (=> b!4003559 m!4586043))

(declare-fun m!4586045 () Bool)

(assert (=> b!4003559 m!4586045))

(declare-fun m!4586047 () Bool)

(assert (=> b!4003559 m!4586047))

(declare-fun m!4586049 () Bool)

(assert (=> b!4003566 m!4586049))

(declare-fun m!4586051 () Bool)

(assert (=> b!4003566 m!4586051))

(declare-fun m!4586053 () Bool)

(assert (=> b!4003566 m!4586053))

(declare-fun m!4586055 () Bool)

(assert (=> b!4003566 m!4586055))

(declare-fun m!4586057 () Bool)

(assert (=> b!4003555 m!4586057))

(declare-fun m!4586059 () Bool)

(assert (=> b!4003555 m!4586059))

(declare-fun m!4586061 () Bool)

(assert (=> b!4003555 m!4586061))

(declare-fun m!4586063 () Bool)

(assert (=> b!4003555 m!4586063))

(declare-fun m!4586065 () Bool)

(assert (=> b!4003571 m!4586065))

(declare-fun m!4586067 () Bool)

(assert (=> b!4003561 m!4586067))

(declare-fun m!4586069 () Bool)

(assert (=> b!4003561 m!4586069))

(declare-fun m!4586071 () Bool)

(assert (=> b!4003561 m!4586071))

(declare-fun m!4586073 () Bool)

(assert (=> b!4003561 m!4586073))

(declare-fun m!4586075 () Bool)

(assert (=> b!4003561 m!4586075))

(declare-fun m!4586077 () Bool)

(assert (=> b!4003554 m!4586077))

(declare-fun m!4586079 () Bool)

(assert (=> b!4003554 m!4586079))

(declare-fun m!4586081 () Bool)

(assert (=> b!4003557 m!4586081))

(declare-fun m!4586083 () Bool)

(assert (=> b!4003552 m!4586083))

(declare-fun m!4586085 () Bool)

(assert (=> start!376792 m!4586085))

(declare-fun m!4586087 () Bool)

(assert (=> b!4003563 m!4586087))

(declare-fun m!4586089 () Bool)

(assert (=> b!4003563 m!4586089))

(declare-fun m!4586091 () Bool)

(assert (=> b!4003563 m!4586091))

(assert (=> b!4003563 m!4586091))

(declare-fun m!4586093 () Bool)

(assert (=> b!4003563 m!4586093))

(declare-fun m!4586095 () Bool)

(assert (=> b!4003558 m!4586095))

(declare-fun m!4586097 () Bool)

(assert (=> b!4003558 m!4586097))

(declare-fun m!4586099 () Bool)

(assert (=> b!4003558 m!4586099))

(assert (=> b!4003558 m!4586095))

(declare-fun m!4586101 () Bool)

(assert (=> b!4003558 m!4586101))

(declare-fun m!4586103 () Bool)

(assert (=> b!4003558 m!4586103))

(declare-fun m!4586105 () Bool)

(assert (=> b!4003558 m!4586105))

(declare-fun m!4586107 () Bool)

(assert (=> b!4003558 m!4586107))

(declare-fun m!4586109 () Bool)

(assert (=> b!4003568 m!4586109))

(declare-fun m!4586111 () Bool)

(assert (=> b!4003568 m!4586111))

(declare-fun m!4586113 () Bool)

(assert (=> b!4003567 m!4586113))

(declare-fun m!4586115 () Bool)

(assert (=> b!4003567 m!4586115))

(check-sat (not b!4003551) (not b!4003565) b_and!307461 (not b!4003556) (not b!4003560) (not b_next!112075) (not b!4003553) (not b!4003571) b_and!307457 (not b_next!112077) (not b!4003561) (not b!4003558) (not b!4003568) b_and!307455 (not b!4003550) (not b_next!112073) (not start!376792) (not b!4003567) (not b_next!112079) (not b!4003566) (not b!4003564) (not b!4003555) (not b!4003557) b_and!307459 (not b!4003554) (not b!4003563) (not b!4003569) (not b!4003552) (not b!4003559) tp_is_empty!20405 (not b!4003562))
(check-sat (not b_next!112077) b_and!307455 (not b_next!112073) (not b_next!112079) b_and!307461 b_and!307459 (not b_next!112075) b_and!307457)
(get-model)

(declare-fun b!4003603 () Bool)

(declare-fun e!2482828 () Bool)

(declare-fun tail!6241 (List!42992) List!42992)

(assert (=> b!4003603 (= e!2482828 (isPrefix!3899 (tail!6241 prefix!494) (tail!6241 lt!1416044)))))

(declare-fun b!4003601 () Bool)

(declare-fun e!2482829 () Bool)

(assert (=> b!4003601 (= e!2482829 e!2482828)))

(declare-fun res!1626862 () Bool)

(assert (=> b!4003601 (=> (not res!1626862) (not e!2482828))))

(assert (=> b!4003601 (= res!1626862 (not ((_ is Nil!42868) lt!1416044)))))

(declare-fun b!4003602 () Bool)

(declare-fun res!1626861 () Bool)

(assert (=> b!4003602 (=> (not res!1626861) (not e!2482828))))

(declare-fun head!8509 (List!42992) C!23620)

(assert (=> b!4003602 (= res!1626861 (= (head!8509 prefix!494) (head!8509 lt!1416044)))))

(declare-fun b!4003604 () Bool)

(declare-fun e!2482830 () Bool)

(assert (=> b!4003604 (= e!2482830 (>= (size!32050 lt!1416044) (size!32050 prefix!494)))))

(declare-fun d!1184059 () Bool)

(assert (=> d!1184059 e!2482830))

(declare-fun res!1626860 () Bool)

(assert (=> d!1184059 (=> res!1626860 e!2482830)))

(declare-fun lt!1416058 () Bool)

(assert (=> d!1184059 (= res!1626860 (not lt!1416058))))

(assert (=> d!1184059 (= lt!1416058 e!2482829)))

(declare-fun res!1626863 () Bool)

(assert (=> d!1184059 (=> res!1626863 e!2482829)))

(assert (=> d!1184059 (= res!1626863 ((_ is Nil!42868) prefix!494))))

(assert (=> d!1184059 (= (isPrefix!3899 prefix!494 lt!1416044) lt!1416058)))

(assert (= (and d!1184059 (not res!1626863)) b!4003601))

(assert (= (and b!4003601 res!1626862) b!4003602))

(assert (= (and b!4003602 res!1626861) b!4003603))

(assert (= (and d!1184059 (not res!1626860)) b!4003604))

(declare-fun m!4586155 () Bool)

(assert (=> b!4003603 m!4586155))

(declare-fun m!4586157 () Bool)

(assert (=> b!4003603 m!4586157))

(assert (=> b!4003603 m!4586155))

(assert (=> b!4003603 m!4586157))

(declare-fun m!4586159 () Bool)

(assert (=> b!4003603 m!4586159))

(declare-fun m!4586161 () Bool)

(assert (=> b!4003602 m!4586161))

(declare-fun m!4586163 () Bool)

(assert (=> b!4003602 m!4586163))

(declare-fun m!4586165 () Bool)

(assert (=> b!4003604 m!4586165))

(assert (=> b!4003604 m!4586089))

(assert (=> b!4003561 d!1184059))

(declare-fun b!4003607 () Bool)

(declare-fun e!2482831 () Bool)

(assert (=> b!4003607 (= e!2482831 (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 lt!1416037)))))

(declare-fun b!4003605 () Bool)

(declare-fun e!2482832 () Bool)

(assert (=> b!4003605 (= e!2482832 e!2482831)))

(declare-fun res!1626866 () Bool)

(assert (=> b!4003605 (=> (not res!1626866) (not e!2482831))))

(assert (=> b!4003605 (= res!1626866 (not ((_ is Nil!42868) lt!1416037)))))

(declare-fun b!4003606 () Bool)

(declare-fun res!1626865 () Bool)

(assert (=> b!4003606 (=> (not res!1626865) (not e!2482831))))

(assert (=> b!4003606 (= res!1626865 (= (head!8509 lt!1416025) (head!8509 lt!1416037)))))

(declare-fun b!4003608 () Bool)

(declare-fun e!2482833 () Bool)

(assert (=> b!4003608 (= e!2482833 (>= (size!32050 lt!1416037) (size!32050 lt!1416025)))))

(declare-fun d!1184061 () Bool)

(assert (=> d!1184061 e!2482833))

(declare-fun res!1626864 () Bool)

(assert (=> d!1184061 (=> res!1626864 e!2482833)))

(declare-fun lt!1416059 () Bool)

(assert (=> d!1184061 (= res!1626864 (not lt!1416059))))

(assert (=> d!1184061 (= lt!1416059 e!2482832)))

(declare-fun res!1626867 () Bool)

(assert (=> d!1184061 (=> res!1626867 e!2482832)))

(assert (=> d!1184061 (= res!1626867 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184061 (= (isPrefix!3899 lt!1416025 lt!1416037) lt!1416059)))

(assert (= (and d!1184061 (not res!1626867)) b!4003605))

(assert (= (and b!4003605 res!1626866) b!4003606))

(assert (= (and b!4003606 res!1626865) b!4003607))

(assert (= (and d!1184061 (not res!1626864)) b!4003608))

(declare-fun m!4586167 () Bool)

(assert (=> b!4003607 m!4586167))

(declare-fun m!4586169 () Bool)

(assert (=> b!4003607 m!4586169))

(assert (=> b!4003607 m!4586167))

(assert (=> b!4003607 m!4586169))

(declare-fun m!4586171 () Bool)

(assert (=> b!4003607 m!4586171))

(declare-fun m!4586173 () Bool)

(assert (=> b!4003606 m!4586173))

(declare-fun m!4586175 () Bool)

(assert (=> b!4003606 m!4586175))

(declare-fun m!4586177 () Bool)

(assert (=> b!4003608 m!4586177))

(assert (=> b!4003608 m!4586087))

(assert (=> b!4003561 d!1184061))

(declare-fun b!4003611 () Bool)

(declare-fun e!2482834 () Bool)

(assert (=> b!4003611 (= e!2482834 (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 lt!1416044)))))

(declare-fun b!4003609 () Bool)

(declare-fun e!2482835 () Bool)

(assert (=> b!4003609 (= e!2482835 e!2482834)))

(declare-fun res!1626870 () Bool)

(assert (=> b!4003609 (=> (not res!1626870) (not e!2482834))))

(assert (=> b!4003609 (= res!1626870 (not ((_ is Nil!42868) lt!1416044)))))

(declare-fun b!4003610 () Bool)

(declare-fun res!1626869 () Bool)

(assert (=> b!4003610 (=> (not res!1626869) (not e!2482834))))

(assert (=> b!4003610 (= res!1626869 (= (head!8509 lt!1416025) (head!8509 lt!1416044)))))

(declare-fun b!4003612 () Bool)

(declare-fun e!2482836 () Bool)

(assert (=> b!4003612 (= e!2482836 (>= (size!32050 lt!1416044) (size!32050 lt!1416025)))))

(declare-fun d!1184063 () Bool)

(assert (=> d!1184063 e!2482836))

(declare-fun res!1626868 () Bool)

(assert (=> d!1184063 (=> res!1626868 e!2482836)))

(declare-fun lt!1416060 () Bool)

(assert (=> d!1184063 (= res!1626868 (not lt!1416060))))

(assert (=> d!1184063 (= lt!1416060 e!2482835)))

(declare-fun res!1626871 () Bool)

(assert (=> d!1184063 (=> res!1626871 e!2482835)))

(assert (=> d!1184063 (= res!1626871 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184063 (= (isPrefix!3899 lt!1416025 lt!1416044) lt!1416060)))

(assert (= (and d!1184063 (not res!1626871)) b!4003609))

(assert (= (and b!4003609 res!1626870) b!4003610))

(assert (= (and b!4003610 res!1626869) b!4003611))

(assert (= (and d!1184063 (not res!1626868)) b!4003612))

(assert (=> b!4003611 m!4586167))

(assert (=> b!4003611 m!4586157))

(assert (=> b!4003611 m!4586167))

(assert (=> b!4003611 m!4586157))

(declare-fun m!4586179 () Bool)

(assert (=> b!4003611 m!4586179))

(assert (=> b!4003610 m!4586173))

(assert (=> b!4003610 m!4586163))

(assert (=> b!4003612 m!4586165))

(assert (=> b!4003612 m!4586087))

(assert (=> b!4003561 d!1184063))

(declare-fun d!1184065 () Bool)

(assert (=> d!1184065 (isPrefix!3899 lt!1416025 (++!11214 lt!1416025 suffixResult!105))))

(declare-fun lt!1416063 () Unit!61858)

(declare-fun choose!24156 (List!42992 List!42992) Unit!61858)

(assert (=> d!1184065 (= lt!1416063 (choose!24156 lt!1416025 suffixResult!105))))

(assert (=> d!1184065 (= (lemmaConcatTwoListThenFirstIsPrefix!2740 lt!1416025 suffixResult!105) lt!1416063)))

(declare-fun bs!588920 () Bool)

(assert (= bs!588920 d!1184065))

(assert (=> bs!588920 m!4586041))

(assert (=> bs!588920 m!4586041))

(declare-fun m!4586181 () Bool)

(assert (=> bs!588920 m!4586181))

(declare-fun m!4586183 () Bool)

(assert (=> bs!588920 m!4586183))

(assert (=> b!4003561 d!1184065))

(declare-fun d!1184067 () Bool)

(assert (=> d!1184067 (isPrefix!3899 prefix!494 (++!11214 prefix!494 suffix!1299))))

(declare-fun lt!1416064 () Unit!61858)

(assert (=> d!1184067 (= lt!1416064 (choose!24156 prefix!494 suffix!1299))))

(assert (=> d!1184067 (= (lemmaConcatTwoListThenFirstIsPrefix!2740 prefix!494 suffix!1299) lt!1416064)))

(declare-fun bs!588921 () Bool)

(assert (= bs!588921 d!1184067))

(assert (=> bs!588921 m!4586039))

(assert (=> bs!588921 m!4586039))

(declare-fun m!4586185 () Bool)

(assert (=> bs!588921 m!4586185))

(declare-fun m!4586187 () Bool)

(assert (=> bs!588921 m!4586187))

(assert (=> b!4003561 d!1184067))

(declare-fun d!1184069 () Bool)

(declare-fun res!1626876 () Bool)

(declare-fun e!2482839 () Bool)

(assert (=> d!1184069 (=> (not res!1626876) (not e!2482839))))

(declare-fun isEmpty!25611 (List!42992) Bool)

(assert (=> d!1184069 (= res!1626876 (not (isEmpty!25611 (originalCharacters!7412 token!484))))))

(assert (=> d!1184069 (= (inv!57245 token!484) e!2482839)))

(declare-fun b!4003617 () Bool)

(declare-fun res!1626877 () Bool)

(assert (=> b!4003617 (=> (not res!1626877) (not e!2482839))))

(declare-fun dynLambda!18171 (Int TokenValue!7042) BalanceConc!25640)

(assert (=> b!4003617 (= res!1626877 (= (originalCharacters!7412 token!484) (list!15922 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))))))

(declare-fun b!4003618 () Bool)

(assert (=> b!4003618 (= e!2482839 (= (size!32049 token!484) (size!32050 (originalCharacters!7412 token!484))))))

(assert (= (and d!1184069 res!1626876) b!4003617))

(assert (= (and b!4003617 res!1626877) b!4003618))

(declare-fun b_lambda!116759 () Bool)

(assert (=> (not b_lambda!116759) (not b!4003617)))

(declare-fun t!332337 () Bool)

(declare-fun tb!240601 () Bool)

(assert (=> (and b!4003572 (= (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toChars!9163 (transformation!6812 (rule!9846 token!484)))) t!332337) tb!240601))

(declare-fun b!4003629 () Bool)

(declare-fun e!2482846 () Bool)

(declare-fun tp!1218681 () Bool)

(declare-fun inv!57248 (Conc!13023) Bool)

(assert (=> b!4003629 (= e!2482846 (and (inv!57248 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))) tp!1218681))))

(declare-fun result!291622 () Bool)

(declare-fun inv!57249 (BalanceConc!25640) Bool)

(assert (=> tb!240601 (= result!291622 (and (inv!57249 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484))) e!2482846))))

(assert (= tb!240601 b!4003629))

(declare-fun m!4586189 () Bool)

(assert (=> b!4003629 m!4586189))

(declare-fun m!4586191 () Bool)

(assert (=> tb!240601 m!4586191))

(assert (=> b!4003617 t!332337))

(declare-fun b_and!307463 () Bool)

(assert (= b_and!307457 (and (=> t!332337 result!291622) b_and!307463)))

(declare-fun tb!240603 () Bool)

(declare-fun t!332339 () Bool)

(assert (=> (and b!4003570 (= (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toChars!9163 (transformation!6812 (rule!9846 token!484)))) t!332339) tb!240603))

(declare-fun result!291626 () Bool)

(assert (= result!291626 result!291622))

(assert (=> b!4003617 t!332339))

(declare-fun b_and!307465 () Bool)

(assert (= b_and!307461 (and (=> t!332339 result!291626) b_and!307465)))

(declare-fun m!4586193 () Bool)

(assert (=> d!1184069 m!4586193))

(declare-fun m!4586195 () Bool)

(assert (=> b!4003617 m!4586195))

(assert (=> b!4003617 m!4586195))

(declare-fun m!4586197 () Bool)

(assert (=> b!4003617 m!4586197))

(declare-fun m!4586199 () Bool)

(assert (=> b!4003618 m!4586199))

(assert (=> start!376792 d!1184069))

(declare-fun d!1184071 () Bool)

(assert (=> d!1184071 (= (isEmpty!25608 rules!2999) ((_ is Nil!42870) rules!2999))))

(assert (=> b!4003552 d!1184071))

(declare-fun d!1184073 () Bool)

(declare-fun lt!1416077 () Int)

(assert (=> d!1184073 (>= lt!1416077 0)))

(declare-fun e!2482853 () Int)

(assert (=> d!1184073 (= lt!1416077 e!2482853)))

(declare-fun c!692254 () Bool)

(assert (=> d!1184073 (= c!692254 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184073 (= (size!32050 lt!1416025) lt!1416077)))

(declare-fun b!4003646 () Bool)

(assert (=> b!4003646 (= e!2482853 0)))

(declare-fun b!4003647 () Bool)

(assert (=> b!4003647 (= e!2482853 (+ 1 (size!32050 (t!332333 lt!1416025))))))

(assert (= (and d!1184073 c!692254) b!4003646))

(assert (= (and d!1184073 (not c!692254)) b!4003647))

(declare-fun m!4586201 () Bool)

(assert (=> b!4003647 m!4586201))

(assert (=> b!4003563 d!1184073))

(declare-fun d!1184075 () Bool)

(declare-fun lt!1416083 () Int)

(assert (=> d!1184075 (>= lt!1416083 0)))

(declare-fun e!2482858 () Int)

(assert (=> d!1184075 (= lt!1416083 e!2482858)))

(declare-fun c!692256 () Bool)

(assert (=> d!1184075 (= c!692256 ((_ is Nil!42868) prefix!494))))

(assert (=> d!1184075 (= (size!32050 prefix!494) lt!1416083)))

(declare-fun b!4003657 () Bool)

(assert (=> b!4003657 (= e!2482858 0)))

(declare-fun b!4003658 () Bool)

(assert (=> b!4003658 (= e!2482858 (+ 1 (size!32050 (t!332333 prefix!494))))))

(assert (= (and d!1184075 c!692256) b!4003657))

(assert (= (and d!1184075 (not c!692256)) b!4003658))

(declare-fun m!4586203 () Bool)

(assert (=> b!4003658 m!4586203))

(assert (=> b!4003563 d!1184075))

(declare-fun d!1184077 () Bool)

(declare-fun list!15924 (Conc!13023) List!42992)

(assert (=> d!1184077 (= (list!15922 (charsOf!4628 token!484)) (list!15924 (c!692248 (charsOf!4628 token!484))))))

(declare-fun bs!588922 () Bool)

(assert (= bs!588922 d!1184077))

(declare-fun m!4586227 () Bool)

(assert (=> bs!588922 m!4586227))

(assert (=> b!4003563 d!1184077))

(declare-fun d!1184079 () Bool)

(declare-fun lt!1416086 () BalanceConc!25640)

(assert (=> d!1184079 (= (list!15922 lt!1416086) (originalCharacters!7412 token!484))))

(assert (=> d!1184079 (= lt!1416086 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))))

(assert (=> d!1184079 (= (charsOf!4628 token!484) lt!1416086)))

(declare-fun b_lambda!116763 () Bool)

(assert (=> (not b_lambda!116763) (not d!1184079)))

(assert (=> d!1184079 t!332337))

(declare-fun b_and!307471 () Bool)

(assert (= b_and!307463 (and (=> t!332337 result!291622) b_and!307471)))

(assert (=> d!1184079 t!332339))

(declare-fun b_and!307473 () Bool)

(assert (= b_and!307465 (and (=> t!332339 result!291626) b_and!307473)))

(declare-fun m!4586255 () Bool)

(assert (=> d!1184079 m!4586255))

(assert (=> d!1184079 m!4586195))

(assert (=> b!4003563 d!1184079))

(declare-fun d!1184087 () Bool)

(declare-fun e!2482867 () Bool)

(assert (=> d!1184087 e!2482867))

(declare-fun res!1626904 () Bool)

(assert (=> d!1184087 (=> (not res!1626904) (not e!2482867))))

(declare-fun lt!1416089 () List!42992)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6496 (List!42992) (InoxSet C!23620))

(assert (=> d!1184087 (= res!1626904 (= (content!6496 lt!1416089) ((_ map or) (content!6496 lt!1416025) (content!6496 suffixResult!105))))))

(declare-fun e!2482866 () List!42992)

(assert (=> d!1184087 (= lt!1416089 e!2482866)))

(declare-fun c!692259 () Bool)

(assert (=> d!1184087 (= c!692259 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184087 (= (++!11214 lt!1416025 suffixResult!105) lt!1416089)))

(declare-fun b!4003672 () Bool)

(assert (=> b!4003672 (= e!2482867 (or (not (= suffixResult!105 Nil!42868)) (= lt!1416089 lt!1416025)))))

(declare-fun b!4003670 () Bool)

(assert (=> b!4003670 (= e!2482866 (Cons!42868 (h!48288 lt!1416025) (++!11214 (t!332333 lt!1416025) suffixResult!105)))))

(declare-fun b!4003669 () Bool)

(assert (=> b!4003669 (= e!2482866 suffixResult!105)))

(declare-fun b!4003671 () Bool)

(declare-fun res!1626903 () Bool)

(assert (=> b!4003671 (=> (not res!1626903) (not e!2482867))))

(assert (=> b!4003671 (= res!1626903 (= (size!32050 lt!1416089) (+ (size!32050 lt!1416025) (size!32050 suffixResult!105))))))

(assert (= (and d!1184087 c!692259) b!4003669))

(assert (= (and d!1184087 (not c!692259)) b!4003670))

(assert (= (and d!1184087 res!1626904) b!4003671))

(assert (= (and b!4003671 res!1626903) b!4003672))

(declare-fun m!4586257 () Bool)

(assert (=> d!1184087 m!4586257))

(declare-fun m!4586259 () Bool)

(assert (=> d!1184087 m!4586259))

(declare-fun m!4586261 () Bool)

(assert (=> d!1184087 m!4586261))

(declare-fun m!4586263 () Bool)

(assert (=> b!4003670 m!4586263))

(declare-fun m!4586265 () Bool)

(assert (=> b!4003671 m!4586265))

(assert (=> b!4003671 m!4586087))

(declare-fun m!4586267 () Bool)

(assert (=> b!4003671 m!4586267))

(assert (=> b!4003559 d!1184087))

(declare-fun d!1184089 () Bool)

(declare-fun e!2482876 () Bool)

(assert (=> d!1184089 e!2482876))

(declare-fun res!1626917 () Bool)

(assert (=> d!1184089 (=> (not res!1626917) (not e!2482876))))

(declare-fun semiInverseModEq!2914 (Int Int) Bool)

(assert (=> d!1184089 (= res!1626917 (semiInverseModEq!2914 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))))))

(declare-fun Unit!61860 () Unit!61858)

(assert (=> d!1184089 (= (lemmaInv!1027 (transformation!6812 (rule!9846 token!484))) Unit!61860)))

(declare-fun b!4003685 () Bool)

(declare-fun equivClasses!2813 (Int Int) Bool)

(assert (=> b!4003685 (= e!2482876 (equivClasses!2813 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))))))

(assert (= (and d!1184089 res!1626917) b!4003685))

(declare-fun m!4586281 () Bool)

(assert (=> d!1184089 m!4586281))

(declare-fun m!4586283 () Bool)

(assert (=> b!4003685 m!4586283))

(assert (=> b!4003559 d!1184089))

(declare-fun d!1184097 () Bool)

(declare-fun res!1626926 () Bool)

(declare-fun e!2482886 () Bool)

(assert (=> d!1184097 (=> (not res!1626926) (not e!2482886))))

(declare-fun validRegex!5307 (Regex!11717) Bool)

(assert (=> d!1184097 (= res!1626926 (validRegex!5307 (regex!6812 (rule!9846 token!484))))))

(assert (=> d!1184097 (= (ruleValid!2744 thiss!21717 (rule!9846 token!484)) e!2482886)))

(declare-fun b!4003703 () Bool)

(declare-fun res!1626927 () Bool)

(assert (=> b!4003703 (=> (not res!1626927) (not e!2482886))))

(declare-fun nullable!4107 (Regex!11717) Bool)

(assert (=> b!4003703 (= res!1626927 (not (nullable!4107 (regex!6812 (rule!9846 token!484)))))))

(declare-fun b!4003704 () Bool)

(assert (=> b!4003704 (= e!2482886 (not (= (tag!7672 (rule!9846 token!484)) (String!48929 ""))))))

(assert (= (and d!1184097 res!1626926) b!4003703))

(assert (= (and b!4003703 res!1626927) b!4003704))

(declare-fun m!4586297 () Bool)

(assert (=> d!1184097 m!4586297))

(declare-fun m!4586299 () Bool)

(assert (=> b!4003703 m!4586299))

(assert (=> b!4003559 d!1184097))

(declare-fun d!1184101 () Bool)

(assert (=> d!1184101 (ruleValid!2744 thiss!21717 (rule!9846 token!484))))

(declare-fun lt!1416109 () Unit!61858)

(declare-fun choose!24157 (LexerInterface!6401 Rule!13424 List!42994) Unit!61858)

(assert (=> d!1184101 (= lt!1416109 (choose!24157 thiss!21717 (rule!9846 token!484) rules!2999))))

(declare-fun contains!8520 (List!42994 Rule!13424) Bool)

(assert (=> d!1184101 (contains!8520 rules!2999 (rule!9846 token!484))))

(assert (=> d!1184101 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1818 thiss!21717 (rule!9846 token!484) rules!2999) lt!1416109)))

(declare-fun bs!588927 () Bool)

(assert (= bs!588927 d!1184101))

(assert (=> bs!588927 m!4586045))

(declare-fun m!4586361 () Bool)

(assert (=> bs!588927 m!4586361))

(declare-fun m!4586363 () Bool)

(assert (=> bs!588927 m!4586363))

(assert (=> b!4003559 d!1184101))

(declare-fun bm!286017 () Bool)

(declare-fun call!286022 () Option!9226)

(assert (=> bm!286017 (= call!286022 (maxPrefixOneRule!2719 thiss!21717 (h!48290 rules!2999) lt!1416044))))

(declare-fun b!4003843 () Bool)

(declare-fun e!2482959 () Option!9226)

(assert (=> b!4003843 (= e!2482959 call!286022)))

(declare-fun b!4003844 () Bool)

(declare-fun e!2482958 () Bool)

(declare-fun e!2482957 () Bool)

(assert (=> b!4003844 (= e!2482958 e!2482957)))

(declare-fun res!1627009 () Bool)

(assert (=> b!4003844 (=> (not res!1627009) (not e!2482957))))

(declare-fun lt!1416158 () Option!9226)

(declare-fun isDefined!7060 (Option!9226) Bool)

(assert (=> b!4003844 (= res!1627009 (isDefined!7060 lt!1416158))))

(declare-fun b!4003845 () Bool)

(declare-fun get!14090 (Option!9226) tuple2!42026)

(assert (=> b!4003845 (= e!2482957 (contains!8520 rules!2999 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))))

(declare-fun b!4003846 () Bool)

(declare-fun res!1627010 () Bool)

(assert (=> b!4003846 (=> (not res!1627010) (not e!2482957))))

(assert (=> b!4003846 (= res!1627010 (= (value!214776 (_1!24147 (get!14090 lt!1416158))) (apply!10009 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416158)))))))))

(declare-fun b!4003847 () Bool)

(declare-fun res!1627006 () Bool)

(assert (=> b!4003847 (=> (not res!1627006) (not e!2482957))))

(assert (=> b!4003847 (= res!1627006 (< (size!32050 (_2!24147 (get!14090 lt!1416158))) (size!32050 lt!1416044)))))

(declare-fun b!4003848 () Bool)

(declare-fun res!1627012 () Bool)

(assert (=> b!4003848 (=> (not res!1627012) (not e!2482957))))

(declare-fun matchR!5680 (Regex!11717 List!42992) Bool)

(assert (=> b!4003848 (= res!1627012 (matchR!5680 (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))) (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))))))

(declare-fun d!1184115 () Bool)

(assert (=> d!1184115 e!2482958))

(declare-fun res!1627008 () Bool)

(assert (=> d!1184115 (=> res!1627008 e!2482958)))

(declare-fun isEmpty!25612 (Option!9226) Bool)

(assert (=> d!1184115 (= res!1627008 (isEmpty!25612 lt!1416158))))

(assert (=> d!1184115 (= lt!1416158 e!2482959)))

(declare-fun c!692290 () Bool)

(assert (=> d!1184115 (= c!692290 (and ((_ is Cons!42870) rules!2999) ((_ is Nil!42870) (t!332335 rules!2999))))))

(declare-fun lt!1416159 () Unit!61858)

(declare-fun lt!1416160 () Unit!61858)

(assert (=> d!1184115 (= lt!1416159 lt!1416160)))

(assert (=> d!1184115 (isPrefix!3899 lt!1416044 lt!1416044)))

(declare-fun lemmaIsPrefixRefl!2477 (List!42992 List!42992) Unit!61858)

(assert (=> d!1184115 (= lt!1416160 (lemmaIsPrefixRefl!2477 lt!1416044 lt!1416044))))

(declare-fun rulesValidInductive!2481 (LexerInterface!6401 List!42994) Bool)

(assert (=> d!1184115 (rulesValidInductive!2481 thiss!21717 rules!2999)))

(assert (=> d!1184115 (= (maxPrefix!3699 thiss!21717 rules!2999 lt!1416044) lt!1416158)))

(declare-fun b!4003849 () Bool)

(declare-fun res!1627007 () Bool)

(assert (=> b!4003849 (=> (not res!1627007) (not e!2482957))))

(assert (=> b!4003849 (= res!1627007 (= (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158)))) (originalCharacters!7412 (_1!24147 (get!14090 lt!1416158)))))))

(declare-fun b!4003850 () Bool)

(declare-fun res!1627011 () Bool)

(assert (=> b!4003850 (=> (not res!1627011) (not e!2482957))))

(assert (=> b!4003850 (= res!1627011 (= (++!11214 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158)))) (_2!24147 (get!14090 lt!1416158))) lt!1416044))))

(declare-fun b!4003851 () Bool)

(declare-fun lt!1416162 () Option!9226)

(declare-fun lt!1416161 () Option!9226)

(assert (=> b!4003851 (= e!2482959 (ite (and ((_ is None!9225) lt!1416162) ((_ is None!9225) lt!1416161)) None!9225 (ite ((_ is None!9225) lt!1416161) lt!1416162 (ite ((_ is None!9225) lt!1416162) lt!1416161 (ite (>= (size!32049 (_1!24147 (v!39587 lt!1416162))) (size!32049 (_1!24147 (v!39587 lt!1416161)))) lt!1416162 lt!1416161)))))))

(assert (=> b!4003851 (= lt!1416162 call!286022)))

(assert (=> b!4003851 (= lt!1416161 (maxPrefix!3699 thiss!21717 (t!332335 rules!2999) lt!1416044))))

(assert (= (and d!1184115 c!692290) b!4003843))

(assert (= (and d!1184115 (not c!692290)) b!4003851))

(assert (= (or b!4003843 b!4003851) bm!286017))

(assert (= (and d!1184115 (not res!1627008)) b!4003844))

(assert (= (and b!4003844 res!1627009) b!4003849))

(assert (= (and b!4003849 res!1627007) b!4003847))

(assert (= (and b!4003847 res!1627006) b!4003850))

(assert (= (and b!4003850 res!1627011) b!4003846))

(assert (= (and b!4003846 res!1627010) b!4003848))

(assert (= (and b!4003848 res!1627012) b!4003845))

(declare-fun m!4586475 () Bool)

(assert (=> bm!286017 m!4586475))

(declare-fun m!4586477 () Bool)

(assert (=> b!4003851 m!4586477))

(declare-fun m!4586479 () Bool)

(assert (=> b!4003850 m!4586479))

(declare-fun m!4586481 () Bool)

(assert (=> b!4003850 m!4586481))

(assert (=> b!4003850 m!4586481))

(declare-fun m!4586483 () Bool)

(assert (=> b!4003850 m!4586483))

(assert (=> b!4003850 m!4586483))

(declare-fun m!4586485 () Bool)

(assert (=> b!4003850 m!4586485))

(assert (=> b!4003846 m!4586479))

(declare-fun m!4586487 () Bool)

(assert (=> b!4003846 m!4586487))

(assert (=> b!4003846 m!4586487))

(declare-fun m!4586489 () Bool)

(assert (=> b!4003846 m!4586489))

(declare-fun m!4586491 () Bool)

(assert (=> b!4003844 m!4586491))

(assert (=> b!4003845 m!4586479))

(declare-fun m!4586493 () Bool)

(assert (=> b!4003845 m!4586493))

(declare-fun m!4586495 () Bool)

(assert (=> d!1184115 m!4586495))

(declare-fun m!4586497 () Bool)

(assert (=> d!1184115 m!4586497))

(declare-fun m!4586499 () Bool)

(assert (=> d!1184115 m!4586499))

(declare-fun m!4586503 () Bool)

(assert (=> d!1184115 m!4586503))

(assert (=> b!4003847 m!4586479))

(declare-fun m!4586507 () Bool)

(assert (=> b!4003847 m!4586507))

(assert (=> b!4003847 m!4586165))

(assert (=> b!4003849 m!4586479))

(assert (=> b!4003849 m!4586481))

(assert (=> b!4003849 m!4586481))

(assert (=> b!4003849 m!4586483))

(assert (=> b!4003848 m!4586479))

(assert (=> b!4003848 m!4586481))

(assert (=> b!4003848 m!4586481))

(assert (=> b!4003848 m!4586483))

(assert (=> b!4003848 m!4586483))

(declare-fun m!4586509 () Bool)

(assert (=> b!4003848 m!4586509))

(assert (=> b!4003550 d!1184115))

(declare-fun d!1184163 () Bool)

(declare-fun e!2482983 () Bool)

(assert (=> d!1184163 e!2482983))

(declare-fun res!1627014 () Bool)

(assert (=> d!1184163 (=> (not res!1627014) (not e!2482983))))

(declare-fun lt!1416163 () List!42992)

(assert (=> d!1184163 (= res!1627014 (= (content!6496 lt!1416163) ((_ map or) (content!6496 prefix!494) (content!6496 suffix!1299))))))

(declare-fun e!2482982 () List!42992)

(assert (=> d!1184163 (= lt!1416163 e!2482982)))

(declare-fun c!692291 () Bool)

(assert (=> d!1184163 (= c!692291 ((_ is Nil!42868) prefix!494))))

(assert (=> d!1184163 (= (++!11214 prefix!494 suffix!1299) lt!1416163)))

(declare-fun b!4003890 () Bool)

(assert (=> b!4003890 (= e!2482983 (or (not (= suffix!1299 Nil!42868)) (= lt!1416163 prefix!494)))))

(declare-fun b!4003888 () Bool)

(assert (=> b!4003888 (= e!2482982 (Cons!42868 (h!48288 prefix!494) (++!11214 (t!332333 prefix!494) suffix!1299)))))

(declare-fun b!4003887 () Bool)

(assert (=> b!4003887 (= e!2482982 suffix!1299)))

(declare-fun b!4003889 () Bool)

(declare-fun res!1627013 () Bool)

(assert (=> b!4003889 (=> (not res!1627013) (not e!2482983))))

(assert (=> b!4003889 (= res!1627013 (= (size!32050 lt!1416163) (+ (size!32050 prefix!494) (size!32050 suffix!1299))))))

(assert (= (and d!1184163 c!692291) b!4003887))

(assert (= (and d!1184163 (not c!692291)) b!4003888))

(assert (= (and d!1184163 res!1627014) b!4003889))

(assert (= (and b!4003889 res!1627013) b!4003890))

(declare-fun m!4586511 () Bool)

(assert (=> d!1184163 m!4586511))

(declare-fun m!4586513 () Bool)

(assert (=> d!1184163 m!4586513))

(declare-fun m!4586515 () Bool)

(assert (=> d!1184163 m!4586515))

(declare-fun m!4586517 () Bool)

(assert (=> b!4003888 m!4586517))

(declare-fun m!4586519 () Bool)

(assert (=> b!4003889 m!4586519))

(assert (=> b!4003889 m!4586089))

(assert (=> b!4003889 m!4586031))

(assert (=> b!4003550 d!1184163))

(declare-fun b!4003893 () Bool)

(declare-fun e!2482984 () Bool)

(assert (=> b!4003893 (= e!2482984 (isPrefix!3899 (tail!6241 newSuffix!27) (tail!6241 suffix!1299)))))

(declare-fun b!4003891 () Bool)

(declare-fun e!2482985 () Bool)

(assert (=> b!4003891 (= e!2482985 e!2482984)))

(declare-fun res!1627017 () Bool)

(assert (=> b!4003891 (=> (not res!1627017) (not e!2482984))))

(assert (=> b!4003891 (= res!1627017 (not ((_ is Nil!42868) suffix!1299)))))

(declare-fun b!4003892 () Bool)

(declare-fun res!1627016 () Bool)

(assert (=> b!4003892 (=> (not res!1627016) (not e!2482984))))

(assert (=> b!4003892 (= res!1627016 (= (head!8509 newSuffix!27) (head!8509 suffix!1299)))))

(declare-fun b!4003894 () Bool)

(declare-fun e!2482986 () Bool)

(assert (=> b!4003894 (= e!2482986 (>= (size!32050 suffix!1299) (size!32050 newSuffix!27)))))

(declare-fun d!1184165 () Bool)

(assert (=> d!1184165 e!2482986))

(declare-fun res!1627015 () Bool)

(assert (=> d!1184165 (=> res!1627015 e!2482986)))

(declare-fun lt!1416164 () Bool)

(assert (=> d!1184165 (= res!1627015 (not lt!1416164))))

(assert (=> d!1184165 (= lt!1416164 e!2482985)))

(declare-fun res!1627018 () Bool)

(assert (=> d!1184165 (=> res!1627018 e!2482985)))

(assert (=> d!1184165 (= res!1627018 ((_ is Nil!42868) newSuffix!27))))

(assert (=> d!1184165 (= (isPrefix!3899 newSuffix!27 suffix!1299) lt!1416164)))

(assert (= (and d!1184165 (not res!1627018)) b!4003891))

(assert (= (and b!4003891 res!1627017) b!4003892))

(assert (= (and b!4003892 res!1627016) b!4003893))

(assert (= (and d!1184165 (not res!1627015)) b!4003894))

(declare-fun m!4586521 () Bool)

(assert (=> b!4003893 m!4586521))

(declare-fun m!4586523 () Bool)

(assert (=> b!4003893 m!4586523))

(assert (=> b!4003893 m!4586521))

(assert (=> b!4003893 m!4586523))

(declare-fun m!4586525 () Bool)

(assert (=> b!4003893 m!4586525))

(declare-fun m!4586527 () Bool)

(assert (=> b!4003892 m!4586527))

(declare-fun m!4586529 () Bool)

(assert (=> b!4003892 m!4586529))

(assert (=> b!4003894 m!4586031))

(assert (=> b!4003894 m!4586033))

(assert (=> b!4003571 d!1184165))

(declare-fun d!1184167 () Bool)

(declare-fun lt!1416165 () Int)

(assert (=> d!1184167 (>= lt!1416165 0)))

(declare-fun e!2482987 () Int)

(assert (=> d!1184167 (= lt!1416165 e!2482987)))

(declare-fun c!692292 () Bool)

(assert (=> d!1184167 (= c!692292 ((_ is Nil!42868) suffix!1299))))

(assert (=> d!1184167 (= (size!32050 suffix!1299) lt!1416165)))

(declare-fun b!4003895 () Bool)

(assert (=> b!4003895 (= e!2482987 0)))

(declare-fun b!4003896 () Bool)

(assert (=> b!4003896 (= e!2482987 (+ 1 (size!32050 (t!332333 suffix!1299))))))

(assert (= (and d!1184167 c!692292) b!4003895))

(assert (= (and d!1184167 (not c!692292)) b!4003896))

(declare-fun m!4586531 () Bool)

(assert (=> b!4003896 m!4586531))

(assert (=> b!4003556 d!1184167))

(declare-fun d!1184169 () Bool)

(declare-fun lt!1416166 () Int)

(assert (=> d!1184169 (>= lt!1416166 0)))

(declare-fun e!2482988 () Int)

(assert (=> d!1184169 (= lt!1416166 e!2482988)))

(declare-fun c!692293 () Bool)

(assert (=> d!1184169 (= c!692293 ((_ is Nil!42868) newSuffix!27))))

(assert (=> d!1184169 (= (size!32050 newSuffix!27) lt!1416166)))

(declare-fun b!4003897 () Bool)

(assert (=> b!4003897 (= e!2482988 0)))

(declare-fun b!4003898 () Bool)

(assert (=> b!4003898 (= e!2482988 (+ 1 (size!32050 (t!332333 newSuffix!27))))))

(assert (= (and d!1184169 c!692293) b!4003897))

(assert (= (and d!1184169 (not c!692293)) b!4003898))

(declare-fun m!4586533 () Bool)

(assert (=> b!4003898 m!4586533))

(assert (=> b!4003556 d!1184169))

(declare-fun d!1184171 () Bool)

(assert (=> d!1184171 (= (inv!57241 (tag!7672 (h!48290 rules!2999))) (= (mod (str.len (value!214775 (tag!7672 (h!48290 rules!2999)))) 2) 0))))

(assert (=> b!4003567 d!1184171))

(declare-fun d!1184173 () Bool)

(declare-fun res!1627021 () Bool)

(declare-fun e!2482991 () Bool)

(assert (=> d!1184173 (=> (not res!1627021) (not e!2482991))))

(assert (=> d!1184173 (= res!1627021 (semiInverseModEq!2914 (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (h!48290 rules!2999)))))))

(assert (=> d!1184173 (= (inv!57244 (transformation!6812 (h!48290 rules!2999))) e!2482991)))

(declare-fun b!4003901 () Bool)

(assert (=> b!4003901 (= e!2482991 (equivClasses!2813 (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (h!48290 rules!2999)))))))

(assert (= (and d!1184173 res!1627021) b!4003901))

(declare-fun m!4586535 () Bool)

(assert (=> d!1184173 m!4586535))

(declare-fun m!4586537 () Bool)

(assert (=> b!4003901 m!4586537))

(assert (=> b!4003567 d!1184173))

(declare-fun d!1184175 () Bool)

(declare-fun res!1627024 () Bool)

(declare-fun e!2482994 () Bool)

(assert (=> d!1184175 (=> (not res!1627024) (not e!2482994))))

(declare-fun rulesValid!2649 (LexerInterface!6401 List!42994) Bool)

(assert (=> d!1184175 (= res!1627024 (rulesValid!2649 thiss!21717 rules!2999))))

(assert (=> d!1184175 (= (rulesInvariant!5744 thiss!21717 rules!2999) e!2482994)))

(declare-fun b!4003904 () Bool)

(declare-datatypes ((List!42996 0))(
  ( (Nil!42872) (Cons!42872 (h!48292 String!48928) (t!332361 List!42996)) )
))
(declare-fun noDuplicateTag!2650 (LexerInterface!6401 List!42994 List!42996) Bool)

(assert (=> b!4003904 (= e!2482994 (noDuplicateTag!2650 thiss!21717 rules!2999 Nil!42872))))

(assert (= (and d!1184175 res!1627024) b!4003904))

(declare-fun m!4586539 () Bool)

(assert (=> d!1184175 m!4586539))

(declare-fun m!4586541 () Bool)

(assert (=> b!4003904 m!4586541))

(assert (=> b!4003557 d!1184175))

(declare-fun d!1184177 () Bool)

(assert (=> d!1184177 (= (inv!57241 (tag!7672 (rule!9846 token!484))) (= (mod (str.len (value!214775 (tag!7672 (rule!9846 token!484)))) 2) 0))))

(assert (=> b!4003568 d!1184177))

(declare-fun d!1184179 () Bool)

(declare-fun res!1627025 () Bool)

(declare-fun e!2482995 () Bool)

(assert (=> d!1184179 (=> (not res!1627025) (not e!2482995))))

(assert (=> d!1184179 (= res!1627025 (semiInverseModEq!2914 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))))))

(assert (=> d!1184179 (= (inv!57244 (transformation!6812 (rule!9846 token!484))) e!2482995)))

(declare-fun b!4003905 () Bool)

(assert (=> b!4003905 (= e!2482995 (equivClasses!2813 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))))))

(assert (= (and d!1184179 res!1627025) b!4003905))

(assert (=> d!1184179 m!4586281))

(assert (=> b!4003905 m!4586283))

(assert (=> b!4003568 d!1184179))

(declare-fun b!4003924 () Bool)

(declare-fun res!1627041 () Bool)

(declare-fun e!2483004 () Bool)

(assert (=> b!4003924 (=> (not res!1627041) (not e!2483004))))

(declare-fun lt!1416178 () Option!9226)

(assert (=> b!4003924 (= res!1627041 (< (size!32050 (_2!24147 (get!14090 lt!1416178))) (size!32050 lt!1416044)))))

(declare-fun b!4003925 () Bool)

(declare-fun res!1627042 () Bool)

(assert (=> b!4003925 (=> (not res!1627042) (not e!2483004))))

(assert (=> b!4003925 (= res!1627042 (= (++!11214 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178)))) (_2!24147 (get!14090 lt!1416178))) lt!1416044))))

(declare-fun b!4003926 () Bool)

(declare-fun res!1627043 () Bool)

(assert (=> b!4003926 (=> (not res!1627043) (not e!2483004))))

(assert (=> b!4003926 (= res!1627043 (= (value!214776 (_1!24147 (get!14090 lt!1416178))) (apply!10009 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178)))))))))

(declare-fun b!4003927 () Bool)

(assert (=> b!4003927 (= e!2483004 (= (size!32049 (_1!24147 (get!14090 lt!1416178))) (size!32050 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178))))))))

(declare-fun b!4003928 () Bool)

(declare-fun e!2483006 () Option!9226)

(declare-datatypes ((tuple2!42030 0))(
  ( (tuple2!42031 (_1!24149 List!42992) (_2!24149 List!42992)) )
))
(declare-fun lt!1416181 () tuple2!42030)

(declare-fun size!32052 (BalanceConc!25640) Int)

(assert (=> b!4003928 (= e!2483006 (Some!9225 (tuple2!42027 (Token!12763 (apply!10009 (transformation!6812 (rule!9846 token!484)) (seqFromList!5037 (_1!24149 lt!1416181))) (rule!9846 token!484) (size!32052 (seqFromList!5037 (_1!24149 lt!1416181))) (_1!24149 lt!1416181)) (_2!24149 lt!1416181))))))

(declare-fun lt!1416179 () Unit!61858)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1322 (Regex!11717 List!42992) Unit!61858)

(assert (=> b!4003928 (= lt!1416179 (longestMatchIsAcceptedByMatchOrIsEmpty!1322 (regex!6812 (rule!9846 token!484)) lt!1416044))))

(declare-fun res!1627045 () Bool)

(declare-fun findLongestMatchInner!1349 (Regex!11717 List!42992 Int List!42992 List!42992 Int) tuple2!42030)

(assert (=> b!4003928 (= res!1627045 (isEmpty!25611 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))

(declare-fun e!2483005 () Bool)

(assert (=> b!4003928 (=> res!1627045 e!2483005)))

(assert (=> b!4003928 e!2483005))

(declare-fun lt!1416177 () Unit!61858)

(assert (=> b!4003928 (= lt!1416177 lt!1416179)))

(declare-fun lt!1416180 () Unit!61858)

(declare-fun lemmaSemiInverse!1869 (TokenValueInjection!13512 BalanceConc!25640) Unit!61858)

(assert (=> b!4003928 (= lt!1416180 (lemmaSemiInverse!1869 (transformation!6812 (rule!9846 token!484)) (seqFromList!5037 (_1!24149 lt!1416181))))))

(declare-fun b!4003929 () Bool)

(assert (=> b!4003929 (= e!2483006 None!9225)))

(declare-fun d!1184181 () Bool)

(declare-fun e!2483007 () Bool)

(assert (=> d!1184181 e!2483007))

(declare-fun res!1627046 () Bool)

(assert (=> d!1184181 (=> res!1627046 e!2483007)))

(assert (=> d!1184181 (= res!1627046 (isEmpty!25612 lt!1416178))))

(assert (=> d!1184181 (= lt!1416178 e!2483006)))

(declare-fun c!692296 () Bool)

(assert (=> d!1184181 (= c!692296 (isEmpty!25611 (_1!24149 lt!1416181)))))

(declare-fun findLongestMatch!1262 (Regex!11717 List!42992) tuple2!42030)

(assert (=> d!1184181 (= lt!1416181 (findLongestMatch!1262 (regex!6812 (rule!9846 token!484)) lt!1416044))))

(assert (=> d!1184181 (ruleValid!2744 thiss!21717 (rule!9846 token!484))))

(assert (=> d!1184181 (= (maxPrefixOneRule!2719 thiss!21717 (rule!9846 token!484) lt!1416044) lt!1416178)))

(declare-fun b!4003930 () Bool)

(assert (=> b!4003930 (= e!2483005 (matchR!5680 (regex!6812 (rule!9846 token!484)) (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))

(declare-fun b!4003931 () Bool)

(assert (=> b!4003931 (= e!2483007 e!2483004)))

(declare-fun res!1627040 () Bool)

(assert (=> b!4003931 (=> (not res!1627040) (not e!2483004))))

(assert (=> b!4003931 (= res!1627040 (matchR!5680 (regex!6812 (rule!9846 token!484)) (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))))))

(declare-fun b!4003932 () Bool)

(declare-fun res!1627044 () Bool)

(assert (=> b!4003932 (=> (not res!1627044) (not e!2483004))))

(assert (=> b!4003932 (= res!1627044 (= (rule!9846 (_1!24147 (get!14090 lt!1416178))) (rule!9846 token!484)))))

(assert (= (and d!1184181 c!692296) b!4003929))

(assert (= (and d!1184181 (not c!692296)) b!4003928))

(assert (= (and b!4003928 (not res!1627045)) b!4003930))

(assert (= (and d!1184181 (not res!1627046)) b!4003931))

(assert (= (and b!4003931 res!1627040) b!4003925))

(assert (= (and b!4003925 res!1627042) b!4003924))

(assert (= (and b!4003924 res!1627041) b!4003932))

(assert (= (and b!4003932 res!1627044) b!4003926))

(assert (= (and b!4003926 res!1627043) b!4003927))

(declare-fun m!4586543 () Bool)

(assert (=> b!4003931 m!4586543))

(declare-fun m!4586545 () Bool)

(assert (=> b!4003931 m!4586545))

(assert (=> b!4003931 m!4586545))

(declare-fun m!4586547 () Bool)

(assert (=> b!4003931 m!4586547))

(assert (=> b!4003931 m!4586547))

(declare-fun m!4586549 () Bool)

(assert (=> b!4003931 m!4586549))

(declare-fun m!4586551 () Bool)

(assert (=> d!1184181 m!4586551))

(declare-fun m!4586553 () Bool)

(assert (=> d!1184181 m!4586553))

(declare-fun m!4586555 () Bool)

(assert (=> d!1184181 m!4586555))

(assert (=> d!1184181 m!4586045))

(assert (=> b!4003925 m!4586543))

(assert (=> b!4003925 m!4586545))

(assert (=> b!4003925 m!4586545))

(assert (=> b!4003925 m!4586547))

(assert (=> b!4003925 m!4586547))

(declare-fun m!4586557 () Bool)

(assert (=> b!4003925 m!4586557))

(assert (=> b!4003926 m!4586543))

(declare-fun m!4586559 () Bool)

(assert (=> b!4003926 m!4586559))

(assert (=> b!4003926 m!4586559))

(declare-fun m!4586561 () Bool)

(assert (=> b!4003926 m!4586561))

(assert (=> b!4003932 m!4586543))

(declare-fun m!4586563 () Bool)

(assert (=> b!4003928 m!4586563))

(declare-fun m!4586565 () Bool)

(assert (=> b!4003928 m!4586565))

(declare-fun m!4586567 () Bool)

(assert (=> b!4003928 m!4586567))

(declare-fun m!4586569 () Bool)

(assert (=> b!4003928 m!4586569))

(assert (=> b!4003928 m!4586565))

(declare-fun m!4586571 () Bool)

(assert (=> b!4003928 m!4586571))

(declare-fun m!4586573 () Bool)

(assert (=> b!4003928 m!4586573))

(assert (=> b!4003928 m!4586165))

(declare-fun m!4586575 () Bool)

(assert (=> b!4003928 m!4586575))

(assert (=> b!4003928 m!4586165))

(assert (=> b!4003928 m!4586565))

(declare-fun m!4586577 () Bool)

(assert (=> b!4003928 m!4586577))

(assert (=> b!4003928 m!4586565))

(assert (=> b!4003928 m!4586573))

(assert (=> b!4003924 m!4586543))

(declare-fun m!4586579 () Bool)

(assert (=> b!4003924 m!4586579))

(assert (=> b!4003924 m!4586165))

(assert (=> b!4003930 m!4586573))

(assert (=> b!4003930 m!4586165))

(assert (=> b!4003930 m!4586573))

(assert (=> b!4003930 m!4586165))

(assert (=> b!4003930 m!4586575))

(declare-fun m!4586581 () Bool)

(assert (=> b!4003930 m!4586581))

(assert (=> b!4003927 m!4586543))

(declare-fun m!4586583 () Bool)

(assert (=> b!4003927 m!4586583))

(assert (=> b!4003558 d!1184181))

(declare-fun d!1184183 () Bool)

(assert (=> d!1184183 (isPrefix!3899 lt!1416025 (++!11214 lt!1416025 lt!1416039))))

(declare-fun lt!1416182 () Unit!61858)

(assert (=> d!1184183 (= lt!1416182 (choose!24156 lt!1416025 lt!1416039))))

(assert (=> d!1184183 (= (lemmaConcatTwoListThenFirstIsPrefix!2740 lt!1416025 lt!1416039) lt!1416182)))

(declare-fun bs!588931 () Bool)

(assert (= bs!588931 d!1184183))

(assert (=> bs!588931 m!4586049))

(assert (=> bs!588931 m!4586049))

(declare-fun m!4586585 () Bool)

(assert (=> bs!588931 m!4586585))

(declare-fun m!4586587 () Bool)

(assert (=> bs!588931 m!4586587))

(assert (=> b!4003558 d!1184183))

(declare-fun d!1184185 () Bool)

(assert (=> d!1184185 (= lt!1416039 suffixResult!105)))

(declare-fun lt!1416185 () Unit!61858)

(declare-fun choose!24159 (List!42992 List!42992 List!42992 List!42992 List!42992) Unit!61858)

(assert (=> d!1184185 (= lt!1416185 (choose!24159 lt!1416025 lt!1416039 lt!1416025 suffixResult!105 lt!1416044))))

(assert (=> d!1184185 (isPrefix!3899 lt!1416025 lt!1416044)))

(assert (=> d!1184185 (= (lemmaSamePrefixThenSameSuffix!2070 lt!1416025 lt!1416039 lt!1416025 suffixResult!105 lt!1416044) lt!1416185)))

(declare-fun bs!588932 () Bool)

(assert (= bs!588932 d!1184185))

(declare-fun m!4586589 () Bool)

(assert (=> bs!588932 m!4586589))

(assert (=> bs!588932 m!4586067))

(assert (=> b!4003558 d!1184185))

(declare-fun b!4003935 () Bool)

(declare-fun e!2483008 () Bool)

(assert (=> b!4003935 (= e!2483008 (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 lt!1416028)))))

(declare-fun b!4003933 () Bool)

(declare-fun e!2483009 () Bool)

(assert (=> b!4003933 (= e!2483009 e!2483008)))

(declare-fun res!1627049 () Bool)

(assert (=> b!4003933 (=> (not res!1627049) (not e!2483008))))

(assert (=> b!4003933 (= res!1627049 (not ((_ is Nil!42868) lt!1416028)))))

(declare-fun b!4003934 () Bool)

(declare-fun res!1627048 () Bool)

(assert (=> b!4003934 (=> (not res!1627048) (not e!2483008))))

(assert (=> b!4003934 (= res!1627048 (= (head!8509 lt!1416025) (head!8509 lt!1416028)))))

(declare-fun b!4003936 () Bool)

(declare-fun e!2483010 () Bool)

(assert (=> b!4003936 (= e!2483010 (>= (size!32050 lt!1416028) (size!32050 lt!1416025)))))

(declare-fun d!1184187 () Bool)

(assert (=> d!1184187 e!2483010))

(declare-fun res!1627047 () Bool)

(assert (=> d!1184187 (=> res!1627047 e!2483010)))

(declare-fun lt!1416186 () Bool)

(assert (=> d!1184187 (= res!1627047 (not lt!1416186))))

(assert (=> d!1184187 (= lt!1416186 e!2483009)))

(declare-fun res!1627050 () Bool)

(assert (=> d!1184187 (=> res!1627050 e!2483009)))

(assert (=> d!1184187 (= res!1627050 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184187 (= (isPrefix!3899 lt!1416025 lt!1416028) lt!1416186)))

(assert (= (and d!1184187 (not res!1627050)) b!4003933))

(assert (= (and b!4003933 res!1627049) b!4003934))

(assert (= (and b!4003934 res!1627048) b!4003935))

(assert (= (and d!1184187 (not res!1627047)) b!4003936))

(assert (=> b!4003935 m!4586167))

(declare-fun m!4586591 () Bool)

(assert (=> b!4003935 m!4586591))

(assert (=> b!4003935 m!4586167))

(assert (=> b!4003935 m!4586591))

(declare-fun m!4586593 () Bool)

(assert (=> b!4003935 m!4586593))

(assert (=> b!4003934 m!4586173))

(declare-fun m!4586595 () Bool)

(assert (=> b!4003934 m!4586595))

(declare-fun m!4586597 () Bool)

(assert (=> b!4003936 m!4586597))

(assert (=> b!4003936 m!4586087))

(assert (=> b!4003558 d!1184187))

(declare-fun d!1184189 () Bool)

(declare-fun fromListB!2306 (List!42992) BalanceConc!25640)

(assert (=> d!1184189 (= (seqFromList!5037 lt!1416025) (fromListB!2306 lt!1416025))))

(declare-fun bs!588933 () Bool)

(assert (= bs!588933 d!1184189))

(declare-fun m!4586599 () Bool)

(assert (=> bs!588933 m!4586599))

(assert (=> b!4003558 d!1184189))

(declare-fun d!1184191 () Bool)

(assert (=> d!1184191 (= (maxPrefixOneRule!2719 thiss!21717 (rule!9846 token!484) lt!1416044) (Some!9225 (tuple2!42027 (Token!12763 (apply!10009 (transformation!6812 (rule!9846 token!484)) (seqFromList!5037 lt!1416025)) (rule!9846 token!484) (size!32050 lt!1416025) lt!1416025) suffixResult!105)))))

(declare-fun lt!1416189 () Unit!61858)

(declare-fun choose!24160 (LexerInterface!6401 List!42994 List!42992 List!42992 List!42992 Rule!13424) Unit!61858)

(assert (=> d!1184191 (= lt!1416189 (choose!24160 thiss!21717 rules!2999 lt!1416025 lt!1416044 suffixResult!105 (rule!9846 token!484)))))

(assert (=> d!1184191 (not (isEmpty!25608 rules!2999))))

(assert (=> d!1184191 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1537 thiss!21717 rules!2999 lt!1416025 lt!1416044 suffixResult!105 (rule!9846 token!484)) lt!1416189)))

(declare-fun bs!588934 () Bool)

(assert (= bs!588934 d!1184191))

(assert (=> bs!588934 m!4586087))

(assert (=> bs!588934 m!4586097))

(assert (=> bs!588934 m!4586083))

(assert (=> bs!588934 m!4586095))

(assert (=> bs!588934 m!4586101))

(declare-fun m!4586601 () Bool)

(assert (=> bs!588934 m!4586601))

(assert (=> bs!588934 m!4586095))

(assert (=> b!4003558 d!1184191))

(declare-fun d!1184193 () Bool)

(declare-fun dynLambda!18172 (Int BalanceConc!25640) TokenValue!7042)

(assert (=> d!1184193 (= (apply!10009 (transformation!6812 (rule!9846 token!484)) (seqFromList!5037 lt!1416025)) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 lt!1416025)))))

(declare-fun b_lambda!116775 () Bool)

(assert (=> (not b_lambda!116775) (not d!1184193)))

(declare-fun t!332353 () Bool)

(declare-fun tb!240617 () Bool)

(assert (=> (and b!4003572 (= (toValue!9304 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) t!332353) tb!240617))

(declare-fun result!291650 () Bool)

(assert (=> tb!240617 (= result!291650 (inv!21 (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 lt!1416025))))))

(declare-fun m!4586603 () Bool)

(assert (=> tb!240617 m!4586603))

(assert (=> d!1184193 t!332353))

(declare-fun b_and!307487 () Bool)

(assert (= b_and!307455 (and (=> t!332353 result!291650) b_and!307487)))

(declare-fun tb!240619 () Bool)

(declare-fun t!332355 () Bool)

(assert (=> (and b!4003570 (= (toValue!9304 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) t!332355) tb!240619))

(declare-fun result!291654 () Bool)

(assert (= result!291654 result!291650))

(assert (=> d!1184193 t!332355))

(declare-fun b_and!307489 () Bool)

(assert (= b_and!307459 (and (=> t!332355 result!291654) b_and!307489)))

(assert (=> d!1184193 m!4586095))

(declare-fun m!4586605 () Bool)

(assert (=> d!1184193 m!4586605))

(assert (=> b!4003558 d!1184193))

(declare-fun d!1184195 () Bool)

(declare-fun e!2483015 () Bool)

(assert (=> d!1184195 e!2483015))

(declare-fun res!1627052 () Bool)

(assert (=> d!1184195 (=> (not res!1627052) (not e!2483015))))

(declare-fun lt!1416190 () List!42992)

(assert (=> d!1184195 (= res!1627052 (= (content!6496 lt!1416190) ((_ map or) (content!6496 lt!1416025) (content!6496 newSuffixResult!27))))))

(declare-fun e!2483014 () List!42992)

(assert (=> d!1184195 (= lt!1416190 e!2483014)))

(declare-fun c!692297 () Bool)

(assert (=> d!1184195 (= c!692297 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184195 (= (++!11214 lt!1416025 newSuffixResult!27) lt!1416190)))

(declare-fun b!4003942 () Bool)

(assert (=> b!4003942 (= e!2483015 (or (not (= newSuffixResult!27 Nil!42868)) (= lt!1416190 lt!1416025)))))

(declare-fun b!4003940 () Bool)

(assert (=> b!4003940 (= e!2483014 (Cons!42868 (h!48288 lt!1416025) (++!11214 (t!332333 lt!1416025) newSuffixResult!27)))))

(declare-fun b!4003939 () Bool)

(assert (=> b!4003939 (= e!2483014 newSuffixResult!27)))

(declare-fun b!4003941 () Bool)

(declare-fun res!1627051 () Bool)

(assert (=> b!4003941 (=> (not res!1627051) (not e!2483015))))

(assert (=> b!4003941 (= res!1627051 (= (size!32050 lt!1416190) (+ (size!32050 lt!1416025) (size!32050 newSuffixResult!27))))))

(assert (= (and d!1184195 c!692297) b!4003939))

(assert (= (and d!1184195 (not c!692297)) b!4003940))

(assert (= (and d!1184195 res!1627052) b!4003941))

(assert (= (and b!4003941 res!1627051) b!4003942))

(declare-fun m!4586607 () Bool)

(assert (=> d!1184195 m!4586607))

(assert (=> d!1184195 m!4586259))

(declare-fun m!4586609 () Bool)

(assert (=> d!1184195 m!4586609))

(declare-fun m!4586611 () Bool)

(assert (=> b!4003940 m!4586611))

(declare-fun m!4586613 () Bool)

(assert (=> b!4003941 m!4586613))

(assert (=> b!4003941 m!4586087))

(declare-fun m!4586615 () Bool)

(assert (=> b!4003941 m!4586615))

(assert (=> b!4003554 d!1184195))

(declare-fun d!1184197 () Bool)

(declare-fun e!2483017 () Bool)

(assert (=> d!1184197 e!2483017))

(declare-fun res!1627054 () Bool)

(assert (=> d!1184197 (=> (not res!1627054) (not e!2483017))))

(declare-fun lt!1416191 () List!42992)

(assert (=> d!1184197 (= res!1627054 (= (content!6496 lt!1416191) ((_ map or) (content!6496 prefix!494) (content!6496 newSuffix!27))))))

(declare-fun e!2483016 () List!42992)

(assert (=> d!1184197 (= lt!1416191 e!2483016)))

(declare-fun c!692298 () Bool)

(assert (=> d!1184197 (= c!692298 ((_ is Nil!42868) prefix!494))))

(assert (=> d!1184197 (= (++!11214 prefix!494 newSuffix!27) lt!1416191)))

(declare-fun b!4003946 () Bool)

(assert (=> b!4003946 (= e!2483017 (or (not (= newSuffix!27 Nil!42868)) (= lt!1416191 prefix!494)))))

(declare-fun b!4003944 () Bool)

(assert (=> b!4003944 (= e!2483016 (Cons!42868 (h!48288 prefix!494) (++!11214 (t!332333 prefix!494) newSuffix!27)))))

(declare-fun b!4003943 () Bool)

(assert (=> b!4003943 (= e!2483016 newSuffix!27)))

(declare-fun b!4003945 () Bool)

(declare-fun res!1627053 () Bool)

(assert (=> b!4003945 (=> (not res!1627053) (not e!2483017))))

(assert (=> b!4003945 (= res!1627053 (= (size!32050 lt!1416191) (+ (size!32050 prefix!494) (size!32050 newSuffix!27))))))

(assert (= (and d!1184197 c!692298) b!4003943))

(assert (= (and d!1184197 (not c!692298)) b!4003944))

(assert (= (and d!1184197 res!1627054) b!4003945))

(assert (= (and b!4003945 res!1627053) b!4003946))

(declare-fun m!4586617 () Bool)

(assert (=> d!1184197 m!4586617))

(assert (=> d!1184197 m!4586513))

(declare-fun m!4586619 () Bool)

(assert (=> d!1184197 m!4586619))

(declare-fun m!4586621 () Bool)

(assert (=> b!4003944 m!4586621))

(declare-fun m!4586623 () Bool)

(assert (=> b!4003945 m!4586623))

(assert (=> b!4003945 m!4586089))

(assert (=> b!4003945 m!4586033))

(assert (=> b!4003554 d!1184197))

(declare-fun b!4003957 () Bool)

(declare-fun e!2483025 () Bool)

(declare-fun inv!16 (TokenValue!7042) Bool)

(assert (=> b!4003957 (= e!2483025 (inv!16 (value!214776 token!484)))))

(declare-fun b!4003958 () Bool)

(declare-fun e!2483024 () Bool)

(assert (=> b!4003958 (= e!2483025 e!2483024)))

(declare-fun c!692303 () Bool)

(assert (=> b!4003958 (= c!692303 ((_ is IntegerValue!21127) (value!214776 token!484)))))

(declare-fun b!4003959 () Bool)

(declare-fun e!2483026 () Bool)

(declare-fun inv!15 (TokenValue!7042) Bool)

(assert (=> b!4003959 (= e!2483026 (inv!15 (value!214776 token!484)))))

(declare-fun b!4003960 () Bool)

(declare-fun inv!17 (TokenValue!7042) Bool)

(assert (=> b!4003960 (= e!2483024 (inv!17 (value!214776 token!484)))))

(declare-fun b!4003961 () Bool)

(declare-fun res!1627057 () Bool)

(assert (=> b!4003961 (=> res!1627057 e!2483026)))

(assert (=> b!4003961 (= res!1627057 (not ((_ is IntegerValue!21128) (value!214776 token!484))))))

(assert (=> b!4003961 (= e!2483024 e!2483026)))

(declare-fun d!1184199 () Bool)

(declare-fun c!692304 () Bool)

(assert (=> d!1184199 (= c!692304 ((_ is IntegerValue!21126) (value!214776 token!484)))))

(assert (=> d!1184199 (= (inv!21 (value!214776 token!484)) e!2483025)))

(assert (= (and d!1184199 c!692304) b!4003957))

(assert (= (and d!1184199 (not c!692304)) b!4003958))

(assert (= (and b!4003958 c!692303) b!4003960))

(assert (= (and b!4003958 (not c!692303)) b!4003961))

(assert (= (and b!4003961 (not res!1627057)) b!4003959))

(declare-fun m!4586625 () Bool)

(assert (=> b!4003957 m!4586625))

(declare-fun m!4586627 () Bool)

(assert (=> b!4003959 m!4586627))

(declare-fun m!4586629 () Bool)

(assert (=> b!4003960 m!4586629))

(assert (=> b!4003565 d!1184199))

(declare-fun d!1184201 () Bool)

(declare-fun e!2483028 () Bool)

(assert (=> d!1184201 e!2483028))

(declare-fun res!1627059 () Bool)

(assert (=> d!1184201 (=> (not res!1627059) (not e!2483028))))

(declare-fun lt!1416192 () List!42992)

(assert (=> d!1184201 (= res!1627059 (= (content!6496 lt!1416192) ((_ map or) (content!6496 lt!1416025) (content!6496 lt!1416031))))))

(declare-fun e!2483027 () List!42992)

(assert (=> d!1184201 (= lt!1416192 e!2483027)))

(declare-fun c!692305 () Bool)

(assert (=> d!1184201 (= c!692305 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184201 (= (++!11214 lt!1416025 lt!1416031) lt!1416192)))

(declare-fun b!4003965 () Bool)

(assert (=> b!4003965 (= e!2483028 (or (not (= lt!1416031 Nil!42868)) (= lt!1416192 lt!1416025)))))

(declare-fun b!4003963 () Bool)

(assert (=> b!4003963 (= e!2483027 (Cons!42868 (h!48288 lt!1416025) (++!11214 (t!332333 lt!1416025) lt!1416031)))))

(declare-fun b!4003962 () Bool)

(assert (=> b!4003962 (= e!2483027 lt!1416031)))

(declare-fun b!4003964 () Bool)

(declare-fun res!1627058 () Bool)

(assert (=> b!4003964 (=> (not res!1627058) (not e!2483028))))

(assert (=> b!4003964 (= res!1627058 (= (size!32050 lt!1416192) (+ (size!32050 lt!1416025) (size!32050 lt!1416031))))))

(assert (= (and d!1184201 c!692305) b!4003962))

(assert (= (and d!1184201 (not c!692305)) b!4003963))

(assert (= (and d!1184201 res!1627059) b!4003964))

(assert (= (and b!4003964 res!1627058) b!4003965))

(declare-fun m!4586631 () Bool)

(assert (=> d!1184201 m!4586631))

(assert (=> d!1184201 m!4586259))

(declare-fun m!4586633 () Bool)

(assert (=> d!1184201 m!4586633))

(declare-fun m!4586635 () Bool)

(assert (=> b!4003963 m!4586635))

(declare-fun m!4586637 () Bool)

(assert (=> b!4003964 m!4586637))

(assert (=> b!4003964 m!4586087))

(declare-fun m!4586639 () Bool)

(assert (=> b!4003964 m!4586639))

(assert (=> b!4003555 d!1184201))

(declare-fun d!1184203 () Bool)

(declare-fun lt!1416195 () List!42992)

(assert (=> d!1184203 (= (++!11214 lt!1416025 lt!1416195) prefix!494)))

(declare-fun e!2483031 () List!42992)

(assert (=> d!1184203 (= lt!1416195 e!2483031)))

(declare-fun c!692308 () Bool)

(assert (=> d!1184203 (= c!692308 ((_ is Cons!42868) lt!1416025))))

(assert (=> d!1184203 (>= (size!32050 prefix!494) (size!32050 lt!1416025))))

(assert (=> d!1184203 (= (getSuffix!2324 prefix!494 lt!1416025) lt!1416195)))

(declare-fun b!4003970 () Bool)

(assert (=> b!4003970 (= e!2483031 (getSuffix!2324 (tail!6241 prefix!494) (t!332333 lt!1416025)))))

(declare-fun b!4003971 () Bool)

(assert (=> b!4003971 (= e!2483031 prefix!494)))

(assert (= (and d!1184203 c!692308) b!4003970))

(assert (= (and d!1184203 (not c!692308)) b!4003971))

(declare-fun m!4586641 () Bool)

(assert (=> d!1184203 m!4586641))

(assert (=> d!1184203 m!4586089))

(assert (=> d!1184203 m!4586087))

(assert (=> b!4003970 m!4586155))

(assert (=> b!4003970 m!4586155))

(declare-fun m!4586643 () Bool)

(assert (=> b!4003970 m!4586643))

(assert (=> b!4003555 d!1184203))

(declare-fun b!4003974 () Bool)

(declare-fun e!2483032 () Bool)

(assert (=> b!4003974 (= e!2483032 (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 prefix!494)))))

(declare-fun b!4003972 () Bool)

(declare-fun e!2483033 () Bool)

(assert (=> b!4003972 (= e!2483033 e!2483032)))

(declare-fun res!1627062 () Bool)

(assert (=> b!4003972 (=> (not res!1627062) (not e!2483032))))

(assert (=> b!4003972 (= res!1627062 (not ((_ is Nil!42868) prefix!494)))))

(declare-fun b!4003973 () Bool)

(declare-fun res!1627061 () Bool)

(assert (=> b!4003973 (=> (not res!1627061) (not e!2483032))))

(assert (=> b!4003973 (= res!1627061 (= (head!8509 lt!1416025) (head!8509 prefix!494)))))

(declare-fun b!4003975 () Bool)

(declare-fun e!2483034 () Bool)

(assert (=> b!4003975 (= e!2483034 (>= (size!32050 prefix!494) (size!32050 lt!1416025)))))

(declare-fun d!1184205 () Bool)

(assert (=> d!1184205 e!2483034))

(declare-fun res!1627060 () Bool)

(assert (=> d!1184205 (=> res!1627060 e!2483034)))

(declare-fun lt!1416196 () Bool)

(assert (=> d!1184205 (= res!1627060 (not lt!1416196))))

(assert (=> d!1184205 (= lt!1416196 e!2483033)))

(declare-fun res!1627063 () Bool)

(assert (=> d!1184205 (=> res!1627063 e!2483033)))

(assert (=> d!1184205 (= res!1627063 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184205 (= (isPrefix!3899 lt!1416025 prefix!494) lt!1416196)))

(assert (= (and d!1184205 (not res!1627063)) b!4003972))

(assert (= (and b!4003972 res!1627062) b!4003973))

(assert (= (and b!4003973 res!1627061) b!4003974))

(assert (= (and d!1184205 (not res!1627060)) b!4003975))

(assert (=> b!4003974 m!4586167))

(assert (=> b!4003974 m!4586155))

(assert (=> b!4003974 m!4586167))

(assert (=> b!4003974 m!4586155))

(declare-fun m!4586645 () Bool)

(assert (=> b!4003974 m!4586645))

(assert (=> b!4003973 m!4586173))

(assert (=> b!4003973 m!4586161))

(assert (=> b!4003975 m!4586089))

(assert (=> b!4003975 m!4586087))

(assert (=> b!4003555 d!1184205))

(declare-fun d!1184207 () Bool)

(assert (=> d!1184207 (isPrefix!3899 lt!1416025 prefix!494)))

(declare-fun lt!1416199 () Unit!61858)

(declare-fun choose!24161 (List!42992 List!42992 List!42992) Unit!61858)

(assert (=> d!1184207 (= lt!1416199 (choose!24161 prefix!494 lt!1416025 lt!1416044))))

(assert (=> d!1184207 (isPrefix!3899 prefix!494 lt!1416044)))

(assert (=> d!1184207 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!471 prefix!494 lt!1416025 lt!1416044) lt!1416199)))

(declare-fun bs!588935 () Bool)

(assert (= bs!588935 d!1184207))

(assert (=> bs!588935 m!4586061))

(declare-fun m!4586647 () Bool)

(assert (=> bs!588935 m!4586647))

(assert (=> bs!588935 m!4586073))

(assert (=> b!4003555 d!1184207))

(declare-fun d!1184209 () Bool)

(declare-fun e!2483036 () Bool)

(assert (=> d!1184209 e!2483036))

(declare-fun res!1627065 () Bool)

(assert (=> d!1184209 (=> (not res!1627065) (not e!2483036))))

(declare-fun lt!1416200 () List!42992)

(assert (=> d!1184209 (= res!1627065 (= (content!6496 lt!1416200) ((_ map or) (content!6496 lt!1416025) (content!6496 lt!1416039))))))

(declare-fun e!2483035 () List!42992)

(assert (=> d!1184209 (= lt!1416200 e!2483035)))

(declare-fun c!692309 () Bool)

(assert (=> d!1184209 (= c!692309 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184209 (= (++!11214 lt!1416025 lt!1416039) lt!1416200)))

(declare-fun b!4003979 () Bool)

(assert (=> b!4003979 (= e!2483036 (or (not (= lt!1416039 Nil!42868)) (= lt!1416200 lt!1416025)))))

(declare-fun b!4003977 () Bool)

(assert (=> b!4003977 (= e!2483035 (Cons!42868 (h!48288 lt!1416025) (++!11214 (t!332333 lt!1416025) lt!1416039)))))

(declare-fun b!4003976 () Bool)

(assert (=> b!4003976 (= e!2483035 lt!1416039)))

(declare-fun b!4003978 () Bool)

(declare-fun res!1627064 () Bool)

(assert (=> b!4003978 (=> (not res!1627064) (not e!2483036))))

(assert (=> b!4003978 (= res!1627064 (= (size!32050 lt!1416200) (+ (size!32050 lt!1416025) (size!32050 lt!1416039))))))

(assert (= (and d!1184209 c!692309) b!4003976))

(assert (= (and d!1184209 (not c!692309)) b!4003977))

(assert (= (and d!1184209 res!1627065) b!4003978))

(assert (= (and b!4003978 res!1627064) b!4003979))

(declare-fun m!4586649 () Bool)

(assert (=> d!1184209 m!4586649))

(assert (=> d!1184209 m!4586259))

(declare-fun m!4586651 () Bool)

(assert (=> d!1184209 m!4586651))

(declare-fun m!4586653 () Bool)

(assert (=> b!4003977 m!4586653))

(declare-fun m!4586655 () Bool)

(assert (=> b!4003978 m!4586655))

(assert (=> b!4003978 m!4586087))

(declare-fun m!4586657 () Bool)

(assert (=> b!4003978 m!4586657))

(assert (=> b!4003566 d!1184209))

(declare-fun d!1184211 () Bool)

(declare-fun e!2483038 () Bool)

(assert (=> d!1184211 e!2483038))

(declare-fun res!1627067 () Bool)

(assert (=> d!1184211 (=> (not res!1627067) (not e!2483038))))

(declare-fun lt!1416201 () List!42992)

(assert (=> d!1184211 (= res!1627067 (= (content!6496 lt!1416201) ((_ map or) (content!6496 lt!1416045) (content!6496 suffix!1299))))))

(declare-fun e!2483037 () List!42992)

(assert (=> d!1184211 (= lt!1416201 e!2483037)))

(declare-fun c!692310 () Bool)

(assert (=> d!1184211 (= c!692310 ((_ is Nil!42868) lt!1416045))))

(assert (=> d!1184211 (= (++!11214 lt!1416045 suffix!1299) lt!1416201)))

(declare-fun b!4003983 () Bool)

(assert (=> b!4003983 (= e!2483038 (or (not (= suffix!1299 Nil!42868)) (= lt!1416201 lt!1416045)))))

(declare-fun b!4003981 () Bool)

(assert (=> b!4003981 (= e!2483037 (Cons!42868 (h!48288 lt!1416045) (++!11214 (t!332333 lt!1416045) suffix!1299)))))

(declare-fun b!4003980 () Bool)

(assert (=> b!4003980 (= e!2483037 suffix!1299)))

(declare-fun b!4003982 () Bool)

(declare-fun res!1627066 () Bool)

(assert (=> b!4003982 (=> (not res!1627066) (not e!2483038))))

(assert (=> b!4003982 (= res!1627066 (= (size!32050 lt!1416201) (+ (size!32050 lt!1416045) (size!32050 suffix!1299))))))

(assert (= (and d!1184211 c!692310) b!4003980))

(assert (= (and d!1184211 (not c!692310)) b!4003981))

(assert (= (and d!1184211 res!1627067) b!4003982))

(assert (= (and b!4003982 res!1627066) b!4003983))

(declare-fun m!4586659 () Bool)

(assert (=> d!1184211 m!4586659))

(declare-fun m!4586661 () Bool)

(assert (=> d!1184211 m!4586661))

(assert (=> d!1184211 m!4586515))

(declare-fun m!4586663 () Bool)

(assert (=> b!4003981 m!4586663))

(declare-fun m!4586665 () Bool)

(assert (=> b!4003982 m!4586665))

(declare-fun m!4586667 () Bool)

(assert (=> b!4003982 m!4586667))

(assert (=> b!4003982 m!4586031))

(assert (=> b!4003566 d!1184211))

(declare-fun d!1184213 () Bool)

(declare-fun e!2483040 () Bool)

(assert (=> d!1184213 e!2483040))

(declare-fun res!1627069 () Bool)

(assert (=> d!1184213 (=> (not res!1627069) (not e!2483040))))

(declare-fun lt!1416202 () List!42992)

(assert (=> d!1184213 (= res!1627069 (= (content!6496 lt!1416202) ((_ map or) (content!6496 lt!1416031) (content!6496 suffix!1299))))))

(declare-fun e!2483039 () List!42992)

(assert (=> d!1184213 (= lt!1416202 e!2483039)))

(declare-fun c!692311 () Bool)

(assert (=> d!1184213 (= c!692311 ((_ is Nil!42868) lt!1416031))))

(assert (=> d!1184213 (= (++!11214 lt!1416031 suffix!1299) lt!1416202)))

(declare-fun b!4003987 () Bool)

(assert (=> b!4003987 (= e!2483040 (or (not (= suffix!1299 Nil!42868)) (= lt!1416202 lt!1416031)))))

(declare-fun b!4003985 () Bool)

(assert (=> b!4003985 (= e!2483039 (Cons!42868 (h!48288 lt!1416031) (++!11214 (t!332333 lt!1416031) suffix!1299)))))

(declare-fun b!4003984 () Bool)

(assert (=> b!4003984 (= e!2483039 suffix!1299)))

(declare-fun b!4003986 () Bool)

(declare-fun res!1627068 () Bool)

(assert (=> b!4003986 (=> (not res!1627068) (not e!2483040))))

(assert (=> b!4003986 (= res!1627068 (= (size!32050 lt!1416202) (+ (size!32050 lt!1416031) (size!32050 suffix!1299))))))

(assert (= (and d!1184213 c!692311) b!4003984))

(assert (= (and d!1184213 (not c!692311)) b!4003985))

(assert (= (and d!1184213 res!1627069) b!4003986))

(assert (= (and b!4003986 res!1627068) b!4003987))

(declare-fun m!4586669 () Bool)

(assert (=> d!1184213 m!4586669))

(assert (=> d!1184213 m!4586633))

(assert (=> d!1184213 m!4586515))

(declare-fun m!4586671 () Bool)

(assert (=> b!4003985 m!4586671))

(declare-fun m!4586673 () Bool)

(assert (=> b!4003986 m!4586673))

(assert (=> b!4003986 m!4586639))

(assert (=> b!4003986 m!4586031))

(assert (=> b!4003566 d!1184213))

(declare-fun d!1184215 () Bool)

(assert (=> d!1184215 (= (++!11214 (++!11214 lt!1416025 lt!1416031) suffix!1299) (++!11214 lt!1416025 (++!11214 lt!1416031 suffix!1299)))))

(declare-fun lt!1416205 () Unit!61858)

(declare-fun choose!24162 (List!42992 List!42992 List!42992) Unit!61858)

(assert (=> d!1184215 (= lt!1416205 (choose!24162 lt!1416025 lt!1416031 suffix!1299))))

(assert (=> d!1184215 (= (lemmaConcatAssociativity!2524 lt!1416025 lt!1416031 suffix!1299) lt!1416205)))

(declare-fun bs!588936 () Bool)

(assert (= bs!588936 d!1184215))

(assert (=> bs!588936 m!4586053))

(declare-fun m!4586675 () Bool)

(assert (=> bs!588936 m!4586675))

(assert (=> bs!588936 m!4586057))

(declare-fun m!4586677 () Bool)

(assert (=> bs!588936 m!4586677))

(assert (=> bs!588936 m!4586057))

(declare-fun m!4586679 () Bool)

(assert (=> bs!588936 m!4586679))

(assert (=> bs!588936 m!4586053))

(assert (=> b!4003566 d!1184215))

(declare-fun b!4003999 () Bool)

(declare-fun e!2483043 () Bool)

(declare-fun tp!1218735 () Bool)

(declare-fun tp!1218739 () Bool)

(assert (=> b!4003999 (= e!2483043 (and tp!1218735 tp!1218739))))

(assert (=> b!4003567 (= tp!1218670 e!2483043)))

(declare-fun b!4003998 () Bool)

(assert (=> b!4003998 (= e!2483043 tp_is_empty!20405)))

(declare-fun b!4004000 () Bool)

(declare-fun tp!1218737 () Bool)

(assert (=> b!4004000 (= e!2483043 tp!1218737)))

(declare-fun b!4004001 () Bool)

(declare-fun tp!1218738 () Bool)

(declare-fun tp!1218736 () Bool)

(assert (=> b!4004001 (= e!2483043 (and tp!1218738 tp!1218736))))

(assert (= (and b!4003567 ((_ is ElementMatch!11717) (regex!6812 (h!48290 rules!2999)))) b!4003998))

(assert (= (and b!4003567 ((_ is Concat!18760) (regex!6812 (h!48290 rules!2999)))) b!4003999))

(assert (= (and b!4003567 ((_ is Star!11717) (regex!6812 (h!48290 rules!2999)))) b!4004000))

(assert (= (and b!4003567 ((_ is Union!11717) (regex!6812 (h!48290 rules!2999)))) b!4004001))

(declare-fun b!4004006 () Bool)

(declare-fun e!2483046 () Bool)

(declare-fun tp!1218742 () Bool)

(assert (=> b!4004006 (= e!2483046 (and tp_is_empty!20405 tp!1218742))))

(assert (=> b!4003551 (= tp!1218666 e!2483046)))

(assert (= (and b!4003551 ((_ is Cons!42868) (t!332333 newSuffix!27))) b!4004006))

(declare-fun b!4004017 () Bool)

(declare-fun b_free!111381 () Bool)

(declare-fun b_next!112085 () Bool)

(assert (=> b!4004017 (= b_free!111381 (not b_next!112085))))

(declare-fun tb!240621 () Bool)

(declare-fun t!332357 () Bool)

(assert (=> (and b!4004017 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) t!332357) tb!240621))

(declare-fun result!291662 () Bool)

(assert (= result!291662 result!291650))

(assert (=> d!1184193 t!332357))

(declare-fun b_and!307491 () Bool)

(declare-fun tp!1218753 () Bool)

(assert (=> b!4004017 (= tp!1218753 (and (=> t!332357 result!291662) b_and!307491))))

(declare-fun b_free!111383 () Bool)

(declare-fun b_next!112087 () Bool)

(assert (=> b!4004017 (= b_free!111383 (not b_next!112087))))

(declare-fun t!332359 () Bool)

(declare-fun tb!240623 () Bool)

(assert (=> (and b!4004017 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toChars!9163 (transformation!6812 (rule!9846 token!484)))) t!332359) tb!240623))

(declare-fun result!291664 () Bool)

(assert (= result!291664 result!291622))

(assert (=> b!4003617 t!332359))

(assert (=> d!1184079 t!332359))

(declare-fun b_and!307493 () Bool)

(declare-fun tp!1218752 () Bool)

(assert (=> b!4004017 (= tp!1218752 (and (=> t!332359 result!291664) b_and!307493))))

(declare-fun e!2483057 () Bool)

(assert (=> b!4004017 (= e!2483057 (and tp!1218753 tp!1218752))))

(declare-fun b!4004016 () Bool)

(declare-fun tp!1218754 () Bool)

(declare-fun e!2483058 () Bool)

(assert (=> b!4004016 (= e!2483058 (and tp!1218754 (inv!57241 (tag!7672 (h!48290 (t!332335 rules!2999)))) (inv!57244 (transformation!6812 (h!48290 (t!332335 rules!2999)))) e!2483057))))

(declare-fun b!4004015 () Bool)

(declare-fun e!2483056 () Bool)

(declare-fun tp!1218751 () Bool)

(assert (=> b!4004015 (= e!2483056 (and e!2483058 tp!1218751))))

(assert (=> b!4003562 (= tp!1218669 e!2483056)))

(assert (= b!4004016 b!4004017))

(assert (= b!4004015 b!4004016))

(assert (= (and b!4003562 ((_ is Cons!42870) (t!332335 rules!2999))) b!4004015))

(declare-fun m!4586681 () Bool)

(assert (=> b!4004016 m!4586681))

(declare-fun m!4586683 () Bool)

(assert (=> b!4004016 m!4586683))

(declare-fun b!4004019 () Bool)

(declare-fun e!2483059 () Bool)

(declare-fun tp!1218755 () Bool)

(declare-fun tp!1218759 () Bool)

(assert (=> b!4004019 (= e!2483059 (and tp!1218755 tp!1218759))))

(assert (=> b!4003568 (= tp!1218671 e!2483059)))

(declare-fun b!4004018 () Bool)

(assert (=> b!4004018 (= e!2483059 tp_is_empty!20405)))

(declare-fun b!4004020 () Bool)

(declare-fun tp!1218757 () Bool)

(assert (=> b!4004020 (= e!2483059 tp!1218757)))

(declare-fun b!4004021 () Bool)

(declare-fun tp!1218758 () Bool)

(declare-fun tp!1218756 () Bool)

(assert (=> b!4004021 (= e!2483059 (and tp!1218758 tp!1218756))))

(assert (= (and b!4003568 ((_ is ElementMatch!11717) (regex!6812 (rule!9846 token!484)))) b!4004018))

(assert (= (and b!4003568 ((_ is Concat!18760) (regex!6812 (rule!9846 token!484)))) b!4004019))

(assert (= (and b!4003568 ((_ is Star!11717) (regex!6812 (rule!9846 token!484)))) b!4004020))

(assert (= (and b!4003568 ((_ is Union!11717) (regex!6812 (rule!9846 token!484)))) b!4004021))

(declare-fun b!4004022 () Bool)

(declare-fun e!2483060 () Bool)

(declare-fun tp!1218760 () Bool)

(assert (=> b!4004022 (= e!2483060 (and tp_is_empty!20405 tp!1218760))))

(assert (=> b!4003569 (= tp!1218675 e!2483060)))

(assert (= (and b!4003569 ((_ is Cons!42868) (t!332333 suffix!1299))) b!4004022))

(declare-fun b!4004023 () Bool)

(declare-fun e!2483061 () Bool)

(declare-fun tp!1218761 () Bool)

(assert (=> b!4004023 (= e!2483061 (and tp_is_empty!20405 tp!1218761))))

(assert (=> b!4003553 (= tp!1218676 e!2483061)))

(assert (= (and b!4003553 ((_ is Cons!42868) (t!332333 prefix!494))) b!4004023))

(declare-fun b!4004024 () Bool)

(declare-fun e!2483062 () Bool)

(declare-fun tp!1218762 () Bool)

(assert (=> b!4004024 (= e!2483062 (and tp_is_empty!20405 tp!1218762))))

(assert (=> b!4003564 (= tp!1218667 e!2483062)))

(assert (= (and b!4003564 ((_ is Cons!42868) (t!332333 suffixResult!105))) b!4004024))

(declare-fun b!4004025 () Bool)

(declare-fun e!2483063 () Bool)

(declare-fun tp!1218763 () Bool)

(assert (=> b!4004025 (= e!2483063 (and tp_is_empty!20405 tp!1218763))))

(assert (=> b!4003565 (= tp!1218668 e!2483063)))

(assert (= (and b!4003565 ((_ is Cons!42868) (originalCharacters!7412 token!484))) b!4004025))

(declare-fun b!4004026 () Bool)

(declare-fun e!2483064 () Bool)

(declare-fun tp!1218764 () Bool)

(assert (=> b!4004026 (= e!2483064 (and tp_is_empty!20405 tp!1218764))))

(assert (=> b!4003560 (= tp!1218678 e!2483064)))

(assert (= (and b!4003560 ((_ is Cons!42868) (t!332333 newSuffixResult!27))) b!4004026))

(declare-fun b_lambda!116777 () Bool)

(assert (= b_lambda!116763 (or (and b!4003572 b_free!111371) (and b!4003570 b_free!111375 (= (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toChars!9163 (transformation!6812 (rule!9846 token!484))))) (and b!4004017 b_free!111383 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toChars!9163 (transformation!6812 (rule!9846 token!484))))) b_lambda!116777)))

(declare-fun b_lambda!116779 () Bool)

(assert (= b_lambda!116759 (or (and b!4003572 b_free!111371) (and b!4003570 b_free!111375 (= (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toChars!9163 (transformation!6812 (rule!9846 token!484))))) (and b!4004017 b_free!111383 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toChars!9163 (transformation!6812 (rule!9846 token!484))))) b_lambda!116779)))

(declare-fun b_lambda!116781 () Bool)

(assert (= b_lambda!116775 (or (and b!4003572 b_free!111369) (and b!4003570 b_free!111373 (= (toValue!9304 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (rule!9846 token!484))))) (and b!4004017 b_free!111381 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toValue!9304 (transformation!6812 (rule!9846 token!484))))) b_lambda!116781)))

(check-sat (not b!4003612) (not b!4003602) (not d!1184115) b_and!307473 (not d!1184101) (not b!4004016) (not b!4003960) (not d!1184189) (not b!4003931) (not b!4003935) (not b!4003924) (not b!4003973) (not b_next!112077) (not d!1184087) (not b!4003970) (not b!4003844) (not b!4003888) (not b!4003608) (not b!4003703) (not b!4003894) (not b!4003898) (not b_next!112085) (not b!4003606) (not b!4003981) (not d!1184089) (not d!1184065) (not b!4003901) (not d!1184191) (not b!4003893) (not b!4003963) (not b!4003603) b_and!307487 (not d!1184079) (not d!1184195) (not b_next!112073) (not b!4003892) (not b!4003685) (not b_next!112079) (not b!4003975) (not d!1184077) (not b!4003999) (not d!1184197) (not b!4003846) (not d!1184163) (not b!4003928) (not b!4003926) (not b!4003927) (not b!4004020) (not b!4003978) (not d!1184181) (not b!4003977) (not b!4003889) (not b!4003629) (not d!1184097) (not b!4003925) (not b!4003904) (not b!4004015) (not tb!240617) (not b!4003647) (not b!4004022) b_and!307489 (not b!4003671) (not b!4003848) (not b!4003607) (not b!4004001) (not b!4004026) (not b_next!112075) (not b!4004023) (not d!1184179) (not b_lambda!116781) b_and!307493 (not b!4003959) (not b!4003944) (not b!4003618) (not d!1184209) b_and!307491 (not b!4003670) tp_is_empty!20405 (not b!4004025) (not b!4003986) (not d!1184203) (not b!4004006) (not b!4003930) (not b!4003985) (not b_next!112087) (not d!1184207) (not b!4003610) (not b!4003850) (not b!4003851) (not b!4003934) (not d!1184201) (not b!4003974) (not b!4003896) (not d!1184069) (not b!4004021) (not d!1184211) (not b!4003849) (not b!4003945) (not b!4003932) (not b!4003658) (not b!4003604) (not tb!240601) (not b!4003611) (not b!4003617) b_and!307471 (not d!1184215) (not d!1184175) (not b!4003845) (not b!4003940) (not b_lambda!116779) (not d!1184067) (not b!4004019) (not b!4003847) (not d!1184185) (not bm!286017) (not b!4003982) (not b!4003941) (not d!1184173) (not b!4004024) (not b!4003964) (not b!4004000) (not b!4003957) (not b!4003905) (not d!1184213) (not b_lambda!116777) (not b!4003936) (not d!1184183))
(check-sat (not b_next!112077) (not b_next!112085) (not b_next!112079) b_and!307489 b_and!307473 (not b_next!112075) (not b_next!112087) b_and!307471 b_and!307487 (not b_next!112073) b_and!307493 b_and!307491)
(get-model)

(declare-fun b!4004033 () Bool)

(declare-fun e!2483067 () Bool)

(assert (=> b!4004033 (= e!2483067 (isPrefix!3899 (tail!6241 prefix!494) (tail!6241 (++!11214 prefix!494 suffix!1299))))))

(declare-fun b!4004031 () Bool)

(declare-fun e!2483068 () Bool)

(assert (=> b!4004031 (= e!2483068 e!2483067)))

(declare-fun res!1627074 () Bool)

(assert (=> b!4004031 (=> (not res!1627074) (not e!2483067))))

(assert (=> b!4004031 (= res!1627074 (not ((_ is Nil!42868) (++!11214 prefix!494 suffix!1299))))))

(declare-fun b!4004032 () Bool)

(declare-fun res!1627073 () Bool)

(assert (=> b!4004032 (=> (not res!1627073) (not e!2483067))))

(assert (=> b!4004032 (= res!1627073 (= (head!8509 prefix!494) (head!8509 (++!11214 prefix!494 suffix!1299))))))

(declare-fun b!4004034 () Bool)

(declare-fun e!2483069 () Bool)

(assert (=> b!4004034 (= e!2483069 (>= (size!32050 (++!11214 prefix!494 suffix!1299)) (size!32050 prefix!494)))))

(declare-fun d!1184221 () Bool)

(assert (=> d!1184221 e!2483069))

(declare-fun res!1627072 () Bool)

(assert (=> d!1184221 (=> res!1627072 e!2483069)))

(declare-fun lt!1416207 () Bool)

(assert (=> d!1184221 (= res!1627072 (not lt!1416207))))

(assert (=> d!1184221 (= lt!1416207 e!2483068)))

(declare-fun res!1627075 () Bool)

(assert (=> d!1184221 (=> res!1627075 e!2483068)))

(assert (=> d!1184221 (= res!1627075 ((_ is Nil!42868) prefix!494))))

(assert (=> d!1184221 (= (isPrefix!3899 prefix!494 (++!11214 prefix!494 suffix!1299)) lt!1416207)))

(assert (= (and d!1184221 (not res!1627075)) b!4004031))

(assert (= (and b!4004031 res!1627074) b!4004032))

(assert (= (and b!4004032 res!1627073) b!4004033))

(assert (= (and d!1184221 (not res!1627072)) b!4004034))

(assert (=> b!4004033 m!4586155))

(assert (=> b!4004033 m!4586039))

(declare-fun m!4586695 () Bool)

(assert (=> b!4004033 m!4586695))

(assert (=> b!4004033 m!4586155))

(assert (=> b!4004033 m!4586695))

(declare-fun m!4586697 () Bool)

(assert (=> b!4004033 m!4586697))

(assert (=> b!4004032 m!4586161))

(assert (=> b!4004032 m!4586039))

(declare-fun m!4586699 () Bool)

(assert (=> b!4004032 m!4586699))

(assert (=> b!4004034 m!4586039))

(declare-fun m!4586701 () Bool)

(assert (=> b!4004034 m!4586701))

(assert (=> b!4004034 m!4586089))

(assert (=> d!1184067 d!1184221))

(assert (=> d!1184067 d!1184163))

(declare-fun d!1184223 () Bool)

(assert (=> d!1184223 (isPrefix!3899 prefix!494 (++!11214 prefix!494 suffix!1299))))

(assert (=> d!1184223 true))

(declare-fun _$46!1624 () Unit!61858)

(assert (=> d!1184223 (= (choose!24156 prefix!494 suffix!1299) _$46!1624)))

(declare-fun bs!588937 () Bool)

(assert (= bs!588937 d!1184223))

(assert (=> bs!588937 m!4586039))

(assert (=> bs!588937 m!4586039))

(assert (=> bs!588937 m!4586185))

(assert (=> d!1184067 d!1184223))

(declare-fun b!4004037 () Bool)

(declare-fun e!2483070 () Bool)

(assert (=> b!4004037 (= e!2483070 (isPrefix!3899 (tail!6241 (tail!6241 newSuffix!27)) (tail!6241 (tail!6241 suffix!1299))))))

(declare-fun b!4004035 () Bool)

(declare-fun e!2483071 () Bool)

(assert (=> b!4004035 (= e!2483071 e!2483070)))

(declare-fun res!1627078 () Bool)

(assert (=> b!4004035 (=> (not res!1627078) (not e!2483070))))

(assert (=> b!4004035 (= res!1627078 (not ((_ is Nil!42868) (tail!6241 suffix!1299))))))

(declare-fun b!4004036 () Bool)

(declare-fun res!1627077 () Bool)

(assert (=> b!4004036 (=> (not res!1627077) (not e!2483070))))

(assert (=> b!4004036 (= res!1627077 (= (head!8509 (tail!6241 newSuffix!27)) (head!8509 (tail!6241 suffix!1299))))))

(declare-fun b!4004038 () Bool)

(declare-fun e!2483072 () Bool)

(assert (=> b!4004038 (= e!2483072 (>= (size!32050 (tail!6241 suffix!1299)) (size!32050 (tail!6241 newSuffix!27))))))

(declare-fun d!1184225 () Bool)

(assert (=> d!1184225 e!2483072))

(declare-fun res!1627076 () Bool)

(assert (=> d!1184225 (=> res!1627076 e!2483072)))

(declare-fun lt!1416208 () Bool)

(assert (=> d!1184225 (= res!1627076 (not lt!1416208))))

(assert (=> d!1184225 (= lt!1416208 e!2483071)))

(declare-fun res!1627079 () Bool)

(assert (=> d!1184225 (=> res!1627079 e!2483071)))

(assert (=> d!1184225 (= res!1627079 ((_ is Nil!42868) (tail!6241 newSuffix!27)))))

(assert (=> d!1184225 (= (isPrefix!3899 (tail!6241 newSuffix!27) (tail!6241 suffix!1299)) lt!1416208)))

(assert (= (and d!1184225 (not res!1627079)) b!4004035))

(assert (= (and b!4004035 res!1627078) b!4004036))

(assert (= (and b!4004036 res!1627077) b!4004037))

(assert (= (and d!1184225 (not res!1627076)) b!4004038))

(assert (=> b!4004037 m!4586521))

(declare-fun m!4586703 () Bool)

(assert (=> b!4004037 m!4586703))

(assert (=> b!4004037 m!4586523))

(declare-fun m!4586705 () Bool)

(assert (=> b!4004037 m!4586705))

(assert (=> b!4004037 m!4586703))

(assert (=> b!4004037 m!4586705))

(declare-fun m!4586707 () Bool)

(assert (=> b!4004037 m!4586707))

(assert (=> b!4004036 m!4586521))

(declare-fun m!4586709 () Bool)

(assert (=> b!4004036 m!4586709))

(assert (=> b!4004036 m!4586523))

(declare-fun m!4586711 () Bool)

(assert (=> b!4004036 m!4586711))

(assert (=> b!4004038 m!4586523))

(declare-fun m!4586713 () Bool)

(assert (=> b!4004038 m!4586713))

(assert (=> b!4004038 m!4586521))

(declare-fun m!4586715 () Bool)

(assert (=> b!4004038 m!4586715))

(assert (=> b!4003893 d!1184225))

(declare-fun d!1184227 () Bool)

(assert (=> d!1184227 (= (tail!6241 newSuffix!27) (t!332333 newSuffix!27))))

(assert (=> b!4003893 d!1184227))

(declare-fun d!1184229 () Bool)

(assert (=> d!1184229 (= (tail!6241 suffix!1299) (t!332333 suffix!1299))))

(assert (=> b!4003893 d!1184229))

(declare-fun d!1184231 () Bool)

(assert (=> d!1184231 (= (head!8509 lt!1416025) (h!48288 lt!1416025))))

(assert (=> b!4003606 d!1184231))

(declare-fun d!1184233 () Bool)

(assert (=> d!1184233 (= (head!8509 lt!1416037) (h!48288 lt!1416037))))

(assert (=> b!4003606 d!1184233))

(declare-fun d!1184235 () Bool)

(declare-fun lt!1416211 () Bool)

(declare-fun content!6497 (List!42994) (InoxSet Rule!13424))

(assert (=> d!1184235 (= lt!1416211 (select (content!6497 rules!2999) (rule!9846 (_1!24147 (get!14090 lt!1416158)))))))

(declare-fun e!2483078 () Bool)

(assert (=> d!1184235 (= lt!1416211 e!2483078)))

(declare-fun res!1627085 () Bool)

(assert (=> d!1184235 (=> (not res!1627085) (not e!2483078))))

(assert (=> d!1184235 (= res!1627085 ((_ is Cons!42870) rules!2999))))

(assert (=> d!1184235 (= (contains!8520 rules!2999 (rule!9846 (_1!24147 (get!14090 lt!1416158)))) lt!1416211)))

(declare-fun b!4004043 () Bool)

(declare-fun e!2483077 () Bool)

(assert (=> b!4004043 (= e!2483078 e!2483077)))

(declare-fun res!1627084 () Bool)

(assert (=> b!4004043 (=> res!1627084 e!2483077)))

(assert (=> b!4004043 (= res!1627084 (= (h!48290 rules!2999) (rule!9846 (_1!24147 (get!14090 lt!1416158)))))))

(declare-fun b!4004044 () Bool)

(assert (=> b!4004044 (= e!2483077 (contains!8520 (t!332335 rules!2999) (rule!9846 (_1!24147 (get!14090 lt!1416158)))))))

(assert (= (and d!1184235 res!1627085) b!4004043))

(assert (= (and b!4004043 (not res!1627084)) b!4004044))

(declare-fun m!4586717 () Bool)

(assert (=> d!1184235 m!4586717))

(declare-fun m!4586719 () Bool)

(assert (=> d!1184235 m!4586719))

(declare-fun m!4586721 () Bool)

(assert (=> b!4004044 m!4586721))

(assert (=> b!4003845 d!1184235))

(declare-fun d!1184237 () Bool)

(assert (=> d!1184237 (= (get!14090 lt!1416158) (v!39587 lt!1416158))))

(assert (=> b!4003845 d!1184237))

(declare-fun d!1184239 () Bool)

(assert (=> d!1184239 (= (isEmpty!25612 lt!1416158) (not ((_ is Some!9225) lt!1416158)))))

(assert (=> d!1184115 d!1184239))

(declare-fun b!4004047 () Bool)

(declare-fun e!2483079 () Bool)

(assert (=> b!4004047 (= e!2483079 (isPrefix!3899 (tail!6241 lt!1416044) (tail!6241 lt!1416044)))))

(declare-fun b!4004045 () Bool)

(declare-fun e!2483080 () Bool)

(assert (=> b!4004045 (= e!2483080 e!2483079)))

(declare-fun res!1627088 () Bool)

(assert (=> b!4004045 (=> (not res!1627088) (not e!2483079))))

(assert (=> b!4004045 (= res!1627088 (not ((_ is Nil!42868) lt!1416044)))))

(declare-fun b!4004046 () Bool)

(declare-fun res!1627087 () Bool)

(assert (=> b!4004046 (=> (not res!1627087) (not e!2483079))))

(assert (=> b!4004046 (= res!1627087 (= (head!8509 lt!1416044) (head!8509 lt!1416044)))))

(declare-fun b!4004048 () Bool)

(declare-fun e!2483081 () Bool)

(assert (=> b!4004048 (= e!2483081 (>= (size!32050 lt!1416044) (size!32050 lt!1416044)))))

(declare-fun d!1184241 () Bool)

(assert (=> d!1184241 e!2483081))

(declare-fun res!1627086 () Bool)

(assert (=> d!1184241 (=> res!1627086 e!2483081)))

(declare-fun lt!1416212 () Bool)

(assert (=> d!1184241 (= res!1627086 (not lt!1416212))))

(assert (=> d!1184241 (= lt!1416212 e!2483080)))

(declare-fun res!1627089 () Bool)

(assert (=> d!1184241 (=> res!1627089 e!2483080)))

(assert (=> d!1184241 (= res!1627089 ((_ is Nil!42868) lt!1416044))))

(assert (=> d!1184241 (= (isPrefix!3899 lt!1416044 lt!1416044) lt!1416212)))

(assert (= (and d!1184241 (not res!1627089)) b!4004045))

(assert (= (and b!4004045 res!1627088) b!4004046))

(assert (= (and b!4004046 res!1627087) b!4004047))

(assert (= (and d!1184241 (not res!1627086)) b!4004048))

(assert (=> b!4004047 m!4586157))

(assert (=> b!4004047 m!4586157))

(assert (=> b!4004047 m!4586157))

(assert (=> b!4004047 m!4586157))

(declare-fun m!4586723 () Bool)

(assert (=> b!4004047 m!4586723))

(assert (=> b!4004046 m!4586163))

(assert (=> b!4004046 m!4586163))

(assert (=> b!4004048 m!4586165))

(assert (=> b!4004048 m!4586165))

(assert (=> d!1184115 d!1184241))

(declare-fun d!1184243 () Bool)

(assert (=> d!1184243 (isPrefix!3899 lt!1416044 lt!1416044)))

(declare-fun lt!1416215 () Unit!61858)

(declare-fun choose!24164 (List!42992 List!42992) Unit!61858)

(assert (=> d!1184243 (= lt!1416215 (choose!24164 lt!1416044 lt!1416044))))

(assert (=> d!1184243 (= (lemmaIsPrefixRefl!2477 lt!1416044 lt!1416044) lt!1416215)))

(declare-fun bs!588938 () Bool)

(assert (= bs!588938 d!1184243))

(assert (=> bs!588938 m!4586497))

(declare-fun m!4586725 () Bool)

(assert (=> bs!588938 m!4586725))

(assert (=> d!1184115 d!1184243))

(declare-fun d!1184245 () Bool)

(assert (=> d!1184245 true))

(declare-fun lt!1416240 () Bool)

(declare-fun lambda!126948 () Int)

(declare-fun forall!8346 (List!42994 Int) Bool)

(assert (=> d!1184245 (= lt!1416240 (forall!8346 rules!2999 lambda!126948))))

(declare-fun e!2483113 () Bool)

(assert (=> d!1184245 (= lt!1416240 e!2483113)))

(declare-fun res!1627119 () Bool)

(assert (=> d!1184245 (=> res!1627119 e!2483113)))

(assert (=> d!1184245 (= res!1627119 (not ((_ is Cons!42870) rules!2999)))))

(assert (=> d!1184245 (= (rulesValidInductive!2481 thiss!21717 rules!2999) lt!1416240)))

(declare-fun b!4004100 () Bool)

(declare-fun e!2483114 () Bool)

(assert (=> b!4004100 (= e!2483113 e!2483114)))

(declare-fun res!1627120 () Bool)

(assert (=> b!4004100 (=> (not res!1627120) (not e!2483114))))

(assert (=> b!4004100 (= res!1627120 (ruleValid!2744 thiss!21717 (h!48290 rules!2999)))))

(declare-fun b!4004101 () Bool)

(assert (=> b!4004101 (= e!2483114 (rulesValidInductive!2481 thiss!21717 (t!332335 rules!2999)))))

(assert (= (and d!1184245 (not res!1627119)) b!4004100))

(assert (= (and b!4004100 res!1627120) b!4004101))

(declare-fun m!4586827 () Bool)

(assert (=> d!1184245 m!4586827))

(declare-fun m!4586829 () Bool)

(assert (=> b!4004100 m!4586829))

(declare-fun m!4586831 () Bool)

(assert (=> b!4004101 m!4586831))

(assert (=> d!1184115 d!1184245))

(declare-fun call!286029 () Bool)

(declare-fun bm!286024 () Bool)

(declare-fun c!692322 () Bool)

(declare-fun c!692323 () Bool)

(assert (=> bm!286024 (= call!286029 (validRegex!5307 (ite c!692323 (reg!12046 (regex!6812 (rule!9846 token!484))) (ite c!692322 (regTwo!23947 (regex!6812 (rule!9846 token!484))) (regTwo!23946 (regex!6812 (rule!9846 token!484)))))))))

(declare-fun bm!286025 () Bool)

(declare-fun call!286030 () Bool)

(assert (=> bm!286025 (= call!286030 (validRegex!5307 (ite c!692322 (regOne!23947 (regex!6812 (rule!9846 token!484))) (regOne!23946 (regex!6812 (rule!9846 token!484))))))))

(declare-fun b!4004122 () Bool)

(declare-fun e!2483131 () Bool)

(declare-fun e!2483134 () Bool)

(assert (=> b!4004122 (= e!2483131 e!2483134)))

(declare-fun res!1627133 () Bool)

(assert (=> b!4004122 (=> (not res!1627133) (not e!2483134))))

(assert (=> b!4004122 (= res!1627133 call!286030)))

(declare-fun b!4004123 () Bool)

(declare-fun e!2483133 () Bool)

(declare-fun e!2483135 () Bool)

(assert (=> b!4004123 (= e!2483133 e!2483135)))

(declare-fun res!1627131 () Bool)

(assert (=> b!4004123 (= res!1627131 (not (nullable!4107 (reg!12046 (regex!6812 (rule!9846 token!484))))))))

(assert (=> b!4004123 (=> (not res!1627131) (not e!2483135))))

(declare-fun b!4004124 () Bool)

(declare-fun res!1627132 () Bool)

(assert (=> b!4004124 (=> res!1627132 e!2483131)))

(assert (=> b!4004124 (= res!1627132 (not ((_ is Concat!18760) (regex!6812 (rule!9846 token!484)))))))

(declare-fun e!2483129 () Bool)

(assert (=> b!4004124 (= e!2483129 e!2483131)))

(declare-fun b!4004125 () Bool)

(declare-fun call!286031 () Bool)

(assert (=> b!4004125 (= e!2483134 call!286031)))

(declare-fun d!1184283 () Bool)

(declare-fun res!1627135 () Bool)

(declare-fun e!2483130 () Bool)

(assert (=> d!1184283 (=> res!1627135 e!2483130)))

(assert (=> d!1184283 (= res!1627135 ((_ is ElementMatch!11717) (regex!6812 (rule!9846 token!484))))))

(assert (=> d!1184283 (= (validRegex!5307 (regex!6812 (rule!9846 token!484))) e!2483130)))

(declare-fun b!4004126 () Bool)

(assert (=> b!4004126 (= e!2483130 e!2483133)))

(assert (=> b!4004126 (= c!692323 ((_ is Star!11717) (regex!6812 (rule!9846 token!484))))))

(declare-fun b!4004127 () Bool)

(declare-fun e!2483132 () Bool)

(assert (=> b!4004127 (= e!2483132 call!286031)))

(declare-fun b!4004128 () Bool)

(declare-fun res!1627134 () Bool)

(assert (=> b!4004128 (=> (not res!1627134) (not e!2483132))))

(assert (=> b!4004128 (= res!1627134 call!286030)))

(assert (=> b!4004128 (= e!2483129 e!2483132)))

(declare-fun bm!286026 () Bool)

(assert (=> bm!286026 (= call!286031 call!286029)))

(declare-fun b!4004129 () Bool)

(assert (=> b!4004129 (= e!2483135 call!286029)))

(declare-fun b!4004130 () Bool)

(assert (=> b!4004130 (= e!2483133 e!2483129)))

(assert (=> b!4004130 (= c!692322 ((_ is Union!11717) (regex!6812 (rule!9846 token!484))))))

(assert (= (and d!1184283 (not res!1627135)) b!4004126))

(assert (= (and b!4004126 c!692323) b!4004123))

(assert (= (and b!4004126 (not c!692323)) b!4004130))

(assert (= (and b!4004123 res!1627131) b!4004129))

(assert (= (and b!4004130 c!692322) b!4004128))

(assert (= (and b!4004130 (not c!692322)) b!4004124))

(assert (= (and b!4004128 res!1627134) b!4004127))

(assert (= (and b!4004124 (not res!1627132)) b!4004122))

(assert (= (and b!4004122 res!1627133) b!4004125))

(assert (= (or b!4004127 b!4004125) bm!286026))

(assert (= (or b!4004128 b!4004122) bm!286025))

(assert (= (or b!4004129 bm!286026) bm!286024))

(declare-fun m!4586833 () Bool)

(assert (=> bm!286024 m!4586833))

(declare-fun m!4586835 () Bool)

(assert (=> bm!286025 m!4586835))

(declare-fun m!4586837 () Bool)

(assert (=> b!4004123 m!4586837))

(assert (=> d!1184097 d!1184283))

(declare-fun d!1184285 () Bool)

(declare-fun e!2483137 () Bool)

(assert (=> d!1184285 e!2483137))

(declare-fun res!1627137 () Bool)

(assert (=> d!1184285 (=> (not res!1627137) (not e!2483137))))

(declare-fun lt!1416241 () List!42992)

(assert (=> d!1184285 (= res!1627137 (= (content!6496 lt!1416241) ((_ map or) (content!6496 (t!332333 lt!1416025)) (content!6496 lt!1416039))))))

(declare-fun e!2483136 () List!42992)

(assert (=> d!1184285 (= lt!1416241 e!2483136)))

(declare-fun c!692324 () Bool)

(assert (=> d!1184285 (= c!692324 ((_ is Nil!42868) (t!332333 lt!1416025)))))

(assert (=> d!1184285 (= (++!11214 (t!332333 lt!1416025) lt!1416039) lt!1416241)))

(declare-fun b!4004134 () Bool)

(assert (=> b!4004134 (= e!2483137 (or (not (= lt!1416039 Nil!42868)) (= lt!1416241 (t!332333 lt!1416025))))))

(declare-fun b!4004132 () Bool)

(assert (=> b!4004132 (= e!2483136 (Cons!42868 (h!48288 (t!332333 lt!1416025)) (++!11214 (t!332333 (t!332333 lt!1416025)) lt!1416039)))))

(declare-fun b!4004131 () Bool)

(assert (=> b!4004131 (= e!2483136 lt!1416039)))

(declare-fun b!4004133 () Bool)

(declare-fun res!1627136 () Bool)

(assert (=> b!4004133 (=> (not res!1627136) (not e!2483137))))

(assert (=> b!4004133 (= res!1627136 (= (size!32050 lt!1416241) (+ (size!32050 (t!332333 lt!1416025)) (size!32050 lt!1416039))))))

(assert (= (and d!1184285 c!692324) b!4004131))

(assert (= (and d!1184285 (not c!692324)) b!4004132))

(assert (= (and d!1184285 res!1627137) b!4004133))

(assert (= (and b!4004133 res!1627136) b!4004134))

(declare-fun m!4586839 () Bool)

(assert (=> d!1184285 m!4586839))

(declare-fun m!4586841 () Bool)

(assert (=> d!1184285 m!4586841))

(assert (=> d!1184285 m!4586651))

(declare-fun m!4586843 () Bool)

(assert (=> b!4004132 m!4586843))

(declare-fun m!4586845 () Bool)

(assert (=> b!4004133 m!4586845))

(assert (=> b!4004133 m!4586201))

(assert (=> b!4004133 m!4586657))

(assert (=> b!4003977 d!1184285))

(declare-fun d!1184287 () Bool)

(assert (=> d!1184287 true))

(declare-fun order!22455 () Int)

(declare-fun order!22457 () Int)

(declare-fun lambda!126951 () Int)

(declare-fun dynLambda!18177 (Int Int) Int)

(declare-fun dynLambda!18178 (Int Int) Int)

(assert (=> d!1184287 (< (dynLambda!18177 order!22455 (toChars!9163 (transformation!6812 (h!48290 rules!2999)))) (dynLambda!18178 order!22457 lambda!126951))))

(assert (=> d!1184287 true))

(declare-fun order!22459 () Int)

(declare-fun dynLambda!18179 (Int Int) Int)

(assert (=> d!1184287 (< (dynLambda!18179 order!22459 (toValue!9304 (transformation!6812 (h!48290 rules!2999)))) (dynLambda!18178 order!22457 lambda!126951))))

(declare-fun Forall!1467 (Int) Bool)

(assert (=> d!1184287 (= (semiInverseModEq!2914 (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (h!48290 rules!2999)))) (Forall!1467 lambda!126951))))

(declare-fun bs!588944 () Bool)

(assert (= bs!588944 d!1184287))

(declare-fun m!4586847 () Bool)

(assert (=> bs!588944 m!4586847))

(assert (=> d!1184173 d!1184287))

(declare-fun d!1184289 () Bool)

(declare-fun e!2483139 () Bool)

(assert (=> d!1184289 e!2483139))

(declare-fun res!1627139 () Bool)

(assert (=> d!1184289 (=> (not res!1627139) (not e!2483139))))

(declare-fun lt!1416242 () List!42992)

(assert (=> d!1184289 (= res!1627139 (= (content!6496 lt!1416242) ((_ map or) (content!6496 lt!1416025) (content!6496 lt!1416195))))))

(declare-fun e!2483138 () List!42992)

(assert (=> d!1184289 (= lt!1416242 e!2483138)))

(declare-fun c!692325 () Bool)

(assert (=> d!1184289 (= c!692325 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184289 (= (++!11214 lt!1416025 lt!1416195) lt!1416242)))

(declare-fun b!4004142 () Bool)

(assert (=> b!4004142 (= e!2483139 (or (not (= lt!1416195 Nil!42868)) (= lt!1416242 lt!1416025)))))

(declare-fun b!4004140 () Bool)

(assert (=> b!4004140 (= e!2483138 (Cons!42868 (h!48288 lt!1416025) (++!11214 (t!332333 lt!1416025) lt!1416195)))))

(declare-fun b!4004139 () Bool)

(assert (=> b!4004139 (= e!2483138 lt!1416195)))

(declare-fun b!4004141 () Bool)

(declare-fun res!1627138 () Bool)

(assert (=> b!4004141 (=> (not res!1627138) (not e!2483139))))

(assert (=> b!4004141 (= res!1627138 (= (size!32050 lt!1416242) (+ (size!32050 lt!1416025) (size!32050 lt!1416195))))))

(assert (= (and d!1184289 c!692325) b!4004139))

(assert (= (and d!1184289 (not c!692325)) b!4004140))

(assert (= (and d!1184289 res!1627139) b!4004141))

(assert (= (and b!4004141 res!1627138) b!4004142))

(declare-fun m!4586849 () Bool)

(assert (=> d!1184289 m!4586849))

(assert (=> d!1184289 m!4586259))

(declare-fun m!4586851 () Bool)

(assert (=> d!1184289 m!4586851))

(declare-fun m!4586853 () Bool)

(assert (=> b!4004140 m!4586853))

(declare-fun m!4586855 () Bool)

(assert (=> b!4004141 m!4586855))

(assert (=> b!4004141 m!4586087))

(declare-fun m!4586857 () Bool)

(assert (=> b!4004141 m!4586857))

(assert (=> d!1184203 d!1184289))

(assert (=> d!1184203 d!1184075))

(assert (=> d!1184203 d!1184073))

(assert (=> d!1184207 d!1184205))

(declare-fun d!1184291 () Bool)

(assert (=> d!1184291 (isPrefix!3899 lt!1416025 prefix!494)))

(assert (=> d!1184291 true))

(declare-fun _$69!223 () Unit!61858)

(assert (=> d!1184291 (= (choose!24161 prefix!494 lt!1416025 lt!1416044) _$69!223)))

(declare-fun bs!588945 () Bool)

(assert (= bs!588945 d!1184291))

(assert (=> bs!588945 m!4586061))

(assert (=> d!1184207 d!1184291))

(assert (=> d!1184207 d!1184059))

(declare-fun b!4004145 () Bool)

(declare-fun e!2483140 () Bool)

(assert (=> b!4004145 (= e!2483140 (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 (++!11214 lt!1416025 lt!1416039))))))

(declare-fun b!4004143 () Bool)

(declare-fun e!2483141 () Bool)

(assert (=> b!4004143 (= e!2483141 e!2483140)))

(declare-fun res!1627142 () Bool)

(assert (=> b!4004143 (=> (not res!1627142) (not e!2483140))))

(assert (=> b!4004143 (= res!1627142 (not ((_ is Nil!42868) (++!11214 lt!1416025 lt!1416039))))))

(declare-fun b!4004144 () Bool)

(declare-fun res!1627141 () Bool)

(assert (=> b!4004144 (=> (not res!1627141) (not e!2483140))))

(assert (=> b!4004144 (= res!1627141 (= (head!8509 lt!1416025) (head!8509 (++!11214 lt!1416025 lt!1416039))))))

(declare-fun b!4004146 () Bool)

(declare-fun e!2483142 () Bool)

(assert (=> b!4004146 (= e!2483142 (>= (size!32050 (++!11214 lt!1416025 lt!1416039)) (size!32050 lt!1416025)))))

(declare-fun d!1184293 () Bool)

(assert (=> d!1184293 e!2483142))

(declare-fun res!1627140 () Bool)

(assert (=> d!1184293 (=> res!1627140 e!2483142)))

(declare-fun lt!1416243 () Bool)

(assert (=> d!1184293 (= res!1627140 (not lt!1416243))))

(assert (=> d!1184293 (= lt!1416243 e!2483141)))

(declare-fun res!1627143 () Bool)

(assert (=> d!1184293 (=> res!1627143 e!2483141)))

(assert (=> d!1184293 (= res!1627143 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184293 (= (isPrefix!3899 lt!1416025 (++!11214 lt!1416025 lt!1416039)) lt!1416243)))

(assert (= (and d!1184293 (not res!1627143)) b!4004143))

(assert (= (and b!4004143 res!1627142) b!4004144))

(assert (= (and b!4004144 res!1627141) b!4004145))

(assert (= (and d!1184293 (not res!1627140)) b!4004146))

(assert (=> b!4004145 m!4586167))

(assert (=> b!4004145 m!4586049))

(declare-fun m!4586859 () Bool)

(assert (=> b!4004145 m!4586859))

(assert (=> b!4004145 m!4586167))

(assert (=> b!4004145 m!4586859))

(declare-fun m!4586861 () Bool)

(assert (=> b!4004145 m!4586861))

(assert (=> b!4004144 m!4586173))

(assert (=> b!4004144 m!4586049))

(declare-fun m!4586863 () Bool)

(assert (=> b!4004144 m!4586863))

(assert (=> b!4004146 m!4586049))

(declare-fun m!4586865 () Bool)

(assert (=> b!4004146 m!4586865))

(assert (=> b!4004146 m!4586087))

(assert (=> d!1184183 d!1184293))

(assert (=> d!1184183 d!1184209))

(declare-fun d!1184295 () Bool)

(assert (=> d!1184295 (isPrefix!3899 lt!1416025 (++!11214 lt!1416025 lt!1416039))))

(assert (=> d!1184295 true))

(declare-fun _$46!1625 () Unit!61858)

(assert (=> d!1184295 (= (choose!24156 lt!1416025 lt!1416039) _$46!1625)))

(declare-fun bs!588946 () Bool)

(assert (= bs!588946 d!1184295))

(assert (=> bs!588946 m!4586049))

(assert (=> bs!588946 m!4586049))

(assert (=> bs!588946 m!4586585))

(assert (=> d!1184183 d!1184295))

(declare-fun b!4004149 () Bool)

(declare-fun e!2483143 () Bool)

(assert (=> b!4004149 (= e!2483143 (isPrefix!3899 (tail!6241 (tail!6241 prefix!494)) (tail!6241 (tail!6241 lt!1416044))))))

(declare-fun b!4004147 () Bool)

(declare-fun e!2483144 () Bool)

(assert (=> b!4004147 (= e!2483144 e!2483143)))

(declare-fun res!1627146 () Bool)

(assert (=> b!4004147 (=> (not res!1627146) (not e!2483143))))

(assert (=> b!4004147 (= res!1627146 (not ((_ is Nil!42868) (tail!6241 lt!1416044))))))

(declare-fun b!4004148 () Bool)

(declare-fun res!1627145 () Bool)

(assert (=> b!4004148 (=> (not res!1627145) (not e!2483143))))

(assert (=> b!4004148 (= res!1627145 (= (head!8509 (tail!6241 prefix!494)) (head!8509 (tail!6241 lt!1416044))))))

(declare-fun b!4004150 () Bool)

(declare-fun e!2483145 () Bool)

(assert (=> b!4004150 (= e!2483145 (>= (size!32050 (tail!6241 lt!1416044)) (size!32050 (tail!6241 prefix!494))))))

(declare-fun d!1184297 () Bool)

(assert (=> d!1184297 e!2483145))

(declare-fun res!1627144 () Bool)

(assert (=> d!1184297 (=> res!1627144 e!2483145)))

(declare-fun lt!1416244 () Bool)

(assert (=> d!1184297 (= res!1627144 (not lt!1416244))))

(assert (=> d!1184297 (= lt!1416244 e!2483144)))

(declare-fun res!1627147 () Bool)

(assert (=> d!1184297 (=> res!1627147 e!2483144)))

(assert (=> d!1184297 (= res!1627147 ((_ is Nil!42868) (tail!6241 prefix!494)))))

(assert (=> d!1184297 (= (isPrefix!3899 (tail!6241 prefix!494) (tail!6241 lt!1416044)) lt!1416244)))

(assert (= (and d!1184297 (not res!1627147)) b!4004147))

(assert (= (and b!4004147 res!1627146) b!4004148))

(assert (= (and b!4004148 res!1627145) b!4004149))

(assert (= (and d!1184297 (not res!1627144)) b!4004150))

(assert (=> b!4004149 m!4586155))

(declare-fun m!4586867 () Bool)

(assert (=> b!4004149 m!4586867))

(assert (=> b!4004149 m!4586157))

(declare-fun m!4586869 () Bool)

(assert (=> b!4004149 m!4586869))

(assert (=> b!4004149 m!4586867))

(assert (=> b!4004149 m!4586869))

(declare-fun m!4586871 () Bool)

(assert (=> b!4004149 m!4586871))

(assert (=> b!4004148 m!4586155))

(declare-fun m!4586873 () Bool)

(assert (=> b!4004148 m!4586873))

(assert (=> b!4004148 m!4586157))

(declare-fun m!4586875 () Bool)

(assert (=> b!4004148 m!4586875))

(assert (=> b!4004150 m!4586157))

(declare-fun m!4586877 () Bool)

(assert (=> b!4004150 m!4586877))

(assert (=> b!4004150 m!4586155))

(declare-fun m!4586879 () Bool)

(assert (=> b!4004150 m!4586879))

(assert (=> b!4003603 d!1184297))

(declare-fun d!1184299 () Bool)

(assert (=> d!1184299 (= (tail!6241 prefix!494) (t!332333 prefix!494))))

(assert (=> b!4003603 d!1184299))

(declare-fun d!1184301 () Bool)

(assert (=> d!1184301 (= (tail!6241 lt!1416044) (t!332333 lt!1416044))))

(assert (=> b!4003603 d!1184301))

(declare-fun d!1184303 () Bool)

(declare-fun e!2483147 () Bool)

(assert (=> d!1184303 e!2483147))

(declare-fun res!1627149 () Bool)

(assert (=> d!1184303 (=> (not res!1627149) (not e!2483147))))

(declare-fun lt!1416245 () List!42992)

(assert (=> d!1184303 (= res!1627149 (= (content!6496 lt!1416245) ((_ map or) (content!6496 (t!332333 prefix!494)) (content!6496 suffix!1299))))))

(declare-fun e!2483146 () List!42992)

(assert (=> d!1184303 (= lt!1416245 e!2483146)))

(declare-fun c!692326 () Bool)

(assert (=> d!1184303 (= c!692326 ((_ is Nil!42868) (t!332333 prefix!494)))))

(assert (=> d!1184303 (= (++!11214 (t!332333 prefix!494) suffix!1299) lt!1416245)))

(declare-fun b!4004154 () Bool)

(assert (=> b!4004154 (= e!2483147 (or (not (= suffix!1299 Nil!42868)) (= lt!1416245 (t!332333 prefix!494))))))

(declare-fun b!4004152 () Bool)

(assert (=> b!4004152 (= e!2483146 (Cons!42868 (h!48288 (t!332333 prefix!494)) (++!11214 (t!332333 (t!332333 prefix!494)) suffix!1299)))))

(declare-fun b!4004151 () Bool)

(assert (=> b!4004151 (= e!2483146 suffix!1299)))

(declare-fun b!4004153 () Bool)

(declare-fun res!1627148 () Bool)

(assert (=> b!4004153 (=> (not res!1627148) (not e!2483147))))

(assert (=> b!4004153 (= res!1627148 (= (size!32050 lt!1416245) (+ (size!32050 (t!332333 prefix!494)) (size!32050 suffix!1299))))))

(assert (= (and d!1184303 c!692326) b!4004151))

(assert (= (and d!1184303 (not c!692326)) b!4004152))

(assert (= (and d!1184303 res!1627149) b!4004153))

(assert (= (and b!4004153 res!1627148) b!4004154))

(declare-fun m!4586881 () Bool)

(assert (=> d!1184303 m!4586881))

(declare-fun m!4586883 () Bool)

(assert (=> d!1184303 m!4586883))

(assert (=> d!1184303 m!4586515))

(declare-fun m!4586885 () Bool)

(assert (=> b!4004152 m!4586885))

(declare-fun m!4586887 () Bool)

(assert (=> b!4004153 m!4586887))

(assert (=> b!4004153 m!4586203))

(assert (=> b!4004153 m!4586031))

(assert (=> b!4003888 d!1184303))

(declare-fun b!4004155 () Bool)

(declare-fun e!2483149 () Bool)

(assert (=> b!4004155 (= e!2483149 (inv!16 (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 lt!1416025))))))

(declare-fun b!4004156 () Bool)

(declare-fun e!2483148 () Bool)

(assert (=> b!4004156 (= e!2483149 e!2483148)))

(declare-fun c!692327 () Bool)

(assert (=> b!4004156 (= c!692327 ((_ is IntegerValue!21127) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 lt!1416025))))))

(declare-fun b!4004157 () Bool)

(declare-fun e!2483150 () Bool)

(assert (=> b!4004157 (= e!2483150 (inv!15 (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 lt!1416025))))))

(declare-fun b!4004158 () Bool)

(assert (=> b!4004158 (= e!2483148 (inv!17 (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 lt!1416025))))))

(declare-fun b!4004159 () Bool)

(declare-fun res!1627150 () Bool)

(assert (=> b!4004159 (=> res!1627150 e!2483150)))

(assert (=> b!4004159 (= res!1627150 (not ((_ is IntegerValue!21128) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 lt!1416025)))))))

(assert (=> b!4004159 (= e!2483148 e!2483150)))

(declare-fun d!1184305 () Bool)

(declare-fun c!692328 () Bool)

(assert (=> d!1184305 (= c!692328 ((_ is IntegerValue!21126) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 lt!1416025))))))

(assert (=> d!1184305 (= (inv!21 (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 lt!1416025))) e!2483149)))

(assert (= (and d!1184305 c!692328) b!4004155))

(assert (= (and d!1184305 (not c!692328)) b!4004156))

(assert (= (and b!4004156 c!692327) b!4004158))

(assert (= (and b!4004156 (not c!692327)) b!4004159))

(assert (= (and b!4004159 (not res!1627150)) b!4004157))

(declare-fun m!4586889 () Bool)

(assert (=> b!4004155 m!4586889))

(declare-fun m!4586891 () Bool)

(assert (=> b!4004157 m!4586891))

(declare-fun m!4586893 () Bool)

(assert (=> b!4004158 m!4586893))

(assert (=> tb!240617 d!1184305))

(declare-fun d!1184307 () Bool)

(assert (=> d!1184307 (= (isEmpty!25611 (originalCharacters!7412 token!484)) ((_ is Nil!42868) (originalCharacters!7412 token!484)))))

(assert (=> d!1184069 d!1184307))

(declare-fun b!4004188 () Bool)

(declare-fun e!2483170 () Bool)

(declare-fun e!2483168 () Bool)

(assert (=> b!4004188 (= e!2483170 e!2483168)))

(declare-fun res!1627171 () Bool)

(assert (=> b!4004188 (=> (not res!1627171) (not e!2483168))))

(declare-fun lt!1416248 () Bool)

(assert (=> b!4004188 (= res!1627171 (not lt!1416248))))

(declare-fun b!4004189 () Bool)

(declare-fun res!1627172 () Bool)

(assert (=> b!4004189 (=> res!1627172 e!2483170)))

(declare-fun e!2483167 () Bool)

(assert (=> b!4004189 (= res!1627172 e!2483167)))

(declare-fun res!1627174 () Bool)

(assert (=> b!4004189 (=> (not res!1627174) (not e!2483167))))

(assert (=> b!4004189 (= res!1627174 lt!1416248)))

(declare-fun b!4004190 () Bool)

(declare-fun e!2483171 () Bool)

(assert (=> b!4004190 (= e!2483171 (not (= (head!8509 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))) (c!692249 (regex!6812 (rule!9846 token!484))))))))

(declare-fun b!4004191 () Bool)

(declare-fun e!2483169 () Bool)

(assert (=> b!4004191 (= e!2483169 (nullable!4107 (regex!6812 (rule!9846 token!484))))))

(declare-fun b!4004192 () Bool)

(declare-fun res!1627169 () Bool)

(assert (=> b!4004192 (=> (not res!1627169) (not e!2483167))))

(assert (=> b!4004192 (= res!1627169 (isEmpty!25611 (tail!6241 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044))))))))

(declare-fun b!4004193 () Bool)

(declare-fun res!1627167 () Bool)

(assert (=> b!4004193 (=> res!1627167 e!2483170)))

(assert (=> b!4004193 (= res!1627167 (not ((_ is ElementMatch!11717) (regex!6812 (rule!9846 token!484)))))))

(declare-fun e!2483166 () Bool)

(assert (=> b!4004193 (= e!2483166 e!2483170)))

(declare-fun b!4004194 () Bool)

(declare-fun derivativeStep!3517 (Regex!11717 C!23620) Regex!11717)

(assert (=> b!4004194 (= e!2483169 (matchR!5680 (derivativeStep!3517 (regex!6812 (rule!9846 token!484)) (head!8509 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044))))) (tail!6241 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044))))))))

(declare-fun b!4004195 () Bool)

(declare-fun res!1627173 () Bool)

(assert (=> b!4004195 (=> (not res!1627173) (not e!2483167))))

(declare-fun call!286034 () Bool)

(assert (=> b!4004195 (= res!1627173 (not call!286034))))

(declare-fun b!4004196 () Bool)

(assert (=> b!4004196 (= e!2483166 (not lt!1416248))))

(declare-fun b!4004197 () Bool)

(assert (=> b!4004197 (= e!2483167 (= (head!8509 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))) (c!692249 (regex!6812 (rule!9846 token!484)))))))

(declare-fun b!4004198 () Bool)

(assert (=> b!4004198 (= e!2483168 e!2483171)))

(declare-fun res!1627170 () Bool)

(assert (=> b!4004198 (=> res!1627170 e!2483171)))

(assert (=> b!4004198 (= res!1627170 call!286034)))

(declare-fun b!4004199 () Bool)

(declare-fun e!2483165 () Bool)

(assert (=> b!4004199 (= e!2483165 e!2483166)))

(declare-fun c!692336 () Bool)

(assert (=> b!4004199 (= c!692336 ((_ is EmptyLang!11717) (regex!6812 (rule!9846 token!484))))))

(declare-fun b!4004200 () Bool)

(declare-fun res!1627168 () Bool)

(assert (=> b!4004200 (=> res!1627168 e!2483171)))

(assert (=> b!4004200 (= res!1627168 (not (isEmpty!25611 (tail!6241 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))))

(declare-fun b!4004201 () Bool)

(assert (=> b!4004201 (= e!2483165 (= lt!1416248 call!286034))))

(declare-fun d!1184309 () Bool)

(assert (=> d!1184309 e!2483165))

(declare-fun c!692335 () Bool)

(assert (=> d!1184309 (= c!692335 ((_ is EmptyExpr!11717) (regex!6812 (rule!9846 token!484))))))

(assert (=> d!1184309 (= lt!1416248 e!2483169)))

(declare-fun c!692337 () Bool)

(assert (=> d!1184309 (= c!692337 (isEmpty!25611 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))

(assert (=> d!1184309 (validRegex!5307 (regex!6812 (rule!9846 token!484)))))

(assert (=> d!1184309 (= (matchR!5680 (regex!6812 (rule!9846 token!484)) (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))) lt!1416248)))

(declare-fun bm!286029 () Bool)

(assert (=> bm!286029 (= call!286034 (isEmpty!25611 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))

(assert (= (and d!1184309 c!692337) b!4004191))

(assert (= (and d!1184309 (not c!692337)) b!4004194))

(assert (= (and d!1184309 c!692335) b!4004201))

(assert (= (and d!1184309 (not c!692335)) b!4004199))

(assert (= (and b!4004199 c!692336) b!4004196))

(assert (= (and b!4004199 (not c!692336)) b!4004193))

(assert (= (and b!4004193 (not res!1627167)) b!4004189))

(assert (= (and b!4004189 res!1627174) b!4004195))

(assert (= (and b!4004195 res!1627173) b!4004192))

(assert (= (and b!4004192 res!1627169) b!4004197))

(assert (= (and b!4004189 (not res!1627172)) b!4004188))

(assert (= (and b!4004188 res!1627171) b!4004198))

(assert (= (and b!4004198 (not res!1627170)) b!4004200))

(assert (= (and b!4004200 (not res!1627168)) b!4004190))

(assert (= (or b!4004201 b!4004195 b!4004198) bm!286029))

(assert (=> d!1184309 m!4586569))

(assert (=> d!1184309 m!4586297))

(declare-fun m!4586895 () Bool)

(assert (=> b!4004190 m!4586895))

(declare-fun m!4586897 () Bool)

(assert (=> b!4004192 m!4586897))

(assert (=> b!4004192 m!4586897))

(declare-fun m!4586899 () Bool)

(assert (=> b!4004192 m!4586899))

(assert (=> b!4004194 m!4586895))

(assert (=> b!4004194 m!4586895))

(declare-fun m!4586901 () Bool)

(assert (=> b!4004194 m!4586901))

(assert (=> b!4004194 m!4586897))

(assert (=> b!4004194 m!4586901))

(assert (=> b!4004194 m!4586897))

(declare-fun m!4586903 () Bool)

(assert (=> b!4004194 m!4586903))

(assert (=> bm!286029 m!4586569))

(assert (=> b!4004200 m!4586897))

(assert (=> b!4004200 m!4586897))

(assert (=> b!4004200 m!4586899))

(assert (=> b!4004191 m!4586299))

(assert (=> b!4004197 m!4586895))

(assert (=> b!4003930 d!1184309))

(declare-fun b!4004338 () Bool)

(declare-fun c!692389 () Bool)

(declare-fun call!286076 () Bool)

(assert (=> b!4004338 (= c!692389 call!286076)))

(declare-fun lt!1416430 () Unit!61858)

(declare-fun lt!1416425 () Unit!61858)

(assert (=> b!4004338 (= lt!1416430 lt!1416425)))

(assert (=> b!4004338 (= lt!1416044 Nil!42868)))

(declare-fun call!286081 () Unit!61858)

(assert (=> b!4004338 (= lt!1416425 call!286081)))

(declare-fun lt!1416412 () Unit!61858)

(declare-fun lt!1416434 () Unit!61858)

(assert (=> b!4004338 (= lt!1416412 lt!1416434)))

(declare-fun call!286082 () Bool)

(assert (=> b!4004338 call!286082))

(declare-fun call!286083 () Unit!61858)

(assert (=> b!4004338 (= lt!1416434 call!286083)))

(declare-fun e!2483254 () tuple2!42030)

(declare-fun e!2483255 () tuple2!42030)

(assert (=> b!4004338 (= e!2483254 e!2483255)))

(declare-fun bm!286071 () Bool)

(declare-fun lt!1416416 () List!42992)

(declare-fun call!286079 () Regex!11717)

(declare-fun call!286077 () List!42992)

(declare-fun call!286078 () tuple2!42030)

(assert (=> bm!286071 (= call!286078 (findLongestMatchInner!1349 call!286079 lt!1416416 (+ (size!32050 Nil!42868) 1) call!286077 lt!1416044 (size!32050 lt!1416044)))))

(declare-fun b!4004339 () Bool)

(declare-fun e!2483256 () Unit!61858)

(declare-fun Unit!61865 () Unit!61858)

(assert (=> b!4004339 (= e!2483256 Unit!61865)))

(declare-fun lt!1416429 () Unit!61858)

(assert (=> b!4004339 (= lt!1416429 call!286083)))

(assert (=> b!4004339 call!286082))

(declare-fun lt!1416436 () Unit!61858)

(assert (=> b!4004339 (= lt!1416436 lt!1416429)))

(declare-fun lt!1416428 () Unit!61858)

(assert (=> b!4004339 (= lt!1416428 call!286081)))

(assert (=> b!4004339 (= lt!1416044 Nil!42868)))

(declare-fun lt!1416413 () Unit!61858)

(assert (=> b!4004339 (= lt!1416413 lt!1416428)))

(assert (=> b!4004339 false))

(declare-fun b!4004340 () Bool)

(declare-fun e!2483253 () tuple2!42030)

(assert (=> b!4004340 (= e!2483253 (tuple2!42031 Nil!42868 lt!1416044))))

(declare-fun b!4004341 () Bool)

(declare-fun Unit!61866 () Unit!61858)

(assert (=> b!4004341 (= e!2483256 Unit!61866)))

(declare-fun d!1184311 () Bool)

(declare-fun e!2483252 () Bool)

(assert (=> d!1184311 e!2483252))

(declare-fun res!1627213 () Bool)

(assert (=> d!1184311 (=> (not res!1627213) (not e!2483252))))

(declare-fun lt!1416411 () tuple2!42030)

(assert (=> d!1184311 (= res!1627213 (= (++!11214 (_1!24149 lt!1416411) (_2!24149 lt!1416411)) lt!1416044))))

(assert (=> d!1184311 (= lt!1416411 e!2483253)))

(declare-fun c!692392 () Bool)

(declare-fun lostCause!993 (Regex!11717) Bool)

(assert (=> d!1184311 (= c!692392 (lostCause!993 (regex!6812 (rule!9846 token!484))))))

(declare-fun lt!1416437 () Unit!61858)

(declare-fun Unit!61867 () Unit!61858)

(assert (=> d!1184311 (= lt!1416437 Unit!61867)))

(assert (=> d!1184311 (= (getSuffix!2324 lt!1416044 Nil!42868) lt!1416044)))

(declare-fun lt!1416432 () Unit!61858)

(declare-fun lt!1416427 () Unit!61858)

(assert (=> d!1184311 (= lt!1416432 lt!1416427)))

(declare-fun lt!1416433 () List!42992)

(assert (=> d!1184311 (= lt!1416044 lt!1416433)))

(assert (=> d!1184311 (= lt!1416427 (lemmaSamePrefixThenSameSuffix!2070 Nil!42868 lt!1416044 Nil!42868 lt!1416433 lt!1416044))))

(assert (=> d!1184311 (= lt!1416433 (getSuffix!2324 lt!1416044 Nil!42868))))

(declare-fun lt!1416417 () Unit!61858)

(declare-fun lt!1416422 () Unit!61858)

(assert (=> d!1184311 (= lt!1416417 lt!1416422)))

(assert (=> d!1184311 (isPrefix!3899 Nil!42868 (++!11214 Nil!42868 lt!1416044))))

(assert (=> d!1184311 (= lt!1416422 (lemmaConcatTwoListThenFirstIsPrefix!2740 Nil!42868 lt!1416044))))

(assert (=> d!1184311 (validRegex!5307 (regex!6812 (rule!9846 token!484)))))

(assert (=> d!1184311 (= (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)) lt!1416411)))

(declare-fun bm!286072 () Bool)

(assert (=> bm!286072 (= call!286077 (tail!6241 lt!1416044))))

(declare-fun b!4004342 () Bool)

(declare-fun e!2483257 () tuple2!42030)

(assert (=> b!4004342 (= e!2483257 call!286078)))

(declare-fun bm!286073 () Bool)

(assert (=> bm!286073 (= call!286076 (nullable!4107 (regex!6812 (rule!9846 token!484))))))

(declare-fun b!4004343 () Bool)

(assert (=> b!4004343 (= e!2483253 e!2483254)))

(declare-fun c!692390 () Bool)

(assert (=> b!4004343 (= c!692390 (= (size!32050 Nil!42868) (size!32050 lt!1416044)))))

(declare-fun b!4004344 () Bool)

(declare-fun e!2483258 () tuple2!42030)

(assert (=> b!4004344 (= e!2483258 (tuple2!42031 Nil!42868 lt!1416044))))

(declare-fun b!4004345 () Bool)

(assert (=> b!4004345 (= e!2483255 (tuple2!42031 Nil!42868 lt!1416044))))

(declare-fun b!4004346 () Bool)

(assert (=> b!4004346 (= e!2483257 e!2483258)))

(declare-fun lt!1416420 () tuple2!42030)

(assert (=> b!4004346 (= lt!1416420 call!286078)))

(declare-fun c!692388 () Bool)

(assert (=> b!4004346 (= c!692388 (isEmpty!25611 (_1!24149 lt!1416420)))))

(declare-fun bm!286074 () Bool)

(declare-fun call!286080 () C!23620)

(assert (=> bm!286074 (= call!286080 (head!8509 lt!1416044))))

(declare-fun bm!286075 () Bool)

(assert (=> bm!286075 (= call!286082 (isPrefix!3899 lt!1416044 lt!1416044))))

(declare-fun bm!286076 () Bool)

(assert (=> bm!286076 (= call!286083 (lemmaIsPrefixRefl!2477 lt!1416044 lt!1416044))))

(declare-fun b!4004347 () Bool)

(declare-fun c!692393 () Bool)

(assert (=> b!4004347 (= c!692393 call!286076)))

(declare-fun lt!1416410 () Unit!61858)

(declare-fun lt!1416424 () Unit!61858)

(assert (=> b!4004347 (= lt!1416410 lt!1416424)))

(declare-fun lt!1416418 () C!23620)

(declare-fun lt!1416421 () List!42992)

(assert (=> b!4004347 (= (++!11214 (++!11214 Nil!42868 (Cons!42868 lt!1416418 Nil!42868)) lt!1416421) lt!1416044)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1237 (List!42992 C!23620 List!42992 List!42992) Unit!61858)

(assert (=> b!4004347 (= lt!1416424 (lemmaMoveElementToOtherListKeepsConcatEq!1237 Nil!42868 lt!1416418 lt!1416421 lt!1416044))))

(assert (=> b!4004347 (= lt!1416421 (tail!6241 lt!1416044))))

(assert (=> b!4004347 (= lt!1416418 (head!8509 lt!1416044))))

(declare-fun lt!1416419 () Unit!61858)

(declare-fun lt!1416426 () Unit!61858)

(assert (=> b!4004347 (= lt!1416419 lt!1416426)))

(assert (=> b!4004347 (isPrefix!3899 (++!11214 Nil!42868 (Cons!42868 (head!8509 (getSuffix!2324 lt!1416044 Nil!42868)) Nil!42868)) lt!1416044)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!619 (List!42992 List!42992) Unit!61858)

(assert (=> b!4004347 (= lt!1416426 (lemmaAddHeadSuffixToPrefixStillPrefix!619 Nil!42868 lt!1416044))))

(declare-fun lt!1416435 () Unit!61858)

(declare-fun lt!1416415 () Unit!61858)

(assert (=> b!4004347 (= lt!1416435 lt!1416415)))

(assert (=> b!4004347 (= lt!1416415 (lemmaAddHeadSuffixToPrefixStillPrefix!619 Nil!42868 lt!1416044))))

(assert (=> b!4004347 (= lt!1416416 (++!11214 Nil!42868 (Cons!42868 (head!8509 lt!1416044) Nil!42868)))))

(declare-fun lt!1416414 () Unit!61858)

(assert (=> b!4004347 (= lt!1416414 e!2483256)))

(declare-fun c!692391 () Bool)

(assert (=> b!4004347 (= c!692391 (= (size!32050 Nil!42868) (size!32050 lt!1416044)))))

(declare-fun lt!1416423 () Unit!61858)

(declare-fun lt!1416431 () Unit!61858)

(assert (=> b!4004347 (= lt!1416423 lt!1416431)))

(assert (=> b!4004347 (<= (size!32050 Nil!42868) (size!32050 lt!1416044))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!427 (List!42992 List!42992) Unit!61858)

(assert (=> b!4004347 (= lt!1416431 (lemmaIsPrefixThenSmallerEqSize!427 Nil!42868 lt!1416044))))

(assert (=> b!4004347 (= e!2483254 e!2483257)))

(declare-fun b!4004348 () Bool)

(declare-fun e!2483251 () Bool)

(assert (=> b!4004348 (= e!2483252 e!2483251)))

(declare-fun res!1627214 () Bool)

(assert (=> b!4004348 (=> res!1627214 e!2483251)))

(assert (=> b!4004348 (= res!1627214 (isEmpty!25611 (_1!24149 lt!1416411)))))

(declare-fun b!4004349 () Bool)

(assert (=> b!4004349 (= e!2483258 lt!1416420)))

(declare-fun bm!286077 () Bool)

(assert (=> bm!286077 (= call!286079 (derivativeStep!3517 (regex!6812 (rule!9846 token!484)) call!286080))))

(declare-fun b!4004350 () Bool)

(assert (=> b!4004350 (= e!2483251 (>= (size!32050 (_1!24149 lt!1416411)) (size!32050 Nil!42868)))))

(declare-fun bm!286078 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!895 (List!42992 List!42992 List!42992) Unit!61858)

(assert (=> bm!286078 (= call!286081 (lemmaIsPrefixSameLengthThenSameList!895 lt!1416044 Nil!42868 lt!1416044))))

(declare-fun b!4004351 () Bool)

(assert (=> b!4004351 (= e!2483255 (tuple2!42031 Nil!42868 Nil!42868))))

(assert (= (and d!1184311 c!692392) b!4004340))

(assert (= (and d!1184311 (not c!692392)) b!4004343))

(assert (= (and b!4004343 c!692390) b!4004338))

(assert (= (and b!4004343 (not c!692390)) b!4004347))

(assert (= (and b!4004338 c!692389) b!4004351))

(assert (= (and b!4004338 (not c!692389)) b!4004345))

(assert (= (and b!4004347 c!692391) b!4004339))

(assert (= (and b!4004347 (not c!692391)) b!4004341))

(assert (= (and b!4004347 c!692393) b!4004346))

(assert (= (and b!4004347 (not c!692393)) b!4004342))

(assert (= (and b!4004346 c!692388) b!4004344))

(assert (= (and b!4004346 (not c!692388)) b!4004349))

(assert (= (or b!4004346 b!4004342) bm!286074))

(assert (= (or b!4004346 b!4004342) bm!286072))

(assert (= (or b!4004346 b!4004342) bm!286077))

(assert (= (or b!4004346 b!4004342) bm!286071))

(assert (= (or b!4004338 b!4004339) bm!286075))

(assert (= (or b!4004338 b!4004347) bm!286073))

(assert (= (or b!4004338 b!4004339) bm!286078))

(assert (= (or b!4004338 b!4004339) bm!286076))

(assert (= (and d!1184311 res!1627213) b!4004348))

(assert (= (and b!4004348 (not res!1627214)) b!4004350))

(declare-fun m!4587087 () Bool)

(assert (=> b!4004348 m!4587087))

(assert (=> b!4004347 m!4586163))

(declare-fun m!4587089 () Bool)

(assert (=> b!4004347 m!4587089))

(declare-fun m!4587091 () Bool)

(assert (=> b!4004347 m!4587091))

(declare-fun m!4587093 () Bool)

(assert (=> b!4004347 m!4587093))

(declare-fun m!4587095 () Bool)

(assert (=> b!4004347 m!4587095))

(declare-fun m!4587099 () Bool)

(assert (=> b!4004347 m!4587099))

(assert (=> b!4004347 m!4587089))

(declare-fun m!4587103 () Bool)

(assert (=> b!4004347 m!4587103))

(declare-fun m!4587105 () Bool)

(assert (=> b!4004347 m!4587105))

(assert (=> b!4004347 m!4586165))

(assert (=> b!4004347 m!4587093))

(assert (=> b!4004347 m!4587103))

(assert (=> b!4004347 m!4586157))

(declare-fun m!4587107 () Bool)

(assert (=> b!4004347 m!4587107))

(declare-fun m!4587111 () Bool)

(assert (=> b!4004347 m!4587111))

(declare-fun m!4587113 () Bool)

(assert (=> b!4004347 m!4587113))

(assert (=> b!4004347 m!4586573))

(declare-fun m!4587117 () Bool)

(assert (=> b!4004350 m!4587117))

(assert (=> b!4004350 m!4586573))

(declare-fun m!4587119 () Bool)

(assert (=> bm!286077 m!4587119))

(declare-fun m!4587121 () Bool)

(assert (=> d!1184311 m!4587121))

(declare-fun m!4587123 () Bool)

(assert (=> d!1184311 m!4587123))

(declare-fun m!4587125 () Bool)

(assert (=> d!1184311 m!4587125))

(assert (=> d!1184311 m!4587125))

(declare-fun m!4587127 () Bool)

(assert (=> d!1184311 m!4587127))

(declare-fun m!4587129 () Bool)

(assert (=> d!1184311 m!4587129))

(assert (=> d!1184311 m!4587093))

(declare-fun m!4587131 () Bool)

(assert (=> d!1184311 m!4587131))

(assert (=> d!1184311 m!4586297))

(assert (=> bm!286075 m!4586497))

(assert (=> bm!286073 m!4586299))

(declare-fun m!4587137 () Bool)

(assert (=> b!4004346 m!4587137))

(assert (=> bm!286071 m!4586165))

(declare-fun m!4587139 () Bool)

(assert (=> bm!286071 m!4587139))

(assert (=> bm!286074 m!4586163))

(declare-fun m!4587141 () Bool)

(assert (=> bm!286078 m!4587141))

(assert (=> bm!286076 m!4586499))

(assert (=> bm!286072 m!4586157))

(assert (=> b!4003930 d!1184311))

(declare-fun d!1184397 () Bool)

(declare-fun lt!1416442 () Int)

(assert (=> d!1184397 (>= lt!1416442 0)))

(declare-fun e!2483268 () Int)

(assert (=> d!1184397 (= lt!1416442 e!2483268)))

(declare-fun c!692399 () Bool)

(assert (=> d!1184397 (= c!692399 ((_ is Nil!42868) Nil!42868))))

(assert (=> d!1184397 (= (size!32050 Nil!42868) lt!1416442)))

(declare-fun b!4004369 () Bool)

(assert (=> b!4004369 (= e!2483268 0)))

(declare-fun b!4004370 () Bool)

(assert (=> b!4004370 (= e!2483268 (+ 1 (size!32050 (t!332333 Nil!42868))))))

(assert (= (and d!1184397 c!692399) b!4004369))

(assert (= (and d!1184397 (not c!692399)) b!4004370))

(declare-fun m!4587149 () Bool)

(assert (=> b!4004370 m!4587149))

(assert (=> b!4003930 d!1184397))

(declare-fun d!1184401 () Bool)

(declare-fun lt!1416443 () Int)

(assert (=> d!1184401 (>= lt!1416443 0)))

(declare-fun e!2483269 () Int)

(assert (=> d!1184401 (= lt!1416443 e!2483269)))

(declare-fun c!692400 () Bool)

(assert (=> d!1184401 (= c!692400 ((_ is Nil!42868) lt!1416044))))

(assert (=> d!1184401 (= (size!32050 lt!1416044) lt!1416443)))

(declare-fun b!4004371 () Bool)

(assert (=> b!4004371 (= e!2483269 0)))

(declare-fun b!4004372 () Bool)

(assert (=> b!4004372 (= e!2483269 (+ 1 (size!32050 (t!332333 lt!1416044))))))

(assert (= (and d!1184401 c!692400) b!4004371))

(assert (= (and d!1184401 (not c!692400)) b!4004372))

(declare-fun m!4587159 () Bool)

(assert (=> b!4004372 m!4587159))

(assert (=> b!4003930 d!1184401))

(declare-fun b!4004379 () Bool)

(declare-fun e!2483272 () Bool)

(assert (=> b!4004379 (= e!2483272 (isPrefix!3899 (tail!6241 (tail!6241 lt!1416025)) (tail!6241 (tail!6241 prefix!494))))))

(declare-fun b!4004377 () Bool)

(declare-fun e!2483273 () Bool)

(assert (=> b!4004377 (= e!2483273 e!2483272)))

(declare-fun res!1627225 () Bool)

(assert (=> b!4004377 (=> (not res!1627225) (not e!2483272))))

(assert (=> b!4004377 (= res!1627225 (not ((_ is Nil!42868) (tail!6241 prefix!494))))))

(declare-fun b!4004378 () Bool)

(declare-fun res!1627224 () Bool)

(assert (=> b!4004378 (=> (not res!1627224) (not e!2483272))))

(assert (=> b!4004378 (= res!1627224 (= (head!8509 (tail!6241 lt!1416025)) (head!8509 (tail!6241 prefix!494))))))

(declare-fun b!4004380 () Bool)

(declare-fun e!2483274 () Bool)

(assert (=> b!4004380 (= e!2483274 (>= (size!32050 (tail!6241 prefix!494)) (size!32050 (tail!6241 lt!1416025))))))

(declare-fun d!1184405 () Bool)

(assert (=> d!1184405 e!2483274))

(declare-fun res!1627223 () Bool)

(assert (=> d!1184405 (=> res!1627223 e!2483274)))

(declare-fun lt!1416445 () Bool)

(assert (=> d!1184405 (= res!1627223 (not lt!1416445))))

(assert (=> d!1184405 (= lt!1416445 e!2483273)))

(declare-fun res!1627226 () Bool)

(assert (=> d!1184405 (=> res!1627226 e!2483273)))

(assert (=> d!1184405 (= res!1627226 ((_ is Nil!42868) (tail!6241 lt!1416025)))))

(assert (=> d!1184405 (= (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 prefix!494)) lt!1416445)))

(assert (= (and d!1184405 (not res!1627226)) b!4004377))

(assert (= (and b!4004377 res!1627225) b!4004378))

(assert (= (and b!4004378 res!1627224) b!4004379))

(assert (= (and d!1184405 (not res!1627223)) b!4004380))

(assert (=> b!4004379 m!4586167))

(declare-fun m!4587167 () Bool)

(assert (=> b!4004379 m!4587167))

(assert (=> b!4004379 m!4586155))

(assert (=> b!4004379 m!4586867))

(assert (=> b!4004379 m!4587167))

(assert (=> b!4004379 m!4586867))

(declare-fun m!4587169 () Bool)

(assert (=> b!4004379 m!4587169))

(assert (=> b!4004378 m!4586167))

(declare-fun m!4587171 () Bool)

(assert (=> b!4004378 m!4587171))

(assert (=> b!4004378 m!4586155))

(assert (=> b!4004378 m!4586873))

(assert (=> b!4004380 m!4586155))

(assert (=> b!4004380 m!4586879))

(assert (=> b!4004380 m!4586167))

(declare-fun m!4587173 () Bool)

(assert (=> b!4004380 m!4587173))

(assert (=> b!4003974 d!1184405))

(declare-fun d!1184409 () Bool)

(assert (=> d!1184409 (= (tail!6241 lt!1416025) (t!332333 lt!1416025))))

(assert (=> b!4003974 d!1184409))

(assert (=> b!4003974 d!1184299))

(declare-fun d!1184411 () Bool)

(declare-fun charsToInt!0 (List!42993) (_ BitVec 32))

(assert (=> d!1184411 (= (inv!16 (value!214776 token!484)) (= (charsToInt!0 (text!49741 (value!214776 token!484))) (value!214767 (value!214776 token!484))))))

(declare-fun bs!588954 () Bool)

(assert (= bs!588954 d!1184411))

(declare-fun m!4587175 () Bool)

(assert (=> bs!588954 m!4587175))

(assert (=> b!4003957 d!1184411))

(declare-fun d!1184413 () Bool)

(declare-fun lt!1416446 () Int)

(assert (=> d!1184413 (>= lt!1416446 0)))

(declare-fun e!2483279 () Int)

(assert (=> d!1184413 (= lt!1416446 e!2483279)))

(declare-fun c!692402 () Bool)

(assert (=> d!1184413 (= c!692402 ((_ is Nil!42868) lt!1416192))))

(assert (=> d!1184413 (= (size!32050 lt!1416192) lt!1416446)))

(declare-fun b!4004385 () Bool)

(assert (=> b!4004385 (= e!2483279 0)))

(declare-fun b!4004386 () Bool)

(assert (=> b!4004386 (= e!2483279 (+ 1 (size!32050 (t!332333 lt!1416192))))))

(assert (= (and d!1184413 c!692402) b!4004385))

(assert (= (and d!1184413 (not c!692402)) b!4004386))

(declare-fun m!4587177 () Bool)

(assert (=> b!4004386 m!4587177))

(assert (=> b!4003964 d!1184413))

(assert (=> b!4003964 d!1184073))

(declare-fun d!1184415 () Bool)

(declare-fun lt!1416447 () Int)

(assert (=> d!1184415 (>= lt!1416447 0)))

(declare-fun e!2483280 () Int)

(assert (=> d!1184415 (= lt!1416447 e!2483280)))

(declare-fun c!692403 () Bool)

(assert (=> d!1184415 (= c!692403 ((_ is Nil!42868) lt!1416031))))

(assert (=> d!1184415 (= (size!32050 lt!1416031) lt!1416447)))

(declare-fun b!4004387 () Bool)

(assert (=> b!4004387 (= e!2483280 0)))

(declare-fun b!4004388 () Bool)

(assert (=> b!4004388 (= e!2483280 (+ 1 (size!32050 (t!332333 lt!1416031))))))

(assert (= (and d!1184415 c!692403) b!4004387))

(assert (= (and d!1184415 (not c!692403)) b!4004388))

(declare-fun m!4587179 () Bool)

(assert (=> b!4004388 m!4587179))

(assert (=> b!4003964 d!1184415))

(declare-fun d!1184417 () Bool)

(assert (=> d!1184417 (= lt!1416039 suffixResult!105)))

(assert (=> d!1184417 true))

(declare-fun _$63!1028 () Unit!61858)

(assert (=> d!1184417 (= (choose!24159 lt!1416025 lt!1416039 lt!1416025 suffixResult!105 lt!1416044) _$63!1028)))

(assert (=> d!1184185 d!1184417))

(assert (=> d!1184185 d!1184063))

(declare-fun d!1184419 () Bool)

(assert (=> d!1184419 (= (get!14090 lt!1416178) (v!39587 lt!1416178))))

(assert (=> b!4003926 d!1184419))

(declare-fun d!1184421 () Bool)

(assert (=> d!1184421 (= (apply!10009 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178))))) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178))))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178))))))))

(declare-fun b_lambda!116791 () Bool)

(assert (=> (not b_lambda!116791) (not d!1184421)))

(declare-fun t!332381 () Bool)

(declare-fun tb!240643 () Bool)

(assert (=> (and b!4003572 (= (toValue!9304 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))))) t!332381) tb!240643))

(declare-fun result!291684 () Bool)

(assert (=> tb!240643 (= result!291684 (inv!21 (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178))))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178)))))))))

(declare-fun m!4587193 () Bool)

(assert (=> tb!240643 m!4587193))

(assert (=> d!1184421 t!332381))

(declare-fun b_and!307519 () Bool)

(assert (= b_and!307487 (and (=> t!332381 result!291684) b_and!307519)))

(declare-fun t!332383 () Bool)

(declare-fun tb!240645 () Bool)

(assert (=> (and b!4003570 (= (toValue!9304 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))))) t!332383) tb!240645))

(declare-fun result!291686 () Bool)

(assert (= result!291686 result!291684))

(assert (=> d!1184421 t!332383))

(declare-fun b_and!307521 () Bool)

(assert (= b_and!307489 (and (=> t!332383 result!291686) b_and!307521)))

(declare-fun tb!240647 () Bool)

(declare-fun t!332385 () Bool)

(assert (=> (and b!4004017 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))))) t!332385) tb!240647))

(declare-fun result!291688 () Bool)

(assert (= result!291688 result!291684))

(assert (=> d!1184421 t!332385))

(declare-fun b_and!307523 () Bool)

(assert (= b_and!307491 (and (=> t!332385 result!291688) b_and!307523)))

(assert (=> d!1184421 m!4586559))

(declare-fun m!4587195 () Bool)

(assert (=> d!1184421 m!4587195))

(assert (=> b!4003926 d!1184421))

(declare-fun d!1184429 () Bool)

(assert (=> d!1184429 (= (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178)))) (fromListB!2306 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178)))))))

(declare-fun bs!588956 () Bool)

(assert (= bs!588956 d!1184429))

(declare-fun m!4587197 () Bool)

(assert (=> bs!588956 m!4587197))

(assert (=> b!4003926 d!1184429))

(assert (=> b!4003934 d!1184231))

(declare-fun d!1184431 () Bool)

(assert (=> d!1184431 (= (head!8509 lt!1416028) (h!48288 lt!1416028))))

(assert (=> b!4003934 d!1184431))

(declare-fun d!1184433 () Bool)

(assert (=> d!1184433 (= (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158)))) (list!15924 (c!692248 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))))))

(declare-fun bs!588957 () Bool)

(assert (= bs!588957 d!1184433))

(declare-fun m!4587199 () Bool)

(assert (=> bs!588957 m!4587199))

(assert (=> b!4003849 d!1184433))

(declare-fun d!1184435 () Bool)

(declare-fun lt!1416449 () BalanceConc!25640)

(assert (=> d!1184435 (= (list!15922 lt!1416449) (originalCharacters!7412 (_1!24147 (get!14090 lt!1416158))))))

(assert (=> d!1184435 (= lt!1416449 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158))))) (value!214776 (_1!24147 (get!14090 lt!1416158)))))))

(assert (=> d!1184435 (= (charsOf!4628 (_1!24147 (get!14090 lt!1416158))) lt!1416449)))

(declare-fun b_lambda!116793 () Bool)

(assert (=> (not b_lambda!116793) (not d!1184435)))

(declare-fun t!332387 () Bool)

(declare-fun tb!240649 () Bool)

(assert (=> (and b!4003572 (= (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))) t!332387) tb!240649))

(declare-fun b!4004395 () Bool)

(declare-fun e!2483287 () Bool)

(declare-fun tp!1218767 () Bool)

(assert (=> b!4004395 (= e!2483287 (and (inv!57248 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158))))) (value!214776 (_1!24147 (get!14090 lt!1416158)))))) tp!1218767))))

(declare-fun result!291690 () Bool)

(assert (=> tb!240649 (= result!291690 (and (inv!57249 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158))))) (value!214776 (_1!24147 (get!14090 lt!1416158))))) e!2483287))))

(assert (= tb!240649 b!4004395))

(declare-fun m!4587207 () Bool)

(assert (=> b!4004395 m!4587207))

(declare-fun m!4587209 () Bool)

(assert (=> tb!240649 m!4587209))

(assert (=> d!1184435 t!332387))

(declare-fun b_and!307525 () Bool)

(assert (= b_and!307471 (and (=> t!332387 result!291690) b_and!307525)))

(declare-fun t!332389 () Bool)

(declare-fun tb!240651 () Bool)

(assert (=> (and b!4003570 (= (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))) t!332389) tb!240651))

(declare-fun result!291692 () Bool)

(assert (= result!291692 result!291690))

(assert (=> d!1184435 t!332389))

(declare-fun b_and!307527 () Bool)

(assert (= b_and!307473 (and (=> t!332389 result!291692) b_and!307527)))

(declare-fun tb!240653 () Bool)

(declare-fun t!332391 () Bool)

(assert (=> (and b!4004017 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))) t!332391) tb!240653))

(declare-fun result!291694 () Bool)

(assert (= result!291694 result!291690))

(assert (=> d!1184435 t!332391))

(declare-fun b_and!307529 () Bool)

(assert (= b_and!307493 (and (=> t!332391 result!291694) b_and!307529)))

(declare-fun m!4587215 () Bool)

(assert (=> d!1184435 m!4587215))

(declare-fun m!4587217 () Bool)

(assert (=> d!1184435 m!4587217))

(assert (=> b!4003849 d!1184435))

(assert (=> b!4003849 d!1184237))

(declare-fun d!1184447 () Bool)

(assert (=> d!1184447 (= (list!15922 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484))) (list!15924 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))))))

(declare-fun bs!588959 () Bool)

(assert (= bs!588959 d!1184447))

(declare-fun m!4587219 () Bool)

(assert (=> bs!588959 m!4587219))

(assert (=> b!4003617 d!1184447))

(declare-fun d!1184449 () Bool)

(declare-fun e!2483291 () Bool)

(assert (=> d!1184449 e!2483291))

(declare-fun res!1627238 () Bool)

(assert (=> d!1184449 (=> (not res!1627238) (not e!2483291))))

(declare-fun lt!1416450 () List!42992)

(assert (=> d!1184449 (= res!1627238 (= (content!6496 lt!1416450) ((_ map or) (content!6496 lt!1416025) (content!6496 (++!11214 lt!1416031 suffix!1299)))))))

(declare-fun e!2483290 () List!42992)

(assert (=> d!1184449 (= lt!1416450 e!2483290)))

(declare-fun c!692406 () Bool)

(assert (=> d!1184449 (= c!692406 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184449 (= (++!11214 lt!1416025 (++!11214 lt!1416031 suffix!1299)) lt!1416450)))

(declare-fun b!4004403 () Bool)

(assert (=> b!4004403 (= e!2483291 (or (not (= (++!11214 lt!1416031 suffix!1299) Nil!42868)) (= lt!1416450 lt!1416025)))))

(declare-fun b!4004401 () Bool)

(assert (=> b!4004401 (= e!2483290 (Cons!42868 (h!48288 lt!1416025) (++!11214 (t!332333 lt!1416025) (++!11214 lt!1416031 suffix!1299))))))

(declare-fun b!4004400 () Bool)

(assert (=> b!4004400 (= e!2483290 (++!11214 lt!1416031 suffix!1299))))

(declare-fun b!4004402 () Bool)

(declare-fun res!1627237 () Bool)

(assert (=> b!4004402 (=> (not res!1627237) (not e!2483291))))

(assert (=> b!4004402 (= res!1627237 (= (size!32050 lt!1416450) (+ (size!32050 lt!1416025) (size!32050 (++!11214 lt!1416031 suffix!1299)))))))

(assert (= (and d!1184449 c!692406) b!4004400))

(assert (= (and d!1184449 (not c!692406)) b!4004401))

(assert (= (and d!1184449 res!1627238) b!4004402))

(assert (= (and b!4004402 res!1627237) b!4004403))

(declare-fun m!4587221 () Bool)

(assert (=> d!1184449 m!4587221))

(assert (=> d!1184449 m!4586259))

(assert (=> d!1184449 m!4586053))

(declare-fun m!4587223 () Bool)

(assert (=> d!1184449 m!4587223))

(assert (=> b!4004401 m!4586053))

(declare-fun m!4587225 () Bool)

(assert (=> b!4004401 m!4587225))

(declare-fun m!4587227 () Bool)

(assert (=> b!4004402 m!4587227))

(assert (=> b!4004402 m!4586087))

(assert (=> b!4004402 m!4586053))

(declare-fun m!4587229 () Bool)

(assert (=> b!4004402 m!4587229))

(assert (=> d!1184215 d!1184449))

(assert (=> d!1184215 d!1184213))

(assert (=> d!1184215 d!1184201))

(declare-fun d!1184451 () Bool)

(assert (=> d!1184451 (= (++!11214 (++!11214 lt!1416025 lt!1416031) suffix!1299) (++!11214 lt!1416025 (++!11214 lt!1416031 suffix!1299)))))

(assert (=> d!1184451 true))

(declare-fun _$52!2243 () Unit!61858)

(assert (=> d!1184451 (= (choose!24162 lt!1416025 lt!1416031 suffix!1299) _$52!2243)))

(declare-fun bs!588960 () Bool)

(assert (= bs!588960 d!1184451))

(assert (=> bs!588960 m!4586057))

(assert (=> bs!588960 m!4586057))

(assert (=> bs!588960 m!4586679))

(assert (=> bs!588960 m!4586053))

(assert (=> bs!588960 m!4586053))

(assert (=> bs!588960 m!4586675))

(assert (=> d!1184215 d!1184451))

(declare-fun d!1184453 () Bool)

(declare-fun e!2483293 () Bool)

(assert (=> d!1184453 e!2483293))

(declare-fun res!1627240 () Bool)

(assert (=> d!1184453 (=> (not res!1627240) (not e!2483293))))

(declare-fun lt!1416454 () List!42992)

(assert (=> d!1184453 (= res!1627240 (= (content!6496 lt!1416454) ((_ map or) (content!6496 (++!11214 lt!1416025 lt!1416031)) (content!6496 suffix!1299))))))

(declare-fun e!2483292 () List!42992)

(assert (=> d!1184453 (= lt!1416454 e!2483292)))

(declare-fun c!692407 () Bool)

(assert (=> d!1184453 (= c!692407 ((_ is Nil!42868) (++!11214 lt!1416025 lt!1416031)))))

(assert (=> d!1184453 (= (++!11214 (++!11214 lt!1416025 lt!1416031) suffix!1299) lt!1416454)))

(declare-fun b!4004407 () Bool)

(assert (=> b!4004407 (= e!2483293 (or (not (= suffix!1299 Nil!42868)) (= lt!1416454 (++!11214 lt!1416025 lt!1416031))))))

(declare-fun b!4004405 () Bool)

(assert (=> b!4004405 (= e!2483292 (Cons!42868 (h!48288 (++!11214 lt!1416025 lt!1416031)) (++!11214 (t!332333 (++!11214 lt!1416025 lt!1416031)) suffix!1299)))))

(declare-fun b!4004404 () Bool)

(assert (=> b!4004404 (= e!2483292 suffix!1299)))

(declare-fun b!4004406 () Bool)

(declare-fun res!1627239 () Bool)

(assert (=> b!4004406 (=> (not res!1627239) (not e!2483293))))

(assert (=> b!4004406 (= res!1627239 (= (size!32050 lt!1416454) (+ (size!32050 (++!11214 lt!1416025 lt!1416031)) (size!32050 suffix!1299))))))

(assert (= (and d!1184453 c!692407) b!4004404))

(assert (= (and d!1184453 (not c!692407)) b!4004405))

(assert (= (and d!1184453 res!1627240) b!4004406))

(assert (= (and b!4004406 res!1627239) b!4004407))

(declare-fun m!4587233 () Bool)

(assert (=> d!1184453 m!4587233))

(assert (=> d!1184453 m!4586057))

(declare-fun m!4587235 () Bool)

(assert (=> d!1184453 m!4587235))

(assert (=> d!1184453 m!4586515))

(declare-fun m!4587239 () Bool)

(assert (=> b!4004405 m!4587239))

(declare-fun m!4587241 () Bool)

(assert (=> b!4004406 m!4587241))

(assert (=> b!4004406 m!4586057))

(declare-fun m!4587243 () Bool)

(assert (=> b!4004406 m!4587243))

(assert (=> b!4004406 m!4586031))

(assert (=> d!1184215 d!1184453))

(declare-fun d!1184459 () Bool)

(declare-fun c!692420 () Bool)

(assert (=> d!1184459 (= c!692420 ((_ is Empty!13023) (c!692248 (charsOf!4628 token!484))))))

(declare-fun e!2483311 () List!42992)

(assert (=> d!1184459 (= (list!15924 (c!692248 (charsOf!4628 token!484))) e!2483311)))

(declare-fun b!4004440 () Bool)

(declare-fun e!2483312 () List!42992)

(declare-fun list!15925 (IArray!26051) List!42992)

(assert (=> b!4004440 (= e!2483312 (list!15925 (xs!16329 (c!692248 (charsOf!4628 token!484)))))))

(declare-fun b!4004441 () Bool)

(assert (=> b!4004441 (= e!2483312 (++!11214 (list!15924 (left!32347 (c!692248 (charsOf!4628 token!484)))) (list!15924 (right!32677 (c!692248 (charsOf!4628 token!484))))))))

(declare-fun b!4004439 () Bool)

(assert (=> b!4004439 (= e!2483311 e!2483312)))

(declare-fun c!692421 () Bool)

(assert (=> b!4004439 (= c!692421 ((_ is Leaf!20136) (c!692248 (charsOf!4628 token!484))))))

(declare-fun b!4004438 () Bool)

(assert (=> b!4004438 (= e!2483311 Nil!42868)))

(assert (= (and d!1184459 c!692420) b!4004438))

(assert (= (and d!1184459 (not c!692420)) b!4004439))

(assert (= (and b!4004439 c!692421) b!4004440))

(assert (= (and b!4004439 (not c!692421)) b!4004441))

(declare-fun m!4587271 () Bool)

(assert (=> b!4004440 m!4587271))

(declare-fun m!4587273 () Bool)

(assert (=> b!4004441 m!4587273))

(declare-fun m!4587275 () Bool)

(assert (=> b!4004441 m!4587275))

(assert (=> b!4004441 m!4587273))

(assert (=> b!4004441 m!4587275))

(declare-fun m!4587277 () Bool)

(assert (=> b!4004441 m!4587277))

(assert (=> d!1184077 d!1184459))

(declare-fun d!1184481 () Bool)

(assert (=> d!1184481 (= (head!8509 newSuffix!27) (h!48288 newSuffix!27))))

(assert (=> b!4003892 d!1184481))

(declare-fun d!1184483 () Bool)

(assert (=> d!1184483 (= (head!8509 suffix!1299) (h!48288 suffix!1299))))

(assert (=> b!4003892 d!1184483))

(declare-fun d!1184485 () Bool)

(declare-fun lt!1416462 () Int)

(assert (=> d!1184485 (>= lt!1416462 0)))

(declare-fun e!2483313 () Int)

(assert (=> d!1184485 (= lt!1416462 e!2483313)))

(declare-fun c!692422 () Bool)

(assert (=> d!1184485 (= c!692422 ((_ is Nil!42868) (t!332333 prefix!494)))))

(assert (=> d!1184485 (= (size!32050 (t!332333 prefix!494)) lt!1416462)))

(declare-fun b!4004442 () Bool)

(assert (=> b!4004442 (= e!2483313 0)))

(declare-fun b!4004443 () Bool)

(assert (=> b!4004443 (= e!2483313 (+ 1 (size!32050 (t!332333 (t!332333 prefix!494)))))))

(assert (= (and d!1184485 c!692422) b!4004442))

(assert (= (and d!1184485 (not c!692422)) b!4004443))

(declare-fun m!4587279 () Bool)

(assert (=> b!4004443 m!4587279))

(assert (=> b!4003658 d!1184485))

(declare-fun d!1184487 () Bool)

(assert (=> d!1184487 true))

(declare-fun lambda!126957 () Int)

(declare-fun order!22461 () Int)

(declare-fun dynLambda!18180 (Int Int) Int)

(assert (=> d!1184487 (< (dynLambda!18179 order!22459 (toValue!9304 (transformation!6812 (rule!9846 token!484)))) (dynLambda!18180 order!22461 lambda!126957))))

(declare-fun Forall2!1067 (Int) Bool)

(assert (=> d!1184487 (= (equivClasses!2813 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) (Forall2!1067 lambda!126957))))

(declare-fun bs!588963 () Bool)

(assert (= bs!588963 d!1184487))

(declare-fun m!4587281 () Bool)

(assert (=> bs!588963 m!4587281))

(assert (=> b!4003685 d!1184487))

(declare-fun d!1184489 () Bool)

(assert (=> d!1184489 (= (isDefined!7060 lt!1416158) (not (isEmpty!25612 lt!1416158)))))

(declare-fun bs!588964 () Bool)

(assert (= bs!588964 d!1184489))

(assert (=> bs!588964 m!4586495))

(assert (=> b!4003844 d!1184489))

(declare-fun d!1184491 () Bool)

(declare-fun lt!1416463 () Int)

(assert (=> d!1184491 (>= lt!1416463 0)))

(declare-fun e!2483337 () Int)

(assert (=> d!1184491 (= lt!1416463 e!2483337)))

(declare-fun c!692429 () Bool)

(assert (=> d!1184491 (= c!692429 ((_ is Nil!42868) lt!1416202))))

(assert (=> d!1184491 (= (size!32050 lt!1416202) lt!1416463)))

(declare-fun b!4004475 () Bool)

(assert (=> b!4004475 (= e!2483337 0)))

(declare-fun b!4004476 () Bool)

(assert (=> b!4004476 (= e!2483337 (+ 1 (size!32050 (t!332333 lt!1416202))))))

(assert (= (and d!1184491 c!692429) b!4004475))

(assert (= (and d!1184491 (not c!692429)) b!4004476))

(declare-fun m!4587283 () Bool)

(assert (=> b!4004476 m!4587283))

(assert (=> b!4003986 d!1184491))

(assert (=> b!4003986 d!1184415))

(assert (=> b!4003986 d!1184167))

(declare-fun d!1184493 () Bool)

(declare-fun e!2483344 () Bool)

(assert (=> d!1184493 e!2483344))

(declare-fun res!1627270 () Bool)

(assert (=> d!1184493 (=> (not res!1627270) (not e!2483344))))

(declare-fun lt!1416468 () BalanceConc!25640)

(assert (=> d!1184493 (= res!1627270 (= (list!15922 lt!1416468) lt!1416025))))

(declare-fun fromList!839 (List!42992) Conc!13023)

(assert (=> d!1184493 (= lt!1416468 (BalanceConc!25641 (fromList!839 lt!1416025)))))

(assert (=> d!1184493 (= (fromListB!2306 lt!1416025) lt!1416468)))

(declare-fun b!4004483 () Bool)

(declare-fun isBalanced!3657 (Conc!13023) Bool)

(assert (=> b!4004483 (= e!2483344 (isBalanced!3657 (fromList!839 lt!1416025)))))

(assert (= (and d!1184493 res!1627270) b!4004483))

(declare-fun m!4587291 () Bool)

(assert (=> d!1184493 m!4587291))

(declare-fun m!4587293 () Bool)

(assert (=> d!1184493 m!4587293))

(assert (=> b!4004483 m!4587293))

(assert (=> b!4004483 m!4587293))

(declare-fun m!4587295 () Bool)

(assert (=> b!4004483 m!4587295))

(assert (=> d!1184189 d!1184493))

(declare-fun d!1184499 () Bool)

(assert (=> d!1184499 (= (isEmpty!25612 lt!1416178) (not ((_ is Some!9225) lt!1416178)))))

(assert (=> d!1184181 d!1184499))

(declare-fun d!1184501 () Bool)

(assert (=> d!1184501 (= (isEmpty!25611 (_1!24149 lt!1416181)) ((_ is Nil!42868) (_1!24149 lt!1416181)))))

(assert (=> d!1184181 d!1184501))

(declare-fun d!1184503 () Bool)

(declare-fun lt!1416487 () tuple2!42030)

(assert (=> d!1184503 (= (++!11214 (_1!24149 lt!1416487) (_2!24149 lt!1416487)) lt!1416044)))

(declare-fun sizeTr!255 (List!42992 Int) Int)

(assert (=> d!1184503 (= lt!1416487 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 0 lt!1416044 lt!1416044 (sizeTr!255 lt!1416044 0)))))

(declare-fun lt!1416489 () Unit!61858)

(declare-fun lt!1416492 () Unit!61858)

(assert (=> d!1184503 (= lt!1416489 lt!1416492)))

(declare-fun lt!1416494 () List!42992)

(declare-fun lt!1416493 () Int)

(assert (=> d!1184503 (= (sizeTr!255 lt!1416494 lt!1416493) (+ (size!32050 lt!1416494) lt!1416493))))

(declare-fun lemmaSizeTrEqualsSize!254 (List!42992 Int) Unit!61858)

(assert (=> d!1184503 (= lt!1416492 (lemmaSizeTrEqualsSize!254 lt!1416494 lt!1416493))))

(assert (=> d!1184503 (= lt!1416493 0)))

(assert (=> d!1184503 (= lt!1416494 Nil!42868)))

(declare-fun lt!1416491 () Unit!61858)

(declare-fun lt!1416490 () Unit!61858)

(assert (=> d!1184503 (= lt!1416491 lt!1416490)))

(declare-fun lt!1416488 () Int)

(assert (=> d!1184503 (= (sizeTr!255 lt!1416044 lt!1416488) (+ (size!32050 lt!1416044) lt!1416488))))

(assert (=> d!1184503 (= lt!1416490 (lemmaSizeTrEqualsSize!254 lt!1416044 lt!1416488))))

(assert (=> d!1184503 (= lt!1416488 0)))

(assert (=> d!1184503 (validRegex!5307 (regex!6812 (rule!9846 token!484)))))

(assert (=> d!1184503 (= (findLongestMatch!1262 (regex!6812 (rule!9846 token!484)) lt!1416044) lt!1416487)))

(declare-fun bs!588969 () Bool)

(assert (= bs!588969 d!1184503))

(declare-fun m!4587323 () Bool)

(assert (=> bs!588969 m!4587323))

(declare-fun m!4587325 () Bool)

(assert (=> bs!588969 m!4587325))

(declare-fun m!4587327 () Bool)

(assert (=> bs!588969 m!4587327))

(assert (=> bs!588969 m!4587323))

(declare-fun m!4587329 () Bool)

(assert (=> bs!588969 m!4587329))

(assert (=> bs!588969 m!4586297))

(declare-fun m!4587331 () Bool)

(assert (=> bs!588969 m!4587331))

(declare-fun m!4587333 () Bool)

(assert (=> bs!588969 m!4587333))

(assert (=> bs!588969 m!4586165))

(declare-fun m!4587335 () Bool)

(assert (=> bs!588969 m!4587335))

(declare-fun m!4587337 () Bool)

(assert (=> bs!588969 m!4587337))

(assert (=> d!1184181 d!1184503))

(assert (=> d!1184181 d!1184097))

(declare-fun d!1184523 () Bool)

(assert (=> d!1184523 (= (head!8509 prefix!494) (h!48288 prefix!494))))

(assert (=> b!4003602 d!1184523))

(declare-fun d!1184525 () Bool)

(assert (=> d!1184525 (= (head!8509 lt!1416044) (h!48288 lt!1416044))))

(assert (=> b!4003602 d!1184525))

(declare-fun d!1184527 () Bool)

(declare-fun c!692434 () Bool)

(assert (=> d!1184527 (= c!692434 ((_ is Nil!42868) lt!1416192))))

(declare-fun e!2483353 () (InoxSet C!23620))

(assert (=> d!1184527 (= (content!6496 lt!1416192) e!2483353)))

(declare-fun b!4004494 () Bool)

(assert (=> b!4004494 (= e!2483353 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004495 () Bool)

(assert (=> b!4004495 (= e!2483353 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416192) true) (content!6496 (t!332333 lt!1416192))))))

(assert (= (and d!1184527 c!692434) b!4004494))

(assert (= (and d!1184527 (not c!692434)) b!4004495))

(declare-fun m!4587339 () Bool)

(assert (=> b!4004495 m!4587339))

(declare-fun m!4587341 () Bool)

(assert (=> b!4004495 m!4587341))

(assert (=> d!1184201 d!1184527))

(declare-fun d!1184529 () Bool)

(declare-fun c!692435 () Bool)

(assert (=> d!1184529 (= c!692435 ((_ is Nil!42868) lt!1416025))))

(declare-fun e!2483354 () (InoxSet C!23620))

(assert (=> d!1184529 (= (content!6496 lt!1416025) e!2483354)))

(declare-fun b!4004496 () Bool)

(assert (=> b!4004496 (= e!2483354 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004497 () Bool)

(assert (=> b!4004497 (= e!2483354 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416025) true) (content!6496 (t!332333 lt!1416025))))))

(assert (= (and d!1184529 c!692435) b!4004496))

(assert (= (and d!1184529 (not c!692435)) b!4004497))

(declare-fun m!4587343 () Bool)

(assert (=> b!4004497 m!4587343))

(assert (=> b!4004497 m!4586841))

(assert (=> d!1184201 d!1184529))

(declare-fun d!1184531 () Bool)

(declare-fun c!692436 () Bool)

(assert (=> d!1184531 (= c!692436 ((_ is Nil!42868) lt!1416031))))

(declare-fun e!2483355 () (InoxSet C!23620))

(assert (=> d!1184531 (= (content!6496 lt!1416031) e!2483355)))

(declare-fun b!4004498 () Bool)

(assert (=> b!4004498 (= e!2483355 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004499 () Bool)

(assert (=> b!4004499 (= e!2483355 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416031) true) (content!6496 (t!332333 lt!1416031))))))

(assert (= (and d!1184531 c!692436) b!4004498))

(assert (= (and d!1184531 (not c!692436)) b!4004499))

(declare-fun m!4587345 () Bool)

(assert (=> b!4004499 m!4587345))

(declare-fun m!4587347 () Bool)

(assert (=> b!4004499 m!4587347))

(assert (=> d!1184201 d!1184531))

(assert (=> b!4003973 d!1184231))

(assert (=> b!4003973 d!1184523))

(declare-fun d!1184533 () Bool)

(assert (=> d!1184533 (= (inv!57249 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484))) (isBalanced!3657 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))))))

(declare-fun bs!588970 () Bool)

(assert (= bs!588970 d!1184533))

(declare-fun m!4587349 () Bool)

(assert (=> bs!588970 m!4587349))

(assert (=> tb!240601 d!1184533))

(declare-fun d!1184535 () Bool)

(declare-fun c!692437 () Bool)

(assert (=> d!1184535 (= c!692437 ((_ is Nil!42868) lt!1416202))))

(declare-fun e!2483356 () (InoxSet C!23620))

(assert (=> d!1184535 (= (content!6496 lt!1416202) e!2483356)))

(declare-fun b!4004500 () Bool)

(assert (=> b!4004500 (= e!2483356 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004501 () Bool)

(assert (=> b!4004501 (= e!2483356 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416202) true) (content!6496 (t!332333 lt!1416202))))))

(assert (= (and d!1184535 c!692437) b!4004500))

(assert (= (and d!1184535 (not c!692437)) b!4004501))

(declare-fun m!4587351 () Bool)

(assert (=> b!4004501 m!4587351))

(declare-fun m!4587353 () Bool)

(assert (=> b!4004501 m!4587353))

(assert (=> d!1184213 d!1184535))

(assert (=> d!1184213 d!1184531))

(declare-fun d!1184537 () Bool)

(declare-fun c!692438 () Bool)

(assert (=> d!1184537 (= c!692438 ((_ is Nil!42868) suffix!1299))))

(declare-fun e!2483357 () (InoxSet C!23620))

(assert (=> d!1184537 (= (content!6496 suffix!1299) e!2483357)))

(declare-fun b!4004502 () Bool)

(assert (=> b!4004502 (= e!2483357 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004503 () Bool)

(assert (=> b!4004503 (= e!2483357 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 suffix!1299) true) (content!6496 (t!332333 suffix!1299))))))

(assert (= (and d!1184537 c!692438) b!4004502))

(assert (= (and d!1184537 (not c!692438)) b!4004503))

(declare-fun m!4587355 () Bool)

(assert (=> b!4004503 m!4587355))

(declare-fun m!4587357 () Bool)

(assert (=> b!4004503 m!4587357))

(assert (=> d!1184213 d!1184537))

(declare-fun bs!588972 () Bool)

(declare-fun d!1184539 () Bool)

(assert (= bs!588972 (and d!1184539 d!1184245)))

(declare-fun lambda!126960 () Int)

(assert (=> bs!588972 (= lambda!126960 lambda!126948)))

(assert (=> d!1184539 true))

(declare-fun lt!1416521 () Bool)

(assert (=> d!1184539 (= lt!1416521 (rulesValidInductive!2481 thiss!21717 rules!2999))))

(assert (=> d!1184539 (= lt!1416521 (forall!8346 rules!2999 lambda!126960))))

(assert (=> d!1184539 (= (rulesValid!2649 thiss!21717 rules!2999) lt!1416521)))

(declare-fun bs!588973 () Bool)

(assert (= bs!588973 d!1184539))

(assert (=> bs!588973 m!4586503))

(declare-fun m!4587383 () Bool)

(assert (=> bs!588973 m!4587383))

(assert (=> d!1184175 d!1184539))

(declare-fun b!4004510 () Bool)

(declare-fun e!2483360 () Bool)

(assert (=> b!4004510 (= e!2483360 (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 (++!11214 lt!1416025 suffixResult!105))))))

(declare-fun b!4004508 () Bool)

(declare-fun e!2483361 () Bool)

(assert (=> b!4004508 (= e!2483361 e!2483360)))

(declare-fun res!1627277 () Bool)

(assert (=> b!4004508 (=> (not res!1627277) (not e!2483360))))

(assert (=> b!4004508 (= res!1627277 (not ((_ is Nil!42868) (++!11214 lt!1416025 suffixResult!105))))))

(declare-fun b!4004509 () Bool)

(declare-fun res!1627276 () Bool)

(assert (=> b!4004509 (=> (not res!1627276) (not e!2483360))))

(assert (=> b!4004509 (= res!1627276 (= (head!8509 lt!1416025) (head!8509 (++!11214 lt!1416025 suffixResult!105))))))

(declare-fun b!4004511 () Bool)

(declare-fun e!2483362 () Bool)

(assert (=> b!4004511 (= e!2483362 (>= (size!32050 (++!11214 lt!1416025 suffixResult!105)) (size!32050 lt!1416025)))))

(declare-fun d!1184547 () Bool)

(assert (=> d!1184547 e!2483362))

(declare-fun res!1627275 () Bool)

(assert (=> d!1184547 (=> res!1627275 e!2483362)))

(declare-fun lt!1416522 () Bool)

(assert (=> d!1184547 (= res!1627275 (not lt!1416522))))

(assert (=> d!1184547 (= lt!1416522 e!2483361)))

(declare-fun res!1627278 () Bool)

(assert (=> d!1184547 (=> res!1627278 e!2483361)))

(assert (=> d!1184547 (= res!1627278 ((_ is Nil!42868) lt!1416025))))

(assert (=> d!1184547 (= (isPrefix!3899 lt!1416025 (++!11214 lt!1416025 suffixResult!105)) lt!1416522)))

(assert (= (and d!1184547 (not res!1627278)) b!4004508))

(assert (= (and b!4004508 res!1627277) b!4004509))

(assert (= (and b!4004509 res!1627276) b!4004510))

(assert (= (and d!1184547 (not res!1627275)) b!4004511))

(assert (=> b!4004510 m!4586167))

(assert (=> b!4004510 m!4586041))

(declare-fun m!4587385 () Bool)

(assert (=> b!4004510 m!4587385))

(assert (=> b!4004510 m!4586167))

(assert (=> b!4004510 m!4587385))

(declare-fun m!4587387 () Bool)

(assert (=> b!4004510 m!4587387))

(assert (=> b!4004509 m!4586173))

(assert (=> b!4004509 m!4586041))

(declare-fun m!4587389 () Bool)

(assert (=> b!4004509 m!4587389))

(assert (=> b!4004511 m!4586041))

(declare-fun m!4587391 () Bool)

(assert (=> b!4004511 m!4587391))

(assert (=> b!4004511 m!4586087))

(assert (=> d!1184065 d!1184547))

(assert (=> d!1184065 d!1184087))

(declare-fun d!1184549 () Bool)

(assert (=> d!1184549 (isPrefix!3899 lt!1416025 (++!11214 lt!1416025 suffixResult!105))))

(assert (=> d!1184549 true))

(declare-fun _$46!1630 () Unit!61858)

(assert (=> d!1184549 (= (choose!24156 lt!1416025 suffixResult!105) _$46!1630)))

(declare-fun bs!588974 () Bool)

(assert (= bs!588974 d!1184549))

(assert (=> bs!588974 m!4586041))

(assert (=> bs!588974 m!4586041))

(assert (=> bs!588974 m!4586181))

(assert (=> d!1184065 d!1184549))

(declare-fun bs!588975 () Bool)

(declare-fun d!1184551 () Bool)

(assert (= bs!588975 (and d!1184551 d!1184287)))

(declare-fun lambda!126961 () Int)

(assert (=> bs!588975 (= (and (= (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toChars!9163 (transformation!6812 (h!48290 rules!2999)))) (= (toValue!9304 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (h!48290 rules!2999))))) (= lambda!126961 lambda!126951))))

(assert (=> d!1184551 true))

(assert (=> d!1184551 (< (dynLambda!18177 order!22455 (toChars!9163 (transformation!6812 (rule!9846 token!484)))) (dynLambda!18178 order!22457 lambda!126961))))

(assert (=> d!1184551 true))

(assert (=> d!1184551 (< (dynLambda!18179 order!22459 (toValue!9304 (transformation!6812 (rule!9846 token!484)))) (dynLambda!18178 order!22457 lambda!126961))))

(assert (=> d!1184551 (= (semiInverseModEq!2914 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) (Forall!1467 lambda!126961))))

(declare-fun bs!588976 () Bool)

(assert (= bs!588976 d!1184551))

(declare-fun m!4587393 () Bool)

(assert (=> bs!588976 m!4587393))

(assert (=> d!1184179 d!1184551))

(declare-fun d!1184553 () Bool)

(declare-fun lt!1416523 () Int)

(assert (=> d!1184553 (>= lt!1416523 0)))

(declare-fun e!2483363 () Int)

(assert (=> d!1184553 (= lt!1416523 e!2483363)))

(declare-fun c!692441 () Bool)

(assert (=> d!1184553 (= c!692441 ((_ is Nil!42868) (t!332333 newSuffix!27)))))

(assert (=> d!1184553 (= (size!32050 (t!332333 newSuffix!27)) lt!1416523)))

(declare-fun b!4004512 () Bool)

(assert (=> b!4004512 (= e!2483363 0)))

(declare-fun b!4004513 () Bool)

(assert (=> b!4004513 (= e!2483363 (+ 1 (size!32050 (t!332333 (t!332333 newSuffix!27)))))))

(assert (= (and d!1184553 c!692441) b!4004512))

(assert (= (and d!1184553 (not c!692441)) b!4004513))

(declare-fun m!4587395 () Bool)

(assert (=> b!4004513 m!4587395))

(assert (=> b!4003898 d!1184553))

(declare-fun b!4004514 () Bool)

(declare-fun e!2483369 () Bool)

(declare-fun e!2483367 () Bool)

(assert (=> b!4004514 (= e!2483369 e!2483367)))

(declare-fun res!1627283 () Bool)

(assert (=> b!4004514 (=> (not res!1627283) (not e!2483367))))

(declare-fun lt!1416524 () Bool)

(assert (=> b!4004514 (= res!1627283 (not lt!1416524))))

(declare-fun b!4004515 () Bool)

(declare-fun res!1627284 () Bool)

(assert (=> b!4004515 (=> res!1627284 e!2483369)))

(declare-fun e!2483366 () Bool)

(assert (=> b!4004515 (= res!1627284 e!2483366)))

(declare-fun res!1627286 () Bool)

(assert (=> b!4004515 (=> (not res!1627286) (not e!2483366))))

(assert (=> b!4004515 (= res!1627286 lt!1416524)))

(declare-fun b!4004516 () Bool)

(declare-fun e!2483370 () Bool)

(assert (=> b!4004516 (= e!2483370 (not (= (head!8509 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))) (c!692249 (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158))))))))))

(declare-fun b!4004517 () Bool)

(declare-fun e!2483368 () Bool)

(assert (=> b!4004517 (= e!2483368 (nullable!4107 (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158))))))))

(declare-fun b!4004518 () Bool)

(declare-fun res!1627281 () Bool)

(assert (=> b!4004518 (=> (not res!1627281) (not e!2483366))))

(assert (=> b!4004518 (= res!1627281 (isEmpty!25611 (tail!6241 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158)))))))))

(declare-fun b!4004519 () Bool)

(declare-fun res!1627279 () Bool)

(assert (=> b!4004519 (=> res!1627279 e!2483369)))

(assert (=> b!4004519 (= res!1627279 (not ((_ is ElementMatch!11717) (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))))))

(declare-fun e!2483365 () Bool)

(assert (=> b!4004519 (= e!2483365 e!2483369)))

(declare-fun b!4004520 () Bool)

(assert (=> b!4004520 (= e!2483368 (matchR!5680 (derivativeStep!3517 (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))) (head!8509 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158)))))) (tail!6241 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158)))))))))

(declare-fun b!4004521 () Bool)

(declare-fun res!1627285 () Bool)

(assert (=> b!4004521 (=> (not res!1627285) (not e!2483366))))

(declare-fun call!286093 () Bool)

(assert (=> b!4004521 (= res!1627285 (not call!286093))))

(declare-fun b!4004522 () Bool)

(assert (=> b!4004522 (= e!2483365 (not lt!1416524))))

(declare-fun b!4004523 () Bool)

(assert (=> b!4004523 (= e!2483366 (= (head!8509 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))) (c!692249 (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))))))

(declare-fun b!4004524 () Bool)

(assert (=> b!4004524 (= e!2483367 e!2483370)))

(declare-fun res!1627282 () Bool)

(assert (=> b!4004524 (=> res!1627282 e!2483370)))

(assert (=> b!4004524 (= res!1627282 call!286093)))

(declare-fun b!4004525 () Bool)

(declare-fun e!2483364 () Bool)

(assert (=> b!4004525 (= e!2483364 e!2483365)))

(declare-fun c!692443 () Bool)

(assert (=> b!4004525 (= c!692443 ((_ is EmptyLang!11717) (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158))))))))

(declare-fun b!4004526 () Bool)

(declare-fun res!1627280 () Bool)

(assert (=> b!4004526 (=> res!1627280 e!2483370)))

(assert (=> b!4004526 (= res!1627280 (not (isEmpty!25611 (tail!6241 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))))))))

(declare-fun b!4004527 () Bool)

(assert (=> b!4004527 (= e!2483364 (= lt!1416524 call!286093))))

(declare-fun d!1184555 () Bool)

(assert (=> d!1184555 e!2483364))

(declare-fun c!692442 () Bool)

(assert (=> d!1184555 (= c!692442 ((_ is EmptyExpr!11717) (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158))))))))

(assert (=> d!1184555 (= lt!1416524 e!2483368)))

(declare-fun c!692444 () Bool)

(assert (=> d!1184555 (= c!692444 (isEmpty!25611 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))))))

(assert (=> d!1184555 (validRegex!5307 (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))))

(assert (=> d!1184555 (= (matchR!5680 (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))) (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))) lt!1416524)))

(declare-fun bm!286088 () Bool)

(assert (=> bm!286088 (= call!286093 (isEmpty!25611 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))))))

(assert (= (and d!1184555 c!692444) b!4004517))

(assert (= (and d!1184555 (not c!692444)) b!4004520))

(assert (= (and d!1184555 c!692442) b!4004527))

(assert (= (and d!1184555 (not c!692442)) b!4004525))

(assert (= (and b!4004525 c!692443) b!4004522))

(assert (= (and b!4004525 (not c!692443)) b!4004519))

(assert (= (and b!4004519 (not res!1627279)) b!4004515))

(assert (= (and b!4004515 res!1627286) b!4004521))

(assert (= (and b!4004521 res!1627285) b!4004518))

(assert (= (and b!4004518 res!1627281) b!4004523))

(assert (= (and b!4004515 (not res!1627284)) b!4004514))

(assert (= (and b!4004514 res!1627283) b!4004524))

(assert (= (and b!4004524 (not res!1627282)) b!4004526))

(assert (= (and b!4004526 (not res!1627280)) b!4004516))

(assert (= (or b!4004527 b!4004521 b!4004524) bm!286088))

(assert (=> d!1184555 m!4586483))

(declare-fun m!4587397 () Bool)

(assert (=> d!1184555 m!4587397))

(declare-fun m!4587399 () Bool)

(assert (=> d!1184555 m!4587399))

(assert (=> b!4004516 m!4586483))

(declare-fun m!4587401 () Bool)

(assert (=> b!4004516 m!4587401))

(assert (=> b!4004518 m!4586483))

(declare-fun m!4587403 () Bool)

(assert (=> b!4004518 m!4587403))

(assert (=> b!4004518 m!4587403))

(declare-fun m!4587405 () Bool)

(assert (=> b!4004518 m!4587405))

(assert (=> b!4004520 m!4586483))

(assert (=> b!4004520 m!4587401))

(assert (=> b!4004520 m!4587401))

(declare-fun m!4587407 () Bool)

(assert (=> b!4004520 m!4587407))

(assert (=> b!4004520 m!4586483))

(assert (=> b!4004520 m!4587403))

(assert (=> b!4004520 m!4587407))

(assert (=> b!4004520 m!4587403))

(declare-fun m!4587409 () Bool)

(assert (=> b!4004520 m!4587409))

(assert (=> bm!286088 m!4586483))

(assert (=> bm!286088 m!4587397))

(assert (=> b!4004526 m!4586483))

(assert (=> b!4004526 m!4587403))

(assert (=> b!4004526 m!4587403))

(assert (=> b!4004526 m!4587405))

(declare-fun m!4587411 () Bool)

(assert (=> b!4004517 m!4587411))

(assert (=> b!4004523 m!4586483))

(assert (=> b!4004523 m!4587401))

(assert (=> b!4003848 d!1184555))

(assert (=> b!4003848 d!1184237))

(assert (=> b!4003848 d!1184433))

(assert (=> b!4003848 d!1184435))

(assert (=> d!1184191 d!1184181))

(assert (=> d!1184191 d!1184073))

(assert (=> d!1184191 d!1184071))

(declare-fun d!1184557 () Bool)

(assert (=> d!1184557 (= (maxPrefixOneRule!2719 thiss!21717 (rule!9846 token!484) lt!1416044) (Some!9225 (tuple2!42027 (Token!12763 (apply!10009 (transformation!6812 (rule!9846 token!484)) (seqFromList!5037 lt!1416025)) (rule!9846 token!484) (size!32050 lt!1416025) lt!1416025) suffixResult!105)))))

(assert (=> d!1184557 true))

(declare-fun _$59!635 () Unit!61858)

(assert (=> d!1184557 (= (choose!24160 thiss!21717 rules!2999 lt!1416025 lt!1416044 suffixResult!105 (rule!9846 token!484)) _$59!635)))

(declare-fun bs!588988 () Bool)

(assert (= bs!588988 d!1184557))

(assert (=> bs!588988 m!4586097))

(assert (=> bs!588988 m!4586095))

(assert (=> bs!588988 m!4586095))

(assert (=> bs!588988 m!4586101))

(assert (=> bs!588988 m!4586087))

(assert (=> d!1184191 d!1184557))

(assert (=> d!1184191 d!1184189))

(assert (=> d!1184191 d!1184193))

(declare-fun d!1184637 () Bool)

(declare-fun res!1627357 () Bool)

(declare-fun e!2483457 () Bool)

(assert (=> d!1184637 (=> res!1627357 e!2483457)))

(assert (=> d!1184637 (= res!1627357 ((_ is Nil!42870) rules!2999))))

(assert (=> d!1184637 (= (noDuplicateTag!2650 thiss!21717 rules!2999 Nil!42872) e!2483457)))

(declare-fun b!4004689 () Bool)

(declare-fun e!2483458 () Bool)

(assert (=> b!4004689 (= e!2483457 e!2483458)))

(declare-fun res!1627358 () Bool)

(assert (=> b!4004689 (=> (not res!1627358) (not e!2483458))))

(declare-fun contains!8522 (List!42996 String!48928) Bool)

(assert (=> b!4004689 (= res!1627358 (not (contains!8522 Nil!42872 (tag!7672 (h!48290 rules!2999)))))))

(declare-fun b!4004690 () Bool)

(assert (=> b!4004690 (= e!2483458 (noDuplicateTag!2650 thiss!21717 (t!332335 rules!2999) (Cons!42872 (tag!7672 (h!48290 rules!2999)) Nil!42872)))))

(assert (= (and d!1184637 (not res!1627357)) b!4004689))

(assert (= (and b!4004689 res!1627358) b!4004690))

(declare-fun m!4587585 () Bool)

(assert (=> b!4004689 m!4587585))

(declare-fun m!4587587 () Bool)

(assert (=> b!4004690 m!4587587))

(assert (=> b!4003904 d!1184637))

(declare-fun d!1184643 () Bool)

(declare-fun lt!1416552 () Int)

(assert (=> d!1184643 (>= lt!1416552 0)))

(declare-fun e!2483461 () Int)

(assert (=> d!1184643 (= lt!1416552 e!2483461)))

(declare-fun c!692488 () Bool)

(assert (=> d!1184643 (= c!692488 ((_ is Nil!42868) lt!1416191))))

(assert (=> d!1184643 (= (size!32050 lt!1416191) lt!1416552)))

(declare-fun b!4004696 () Bool)

(assert (=> b!4004696 (= e!2483461 0)))

(declare-fun b!4004697 () Bool)

(assert (=> b!4004697 (= e!2483461 (+ 1 (size!32050 (t!332333 lt!1416191))))))

(assert (= (and d!1184643 c!692488) b!4004696))

(assert (= (and d!1184643 (not c!692488)) b!4004697))

(declare-fun m!4587589 () Bool)

(assert (=> b!4004697 m!4587589))

(assert (=> b!4003945 d!1184643))

(assert (=> b!4003945 d!1184075))

(assert (=> b!4003945 d!1184169))

(declare-fun d!1184645 () Bool)

(declare-fun e!2483465 () Bool)

(assert (=> d!1184645 e!2483465))

(declare-fun res!1627360 () Bool)

(assert (=> d!1184645 (=> (not res!1627360) (not e!2483465))))

(declare-fun lt!1416553 () List!42992)

(assert (=> d!1184645 (= res!1627360 (= (content!6496 lt!1416553) ((_ map or) (content!6496 (t!332333 lt!1416025)) (content!6496 lt!1416031))))))

(declare-fun e!2483463 () List!42992)

(assert (=> d!1184645 (= lt!1416553 e!2483463)))

(declare-fun c!692489 () Bool)

(assert (=> d!1184645 (= c!692489 ((_ is Nil!42868) (t!332333 lt!1416025)))))

(assert (=> d!1184645 (= (++!11214 (t!332333 lt!1416025) lt!1416031) lt!1416553)))

(declare-fun b!4004709 () Bool)

(assert (=> b!4004709 (= e!2483465 (or (not (= lt!1416031 Nil!42868)) (= lt!1416553 (t!332333 lt!1416025))))))

(declare-fun b!4004705 () Bool)

(assert (=> b!4004705 (= e!2483463 (Cons!42868 (h!48288 (t!332333 lt!1416025)) (++!11214 (t!332333 (t!332333 lt!1416025)) lt!1416031)))))

(declare-fun b!4004703 () Bool)

(assert (=> b!4004703 (= e!2483463 lt!1416031)))

(declare-fun b!4004707 () Bool)

(declare-fun res!1627359 () Bool)

(assert (=> b!4004707 (=> (not res!1627359) (not e!2483465))))

(assert (=> b!4004707 (= res!1627359 (= (size!32050 lt!1416553) (+ (size!32050 (t!332333 lt!1416025)) (size!32050 lt!1416031))))))

(assert (= (and d!1184645 c!692489) b!4004703))

(assert (= (and d!1184645 (not c!692489)) b!4004705))

(assert (= (and d!1184645 res!1627360) b!4004707))

(assert (= (and b!4004707 res!1627359) b!4004709))

(declare-fun m!4587591 () Bool)

(assert (=> d!1184645 m!4587591))

(assert (=> d!1184645 m!4586841))

(assert (=> d!1184645 m!4586633))

(declare-fun m!4587593 () Bool)

(assert (=> b!4004705 m!4587593))

(declare-fun m!4587595 () Bool)

(assert (=> b!4004707 m!4587595))

(assert (=> b!4004707 m!4586201))

(assert (=> b!4004707 m!4586639))

(assert (=> b!4003963 d!1184645))

(declare-fun d!1184647 () Bool)

(declare-fun c!692490 () Bool)

(assert (=> d!1184647 (= c!692490 ((_ is Nil!42868) lt!1416089))))

(declare-fun e!2483468 () (InoxSet C!23620))

(assert (=> d!1184647 (= (content!6496 lt!1416089) e!2483468)))

(declare-fun b!4004718 () Bool)

(assert (=> b!4004718 (= e!2483468 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004719 () Bool)

(assert (=> b!4004719 (= e!2483468 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416089) true) (content!6496 (t!332333 lt!1416089))))))

(assert (= (and d!1184647 c!692490) b!4004718))

(assert (= (and d!1184647 (not c!692490)) b!4004719))

(declare-fun m!4587597 () Bool)

(assert (=> b!4004719 m!4587597))

(declare-fun m!4587599 () Bool)

(assert (=> b!4004719 m!4587599))

(assert (=> d!1184087 d!1184647))

(assert (=> d!1184087 d!1184529))

(declare-fun d!1184649 () Bool)

(declare-fun c!692491 () Bool)

(assert (=> d!1184649 (= c!692491 ((_ is Nil!42868) suffixResult!105))))

(declare-fun e!2483470 () (InoxSet C!23620))

(assert (=> d!1184649 (= (content!6496 suffixResult!105) e!2483470)))

(declare-fun b!4004724 () Bool)

(assert (=> b!4004724 (= e!2483470 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004725 () Bool)

(assert (=> b!4004725 (= e!2483470 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 suffixResult!105) true) (content!6496 (t!332333 suffixResult!105))))))

(assert (= (and d!1184649 c!692491) b!4004724))

(assert (= (and d!1184649 (not c!692491)) b!4004725))

(declare-fun m!4587601 () Bool)

(assert (=> b!4004725 m!4587601))

(declare-fun m!4587603 () Bool)

(assert (=> b!4004725 m!4587603))

(assert (=> d!1184087 d!1184649))

(declare-fun d!1184651 () Bool)

(assert (=> d!1184651 (= (inv!57241 (tag!7672 (h!48290 (t!332335 rules!2999)))) (= (mod (str.len (value!214775 (tag!7672 (h!48290 (t!332335 rules!2999))))) 2) 0))))

(assert (=> b!4004016 d!1184651))

(declare-fun d!1184653 () Bool)

(declare-fun res!1627361 () Bool)

(declare-fun e!2483473 () Bool)

(assert (=> d!1184653 (=> (not res!1627361) (not e!2483473))))

(assert (=> d!1184653 (= res!1627361 (semiInverseModEq!2914 (toChars!9163 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toValue!9304 (transformation!6812 (h!48290 (t!332335 rules!2999))))))))

(assert (=> d!1184653 (= (inv!57244 (transformation!6812 (h!48290 (t!332335 rules!2999)))) e!2483473)))

(declare-fun b!4004734 () Bool)

(assert (=> b!4004734 (= e!2483473 (equivClasses!2813 (toChars!9163 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toValue!9304 (transformation!6812 (h!48290 (t!332335 rules!2999))))))))

(assert (= (and d!1184653 res!1627361) b!4004734))

(declare-fun m!4587605 () Bool)

(assert (=> d!1184653 m!4587605))

(declare-fun m!4587607 () Bool)

(assert (=> b!4004734 m!4587607))

(assert (=> b!4004016 d!1184653))

(declare-fun d!1184655 () Bool)

(declare-fun e!2483478 () Bool)

(assert (=> d!1184655 e!2483478))

(declare-fun res!1627363 () Bool)

(assert (=> d!1184655 (=> (not res!1627363) (not e!2483478))))

(declare-fun lt!1416554 () List!42992)

(assert (=> d!1184655 (= res!1627363 (= (content!6496 lt!1416554) ((_ map or) (content!6496 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))) (content!6496 (_2!24147 (get!14090 lt!1416178))))))))

(declare-fun e!2483477 () List!42992)

(assert (=> d!1184655 (= lt!1416554 e!2483477)))

(declare-fun c!692492 () Bool)

(assert (=> d!1184655 (= c!692492 ((_ is Nil!42868) (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))))))

(assert (=> d!1184655 (= (++!11214 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178)))) (_2!24147 (get!14090 lt!1416178))) lt!1416554)))

(declare-fun b!4004744 () Bool)

(assert (=> b!4004744 (= e!2483478 (or (not (= (_2!24147 (get!14090 lt!1416178)) Nil!42868)) (= lt!1416554 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178)))))))))

(declare-fun b!4004742 () Bool)

(assert (=> b!4004742 (= e!2483477 (Cons!42868 (h!48288 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))) (++!11214 (t!332333 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))) (_2!24147 (get!14090 lt!1416178)))))))

(declare-fun b!4004741 () Bool)

(assert (=> b!4004741 (= e!2483477 (_2!24147 (get!14090 lt!1416178)))))

(declare-fun b!4004743 () Bool)

(declare-fun res!1627362 () Bool)

(assert (=> b!4004743 (=> (not res!1627362) (not e!2483478))))

(assert (=> b!4004743 (= res!1627362 (= (size!32050 lt!1416554) (+ (size!32050 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))) (size!32050 (_2!24147 (get!14090 lt!1416178))))))))

(assert (= (and d!1184655 c!692492) b!4004741))

(assert (= (and d!1184655 (not c!692492)) b!4004742))

(assert (= (and d!1184655 res!1627363) b!4004743))

(assert (= (and b!4004743 res!1627362) b!4004744))

(declare-fun m!4587609 () Bool)

(assert (=> d!1184655 m!4587609))

(assert (=> d!1184655 m!4586547))

(declare-fun m!4587611 () Bool)

(assert (=> d!1184655 m!4587611))

(declare-fun m!4587613 () Bool)

(assert (=> d!1184655 m!4587613))

(declare-fun m!4587615 () Bool)

(assert (=> b!4004742 m!4587615))

(declare-fun m!4587617 () Bool)

(assert (=> b!4004743 m!4587617))

(assert (=> b!4004743 m!4586547))

(declare-fun m!4587619 () Bool)

(assert (=> b!4004743 m!4587619))

(assert (=> b!4004743 m!4586579))

(assert (=> b!4003925 d!1184655))

(declare-fun d!1184657 () Bool)

(assert (=> d!1184657 (= (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178)))) (list!15924 (c!692248 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))))))

(declare-fun bs!588990 () Bool)

(assert (= bs!588990 d!1184657))

(declare-fun m!4587621 () Bool)

(assert (=> bs!588990 m!4587621))

(assert (=> b!4003925 d!1184657))

(declare-fun d!1184659 () Bool)

(declare-fun lt!1416555 () BalanceConc!25640)

(assert (=> d!1184659 (= (list!15922 lt!1416555) (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178))))))

(assert (=> d!1184659 (= lt!1416555 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178))))) (value!214776 (_1!24147 (get!14090 lt!1416178)))))))

(assert (=> d!1184659 (= (charsOf!4628 (_1!24147 (get!14090 lt!1416178))) lt!1416555)))

(declare-fun b_lambda!116801 () Bool)

(assert (=> (not b_lambda!116801) (not d!1184659)))

(declare-fun t!332421 () Bool)

(declare-fun tb!240681 () Bool)

(assert (=> (and b!4003572 (= (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))))) t!332421) tb!240681))

(declare-fun b!4004752 () Bool)

(declare-fun e!2483484 () Bool)

(declare-fun tp!1218831 () Bool)

(assert (=> b!4004752 (= e!2483484 (and (inv!57248 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178))))) (value!214776 (_1!24147 (get!14090 lt!1416178)))))) tp!1218831))))

(declare-fun result!291722 () Bool)

(assert (=> tb!240681 (= result!291722 (and (inv!57249 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178))))) (value!214776 (_1!24147 (get!14090 lt!1416178))))) e!2483484))))

(assert (= tb!240681 b!4004752))

(declare-fun m!4587623 () Bool)

(assert (=> b!4004752 m!4587623))

(declare-fun m!4587625 () Bool)

(assert (=> tb!240681 m!4587625))

(assert (=> d!1184659 t!332421))

(declare-fun b_and!307553 () Bool)

(assert (= b_and!307525 (and (=> t!332421 result!291722) b_and!307553)))

(declare-fun tb!240691 () Bool)

(declare-fun t!332431 () Bool)

(assert (=> (and b!4003570 (= (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))))) t!332431) tb!240691))

(declare-fun result!291732 () Bool)

(assert (= result!291732 result!291722))

(assert (=> d!1184659 t!332431))

(declare-fun b_and!307555 () Bool)

(assert (= b_and!307527 (and (=> t!332431 result!291732) b_and!307555)))

(declare-fun tb!240693 () Bool)

(declare-fun t!332433 () Bool)

(assert (=> (and b!4004017 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))))) t!332433) tb!240693))

(declare-fun result!291734 () Bool)

(assert (= result!291734 result!291722))

(assert (=> d!1184659 t!332433))

(declare-fun b_and!307557 () Bool)

(assert (= b_and!307529 (and (=> t!332433 result!291734) b_and!307557)))

(declare-fun m!4587627 () Bool)

(assert (=> d!1184659 m!4587627))

(declare-fun m!4587631 () Bool)

(assert (=> d!1184659 m!4587631))

(assert (=> b!4003925 d!1184659))

(assert (=> b!4003925 d!1184419))

(declare-fun d!1184661 () Bool)

(declare-fun charsToBigInt!1 (List!42993) Int)

(assert (=> d!1184661 (= (inv!17 (value!214776 token!484)) (= (charsToBigInt!1 (text!49742 (value!214776 token!484))) (value!214768 (value!214776 token!484))))))

(declare-fun bs!588991 () Bool)

(assert (= bs!588991 d!1184661))

(declare-fun m!4587635 () Bool)

(assert (=> bs!588991 m!4587635))

(assert (=> b!4003960 d!1184661))

(assert (=> b!4003612 d!1184401))

(assert (=> b!4003612 d!1184073))

(declare-fun d!1184663 () Bool)

(declare-fun lt!1416556 () Int)

(assert (=> d!1184663 (>= lt!1416556 0)))

(declare-fun e!2483490 () Int)

(assert (=> d!1184663 (= lt!1416556 e!2483490)))

(declare-fun c!692493 () Bool)

(assert (=> d!1184663 (= c!692493 ((_ is Nil!42868) lt!1416037))))

(assert (=> d!1184663 (= (size!32050 lt!1416037) lt!1416556)))

(declare-fun b!4004762 () Bool)

(assert (=> b!4004762 (= e!2483490 0)))

(declare-fun b!4004763 () Bool)

(assert (=> b!4004763 (= e!2483490 (+ 1 (size!32050 (t!332333 lt!1416037))))))

(assert (= (and d!1184663 c!692493) b!4004762))

(assert (= (and d!1184663 (not c!692493)) b!4004763))

(declare-fun m!4587637 () Bool)

(assert (=> b!4004763 m!4587637))

(assert (=> b!4003608 d!1184663))

(assert (=> b!4003608 d!1184073))

(declare-fun d!1184665 () Bool)

(declare-fun nullableFct!1144 (Regex!11717) Bool)

(assert (=> d!1184665 (= (nullable!4107 (regex!6812 (rule!9846 token!484))) (nullableFct!1144 (regex!6812 (rule!9846 token!484))))))

(declare-fun bs!588992 () Bool)

(assert (= bs!588992 d!1184665))

(declare-fun m!4587645 () Bool)

(assert (=> bs!588992 m!4587645))

(assert (=> b!4003703 d!1184665))

(assert (=> d!1184089 d!1184551))

(declare-fun d!1184667 () Bool)

(declare-fun lt!1416557 () Int)

(assert (=> d!1184667 (>= lt!1416557 0)))

(declare-fun e!2483495 () Int)

(assert (=> d!1184667 (= lt!1416557 e!2483495)))

(declare-fun c!692494 () Bool)

(assert (=> d!1184667 (= c!692494 ((_ is Nil!42868) lt!1416089))))

(assert (=> d!1184667 (= (size!32050 lt!1416089) lt!1416557)))

(declare-fun b!4004769 () Bool)

(assert (=> b!4004769 (= e!2483495 0)))

(declare-fun b!4004770 () Bool)

(assert (=> b!4004770 (= e!2483495 (+ 1 (size!32050 (t!332333 lt!1416089))))))

(assert (= (and d!1184667 c!692494) b!4004769))

(assert (= (and d!1184667 (not c!692494)) b!4004770))

(declare-fun m!4587647 () Bool)

(assert (=> b!4004770 m!4587647))

(assert (=> b!4003671 d!1184667))

(assert (=> b!4003671 d!1184073))

(declare-fun d!1184669 () Bool)

(declare-fun lt!1416558 () Int)

(assert (=> d!1184669 (>= lt!1416558 0)))

(declare-fun e!2483496 () Int)

(assert (=> d!1184669 (= lt!1416558 e!2483496)))

(declare-fun c!692495 () Bool)

(assert (=> d!1184669 (= c!692495 ((_ is Nil!42868) suffixResult!105))))

(assert (=> d!1184669 (= (size!32050 suffixResult!105) lt!1416558)))

(declare-fun b!4004771 () Bool)

(assert (=> b!4004771 (= e!2483496 0)))

(declare-fun b!4004772 () Bool)

(assert (=> b!4004772 (= e!2483496 (+ 1 (size!32050 (t!332333 suffixResult!105))))))

(assert (= (and d!1184669 c!692495) b!4004771))

(assert (= (and d!1184669 (not c!692495)) b!4004772))

(declare-fun m!4587649 () Bool)

(assert (=> b!4004772 m!4587649))

(assert (=> b!4003671 d!1184669))

(declare-fun d!1184671 () Bool)

(declare-fun lt!1416559 () List!42992)

(assert (=> d!1184671 (= (++!11214 (t!332333 lt!1416025) lt!1416559) (tail!6241 prefix!494))))

(declare-fun e!2483497 () List!42992)

(assert (=> d!1184671 (= lt!1416559 e!2483497)))

(declare-fun c!692496 () Bool)

(assert (=> d!1184671 (= c!692496 ((_ is Cons!42868) (t!332333 lt!1416025)))))

(assert (=> d!1184671 (>= (size!32050 (tail!6241 prefix!494)) (size!32050 (t!332333 lt!1416025)))))

(assert (=> d!1184671 (= (getSuffix!2324 (tail!6241 prefix!494) (t!332333 lt!1416025)) lt!1416559)))

(declare-fun b!4004773 () Bool)

(assert (=> b!4004773 (= e!2483497 (getSuffix!2324 (tail!6241 (tail!6241 prefix!494)) (t!332333 (t!332333 lt!1416025))))))

(declare-fun b!4004774 () Bool)

(assert (=> b!4004774 (= e!2483497 (tail!6241 prefix!494))))

(assert (= (and d!1184671 c!692496) b!4004773))

(assert (= (and d!1184671 (not c!692496)) b!4004774))

(declare-fun m!4587651 () Bool)

(assert (=> d!1184671 m!4587651))

(assert (=> d!1184671 m!4586155))

(assert (=> d!1184671 m!4586879))

(assert (=> d!1184671 m!4586201))

(assert (=> b!4004773 m!4586155))

(assert (=> b!4004773 m!4586867))

(assert (=> b!4004773 m!4586867))

(declare-fun m!4587653 () Bool)

(assert (=> b!4004773 m!4587653))

(assert (=> b!4003970 d!1184671))

(assert (=> b!4003970 d!1184299))

(declare-fun d!1184673 () Bool)

(declare-fun lt!1416560 () Int)

(assert (=> d!1184673 (>= lt!1416560 0)))

(declare-fun e!2483498 () Int)

(assert (=> d!1184673 (= lt!1416560 e!2483498)))

(declare-fun c!692497 () Bool)

(assert (=> d!1184673 (= c!692497 ((_ is Nil!42868) lt!1416201))))

(assert (=> d!1184673 (= (size!32050 lt!1416201) lt!1416560)))

(declare-fun b!4004775 () Bool)

(assert (=> b!4004775 (= e!2483498 0)))

(declare-fun b!4004776 () Bool)

(assert (=> b!4004776 (= e!2483498 (+ 1 (size!32050 (t!332333 lt!1416201))))))

(assert (= (and d!1184673 c!692497) b!4004775))

(assert (= (and d!1184673 (not c!692497)) b!4004776))

(declare-fun m!4587655 () Bool)

(assert (=> b!4004776 m!4587655))

(assert (=> b!4003982 d!1184673))

(declare-fun d!1184675 () Bool)

(declare-fun lt!1416561 () Int)

(assert (=> d!1184675 (>= lt!1416561 0)))

(declare-fun e!2483499 () Int)

(assert (=> d!1184675 (= lt!1416561 e!2483499)))

(declare-fun c!692498 () Bool)

(assert (=> d!1184675 (= c!692498 ((_ is Nil!42868) lt!1416045))))

(assert (=> d!1184675 (= (size!32050 lt!1416045) lt!1416561)))

(declare-fun b!4004777 () Bool)

(assert (=> b!4004777 (= e!2483499 0)))

(declare-fun b!4004778 () Bool)

(assert (=> b!4004778 (= e!2483499 (+ 1 (size!32050 (t!332333 lt!1416045))))))

(assert (= (and d!1184675 c!692498) b!4004777))

(assert (= (and d!1184675 (not c!692498)) b!4004778))

(declare-fun m!4587657 () Bool)

(assert (=> b!4004778 m!4587657))

(assert (=> b!4003982 d!1184675))

(assert (=> b!4003982 d!1184167))

(declare-fun d!1184677 () Bool)

(declare-fun lt!1416562 () Int)

(assert (=> d!1184677 (>= lt!1416562 0)))

(declare-fun e!2483500 () Int)

(assert (=> d!1184677 (= lt!1416562 e!2483500)))

(declare-fun c!692499 () Bool)

(assert (=> d!1184677 (= c!692499 ((_ is Nil!42868) (t!332333 suffix!1299)))))

(assert (=> d!1184677 (= (size!32050 (t!332333 suffix!1299)) lt!1416562)))

(declare-fun b!4004779 () Bool)

(assert (=> b!4004779 (= e!2483500 0)))

(declare-fun b!4004780 () Bool)

(assert (=> b!4004780 (= e!2483500 (+ 1 (size!32050 (t!332333 (t!332333 suffix!1299)))))))

(assert (= (and d!1184677 c!692499) b!4004779))

(assert (= (and d!1184677 (not c!692499)) b!4004780))

(declare-fun m!4587659 () Bool)

(assert (=> b!4004780 m!4587659))

(assert (=> b!4003896 d!1184677))

(declare-fun d!1184679 () Bool)

(declare-fun e!2483502 () Bool)

(assert (=> d!1184679 e!2483502))

(declare-fun res!1627365 () Bool)

(assert (=> d!1184679 (=> (not res!1627365) (not e!2483502))))

(declare-fun lt!1416563 () List!42992)

(assert (=> d!1184679 (= res!1627365 (= (content!6496 lt!1416563) ((_ map or) (content!6496 (t!332333 lt!1416031)) (content!6496 suffix!1299))))))

(declare-fun e!2483501 () List!42992)

(assert (=> d!1184679 (= lt!1416563 e!2483501)))

(declare-fun c!692500 () Bool)

(assert (=> d!1184679 (= c!692500 ((_ is Nil!42868) (t!332333 lt!1416031)))))

(assert (=> d!1184679 (= (++!11214 (t!332333 lt!1416031) suffix!1299) lt!1416563)))

(declare-fun b!4004784 () Bool)

(assert (=> b!4004784 (= e!2483502 (or (not (= suffix!1299 Nil!42868)) (= lt!1416563 (t!332333 lt!1416031))))))

(declare-fun b!4004782 () Bool)

(assert (=> b!4004782 (= e!2483501 (Cons!42868 (h!48288 (t!332333 lt!1416031)) (++!11214 (t!332333 (t!332333 lt!1416031)) suffix!1299)))))

(declare-fun b!4004781 () Bool)

(assert (=> b!4004781 (= e!2483501 suffix!1299)))

(declare-fun b!4004783 () Bool)

(declare-fun res!1627364 () Bool)

(assert (=> b!4004783 (=> (not res!1627364) (not e!2483502))))

(assert (=> b!4004783 (= res!1627364 (= (size!32050 lt!1416563) (+ (size!32050 (t!332333 lt!1416031)) (size!32050 suffix!1299))))))

(assert (= (and d!1184679 c!692500) b!4004781))

(assert (= (and d!1184679 (not c!692500)) b!4004782))

(assert (= (and d!1184679 res!1627365) b!4004783))

(assert (= (and b!4004783 res!1627364) b!4004784))

(declare-fun m!4587661 () Bool)

(assert (=> d!1184679 m!4587661))

(assert (=> d!1184679 m!4587347))

(assert (=> d!1184679 m!4586515))

(declare-fun m!4587663 () Bool)

(assert (=> b!4004782 m!4587663))

(declare-fun m!4587665 () Bool)

(assert (=> b!4004783 m!4587665))

(assert (=> b!4004783 m!4587179))

(assert (=> b!4004783 m!4586031))

(assert (=> b!4003985 d!1184679))

(declare-fun d!1184681 () Bool)

(declare-fun c!692503 () Bool)

(assert (=> d!1184681 (= c!692503 ((_ is Node!13023) (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))))))

(declare-fun e!2483507 () Bool)

(assert (=> d!1184681 (= (inv!57248 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))) e!2483507)))

(declare-fun b!4004791 () Bool)

(declare-fun inv!57252 (Conc!13023) Bool)

(assert (=> b!4004791 (= e!2483507 (inv!57252 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))))))

(declare-fun b!4004792 () Bool)

(declare-fun e!2483508 () Bool)

(assert (=> b!4004792 (= e!2483507 e!2483508)))

(declare-fun res!1627368 () Bool)

(assert (=> b!4004792 (= res!1627368 (not ((_ is Leaf!20136) (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484))))))))

(assert (=> b!4004792 (=> res!1627368 e!2483508)))

(declare-fun b!4004793 () Bool)

(declare-fun inv!57253 (Conc!13023) Bool)

(assert (=> b!4004793 (= e!2483508 (inv!57253 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))))))

(assert (= (and d!1184681 c!692503) b!4004791))

(assert (= (and d!1184681 (not c!692503)) b!4004792))

(assert (= (and b!4004792 (not res!1627368)) b!4004793))

(declare-fun m!4587667 () Bool)

(assert (=> b!4004791 m!4587667))

(declare-fun m!4587669 () Bool)

(assert (=> b!4004793 m!4587669))

(assert (=> b!4003629 d!1184681))

(declare-fun d!1184683 () Bool)

(declare-fun c!692504 () Bool)

(assert (=> d!1184683 (= c!692504 ((_ is Nil!42868) lt!1416191))))

(declare-fun e!2483509 () (InoxSet C!23620))

(assert (=> d!1184683 (= (content!6496 lt!1416191) e!2483509)))

(declare-fun b!4004794 () Bool)

(assert (=> b!4004794 (= e!2483509 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004795 () Bool)

(assert (=> b!4004795 (= e!2483509 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416191) true) (content!6496 (t!332333 lt!1416191))))))

(assert (= (and d!1184683 c!692504) b!4004794))

(assert (= (and d!1184683 (not c!692504)) b!4004795))

(declare-fun m!4587671 () Bool)

(assert (=> b!4004795 m!4587671))

(declare-fun m!4587673 () Bool)

(assert (=> b!4004795 m!4587673))

(assert (=> d!1184197 d!1184683))

(declare-fun d!1184685 () Bool)

(declare-fun c!692505 () Bool)

(assert (=> d!1184685 (= c!692505 ((_ is Nil!42868) prefix!494))))

(declare-fun e!2483510 () (InoxSet C!23620))

(assert (=> d!1184685 (= (content!6496 prefix!494) e!2483510)))

(declare-fun b!4004796 () Bool)

(assert (=> b!4004796 (= e!2483510 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004797 () Bool)

(assert (=> b!4004797 (= e!2483510 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 prefix!494) true) (content!6496 (t!332333 prefix!494))))))

(assert (= (and d!1184685 c!692505) b!4004796))

(assert (= (and d!1184685 (not c!692505)) b!4004797))

(declare-fun m!4587675 () Bool)

(assert (=> b!4004797 m!4587675))

(assert (=> b!4004797 m!4586883))

(assert (=> d!1184197 d!1184685))

(declare-fun d!1184687 () Bool)

(declare-fun c!692506 () Bool)

(assert (=> d!1184687 (= c!692506 ((_ is Nil!42868) newSuffix!27))))

(declare-fun e!2483511 () (InoxSet C!23620))

(assert (=> d!1184687 (= (content!6496 newSuffix!27) e!2483511)))

(declare-fun b!4004798 () Bool)

(assert (=> b!4004798 (= e!2483511 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004799 () Bool)

(assert (=> b!4004799 (= e!2483511 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 newSuffix!27) true) (content!6496 (t!332333 newSuffix!27))))))

(assert (= (and d!1184687 c!692506) b!4004798))

(assert (= (and d!1184687 (not c!692506)) b!4004799))

(declare-fun m!4587677 () Bool)

(assert (=> b!4004799 m!4587677))

(declare-fun m!4587679 () Bool)

(assert (=> b!4004799 m!4587679))

(assert (=> d!1184197 d!1184687))

(assert (=> d!1184101 d!1184097))

(declare-fun d!1184689 () Bool)

(assert (=> d!1184689 (ruleValid!2744 thiss!21717 (rule!9846 token!484))))

(assert (=> d!1184689 true))

(declare-fun _$65!1428 () Unit!61858)

(assert (=> d!1184689 (= (choose!24157 thiss!21717 (rule!9846 token!484) rules!2999) _$65!1428)))

(declare-fun bs!588993 () Bool)

(assert (= bs!588993 d!1184689))

(assert (=> bs!588993 m!4586045))

(assert (=> d!1184101 d!1184689))

(declare-fun d!1184691 () Bool)

(declare-fun lt!1416564 () Bool)

(assert (=> d!1184691 (= lt!1416564 (select (content!6497 rules!2999) (rule!9846 token!484)))))

(declare-fun e!2483513 () Bool)

(assert (=> d!1184691 (= lt!1416564 e!2483513)))

(declare-fun res!1627370 () Bool)

(assert (=> d!1184691 (=> (not res!1627370) (not e!2483513))))

(assert (=> d!1184691 (= res!1627370 ((_ is Cons!42870) rules!2999))))

(assert (=> d!1184691 (= (contains!8520 rules!2999 (rule!9846 token!484)) lt!1416564)))

(declare-fun b!4004800 () Bool)

(declare-fun e!2483512 () Bool)

(assert (=> b!4004800 (= e!2483513 e!2483512)))

(declare-fun res!1627369 () Bool)

(assert (=> b!4004800 (=> res!1627369 e!2483512)))

(assert (=> b!4004800 (= res!1627369 (= (h!48290 rules!2999) (rule!9846 token!484)))))

(declare-fun b!4004801 () Bool)

(assert (=> b!4004801 (= e!2483512 (contains!8520 (t!332335 rules!2999) (rule!9846 token!484)))))

(assert (= (and d!1184691 res!1627370) b!4004800))

(assert (= (and b!4004800 (not res!1627369)) b!4004801))

(assert (=> d!1184691 m!4586717))

(declare-fun m!4587681 () Bool)

(assert (=> d!1184691 m!4587681))

(declare-fun m!4587683 () Bool)

(assert (=> b!4004801 m!4587683))

(assert (=> d!1184101 d!1184691))

(assert (=> b!4003928 d!1184401))

(declare-fun d!1184693 () Bool)

(declare-fun e!2483516 () Bool)

(assert (=> d!1184693 e!2483516))

(declare-fun res!1627373 () Bool)

(assert (=> d!1184693 (=> res!1627373 e!2483516)))

(assert (=> d!1184693 (= res!1627373 (isEmpty!25611 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))

(declare-fun lt!1416567 () Unit!61858)

(declare-fun choose!24166 (Regex!11717 List!42992) Unit!61858)

(assert (=> d!1184693 (= lt!1416567 (choose!24166 (regex!6812 (rule!9846 token!484)) lt!1416044))))

(assert (=> d!1184693 (validRegex!5307 (regex!6812 (rule!9846 token!484)))))

(assert (=> d!1184693 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1322 (regex!6812 (rule!9846 token!484)) lt!1416044) lt!1416567)))

(declare-fun b!4004804 () Bool)

(assert (=> b!4004804 (= e!2483516 (matchR!5680 (regex!6812 (rule!9846 token!484)) (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))

(assert (= (and d!1184693 (not res!1627373)) b!4004804))

(assert (=> d!1184693 m!4586297))

(assert (=> d!1184693 m!4586573))

(assert (=> d!1184693 m!4586165))

(assert (=> d!1184693 m!4586575))

(assert (=> d!1184693 m!4586165))

(assert (=> d!1184693 m!4586573))

(declare-fun m!4587685 () Bool)

(assert (=> d!1184693 m!4587685))

(assert (=> d!1184693 m!4586569))

(assert (=> b!4004804 m!4586573))

(assert (=> b!4004804 m!4586165))

(assert (=> b!4004804 m!4586573))

(assert (=> b!4004804 m!4586165))

(assert (=> b!4004804 m!4586575))

(assert (=> b!4004804 m!4586581))

(assert (=> b!4003928 d!1184693))

(declare-fun d!1184695 () Bool)

(assert (=> d!1184695 (= (apply!10009 (transformation!6812 (rule!9846 token!484)) (seqFromList!5037 (_1!24149 lt!1416181))) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 (_1!24149 lt!1416181))))))

(declare-fun b_lambda!116809 () Bool)

(assert (=> (not b_lambda!116809) (not d!1184695)))

(declare-fun t!332435 () Bool)

(declare-fun tb!240695 () Bool)

(assert (=> (and b!4003572 (= (toValue!9304 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) t!332435) tb!240695))

(declare-fun result!291738 () Bool)

(assert (=> tb!240695 (= result!291738 (inv!21 (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 (_1!24149 lt!1416181)))))))

(declare-fun m!4587687 () Bool)

(assert (=> tb!240695 m!4587687))

(assert (=> d!1184695 t!332435))

(declare-fun b_and!307559 () Bool)

(assert (= b_and!307519 (and (=> t!332435 result!291738) b_and!307559)))

(declare-fun tb!240697 () Bool)

(declare-fun t!332437 () Bool)

(assert (=> (and b!4003570 (= (toValue!9304 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) t!332437) tb!240697))

(declare-fun result!291740 () Bool)

(assert (= result!291740 result!291738))

(assert (=> d!1184695 t!332437))

(declare-fun b_and!307561 () Bool)

(assert (= b_and!307521 (and (=> t!332437 result!291740) b_and!307561)))

(declare-fun t!332439 () Bool)

(declare-fun tb!240699 () Bool)

(assert (=> (and b!4004017 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) t!332439) tb!240699))

(declare-fun result!291742 () Bool)

(assert (= result!291742 result!291738))

(assert (=> d!1184695 t!332439))

(declare-fun b_and!307563 () Bool)

(assert (= b_and!307523 (and (=> t!332439 result!291742) b_and!307563)))

(assert (=> d!1184695 m!4586565))

(declare-fun m!4587689 () Bool)

(assert (=> d!1184695 m!4587689))

(assert (=> b!4003928 d!1184695))

(declare-fun d!1184697 () Bool)

(assert (=> d!1184697 (= (isEmpty!25611 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))) ((_ is Nil!42868) (_1!24149 (findLongestMatchInner!1349 (regex!6812 (rule!9846 token!484)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))

(assert (=> b!4003928 d!1184697))

(declare-fun d!1184699 () Bool)

(declare-fun lt!1416570 () Int)

(assert (=> d!1184699 (= lt!1416570 (size!32050 (list!15922 (seqFromList!5037 (_1!24149 lt!1416181)))))))

(declare-fun size!32054 (Conc!13023) Int)

(assert (=> d!1184699 (= lt!1416570 (size!32054 (c!692248 (seqFromList!5037 (_1!24149 lt!1416181)))))))

(assert (=> d!1184699 (= (size!32052 (seqFromList!5037 (_1!24149 lt!1416181))) lt!1416570)))

(declare-fun bs!588994 () Bool)

(assert (= bs!588994 d!1184699))

(assert (=> bs!588994 m!4586565))

(declare-fun m!4587691 () Bool)

(assert (=> bs!588994 m!4587691))

(assert (=> bs!588994 m!4587691))

(declare-fun m!4587693 () Bool)

(assert (=> bs!588994 m!4587693))

(declare-fun m!4587695 () Bool)

(assert (=> bs!588994 m!4587695))

(assert (=> b!4003928 d!1184699))

(declare-fun bs!588995 () Bool)

(declare-fun d!1184701 () Bool)

(assert (= bs!588995 (and d!1184701 d!1184287)))

(declare-fun lambda!126966 () Int)

(assert (=> bs!588995 (= (and (= (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toChars!9163 (transformation!6812 (h!48290 rules!2999)))) (= (toValue!9304 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (h!48290 rules!2999))))) (= lambda!126966 lambda!126951))))

(declare-fun bs!588996 () Bool)

(assert (= bs!588996 (and d!1184701 d!1184551)))

(assert (=> bs!588996 (= lambda!126966 lambda!126961)))

(declare-fun b!4004809 () Bool)

(declare-fun e!2483520 () Bool)

(assert (=> b!4004809 (= e!2483520 true)))

(assert (=> d!1184701 e!2483520))

(assert (= d!1184701 b!4004809))

(assert (=> b!4004809 (< (dynLambda!18179 order!22459 (toValue!9304 (transformation!6812 (rule!9846 token!484)))) (dynLambda!18178 order!22457 lambda!126966))))

(assert (=> b!4004809 (< (dynLambda!18177 order!22455 (toChars!9163 (transformation!6812 (rule!9846 token!484)))) (dynLambda!18178 order!22457 lambda!126966))))

(assert (=> d!1184701 (= (list!15922 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 (_1!24149 lt!1416181))))) (list!15922 (seqFromList!5037 (_1!24149 lt!1416181))))))

(declare-fun lt!1416573 () Unit!61858)

(declare-fun ForallOf!803 (Int BalanceConc!25640) Unit!61858)

(assert (=> d!1184701 (= lt!1416573 (ForallOf!803 lambda!126966 (seqFromList!5037 (_1!24149 lt!1416181))))))

(assert (=> d!1184701 (= (lemmaSemiInverse!1869 (transformation!6812 (rule!9846 token!484)) (seqFromList!5037 (_1!24149 lt!1416181))) lt!1416573)))

(declare-fun b_lambda!116811 () Bool)

(assert (=> (not b_lambda!116811) (not d!1184701)))

(declare-fun t!332441 () Bool)

(declare-fun tb!240701 () Bool)

(assert (=> (and b!4003572 (= (toChars!9163 (transformation!6812 (rule!9846 token!484))) (toChars!9163 (transformation!6812 (rule!9846 token!484)))) t!332441) tb!240701))

(declare-fun b!4004810 () Bool)

(declare-fun e!2483521 () Bool)

(declare-fun tp!1218844 () Bool)

(assert (=> b!4004810 (= e!2483521 (and (inv!57248 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 (_1!24149 lt!1416181)))))) tp!1218844))))

(declare-fun result!291744 () Bool)

(assert (=> tb!240701 (= result!291744 (and (inv!57249 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 token!484))) (seqFromList!5037 (_1!24149 lt!1416181))))) e!2483521))))

(assert (= tb!240701 b!4004810))

(declare-fun m!4587697 () Bool)

(assert (=> b!4004810 m!4587697))

(declare-fun m!4587699 () Bool)

(assert (=> tb!240701 m!4587699))

(assert (=> d!1184701 t!332441))

(declare-fun b_and!307565 () Bool)

(assert (= b_and!307553 (and (=> t!332441 result!291744) b_and!307565)))

(declare-fun tb!240703 () Bool)

(declare-fun t!332443 () Bool)

(assert (=> (and b!4003570 (= (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toChars!9163 (transformation!6812 (rule!9846 token!484)))) t!332443) tb!240703))

(declare-fun result!291746 () Bool)

(assert (= result!291746 result!291744))

(assert (=> d!1184701 t!332443))

(declare-fun b_and!307567 () Bool)

(assert (= b_and!307555 (and (=> t!332443 result!291746) b_and!307567)))

(declare-fun t!332445 () Bool)

(declare-fun tb!240705 () Bool)

(assert (=> (and b!4004017 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toChars!9163 (transformation!6812 (rule!9846 token!484)))) t!332445) tb!240705))

(declare-fun result!291748 () Bool)

(assert (= result!291748 result!291744))

(assert (=> d!1184701 t!332445))

(declare-fun b_and!307569 () Bool)

(assert (= b_and!307557 (and (=> t!332445 result!291748) b_and!307569)))

(declare-fun b_lambda!116813 () Bool)

(assert (=> (not b_lambda!116813) (not d!1184701)))

(assert (=> d!1184701 t!332435))

(declare-fun b_and!307571 () Bool)

(assert (= b_and!307559 (and (=> t!332435 result!291738) b_and!307571)))

(assert (=> d!1184701 t!332437))

(declare-fun b_and!307573 () Bool)

(assert (= b_and!307561 (and (=> t!332437 result!291740) b_and!307573)))

(assert (=> d!1184701 t!332439))

(declare-fun b_and!307575 () Bool)

(assert (= b_and!307563 (and (=> t!332439 result!291742) b_and!307575)))

(assert (=> d!1184701 m!4586565))

(assert (=> d!1184701 m!4587689))

(assert (=> d!1184701 m!4587689))

(declare-fun m!4587701 () Bool)

(assert (=> d!1184701 m!4587701))

(assert (=> d!1184701 m!4586565))

(declare-fun m!4587703 () Bool)

(assert (=> d!1184701 m!4587703))

(assert (=> d!1184701 m!4587701))

(declare-fun m!4587705 () Bool)

(assert (=> d!1184701 m!4587705))

(assert (=> d!1184701 m!4586565))

(assert (=> d!1184701 m!4587691))

(assert (=> b!4003928 d!1184701))

(declare-fun d!1184703 () Bool)

(assert (=> d!1184703 (= (seqFromList!5037 (_1!24149 lt!1416181)) (fromListB!2306 (_1!24149 lt!1416181)))))

(declare-fun bs!588997 () Bool)

(assert (= bs!588997 d!1184703))

(declare-fun m!4587707 () Bool)

(assert (=> bs!588997 m!4587707))

(assert (=> b!4003928 d!1184703))

(assert (=> b!4003928 d!1184397))

(assert (=> b!4003928 d!1184311))

(declare-fun d!1184705 () Bool)

(assert (=> d!1184705 (= (list!15922 lt!1416086) (list!15924 (c!692248 lt!1416086)))))

(declare-fun bs!588998 () Bool)

(assert (= bs!588998 d!1184705))

(declare-fun m!4587709 () Bool)

(assert (=> bs!588998 m!4587709))

(assert (=> d!1184079 d!1184705))

(declare-fun d!1184707 () Bool)

(declare-fun c!692508 () Bool)

(assert (=> d!1184707 (= c!692508 ((_ is Nil!42868) lt!1416201))))

(declare-fun e!2483522 () (InoxSet C!23620))

(assert (=> d!1184707 (= (content!6496 lt!1416201) e!2483522)))

(declare-fun b!4004811 () Bool)

(assert (=> b!4004811 (= e!2483522 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004812 () Bool)

(assert (=> b!4004812 (= e!2483522 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416201) true) (content!6496 (t!332333 lt!1416201))))))

(assert (= (and d!1184707 c!692508) b!4004811))

(assert (= (and d!1184707 (not c!692508)) b!4004812))

(declare-fun m!4587711 () Bool)

(assert (=> b!4004812 m!4587711))

(declare-fun m!4587713 () Bool)

(assert (=> b!4004812 m!4587713))

(assert (=> d!1184211 d!1184707))

(declare-fun d!1184709 () Bool)

(declare-fun c!692509 () Bool)

(assert (=> d!1184709 (= c!692509 ((_ is Nil!42868) lt!1416045))))

(declare-fun e!2483523 () (InoxSet C!23620))

(assert (=> d!1184709 (= (content!6496 lt!1416045) e!2483523)))

(declare-fun b!4004813 () Bool)

(assert (=> b!4004813 (= e!2483523 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004814 () Bool)

(assert (=> b!4004814 (= e!2483523 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416045) true) (content!6496 (t!332333 lt!1416045))))))

(assert (= (and d!1184709 c!692509) b!4004813))

(assert (= (and d!1184709 (not c!692509)) b!4004814))

(declare-fun m!4587715 () Bool)

(assert (=> b!4004814 m!4587715))

(declare-fun m!4587717 () Bool)

(assert (=> b!4004814 m!4587717))

(assert (=> d!1184211 d!1184709))

(assert (=> d!1184211 d!1184537))

(declare-fun d!1184711 () Bool)

(declare-fun lt!1416574 () Int)

(assert (=> d!1184711 (>= lt!1416574 0)))

(declare-fun e!2483524 () Int)

(assert (=> d!1184711 (= lt!1416574 e!2483524)))

(declare-fun c!692510 () Bool)

(assert (=> d!1184711 (= c!692510 ((_ is Nil!42868) lt!1416028))))

(assert (=> d!1184711 (= (size!32050 lt!1416028) lt!1416574)))

(declare-fun b!4004815 () Bool)

(assert (=> b!4004815 (= e!2483524 0)))

(declare-fun b!4004816 () Bool)

(assert (=> b!4004816 (= e!2483524 (+ 1 (size!32050 (t!332333 lt!1416028))))))

(assert (= (and d!1184711 c!692510) b!4004815))

(assert (= (and d!1184711 (not c!692510)) b!4004816))

(declare-fun m!4587719 () Bool)

(assert (=> b!4004816 m!4587719))

(assert (=> b!4003936 d!1184711))

(assert (=> b!4003936 d!1184073))

(declare-fun d!1184713 () Bool)

(declare-fun lt!1416575 () Int)

(assert (=> d!1184713 (>= lt!1416575 0)))

(declare-fun e!2483525 () Int)

(assert (=> d!1184713 (= lt!1416575 e!2483525)))

(declare-fun c!692511 () Bool)

(assert (=> d!1184713 (= c!692511 ((_ is Nil!42868) (_2!24147 (get!14090 lt!1416158))))))

(assert (=> d!1184713 (= (size!32050 (_2!24147 (get!14090 lt!1416158))) lt!1416575)))

(declare-fun b!4004817 () Bool)

(assert (=> b!4004817 (= e!2483525 0)))

(declare-fun b!4004818 () Bool)

(assert (=> b!4004818 (= e!2483525 (+ 1 (size!32050 (t!332333 (_2!24147 (get!14090 lt!1416158))))))))

(assert (= (and d!1184713 c!692511) b!4004817))

(assert (= (and d!1184713 (not c!692511)) b!4004818))

(declare-fun m!4587721 () Bool)

(assert (=> b!4004818 m!4587721))

(assert (=> b!4003847 d!1184713))

(assert (=> b!4003847 d!1184237))

(assert (=> b!4003847 d!1184401))

(declare-fun d!1184715 () Bool)

(declare-fun e!2483527 () Bool)

(assert (=> d!1184715 e!2483527))

(declare-fun res!1627375 () Bool)

(assert (=> d!1184715 (=> (not res!1627375) (not e!2483527))))

(declare-fun lt!1416576 () List!42992)

(assert (=> d!1184715 (= res!1627375 (= (content!6496 lt!1416576) ((_ map or) (content!6496 (t!332333 prefix!494)) (content!6496 newSuffix!27))))))

(declare-fun e!2483526 () List!42992)

(assert (=> d!1184715 (= lt!1416576 e!2483526)))

(declare-fun c!692512 () Bool)

(assert (=> d!1184715 (= c!692512 ((_ is Nil!42868) (t!332333 prefix!494)))))

(assert (=> d!1184715 (= (++!11214 (t!332333 prefix!494) newSuffix!27) lt!1416576)))

(declare-fun b!4004822 () Bool)

(assert (=> b!4004822 (= e!2483527 (or (not (= newSuffix!27 Nil!42868)) (= lt!1416576 (t!332333 prefix!494))))))

(declare-fun b!4004820 () Bool)

(assert (=> b!4004820 (= e!2483526 (Cons!42868 (h!48288 (t!332333 prefix!494)) (++!11214 (t!332333 (t!332333 prefix!494)) newSuffix!27)))))

(declare-fun b!4004819 () Bool)

(assert (=> b!4004819 (= e!2483526 newSuffix!27)))

(declare-fun b!4004821 () Bool)

(declare-fun res!1627374 () Bool)

(assert (=> b!4004821 (=> (not res!1627374) (not e!2483527))))

(assert (=> b!4004821 (= res!1627374 (= (size!32050 lt!1416576) (+ (size!32050 (t!332333 prefix!494)) (size!32050 newSuffix!27))))))

(assert (= (and d!1184715 c!692512) b!4004819))

(assert (= (and d!1184715 (not c!692512)) b!4004820))

(assert (= (and d!1184715 res!1627375) b!4004821))

(assert (= (and b!4004821 res!1627374) b!4004822))

(declare-fun m!4587723 () Bool)

(assert (=> d!1184715 m!4587723))

(assert (=> d!1184715 m!4586883))

(assert (=> d!1184715 m!4586619))

(declare-fun m!4587725 () Bool)

(assert (=> b!4004820 m!4587725))

(declare-fun m!4587727 () Bool)

(assert (=> b!4004821 m!4587727))

(assert (=> b!4004821 m!4586203))

(assert (=> b!4004821 m!4586033))

(assert (=> b!4003944 d!1184715))

(declare-fun d!1184717 () Bool)

(declare-fun lt!1416577 () Int)

(assert (=> d!1184717 (>= lt!1416577 0)))

(declare-fun e!2483528 () Int)

(assert (=> d!1184717 (= lt!1416577 e!2483528)))

(declare-fun c!692513 () Bool)

(assert (=> d!1184717 (= c!692513 ((_ is Nil!42868) lt!1416190))))

(assert (=> d!1184717 (= (size!32050 lt!1416190) lt!1416577)))

(declare-fun b!4004823 () Bool)

(assert (=> b!4004823 (= e!2483528 0)))

(declare-fun b!4004824 () Bool)

(assert (=> b!4004824 (= e!2483528 (+ 1 (size!32050 (t!332333 lt!1416190))))))

(assert (= (and d!1184717 c!692513) b!4004823))

(assert (= (and d!1184717 (not c!692513)) b!4004824))

(declare-fun m!4587729 () Bool)

(assert (=> b!4004824 m!4587729))

(assert (=> b!4003941 d!1184717))

(assert (=> b!4003941 d!1184073))

(declare-fun d!1184719 () Bool)

(declare-fun lt!1416578 () Int)

(assert (=> d!1184719 (>= lt!1416578 0)))

(declare-fun e!2483529 () Int)

(assert (=> d!1184719 (= lt!1416578 e!2483529)))

(declare-fun c!692514 () Bool)

(assert (=> d!1184719 (= c!692514 ((_ is Nil!42868) newSuffixResult!27))))

(assert (=> d!1184719 (= (size!32050 newSuffixResult!27) lt!1416578)))

(declare-fun b!4004825 () Bool)

(assert (=> b!4004825 (= e!2483529 0)))

(declare-fun b!4004826 () Bool)

(assert (=> b!4004826 (= e!2483529 (+ 1 (size!32050 (t!332333 newSuffixResult!27))))))

(assert (= (and d!1184719 c!692514) b!4004825))

(assert (= (and d!1184719 (not c!692514)) b!4004826))

(declare-fun m!4587731 () Bool)

(assert (=> b!4004826 m!4587731))

(assert (=> b!4003941 d!1184719))

(declare-fun bm!286094 () Bool)

(declare-fun call!286099 () Option!9226)

(assert (=> bm!286094 (= call!286099 (maxPrefixOneRule!2719 thiss!21717 (h!48290 (t!332335 rules!2999)) lt!1416044))))

(declare-fun b!4004827 () Bool)

(declare-fun e!2483532 () Option!9226)

(assert (=> b!4004827 (= e!2483532 call!286099)))

(declare-fun b!4004828 () Bool)

(declare-fun e!2483531 () Bool)

(declare-fun e!2483530 () Bool)

(assert (=> b!4004828 (= e!2483531 e!2483530)))

(declare-fun res!1627379 () Bool)

(assert (=> b!4004828 (=> (not res!1627379) (not e!2483530))))

(declare-fun lt!1416579 () Option!9226)

(assert (=> b!4004828 (= res!1627379 (isDefined!7060 lt!1416579))))

(declare-fun b!4004829 () Bool)

(assert (=> b!4004829 (= e!2483530 (contains!8520 (t!332335 rules!2999) (rule!9846 (_1!24147 (get!14090 lt!1416579)))))))

(declare-fun b!4004830 () Bool)

(declare-fun res!1627380 () Bool)

(assert (=> b!4004830 (=> (not res!1627380) (not e!2483530))))

(assert (=> b!4004830 (= res!1627380 (= (value!214776 (_1!24147 (get!14090 lt!1416579))) (apply!10009 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416579)))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416579)))))))))

(declare-fun b!4004831 () Bool)

(declare-fun res!1627376 () Bool)

(assert (=> b!4004831 (=> (not res!1627376) (not e!2483530))))

(assert (=> b!4004831 (= res!1627376 (< (size!32050 (_2!24147 (get!14090 lt!1416579))) (size!32050 lt!1416044)))))

(declare-fun b!4004832 () Bool)

(declare-fun res!1627382 () Bool)

(assert (=> b!4004832 (=> (not res!1627382) (not e!2483530))))

(assert (=> b!4004832 (= res!1627382 (matchR!5680 (regex!6812 (rule!9846 (_1!24147 (get!14090 lt!1416579)))) (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416579))))))))

(declare-fun d!1184721 () Bool)

(assert (=> d!1184721 e!2483531))

(declare-fun res!1627378 () Bool)

(assert (=> d!1184721 (=> res!1627378 e!2483531)))

(assert (=> d!1184721 (= res!1627378 (isEmpty!25612 lt!1416579))))

(assert (=> d!1184721 (= lt!1416579 e!2483532)))

(declare-fun c!692515 () Bool)

(assert (=> d!1184721 (= c!692515 (and ((_ is Cons!42870) (t!332335 rules!2999)) ((_ is Nil!42870) (t!332335 (t!332335 rules!2999)))))))

(declare-fun lt!1416580 () Unit!61858)

(declare-fun lt!1416581 () Unit!61858)

(assert (=> d!1184721 (= lt!1416580 lt!1416581)))

(assert (=> d!1184721 (isPrefix!3899 lt!1416044 lt!1416044)))

(assert (=> d!1184721 (= lt!1416581 (lemmaIsPrefixRefl!2477 lt!1416044 lt!1416044))))

(assert (=> d!1184721 (rulesValidInductive!2481 thiss!21717 (t!332335 rules!2999))))

(assert (=> d!1184721 (= (maxPrefix!3699 thiss!21717 (t!332335 rules!2999) lt!1416044) lt!1416579)))

(declare-fun b!4004833 () Bool)

(declare-fun res!1627377 () Bool)

(assert (=> b!4004833 (=> (not res!1627377) (not e!2483530))))

(assert (=> b!4004833 (= res!1627377 (= (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416579)))) (originalCharacters!7412 (_1!24147 (get!14090 lt!1416579)))))))

(declare-fun b!4004834 () Bool)

(declare-fun res!1627381 () Bool)

(assert (=> b!4004834 (=> (not res!1627381) (not e!2483530))))

(assert (=> b!4004834 (= res!1627381 (= (++!11214 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416579)))) (_2!24147 (get!14090 lt!1416579))) lt!1416044))))

(declare-fun b!4004835 () Bool)

(declare-fun lt!1416583 () Option!9226)

(declare-fun lt!1416582 () Option!9226)

(assert (=> b!4004835 (= e!2483532 (ite (and ((_ is None!9225) lt!1416583) ((_ is None!9225) lt!1416582)) None!9225 (ite ((_ is None!9225) lt!1416582) lt!1416583 (ite ((_ is None!9225) lt!1416583) lt!1416582 (ite (>= (size!32049 (_1!24147 (v!39587 lt!1416583))) (size!32049 (_1!24147 (v!39587 lt!1416582)))) lt!1416583 lt!1416582)))))))

(assert (=> b!4004835 (= lt!1416583 call!286099)))

(assert (=> b!4004835 (= lt!1416582 (maxPrefix!3699 thiss!21717 (t!332335 (t!332335 rules!2999)) lt!1416044))))

(assert (= (and d!1184721 c!692515) b!4004827))

(assert (= (and d!1184721 (not c!692515)) b!4004835))

(assert (= (or b!4004827 b!4004835) bm!286094))

(assert (= (and d!1184721 (not res!1627378)) b!4004828))

(assert (= (and b!4004828 res!1627379) b!4004833))

(assert (= (and b!4004833 res!1627377) b!4004831))

(assert (= (and b!4004831 res!1627376) b!4004834))

(assert (= (and b!4004834 res!1627381) b!4004830))

(assert (= (and b!4004830 res!1627380) b!4004832))

(assert (= (and b!4004832 res!1627382) b!4004829))

(declare-fun m!4587733 () Bool)

(assert (=> bm!286094 m!4587733))

(declare-fun m!4587735 () Bool)

(assert (=> b!4004835 m!4587735))

(declare-fun m!4587737 () Bool)

(assert (=> b!4004834 m!4587737))

(declare-fun m!4587739 () Bool)

(assert (=> b!4004834 m!4587739))

(assert (=> b!4004834 m!4587739))

(declare-fun m!4587741 () Bool)

(assert (=> b!4004834 m!4587741))

(assert (=> b!4004834 m!4587741))

(declare-fun m!4587743 () Bool)

(assert (=> b!4004834 m!4587743))

(assert (=> b!4004830 m!4587737))

(declare-fun m!4587745 () Bool)

(assert (=> b!4004830 m!4587745))

(assert (=> b!4004830 m!4587745))

(declare-fun m!4587747 () Bool)

(assert (=> b!4004830 m!4587747))

(declare-fun m!4587749 () Bool)

(assert (=> b!4004828 m!4587749))

(assert (=> b!4004829 m!4587737))

(declare-fun m!4587751 () Bool)

(assert (=> b!4004829 m!4587751))

(declare-fun m!4587753 () Bool)

(assert (=> d!1184721 m!4587753))

(assert (=> d!1184721 m!4586497))

(assert (=> d!1184721 m!4586499))

(assert (=> d!1184721 m!4586831))

(assert (=> b!4004831 m!4587737))

(declare-fun m!4587755 () Bool)

(assert (=> b!4004831 m!4587755))

(assert (=> b!4004831 m!4586165))

(assert (=> b!4004833 m!4587737))

(assert (=> b!4004833 m!4587739))

(assert (=> b!4004833 m!4587739))

(assert (=> b!4004833 m!4587741))

(assert (=> b!4004832 m!4587737))

(assert (=> b!4004832 m!4587739))

(assert (=> b!4004832 m!4587739))

(assert (=> b!4004832 m!4587741))

(assert (=> b!4004832 m!4587741))

(declare-fun m!4587757 () Bool)

(assert (=> b!4004832 m!4587757))

(assert (=> b!4003851 d!1184721))

(declare-fun b!4004838 () Bool)

(declare-fun e!2483533 () Bool)

(assert (=> b!4004838 (= e!2483533 (isPrefix!3899 (tail!6241 (tail!6241 lt!1416025)) (tail!6241 (tail!6241 lt!1416044))))))

(declare-fun b!4004836 () Bool)

(declare-fun e!2483534 () Bool)

(assert (=> b!4004836 (= e!2483534 e!2483533)))

(declare-fun res!1627385 () Bool)

(assert (=> b!4004836 (=> (not res!1627385) (not e!2483533))))

(assert (=> b!4004836 (= res!1627385 (not ((_ is Nil!42868) (tail!6241 lt!1416044))))))

(declare-fun b!4004837 () Bool)

(declare-fun res!1627384 () Bool)

(assert (=> b!4004837 (=> (not res!1627384) (not e!2483533))))

(assert (=> b!4004837 (= res!1627384 (= (head!8509 (tail!6241 lt!1416025)) (head!8509 (tail!6241 lt!1416044))))))

(declare-fun b!4004839 () Bool)

(declare-fun e!2483535 () Bool)

(assert (=> b!4004839 (= e!2483535 (>= (size!32050 (tail!6241 lt!1416044)) (size!32050 (tail!6241 lt!1416025))))))

(declare-fun d!1184723 () Bool)

(assert (=> d!1184723 e!2483535))

(declare-fun res!1627383 () Bool)

(assert (=> d!1184723 (=> res!1627383 e!2483535)))

(declare-fun lt!1416584 () Bool)

(assert (=> d!1184723 (= res!1627383 (not lt!1416584))))

(assert (=> d!1184723 (= lt!1416584 e!2483534)))

(declare-fun res!1627386 () Bool)

(assert (=> d!1184723 (=> res!1627386 e!2483534)))

(assert (=> d!1184723 (= res!1627386 ((_ is Nil!42868) (tail!6241 lt!1416025)))))

(assert (=> d!1184723 (= (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 lt!1416044)) lt!1416584)))

(assert (= (and d!1184723 (not res!1627386)) b!4004836))

(assert (= (and b!4004836 res!1627385) b!4004837))

(assert (= (and b!4004837 res!1627384) b!4004838))

(assert (= (and d!1184723 (not res!1627383)) b!4004839))

(assert (=> b!4004838 m!4586167))

(assert (=> b!4004838 m!4587167))

(assert (=> b!4004838 m!4586157))

(assert (=> b!4004838 m!4586869))

(assert (=> b!4004838 m!4587167))

(assert (=> b!4004838 m!4586869))

(declare-fun m!4587759 () Bool)

(assert (=> b!4004838 m!4587759))

(assert (=> b!4004837 m!4586167))

(assert (=> b!4004837 m!4587171))

(assert (=> b!4004837 m!4586157))

(assert (=> b!4004837 m!4586875))

(assert (=> b!4004839 m!4586157))

(assert (=> b!4004839 m!4586877))

(assert (=> b!4004839 m!4586167))

(assert (=> b!4004839 m!4587173))

(assert (=> b!4003611 d!1184723))

(assert (=> b!4003611 d!1184409))

(assert (=> b!4003611 d!1184301))

(declare-fun d!1184725 () Bool)

(declare-fun charsToBigInt!0 (List!42993 Int) Int)

(assert (=> d!1184725 (= (inv!15 (value!214776 token!484)) (= (charsToBigInt!0 (text!49743 (value!214776 token!484)) 0) (value!214771 (value!214776 token!484))))))

(declare-fun bs!588999 () Bool)

(assert (= bs!588999 d!1184725))

(declare-fun m!4587761 () Bool)

(assert (=> bs!588999 m!4587761))

(assert (=> b!4003959 d!1184725))

(declare-fun d!1184727 () Bool)

(declare-fun lt!1416585 () Int)

(assert (=> d!1184727 (>= lt!1416585 0)))

(declare-fun e!2483536 () Int)

(assert (=> d!1184727 (= lt!1416585 e!2483536)))

(declare-fun c!692516 () Bool)

(assert (=> d!1184727 (= c!692516 ((_ is Nil!42868) (t!332333 lt!1416025)))))

(assert (=> d!1184727 (= (size!32050 (t!332333 lt!1416025)) lt!1416585)))

(declare-fun b!4004840 () Bool)

(assert (=> b!4004840 (= e!2483536 0)))

(declare-fun b!4004841 () Bool)

(assert (=> b!4004841 (= e!2483536 (+ 1 (size!32050 (t!332333 (t!332333 lt!1416025)))))))

(assert (= (and d!1184727 c!692516) b!4004840))

(assert (= (and d!1184727 (not c!692516)) b!4004841))

(declare-fun m!4587763 () Bool)

(assert (=> b!4004841 m!4587763))

(assert (=> b!4003647 d!1184727))

(declare-fun d!1184729 () Bool)

(declare-fun lt!1416586 () Int)

(assert (=> d!1184729 (>= lt!1416586 0)))

(declare-fun e!2483537 () Int)

(assert (=> d!1184729 (= lt!1416586 e!2483537)))

(declare-fun c!692517 () Bool)

(assert (=> d!1184729 (= c!692517 ((_ is Nil!42868) (_2!24147 (get!14090 lt!1416178))))))

(assert (=> d!1184729 (= (size!32050 (_2!24147 (get!14090 lt!1416178))) lt!1416586)))

(declare-fun b!4004842 () Bool)

(assert (=> b!4004842 (= e!2483537 0)))

(declare-fun b!4004843 () Bool)

(assert (=> b!4004843 (= e!2483537 (+ 1 (size!32050 (t!332333 (_2!24147 (get!14090 lt!1416178))))))))

(assert (= (and d!1184729 c!692517) b!4004842))

(assert (= (and d!1184729 (not c!692517)) b!4004843))

(declare-fun m!4587765 () Bool)

(assert (=> b!4004843 m!4587765))

(assert (=> b!4003924 d!1184729))

(assert (=> b!4003924 d!1184419))

(assert (=> b!4003924 d!1184401))

(assert (=> b!4003894 d!1184167))

(assert (=> b!4003894 d!1184169))

(declare-fun b!4004844 () Bool)

(declare-fun res!1627388 () Bool)

(declare-fun e!2483538 () Bool)

(assert (=> b!4004844 (=> (not res!1627388) (not e!2483538))))

(declare-fun lt!1416588 () Option!9226)

(assert (=> b!4004844 (= res!1627388 (< (size!32050 (_2!24147 (get!14090 lt!1416588))) (size!32050 lt!1416044)))))

(declare-fun b!4004845 () Bool)

(declare-fun res!1627389 () Bool)

(assert (=> b!4004845 (=> (not res!1627389) (not e!2483538))))

(assert (=> b!4004845 (= res!1627389 (= (++!11214 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416588)))) (_2!24147 (get!14090 lt!1416588))) lt!1416044))))

(declare-fun b!4004846 () Bool)

(declare-fun res!1627390 () Bool)

(assert (=> b!4004846 (=> (not res!1627390) (not e!2483538))))

(assert (=> b!4004846 (= res!1627390 (= (value!214776 (_1!24147 (get!14090 lt!1416588))) (apply!10009 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416588)))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416588)))))))))

(declare-fun b!4004847 () Bool)

(assert (=> b!4004847 (= e!2483538 (= (size!32049 (_1!24147 (get!14090 lt!1416588))) (size!32050 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416588))))))))

(declare-fun b!4004848 () Bool)

(declare-fun e!2483540 () Option!9226)

(declare-fun lt!1416591 () tuple2!42030)

(assert (=> b!4004848 (= e!2483540 (Some!9225 (tuple2!42027 (Token!12763 (apply!10009 (transformation!6812 (h!48290 rules!2999)) (seqFromList!5037 (_1!24149 lt!1416591))) (h!48290 rules!2999) (size!32052 (seqFromList!5037 (_1!24149 lt!1416591))) (_1!24149 lt!1416591)) (_2!24149 lt!1416591))))))

(declare-fun lt!1416589 () Unit!61858)

(assert (=> b!4004848 (= lt!1416589 (longestMatchIsAcceptedByMatchOrIsEmpty!1322 (regex!6812 (h!48290 rules!2999)) lt!1416044))))

(declare-fun res!1627392 () Bool)

(assert (=> b!4004848 (= res!1627392 (isEmpty!25611 (_1!24149 (findLongestMatchInner!1349 (regex!6812 (h!48290 rules!2999)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))

(declare-fun e!2483539 () Bool)

(assert (=> b!4004848 (=> res!1627392 e!2483539)))

(assert (=> b!4004848 e!2483539))

(declare-fun lt!1416587 () Unit!61858)

(assert (=> b!4004848 (= lt!1416587 lt!1416589)))

(declare-fun lt!1416590 () Unit!61858)

(assert (=> b!4004848 (= lt!1416590 (lemmaSemiInverse!1869 (transformation!6812 (h!48290 rules!2999)) (seqFromList!5037 (_1!24149 lt!1416591))))))

(declare-fun b!4004849 () Bool)

(assert (=> b!4004849 (= e!2483540 None!9225)))

(declare-fun d!1184731 () Bool)

(declare-fun e!2483541 () Bool)

(assert (=> d!1184731 e!2483541))

(declare-fun res!1627393 () Bool)

(assert (=> d!1184731 (=> res!1627393 e!2483541)))

(assert (=> d!1184731 (= res!1627393 (isEmpty!25612 lt!1416588))))

(assert (=> d!1184731 (= lt!1416588 e!2483540)))

(declare-fun c!692518 () Bool)

(assert (=> d!1184731 (= c!692518 (isEmpty!25611 (_1!24149 lt!1416591)))))

(assert (=> d!1184731 (= lt!1416591 (findLongestMatch!1262 (regex!6812 (h!48290 rules!2999)) lt!1416044))))

(assert (=> d!1184731 (ruleValid!2744 thiss!21717 (h!48290 rules!2999))))

(assert (=> d!1184731 (= (maxPrefixOneRule!2719 thiss!21717 (h!48290 rules!2999) lt!1416044) lt!1416588)))

(declare-fun b!4004850 () Bool)

(assert (=> b!4004850 (= e!2483539 (matchR!5680 (regex!6812 (h!48290 rules!2999)) (_1!24149 (findLongestMatchInner!1349 (regex!6812 (h!48290 rules!2999)) Nil!42868 (size!32050 Nil!42868) lt!1416044 lt!1416044 (size!32050 lt!1416044)))))))

(declare-fun b!4004851 () Bool)

(assert (=> b!4004851 (= e!2483541 e!2483538)))

(declare-fun res!1627387 () Bool)

(assert (=> b!4004851 (=> (not res!1627387) (not e!2483538))))

(assert (=> b!4004851 (= res!1627387 (matchR!5680 (regex!6812 (h!48290 rules!2999)) (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416588))))))))

(declare-fun b!4004852 () Bool)

(declare-fun res!1627391 () Bool)

(assert (=> b!4004852 (=> (not res!1627391) (not e!2483538))))

(assert (=> b!4004852 (= res!1627391 (= (rule!9846 (_1!24147 (get!14090 lt!1416588))) (h!48290 rules!2999)))))

(assert (= (and d!1184731 c!692518) b!4004849))

(assert (= (and d!1184731 (not c!692518)) b!4004848))

(assert (= (and b!4004848 (not res!1627392)) b!4004850))

(assert (= (and d!1184731 (not res!1627393)) b!4004851))

(assert (= (and b!4004851 res!1627387) b!4004845))

(assert (= (and b!4004845 res!1627389) b!4004844))

(assert (= (and b!4004844 res!1627388) b!4004852))

(assert (= (and b!4004852 res!1627391) b!4004846))

(assert (= (and b!4004846 res!1627390) b!4004847))

(declare-fun m!4587767 () Bool)

(assert (=> b!4004851 m!4587767))

(declare-fun m!4587769 () Bool)

(assert (=> b!4004851 m!4587769))

(assert (=> b!4004851 m!4587769))

(declare-fun m!4587771 () Bool)

(assert (=> b!4004851 m!4587771))

(assert (=> b!4004851 m!4587771))

(declare-fun m!4587773 () Bool)

(assert (=> b!4004851 m!4587773))

(declare-fun m!4587775 () Bool)

(assert (=> d!1184731 m!4587775))

(declare-fun m!4587777 () Bool)

(assert (=> d!1184731 m!4587777))

(declare-fun m!4587779 () Bool)

(assert (=> d!1184731 m!4587779))

(assert (=> d!1184731 m!4586829))

(assert (=> b!4004845 m!4587767))

(assert (=> b!4004845 m!4587769))

(assert (=> b!4004845 m!4587769))

(assert (=> b!4004845 m!4587771))

(assert (=> b!4004845 m!4587771))

(declare-fun m!4587781 () Bool)

(assert (=> b!4004845 m!4587781))

(assert (=> b!4004846 m!4587767))

(declare-fun m!4587783 () Bool)

(assert (=> b!4004846 m!4587783))

(assert (=> b!4004846 m!4587783))

(declare-fun m!4587785 () Bool)

(assert (=> b!4004846 m!4587785))

(assert (=> b!4004852 m!4587767))

(declare-fun m!4587787 () Bool)

(assert (=> b!4004848 m!4587787))

(declare-fun m!4587789 () Bool)

(assert (=> b!4004848 m!4587789))

(declare-fun m!4587791 () Bool)

(assert (=> b!4004848 m!4587791))

(declare-fun m!4587793 () Bool)

(assert (=> b!4004848 m!4587793))

(assert (=> b!4004848 m!4587789))

(declare-fun m!4587795 () Bool)

(assert (=> b!4004848 m!4587795))

(assert (=> b!4004848 m!4586573))

(assert (=> b!4004848 m!4586165))

(declare-fun m!4587797 () Bool)

(assert (=> b!4004848 m!4587797))

(assert (=> b!4004848 m!4586165))

(assert (=> b!4004848 m!4587789))

(declare-fun m!4587799 () Bool)

(assert (=> b!4004848 m!4587799))

(assert (=> b!4004848 m!4587789))

(assert (=> b!4004848 m!4586573))

(assert (=> b!4004844 m!4587767))

(declare-fun m!4587801 () Bool)

(assert (=> b!4004844 m!4587801))

(assert (=> b!4004844 m!4586165))

(assert (=> b!4004850 m!4586573))

(assert (=> b!4004850 m!4586165))

(assert (=> b!4004850 m!4586573))

(assert (=> b!4004850 m!4586165))

(assert (=> b!4004850 m!4587797))

(declare-fun m!4587803 () Bool)

(assert (=> b!4004850 m!4587803))

(assert (=> b!4004847 m!4587767))

(declare-fun m!4587805 () Bool)

(assert (=> b!4004847 m!4587805))

(assert (=> bm!286017 d!1184731))

(declare-fun d!1184733 () Bool)

(declare-fun e!2483543 () Bool)

(assert (=> d!1184733 e!2483543))

(declare-fun res!1627395 () Bool)

(assert (=> d!1184733 (=> (not res!1627395) (not e!2483543))))

(declare-fun lt!1416592 () List!42992)

(assert (=> d!1184733 (= res!1627395 (= (content!6496 lt!1416592) ((_ map or) (content!6496 (t!332333 lt!1416025)) (content!6496 newSuffixResult!27))))))

(declare-fun e!2483542 () List!42992)

(assert (=> d!1184733 (= lt!1416592 e!2483542)))

(declare-fun c!692519 () Bool)

(assert (=> d!1184733 (= c!692519 ((_ is Nil!42868) (t!332333 lt!1416025)))))

(assert (=> d!1184733 (= (++!11214 (t!332333 lt!1416025) newSuffixResult!27) lt!1416592)))

(declare-fun b!4004856 () Bool)

(assert (=> b!4004856 (= e!2483543 (or (not (= newSuffixResult!27 Nil!42868)) (= lt!1416592 (t!332333 lt!1416025))))))

(declare-fun b!4004854 () Bool)

(assert (=> b!4004854 (= e!2483542 (Cons!42868 (h!48288 (t!332333 lt!1416025)) (++!11214 (t!332333 (t!332333 lt!1416025)) newSuffixResult!27)))))

(declare-fun b!4004853 () Bool)

(assert (=> b!4004853 (= e!2483542 newSuffixResult!27)))

(declare-fun b!4004855 () Bool)

(declare-fun res!1627394 () Bool)

(assert (=> b!4004855 (=> (not res!1627394) (not e!2483543))))

(assert (=> b!4004855 (= res!1627394 (= (size!32050 lt!1416592) (+ (size!32050 (t!332333 lt!1416025)) (size!32050 newSuffixResult!27))))))

(assert (= (and d!1184733 c!692519) b!4004853))

(assert (= (and d!1184733 (not c!692519)) b!4004854))

(assert (= (and d!1184733 res!1627395) b!4004855))

(assert (= (and b!4004855 res!1627394) b!4004856))

(declare-fun m!4587807 () Bool)

(assert (=> d!1184733 m!4587807))

(assert (=> d!1184733 m!4586841))

(assert (=> d!1184733 m!4586609))

(declare-fun m!4587809 () Bool)

(assert (=> b!4004854 m!4587809))

(declare-fun m!4587811 () Bool)

(assert (=> b!4004855 m!4587811))

(assert (=> b!4004855 m!4586201))

(assert (=> b!4004855 m!4586615))

(assert (=> b!4003940 d!1184733))

(declare-fun b!4004859 () Bool)

(declare-fun e!2483544 () Bool)

(assert (=> b!4004859 (= e!2483544 (isPrefix!3899 (tail!6241 (tail!6241 lt!1416025)) (tail!6241 (tail!6241 lt!1416037))))))

(declare-fun b!4004857 () Bool)

(declare-fun e!2483545 () Bool)

(assert (=> b!4004857 (= e!2483545 e!2483544)))

(declare-fun res!1627398 () Bool)

(assert (=> b!4004857 (=> (not res!1627398) (not e!2483544))))

(assert (=> b!4004857 (= res!1627398 (not ((_ is Nil!42868) (tail!6241 lt!1416037))))))

(declare-fun b!4004858 () Bool)

(declare-fun res!1627397 () Bool)

(assert (=> b!4004858 (=> (not res!1627397) (not e!2483544))))

(assert (=> b!4004858 (= res!1627397 (= (head!8509 (tail!6241 lt!1416025)) (head!8509 (tail!6241 lt!1416037))))))

(declare-fun b!4004860 () Bool)

(declare-fun e!2483546 () Bool)

(assert (=> b!4004860 (= e!2483546 (>= (size!32050 (tail!6241 lt!1416037)) (size!32050 (tail!6241 lt!1416025))))))

(declare-fun d!1184735 () Bool)

(assert (=> d!1184735 e!2483546))

(declare-fun res!1627396 () Bool)

(assert (=> d!1184735 (=> res!1627396 e!2483546)))

(declare-fun lt!1416593 () Bool)

(assert (=> d!1184735 (= res!1627396 (not lt!1416593))))

(assert (=> d!1184735 (= lt!1416593 e!2483545)))

(declare-fun res!1627399 () Bool)

(assert (=> d!1184735 (=> res!1627399 e!2483545)))

(assert (=> d!1184735 (= res!1627399 ((_ is Nil!42868) (tail!6241 lt!1416025)))))

(assert (=> d!1184735 (= (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 lt!1416037)) lt!1416593)))

(assert (= (and d!1184735 (not res!1627399)) b!4004857))

(assert (= (and b!4004857 res!1627398) b!4004858))

(assert (= (and b!4004858 res!1627397) b!4004859))

(assert (= (and d!1184735 (not res!1627396)) b!4004860))

(assert (=> b!4004859 m!4586167))

(assert (=> b!4004859 m!4587167))

(assert (=> b!4004859 m!4586169))

(declare-fun m!4587813 () Bool)

(assert (=> b!4004859 m!4587813))

(assert (=> b!4004859 m!4587167))

(assert (=> b!4004859 m!4587813))

(declare-fun m!4587815 () Bool)

(assert (=> b!4004859 m!4587815))

(assert (=> b!4004858 m!4586167))

(assert (=> b!4004858 m!4587171))

(assert (=> b!4004858 m!4586169))

(declare-fun m!4587817 () Bool)

(assert (=> b!4004858 m!4587817))

(assert (=> b!4004860 m!4586169))

(declare-fun m!4587819 () Bool)

(assert (=> b!4004860 m!4587819))

(assert (=> b!4004860 m!4586167))

(assert (=> b!4004860 m!4587173))

(assert (=> b!4003607 d!1184735))

(assert (=> b!4003607 d!1184409))

(declare-fun d!1184737 () Bool)

(assert (=> d!1184737 (= (tail!6241 lt!1416037) (t!332333 lt!1416037))))

(assert (=> b!4003607 d!1184737))

(declare-fun d!1184739 () Bool)

(declare-fun c!692520 () Bool)

(assert (=> d!1184739 (= c!692520 ((_ is Nil!42868) lt!1416190))))

(declare-fun e!2483547 () (InoxSet C!23620))

(assert (=> d!1184739 (= (content!6496 lt!1416190) e!2483547)))

(declare-fun b!4004861 () Bool)

(assert (=> b!4004861 (= e!2483547 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004862 () Bool)

(assert (=> b!4004862 (= e!2483547 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416190) true) (content!6496 (t!332333 lt!1416190))))))

(assert (= (and d!1184739 c!692520) b!4004861))

(assert (= (and d!1184739 (not c!692520)) b!4004862))

(declare-fun m!4587821 () Bool)

(assert (=> b!4004862 m!4587821))

(declare-fun m!4587823 () Bool)

(assert (=> b!4004862 m!4587823))

(assert (=> d!1184195 d!1184739))

(assert (=> d!1184195 d!1184529))

(declare-fun d!1184741 () Bool)

(declare-fun c!692521 () Bool)

(assert (=> d!1184741 (= c!692521 ((_ is Nil!42868) newSuffixResult!27))))

(declare-fun e!2483548 () (InoxSet C!23620))

(assert (=> d!1184741 (= (content!6496 newSuffixResult!27) e!2483548)))

(declare-fun b!4004863 () Bool)

(assert (=> b!4004863 (= e!2483548 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004864 () Bool)

(assert (=> b!4004864 (= e!2483548 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 newSuffixResult!27) true) (content!6496 (t!332333 newSuffixResult!27))))))

(assert (= (and d!1184741 c!692521) b!4004863))

(assert (= (and d!1184741 (not c!692521)) b!4004864))

(declare-fun m!4587825 () Bool)

(assert (=> b!4004864 m!4587825))

(declare-fun m!4587827 () Bool)

(assert (=> b!4004864 m!4587827))

(assert (=> d!1184195 d!1184741))

(assert (=> b!4003905 d!1184487))

(assert (=> b!4003604 d!1184401))

(assert (=> b!4003604 d!1184075))

(declare-fun d!1184743 () Bool)

(declare-fun e!2483550 () Bool)

(assert (=> d!1184743 e!2483550))

(declare-fun res!1627401 () Bool)

(assert (=> d!1184743 (=> (not res!1627401) (not e!2483550))))

(declare-fun lt!1416594 () List!42992)

(assert (=> d!1184743 (= res!1627401 (= (content!6496 lt!1416594) ((_ map or) (content!6496 (t!332333 lt!1416025)) (content!6496 suffixResult!105))))))

(declare-fun e!2483549 () List!42992)

(assert (=> d!1184743 (= lt!1416594 e!2483549)))

(declare-fun c!692522 () Bool)

(assert (=> d!1184743 (= c!692522 ((_ is Nil!42868) (t!332333 lt!1416025)))))

(assert (=> d!1184743 (= (++!11214 (t!332333 lt!1416025) suffixResult!105) lt!1416594)))

(declare-fun b!4004868 () Bool)

(assert (=> b!4004868 (= e!2483550 (or (not (= suffixResult!105 Nil!42868)) (= lt!1416594 (t!332333 lt!1416025))))))

(declare-fun b!4004866 () Bool)

(assert (=> b!4004866 (= e!2483549 (Cons!42868 (h!48288 (t!332333 lt!1416025)) (++!11214 (t!332333 (t!332333 lt!1416025)) suffixResult!105)))))

(declare-fun b!4004865 () Bool)

(assert (=> b!4004865 (= e!2483549 suffixResult!105)))

(declare-fun b!4004867 () Bool)

(declare-fun res!1627400 () Bool)

(assert (=> b!4004867 (=> (not res!1627400) (not e!2483550))))

(assert (=> b!4004867 (= res!1627400 (= (size!32050 lt!1416594) (+ (size!32050 (t!332333 lt!1416025)) (size!32050 suffixResult!105))))))

(assert (= (and d!1184743 c!692522) b!4004865))

(assert (= (and d!1184743 (not c!692522)) b!4004866))

(assert (= (and d!1184743 res!1627401) b!4004867))

(assert (= (and b!4004867 res!1627400) b!4004868))

(declare-fun m!4587829 () Bool)

(assert (=> d!1184743 m!4587829))

(assert (=> d!1184743 m!4586841))

(assert (=> d!1184743 m!4586261))

(declare-fun m!4587831 () Bool)

(assert (=> b!4004866 m!4587831))

(declare-fun m!4587833 () Bool)

(assert (=> b!4004867 m!4587833))

(assert (=> b!4004867 m!4586201))

(assert (=> b!4004867 m!4586267))

(assert (=> b!4003670 d!1184743))

(assert (=> b!4003932 d!1184419))

(declare-fun d!1184745 () Bool)

(declare-fun lt!1416595 () Int)

(assert (=> d!1184745 (>= lt!1416595 0)))

(declare-fun e!2483551 () Int)

(assert (=> d!1184745 (= lt!1416595 e!2483551)))

(declare-fun c!692523 () Bool)

(assert (=> d!1184745 (= c!692523 ((_ is Nil!42868) lt!1416163))))

(assert (=> d!1184745 (= (size!32050 lt!1416163) lt!1416595)))

(declare-fun b!4004869 () Bool)

(assert (=> b!4004869 (= e!2483551 0)))

(declare-fun b!4004870 () Bool)

(assert (=> b!4004870 (= e!2483551 (+ 1 (size!32050 (t!332333 lt!1416163))))))

(assert (= (and d!1184745 c!692523) b!4004869))

(assert (= (and d!1184745 (not c!692523)) b!4004870))

(declare-fun m!4587835 () Bool)

(assert (=> b!4004870 m!4587835))

(assert (=> b!4003889 d!1184745))

(assert (=> b!4003889 d!1184075))

(assert (=> b!4003889 d!1184167))

(declare-fun d!1184747 () Bool)

(declare-fun lt!1416596 () Int)

(assert (=> d!1184747 (>= lt!1416596 0)))

(declare-fun e!2483552 () Int)

(assert (=> d!1184747 (= lt!1416596 e!2483552)))

(declare-fun c!692524 () Bool)

(assert (=> d!1184747 (= c!692524 ((_ is Nil!42868) lt!1416200))))

(assert (=> d!1184747 (= (size!32050 lt!1416200) lt!1416596)))

(declare-fun b!4004871 () Bool)

(assert (=> b!4004871 (= e!2483552 0)))

(declare-fun b!4004872 () Bool)

(assert (=> b!4004872 (= e!2483552 (+ 1 (size!32050 (t!332333 lt!1416200))))))

(assert (= (and d!1184747 c!692524) b!4004871))

(assert (= (and d!1184747 (not c!692524)) b!4004872))

(declare-fun m!4587837 () Bool)

(assert (=> b!4004872 m!4587837))

(assert (=> b!4003978 d!1184747))

(assert (=> b!4003978 d!1184073))

(declare-fun d!1184749 () Bool)

(declare-fun lt!1416597 () Int)

(assert (=> d!1184749 (>= lt!1416597 0)))

(declare-fun e!2483553 () Int)

(assert (=> d!1184749 (= lt!1416597 e!2483553)))

(declare-fun c!692525 () Bool)

(assert (=> d!1184749 (= c!692525 ((_ is Nil!42868) lt!1416039))))

(assert (=> d!1184749 (= (size!32050 lt!1416039) lt!1416597)))

(declare-fun b!4004873 () Bool)

(assert (=> b!4004873 (= e!2483553 0)))

(declare-fun b!4004874 () Bool)

(assert (=> b!4004874 (= e!2483553 (+ 1 (size!32050 (t!332333 lt!1416039))))))

(assert (= (and d!1184749 c!692525) b!4004873))

(assert (= (and d!1184749 (not c!692525)) b!4004874))

(declare-fun m!4587839 () Bool)

(assert (=> b!4004874 m!4587839))

(assert (=> b!4003978 d!1184749))

(declare-fun d!1184751 () Bool)

(declare-fun e!2483555 () Bool)

(assert (=> d!1184751 e!2483555))

(declare-fun res!1627403 () Bool)

(assert (=> d!1184751 (=> (not res!1627403) (not e!2483555))))

(declare-fun lt!1416598 () List!42992)

(assert (=> d!1184751 (= res!1627403 (= (content!6496 lt!1416598) ((_ map or) (content!6496 (t!332333 lt!1416045)) (content!6496 suffix!1299))))))

(declare-fun e!2483554 () List!42992)

(assert (=> d!1184751 (= lt!1416598 e!2483554)))

(declare-fun c!692526 () Bool)

(assert (=> d!1184751 (= c!692526 ((_ is Nil!42868) (t!332333 lt!1416045)))))

(assert (=> d!1184751 (= (++!11214 (t!332333 lt!1416045) suffix!1299) lt!1416598)))

(declare-fun b!4004878 () Bool)

(assert (=> b!4004878 (= e!2483555 (or (not (= suffix!1299 Nil!42868)) (= lt!1416598 (t!332333 lt!1416045))))))

(declare-fun b!4004876 () Bool)

(assert (=> b!4004876 (= e!2483554 (Cons!42868 (h!48288 (t!332333 lt!1416045)) (++!11214 (t!332333 (t!332333 lt!1416045)) suffix!1299)))))

(declare-fun b!4004875 () Bool)

(assert (=> b!4004875 (= e!2483554 suffix!1299)))

(declare-fun b!4004877 () Bool)

(declare-fun res!1627402 () Bool)

(assert (=> b!4004877 (=> (not res!1627402) (not e!2483555))))

(assert (=> b!4004877 (= res!1627402 (= (size!32050 lt!1416598) (+ (size!32050 (t!332333 lt!1416045)) (size!32050 suffix!1299))))))

(assert (= (and d!1184751 c!692526) b!4004875))

(assert (= (and d!1184751 (not c!692526)) b!4004876))

(assert (= (and d!1184751 res!1627403) b!4004877))

(assert (= (and b!4004877 res!1627402) b!4004878))

(declare-fun m!4587841 () Bool)

(assert (=> d!1184751 m!4587841))

(assert (=> d!1184751 m!4587717))

(assert (=> d!1184751 m!4586515))

(declare-fun m!4587843 () Bool)

(assert (=> b!4004876 m!4587843))

(declare-fun m!4587845 () Bool)

(assert (=> b!4004877 m!4587845))

(assert (=> b!4004877 m!4587657))

(assert (=> b!4004877 m!4586031))

(assert (=> b!4003981 d!1184751))

(assert (=> b!4003927 d!1184419))

(declare-fun d!1184753 () Bool)

(declare-fun lt!1416599 () Int)

(assert (=> d!1184753 (>= lt!1416599 0)))

(declare-fun e!2483556 () Int)

(assert (=> d!1184753 (= lt!1416599 e!2483556)))

(declare-fun c!692527 () Bool)

(assert (=> d!1184753 (= c!692527 ((_ is Nil!42868) (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178)))))))

(assert (=> d!1184753 (= (size!32050 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178)))) lt!1416599)))

(declare-fun b!4004879 () Bool)

(assert (=> b!4004879 (= e!2483556 0)))

(declare-fun b!4004880 () Bool)

(assert (=> b!4004880 (= e!2483556 (+ 1 (size!32050 (t!332333 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416178)))))))))

(assert (= (and d!1184753 c!692527) b!4004879))

(assert (= (and d!1184753 (not c!692527)) b!4004880))

(declare-fun m!4587847 () Bool)

(assert (=> b!4004880 m!4587847))

(assert (=> b!4003927 d!1184753))

(declare-fun d!1184755 () Bool)

(declare-fun c!692528 () Bool)

(assert (=> d!1184755 (= c!692528 ((_ is Nil!42868) lt!1416163))))

(declare-fun e!2483557 () (InoxSet C!23620))

(assert (=> d!1184755 (= (content!6496 lt!1416163) e!2483557)))

(declare-fun b!4004881 () Bool)

(assert (=> b!4004881 (= e!2483557 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004882 () Bool)

(assert (=> b!4004882 (= e!2483557 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416163) true) (content!6496 (t!332333 lt!1416163))))))

(assert (= (and d!1184755 c!692528) b!4004881))

(assert (= (and d!1184755 (not c!692528)) b!4004882))

(declare-fun m!4587849 () Bool)

(assert (=> b!4004882 m!4587849))

(declare-fun m!4587851 () Bool)

(assert (=> b!4004882 m!4587851))

(assert (=> d!1184163 d!1184755))

(assert (=> d!1184163 d!1184685))

(assert (=> d!1184163 d!1184537))

(declare-fun b!4004883 () Bool)

(declare-fun e!2483563 () Bool)

(declare-fun e!2483561 () Bool)

(assert (=> b!4004883 (= e!2483563 e!2483561)))

(declare-fun res!1627408 () Bool)

(assert (=> b!4004883 (=> (not res!1627408) (not e!2483561))))

(declare-fun lt!1416600 () Bool)

(assert (=> b!4004883 (= res!1627408 (not lt!1416600))))

(declare-fun b!4004884 () Bool)

(declare-fun res!1627409 () Bool)

(assert (=> b!4004884 (=> res!1627409 e!2483563)))

(declare-fun e!2483560 () Bool)

(assert (=> b!4004884 (= res!1627409 e!2483560)))

(declare-fun res!1627411 () Bool)

(assert (=> b!4004884 (=> (not res!1627411) (not e!2483560))))

(assert (=> b!4004884 (= res!1627411 lt!1416600)))

(declare-fun b!4004885 () Bool)

(declare-fun e!2483564 () Bool)

(assert (=> b!4004885 (= e!2483564 (not (= (head!8509 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))) (c!692249 (regex!6812 (rule!9846 token!484))))))))

(declare-fun b!4004886 () Bool)

(declare-fun e!2483562 () Bool)

(assert (=> b!4004886 (= e!2483562 (nullable!4107 (regex!6812 (rule!9846 token!484))))))

(declare-fun b!4004887 () Bool)

(declare-fun res!1627406 () Bool)

(assert (=> b!4004887 (=> (not res!1627406) (not e!2483560))))

(assert (=> b!4004887 (= res!1627406 (isEmpty!25611 (tail!6241 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178)))))))))

(declare-fun b!4004888 () Bool)

(declare-fun res!1627404 () Bool)

(assert (=> b!4004888 (=> res!1627404 e!2483563)))

(assert (=> b!4004888 (= res!1627404 (not ((_ is ElementMatch!11717) (regex!6812 (rule!9846 token!484)))))))

(declare-fun e!2483559 () Bool)

(assert (=> b!4004888 (= e!2483559 e!2483563)))

(declare-fun b!4004889 () Bool)

(assert (=> b!4004889 (= e!2483562 (matchR!5680 (derivativeStep!3517 (regex!6812 (rule!9846 token!484)) (head!8509 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178)))))) (tail!6241 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178)))))))))

(declare-fun b!4004890 () Bool)

(declare-fun res!1627410 () Bool)

(assert (=> b!4004890 (=> (not res!1627410) (not e!2483560))))

(declare-fun call!286100 () Bool)

(assert (=> b!4004890 (= res!1627410 (not call!286100))))

(declare-fun b!4004891 () Bool)

(assert (=> b!4004891 (= e!2483559 (not lt!1416600))))

(declare-fun b!4004892 () Bool)

(assert (=> b!4004892 (= e!2483560 (= (head!8509 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))) (c!692249 (regex!6812 (rule!9846 token!484)))))))

(declare-fun b!4004893 () Bool)

(assert (=> b!4004893 (= e!2483561 e!2483564)))

(declare-fun res!1627407 () Bool)

(assert (=> b!4004893 (=> res!1627407 e!2483564)))

(assert (=> b!4004893 (= res!1627407 call!286100)))

(declare-fun b!4004894 () Bool)

(declare-fun e!2483558 () Bool)

(assert (=> b!4004894 (= e!2483558 e!2483559)))

(declare-fun c!692530 () Bool)

(assert (=> b!4004894 (= c!692530 ((_ is EmptyLang!11717) (regex!6812 (rule!9846 token!484))))))

(declare-fun b!4004895 () Bool)

(declare-fun res!1627405 () Bool)

(assert (=> b!4004895 (=> res!1627405 e!2483564)))

(assert (=> b!4004895 (= res!1627405 (not (isEmpty!25611 (tail!6241 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))))))))

(declare-fun b!4004896 () Bool)

(assert (=> b!4004896 (= e!2483558 (= lt!1416600 call!286100))))

(declare-fun d!1184757 () Bool)

(assert (=> d!1184757 e!2483558))

(declare-fun c!692529 () Bool)

(assert (=> d!1184757 (= c!692529 ((_ is EmptyExpr!11717) (regex!6812 (rule!9846 token!484))))))

(assert (=> d!1184757 (= lt!1416600 e!2483562)))

(declare-fun c!692531 () Bool)

(assert (=> d!1184757 (= c!692531 (isEmpty!25611 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))))))

(assert (=> d!1184757 (validRegex!5307 (regex!6812 (rule!9846 token!484)))))

(assert (=> d!1184757 (= (matchR!5680 (regex!6812 (rule!9846 token!484)) (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))) lt!1416600)))

(declare-fun bm!286095 () Bool)

(assert (=> bm!286095 (= call!286100 (isEmpty!25611 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416178))))))))

(assert (= (and d!1184757 c!692531) b!4004886))

(assert (= (and d!1184757 (not c!692531)) b!4004889))

(assert (= (and d!1184757 c!692529) b!4004896))

(assert (= (and d!1184757 (not c!692529)) b!4004894))

(assert (= (and b!4004894 c!692530) b!4004891))

(assert (= (and b!4004894 (not c!692530)) b!4004888))

(assert (= (and b!4004888 (not res!1627404)) b!4004884))

(assert (= (and b!4004884 res!1627411) b!4004890))

(assert (= (and b!4004890 res!1627410) b!4004887))

(assert (= (and b!4004887 res!1627406) b!4004892))

(assert (= (and b!4004884 (not res!1627409)) b!4004883))

(assert (= (and b!4004883 res!1627408) b!4004893))

(assert (= (and b!4004893 (not res!1627407)) b!4004895))

(assert (= (and b!4004895 (not res!1627405)) b!4004885))

(assert (= (or b!4004896 b!4004890 b!4004893) bm!286095))

(assert (=> d!1184757 m!4586547))

(declare-fun m!4587853 () Bool)

(assert (=> d!1184757 m!4587853))

(assert (=> d!1184757 m!4586297))

(assert (=> b!4004885 m!4586547))

(declare-fun m!4587855 () Bool)

(assert (=> b!4004885 m!4587855))

(assert (=> b!4004887 m!4586547))

(declare-fun m!4587857 () Bool)

(assert (=> b!4004887 m!4587857))

(assert (=> b!4004887 m!4587857))

(declare-fun m!4587859 () Bool)

(assert (=> b!4004887 m!4587859))

(assert (=> b!4004889 m!4586547))

(assert (=> b!4004889 m!4587855))

(assert (=> b!4004889 m!4587855))

(declare-fun m!4587861 () Bool)

(assert (=> b!4004889 m!4587861))

(assert (=> b!4004889 m!4586547))

(assert (=> b!4004889 m!4587857))

(assert (=> b!4004889 m!4587861))

(assert (=> b!4004889 m!4587857))

(declare-fun m!4587863 () Bool)

(assert (=> b!4004889 m!4587863))

(assert (=> bm!286095 m!4586547))

(assert (=> bm!286095 m!4587853))

(assert (=> b!4004895 m!4586547))

(assert (=> b!4004895 m!4587857))

(assert (=> b!4004895 m!4587857))

(assert (=> b!4004895 m!4587859))

(assert (=> b!4004886 m!4586299))

(assert (=> b!4004892 m!4586547))

(assert (=> b!4004892 m!4587855))

(assert (=> b!4003931 d!1184757))

(assert (=> b!4003931 d!1184657))

(assert (=> b!4003931 d!1184659))

(assert (=> b!4003931 d!1184419))

(assert (=> b!4003975 d!1184075))

(assert (=> b!4003975 d!1184073))

(declare-fun d!1184759 () Bool)

(declare-fun lt!1416601 () Int)

(assert (=> d!1184759 (>= lt!1416601 0)))

(declare-fun e!2483565 () Int)

(assert (=> d!1184759 (= lt!1416601 e!2483565)))

(declare-fun c!692532 () Bool)

(assert (=> d!1184759 (= c!692532 ((_ is Nil!42868) (originalCharacters!7412 token!484)))))

(assert (=> d!1184759 (= (size!32050 (originalCharacters!7412 token!484)) lt!1416601)))

(declare-fun b!4004897 () Bool)

(assert (=> b!4004897 (= e!2483565 0)))

(declare-fun b!4004898 () Bool)

(assert (=> b!4004898 (= e!2483565 (+ 1 (size!32050 (t!332333 (originalCharacters!7412 token!484)))))))

(assert (= (and d!1184759 c!692532) b!4004897))

(assert (= (and d!1184759 (not c!692532)) b!4004898))

(declare-fun m!4587865 () Bool)

(assert (=> b!4004898 m!4587865))

(assert (=> b!4003618 d!1184759))

(assert (=> b!4003846 d!1184237))

(declare-fun d!1184761 () Bool)

(assert (=> d!1184761 (= (apply!10009 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416158))))) (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158))))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416158))))))))

(declare-fun b_lambda!116815 () Bool)

(assert (=> (not b_lambda!116815) (not d!1184761)))

(declare-fun t!332447 () Bool)

(declare-fun tb!240707 () Bool)

(assert (=> (and b!4003572 (= (toValue!9304 (transformation!6812 (rule!9846 token!484))) (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))) t!332447) tb!240707))

(declare-fun result!291750 () Bool)

(assert (=> tb!240707 (= result!291750 (inv!21 (dynLambda!18172 (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158))))) (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416158)))))))))

(declare-fun m!4587867 () Bool)

(assert (=> tb!240707 m!4587867))

(assert (=> d!1184761 t!332447))

(declare-fun b_and!307577 () Bool)

(assert (= b_and!307571 (and (=> t!332447 result!291750) b_and!307577)))

(declare-fun t!332449 () Bool)

(declare-fun tb!240709 () Bool)

(assert (=> (and b!4003570 (= (toValue!9304 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))) t!332449) tb!240709))

(declare-fun result!291752 () Bool)

(assert (= result!291752 result!291750))

(assert (=> d!1184761 t!332449))

(declare-fun b_and!307579 () Bool)

(assert (= b_and!307573 (and (=> t!332449 result!291752) b_and!307579)))

(declare-fun t!332451 () Bool)

(declare-fun tb!240711 () Bool)

(assert (=> (and b!4004017 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))) t!332451) tb!240711))

(declare-fun result!291754 () Bool)

(assert (= result!291754 result!291750))

(assert (=> d!1184761 t!332451))

(declare-fun b_and!307581 () Bool)

(assert (= b_and!307575 (and (=> t!332451 result!291754) b_and!307581)))

(assert (=> d!1184761 m!4586487))

(declare-fun m!4587869 () Bool)

(assert (=> d!1184761 m!4587869))

(assert (=> b!4003846 d!1184761))

(declare-fun d!1184763 () Bool)

(assert (=> d!1184763 (= (seqFromList!5037 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416158)))) (fromListB!2306 (originalCharacters!7412 (_1!24147 (get!14090 lt!1416158)))))))

(declare-fun bs!589000 () Bool)

(assert (= bs!589000 d!1184763))

(declare-fun m!4587871 () Bool)

(assert (=> bs!589000 m!4587871))

(assert (=> b!4003846 d!1184763))

(assert (=> b!4003610 d!1184231))

(assert (=> b!4003610 d!1184525))

(declare-fun b!4004901 () Bool)

(declare-fun e!2483567 () Bool)

(assert (=> b!4004901 (= e!2483567 (isPrefix!3899 (tail!6241 (tail!6241 lt!1416025)) (tail!6241 (tail!6241 lt!1416028))))))

(declare-fun b!4004899 () Bool)

(declare-fun e!2483568 () Bool)

(assert (=> b!4004899 (= e!2483568 e!2483567)))

(declare-fun res!1627414 () Bool)

(assert (=> b!4004899 (=> (not res!1627414) (not e!2483567))))

(assert (=> b!4004899 (= res!1627414 (not ((_ is Nil!42868) (tail!6241 lt!1416028))))))

(declare-fun b!4004900 () Bool)

(declare-fun res!1627413 () Bool)

(assert (=> b!4004900 (=> (not res!1627413) (not e!2483567))))

(assert (=> b!4004900 (= res!1627413 (= (head!8509 (tail!6241 lt!1416025)) (head!8509 (tail!6241 lt!1416028))))))

(declare-fun b!4004902 () Bool)

(declare-fun e!2483569 () Bool)

(assert (=> b!4004902 (= e!2483569 (>= (size!32050 (tail!6241 lt!1416028)) (size!32050 (tail!6241 lt!1416025))))))

(declare-fun d!1184765 () Bool)

(assert (=> d!1184765 e!2483569))

(declare-fun res!1627412 () Bool)

(assert (=> d!1184765 (=> res!1627412 e!2483569)))

(declare-fun lt!1416602 () Bool)

(assert (=> d!1184765 (= res!1627412 (not lt!1416602))))

(assert (=> d!1184765 (= lt!1416602 e!2483568)))

(declare-fun res!1627415 () Bool)

(assert (=> d!1184765 (=> res!1627415 e!2483568)))

(assert (=> d!1184765 (= res!1627415 ((_ is Nil!42868) (tail!6241 lt!1416025)))))

(assert (=> d!1184765 (= (isPrefix!3899 (tail!6241 lt!1416025) (tail!6241 lt!1416028)) lt!1416602)))

(assert (= (and d!1184765 (not res!1627415)) b!4004899))

(assert (= (and b!4004899 res!1627414) b!4004900))

(assert (= (and b!4004900 res!1627413) b!4004901))

(assert (= (and d!1184765 (not res!1627412)) b!4004902))

(assert (=> b!4004901 m!4586167))

(assert (=> b!4004901 m!4587167))

(assert (=> b!4004901 m!4586591))

(declare-fun m!4587873 () Bool)

(assert (=> b!4004901 m!4587873))

(assert (=> b!4004901 m!4587167))

(assert (=> b!4004901 m!4587873))

(declare-fun m!4587875 () Bool)

(assert (=> b!4004901 m!4587875))

(assert (=> b!4004900 m!4586167))

(assert (=> b!4004900 m!4587171))

(assert (=> b!4004900 m!4586591))

(declare-fun m!4587877 () Bool)

(assert (=> b!4004900 m!4587877))

(assert (=> b!4004902 m!4586591))

(declare-fun m!4587879 () Bool)

(assert (=> b!4004902 m!4587879))

(assert (=> b!4004902 m!4586167))

(assert (=> b!4004902 m!4587173))

(assert (=> b!4003935 d!1184765))

(assert (=> b!4003935 d!1184409))

(declare-fun d!1184767 () Bool)

(assert (=> d!1184767 (= (tail!6241 lt!1416028) (t!332333 lt!1416028))))

(assert (=> b!4003935 d!1184767))

(declare-fun d!1184769 () Bool)

(declare-fun c!692533 () Bool)

(assert (=> d!1184769 (= c!692533 ((_ is Nil!42868) lt!1416200))))

(declare-fun e!2483570 () (InoxSet C!23620))

(assert (=> d!1184769 (= (content!6496 lt!1416200) e!2483570)))

(declare-fun b!4004903 () Bool)

(assert (=> b!4004903 (= e!2483570 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004904 () Bool)

(assert (=> b!4004904 (= e!2483570 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416200) true) (content!6496 (t!332333 lt!1416200))))))

(assert (= (and d!1184769 c!692533) b!4004903))

(assert (= (and d!1184769 (not c!692533)) b!4004904))

(declare-fun m!4587881 () Bool)

(assert (=> b!4004904 m!4587881))

(declare-fun m!4587883 () Bool)

(assert (=> b!4004904 m!4587883))

(assert (=> d!1184209 d!1184769))

(assert (=> d!1184209 d!1184529))

(declare-fun d!1184771 () Bool)

(declare-fun c!692534 () Bool)

(assert (=> d!1184771 (= c!692534 ((_ is Nil!42868) lt!1416039))))

(declare-fun e!2483571 () (InoxSet C!23620))

(assert (=> d!1184771 (= (content!6496 lt!1416039) e!2483571)))

(declare-fun b!4004905 () Bool)

(assert (=> b!4004905 (= e!2483571 ((as const (Array C!23620 Bool)) false))))

(declare-fun b!4004906 () Bool)

(assert (=> b!4004906 (= e!2483571 ((_ map or) (store ((as const (Array C!23620 Bool)) false) (h!48288 lt!1416039) true) (content!6496 (t!332333 lt!1416039))))))

(assert (= (and d!1184771 c!692534) b!4004905))

(assert (= (and d!1184771 (not c!692534)) b!4004906))

(declare-fun m!4587885 () Bool)

(assert (=> b!4004906 m!4587885))

(declare-fun m!4587887 () Bool)

(assert (=> b!4004906 m!4587887))

(assert (=> d!1184209 d!1184771))

(declare-fun d!1184773 () Bool)

(declare-fun e!2483573 () Bool)

(assert (=> d!1184773 e!2483573))

(declare-fun res!1627417 () Bool)

(assert (=> d!1184773 (=> (not res!1627417) (not e!2483573))))

(declare-fun lt!1416603 () List!42992)

(assert (=> d!1184773 (= res!1627417 (= (content!6496 lt!1416603) ((_ map or) (content!6496 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))) (content!6496 (_2!24147 (get!14090 lt!1416158))))))))

(declare-fun e!2483572 () List!42992)

(assert (=> d!1184773 (= lt!1416603 e!2483572)))

(declare-fun c!692535 () Bool)

(assert (=> d!1184773 (= c!692535 ((_ is Nil!42868) (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))))))

(assert (=> d!1184773 (= (++!11214 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158)))) (_2!24147 (get!14090 lt!1416158))) lt!1416603)))

(declare-fun b!4004910 () Bool)

(assert (=> b!4004910 (= e!2483573 (or (not (= (_2!24147 (get!14090 lt!1416158)) Nil!42868)) (= lt!1416603 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158)))))))))

(declare-fun b!4004908 () Bool)

(assert (=> b!4004908 (= e!2483572 (Cons!42868 (h!48288 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))) (++!11214 (t!332333 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))) (_2!24147 (get!14090 lt!1416158)))))))

(declare-fun b!4004907 () Bool)

(assert (=> b!4004907 (= e!2483572 (_2!24147 (get!14090 lt!1416158)))))

(declare-fun b!4004909 () Bool)

(declare-fun res!1627416 () Bool)

(assert (=> b!4004909 (=> (not res!1627416) (not e!2483573))))

(assert (=> b!4004909 (= res!1627416 (= (size!32050 lt!1416603) (+ (size!32050 (list!15922 (charsOf!4628 (_1!24147 (get!14090 lt!1416158))))) (size!32050 (_2!24147 (get!14090 lt!1416158))))))))

(assert (= (and d!1184773 c!692535) b!4004907))

(assert (= (and d!1184773 (not c!692535)) b!4004908))

(assert (= (and d!1184773 res!1627417) b!4004909))

(assert (= (and b!4004909 res!1627416) b!4004910))

(declare-fun m!4587889 () Bool)

(assert (=> d!1184773 m!4587889))

(assert (=> d!1184773 m!4586483))

(declare-fun m!4587891 () Bool)

(assert (=> d!1184773 m!4587891))

(declare-fun m!4587893 () Bool)

(assert (=> d!1184773 m!4587893))

(declare-fun m!4587895 () Bool)

(assert (=> b!4004908 m!4587895))

(declare-fun m!4587897 () Bool)

(assert (=> b!4004909 m!4587897))

(assert (=> b!4004909 m!4586483))

(declare-fun m!4587899 () Bool)

(assert (=> b!4004909 m!4587899))

(assert (=> b!4004909 m!4586507))

(assert (=> b!4003850 d!1184773))

(assert (=> b!4003850 d!1184433))

(assert (=> b!4003850 d!1184435))

(assert (=> b!4003850 d!1184237))

(declare-fun bs!589001 () Bool)

(declare-fun d!1184775 () Bool)

(assert (= bs!589001 (and d!1184775 d!1184487)))

(declare-fun lambda!126967 () Int)

(assert (=> bs!589001 (= (= (toValue!9304 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) (= lambda!126967 lambda!126957))))

(assert (=> d!1184775 true))

(assert (=> d!1184775 (< (dynLambda!18179 order!22459 (toValue!9304 (transformation!6812 (h!48290 rules!2999)))) (dynLambda!18180 order!22461 lambda!126967))))

(assert (=> d!1184775 (= (equivClasses!2813 (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (h!48290 rules!2999)))) (Forall2!1067 lambda!126967))))

(declare-fun bs!589002 () Bool)

(assert (= bs!589002 d!1184775))

(declare-fun m!4587901 () Bool)

(assert (=> bs!589002 m!4587901))

(assert (=> b!4003901 d!1184775))

(declare-fun b!4004912 () Bool)

(declare-fun e!2483574 () Bool)

(declare-fun tp!1218845 () Bool)

(declare-fun tp!1218849 () Bool)

(assert (=> b!4004912 (= e!2483574 (and tp!1218845 tp!1218849))))

(assert (=> b!4004021 (= tp!1218758 e!2483574)))

(declare-fun b!4004911 () Bool)

(assert (=> b!4004911 (= e!2483574 tp_is_empty!20405)))

(declare-fun b!4004913 () Bool)

(declare-fun tp!1218847 () Bool)

(assert (=> b!4004913 (= e!2483574 tp!1218847)))

(declare-fun b!4004914 () Bool)

(declare-fun tp!1218848 () Bool)

(declare-fun tp!1218846 () Bool)

(assert (=> b!4004914 (= e!2483574 (and tp!1218848 tp!1218846))))

(assert (= (and b!4004021 ((_ is ElementMatch!11717) (regOne!23947 (regex!6812 (rule!9846 token!484))))) b!4004911))

(assert (= (and b!4004021 ((_ is Concat!18760) (regOne!23947 (regex!6812 (rule!9846 token!484))))) b!4004912))

(assert (= (and b!4004021 ((_ is Star!11717) (regOne!23947 (regex!6812 (rule!9846 token!484))))) b!4004913))

(assert (= (and b!4004021 ((_ is Union!11717) (regOne!23947 (regex!6812 (rule!9846 token!484))))) b!4004914))

(declare-fun b!4004916 () Bool)

(declare-fun e!2483575 () Bool)

(declare-fun tp!1218850 () Bool)

(declare-fun tp!1218854 () Bool)

(assert (=> b!4004916 (= e!2483575 (and tp!1218850 tp!1218854))))

(assert (=> b!4004021 (= tp!1218756 e!2483575)))

(declare-fun b!4004915 () Bool)

(assert (=> b!4004915 (= e!2483575 tp_is_empty!20405)))

(declare-fun b!4004917 () Bool)

(declare-fun tp!1218852 () Bool)

(assert (=> b!4004917 (= e!2483575 tp!1218852)))

(declare-fun b!4004918 () Bool)

(declare-fun tp!1218853 () Bool)

(declare-fun tp!1218851 () Bool)

(assert (=> b!4004918 (= e!2483575 (and tp!1218853 tp!1218851))))

(assert (= (and b!4004021 ((_ is ElementMatch!11717) (regTwo!23947 (regex!6812 (rule!9846 token!484))))) b!4004915))

(assert (= (and b!4004021 ((_ is Concat!18760) (regTwo!23947 (regex!6812 (rule!9846 token!484))))) b!4004916))

(assert (= (and b!4004021 ((_ is Star!11717) (regTwo!23947 (regex!6812 (rule!9846 token!484))))) b!4004917))

(assert (= (and b!4004021 ((_ is Union!11717) (regTwo!23947 (regex!6812 (rule!9846 token!484))))) b!4004918))

(declare-fun b!4004920 () Bool)

(declare-fun e!2483576 () Bool)

(declare-fun tp!1218855 () Bool)

(declare-fun tp!1218859 () Bool)

(assert (=> b!4004920 (= e!2483576 (and tp!1218855 tp!1218859))))

(assert (=> b!4004020 (= tp!1218757 e!2483576)))

(declare-fun b!4004919 () Bool)

(assert (=> b!4004919 (= e!2483576 tp_is_empty!20405)))

(declare-fun b!4004921 () Bool)

(declare-fun tp!1218857 () Bool)

(assert (=> b!4004921 (= e!2483576 tp!1218857)))

(declare-fun b!4004922 () Bool)

(declare-fun tp!1218858 () Bool)

(declare-fun tp!1218856 () Bool)

(assert (=> b!4004922 (= e!2483576 (and tp!1218858 tp!1218856))))

(assert (= (and b!4004020 ((_ is ElementMatch!11717) (reg!12046 (regex!6812 (rule!9846 token!484))))) b!4004919))

(assert (= (and b!4004020 ((_ is Concat!18760) (reg!12046 (regex!6812 (rule!9846 token!484))))) b!4004920))

(assert (= (and b!4004020 ((_ is Star!11717) (reg!12046 (regex!6812 (rule!9846 token!484))))) b!4004921))

(assert (= (and b!4004020 ((_ is Union!11717) (reg!12046 (regex!6812 (rule!9846 token!484))))) b!4004922))

(declare-fun b!4004924 () Bool)

(declare-fun e!2483577 () Bool)

(declare-fun tp!1218860 () Bool)

(declare-fun tp!1218864 () Bool)

(assert (=> b!4004924 (= e!2483577 (and tp!1218860 tp!1218864))))

(assert (=> b!4004019 (= tp!1218755 e!2483577)))

(declare-fun b!4004923 () Bool)

(assert (=> b!4004923 (= e!2483577 tp_is_empty!20405)))

(declare-fun b!4004925 () Bool)

(declare-fun tp!1218862 () Bool)

(assert (=> b!4004925 (= e!2483577 tp!1218862)))

(declare-fun b!4004926 () Bool)

(declare-fun tp!1218863 () Bool)

(declare-fun tp!1218861 () Bool)

(assert (=> b!4004926 (= e!2483577 (and tp!1218863 tp!1218861))))

(assert (= (and b!4004019 ((_ is ElementMatch!11717) (regOne!23946 (regex!6812 (rule!9846 token!484))))) b!4004923))

(assert (= (and b!4004019 ((_ is Concat!18760) (regOne!23946 (regex!6812 (rule!9846 token!484))))) b!4004924))

(assert (= (and b!4004019 ((_ is Star!11717) (regOne!23946 (regex!6812 (rule!9846 token!484))))) b!4004925))

(assert (= (and b!4004019 ((_ is Union!11717) (regOne!23946 (regex!6812 (rule!9846 token!484))))) b!4004926))

(declare-fun b!4004928 () Bool)

(declare-fun e!2483578 () Bool)

(declare-fun tp!1218865 () Bool)

(declare-fun tp!1218869 () Bool)

(assert (=> b!4004928 (= e!2483578 (and tp!1218865 tp!1218869))))

(assert (=> b!4004019 (= tp!1218759 e!2483578)))

(declare-fun b!4004927 () Bool)

(assert (=> b!4004927 (= e!2483578 tp_is_empty!20405)))

(declare-fun b!4004929 () Bool)

(declare-fun tp!1218867 () Bool)

(assert (=> b!4004929 (= e!2483578 tp!1218867)))

(declare-fun b!4004930 () Bool)

(declare-fun tp!1218868 () Bool)

(declare-fun tp!1218866 () Bool)

(assert (=> b!4004930 (= e!2483578 (and tp!1218868 tp!1218866))))

(assert (= (and b!4004019 ((_ is ElementMatch!11717) (regTwo!23946 (regex!6812 (rule!9846 token!484))))) b!4004927))

(assert (= (and b!4004019 ((_ is Concat!18760) (regTwo!23946 (regex!6812 (rule!9846 token!484))))) b!4004928))

(assert (= (and b!4004019 ((_ is Star!11717) (regTwo!23946 (regex!6812 (rule!9846 token!484))))) b!4004929))

(assert (= (and b!4004019 ((_ is Union!11717) (regTwo!23946 (regex!6812 (rule!9846 token!484))))) b!4004930))

(declare-fun b!4004931 () Bool)

(declare-fun e!2483579 () Bool)

(declare-fun tp!1218870 () Bool)

(assert (=> b!4004931 (= e!2483579 (and tp_is_empty!20405 tp!1218870))))

(assert (=> b!4004024 (= tp!1218762 e!2483579)))

(assert (= (and b!4004024 ((_ is Cons!42868) (t!332333 (t!332333 suffixResult!105)))) b!4004931))

(declare-fun b!4004934 () Bool)

(declare-fun b_free!111389 () Bool)

(declare-fun b_next!112093 () Bool)

(assert (=> b!4004934 (= b_free!111389 (not b_next!112093))))

(declare-fun t!332453 () Bool)

(declare-fun tb!240713 () Bool)

(assert (=> (and b!4004934 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) t!332453) tb!240713))

(declare-fun result!291756 () Bool)

(assert (= result!291756 result!291738))

(assert (=> d!1184701 t!332453))

(assert (=> d!1184695 t!332453))

(declare-fun t!332455 () Bool)

(declare-fun tb!240715 () Bool)

(assert (=> (and b!4004934 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))))) t!332455) tb!240715))

(declare-fun result!291758 () Bool)

(assert (= result!291758 result!291684))

(assert (=> d!1184421 t!332455))

(declare-fun tb!240717 () Bool)

(declare-fun t!332457 () Bool)

(assert (=> (and b!4004934 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toValue!9304 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))) t!332457) tb!240717))

(declare-fun result!291760 () Bool)

(assert (= result!291760 result!291750))

(assert (=> d!1184761 t!332457))

(declare-fun t!332459 () Bool)

(declare-fun tb!240719 () Bool)

(assert (=> (and b!4004934 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toValue!9304 (transformation!6812 (rule!9846 token!484)))) t!332459) tb!240719))

(declare-fun result!291762 () Bool)

(assert (= result!291762 result!291650))

(assert (=> d!1184193 t!332459))

(declare-fun tp!1218873 () Bool)

(declare-fun b_and!307583 () Bool)

(assert (=> b!4004934 (= tp!1218873 (and (=> t!332453 result!291756) (=> t!332455 result!291758) (=> t!332459 result!291762) (=> t!332457 result!291760) b_and!307583))))

(declare-fun b_free!111391 () Bool)

(declare-fun b_next!112095 () Bool)

(assert (=> b!4004934 (= b_free!111391 (not b_next!112095))))

(declare-fun t!332461 () Bool)

(declare-fun tb!240721 () Bool)

(assert (=> (and b!4004934 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toChars!9163 (transformation!6812 (rule!9846 token!484)))) t!332461) tb!240721))

(declare-fun result!291764 () Bool)

(assert (= result!291764 result!291622))

(assert (=> b!4003617 t!332461))

(declare-fun t!332463 () Bool)

(declare-fun tb!240723 () Bool)

(assert (=> (and b!4004934 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416178)))))) t!332463) tb!240723))

(declare-fun result!291766 () Bool)

(assert (= result!291766 result!291722))

(assert (=> d!1184659 t!332463))

(assert (=> d!1184079 t!332461))

(declare-fun tb!240725 () Bool)

(declare-fun t!332465 () Bool)

(assert (=> (and b!4004934 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toChars!9163 (transformation!6812 (rule!9846 token!484)))) t!332465) tb!240725))

(declare-fun result!291768 () Bool)

(assert (= result!291768 result!291744))

(assert (=> d!1184701 t!332465))

(declare-fun t!332467 () Bool)

(declare-fun tb!240727 () Bool)

(assert (=> (and b!4004934 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toChars!9163 (transformation!6812 (rule!9846 (_1!24147 (get!14090 lt!1416158)))))) t!332467) tb!240727))

(declare-fun result!291770 () Bool)

(assert (= result!291770 result!291690))

(assert (=> d!1184435 t!332467))

(declare-fun tp!1218872 () Bool)

(declare-fun b_and!307585 () Bool)

(assert (=> b!4004934 (= tp!1218872 (and (=> t!332467 result!291770) (=> t!332461 result!291764) (=> t!332465 result!291768) (=> t!332463 result!291766) b_and!307585))))

(declare-fun e!2483582 () Bool)

(assert (=> b!4004934 (= e!2483582 (and tp!1218873 tp!1218872))))

(declare-fun e!2483583 () Bool)

(declare-fun b!4004933 () Bool)

(declare-fun tp!1218874 () Bool)

(assert (=> b!4004933 (= e!2483583 (and tp!1218874 (inv!57241 (tag!7672 (h!48290 (t!332335 (t!332335 rules!2999))))) (inv!57244 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) e!2483582))))

(declare-fun b!4004932 () Bool)

(declare-fun e!2483581 () Bool)

(declare-fun tp!1218871 () Bool)

(assert (=> b!4004932 (= e!2483581 (and e!2483583 tp!1218871))))

(assert (=> b!4004015 (= tp!1218751 e!2483581)))

(assert (= b!4004933 b!4004934))

(assert (= b!4004932 b!4004933))

(assert (= (and b!4004015 ((_ is Cons!42870) (t!332335 (t!332335 rules!2999)))) b!4004932))

(declare-fun m!4587903 () Bool)

(assert (=> b!4004933 m!4587903))

(declare-fun m!4587905 () Bool)

(assert (=> b!4004933 m!4587905))

(declare-fun b!4004936 () Bool)

(declare-fun e!2483584 () Bool)

(declare-fun tp!1218875 () Bool)

(declare-fun tp!1218879 () Bool)

(assert (=> b!4004936 (= e!2483584 (and tp!1218875 tp!1218879))))

(assert (=> b!4004000 (= tp!1218737 e!2483584)))

(declare-fun b!4004935 () Bool)

(assert (=> b!4004935 (= e!2483584 tp_is_empty!20405)))

(declare-fun b!4004937 () Bool)

(declare-fun tp!1218877 () Bool)

(assert (=> b!4004937 (= e!2483584 tp!1218877)))

(declare-fun b!4004938 () Bool)

(declare-fun tp!1218878 () Bool)

(declare-fun tp!1218876 () Bool)

(assert (=> b!4004938 (= e!2483584 (and tp!1218878 tp!1218876))))

(assert (= (and b!4004000 ((_ is ElementMatch!11717) (reg!12046 (regex!6812 (h!48290 rules!2999))))) b!4004935))

(assert (= (and b!4004000 ((_ is Concat!18760) (reg!12046 (regex!6812 (h!48290 rules!2999))))) b!4004936))

(assert (= (and b!4004000 ((_ is Star!11717) (reg!12046 (regex!6812 (h!48290 rules!2999))))) b!4004937))

(assert (= (and b!4004000 ((_ is Union!11717) (reg!12046 (regex!6812 (h!48290 rules!2999))))) b!4004938))

(declare-fun b!4004939 () Bool)

(declare-fun e!2483585 () Bool)

(declare-fun tp!1218880 () Bool)

(assert (=> b!4004939 (= e!2483585 (and tp_is_empty!20405 tp!1218880))))

(assert (=> b!4004022 (= tp!1218760 e!2483585)))

(assert (= (and b!4004022 ((_ is Cons!42868) (t!332333 (t!332333 suffix!1299)))) b!4004939))

(declare-fun b!4004941 () Bool)

(declare-fun e!2483586 () Bool)

(declare-fun tp!1218881 () Bool)

(declare-fun tp!1218885 () Bool)

(assert (=> b!4004941 (= e!2483586 (and tp!1218881 tp!1218885))))

(assert (=> b!4003999 (= tp!1218735 e!2483586)))

(declare-fun b!4004940 () Bool)

(assert (=> b!4004940 (= e!2483586 tp_is_empty!20405)))

(declare-fun b!4004942 () Bool)

(declare-fun tp!1218883 () Bool)

(assert (=> b!4004942 (= e!2483586 tp!1218883)))

(declare-fun b!4004943 () Bool)

(declare-fun tp!1218884 () Bool)

(declare-fun tp!1218882 () Bool)

(assert (=> b!4004943 (= e!2483586 (and tp!1218884 tp!1218882))))

(assert (= (and b!4003999 ((_ is ElementMatch!11717) (regOne!23946 (regex!6812 (h!48290 rules!2999))))) b!4004940))

(assert (= (and b!4003999 ((_ is Concat!18760) (regOne!23946 (regex!6812 (h!48290 rules!2999))))) b!4004941))

(assert (= (and b!4003999 ((_ is Star!11717) (regOne!23946 (regex!6812 (h!48290 rules!2999))))) b!4004942))

(assert (= (and b!4003999 ((_ is Union!11717) (regOne!23946 (regex!6812 (h!48290 rules!2999))))) b!4004943))

(declare-fun b!4004945 () Bool)

(declare-fun e!2483587 () Bool)

(declare-fun tp!1218886 () Bool)

(declare-fun tp!1218890 () Bool)

(assert (=> b!4004945 (= e!2483587 (and tp!1218886 tp!1218890))))

(assert (=> b!4003999 (= tp!1218739 e!2483587)))

(declare-fun b!4004944 () Bool)

(assert (=> b!4004944 (= e!2483587 tp_is_empty!20405)))

(declare-fun b!4004946 () Bool)

(declare-fun tp!1218888 () Bool)

(assert (=> b!4004946 (= e!2483587 tp!1218888)))

(declare-fun b!4004947 () Bool)

(declare-fun tp!1218889 () Bool)

(declare-fun tp!1218887 () Bool)

(assert (=> b!4004947 (= e!2483587 (and tp!1218889 tp!1218887))))

(assert (= (and b!4003999 ((_ is ElementMatch!11717) (regTwo!23946 (regex!6812 (h!48290 rules!2999))))) b!4004944))

(assert (= (and b!4003999 ((_ is Concat!18760) (regTwo!23946 (regex!6812 (h!48290 rules!2999))))) b!4004945))

(assert (= (and b!4003999 ((_ is Star!11717) (regTwo!23946 (regex!6812 (h!48290 rules!2999))))) b!4004946))

(assert (= (and b!4003999 ((_ is Union!11717) (regTwo!23946 (regex!6812 (h!48290 rules!2999))))) b!4004947))

(declare-fun b!4004948 () Bool)

(declare-fun e!2483588 () Bool)

(declare-fun tp!1218891 () Bool)

(assert (=> b!4004948 (= e!2483588 (and tp_is_empty!20405 tp!1218891))))

(assert (=> b!4004025 (= tp!1218763 e!2483588)))

(assert (= (and b!4004025 ((_ is Cons!42868) (t!332333 (originalCharacters!7412 token!484)))) b!4004948))

(declare-fun b!4004950 () Bool)

(declare-fun e!2483589 () Bool)

(declare-fun tp!1218892 () Bool)

(declare-fun tp!1218896 () Bool)

(assert (=> b!4004950 (= e!2483589 (and tp!1218892 tp!1218896))))

(assert (=> b!4004001 (= tp!1218738 e!2483589)))

(declare-fun b!4004949 () Bool)

(assert (=> b!4004949 (= e!2483589 tp_is_empty!20405)))

(declare-fun b!4004951 () Bool)

(declare-fun tp!1218894 () Bool)

(assert (=> b!4004951 (= e!2483589 tp!1218894)))

(declare-fun b!4004952 () Bool)

(declare-fun tp!1218895 () Bool)

(declare-fun tp!1218893 () Bool)

(assert (=> b!4004952 (= e!2483589 (and tp!1218895 tp!1218893))))

(assert (= (and b!4004001 ((_ is ElementMatch!11717) (regOne!23947 (regex!6812 (h!48290 rules!2999))))) b!4004949))

(assert (= (and b!4004001 ((_ is Concat!18760) (regOne!23947 (regex!6812 (h!48290 rules!2999))))) b!4004950))

(assert (= (and b!4004001 ((_ is Star!11717) (regOne!23947 (regex!6812 (h!48290 rules!2999))))) b!4004951))

(assert (= (and b!4004001 ((_ is Union!11717) (regOne!23947 (regex!6812 (h!48290 rules!2999))))) b!4004952))

(declare-fun b!4004954 () Bool)

(declare-fun e!2483590 () Bool)

(declare-fun tp!1218897 () Bool)

(declare-fun tp!1218901 () Bool)

(assert (=> b!4004954 (= e!2483590 (and tp!1218897 tp!1218901))))

(assert (=> b!4004001 (= tp!1218736 e!2483590)))

(declare-fun b!4004953 () Bool)

(assert (=> b!4004953 (= e!2483590 tp_is_empty!20405)))

(declare-fun b!4004955 () Bool)

(declare-fun tp!1218899 () Bool)

(assert (=> b!4004955 (= e!2483590 tp!1218899)))

(declare-fun b!4004956 () Bool)

(declare-fun tp!1218900 () Bool)

(declare-fun tp!1218898 () Bool)

(assert (=> b!4004956 (= e!2483590 (and tp!1218900 tp!1218898))))

(assert (= (and b!4004001 ((_ is ElementMatch!11717) (regTwo!23947 (regex!6812 (h!48290 rules!2999))))) b!4004953))

(assert (= (and b!4004001 ((_ is Concat!18760) (regTwo!23947 (regex!6812 (h!48290 rules!2999))))) b!4004954))

(assert (= (and b!4004001 ((_ is Star!11717) (regTwo!23947 (regex!6812 (h!48290 rules!2999))))) b!4004955))

(assert (= (and b!4004001 ((_ is Union!11717) (regTwo!23947 (regex!6812 (h!48290 rules!2999))))) b!4004956))

(declare-fun b!4004957 () Bool)

(declare-fun e!2483591 () Bool)

(declare-fun tp!1218902 () Bool)

(assert (=> b!4004957 (= e!2483591 (and tp_is_empty!20405 tp!1218902))))

(assert (=> b!4004026 (= tp!1218764 e!2483591)))

(assert (= (and b!4004026 ((_ is Cons!42868) (t!332333 (t!332333 newSuffixResult!27)))) b!4004957))

(declare-fun b!4004959 () Bool)

(declare-fun e!2483592 () Bool)

(declare-fun tp!1218903 () Bool)

(declare-fun tp!1218907 () Bool)

(assert (=> b!4004959 (= e!2483592 (and tp!1218903 tp!1218907))))

(assert (=> b!4004016 (= tp!1218754 e!2483592)))

(declare-fun b!4004958 () Bool)

(assert (=> b!4004958 (= e!2483592 tp_is_empty!20405)))

(declare-fun b!4004960 () Bool)

(declare-fun tp!1218905 () Bool)

(assert (=> b!4004960 (= e!2483592 tp!1218905)))

(declare-fun b!4004961 () Bool)

(declare-fun tp!1218906 () Bool)

(declare-fun tp!1218904 () Bool)

(assert (=> b!4004961 (= e!2483592 (and tp!1218906 tp!1218904))))

(assert (= (and b!4004016 ((_ is ElementMatch!11717) (regex!6812 (h!48290 (t!332335 rules!2999))))) b!4004958))

(assert (= (and b!4004016 ((_ is Concat!18760) (regex!6812 (h!48290 (t!332335 rules!2999))))) b!4004959))

(assert (= (and b!4004016 ((_ is Star!11717) (regex!6812 (h!48290 (t!332335 rules!2999))))) b!4004960))

(assert (= (and b!4004016 ((_ is Union!11717) (regex!6812 (h!48290 (t!332335 rules!2999))))) b!4004961))

(declare-fun b!4004962 () Bool)

(declare-fun e!2483593 () Bool)

(declare-fun tp!1218908 () Bool)

(assert (=> b!4004962 (= e!2483593 (and tp_is_empty!20405 tp!1218908))))

(assert (=> b!4004006 (= tp!1218742 e!2483593)))

(assert (= (and b!4004006 ((_ is Cons!42868) (t!332333 (t!332333 newSuffix!27)))) b!4004962))

(declare-fun tp!1218915 () Bool)

(declare-fun tp!1218917 () Bool)

(declare-fun e!2483599 () Bool)

(declare-fun b!4004971 () Bool)

(assert (=> b!4004971 (= e!2483599 (and (inv!57248 (left!32347 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484))))) tp!1218915 (inv!57248 (right!32677 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484))))) tp!1218917))))

(declare-fun b!4004973 () Bool)

(declare-fun e!2483598 () Bool)

(declare-fun tp!1218916 () Bool)

(assert (=> b!4004973 (= e!2483598 tp!1218916)))

(declare-fun b!4004972 () Bool)

(declare-fun inv!57255 (IArray!26051) Bool)

(assert (=> b!4004972 (= e!2483599 (and (inv!57255 (xs!16329 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484))))) e!2483598))))

(assert (=> b!4003629 (= tp!1218681 (and (inv!57248 (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484)))) e!2483599))))

(assert (= (and b!4003629 ((_ is Node!13023) (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484))))) b!4004971))

(assert (= b!4004972 b!4004973))

(assert (= (and b!4003629 ((_ is Leaf!20136) (c!692248 (dynLambda!18171 (toChars!9163 (transformation!6812 (rule!9846 token!484))) (value!214776 token!484))))) b!4004972))

(declare-fun m!4587907 () Bool)

(assert (=> b!4004971 m!4587907))

(declare-fun m!4587909 () Bool)

(assert (=> b!4004971 m!4587909))

(declare-fun m!4587911 () Bool)

(assert (=> b!4004972 m!4587911))

(assert (=> b!4003629 m!4586189))

(declare-fun b!4004974 () Bool)

(declare-fun e!2483600 () Bool)

(declare-fun tp!1218918 () Bool)

(assert (=> b!4004974 (= e!2483600 (and tp_is_empty!20405 tp!1218918))))

(assert (=> b!4004023 (= tp!1218761 e!2483600)))

(assert (= (and b!4004023 ((_ is Cons!42868) (t!332333 (t!332333 prefix!494)))) b!4004974))

(declare-fun b_lambda!116817 () Bool)

(assert (= b_lambda!116811 (or (and b!4003572 b_free!111371) (and b!4003570 b_free!111375 (= (toChars!9163 (transformation!6812 (h!48290 rules!2999))) (toChars!9163 (transformation!6812 (rule!9846 token!484))))) (and b!4004017 b_free!111383 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toChars!9163 (transformation!6812 (rule!9846 token!484))))) (and b!4004934 b_free!111391 (= (toChars!9163 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toChars!9163 (transformation!6812 (rule!9846 token!484))))) b_lambda!116817)))

(declare-fun b_lambda!116819 () Bool)

(assert (= b_lambda!116813 (or (and b!4003572 b_free!111369) (and b!4003570 b_free!111373 (= (toValue!9304 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (rule!9846 token!484))))) (and b!4004017 b_free!111381 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toValue!9304 (transformation!6812 (rule!9846 token!484))))) (and b!4004934 b_free!111389 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toValue!9304 (transformation!6812 (rule!9846 token!484))))) b_lambda!116819)))

(declare-fun b_lambda!116821 () Bool)

(assert (= b_lambda!116809 (or (and b!4003572 b_free!111369) (and b!4003570 b_free!111373 (= (toValue!9304 (transformation!6812 (h!48290 rules!2999))) (toValue!9304 (transformation!6812 (rule!9846 token!484))))) (and b!4004017 b_free!111381 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 rules!2999)))) (toValue!9304 (transformation!6812 (rule!9846 token!484))))) (and b!4004934 b_free!111389 (= (toValue!9304 (transformation!6812 (h!48290 (t!332335 (t!332335 rules!2999))))) (toValue!9304 (transformation!6812 (rule!9846 token!484))))) b_lambda!116821)))

(check-sat (not d!1184453) (not b!4004150) (not b!4004832) (not d!1184245) (not b!4004872) (not b!4004483) (not b!4004144) (not b!4004876) (not b!4004877) (not b!4004782) (not b!4004132) (not d!1184311) (not b!4004860) (not b!4004880) (not b!4004772) (not d!1184693) (not d!1184557) (not b!4004734) (not d!1184645) (not b!4004690) (not d!1184661) (not b!4004752) (not b!4004773) (not b!4004870) (not b!4004155) (not b_next!112077) (not b!4004959) (not b!4004743) (not b!4004797) (not d!1184703) (not d!1184757) (not b!4004830) b_and!307567 (not b!4004957) (not b!4004941) (not b!4004882) (not d!1184433) (not b!4004518) (not d!1184705) (not b!4004956) (not b!4004032) (not b!4004145) (not d!1184291) (not b!4004916) (not b!4004834) (not b!4004495) (not b!4004197) (not b!4004157) (not b!4004951) (not d!1184721) (not d!1184235) (not b_next!112085) (not d!1184671) (not b!4004900) (not b!4004952) (not bm!286073) (not d!1184715) (not b!4004476) (not b!4004889) (not d!1184539) (not b_next!112073) (not d!1184733) (not b!4004912) (not b!4004846) (not b!4004901) (not b!4004937) (not b!4004835) (not b!4004742) (not b!4004152) (not b!4004844) (not b!4004347) (not d!1184285) (not d!1184487) (not b!4004948) (not b!4004810) (not d!1184295) (not b!4004350) (not b!4004845) (not b!4004855) (not b!4004192) (not tb!240707) (not b!4004892) (not bm!286075) (not tb!240681) (not d!1184763) (not b_next!112079) (not b!4004931) (not b!4004440) (not d!1184243) (not b!4004503) (not tb!240701) (not b!4004191) (not b!4004950) (not d!1184659) (not b!4004511) (not b!4004791) (not b!4004906) (not b!4004763) (not b!4004960) (not d!1184775) (not d!1184699) (not b_next!112095) (not b!4004037) (not b!4004974) (not bm!286025) (not b!4004929) (not b!4004939) (not b!4004887) (not b!4003629) b_and!307585 (not b_lambda!116817) (not tb!240649) (not d!1184679) (not bm!286077) (not b!4004516) (not b!4004831) (not b!4004917) (not b!4004859) (not d!1184551) (not b!4004843) (not b!4004804) (not d!1184289) (not d!1184503) b_and!307579 (not d!1184447) (not b!4004839) (not b!4004908) (not b!4004936) (not b!4004847) (not b!4004922) (not b!4004705) (not b!4004961) (not d!1184411) (not b!4004034) (not b!4004821) (not b!4004867) (not b!4004689) (not b!4004793) (not b!4004924) (not b_lambda!116801) (not b!4004036) (not b!4004854) (not b!4004776) (not b!4004848) (not d!1184665) (not b!4004148) (not b!4004047) (not d!1184429) (not b!4004801) (not d!1184287) (not b!4004962) (not b!4004140) (not b!4004932) (not b!4004499) (not b!4004370) (not b!4004862) (not d!1184533) (not b_next!112075) (not b_lambda!116791) (not d!1184653) (not b!4004829) (not d!1184493) (not b!4004945) (not b!4004406) (not b_lambda!116781) (not b!4004719) (not b!4004770) (not bm!286029) (not b!4004885) (not b!4004388) (not b!4004947) (not b!4004510) (not bm!286024) (not b!4004523) (not b!4004378) (not b!4004918) (not b!4004517) (not b!4004526) (not b_lambda!116819) (not b!4004818) b_and!307577 tp_is_empty!20405 (not b!4004838) (not tb!240643) (not b!4004044) (not b!4004826) (not d!1184223) (not b_next!112093) (not b!4004925) (not d!1184309) (not b!4004348) (not b!4004379) (not b!4004946) (not b!4004930) (not b!4004938) (not b_next!112087) (not bm!286078) (not bm!286071) (not b!4004443) (not b!4004194) (not b!4004509) (not b!4004913) (not b!4004920) (not b!4004697) (not b!4004405) (not d!1184657) (not b!4004851) (not b!4004707) (not bm!286094) (not b!4004497) (not b!4004386) (not b!4004799) (not b!4004886) (not bm!286074) (not b!4004973) (not b!4004943) (not d!1184725) (not tb!240695) (not d!1184751) (not b!4004833) b_and!307569 (not b!4004898) (not b!4004146) (not b!4004725) (not b!4004926) (not b!4004909) (not d!1184701) (not d!1184731) (not b!4004921) (not bm!286095) (not d!1184743) (not b!4004824) (not b!4004914) (not b!4004904) (not d!1184655) (not b!4004795) (not b!4004038) (not b!4004395) (not b!4004874) (not d!1184451) (not b!4004850) (not b!4004972) (not b!4004902) (not b_lambda!116815) (not b!4004141) (not b!4004190) (not d!1184549) (not b!4004928) (not b!4004837) (not b!4004780) (not b!4004100) (not b!4004783) (not b!4004812) (not b!4004380) b_and!307581 (not b!4004101) (not d!1184689) (not b!4004133) (not b!4004858) (not bm!286088) (not b!4004401) (not d!1184489) (not b!4004158) (not b!4004513) (not b!4004933) (not b!4004046) (not b!4004841) b_and!307565 (not d!1184435) (not b!4004866) (not b!4004123) (not bm!286072) (not b!4004955) (not b!4004828) (not b_lambda!116793) (not b_lambda!116821) (not d!1184449) (not b!4004372) (not b_lambda!116779) (not b!4004954) (not b!4004441) (not bm!286076) (not b!4004033) (not b!4004346) (not b!4004852) (not b!4004153) (not b!4004864) (not b!4004048) (not b!4004942) (not b!4004520) (not b!4004149) (not b!4004501) (not d!1184773) (not b!4004971) (not d!1184555) (not d!1184303) (not b!4004814) (not b!4004816) (not b!4004200) (not d!1184691) (not b!4004895) b_and!307583 (not b!4004402) (not b_lambda!116777) (not b!4004778) (not b!4004820))
(check-sat (not b_next!112077) b_and!307567 (not b_next!112085) (not b_next!112073) (not b_next!112079) (not b_next!112095) b_and!307585 b_and!307579 (not b_next!112075) (not b_next!112087) b_and!307569 b_and!307581 b_and!307565 b_and!307583 b_and!307577 (not b_next!112093))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398254 () Bool)

(assert start!398254)

(declare-fun b!4177629 () Bool)

(declare-fun b_free!121303 () Bool)

(declare-fun b_next!122007 () Bool)

(assert (=> b!4177629 (= b_free!121303 (not b_next!122007))))

(declare-fun tp!1276755 () Bool)

(declare-fun b_and!326581 () Bool)

(assert (=> b!4177629 (= tp!1276755 b_and!326581)))

(declare-fun b_free!121305 () Bool)

(declare-fun b_next!122009 () Bool)

(assert (=> b!4177629 (= b_free!121305 (not b_next!122009))))

(declare-fun tp!1276754 () Bool)

(declare-fun b_and!326583 () Bool)

(assert (=> b!4177629 (= tp!1276754 b_and!326583)))

(declare-fun b!4177615 () Bool)

(declare-fun b_free!121307 () Bool)

(declare-fun b_next!122011 () Bool)

(assert (=> b!4177615 (= b_free!121307 (not b_next!122011))))

(declare-fun tp!1276762 () Bool)

(declare-fun b_and!326585 () Bool)

(assert (=> b!4177615 (= tp!1276762 b_and!326585)))

(declare-fun b_free!121309 () Bool)

(declare-fun b_next!122013 () Bool)

(assert (=> b!4177615 (= b_free!121309 (not b_next!122013))))

(declare-fun tp!1276764 () Bool)

(declare-fun b_and!326587 () Bool)

(assert (=> b!4177615 (= tp!1276764 b_and!326587)))

(declare-fun b!4177632 () Bool)

(declare-fun b_free!121311 () Bool)

(declare-fun b_next!122015 () Bool)

(assert (=> b!4177632 (= b_free!121311 (not b_next!122015))))

(declare-fun tp!1276760 () Bool)

(declare-fun b_and!326589 () Bool)

(assert (=> b!4177632 (= tp!1276760 b_and!326589)))

(declare-fun b_free!121313 () Bool)

(declare-fun b_next!122017 () Bool)

(assert (=> b!4177632 (= b_free!121313 (not b_next!122017))))

(declare-fun tp!1276758 () Bool)

(declare-fun b_and!326591 () Bool)

(assert (=> b!4177632 (= tp!1276758 b_and!326591)))

(declare-fun b!4177604 () Bool)

(declare-fun res!1712769 () Bool)

(declare-fun e!2593601 () Bool)

(assert (=> b!4177604 (=> (not res!1712769) (not e!2593601))))

(declare-datatypes ((List!45977 0))(
  ( (Nil!45853) (Cons!45853 (h!51273 (_ BitVec 16)) (t!344786 List!45977)) )
))
(declare-datatypes ((TokenValue!7854 0))(
  ( (FloatLiteralValue!15708 (text!55423 List!45977)) (TokenValueExt!7853 (__x!27929 Int)) (Broken!39270 (value!237790 List!45977)) (Object!7977) (End!7854) (Def!7854) (Underscore!7854) (Match!7854) (Else!7854) (Error!7854) (Case!7854) (If!7854) (Extends!7854) (Abstract!7854) (Class!7854) (Val!7854) (DelimiterValue!15708 (del!7914 List!45977)) (KeywordValue!7860 (value!237791 List!45977)) (CommentValue!15708 (value!237792 List!45977)) (WhitespaceValue!15708 (value!237793 List!45977)) (IndentationValue!7854 (value!237794 List!45977)) (String!53135) (Int32!7854) (Broken!39271 (value!237795 List!45977)) (Boolean!7855) (Unit!64934) (OperatorValue!7857 (op!7914 List!45977)) (IdentifierValue!15708 (value!237796 List!45977)) (IdentifierValue!15709 (value!237797 List!45977)) (WhitespaceValue!15709 (value!237798 List!45977)) (True!15708) (False!15708) (Broken!39272 (value!237799 List!45977)) (Broken!39273 (value!237800 List!45977)) (True!15709) (RightBrace!7854) (RightBracket!7854) (Colon!7854) (Null!7854) (Comma!7854) (LeftBracket!7854) (False!15709) (LeftBrace!7854) (ImaginaryLiteralValue!7854 (text!55424 List!45977)) (StringLiteralValue!23562 (value!237801 List!45977)) (EOFValue!7854 (value!237802 List!45977)) (IdentValue!7854 (value!237803 List!45977)) (DelimiterValue!15709 (value!237804 List!45977)) (DedentValue!7854 (value!237805 List!45977)) (NewLineValue!7854 (value!237806 List!45977)) (IntegerValue!23562 (value!237807 (_ BitVec 32)) (text!55425 List!45977)) (IntegerValue!23563 (value!237808 Int) (text!55426 List!45977)) (Times!7854) (Or!7854) (Equal!7854) (Minus!7854) (Broken!39274 (value!237809 List!45977)) (And!7854) (Div!7854) (LessEqual!7854) (Mod!7854) (Concat!20383) (Not!7854) (Plus!7854) (SpaceValue!7854 (value!237810 List!45977)) (IntegerValue!23564 (value!237811 Int) (text!55427 List!45977)) (StringLiteralValue!23563 (text!55428 List!45977)) (FloatLiteralValue!15709 (text!55429 List!45977)) (BytesLiteralValue!7854 (value!237812 List!45977)) (CommentValue!15709 (value!237813 List!45977)) (StringLiteralValue!23564 (value!237814 List!45977)) (ErrorTokenValue!7854 (msg!7915 List!45977)) )
))
(declare-datatypes ((C!25248 0))(
  ( (C!25249 (val!14786 Int)) )
))
(declare-datatypes ((List!45978 0))(
  ( (Nil!45854) (Cons!45854 (h!51274 C!25248) (t!344787 List!45978)) )
))
(declare-datatypes ((IArray!27675 0))(
  ( (IArray!27676 (innerList!13895 List!45978)) )
))
(declare-datatypes ((Conc!13835 0))(
  ( (Node!13835 (left!34157 Conc!13835) (right!34487 Conc!13835) (csize!27900 Int) (cheight!14046 Int)) (Leaf!21390 (xs!17141 IArray!27675) (csize!27901 Int)) (Empty!13835) )
))
(declare-datatypes ((BalanceConc!27264 0))(
  ( (BalanceConc!27265 (c!713532 Conc!13835)) )
))
(declare-datatypes ((Regex!12529 0))(
  ( (ElementMatch!12529 (c!713533 C!25248)) (Concat!20384 (regOne!25570 Regex!12529) (regTwo!25570 Regex!12529)) (EmptyExpr!12529) (Star!12529 (reg!12858 Regex!12529)) (EmptyLang!12529) (Union!12529 (regOne!25571 Regex!12529) (regTwo!25571 Regex!12529)) )
))
(declare-datatypes ((String!53136 0))(
  ( (String!53137 (value!237815 String)) )
))
(declare-datatypes ((TokenValueInjection!15136 0))(
  ( (TokenValueInjection!15137 (toValue!10308 Int) (toChars!10167 Int)) )
))
(declare-datatypes ((Rule!15048 0))(
  ( (Rule!15049 (regex!7624 Regex!12529) (tag!8488 String!53136) (isSeparator!7624 Bool) (transformation!7624 TokenValueInjection!15136)) )
))
(declare-datatypes ((List!45979 0))(
  ( (Nil!45855) (Cons!45855 (h!51275 Rule!15048) (t!344788 List!45979)) )
))
(declare-fun rules!3843 () List!45979)

(declare-fun isEmpty!27128 (List!45979) Bool)

(assert (=> b!4177604 (= res!1712769 (not (isEmpty!27128 rules!3843)))))

(declare-fun b!4177605 () Bool)

(declare-fun e!2593595 () Bool)

(declare-fun e!2593603 () Bool)

(assert (=> b!4177605 (= e!2593595 e!2593603)))

(declare-fun res!1712757 () Bool)

(assert (=> b!4177605 (=> res!1712757 e!2593603)))

(declare-fun lt!1487900 () Int)

(declare-fun lt!1487905 () Int)

(assert (=> b!4177605 (= res!1712757 (< lt!1487900 lt!1487905))))

(declare-fun lt!1487906 () BalanceConc!27264)

(declare-fun size!33668 (BalanceConc!27264) Int)

(assert (=> b!4177605 (= lt!1487900 (size!33668 lt!1487906))))

(declare-fun b!4177607 () Bool)

(declare-fun e!2593612 () Bool)

(assert (=> b!4177607 (= e!2593601 (not e!2593612))))

(declare-fun res!1712759 () Bool)

(assert (=> b!4177607 (=> res!1712759 e!2593612)))

(declare-datatypes ((Token!13962 0))(
  ( (Token!13963 (value!237816 TokenValue!7854) (rule!10680 Rule!15048) (size!33669 Int) (originalCharacters!8012 List!45978)) )
))
(declare-datatypes ((tuple2!43678 0))(
  ( (tuple2!43679 (_1!24973 Token!13962) (_2!24973 List!45978)) )
))
(declare-datatypes ((Option!9820 0))(
  ( (None!9819) (Some!9819 (v!40621 tuple2!43678)) )
))
(declare-fun lt!1487901 () Option!9820)

(declare-fun input!3342 () List!45978)

(declare-datatypes ((LexerInterface!7217 0))(
  ( (LexerInterfaceExt!7214 (__x!27930 Int)) (Lexer!7215) )
))
(declare-fun thiss!25986 () LexerInterface!7217)

(declare-fun r!4142 () Rule!15048)

(declare-fun maxPrefixOneRule!3228 (LexerInterface!7217 Rule!15048 List!45978) Option!9820)

(assert (=> b!4177607 (= res!1712759 (not (= (maxPrefixOneRule!3228 thiss!25986 r!4142 input!3342) lt!1487901)))))

(declare-fun lt!1487904 () Token!13962)

(declare-fun lt!1487902 () List!45978)

(assert (=> b!4177607 (= lt!1487901 (Some!9819 (tuple2!43679 lt!1487904 lt!1487902)))))

(declare-fun p!2959 () List!45978)

(declare-fun getSuffix!2776 (List!45978 List!45978) List!45978)

(assert (=> b!4177607 (= lt!1487902 (getSuffix!2776 input!3342 p!2959))))

(declare-fun lt!1487909 () Int)

(declare-fun lt!1487911 () TokenValue!7854)

(assert (=> b!4177607 (= lt!1487904 (Token!13963 lt!1487911 r!4142 lt!1487909 p!2959))))

(declare-fun size!33670 (List!45978) Int)

(assert (=> b!4177607 (= lt!1487909 (size!33670 p!2959))))

(declare-fun lt!1487913 () BalanceConc!27264)

(declare-fun apply!10589 (TokenValueInjection!15136 BalanceConc!27264) TokenValue!7854)

(assert (=> b!4177607 (= lt!1487911 (apply!10589 (transformation!7624 r!4142) lt!1487913))))

(declare-fun isPrefix!4481 (List!45978 List!45978) Bool)

(assert (=> b!4177607 (isPrefix!4481 input!3342 input!3342)))

(declare-datatypes ((Unit!64935 0))(
  ( (Unit!64936) )
))
(declare-fun lt!1487897 () Unit!64935)

(declare-fun lemmaIsPrefixRefl!2910 (List!45978 List!45978) Unit!64935)

(assert (=> b!4177607 (= lt!1487897 (lemmaIsPrefixRefl!2910 input!3342 input!3342))))

(declare-fun lt!1487898 () Unit!64935)

(declare-fun lemmaSemiInverse!2390 (TokenValueInjection!15136 BalanceConc!27264) Unit!64935)

(assert (=> b!4177607 (= lt!1487898 (lemmaSemiInverse!2390 (transformation!7624 r!4142) lt!1487913))))

(declare-fun seqFromList!5649 (List!45978) BalanceConc!27264)

(assert (=> b!4177607 (= lt!1487913 (seqFromList!5649 p!2959))))

(declare-fun b!4177608 () Bool)

(declare-fun res!1712765 () Bool)

(declare-fun e!2593600 () Bool)

(assert (=> b!4177608 (=> res!1712765 e!2593600)))

(declare-fun maxPrefix!4269 (LexerInterface!7217 List!45979 List!45978) Option!9820)

(assert (=> b!4177608 (= res!1712765 (not (= (maxPrefix!4269 thiss!25986 rules!3843 input!3342) lt!1487901)))))

(declare-fun b!4177609 () Bool)

(declare-fun e!2593613 () Bool)

(assert (=> b!4177609 (= e!2593600 e!2593613)))

(declare-fun res!1712763 () Bool)

(assert (=> b!4177609 (=> res!1712763 e!2593613)))

(declare-fun lt!1487908 () Option!9820)

(declare-fun isEmpty!27129 (Option!9820) Bool)

(assert (=> b!4177609 (= res!1712763 (isEmpty!27129 lt!1487908))))

(declare-fun rBis!167 () Rule!15048)

(assert (=> b!4177609 (= lt!1487908 (maxPrefixOneRule!3228 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1487915 () Unit!64935)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2356 (LexerInterface!7217 Rule!15048 List!45979) Unit!64935)

(assert (=> b!4177609 (= lt!1487915 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2356 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4177609 (<= lt!1487905 (size!33670 input!3342))))

(declare-fun lt!1487899 () Unit!64935)

(declare-fun pBis!107 () List!45978)

(declare-fun lemmaIsPrefixThenSmallerEqSize!513 (List!45978 List!45978) Unit!64935)

(assert (=> b!4177609 (= lt!1487899 (lemmaIsPrefixThenSmallerEqSize!513 pBis!107 input!3342))))

(declare-fun b!4177610 () Bool)

(declare-fun res!1712766 () Bool)

(assert (=> b!4177610 (=> (not res!1712766) (not e!2593601))))

(assert (=> b!4177610 (= res!1712766 (isPrefix!4481 pBis!107 input!3342))))

(declare-fun b!4177611 () Bool)

(declare-fun e!2593605 () Bool)

(declare-fun validRegex!5646 (Regex!12529) Bool)

(assert (=> b!4177611 (= e!2593605 (validRegex!5646 (regex!7624 rBis!167)))))

(declare-fun e!2593596 () Bool)

(declare-fun b!4177612 () Bool)

(declare-fun e!2593597 () Bool)

(declare-fun tp!1276763 () Bool)

(declare-fun inv!60373 (String!53136) Bool)

(declare-fun inv!60375 (TokenValueInjection!15136) Bool)

(assert (=> b!4177612 (= e!2593596 (and tp!1276763 (inv!60373 (tag!8488 r!4142)) (inv!60375 (transformation!7624 r!4142)) e!2593597))))

(declare-fun b!4177613 () Bool)

(assert (=> b!4177613 (= e!2593612 e!2593600)))

(declare-fun res!1712762 () Bool)

(assert (=> b!4177613 (=> res!1712762 e!2593600)))

(assert (=> b!4177613 (= res!1712762 (<= lt!1487905 lt!1487909))))

(assert (=> b!4177613 (= lt!1487905 (size!33670 pBis!107))))

(declare-fun res!1712756 () Bool)

(assert (=> start!398254 (=> (not res!1712756) (not e!2593601))))

(get-info :version)

(assert (=> start!398254 (= res!1712756 ((_ is Lexer!7215) thiss!25986))))

(assert (=> start!398254 e!2593601))

(assert (=> start!398254 true))

(declare-fun e!2593614 () Bool)

(assert (=> start!398254 e!2593614))

(assert (=> start!398254 e!2593596))

(declare-fun e!2593611 () Bool)

(assert (=> start!398254 e!2593611))

(declare-fun e!2593608 () Bool)

(assert (=> start!398254 e!2593608))

(declare-fun e!2593616 () Bool)

(assert (=> start!398254 e!2593616))

(declare-fun e!2593604 () Bool)

(assert (=> start!398254 e!2593604))

(declare-fun b!4177606 () Bool)

(assert (=> b!4177606 (= e!2593613 e!2593595)))

(declare-fun res!1712768 () Bool)

(assert (=> b!4177606 (=> res!1712768 e!2593595)))

(declare-fun lt!1487907 () List!45978)

(assert (=> b!4177606 (= res!1712768 (= lt!1487907 pBis!107))))

(declare-fun lt!1487912 () tuple2!43678)

(declare-fun ++!11702 (List!45978 List!45978) List!45978)

(assert (=> b!4177606 (isPrefix!4481 lt!1487907 (++!11702 lt!1487907 (_2!24973 lt!1487912)))))

(declare-fun lt!1487910 () Unit!64935)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2988 (List!45978 List!45978) Unit!64935)

(assert (=> b!4177606 (= lt!1487910 (lemmaConcatTwoListThenFirstIsPrefix!2988 lt!1487907 (_2!24973 lt!1487912)))))

(declare-fun list!16561 (BalanceConc!27264) List!45978)

(assert (=> b!4177606 (= lt!1487907 (list!16561 lt!1487906))))

(declare-fun charsOf!5065 (Token!13962) BalanceConc!27264)

(assert (=> b!4177606 (= lt!1487906 (charsOf!5065 (_1!24973 lt!1487912)))))

(declare-fun get!14901 (Option!9820) tuple2!43678)

(assert (=> b!4177606 (= lt!1487912 (get!14901 lt!1487908))))

(declare-fun b!4177614 () Bool)

(declare-fun e!2593598 () Bool)

(declare-fun e!2593606 () Bool)

(declare-fun tp!1276753 () Bool)

(assert (=> b!4177614 (= e!2593606 (and tp!1276753 (inv!60373 (tag!8488 (h!51275 rules!3843))) (inv!60375 (transformation!7624 (h!51275 rules!3843))) e!2593598))))

(declare-fun e!2593602 () Bool)

(assert (=> b!4177615 (= e!2593602 (and tp!1276762 tp!1276764))))

(declare-fun b!4177616 () Bool)

(declare-fun res!1712758 () Bool)

(assert (=> b!4177616 (=> (not res!1712758) (not e!2593601))))

(declare-fun contains!9427 (List!45979 Rule!15048) Bool)

(assert (=> b!4177616 (= res!1712758 (contains!9427 rules!3843 r!4142))))

(declare-fun b!4177617 () Bool)

(declare-fun res!1712760 () Bool)

(assert (=> b!4177617 (=> res!1712760 e!2593600)))

(declare-fun ruleValid!3342 (LexerInterface!7217 Rule!15048) Bool)

(assert (=> b!4177617 (= res!1712760 (not (ruleValid!3342 thiss!25986 rBis!167)))))

(declare-fun b!4177618 () Bool)

(declare-fun tp!1276752 () Bool)

(assert (=> b!4177618 (= e!2593611 (and e!2593606 tp!1276752))))

(declare-fun b!4177619 () Bool)

(declare-fun res!1712761 () Bool)

(assert (=> b!4177619 (=> (not res!1712761) (not e!2593601))))

(assert (=> b!4177619 (= res!1712761 (validRegex!5646 (regex!7624 r!4142)))))

(declare-fun b!4177620 () Bool)

(declare-fun tp_is_empty!22021 () Bool)

(declare-fun tp!1276761 () Bool)

(assert (=> b!4177620 (= e!2593604 (and tp_is_empty!22021 tp!1276761))))

(declare-fun b!4177621 () Bool)

(declare-fun tp!1276757 () Bool)

(assert (=> b!4177621 (= e!2593616 (and tp_is_empty!22021 tp!1276757))))

(declare-fun b!4177622 () Bool)

(declare-fun res!1712764 () Bool)

(assert (=> b!4177622 (=> (not res!1712764) (not e!2593601))))

(assert (=> b!4177622 (= res!1712764 (ruleValid!3342 thiss!25986 r!4142))))

(declare-fun b!4177623 () Bool)

(declare-fun tp!1276756 () Bool)

(assert (=> b!4177623 (= e!2593608 (and tp_is_empty!22021 tp!1276756))))

(declare-fun b!4177624 () Bool)

(declare-fun res!1712770 () Bool)

(assert (=> b!4177624 (=> (not res!1712770) (not e!2593601))))

(assert (=> b!4177624 (= res!1712770 (isPrefix!4481 p!2959 input!3342))))

(declare-fun b!4177625 () Bool)

(declare-fun res!1712755 () Bool)

(assert (=> b!4177625 (=> (not res!1712755) (not e!2593601))))

(declare-fun rulesInvariant!6430 (LexerInterface!7217 List!45979) Bool)

(assert (=> b!4177625 (= res!1712755 (rulesInvariant!6430 thiss!25986 rules!3843))))

(declare-fun b!4177626 () Bool)

(declare-fun res!1712771 () Bool)

(assert (=> b!4177626 (=> (not res!1712771) (not e!2593601))))

(declare-fun matchR!6268 (Regex!12529 List!45978) Bool)

(assert (=> b!4177626 (= res!1712771 (matchR!6268 (regex!7624 r!4142) p!2959))))

(declare-fun b!4177627 () Bool)

(declare-fun e!2593610 () Unit!64935)

(declare-fun Unit!64937 () Unit!64935)

(assert (=> b!4177627 (= e!2593610 Unit!64937)))

(declare-fun b!4177628 () Bool)

(declare-fun e!2593609 () Bool)

(assert (=> b!4177628 (= e!2593603 e!2593609)))

(declare-fun res!1712754 () Bool)

(assert (=> b!4177628 (=> res!1712754 e!2593609)))

(assert (=> b!4177628 (= res!1712754 (>= lt!1487905 lt!1487900))))

(declare-fun lt!1487914 () Unit!64935)

(assert (=> b!4177628 (= lt!1487914 e!2593610)))

(declare-fun c!713531 () Bool)

(assert (=> b!4177628 (= c!713531 (= lt!1487905 (size!33670 lt!1487907)))))

(assert (=> b!4177629 (= e!2593598 (and tp!1276755 tp!1276754))))

(declare-fun b!4177630 () Bool)

(declare-fun Unit!64938 () Unit!64935)

(assert (=> b!4177630 (= e!2593610 Unit!64938)))

(declare-fun lt!1487903 () Unit!64935)

(declare-fun lemmaIsPrefixSameLengthThenSameList!991 (List!45978 List!45978 List!45978) Unit!64935)

(assert (=> b!4177630 (= lt!1487903 (lemmaIsPrefixSameLengthThenSameList!991 pBis!107 lt!1487907 input!3342))))

(assert (=> b!4177630 false))

(declare-fun b!4177631 () Bool)

(declare-fun res!1712772 () Bool)

(assert (=> b!4177631 (=> (not res!1712772) (not e!2593601))))

(assert (=> b!4177631 (= res!1712772 (contains!9427 rules!3843 rBis!167))))

(assert (=> b!4177632 (= e!2593597 (and tp!1276760 tp!1276758))))

(declare-fun tp!1276759 () Bool)

(declare-fun b!4177633 () Bool)

(assert (=> b!4177633 (= e!2593614 (and tp!1276759 (inv!60373 (tag!8488 rBis!167)) (inv!60375 (transformation!7624 rBis!167)) e!2593602))))

(declare-fun b!4177634 () Bool)

(assert (=> b!4177634 (= e!2593609 e!2593605)))

(declare-fun res!1712767 () Bool)

(assert (=> b!4177634 (=> res!1712767 e!2593605)))

(assert (=> b!4177634 (= res!1712767 (matchR!6268 (regex!7624 rBis!167) pBis!107))))

(assert (=> b!4177634 false))

(declare-fun lt!1487916 () Unit!64935)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!18 (LexerInterface!7217 List!45979 List!45978 Token!13962 List!45978 List!45978 List!45978 List!45978 Rule!15048 Token!13962) Unit!64935)

(assert (=> b!4177634 (= lt!1487916 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!18 thiss!25986 rules!3843 p!2959 lt!1487904 input!3342 lt!1487902 lt!1487907 (_2!24973 lt!1487912) rBis!167 (_1!24973 lt!1487912)))))

(assert (= (and start!398254 res!1712756) b!4177624))

(assert (= (and b!4177624 res!1712770) b!4177610))

(assert (= (and b!4177610 res!1712766) b!4177604))

(assert (= (and b!4177604 res!1712769) b!4177625))

(assert (= (and b!4177625 res!1712755) b!4177616))

(assert (= (and b!4177616 res!1712758) b!4177631))

(assert (= (and b!4177631 res!1712772) b!4177619))

(assert (= (and b!4177619 res!1712761) b!4177626))

(assert (= (and b!4177626 res!1712771) b!4177622))

(assert (= (and b!4177622 res!1712764) b!4177607))

(assert (= (and b!4177607 (not res!1712759)) b!4177613))

(assert (= (and b!4177613 (not res!1712762)) b!4177617))

(assert (= (and b!4177617 (not res!1712760)) b!4177608))

(assert (= (and b!4177608 (not res!1712765)) b!4177609))

(assert (= (and b!4177609 (not res!1712763)) b!4177606))

(assert (= (and b!4177606 (not res!1712768)) b!4177605))

(assert (= (and b!4177605 (not res!1712757)) b!4177628))

(assert (= (and b!4177628 c!713531) b!4177630))

(assert (= (and b!4177628 (not c!713531)) b!4177627))

(assert (= (and b!4177628 (not res!1712754)) b!4177634))

(assert (= (and b!4177634 (not res!1712767)) b!4177611))

(assert (= b!4177633 b!4177615))

(assert (= start!398254 b!4177633))

(assert (= b!4177612 b!4177632))

(assert (= start!398254 b!4177612))

(assert (= b!4177614 b!4177629))

(assert (= b!4177618 b!4177614))

(assert (= (and start!398254 ((_ is Cons!45855) rules!3843)) b!4177618))

(assert (= (and start!398254 ((_ is Cons!45854) input!3342)) b!4177623))

(assert (= (and start!398254 ((_ is Cons!45854) pBis!107)) b!4177621))

(assert (= (and start!398254 ((_ is Cons!45854) p!2959)) b!4177620))

(declare-fun m!4767189 () Bool)

(assert (=> b!4177612 m!4767189))

(declare-fun m!4767191 () Bool)

(assert (=> b!4177612 m!4767191))

(declare-fun m!4767193 () Bool)

(assert (=> b!4177605 m!4767193))

(declare-fun m!4767195 () Bool)

(assert (=> b!4177613 m!4767195))

(declare-fun m!4767197 () Bool)

(assert (=> b!4177625 m!4767197))

(declare-fun m!4767199 () Bool)

(assert (=> b!4177616 m!4767199))

(declare-fun m!4767201 () Bool)

(assert (=> b!4177607 m!4767201))

(declare-fun m!4767203 () Bool)

(assert (=> b!4177607 m!4767203))

(declare-fun m!4767205 () Bool)

(assert (=> b!4177607 m!4767205))

(declare-fun m!4767207 () Bool)

(assert (=> b!4177607 m!4767207))

(declare-fun m!4767209 () Bool)

(assert (=> b!4177607 m!4767209))

(declare-fun m!4767211 () Bool)

(assert (=> b!4177607 m!4767211))

(declare-fun m!4767213 () Bool)

(assert (=> b!4177607 m!4767213))

(declare-fun m!4767215 () Bool)

(assert (=> b!4177607 m!4767215))

(declare-fun m!4767217 () Bool)

(assert (=> b!4177610 m!4767217))

(declare-fun m!4767219 () Bool)

(assert (=> b!4177611 m!4767219))

(declare-fun m!4767221 () Bool)

(assert (=> b!4177633 m!4767221))

(declare-fun m!4767223 () Bool)

(assert (=> b!4177633 m!4767223))

(declare-fun m!4767225 () Bool)

(assert (=> b!4177617 m!4767225))

(declare-fun m!4767227 () Bool)

(assert (=> b!4177609 m!4767227))

(declare-fun m!4767229 () Bool)

(assert (=> b!4177609 m!4767229))

(declare-fun m!4767231 () Bool)

(assert (=> b!4177609 m!4767231))

(declare-fun m!4767233 () Bool)

(assert (=> b!4177609 m!4767233))

(declare-fun m!4767235 () Bool)

(assert (=> b!4177609 m!4767235))

(declare-fun m!4767237 () Bool)

(assert (=> b!4177606 m!4767237))

(declare-fun m!4767239 () Bool)

(assert (=> b!4177606 m!4767239))

(declare-fun m!4767241 () Bool)

(assert (=> b!4177606 m!4767241))

(declare-fun m!4767243 () Bool)

(assert (=> b!4177606 m!4767243))

(declare-fun m!4767245 () Bool)

(assert (=> b!4177606 m!4767245))

(assert (=> b!4177606 m!4767239))

(declare-fun m!4767247 () Bool)

(assert (=> b!4177606 m!4767247))

(declare-fun m!4767249 () Bool)

(assert (=> b!4177626 m!4767249))

(declare-fun m!4767251 () Bool)

(assert (=> b!4177619 m!4767251))

(declare-fun m!4767253 () Bool)

(assert (=> b!4177628 m!4767253))

(declare-fun m!4767255 () Bool)

(assert (=> b!4177622 m!4767255))

(declare-fun m!4767257 () Bool)

(assert (=> b!4177630 m!4767257))

(declare-fun m!4767259 () Bool)

(assert (=> b!4177608 m!4767259))

(declare-fun m!4767261 () Bool)

(assert (=> b!4177614 m!4767261))

(declare-fun m!4767263 () Bool)

(assert (=> b!4177614 m!4767263))

(declare-fun m!4767265 () Bool)

(assert (=> b!4177631 m!4767265))

(declare-fun m!4767267 () Bool)

(assert (=> b!4177604 m!4767267))

(declare-fun m!4767269 () Bool)

(assert (=> b!4177634 m!4767269))

(declare-fun m!4767271 () Bool)

(assert (=> b!4177634 m!4767271))

(declare-fun m!4767273 () Bool)

(assert (=> b!4177624 m!4767273))

(check-sat (not b_next!122017) (not b!4177616) (not b!4177626) (not b!4177606) (not b!4177604) (not b!4177621) b_and!326583 (not b!4177623) (not b!4177605) (not b_next!122013) b_and!326589 b_and!326587 (not b_next!122007) (not b_next!122011) (not b!4177630) (not b!4177625) (not b!4177619) (not b!4177634) (not b!4177620) (not b!4177617) (not b!4177631) (not b!4177613) b_and!326581 (not b!4177624) b_and!326585 (not b!4177609) (not b_next!122009) (not b!4177622) (not b!4177612) (not b!4177611) tp_is_empty!22021 (not b!4177610) b_and!326591 (not b!4177628) (not b!4177614) (not b_next!122015) (not b!4177633) (not b!4177608) (not b!4177618) (not b!4177607))
(check-sat (not b_next!122017) b_and!326581 b_and!326585 b_and!326583 (not b_next!122009) b_and!326591 (not b_next!122015) (not b_next!122013) b_and!326589 b_and!326587 (not b_next!122007) (not b_next!122011))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394054 () Bool)

(assert start!394054)

(declare-fun b!4143773 () Bool)

(declare-fun b_free!118099 () Bool)

(declare-fun b_next!118803 () Bool)

(assert (=> b!4143773 (= b_free!118099 (not b_next!118803))))

(declare-fun tp!1263037 () Bool)

(declare-fun b_and!321921 () Bool)

(assert (=> b!4143773 (= tp!1263037 b_and!321921)))

(declare-fun b_free!118101 () Bool)

(declare-fun b_next!118805 () Bool)

(assert (=> b!4143773 (= b_free!118101 (not b_next!118805))))

(declare-fun tp!1263029 () Bool)

(declare-fun b_and!321923 () Bool)

(assert (=> b!4143773 (= tp!1263029 b_and!321923)))

(declare-fun b!4143767 () Bool)

(declare-fun b_free!118103 () Bool)

(declare-fun b_next!118807 () Bool)

(assert (=> b!4143767 (= b_free!118103 (not b_next!118807))))

(declare-fun tp!1263032 () Bool)

(declare-fun b_and!321925 () Bool)

(assert (=> b!4143767 (= tp!1263032 b_and!321925)))

(declare-fun b_free!118105 () Bool)

(declare-fun b_next!118809 () Bool)

(assert (=> b!4143767 (= b_free!118105 (not b_next!118809))))

(declare-fun tp!1263027 () Bool)

(declare-fun b_and!321927 () Bool)

(assert (=> b!4143767 (= tp!1263027 b_and!321927)))

(declare-fun b!4143783 () Bool)

(declare-fun b_free!118107 () Bool)

(declare-fun b_next!118811 () Bool)

(assert (=> b!4143783 (= b_free!118107 (not b_next!118811))))

(declare-fun tp!1263028 () Bool)

(declare-fun b_and!321929 () Bool)

(assert (=> b!4143783 (= tp!1263028 b_and!321929)))

(declare-fun b_free!118109 () Bool)

(declare-fun b_next!118813 () Bool)

(assert (=> b!4143783 (= b_free!118109 (not b_next!118813))))

(declare-fun tp!1263033 () Bool)

(declare-fun b_and!321931 () Bool)

(assert (=> b!4143783 (= tp!1263033 b_and!321931)))

(declare-fun b!4143765 () Bool)

(declare-fun res!1695715 () Bool)

(declare-fun e!2571079 () Bool)

(assert (=> b!4143765 (=> (not res!1695715) (not e!2571079))))

(declare-datatypes ((LexerInterface!6977 0))(
  ( (LexerInterfaceExt!6974 (__x!27453 Int)) (Lexer!6975) )
))
(declare-fun thiss!25645 () LexerInterface!6977)

(declare-datatypes ((List!45077 0))(
  ( (Nil!44953) (Cons!44953 (h!50373 (_ BitVec 16)) (t!342596 List!45077)) )
))
(declare-datatypes ((TokenValue!7618 0))(
  ( (FloatLiteralValue!15236 (text!53771 List!45077)) (TokenValueExt!7617 (__x!27454 Int)) (Broken!38090 (value!231086 List!45077)) (Object!7741) (End!7618) (Def!7618) (Underscore!7618) (Match!7618) (Else!7618) (Error!7618) (Case!7618) (If!7618) (Extends!7618) (Abstract!7618) (Class!7618) (Val!7618) (DelimiterValue!15236 (del!7678 List!45077)) (KeywordValue!7624 (value!231087 List!45077)) (CommentValue!15236 (value!231088 List!45077)) (WhitespaceValue!15236 (value!231089 List!45077)) (IndentationValue!7618 (value!231090 List!45077)) (String!51839) (Int32!7618) (Broken!38091 (value!231091 List!45077)) (Boolean!7619) (Unit!64246) (OperatorValue!7621 (op!7678 List!45077)) (IdentifierValue!15236 (value!231092 List!45077)) (IdentifierValue!15237 (value!231093 List!45077)) (WhitespaceValue!15237 (value!231094 List!45077)) (True!15236) (False!15236) (Broken!38092 (value!231095 List!45077)) (Broken!38093 (value!231096 List!45077)) (True!15237) (RightBrace!7618) (RightBracket!7618) (Colon!7618) (Null!7618) (Comma!7618) (LeftBracket!7618) (False!15237) (LeftBrace!7618) (ImaginaryLiteralValue!7618 (text!53772 List!45077)) (StringLiteralValue!22854 (value!231097 List!45077)) (EOFValue!7618 (value!231098 List!45077)) (IdentValue!7618 (value!231099 List!45077)) (DelimiterValue!15237 (value!231100 List!45077)) (DedentValue!7618 (value!231101 List!45077)) (NewLineValue!7618 (value!231102 List!45077)) (IntegerValue!22854 (value!231103 (_ BitVec 32)) (text!53773 List!45077)) (IntegerValue!22855 (value!231104 Int) (text!53774 List!45077)) (Times!7618) (Or!7618) (Equal!7618) (Minus!7618) (Broken!38094 (value!231105 List!45077)) (And!7618) (Div!7618) (LessEqual!7618) (Mod!7618) (Concat!19911) (Not!7618) (Plus!7618) (SpaceValue!7618 (value!231106 List!45077)) (IntegerValue!22856 (value!231107 Int) (text!53775 List!45077)) (StringLiteralValue!22855 (text!53776 List!45077)) (FloatLiteralValue!15237 (text!53777 List!45077)) (BytesLiteralValue!7618 (value!231108 List!45077)) (CommentValue!15237 (value!231109 List!45077)) (StringLiteralValue!22856 (value!231110 List!45077)) (ErrorTokenValue!7618 (msg!7679 List!45077)) )
))
(declare-datatypes ((C!24772 0))(
  ( (C!24773 (val!14496 Int)) )
))
(declare-datatypes ((List!45078 0))(
  ( (Nil!44954) (Cons!44954 (h!50374 C!24772) (t!342597 List!45078)) )
))
(declare-datatypes ((IArray!27203 0))(
  ( (IArray!27204 (innerList!13659 List!45078)) )
))
(declare-datatypes ((Conc!13599 0))(
  ( (Node!13599 (left!33663 Conc!13599) (right!33993 Conc!13599) (csize!27428 Int) (cheight!13810 Int)) (Leaf!21008 (xs!16905 IArray!27203) (csize!27429 Int)) (Empty!13599) )
))
(declare-datatypes ((BalanceConc!26792 0))(
  ( (BalanceConc!26793 (c!710176 Conc!13599)) )
))
(declare-datatypes ((Regex!12293 0))(
  ( (ElementMatch!12293 (c!710177 C!24772)) (Concat!19912 (regOne!25098 Regex!12293) (regTwo!25098 Regex!12293)) (EmptyExpr!12293) (Star!12293 (reg!12622 Regex!12293)) (EmptyLang!12293) (Union!12293 (regOne!25099 Regex!12293) (regTwo!25099 Regex!12293)) )
))
(declare-datatypes ((String!51840 0))(
  ( (String!51841 (value!231111 String)) )
))
(declare-datatypes ((TokenValueInjection!14664 0))(
  ( (TokenValueInjection!14665 (toValue!10052 Int) (toChars!9911 Int)) )
))
(declare-datatypes ((Rule!14576 0))(
  ( (Rule!14577 (regex!7388 Regex!12293) (tag!8248 String!51840) (isSeparator!7388 Bool) (transformation!7388 TokenValueInjection!14664)) )
))
(declare-fun r!4008 () Rule!14576)

(declare-fun ruleValid!3194 (LexerInterface!6977 Rule!14576) Bool)

(assert (=> b!4143765 (= res!1695715 (ruleValid!3194 thiss!25645 r!4008))))

(declare-fun res!1695707 () Bool)

(declare-fun e!2571067 () Bool)

(assert (=> start!394054 (=> (not res!1695707) (not e!2571067))))

(get-info :version)

(assert (=> start!394054 (= res!1695707 ((_ is Lexer!6975) thiss!25645))))

(assert (=> start!394054 e!2571067))

(declare-fun e!2571071 () Bool)

(assert (=> start!394054 e!2571071))

(declare-fun e!2571070 () Bool)

(assert (=> start!394054 e!2571070))

(assert (=> start!394054 true))

(declare-fun e!2571068 () Bool)

(assert (=> start!394054 e!2571068))

(declare-fun e!2571075 () Bool)

(assert (=> start!394054 e!2571075))

(declare-fun e!2571077 () Bool)

(assert (=> start!394054 e!2571077))

(declare-fun b!4143766 () Bool)

(declare-fun res!1695722 () Bool)

(assert (=> b!4143766 (=> (not res!1695722) (not e!2571067))))

(declare-fun p!2912 () List!45078)

(declare-fun isEmpty!26817 (List!45078) Bool)

(assert (=> b!4143766 (= res!1695722 (not (isEmpty!26817 p!2912)))))

(declare-fun e!2571073 () Bool)

(assert (=> b!4143767 (= e!2571073 (and tp!1263032 tp!1263027))))

(declare-fun b!4143768 () Bool)

(declare-fun e!2571083 () Bool)

(assert (=> b!4143768 (= e!2571083 true)))

(declare-fun lt!1477928 () Bool)

(declare-fun rBis!149 () Rule!14576)

(declare-fun lt!1477930 () List!45078)

(declare-fun matchR!6122 (Regex!12293 List!45078) Bool)

(assert (=> b!4143768 (= lt!1477928 (matchR!6122 (regex!7388 rBis!149) lt!1477930))))

(declare-fun b!4143769 () Bool)

(declare-fun res!1695724 () Bool)

(assert (=> b!4143769 (=> (not res!1695724) (not e!2571079))))

(assert (=> b!4143769 (= res!1695724 (matchR!6122 (regex!7388 r!4008) p!2912))))

(declare-fun b!4143770 () Bool)

(declare-fun e!2571078 () Bool)

(assert (=> b!4143770 (= e!2571078 e!2571083)))

(declare-fun res!1695717 () Bool)

(assert (=> b!4143770 (=> res!1695717 e!2571083)))

(declare-fun lt!1477915 () List!45078)

(declare-fun input!3238 () List!45078)

(assert (=> b!4143770 (= res!1695717 (not (= lt!1477915 input!3238)))))

(declare-fun isPrefix!4323 (List!45078 List!45078) Bool)

(assert (=> b!4143770 (isPrefix!4323 lt!1477930 lt!1477915)))

(declare-datatypes ((Token!13706 0))(
  ( (Token!13707 (value!231112 TokenValue!7618) (rule!10506 Rule!14576) (size!33312 Int) (originalCharacters!7884 List!45078)) )
))
(declare-datatypes ((tuple2!43334 0))(
  ( (tuple2!43335 (_1!24801 Token!13706) (_2!24801 List!45078)) )
))
(declare-fun lt!1477916 () tuple2!43334)

(declare-fun ++!11628 (List!45078 List!45078) List!45078)

(assert (=> b!4143770 (= lt!1477915 (++!11628 lt!1477930 (_2!24801 lt!1477916)))))

(declare-datatypes ((Unit!64247 0))(
  ( (Unit!64248) )
))
(declare-fun lt!1477925 () Unit!64247)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2952 (List!45078 List!45078) Unit!64247)

(assert (=> b!4143770 (= lt!1477925 (lemmaConcatTwoListThenFirstIsPrefix!2952 lt!1477930 (_2!24801 lt!1477916)))))

(declare-fun lt!1477919 () BalanceConc!26792)

(declare-fun list!16469 (BalanceConc!26792) List!45078)

(assert (=> b!4143770 (= lt!1477930 (list!16469 lt!1477919))))

(declare-fun b!4143771 () Bool)

(declare-fun e!2571072 () Bool)

(declare-fun tp!1263036 () Bool)

(assert (=> b!4143771 (= e!2571071 (and e!2571072 tp!1263036))))

(declare-fun b!4143772 () Bool)

(declare-fun e!2571076 () Bool)

(assert (=> b!4143772 (= e!2571076 e!2571078)))

(declare-fun res!1695721 () Bool)

(assert (=> b!4143772 (=> res!1695721 e!2571078)))

(declare-fun lt!1477917 () Int)

(declare-fun lt!1477922 () Int)

(assert (=> b!4143772 (= res!1695721 (or (> lt!1477917 lt!1477922) (>= lt!1477917 lt!1477922)))))

(declare-fun size!33313 (BalanceConc!26792) Int)

(assert (=> b!4143772 (= lt!1477917 (size!33313 lt!1477919))))

(declare-fun charsOf!4987 (Token!13706) BalanceConc!26792)

(assert (=> b!4143772 (= lt!1477919 (charsOf!4987 (_1!24801 lt!1477916)))))

(declare-datatypes ((Option!9694 0))(
  ( (None!9693) (Some!9693 (v!40339 tuple2!43334)) )
))
(declare-fun lt!1477920 () Option!9694)

(declare-fun get!14677 (Option!9694) tuple2!43334)

(assert (=> b!4143772 (= lt!1477916 (get!14677 lt!1477920))))

(declare-fun e!2571080 () Bool)

(assert (=> b!4143773 (= e!2571080 (and tp!1263037 tp!1263029))))

(declare-fun b!4143774 () Bool)

(declare-fun res!1695713 () Bool)

(assert (=> b!4143774 (=> (not res!1695713) (not e!2571067))))

(declare-datatypes ((List!45079 0))(
  ( (Nil!44955) (Cons!44955 (h!50375 Rule!14576) (t!342598 List!45079)) )
))
(declare-fun rules!3756 () List!45079)

(declare-fun contains!9068 (List!45079 Rule!14576) Bool)

(assert (=> b!4143774 (= res!1695713 (contains!9068 rules!3756 rBis!149))))

(declare-fun b!4143775 () Bool)

(declare-fun res!1695714 () Bool)

(assert (=> b!4143775 (=> (not res!1695714) (not e!2571079))))

(declare-fun getIndex!734 (List!45079 Rule!14576) Int)

(assert (=> b!4143775 (= res!1695714 (< (getIndex!734 rules!3756 rBis!149) (getIndex!734 rules!3756 r!4008)))))

(declare-fun tp!1263035 () Bool)

(declare-fun e!2571074 () Bool)

(declare-fun b!4143776 () Bool)

(declare-fun inv!59561 (String!51840) Bool)

(declare-fun inv!59563 (TokenValueInjection!14664) Bool)

(assert (=> b!4143776 (= e!2571077 (and tp!1263035 (inv!59561 (tag!8248 rBis!149)) (inv!59563 (transformation!7388 rBis!149)) e!2571074))))

(declare-fun b!4143777 () Bool)

(declare-fun e!2571081 () Bool)

(assert (=> b!4143777 (= e!2571081 e!2571076)))

(declare-fun res!1695720 () Bool)

(assert (=> b!4143777 (=> res!1695720 e!2571076)))

(declare-fun isEmpty!26818 (Option!9694) Bool)

(assert (=> b!4143777 (= res!1695720 (isEmpty!26818 lt!1477920))))

(declare-fun maxPrefixOneRule!3106 (LexerInterface!6977 Rule!14576 List!45078) Option!9694)

(assert (=> b!4143777 (= lt!1477920 (maxPrefixOneRule!3106 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4143777 (not (= rBis!149 r!4008))))

(declare-fun lt!1477929 () Unit!64247)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!86 (LexerInterface!6977 List!45079 Rule!14576 Rule!14576) Unit!64247)

(assert (=> b!4143777 (= lt!1477929 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!86 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6567 (List!45079) List!45079)

(assert (=> b!4143777 (contains!9068 (tail!6567 rules!3756) r!4008)))

(declare-fun lt!1477918 () Unit!64247)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!92 (List!45079 Rule!14576 Rule!14576) Unit!64247)

(assert (=> b!4143777 (= lt!1477918 (lemmaGetIndexBiggerAndHeadEqThenTailContains!92 rules!3756 rBis!149 r!4008))))

(declare-fun b!4143778 () Bool)

(declare-fun res!1695723 () Bool)

(assert (=> b!4143778 (=> (not res!1695723) (not e!2571067))))

(declare-fun isEmpty!26819 (List!45079) Bool)

(assert (=> b!4143778 (= res!1695723 (not (isEmpty!26819 rules!3756)))))

(declare-fun b!4143779 () Bool)

(declare-fun res!1695708 () Bool)

(assert (=> b!4143779 (=> (not res!1695708) (not e!2571067))))

(assert (=> b!4143779 (= res!1695708 (contains!9068 rules!3756 r!4008))))

(declare-fun b!4143780 () Bool)

(declare-fun tp_is_empty!21509 () Bool)

(declare-fun tp!1263031 () Bool)

(assert (=> b!4143780 (= e!2571075 (and tp_is_empty!21509 tp!1263031))))

(declare-fun b!4143781 () Bool)

(declare-fun res!1695716 () Bool)

(assert (=> b!4143781 (=> (not res!1695716) (not e!2571067))))

(assert (=> b!4143781 (= res!1695716 (isPrefix!4323 p!2912 input!3238))))

(declare-fun b!4143782 () Bool)

(declare-fun tp!1263038 () Bool)

(assert (=> b!4143782 (= e!2571072 (and tp!1263038 (inv!59561 (tag!8248 (h!50375 rules!3756))) (inv!59563 (transformation!7388 (h!50375 rules!3756))) e!2571073))))

(assert (=> b!4143783 (= e!2571074 (and tp!1263028 tp!1263033))))

(declare-fun b!4143784 () Bool)

(declare-fun res!1695725 () Bool)

(assert (=> b!4143784 (=> res!1695725 e!2571083)))

(declare-fun size!33314 (List!45078) Int)

(assert (=> b!4143784 (= res!1695725 (> lt!1477922 (size!33314 input!3238)))))

(declare-fun b!4143785 () Bool)

(declare-fun res!1695718 () Bool)

(assert (=> b!4143785 (=> res!1695718 e!2571083)))

(assert (=> b!4143785 (= res!1695718 (not (isPrefix!4323 lt!1477930 input!3238)))))

(declare-fun b!4143786 () Bool)

(declare-fun res!1695709 () Bool)

(assert (=> b!4143786 (=> (not res!1695709) (not e!2571067))))

(declare-fun rulesInvariant!6274 (LexerInterface!6977 List!45079) Bool)

(assert (=> b!4143786 (= res!1695709 (rulesInvariant!6274 thiss!25645 rules!3756))))

(declare-fun b!4143787 () Bool)

(assert (=> b!4143787 (= e!2571067 e!2571079)))

(declare-fun res!1695711 () Bool)

(assert (=> b!4143787 (=> (not res!1695711) (not e!2571079))))

(declare-fun lt!1477924 () TokenValue!7618)

(declare-fun maxPrefix!4167 (LexerInterface!6977 List!45079 List!45078) Option!9694)

(declare-fun getSuffix!2650 (List!45078 List!45078) List!45078)

(assert (=> b!4143787 (= res!1695711 (= (maxPrefix!4167 thiss!25645 rules!3756 input!3238) (Some!9693 (tuple2!43335 (Token!13707 lt!1477924 r!4008 lt!1477922 p!2912) (getSuffix!2650 input!3238 p!2912)))))))

(assert (=> b!4143787 (= lt!1477922 (size!33314 p!2912))))

(declare-fun lt!1477923 () BalanceConc!26792)

(declare-fun apply!10461 (TokenValueInjection!14664 BalanceConc!26792) TokenValue!7618)

(assert (=> b!4143787 (= lt!1477924 (apply!10461 (transformation!7388 r!4008) lt!1477923))))

(declare-fun lt!1477927 () Unit!64247)

(declare-fun lemmaSemiInverse!2246 (TokenValueInjection!14664 BalanceConc!26792) Unit!64247)

(assert (=> b!4143787 (= lt!1477927 (lemmaSemiInverse!2246 (transformation!7388 r!4008) lt!1477923))))

(declare-fun seqFromList!5505 (List!45078) BalanceConc!26792)

(assert (=> b!4143787 (= lt!1477923 (seqFromList!5505 p!2912))))

(declare-fun b!4143788 () Bool)

(declare-fun res!1695710 () Bool)

(assert (=> b!4143788 (=> res!1695710 e!2571083)))

(assert (=> b!4143788 (= res!1695710 (<= lt!1477922 (size!33314 lt!1477930)))))

(declare-fun b!4143789 () Bool)

(assert (=> b!4143789 (= e!2571079 (not e!2571081))))

(declare-fun res!1695712 () Bool)

(assert (=> b!4143789 (=> res!1695712 e!2571081)))

(assert (=> b!4143789 (= res!1695712 (or (not ((_ is Cons!44955) rules!3756)) (not (= (h!50375 rules!3756) rBis!149))))))

(declare-fun lt!1477921 () Unit!64247)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2234 (LexerInterface!6977 Rule!14576 List!45079) Unit!64247)

(assert (=> b!4143789 (= lt!1477921 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2234 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4143789 (ruleValid!3194 thiss!25645 rBis!149)))

(declare-fun lt!1477926 () Unit!64247)

(assert (=> b!4143789 (= lt!1477926 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2234 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4143790 () Bool)

(declare-fun res!1695719 () Bool)

(assert (=> b!4143790 (=> res!1695719 e!2571083)))

(declare-fun validRegex!5539 (Regex!12293) Bool)

(assert (=> b!4143790 (= res!1695719 (not (validRegex!5539 (regex!7388 rBis!149))))))

(declare-fun tp!1263030 () Bool)

(declare-fun b!4143791 () Bool)

(assert (=> b!4143791 (= e!2571068 (and tp!1263030 (inv!59561 (tag!8248 r!4008)) (inv!59563 (transformation!7388 r!4008)) e!2571080))))

(declare-fun b!4143792 () Bool)

(declare-fun tp!1263034 () Bool)

(assert (=> b!4143792 (= e!2571070 (and tp_is_empty!21509 tp!1263034))))

(assert (= (and start!394054 res!1695707) b!4143781))

(assert (= (and b!4143781 res!1695716) b!4143778))

(assert (= (and b!4143778 res!1695723) b!4143786))

(assert (= (and b!4143786 res!1695709) b!4143779))

(assert (= (and b!4143779 res!1695708) b!4143774))

(assert (= (and b!4143774 res!1695713) b!4143766))

(assert (= (and b!4143766 res!1695722) b!4143787))

(assert (= (and b!4143787 res!1695711) b!4143769))

(assert (= (and b!4143769 res!1695724) b!4143775))

(assert (= (and b!4143775 res!1695714) b!4143765))

(assert (= (and b!4143765 res!1695715) b!4143789))

(assert (= (and b!4143789 (not res!1695712)) b!4143777))

(assert (= (and b!4143777 (not res!1695720)) b!4143772))

(assert (= (and b!4143772 (not res!1695721)) b!4143770))

(assert (= (and b!4143770 (not res!1695717)) b!4143785))

(assert (= (and b!4143785 (not res!1695718)) b!4143784))

(assert (= (and b!4143784 (not res!1695725)) b!4143788))

(assert (= (and b!4143788 (not res!1695710)) b!4143790))

(assert (= (and b!4143790 (not res!1695719)) b!4143768))

(assert (= b!4143782 b!4143767))

(assert (= b!4143771 b!4143782))

(assert (= (and start!394054 ((_ is Cons!44955) rules!3756)) b!4143771))

(assert (= (and start!394054 ((_ is Cons!44954) p!2912)) b!4143792))

(assert (= b!4143791 b!4143773))

(assert (= start!394054 b!4143791))

(assert (= (and start!394054 ((_ is Cons!44954) input!3238)) b!4143780))

(assert (= b!4143776 b!4143783))

(assert (= start!394054 b!4143776))

(declare-fun m!4739963 () Bool)

(assert (=> b!4143785 m!4739963))

(declare-fun m!4739965 () Bool)

(assert (=> b!4143777 m!4739965))

(declare-fun m!4739967 () Bool)

(assert (=> b!4143777 m!4739967))

(declare-fun m!4739969 () Bool)

(assert (=> b!4143777 m!4739969))

(declare-fun m!4739971 () Bool)

(assert (=> b!4143777 m!4739971))

(assert (=> b!4143777 m!4739967))

(declare-fun m!4739973 () Bool)

(assert (=> b!4143777 m!4739973))

(declare-fun m!4739975 () Bool)

(assert (=> b!4143777 m!4739975))

(declare-fun m!4739977 () Bool)

(assert (=> b!4143784 m!4739977))

(declare-fun m!4739979 () Bool)

(assert (=> b!4143782 m!4739979))

(declare-fun m!4739981 () Bool)

(assert (=> b!4143782 m!4739981))

(declare-fun m!4739983 () Bool)

(assert (=> b!4143775 m!4739983))

(declare-fun m!4739985 () Bool)

(assert (=> b!4143775 m!4739985))

(declare-fun m!4739987 () Bool)

(assert (=> b!4143769 m!4739987))

(declare-fun m!4739989 () Bool)

(assert (=> b!4143778 m!4739989))

(declare-fun m!4739991 () Bool)

(assert (=> b!4143789 m!4739991))

(declare-fun m!4739993 () Bool)

(assert (=> b!4143789 m!4739993))

(declare-fun m!4739995 () Bool)

(assert (=> b!4143789 m!4739995))

(declare-fun m!4739997 () Bool)

(assert (=> b!4143766 m!4739997))

(declare-fun m!4739999 () Bool)

(assert (=> b!4143787 m!4739999))

(declare-fun m!4740001 () Bool)

(assert (=> b!4143787 m!4740001))

(declare-fun m!4740003 () Bool)

(assert (=> b!4143787 m!4740003))

(declare-fun m!4740005 () Bool)

(assert (=> b!4143787 m!4740005))

(declare-fun m!4740007 () Bool)

(assert (=> b!4143787 m!4740007))

(declare-fun m!4740009 () Bool)

(assert (=> b!4143787 m!4740009))

(declare-fun m!4740011 () Bool)

(assert (=> b!4143781 m!4740011))

(declare-fun m!4740013 () Bool)

(assert (=> b!4143772 m!4740013))

(declare-fun m!4740015 () Bool)

(assert (=> b!4143772 m!4740015))

(declare-fun m!4740017 () Bool)

(assert (=> b!4143772 m!4740017))

(declare-fun m!4740019 () Bool)

(assert (=> b!4143786 m!4740019))

(declare-fun m!4740021 () Bool)

(assert (=> b!4143768 m!4740021))

(declare-fun m!4740023 () Bool)

(assert (=> b!4143790 m!4740023))

(declare-fun m!4740025 () Bool)

(assert (=> b!4143765 m!4740025))

(declare-fun m!4740027 () Bool)

(assert (=> b!4143791 m!4740027))

(declare-fun m!4740029 () Bool)

(assert (=> b!4143791 m!4740029))

(declare-fun m!4740031 () Bool)

(assert (=> b!4143776 m!4740031))

(declare-fun m!4740033 () Bool)

(assert (=> b!4143776 m!4740033))

(declare-fun m!4740035 () Bool)

(assert (=> b!4143788 m!4740035))

(declare-fun m!4740037 () Bool)

(assert (=> b!4143774 m!4740037))

(declare-fun m!4740039 () Bool)

(assert (=> b!4143779 m!4740039))

(declare-fun m!4740041 () Bool)

(assert (=> b!4143770 m!4740041))

(declare-fun m!4740043 () Bool)

(assert (=> b!4143770 m!4740043))

(declare-fun m!4740045 () Bool)

(assert (=> b!4143770 m!4740045))

(declare-fun m!4740047 () Bool)

(assert (=> b!4143770 m!4740047))

(check-sat (not b!4143791) (not b!4143775) (not b_next!118807) tp_is_empty!21509 (not b!4143782) (not b!4143790) (not b!4143785) (not b!4143786) (not b!4143778) (not b!4143788) (not b!4143792) (not b!4143772) (not b!4143789) b_and!321925 b_and!321927 (not b!4143768) (not b!4143787) (not b_next!118811) (not b!4143769) (not b!4143774) b_and!321929 (not b!4143766) (not b!4143779) (not b!4143781) (not b_next!118805) b_and!321931 (not b!4143771) b_and!321923 (not b_next!118809) (not b!4143770) (not b_next!118813) (not b!4143780) (not b_next!118803) (not b!4143784) (not b!4143765) b_and!321921 (not b!4143776) (not b!4143777))
(check-sat (not b_next!118811) (not b_next!118807) b_and!321929 (not b_next!118805) b_and!321931 (not b_next!118813) b_and!321925 b_and!321927 b_and!321923 (not b_next!118809) (not b_next!118803) b_and!321921)

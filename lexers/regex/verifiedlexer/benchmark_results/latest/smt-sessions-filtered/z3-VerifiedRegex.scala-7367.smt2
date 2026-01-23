; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391706 () Bool)

(assert start!391706)

(declare-fun b!4127717 () Bool)

(declare-fun b_free!116923 () Bool)

(declare-fun b_next!117627 () Bool)

(assert (=> b!4127717 (= b_free!116923 (not b_next!117627))))

(declare-fun tp!1257838 () Bool)

(declare-fun b_and!319709 () Bool)

(assert (=> b!4127717 (= tp!1257838 b_and!319709)))

(declare-fun b_free!116925 () Bool)

(declare-fun b_next!117629 () Bool)

(assert (=> b!4127717 (= b_free!116925 (not b_next!117629))))

(declare-fun tp!1257832 () Bool)

(declare-fun b_and!319711 () Bool)

(assert (=> b!4127717 (= tp!1257832 b_and!319711)))

(declare-fun b!4127726 () Bool)

(declare-fun b_free!116927 () Bool)

(declare-fun b_next!117631 () Bool)

(assert (=> b!4127726 (= b_free!116927 (not b_next!117631))))

(declare-fun tp!1257835 () Bool)

(declare-fun b_and!319713 () Bool)

(assert (=> b!4127726 (= tp!1257835 b_and!319713)))

(declare-fun b_free!116929 () Bool)

(declare-fun b_next!117633 () Bool)

(assert (=> b!4127726 (= b_free!116929 (not b_next!117633))))

(declare-fun tp!1257834 () Bool)

(declare-fun b_and!319715 () Bool)

(assert (=> b!4127726 (= tp!1257834 b_and!319715)))

(declare-fun b!4127707 () Bool)

(declare-fun b_free!116931 () Bool)

(declare-fun b_next!117635 () Bool)

(assert (=> b!4127707 (= b_free!116931 (not b_next!117635))))

(declare-fun tp!1257829 () Bool)

(declare-fun b_and!319717 () Bool)

(assert (=> b!4127707 (= tp!1257829 b_and!319717)))

(declare-fun b_free!116933 () Bool)

(declare-fun b_next!117637 () Bool)

(assert (=> b!4127707 (= b_free!116933 (not b_next!117637))))

(declare-fun tp!1257827 () Bool)

(declare-fun b_and!319719 () Bool)

(assert (=> b!4127707 (= tp!1257827 b_and!319719)))

(declare-fun b!4127706 () Bool)

(declare-fun res!1687088 () Bool)

(declare-fun e!2561161 () Bool)

(assert (=> b!4127706 (=> (not res!1687088) (not e!2561161))))

(declare-datatypes ((LexerInterface!6895 0))(
  ( (LexerInterfaceExt!6892 (__x!27289 Int)) (Lexer!6893) )
))
(declare-fun thiss!25645 () LexerInterface!6895)

(declare-datatypes ((List!44785 0))(
  ( (Nil!44661) (Cons!44661 (h!50081 (_ BitVec 16)) (t!341330 List!44785)) )
))
(declare-datatypes ((TokenValue!7536 0))(
  ( (FloatLiteralValue!15072 (text!53197 List!44785)) (TokenValueExt!7535 (__x!27290 Int)) (Broken!37680 (value!228749 List!44785)) (Object!7659) (End!7536) (Def!7536) (Underscore!7536) (Match!7536) (Else!7536) (Error!7536) (Case!7536) (If!7536) (Extends!7536) (Abstract!7536) (Class!7536) (Val!7536) (DelimiterValue!15072 (del!7596 List!44785)) (KeywordValue!7542 (value!228750 List!44785)) (CommentValue!15072 (value!228751 List!44785)) (WhitespaceValue!15072 (value!228752 List!44785)) (IndentationValue!7536 (value!228753 List!44785)) (String!51429) (Int32!7536) (Broken!37681 (value!228754 List!44785)) (Boolean!7537) (Unit!64000) (OperatorValue!7539 (op!7596 List!44785)) (IdentifierValue!15072 (value!228755 List!44785)) (IdentifierValue!15073 (value!228756 List!44785)) (WhitespaceValue!15073 (value!228757 List!44785)) (True!15072) (False!15072) (Broken!37682 (value!228758 List!44785)) (Broken!37683 (value!228759 List!44785)) (True!15073) (RightBrace!7536) (RightBracket!7536) (Colon!7536) (Null!7536) (Comma!7536) (LeftBracket!7536) (False!15073) (LeftBrace!7536) (ImaginaryLiteralValue!7536 (text!53198 List!44785)) (StringLiteralValue!22608 (value!228760 List!44785)) (EOFValue!7536 (value!228761 List!44785)) (IdentValue!7536 (value!228762 List!44785)) (DelimiterValue!15073 (value!228763 List!44785)) (DedentValue!7536 (value!228764 List!44785)) (NewLineValue!7536 (value!228765 List!44785)) (IntegerValue!22608 (value!228766 (_ BitVec 32)) (text!53199 List!44785)) (IntegerValue!22609 (value!228767 Int) (text!53200 List!44785)) (Times!7536) (Or!7536) (Equal!7536) (Minus!7536) (Broken!37684 (value!228768 List!44785)) (And!7536) (Div!7536) (LessEqual!7536) (Mod!7536) (Concat!19747) (Not!7536) (Plus!7536) (SpaceValue!7536 (value!228769 List!44785)) (IntegerValue!22610 (value!228770 Int) (text!53201 List!44785)) (StringLiteralValue!22609 (text!53202 List!44785)) (FloatLiteralValue!15073 (text!53203 List!44785)) (BytesLiteralValue!7536 (value!228771 List!44785)) (CommentValue!15073 (value!228772 List!44785)) (StringLiteralValue!22610 (value!228773 List!44785)) (ErrorTokenValue!7536 (msg!7597 List!44785)) )
))
(declare-datatypes ((C!24608 0))(
  ( (C!24609 (val!14414 Int)) )
))
(declare-datatypes ((List!44786 0))(
  ( (Nil!44662) (Cons!44662 (h!50082 C!24608) (t!341331 List!44786)) )
))
(declare-datatypes ((IArray!27039 0))(
  ( (IArray!27040 (innerList!13577 List!44786)) )
))
(declare-datatypes ((Conc!13517 0))(
  ( (Node!13517 (left!33448 Conc!13517) (right!33778 Conc!13517) (csize!27264 Int) (cheight!13728 Int)) (Leaf!20885 (xs!16823 IArray!27039) (csize!27265 Int)) (Empty!13517) )
))
(declare-datatypes ((BalanceConc!26628 0))(
  ( (BalanceConc!26629 (c!708456 Conc!13517)) )
))
(declare-datatypes ((String!51430 0))(
  ( (String!51431 (value!228774 String)) )
))
(declare-datatypes ((Regex!12211 0))(
  ( (ElementMatch!12211 (c!708457 C!24608)) (Concat!19748 (regOne!24934 Regex!12211) (regTwo!24934 Regex!12211)) (EmptyExpr!12211) (Star!12211 (reg!12540 Regex!12211)) (EmptyLang!12211) (Union!12211 (regOne!24935 Regex!12211) (regTwo!24935 Regex!12211)) )
))
(declare-datatypes ((TokenValueInjection!14500 0))(
  ( (TokenValueInjection!14501 (toValue!9966 Int) (toChars!9825 Int)) )
))
(declare-datatypes ((Rule!14412 0))(
  ( (Rule!14413 (regex!7306 Regex!12211) (tag!8166 String!51430) (isSeparator!7306 Bool) (transformation!7306 TokenValueInjection!14500)) )
))
(declare-fun r!4008 () Rule!14412)

(declare-fun ruleValid!3114 (LexerInterface!6895 Rule!14412) Bool)

(assert (=> b!4127706 (= res!1687088 (ruleValid!3114 thiss!25645 r!4008))))

(declare-fun e!2561148 () Bool)

(assert (=> b!4127707 (= e!2561148 (and tp!1257829 tp!1257827))))

(declare-fun b!4127708 () Bool)

(declare-fun res!1687100 () Bool)

(declare-fun e!2561157 () Bool)

(assert (=> b!4127708 (=> (not res!1687100) (not e!2561157))))

(declare-datatypes ((List!44787 0))(
  ( (Nil!44663) (Cons!44663 (h!50083 Rule!14412) (t!341332 List!44787)) )
))
(declare-fun rules!3756 () List!44787)

(declare-fun rulesInvariant!6192 (LexerInterface!6895 List!44787) Bool)

(assert (=> b!4127708 (= res!1687100 (rulesInvariant!6192 thiss!25645 rules!3756))))

(declare-fun e!2561149 () Bool)

(declare-fun b!4127709 () Bool)

(declare-fun tp!1257831 () Bool)

(declare-fun inv!59254 (String!51430) Bool)

(declare-fun inv!59256 (TokenValueInjection!14500) Bool)

(assert (=> b!4127709 (= e!2561149 (and tp!1257831 (inv!59254 (tag!8166 r!4008)) (inv!59256 (transformation!7306 r!4008)) e!2561148))))

(declare-fun b!4127710 () Bool)

(declare-fun res!1687102 () Bool)

(assert (=> b!4127710 (=> (not res!1687102) (not e!2561157))))

(declare-fun isEmpty!26587 (List!44787) Bool)

(assert (=> b!4127710 (= res!1687102 (not (isEmpty!26587 rules!3756)))))

(declare-fun e!2561147 () Bool)

(declare-fun tp!1257836 () Bool)

(declare-fun b!4127711 () Bool)

(declare-fun e!2561151 () Bool)

(assert (=> b!4127711 (= e!2561151 (and tp!1257836 (inv!59254 (tag!8166 (h!50083 rules!3756))) (inv!59256 (transformation!7306 (h!50083 rules!3756))) e!2561147))))

(declare-fun b!4127712 () Bool)

(assert (=> b!4127712 (= e!2561157 e!2561161)))

(declare-fun res!1687092 () Bool)

(assert (=> b!4127712 (=> (not res!1687092) (not e!2561161))))

(declare-fun input!3238 () List!44786)

(declare-fun p!2912 () List!44786)

(declare-fun lt!1472472 () BalanceConc!26628)

(declare-datatypes ((Token!13542 0))(
  ( (Token!13543 (value!228775 TokenValue!7536) (rule!10394 Rule!14412) (size!33073 Int) (originalCharacters!7802 List!44786)) )
))
(declare-datatypes ((tuple2!43114 0))(
  ( (tuple2!43115 (_1!24691 Token!13542) (_2!24691 List!44786)) )
))
(declare-datatypes ((Option!9614 0))(
  ( (None!9613) (Some!9613 (v!40213 tuple2!43114)) )
))
(declare-fun maxPrefix!4087 (LexerInterface!6895 List!44787 List!44786) Option!9614)

(declare-fun apply!10379 (TokenValueInjection!14500 BalanceConc!26628) TokenValue!7536)

(declare-fun size!33074 (List!44786) Int)

(declare-fun getSuffix!2570 (List!44786 List!44786) List!44786)

(assert (=> b!4127712 (= res!1687092 (= (maxPrefix!4087 thiss!25645 rules!3756 input!3238) (Some!9613 (tuple2!43115 (Token!13543 (apply!10379 (transformation!7306 r!4008) lt!1472472) r!4008 (size!33074 p!2912) p!2912) (getSuffix!2570 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64001 0))(
  ( (Unit!64002) )
))
(declare-fun lt!1472471 () Unit!64001)

(declare-fun lemmaSemiInverse!2164 (TokenValueInjection!14500 BalanceConc!26628) Unit!64001)

(assert (=> b!4127712 (= lt!1472471 (lemmaSemiInverse!2164 (transformation!7306 r!4008) lt!1472472))))

(declare-fun seqFromList!5423 (List!44786) BalanceConc!26628)

(assert (=> b!4127712 (= lt!1472472 (seqFromList!5423 p!2912))))

(declare-fun b!4127713 () Bool)

(declare-fun e!2561152 () Bool)

(declare-fun tp_is_empty!21345 () Bool)

(declare-fun tp!1257830 () Bool)

(assert (=> b!4127713 (= e!2561152 (and tp_is_empty!21345 tp!1257830))))

(declare-fun b!4127714 () Bool)

(declare-fun res!1687096 () Bool)

(assert (=> b!4127714 (=> (not res!1687096) (not e!2561157))))

(declare-fun isPrefix!4241 (List!44786 List!44786) Bool)

(assert (=> b!4127714 (= res!1687096 (isPrefix!4241 p!2912 input!3238))))

(declare-fun b!4127715 () Bool)

(declare-fun e!2561150 () Bool)

(declare-fun tp!1257837 () Bool)

(assert (=> b!4127715 (= e!2561150 (and e!2561151 tp!1257837))))

(declare-fun b!4127716 () Bool)

(declare-fun e!2561155 () Bool)

(declare-fun tp!1257833 () Bool)

(assert (=> b!4127716 (= e!2561155 (and tp_is_empty!21345 tp!1257833))))

(declare-fun e!2561153 () Bool)

(assert (=> b!4127717 (= e!2561153 (and tp!1257838 tp!1257832))))

(declare-fun b!4127718 () Bool)

(declare-fun res!1687091 () Bool)

(assert (=> b!4127718 (=> (not res!1687091) (not e!2561161))))

(declare-fun rBis!149 () Rule!14412)

(declare-fun getIndex!654 (List!44787 Rule!14412) Int)

(assert (=> b!4127718 (= res!1687091 (< (getIndex!654 rules!3756 rBis!149) (getIndex!654 rules!3756 r!4008)))))

(declare-fun b!4127719 () Bool)

(declare-fun e!2561159 () Bool)

(assert (=> b!4127719 (= e!2561159 (not (isEmpty!26587 (t!341332 rules!3756))))))

(declare-fun b!4127705 () Bool)

(declare-fun e!2561162 () Bool)

(assert (=> b!4127705 (= e!2561161 (not e!2561162))))

(declare-fun res!1687098 () Bool)

(assert (=> b!4127705 (=> res!1687098 e!2561162)))

(get-info :version)

(assert (=> b!4127705 (= res!1687098 (or (and ((_ is Cons!44663) rules!3756) (= (h!50083 rules!3756) rBis!149)) (not ((_ is Cons!44663) rules!3756)) (= (h!50083 rules!3756) rBis!149)))))

(declare-fun lt!1472468 () Unit!64001)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2158 (LexerInterface!6895 Rule!14412 List!44787) Unit!64001)

(assert (=> b!4127705 (= lt!1472468 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2158 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4127705 (ruleValid!3114 thiss!25645 rBis!149)))

(declare-fun lt!1472470 () Unit!64001)

(assert (=> b!4127705 (= lt!1472470 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2158 thiss!25645 rBis!149 rules!3756))))

(declare-fun res!1687089 () Bool)

(assert (=> start!391706 (=> (not res!1687089) (not e!2561157))))

(assert (=> start!391706 (= res!1687089 ((_ is Lexer!6893) thiss!25645))))

(assert (=> start!391706 e!2561157))

(assert (=> start!391706 e!2561150))

(assert (=> start!391706 e!2561152))

(assert (=> start!391706 true))

(assert (=> start!391706 e!2561149))

(assert (=> start!391706 e!2561155))

(declare-fun e!2561160 () Bool)

(assert (=> start!391706 e!2561160))

(declare-fun tp!1257828 () Bool)

(declare-fun b!4127720 () Bool)

(assert (=> b!4127720 (= e!2561160 (and tp!1257828 (inv!59254 (tag!8166 rBis!149)) (inv!59256 (transformation!7306 rBis!149)) e!2561153))))

(declare-fun b!4127721 () Bool)

(declare-fun res!1687094 () Bool)

(assert (=> b!4127721 (=> (not res!1687094) (not e!2561157))))

(declare-fun contains!8982 (List!44787 Rule!14412) Bool)

(assert (=> b!4127721 (= res!1687094 (contains!8982 rules!3756 rBis!149))))

(declare-fun b!4127722 () Bool)

(declare-fun res!1687090 () Bool)

(assert (=> b!4127722 (=> (not res!1687090) (not e!2561161))))

(declare-fun matchR!6042 (Regex!12211 List!44786) Bool)

(assert (=> b!4127722 (= res!1687090 (matchR!6042 (regex!7306 r!4008) p!2912))))

(declare-fun b!4127723 () Bool)

(declare-fun res!1687097 () Bool)

(assert (=> b!4127723 (=> res!1687097 e!2561162)))

(assert (=> b!4127723 (= res!1687097 (not (contains!8982 (t!341332 rules!3756) r!4008)))))

(declare-fun b!4127724 () Bool)

(declare-fun res!1687093 () Bool)

(assert (=> b!4127724 (=> (not res!1687093) (not e!2561157))))

(assert (=> b!4127724 (= res!1687093 (contains!8982 rules!3756 r!4008))))

(declare-fun b!4127725 () Bool)

(declare-fun res!1687101 () Bool)

(assert (=> b!4127725 (=> res!1687101 e!2561162)))

(assert (=> b!4127725 (= res!1687101 (not (contains!8982 (t!341332 rules!3756) rBis!149)))))

(assert (=> b!4127726 (= e!2561147 (and tp!1257835 tp!1257834))))

(declare-fun b!4127727 () Bool)

(assert (=> b!4127727 (= e!2561162 e!2561159)))

(declare-fun res!1687095 () Bool)

(assert (=> b!4127727 (=> res!1687095 e!2561159)))

(declare-fun rulesValidInductive!2700 (LexerInterface!6895 List!44787) Bool)

(assert (=> b!4127727 (= res!1687095 (not (rulesValidInductive!2700 thiss!25645 (t!341332 rules!3756))))))

(declare-fun lt!1472469 () Option!9614)

(declare-fun maxPrefixOneRule!3035 (LexerInterface!6895 Rule!14412 List!44786) Option!9614)

(assert (=> b!4127727 (= lt!1472469 (maxPrefixOneRule!3035 thiss!25645 (h!50083 rules!3756) input!3238))))

(declare-fun b!4127728 () Bool)

(declare-fun res!1687099 () Bool)

(assert (=> b!4127728 (=> (not res!1687099) (not e!2561157))))

(declare-fun isEmpty!26588 (List!44786) Bool)

(assert (=> b!4127728 (= res!1687099 (not (isEmpty!26588 p!2912)))))

(assert (= (and start!391706 res!1687089) b!4127714))

(assert (= (and b!4127714 res!1687096) b!4127710))

(assert (= (and b!4127710 res!1687102) b!4127708))

(assert (= (and b!4127708 res!1687100) b!4127724))

(assert (= (and b!4127724 res!1687093) b!4127721))

(assert (= (and b!4127721 res!1687094) b!4127728))

(assert (= (and b!4127728 res!1687099) b!4127712))

(assert (= (and b!4127712 res!1687092) b!4127722))

(assert (= (and b!4127722 res!1687090) b!4127718))

(assert (= (and b!4127718 res!1687091) b!4127706))

(assert (= (and b!4127706 res!1687088) b!4127705))

(assert (= (and b!4127705 (not res!1687098)) b!4127723))

(assert (= (and b!4127723 (not res!1687097)) b!4127725))

(assert (= (and b!4127725 (not res!1687101)) b!4127727))

(assert (= (and b!4127727 (not res!1687095)) b!4127719))

(assert (= b!4127711 b!4127726))

(assert (= b!4127715 b!4127711))

(assert (= (and start!391706 ((_ is Cons!44663) rules!3756)) b!4127715))

(assert (= (and start!391706 ((_ is Cons!44662) p!2912)) b!4127713))

(assert (= b!4127709 b!4127707))

(assert (= start!391706 b!4127709))

(assert (= (and start!391706 ((_ is Cons!44662) input!3238)) b!4127716))

(assert (= b!4127720 b!4127717))

(assert (= start!391706 b!4127720))

(declare-fun m!4726077 () Bool)

(assert (=> b!4127706 m!4726077))

(declare-fun m!4726079 () Bool)

(assert (=> b!4127723 m!4726079))

(declare-fun m!4726081 () Bool)

(assert (=> b!4127725 m!4726081))

(declare-fun m!4726083 () Bool)

(assert (=> b!4127711 m!4726083))

(declare-fun m!4726085 () Bool)

(assert (=> b!4127711 m!4726085))

(declare-fun m!4726087 () Bool)

(assert (=> b!4127720 m!4726087))

(declare-fun m!4726089 () Bool)

(assert (=> b!4127720 m!4726089))

(declare-fun m!4726091 () Bool)

(assert (=> b!4127712 m!4726091))

(declare-fun m!4726093 () Bool)

(assert (=> b!4127712 m!4726093))

(declare-fun m!4726095 () Bool)

(assert (=> b!4127712 m!4726095))

(declare-fun m!4726097 () Bool)

(assert (=> b!4127712 m!4726097))

(declare-fun m!4726099 () Bool)

(assert (=> b!4127712 m!4726099))

(declare-fun m!4726101 () Bool)

(assert (=> b!4127712 m!4726101))

(declare-fun m!4726103 () Bool)

(assert (=> b!4127728 m!4726103))

(declare-fun m!4726105 () Bool)

(assert (=> b!4127714 m!4726105))

(declare-fun m!4726107 () Bool)

(assert (=> b!4127718 m!4726107))

(declare-fun m!4726109 () Bool)

(assert (=> b!4127718 m!4726109))

(declare-fun m!4726111 () Bool)

(assert (=> b!4127722 m!4726111))

(declare-fun m!4726113 () Bool)

(assert (=> b!4127709 m!4726113))

(declare-fun m!4726115 () Bool)

(assert (=> b!4127709 m!4726115))

(declare-fun m!4726117 () Bool)

(assert (=> b!4127727 m!4726117))

(declare-fun m!4726119 () Bool)

(assert (=> b!4127727 m!4726119))

(declare-fun m!4726121 () Bool)

(assert (=> b!4127705 m!4726121))

(declare-fun m!4726123 () Bool)

(assert (=> b!4127705 m!4726123))

(declare-fun m!4726125 () Bool)

(assert (=> b!4127705 m!4726125))

(declare-fun m!4726127 () Bool)

(assert (=> b!4127719 m!4726127))

(declare-fun m!4726129 () Bool)

(assert (=> b!4127721 m!4726129))

(declare-fun m!4726131 () Bool)

(assert (=> b!4127724 m!4726131))

(declare-fun m!4726133 () Bool)

(assert (=> b!4127708 m!4726133))

(declare-fun m!4726135 () Bool)

(assert (=> b!4127710 m!4726135))

(check-sat (not b!4127718) (not b!4127728) (not b!4127720) (not b!4127716) b_and!319711 (not b!4127724) (not b!4127714) (not b!4127710) b_and!319709 (not b_next!117631) (not b!4127723) (not b!4127713) (not b!4127712) (not b!4127719) (not b_next!117637) (not b!4127711) (not b!4127705) (not b_next!117633) (not b!4127708) (not b!4127722) (not b!4127706) (not b!4127727) b_and!319713 b_and!319717 (not b!4127715) b_and!319715 (not b!4127721) tp_is_empty!21345 (not b_next!117629) (not b!4127709) b_and!319719 (not b!4127725) (not b_next!117627) (not b_next!117635))
(check-sat (not b_next!117631) (not b_next!117637) (not b_next!117633) b_and!319711 b_and!319715 (not b_next!117629) b_and!319719 b_and!319709 b_and!319713 b_and!319717 (not b_next!117627) (not b_next!117635))
(get-model)

(declare-fun d!1223272 () Bool)

(assert (=> d!1223272 (= (isEmpty!26587 (t!341332 rules!3756)) ((_ is Nil!44663) (t!341332 rules!3756)))))

(assert (=> b!4127719 d!1223272))

(declare-fun d!1223276 () Bool)

(declare-fun res!1687117 () Bool)

(declare-fun e!2561167 () Bool)

(assert (=> d!1223276 (=> (not res!1687117) (not e!2561167))))

(declare-fun rulesValid!2864 (LexerInterface!6895 List!44787) Bool)

(assert (=> d!1223276 (= res!1687117 (rulesValid!2864 thiss!25645 rules!3756))))

(assert (=> d!1223276 (= (rulesInvariant!6192 thiss!25645 rules!3756) e!2561167)))

(declare-fun b!4127733 () Bool)

(declare-datatypes ((List!44789 0))(
  ( (Nil!44665) (Cons!44665 (h!50085 String!51430) (t!341366 List!44789)) )
))
(declare-fun noDuplicateTag!2945 (LexerInterface!6895 List!44787 List!44789) Bool)

(assert (=> b!4127733 (= e!2561167 (noDuplicateTag!2945 thiss!25645 rules!3756 Nil!44665))))

(assert (= (and d!1223276 res!1687117) b!4127733))

(declare-fun m!4726137 () Bool)

(assert (=> d!1223276 m!4726137))

(declare-fun m!4726141 () Bool)

(assert (=> b!4127733 m!4726141))

(assert (=> b!4127708 d!1223276))

(declare-fun b!4127759 () Bool)

(declare-fun e!2561185 () Int)

(assert (=> b!4127759 (= e!2561185 (+ 1 (getIndex!654 (t!341332 rules!3756) rBis!149)))))

(declare-fun d!1223280 () Bool)

(declare-fun lt!1472480 () Int)

(assert (=> d!1223280 (>= lt!1472480 0)))

(declare-fun e!2561186 () Int)

(assert (=> d!1223280 (= lt!1472480 e!2561186)))

(declare-fun c!708466 () Bool)

(assert (=> d!1223280 (= c!708466 (and ((_ is Cons!44663) rules!3756) (= (h!50083 rules!3756) rBis!149)))))

(assert (=> d!1223280 (contains!8982 rules!3756 rBis!149)))

(assert (=> d!1223280 (= (getIndex!654 rules!3756 rBis!149) lt!1472480)))

(declare-fun b!4127757 () Bool)

(assert (=> b!4127757 (= e!2561186 0)))

(declare-fun b!4127760 () Bool)

(assert (=> b!4127760 (= e!2561185 (- 1))))

(declare-fun b!4127758 () Bool)

(assert (=> b!4127758 (= e!2561186 e!2561185)))

(declare-fun c!708467 () Bool)

(assert (=> b!4127758 (= c!708467 (and ((_ is Cons!44663) rules!3756) (not (= (h!50083 rules!3756) rBis!149))))))

(assert (= (and d!1223280 c!708466) b!4127757))

(assert (= (and d!1223280 (not c!708466)) b!4127758))

(assert (= (and b!4127758 c!708467) b!4127759))

(assert (= (and b!4127758 (not c!708467)) b!4127760))

(declare-fun m!4726149 () Bool)

(assert (=> b!4127759 m!4726149))

(assert (=> d!1223280 m!4726129))

(assert (=> b!4127718 d!1223280))

(declare-fun b!4127763 () Bool)

(declare-fun e!2561187 () Int)

(assert (=> b!4127763 (= e!2561187 (+ 1 (getIndex!654 (t!341332 rules!3756) r!4008)))))

(declare-fun d!1223286 () Bool)

(declare-fun lt!1472481 () Int)

(assert (=> d!1223286 (>= lt!1472481 0)))

(declare-fun e!2561188 () Int)

(assert (=> d!1223286 (= lt!1472481 e!2561188)))

(declare-fun c!708468 () Bool)

(assert (=> d!1223286 (= c!708468 (and ((_ is Cons!44663) rules!3756) (= (h!50083 rules!3756) r!4008)))))

(assert (=> d!1223286 (contains!8982 rules!3756 r!4008)))

(assert (=> d!1223286 (= (getIndex!654 rules!3756 r!4008) lt!1472481)))

(declare-fun b!4127761 () Bool)

(assert (=> b!4127761 (= e!2561188 0)))

(declare-fun b!4127764 () Bool)

(assert (=> b!4127764 (= e!2561187 (- 1))))

(declare-fun b!4127762 () Bool)

(assert (=> b!4127762 (= e!2561188 e!2561187)))

(declare-fun c!708469 () Bool)

(assert (=> b!4127762 (= c!708469 (and ((_ is Cons!44663) rules!3756) (not (= (h!50083 rules!3756) r!4008))))))

(assert (= (and d!1223286 c!708468) b!4127761))

(assert (= (and d!1223286 (not c!708468)) b!4127762))

(assert (= (and b!4127762 c!708469) b!4127763))

(assert (= (and b!4127762 (not c!708469)) b!4127764))

(declare-fun m!4726151 () Bool)

(assert (=> b!4127763 m!4726151))

(assert (=> d!1223286 m!4726131))

(assert (=> b!4127718 d!1223286))

(declare-fun d!1223288 () Bool)

(assert (=> d!1223288 (= (isEmpty!26588 p!2912) ((_ is Nil!44662) p!2912))))

(assert (=> b!4127728 d!1223288))

(declare-fun d!1223292 () Bool)

(declare-fun res!1687135 () Bool)

(declare-fun e!2561198 () Bool)

(assert (=> d!1223292 (=> (not res!1687135) (not e!2561198))))

(declare-fun validRegex!5494 (Regex!12211) Bool)

(assert (=> d!1223292 (= res!1687135 (validRegex!5494 (regex!7306 r!4008)))))

(assert (=> d!1223292 (= (ruleValid!3114 thiss!25645 r!4008) e!2561198)))

(declare-fun b!4127783 () Bool)

(declare-fun res!1687136 () Bool)

(assert (=> b!4127783 (=> (not res!1687136) (not e!2561198))))

(declare-fun nullable!4288 (Regex!12211) Bool)

(assert (=> b!4127783 (= res!1687136 (not (nullable!4288 (regex!7306 r!4008))))))

(declare-fun b!4127784 () Bool)

(assert (=> b!4127784 (= e!2561198 (not (= (tag!8166 r!4008) (String!51431 ""))))))

(assert (= (and d!1223292 res!1687135) b!4127783))

(assert (= (and b!4127783 res!1687136) b!4127784))

(declare-fun m!4726161 () Bool)

(assert (=> d!1223292 m!4726161))

(declare-fun m!4726163 () Bool)

(assert (=> b!4127783 m!4726163))

(assert (=> b!4127706 d!1223292))

(declare-fun d!1223298 () Bool)

(assert (=> d!1223298 true))

(declare-fun lt!1472509 () Bool)

(declare-fun lambda!128791 () Int)

(declare-fun forall!8452 (List!44787 Int) Bool)

(assert (=> d!1223298 (= lt!1472509 (forall!8452 (t!341332 rules!3756) lambda!128791))))

(declare-fun e!2561236 () Bool)

(assert (=> d!1223298 (= lt!1472509 e!2561236)))

(declare-fun res!1687185 () Bool)

(assert (=> d!1223298 (=> res!1687185 e!2561236)))

(assert (=> d!1223298 (= res!1687185 (not ((_ is Cons!44663) (t!341332 rules!3756))))))

(assert (=> d!1223298 (= (rulesValidInductive!2700 thiss!25645 (t!341332 rules!3756)) lt!1472509)))

(declare-fun b!4127838 () Bool)

(declare-fun e!2561237 () Bool)

(assert (=> b!4127838 (= e!2561236 e!2561237)))

(declare-fun res!1687184 () Bool)

(assert (=> b!4127838 (=> (not res!1687184) (not e!2561237))))

(assert (=> b!4127838 (= res!1687184 (ruleValid!3114 thiss!25645 (h!50083 (t!341332 rules!3756))))))

(declare-fun b!4127839 () Bool)

(assert (=> b!4127839 (= e!2561237 (rulesValidInductive!2700 thiss!25645 (t!341332 (t!341332 rules!3756))))))

(assert (= (and d!1223298 (not res!1687185)) b!4127838))

(assert (= (and b!4127838 res!1687184) b!4127839))

(declare-fun m!4726207 () Bool)

(assert (=> d!1223298 m!4726207))

(declare-fun m!4726209 () Bool)

(assert (=> b!4127838 m!4726209))

(declare-fun m!4726211 () Bool)

(assert (=> b!4127839 m!4726211))

(assert (=> b!4127727 d!1223298))

(declare-fun b!4127937 () Bool)

(declare-fun e!2561291 () Bool)

(declare-fun e!2561288 () Bool)

(assert (=> b!4127937 (= e!2561291 e!2561288)))

(declare-fun res!1687234 () Bool)

(assert (=> b!4127937 (=> (not res!1687234) (not e!2561288))))

(declare-fun lt!1472538 () Option!9614)

(declare-fun list!16379 (BalanceConc!26628) List!44786)

(declare-fun charsOf!4924 (Token!13542) BalanceConc!26628)

(declare-fun get!14573 (Option!9614) tuple2!43114)

(assert (=> b!4127937 (= res!1687234 (matchR!6042 (regex!7306 (h!50083 rules!3756)) (list!16379 (charsOf!4924 (_1!24691 (get!14573 lt!1472538))))))))

(declare-fun b!4127938 () Bool)

(declare-fun e!2561290 () Bool)

(declare-datatypes ((tuple2!43118 0))(
  ( (tuple2!43119 (_1!24693 List!44786) (_2!24693 List!44786)) )
))
(declare-fun findLongestMatchInner!1505 (Regex!12211 List!44786 Int List!44786 List!44786 Int) tuple2!43118)

(assert (=> b!4127938 (= e!2561290 (matchR!6042 (regex!7306 (h!50083 rules!3756)) (_1!24693 (findLongestMatchInner!1505 (regex!7306 (h!50083 rules!3756)) Nil!44662 (size!33074 Nil!44662) input!3238 input!3238 (size!33074 input!3238)))))))

(declare-fun b!4127939 () Bool)

(declare-fun res!1687237 () Bool)

(assert (=> b!4127939 (=> (not res!1687237) (not e!2561288))))

(declare-fun ++!11570 (List!44786 List!44786) List!44786)

(assert (=> b!4127939 (= res!1687237 (= (++!11570 (list!16379 (charsOf!4924 (_1!24691 (get!14573 lt!1472538)))) (_2!24691 (get!14573 lt!1472538))) input!3238))))

(declare-fun d!1223320 () Bool)

(assert (=> d!1223320 e!2561291))

(declare-fun res!1687233 () Bool)

(assert (=> d!1223320 (=> res!1687233 e!2561291)))

(declare-fun isEmpty!26590 (Option!9614) Bool)

(assert (=> d!1223320 (= res!1687233 (isEmpty!26590 lt!1472538))))

(declare-fun e!2561289 () Option!9614)

(assert (=> d!1223320 (= lt!1472538 e!2561289)))

(declare-fun c!708495 () Bool)

(declare-fun lt!1472540 () tuple2!43118)

(assert (=> d!1223320 (= c!708495 (isEmpty!26588 (_1!24693 lt!1472540)))))

(declare-fun findLongestMatch!1418 (Regex!12211 List!44786) tuple2!43118)

(assert (=> d!1223320 (= lt!1472540 (findLongestMatch!1418 (regex!7306 (h!50083 rules!3756)) input!3238))))

(assert (=> d!1223320 (ruleValid!3114 thiss!25645 (h!50083 rules!3756))))

(assert (=> d!1223320 (= (maxPrefixOneRule!3035 thiss!25645 (h!50083 rules!3756) input!3238) lt!1472538)))

(declare-fun b!4127940 () Bool)

(declare-fun res!1687239 () Bool)

(assert (=> b!4127940 (=> (not res!1687239) (not e!2561288))))

(assert (=> b!4127940 (= res!1687239 (= (rule!10394 (_1!24691 (get!14573 lt!1472538))) (h!50083 rules!3756)))))

(declare-fun b!4127941 () Bool)

(declare-fun res!1687238 () Bool)

(assert (=> b!4127941 (=> (not res!1687238) (not e!2561288))))

(assert (=> b!4127941 (= res!1687238 (= (value!228775 (_1!24691 (get!14573 lt!1472538))) (apply!10379 (transformation!7306 (rule!10394 (_1!24691 (get!14573 lt!1472538)))) (seqFromList!5423 (originalCharacters!7802 (_1!24691 (get!14573 lt!1472538)))))))))

(declare-fun b!4127942 () Bool)

(assert (=> b!4127942 (= e!2561289 None!9613)))

(declare-fun b!4127943 () Bool)

(declare-fun res!1687235 () Bool)

(assert (=> b!4127943 (=> (not res!1687235) (not e!2561288))))

(assert (=> b!4127943 (= res!1687235 (< (size!33074 (_2!24691 (get!14573 lt!1472538))) (size!33074 input!3238)))))

(declare-fun b!4127944 () Bool)

(declare-fun size!33076 (BalanceConc!26628) Int)

(assert (=> b!4127944 (= e!2561289 (Some!9613 (tuple2!43115 (Token!13543 (apply!10379 (transformation!7306 (h!50083 rules!3756)) (seqFromList!5423 (_1!24693 lt!1472540))) (h!50083 rules!3756) (size!33076 (seqFromList!5423 (_1!24693 lt!1472540))) (_1!24693 lt!1472540)) (_2!24693 lt!1472540))))))

(declare-fun lt!1472539 () Unit!64001)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1478 (Regex!12211 List!44786) Unit!64001)

(assert (=> b!4127944 (= lt!1472539 (longestMatchIsAcceptedByMatchOrIsEmpty!1478 (regex!7306 (h!50083 rules!3756)) input!3238))))

(declare-fun res!1687236 () Bool)

(assert (=> b!4127944 (= res!1687236 (isEmpty!26588 (_1!24693 (findLongestMatchInner!1505 (regex!7306 (h!50083 rules!3756)) Nil!44662 (size!33074 Nil!44662) input!3238 input!3238 (size!33074 input!3238)))))))

(assert (=> b!4127944 (=> res!1687236 e!2561290)))

(assert (=> b!4127944 e!2561290))

(declare-fun lt!1472537 () Unit!64001)

(assert (=> b!4127944 (= lt!1472537 lt!1472539)))

(declare-fun lt!1472541 () Unit!64001)

(assert (=> b!4127944 (= lt!1472541 (lemmaSemiInverse!2164 (transformation!7306 (h!50083 rules!3756)) (seqFromList!5423 (_1!24693 lt!1472540))))))

(declare-fun b!4127945 () Bool)

(assert (=> b!4127945 (= e!2561288 (= (size!33073 (_1!24691 (get!14573 lt!1472538))) (size!33074 (originalCharacters!7802 (_1!24691 (get!14573 lt!1472538))))))))

(assert (= (and d!1223320 c!708495) b!4127942))

(assert (= (and d!1223320 (not c!708495)) b!4127944))

(assert (= (and b!4127944 (not res!1687236)) b!4127938))

(assert (= (and d!1223320 (not res!1687233)) b!4127937))

(assert (= (and b!4127937 res!1687234) b!4127939))

(assert (= (and b!4127939 res!1687237) b!4127943))

(assert (= (and b!4127943 res!1687235) b!4127940))

(assert (= (and b!4127940 res!1687239) b!4127941))

(assert (= (and b!4127941 res!1687238) b!4127945))

(declare-fun m!4726295 () Bool)

(assert (=> b!4127943 m!4726295))

(declare-fun m!4726297 () Bool)

(assert (=> b!4127943 m!4726297))

(declare-fun m!4726299 () Bool)

(assert (=> b!4127943 m!4726299))

(assert (=> b!4127945 m!4726295))

(declare-fun m!4726301 () Bool)

(assert (=> b!4127945 m!4726301))

(declare-fun m!4726303 () Bool)

(assert (=> d!1223320 m!4726303))

(declare-fun m!4726305 () Bool)

(assert (=> d!1223320 m!4726305))

(declare-fun m!4726307 () Bool)

(assert (=> d!1223320 m!4726307))

(declare-fun m!4726309 () Bool)

(assert (=> d!1223320 m!4726309))

(declare-fun m!4726311 () Bool)

(assert (=> b!4127938 m!4726311))

(assert (=> b!4127938 m!4726299))

(assert (=> b!4127938 m!4726311))

(assert (=> b!4127938 m!4726299))

(declare-fun m!4726313 () Bool)

(assert (=> b!4127938 m!4726313))

(declare-fun m!4726315 () Bool)

(assert (=> b!4127938 m!4726315))

(assert (=> b!4127940 m!4726295))

(assert (=> b!4127939 m!4726295))

(declare-fun m!4726317 () Bool)

(assert (=> b!4127939 m!4726317))

(assert (=> b!4127939 m!4726317))

(declare-fun m!4726319 () Bool)

(assert (=> b!4127939 m!4726319))

(assert (=> b!4127939 m!4726319))

(declare-fun m!4726321 () Bool)

(assert (=> b!4127939 m!4726321))

(declare-fun m!4726323 () Bool)

(assert (=> b!4127944 m!4726323))

(assert (=> b!4127944 m!4726311))

(declare-fun m!4726325 () Bool)

(assert (=> b!4127944 m!4726325))

(assert (=> b!4127944 m!4726325))

(declare-fun m!4726327 () Bool)

(assert (=> b!4127944 m!4726327))

(assert (=> b!4127944 m!4726311))

(assert (=> b!4127944 m!4726299))

(assert (=> b!4127944 m!4726313))

(assert (=> b!4127944 m!4726325))

(declare-fun m!4726329 () Bool)

(assert (=> b!4127944 m!4726329))

(assert (=> b!4127944 m!4726299))

(assert (=> b!4127944 m!4726325))

(declare-fun m!4726331 () Bool)

(assert (=> b!4127944 m!4726331))

(declare-fun m!4726333 () Bool)

(assert (=> b!4127944 m!4726333))

(assert (=> b!4127937 m!4726295))

(assert (=> b!4127937 m!4726317))

(assert (=> b!4127937 m!4726317))

(assert (=> b!4127937 m!4726319))

(assert (=> b!4127937 m!4726319))

(declare-fun m!4726335 () Bool)

(assert (=> b!4127937 m!4726335))

(assert (=> b!4127941 m!4726295))

(declare-fun m!4726337 () Bool)

(assert (=> b!4127941 m!4726337))

(assert (=> b!4127941 m!4726337))

(declare-fun m!4726339 () Bool)

(assert (=> b!4127941 m!4726339))

(assert (=> b!4127727 d!1223320))

(declare-fun d!1223346 () Bool)

(assert (=> d!1223346 (ruleValid!3114 thiss!25645 r!4008)))

(declare-fun lt!1472554 () Unit!64001)

(declare-fun choose!25239 (LexerInterface!6895 Rule!14412 List!44787) Unit!64001)

(assert (=> d!1223346 (= lt!1472554 (choose!25239 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1223346 (contains!8982 rules!3756 r!4008)))

(assert (=> d!1223346 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2158 thiss!25645 r!4008 rules!3756) lt!1472554)))

(declare-fun bs!594955 () Bool)

(assert (= bs!594955 d!1223346))

(assert (=> bs!594955 m!4726077))

(declare-fun m!4726341 () Bool)

(assert (=> bs!594955 m!4726341))

(assert (=> bs!594955 m!4726131))

(assert (=> b!4127705 d!1223346))

(declare-fun d!1223348 () Bool)

(declare-fun res!1687254 () Bool)

(declare-fun e!2561298 () Bool)

(assert (=> d!1223348 (=> (not res!1687254) (not e!2561298))))

(assert (=> d!1223348 (= res!1687254 (validRegex!5494 (regex!7306 rBis!149)))))

(assert (=> d!1223348 (= (ruleValid!3114 thiss!25645 rBis!149) e!2561298)))

(declare-fun b!4127964 () Bool)

(declare-fun res!1687255 () Bool)

(assert (=> b!4127964 (=> (not res!1687255) (not e!2561298))))

(assert (=> b!4127964 (= res!1687255 (not (nullable!4288 (regex!7306 rBis!149))))))

(declare-fun b!4127965 () Bool)

(assert (=> b!4127965 (= e!2561298 (not (= (tag!8166 rBis!149) (String!51431 ""))))))

(assert (= (and d!1223348 res!1687254) b!4127964))

(assert (= (and b!4127964 res!1687255) b!4127965))

(declare-fun m!4726343 () Bool)

(assert (=> d!1223348 m!4726343))

(declare-fun m!4726345 () Bool)

(assert (=> b!4127964 m!4726345))

(assert (=> b!4127705 d!1223348))

(declare-fun d!1223350 () Bool)

(assert (=> d!1223350 (ruleValid!3114 thiss!25645 rBis!149)))

(declare-fun lt!1472555 () Unit!64001)

(assert (=> d!1223350 (= lt!1472555 (choose!25239 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1223350 (contains!8982 rules!3756 rBis!149)))

(assert (=> d!1223350 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2158 thiss!25645 rBis!149 rules!3756) lt!1472555)))

(declare-fun bs!594956 () Bool)

(assert (= bs!594956 d!1223350))

(assert (=> bs!594956 m!4726123))

(declare-fun m!4726347 () Bool)

(assert (=> bs!594956 m!4726347))

(assert (=> bs!594956 m!4726129))

(assert (=> b!4127705 d!1223350))

(declare-fun d!1223352 () Bool)

(declare-fun lt!1472563 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6890 (List!44787) (InoxSet Rule!14412))

(assert (=> d!1223352 (= lt!1472563 (select (content!6890 (t!341332 rules!3756)) rBis!149))))

(declare-fun e!2561306 () Bool)

(assert (=> d!1223352 (= lt!1472563 e!2561306)))

(declare-fun res!1687268 () Bool)

(assert (=> d!1223352 (=> (not res!1687268) (not e!2561306))))

(assert (=> d!1223352 (= res!1687268 ((_ is Cons!44663) (t!341332 rules!3756)))))

(assert (=> d!1223352 (= (contains!8982 (t!341332 rules!3756) rBis!149) lt!1472563)))

(declare-fun b!4127979 () Bool)

(declare-fun e!2561307 () Bool)

(assert (=> b!4127979 (= e!2561306 e!2561307)))

(declare-fun res!1687267 () Bool)

(assert (=> b!4127979 (=> res!1687267 e!2561307)))

(assert (=> b!4127979 (= res!1687267 (= (h!50083 (t!341332 rules!3756)) rBis!149))))

(declare-fun b!4127980 () Bool)

(assert (=> b!4127980 (= e!2561307 (contains!8982 (t!341332 (t!341332 rules!3756)) rBis!149))))

(assert (= (and d!1223352 res!1687268) b!4127979))

(assert (= (and b!4127979 (not res!1687267)) b!4127980))

(declare-fun m!4726349 () Bool)

(assert (=> d!1223352 m!4726349))

(declare-fun m!4726351 () Bool)

(assert (=> d!1223352 m!4726351))

(declare-fun m!4726353 () Bool)

(assert (=> b!4127980 m!4726353))

(assert (=> b!4127725 d!1223352))

(declare-fun b!4128002 () Bool)

(declare-fun e!2561316 () Bool)

(assert (=> b!4128002 (= e!2561316 (>= (size!33074 input!3238) (size!33074 p!2912)))))

(declare-fun b!4127999 () Bool)

(declare-fun e!2561317 () Bool)

(declare-fun e!2561318 () Bool)

(assert (=> b!4127999 (= e!2561317 e!2561318)))

(declare-fun res!1687280 () Bool)

(assert (=> b!4127999 (=> (not res!1687280) (not e!2561318))))

(assert (=> b!4127999 (= res!1687280 (not ((_ is Nil!44662) input!3238)))))

(declare-fun b!4128000 () Bool)

(declare-fun res!1687279 () Bool)

(assert (=> b!4128000 (=> (not res!1687279) (not e!2561318))))

(declare-fun head!8696 (List!44786) C!24608)

(assert (=> b!4128000 (= res!1687279 (= (head!8696 p!2912) (head!8696 input!3238)))))

(declare-fun b!4128001 () Bool)

(declare-fun tail!6469 (List!44786) List!44786)

(assert (=> b!4128001 (= e!2561318 (isPrefix!4241 (tail!6469 p!2912) (tail!6469 input!3238)))))

(declare-fun d!1223354 () Bool)

(assert (=> d!1223354 e!2561316))

(declare-fun res!1687278 () Bool)

(assert (=> d!1223354 (=> res!1687278 e!2561316)))

(declare-fun lt!1472566 () Bool)

(assert (=> d!1223354 (= res!1687278 (not lt!1472566))))

(assert (=> d!1223354 (= lt!1472566 e!2561317)))

(declare-fun res!1687277 () Bool)

(assert (=> d!1223354 (=> res!1687277 e!2561317)))

(assert (=> d!1223354 (= res!1687277 ((_ is Nil!44662) p!2912))))

(assert (=> d!1223354 (= (isPrefix!4241 p!2912 input!3238) lt!1472566)))

(assert (= (and d!1223354 (not res!1687277)) b!4127999))

(assert (= (and b!4127999 res!1687280) b!4128000))

(assert (= (and b!4128000 res!1687279) b!4128001))

(assert (= (and d!1223354 (not res!1687278)) b!4128002))

(assert (=> b!4128002 m!4726299))

(assert (=> b!4128002 m!4726091))

(declare-fun m!4726385 () Bool)

(assert (=> b!4128000 m!4726385))

(declare-fun m!4726387 () Bool)

(assert (=> b!4128000 m!4726387))

(declare-fun m!4726389 () Bool)

(assert (=> b!4128001 m!4726389))

(declare-fun m!4726391 () Bool)

(assert (=> b!4128001 m!4726391))

(assert (=> b!4128001 m!4726389))

(assert (=> b!4128001 m!4726391))

(declare-fun m!4726393 () Bool)

(assert (=> b!4128001 m!4726393))

(assert (=> b!4127714 d!1223354))

(declare-fun d!1223358 () Bool)

(declare-fun lt!1472567 () Bool)

(assert (=> d!1223358 (= lt!1472567 (select (content!6890 rules!3756) r!4008))))

(declare-fun e!2561320 () Bool)

(assert (=> d!1223358 (= lt!1472567 e!2561320)))

(declare-fun res!1687282 () Bool)

(assert (=> d!1223358 (=> (not res!1687282) (not e!2561320))))

(assert (=> d!1223358 (= res!1687282 ((_ is Cons!44663) rules!3756))))

(assert (=> d!1223358 (= (contains!8982 rules!3756 r!4008) lt!1472567)))

(declare-fun b!4128007 () Bool)

(declare-fun e!2561321 () Bool)

(assert (=> b!4128007 (= e!2561320 e!2561321)))

(declare-fun res!1687281 () Bool)

(assert (=> b!4128007 (=> res!1687281 e!2561321)))

(assert (=> b!4128007 (= res!1687281 (= (h!50083 rules!3756) r!4008))))

(declare-fun b!4128008 () Bool)

(assert (=> b!4128008 (= e!2561321 (contains!8982 (t!341332 rules!3756) r!4008))))

(assert (= (and d!1223358 res!1687282) b!4128007))

(assert (= (and b!4128007 (not res!1687281)) b!4128008))

(declare-fun m!4726395 () Bool)

(assert (=> d!1223358 m!4726395))

(declare-fun m!4726397 () Bool)

(assert (=> d!1223358 m!4726397))

(assert (=> b!4128008 m!4726079))

(assert (=> b!4127724 d!1223358))

(declare-fun d!1223360 () Bool)

(declare-fun lt!1472568 () Bool)

(assert (=> d!1223360 (= lt!1472568 (select (content!6890 (t!341332 rules!3756)) r!4008))))

(declare-fun e!2561323 () Bool)

(assert (=> d!1223360 (= lt!1472568 e!2561323)))

(declare-fun res!1687284 () Bool)

(assert (=> d!1223360 (=> (not res!1687284) (not e!2561323))))

(assert (=> d!1223360 (= res!1687284 ((_ is Cons!44663) (t!341332 rules!3756)))))

(assert (=> d!1223360 (= (contains!8982 (t!341332 rules!3756) r!4008) lt!1472568)))

(declare-fun b!4128013 () Bool)

(declare-fun e!2561324 () Bool)

(assert (=> b!4128013 (= e!2561323 e!2561324)))

(declare-fun res!1687283 () Bool)

(assert (=> b!4128013 (=> res!1687283 e!2561324)))

(assert (=> b!4128013 (= res!1687283 (= (h!50083 (t!341332 rules!3756)) r!4008))))

(declare-fun b!4128014 () Bool)

(assert (=> b!4128014 (= e!2561324 (contains!8982 (t!341332 (t!341332 rules!3756)) r!4008))))

(assert (= (and d!1223360 res!1687284) b!4128013))

(assert (= (and b!4128013 (not res!1687283)) b!4128014))

(assert (=> d!1223360 m!4726349))

(declare-fun m!4726399 () Bool)

(assert (=> d!1223360 m!4726399))

(declare-fun m!4726401 () Bool)

(assert (=> b!4128014 m!4726401))

(assert (=> b!4127723 d!1223360))

(declare-fun b!4128040 () Bool)

(declare-fun e!2561344 () Bool)

(assert (=> b!4128040 (= e!2561344 true)))

(declare-fun d!1223362 () Bool)

(assert (=> d!1223362 e!2561344))

(assert (= d!1223362 b!4128040))

(declare-fun lambda!128797 () Int)

(declare-fun order!23535 () Int)

(declare-fun order!23533 () Int)

(declare-fun dynLambda!19119 (Int Int) Int)

(declare-fun dynLambda!19120 (Int Int) Int)

(assert (=> b!4128040 (< (dynLambda!19119 order!23533 (toValue!9966 (transformation!7306 r!4008))) (dynLambda!19120 order!23535 lambda!128797))))

(declare-fun order!23537 () Int)

(declare-fun dynLambda!19121 (Int Int) Int)

(assert (=> b!4128040 (< (dynLambda!19121 order!23537 (toChars!9825 (transformation!7306 r!4008))) (dynLambda!19120 order!23535 lambda!128797))))

(declare-fun dynLambda!19122 (Int TokenValue!7536) BalanceConc!26628)

(declare-fun dynLambda!19123 (Int BalanceConc!26628) TokenValue!7536)

(assert (=> d!1223362 (= (list!16379 (dynLambda!19122 (toChars!9825 (transformation!7306 r!4008)) (dynLambda!19123 (toValue!9966 (transformation!7306 r!4008)) lt!1472472))) (list!16379 lt!1472472))))

(declare-fun lt!1472571 () Unit!64001)

(declare-fun ForallOf!932 (Int BalanceConc!26628) Unit!64001)

(assert (=> d!1223362 (= lt!1472571 (ForallOf!932 lambda!128797 lt!1472472))))

(assert (=> d!1223362 (= (lemmaSemiInverse!2164 (transformation!7306 r!4008) lt!1472472) lt!1472571)))

(declare-fun b_lambda!121207 () Bool)

(assert (=> (not b_lambda!121207) (not d!1223362)))

(declare-fun t!341350 () Bool)

(declare-fun tb!247783 () Bool)

(assert (=> (and b!4127717 (= (toChars!9825 (transformation!7306 rBis!149)) (toChars!9825 (transformation!7306 r!4008))) t!341350) tb!247783))

(declare-fun b!4128045 () Bool)

(declare-fun tp!1257885 () Bool)

(declare-fun e!2561347 () Bool)

(declare-fun inv!59259 (Conc!13517) Bool)

(assert (=> b!4128045 (= e!2561347 (and (inv!59259 (c!708456 (dynLambda!19122 (toChars!9825 (transformation!7306 r!4008)) (dynLambda!19123 (toValue!9966 (transformation!7306 r!4008)) lt!1472472)))) tp!1257885))))

(declare-fun result!301086 () Bool)

(declare-fun inv!59260 (BalanceConc!26628) Bool)

(assert (=> tb!247783 (= result!301086 (and (inv!59260 (dynLambda!19122 (toChars!9825 (transformation!7306 r!4008)) (dynLambda!19123 (toValue!9966 (transformation!7306 r!4008)) lt!1472472))) e!2561347))))

(assert (= tb!247783 b!4128045))

(declare-fun m!4726407 () Bool)

(assert (=> b!4128045 m!4726407))

(declare-fun m!4726409 () Bool)

(assert (=> tb!247783 m!4726409))

(assert (=> d!1223362 t!341350))

(declare-fun b_and!319743 () Bool)

(assert (= b_and!319711 (and (=> t!341350 result!301086) b_and!319743)))

(declare-fun tb!247785 () Bool)

(declare-fun t!341352 () Bool)

(assert (=> (and b!4127726 (= (toChars!9825 (transformation!7306 (h!50083 rules!3756))) (toChars!9825 (transformation!7306 r!4008))) t!341352) tb!247785))

(declare-fun result!301090 () Bool)

(assert (= result!301090 result!301086))

(assert (=> d!1223362 t!341352))

(declare-fun b_and!319745 () Bool)

(assert (= b_and!319715 (and (=> t!341352 result!301090) b_and!319745)))

(declare-fun t!341354 () Bool)

(declare-fun tb!247787 () Bool)

(assert (=> (and b!4127707 (= (toChars!9825 (transformation!7306 r!4008)) (toChars!9825 (transformation!7306 r!4008))) t!341354) tb!247787))

(declare-fun result!301092 () Bool)

(assert (= result!301092 result!301086))

(assert (=> d!1223362 t!341354))

(declare-fun b_and!319747 () Bool)

(assert (= b_and!319719 (and (=> t!341354 result!301092) b_and!319747)))

(declare-fun b_lambda!121209 () Bool)

(assert (=> (not b_lambda!121209) (not d!1223362)))

(declare-fun tb!247789 () Bool)

(declare-fun t!341356 () Bool)

(assert (=> (and b!4127717 (= (toValue!9966 (transformation!7306 rBis!149)) (toValue!9966 (transformation!7306 r!4008))) t!341356) tb!247789))

(declare-fun result!301094 () Bool)

(declare-fun inv!21 (TokenValue!7536) Bool)

(assert (=> tb!247789 (= result!301094 (inv!21 (dynLambda!19123 (toValue!9966 (transformation!7306 r!4008)) lt!1472472)))))

(declare-fun m!4726411 () Bool)

(assert (=> tb!247789 m!4726411))

(assert (=> d!1223362 t!341356))

(declare-fun b_and!319749 () Bool)

(assert (= b_and!319709 (and (=> t!341356 result!301094) b_and!319749)))

(declare-fun tb!247791 () Bool)

(declare-fun t!341358 () Bool)

(assert (=> (and b!4127726 (= (toValue!9966 (transformation!7306 (h!50083 rules!3756))) (toValue!9966 (transformation!7306 r!4008))) t!341358) tb!247791))

(declare-fun result!301098 () Bool)

(assert (= result!301098 result!301094))

(assert (=> d!1223362 t!341358))

(declare-fun b_and!319751 () Bool)

(assert (= b_and!319713 (and (=> t!341358 result!301098) b_and!319751)))

(declare-fun t!341360 () Bool)

(declare-fun tb!247793 () Bool)

(assert (=> (and b!4127707 (= (toValue!9966 (transformation!7306 r!4008)) (toValue!9966 (transformation!7306 r!4008))) t!341360) tb!247793))

(declare-fun result!301100 () Bool)

(assert (= result!301100 result!301094))

(assert (=> d!1223362 t!341360))

(declare-fun b_and!319753 () Bool)

(assert (= b_and!319717 (and (=> t!341360 result!301100) b_and!319753)))

(declare-fun m!4726413 () Bool)

(assert (=> d!1223362 m!4726413))

(declare-fun m!4726415 () Bool)

(assert (=> d!1223362 m!4726415))

(assert (=> d!1223362 m!4726413))

(declare-fun m!4726417 () Bool)

(assert (=> d!1223362 m!4726417))

(assert (=> d!1223362 m!4726417))

(declare-fun m!4726419 () Bool)

(assert (=> d!1223362 m!4726419))

(declare-fun m!4726421 () Bool)

(assert (=> d!1223362 m!4726421))

(assert (=> b!4127712 d!1223362))

(declare-fun d!1223364 () Bool)

(declare-fun lt!1472574 () List!44786)

(assert (=> d!1223364 (= (++!11570 p!2912 lt!1472574) input!3238)))

(declare-fun e!2561353 () List!44786)

(assert (=> d!1223364 (= lt!1472574 e!2561353)))

(declare-fun c!708502 () Bool)

(assert (=> d!1223364 (= c!708502 ((_ is Cons!44662) p!2912))))

(assert (=> d!1223364 (>= (size!33074 input!3238) (size!33074 p!2912))))

(assert (=> d!1223364 (= (getSuffix!2570 input!3238 p!2912) lt!1472574)))

(declare-fun b!4128052 () Bool)

(assert (=> b!4128052 (= e!2561353 (getSuffix!2570 (tail!6469 input!3238) (t!341331 p!2912)))))

(declare-fun b!4128053 () Bool)

(assert (=> b!4128053 (= e!2561353 input!3238)))

(assert (= (and d!1223364 c!708502) b!4128052))

(assert (= (and d!1223364 (not c!708502)) b!4128053))

(declare-fun m!4726423 () Bool)

(assert (=> d!1223364 m!4726423))

(assert (=> d!1223364 m!4726299))

(assert (=> d!1223364 m!4726091))

(assert (=> b!4128052 m!4726391))

(assert (=> b!4128052 m!4726391))

(declare-fun m!4726425 () Bool)

(assert (=> b!4128052 m!4726425))

(assert (=> b!4127712 d!1223364))

(declare-fun b!4128072 () Bool)

(declare-fun e!2561362 () Bool)

(declare-fun lt!1472585 () Option!9614)

(assert (=> b!4128072 (= e!2561362 (contains!8982 rules!3756 (rule!10394 (_1!24691 (get!14573 lt!1472585)))))))

(declare-fun b!4128073 () Bool)

(declare-fun e!2561360 () Option!9614)

(declare-fun lt!1472587 () Option!9614)

(declare-fun lt!1472588 () Option!9614)

(assert (=> b!4128073 (= e!2561360 (ite (and ((_ is None!9613) lt!1472587) ((_ is None!9613) lt!1472588)) None!9613 (ite ((_ is None!9613) lt!1472588) lt!1472587 (ite ((_ is None!9613) lt!1472587) lt!1472588 (ite (>= (size!33073 (_1!24691 (v!40213 lt!1472587))) (size!33073 (_1!24691 (v!40213 lt!1472588)))) lt!1472587 lt!1472588)))))))

(declare-fun call!290271 () Option!9614)

(assert (=> b!4128073 (= lt!1472587 call!290271)))

(assert (=> b!4128073 (= lt!1472588 (maxPrefix!4087 thiss!25645 (t!341332 rules!3756) input!3238))))

(declare-fun bm!290266 () Bool)

(assert (=> bm!290266 (= call!290271 (maxPrefixOneRule!3035 thiss!25645 (h!50083 rules!3756) input!3238))))

(declare-fun b!4128074 () Bool)

(declare-fun res!1687304 () Bool)

(assert (=> b!4128074 (=> (not res!1687304) (not e!2561362))))

(assert (=> b!4128074 (= res!1687304 (= (value!228775 (_1!24691 (get!14573 lt!1472585))) (apply!10379 (transformation!7306 (rule!10394 (_1!24691 (get!14573 lt!1472585)))) (seqFromList!5423 (originalCharacters!7802 (_1!24691 (get!14573 lt!1472585)))))))))

(declare-fun b!4128075 () Bool)

(declare-fun res!1687303 () Bool)

(assert (=> b!4128075 (=> (not res!1687303) (not e!2561362))))

(assert (=> b!4128075 (= res!1687303 (= (++!11570 (list!16379 (charsOf!4924 (_1!24691 (get!14573 lt!1472585)))) (_2!24691 (get!14573 lt!1472585))) input!3238))))

(declare-fun b!4128076 () Bool)

(declare-fun e!2561361 () Bool)

(assert (=> b!4128076 (= e!2561361 e!2561362)))

(declare-fun res!1687299 () Bool)

(assert (=> b!4128076 (=> (not res!1687299) (not e!2561362))))

(declare-fun isDefined!7243 (Option!9614) Bool)

(assert (=> b!4128076 (= res!1687299 (isDefined!7243 lt!1472585))))

(declare-fun b!4128078 () Bool)

(assert (=> b!4128078 (= e!2561360 call!290271)))

(declare-fun b!4128079 () Bool)

(declare-fun res!1687302 () Bool)

(assert (=> b!4128079 (=> (not res!1687302) (not e!2561362))))

(assert (=> b!4128079 (= res!1687302 (= (list!16379 (charsOf!4924 (_1!24691 (get!14573 lt!1472585)))) (originalCharacters!7802 (_1!24691 (get!14573 lt!1472585)))))))

(declare-fun b!4128080 () Bool)

(declare-fun res!1687305 () Bool)

(assert (=> b!4128080 (=> (not res!1687305) (not e!2561362))))

(assert (=> b!4128080 (= res!1687305 (< (size!33074 (_2!24691 (get!14573 lt!1472585))) (size!33074 input!3238)))))

(declare-fun d!1223366 () Bool)

(assert (=> d!1223366 e!2561361))

(declare-fun res!1687301 () Bool)

(assert (=> d!1223366 (=> res!1687301 e!2561361)))

(assert (=> d!1223366 (= res!1687301 (isEmpty!26590 lt!1472585))))

(assert (=> d!1223366 (= lt!1472585 e!2561360)))

(declare-fun c!708505 () Bool)

(assert (=> d!1223366 (= c!708505 (and ((_ is Cons!44663) rules!3756) ((_ is Nil!44663) (t!341332 rules!3756))))))

(declare-fun lt!1472589 () Unit!64001)

(declare-fun lt!1472586 () Unit!64001)

(assert (=> d!1223366 (= lt!1472589 lt!1472586)))

(assert (=> d!1223366 (isPrefix!4241 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2749 (List!44786 List!44786) Unit!64001)

(assert (=> d!1223366 (= lt!1472586 (lemmaIsPrefixRefl!2749 input!3238 input!3238))))

(assert (=> d!1223366 (rulesValidInductive!2700 thiss!25645 rules!3756)))

(assert (=> d!1223366 (= (maxPrefix!4087 thiss!25645 rules!3756 input!3238) lt!1472585)))

(declare-fun b!4128077 () Bool)

(declare-fun res!1687300 () Bool)

(assert (=> b!4128077 (=> (not res!1687300) (not e!2561362))))

(assert (=> b!4128077 (= res!1687300 (matchR!6042 (regex!7306 (rule!10394 (_1!24691 (get!14573 lt!1472585)))) (list!16379 (charsOf!4924 (_1!24691 (get!14573 lt!1472585))))))))

(assert (= (and d!1223366 c!708505) b!4128078))

(assert (= (and d!1223366 (not c!708505)) b!4128073))

(assert (= (or b!4128078 b!4128073) bm!290266))

(assert (= (and d!1223366 (not res!1687301)) b!4128076))

(assert (= (and b!4128076 res!1687299) b!4128079))

(assert (= (and b!4128079 res!1687302) b!4128080))

(assert (= (and b!4128080 res!1687305) b!4128075))

(assert (= (and b!4128075 res!1687303) b!4128074))

(assert (= (and b!4128074 res!1687304) b!4128077))

(assert (= (and b!4128077 res!1687300) b!4128072))

(declare-fun m!4726427 () Bool)

(assert (=> b!4128080 m!4726427))

(declare-fun m!4726429 () Bool)

(assert (=> b!4128080 m!4726429))

(assert (=> b!4128080 m!4726299))

(declare-fun m!4726431 () Bool)

(assert (=> d!1223366 m!4726431))

(declare-fun m!4726433 () Bool)

(assert (=> d!1223366 m!4726433))

(declare-fun m!4726435 () Bool)

(assert (=> d!1223366 m!4726435))

(declare-fun m!4726437 () Bool)

(assert (=> d!1223366 m!4726437))

(declare-fun m!4726439 () Bool)

(assert (=> b!4128073 m!4726439))

(assert (=> b!4128079 m!4726427))

(declare-fun m!4726441 () Bool)

(assert (=> b!4128079 m!4726441))

(assert (=> b!4128079 m!4726441))

(declare-fun m!4726443 () Bool)

(assert (=> b!4128079 m!4726443))

(assert (=> b!4128074 m!4726427))

(declare-fun m!4726445 () Bool)

(assert (=> b!4128074 m!4726445))

(assert (=> b!4128074 m!4726445))

(declare-fun m!4726447 () Bool)

(assert (=> b!4128074 m!4726447))

(assert (=> b!4128072 m!4726427))

(declare-fun m!4726449 () Bool)

(assert (=> b!4128072 m!4726449))

(assert (=> bm!290266 m!4726119))

(declare-fun m!4726451 () Bool)

(assert (=> b!4128076 m!4726451))

(assert (=> b!4128077 m!4726427))

(assert (=> b!4128077 m!4726441))

(assert (=> b!4128077 m!4726441))

(assert (=> b!4128077 m!4726443))

(assert (=> b!4128077 m!4726443))

(declare-fun m!4726453 () Bool)

(assert (=> b!4128077 m!4726453))

(assert (=> b!4128075 m!4726427))

(assert (=> b!4128075 m!4726441))

(assert (=> b!4128075 m!4726441))

(assert (=> b!4128075 m!4726443))

(assert (=> b!4128075 m!4726443))

(declare-fun m!4726455 () Bool)

(assert (=> b!4128075 m!4726455))

(assert (=> b!4127712 d!1223366))

(declare-fun d!1223368 () Bool)

(declare-fun fromListB!2482 (List!44786) BalanceConc!26628)

(assert (=> d!1223368 (= (seqFromList!5423 p!2912) (fromListB!2482 p!2912))))

(declare-fun bs!594957 () Bool)

(assert (= bs!594957 d!1223368))

(declare-fun m!4726457 () Bool)

(assert (=> bs!594957 m!4726457))

(assert (=> b!4127712 d!1223368))

(declare-fun d!1223370 () Bool)

(assert (=> d!1223370 (= (apply!10379 (transformation!7306 r!4008) lt!1472472) (dynLambda!19123 (toValue!9966 (transformation!7306 r!4008)) lt!1472472))))

(declare-fun b_lambda!121211 () Bool)

(assert (=> (not b_lambda!121211) (not d!1223370)))

(assert (=> d!1223370 t!341356))

(declare-fun b_and!319755 () Bool)

(assert (= b_and!319749 (and (=> t!341356 result!301094) b_and!319755)))

(assert (=> d!1223370 t!341358))

(declare-fun b_and!319757 () Bool)

(assert (= b_and!319751 (and (=> t!341358 result!301098) b_and!319757)))

(assert (=> d!1223370 t!341360))

(declare-fun b_and!319759 () Bool)

(assert (= b_and!319753 (and (=> t!341360 result!301100) b_and!319759)))

(assert (=> d!1223370 m!4726413))

(assert (=> b!4127712 d!1223370))

(declare-fun d!1223372 () Bool)

(declare-fun lt!1472592 () Int)

(assert (=> d!1223372 (>= lt!1472592 0)))

(declare-fun e!2561365 () Int)

(assert (=> d!1223372 (= lt!1472592 e!2561365)))

(declare-fun c!708508 () Bool)

(assert (=> d!1223372 (= c!708508 ((_ is Nil!44662) p!2912))))

(assert (=> d!1223372 (= (size!33074 p!2912) lt!1472592)))

(declare-fun b!4128085 () Bool)

(assert (=> b!4128085 (= e!2561365 0)))

(declare-fun b!4128086 () Bool)

(assert (=> b!4128086 (= e!2561365 (+ 1 (size!33074 (t!341331 p!2912))))))

(assert (= (and d!1223372 c!708508) b!4128085))

(assert (= (and d!1223372 (not c!708508)) b!4128086))

(declare-fun m!4726459 () Bool)

(assert (=> b!4128086 m!4726459))

(assert (=> b!4127712 d!1223372))

(declare-fun b!4128115 () Bool)

(declare-fun res!1687326 () Bool)

(declare-fun e!2561381 () Bool)

(assert (=> b!4128115 (=> res!1687326 e!2561381)))

(declare-fun e!2561386 () Bool)

(assert (=> b!4128115 (= res!1687326 e!2561386)))

(declare-fun res!1687323 () Bool)

(assert (=> b!4128115 (=> (not res!1687323) (not e!2561386))))

(declare-fun lt!1472595 () Bool)

(assert (=> b!4128115 (= res!1687323 lt!1472595)))

(declare-fun b!4128116 () Bool)

(declare-fun res!1687324 () Bool)

(declare-fun e!2561384 () Bool)

(assert (=> b!4128116 (=> res!1687324 e!2561384)))

(assert (=> b!4128116 (= res!1687324 (not (isEmpty!26588 (tail!6469 p!2912))))))

(declare-fun b!4128117 () Bool)

(declare-fun e!2561380 () Bool)

(declare-fun call!290274 () Bool)

(assert (=> b!4128117 (= e!2561380 (= lt!1472595 call!290274))))

(declare-fun b!4128118 () Bool)

(declare-fun e!2561383 () Bool)

(declare-fun derivativeStep!3683 (Regex!12211 C!24608) Regex!12211)

(assert (=> b!4128118 (= e!2561383 (matchR!6042 (derivativeStep!3683 (regex!7306 r!4008) (head!8696 p!2912)) (tail!6469 p!2912)))))

(declare-fun b!4128119 () Bool)

(declare-fun e!2561385 () Bool)

(assert (=> b!4128119 (= e!2561381 e!2561385)))

(declare-fun res!1687322 () Bool)

(assert (=> b!4128119 (=> (not res!1687322) (not e!2561385))))

(assert (=> b!4128119 (= res!1687322 (not lt!1472595))))

(declare-fun b!4128121 () Bool)

(declare-fun res!1687328 () Bool)

(assert (=> b!4128121 (=> (not res!1687328) (not e!2561386))))

(assert (=> b!4128121 (= res!1687328 (isEmpty!26588 (tail!6469 p!2912)))))

(declare-fun b!4128122 () Bool)

(assert (=> b!4128122 (= e!2561383 (nullable!4288 (regex!7306 r!4008)))))

(declare-fun b!4128123 () Bool)

(declare-fun e!2561382 () Bool)

(assert (=> b!4128123 (= e!2561380 e!2561382)))

(declare-fun c!708515 () Bool)

(assert (=> b!4128123 (= c!708515 ((_ is EmptyLang!12211) (regex!7306 r!4008)))))

(declare-fun bm!290269 () Bool)

(assert (=> bm!290269 (= call!290274 (isEmpty!26588 p!2912))))

(declare-fun b!4128124 () Bool)

(assert (=> b!4128124 (= e!2561382 (not lt!1472595))))

(declare-fun b!4128125 () Bool)

(assert (=> b!4128125 (= e!2561385 e!2561384)))

(declare-fun res!1687327 () Bool)

(assert (=> b!4128125 (=> res!1687327 e!2561384)))

(assert (=> b!4128125 (= res!1687327 call!290274)))

(declare-fun b!4128126 () Bool)

(declare-fun res!1687325 () Bool)

(assert (=> b!4128126 (=> res!1687325 e!2561381)))

(assert (=> b!4128126 (= res!1687325 (not ((_ is ElementMatch!12211) (regex!7306 r!4008))))))

(assert (=> b!4128126 (= e!2561382 e!2561381)))

(declare-fun d!1223374 () Bool)

(assert (=> d!1223374 e!2561380))

(declare-fun c!708516 () Bool)

(assert (=> d!1223374 (= c!708516 ((_ is EmptyExpr!12211) (regex!7306 r!4008)))))

(assert (=> d!1223374 (= lt!1472595 e!2561383)))

(declare-fun c!708517 () Bool)

(assert (=> d!1223374 (= c!708517 (isEmpty!26588 p!2912))))

(assert (=> d!1223374 (validRegex!5494 (regex!7306 r!4008))))

(assert (=> d!1223374 (= (matchR!6042 (regex!7306 r!4008) p!2912) lt!1472595)))

(declare-fun b!4128120 () Bool)

(declare-fun res!1687329 () Bool)

(assert (=> b!4128120 (=> (not res!1687329) (not e!2561386))))

(assert (=> b!4128120 (= res!1687329 (not call!290274))))

(declare-fun b!4128127 () Bool)

(assert (=> b!4128127 (= e!2561384 (not (= (head!8696 p!2912) (c!708457 (regex!7306 r!4008)))))))

(declare-fun b!4128128 () Bool)

(assert (=> b!4128128 (= e!2561386 (= (head!8696 p!2912) (c!708457 (regex!7306 r!4008))))))

(assert (= (and d!1223374 c!708517) b!4128122))

(assert (= (and d!1223374 (not c!708517)) b!4128118))

(assert (= (and d!1223374 c!708516) b!4128117))

(assert (= (and d!1223374 (not c!708516)) b!4128123))

(assert (= (and b!4128123 c!708515) b!4128124))

(assert (= (and b!4128123 (not c!708515)) b!4128126))

(assert (= (and b!4128126 (not res!1687325)) b!4128115))

(assert (= (and b!4128115 res!1687323) b!4128120))

(assert (= (and b!4128120 res!1687329) b!4128121))

(assert (= (and b!4128121 res!1687328) b!4128128))

(assert (= (and b!4128115 (not res!1687326)) b!4128119))

(assert (= (and b!4128119 res!1687322) b!4128125))

(assert (= (and b!4128125 (not res!1687327)) b!4128116))

(assert (= (and b!4128116 (not res!1687324)) b!4128127))

(assert (= (or b!4128117 b!4128120 b!4128125) bm!290269))

(assert (=> d!1223374 m!4726103))

(assert (=> d!1223374 m!4726161))

(assert (=> bm!290269 m!4726103))

(assert (=> b!4128121 m!4726389))

(assert (=> b!4128121 m!4726389))

(declare-fun m!4726461 () Bool)

(assert (=> b!4128121 m!4726461))

(assert (=> b!4128122 m!4726163))

(assert (=> b!4128118 m!4726385))

(assert (=> b!4128118 m!4726385))

(declare-fun m!4726463 () Bool)

(assert (=> b!4128118 m!4726463))

(assert (=> b!4128118 m!4726389))

(assert (=> b!4128118 m!4726463))

(assert (=> b!4128118 m!4726389))

(declare-fun m!4726465 () Bool)

(assert (=> b!4128118 m!4726465))

(assert (=> b!4128128 m!4726385))

(assert (=> b!4128116 m!4726389))

(assert (=> b!4128116 m!4726389))

(assert (=> b!4128116 m!4726461))

(assert (=> b!4128127 m!4726385))

(assert (=> b!4127722 d!1223374))

(declare-fun d!1223376 () Bool)

(assert (=> d!1223376 (= (inv!59254 (tag!8166 (h!50083 rules!3756))) (= (mod (str.len (value!228774 (tag!8166 (h!50083 rules!3756)))) 2) 0))))

(assert (=> b!4127711 d!1223376))

(declare-fun d!1223378 () Bool)

(declare-fun res!1687332 () Bool)

(declare-fun e!2561389 () Bool)

(assert (=> d!1223378 (=> (not res!1687332) (not e!2561389))))

(declare-fun semiInverseModEq!3149 (Int Int) Bool)

(assert (=> d!1223378 (= res!1687332 (semiInverseModEq!3149 (toChars!9825 (transformation!7306 (h!50083 rules!3756))) (toValue!9966 (transformation!7306 (h!50083 rules!3756)))))))

(assert (=> d!1223378 (= (inv!59256 (transformation!7306 (h!50083 rules!3756))) e!2561389)))

(declare-fun b!4128131 () Bool)

(declare-fun equivClasses!3048 (Int Int) Bool)

(assert (=> b!4128131 (= e!2561389 (equivClasses!3048 (toChars!9825 (transformation!7306 (h!50083 rules!3756))) (toValue!9966 (transformation!7306 (h!50083 rules!3756)))))))

(assert (= (and d!1223378 res!1687332) b!4128131))

(declare-fun m!4726467 () Bool)

(assert (=> d!1223378 m!4726467))

(declare-fun m!4726469 () Bool)

(assert (=> b!4128131 m!4726469))

(assert (=> b!4127711 d!1223378))

(declare-fun d!1223380 () Bool)

(declare-fun lt!1472596 () Bool)

(assert (=> d!1223380 (= lt!1472596 (select (content!6890 rules!3756) rBis!149))))

(declare-fun e!2561390 () Bool)

(assert (=> d!1223380 (= lt!1472596 e!2561390)))

(declare-fun res!1687334 () Bool)

(assert (=> d!1223380 (=> (not res!1687334) (not e!2561390))))

(assert (=> d!1223380 (= res!1687334 ((_ is Cons!44663) rules!3756))))

(assert (=> d!1223380 (= (contains!8982 rules!3756 rBis!149) lt!1472596)))

(declare-fun b!4128132 () Bool)

(declare-fun e!2561391 () Bool)

(assert (=> b!4128132 (= e!2561390 e!2561391)))

(declare-fun res!1687333 () Bool)

(assert (=> b!4128132 (=> res!1687333 e!2561391)))

(assert (=> b!4128132 (= res!1687333 (= (h!50083 rules!3756) rBis!149))))

(declare-fun b!4128133 () Bool)

(assert (=> b!4128133 (= e!2561391 (contains!8982 (t!341332 rules!3756) rBis!149))))

(assert (= (and d!1223380 res!1687334) b!4128132))

(assert (= (and b!4128132 (not res!1687333)) b!4128133))

(assert (=> d!1223380 m!4726395))

(declare-fun m!4726471 () Bool)

(assert (=> d!1223380 m!4726471))

(assert (=> b!4128133 m!4726081))

(assert (=> b!4127721 d!1223380))

(declare-fun d!1223382 () Bool)

(assert (=> d!1223382 (= (isEmpty!26587 rules!3756) ((_ is Nil!44663) rules!3756))))

(assert (=> b!4127710 d!1223382))

(declare-fun d!1223384 () Bool)

(assert (=> d!1223384 (= (inv!59254 (tag!8166 rBis!149)) (= (mod (str.len (value!228774 (tag!8166 rBis!149))) 2) 0))))

(assert (=> b!4127720 d!1223384))

(declare-fun d!1223386 () Bool)

(declare-fun res!1687335 () Bool)

(declare-fun e!2561392 () Bool)

(assert (=> d!1223386 (=> (not res!1687335) (not e!2561392))))

(assert (=> d!1223386 (= res!1687335 (semiInverseModEq!3149 (toChars!9825 (transformation!7306 rBis!149)) (toValue!9966 (transformation!7306 rBis!149))))))

(assert (=> d!1223386 (= (inv!59256 (transformation!7306 rBis!149)) e!2561392)))

(declare-fun b!4128134 () Bool)

(assert (=> b!4128134 (= e!2561392 (equivClasses!3048 (toChars!9825 (transformation!7306 rBis!149)) (toValue!9966 (transformation!7306 rBis!149))))))

(assert (= (and d!1223386 res!1687335) b!4128134))

(declare-fun m!4726473 () Bool)

(assert (=> d!1223386 m!4726473))

(declare-fun m!4726475 () Bool)

(assert (=> b!4128134 m!4726475))

(assert (=> b!4127720 d!1223386))

(declare-fun d!1223388 () Bool)

(assert (=> d!1223388 (= (inv!59254 (tag!8166 r!4008)) (= (mod (str.len (value!228774 (tag!8166 r!4008))) 2) 0))))

(assert (=> b!4127709 d!1223388))

(declare-fun d!1223390 () Bool)

(declare-fun res!1687336 () Bool)

(declare-fun e!2561393 () Bool)

(assert (=> d!1223390 (=> (not res!1687336) (not e!2561393))))

(assert (=> d!1223390 (= res!1687336 (semiInverseModEq!3149 (toChars!9825 (transformation!7306 r!4008)) (toValue!9966 (transformation!7306 r!4008))))))

(assert (=> d!1223390 (= (inv!59256 (transformation!7306 r!4008)) e!2561393)))

(declare-fun b!4128135 () Bool)

(assert (=> b!4128135 (= e!2561393 (equivClasses!3048 (toChars!9825 (transformation!7306 r!4008)) (toValue!9966 (transformation!7306 r!4008))))))

(assert (= (and d!1223390 res!1687336) b!4128135))

(declare-fun m!4726477 () Bool)

(assert (=> d!1223390 m!4726477))

(declare-fun m!4726479 () Bool)

(assert (=> b!4128135 m!4726479))

(assert (=> b!4127709 d!1223390))

(declare-fun b!4128140 () Bool)

(declare-fun e!2561396 () Bool)

(declare-fun tp!1257888 () Bool)

(assert (=> b!4128140 (= e!2561396 (and tp_is_empty!21345 tp!1257888))))

(assert (=> b!4127713 (= tp!1257830 e!2561396)))

(assert (= (and b!4127713 ((_ is Cons!44662) (t!341331 p!2912))) b!4128140))

(declare-fun b!4128154 () Bool)

(declare-fun e!2561399 () Bool)

(declare-fun tp!1257899 () Bool)

(declare-fun tp!1257902 () Bool)

(assert (=> b!4128154 (= e!2561399 (and tp!1257899 tp!1257902))))

(declare-fun b!4128152 () Bool)

(declare-fun tp!1257901 () Bool)

(declare-fun tp!1257903 () Bool)

(assert (=> b!4128152 (= e!2561399 (and tp!1257901 tp!1257903))))

(assert (=> b!4127711 (= tp!1257836 e!2561399)))

(declare-fun b!4128151 () Bool)

(assert (=> b!4128151 (= e!2561399 tp_is_empty!21345)))

(declare-fun b!4128153 () Bool)

(declare-fun tp!1257900 () Bool)

(assert (=> b!4128153 (= e!2561399 tp!1257900)))

(assert (= (and b!4127711 ((_ is ElementMatch!12211) (regex!7306 (h!50083 rules!3756)))) b!4128151))

(assert (= (and b!4127711 ((_ is Concat!19748) (regex!7306 (h!50083 rules!3756)))) b!4128152))

(assert (= (and b!4127711 ((_ is Star!12211) (regex!7306 (h!50083 rules!3756)))) b!4128153))

(assert (= (and b!4127711 ((_ is Union!12211) (regex!7306 (h!50083 rules!3756)))) b!4128154))

(declare-fun b!4128155 () Bool)

(declare-fun e!2561400 () Bool)

(declare-fun tp!1257904 () Bool)

(assert (=> b!4128155 (= e!2561400 (and tp_is_empty!21345 tp!1257904))))

(assert (=> b!4127716 (= tp!1257833 e!2561400)))

(assert (= (and b!4127716 ((_ is Cons!44662) (t!341331 input!3238))) b!4128155))

(declare-fun b!4128166 () Bool)

(declare-fun b_free!116939 () Bool)

(declare-fun b_next!117643 () Bool)

(assert (=> b!4128166 (= b_free!116939 (not b_next!117643))))

(declare-fun tb!247795 () Bool)

(declare-fun t!341363 () Bool)

(assert (=> (and b!4128166 (= (toValue!9966 (transformation!7306 (h!50083 (t!341332 rules!3756)))) (toValue!9966 (transformation!7306 r!4008))) t!341363) tb!247795))

(declare-fun result!301108 () Bool)

(assert (= result!301108 result!301094))

(assert (=> d!1223362 t!341363))

(assert (=> d!1223370 t!341363))

(declare-fun tp!1257916 () Bool)

(declare-fun b_and!319761 () Bool)

(assert (=> b!4128166 (= tp!1257916 (and (=> t!341363 result!301108) b_and!319761))))

(declare-fun b_free!116941 () Bool)

(declare-fun b_next!117645 () Bool)

(assert (=> b!4128166 (= b_free!116941 (not b_next!117645))))

(declare-fun tb!247797 () Bool)

(declare-fun t!341365 () Bool)

(assert (=> (and b!4128166 (= (toChars!9825 (transformation!7306 (h!50083 (t!341332 rules!3756)))) (toChars!9825 (transformation!7306 r!4008))) t!341365) tb!247797))

(declare-fun result!301110 () Bool)

(assert (= result!301110 result!301086))

(assert (=> d!1223362 t!341365))

(declare-fun b_and!319763 () Bool)

(declare-fun tp!1257913 () Bool)

(assert (=> b!4128166 (= tp!1257913 (and (=> t!341365 result!301110) b_and!319763))))

(declare-fun e!2561412 () Bool)

(assert (=> b!4128166 (= e!2561412 (and tp!1257916 tp!1257913))))

(declare-fun e!2561411 () Bool)

(declare-fun tp!1257914 () Bool)

(declare-fun b!4128165 () Bool)

(assert (=> b!4128165 (= e!2561411 (and tp!1257914 (inv!59254 (tag!8166 (h!50083 (t!341332 rules!3756)))) (inv!59256 (transformation!7306 (h!50083 (t!341332 rules!3756)))) e!2561412))))

(declare-fun b!4128164 () Bool)

(declare-fun e!2561409 () Bool)

(declare-fun tp!1257915 () Bool)

(assert (=> b!4128164 (= e!2561409 (and e!2561411 tp!1257915))))

(assert (=> b!4127715 (= tp!1257837 e!2561409)))

(assert (= b!4128165 b!4128166))

(assert (= b!4128164 b!4128165))

(assert (= (and b!4127715 ((_ is Cons!44663) (t!341332 rules!3756))) b!4128164))

(declare-fun m!4726481 () Bool)

(assert (=> b!4128165 m!4726481))

(declare-fun m!4726483 () Bool)

(assert (=> b!4128165 m!4726483))

(declare-fun b!4128170 () Bool)

(declare-fun e!2561413 () Bool)

(declare-fun tp!1257917 () Bool)

(declare-fun tp!1257920 () Bool)

(assert (=> b!4128170 (= e!2561413 (and tp!1257917 tp!1257920))))

(declare-fun b!4128168 () Bool)

(declare-fun tp!1257919 () Bool)

(declare-fun tp!1257921 () Bool)

(assert (=> b!4128168 (= e!2561413 (and tp!1257919 tp!1257921))))

(assert (=> b!4127720 (= tp!1257828 e!2561413)))

(declare-fun b!4128167 () Bool)

(assert (=> b!4128167 (= e!2561413 tp_is_empty!21345)))

(declare-fun b!4128169 () Bool)

(declare-fun tp!1257918 () Bool)

(assert (=> b!4128169 (= e!2561413 tp!1257918)))

(assert (= (and b!4127720 ((_ is ElementMatch!12211) (regex!7306 rBis!149))) b!4128167))

(assert (= (and b!4127720 ((_ is Concat!19748) (regex!7306 rBis!149))) b!4128168))

(assert (= (and b!4127720 ((_ is Star!12211) (regex!7306 rBis!149))) b!4128169))

(assert (= (and b!4127720 ((_ is Union!12211) (regex!7306 rBis!149))) b!4128170))

(declare-fun b!4128174 () Bool)

(declare-fun e!2561414 () Bool)

(declare-fun tp!1257922 () Bool)

(declare-fun tp!1257925 () Bool)

(assert (=> b!4128174 (= e!2561414 (and tp!1257922 tp!1257925))))

(declare-fun b!4128172 () Bool)

(declare-fun tp!1257924 () Bool)

(declare-fun tp!1257926 () Bool)

(assert (=> b!4128172 (= e!2561414 (and tp!1257924 tp!1257926))))

(assert (=> b!4127709 (= tp!1257831 e!2561414)))

(declare-fun b!4128171 () Bool)

(assert (=> b!4128171 (= e!2561414 tp_is_empty!21345)))

(declare-fun b!4128173 () Bool)

(declare-fun tp!1257923 () Bool)

(assert (=> b!4128173 (= e!2561414 tp!1257923)))

(assert (= (and b!4127709 ((_ is ElementMatch!12211) (regex!7306 r!4008))) b!4128171))

(assert (= (and b!4127709 ((_ is Concat!19748) (regex!7306 r!4008))) b!4128172))

(assert (= (and b!4127709 ((_ is Star!12211) (regex!7306 r!4008))) b!4128173))

(assert (= (and b!4127709 ((_ is Union!12211) (regex!7306 r!4008))) b!4128174))

(declare-fun b_lambda!121213 () Bool)

(assert (= b_lambda!121211 (or (and b!4127717 b_free!116923 (= (toValue!9966 (transformation!7306 rBis!149)) (toValue!9966 (transformation!7306 r!4008)))) (and b!4127726 b_free!116927 (= (toValue!9966 (transformation!7306 (h!50083 rules!3756))) (toValue!9966 (transformation!7306 r!4008)))) (and b!4127707 b_free!116931) (and b!4128166 b_free!116939 (= (toValue!9966 (transformation!7306 (h!50083 (t!341332 rules!3756)))) (toValue!9966 (transformation!7306 r!4008)))) b_lambda!121213)))

(declare-fun b_lambda!121215 () Bool)

(assert (= b_lambda!121209 (or (and b!4127717 b_free!116923 (= (toValue!9966 (transformation!7306 rBis!149)) (toValue!9966 (transformation!7306 r!4008)))) (and b!4127726 b_free!116927 (= (toValue!9966 (transformation!7306 (h!50083 rules!3756))) (toValue!9966 (transformation!7306 r!4008)))) (and b!4127707 b_free!116931) (and b!4128166 b_free!116939 (= (toValue!9966 (transformation!7306 (h!50083 (t!341332 rules!3756)))) (toValue!9966 (transformation!7306 r!4008)))) b_lambda!121215)))

(declare-fun b_lambda!121217 () Bool)

(assert (= b_lambda!121207 (or (and b!4127717 b_free!116925 (= (toChars!9825 (transformation!7306 rBis!149)) (toChars!9825 (transformation!7306 r!4008)))) (and b!4127726 b_free!116929 (= (toChars!9825 (transformation!7306 (h!50083 rules!3756))) (toChars!9825 (transformation!7306 r!4008)))) (and b!4127707 b_free!116933) (and b!4128166 b_free!116941 (= (toChars!9825 (transformation!7306 (h!50083 (t!341332 rules!3756)))) (toChars!9825 (transformation!7306 r!4008)))) b_lambda!121217)))

(check-sat (not b!4128168) (not b!4127940) (not b!4128045) b_and!319745 (not d!1223364) b_and!319743 (not b_next!117631) (not d!1223362) (not tb!247783) (not d!1223346) (not b_next!117637) (not d!1223352) (not b_next!117643) (not d!1223366) (not b!4128173) (not b!4128127) (not bm!290266) b_and!319763 (not b!4128086) (not b_next!117633) (not b!4128014) (not b!4128131) (not d!1223350) (not b!4128154) (not tb!247789) (not b!4127759) (not b!4128165) b_and!319759 (not d!1223348) (not d!1223380) (not b!4127944) (not b!4128074) (not d!1223276) (not b!4128155) (not b!4128134) (not b!4127938) (not d!1223320) (not b!4128174) (not b!4128128) (not b!4128075) (not b!4128133) (not b!4127937) (not b!4128001) (not d!1223390) (not b!4127964) (not b_lambda!121217) (not b!4127733) (not b!4127945) (not d!1223360) (not b!4128140) (not b!4128169) (not b!4128152) (not b!4127783) (not b!4128122) b_and!319761 (not b!4128170) (not b!4128116) (not d!1223292) (not b!4127763) (not b!4128052) (not b!4128153) b_and!319757 (not d!1223374) (not b!4128077) (not b!4128080) (not b!4128008) (not b_next!117645) (not b!4128118) (not b!4128079) b_and!319747 (not b!4128072) (not b_lambda!121213) (not b_lambda!121215) (not b!4128000) (not b!4127980) (not b!4128073) (not b!4127839) (not b!4127939) (not d!1223280) tp_is_empty!21345 (not b!4127941) (not b_next!117629) (not bm!290269) (not b!4127943) (not d!1223386) (not d!1223358) (not d!1223298) (not b_next!117627) (not b_next!117635) (not d!1223368) (not b!4128121) (not b!4128002) b_and!319755 (not b!4128135) (not d!1223286) (not b!4127838) (not b!4128172) (not b!4128076) (not b!4128164) (not d!1223378))
(check-sat (not b_next!117637) (not b_next!117643) b_and!319763 (not b_next!117633) b_and!319759 b_and!319761 b_and!319747 (not b_next!117629) b_and!319745 b_and!319755 b_and!319743 (not b_next!117631) b_and!319757 (not b_next!117645) (not b_next!117627) (not b_next!117635))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351758 () Bool)

(assert start!351758)

(declare-fun b!3746834 () Bool)

(declare-fun b_free!99825 () Bool)

(declare-fun b_next!100529 () Bool)

(assert (=> b!3746834 (= b_free!99825 (not b_next!100529))))

(declare-fun tp!1143068 () Bool)

(declare-fun b_and!278059 () Bool)

(assert (=> b!3746834 (= tp!1143068 b_and!278059)))

(declare-fun b_free!99827 () Bool)

(declare-fun b_next!100531 () Bool)

(assert (=> b!3746834 (= b_free!99827 (not b_next!100531))))

(declare-fun tp!1143065 () Bool)

(declare-fun b_and!278061 () Bool)

(assert (=> b!3746834 (= tp!1143065 b_and!278061)))

(declare-fun b!3746837 () Bool)

(declare-fun b_free!99829 () Bool)

(declare-fun b_next!100533 () Bool)

(assert (=> b!3746837 (= b_free!99829 (not b_next!100533))))

(declare-fun tp!1143067 () Bool)

(declare-fun b_and!278063 () Bool)

(assert (=> b!3746837 (= tp!1143067 b_and!278063)))

(declare-fun b_free!99831 () Bool)

(declare-fun b_next!100535 () Bool)

(assert (=> b!3746837 (= b_free!99831 (not b_next!100535))))

(declare-fun tp!1143070 () Bool)

(declare-fun b_and!278065 () Bool)

(assert (=> b!3746837 (= tp!1143070 b_and!278065)))

(declare-fun b!3746845 () Bool)

(declare-fun b_free!99833 () Bool)

(declare-fun b_next!100537 () Bool)

(assert (=> b!3746845 (= b_free!99833 (not b_next!100537))))

(declare-fun tp!1143066 () Bool)

(declare-fun b_and!278067 () Bool)

(assert (=> b!3746845 (= tp!1143066 b_and!278067)))

(declare-fun b_free!99835 () Bool)

(declare-fun b_next!100539 () Bool)

(assert (=> b!3746845 (= b_free!99835 (not b_next!100539))))

(declare-fun tp!1143073 () Bool)

(declare-fun b_and!278069 () Bool)

(assert (=> b!3746845 (= tp!1143073 b_and!278069)))

(declare-fun b!3746833 () Bool)

(declare-fun res!1518724 () Bool)

(declare-fun e!2316922 () Bool)

(assert (=> b!3746833 (=> (not res!1518724) (not e!2316922))))

(declare-datatypes ((List!39956 0))(
  ( (Nil!39832) (Cons!39832 (h!45252 (_ BitVec 16)) (t!302639 List!39956)) )
))
(declare-datatypes ((TokenValue!6308 0))(
  ( (FloatLiteralValue!12616 (text!44601 List!39956)) (TokenValueExt!6307 (__x!24833 Int)) (Broken!31540 (value!193777 List!39956)) (Object!6431) (End!6308) (Def!6308) (Underscore!6308) (Match!6308) (Else!6308) (Error!6308) (Case!6308) (If!6308) (Extends!6308) (Abstract!6308) (Class!6308) (Val!6308) (DelimiterValue!12616 (del!6368 List!39956)) (KeywordValue!6314 (value!193778 List!39956)) (CommentValue!12616 (value!193779 List!39956)) (WhitespaceValue!12616 (value!193780 List!39956)) (IndentationValue!6308 (value!193781 List!39956)) (String!45165) (Int32!6308) (Broken!31541 (value!193782 List!39956)) (Boolean!6309) (Unit!57659) (OperatorValue!6311 (op!6368 List!39956)) (IdentifierValue!12616 (value!193783 List!39956)) (IdentifierValue!12617 (value!193784 List!39956)) (WhitespaceValue!12617 (value!193785 List!39956)) (True!12616) (False!12616) (Broken!31542 (value!193786 List!39956)) (Broken!31543 (value!193787 List!39956)) (True!12617) (RightBrace!6308) (RightBracket!6308) (Colon!6308) (Null!6308) (Comma!6308) (LeftBracket!6308) (False!12617) (LeftBrace!6308) (ImaginaryLiteralValue!6308 (text!44602 List!39956)) (StringLiteralValue!18924 (value!193788 List!39956)) (EOFValue!6308 (value!193789 List!39956)) (IdentValue!6308 (value!193790 List!39956)) (DelimiterValue!12617 (value!193791 List!39956)) (DedentValue!6308 (value!193792 List!39956)) (NewLineValue!6308 (value!193793 List!39956)) (IntegerValue!18924 (value!193794 (_ BitVec 32)) (text!44603 List!39956)) (IntegerValue!18925 (value!193795 Int) (text!44604 List!39956)) (Times!6308) (Or!6308) (Equal!6308) (Minus!6308) (Broken!31544 (value!193796 List!39956)) (And!6308) (Div!6308) (LessEqual!6308) (Mod!6308) (Concat!17291) (Not!6308) (Plus!6308) (SpaceValue!6308 (value!193797 List!39956)) (IntegerValue!18926 (value!193798 Int) (text!44605 List!39956)) (StringLiteralValue!18925 (text!44606 List!39956)) (FloatLiteralValue!12617 (text!44607 List!39956)) (BytesLiteralValue!6308 (value!193799 List!39956)) (CommentValue!12617 (value!193800 List!39956)) (StringLiteralValue!18926 (value!193801 List!39956)) (ErrorTokenValue!6308 (msg!6369 List!39956)) )
))
(declare-datatypes ((C!22152 0))(
  ( (C!22153 (val!13124 Int)) )
))
(declare-datatypes ((List!39957 0))(
  ( (Nil!39833) (Cons!39833 (h!45253 C!22152) (t!302640 List!39957)) )
))
(declare-datatypes ((IArray!24355 0))(
  ( (IArray!24356 (innerList!12235 List!39957)) )
))
(declare-datatypes ((Conc!12175 0))(
  ( (Node!12175 (left!30853 Conc!12175) (right!31183 Conc!12175) (csize!24580 Int) (cheight!12386 Int)) (Leaf!18898 (xs!15377 IArray!24355) (csize!24581 Int)) (Empty!12175) )
))
(declare-datatypes ((BalanceConc!23964 0))(
  ( (BalanceConc!23965 (c!648874 Conc!12175)) )
))
(declare-datatypes ((TokenValueInjection!12044 0))(
  ( (TokenValueInjection!12045 (toValue!8426 Int) (toChars!8285 Int)) )
))
(declare-datatypes ((Regex!10983 0))(
  ( (ElementMatch!10983 (c!648875 C!22152)) (Concat!17292 (regOne!22478 Regex!10983) (regTwo!22478 Regex!10983)) (EmptyExpr!10983) (Star!10983 (reg!11312 Regex!10983)) (EmptyLang!10983) (Union!10983 (regOne!22479 Regex!10983) (regTwo!22479 Regex!10983)) )
))
(declare-datatypes ((String!45166 0))(
  ( (String!45167 (value!193802 String)) )
))
(declare-datatypes ((Rule!11956 0))(
  ( (Rule!11957 (regex!6078 Regex!10983) (tag!6938 String!45166) (isSeparator!6078 Bool) (transformation!6078 TokenValueInjection!12044)) )
))
(declare-fun rNSep!170 () Rule!11956)

(declare-fun rSep!170 () Rule!11956)

(assert (=> b!3746833 (= res!1518724 (and (not (isSeparator!6078 rNSep!170)) (isSeparator!6078 rSep!170)))))

(declare-fun res!1518729 () Bool)

(assert (=> start!351758 (=> (not res!1518729) (not e!2316922))))

(declare-datatypes ((LexerInterface!5667 0))(
  ( (LexerInterfaceExt!5664 (__x!24834 Int)) (Lexer!5665) )
))
(declare-fun thiss!27193 () LexerInterface!5667)

(get-info :version)

(assert (=> start!351758 (= res!1518729 ((_ is Lexer!5665) thiss!27193))))

(assert (=> start!351758 e!2316922))

(declare-fun e!2316925 () Bool)

(assert (=> start!351758 e!2316925))

(declare-fun e!2316924 () Bool)

(assert (=> start!351758 e!2316924))

(assert (=> start!351758 true))

(declare-fun tp_is_empty!18981 () Bool)

(assert (=> start!351758 tp_is_empty!18981))

(declare-fun e!2316932 () Bool)

(assert (=> start!351758 e!2316932))

(declare-fun e!2316926 () Bool)

(assert (=> b!3746834 (= e!2316926 (and tp!1143068 tp!1143065))))

(declare-fun b!3746835 () Bool)

(declare-fun res!1518726 () Bool)

(assert (=> b!3746835 (=> (not res!1518726) (not e!2316922))))

(declare-fun c!6920 () C!22152)

(declare-fun contains!8115 (List!39957 C!22152) Bool)

(declare-fun usedCharacters!1246 (Regex!10983) List!39957)

(assert (=> b!3746835 (= res!1518726 (contains!8115 (usedCharacters!1246 (regex!6078 rNSep!170)) c!6920))))

(declare-datatypes ((List!39958 0))(
  ( (Nil!39834) (Cons!39834 (h!45254 Rule!11956) (t!302641 List!39958)) )
))
(declare-fun rules!4213 () List!39958)

(declare-fun e!2316930 () Bool)

(declare-fun tp!1143071 () Bool)

(declare-fun b!3746836 () Bool)

(declare-fun inv!53352 (String!45166) Bool)

(declare-fun inv!53354 (TokenValueInjection!12044) Bool)

(assert (=> b!3746836 (= e!2316930 (and tp!1143071 (inv!53352 (tag!6938 (h!45254 rules!4213))) (inv!53354 (transformation!6078 (h!45254 rules!4213))) e!2316926))))

(declare-fun e!2316928 () Bool)

(assert (=> b!3746837 (= e!2316928 (and tp!1143067 tp!1143070))))

(declare-fun b!3746838 () Bool)

(declare-fun res!1518728 () Bool)

(assert (=> b!3746838 (=> (not res!1518728) (not e!2316922))))

(declare-fun contains!8116 (List!39958 Rule!11956) Bool)

(assert (=> b!3746838 (= res!1518728 (contains!8116 rules!4213 rSep!170))))

(declare-fun b!3746839 () Bool)

(declare-fun res!1518727 () Bool)

(assert (=> b!3746839 (=> (not res!1518727) (not e!2316922))))

(assert (=> b!3746839 (= res!1518727 (and (or (not ((_ is Cons!39834) rules!4213)) (not (= (h!45254 rules!4213) rSep!170))) ((_ is Cons!39834) rules!4213)))))

(declare-fun tp!1143072 () Bool)

(declare-fun e!2316923 () Bool)

(declare-fun b!3746840 () Bool)

(assert (=> b!3746840 (= e!2316925 (and tp!1143072 (inv!53352 (tag!6938 rNSep!170)) (inv!53354 (transformation!6078 rNSep!170)) e!2316923))))

(declare-fun b!3746841 () Bool)

(declare-fun res!1518723 () Bool)

(assert (=> b!3746841 (=> (not res!1518723) (not e!2316922))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!951 (Rule!11956 List!39958) Bool)

(assert (=> b!3746841 (= res!1518723 (ruleDisjointCharsFromAllFromOtherType!951 rNSep!170 rules!4213))))

(declare-fun tp!1143069 () Bool)

(declare-fun b!3746842 () Bool)

(assert (=> b!3746842 (= e!2316932 (and tp!1143069 (inv!53352 (tag!6938 rSep!170)) (inv!53354 (transformation!6078 rSep!170)) e!2316928))))

(declare-fun b!3746843 () Bool)

(declare-fun rulesInvariant!5064 (LexerInterface!5667 List!39958) Bool)

(assert (=> b!3746843 (= e!2316922 (not (rulesInvariant!5064 thiss!27193 rules!4213)))))

(declare-fun b!3746844 () Bool)

(declare-fun res!1518725 () Bool)

(assert (=> b!3746844 (=> (not res!1518725) (not e!2316922))))

(assert (=> b!3746844 (= res!1518725 (rulesInvariant!5064 thiss!27193 rules!4213))))

(assert (=> b!3746845 (= e!2316923 (and tp!1143066 tp!1143073))))

(declare-fun b!3746846 () Bool)

(declare-fun tp!1143074 () Bool)

(assert (=> b!3746846 (= e!2316924 (and e!2316930 tp!1143074))))

(assert (= (and start!351758 res!1518729) b!3746844))

(assert (= (and b!3746844 res!1518725) b!3746838))

(assert (= (and b!3746838 res!1518728) b!3746835))

(assert (= (and b!3746835 res!1518726) b!3746833))

(assert (= (and b!3746833 res!1518724) b!3746841))

(assert (= (and b!3746841 res!1518723) b!3746839))

(assert (= (and b!3746839 res!1518727) b!3746843))

(assert (= b!3746840 b!3746845))

(assert (= start!351758 b!3746840))

(assert (= b!3746836 b!3746834))

(assert (= b!3746846 b!3746836))

(assert (= (and start!351758 ((_ is Cons!39834) rules!4213)) b!3746846))

(assert (= b!3746842 b!3746837))

(assert (= start!351758 b!3746842))

(declare-fun m!4239215 () Bool)

(assert (=> b!3746844 m!4239215))

(declare-fun m!4239217 () Bool)

(assert (=> b!3746836 m!4239217))

(declare-fun m!4239219 () Bool)

(assert (=> b!3746836 m!4239219))

(declare-fun m!4239221 () Bool)

(assert (=> b!3746841 m!4239221))

(assert (=> b!3746843 m!4239215))

(declare-fun m!4239223 () Bool)

(assert (=> b!3746835 m!4239223))

(assert (=> b!3746835 m!4239223))

(declare-fun m!4239225 () Bool)

(assert (=> b!3746835 m!4239225))

(declare-fun m!4239227 () Bool)

(assert (=> b!3746842 m!4239227))

(declare-fun m!4239229 () Bool)

(assert (=> b!3746842 m!4239229))

(declare-fun m!4239231 () Bool)

(assert (=> b!3746838 m!4239231))

(declare-fun m!4239233 () Bool)

(assert (=> b!3746840 m!4239233))

(declare-fun m!4239235 () Bool)

(assert (=> b!3746840 m!4239235))

(check-sat b_and!278065 b_and!278069 tp_is_empty!18981 (not b!3746841) (not b_next!100539) (not b!3746844) (not b!3746836) (not b!3746835) (not b!3746843) (not b_next!100531) (not b_next!100537) b_and!278063 (not b_next!100535) (not b!3746838) (not b!3746842) (not b_next!100533) (not b_next!100529) (not b!3746840) (not b!3746846) b_and!278067 b_and!278059 b_and!278061)
(check-sat b_and!278065 b_and!278069 (not b_next!100539) (not b_next!100531) (not b_next!100537) b_and!278063 (not b_next!100535) (not b_next!100533) (not b_next!100529) b_and!278067 b_and!278059 b_and!278061)

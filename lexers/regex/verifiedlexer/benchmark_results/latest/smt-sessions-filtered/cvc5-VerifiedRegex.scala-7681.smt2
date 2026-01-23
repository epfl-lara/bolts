; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404380 () Bool)

(assert start!404380)

(declare-fun b!4228848 () Bool)

(declare-fun b_free!124883 () Bool)

(declare-fun b_next!125587 () Bool)

(assert (=> b!4228848 (= b_free!124883 (not b_next!125587))))

(declare-fun tp!1295437 () Bool)

(declare-fun b_and!334121 () Bool)

(assert (=> b!4228848 (= tp!1295437 b_and!334121)))

(declare-fun b_free!124885 () Bool)

(declare-fun b_next!125589 () Bool)

(assert (=> b!4228848 (= b_free!124885 (not b_next!125589))))

(declare-fun tp!1295428 () Bool)

(declare-fun b_and!334123 () Bool)

(assert (=> b!4228848 (= tp!1295428 b_and!334123)))

(declare-fun b!4228841 () Bool)

(declare-fun b_free!124887 () Bool)

(declare-fun b_next!125591 () Bool)

(assert (=> b!4228841 (= b_free!124887 (not b_next!125591))))

(declare-fun tp!1295429 () Bool)

(declare-fun b_and!334125 () Bool)

(assert (=> b!4228841 (= tp!1295429 b_and!334125)))

(declare-fun b_free!124889 () Bool)

(declare-fun b_next!125593 () Bool)

(assert (=> b!4228841 (= b_free!124889 (not b_next!125593))))

(declare-fun tp!1295435 () Bool)

(declare-fun b_and!334127 () Bool)

(assert (=> b!4228841 (= tp!1295435 b_and!334127)))

(declare-fun b!4228829 () Bool)

(declare-fun e!2625851 () Bool)

(declare-fun tp_is_empty!22491 () Bool)

(declare-fun tp!1295433 () Bool)

(assert (=> b!4228829 (= e!2625851 (and tp_is_empty!22491 tp!1295433))))

(declare-fun b!4228830 () Bool)

(declare-fun res!1738978 () Bool)

(declare-fun e!2625852 () Bool)

(assert (=> b!4228830 (=> (not res!1738978) (not e!2625852))))

(declare-datatypes ((C!25754 0))(
  ( (C!25755 (val!15039 Int)) )
))
(declare-datatypes ((List!46810 0))(
  ( (Nil!46686) (Cons!46686 (h!52106 C!25754) (t!349431 List!46810)) )
))
(declare-fun p!3014 () List!46810)

(declare-fun suffix!1590 () List!46810)

(declare-fun input!3586 () List!46810)

(declare-fun ++!11903 (List!46810 List!46810) List!46810)

(assert (=> b!4228830 (= res!1738978 (= (++!11903 p!3014 suffix!1590) input!3586))))

(declare-fun e!2625853 () Bool)

(declare-fun tp!1295432 () Bool)

(declare-fun b!4228831 () Bool)

(declare-fun e!2625863 () Bool)

(declare-datatypes ((List!46811 0))(
  ( (Nil!46687) (Cons!46687 (h!52107 (_ BitVec 16)) (t!349432 List!46811)) )
))
(declare-datatypes ((TokenValue!8103 0))(
  ( (FloatLiteralValue!16206 (text!57166 List!46811)) (TokenValueExt!8102 (__x!28429 Int)) (Broken!40515 (value!244854 List!46811)) (Object!8226) (End!8103) (Def!8103) (Underscore!8103) (Match!8103) (Else!8103) (Error!8103) (Case!8103) (If!8103) (Extends!8103) (Abstract!8103) (Class!8103) (Val!8103) (DelimiterValue!16206 (del!8163 List!46811)) (KeywordValue!8109 (value!244855 List!46811)) (CommentValue!16206 (value!244856 List!46811)) (WhitespaceValue!16206 (value!244857 List!46811)) (IndentationValue!8103 (value!244858 List!46811)) (String!54390) (Int32!8103) (Broken!40516 (value!244859 List!46811)) (Boolean!8104) (Unit!65789) (OperatorValue!8106 (op!8163 List!46811)) (IdentifierValue!16206 (value!244860 List!46811)) (IdentifierValue!16207 (value!244861 List!46811)) (WhitespaceValue!16207 (value!244862 List!46811)) (True!16206) (False!16206) (Broken!40517 (value!244863 List!46811)) (Broken!40518 (value!244864 List!46811)) (True!16207) (RightBrace!8103) (RightBracket!8103) (Colon!8103) (Null!8103) (Comma!8103) (LeftBracket!8103) (False!16207) (LeftBrace!8103) (ImaginaryLiteralValue!8103 (text!57167 List!46811)) (StringLiteralValue!24309 (value!244865 List!46811)) (EOFValue!8103 (value!244866 List!46811)) (IdentValue!8103 (value!244867 List!46811)) (DelimiterValue!16207 (value!244868 List!46811)) (DedentValue!8103 (value!244869 List!46811)) (NewLineValue!8103 (value!244870 List!46811)) (IntegerValue!24309 (value!244871 (_ BitVec 32)) (text!57168 List!46811)) (IntegerValue!24310 (value!244872 Int) (text!57169 List!46811)) (Times!8103) (Or!8103) (Equal!8103) (Minus!8103) (Broken!40519 (value!244873 List!46811)) (And!8103) (Div!8103) (LessEqual!8103) (Mod!8103) (Concat!20881) (Not!8103) (Plus!8103) (SpaceValue!8103 (value!244874 List!46811)) (IntegerValue!24311 (value!244875 Int) (text!57170 List!46811)) (StringLiteralValue!24310 (text!57171 List!46811)) (FloatLiteralValue!16207 (text!57172 List!46811)) (BytesLiteralValue!8103 (value!244876 List!46811)) (CommentValue!16207 (value!244877 List!46811)) (StringLiteralValue!24311 (value!244878 List!46811)) (ErrorTokenValue!8103 (msg!8164 List!46811)) )
))
(declare-datatypes ((IArray!28173 0))(
  ( (IArray!28174 (innerList!14144 List!46810)) )
))
(declare-datatypes ((Conc!14084 0))(
  ( (Node!14084 (left!34725 Conc!14084) (right!35055 Conc!14084) (csize!28398 Int) (cheight!14295 Int)) (Leaf!21766 (xs!17390 IArray!28173) (csize!28399 Int)) (Empty!14084) )
))
(declare-datatypes ((BalanceConc!27762 0))(
  ( (BalanceConc!27763 (c!718794 Conc!14084)) )
))
(declare-datatypes ((TokenValueInjection!15634 0))(
  ( (TokenValueInjection!15635 (toValue!10601 Int) (toChars!10460 Int)) )
))
(declare-datatypes ((String!54391 0))(
  ( (String!54392 (value!244879 String)) )
))
(declare-datatypes ((Regex!12778 0))(
  ( (ElementMatch!12778 (c!718795 C!25754)) (Concat!20882 (regOne!26068 Regex!12778) (regTwo!26068 Regex!12778)) (EmptyExpr!12778) (Star!12778 (reg!13107 Regex!12778)) (EmptyLang!12778) (Union!12778 (regOne!26069 Regex!12778) (regTwo!26069 Regex!12778)) )
))
(declare-datatypes ((Rule!15546 0))(
  ( (Rule!15547 (regex!7873 Regex!12778) (tag!8737 String!54391) (isSeparator!7873 Bool) (transformation!7873 TokenValueInjection!15634)) )
))
(declare-fun r!4334 () Rule!15546)

(declare-fun inv!61358 (String!54391) Bool)

(declare-fun inv!61361 (TokenValueInjection!15634) Bool)

(assert (=> b!4228831 (= e!2625863 (and tp!1295432 (inv!61358 (tag!8737 r!4334)) (inv!61361 (transformation!7873 r!4334)) e!2625853))))

(declare-fun b!4228832 () Bool)

(declare-fun res!1738982 () Bool)

(assert (=> b!4228832 (=> (not res!1738982) (not e!2625852))))

(declare-fun isPrefix!4688 (List!46810 List!46810) Bool)

(assert (=> b!4228832 (= res!1738982 (isPrefix!4688 p!3014 input!3586))))

(declare-fun b!4228833 () Bool)

(declare-fun res!1738979 () Bool)

(declare-fun e!2625854 () Bool)

(assert (=> b!4228833 (=> (not res!1738979) (not e!2625854))))

(declare-datatypes ((LexerInterface!7468 0))(
  ( (LexerInterfaceExt!7465 (__x!28430 Int)) (Lexer!7466) )
))
(declare-fun thiss!26785 () LexerInterface!7468)

(declare-fun ruleValid!3569 (LexerInterface!7468 Rule!15546) Bool)

(assert (=> b!4228833 (= res!1738979 (ruleValid!3569 thiss!26785 r!4334))))

(declare-fun b!4228834 () Bool)

(declare-fun e!2625862 () Bool)

(declare-fun tp!1295430 () Bool)

(assert (=> b!4228834 (= e!2625862 (and tp_is_empty!22491 tp!1295430))))

(declare-fun b!4228835 () Bool)

(declare-fun res!1738977 () Bool)

(assert (=> b!4228835 (=> (not res!1738977) (not e!2625854))))

(declare-datatypes ((Token!14380 0))(
  ( (Token!14381 (value!244880 TokenValue!8103) (rule!10987 Rule!15546) (size!34204 Int) (originalCharacters!8221 List!46810)) )
))
(declare-fun t!8425 () Token!14380)

(declare-fun list!16851 (BalanceConc!27762) List!46810)

(declare-fun charsOf!5248 (Token!14380) BalanceConc!27762)

(assert (=> b!4228835 (= res!1738977 (= (list!16851 (charsOf!5248 t!8425)) p!3014))))

(declare-fun b!4228836 () Bool)

(declare-fun res!1738976 () Bool)

(assert (=> b!4228836 (=> (not res!1738976) (not e!2625854))))

(declare-fun lt!1503431 () Int)

(declare-fun size!34205 (List!46810) Int)

(assert (=> b!4228836 (= res!1738976 (> lt!1503431 (size!34205 p!3014)))))

(declare-fun b!4228837 () Bool)

(declare-fun res!1738985 () Bool)

(assert (=> b!4228837 (=> (not res!1738985) (not e!2625854))))

(declare-fun validRegex!5796 (Regex!12778) Bool)

(assert (=> b!4228837 (= res!1738985 (validRegex!5796 (regex!7873 r!4334)))))

(declare-fun b!4228838 () Bool)

(declare-fun e!2625856 () Bool)

(declare-fun lt!1503433 () Int)

(assert (=> b!4228838 (= e!2625856 (>= lt!1503433 0))))

(declare-fun res!1738984 () Bool)

(assert (=> start!404380 (=> (not res!1738984) (not e!2625852))))

(assert (=> start!404380 (= res!1738984 (is-Lexer!7466 thiss!26785))))

(assert (=> start!404380 e!2625852))

(assert (=> start!404380 true))

(declare-fun e!2625861 () Bool)

(assert (=> start!404380 e!2625861))

(declare-fun e!2625860 () Bool)

(declare-fun inv!61362 (Token!14380) Bool)

(assert (=> start!404380 (and (inv!61362 t!8425) e!2625860)))

(assert (=> start!404380 e!2625863))

(assert (=> start!404380 e!2625851))

(assert (=> start!404380 e!2625862))

(declare-fun e!2625864 () Bool)

(assert (=> start!404380 e!2625864))

(declare-fun b!4228839 () Bool)

(declare-fun res!1738983 () Bool)

(assert (=> b!4228839 (=> (not res!1738983) (not e!2625854))))

(declare-fun matchR!6417 (Regex!12778 List!46810) Bool)

(assert (=> b!4228839 (= res!1738983 (matchR!6417 (regex!7873 r!4334) p!3014))))

(declare-fun b!4228840 () Bool)

(declare-fun res!1738975 () Bool)

(assert (=> b!4228840 (=> (not res!1738975) (not e!2625852))))

(declare-fun pBis!134 () List!46810)

(assert (=> b!4228840 (= res!1738975 (isPrefix!4688 pBis!134 input!3586))))

(assert (=> b!4228841 (= e!2625853 (and tp!1295429 tp!1295435))))

(declare-fun b!4228842 () Bool)

(declare-fun tp!1295431 () Bool)

(assert (=> b!4228842 (= e!2625864 (and tp_is_empty!22491 tp!1295431))))

(declare-fun b!4228843 () Bool)

(assert (=> b!4228843 (= e!2625852 e!2625854)))

(declare-fun res!1738980 () Bool)

(assert (=> b!4228843 (=> (not res!1738980) (not e!2625854))))

(assert (=> b!4228843 (= res!1738980 (<= lt!1503431 lt!1503433))))

(assert (=> b!4228843 (= lt!1503433 (size!34205 input!3586))))

(assert (=> b!4228843 (= lt!1503431 (size!34205 pBis!134))))

(declare-fun b!4228844 () Bool)

(assert (=> b!4228844 (= e!2625854 (not e!2625856))))

(declare-fun res!1738981 () Bool)

(assert (=> b!4228844 (=> res!1738981 e!2625856)))

(declare-datatypes ((tuple2!44284 0))(
  ( (tuple2!44285 (_1!25276 Token!14380) (_2!25276 List!46810)) )
))
(declare-datatypes ((Option!10021 0))(
  ( (None!10020) (Some!10020 (v!40948 tuple2!44284)) )
))
(declare-fun maxPrefixOneRule!3415 (LexerInterface!7468 Rule!15546 List!46810) Option!10021)

(assert (=> b!4228844 (= res!1738981 (not (= (maxPrefixOneRule!3415 thiss!26785 r!4334 input!3586) (Some!10020 (tuple2!44285 t!8425 suffix!1590)))))))

(assert (=> b!4228844 (isPrefix!4688 input!3586 input!3586)))

(declare-datatypes ((Unit!65790 0))(
  ( (Unit!65791) )
))
(declare-fun lt!1503432 () Unit!65790)

(declare-fun lemmaIsPrefixRefl!3099 (List!46810 List!46810) Unit!65790)

(assert (=> b!4228844 (= lt!1503432 (lemmaIsPrefixRefl!3099 input!3586 input!3586))))

(declare-fun e!2625859 () Bool)

(declare-fun b!4228845 () Bool)

(declare-fun e!2625855 () Bool)

(declare-fun tp!1295436 () Bool)

(assert (=> b!4228845 (= e!2625859 (and tp!1295436 (inv!61358 (tag!8737 (rule!10987 t!8425))) (inv!61361 (transformation!7873 (rule!10987 t!8425))) e!2625855))))

(declare-fun b!4228846 () Bool)

(declare-fun tp!1295434 () Bool)

(assert (=> b!4228846 (= e!2625861 (and tp_is_empty!22491 tp!1295434))))

(declare-fun b!4228847 () Bool)

(declare-fun tp!1295427 () Bool)

(declare-fun inv!21 (TokenValue!8103) Bool)

(assert (=> b!4228847 (= e!2625860 (and (inv!21 (value!244880 t!8425)) e!2625859 tp!1295427))))

(assert (=> b!4228848 (= e!2625855 (and tp!1295437 tp!1295428))))

(assert (= (and start!404380 res!1738984) b!4228830))

(assert (= (and b!4228830 res!1738978) b!4228832))

(assert (= (and b!4228832 res!1738982) b!4228840))

(assert (= (and b!4228840 res!1738975) b!4228843))

(assert (= (and b!4228843 res!1738980) b!4228836))

(assert (= (and b!4228836 res!1738976) b!4228833))

(assert (= (and b!4228833 res!1738979) b!4228837))

(assert (= (and b!4228837 res!1738985) b!4228839))

(assert (= (and b!4228839 res!1738983) b!4228835))

(assert (= (and b!4228835 res!1738977) b!4228844))

(assert (= (and b!4228844 (not res!1738981)) b!4228838))

(assert (= (and start!404380 (is-Cons!46686 p!3014)) b!4228846))

(assert (= b!4228845 b!4228848))

(assert (= b!4228847 b!4228845))

(assert (= start!404380 b!4228847))

(assert (= b!4228831 b!4228841))

(assert (= start!404380 b!4228831))

(assert (= (and start!404380 (is-Cons!46686 input!3586)) b!4228829))

(assert (= (and start!404380 (is-Cons!46686 pBis!134)) b!4228834))

(assert (= (and start!404380 (is-Cons!46686 suffix!1590)) b!4228842))

(declare-fun m!4815703 () Bool)

(assert (=> b!4228832 m!4815703))

(declare-fun m!4815705 () Bool)

(assert (=> b!4228835 m!4815705))

(assert (=> b!4228835 m!4815705))

(declare-fun m!4815707 () Bool)

(assert (=> b!4228835 m!4815707))

(declare-fun m!4815709 () Bool)

(assert (=> b!4228831 m!4815709))

(declare-fun m!4815711 () Bool)

(assert (=> b!4228831 m!4815711))

(declare-fun m!4815713 () Bool)

(assert (=> b!4228845 m!4815713))

(declare-fun m!4815715 () Bool)

(assert (=> b!4228845 m!4815715))

(declare-fun m!4815717 () Bool)

(assert (=> b!4228833 m!4815717))

(declare-fun m!4815719 () Bool)

(assert (=> b!4228847 m!4815719))

(declare-fun m!4815721 () Bool)

(assert (=> b!4228839 m!4815721))

(declare-fun m!4815723 () Bool)

(assert (=> start!404380 m!4815723))

(declare-fun m!4815725 () Bool)

(assert (=> b!4228836 m!4815725))

(declare-fun m!4815727 () Bool)

(assert (=> b!4228840 m!4815727))

(declare-fun m!4815729 () Bool)

(assert (=> b!4228844 m!4815729))

(declare-fun m!4815731 () Bool)

(assert (=> b!4228844 m!4815731))

(declare-fun m!4815733 () Bool)

(assert (=> b!4228844 m!4815733))

(declare-fun m!4815735 () Bool)

(assert (=> b!4228837 m!4815735))

(declare-fun m!4815737 () Bool)

(assert (=> b!4228843 m!4815737))

(declare-fun m!4815739 () Bool)

(assert (=> b!4228843 m!4815739))

(declare-fun m!4815741 () Bool)

(assert (=> b!4228830 m!4815741))

(push 1)

(assert b_and!334121)

(assert (not b_next!125587))

(assert (not b!4228833))

(assert (not b!4228839))

(assert (not b!4228842))

(assert (not b!4228846))

(assert (not b_next!125589))

(assert (not b!4228831))

(assert (not b!4228847))

(assert (not b_next!125591))

(assert (not b!4228832))

(assert (not b!4228829))

(assert (not b!4228844))

(assert (not b!4228836))

(assert (not b!4228834))

(assert b_and!334125)

(assert (not b!4228840))

(assert (not b!4228837))

(assert tp_is_empty!22491)

(assert b_and!334127)

(assert b_and!334123)

(assert (not start!404380))

(assert (not b!4228835))

(assert (not b!4228845))

(assert (not b!4228830))

(assert (not b_next!125593))

(assert (not b!4228843))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334121)

(assert (not b_next!125587))

(assert b_and!334125)

(assert (not b_next!125589))

(assert (not b_next!125593))

(assert (not b_next!125591))

(assert b_and!334127)

(assert b_and!334123)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4228918 () Bool)

(declare-fun e!2625916 () List!46810)

(assert (=> b!4228918 (= e!2625916 (Cons!46686 (h!52106 p!3014) (++!11903 (t!349431 p!3014) suffix!1590)))))

(declare-fun b!4228919 () Bool)

(declare-fun res!1739031 () Bool)

(declare-fun e!2625915 () Bool)

(assert (=> b!4228919 (=> (not res!1739031) (not e!2625915))))

(declare-fun lt!1503445 () List!46810)

(assert (=> b!4228919 (= res!1739031 (= (size!34205 lt!1503445) (+ (size!34205 p!3014) (size!34205 suffix!1590))))))

(declare-fun b!4228917 () Bool)

(assert (=> b!4228917 (= e!2625916 suffix!1590)))

(declare-fun d!1244600 () Bool)

(assert (=> d!1244600 e!2625915))

(declare-fun res!1739030 () Bool)

(assert (=> d!1244600 (=> (not res!1739030) (not e!2625915))))

(declare-fun content!7334 (List!46810) (Set C!25754))

(assert (=> d!1244600 (= res!1739030 (= (content!7334 lt!1503445) (set.union (content!7334 p!3014) (content!7334 suffix!1590))))))

(assert (=> d!1244600 (= lt!1503445 e!2625916)))

(declare-fun c!718800 () Bool)

(assert (=> d!1244600 (= c!718800 (is-Nil!46686 p!3014))))

(assert (=> d!1244600 (= (++!11903 p!3014 suffix!1590) lt!1503445)))

(declare-fun b!4228920 () Bool)

(assert (=> b!4228920 (= e!2625915 (or (not (= suffix!1590 Nil!46686)) (= lt!1503445 p!3014)))))

(assert (= (and d!1244600 c!718800) b!4228917))

(assert (= (and d!1244600 (not c!718800)) b!4228918))

(assert (= (and d!1244600 res!1739030) b!4228919))

(assert (= (and b!4228919 res!1739031) b!4228920))

(declare-fun m!4815783 () Bool)

(assert (=> b!4228918 m!4815783))

(declare-fun m!4815785 () Bool)

(assert (=> b!4228919 m!4815785))

(assert (=> b!4228919 m!4815725))

(declare-fun m!4815787 () Bool)

(assert (=> b!4228919 m!4815787))

(declare-fun m!4815789 () Bool)

(assert (=> d!1244600 m!4815789))

(declare-fun m!4815791 () Bool)

(assert (=> d!1244600 m!4815791))

(declare-fun m!4815793 () Bool)

(assert (=> d!1244600 m!4815793))

(assert (=> b!4228830 d!1244600))

(declare-fun b!4228929 () Bool)

(declare-fun e!2625924 () Bool)

(declare-fun e!2625923 () Bool)

(assert (=> b!4228929 (= e!2625924 e!2625923)))

(declare-fun res!1739041 () Bool)

(assert (=> b!4228929 (=> (not res!1739041) (not e!2625923))))

(assert (=> b!4228929 (= res!1739041 (not (is-Nil!46686 input!3586)))))

(declare-fun b!4228930 () Bool)

(declare-fun res!1739042 () Bool)

(assert (=> b!4228930 (=> (not res!1739042) (not e!2625923))))

(declare-fun head!8963 (List!46810) C!25754)

(assert (=> b!4228930 (= res!1739042 (= (head!8963 p!3014) (head!8963 input!3586)))))

(declare-fun d!1244602 () Bool)

(declare-fun e!2625925 () Bool)

(assert (=> d!1244602 e!2625925))

(declare-fun res!1739040 () Bool)

(assert (=> d!1244602 (=> res!1739040 e!2625925)))

(declare-fun lt!1503448 () Bool)

(assert (=> d!1244602 (= res!1739040 (not lt!1503448))))

(assert (=> d!1244602 (= lt!1503448 e!2625924)))

(declare-fun res!1739043 () Bool)

(assert (=> d!1244602 (=> res!1739043 e!2625924)))

(assert (=> d!1244602 (= res!1739043 (is-Nil!46686 p!3014))))

(assert (=> d!1244602 (= (isPrefix!4688 p!3014 input!3586) lt!1503448)))

(declare-fun b!4228932 () Bool)

(assert (=> b!4228932 (= e!2625925 (>= (size!34205 input!3586) (size!34205 p!3014)))))

(declare-fun b!4228931 () Bool)

(declare-fun tail!6810 (List!46810) List!46810)

(assert (=> b!4228931 (= e!2625923 (isPrefix!4688 (tail!6810 p!3014) (tail!6810 input!3586)))))

(assert (= (and d!1244602 (not res!1739043)) b!4228929))

(assert (= (and b!4228929 res!1739041) b!4228930))

(assert (= (and b!4228930 res!1739042) b!4228931))

(assert (= (and d!1244602 (not res!1739040)) b!4228932))

(declare-fun m!4815795 () Bool)

(assert (=> b!4228930 m!4815795))

(declare-fun m!4815797 () Bool)

(assert (=> b!4228930 m!4815797))

(assert (=> b!4228932 m!4815737))

(assert (=> b!4228932 m!4815725))

(declare-fun m!4815799 () Bool)

(assert (=> b!4228931 m!4815799))

(declare-fun m!4815801 () Bool)

(assert (=> b!4228931 m!4815801))

(assert (=> b!4228931 m!4815799))

(assert (=> b!4228931 m!4815801))

(declare-fun m!4815803 () Bool)

(assert (=> b!4228931 m!4815803))

(assert (=> b!4228832 d!1244602))

(declare-fun d!1244604 () Bool)

(assert (=> d!1244604 (= (inv!61358 (tag!8737 r!4334)) (= (mod (str.len (value!244879 (tag!8737 r!4334))) 2) 0))))

(assert (=> b!4228831 d!1244604))

(declare-fun d!1244606 () Bool)

(declare-fun res!1739046 () Bool)

(declare-fun e!2625928 () Bool)

(assert (=> d!1244606 (=> (not res!1739046) (not e!2625928))))

(declare-fun semiInverseModEq!3424 (Int Int) Bool)

(assert (=> d!1244606 (= res!1739046 (semiInverseModEq!3424 (toChars!10460 (transformation!7873 r!4334)) (toValue!10601 (transformation!7873 r!4334))))))

(assert (=> d!1244606 (= (inv!61361 (transformation!7873 r!4334)) e!2625928)))

(declare-fun b!4228935 () Bool)

(declare-fun equivClasses!3323 (Int Int) Bool)

(assert (=> b!4228935 (= e!2625928 (equivClasses!3323 (toChars!10460 (transformation!7873 r!4334)) (toValue!10601 (transformation!7873 r!4334))))))

(assert (= (and d!1244606 res!1739046) b!4228935))

(declare-fun m!4815805 () Bool)

(assert (=> d!1244606 m!4815805))

(declare-fun m!4815807 () Bool)

(assert (=> b!4228935 m!4815807))

(assert (=> b!4228831 d!1244606))

(declare-fun d!1244608 () Bool)

(declare-fun res!1739051 () Bool)

(declare-fun e!2625931 () Bool)

(assert (=> d!1244608 (=> (not res!1739051) (not e!2625931))))

(assert (=> d!1244608 (= res!1739051 (validRegex!5796 (regex!7873 r!4334)))))

(assert (=> d!1244608 (= (ruleValid!3569 thiss!26785 r!4334) e!2625931)))

(declare-fun b!4228940 () Bool)

(declare-fun res!1739052 () Bool)

(assert (=> b!4228940 (=> (not res!1739052) (not e!2625931))))

(declare-fun nullable!4499 (Regex!12778) Bool)

(assert (=> b!4228940 (= res!1739052 (not (nullable!4499 (regex!7873 r!4334))))))

(declare-fun b!4228941 () Bool)

(assert (=> b!4228941 (= e!2625931 (not (= (tag!8737 r!4334) (String!54392 ""))))))

(assert (= (and d!1244608 res!1739051) b!4228940))

(assert (= (and b!4228940 res!1739052) b!4228941))

(assert (=> d!1244608 m!4815735))

(declare-fun m!4815809 () Bool)

(assert (=> b!4228940 m!4815809))

(assert (=> b!4228833 d!1244608))

(declare-fun d!1244610 () Bool)

(declare-fun e!2625962 () Bool)

(assert (=> d!1244610 e!2625962))

(declare-fun res!1739102 () Bool)

(assert (=> d!1244610 (=> res!1739102 e!2625962)))

(declare-fun lt!1503480 () Option!10021)

(declare-fun isEmpty!27602 (Option!10021) Bool)

(assert (=> d!1244610 (= res!1739102 (isEmpty!27602 lt!1503480))))

(declare-fun e!2625963 () Option!10021)

(assert (=> d!1244610 (= lt!1503480 e!2625963)))

(declare-fun c!718808 () Bool)

(declare-datatypes ((tuple2!44288 0))(
  ( (tuple2!44289 (_1!25278 List!46810) (_2!25278 List!46810)) )
))
(declare-fun lt!1503481 () tuple2!44288)

(declare-fun isEmpty!27603 (List!46810) Bool)

(assert (=> d!1244610 (= c!718808 (isEmpty!27603 (_1!25278 lt!1503481)))))

(declare-fun findLongestMatch!1591 (Regex!12778 List!46810) tuple2!44288)

(assert (=> d!1244610 (= lt!1503481 (findLongestMatch!1591 (regex!7873 r!4334) input!3586))))

(assert (=> d!1244610 (ruleValid!3569 thiss!26785 r!4334)))

(assert (=> d!1244610 (= (maxPrefixOneRule!3415 thiss!26785 r!4334 input!3586) lt!1503480)))

(declare-fun b!4228999 () Bool)

(declare-fun res!1739103 () Bool)

(declare-fun e!2625961 () Bool)

(assert (=> b!4228999 (=> (not res!1739103) (not e!2625961))))

(declare-fun get!15181 (Option!10021) tuple2!44284)

(assert (=> b!4228999 (= res!1739103 (= (++!11903 (list!16851 (charsOf!5248 (_1!25276 (get!15181 lt!1503480)))) (_2!25276 (get!15181 lt!1503480))) input!3586))))

(declare-fun b!4229000 () Bool)

(declare-fun res!1739106 () Bool)

(assert (=> b!4229000 (=> (not res!1739106) (not e!2625961))))

(declare-fun apply!10728 (TokenValueInjection!15634 BalanceConc!27762) TokenValue!8103)

(declare-fun seqFromList!5788 (List!46810) BalanceConc!27762)

(assert (=> b!4229000 (= res!1739106 (= (value!244880 (_1!25276 (get!15181 lt!1503480))) (apply!10728 (transformation!7873 (rule!10987 (_1!25276 (get!15181 lt!1503480)))) (seqFromList!5788 (originalCharacters!8221 (_1!25276 (get!15181 lt!1503480)))))))))

(declare-fun b!4229001 () Bool)

(declare-fun res!1739105 () Bool)

(assert (=> b!4229001 (=> (not res!1739105) (not e!2625961))))

(assert (=> b!4229001 (= res!1739105 (< (size!34205 (_2!25276 (get!15181 lt!1503480))) (size!34205 input!3586)))))

(declare-fun b!4229002 () Bool)

(declare-fun e!2625964 () Bool)

(declare-fun findLongestMatchInner!1682 (Regex!12778 List!46810 Int List!46810 List!46810 Int) tuple2!44288)

(assert (=> b!4229002 (= e!2625964 (matchR!6417 (regex!7873 r!4334) (_1!25278 (findLongestMatchInner!1682 (regex!7873 r!4334) Nil!46686 (size!34205 Nil!46686) input!3586 input!3586 (size!34205 input!3586)))))))

(declare-fun b!4229003 () Bool)

(assert (=> b!4229003 (= e!2625963 None!10020)))

(declare-fun b!4229004 () Bool)

(assert (=> b!4229004 (= e!2625962 e!2625961)))

(declare-fun res!1739100 () Bool)

(assert (=> b!4229004 (=> (not res!1739100) (not e!2625961))))

(assert (=> b!4229004 (= res!1739100 (matchR!6417 (regex!7873 r!4334) (list!16851 (charsOf!5248 (_1!25276 (get!15181 lt!1503480))))))))

(declare-fun b!4229005 () Bool)

(declare-fun size!34208 (BalanceConc!27762) Int)

(assert (=> b!4229005 (= e!2625963 (Some!10020 (tuple2!44285 (Token!14381 (apply!10728 (transformation!7873 r!4334) (seqFromList!5788 (_1!25278 lt!1503481))) r!4334 (size!34208 (seqFromList!5788 (_1!25278 lt!1503481))) (_1!25278 lt!1503481)) (_2!25278 lt!1503481))))))

(declare-fun lt!1503483 () Unit!65790)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1651 (Regex!12778 List!46810) Unit!65790)

(assert (=> b!4229005 (= lt!1503483 (longestMatchIsAcceptedByMatchOrIsEmpty!1651 (regex!7873 r!4334) input!3586))))

(declare-fun res!1739101 () Bool)

(assert (=> b!4229005 (= res!1739101 (isEmpty!27603 (_1!25278 (findLongestMatchInner!1682 (regex!7873 r!4334) Nil!46686 (size!34205 Nil!46686) input!3586 input!3586 (size!34205 input!3586)))))))

(assert (=> b!4229005 (=> res!1739101 e!2625964)))

(assert (=> b!4229005 e!2625964))

(declare-fun lt!1503484 () Unit!65790)

(assert (=> b!4229005 (= lt!1503484 lt!1503483)))

(declare-fun lt!1503482 () Unit!65790)

(declare-fun lemmaSemiInverse!2519 (TokenValueInjection!15634 BalanceConc!27762) Unit!65790)

(assert (=> b!4229005 (= lt!1503482 (lemmaSemiInverse!2519 (transformation!7873 r!4334) (seqFromList!5788 (_1!25278 lt!1503481))))))

(declare-fun b!4229006 () Bool)

(assert (=> b!4229006 (= e!2625961 (= (size!34204 (_1!25276 (get!15181 lt!1503480))) (size!34205 (originalCharacters!8221 (_1!25276 (get!15181 lt!1503480))))))))

(declare-fun b!4229007 () Bool)

(declare-fun res!1739104 () Bool)

(assert (=> b!4229007 (=> (not res!1739104) (not e!2625961))))

(assert (=> b!4229007 (= res!1739104 (= (rule!10987 (_1!25276 (get!15181 lt!1503480))) r!4334))))

(assert (= (and d!1244610 c!718808) b!4229003))

(assert (= (and d!1244610 (not c!718808)) b!4229005))

(assert (= (and b!4229005 (not res!1739101)) b!4229002))

(assert (= (and d!1244610 (not res!1739102)) b!4229004))

(assert (= (and b!4229004 res!1739100) b!4228999))

(assert (= (and b!4228999 res!1739103) b!4229001))

(assert (= (and b!4229001 res!1739105) b!4229007))

(assert (= (and b!4229007 res!1739104) b!4229000))

(assert (= (and b!4229000 res!1739106) b!4229006))

(assert (=> b!4229005 m!4815737))

(declare-fun m!4815861 () Bool)

(assert (=> b!4229005 m!4815861))

(declare-fun m!4815863 () Bool)

(assert (=> b!4229005 m!4815863))

(assert (=> b!4229005 m!4815863))

(assert (=> b!4229005 m!4815737))

(declare-fun m!4815865 () Bool)

(assert (=> b!4229005 m!4815865))

(declare-fun m!4815867 () Bool)

(assert (=> b!4229005 m!4815867))

(assert (=> b!4229005 m!4815867))

(declare-fun m!4815869 () Bool)

(assert (=> b!4229005 m!4815869))

(assert (=> b!4229005 m!4815867))

(declare-fun m!4815871 () Bool)

(assert (=> b!4229005 m!4815871))

(assert (=> b!4229005 m!4815867))

(declare-fun m!4815873 () Bool)

(assert (=> b!4229005 m!4815873))

(declare-fun m!4815875 () Bool)

(assert (=> b!4229005 m!4815875))

(declare-fun m!4815877 () Bool)

(assert (=> b!4229007 m!4815877))

(assert (=> b!4229004 m!4815877))

(declare-fun m!4815879 () Bool)

(assert (=> b!4229004 m!4815879))

(assert (=> b!4229004 m!4815879))

(declare-fun m!4815881 () Bool)

(assert (=> b!4229004 m!4815881))

(assert (=> b!4229004 m!4815881))

(declare-fun m!4815883 () Bool)

(assert (=> b!4229004 m!4815883))

(assert (=> b!4228999 m!4815877))

(assert (=> b!4228999 m!4815879))

(assert (=> b!4228999 m!4815879))

(assert (=> b!4228999 m!4815881))

(assert (=> b!4228999 m!4815881))

(declare-fun m!4815885 () Bool)

(assert (=> b!4228999 m!4815885))

(declare-fun m!4815887 () Bool)

(assert (=> d!1244610 m!4815887))

(declare-fun m!4815889 () Bool)

(assert (=> d!1244610 m!4815889))

(declare-fun m!4815891 () Bool)

(assert (=> d!1244610 m!4815891))

(assert (=> d!1244610 m!4815717))

(assert (=> b!4229000 m!4815877))

(declare-fun m!4815893 () Bool)

(assert (=> b!4229000 m!4815893))

(assert (=> b!4229000 m!4815893))

(declare-fun m!4815895 () Bool)

(assert (=> b!4229000 m!4815895))

(assert (=> b!4229002 m!4815863))

(assert (=> b!4229002 m!4815737))

(assert (=> b!4229002 m!4815863))

(assert (=> b!4229002 m!4815737))

(assert (=> b!4229002 m!4815865))

(declare-fun m!4815897 () Bool)

(assert (=> b!4229002 m!4815897))

(assert (=> b!4229001 m!4815877))

(declare-fun m!4815899 () Bool)

(assert (=> b!4229001 m!4815899))

(assert (=> b!4229001 m!4815737))

(assert (=> b!4229006 m!4815877))

(declare-fun m!4815901 () Bool)

(assert (=> b!4229006 m!4815901))

(assert (=> b!4228844 d!1244610))

(declare-fun b!4229026 () Bool)

(declare-fun e!2625980 () Bool)

(declare-fun e!2625979 () Bool)

(assert (=> b!4229026 (= e!2625980 e!2625979)))

(declare-fun res!1739118 () Bool)

(assert (=> b!4229026 (=> (not res!1739118) (not e!2625979))))

(assert (=> b!4229026 (= res!1739118 (not (is-Nil!46686 input!3586)))))

(declare-fun b!4229027 () Bool)

(declare-fun res!1739119 () Bool)

(assert (=> b!4229027 (=> (not res!1739119) (not e!2625979))))

(assert (=> b!4229027 (= res!1739119 (= (head!8963 input!3586) (head!8963 input!3586)))))

(declare-fun d!1244618 () Bool)

(declare-fun e!2625981 () Bool)

(assert (=> d!1244618 e!2625981))

(declare-fun res!1739117 () Bool)

(assert (=> d!1244618 (=> res!1739117 e!2625981)))

(declare-fun lt!1503485 () Bool)

(assert (=> d!1244618 (= res!1739117 (not lt!1503485))))

(assert (=> d!1244618 (= lt!1503485 e!2625980)))

(declare-fun res!1739120 () Bool)

(assert (=> d!1244618 (=> res!1739120 e!2625980)))

(assert (=> d!1244618 (= res!1739120 (is-Nil!46686 input!3586))))

(assert (=> d!1244618 (= (isPrefix!4688 input!3586 input!3586) lt!1503485)))

(declare-fun b!4229029 () Bool)

(assert (=> b!4229029 (= e!2625981 (>= (size!34205 input!3586) (size!34205 input!3586)))))

(declare-fun b!4229028 () Bool)

(assert (=> b!4229028 (= e!2625979 (isPrefix!4688 (tail!6810 input!3586) (tail!6810 input!3586)))))

(assert (= (and d!1244618 (not res!1739120)) b!4229026))

(assert (= (and b!4229026 res!1739118) b!4229027))

(assert (= (and b!4229027 res!1739119) b!4229028))

(assert (= (and d!1244618 (not res!1739117)) b!4229029))

(assert (=> b!4229027 m!4815797))

(assert (=> b!4229027 m!4815797))

(assert (=> b!4229029 m!4815737))

(assert (=> b!4229029 m!4815737))

(assert (=> b!4229028 m!4815801))

(assert (=> b!4229028 m!4815801))

(assert (=> b!4229028 m!4815801))

(assert (=> b!4229028 m!4815801))

(declare-fun m!4815903 () Bool)

(assert (=> b!4229028 m!4815903))

(assert (=> b!4228844 d!1244618))

(declare-fun d!1244620 () Bool)

(assert (=> d!1244620 (isPrefix!4688 input!3586 input!3586)))

(declare-fun lt!1503488 () Unit!65790)

(declare-fun choose!25891 (List!46810 List!46810) Unit!65790)

(assert (=> d!1244620 (= lt!1503488 (choose!25891 input!3586 input!3586))))

(assert (=> d!1244620 (= (lemmaIsPrefixRefl!3099 input!3586 input!3586) lt!1503488)))

(declare-fun bs!597897 () Bool)

(assert (= bs!597897 d!1244620))

(assert (=> bs!597897 m!4815731))

(declare-fun m!4815905 () Bool)

(assert (=> bs!597897 m!4815905))

(assert (=> b!4228844 d!1244620))

(declare-fun d!1244622 () Bool)

(declare-fun lt!1503491 () Int)

(assert (=> d!1244622 (>= lt!1503491 0)))

(declare-fun e!2625984 () Int)

(assert (=> d!1244622 (= lt!1503491 e!2625984)))

(declare-fun c!718815 () Bool)

(assert (=> d!1244622 (= c!718815 (is-Nil!46686 input!3586))))

(assert (=> d!1244622 (= (size!34205 input!3586) lt!1503491)))

(declare-fun b!4229034 () Bool)

(assert (=> b!4229034 (= e!2625984 0)))

(declare-fun b!4229035 () Bool)

(assert (=> b!4229035 (= e!2625984 (+ 1 (size!34205 (t!349431 input!3586))))))

(assert (= (and d!1244622 c!718815) b!4229034))

(assert (= (and d!1244622 (not c!718815)) b!4229035))

(declare-fun m!4815907 () Bool)

(assert (=> b!4229035 m!4815907))

(assert (=> b!4228843 d!1244622))

(declare-fun d!1244624 () Bool)

(declare-fun lt!1503492 () Int)

(assert (=> d!1244624 (>= lt!1503492 0)))

(declare-fun e!2625985 () Int)

(assert (=> d!1244624 (= lt!1503492 e!2625985)))

(declare-fun c!718816 () Bool)

(assert (=> d!1244624 (= c!718816 (is-Nil!46686 pBis!134))))

(assert (=> d!1244624 (= (size!34205 pBis!134) lt!1503492)))

(declare-fun b!4229036 () Bool)

(assert (=> b!4229036 (= e!2625985 0)))

(declare-fun b!4229037 () Bool)

(assert (=> b!4229037 (= e!2625985 (+ 1 (size!34205 (t!349431 pBis!134))))))

(assert (= (and d!1244624 c!718816) b!4229036))

(assert (= (and d!1244624 (not c!718816)) b!4229037))

(declare-fun m!4815909 () Bool)

(assert (=> b!4229037 m!4815909))

(assert (=> b!4228843 d!1244624))

(declare-fun d!1244626 () Bool)

(assert (=> d!1244626 (= (inv!61358 (tag!8737 (rule!10987 t!8425))) (= (mod (str.len (value!244879 (tag!8737 (rule!10987 t!8425)))) 2) 0))))

(assert (=> b!4228845 d!1244626))

(declare-fun d!1244628 () Bool)

(declare-fun res!1739121 () Bool)

(declare-fun e!2625986 () Bool)

(assert (=> d!1244628 (=> (not res!1739121) (not e!2625986))))

(assert (=> d!1244628 (= res!1739121 (semiInverseModEq!3424 (toChars!10460 (transformation!7873 (rule!10987 t!8425))) (toValue!10601 (transformation!7873 (rule!10987 t!8425)))))))

(assert (=> d!1244628 (= (inv!61361 (transformation!7873 (rule!10987 t!8425))) e!2625986)))

(declare-fun b!4229038 () Bool)

(assert (=> b!4229038 (= e!2625986 (equivClasses!3323 (toChars!10460 (transformation!7873 (rule!10987 t!8425))) (toValue!10601 (transformation!7873 (rule!10987 t!8425)))))))

(assert (= (and d!1244628 res!1739121) b!4229038))

(declare-fun m!4815911 () Bool)

(assert (=> d!1244628 m!4815911))

(declare-fun m!4815913 () Bool)

(assert (=> b!4229038 m!4815913))

(assert (=> b!4228845 d!1244628))

(declare-fun d!1244630 () Bool)

(declare-fun lt!1503493 () Int)

(assert (=> d!1244630 (>= lt!1503493 0)))

(declare-fun e!2625987 () Int)

(assert (=> d!1244630 (= lt!1503493 e!2625987)))

(declare-fun c!718817 () Bool)

(assert (=> d!1244630 (= c!718817 (is-Nil!46686 p!3014))))

(assert (=> d!1244630 (= (size!34205 p!3014) lt!1503493)))

(declare-fun b!4229039 () Bool)

(assert (=> b!4229039 (= e!2625987 0)))

(declare-fun b!4229040 () Bool)

(assert (=> b!4229040 (= e!2625987 (+ 1 (size!34205 (t!349431 p!3014))))))

(assert (= (and d!1244630 c!718817) b!4229039))

(assert (= (and d!1244630 (not c!718817)) b!4229040))

(declare-fun m!4815915 () Bool)

(assert (=> b!4229040 m!4815915))

(assert (=> b!4228836 d!1244630))

(declare-fun d!1244632 () Bool)

(declare-fun list!16853 (Conc!14084) List!46810)

(assert (=> d!1244632 (= (list!16851 (charsOf!5248 t!8425)) (list!16853 (c!718794 (charsOf!5248 t!8425))))))

(declare-fun bs!597898 () Bool)

(assert (= bs!597898 d!1244632))

(declare-fun m!4815917 () Bool)

(assert (=> bs!597898 m!4815917))

(assert (=> b!4228835 d!1244632))

(declare-fun d!1244634 () Bool)

(declare-fun lt!1503496 () BalanceConc!27762)

(assert (=> d!1244634 (= (list!16851 lt!1503496) (originalCharacters!8221 t!8425))))

(declare-fun dynLambda!20023 (Int TokenValue!8103) BalanceConc!27762)

(assert (=> d!1244634 (= lt!1503496 (dynLambda!20023 (toChars!10460 (transformation!7873 (rule!10987 t!8425))) (value!244880 t!8425)))))

(assert (=> d!1244634 (= (charsOf!5248 t!8425) lt!1503496)))

(declare-fun b_lambda!124515 () Bool)

(assert (=> (not b_lambda!124515) (not d!1244634)))

(declare-fun t!349436 () Bool)

(declare-fun tb!253815 () Bool)

(assert (=> (and b!4228848 (= (toChars!10460 (transformation!7873 (rule!10987 t!8425))) (toChars!10460 (transformation!7873 (rule!10987 t!8425)))) t!349436) tb!253815))

(declare-fun b!4229054 () Bool)

(declare-fun e!2625997 () Bool)

(declare-fun tp!1295473 () Bool)

(declare-fun inv!61365 (Conc!14084) Bool)

(assert (=> b!4229054 (= e!2625997 (and (inv!61365 (c!718794 (dynLambda!20023 (toChars!10460 (transformation!7873 (rule!10987 t!8425))) (value!244880 t!8425)))) tp!1295473))))

(declare-fun result!309516 () Bool)

(declare-fun inv!61366 (BalanceConc!27762) Bool)

(assert (=> tb!253815 (= result!309516 (and (inv!61366 (dynLambda!20023 (toChars!10460 (transformation!7873 (rule!10987 t!8425))) (value!244880 t!8425))) e!2625997))))

(assert (= tb!253815 b!4229054))

(declare-fun m!4815925 () Bool)

(assert (=> b!4229054 m!4815925))

(declare-fun m!4815927 () Bool)

(assert (=> tb!253815 m!4815927))

(assert (=> d!1244634 t!349436))

(declare-fun b_and!334137 () Bool)

(assert (= b_and!334123 (and (=> t!349436 result!309516) b_and!334137)))

(declare-fun tb!253817 () Bool)

(declare-fun t!349438 () Bool)

(assert (=> (and b!4228841 (= (toChars!10460 (transformation!7873 r!4334)) (toChars!10460 (transformation!7873 (rule!10987 t!8425)))) t!349438) tb!253817))

(declare-fun result!309520 () Bool)

(assert (= result!309520 result!309516))

(assert (=> d!1244634 t!349438))

(declare-fun b_and!334139 () Bool)

(assert (= b_and!334127 (and (=> t!349438 result!309520) b_and!334139)))

(declare-fun m!4815929 () Bool)

(assert (=> d!1244634 m!4815929))

(declare-fun m!4815931 () Bool)

(assert (=> d!1244634 m!4815931))

(assert (=> b!4228835 d!1244634))

(declare-fun b!4229073 () Bool)

(declare-fun res!1739138 () Bool)

(declare-fun e!2626013 () Bool)

(assert (=> b!4229073 (=> (not res!1739138) (not e!2626013))))

(declare-fun call!293266 () Bool)

(assert (=> b!4229073 (= res!1739138 call!293266)))

(declare-fun e!2626015 () Bool)

(assert (=> b!4229073 (= e!2626015 e!2626013)))

(declare-fun b!4229074 () Bool)

(declare-fun e!2626018 () Bool)

(assert (=> b!4229074 (= e!2626018 e!2626015)))

(declare-fun c!718824 () Bool)

(assert (=> b!4229074 (= c!718824 (is-Union!12778 (regex!7873 r!4334)))))

(declare-fun b!4229075 () Bool)

(declare-fun res!1739137 () Bool)

(declare-fun e!2626017 () Bool)

(assert (=> b!4229075 (=> res!1739137 e!2626017)))

(assert (=> b!4229075 (= res!1739137 (not (is-Concat!20882 (regex!7873 r!4334))))))

(assert (=> b!4229075 (= e!2626015 e!2626017)))

(declare-fun b!4229076 () Bool)

(declare-fun e!2626012 () Bool)

(assert (=> b!4229076 (= e!2626017 e!2626012)))

(declare-fun res!1739141 () Bool)

(assert (=> b!4229076 (=> (not res!1739141) (not e!2626012))))

(assert (=> b!4229076 (= res!1739141 call!293266)))

(declare-fun b!4229077 () Bool)

(declare-fun e!2626014 () Bool)

(assert (=> b!4229077 (= e!2626018 e!2626014)))

(declare-fun res!1739139 () Bool)

(assert (=> b!4229077 (= res!1739139 (not (nullable!4499 (reg!13107 (regex!7873 r!4334)))))))

(assert (=> b!4229077 (=> (not res!1739139) (not e!2626014))))

(declare-fun bm!293261 () Bool)

(declare-fun call!293267 () Bool)

(declare-fun call!293268 () Bool)

(assert (=> bm!293261 (= call!293267 call!293268)))

(declare-fun d!1244638 () Bool)

(declare-fun res!1739140 () Bool)

(declare-fun e!2626016 () Bool)

(assert (=> d!1244638 (=> res!1739140 e!2626016)))

(assert (=> d!1244638 (= res!1739140 (is-ElementMatch!12778 (regex!7873 r!4334)))))

(assert (=> d!1244638 (= (validRegex!5796 (regex!7873 r!4334)) e!2626016)))

(declare-fun b!4229078 () Bool)

(assert (=> b!4229078 (= e!2626014 call!293268)))

(declare-fun b!4229079 () Bool)

(assert (=> b!4229079 (= e!2626016 e!2626018)))

(declare-fun c!718825 () Bool)

(assert (=> b!4229079 (= c!718825 (is-Star!12778 (regex!7873 r!4334)))))

(declare-fun bm!293262 () Bool)

(assert (=> bm!293262 (= call!293268 (validRegex!5796 (ite c!718825 (reg!13107 (regex!7873 r!4334)) (ite c!718824 (regTwo!26069 (regex!7873 r!4334)) (regTwo!26068 (regex!7873 r!4334))))))))

(declare-fun b!4229080 () Bool)

(assert (=> b!4229080 (= e!2626013 call!293267)))

(declare-fun bm!293263 () Bool)

(assert (=> bm!293263 (= call!293266 (validRegex!5796 (ite c!718824 (regOne!26069 (regex!7873 r!4334)) (regOne!26068 (regex!7873 r!4334)))))))

(declare-fun b!4229081 () Bool)

(assert (=> b!4229081 (= e!2626012 call!293267)))

(assert (= (and d!1244638 (not res!1739140)) b!4229079))

(assert (= (and b!4229079 c!718825) b!4229077))

(assert (= (and b!4229079 (not c!718825)) b!4229074))

(assert (= (and b!4229077 res!1739139) b!4229078))

(assert (= (and b!4229074 c!718824) b!4229073))

(assert (= (and b!4229074 (not c!718824)) b!4229075))

(assert (= (and b!4229073 res!1739138) b!4229080))

(assert (= (and b!4229075 (not res!1739137)) b!4229076))

(assert (= (and b!4229076 res!1739141) b!4229081))

(assert (= (or b!4229073 b!4229076) bm!293263))

(assert (= (or b!4229080 b!4229081) bm!293261))

(assert (= (or b!4229078 bm!293261) bm!293262))

(declare-fun m!4815933 () Bool)

(assert (=> b!4229077 m!4815933))

(declare-fun m!4815935 () Bool)

(assert (=> bm!293262 m!4815935))

(declare-fun m!4815937 () Bool)

(assert (=> bm!293263 m!4815937))

(assert (=> b!4228837 d!1244638))

(declare-fun d!1244640 () Bool)

(declare-fun c!718836 () Bool)

(assert (=> d!1244640 (= c!718836 (is-IntegerValue!24309 (value!244880 t!8425)))))

(declare-fun e!2626039 () Bool)

(assert (=> d!1244640 (= (inv!21 (value!244880 t!8425)) e!2626039)))

(declare-fun b!4229120 () Bool)

(declare-fun e!2626040 () Bool)

(declare-fun inv!15 (TokenValue!8103) Bool)

(assert (=> b!4229120 (= e!2626040 (inv!15 (value!244880 t!8425)))))

(declare-fun b!4229121 () Bool)

(declare-fun e!2626041 () Bool)

(declare-fun inv!17 (TokenValue!8103) Bool)

(assert (=> b!4229121 (= e!2626041 (inv!17 (value!244880 t!8425)))))

(declare-fun b!4229122 () Bool)

(assert (=> b!4229122 (= e!2626039 e!2626041)))

(declare-fun c!718837 () Bool)

(assert (=> b!4229122 (= c!718837 (is-IntegerValue!24310 (value!244880 t!8425)))))

(declare-fun b!4229123 () Bool)

(declare-fun res!1739160 () Bool)

(assert (=> b!4229123 (=> res!1739160 e!2626040)))

(assert (=> b!4229123 (= res!1739160 (not (is-IntegerValue!24311 (value!244880 t!8425))))))

(assert (=> b!4229123 (= e!2626041 e!2626040)))

(declare-fun b!4229124 () Bool)

(declare-fun inv!16 (TokenValue!8103) Bool)

(assert (=> b!4229124 (= e!2626039 (inv!16 (value!244880 t!8425)))))

(assert (= (and d!1244640 c!718836) b!4229124))

(assert (= (and d!1244640 (not c!718836)) b!4229122))

(assert (= (and b!4229122 c!718837) b!4229121))

(assert (= (and b!4229122 (not c!718837)) b!4229123))

(assert (= (and b!4229123 (not res!1739160)) b!4229120))

(declare-fun m!4815939 () Bool)

(assert (=> b!4229120 m!4815939))

(declare-fun m!4815941 () Bool)

(assert (=> b!4229121 m!4815941))

(declare-fun m!4815943 () Bool)

(assert (=> b!4229124 m!4815943))

(assert (=> b!4228847 d!1244640))

(declare-fun d!1244642 () Bool)

(declare-fun res!1739165 () Bool)

(declare-fun e!2626044 () Bool)

(assert (=> d!1244642 (=> (not res!1739165) (not e!2626044))))

(assert (=> d!1244642 (= res!1739165 (not (isEmpty!27603 (originalCharacters!8221 t!8425))))))

(assert (=> d!1244642 (= (inv!61362 t!8425) e!2626044)))

(declare-fun b!4229129 () Bool)

(declare-fun res!1739166 () Bool)

(assert (=> b!4229129 (=> (not res!1739166) (not e!2626044))))

(assert (=> b!4229129 (= res!1739166 (= (originalCharacters!8221 t!8425) (list!16851 (dynLambda!20023 (toChars!10460 (transformation!7873 (rule!10987 t!8425))) (value!244880 t!8425)))))))

(declare-fun b!4229130 () Bool)

(assert (=> b!4229130 (= e!2626044 (= (size!34204 t!8425) (size!34205 (originalCharacters!8221 t!8425))))))

(assert (= (and d!1244642 res!1739165) b!4229129))

(assert (= (and b!4229129 res!1739166) b!4229130))

(declare-fun b_lambda!124517 () Bool)

(assert (=> (not b_lambda!124517) (not b!4229129)))

(assert (=> b!4229129 t!349436))

(declare-fun b_and!334141 () Bool)

(assert (= b_and!334137 (and (=> t!349436 result!309516) b_and!334141)))

(assert (=> b!4229129 t!349438))

(declare-fun b_and!334143 () Bool)

(assert (= b_and!334139 (and (=> t!349438 result!309520) b_and!334143)))

(declare-fun m!4815945 () Bool)

(assert (=> d!1244642 m!4815945))

(assert (=> b!4229129 m!4815931))

(assert (=> b!4229129 m!4815931))

(declare-fun m!4815947 () Bool)

(assert (=> b!4229129 m!4815947))

(declare-fun m!4815949 () Bool)

(assert (=> b!4229130 m!4815949))

(assert (=> start!404380 d!1244642))

(declare-fun b!4229131 () Bool)

(declare-fun e!2626046 () Bool)

(declare-fun e!2626045 () Bool)

(assert (=> b!4229131 (= e!2626046 e!2626045)))

(declare-fun res!1739168 () Bool)

(assert (=> b!4229131 (=> (not res!1739168) (not e!2626045))))

(assert (=> b!4229131 (= res!1739168 (not (is-Nil!46686 input!3586)))))

(declare-fun b!4229132 () Bool)

(declare-fun res!1739169 () Bool)

(assert (=> b!4229132 (=> (not res!1739169) (not e!2626045))))

(assert (=> b!4229132 (= res!1739169 (= (head!8963 pBis!134) (head!8963 input!3586)))))

(declare-fun d!1244644 () Bool)

(declare-fun e!2626047 () Bool)

(assert (=> d!1244644 e!2626047))

(declare-fun res!1739167 () Bool)

(assert (=> d!1244644 (=> res!1739167 e!2626047)))

(declare-fun lt!1503499 () Bool)

(assert (=> d!1244644 (= res!1739167 (not lt!1503499))))

(assert (=> d!1244644 (= lt!1503499 e!2626046)))

(declare-fun res!1739170 () Bool)

(assert (=> d!1244644 (=> res!1739170 e!2626046)))

(assert (=> d!1244644 (= res!1739170 (is-Nil!46686 pBis!134))))

(assert (=> d!1244644 (= (isPrefix!4688 pBis!134 input!3586) lt!1503499)))

(declare-fun b!4229134 () Bool)

(assert (=> b!4229134 (= e!2626047 (>= (size!34205 input!3586) (size!34205 pBis!134)))))

(declare-fun b!4229133 () Bool)

(assert (=> b!4229133 (= e!2626045 (isPrefix!4688 (tail!6810 pBis!134) (tail!6810 input!3586)))))

(assert (= (and d!1244644 (not res!1739170)) b!4229131))

(assert (= (and b!4229131 res!1739168) b!4229132))

(assert (= (and b!4229132 res!1739169) b!4229133))

(assert (= (and d!1244644 (not res!1739167)) b!4229134))

(declare-fun m!4815951 () Bool)

(assert (=> b!4229132 m!4815951))

(assert (=> b!4229132 m!4815797))

(assert (=> b!4229134 m!4815737))

(assert (=> b!4229134 m!4815739))

(declare-fun m!4815953 () Bool)

(assert (=> b!4229133 m!4815953))

(assert (=> b!4229133 m!4815801))

(assert (=> b!4229133 m!4815953))

(assert (=> b!4229133 m!4815801))

(declare-fun m!4815955 () Bool)

(assert (=> b!4229133 m!4815955))

(assert (=> b!4228840 d!1244644))

(declare-fun b!4229181 () Bool)

(declare-fun res!1739204 () Bool)

(declare-fun e!2626075 () Bool)

(assert (=> b!4229181 (=> (not res!1739204) (not e!2626075))))

(declare-fun call!293274 () Bool)

(assert (=> b!4229181 (= res!1739204 (not call!293274))))

(declare-fun b!4229182 () Bool)

(declare-fun e!2626078 () Bool)

(declare-fun e!2626072 () Bool)

(assert (=> b!4229182 (= e!2626078 e!2626072)))

(declare-fun c!718848 () Bool)

(assert (=> b!4229182 (= c!718848 (is-EmptyLang!12778 (regex!7873 r!4334)))))

(declare-fun b!4229183 () Bool)

(declare-fun lt!1503504 () Bool)

(assert (=> b!4229183 (= e!2626072 (not lt!1503504))))

(declare-fun d!1244646 () Bool)

(assert (=> d!1244646 e!2626078))

(declare-fun c!718847 () Bool)

(assert (=> d!1244646 (= c!718847 (is-EmptyExpr!12778 (regex!7873 r!4334)))))

(declare-fun e!2626073 () Bool)

(assert (=> d!1244646 (= lt!1503504 e!2626073)))

(declare-fun c!718849 () Bool)

(assert (=> d!1244646 (= c!718849 (isEmpty!27603 p!3014))))

(assert (=> d!1244646 (validRegex!5796 (regex!7873 r!4334))))

(assert (=> d!1244646 (= (matchR!6417 (regex!7873 r!4334) p!3014) lt!1503504)))

(declare-fun b!4229184 () Bool)

(declare-fun derivativeStep!3839 (Regex!12778 C!25754) Regex!12778)

(assert (=> b!4229184 (= e!2626073 (matchR!6417 (derivativeStep!3839 (regex!7873 r!4334) (head!8963 p!3014)) (tail!6810 p!3014)))))

(declare-fun b!4229185 () Bool)

(assert (=> b!4229185 (= e!2626073 (nullable!4499 (regex!7873 r!4334)))))

(declare-fun b!4229186 () Bool)

(declare-fun res!1739205 () Bool)

(declare-fun e!2626074 () Bool)

(assert (=> b!4229186 (=> res!1739205 e!2626074)))

(assert (=> b!4229186 (= res!1739205 (not (isEmpty!27603 (tail!6810 p!3014))))))

(declare-fun b!4229187 () Bool)

(assert (=> b!4229187 (= e!2626075 (= (head!8963 p!3014) (c!718795 (regex!7873 r!4334))))))

(declare-fun b!4229188 () Bool)

(declare-fun res!1739202 () Bool)

(declare-fun e!2626077 () Bool)

(assert (=> b!4229188 (=> res!1739202 e!2626077)))

(assert (=> b!4229188 (= res!1739202 e!2626075)))

(declare-fun res!1739199 () Bool)

(assert (=> b!4229188 (=> (not res!1739199) (not e!2626075))))

(assert (=> b!4229188 (= res!1739199 lt!1503504)))

(declare-fun b!4229189 () Bool)

(assert (=> b!4229189 (= e!2626078 (= lt!1503504 call!293274))))

(declare-fun b!4229190 () Bool)

(declare-fun e!2626076 () Bool)

(assert (=> b!4229190 (= e!2626076 e!2626074)))

(declare-fun res!1739200 () Bool)

(assert (=> b!4229190 (=> res!1739200 e!2626074)))

(assert (=> b!4229190 (= res!1739200 call!293274)))

(declare-fun bm!293269 () Bool)

(assert (=> bm!293269 (= call!293274 (isEmpty!27603 p!3014))))

(declare-fun b!4229191 () Bool)

(assert (=> b!4229191 (= e!2626077 e!2626076)))

(declare-fun res!1739206 () Bool)

(assert (=> b!4229191 (=> (not res!1739206) (not e!2626076))))

(assert (=> b!4229191 (= res!1739206 (not lt!1503504))))

(declare-fun b!4229192 () Bool)

(declare-fun res!1739201 () Bool)

(assert (=> b!4229192 (=> res!1739201 e!2626077)))

(assert (=> b!4229192 (= res!1739201 (not (is-ElementMatch!12778 (regex!7873 r!4334))))))

(assert (=> b!4229192 (= e!2626072 e!2626077)))

(declare-fun b!4229193 () Bool)

(declare-fun res!1739203 () Bool)

(assert (=> b!4229193 (=> (not res!1739203) (not e!2626075))))

(assert (=> b!4229193 (= res!1739203 (isEmpty!27603 (tail!6810 p!3014)))))

(declare-fun b!4229194 () Bool)

(assert (=> b!4229194 (= e!2626074 (not (= (head!8963 p!3014) (c!718795 (regex!7873 r!4334)))))))

(assert (= (and d!1244646 c!718849) b!4229185))

(assert (= (and d!1244646 (not c!718849)) b!4229184))

(assert (= (and d!1244646 c!718847) b!4229189))

(assert (= (and d!1244646 (not c!718847)) b!4229182))

(assert (= (and b!4229182 c!718848) b!4229183))

(assert (= (and b!4229182 (not c!718848)) b!4229192))

(assert (= (and b!4229192 (not res!1739201)) b!4229188))

(assert (= (and b!4229188 res!1739199) b!4229181))

(assert (= (and b!4229181 res!1739204) b!4229193))

(assert (= (and b!4229193 res!1739203) b!4229187))

(assert (= (and b!4229188 (not res!1739202)) b!4229191))

(assert (= (and b!4229191 res!1739206) b!4229190))

(assert (= (and b!4229190 (not res!1739200)) b!4229186))

(assert (= (and b!4229186 (not res!1739205)) b!4229194))

(assert (= (or b!4229189 b!4229181 b!4229190) bm!293269))

(declare-fun m!4815977 () Bool)

(assert (=> bm!293269 m!4815977))

(assert (=> b!4229184 m!4815795))

(assert (=> b!4229184 m!4815795))

(declare-fun m!4815979 () Bool)

(assert (=> b!4229184 m!4815979))

(assert (=> b!4229184 m!4815799))

(assert (=> b!4229184 m!4815979))

(assert (=> b!4229184 m!4815799))

(declare-fun m!4815981 () Bool)

(assert (=> b!4229184 m!4815981))

(assert (=> b!4229193 m!4815799))

(assert (=> b!4229193 m!4815799))

(declare-fun m!4815983 () Bool)

(assert (=> b!4229193 m!4815983))

(assert (=> b!4229194 m!4815795))

(assert (=> d!1244646 m!4815977))

(assert (=> d!1244646 m!4815735))

(assert (=> b!4229185 m!4815809))

(assert (=> b!4229187 m!4815795))

(assert (=> b!4229186 m!4815799))

(assert (=> b!4229186 m!4815799))

(assert (=> b!4229186 m!4815983))

(assert (=> b!4228839 d!1244646))

(declare-fun b!4229203 () Bool)

(declare-fun e!2626083 () Bool)

(declare-fun tp!1295476 () Bool)

(assert (=> b!4229203 (= e!2626083 (and tp_is_empty!22491 tp!1295476))))

(assert (=> b!4228846 (= tp!1295434 e!2626083)))

(assert (= (and b!4228846 (is-Cons!46686 (t!349431 p!3014))) b!4229203))

(declare-fun e!2626088 () Bool)

(assert (=> b!4228831 (= tp!1295432 e!2626088)))

(declare-fun b!4229218 () Bool)

(assert (=> b!4229218 (= e!2626088 tp_is_empty!22491)))

(declare-fun b!4229220 () Bool)

(declare-fun tp!1295489 () Bool)

(assert (=> b!4229220 (= e!2626088 tp!1295489)))

(declare-fun b!4229219 () Bool)

(declare-fun tp!1295487 () Bool)

(declare-fun tp!1295490 () Bool)

(assert (=> b!4229219 (= e!2626088 (and tp!1295487 tp!1295490))))

(declare-fun b!4229221 () Bool)

(declare-fun tp!1295488 () Bool)

(declare-fun tp!1295491 () Bool)

(assert (=> b!4229221 (= e!2626088 (and tp!1295488 tp!1295491))))

(assert (= (and b!4228831 (is-ElementMatch!12778 (regex!7873 r!4334))) b!4229218))

(assert (= (and b!4228831 (is-Concat!20882 (regex!7873 r!4334))) b!4229219))

(assert (= (and b!4228831 (is-Star!12778 (regex!7873 r!4334))) b!4229220))

(assert (= (and b!4228831 (is-Union!12778 (regex!7873 r!4334))) b!4229221))

(declare-fun b!4229222 () Bool)

(declare-fun e!2626089 () Bool)

(declare-fun tp!1295492 () Bool)

(assert (=> b!4229222 (= e!2626089 (and tp_is_empty!22491 tp!1295492))))

(assert (=> b!4228847 (= tp!1295427 e!2626089)))

(assert (= (and b!4228847 (is-Cons!46686 (originalCharacters!8221 t!8425))) b!4229222))

(declare-fun b!4229223 () Bool)

(declare-fun e!2626090 () Bool)

(declare-fun tp!1295493 () Bool)

(assert (=> b!4229223 (= e!2626090 (and tp_is_empty!22491 tp!1295493))))

(assert (=> b!4228842 (= tp!1295431 e!2626090)))

(assert (= (and b!4228842 (is-Cons!46686 (t!349431 suffix!1590))) b!4229223))

(declare-fun b!4229224 () Bool)

(declare-fun e!2626091 () Bool)

(declare-fun tp!1295494 () Bool)

(assert (=> b!4229224 (= e!2626091 (and tp_is_empty!22491 tp!1295494))))

(assert (=> b!4228829 (= tp!1295433 e!2626091)))

(assert (= (and b!4228829 (is-Cons!46686 (t!349431 input!3586))) b!4229224))

(declare-fun e!2626092 () Bool)

(assert (=> b!4228845 (= tp!1295436 e!2626092)))

(declare-fun b!4229225 () Bool)

(assert (=> b!4229225 (= e!2626092 tp_is_empty!22491)))

(declare-fun b!4229227 () Bool)

(declare-fun tp!1295497 () Bool)

(assert (=> b!4229227 (= e!2626092 tp!1295497)))

(declare-fun b!4229226 () Bool)

(declare-fun tp!1295495 () Bool)

(declare-fun tp!1295498 () Bool)

(assert (=> b!4229226 (= e!2626092 (and tp!1295495 tp!1295498))))

(declare-fun b!4229228 () Bool)

(declare-fun tp!1295496 () Bool)

(declare-fun tp!1295499 () Bool)

(assert (=> b!4229228 (= e!2626092 (and tp!1295496 tp!1295499))))

(assert (= (and b!4228845 (is-ElementMatch!12778 (regex!7873 (rule!10987 t!8425)))) b!4229225))

(assert (= (and b!4228845 (is-Concat!20882 (regex!7873 (rule!10987 t!8425)))) b!4229226))

(assert (= (and b!4228845 (is-Star!12778 (regex!7873 (rule!10987 t!8425)))) b!4229227))

(assert (= (and b!4228845 (is-Union!12778 (regex!7873 (rule!10987 t!8425)))) b!4229228))

(declare-fun b!4229229 () Bool)

(declare-fun e!2626093 () Bool)

(declare-fun tp!1295500 () Bool)

(assert (=> b!4229229 (= e!2626093 (and tp_is_empty!22491 tp!1295500))))

(assert (=> b!4228834 (= tp!1295430 e!2626093)))

(assert (= (and b!4228834 (is-Cons!46686 (t!349431 pBis!134))) b!4229229))

(declare-fun b_lambda!124519 () Bool)

(assert (= b_lambda!124517 (or (and b!4228848 b_free!124885) (and b!4228841 b_free!124889 (= (toChars!10460 (transformation!7873 r!4334)) (toChars!10460 (transformation!7873 (rule!10987 t!8425))))) b_lambda!124519)))

(declare-fun b_lambda!124521 () Bool)

(assert (= b_lambda!124515 (or (and b!4228848 b_free!124885) (and b!4228841 b_free!124889 (= (toChars!10460 (transformation!7873 r!4334)) (toChars!10460 (transformation!7873 (rule!10987 t!8425))))) b_lambda!124521)))

(push 1)

(assert b_and!334121)

(assert (not b_lambda!124519))

(assert (not b!4229054))

(assert b_and!334141)

(assert (not b!4228931))

(assert (not b_lambda!124521))

(assert (not b!4229226))

(assert (not b!4229027))

(assert (not b!4229130))

(assert (not b!4229221))

(assert (not b!4229037))

(assert (not b!4229134))

(assert (not bm!293263))

(assert (not b_next!125587))

(assert (not b!4229194))

(assert (not b!4228930))

(assert (not b!4229229))

(assert (not b!4229120))

(assert (not d!1244606))

(assert (not b!4229002))

(assert (not b!4229000))

(assert (not b!4229203))

(assert (not b!4229219))

(assert (not d!1244608))

(assert (not b!4229186))

(assert (not b!4229132))

(assert (not d!1244628))

(assert (not d!1244600))

(assert b_and!334125)

(assert b_and!334143)

(assert (not b!4229124))

(assert tp_is_empty!22491)

(assert (not tb!253815))

(assert (not b!4229038))

(assert (not b!4229184))

(assert (not b!4229220))

(assert (not b!4229028))

(assert (not bm!293269))

(assert (not b!4229005))

(assert (not b!4229007))

(assert (not b!4228919))

(assert (not d!1244610))

(assert (not b!4229077))

(assert (not b!4228918))

(assert (not b!4228999))

(assert (not b!4229227))

(assert (not b!4229223))

(assert (not b!4229035))

(assert (not b!4229222))

(assert (not bm!293262))

(assert (not b!4228932))

(assert (not b!4229224))

(assert (not b!4229121))

(assert (not b!4229004))

(assert (not d!1244646))

(assert (not b!4229029))

(assert (not b!4228935))

(assert (not b!4229001))

(assert (not b!4229193))

(assert (not b!4229228))

(assert (not d!1244642))

(assert (not b_next!125589))

(assert (not d!1244632))

(assert (not b!4229006))

(assert (not b!4229185))

(assert (not d!1244634))

(assert (not b!4229040))

(assert (not b!4228940))

(assert (not b_next!125593))

(assert (not b_next!125591))

(assert (not b!4229187))

(assert (not d!1244620))

(assert (not b!4229133))

(assert (not b!4229129))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334121)

(assert (not b_next!125587))

(assert b_and!334141)

(assert (not b_next!125589))

(assert (not b_next!125593))

(assert (not b_next!125591))

(assert b_and!334125)

(assert b_and!334143)

(check-sat)

(pop 1)


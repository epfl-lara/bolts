; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!351880 () Bool)

(assert start!351880)

(declare-fun b!3747916 () Bool)

(declare-fun b_free!99981 () Bool)

(declare-fun b_next!100685 () Bool)

(assert (=> b!3747916 (= b_free!99981 (not b_next!100685))))

(declare-fun tp!1143626 () Bool)

(declare-fun b_and!278215 () Bool)

(assert (=> b!3747916 (= tp!1143626 b_and!278215)))

(declare-fun b_free!99983 () Bool)

(declare-fun b_next!100687 () Bool)

(assert (=> b!3747916 (= b_free!99983 (not b_next!100687))))

(declare-fun tp!1143623 () Bool)

(declare-fun b_and!278217 () Bool)

(assert (=> b!3747916 (= tp!1143623 b_and!278217)))

(declare-fun b!3747902 () Bool)

(declare-fun b_free!99985 () Bool)

(declare-fun b_next!100689 () Bool)

(assert (=> b!3747902 (= b_free!99985 (not b_next!100689))))

(declare-fun tp!1143619 () Bool)

(declare-fun b_and!278219 () Bool)

(assert (=> b!3747902 (= tp!1143619 b_and!278219)))

(declare-fun b_free!99987 () Bool)

(declare-fun b_next!100691 () Bool)

(assert (=> b!3747902 (= b_free!99987 (not b_next!100691))))

(declare-fun tp!1143618 () Bool)

(declare-fun b_and!278221 () Bool)

(assert (=> b!3747902 (= tp!1143618 b_and!278221)))

(declare-fun b!3747904 () Bool)

(declare-fun b_free!99989 () Bool)

(declare-fun b_next!100693 () Bool)

(assert (=> b!3747904 (= b_free!99989 (not b_next!100693))))

(declare-fun tp!1143620 () Bool)

(declare-fun b_and!278223 () Bool)

(assert (=> b!3747904 (= tp!1143620 b_and!278223)))

(declare-fun b_free!99991 () Bool)

(declare-fun b_next!100695 () Bool)

(assert (=> b!3747904 (= b_free!99991 (not b_next!100695))))

(declare-fun tp!1143617 () Bool)

(declare-fun b_and!278225 () Bool)

(assert (=> b!3747904 (= tp!1143617 b_and!278225)))

(declare-fun b!3747901 () Bool)

(declare-fun e!2317695 () Bool)

(declare-fun e!2317686 () Bool)

(declare-fun tp!1143621 () Bool)

(declare-datatypes ((List!39995 0))(
  ( (Nil!39871) (Cons!39871 (h!45291 (_ BitVec 16)) (t!302678 List!39995)) )
))
(declare-datatypes ((TokenValue!6319 0))(
  ( (FloatLiteralValue!12638 (text!44678 List!39995)) (TokenValueExt!6318 (__x!24855 Int)) (Broken!31595 (value!194081 List!39995)) (Object!6442) (End!6319) (Def!6319) (Underscore!6319) (Match!6319) (Else!6319) (Error!6319) (Case!6319) (If!6319) (Extends!6319) (Abstract!6319) (Class!6319) (Val!6319) (DelimiterValue!12638 (del!6379 List!39995)) (KeywordValue!6325 (value!194082 List!39995)) (CommentValue!12638 (value!194083 List!39995)) (WhitespaceValue!12638 (value!194084 List!39995)) (IndentationValue!6319 (value!194085 List!39995)) (String!45222) (Int32!6319) (Broken!31596 (value!194086 List!39995)) (Boolean!6320) (Unit!57690) (OperatorValue!6322 (op!6379 List!39995)) (IdentifierValue!12638 (value!194087 List!39995)) (IdentifierValue!12639 (value!194088 List!39995)) (WhitespaceValue!12639 (value!194089 List!39995)) (True!12638) (False!12638) (Broken!31597 (value!194090 List!39995)) (Broken!31598 (value!194091 List!39995)) (True!12639) (RightBrace!6319) (RightBracket!6319) (Colon!6319) (Null!6319) (Comma!6319) (LeftBracket!6319) (False!12639) (LeftBrace!6319) (ImaginaryLiteralValue!6319 (text!44679 List!39995)) (StringLiteralValue!18957 (value!194092 List!39995)) (EOFValue!6319 (value!194093 List!39995)) (IdentValue!6319 (value!194094 List!39995)) (DelimiterValue!12639 (value!194095 List!39995)) (DedentValue!6319 (value!194096 List!39995)) (NewLineValue!6319 (value!194097 List!39995)) (IntegerValue!18957 (value!194098 (_ BitVec 32)) (text!44680 List!39995)) (IntegerValue!18958 (value!194099 Int) (text!44681 List!39995)) (Times!6319) (Or!6319) (Equal!6319) (Minus!6319) (Broken!31599 (value!194100 List!39995)) (And!6319) (Div!6319) (LessEqual!6319) (Mod!6319) (Concat!17313) (Not!6319) (Plus!6319) (SpaceValue!6319 (value!194101 List!39995)) (IntegerValue!18959 (value!194102 Int) (text!44682 List!39995)) (StringLiteralValue!18958 (text!44683 List!39995)) (FloatLiteralValue!12639 (text!44684 List!39995)) (BytesLiteralValue!6319 (value!194103 List!39995)) (CommentValue!12639 (value!194104 List!39995)) (StringLiteralValue!18959 (value!194105 List!39995)) (ErrorTokenValue!6319 (msg!6380 List!39995)) )
))
(declare-datatypes ((C!22174 0))(
  ( (C!22175 (val!13135 Int)) )
))
(declare-datatypes ((List!39996 0))(
  ( (Nil!39872) (Cons!39872 (h!45292 C!22174) (t!302679 List!39996)) )
))
(declare-datatypes ((IArray!24377 0))(
  ( (IArray!24378 (innerList!12246 List!39996)) )
))
(declare-datatypes ((Conc!12186 0))(
  ( (Node!12186 (left!30870 Conc!12186) (right!31200 Conc!12186) (csize!24602 Int) (cheight!12397 Int)) (Leaf!18915 (xs!15388 IArray!24377) (csize!24603 Int)) (Empty!12186) )
))
(declare-datatypes ((BalanceConc!23986 0))(
  ( (BalanceConc!23987 (c!648998 Conc!12186)) )
))
(declare-datatypes ((TokenValueInjection!12066 0))(
  ( (TokenValueInjection!12067 (toValue!8437 Int) (toChars!8296 Int)) )
))
(declare-datatypes ((Regex!10994 0))(
  ( (ElementMatch!10994 (c!648999 C!22174)) (Concat!17314 (regOne!22500 Regex!10994) (regTwo!22500 Regex!10994)) (EmptyExpr!10994) (Star!10994 (reg!11323 Regex!10994)) (EmptyLang!10994) (Union!10994 (regOne!22501 Regex!10994) (regTwo!22501 Regex!10994)) )
))
(declare-datatypes ((String!45223 0))(
  ( (String!45224 (value!194106 String)) )
))
(declare-datatypes ((Rule!11978 0))(
  ( (Rule!11979 (regex!6089 Regex!10994) (tag!6949 String!45223) (isSeparator!6089 Bool) (transformation!6089 TokenValueInjection!12066)) )
))
(declare-fun rSep!170 () Rule!11978)

(declare-fun inv!53380 (String!45223) Bool)

(declare-fun inv!53383 (TokenValueInjection!12066) Bool)

(assert (=> b!3747901 (= e!2317695 (and tp!1143621 (inv!53380 (tag!6949 rSep!170)) (inv!53383 (transformation!6089 rSep!170)) e!2317686))))

(declare-fun res!1519188 () Bool)

(declare-fun e!2317696 () Bool)

(assert (=> start!351880 (=> (not res!1519188) (not e!2317696))))

(declare-datatypes ((LexerInterface!5678 0))(
  ( (LexerInterfaceExt!5675 (__x!24856 Int)) (Lexer!5676) )
))
(declare-fun thiss!27193 () LexerInterface!5678)

(assert (=> start!351880 (= res!1519188 (is-Lexer!5676 thiss!27193))))

(assert (=> start!351880 e!2317696))

(declare-fun e!2317694 () Bool)

(assert (=> start!351880 e!2317694))

(declare-fun e!2317689 () Bool)

(assert (=> start!351880 e!2317689))

(assert (=> start!351880 true))

(declare-fun tp_is_empty!19003 () Bool)

(assert (=> start!351880 tp_is_empty!19003))

(assert (=> start!351880 e!2317695))

(declare-fun e!2317688 () Bool)

(assert (=> b!3747902 (= e!2317688 (and tp!1143619 tp!1143618))))

(declare-fun b!3747903 () Bool)

(declare-fun res!1519193 () Bool)

(declare-fun e!2317690 () Bool)

(assert (=> b!3747903 (=> res!1519193 e!2317690)))

(declare-fun rNSep!170 () Rule!11978)

(declare-datatypes ((List!39997 0))(
  ( (Nil!39873) (Cons!39873 (h!45293 Rule!11978) (t!302680 List!39997)) )
))
(declare-fun rules!4213 () List!39997)

(declare-fun ruleDisjointCharsFromAllFromOtherType!962 (Rule!11978 List!39997) Bool)

(assert (=> b!3747903 (= res!1519193 (not (ruleDisjointCharsFromAllFromOtherType!962 rNSep!170 (t!302680 rules!4213))))))

(assert (=> b!3747904 (= e!2317686 (and tp!1143620 tp!1143617))))

(declare-fun b!3747905 () Bool)

(declare-fun res!1519192 () Bool)

(assert (=> b!3747905 (=> (not res!1519192) (not e!2317696))))

(declare-fun c!6920 () C!22174)

(declare-fun contains!8137 (List!39996 C!22174) Bool)

(declare-fun usedCharacters!1257 (Regex!10994) List!39996)

(assert (=> b!3747905 (= res!1519192 (contains!8137 (usedCharacters!1257 (regex!6089 rNSep!170)) c!6920))))

(declare-fun b!3747906 () Bool)

(declare-fun res!1519195 () Bool)

(assert (=> b!3747906 (=> (not res!1519195) (not e!2317696))))

(assert (=> b!3747906 (= res!1519195 (and (not (isSeparator!6089 rNSep!170)) (isSeparator!6089 rSep!170)))))

(declare-fun e!2317691 () Bool)

(declare-fun tp!1143625 () Bool)

(declare-fun b!3747907 () Bool)

(assert (=> b!3747907 (= e!2317694 (and tp!1143625 (inv!53380 (tag!6949 rNSep!170)) (inv!53383 (transformation!6089 rNSep!170)) e!2317691))))

(declare-fun b!3747908 () Bool)

(declare-fun tp!1143622 () Bool)

(declare-fun e!2317685 () Bool)

(assert (=> b!3747908 (= e!2317685 (and tp!1143622 (inv!53380 (tag!6949 (h!45293 rules!4213))) (inv!53383 (transformation!6089 (h!45293 rules!4213))) e!2317688))))

(declare-fun b!3747909 () Bool)

(assert (=> b!3747909 (= e!2317690 true)))

(assert (=> b!3747909 (not (contains!8137 (usedCharacters!1257 (regex!6089 rSep!170)) c!6920))))

(declare-datatypes ((Unit!57691 0))(
  ( (Unit!57692) )
))
(declare-fun lt!1299643 () Unit!57691)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRuleInner!3 (LexerInterface!5678 List!39997 Rule!11978 Rule!11978 C!22174) Unit!57691)

(assert (=> b!3747909 (= lt!1299643 (lemmaSepRuleNotContainsCharContainedInANonSepRuleInner!3 thiss!27193 (t!302680 rules!4213) rNSep!170 rSep!170 c!6920))))

(declare-fun b!3747910 () Bool)

(assert (=> b!3747910 (= e!2317696 (not e!2317690))))

(declare-fun res!1519189 () Bool)

(assert (=> b!3747910 (=> res!1519189 e!2317690)))

(declare-fun contains!8138 (List!39997 Rule!11978) Bool)

(assert (=> b!3747910 (= res!1519189 (not (contains!8138 (t!302680 rules!4213) rSep!170)))))

(declare-fun rulesInvariant!5075 (LexerInterface!5678 List!39997) Bool)

(assert (=> b!3747910 (rulesInvariant!5075 thiss!27193 (t!302680 rules!4213))))

(declare-fun lt!1299644 () Unit!57691)

(declare-fun lemmaInvariantOnRulesThenOnTail!719 (LexerInterface!5678 Rule!11978 List!39997) Unit!57691)

(assert (=> b!3747910 (= lt!1299644 (lemmaInvariantOnRulesThenOnTail!719 thiss!27193 (h!45293 rules!4213) (t!302680 rules!4213)))))

(declare-fun b!3747911 () Bool)

(declare-fun res!1519191 () Bool)

(assert (=> b!3747911 (=> (not res!1519191) (not e!2317696))))

(assert (=> b!3747911 (= res!1519191 (rulesInvariant!5075 thiss!27193 rules!4213))))

(declare-fun b!3747912 () Bool)

(declare-fun tp!1143624 () Bool)

(assert (=> b!3747912 (= e!2317689 (and e!2317685 tp!1143624))))

(declare-fun b!3747913 () Bool)

(declare-fun res!1519196 () Bool)

(assert (=> b!3747913 (=> (not res!1519196) (not e!2317696))))

(assert (=> b!3747913 (= res!1519196 (ruleDisjointCharsFromAllFromOtherType!962 rNSep!170 rules!4213))))

(declare-fun b!3747914 () Bool)

(declare-fun res!1519194 () Bool)

(assert (=> b!3747914 (=> (not res!1519194) (not e!2317696))))

(assert (=> b!3747914 (= res!1519194 (contains!8138 rules!4213 rSep!170))))

(declare-fun b!3747915 () Bool)

(declare-fun res!1519190 () Bool)

(assert (=> b!3747915 (=> (not res!1519190) (not e!2317696))))

(assert (=> b!3747915 (= res!1519190 (and (or (not (is-Cons!39873 rules!4213)) (not (= (h!45293 rules!4213) rSep!170))) (is-Cons!39873 rules!4213)))))

(assert (=> b!3747916 (= e!2317691 (and tp!1143626 tp!1143623))))

(assert (= (and start!351880 res!1519188) b!3747911))

(assert (= (and b!3747911 res!1519191) b!3747914))

(assert (= (and b!3747914 res!1519194) b!3747905))

(assert (= (and b!3747905 res!1519192) b!3747906))

(assert (= (and b!3747906 res!1519195) b!3747913))

(assert (= (and b!3747913 res!1519196) b!3747915))

(assert (= (and b!3747915 res!1519190) b!3747910))

(assert (= (and b!3747910 (not res!1519189)) b!3747903))

(assert (= (and b!3747903 (not res!1519193)) b!3747909))

(assert (= b!3747907 b!3747916))

(assert (= start!351880 b!3747907))

(assert (= b!3747908 b!3747902))

(assert (= b!3747912 b!3747908))

(assert (= (and start!351880 (is-Cons!39873 rules!4213)) b!3747912))

(assert (= b!3747901 b!3747904))

(assert (= start!351880 b!3747901))

(declare-fun m!4239865 () Bool)

(assert (=> b!3747905 m!4239865))

(assert (=> b!3747905 m!4239865))

(declare-fun m!4239867 () Bool)

(assert (=> b!3747905 m!4239867))

(declare-fun m!4239869 () Bool)

(assert (=> b!3747901 m!4239869))

(declare-fun m!4239871 () Bool)

(assert (=> b!3747901 m!4239871))

(declare-fun m!4239873 () Bool)

(assert (=> b!3747909 m!4239873))

(assert (=> b!3747909 m!4239873))

(declare-fun m!4239875 () Bool)

(assert (=> b!3747909 m!4239875))

(declare-fun m!4239877 () Bool)

(assert (=> b!3747909 m!4239877))

(declare-fun m!4239879 () Bool)

(assert (=> b!3747908 m!4239879))

(declare-fun m!4239881 () Bool)

(assert (=> b!3747908 m!4239881))

(declare-fun m!4239883 () Bool)

(assert (=> b!3747910 m!4239883))

(declare-fun m!4239885 () Bool)

(assert (=> b!3747910 m!4239885))

(declare-fun m!4239887 () Bool)

(assert (=> b!3747910 m!4239887))

(declare-fun m!4239889 () Bool)

(assert (=> b!3747907 m!4239889))

(declare-fun m!4239891 () Bool)

(assert (=> b!3747907 m!4239891))

(declare-fun m!4239893 () Bool)

(assert (=> b!3747914 m!4239893))

(declare-fun m!4239895 () Bool)

(assert (=> b!3747903 m!4239895))

(declare-fun m!4239897 () Bool)

(assert (=> b!3747913 m!4239897))

(declare-fun m!4239899 () Bool)

(assert (=> b!3747911 m!4239899))

(push 1)

(assert (not b_next!100689))

(assert (not b_next!100695))

(assert b_and!278225)

(assert b_and!278219)

(assert (not b_next!100691))

(assert tp_is_empty!19003)

(assert (not b!3747910))

(assert (not b!3747901))

(assert (not b!3747908))

(assert (not b!3747907))

(assert (not b!3747905))

(assert b_and!278223)

(assert (not b!3747909))

(assert b_and!278221)

(assert (not b!3747911))

(assert (not b_next!100687))

(assert (not b!3747913))

(assert (not b_next!100693))

(assert (not b!3747914))

(assert b_and!278217)

(assert (not b!3747912))

(assert (not b!3747903))

(assert b_and!278215)

(assert (not b_next!100685))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100689))

(assert (not b_next!100695))

(assert b_and!278223)

(assert b_and!278225)

(assert b_and!278221)

(assert b_and!278219)

(assert b_and!278217)

(assert (not b_next!100691))

(assert (not b_next!100687))

(assert (not b_next!100693))

(assert b_and!278215)

(assert (not b_next!100685))

(check-sat)

(pop 1)


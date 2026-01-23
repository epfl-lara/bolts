; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756894 () Bool)

(assert start!756894)

(declare-fun b!8039146 () Bool)

(declare-fun b_free!135299 () Bool)

(declare-fun b_next!136089 () Bool)

(assert (=> b!8039146 (= b_free!135299 (not b_next!136089))))

(declare-fun tp!2407845 () Bool)

(declare-fun b_and!353735 () Bool)

(assert (=> b!8039146 (= tp!2407845 b_and!353735)))

(declare-fun b_free!135301 () Bool)

(declare-fun b_next!136091 () Bool)

(assert (=> b!8039146 (= b_free!135301 (not b_next!136091))))

(declare-fun tp!2407842 () Bool)

(declare-fun b_and!353737 () Bool)

(assert (=> b!8039146 (= tp!2407842 b_and!353737)))

(declare-fun b!8039158 () Bool)

(declare-fun b_free!135303 () Bool)

(declare-fun b_next!136093 () Bool)

(assert (=> b!8039158 (= b_free!135303 (not b_next!136093))))

(declare-fun tp!2407844 () Bool)

(declare-fun b_and!353739 () Bool)

(assert (=> b!8039158 (= tp!2407844 b_and!353739)))

(declare-fun b_free!135305 () Bool)

(declare-fun b_next!136095 () Bool)

(assert (=> b!8039158 (= b_free!135305 (not b_next!136095))))

(declare-fun tp!2407855 () Bool)

(declare-fun b_and!353741 () Bool)

(assert (=> b!8039158 (= tp!2407855 b_and!353741)))

(declare-fun b!8039145 () Bool)

(declare-fun b_free!135307 () Bool)

(declare-fun b_next!136097 () Bool)

(assert (=> b!8039145 (= b_free!135307 (not b_next!136097))))

(declare-fun tp!2407843 () Bool)

(declare-fun b_and!353743 () Bool)

(assert (=> b!8039145 (= tp!2407843 b_and!353743)))

(declare-fun b_free!135309 () Bool)

(declare-fun b_next!136099 () Bool)

(assert (=> b!8039145 (= b_free!135309 (not b_next!136099))))

(declare-fun tp!2407851 () Bool)

(declare-fun b_and!353745 () Bool)

(assert (=> b!8039145 (= tp!2407851 b_and!353745)))

(declare-fun b!8039141 () Bool)

(declare-fun b_free!135311 () Bool)

(declare-fun b_next!136101 () Bool)

(assert (=> b!8039141 (= b_free!135311 (not b_next!136101))))

(declare-fun tp!2407849 () Bool)

(declare-fun b_and!353747 () Bool)

(assert (=> b!8039141 (= tp!2407849 b_and!353747)))

(declare-fun b_free!135313 () Bool)

(declare-fun b_next!136103 () Bool)

(assert (=> b!8039141 (= b_free!135313 (not b_next!136103))))

(declare-fun tp!2407848 () Bool)

(declare-fun b_and!353749 () Bool)

(assert (=> b!8039141 (= tp!2407848 b_and!353749)))

(declare-fun b!8039140 () Bool)

(declare-fun res!3177733 () Bool)

(declare-fun e!4735102 () Bool)

(assert (=> b!8039140 (=> (not res!3177733) (not e!4735102))))

(declare-datatypes ((List!75179 0))(
  ( (Nil!75053) (Cons!75053 (h!81501 (_ BitVec 16)) (t!390949 List!75179)) )
))
(declare-datatypes ((TokenValue!9003 0))(
  ( (FloatLiteralValue!18006 (text!63466 List!75179)) (TokenValueExt!9002 (__x!35287 Int)) (Broken!45015 (value!290550 List!75179)) (Object!9128) (End!9003) (Def!9003) (Underscore!9003) (Match!9003) (Else!9003) (Error!9003) (Case!9003) (If!9003) (Extends!9003) (Abstract!9003) (Class!9003) (Val!9003) (DelimiterValue!18006 (del!9063 List!75179)) (KeywordValue!9009 (value!290551 List!75179)) (CommentValue!18006 (value!290552 List!75179)) (WhitespaceValue!18006 (value!290553 List!75179)) (IndentationValue!9003 (value!290554 List!75179)) (String!84790) (Int32!9003) (Broken!45016 (value!290555 List!75179)) (Boolean!9004) (Unit!171006) (OperatorValue!9006 (op!9063 List!75179)) (IdentifierValue!18006 (value!290556 List!75179)) (IdentifierValue!18007 (value!290557 List!75179)) (WhitespaceValue!18007 (value!290558 List!75179)) (True!18006) (False!18006) (Broken!45017 (value!290559 List!75179)) (Broken!45018 (value!290560 List!75179)) (True!18007) (RightBrace!9003) (RightBracket!9003) (Colon!9003) (Null!9003) (Comma!9003) (LeftBracket!9003) (False!18007) (LeftBrace!9003) (ImaginaryLiteralValue!9003 (text!63467 List!75179)) (StringLiteralValue!27009 (value!290561 List!75179)) (EOFValue!9003 (value!290562 List!75179)) (IdentValue!9003 (value!290563 List!75179)) (DelimiterValue!18007 (value!290564 List!75179)) (DedentValue!9003 (value!290565 List!75179)) (NewLineValue!9003 (value!290566 List!75179)) (IntegerValue!27009 (value!290567 (_ BitVec 32)) (text!63468 List!75179)) (IntegerValue!27010 (value!290568 Int) (text!63469 List!75179)) (Times!9003) (Or!9003) (Equal!9003) (Minus!9003) (Broken!45019 (value!290569 List!75179)) (And!9003) (Div!9003) (LessEqual!9003) (Mod!9003) (Concat!30757) (Not!9003) (Plus!9003) (SpaceValue!9003 (value!290570 List!75179)) (IntegerValue!27011 (value!290571 Int) (text!63470 List!75179)) (StringLiteralValue!27010 (text!63471 List!75179)) (FloatLiteralValue!18007 (text!63472 List!75179)) (BytesLiteralValue!9003 (value!290572 List!75179)) (CommentValue!18007 (value!290573 List!75179)) (StringLiteralValue!27011 (value!290574 List!75179)) (ErrorTokenValue!9003 (msg!9064 List!75179)) )
))
(declare-datatypes ((C!43846 0))(
  ( (C!43847 (val!32699 Int)) )
))
(declare-datatypes ((List!75180 0))(
  ( (Nil!75054) (Cons!75054 (h!81502 C!43846) (t!390950 List!75180)) )
))
(declare-datatypes ((IArray!31963 0))(
  ( (IArray!31964 (innerList!16039 List!75180)) )
))
(declare-datatypes ((Conc!15951 0))(
  ( (Node!15951 (left!57242 Conc!15951) (right!57572 Conc!15951) (csize!32132 Int) (cheight!16162 Int)) (Leaf!30603 (xs!19349 IArray!31963) (csize!32133 Int)) (Empty!15951) )
))
(declare-datatypes ((BalanceConc!30858 0))(
  ( (BalanceConc!30859 (c!1474811 Conc!15951)) )
))
(declare-datatypes ((Regex!21754 0))(
  ( (ElementMatch!21754 (c!1474812 C!43846)) (Concat!30758 (regOne!44020 Regex!21754) (regTwo!44020 Regex!21754)) (EmptyExpr!21754) (Star!21754 (reg!22083 Regex!21754)) (EmptyLang!21754) (Union!21754 (regOne!44021 Regex!21754) (regTwo!44021 Regex!21754)) )
))
(declare-datatypes ((String!84791 0))(
  ( (String!84792 (value!290575 String)) )
))
(declare-datatypes ((TokenValueInjection!17314 0))(
  ( (TokenValueInjection!17315 (toValue!11754 Int) (toChars!11613 Int)) )
))
(declare-datatypes ((Rule!17166 0))(
  ( (Rule!17167 (regex!8683 Regex!21754) (tag!9547 String!84791) (isSeparator!8683 Bool) (transformation!8683 TokenValueInjection!17314)) )
))
(declare-fun rNSep!142 () Rule!17166)

(declare-fun rSep!142 () Rule!17166)

(assert (=> b!8039140 (= res!3177733 (and (not (isSeparator!8683 rNSep!142)) (isSeparator!8683 rSep!142)))))

(declare-fun e!4735101 () Bool)

(assert (=> b!8039141 (= e!4735101 (and tp!2407849 tp!2407848))))

(declare-fun b!8039142 () Bool)

(declare-fun res!3177736 () Bool)

(assert (=> b!8039142 (=> (not res!3177736) (not e!4735102))))

(declare-fun c!6865 () C!43846)

(declare-fun contains!20949 (List!75180 C!43846) Bool)

(declare-fun usedCharacters!1261 (Regex!21754) List!75180)

(assert (=> b!8039142 (= res!3177736 (contains!20949 (usedCharacters!1261 (regex!8683 rSep!142)) c!6865))))

(declare-fun res!3177740 () Bool)

(assert (=> start!756894 (=> (not res!3177740) (not e!4735102))))

(declare-datatypes ((LexerInterface!8273 0))(
  ( (LexerInterfaceExt!8270 (__x!35288 Int)) (Lexer!8271) )
))
(declare-fun thiss!27054 () LexerInterface!8273)

(assert (=> start!756894 (= res!3177740 (is-Lexer!8271 thiss!27054))))

(assert (=> start!756894 e!4735102))

(assert (=> start!756894 true))

(declare-fun e!4735103 () Bool)

(assert (=> start!756894 e!4735103))

(declare-fun e!4735104 () Bool)

(assert (=> start!756894 e!4735104))

(declare-fun e!4735106 () Bool)

(assert (=> start!756894 e!4735106))

(declare-fun e!4735099 () Bool)

(assert (=> start!756894 e!4735099))

(declare-fun tp_is_empty!54503 () Bool)

(assert (=> start!756894 tp_is_empty!54503))

(declare-fun tp!2407852 () Bool)

(declare-fun b!8039143 () Bool)

(declare-fun inv!96875 (String!84791) Bool)

(declare-fun inv!96878 (TokenValueInjection!17314) Bool)

(assert (=> b!8039143 (= e!4735099 (and tp!2407852 (inv!96875 (tag!9547 rNSep!142)) (inv!96878 (transformation!8683 rNSep!142)) e!4735101))))

(declare-datatypes ((List!75181 0))(
  ( (Nil!75055) (Cons!75055 (h!81503 Rule!17166) (t!390951 List!75181)) )
))
(declare-fun rules!4142 () List!75181)

(declare-fun tp!2407846 () Bool)

(declare-fun b!8039144 () Bool)

(declare-fun e!4735094 () Bool)

(declare-fun e!4735100 () Bool)

(assert (=> b!8039144 (= e!4735100 (and tp!2407846 (inv!96875 (tag!9547 (h!81503 rules!4142))) (inv!96878 (transformation!8683 (h!81503 rules!4142))) e!4735094))))

(declare-fun e!4735098 () Bool)

(assert (=> b!8039145 (= e!4735098 (and tp!2407843 tp!2407851))))

(assert (=> b!8039146 (= e!4735094 (and tp!2407845 tp!2407842))))

(declare-fun tp!2407854 () Bool)

(declare-fun b!8039147 () Bool)

(declare-fun e!4735097 () Bool)

(declare-fun e!4735095 () Bool)

(declare-fun rulesRec!188 () List!75181)

(assert (=> b!8039147 (= e!4735097 (and tp!2407854 (inv!96875 (tag!9547 (h!81503 rulesRec!188))) (inv!96878 (transformation!8683 (h!81503 rulesRec!188))) e!4735095))))

(declare-fun b!8039148 () Bool)

(declare-fun res!3177734 () Bool)

(assert (=> b!8039148 (=> (not res!3177734) (not e!4735102))))

(declare-fun contains!20950 (List!75181 Rule!17166) Bool)

(assert (=> b!8039148 (= res!3177734 (contains!20950 rules!4142 rNSep!142))))

(declare-fun b!8039149 () Bool)

(declare-fun tp!2407853 () Bool)

(assert (=> b!8039149 (= e!4735106 (and e!4735097 tp!2407853))))

(declare-fun b!8039150 () Bool)

(declare-fun tp!2407847 () Bool)

(assert (=> b!8039150 (= e!4735103 (and e!4735100 tp!2407847))))

(declare-fun b!8039151 () Bool)

(declare-fun res!3177739 () Bool)

(assert (=> b!8039151 (=> (not res!3177739) (not e!4735102))))

(assert (=> b!8039151 (= res!3177739 (contains!20950 rulesRec!188 rNSep!142))))

(declare-fun b!8039152 () Bool)

(declare-fun res!3177735 () Bool)

(assert (=> b!8039152 (=> (not res!3177735) (not e!4735102))))

(declare-fun rulesInvariant!6741 (LexerInterface!8273 List!75181) Bool)

(assert (=> b!8039152 (= res!3177735 (rulesInvariant!6741 thiss!27054 rules!4142))))

(declare-fun b!8039153 () Bool)

(assert (=> b!8039153 (= e!4735102 false)))

(declare-fun lt!2722173 () Bool)

(declare-fun ruleDisjointCharsFromAllFromOtherType!966 (Rule!17166 List!75181) Bool)

(assert (=> b!8039153 (= lt!2722173 (ruleDisjointCharsFromAllFromOtherType!966 rNSep!142 rules!4142))))

(declare-fun b!8039154 () Bool)

(declare-fun res!3177738 () Bool)

(assert (=> b!8039154 (=> (not res!3177738) (not e!4735102))))

(assert (=> b!8039154 (= res!3177738 (contains!20950 rules!4142 rSep!142))))

(declare-fun b!8039155 () Bool)

(declare-fun tp!2407850 () Bool)

(assert (=> b!8039155 (= e!4735104 (and tp!2407850 (inv!96875 (tag!9547 rSep!142)) (inv!96878 (transformation!8683 rSep!142)) e!4735098))))

(declare-fun b!8039156 () Bool)

(declare-fun res!3177732 () Bool)

(assert (=> b!8039156 (=> (not res!3177732) (not e!4735102))))

(assert (=> b!8039156 (= res!3177732 (and (is-Cons!75055 rulesRec!188) (= (h!81503 rulesRec!188) rNSep!142)))))

(declare-fun b!8039157 () Bool)

(declare-fun res!3177737 () Bool)

(assert (=> b!8039157 (=> (not res!3177737) (not e!4735102))))

(declare-fun sepAndNonSepRulesDisjointChars!2043 (List!75181 List!75181) Bool)

(assert (=> b!8039157 (= res!3177737 (sepAndNonSepRulesDisjointChars!2043 rules!4142 rulesRec!188))))

(assert (=> b!8039158 (= e!4735095 (and tp!2407844 tp!2407855))))

(assert (= (and start!756894 res!3177740) b!8039152))

(assert (= (and b!8039152 res!3177735) b!8039154))

(assert (= (and b!8039154 res!3177738) b!8039151))

(assert (= (and b!8039151 res!3177739) b!8039148))

(assert (= (and b!8039148 res!3177734) b!8039140))

(assert (= (and b!8039140 res!3177733) b!8039142))

(assert (= (and b!8039142 res!3177736) b!8039157))

(assert (= (and b!8039157 res!3177737) b!8039156))

(assert (= (and b!8039156 res!3177732) b!8039153))

(assert (= b!8039144 b!8039146))

(assert (= b!8039150 b!8039144))

(assert (= (and start!756894 (is-Cons!75055 rules!4142)) b!8039150))

(assert (= b!8039155 b!8039145))

(assert (= start!756894 b!8039155))

(assert (= b!8039147 b!8039158))

(assert (= b!8039149 b!8039147))

(assert (= (and start!756894 (is-Cons!75055 rulesRec!188)) b!8039149))

(assert (= b!8039143 b!8039141))

(assert (= start!756894 b!8039143))

(declare-fun m!8394206 () Bool)

(assert (=> b!8039154 m!8394206))

(declare-fun m!8394208 () Bool)

(assert (=> b!8039152 m!8394208))

(declare-fun m!8394210 () Bool)

(assert (=> b!8039143 m!8394210))

(declare-fun m!8394212 () Bool)

(assert (=> b!8039143 m!8394212))

(declare-fun m!8394214 () Bool)

(assert (=> b!8039153 m!8394214))

(declare-fun m!8394216 () Bool)

(assert (=> b!8039142 m!8394216))

(assert (=> b!8039142 m!8394216))

(declare-fun m!8394218 () Bool)

(assert (=> b!8039142 m!8394218))

(declare-fun m!8394220 () Bool)

(assert (=> b!8039151 m!8394220))

(declare-fun m!8394222 () Bool)

(assert (=> b!8039157 m!8394222))

(declare-fun m!8394224 () Bool)

(assert (=> b!8039147 m!8394224))

(declare-fun m!8394226 () Bool)

(assert (=> b!8039147 m!8394226))

(declare-fun m!8394228 () Bool)

(assert (=> b!8039155 m!8394228))

(declare-fun m!8394230 () Bool)

(assert (=> b!8039155 m!8394230))

(declare-fun m!8394232 () Bool)

(assert (=> b!8039148 m!8394232))

(declare-fun m!8394234 () Bool)

(assert (=> b!8039144 m!8394234))

(declare-fun m!8394236 () Bool)

(assert (=> b!8039144 m!8394236))

(push 1)

(assert (not b!8039154))

(assert b_and!353737)

(assert (not b!8039149))

(assert (not b!8039155))

(assert (not b!8039148))

(assert b_and!353743)

(assert (not b_next!136095))

(assert (not b_next!136097))

(assert b_and!353747)

(assert (not b!8039157))

(assert b_and!353749)

(assert b_and!353739)

(assert (not b!8039153))

(assert (not b!8039152))

(assert (not b!8039151))

(assert (not b_next!136089))

(assert b_and!353741)

(assert (not b!8039142))

(assert (not b_next!136099))

(assert (not b!8039143))

(assert b_and!353745)

(assert (not b_next!136101))

(assert (not b!8039147))

(assert (not b!8039150))

(assert b_and!353735)

(assert (not b_next!136091))

(assert (not b_next!136103))

(assert (not b_next!136093))

(assert tp_is_empty!54503)

(assert (not b!8039144))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353737)

(assert (not b_next!136089))

(assert b_and!353743)

(assert (not b_next!136095))

(assert (not b_next!136097))

(assert b_and!353747)

(assert b_and!353749)

(assert b_and!353739)

(assert b_and!353741)

(assert (not b_next!136099))

(assert b_and!353745)

(assert (not b_next!136101))

(assert b_and!353735)

(assert (not b_next!136091))

(assert (not b_next!136103))

(assert (not b_next!136093))

(check-sat)

(pop 1)


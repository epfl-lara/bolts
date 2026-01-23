; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757274 () Bool)

(assert start!757274)

(declare-fun b!8043169 () Bool)

(declare-fun b_free!135955 () Bool)

(declare-fun b_next!136745 () Bool)

(assert (=> b!8043169 (= b_free!135955 (not b_next!136745))))

(declare-fun tp!2410149 () Bool)

(declare-fun b_and!354391 () Bool)

(assert (=> b!8043169 (= tp!2410149 b_and!354391)))

(declare-fun b_free!135957 () Bool)

(declare-fun b_next!136747 () Bool)

(assert (=> b!8043169 (= b_free!135957 (not b_next!136747))))

(declare-fun tp!2410153 () Bool)

(declare-fun b_and!354393 () Bool)

(assert (=> b!8043169 (= tp!2410153 b_and!354393)))

(declare-fun b!8043168 () Bool)

(declare-fun b_free!135959 () Bool)

(declare-fun b_next!136749 () Bool)

(assert (=> b!8043168 (= b_free!135959 (not b_next!136749))))

(declare-fun tp!2410144 () Bool)

(declare-fun b_and!354395 () Bool)

(assert (=> b!8043168 (= tp!2410144 b_and!354395)))

(declare-fun b_free!135961 () Bool)

(declare-fun b_next!136751 () Bool)

(assert (=> b!8043168 (= b_free!135961 (not b_next!136751))))

(declare-fun tp!2410147 () Bool)

(declare-fun b_and!354397 () Bool)

(assert (=> b!8043168 (= tp!2410147 b_and!354397)))

(declare-fun b!8043167 () Bool)

(declare-fun b_free!135963 () Bool)

(declare-fun b_next!136753 () Bool)

(assert (=> b!8043167 (= b_free!135963 (not b_next!136753))))

(declare-fun tp!2410150 () Bool)

(declare-fun b_and!354399 () Bool)

(assert (=> b!8043167 (= tp!2410150 b_and!354399)))

(declare-fun b_free!135965 () Bool)

(declare-fun b_next!136755 () Bool)

(assert (=> b!8043167 (= b_free!135965 (not b_next!136755))))

(declare-fun tp!2410152 () Bool)

(declare-fun b_and!354401 () Bool)

(assert (=> b!8043167 (= tp!2410152 b_and!354401)))

(declare-fun b!8043164 () Bool)

(declare-fun e!4737976 () Bool)

(declare-fun e!4737973 () Bool)

(declare-fun tp!2410151 () Bool)

(assert (=> b!8043164 (= e!4737976 (and e!4737973 tp!2410151))))

(declare-fun b!8043165 () Bool)

(declare-fun res!3179372 () Bool)

(declare-fun e!4737982 () Bool)

(assert (=> b!8043165 (=> (not res!3179372) (not e!4737982))))

(declare-datatypes ((C!43918 0))(
  ( (C!43919 (val!32735 Int)) )
))
(declare-datatypes ((List!75303 0))(
  ( (Nil!75177) (Cons!75177 (h!81625 C!43918) (t!391073 List!75303)) )
))
(declare-datatypes ((IArray!32035 0))(
  ( (IArray!32036 (innerList!16075 List!75303)) )
))
(declare-datatypes ((Conc!15987 0))(
  ( (Node!15987 (left!57304 Conc!15987) (right!57634 Conc!15987) (csize!32204 Int) (cheight!16198 Int)) (Leaf!30657 (xs!19385 IArray!32035) (csize!32205 Int)) (Empty!15987) )
))
(declare-datatypes ((List!75304 0))(
  ( (Nil!75178) (Cons!75178 (h!81626 (_ BitVec 16)) (t!391074 List!75304)) )
))
(declare-datatypes ((Regex!21790 0))(
  ( (ElementMatch!21790 (c!1475211 C!43918)) (Concat!30829 (regOne!44092 Regex!21790) (regTwo!44092 Regex!21790)) (EmptyExpr!21790) (Star!21790 (reg!22119 Regex!21790)) (EmptyLang!21790) (Union!21790 (regOne!44093 Regex!21790) (regTwo!44093 Regex!21790)) )
))
(declare-datatypes ((String!84970 0))(
  ( (String!84971 (value!291540 String)) )
))
(declare-datatypes ((TokenValue!9039 0))(
  ( (FloatLiteralValue!18078 (text!63718 List!75304)) (TokenValueExt!9038 (__x!35359 Int)) (Broken!45195 (value!291541 List!75304)) (Object!9164) (End!9039) (Def!9039) (Underscore!9039) (Match!9039) (Else!9039) (Error!9039) (Case!9039) (If!9039) (Extends!9039) (Abstract!9039) (Class!9039) (Val!9039) (DelimiterValue!18078 (del!9099 List!75304)) (KeywordValue!9045 (value!291542 List!75304)) (CommentValue!18078 (value!291543 List!75304)) (WhitespaceValue!18078 (value!291544 List!75304)) (IndentationValue!9039 (value!291545 List!75304)) (String!84972) (Int32!9039) (Broken!45196 (value!291546 List!75304)) (Boolean!9040) (Unit!171058) (OperatorValue!9042 (op!9099 List!75304)) (IdentifierValue!18078 (value!291547 List!75304)) (IdentifierValue!18079 (value!291548 List!75304)) (WhitespaceValue!18079 (value!291549 List!75304)) (True!18078) (False!18078) (Broken!45197 (value!291550 List!75304)) (Broken!45198 (value!291551 List!75304)) (True!18079) (RightBrace!9039) (RightBracket!9039) (Colon!9039) (Null!9039) (Comma!9039) (LeftBracket!9039) (False!18079) (LeftBrace!9039) (ImaginaryLiteralValue!9039 (text!63719 List!75304)) (StringLiteralValue!27117 (value!291552 List!75304)) (EOFValue!9039 (value!291553 List!75304)) (IdentValue!9039 (value!291554 List!75304)) (DelimiterValue!18079 (value!291555 List!75304)) (DedentValue!9039 (value!291556 List!75304)) (NewLineValue!9039 (value!291557 List!75304)) (IntegerValue!27117 (value!291558 (_ BitVec 32)) (text!63720 List!75304)) (IntegerValue!27118 (value!291559 Int) (text!63721 List!75304)) (Times!9039) (Or!9039) (Equal!9039) (Minus!9039) (Broken!45199 (value!291560 List!75304)) (And!9039) (Div!9039) (LessEqual!9039) (Mod!9039) (Concat!30830) (Not!9039) (Plus!9039) (SpaceValue!9039 (value!291561 List!75304)) (IntegerValue!27119 (value!291562 Int) (text!63722 List!75304)) (StringLiteralValue!27118 (text!63723 List!75304)) (FloatLiteralValue!18079 (text!63724 List!75304)) (BytesLiteralValue!9039 (value!291563 List!75304)) (CommentValue!18079 (value!291564 List!75304)) (StringLiteralValue!27119 (value!291565 List!75304)) (ErrorTokenValue!9039 (msg!9100 List!75304)) )
))
(declare-datatypes ((BalanceConc!30930 0))(
  ( (BalanceConc!30931 (c!1475212 Conc!15987)) )
))
(declare-datatypes ((TokenValueInjection!17386 0))(
  ( (TokenValueInjection!17387 (toValue!11794 Int) (toChars!11653 Int)) )
))
(declare-datatypes ((Rule!17238 0))(
  ( (Rule!17239 (regex!8719 Regex!21790) (tag!9583 String!84970) (isSeparator!8719 Bool) (transformation!8719 TokenValueInjection!17386)) )
))
(declare-fun rSep!153 () Rule!17238)

(declare-fun c!6885 () C!43918)

(declare-fun contains!21023 (List!75303 C!43918) Bool)

(declare-fun usedCharacters!1297 (Regex!21790) List!75303)

(assert (=> b!8043165 (= res!3179372 (contains!21023 (usedCharacters!1297 (regex!8719 rSep!153)) c!6885))))

(declare-fun b!8043166 () Bool)

(declare-fun res!3179375 () Bool)

(assert (=> b!8043166 (=> (not res!3179375) (not e!4737982))))

(declare-fun rNSep!153 () Rule!17238)

(declare-datatypes ((List!75305 0))(
  ( (Nil!75179) (Cons!75179 (h!81627 Rule!17238) (t!391075 List!75305)) )
))
(declare-fun rules!4166 () List!75305)

(declare-fun ruleDisjointCharsFromAllFromOtherType!993 (Rule!17238 List!75305) Bool)

(assert (=> b!8043166 (= res!3179375 (ruleDisjointCharsFromAllFromOtherType!993 rNSep!153 rules!4166))))

(declare-fun e!4737978 () Bool)

(assert (=> b!8043167 (= e!4737978 (and tp!2410150 tp!2410152))))

(declare-fun e!4737974 () Bool)

(assert (=> b!8043168 (= e!4737974 (and tp!2410144 tp!2410147))))

(declare-fun e!4737975 () Bool)

(assert (=> b!8043169 (= e!4737975 (and tp!2410149 tp!2410153))))

(declare-fun b!8043171 () Bool)

(declare-datatypes ((LexerInterface!8309 0))(
  ( (LexerInterfaceExt!8306 (__x!35360 Int)) (Lexer!8307) )
))
(declare-fun thiss!27104 () LexerInterface!8309)

(declare-fun rulesInvariant!6777 (LexerInterface!8309 List!75305) Bool)

(assert (=> b!8043171 (= e!4737982 (not (rulesInvariant!6777 thiss!27104 rules!4166)))))

(declare-fun b!8043172 () Bool)

(declare-fun res!3179373 () Bool)

(assert (=> b!8043172 (=> (not res!3179373) (not e!4737982))))

(assert (=> b!8043172 (= res!3179373 (rulesInvariant!6777 thiss!27104 rules!4166))))

(declare-fun b!8043173 () Bool)

(declare-fun res!3179369 () Bool)

(assert (=> b!8043173 (=> (not res!3179369) (not e!4737982))))

(assert (=> b!8043173 (= res!3179369 (and (not (isSeparator!8719 rNSep!153)) (isSeparator!8719 rSep!153)))))

(declare-fun b!8043174 () Bool)

(declare-fun res!3179370 () Bool)

(assert (=> b!8043174 (=> (not res!3179370) (not e!4737982))))

(assert (=> b!8043174 (= res!3179370 (and (or (not (is-Cons!75179 rules!4166)) (not (= (h!81627 rules!4166) rSep!153))) (is-Cons!75179 rules!4166)))))

(declare-fun tp!2410148 () Bool)

(declare-fun b!8043175 () Bool)

(declare-fun e!4737981 () Bool)

(declare-fun inv!96965 (String!84970) Bool)

(declare-fun inv!96968 (TokenValueInjection!17386) Bool)

(assert (=> b!8043175 (= e!4737981 (and tp!2410148 (inv!96965 (tag!9583 rNSep!153)) (inv!96968 (transformation!8719 rNSep!153)) e!4737975))))

(declare-fun b!8043176 () Bool)

(declare-fun tp!2410145 () Bool)

(assert (=> b!8043176 (= e!4737973 (and tp!2410145 (inv!96965 (tag!9583 (h!81627 rules!4166))) (inv!96968 (transformation!8719 (h!81627 rules!4166))) e!4737974))))

(declare-fun b!8043177 () Bool)

(declare-fun e!4737972 () Bool)

(declare-fun tp!2410146 () Bool)

(assert (=> b!8043177 (= e!4737972 (and tp!2410146 (inv!96965 (tag!9583 rSep!153)) (inv!96968 (transformation!8719 rSep!153)) e!4737978))))

(declare-fun res!3179371 () Bool)

(assert (=> start!757274 (=> (not res!3179371) (not e!4737982))))

(assert (=> start!757274 (= res!3179371 (is-Lexer!8307 thiss!27104))))

(assert (=> start!757274 e!4737982))

(assert (=> start!757274 e!4737976))

(declare-fun tp_is_empty!54575 () Bool)

(assert (=> start!757274 tp_is_empty!54575))

(assert (=> start!757274 true))

(assert (=> start!757274 e!4737981))

(assert (=> start!757274 e!4737972))

(declare-fun b!8043170 () Bool)

(declare-fun res!3179374 () Bool)

(assert (=> b!8043170 (=> (not res!3179374) (not e!4737982))))

(declare-fun contains!21024 (List!75305 Rule!17238) Bool)

(assert (=> b!8043170 (= res!3179374 (contains!21024 rules!4166 rSep!153))))

(assert (= (and start!757274 res!3179371) b!8043172))

(assert (= (and b!8043172 res!3179373) b!8043170))

(assert (= (and b!8043170 res!3179374) b!8043165))

(assert (= (and b!8043165 res!3179372) b!8043173))

(assert (= (and b!8043173 res!3179369) b!8043166))

(assert (= (and b!8043166 res!3179375) b!8043174))

(assert (= (and b!8043174 res!3179370) b!8043171))

(assert (= b!8043176 b!8043168))

(assert (= b!8043164 b!8043176))

(assert (= (and start!757274 (is-Cons!75179 rules!4166)) b!8043164))

(assert (= b!8043175 b!8043169))

(assert (= start!757274 b!8043175))

(assert (= b!8043177 b!8043167))

(assert (= start!757274 b!8043177))

(declare-fun m!8396618 () Bool)

(assert (=> b!8043177 m!8396618))

(declare-fun m!8396620 () Bool)

(assert (=> b!8043177 m!8396620))

(declare-fun m!8396622 () Bool)

(assert (=> b!8043175 m!8396622))

(declare-fun m!8396624 () Bool)

(assert (=> b!8043175 m!8396624))

(declare-fun m!8396626 () Bool)

(assert (=> b!8043176 m!8396626))

(declare-fun m!8396628 () Bool)

(assert (=> b!8043176 m!8396628))

(declare-fun m!8396630 () Bool)

(assert (=> b!8043166 m!8396630))

(declare-fun m!8396632 () Bool)

(assert (=> b!8043171 m!8396632))

(declare-fun m!8396634 () Bool)

(assert (=> b!8043170 m!8396634))

(assert (=> b!8043172 m!8396632))

(declare-fun m!8396636 () Bool)

(assert (=> b!8043165 m!8396636))

(assert (=> b!8043165 m!8396636))

(declare-fun m!8396638 () Bool)

(assert (=> b!8043165 m!8396638))

(push 1)

(assert b_and!354401)

(assert b_and!354395)

(assert b_and!354391)

(assert (not b_next!136749))

(assert (not b!8043165))

(assert (not b!8043170))

(assert (not b!8043175))

(assert (not b_next!136755))

(assert (not b_next!136751))

(assert b_and!354399)

(assert (not b!8043177))

(assert (not b!8043176))

(assert b_and!354393)

(assert (not b!8043171))

(assert (not b!8043172))

(assert (not b_next!136753))

(assert (not b_next!136745))

(assert tp_is_empty!54575)

(assert b_and!354397)

(assert (not b_next!136747))

(assert (not b!8043164))

(assert (not b!8043166))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354401)

(assert b_and!354395)

(assert b_and!354391)

(assert (not b_next!136749))

(assert b_and!354397)

(assert (not b_next!136755))

(assert (not b_next!136751))

(assert b_and!354399)

(assert b_and!354393)

(assert (not b_next!136747))

(assert (not b_next!136753))

(assert (not b_next!136745))

(check-sat)

(pop 1)


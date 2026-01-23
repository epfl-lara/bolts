; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!353618 () Bool)

(assert start!353618)

(declare-fun b!3765223 () Bool)

(declare-fun b_free!100825 () Bool)

(declare-fun b_next!101529 () Bool)

(assert (=> b!3765223 (= b_free!100825 (not b_next!101529))))

(declare-fun tp!1150143 () Bool)

(declare-fun b_and!279619 () Bool)

(assert (=> b!3765223 (= tp!1150143 b_and!279619)))

(declare-fun b_free!100827 () Bool)

(declare-fun b_next!101531 () Bool)

(assert (=> b!3765223 (= b_free!100827 (not b_next!101531))))

(declare-fun tp!1150141 () Bool)

(declare-fun b_and!279621 () Bool)

(assert (=> b!3765223 (= tp!1150141 b_and!279621)))

(declare-fun b!3765219 () Bool)

(declare-fun e!2328601 () Bool)

(declare-datatypes ((String!45638 0))(
  ( (String!45639 (value!196171 String)) )
))
(declare-datatypes ((C!22318 0))(
  ( (C!22319 (val!13235 Int)) )
))
(declare-datatypes ((List!40278 0))(
  ( (Nil!40154) (Cons!40154 (h!45574 (_ BitVec 16)) (t!304281 List!40278)) )
))
(declare-datatypes ((Regex!11066 0))(
  ( (ElementMatch!11066 (c!652272 C!22318)) (Concat!17457 (regOne!22644 Regex!11066) (regTwo!22644 Regex!11066)) (EmptyExpr!11066) (Star!11066 (reg!11395 Regex!11066)) (EmptyLang!11066) (Union!11066 (regOne!22645 Regex!11066) (regTwo!22645 Regex!11066)) )
))
(declare-datatypes ((TokenValue!6391 0))(
  ( (FloatLiteralValue!12782 (text!45182 List!40278)) (TokenValueExt!6390 (__x!24999 Int)) (Broken!31955 (value!196172 List!40278)) (Object!6514) (End!6391) (Def!6391) (Underscore!6391) (Match!6391) (Else!6391) (Error!6391) (Case!6391) (If!6391) (Extends!6391) (Abstract!6391) (Class!6391) (Val!6391) (DelimiterValue!12782 (del!6451 List!40278)) (KeywordValue!6397 (value!196173 List!40278)) (CommentValue!12782 (value!196174 List!40278)) (WhitespaceValue!12782 (value!196175 List!40278)) (IndentationValue!6391 (value!196176 List!40278)) (String!45640) (Int32!6391) (Broken!31956 (value!196177 List!40278)) (Boolean!6392) (Unit!57878) (OperatorValue!6394 (op!6451 List!40278)) (IdentifierValue!12782 (value!196178 List!40278)) (IdentifierValue!12783 (value!196179 List!40278)) (WhitespaceValue!12783 (value!196180 List!40278)) (True!12782) (False!12782) (Broken!31957 (value!196181 List!40278)) (Broken!31958 (value!196182 List!40278)) (True!12783) (RightBrace!6391) (RightBracket!6391) (Colon!6391) (Null!6391) (Comma!6391) (LeftBracket!6391) (False!12783) (LeftBrace!6391) (ImaginaryLiteralValue!6391 (text!45183 List!40278)) (StringLiteralValue!19173 (value!196183 List!40278)) (EOFValue!6391 (value!196184 List!40278)) (IdentValue!6391 (value!196185 List!40278)) (DelimiterValue!12783 (value!196186 List!40278)) (DedentValue!6391 (value!196187 List!40278)) (NewLineValue!6391 (value!196188 List!40278)) (IntegerValue!19173 (value!196189 (_ BitVec 32)) (text!45184 List!40278)) (IntegerValue!19174 (value!196190 Int) (text!45185 List!40278)) (Times!6391) (Or!6391) (Equal!6391) (Minus!6391) (Broken!31959 (value!196191 List!40278)) (And!6391) (Div!6391) (LessEqual!6391) (Mod!6391) (Concat!17458) (Not!6391) (Plus!6391) (SpaceValue!6391 (value!196192 List!40278)) (IntegerValue!19175 (value!196193 Int) (text!45186 List!40278)) (StringLiteralValue!19174 (text!45187 List!40278)) (FloatLiteralValue!12783 (text!45188 List!40278)) (BytesLiteralValue!6391 (value!196194 List!40278)) (CommentValue!12783 (value!196195 List!40278)) (StringLiteralValue!19175 (value!196196 List!40278)) (ErrorTokenValue!6391 (msg!6452 List!40278)) )
))
(declare-datatypes ((List!40279 0))(
  ( (Nil!40155) (Cons!40155 (h!45575 C!22318) (t!304282 List!40279)) )
))
(declare-datatypes ((IArray!24621 0))(
  ( (IArray!24622 (innerList!12368 List!40279)) )
))
(declare-datatypes ((Conc!12308 0))(
  ( (Node!12308 (left!31090 Conc!12308) (right!31420 Conc!12308) (csize!24846 Int) (cheight!12519 Int)) (Leaf!19087 (xs!15518 IArray!24621) (csize!24847 Int)) (Empty!12308) )
))
(declare-datatypes ((BalanceConc!24210 0))(
  ( (BalanceConc!24211 (c!652273 Conc!12308)) )
))
(declare-datatypes ((TokenValueInjection!12210 0))(
  ( (TokenValueInjection!12211 (toValue!8521 Int) (toChars!8380 Int)) )
))
(declare-datatypes ((Rule!12122 0))(
  ( (Rule!12123 (regex!6161 Regex!11066) (tag!7021 String!45638) (isSeparator!6161 Bool) (transformation!6161 TokenValueInjection!12210)) )
))
(declare-datatypes ((Token!11460 0))(
  ( (Token!11461 (value!196197 TokenValue!6391) (rule!8925 Rule!12122) (size!30232 Int) (originalCharacters!6761 List!40279)) )
))
(declare-datatypes ((List!40280 0))(
  ( (Nil!40156) (Cons!40156 (h!45576 Token!11460) (t!304283 List!40280)) )
))
(declare-fun l!4168 () List!40280)

(declare-fun tp!1150140 () Bool)

(declare-fun e!2328595 () Bool)

(declare-fun inv!53912 (Token!11460) Bool)

(assert (=> b!3765219 (= e!2328595 (and (inv!53912 (h!45576 l!4168)) e!2328601 tp!1150140))))

(declare-fun res!1524385 () Bool)

(declare-fun e!2328597 () Bool)

(assert (=> start!353618 (=> (not res!1524385) (not e!2328597))))

(declare-datatypes ((LexerInterface!5750 0))(
  ( (LexerInterfaceExt!5747 (__x!25000 Int)) (Lexer!5748) )
))
(declare-fun thiss!13564 () LexerInterface!5750)

(assert (=> start!353618 (= res!1524385 (and (is-Lexer!5748 thiss!13564) (is-Cons!40156 l!4168)))))

(assert (=> start!353618 e!2328597))

(assert (=> start!353618 true))

(assert (=> start!353618 e!2328595))

(declare-fun tp!1150139 () Bool)

(declare-fun e!2328600 () Bool)

(declare-fun b!3765220 () Bool)

(declare-fun inv!21 (TokenValue!6391) Bool)

(assert (=> b!3765220 (= e!2328601 (and (inv!21 (value!196197 (h!45576 l!4168))) e!2328600 tp!1150139))))

(declare-fun b!3765221 () Bool)

(assert (=> b!3765221 (= e!2328597 false)))

(declare-fun lt!1302830 () List!40279)

(declare-fun list!14841 (BalanceConc!24210) List!40279)

(declare-fun charsOf!4011 (Token!11460) BalanceConc!24210)

(assert (=> b!3765221 (= lt!1302830 (list!14841 (charsOf!4011 (h!45576 l!4168))))))

(declare-fun e!2328599 () Bool)

(declare-fun b!3765222 () Bool)

(declare-fun tp!1150142 () Bool)

(declare-fun inv!53909 (String!45638) Bool)

(declare-fun inv!53913 (TokenValueInjection!12210) Bool)

(assert (=> b!3765222 (= e!2328600 (and tp!1150142 (inv!53909 (tag!7021 (rule!8925 (h!45576 l!4168)))) (inv!53913 (transformation!6161 (rule!8925 (h!45576 l!4168)))) e!2328599))))

(assert (=> b!3765223 (= e!2328599 (and tp!1150143 tp!1150141))))

(assert (= (and start!353618 res!1524385) b!3765221))

(assert (= b!3765222 b!3765223))

(assert (= b!3765220 b!3765222))

(assert (= b!3765219 b!3765220))

(assert (= (and start!353618 (is-Cons!40156 l!4168)) b!3765219))

(declare-fun m!4261269 () Bool)

(assert (=> b!3765219 m!4261269))

(declare-fun m!4261271 () Bool)

(assert (=> b!3765220 m!4261271))

(declare-fun m!4261273 () Bool)

(assert (=> b!3765221 m!4261273))

(assert (=> b!3765221 m!4261273))

(declare-fun m!4261275 () Bool)

(assert (=> b!3765221 m!4261275))

(declare-fun m!4261277 () Bool)

(assert (=> b!3765222 m!4261277))

(declare-fun m!4261279 () Bool)

(assert (=> b!3765222 m!4261279))

(push 1)

(assert (not b!3765219))

(assert (not b!3765222))

(assert (not b_next!101531))

(assert b_and!279621)

(assert (not b!3765220))

(assert (not b_next!101529))

(assert (not b!3765221))

(assert b_and!279619)

(check-sat)

(pop 1)

(push 1)

(assert b_and!279621)

(assert b_and!279619)

(assert (not b_next!101529))

(assert (not b_next!101531))

(check-sat)

(pop 1)


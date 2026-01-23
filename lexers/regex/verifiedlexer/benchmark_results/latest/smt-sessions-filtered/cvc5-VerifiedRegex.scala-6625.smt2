; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349452 () Bool)

(assert start!349452)

(declare-fun b!3705458 () Bool)

(declare-fun b_free!99085 () Bool)

(declare-fun b_next!99789 () Bool)

(assert (=> b!3705458 (= b_free!99085 (not b_next!99789))))

(declare-fun tp!1127094 () Bool)

(declare-fun b_and!277319 () Bool)

(assert (=> b!3705458 (= tp!1127094 b_and!277319)))

(declare-fun b_free!99087 () Bool)

(declare-fun b_next!99791 () Bool)

(assert (=> b!3705458 (= b_free!99087 (not b_next!99791))))

(declare-fun tp!1127093 () Bool)

(declare-fun b_and!277321 () Bool)

(assert (=> b!3705458 (= tp!1127093 b_and!277321)))

(declare-fun b!3705453 () Bool)

(declare-fun e!2295378 () Bool)

(declare-fun e!2295380 () Bool)

(declare-fun tp!1127092 () Bool)

(assert (=> b!3705453 (= e!2295378 (and e!2295380 tp!1127092))))

(declare-fun b!3705454 () Bool)

(declare-fun res!1507422 () Bool)

(declare-fun e!2295379 () Bool)

(assert (=> b!3705454 (=> (not res!1507422) (not e!2295379))))

(declare-datatypes ((LexerInterface!5618 0))(
  ( (LexerInterfaceExt!5615 (__x!24735 Int)) (Lexer!5616) )
))
(declare-fun thiss!19663 () LexerInterface!5618)

(declare-datatypes ((C!21762 0))(
  ( (C!21763 (val!12929 Int)) )
))
(declare-datatypes ((List!39641 0))(
  ( (Nil!39517) (Cons!39517 (h!44937 C!21762) (t!302324 List!39641)) )
))
(declare-datatypes ((IArray!24257 0))(
  ( (IArray!24258 (innerList!12186 List!39641)) )
))
(declare-datatypes ((Conc!12126 0))(
  ( (Node!12126 (left!30699 Conc!12126) (right!31029 Conc!12126) (csize!24482 Int) (cheight!12337 Int)) (Leaf!18752 (xs!15328 IArray!24257) (csize!24483 Int)) (Empty!12126) )
))
(declare-datatypes ((BalanceConc!23866 0))(
  ( (BalanceConc!23867 (c!640008 Conc!12126)) )
))
(declare-datatypes ((List!39642 0))(
  ( (Nil!39518) (Cons!39518 (h!44938 (_ BitVec 16)) (t!302325 List!39642)) )
))
(declare-datatypes ((TokenValue!6259 0))(
  ( (FloatLiteralValue!12518 (text!44258 List!39642)) (TokenValueExt!6258 (__x!24736 Int)) (Broken!31295 (value!192212 List!39642)) (Object!6382) (End!6259) (Def!6259) (Underscore!6259) (Match!6259) (Else!6259) (Error!6259) (Case!6259) (If!6259) (Extends!6259) (Abstract!6259) (Class!6259) (Val!6259) (DelimiterValue!12518 (del!6319 List!39642)) (KeywordValue!6265 (value!192213 List!39642)) (CommentValue!12518 (value!192214 List!39642)) (WhitespaceValue!12518 (value!192215 List!39642)) (IndentationValue!6259 (value!192216 List!39642)) (String!44630) (Int32!6259) (Broken!31296 (value!192217 List!39642)) (Boolean!6260) (Unit!57418) (OperatorValue!6262 (op!6319 List!39642)) (IdentifierValue!12518 (value!192218 List!39642)) (IdentifierValue!12519 (value!192219 List!39642)) (WhitespaceValue!12519 (value!192220 List!39642)) (True!12518) (False!12518) (Broken!31297 (value!192221 List!39642)) (Broken!31298 (value!192222 List!39642)) (True!12519) (RightBrace!6259) (RightBracket!6259) (Colon!6259) (Null!6259) (Comma!6259) (LeftBracket!6259) (False!12519) (LeftBrace!6259) (ImaginaryLiteralValue!6259 (text!44259 List!39642)) (StringLiteralValue!18777 (value!192223 List!39642)) (EOFValue!6259 (value!192224 List!39642)) (IdentValue!6259 (value!192225 List!39642)) (DelimiterValue!12519 (value!192226 List!39642)) (DedentValue!6259 (value!192227 List!39642)) (NewLineValue!6259 (value!192228 List!39642)) (IntegerValue!18777 (value!192229 (_ BitVec 32)) (text!44260 List!39642)) (IntegerValue!18778 (value!192230 Int) (text!44261 List!39642)) (Times!6259) (Or!6259) (Equal!6259) (Minus!6259) (Broken!31299 (value!192231 List!39642)) (And!6259) (Div!6259) (LessEqual!6259) (Mod!6259) (Concat!17047) (Not!6259) (Plus!6259) (SpaceValue!6259 (value!192232 List!39642)) (IntegerValue!18779 (value!192233 Int) (text!44262 List!39642)) (StringLiteralValue!18778 (text!44263 List!39642)) (FloatLiteralValue!12519 (text!44264 List!39642)) (BytesLiteralValue!6259 (value!192234 List!39642)) (CommentValue!12519 (value!192235 List!39642)) (StringLiteralValue!18779 (value!192236 List!39642)) (ErrorTokenValue!6259 (msg!6320 List!39642)) )
))
(declare-datatypes ((Regex!10788 0))(
  ( (ElementMatch!10788 (c!640009 C!21762)) (Concat!17048 (regOne!22088 Regex!10788) (regTwo!22088 Regex!10788)) (EmptyExpr!10788) (Star!10788 (reg!11117 Regex!10788)) (EmptyLang!10788) (Union!10788 (regOne!22089 Regex!10788) (regTwo!22089 Regex!10788)) )
))
(declare-datatypes ((String!44631 0))(
  ( (String!44632 (value!192237 String)) )
))
(declare-datatypes ((TokenValueInjection!11946 0))(
  ( (TokenValueInjection!11947 (toValue!8373 Int) (toChars!8232 Int)) )
))
(declare-datatypes ((Rule!11858 0))(
  ( (Rule!11859 (regex!6029 Regex!10788) (tag!6887 String!44631) (isSeparator!6029 Bool) (transformation!6029 TokenValueInjection!11946)) )
))
(declare-datatypes ((List!39643 0))(
  ( (Nil!39519) (Cons!39519 (h!44939 Rule!11858) (t!302326 List!39643)) )
))
(declare-fun rules!2525 () List!39643)

(declare-fun rulesInvariant!5015 (LexerInterface!5618 List!39643) Bool)

(assert (=> b!3705454 (= res!1507422 (rulesInvariant!5015 thiss!19663 rules!2525))))

(declare-fun b!3705455 () Bool)

(declare-fun res!1507420 () Bool)

(assert (=> b!3705455 (=> (not res!1507420) (not e!2295379))))

(declare-fun tag!164 () String!44631)

(assert (=> b!3705455 (= res!1507420 (and (or (not (is-Cons!39519 rules!2525)) (not (= (tag!6887 (h!44939 rules!2525)) tag!164))) (is-Cons!39519 rules!2525) (not (= (tag!6887 (h!44939 rules!2525)) tag!164))))))

(declare-fun b!3705456 () Bool)

(assert (=> b!3705456 (= e!2295379 (not (rulesInvariant!5015 thiss!19663 rules!2525)))))

(declare-fun b!3705457 () Bool)

(declare-fun tp!1127091 () Bool)

(declare-fun e!2295382 () Bool)

(declare-fun inv!53011 (String!44631) Bool)

(declare-fun inv!53014 (TokenValueInjection!11946) Bool)

(assert (=> b!3705457 (= e!2295380 (and tp!1127091 (inv!53011 (tag!6887 (h!44939 rules!2525))) (inv!53014 (transformation!6029 (h!44939 rules!2525))) e!2295382))))

(assert (=> b!3705458 (= e!2295382 (and tp!1127094 tp!1127093))))

(declare-fun res!1507421 () Bool)

(assert (=> start!349452 (=> (not res!1507421) (not e!2295379))))

(assert (=> start!349452 (= res!1507421 (is-Lexer!5616 thiss!19663))))

(assert (=> start!349452 e!2295379))

(assert (=> start!349452 true))

(assert (=> start!349452 e!2295378))

(assert (=> start!349452 (inv!53011 tag!164)))

(assert (= (and start!349452 res!1507421) b!3705454))

(assert (= (and b!3705454 res!1507422) b!3705455))

(assert (= (and b!3705455 res!1507420) b!3705456))

(assert (= b!3705457 b!3705458))

(assert (= b!3705453 b!3705457))

(assert (= (and start!349452 (is-Cons!39519 rules!2525)) b!3705453))

(declare-fun m!4215765 () Bool)

(assert (=> b!3705454 m!4215765))

(assert (=> b!3705456 m!4215765))

(declare-fun m!4215767 () Bool)

(assert (=> b!3705457 m!4215767))

(declare-fun m!4215769 () Bool)

(assert (=> b!3705457 m!4215769))

(declare-fun m!4215771 () Bool)

(assert (=> start!349452 m!4215771))

(push 1)

(assert (not b!3705456))

(assert (not b!3705453))

(assert (not start!349452))

(assert b_and!277319)

(assert b_and!277321)

(assert (not b_next!99791))

(assert (not b!3705454))

(assert (not b!3705457))

(assert (not b_next!99789))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277321)

(assert b_and!277319)

(assert (not b_next!99791))

(assert (not b_next!99789))

(check-sat)

(pop 1)


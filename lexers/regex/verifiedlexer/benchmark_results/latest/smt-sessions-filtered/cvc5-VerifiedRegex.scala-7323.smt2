; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389786 () Bool)

(assert start!389786)

(declare-fun b!4113774 () Bool)

(declare-fun b_free!115807 () Bool)

(declare-fun b_next!116511 () Bool)

(assert (=> b!4113774 (= b_free!115807 (not b_next!116511))))

(declare-fun tp!1252488 () Bool)

(declare-fun b_and!317693 () Bool)

(assert (=> b!4113774 (= tp!1252488 b_and!317693)))

(declare-fun b_free!115809 () Bool)

(declare-fun b_next!116513 () Bool)

(assert (=> b!4113774 (= b_free!115809 (not b_next!116513))))

(declare-fun tp!1252486 () Bool)

(declare-fun b_and!317695 () Bool)

(assert (=> b!4113774 (= tp!1252486 b_and!317695)))

(declare-fun b!4113772 () Bool)

(declare-fun e!2552134 () Bool)

(declare-datatypes ((String!50986 0))(
  ( (String!50987 (value!226242 String)) )
))
(declare-datatypes ((List!44468 0))(
  ( (Nil!44344) (Cons!44344 (h!49764 String!50986) (t!340219 List!44468)) )
))
(declare-fun acc!555 () List!44468)

(declare-fun tp!1252489 () Bool)

(declare-fun inv!58952 (String!50986) Bool)

(assert (=> b!4113772 (= e!2552134 (and (inv!58952 (h!49764 acc!555)) tp!1252489))))

(declare-fun res!1680273 () Bool)

(declare-fun e!2552126 () Bool)

(assert (=> start!389786 (=> (not res!1680273) (not e!2552126))))

(declare-datatypes ((LexerInterface!6806 0))(
  ( (LexerInterfaceExt!6803 (__x!27111 Int)) (Lexer!6804) )
))
(declare-fun thiss!26911 () LexerInterface!6806)

(assert (=> start!389786 (= res!1680273 (is-Lexer!6804 thiss!26911))))

(assert (=> start!389786 e!2552126))

(assert (=> start!389786 true))

(declare-fun e!2552127 () Bool)

(assert (=> start!389786 e!2552127))

(assert (=> start!389786 e!2552134))

(declare-fun e!2552132 () Bool)

(assert (=> start!389786 e!2552132))

(declare-fun b!4113773 () Bool)

(declare-fun newAcc!81 () List!44468)

(declare-fun tp!1252487 () Bool)

(assert (=> b!4113773 (= e!2552132 (and (inv!58952 (h!49764 newAcc!81)) tp!1252487))))

(declare-fun e!2552128 () Bool)

(assert (=> b!4113774 (= e!2552128 (and tp!1252488 tp!1252486))))

(declare-fun tp!1252490 () Bool)

(declare-datatypes ((List!44469 0))(
  ( (Nil!44345) (Cons!44345 (h!49765 (_ BitVec 16)) (t!340220 List!44469)) )
))
(declare-datatypes ((TokenValue!7447 0))(
  ( (FloatLiteralValue!14894 (text!52574 List!44469)) (TokenValueExt!7446 (__x!27112 Int)) (Broken!37235 (value!226243 List!44469)) (Object!7570) (End!7447) (Def!7447) (Underscore!7447) (Match!7447) (Else!7447) (Error!7447) (Case!7447) (If!7447) (Extends!7447) (Abstract!7447) (Class!7447) (Val!7447) (DelimiterValue!14894 (del!7507 List!44469)) (KeywordValue!7453 (value!226244 List!44469)) (CommentValue!14894 (value!226245 List!44469)) (WhitespaceValue!14894 (value!226246 List!44469)) (IndentationValue!7447 (value!226247 List!44469)) (String!50988) (Int32!7447) (Broken!37236 (value!226248 List!44469)) (Boolean!7448) (Unit!63739) (OperatorValue!7450 (op!7507 List!44469)) (IdentifierValue!14894 (value!226249 List!44469)) (IdentifierValue!14895 (value!226250 List!44469)) (WhitespaceValue!14895 (value!226251 List!44469)) (True!14894) (False!14894) (Broken!37237 (value!226252 List!44469)) (Broken!37238 (value!226253 List!44469)) (True!14895) (RightBrace!7447) (RightBracket!7447) (Colon!7447) (Null!7447) (Comma!7447) (LeftBracket!7447) (False!14895) (LeftBrace!7447) (ImaginaryLiteralValue!7447 (text!52575 List!44469)) (StringLiteralValue!22341 (value!226254 List!44469)) (EOFValue!7447 (value!226255 List!44469)) (IdentValue!7447 (value!226256 List!44469)) (DelimiterValue!14895 (value!226257 List!44469)) (DedentValue!7447 (value!226258 List!44469)) (NewLineValue!7447 (value!226259 List!44469)) (IntegerValue!22341 (value!226260 (_ BitVec 32)) (text!52576 List!44469)) (IntegerValue!22342 (value!226261 Int) (text!52577 List!44469)) (Times!7447) (Or!7447) (Equal!7447) (Minus!7447) (Broken!37239 (value!226262 List!44469)) (And!7447) (Div!7447) (LessEqual!7447) (Mod!7447) (Concat!19569) (Not!7447) (Plus!7447) (SpaceValue!7447 (value!226263 List!44469)) (IntegerValue!22343 (value!226264 Int) (text!52578 List!44469)) (StringLiteralValue!22342 (text!52579 List!44469)) (FloatLiteralValue!14895 (text!52580 List!44469)) (BytesLiteralValue!7447 (value!226265 List!44469)) (CommentValue!14895 (value!226266 List!44469)) (StringLiteralValue!22343 (value!226267 List!44469)) (ErrorTokenValue!7447 (msg!7508 List!44469)) )
))
(declare-datatypes ((C!24430 0))(
  ( (C!24431 (val!14325 Int)) )
))
(declare-datatypes ((List!44470 0))(
  ( (Nil!44346) (Cons!44346 (h!49766 C!24430) (t!340221 List!44470)) )
))
(declare-datatypes ((IArray!26861 0))(
  ( (IArray!26862 (innerList!13488 List!44470)) )
))
(declare-datatypes ((Conc!13428 0))(
  ( (Node!13428 (left!33239 Conc!13428) (right!33569 Conc!13428) (csize!27086 Int) (cheight!13639 Int)) (Leaf!20752 (xs!16734 IArray!26861) (csize!27087 Int)) (Empty!13428) )
))
(declare-datatypes ((BalanceConc!26450 0))(
  ( (BalanceConc!26451 (c!706948 Conc!13428)) )
))
(declare-datatypes ((TokenValueInjection!14322 0))(
  ( (TokenValueInjection!14323 (toValue!9861 Int) (toChars!9720 Int)) )
))
(declare-datatypes ((Regex!12122 0))(
  ( (ElementMatch!12122 (c!706949 C!24430)) (Concat!19570 (regOne!24756 Regex!12122) (regTwo!24756 Regex!12122)) (EmptyExpr!12122) (Star!12122 (reg!12451 Regex!12122)) (EmptyLang!12122) (Union!12122 (regOne!24757 Regex!12122) (regTwo!24757 Regex!12122)) )
))
(declare-datatypes ((Rule!14234 0))(
  ( (Rule!14235 (regex!7217 Regex!12122) (tag!8077 String!50986) (isSeparator!7217 Bool) (transformation!7217 TokenValueInjection!14322)) )
))
(declare-datatypes ((List!44471 0))(
  ( (Nil!44347) (Cons!44347 (h!49767 Rule!14234) (t!340222 List!44471)) )
))
(declare-fun l!6467 () List!44471)

(declare-fun e!2552133 () Bool)

(declare-fun b!4113775 () Bool)

(declare-fun inv!58955 (TokenValueInjection!14322) Bool)

(assert (=> b!4113775 (= e!2552133 (and tp!1252490 (inv!58952 (tag!8077 (h!49767 l!6467))) (inv!58955 (transformation!7217 (h!49767 l!6467))) e!2552128))))

(declare-fun b!4113776 () Bool)

(declare-fun tp!1252485 () Bool)

(assert (=> b!4113776 (= e!2552127 (and e!2552133 tp!1252485))))

(declare-fun b!4113777 () Bool)

(assert (=> b!4113777 (= e!2552126 false)))

(declare-fun b!4113778 () Bool)

(declare-fun res!1680274 () Bool)

(assert (=> b!4113778 (=> (not res!1680274) (not e!2552126))))

(declare-fun noDuplicateTag!2894 (LexerInterface!6806 List!44471 List!44468) Bool)

(assert (=> b!4113778 (= res!1680274 (noDuplicateTag!2894 thiss!26911 l!6467 acc!555))))

(assert (= (and start!389786 res!1680273) b!4113778))

(assert (= (and b!4113778 res!1680274) b!4113777))

(assert (= b!4113775 b!4113774))

(assert (= b!4113776 b!4113775))

(assert (= (and start!389786 (is-Cons!44347 l!6467)) b!4113776))

(assert (= (and start!389786 (is-Cons!44344 acc!555)) b!4113772))

(assert (= (and start!389786 (is-Cons!44344 newAcc!81)) b!4113773))

(declare-fun m!4714417 () Bool)

(assert (=> b!4113772 m!4714417))

(declare-fun m!4714419 () Bool)

(assert (=> b!4113773 m!4714419))

(declare-fun m!4714421 () Bool)

(assert (=> b!4113775 m!4714421))

(declare-fun m!4714423 () Bool)

(assert (=> b!4113775 m!4714423))

(declare-fun m!4714425 () Bool)

(assert (=> b!4113778 m!4714425))

(push 1)

(assert (not b!4113773))

(assert b_and!317695)

(assert (not b!4113778))

(assert (not b_next!116513))

(assert (not b!4113775))

(assert b_and!317693)

(assert (not b!4113772))

(assert (not b_next!116511))

(assert (not b!4113776))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317695)

(assert b_and!317693)

(assert (not b_next!116513))

(assert (not b_next!116511))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757832 () Bool)

(assert start!757832)

(declare-fun b!8047673 () Bool)

(declare-fun b_free!136567 () Bool)

(declare-fun b_next!137357 () Bool)

(assert (=> b!8047673 (= b_free!136567 (not b_next!137357))))

(declare-fun tp!2412861 () Bool)

(declare-fun b_and!355003 () Bool)

(assert (=> b!8047673 (= tp!2412861 b_and!355003)))

(declare-fun b_free!136569 () Bool)

(declare-fun b_next!137359 () Bool)

(assert (=> b!8047673 (= b_free!136569 (not b_next!137359))))

(declare-fun tp!2412860 () Bool)

(declare-fun b_and!355005 () Bool)

(assert (=> b!8047673 (= tp!2412860 b_and!355005)))

(declare-fun b!8047669 () Bool)

(declare-fun e!4741630 () Bool)

(declare-fun e!4741627 () Bool)

(declare-fun tp!2412859 () Bool)

(assert (=> b!8047669 (= e!4741630 (and e!4741627 tp!2412859))))

(declare-fun e!4741628 () Bool)

(declare-fun tp!2412858 () Bool)

(declare-datatypes ((C!44046 0))(
  ( (C!44047 (val!32799 Int)) )
))
(declare-datatypes ((List!75544 0))(
  ( (Nil!75418) (Cons!75418 (h!81866 (_ BitVec 16)) (t!391316 List!75544)) )
))
(declare-datatypes ((Regex!21854 0))(
  ( (ElementMatch!21854 (c!1475493 C!44046)) (Concat!30957 (regOne!44220 Regex!21854) (regTwo!44220 Regex!21854)) (EmptyExpr!21854) (Star!21854 (reg!22183 Regex!21854)) (EmptyLang!21854) (Union!21854 (regOne!44221 Regex!21854) (regTwo!44221 Regex!21854)) )
))
(declare-datatypes ((String!85298 0))(
  ( (String!85299 (value!293305 String)) )
))
(declare-datatypes ((TokenValue!9103 0))(
  ( (FloatLiteralValue!18206 (text!64166 List!75544)) (TokenValueExt!9102 (__x!35485 Int)) (Broken!45515 (value!293306 List!75544)) (Object!9228) (End!9103) (Def!9103) (Underscore!9103) (Match!9103) (Else!9103) (Error!9103) (Case!9103) (If!9103) (Extends!9103) (Abstract!9103) (Class!9103) (Val!9103) (DelimiterValue!18206 (del!9163 List!75544)) (KeywordValue!9109 (value!293307 List!75544)) (CommentValue!18206 (value!293308 List!75544)) (WhitespaceValue!18206 (value!293309 List!75544)) (IndentationValue!9103 (value!293310 List!75544)) (String!85300) (Int32!9103) (Broken!45516 (value!293311 List!75544)) (Boolean!9104) (Unit!171166) (OperatorValue!9106 (op!9163 List!75544)) (IdentifierValue!18206 (value!293312 List!75544)) (IdentifierValue!18207 (value!293313 List!75544)) (WhitespaceValue!18207 (value!293314 List!75544)) (True!18206) (False!18206) (Broken!45517 (value!293315 List!75544)) (Broken!45518 (value!293316 List!75544)) (True!18207) (RightBrace!9103) (RightBracket!9103) (Colon!9103) (Null!9103) (Comma!9103) (LeftBracket!9103) (False!18207) (LeftBrace!9103) (ImaginaryLiteralValue!9103 (text!64167 List!75544)) (StringLiteralValue!27309 (value!293317 List!75544)) (EOFValue!9103 (value!293318 List!75544)) (IdentValue!9103 (value!293319 List!75544)) (DelimiterValue!18207 (value!293320 List!75544)) (DedentValue!9103 (value!293321 List!75544)) (NewLineValue!9103 (value!293322 List!75544)) (IntegerValue!27309 (value!293323 (_ BitVec 32)) (text!64168 List!75544)) (IntegerValue!27310 (value!293324 Int) (text!64169 List!75544)) (Times!9103) (Or!9103) (Equal!9103) (Minus!9103) (Broken!45519 (value!293325 List!75544)) (And!9103) (Div!9103) (LessEqual!9103) (Mod!9103) (Concat!30958) (Not!9103) (Plus!9103) (SpaceValue!9103 (value!293326 List!75544)) (IntegerValue!27311 (value!293327 Int) (text!64170 List!75544)) (StringLiteralValue!27310 (text!64171 List!75544)) (FloatLiteralValue!18207 (text!64172 List!75544)) (BytesLiteralValue!9103 (value!293328 List!75544)) (CommentValue!18207 (value!293329 List!75544)) (StringLiteralValue!27311 (value!293330 List!75544)) (ErrorTokenValue!9103 (msg!9164 List!75544)) )
))
(declare-datatypes ((List!75545 0))(
  ( (Nil!75419) (Cons!75419 (h!81867 C!44046) (t!391317 List!75545)) )
))
(declare-datatypes ((IArray!32163 0))(
  ( (IArray!32164 (innerList!16139 List!75545)) )
))
(declare-datatypes ((Conc!16051 0))(
  ( (Node!16051 (left!57425 Conc!16051) (right!57755 Conc!16051) (csize!32332 Int) (cheight!16262 Int)) (Leaf!30754 (xs!19449 IArray!32163) (csize!32333 Int)) (Empty!16051) )
))
(declare-datatypes ((BalanceConc!31058 0))(
  ( (BalanceConc!31059 (c!1475494 Conc!16051)) )
))
(declare-datatypes ((TokenValueInjection!17514 0))(
  ( (TokenValueInjection!17515 (toValue!11866 Int) (toChars!11725 Int)) )
))
(declare-datatypes ((Rule!17366 0))(
  ( (Rule!17367 (regex!8783 Regex!21854) (tag!9647 String!85298) (isSeparator!8783 Bool) (transformation!8783 TokenValueInjection!17514)) )
))
(declare-datatypes ((List!75546 0))(
  ( (Nil!75420) (Cons!75420 (h!81868 Rule!17366) (t!391318 List!75546)) )
))
(declare-fun rs!157 () List!75546)

(declare-fun b!8047670 () Bool)

(declare-fun inv!97128 (String!85298) Bool)

(declare-fun inv!97131 (TokenValueInjection!17514) Bool)

(assert (=> b!8047670 (= e!4741627 (and tp!2412858 (inv!97128 (tag!9647 (h!81868 rs!157))) (inv!97131 (transformation!8783 (h!81868 rs!157))) e!4741628))))

(declare-fun res!3181353 () Bool)

(declare-fun e!4741626 () Bool)

(assert (=> start!757832 (=> (not res!3181353) (not e!4741626))))

(declare-datatypes ((LexerInterface!8371 0))(
  ( (LexerInterfaceExt!8368 (__x!35486 Int)) (Lexer!8369) )
))
(declare-fun thiss!10883 () LexerInterface!8371)

(assert (=> start!757832 (= res!3181353 (and (is-Lexer!8369 thiss!10883) (is-Cons!75420 rs!157)))))

(assert (=> start!757832 e!4741626))

(assert (=> start!757832 true))

(assert (=> start!757832 e!4741630))

(declare-fun b!8047671 () Bool)

(assert (=> b!8047671 (= e!4741626 false)))

(declare-fun lt!2722893 () Bool)

(declare-fun e!4741625 () Bool)

(assert (=> b!8047671 (= lt!2722893 e!4741625)))

(declare-fun res!3181354 () Bool)

(assert (=> b!8047671 (=> res!3181354 e!4741625)))

(declare-fun ruleValid!4001 (LexerInterface!8371 Rule!17366) Bool)

(assert (=> b!8047671 (= res!3181354 (not (ruleValid!4001 thiss!10883 (h!81868 rs!157))))))

(declare-fun b!8047672 () Bool)

(declare-fun rulesValidInductive!3478 (LexerInterface!8371 List!75546) Bool)

(assert (=> b!8047672 (= e!4741625 (not (rulesValidInductive!3478 thiss!10883 (t!391318 rs!157))))))

(assert (=> b!8047673 (= e!4741628 (and tp!2412861 tp!2412860))))

(assert (= (and start!757832 res!3181353) b!8047671))

(assert (= (and b!8047671 (not res!3181354)) b!8047672))

(assert (= b!8047670 b!8047673))

(assert (= b!8047669 b!8047670))

(assert (= (and start!757832 (is-Cons!75420 rs!157)) b!8047669))

(declare-fun m!8399202 () Bool)

(assert (=> b!8047670 m!8399202))

(declare-fun m!8399204 () Bool)

(assert (=> b!8047670 m!8399204))

(declare-fun m!8399206 () Bool)

(assert (=> b!8047671 m!8399206))

(declare-fun m!8399208 () Bool)

(assert (=> b!8047672 m!8399208))

(push 1)

(assert (not b_next!137357))

(assert (not b!8047671))

(assert (not b!8047670))

(assert (not b!8047672))

(assert (not b_next!137359))

(assert b_and!355003)

(assert b_and!355005)

(assert (not b!8047669))

(check-sat)

(pop 1)

(push 1)

(assert b_and!355005)

(assert b_and!355003)

(assert (not b_next!137357))

(assert (not b_next!137359))

(check-sat)

(pop 1)


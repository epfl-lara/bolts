; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349516 () Bool)

(assert start!349516)

(declare-fun b!3705771 () Bool)

(declare-fun b_free!99125 () Bool)

(declare-fun b_next!99829 () Bool)

(assert (=> b!3705771 (= b_free!99125 (not b_next!99829))))

(declare-fun tp!1127273 () Bool)

(declare-fun b_and!277359 () Bool)

(assert (=> b!3705771 (= tp!1127273 b_and!277359)))

(declare-fun b_free!99127 () Bool)

(declare-fun b_next!99831 () Bool)

(assert (=> b!3705771 (= b_free!99127 (not b_next!99831))))

(declare-fun tp!1127271 () Bool)

(declare-fun b_and!277361 () Bool)

(assert (=> b!3705771 (= tp!1127271 b_and!277361)))

(declare-fun b!3705767 () Bool)

(declare-fun e!2295636 () Bool)

(declare-fun e!2295635 () Bool)

(declare-fun tp!1127272 () Bool)

(assert (=> b!3705767 (= e!2295636 (and e!2295635 tp!1127272))))

(declare-fun b!3705768 () Bool)

(declare-fun e!2295637 () Bool)

(declare-fun e!2295633 () Bool)

(assert (=> b!3705768 (= e!2295637 e!2295633)))

(declare-fun res!1507554 () Bool)

(assert (=> b!3705768 (=> res!1507554 e!2295633)))

(declare-datatypes ((List!39663 0))(
  ( (Nil!39539) (Cons!39539 (h!44959 (_ BitVec 16)) (t!302346 List!39663)) )
))
(declare-datatypes ((TokenValue!6265 0))(
  ( (FloatLiteralValue!12530 (text!44300 List!39663)) (TokenValueExt!6264 (__x!24747 Int)) (Broken!31325 (value!192377 List!39663)) (Object!6388) (End!6265) (Def!6265) (Underscore!6265) (Match!6265) (Else!6265) (Error!6265) (Case!6265) (If!6265) (Extends!6265) (Abstract!6265) (Class!6265) (Val!6265) (DelimiterValue!12530 (del!6325 List!39663)) (KeywordValue!6271 (value!192378 List!39663)) (CommentValue!12530 (value!192379 List!39663)) (WhitespaceValue!12530 (value!192380 List!39663)) (IndentationValue!6265 (value!192381 List!39663)) (String!44660) (Int32!6265) (Broken!31326 (value!192382 List!39663)) (Boolean!6266) (Unit!57432) (OperatorValue!6268 (op!6325 List!39663)) (IdentifierValue!12530 (value!192383 List!39663)) (IdentifierValue!12531 (value!192384 List!39663)) (WhitespaceValue!12531 (value!192385 List!39663)) (True!12530) (False!12530) (Broken!31327 (value!192386 List!39663)) (Broken!31328 (value!192387 List!39663)) (True!12531) (RightBrace!6265) (RightBracket!6265) (Colon!6265) (Null!6265) (Comma!6265) (LeftBracket!6265) (False!12531) (LeftBrace!6265) (ImaginaryLiteralValue!6265 (text!44301 List!39663)) (StringLiteralValue!18795 (value!192388 List!39663)) (EOFValue!6265 (value!192389 List!39663)) (IdentValue!6265 (value!192390 List!39663)) (DelimiterValue!12531 (value!192391 List!39663)) (DedentValue!6265 (value!192392 List!39663)) (NewLineValue!6265 (value!192393 List!39663)) (IntegerValue!18795 (value!192394 (_ BitVec 32)) (text!44302 List!39663)) (IntegerValue!18796 (value!192395 Int) (text!44303 List!39663)) (Times!6265) (Or!6265) (Equal!6265) (Minus!6265) (Broken!31329 (value!192396 List!39663)) (And!6265) (Div!6265) (LessEqual!6265) (Mod!6265) (Concat!17059) (Not!6265) (Plus!6265) (SpaceValue!6265 (value!192397 List!39663)) (IntegerValue!18797 (value!192398 Int) (text!44304 List!39663)) (StringLiteralValue!18796 (text!44305 List!39663)) (FloatLiteralValue!12531 (text!44306 List!39663)) (BytesLiteralValue!6265 (value!192399 List!39663)) (CommentValue!12531 (value!192400 List!39663)) (StringLiteralValue!18797 (value!192401 List!39663)) (ErrorTokenValue!6265 (msg!6326 List!39663)) )
))
(declare-datatypes ((C!21774 0))(
  ( (C!21775 (val!12935 Int)) )
))
(declare-datatypes ((List!39664 0))(
  ( (Nil!39540) (Cons!39540 (h!44960 C!21774) (t!302347 List!39664)) )
))
(declare-datatypes ((IArray!24269 0))(
  ( (IArray!24270 (innerList!12192 List!39664)) )
))
(declare-datatypes ((Conc!12132 0))(
  ( (Node!12132 (left!30708 Conc!12132) (right!31038 Conc!12132) (csize!24494 Int) (cheight!12343 Int)) (Leaf!18761 (xs!15334 IArray!24269) (csize!24495 Int)) (Empty!12132) )
))
(declare-datatypes ((BalanceConc!23878 0))(
  ( (BalanceConc!23879 (c!640040 Conc!12132)) )
))
(declare-datatypes ((Regex!10794 0))(
  ( (ElementMatch!10794 (c!640041 C!21774)) (Concat!17060 (regOne!22100 Regex!10794) (regTwo!22100 Regex!10794)) (EmptyExpr!10794) (Star!10794 (reg!11123 Regex!10794)) (EmptyLang!10794) (Union!10794 (regOne!22101 Regex!10794) (regTwo!22101 Regex!10794)) )
))
(declare-datatypes ((String!44661 0))(
  ( (String!44662 (value!192402 String)) )
))
(declare-datatypes ((TokenValueInjection!11958 0))(
  ( (TokenValueInjection!11959 (toValue!8379 Int) (toChars!8238 Int)) )
))
(declare-datatypes ((Rule!11870 0))(
  ( (Rule!11871 (regex!6035 Regex!10794) (tag!6895 String!44661) (isSeparator!6035 Bool) (transformation!6035 TokenValueInjection!11958)) )
))
(declare-datatypes ((List!39665 0))(
  ( (Nil!39541) (Cons!39541 (h!44961 Rule!11870) (t!302348 List!39665)) )
))
(declare-fun rules!2525 () List!39665)

(declare-fun lt!1296379 () Rule!11870)

(declare-fun contains!7889 (List!39665 Rule!11870) Bool)

(assert (=> b!3705768 (= res!1507554 (not (contains!7889 rules!2525 lt!1296379)))))

(declare-datatypes ((Option!8565 0))(
  ( (None!8564) (Some!8564 (v!38552 Rule!11870)) )
))
(declare-fun get!13163 (Option!8565) Rule!11870)

(assert (=> b!3705768 (= lt!1296379 (get!13163 None!8564))))

(declare-fun b!3705769 () Bool)

(declare-fun res!1507553 () Bool)

(assert (=> b!3705769 (=> (not res!1507553) (not e!2295637))))

(declare-fun tag!164 () String!44661)

(assert (=> b!3705769 (= res!1507553 false)))

(declare-fun b!3705770 () Bool)

(assert (=> b!3705770 (= e!2295633 (not (= (tag!6895 lt!1296379) tag!164)))))

(declare-fun res!1507551 () Bool)

(assert (=> start!349516 (=> (not res!1507551) (not e!2295637))))

(declare-datatypes ((LexerInterface!5624 0))(
  ( (LexerInterfaceExt!5621 (__x!24748 Int)) (Lexer!5622) )
))
(declare-fun thiss!19663 () LexerInterface!5624)

(assert (=> start!349516 (= res!1507551 (is-Lexer!5622 thiss!19663))))

(assert (=> start!349516 e!2295637))

(assert (=> start!349516 true))

(assert (=> start!349516 e!2295636))

(declare-fun inv!53026 (String!44661) Bool)

(assert (=> start!349516 (inv!53026 tag!164)))

(declare-fun e!2295634 () Bool)

(assert (=> b!3705771 (= e!2295634 (and tp!1127273 tp!1127271))))

(declare-fun b!3705772 () Bool)

(declare-fun tp!1127274 () Bool)

(declare-fun inv!53029 (TokenValueInjection!11958) Bool)

(assert (=> b!3705772 (= e!2295635 (and tp!1127274 (inv!53026 (tag!6895 (h!44961 rules!2525))) (inv!53029 (transformation!6035 (h!44961 rules!2525))) e!2295634))))

(declare-fun b!3705773 () Bool)

(declare-fun res!1507552 () Bool)

(assert (=> b!3705773 (=> (not res!1507552) (not e!2295637))))

(declare-fun rulesInvariant!5021 (LexerInterface!5624 List!39665) Bool)

(assert (=> b!3705773 (= res!1507552 (rulesInvariant!5021 thiss!19663 rules!2525))))

(assert (= (and start!349516 res!1507551) b!3705773))

(assert (= (and b!3705773 res!1507552) b!3705769))

(assert (= (and b!3705769 res!1507553) b!3705768))

(assert (= (and b!3705768 (not res!1507554)) b!3705770))

(assert (= b!3705772 b!3705771))

(assert (= b!3705767 b!3705772))

(assert (= (and start!349516 (is-Cons!39541 rules!2525)) b!3705767))

(declare-fun m!4215973 () Bool)

(assert (=> b!3705768 m!4215973))

(declare-fun m!4215975 () Bool)

(assert (=> b!3705768 m!4215975))

(declare-fun m!4215977 () Bool)

(assert (=> start!349516 m!4215977))

(declare-fun m!4215979 () Bool)

(assert (=> b!3705772 m!4215979))

(declare-fun m!4215981 () Bool)

(assert (=> b!3705772 m!4215981))

(declare-fun m!4215983 () Bool)

(assert (=> b!3705773 m!4215983))

(push 1)

(assert b_and!277361)

(assert (not b!3705767))

(assert (not b_next!99829))

(assert (not b!3705772))

(assert (not b!3705773))

(assert b_and!277359)

(assert (not start!349516))

(assert (not b_next!99831))

(assert (not b!3705768))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277361)

(assert b_and!277359)

(assert (not b_next!99831))

(assert (not b_next!99829))

(check-sat)

(pop 1)


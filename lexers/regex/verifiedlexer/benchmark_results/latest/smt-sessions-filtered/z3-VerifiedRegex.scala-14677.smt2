; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757436 () Bool)

(assert start!757436)

(declare-fun b!8044657 () Bool)

(declare-fun b_free!136187 () Bool)

(declare-fun b_next!136977 () Bool)

(assert (=> b!8044657 (= b_free!136187 (not b_next!136977))))

(declare-fun tp!2410939 () Bool)

(declare-fun b_and!354623 () Bool)

(assert (=> b!8044657 (= tp!2410939 b_and!354623)))

(declare-fun b_free!136189 () Bool)

(declare-fun b_next!136979 () Bool)

(assert (=> b!8044657 (= b_free!136189 (not b_next!136979))))

(declare-fun tp!2410938 () Bool)

(declare-fun b_and!354625 () Bool)

(assert (=> b!8044657 (= tp!2410938 b_and!354625)))

(declare-fun b!8044659 () Bool)

(declare-fun b_free!136191 () Bool)

(declare-fun b_next!136981 () Bool)

(assert (=> b!8044659 (= b_free!136191 (not b_next!136981))))

(declare-fun tp!2410941 () Bool)

(declare-fun b_and!354627 () Bool)

(assert (=> b!8044659 (= tp!2410941 b_and!354627)))

(declare-fun b_free!136193 () Bool)

(declare-fun b_next!136983 () Bool)

(assert (=> b!8044659 (= b_free!136193 (not b_next!136983))))

(declare-fun tp!2410937 () Bool)

(declare-fun b_and!354629 () Bool)

(assert (=> b!8044659 (= tp!2410937 b_and!354629)))

(declare-fun tp!2410940 () Bool)

(declare-fun b!8044655 () Bool)

(declare-datatypes ((C!43952 0))(
  ( (C!43953 (val!32752 Int)) )
))
(declare-datatypes ((List!75361 0))(
  ( (Nil!75235) (Cons!75235 (h!81683 C!43952) (t!391131 List!75361)) )
))
(declare-datatypes ((IArray!32069 0))(
  ( (IArray!32070 (innerList!16092 List!75361)) )
))
(declare-datatypes ((Conc!16004 0))(
  ( (Node!16004 (left!57329 Conc!16004) (right!57659 Conc!16004) (csize!32238 Int) (cheight!16215 Int)) (Leaf!30682 (xs!19402 IArray!32069) (csize!32239 Int)) (Empty!16004) )
))
(declare-datatypes ((List!75362 0))(
  ( (Nil!75236) (Cons!75236 (h!81684 (_ BitVec 16)) (t!391132 List!75362)) )
))
(declare-datatypes ((TokenValue!9056 0))(
  ( (FloatLiteralValue!18112 (text!63837 List!75362)) (TokenValueExt!9055 (__x!35393 Int)) (Broken!45280 (value!292006 List!75362)) (Object!9181) (End!9056) (Def!9056) (Underscore!9056) (Match!9056) (Else!9056) (Error!9056) (Case!9056) (If!9056) (Extends!9056) (Abstract!9056) (Class!9056) (Val!9056) (DelimiterValue!18112 (del!9116 List!75362)) (KeywordValue!9062 (value!292007 List!75362)) (CommentValue!18112 (value!292008 List!75362)) (WhitespaceValue!18112 (value!292009 List!75362)) (IndentationValue!9056 (value!292010 List!75362)) (String!85053) (Int32!9056) (Broken!45281 (value!292011 List!75362)) (Boolean!9057) (Unit!171099) (OperatorValue!9059 (op!9116 List!75362)) (IdentifierValue!18112 (value!292012 List!75362)) (IdentifierValue!18113 (value!292013 List!75362)) (WhitespaceValue!18113 (value!292014 List!75362)) (True!18112) (False!18112) (Broken!45282 (value!292015 List!75362)) (Broken!45283 (value!292016 List!75362)) (True!18113) (RightBrace!9056) (RightBracket!9056) (Colon!9056) (Null!9056) (Comma!9056) (LeftBracket!9056) (False!18113) (LeftBrace!9056) (ImaginaryLiteralValue!9056 (text!63838 List!75362)) (StringLiteralValue!27168 (value!292017 List!75362)) (EOFValue!9056 (value!292018 List!75362)) (IdentValue!9056 (value!292019 List!75362)) (DelimiterValue!18113 (value!292020 List!75362)) (DedentValue!9056 (value!292021 List!75362)) (NewLineValue!9056 (value!292022 List!75362)) (IntegerValue!27168 (value!292023 (_ BitVec 32)) (text!63839 List!75362)) (IntegerValue!27169 (value!292024 Int) (text!63840 List!75362)) (Times!9056) (Or!9056) (Equal!9056) (Minus!9056) (Broken!45284 (value!292025 List!75362)) (And!9056) (Div!9056) (LessEqual!9056) (Mod!9056) (Concat!30863) (Not!9056) (Plus!9056) (SpaceValue!9056 (value!292026 List!75362)) (IntegerValue!27170 (value!292027 Int) (text!63841 List!75362)) (StringLiteralValue!27169 (text!63842 List!75362)) (FloatLiteralValue!18113 (text!63843 List!75362)) (BytesLiteralValue!9056 (value!292028 List!75362)) (CommentValue!18113 (value!292029 List!75362)) (StringLiteralValue!27170 (value!292030 List!75362)) (ErrorTokenValue!9056 (msg!9117 List!75362)) )
))
(declare-datatypes ((BalanceConc!30964 0))(
  ( (BalanceConc!30965 (c!1475385 Conc!16004)) )
))
(declare-datatypes ((TokenValueInjection!17420 0))(
  ( (TokenValueInjection!17421 (toValue!11811 Int) (toChars!11670 Int)) )
))
(declare-datatypes ((Regex!21807 0))(
  ( (ElementMatch!21807 (c!1475386 C!43952)) (Concat!30864 (regOne!44126 Regex!21807) (regTwo!44126 Regex!21807)) (EmptyExpr!21807) (Star!21807 (reg!22136 Regex!21807)) (EmptyLang!21807) (Union!21807 (regOne!44127 Regex!21807) (regTwo!44127 Regex!21807)) )
))
(declare-datatypes ((String!85054 0))(
  ( (String!85055 (value!292031 String)) )
))
(declare-datatypes ((Rule!17272 0))(
  ( (Rule!17273 (regex!8736 Regex!21807) (tag!9600 String!85054) (isSeparator!8736 Bool) (transformation!8736 TokenValueInjection!17420)) )
))
(declare-datatypes ((List!75363 0))(
  ( (Nil!75237) (Cons!75237 (h!81685 Rule!17272) (t!391133 List!75363)) )
))
(declare-fun rules!4030 () List!75363)

(declare-fun e!4739055 () Bool)

(declare-fun e!4739059 () Bool)

(declare-fun inv!97007 (String!85054) Bool)

(declare-fun inv!97009 (TokenValueInjection!17420) Bool)

(assert (=> b!8044655 (= e!4739055 (and tp!2410940 (inv!97007 (tag!9600 (h!81685 rules!4030))) (inv!97009 (transformation!8736 (h!81685 rules!4030))) e!4739059))))

(declare-fun res!3180007 () Bool)

(declare-fun e!4739061 () Bool)

(assert (=> start!757436 (=> (not res!3180007) (not e!4739061))))

(declare-datatypes ((LexerInterface!8326 0))(
  ( (LexerInterfaceExt!8323 (__x!35394 Int)) (Lexer!8324) )
))
(declare-fun thiss!26855 () LexerInterface!8326)

(get-info :version)

(assert (=> start!757436 (= res!3180007 ((_ is Lexer!8324) thiss!26855))))

(assert (=> start!757436 e!4739061))

(assert (=> start!757436 true))

(declare-fun e!4739060 () Bool)

(assert (=> start!757436 e!4739060))

(declare-fun e!4739056 () Bool)

(assert (=> start!757436 e!4739056))

(declare-fun r!4387 () Rule!17272)

(declare-fun tp!2410935 () Bool)

(declare-fun b!8044656 () Bool)

(declare-fun e!4739057 () Bool)

(assert (=> b!8044656 (= e!4739060 (and tp!2410935 (inv!97007 (tag!9600 r!4387)) (inv!97009 (transformation!8736 r!4387)) e!4739057))))

(assert (=> b!8044657 (= e!4739059 (and tp!2410939 tp!2410938))))

(declare-fun b!8044658 () Bool)

(declare-fun e!4739058 () Bool)

(assert (=> b!8044658 (= e!4739061 e!4739058)))

(declare-fun res!3180006 () Bool)

(assert (=> b!8044658 (=> (not res!3180006) (not e!4739058))))

(declare-fun lt!2722576 () List!75363)

(declare-fun rulesInvariant!6794 (LexerInterface!8326 List!75363) Bool)

(assert (=> b!8044658 (= res!3180006 (rulesInvariant!6794 thiss!26855 lt!2722576))))

(assert (=> b!8044658 (= lt!2722576 (Cons!75237 r!4387 rules!4030))))

(assert (=> b!8044659 (= e!4739057 (and tp!2410941 tp!2410937))))

(declare-fun b!8044660 () Bool)

(assert (=> b!8044660 (= e!4739058 false)))

(declare-fun lt!2722575 () Bool)

(declare-fun rulesValidInductive!3455 (LexerInterface!8326 List!75363) Bool)

(assert (=> b!8044660 (= lt!2722575 (rulesValidInductive!3455 thiss!26855 lt!2722576))))

(declare-fun b!8044661 () Bool)

(declare-fun tp!2410936 () Bool)

(assert (=> b!8044661 (= e!4739056 (and e!4739055 tp!2410936))))

(assert (= (and start!757436 res!3180007) b!8044658))

(assert (= (and b!8044658 res!3180006) b!8044660))

(assert (= b!8044656 b!8044659))

(assert (= start!757436 b!8044656))

(assert (= b!8044655 b!8044657))

(assert (= b!8044661 b!8044655))

(assert (= (and start!757436 ((_ is Cons!75237) rules!4030)) b!8044661))

(declare-fun m!8397534 () Bool)

(assert (=> b!8044655 m!8397534))

(declare-fun m!8397536 () Bool)

(assert (=> b!8044655 m!8397536))

(declare-fun m!8397538 () Bool)

(assert (=> b!8044656 m!8397538))

(declare-fun m!8397540 () Bool)

(assert (=> b!8044656 m!8397540))

(declare-fun m!8397542 () Bool)

(assert (=> b!8044658 m!8397542))

(declare-fun m!8397544 () Bool)

(assert (=> b!8044660 m!8397544))

(check-sat b_and!354625 (not b_next!136979) (not b!8044660) (not b_next!136977) b_and!354629 (not b!8044655) (not b_next!136983) (not b!8044656) (not b!8044658) (not b!8044661) b_and!354623 b_and!354627 (not b_next!136981))
(check-sat b_and!354625 (not b_next!136979) (not b_next!136977) b_and!354629 (not b_next!136983) b_and!354623 b_and!354627 (not b_next!136981))

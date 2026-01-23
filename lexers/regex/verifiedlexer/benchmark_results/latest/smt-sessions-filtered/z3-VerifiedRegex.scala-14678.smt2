; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757440 () Bool)

(assert start!757440)

(declare-fun b!8044702 () Bool)

(declare-fun b_free!136203 () Bool)

(declare-fun b_next!136993 () Bool)

(assert (=> b!8044702 (= b_free!136203 (not b_next!136993))))

(declare-fun tp!2410983 () Bool)

(declare-fun b_and!354639 () Bool)

(assert (=> b!8044702 (= tp!2410983 b_and!354639)))

(declare-fun b_free!136205 () Bool)

(declare-fun b_next!136995 () Bool)

(assert (=> b!8044702 (= b_free!136205 (not b_next!136995))))

(declare-fun tp!2410979 () Bool)

(declare-fun b_and!354641 () Bool)

(assert (=> b!8044702 (= tp!2410979 b_and!354641)))

(declare-fun b!8044706 () Bool)

(declare-fun b_free!136207 () Bool)

(declare-fun b_next!136997 () Bool)

(assert (=> b!8044706 (= b_free!136207 (not b_next!136997))))

(declare-fun tp!2410980 () Bool)

(declare-fun b_and!354643 () Bool)

(assert (=> b!8044706 (= tp!2410980 b_and!354643)))

(declare-fun b_free!136209 () Bool)

(declare-fun b_next!136999 () Bool)

(assert (=> b!8044706 (= b_free!136209 (not b_next!136999))))

(declare-fun tp!2410982 () Bool)

(declare-fun b_and!354645 () Bool)

(assert (=> b!8044706 (= tp!2410982 b_and!354645)))

(declare-fun e!4739111 () Bool)

(assert (=> b!8044702 (= e!4739111 (and tp!2410983 tp!2410979))))

(declare-fun b!8044703 () Bool)

(declare-fun res!3180023 () Bool)

(declare-fun e!4739116 () Bool)

(assert (=> b!8044703 (=> (not res!3180023) (not e!4739116))))

(declare-datatypes ((LexerInterface!8328 0))(
  ( (LexerInterfaceExt!8325 (__x!35397 Int)) (Lexer!8326) )
))
(declare-fun thiss!26855 () LexerInterface!8328)

(declare-datatypes ((C!43956 0))(
  ( (C!43957 (val!32754 Int)) )
))
(declare-datatypes ((List!75368 0))(
  ( (Nil!75242) (Cons!75242 (h!81690 C!43956) (t!391138 List!75368)) )
))
(declare-datatypes ((IArray!32073 0))(
  ( (IArray!32074 (innerList!16094 List!75368)) )
))
(declare-datatypes ((String!85063 0))(
  ( (String!85064 (value!292061 String)) )
))
(declare-datatypes ((Conc!16006 0))(
  ( (Node!16006 (left!57332 Conc!16006) (right!57662 Conc!16006) (csize!32242 Int) (cheight!16217 Int)) (Leaf!30685 (xs!19404 IArray!32073) (csize!32243 Int)) (Empty!16006) )
))
(declare-datatypes ((List!75369 0))(
  ( (Nil!75243) (Cons!75243 (h!81691 (_ BitVec 16)) (t!391139 List!75369)) )
))
(declare-datatypes ((TokenValue!9058 0))(
  ( (FloatLiteralValue!18116 (text!63851 List!75369)) (TokenValueExt!9057 (__x!35398 Int)) (Broken!45290 (value!292062 List!75369)) (Object!9183) (End!9058) (Def!9058) (Underscore!9058) (Match!9058) (Else!9058) (Error!9058) (Case!9058) (If!9058) (Extends!9058) (Abstract!9058) (Class!9058) (Val!9058) (DelimiterValue!18116 (del!9118 List!75369)) (KeywordValue!9064 (value!292063 List!75369)) (CommentValue!18116 (value!292064 List!75369)) (WhitespaceValue!18116 (value!292065 List!75369)) (IndentationValue!9058 (value!292066 List!75369)) (String!85065) (Int32!9058) (Broken!45291 (value!292067 List!75369)) (Boolean!9059) (Unit!171101) (OperatorValue!9061 (op!9118 List!75369)) (IdentifierValue!18116 (value!292068 List!75369)) (IdentifierValue!18117 (value!292069 List!75369)) (WhitespaceValue!18117 (value!292070 List!75369)) (True!18116) (False!18116) (Broken!45292 (value!292071 List!75369)) (Broken!45293 (value!292072 List!75369)) (True!18117) (RightBrace!9058) (RightBracket!9058) (Colon!9058) (Null!9058) (Comma!9058) (LeftBracket!9058) (False!18117) (LeftBrace!9058) (ImaginaryLiteralValue!9058 (text!63852 List!75369)) (StringLiteralValue!27174 (value!292073 List!75369)) (EOFValue!9058 (value!292074 List!75369)) (IdentValue!9058 (value!292075 List!75369)) (DelimiterValue!18117 (value!292076 List!75369)) (DedentValue!9058 (value!292077 List!75369)) (NewLineValue!9058 (value!292078 List!75369)) (IntegerValue!27174 (value!292079 (_ BitVec 32)) (text!63853 List!75369)) (IntegerValue!27175 (value!292080 Int) (text!63854 List!75369)) (Times!9058) (Or!9058) (Equal!9058) (Minus!9058) (Broken!45294 (value!292081 List!75369)) (And!9058) (Div!9058) (LessEqual!9058) (Mod!9058) (Concat!30867) (Not!9058) (Plus!9058) (SpaceValue!9058 (value!292082 List!75369)) (IntegerValue!27176 (value!292083 Int) (text!63855 List!75369)) (StringLiteralValue!27175 (text!63856 List!75369)) (FloatLiteralValue!18117 (text!63857 List!75369)) (BytesLiteralValue!9058 (value!292084 List!75369)) (CommentValue!18117 (value!292085 List!75369)) (StringLiteralValue!27176 (value!292086 List!75369)) (ErrorTokenValue!9058 (msg!9119 List!75369)) )
))
(declare-datatypes ((BalanceConc!30968 0))(
  ( (BalanceConc!30969 (c!1475389 Conc!16006)) )
))
(declare-datatypes ((TokenValueInjection!17424 0))(
  ( (TokenValueInjection!17425 (toValue!11813 Int) (toChars!11672 Int)) )
))
(declare-datatypes ((Regex!21809 0))(
  ( (ElementMatch!21809 (c!1475390 C!43956)) (Concat!30868 (regOne!44130 Regex!21809) (regTwo!44130 Regex!21809)) (EmptyExpr!21809) (Star!21809 (reg!22138 Regex!21809)) (EmptyLang!21809) (Union!21809 (regOne!44131 Regex!21809) (regTwo!44131 Regex!21809)) )
))
(declare-datatypes ((Rule!17276 0))(
  ( (Rule!17277 (regex!8738 Regex!21809) (tag!9602 String!85063) (isSeparator!8738 Bool) (transformation!8738 TokenValueInjection!17424)) )
))
(declare-datatypes ((List!75370 0))(
  ( (Nil!75244) (Cons!75244 (h!81692 Rule!17276) (t!391140 List!75370)) )
))
(declare-fun lt!2722587 () List!75370)

(declare-fun rulesValidInductive!3457 (LexerInterface!8328 List!75370) Bool)

(assert (=> b!8044703 (= res!3180023 (rulesValidInductive!3457 thiss!26855 lt!2722587))))

(declare-fun b!8044704 () Bool)

(assert (=> b!8044704 (= e!4739116 false)))

(declare-fun lt!2722588 () Bool)

(declare-datatypes ((List!75371 0))(
  ( (Nil!75245) (Cons!75245 (h!81693 String!85063) (t!391141 List!75371)) )
))
(declare-fun noDuplicateTag!3316 (LexerInterface!8328 List!75370 List!75371) Bool)

(assert (=> b!8044704 (= lt!2722588 (noDuplicateTag!3316 thiss!26855 lt!2722587 Nil!75245))))

(declare-fun e!4739110 () Bool)

(declare-fun tp!2410981 () Bool)

(declare-fun b!8044705 () Bool)

(declare-fun e!4739115 () Bool)

(declare-fun r!4387 () Rule!17276)

(declare-fun inv!97012 (String!85063) Bool)

(declare-fun inv!97014 (TokenValueInjection!17424) Bool)

(assert (=> b!8044705 (= e!4739115 (and tp!2410981 (inv!97012 (tag!9602 r!4387)) (inv!97014 (transformation!8738 r!4387)) e!4739110))))

(declare-fun res!3180024 () Bool)

(declare-fun e!4739113 () Bool)

(assert (=> start!757440 (=> (not res!3180024) (not e!4739113))))

(get-info :version)

(assert (=> start!757440 (= res!3180024 ((_ is Lexer!8326) thiss!26855))))

(assert (=> start!757440 e!4739113))

(assert (=> start!757440 true))

(assert (=> start!757440 e!4739115))

(declare-fun e!4739114 () Bool)

(assert (=> start!757440 e!4739114))

(assert (=> b!8044706 (= e!4739110 (and tp!2410980 tp!2410982))))

(declare-fun b!8044707 () Bool)

(assert (=> b!8044707 (= e!4739113 e!4739116)))

(declare-fun res!3180025 () Bool)

(assert (=> b!8044707 (=> (not res!3180025) (not e!4739116))))

(declare-fun rulesInvariant!6796 (LexerInterface!8328 List!75370) Bool)

(assert (=> b!8044707 (= res!3180025 (rulesInvariant!6796 thiss!26855 lt!2722587))))

(declare-fun rules!4030 () List!75370)

(assert (=> b!8044707 (= lt!2722587 (Cons!75244 r!4387 rules!4030))))

(declare-fun b!8044708 () Bool)

(declare-fun e!4739112 () Bool)

(declare-fun tp!2410977 () Bool)

(assert (=> b!8044708 (= e!4739114 (and e!4739112 tp!2410977))))

(declare-fun b!8044709 () Bool)

(declare-fun tp!2410978 () Bool)

(assert (=> b!8044709 (= e!4739112 (and tp!2410978 (inv!97012 (tag!9602 (h!81692 rules!4030))) (inv!97014 (transformation!8738 (h!81692 rules!4030))) e!4739111))))

(assert (= (and start!757440 res!3180024) b!8044707))

(assert (= (and b!8044707 res!3180025) b!8044703))

(assert (= (and b!8044703 res!3180023) b!8044704))

(assert (= b!8044705 b!8044706))

(assert (= start!757440 b!8044705))

(assert (= b!8044709 b!8044702))

(assert (= b!8044708 b!8044709))

(assert (= (and start!757440 ((_ is Cons!75244) rules!4030)) b!8044708))

(declare-fun m!8397560 () Bool)

(assert (=> b!8044709 m!8397560))

(declare-fun m!8397562 () Bool)

(assert (=> b!8044709 m!8397562))

(declare-fun m!8397564 () Bool)

(assert (=> b!8044707 m!8397564))

(declare-fun m!8397566 () Bool)

(assert (=> b!8044705 m!8397566))

(declare-fun m!8397568 () Bool)

(assert (=> b!8044705 m!8397568))

(declare-fun m!8397570 () Bool)

(assert (=> b!8044704 m!8397570))

(declare-fun m!8397572 () Bool)

(assert (=> b!8044703 m!8397572))

(check-sat (not b_next!136999) (not b!8044703) b_and!354645 b_and!354639 (not b!8044707) b_and!354643 (not b!8044705) (not b!8044708) (not b!8044704) b_and!354641 (not b_next!136997) (not b_next!136995) (not b_next!136993) (not b!8044709))
(check-sat (not b_next!136999) b_and!354645 b_and!354639 b_and!354643 b_and!354641 (not b_next!136997) (not b_next!136995) (not b_next!136993))

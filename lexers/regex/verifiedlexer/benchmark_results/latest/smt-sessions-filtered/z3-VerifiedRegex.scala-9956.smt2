; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522000 () Bool)

(assert start!522000)

(declare-fun b!4953130 () Bool)

(declare-fun b_free!132027 () Bool)

(declare-fun b_next!132817 () Bool)

(assert (=> b!4953130 (= b_free!132027 (not b_next!132817))))

(declare-fun tp!1388504 () Bool)

(declare-fun b_and!346879 () Bool)

(assert (=> b!4953130 (= tp!1388504 b_and!346879)))

(declare-fun b_free!132029 () Bool)

(declare-fun b_next!132819 () Bool)

(assert (=> b!4953130 (= b_free!132029 (not b_next!132819))))

(declare-fun tp!1388505 () Bool)

(declare-fun b_and!346881 () Bool)

(assert (=> b!4953130 (= tp!1388505 b_and!346881)))

(declare-fun b!4953129 () Bool)

(declare-fun res!2113044 () Bool)

(declare-fun e!3094644 () Bool)

(assert (=> b!4953129 (=> (not res!2113044) (not e!3094644))))

(declare-datatypes ((LexerInterface!7856 0))(
  ( (LexerInterfaceExt!7853 (__x!34441 Int)) (Lexer!7854) )
))
(declare-fun thiss!15247 () LexerInterface!7856)

(declare-datatypes ((List!57178 0))(
  ( (Nil!57054) (Cons!57054 (h!63502 (_ BitVec 16)) (t!367744 List!57178)) )
))
(declare-datatypes ((TokenValue!8574 0))(
  ( (FloatLiteralValue!17148 (text!60463 List!57178)) (TokenValueExt!8573 (__x!34442 Int)) (Broken!42870 (value!264951 List!57178)) (Object!8697) (End!8574) (Def!8574) (Underscore!8574) (Match!8574) (Else!8574) (Error!8574) (Case!8574) (If!8574) (Extends!8574) (Abstract!8574) (Class!8574) (Val!8574) (DelimiterValue!17148 (del!8634 List!57178)) (KeywordValue!8580 (value!264952 List!57178)) (CommentValue!17148 (value!264953 List!57178)) (WhitespaceValue!17148 (value!264954 List!57178)) (IndentationValue!8574 (value!264955 List!57178)) (String!64743) (Int32!8574) (Broken!42871 (value!264956 List!57178)) (Boolean!8575) (Unit!147950) (OperatorValue!8577 (op!8634 List!57178)) (IdentifierValue!17148 (value!264957 List!57178)) (IdentifierValue!17149 (value!264958 List!57178)) (WhitespaceValue!17149 (value!264959 List!57178)) (True!17148) (False!17148) (Broken!42872 (value!264960 List!57178)) (Broken!42873 (value!264961 List!57178)) (True!17149) (RightBrace!8574) (RightBracket!8574) (Colon!8574) (Null!8574) (Comma!8574) (LeftBracket!8574) (False!17149) (LeftBrace!8574) (ImaginaryLiteralValue!8574 (text!60464 List!57178)) (StringLiteralValue!25722 (value!264962 List!57178)) (EOFValue!8574 (value!264963 List!57178)) (IdentValue!8574 (value!264964 List!57178)) (DelimiterValue!17149 (value!264965 List!57178)) (DedentValue!8574 (value!264966 List!57178)) (NewLineValue!8574 (value!264967 List!57178)) (IntegerValue!25722 (value!264968 (_ BitVec 32)) (text!60465 List!57178)) (IntegerValue!25723 (value!264969 Int) (text!60466 List!57178)) (Times!8574) (Or!8574) (Equal!8574) (Minus!8574) (Broken!42874 (value!264970 List!57178)) (And!8574) (Div!8574) (LessEqual!8574) (Mod!8574) (Concat!22071) (Not!8574) (Plus!8574) (SpaceValue!8574 (value!264971 List!57178)) (IntegerValue!25724 (value!264972 Int) (text!60467 List!57178)) (StringLiteralValue!25723 (text!60468 List!57178)) (FloatLiteralValue!17149 (text!60469 List!57178)) (BytesLiteralValue!8574 (value!264973 List!57178)) (CommentValue!17149 (value!264974 List!57178)) (StringLiteralValue!25724 (value!264975 List!57178)) (ErrorTokenValue!8574 (msg!8635 List!57178)) )
))
(declare-datatypes ((C!27244 0))(
  ( (C!27245 (val!22988 Int)) )
))
(declare-datatypes ((List!57179 0))(
  ( (Nil!57055) (Cons!57055 (h!63503 C!27244) (t!367745 List!57179)) )
))
(declare-datatypes ((IArray!30093 0))(
  ( (IArray!30094 (innerList!15104 List!57179)) )
))
(declare-datatypes ((Regex!13497 0))(
  ( (ElementMatch!13497 (c!845921 C!27244)) (Concat!22072 (regOne!27506 Regex!13497) (regTwo!27506 Regex!13497)) (EmptyExpr!13497) (Star!13497 (reg!13826 Regex!13497)) (EmptyLang!13497) (Union!13497 (regOne!27507 Regex!13497) (regTwo!27507 Regex!13497)) )
))
(declare-datatypes ((String!64744 0))(
  ( (String!64745 (value!264976 String)) )
))
(declare-datatypes ((Conc!15016 0))(
  ( (Node!15016 (left!41626 Conc!15016) (right!41956 Conc!15016) (csize!30262 Int) (cheight!15227 Int)) (Leaf!24973 (xs!18342 IArray!30093) (csize!30263 Int)) (Empty!15016) )
))
(declare-datatypes ((BalanceConc!29462 0))(
  ( (BalanceConc!29463 (c!845922 Conc!15016)) )
))
(declare-datatypes ((TokenValueInjection!16456 0))(
  ( (TokenValueInjection!16457 (toValue!11215 Int) (toChars!11074 Int)) )
))
(declare-datatypes ((Rule!16328 0))(
  ( (Rule!16329 (regex!8264 Regex!13497) (tag!9128 String!64744) (isSeparator!8264 Bool) (transformation!8264 TokenValueInjection!16456)) )
))
(declare-datatypes ((List!57180 0))(
  ( (Nil!57056) (Cons!57056 (h!63504 Rule!16328) (t!367746 List!57180)) )
))
(declare-fun rulesArg!259 () List!57180)

(declare-fun rulesValidInductive!3167 (LexerInterface!7856 List!57180) Bool)

(assert (=> b!4953129 (= res!2113044 (rulesValidInductive!3167 thiss!15247 rulesArg!259))))

(declare-fun e!3094645 () Bool)

(assert (=> b!4953130 (= e!3094645 (and tp!1388504 tp!1388505))))

(declare-fun b!4953131 () Bool)

(declare-fun e!3094641 () Bool)

(declare-fun totalInput!464 () BalanceConc!29462)

(declare-fun tp!1388508 () Bool)

(declare-fun inv!74372 (Conc!15016) Bool)

(assert (=> b!4953131 (= e!3094641 (and (inv!74372 (c!845922 totalInput!464)) tp!1388508))))

(declare-fun b!4953132 () Bool)

(assert (=> b!4953132 (= e!3094644 false)))

(declare-fun lt!2044259 () Bool)

(declare-fun input!1342 () BalanceConc!29462)

(declare-fun isSuffix!1063 (List!57179 List!57179) Bool)

(declare-fun list!18195 (BalanceConc!29462) List!57179)

(assert (=> b!4953132 (= lt!2044259 (isSuffix!1063 (list!18195 input!1342) (list!18195 totalInput!464)))))

(declare-fun res!2113046 () Bool)

(assert (=> start!522000 (=> (not res!2113046) (not e!3094644))))

(get-info :version)

(assert (=> start!522000 (= res!2113046 ((_ is Lexer!7854) thiss!15247))))

(assert (=> start!522000 e!3094644))

(assert (=> start!522000 true))

(declare-fun e!3094642 () Bool)

(assert (=> start!522000 e!3094642))

(declare-fun e!3094640 () Bool)

(declare-fun inv!74373 (BalanceConc!29462) Bool)

(assert (=> start!522000 (and (inv!74373 input!1342) e!3094640)))

(assert (=> start!522000 (and (inv!74373 totalInput!464) e!3094641)))

(declare-fun b!4953133 () Bool)

(declare-fun tp!1388507 () Bool)

(assert (=> b!4953133 (= e!3094640 (and (inv!74372 (c!845922 input!1342)) tp!1388507))))

(declare-fun b!4953134 () Bool)

(declare-fun e!3094639 () Bool)

(declare-fun tp!1388506 () Bool)

(assert (=> b!4953134 (= e!3094642 (and e!3094639 tp!1388506))))

(declare-fun tp!1388503 () Bool)

(declare-fun b!4953135 () Bool)

(declare-fun inv!74368 (String!64744) Bool)

(declare-fun inv!74374 (TokenValueInjection!16456) Bool)

(assert (=> b!4953135 (= e!3094639 (and tp!1388503 (inv!74368 (tag!9128 (h!63504 rulesArg!259))) (inv!74374 (transformation!8264 (h!63504 rulesArg!259))) e!3094645))))

(declare-fun b!4953136 () Bool)

(declare-fun res!2113045 () Bool)

(assert (=> b!4953136 (=> (not res!2113045) (not e!3094644))))

(declare-fun isEmpty!30684 (List!57180) Bool)

(assert (=> b!4953136 (= res!2113045 (not (isEmpty!30684 rulesArg!259)))))

(assert (= (and start!522000 res!2113046) b!4953129))

(assert (= (and b!4953129 res!2113044) b!4953136))

(assert (= (and b!4953136 res!2113045) b!4953132))

(assert (= b!4953135 b!4953130))

(assert (= b!4953134 b!4953135))

(assert (= (and start!522000 ((_ is Cons!57056) rulesArg!259)) b!4953134))

(assert (= start!522000 b!4953133))

(assert (= start!522000 b!4953131))

(declare-fun m!5977898 () Bool)

(assert (=> b!4953129 m!5977898))

(declare-fun m!5977900 () Bool)

(assert (=> start!522000 m!5977900))

(declare-fun m!5977902 () Bool)

(assert (=> start!522000 m!5977902))

(declare-fun m!5977904 () Bool)

(assert (=> b!4953136 m!5977904))

(declare-fun m!5977906 () Bool)

(assert (=> b!4953135 m!5977906))

(declare-fun m!5977908 () Bool)

(assert (=> b!4953135 m!5977908))

(declare-fun m!5977910 () Bool)

(assert (=> b!4953132 m!5977910))

(declare-fun m!5977912 () Bool)

(assert (=> b!4953132 m!5977912))

(assert (=> b!4953132 m!5977910))

(assert (=> b!4953132 m!5977912))

(declare-fun m!5977914 () Bool)

(assert (=> b!4953132 m!5977914))

(declare-fun m!5977916 () Bool)

(assert (=> b!4953131 m!5977916))

(declare-fun m!5977918 () Bool)

(assert (=> b!4953133 m!5977918))

(check-sat (not b!4953132) (not b!4953133) (not b_next!132817) (not b_next!132819) (not b!4953136) (not b!4953131) b_and!346881 (not b!4953129) (not b!4953135) (not b!4953134) b_and!346879 (not start!522000))
(check-sat b_and!346879 b_and!346881 (not b_next!132817) (not b_next!132819))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511196 () Bool)

(assert start!511196)

(declare-fun b!4884988 () Bool)

(declare-fun b_free!131179 () Bool)

(declare-fun b_next!131969 () Bool)

(assert (=> b!4884988 (= b_free!131179 (not b_next!131969))))

(declare-fun tp!1374701 () Bool)

(declare-fun b_and!344011 () Bool)

(assert (=> b!4884988 (= tp!1374701 b_and!344011)))

(declare-fun b_free!131181 () Bool)

(declare-fun b_next!131971 () Bool)

(assert (=> b!4884988 (= b_free!131181 (not b_next!131971))))

(declare-fun tp!1374704 () Bool)

(declare-fun b_and!344013 () Bool)

(assert (=> b!4884988 (= tp!1374704 b_and!344013)))

(declare-fun b!4884979 () Bool)

(declare-fun e!3053436 () Bool)

(declare-fun e!3053432 () Bool)

(assert (=> b!4884979 (= e!3053436 e!3053432)))

(declare-fun res!2085711 () Bool)

(assert (=> b!4884979 (=> res!2085711 e!3053432)))

(declare-fun lt!2001453 () Bool)

(declare-datatypes ((C!26584 0))(
  ( (C!26585 (val!22626 Int)) )
))
(declare-datatypes ((List!56359 0))(
  ( (Nil!56235) (Cons!56235 (h!62683 C!26584) (t!365005 List!56359)) )
))
(declare-datatypes ((List!56360 0))(
  ( (Nil!56236) (Cons!56236 (h!62684 (_ BitVec 16)) (t!365006 List!56360)) )
))
(declare-datatypes ((TokenValue!8428 0))(
  ( (FloatLiteralValue!16856 (text!59441 List!56360)) (TokenValueExt!8427 (__x!34149 Int)) (Broken!42140 (value!260489 List!56360)) (Object!8551) (End!8428) (Def!8428) (Underscore!8428) (Match!8428) (Else!8428) (Error!8428) (Case!8428) (If!8428) (Extends!8428) (Abstract!8428) (Class!8428) (Val!8428) (DelimiterValue!16856 (del!8488 List!56360)) (KeywordValue!8434 (value!260490 List!56360)) (CommentValue!16856 (value!260491 List!56360)) (WhitespaceValue!16856 (value!260492 List!56360)) (IndentationValue!8428 (value!260493 List!56360)) (String!63581) (Int32!8428) (Broken!42141 (value!260494 List!56360)) (Boolean!8429) (Unit!146225) (OperatorValue!8431 (op!8488 List!56360)) (IdentifierValue!16856 (value!260495 List!56360)) (IdentifierValue!16857 (value!260496 List!56360)) (WhitespaceValue!16857 (value!260497 List!56360)) (True!16856) (False!16856) (Broken!42142 (value!260498 List!56360)) (Broken!42143 (value!260499 List!56360)) (True!16857) (RightBrace!8428) (RightBracket!8428) (Colon!8428) (Null!8428) (Comma!8428) (LeftBracket!8428) (False!16857) (LeftBrace!8428) (ImaginaryLiteralValue!8428 (text!59442 List!56360)) (StringLiteralValue!25284 (value!260500 List!56360)) (EOFValue!8428 (value!260501 List!56360)) (IdentValue!8428 (value!260502 List!56360)) (DelimiterValue!16857 (value!260503 List!56360)) (DedentValue!8428 (value!260504 List!56360)) (NewLineValue!8428 (value!260505 List!56360)) (IntegerValue!25284 (value!260506 (_ BitVec 32)) (text!59443 List!56360)) (IntegerValue!25285 (value!260507 Int) (text!59444 List!56360)) (Times!8428) (Or!8428) (Equal!8428) (Minus!8428) (Broken!42144 (value!260508 List!56360)) (And!8428) (Div!8428) (LessEqual!8428) (Mod!8428) (Concat!21621) (Not!8428) (Plus!8428) (SpaceValue!8428 (value!260509 List!56360)) (IntegerValue!25286 (value!260510 Int) (text!59445 List!56360)) (StringLiteralValue!25285 (text!59446 List!56360)) (FloatLiteralValue!16857 (text!59447 List!56360)) (BytesLiteralValue!8428 (value!260511 List!56360)) (CommentValue!16857 (value!260512 List!56360)) (StringLiteralValue!25286 (value!260513 List!56360)) (ErrorTokenValue!8428 (msg!8489 List!56360)) )
))
(declare-datatypes ((Regex!13193 0))(
  ( (ElementMatch!13193 (c!830595 C!26584)) (Concat!21622 (regOne!26898 Regex!13193) (regTwo!26898 Regex!13193)) (EmptyExpr!13193) (Star!13193 (reg!13522 Regex!13193)) (EmptyLang!13193) (Union!13193 (regOne!26899 Regex!13193) (regTwo!26899 Regex!13193)) )
))
(declare-datatypes ((String!63582 0))(
  ( (String!63583 (value!260514 String)) )
))
(declare-datatypes ((IArray!29433 0))(
  ( (IArray!29434 (innerList!14774 List!56359)) )
))
(declare-datatypes ((Conc!14686 0))(
  ( (Node!14686 (left!40847 Conc!14686) (right!41177 Conc!14686) (csize!29602 Int) (cheight!14897 Int)) (Leaf!24462 (xs!18002 IArray!29433) (csize!29603 Int)) (Empty!14686) )
))
(declare-datatypes ((BalanceConc!28802 0))(
  ( (BalanceConc!28803 (c!830596 Conc!14686)) )
))
(declare-datatypes ((TokenValueInjection!16164 0))(
  ( (TokenValueInjection!16165 (toValue!11005 Int) (toChars!10864 Int)) )
))
(declare-datatypes ((Rule!16036 0))(
  ( (Rule!16037 (regex!8118 Regex!13193) (tag!8982 String!63582) (isSeparator!8118 Bool) (transformation!8118 TokenValueInjection!16164)) )
))
(declare-datatypes ((Token!14804 0))(
  ( (Token!14805 (value!260515 TokenValue!8428) (rule!11284 Rule!16036) (size!37044 Int) (originalCharacters!8433 List!56359)) )
))
(declare-datatypes ((tuple2!60180 0))(
  ( (tuple2!60181 (_1!33393 Token!14804) (_2!33393 List!56359)) )
))
(declare-datatypes ((Option!13919 0))(
  ( (None!13918) (Some!13918 (v!49868 tuple2!60180)) )
))
(declare-fun lt!2001457 () Option!13919)

(declare-fun isDefined!10942 (Option!13919) Bool)

(assert (=> b!4884979 (= res!2085711 (not (= lt!2001453 (isDefined!10942 lt!2001457))))))

(declare-datatypes ((tuple2!60182 0))(
  ( (tuple2!60183 (_1!33394 Token!14804) (_2!33394 BalanceConc!28802)) )
))
(declare-datatypes ((Option!13920 0))(
  ( (None!13919) (Some!13919 (v!49869 tuple2!60182)) )
))
(declare-fun lt!2001452 () Option!13920)

(declare-fun isDefined!10943 (Option!13920) Bool)

(assert (=> b!4884979 (= lt!2001453 (isDefined!10943 lt!2001452))))

(declare-datatypes ((LexerInterface!7710 0))(
  ( (LexerInterfaceExt!7707 (__x!34150 Int)) (Lexer!7708) )
))
(declare-fun thiss!14805 () LexerInterface!7710)

(declare-fun lt!2001459 () List!56359)

(declare-datatypes ((List!56361 0))(
  ( (Nil!56237) (Cons!56237 (h!62685 Rule!16036) (t!365007 List!56361)) )
))
(declare-fun rulesArg!165 () List!56361)

(declare-fun maxPrefixZipper!621 (LexerInterface!7710 List!56361 List!56359) Option!13919)

(assert (=> b!4884979 (= lt!2001457 (maxPrefixZipper!621 thiss!14805 rulesArg!165 lt!2001459))))

(declare-fun b!4884980 () Bool)

(declare-fun res!2085710 () Bool)

(declare-fun e!3053431 () Bool)

(assert (=> b!4884980 (=> (not res!2085710) (not e!3053431))))

(declare-fun isEmpty!30133 (List!56361) Bool)

(assert (=> b!4884980 (= res!2085710 (not (isEmpty!30133 rulesArg!165)))))

(declare-fun b!4884981 () Bool)

(declare-fun e!3053439 () Bool)

(assert (=> b!4884981 (= e!3053431 (not e!3053439))))

(declare-fun res!2085713 () Bool)

(assert (=> b!4884981 (=> res!2085713 e!3053439)))

(get-info :version)

(assert (=> b!4884981 (= res!2085713 (or (and ((_ is Cons!56237) rulesArg!165) ((_ is Nil!56237) (t!365007 rulesArg!165))) (not ((_ is Cons!56237) rulesArg!165))))))

(declare-fun isPrefix!4840 (List!56359 List!56359) Bool)

(assert (=> b!4884981 (isPrefix!4840 lt!2001459 lt!2001459)))

(declare-datatypes ((Unit!146226 0))(
  ( (Unit!146227) )
))
(declare-fun lt!2001455 () Unit!146226)

(declare-fun lemmaIsPrefixRefl!3237 (List!56359 List!56359) Unit!146226)

(assert (=> b!4884981 (= lt!2001455 (lemmaIsPrefixRefl!3237 lt!2001459 lt!2001459))))

(declare-fun input!1236 () BalanceConc!28802)

(declare-fun list!17647 (BalanceConc!28802) List!56359)

(assert (=> b!4884981 (= lt!2001459 (list!17647 input!1236))))

(declare-fun res!2085715 () Bool)

(assert (=> start!511196 (=> (not res!2085715) (not e!3053431))))

(assert (=> start!511196 (= res!2085715 ((_ is Lexer!7708) thiss!14805))))

(assert (=> start!511196 e!3053431))

(assert (=> start!511196 true))

(declare-fun e!3053430 () Bool)

(assert (=> start!511196 e!3053430))

(declare-fun e!3053433 () Bool)

(declare-fun inv!72366 (BalanceConc!28802) Bool)

(assert (=> start!511196 (and (inv!72366 input!1236) e!3053433)))

(declare-fun b!4884982 () Bool)

(declare-fun res!2085712 () Bool)

(assert (=> b!4884982 (=> (not res!2085712) (not e!3053431))))

(declare-fun rulesValidInductive!3097 (LexerInterface!7710 List!56361) Bool)

(assert (=> b!4884982 (= res!2085712 (rulesValidInductive!3097 thiss!14805 rulesArg!165))))

(declare-fun b!4884983 () Bool)

(assert (=> b!4884983 (= e!3053439 e!3053436)))

(declare-fun res!2085708 () Bool)

(assert (=> b!4884983 (=> res!2085708 e!3053436)))

(declare-fun lt!2001454 () Option!13920)

(assert (=> b!4884983 (= res!2085708 (or (and ((_ is None!13919) lt!2001454) ((_ is None!13919) lt!2001452)) ((_ is None!13919) lt!2001452) (not ((_ is None!13919) lt!2001454))))))

(declare-fun maxPrefixZipperSequence!1279 (LexerInterface!7710 List!56361 BalanceConc!28802) Option!13920)

(assert (=> b!4884983 (= lt!2001452 (maxPrefixZipperSequence!1279 thiss!14805 (t!365007 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!644 (LexerInterface!7710 Rule!16036 BalanceConc!28802) Option!13920)

(assert (=> b!4884983 (= lt!2001454 (maxPrefixOneRuleZipperSequence!644 thiss!14805 (h!62685 rulesArg!165) input!1236))))

(declare-fun b!4884984 () Bool)

(declare-fun e!3053434 () Bool)

(declare-fun lt!2001460 () tuple2!60182)

(declare-fun lt!2001456 () tuple2!60180)

(assert (=> b!4884984 (= e!3053434 (= (list!17647 (_2!33394 lt!2001460)) (_2!33393 lt!2001456)))))

(declare-fun b!4884985 () Bool)

(declare-fun e!3053435 () Bool)

(declare-fun tp!1374702 () Bool)

(assert (=> b!4884985 (= e!3053430 (and e!3053435 tp!1374702))))

(declare-fun e!3053437 () Bool)

(declare-fun tp!1374705 () Bool)

(declare-fun b!4884986 () Bool)

(declare-fun inv!72362 (String!63582) Bool)

(declare-fun inv!72367 (TokenValueInjection!16164) Bool)

(assert (=> b!4884986 (= e!3053435 (and tp!1374705 (inv!72362 (tag!8982 (h!62685 rulesArg!165))) (inv!72367 (transformation!8118 (h!62685 rulesArg!165))) e!3053437))))

(declare-fun b!4884987 () Bool)

(assert (=> b!4884987 (= e!3053432 true)))

(declare-fun lt!2001458 () Bool)

(declare-fun e!3053438 () Bool)

(assert (=> b!4884987 (= lt!2001458 e!3053438)))

(declare-fun res!2085714 () Bool)

(assert (=> b!4884987 (=> res!2085714 e!3053438)))

(assert (=> b!4884987 (= res!2085714 (not lt!2001453))))

(assert (=> b!4884988 (= e!3053437 (and tp!1374701 tp!1374704))))

(declare-fun b!4884989 () Bool)

(declare-fun tp!1374703 () Bool)

(declare-fun inv!72368 (Conc!14686) Bool)

(assert (=> b!4884989 (= e!3053433 (and (inv!72368 (c!830596 input!1236)) tp!1374703))))

(declare-fun b!4884990 () Bool)

(assert (=> b!4884990 (= e!3053438 e!3053434)))

(declare-fun res!2085709 () Bool)

(assert (=> b!4884990 (=> (not res!2085709) (not e!3053434))))

(assert (=> b!4884990 (= res!2085709 (= (_1!33394 lt!2001460) (_1!33393 lt!2001456)))))

(declare-fun get!19366 (Option!13919) tuple2!60180)

(assert (=> b!4884990 (= lt!2001456 (get!19366 lt!2001457))))

(declare-fun get!19367 (Option!13920) tuple2!60182)

(assert (=> b!4884990 (= lt!2001460 (get!19367 lt!2001452))))

(assert (= (and start!511196 res!2085715) b!4884982))

(assert (= (and b!4884982 res!2085712) b!4884980))

(assert (= (and b!4884980 res!2085710) b!4884981))

(assert (= (and b!4884981 (not res!2085713)) b!4884983))

(assert (= (and b!4884983 (not res!2085708)) b!4884979))

(assert (= (and b!4884979 (not res!2085711)) b!4884987))

(assert (= (and b!4884987 (not res!2085714)) b!4884990))

(assert (= (and b!4884990 res!2085709) b!4884984))

(assert (= b!4884986 b!4884988))

(assert (= b!4884985 b!4884986))

(assert (= (and start!511196 ((_ is Cons!56237) rulesArg!165)) b!4884985))

(assert (= start!511196 b!4884989))

(declare-fun m!5888862 () Bool)

(assert (=> b!4884979 m!5888862))

(declare-fun m!5888864 () Bool)

(assert (=> b!4884979 m!5888864))

(declare-fun m!5888866 () Bool)

(assert (=> b!4884979 m!5888866))

(declare-fun m!5888868 () Bool)

(assert (=> b!4884986 m!5888868))

(declare-fun m!5888870 () Bool)

(assert (=> b!4884986 m!5888870))

(declare-fun m!5888872 () Bool)

(assert (=> b!4884983 m!5888872))

(declare-fun m!5888874 () Bool)

(assert (=> b!4884983 m!5888874))

(declare-fun m!5888876 () Bool)

(assert (=> start!511196 m!5888876))

(declare-fun m!5888878 () Bool)

(assert (=> b!4884981 m!5888878))

(declare-fun m!5888880 () Bool)

(assert (=> b!4884981 m!5888880))

(declare-fun m!5888882 () Bool)

(assert (=> b!4884981 m!5888882))

(declare-fun m!5888884 () Bool)

(assert (=> b!4884990 m!5888884))

(declare-fun m!5888886 () Bool)

(assert (=> b!4884990 m!5888886))

(declare-fun m!5888888 () Bool)

(assert (=> b!4884989 m!5888888))

(declare-fun m!5888890 () Bool)

(assert (=> b!4884980 m!5888890))

(declare-fun m!5888892 () Bool)

(assert (=> b!4884984 m!5888892))

(declare-fun m!5888894 () Bool)

(assert (=> b!4884982 m!5888894))

(check-sat (not b!4884990) b_and!344013 b_and!344011 (not b!4884981) (not start!511196) (not b!4884985) (not b!4884982) (not b!4884979) (not b_next!131969) (not b!4884989) (not b!4884983) (not b!4884984) (not b!4884980) (not b!4884986) (not b_next!131971))
(check-sat b_and!344013 b_and!344011 (not b_next!131969) (not b_next!131971))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511024 () Bool)

(assert start!511024)

(declare-fun b!4883743 () Bool)

(declare-fun b_free!131091 () Bool)

(declare-fun b_next!131881 () Bool)

(assert (=> b!4883743 (= b_free!131091 (not b_next!131881))))

(declare-fun tp!1374287 () Bool)

(declare-fun b_and!343923 () Bool)

(assert (=> b!4883743 (= tp!1374287 b_and!343923)))

(declare-fun b_free!131093 () Bool)

(declare-fun b_next!131883 () Bool)

(assert (=> b!4883743 (= b_free!131093 (not b_next!131883))))

(declare-fun tp!1374291 () Bool)

(declare-fun b_and!343925 () Bool)

(assert (=> b!4883743 (= tp!1374291 b_and!343925)))

(declare-fun b!4883736 () Bool)

(declare-fun res!2084964 () Bool)

(declare-fun e!3052494 () Bool)

(assert (=> b!4883736 (=> (not res!2084964) (not e!3052494))))

(declare-datatypes ((LexerInterface!7692 0))(
  ( (LexerInterfaceExt!7689 (__x!34113 Int)) (Lexer!7690) )
))
(declare-fun thiss!14805 () LexerInterface!7692)

(declare-datatypes ((String!63491 0))(
  ( (String!63492 (value!259976 String)) )
))
(declare-datatypes ((C!26548 0))(
  ( (C!26549 (val!22608 Int)) )
))
(declare-datatypes ((List!56305 0))(
  ( (Nil!56181) (Cons!56181 (h!62629 C!26548) (t!364951 List!56305)) )
))
(declare-datatypes ((IArray!29397 0))(
  ( (IArray!29398 (innerList!14756 List!56305)) )
))
(declare-datatypes ((Conc!14668 0))(
  ( (Node!14668 (left!40812 Conc!14668) (right!41142 Conc!14668) (csize!29566 Int) (cheight!14879 Int)) (Leaf!24435 (xs!17984 IArray!29397) (csize!29567 Int)) (Empty!14668) )
))
(declare-datatypes ((BalanceConc!28766 0))(
  ( (BalanceConc!28767 (c!830481 Conc!14668)) )
))
(declare-datatypes ((List!56306 0))(
  ( (Nil!56182) (Cons!56182 (h!62630 (_ BitVec 16)) (t!364952 List!56306)) )
))
(declare-datatypes ((TokenValue!8410 0))(
  ( (FloatLiteralValue!16820 (text!59315 List!56306)) (TokenValueExt!8409 (__x!34114 Int)) (Broken!42050 (value!259977 List!56306)) (Object!8533) (End!8410) (Def!8410) (Underscore!8410) (Match!8410) (Else!8410) (Error!8410) (Case!8410) (If!8410) (Extends!8410) (Abstract!8410) (Class!8410) (Val!8410) (DelimiterValue!16820 (del!8470 List!56306)) (KeywordValue!8416 (value!259978 List!56306)) (CommentValue!16820 (value!259979 List!56306)) (WhitespaceValue!16820 (value!259980 List!56306)) (IndentationValue!8410 (value!259981 List!56306)) (String!63493) (Int32!8410) (Broken!42051 (value!259982 List!56306)) (Boolean!8411) (Unit!146171) (OperatorValue!8413 (op!8470 List!56306)) (IdentifierValue!16820 (value!259983 List!56306)) (IdentifierValue!16821 (value!259984 List!56306)) (WhitespaceValue!16821 (value!259985 List!56306)) (True!16820) (False!16820) (Broken!42052 (value!259986 List!56306)) (Broken!42053 (value!259987 List!56306)) (True!16821) (RightBrace!8410) (RightBracket!8410) (Colon!8410) (Null!8410) (Comma!8410) (LeftBracket!8410) (False!16821) (LeftBrace!8410) (ImaginaryLiteralValue!8410 (text!59316 List!56306)) (StringLiteralValue!25230 (value!259988 List!56306)) (EOFValue!8410 (value!259989 List!56306)) (IdentValue!8410 (value!259990 List!56306)) (DelimiterValue!16821 (value!259991 List!56306)) (DedentValue!8410 (value!259992 List!56306)) (NewLineValue!8410 (value!259993 List!56306)) (IntegerValue!25230 (value!259994 (_ BitVec 32)) (text!59317 List!56306)) (IntegerValue!25231 (value!259995 Int) (text!59318 List!56306)) (Times!8410) (Or!8410) (Equal!8410) (Minus!8410) (Broken!42054 (value!259996 List!56306)) (And!8410) (Div!8410) (LessEqual!8410) (Mod!8410) (Concat!21585) (Not!8410) (Plus!8410) (SpaceValue!8410 (value!259997 List!56306)) (IntegerValue!25232 (value!259998 Int) (text!59319 List!56306)) (StringLiteralValue!25231 (text!59320 List!56306)) (FloatLiteralValue!16821 (text!59321 List!56306)) (BytesLiteralValue!8410 (value!259999 List!56306)) (CommentValue!16821 (value!260000 List!56306)) (StringLiteralValue!25232 (value!260001 List!56306)) (ErrorTokenValue!8410 (msg!8471 List!56306)) )
))
(declare-datatypes ((Regex!13175 0))(
  ( (ElementMatch!13175 (c!830482 C!26548)) (Concat!21586 (regOne!26862 Regex!13175) (regTwo!26862 Regex!13175)) (EmptyExpr!13175) (Star!13175 (reg!13504 Regex!13175)) (EmptyLang!13175) (Union!13175 (regOne!26863 Regex!13175) (regTwo!26863 Regex!13175)) )
))
(declare-datatypes ((TokenValueInjection!16128 0))(
  ( (TokenValueInjection!16129 (toValue!10987 Int) (toChars!10846 Int)) )
))
(declare-datatypes ((Rule!16000 0))(
  ( (Rule!16001 (regex!8100 Regex!13175) (tag!8964 String!63491) (isSeparator!8100 Bool) (transformation!8100 TokenValueInjection!16128)) )
))
(declare-datatypes ((List!56307 0))(
  ( (Nil!56183) (Cons!56183 (h!62631 Rule!16000) (t!364953 List!56307)) )
))
(declare-fun rulesArg!165 () List!56307)

(declare-fun rulesValidInductive!3079 (LexerInterface!7692 List!56307) Bool)

(assert (=> b!4883736 (= res!2084964 (rulesValidInductive!3079 thiss!14805 rulesArg!165))))

(declare-fun tp!1374290 () Bool)

(declare-fun e!3052495 () Bool)

(declare-fun e!3052491 () Bool)

(declare-fun b!4883737 () Bool)

(declare-fun inv!72270 (String!63491) Bool)

(declare-fun inv!72274 (TokenValueInjection!16128) Bool)

(assert (=> b!4883737 (= e!3052491 (and tp!1374290 (inv!72270 (tag!8964 (h!62631 rulesArg!165))) (inv!72274 (transformation!8100 (h!62631 rulesArg!165))) e!3052495))))

(declare-fun b!4883739 () Bool)

(declare-fun res!2084961 () Bool)

(assert (=> b!4883739 (=> (not res!2084961) (not e!3052494))))

(declare-fun isEmpty!30101 (List!56307) Bool)

(assert (=> b!4883739 (= res!2084961 (not (isEmpty!30101 rulesArg!165)))))

(declare-fun b!4883740 () Bool)

(declare-fun e!3052492 () Bool)

(declare-fun tp!1374288 () Bool)

(assert (=> b!4883740 (= e!3052492 (and e!3052491 tp!1374288))))

(declare-fun b!4883741 () Bool)

(declare-fun e!3052496 () Bool)

(declare-fun e!3052493 () Bool)

(assert (=> b!4883741 (= e!3052496 e!3052493)))

(declare-fun res!2084963 () Bool)

(assert (=> b!4883741 (=> res!2084963 e!3052493)))

(declare-datatypes ((Token!14768 0))(
  ( (Token!14769 (value!260002 TokenValue!8410) (rule!11262 Rule!16000) (size!37019 Int) (originalCharacters!8415 List!56305)) )
))
(declare-datatypes ((tuple2!60096 0))(
  ( (tuple2!60097 (_1!33351 Token!14768) (_2!33351 BalanceConc!28766)) )
))
(declare-datatypes ((Option!13883 0))(
  ( (None!13882) (Some!13882 (v!49832 tuple2!60096)) )
))
(declare-fun lt!2000664 () Option!13883)

(declare-fun lt!2000663 () Option!13883)

(get-info :version)

(assert (=> b!4883741 (= res!2084963 (or (and ((_ is None!13882) lt!2000664) ((_ is None!13882) lt!2000663)) (not ((_ is None!13882) lt!2000663))))))

(declare-fun input!1236 () BalanceConc!28766)

(declare-fun maxPrefixZipperSequence!1261 (LexerInterface!7692 List!56307 BalanceConc!28766) Option!13883)

(assert (=> b!4883741 (= lt!2000663 (maxPrefixZipperSequence!1261 thiss!14805 (t!364953 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!626 (LexerInterface!7692 Rule!16000 BalanceConc!28766) Option!13883)

(assert (=> b!4883741 (= lt!2000664 (maxPrefixOneRuleZipperSequence!626 thiss!14805 (h!62631 rulesArg!165) input!1236))))

(declare-fun b!4883742 () Bool)

(assert (=> b!4883742 (= e!3052494 (not e!3052496))))

(declare-fun res!2084962 () Bool)

(assert (=> b!4883742 (=> res!2084962 e!3052496)))

(assert (=> b!4883742 (= res!2084962 (or (and ((_ is Cons!56183) rulesArg!165) ((_ is Nil!56183) (t!364953 rulesArg!165))) (not ((_ is Cons!56183) rulesArg!165))))))

(declare-fun lt!2000667 () List!56305)

(declare-fun isPrefix!4822 (List!56305 List!56305) Bool)

(assert (=> b!4883742 (isPrefix!4822 lt!2000667 lt!2000667)))

(declare-datatypes ((Unit!146172 0))(
  ( (Unit!146173) )
))
(declare-fun lt!2000665 () Unit!146172)

(declare-fun lemmaIsPrefixRefl!3219 (List!56305 List!56305) Unit!146172)

(assert (=> b!4883742 (= lt!2000665 (lemmaIsPrefixRefl!3219 lt!2000667 lt!2000667))))

(declare-fun list!17625 (BalanceConc!28766) List!56305)

(assert (=> b!4883742 (= lt!2000667 (list!17625 input!1236))))

(assert (=> b!4883743 (= e!3052495 (and tp!1374287 tp!1374291))))

(declare-fun b!4883744 () Bool)

(declare-fun e!3052497 () Bool)

(declare-fun tp!1374289 () Bool)

(declare-fun inv!72275 (Conc!14668) Bool)

(assert (=> b!4883744 (= e!3052497 (and (inv!72275 (c!830481 input!1236)) tp!1374289))))

(declare-fun res!2084965 () Bool)

(assert (=> start!511024 (=> (not res!2084965) (not e!3052494))))

(assert (=> start!511024 (= res!2084965 ((_ is Lexer!7690) thiss!14805))))

(assert (=> start!511024 e!3052494))

(assert (=> start!511024 true))

(assert (=> start!511024 e!3052492))

(declare-fun inv!72276 (BalanceConc!28766) Bool)

(assert (=> start!511024 (and (inv!72276 input!1236) e!3052497)))

(declare-fun b!4883738 () Bool)

(declare-fun lt!2000666 () Bool)

(declare-fun lt!2000668 () Bool)

(assert (=> b!4883738 (= e!3052493 (or (not (= lt!2000666 lt!2000668)) (not lt!2000666) lt!2000668))))

(declare-datatypes ((tuple2!60098 0))(
  ( (tuple2!60099 (_1!33352 Token!14768) (_2!33352 List!56305)) )
))
(declare-datatypes ((Option!13884 0))(
  ( (None!13883) (Some!13883 (v!49833 tuple2!60098)) )
))
(declare-fun isDefined!10910 (Option!13884) Bool)

(declare-fun maxPrefixZipper!603 (LexerInterface!7692 List!56307 List!56305) Option!13884)

(assert (=> b!4883738 (= lt!2000668 (isDefined!10910 (maxPrefixZipper!603 thiss!14805 rulesArg!165 lt!2000667)))))

(declare-fun isDefined!10911 (Option!13883) Bool)

(assert (=> b!4883738 (= lt!2000666 (isDefined!10911 lt!2000664))))

(assert (= (and start!511024 res!2084965) b!4883736))

(assert (= (and b!4883736 res!2084964) b!4883739))

(assert (= (and b!4883739 res!2084961) b!4883742))

(assert (= (and b!4883742 (not res!2084962)) b!4883741))

(assert (= (and b!4883741 (not res!2084963)) b!4883738))

(assert (= b!4883737 b!4883743))

(assert (= b!4883740 b!4883737))

(assert (= (and start!511024 ((_ is Cons!56183) rulesArg!165)) b!4883740))

(assert (= start!511024 b!4883744))

(declare-fun m!5887696 () Bool)

(assert (=> b!4883739 m!5887696))

(declare-fun m!5887698 () Bool)

(assert (=> b!4883738 m!5887698))

(assert (=> b!4883738 m!5887698))

(declare-fun m!5887700 () Bool)

(assert (=> b!4883738 m!5887700))

(declare-fun m!5887702 () Bool)

(assert (=> b!4883738 m!5887702))

(declare-fun m!5887704 () Bool)

(assert (=> b!4883737 m!5887704))

(declare-fun m!5887706 () Bool)

(assert (=> b!4883737 m!5887706))

(declare-fun m!5887708 () Bool)

(assert (=> b!4883741 m!5887708))

(declare-fun m!5887710 () Bool)

(assert (=> b!4883741 m!5887710))

(declare-fun m!5887712 () Bool)

(assert (=> b!4883744 m!5887712))

(declare-fun m!5887714 () Bool)

(assert (=> b!4883742 m!5887714))

(declare-fun m!5887716 () Bool)

(assert (=> b!4883742 m!5887716))

(declare-fun m!5887718 () Bool)

(assert (=> b!4883742 m!5887718))

(declare-fun m!5887720 () Bool)

(assert (=> b!4883736 m!5887720))

(declare-fun m!5887722 () Bool)

(assert (=> start!511024 m!5887722))

(check-sat (not b!4883738) (not start!511024) (not b!4883744) (not b_next!131883) b_and!343925 (not b_next!131881) (not b!4883737) (not b!4883739) (not b!4883742) (not b!4883741) (not b!4883736) b_and!343923 (not b!4883740))
(check-sat b_and!343925 b_and!343923 (not b_next!131881) (not b_next!131883))

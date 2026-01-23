; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510994 () Bool)

(assert start!510994)

(declare-fun b!4883208 () Bool)

(declare-fun b_free!131031 () Bool)

(declare-fun b_next!131821 () Bool)

(assert (=> b!4883208 (= b_free!131031 (not b_next!131821))))

(declare-fun tp!1374064 () Bool)

(declare-fun b_and!343863 () Bool)

(assert (=> b!4883208 (= tp!1374064 b_and!343863)))

(declare-fun b_free!131033 () Bool)

(declare-fun b_next!131823 () Bool)

(assert (=> b!4883208 (= b_free!131033 (not b_next!131823))))

(declare-fun tp!1374063 () Bool)

(declare-fun b_and!343865 () Bool)

(assert (=> b!4883208 (= tp!1374063 b_and!343865)))

(declare-fun b!4883205 () Bool)

(declare-fun e!3052036 () Bool)

(declare-fun lt!2000311 () Bool)

(declare-fun lt!2000310 () Bool)

(assert (=> b!4883205 (= e!3052036 (or (not (= lt!2000311 lt!2000310)) (not lt!2000311) lt!2000310))))

(declare-datatypes ((LexerInterface!7677 0))(
  ( (LexerInterfaceExt!7674 (__x!34083 Int)) (Lexer!7675) )
))
(declare-fun thiss!14805 () LexerInterface!7677)

(declare-datatypes ((C!26518 0))(
  ( (C!26519 (val!22593 Int)) )
))
(declare-datatypes ((List!56260 0))(
  ( (Nil!56136) (Cons!56136 (h!62584 C!26518) (t!364906 List!56260)) )
))
(declare-fun lt!2000309 () List!56260)

(declare-datatypes ((IArray!29367 0))(
  ( (IArray!29368 (innerList!14741 List!56260)) )
))
(declare-datatypes ((Conc!14653 0))(
  ( (Node!14653 (left!40790 Conc!14653) (right!41120 Conc!14653) (csize!29536 Int) (cheight!14864 Int)) (Leaf!24413 (xs!17969 IArray!29367) (csize!29537 Int)) (Empty!14653) )
))
(declare-datatypes ((BalanceConc!28736 0))(
  ( (BalanceConc!28737 (c!830436 Conc!14653)) )
))
(declare-datatypes ((List!56261 0))(
  ( (Nil!56137) (Cons!56137 (h!62585 (_ BitVec 16)) (t!364907 List!56261)) )
))
(declare-datatypes ((TokenValue!8395 0))(
  ( (FloatLiteralValue!16790 (text!59210 List!56261)) (TokenValueExt!8394 (__x!34084 Int)) (Broken!41975 (value!259550 List!56261)) (Object!8518) (End!8395) (Def!8395) (Underscore!8395) (Match!8395) (Else!8395) (Error!8395) (Case!8395) (If!8395) (Extends!8395) (Abstract!8395) (Class!8395) (Val!8395) (DelimiterValue!16790 (del!8455 List!56261)) (KeywordValue!8401 (value!259551 List!56261)) (CommentValue!16790 (value!259552 List!56261)) (WhitespaceValue!16790 (value!259553 List!56261)) (IndentationValue!8395 (value!259554 List!56261)) (String!63418) (Int32!8395) (Broken!41976 (value!259555 List!56261)) (Boolean!8396) (Unit!146126) (OperatorValue!8398 (op!8455 List!56261)) (IdentifierValue!16790 (value!259556 List!56261)) (IdentifierValue!16791 (value!259557 List!56261)) (WhitespaceValue!16791 (value!259558 List!56261)) (True!16790) (False!16790) (Broken!41977 (value!259559 List!56261)) (Broken!41978 (value!259560 List!56261)) (True!16791) (RightBrace!8395) (RightBracket!8395) (Colon!8395) (Null!8395) (Comma!8395) (LeftBracket!8395) (False!16791) (LeftBrace!8395) (ImaginaryLiteralValue!8395 (text!59211 List!56261)) (StringLiteralValue!25185 (value!259561 List!56261)) (EOFValue!8395 (value!259562 List!56261)) (IdentValue!8395 (value!259563 List!56261)) (DelimiterValue!16791 (value!259564 List!56261)) (DedentValue!8395 (value!259565 List!56261)) (NewLineValue!8395 (value!259566 List!56261)) (IntegerValue!25185 (value!259567 (_ BitVec 32)) (text!59212 List!56261)) (IntegerValue!25186 (value!259568 Int) (text!59213 List!56261)) (Times!8395) (Or!8395) (Equal!8395) (Minus!8395) (Broken!41979 (value!259569 List!56261)) (And!8395) (Div!8395) (LessEqual!8395) (Mod!8395) (Concat!21555) (Not!8395) (Plus!8395) (SpaceValue!8395 (value!259570 List!56261)) (IntegerValue!25187 (value!259571 Int) (text!59214 List!56261)) (StringLiteralValue!25186 (text!59215 List!56261)) (FloatLiteralValue!16791 (text!59216 List!56261)) (BytesLiteralValue!8395 (value!259572 List!56261)) (CommentValue!16791 (value!259573 List!56261)) (StringLiteralValue!25187 (value!259574 List!56261)) (ErrorTokenValue!8395 (msg!8456 List!56261)) )
))
(declare-datatypes ((Regex!13160 0))(
  ( (ElementMatch!13160 (c!830437 C!26518)) (Concat!21556 (regOne!26832 Regex!13160) (regTwo!26832 Regex!13160)) (EmptyExpr!13160) (Star!13160 (reg!13489 Regex!13160)) (EmptyLang!13160) (Union!13160 (regOne!26833 Regex!13160) (regTwo!26833 Regex!13160)) )
))
(declare-datatypes ((String!63419 0))(
  ( (String!63420 (value!259575 String)) )
))
(declare-datatypes ((TokenValueInjection!16098 0))(
  ( (TokenValueInjection!16099 (toValue!10972 Int) (toChars!10831 Int)) )
))
(declare-datatypes ((Rule!15970 0))(
  ( (Rule!15971 (regex!8085 Regex!13160) (tag!8949 String!63419) (isSeparator!8085 Bool) (transformation!8085 TokenValueInjection!16098)) )
))
(declare-datatypes ((List!56262 0))(
  ( (Nil!56138) (Cons!56138 (h!62586 Rule!15970) (t!364908 List!56262)) )
))
(declare-fun rulesArg!165 () List!56262)

(declare-datatypes ((Token!14738 0))(
  ( (Token!14739 (value!259576 TokenValue!8395) (rule!11247 Rule!15970) (size!37004 Int) (originalCharacters!8400 List!56260)) )
))
(declare-datatypes ((tuple2!60036 0))(
  ( (tuple2!60037 (_1!33321 Token!14738) (_2!33321 List!56260)) )
))
(declare-datatypes ((Option!13853 0))(
  ( (None!13852) (Some!13852 (v!49802 tuple2!60036)) )
))
(declare-fun isDefined!10896 (Option!13853) Bool)

(declare-fun maxPrefixZipper!588 (LexerInterface!7677 List!56262 List!56260) Option!13853)

(assert (=> b!4883205 (= lt!2000310 (isDefined!10896 (maxPrefixZipper!588 thiss!14805 rulesArg!165 lt!2000309)))))

(assert (=> b!4883205 (= lt!2000311 false)))

(declare-fun b!4883206 () Bool)

(declare-fun e!3052033 () Bool)

(declare-fun input!1236 () BalanceConc!28736)

(declare-fun tp!1374062 () Bool)

(declare-fun inv!72208 (Conc!14653) Bool)

(assert (=> b!4883206 (= e!3052033 (and (inv!72208 (c!830436 input!1236)) tp!1374062))))

(declare-fun b!4883207 () Bool)

(declare-fun e!3052029 () Bool)

(declare-fun e!3052035 () Bool)

(assert (=> b!4883207 (= e!3052029 (not e!3052035))))

(declare-fun res!2084612 () Bool)

(assert (=> b!4883207 (=> res!2084612 e!3052035)))

(assert (=> b!4883207 (= res!2084612 (or (and (is-Cons!56138 rulesArg!165) (is-Nil!56138 (t!364908 rulesArg!165))) (not (is-Cons!56138 rulesArg!165))))))

(declare-fun isPrefix!4807 (List!56260 List!56260) Bool)

(assert (=> b!4883207 (isPrefix!4807 lt!2000309 lt!2000309)))

(declare-datatypes ((Unit!146127 0))(
  ( (Unit!146128) )
))
(declare-fun lt!2000314 () Unit!146127)

(declare-fun lemmaIsPrefixRefl!3204 (List!56260 List!56260) Unit!146127)

(assert (=> b!4883207 (= lt!2000314 (lemmaIsPrefixRefl!3204 lt!2000309 lt!2000309))))

(declare-fun list!17610 (BalanceConc!28736) List!56260)

(assert (=> b!4883207 (= lt!2000309 (list!17610 input!1236))))

(declare-fun e!3052031 () Bool)

(assert (=> b!4883208 (= e!3052031 (and tp!1374064 tp!1374063))))

(declare-fun tp!1374066 () Bool)

(declare-fun b!4883209 () Bool)

(declare-fun e!3052032 () Bool)

(declare-fun inv!72205 (String!63419) Bool)

(declare-fun inv!72209 (TokenValueInjection!16098) Bool)

(assert (=> b!4883209 (= e!3052032 (and tp!1374066 (inv!72205 (tag!8949 (h!62586 rulesArg!165))) (inv!72209 (transformation!8085 (h!62586 rulesArg!165))) e!3052031))))

(declare-fun res!2084611 () Bool)

(assert (=> start!510994 (=> (not res!2084611) (not e!3052029))))

(assert (=> start!510994 (= res!2084611 (is-Lexer!7675 thiss!14805))))

(assert (=> start!510994 e!3052029))

(assert (=> start!510994 true))

(declare-fun e!3052034 () Bool)

(assert (=> start!510994 e!3052034))

(declare-fun inv!72210 (BalanceConc!28736) Bool)

(assert (=> start!510994 (and (inv!72210 input!1236) e!3052033)))

(declare-fun b!4883210 () Bool)

(assert (=> b!4883210 (= e!3052035 e!3052036)))

(declare-fun res!2084610 () Bool)

(assert (=> b!4883210 (=> res!2084610 e!3052036)))

(declare-datatypes ((tuple2!60038 0))(
  ( (tuple2!60039 (_1!33322 Token!14738) (_2!33322 BalanceConc!28736)) )
))
(declare-datatypes ((Option!13854 0))(
  ( (None!13853) (Some!13853 (v!49803 tuple2!60038)) )
))
(declare-fun lt!2000313 () Option!13854)

(declare-fun lt!2000312 () Option!13854)

(assert (=> b!4883210 (= res!2084610 (or (not (is-None!13853 lt!2000313)) (not (is-None!13853 lt!2000312))))))

(declare-fun maxPrefixZipperSequence!1246 (LexerInterface!7677 List!56262 BalanceConc!28736) Option!13854)

(assert (=> b!4883210 (= lt!2000312 (maxPrefixZipperSequence!1246 thiss!14805 (t!364908 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!611 (LexerInterface!7677 Rule!15970 BalanceConc!28736) Option!13854)

(assert (=> b!4883210 (= lt!2000313 (maxPrefixOneRuleZipperSequence!611 thiss!14805 (h!62586 rulesArg!165) input!1236))))

(declare-fun b!4883211 () Bool)

(declare-fun tp!1374065 () Bool)

(assert (=> b!4883211 (= e!3052034 (and e!3052032 tp!1374065))))

(declare-fun b!4883212 () Bool)

(declare-fun res!2084613 () Bool)

(assert (=> b!4883212 (=> (not res!2084613) (not e!3052029))))

(declare-fun isEmpty!30086 (List!56262) Bool)

(assert (=> b!4883212 (= res!2084613 (not (isEmpty!30086 rulesArg!165)))))

(declare-fun b!4883213 () Bool)

(declare-fun res!2084614 () Bool)

(assert (=> b!4883213 (=> (not res!2084614) (not e!3052029))))

(declare-fun rulesValidInductive!3064 (LexerInterface!7677 List!56262) Bool)

(assert (=> b!4883213 (= res!2084614 (rulesValidInductive!3064 thiss!14805 rulesArg!165))))

(assert (= (and start!510994 res!2084611) b!4883213))

(assert (= (and b!4883213 res!2084614) b!4883212))

(assert (= (and b!4883212 res!2084613) b!4883207))

(assert (= (and b!4883207 (not res!2084612)) b!4883210))

(assert (= (and b!4883210 (not res!2084610)) b!4883205))

(assert (= b!4883209 b!4883208))

(assert (= b!4883211 b!4883209))

(assert (= (and start!510994 (is-Cons!56138 rulesArg!165)) b!4883211))

(assert (= start!510994 b!4883206))

(declare-fun m!5887228 () Bool)

(assert (=> b!4883209 m!5887228))

(declare-fun m!5887230 () Bool)

(assert (=> b!4883209 m!5887230))

(declare-fun m!5887232 () Bool)

(assert (=> b!4883207 m!5887232))

(declare-fun m!5887234 () Bool)

(assert (=> b!4883207 m!5887234))

(declare-fun m!5887236 () Bool)

(assert (=> b!4883207 m!5887236))

(declare-fun m!5887238 () Bool)

(assert (=> b!4883206 m!5887238))

(declare-fun m!5887240 () Bool)

(assert (=> b!4883213 m!5887240))

(declare-fun m!5887242 () Bool)

(assert (=> b!4883210 m!5887242))

(declare-fun m!5887244 () Bool)

(assert (=> b!4883210 m!5887244))

(declare-fun m!5887246 () Bool)

(assert (=> b!4883205 m!5887246))

(assert (=> b!4883205 m!5887246))

(declare-fun m!5887248 () Bool)

(assert (=> b!4883205 m!5887248))

(declare-fun m!5887250 () Bool)

(assert (=> start!510994 m!5887250))

(declare-fun m!5887252 () Bool)

(assert (=> b!4883212 m!5887252))

(push 1)

(assert (not b!4883207))

(assert (not b_next!131823))

(assert b_and!343865)

(assert b_and!343863)

(assert (not b!4883211))

(assert (not b!4883213))

(assert (not b_next!131821))

(assert (not b!4883210))

(assert (not b!4883209))

(assert (not b!4883205))

(assert (not b!4883212))

(assert (not b!4883206))

(assert (not start!510994))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343865)

(assert b_and!343863)

(assert (not b_next!131821))

(assert (not b_next!131823))

(check-sat)

(pop 1)


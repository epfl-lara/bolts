; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510710 () Bool)

(assert start!510710)

(declare-fun b!4881428 () Bool)

(declare-fun b_free!130895 () Bool)

(declare-fun b_next!131685 () Bool)

(assert (=> b!4881428 (= b_free!130895 (not b_next!131685))))

(declare-fun tp!1373312 () Bool)

(declare-fun b_and!343727 () Bool)

(assert (=> b!4881428 (= tp!1373312 b_and!343727)))

(declare-fun b_free!130897 () Bool)

(declare-fun b_next!131687 () Bool)

(assert (=> b!4881428 (= b_free!130897 (not b_next!131687))))

(declare-fun tp!1373313 () Bool)

(declare-fun b_and!343729 () Bool)

(assert (=> b!4881428 (= tp!1373313 b_and!343729)))

(declare-fun b!4881422 () Bool)

(declare-fun e!3050704 () Bool)

(declare-fun e!3050707 () Bool)

(assert (=> b!4881422 (= e!3050704 (not e!3050707))))

(declare-fun res!2083710 () Bool)

(assert (=> b!4881422 (=> res!2083710 e!3050707)))

(declare-datatypes ((C!26466 0))(
  ( (C!26467 (val!22567 Int)) )
))
(declare-datatypes ((List!56182 0))(
  ( (Nil!56058) (Cons!56058 (h!62506 C!26466) (t!364828 List!56182)) )
))
(declare-datatypes ((IArray!29315 0))(
  ( (IArray!29316 (innerList!14715 List!56182)) )
))
(declare-datatypes ((Conc!14627 0))(
  ( (Node!14627 (left!40731 Conc!14627) (right!41061 Conc!14627) (csize!29484 Int) (cheight!14838 Int)) (Leaf!24374 (xs!17943 IArray!29315) (csize!29485 Int)) (Empty!14627) )
))
(declare-datatypes ((BalanceConc!28684 0))(
  ( (BalanceConc!28685 (c!830286 Conc!14627)) )
))
(declare-datatypes ((List!56183 0))(
  ( (Nil!56059) (Cons!56059 (h!62507 (_ BitVec 16)) (t!364829 List!56183)) )
))
(declare-datatypes ((TokenValue!8369 0))(
  ( (FloatLiteralValue!16738 (text!59028 List!56183)) (TokenValueExt!8368 (__x!34031 Int)) (Broken!41845 (value!258811 List!56183)) (Object!8492) (End!8369) (Def!8369) (Underscore!8369) (Match!8369) (Else!8369) (Error!8369) (Case!8369) (If!8369) (Extends!8369) (Abstract!8369) (Class!8369) (Val!8369) (DelimiterValue!16738 (del!8429 List!56183)) (KeywordValue!8375 (value!258812 List!56183)) (CommentValue!16738 (value!258813 List!56183)) (WhitespaceValue!16738 (value!258814 List!56183)) (IndentationValue!8369 (value!258815 List!56183)) (String!63288) (Int32!8369) (Broken!41846 (value!258816 List!56183)) (Boolean!8370) (Unit!146048) (OperatorValue!8372 (op!8429 List!56183)) (IdentifierValue!16738 (value!258817 List!56183)) (IdentifierValue!16739 (value!258818 List!56183)) (WhitespaceValue!16739 (value!258819 List!56183)) (True!16738) (False!16738) (Broken!41847 (value!258820 List!56183)) (Broken!41848 (value!258821 List!56183)) (True!16739) (RightBrace!8369) (RightBracket!8369) (Colon!8369) (Null!8369) (Comma!8369) (LeftBracket!8369) (False!16739) (LeftBrace!8369) (ImaginaryLiteralValue!8369 (text!59029 List!56183)) (StringLiteralValue!25107 (value!258822 List!56183)) (EOFValue!8369 (value!258823 List!56183)) (IdentValue!8369 (value!258824 List!56183)) (DelimiterValue!16739 (value!258825 List!56183)) (DedentValue!8369 (value!258826 List!56183)) (NewLineValue!8369 (value!258827 List!56183)) (IntegerValue!25107 (value!258828 (_ BitVec 32)) (text!59030 List!56183)) (IntegerValue!25108 (value!258829 Int) (text!59031 List!56183)) (Times!8369) (Or!8369) (Equal!8369) (Minus!8369) (Broken!41849 (value!258830 List!56183)) (And!8369) (Div!8369) (LessEqual!8369) (Mod!8369) (Concat!21503) (Not!8369) (Plus!8369) (SpaceValue!8369 (value!258831 List!56183)) (IntegerValue!25109 (value!258832 Int) (text!59032 List!56183)) (StringLiteralValue!25108 (text!59033 List!56183)) (FloatLiteralValue!16739 (text!59034 List!56183)) (BytesLiteralValue!8369 (value!258833 List!56183)) (CommentValue!16739 (value!258834 List!56183)) (StringLiteralValue!25109 (value!258835 List!56183)) (ErrorTokenValue!8369 (msg!8430 List!56183)) )
))
(declare-datatypes ((Regex!13134 0))(
  ( (ElementMatch!13134 (c!830287 C!26466)) (Concat!21504 (regOne!26780 Regex!13134) (regTwo!26780 Regex!13134)) (EmptyExpr!13134) (Star!13134 (reg!13463 Regex!13134)) (EmptyLang!13134) (Union!13134 (regOne!26781 Regex!13134) (regTwo!26781 Regex!13134)) )
))
(declare-datatypes ((String!63289 0))(
  ( (String!63290 (value!258836 String)) )
))
(declare-datatypes ((TokenValueInjection!16046 0))(
  ( (TokenValueInjection!16047 (toValue!10946 Int) (toChars!10805 Int)) )
))
(declare-datatypes ((Rule!15918 0))(
  ( (Rule!15919 (regex!8059 Regex!13134) (tag!8923 String!63289) (isSeparator!8059 Bool) (transformation!8059 TokenValueInjection!16046)) )
))
(declare-datatypes ((List!56184 0))(
  ( (Nil!56060) (Cons!56060 (h!62508 Rule!15918) (t!364830 List!56184)) )
))
(declare-fun rulesArg!165 () List!56184)

(assert (=> b!4881422 (= res!2083710 (or (not (is-Cons!56060 rulesArg!165)) (not (is-Nil!56060 (t!364830 rulesArg!165)))))))

(declare-fun lt!1999450 () List!56182)

(declare-fun isPrefix!4781 (List!56182 List!56182) Bool)

(assert (=> b!4881422 (isPrefix!4781 lt!1999450 lt!1999450)))

(declare-datatypes ((Unit!146049 0))(
  ( (Unit!146050) )
))
(declare-fun lt!1999449 () Unit!146049)

(declare-fun lemmaIsPrefixRefl!3178 (List!56182 List!56182) Unit!146049)

(assert (=> b!4881422 (= lt!1999449 (lemmaIsPrefixRefl!3178 lt!1999450 lt!1999450))))

(declare-fun input!1236 () BalanceConc!28684)

(declare-fun list!17577 (BalanceConc!28684) List!56182)

(assert (=> b!4881422 (= lt!1999450 (list!17577 input!1236))))

(declare-fun b!4881423 () Bool)

(declare-fun tp!1373314 () Bool)

(declare-fun e!3050705 () Bool)

(declare-fun e!3050702 () Bool)

(declare-fun inv!72068 (String!63289) Bool)

(declare-fun inv!72071 (TokenValueInjection!16046) Bool)

(assert (=> b!4881423 (= e!3050705 (and tp!1373314 (inv!72068 (tag!8923 (h!62508 rulesArg!165))) (inv!72071 (transformation!8059 (h!62508 rulesArg!165))) e!3050702))))

(declare-fun res!2083707 () Bool)

(assert (=> start!510710 (=> (not res!2083707) (not e!3050704))))

(declare-datatypes ((LexerInterface!7651 0))(
  ( (LexerInterfaceExt!7648 (__x!34032 Int)) (Lexer!7649) )
))
(declare-fun thiss!14805 () LexerInterface!7651)

(assert (=> start!510710 (= res!2083707 (is-Lexer!7649 thiss!14805))))

(assert (=> start!510710 e!3050704))

(assert (=> start!510710 true))

(declare-fun e!3050706 () Bool)

(assert (=> start!510710 e!3050706))

(declare-fun e!3050708 () Bool)

(declare-fun inv!72072 (BalanceConc!28684) Bool)

(assert (=> start!510710 (and (inv!72072 input!1236) e!3050708)))

(declare-fun b!4881424 () Bool)

(declare-fun res!2083708 () Bool)

(assert (=> b!4881424 (=> (not res!2083708) (not e!3050704))))

(declare-fun rulesValidInductive!3038 (LexerInterface!7651 List!56184) Bool)

(assert (=> b!4881424 (= res!2083708 (rulesValidInductive!3038 thiss!14805 rulesArg!165))))

(declare-fun b!4881425 () Bool)

(declare-fun tp!1373315 () Bool)

(assert (=> b!4881425 (= e!3050706 (and e!3050705 tp!1373315))))

(declare-fun b!4881426 () Bool)

(declare-fun tp!1373316 () Bool)

(declare-fun inv!72073 (Conc!14627) Bool)

(assert (=> b!4881426 (= e!3050708 (and (inv!72073 (c!830286 input!1236)) tp!1373316))))

(declare-fun b!4881427 () Bool)

(declare-fun res!2083709 () Bool)

(assert (=> b!4881427 (=> (not res!2083709) (not e!3050704))))

(declare-fun isEmpty!30042 (List!56184) Bool)

(assert (=> b!4881427 (= res!2083709 (not (isEmpty!30042 rulesArg!165)))))

(assert (=> b!4881428 (= e!3050702 (and tp!1373312 tp!1373313))))

(declare-fun b!4881429 () Bool)

(assert (=> b!4881429 (= e!3050707 true)))

(declare-datatypes ((Token!14690 0))(
  ( (Token!14691 (value!258837 TokenValue!8369) (rule!11215 Rule!15918) (size!36967 Int) (originalCharacters!8376 List!56182)) )
))
(declare-datatypes ((tuple2!59926 0))(
  ( (tuple2!59927 (_1!33266 Token!14690) (_2!33266 List!56182)) )
))
(declare-datatypes ((Option!13810 0))(
  ( (None!13809) (Some!13809 (v!49759 tuple2!59926)) )
))
(declare-fun lt!1999452 () Option!13810)

(declare-fun maxPrefixZipper!572 (LexerInterface!7651 List!56184 List!56182) Option!13810)

(assert (=> b!4881429 (= lt!1999452 (maxPrefixZipper!572 thiss!14805 rulesArg!165 lt!1999450))))

(declare-datatypes ((tuple2!59928 0))(
  ( (tuple2!59929 (_1!33267 Token!14690) (_2!33267 BalanceConc!28684)) )
))
(declare-datatypes ((Option!13811 0))(
  ( (None!13810) (Some!13810 (v!49760 tuple2!59928)) )
))
(declare-fun lt!1999451 () Option!13811)

(declare-fun maxPrefixOneRuleZipperSequence!587 (LexerInterface!7651 Rule!15918 BalanceConc!28684) Option!13811)

(assert (=> b!4881429 (= lt!1999451 (maxPrefixOneRuleZipperSequence!587 thiss!14805 (h!62508 rulesArg!165) input!1236))))

(assert (= (and start!510710 res!2083707) b!4881424))

(assert (= (and b!4881424 res!2083708) b!4881427))

(assert (= (and b!4881427 res!2083709) b!4881422))

(assert (= (and b!4881422 (not res!2083710)) b!4881429))

(assert (= b!4881423 b!4881428))

(assert (= b!4881425 b!4881423))

(assert (= (and start!510710 (is-Cons!56060 rulesArg!165)) b!4881425))

(assert (= start!510710 b!4881426))

(declare-fun m!5885670 () Bool)

(assert (=> b!4881429 m!5885670))

(declare-fun m!5885672 () Bool)

(assert (=> b!4881429 m!5885672))

(declare-fun m!5885674 () Bool)

(assert (=> b!4881427 m!5885674))

(declare-fun m!5885676 () Bool)

(assert (=> b!4881424 m!5885676))

(declare-fun m!5885678 () Bool)

(assert (=> b!4881422 m!5885678))

(declare-fun m!5885680 () Bool)

(assert (=> b!4881422 m!5885680))

(declare-fun m!5885682 () Bool)

(assert (=> b!4881422 m!5885682))

(declare-fun m!5885684 () Bool)

(assert (=> b!4881423 m!5885684))

(declare-fun m!5885686 () Bool)

(assert (=> b!4881423 m!5885686))

(declare-fun m!5885688 () Bool)

(assert (=> b!4881426 m!5885688))

(declare-fun m!5885690 () Bool)

(assert (=> start!510710 m!5885690))

(push 1)

(assert (not b!4881425))

(assert (not b!4881427))

(assert (not b!4881429))

(assert (not b_next!131685))

(assert (not b!4881424))

(assert (not b!4881423))

(assert (not b!4881422))

(assert b_and!343729)

(assert (not start!510710))

(assert (not b_next!131687))

(assert b_and!343727)

(assert (not b!4881426))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343729)

(assert b_and!343727)

(assert (not b_next!131685))

(assert (not b_next!131687))

(check-sat)

(pop 1)


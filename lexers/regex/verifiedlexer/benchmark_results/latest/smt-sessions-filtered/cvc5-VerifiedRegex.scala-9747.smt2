; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510714 () Bool)

(assert start!510714)

(declare-fun b!4881472 () Bool)

(declare-fun b_free!130903 () Bool)

(declare-fun b_next!131693 () Bool)

(assert (=> b!4881472 (= b_free!130903 (not b_next!131693))))

(declare-fun tp!1373345 () Bool)

(declare-fun b_and!343735 () Bool)

(assert (=> b!4881472 (= tp!1373345 b_and!343735)))

(declare-fun b_free!130905 () Bool)

(declare-fun b_next!131695 () Bool)

(assert (=> b!4881472 (= b_free!130905 (not b_next!131695))))

(declare-fun tp!1373346 () Bool)

(declare-fun b_and!343737 () Bool)

(assert (=> b!4881472 (= tp!1373346 b_and!343737)))

(declare-fun b!4881470 () Bool)

(declare-fun res!2083734 () Bool)

(declare-fun e!3050747 () Bool)

(assert (=> b!4881470 (=> (not res!2083734) (not e!3050747))))

(declare-datatypes ((LexerInterface!7653 0))(
  ( (LexerInterfaceExt!7650 (__x!34035 Int)) (Lexer!7651) )
))
(declare-fun thiss!14805 () LexerInterface!7653)

(declare-datatypes ((C!26470 0))(
  ( (C!26471 (val!22569 Int)) )
))
(declare-datatypes ((List!56188 0))(
  ( (Nil!56064) (Cons!56064 (h!62512 C!26470) (t!364834 List!56188)) )
))
(declare-datatypes ((IArray!29319 0))(
  ( (IArray!29320 (innerList!14717 List!56188)) )
))
(declare-datatypes ((Conc!14629 0))(
  ( (Node!14629 (left!40734 Conc!14629) (right!41064 Conc!14629) (csize!29488 Int) (cheight!14840 Int)) (Leaf!24377 (xs!17945 IArray!29319) (csize!29489 Int)) (Empty!14629) )
))
(declare-datatypes ((BalanceConc!28688 0))(
  ( (BalanceConc!28689 (c!830292 Conc!14629)) )
))
(declare-datatypes ((List!56189 0))(
  ( (Nil!56065) (Cons!56065 (h!62513 (_ BitVec 16)) (t!364835 List!56189)) )
))
(declare-datatypes ((TokenValue!8371 0))(
  ( (FloatLiteralValue!16742 (text!59042 List!56189)) (TokenValueExt!8370 (__x!34036 Int)) (Broken!41855 (value!258868 List!56189)) (Object!8494) (End!8371) (Def!8371) (Underscore!8371) (Match!8371) (Else!8371) (Error!8371) (Case!8371) (If!8371) (Extends!8371) (Abstract!8371) (Class!8371) (Val!8371) (DelimiterValue!16742 (del!8431 List!56189)) (KeywordValue!8377 (value!258869 List!56189)) (CommentValue!16742 (value!258870 List!56189)) (WhitespaceValue!16742 (value!258871 List!56189)) (IndentationValue!8371 (value!258872 List!56189)) (String!63298) (Int32!8371) (Broken!41856 (value!258873 List!56189)) (Boolean!8372) (Unit!146054) (OperatorValue!8374 (op!8431 List!56189)) (IdentifierValue!16742 (value!258874 List!56189)) (IdentifierValue!16743 (value!258875 List!56189)) (WhitespaceValue!16743 (value!258876 List!56189)) (True!16742) (False!16742) (Broken!41857 (value!258877 List!56189)) (Broken!41858 (value!258878 List!56189)) (True!16743) (RightBrace!8371) (RightBracket!8371) (Colon!8371) (Null!8371) (Comma!8371) (LeftBracket!8371) (False!16743) (LeftBrace!8371) (ImaginaryLiteralValue!8371 (text!59043 List!56189)) (StringLiteralValue!25113 (value!258879 List!56189)) (EOFValue!8371 (value!258880 List!56189)) (IdentValue!8371 (value!258881 List!56189)) (DelimiterValue!16743 (value!258882 List!56189)) (DedentValue!8371 (value!258883 List!56189)) (NewLineValue!8371 (value!258884 List!56189)) (IntegerValue!25113 (value!258885 (_ BitVec 32)) (text!59044 List!56189)) (IntegerValue!25114 (value!258886 Int) (text!59045 List!56189)) (Times!8371) (Or!8371) (Equal!8371) (Minus!8371) (Broken!41859 (value!258887 List!56189)) (And!8371) (Div!8371) (LessEqual!8371) (Mod!8371) (Concat!21507) (Not!8371) (Plus!8371) (SpaceValue!8371 (value!258888 List!56189)) (IntegerValue!25115 (value!258889 Int) (text!59046 List!56189)) (StringLiteralValue!25114 (text!59047 List!56189)) (FloatLiteralValue!16743 (text!59048 List!56189)) (BytesLiteralValue!8371 (value!258890 List!56189)) (CommentValue!16743 (value!258891 List!56189)) (StringLiteralValue!25115 (value!258892 List!56189)) (ErrorTokenValue!8371 (msg!8432 List!56189)) )
))
(declare-datatypes ((TokenValueInjection!16050 0))(
  ( (TokenValueInjection!16051 (toValue!10948 Int) (toChars!10807 Int)) )
))
(declare-datatypes ((Regex!13136 0))(
  ( (ElementMatch!13136 (c!830293 C!26470)) (Concat!21508 (regOne!26784 Regex!13136) (regTwo!26784 Regex!13136)) (EmptyExpr!13136) (Star!13136 (reg!13465 Regex!13136)) (EmptyLang!13136) (Union!13136 (regOne!26785 Regex!13136) (regTwo!26785 Regex!13136)) )
))
(declare-datatypes ((String!63299 0))(
  ( (String!63300 (value!258893 String)) )
))
(declare-datatypes ((Rule!15922 0))(
  ( (Rule!15923 (regex!8061 Regex!13136) (tag!8925 String!63299) (isSeparator!8061 Bool) (transformation!8061 TokenValueInjection!16050)) )
))
(declare-datatypes ((List!56190 0))(
  ( (Nil!56066) (Cons!56066 (h!62514 Rule!15922) (t!364836 List!56190)) )
))
(declare-fun rulesArg!165 () List!56190)

(declare-fun rulesValidInductive!3040 (LexerInterface!7653 List!56190) Bool)

(assert (=> b!4881470 (= res!2083734 (rulesValidInductive!3040 thiss!14805 rulesArg!165))))

(declare-fun b!4881471 () Bool)

(declare-fun res!2083733 () Bool)

(assert (=> b!4881471 (=> (not res!2083733) (not e!3050747))))

(declare-fun isEmpty!30044 (List!56190) Bool)

(assert (=> b!4881471 (= res!2083733 (not (isEmpty!30044 rulesArg!165)))))

(declare-fun e!3050748 () Bool)

(assert (=> b!4881472 (= e!3050748 (and tp!1373345 tp!1373346))))

(declare-fun e!3050749 () Bool)

(declare-fun b!4881473 () Bool)

(declare-fun tp!1373342 () Bool)

(declare-fun inv!72077 (String!63299) Bool)

(declare-fun inv!72080 (TokenValueInjection!16050) Bool)

(assert (=> b!4881473 (= e!3050749 (and tp!1373342 (inv!72077 (tag!8925 (h!62514 rulesArg!165))) (inv!72080 (transformation!8061 (h!62514 rulesArg!165))) e!3050748))))

(declare-fun res!2083731 () Bool)

(assert (=> start!510714 (=> (not res!2083731) (not e!3050747))))

(assert (=> start!510714 (= res!2083731 (is-Lexer!7651 thiss!14805))))

(assert (=> start!510714 e!3050747))

(assert (=> start!510714 true))

(declare-fun e!3050746 () Bool)

(assert (=> start!510714 e!3050746))

(declare-fun input!1236 () BalanceConc!28688)

(declare-fun e!3050745 () Bool)

(declare-fun inv!72081 (BalanceConc!28688) Bool)

(assert (=> start!510714 (and (inv!72081 input!1236) e!3050745)))

(declare-fun b!4881474 () Bool)

(declare-fun e!3050744 () Bool)

(declare-fun lt!1999473 () Bool)

(declare-fun lt!1999476 () Bool)

(assert (=> b!4881474 (= e!3050744 (or (not (= lt!1999473 lt!1999476)) (not lt!1999473) lt!1999476))))

(declare-fun lt!1999474 () List!56188)

(declare-datatypes ((Token!14694 0))(
  ( (Token!14695 (value!258894 TokenValue!8371) (rule!11217 Rule!15922) (size!36969 Int) (originalCharacters!8378 List!56188)) )
))
(declare-datatypes ((tuple2!59934 0))(
  ( (tuple2!59935 (_1!33270 Token!14694) (_2!33270 List!56188)) )
))
(declare-datatypes ((Option!13814 0))(
  ( (None!13813) (Some!13813 (v!49763 tuple2!59934)) )
))
(declare-fun isDefined!10866 (Option!13814) Bool)

(declare-fun maxPrefixZipper!574 (LexerInterface!7653 List!56190 List!56188) Option!13814)

(assert (=> b!4881474 (= lt!1999476 (isDefined!10866 (maxPrefixZipper!574 thiss!14805 rulesArg!165 lt!1999474)))))

(declare-datatypes ((tuple2!59936 0))(
  ( (tuple2!59937 (_1!33271 Token!14694) (_2!33271 BalanceConc!28688)) )
))
(declare-datatypes ((Option!13815 0))(
  ( (None!13814) (Some!13814 (v!49764 tuple2!59936)) )
))
(declare-fun isDefined!10867 (Option!13815) Bool)

(declare-fun maxPrefixOneRuleZipperSequence!589 (LexerInterface!7653 Rule!15922 BalanceConc!28688) Option!13815)

(assert (=> b!4881474 (= lt!1999473 (isDefined!10867 (maxPrefixOneRuleZipperSequence!589 thiss!14805 (h!62514 rulesArg!165) input!1236)))))

(declare-fun b!4881475 () Bool)

(assert (=> b!4881475 (= e!3050747 (not e!3050744))))

(declare-fun res!2083732 () Bool)

(assert (=> b!4881475 (=> res!2083732 e!3050744)))

(assert (=> b!4881475 (= res!2083732 (or (not (is-Cons!56066 rulesArg!165)) (not (is-Nil!56066 (t!364836 rulesArg!165)))))))

(declare-fun isPrefix!4783 (List!56188 List!56188) Bool)

(assert (=> b!4881475 (isPrefix!4783 lt!1999474 lt!1999474)))

(declare-datatypes ((Unit!146055 0))(
  ( (Unit!146056) )
))
(declare-fun lt!1999475 () Unit!146055)

(declare-fun lemmaIsPrefixRefl!3180 (List!56188 List!56188) Unit!146055)

(assert (=> b!4881475 (= lt!1999475 (lemmaIsPrefixRefl!3180 lt!1999474 lt!1999474))))

(declare-fun list!17579 (BalanceConc!28688) List!56188)

(assert (=> b!4881475 (= lt!1999474 (list!17579 input!1236))))

(declare-fun b!4881476 () Bool)

(declare-fun tp!1373344 () Bool)

(declare-fun inv!72082 (Conc!14629) Bool)

(assert (=> b!4881476 (= e!3050745 (and (inv!72082 (c!830292 input!1236)) tp!1373344))))

(declare-fun b!4881477 () Bool)

(declare-fun tp!1373343 () Bool)

(assert (=> b!4881477 (= e!3050746 (and e!3050749 tp!1373343))))

(assert (= (and start!510714 res!2083731) b!4881470))

(assert (= (and b!4881470 res!2083734) b!4881471))

(assert (= (and b!4881471 res!2083733) b!4881475))

(assert (= (and b!4881475 (not res!2083732)) b!4881474))

(assert (= b!4881473 b!4881472))

(assert (= b!4881477 b!4881473))

(assert (= (and start!510714 (is-Cons!56066 rulesArg!165)) b!4881477))

(assert (= start!510714 b!4881476))

(declare-fun m!5885714 () Bool)

(assert (=> b!4881474 m!5885714))

(assert (=> b!4881474 m!5885714))

(declare-fun m!5885716 () Bool)

(assert (=> b!4881474 m!5885716))

(declare-fun m!5885718 () Bool)

(assert (=> b!4881474 m!5885718))

(assert (=> b!4881474 m!5885718))

(declare-fun m!5885720 () Bool)

(assert (=> b!4881474 m!5885720))

(declare-fun m!5885722 () Bool)

(assert (=> b!4881473 m!5885722))

(declare-fun m!5885724 () Bool)

(assert (=> b!4881473 m!5885724))

(declare-fun m!5885726 () Bool)

(assert (=> b!4881475 m!5885726))

(declare-fun m!5885728 () Bool)

(assert (=> b!4881475 m!5885728))

(declare-fun m!5885730 () Bool)

(assert (=> b!4881475 m!5885730))

(declare-fun m!5885732 () Bool)

(assert (=> start!510714 m!5885732))

(declare-fun m!5885734 () Bool)

(assert (=> b!4881476 m!5885734))

(declare-fun m!5885736 () Bool)

(assert (=> b!4881470 m!5885736))

(declare-fun m!5885738 () Bool)

(assert (=> b!4881471 m!5885738))

(push 1)

(assert (not b!4881476))

(assert (not b!4881477))

(assert (not b!4881474))

(assert (not b!4881473))

(assert (not b_next!131695))

(assert (not start!510714))

(assert (not b!4881470))

(assert b_and!343735)

(assert (not b!4881475))

(assert (not b_next!131693))

(assert (not b!4881471))

(assert b_and!343737)

(check-sat)

(pop 1)

(push 1)

(assert b_and!343737)

(assert b_and!343735)

(assert (not b_next!131693))

(assert (not b_next!131695))

(check-sat)

(pop 1)


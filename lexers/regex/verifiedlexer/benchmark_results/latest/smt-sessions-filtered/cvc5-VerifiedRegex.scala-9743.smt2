; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510658 () Bool)

(assert start!510658)

(declare-fun b!4881135 () Bool)

(declare-fun b_free!130863 () Bool)

(declare-fun b_next!131653 () Bool)

(assert (=> b!4881135 (= b_free!130863 (not b_next!131653))))

(declare-fun tp!1373150 () Bool)

(declare-fun b_and!343695 () Bool)

(assert (=> b!4881135 (= tp!1373150 b_and!343695)))

(declare-fun b_free!130865 () Bool)

(declare-fun b_next!131655 () Bool)

(assert (=> b!4881135 (= b_free!130865 (not b_next!131655))))

(declare-fun tp!1373153 () Bool)

(declare-fun b_and!343697 () Bool)

(assert (=> b!4881135 (= tp!1373153 b_and!343697)))

(declare-fun b!4881134 () Bool)

(declare-fun e!3050488 () Bool)

(declare-datatypes ((C!26454 0))(
  ( (C!26455 (val!22561 Int)) )
))
(declare-datatypes ((List!56164 0))(
  ( (Nil!56040) (Cons!56040 (h!62488 C!26454) (t!364810 List!56164)) )
))
(declare-datatypes ((IArray!29303 0))(
  ( (IArray!29304 (innerList!14709 List!56164)) )
))
(declare-datatypes ((Conc!14621 0))(
  ( (Node!14621 (left!40718 Conc!14621) (right!41048 Conc!14621) (csize!29472 Int) (cheight!14832 Int)) (Leaf!24365 (xs!17937 IArray!29303) (csize!29473 Int)) (Empty!14621) )
))
(declare-datatypes ((BalanceConc!28672 0))(
  ( (BalanceConc!28673 (c!830267 Conc!14621)) )
))
(declare-fun input!1236 () BalanceConc!28672)

(declare-fun tp!1373152 () Bool)

(declare-fun inv!72041 (Conc!14621) Bool)

(assert (=> b!4881134 (= e!3050488 (and (inv!72041 (c!830267 input!1236)) tp!1373152))))

(declare-fun res!2083575 () Bool)

(declare-fun e!3050486 () Bool)

(assert (=> start!510658 (=> (not res!2083575) (not e!3050486))))

(declare-datatypes ((LexerInterface!7645 0))(
  ( (LexerInterfaceExt!7642 (__x!34019 Int)) (Lexer!7643) )
))
(declare-fun thiss!14805 () LexerInterface!7645)

(assert (=> start!510658 (= res!2083575 (is-Lexer!7643 thiss!14805))))

(assert (=> start!510658 e!3050486))

(assert (=> start!510658 true))

(declare-fun e!3050487 () Bool)

(assert (=> start!510658 e!3050487))

(declare-fun inv!72042 (BalanceConc!28672) Bool)

(assert (=> start!510658 (and (inv!72042 input!1236) e!3050488)))

(declare-fun e!3050484 () Bool)

(assert (=> b!4881135 (= e!3050484 (and tp!1373150 tp!1373153))))

(declare-fun e!3050485 () Bool)

(declare-fun tp!1373154 () Bool)

(declare-fun b!4881136 () Bool)

(declare-datatypes ((List!56165 0))(
  ( (Nil!56041) (Cons!56041 (h!62489 (_ BitVec 16)) (t!364811 List!56165)) )
))
(declare-datatypes ((TokenValue!8363 0))(
  ( (FloatLiteralValue!16726 (text!58986 List!56165)) (TokenValueExt!8362 (__x!34020 Int)) (Broken!41815 (value!258644 List!56165)) (Object!8486) (End!8363) (Def!8363) (Underscore!8363) (Match!8363) (Else!8363) (Error!8363) (Case!8363) (If!8363) (Extends!8363) (Abstract!8363) (Class!8363) (Val!8363) (DelimiterValue!16726 (del!8423 List!56165)) (KeywordValue!8369 (value!258645 List!56165)) (CommentValue!16726 (value!258646 List!56165)) (WhitespaceValue!16726 (value!258647 List!56165)) (IndentationValue!8363 (value!258648 List!56165)) (String!63258) (Int32!8363) (Broken!41816 (value!258649 List!56165)) (Boolean!8364) (Unit!146030) (OperatorValue!8366 (op!8423 List!56165)) (IdentifierValue!16726 (value!258650 List!56165)) (IdentifierValue!16727 (value!258651 List!56165)) (WhitespaceValue!16727 (value!258652 List!56165)) (True!16726) (False!16726) (Broken!41817 (value!258653 List!56165)) (Broken!41818 (value!258654 List!56165)) (True!16727) (RightBrace!8363) (RightBracket!8363) (Colon!8363) (Null!8363) (Comma!8363) (LeftBracket!8363) (False!16727) (LeftBrace!8363) (ImaginaryLiteralValue!8363 (text!58987 List!56165)) (StringLiteralValue!25089 (value!258655 List!56165)) (EOFValue!8363 (value!258656 List!56165)) (IdentValue!8363 (value!258657 List!56165)) (DelimiterValue!16727 (value!258658 List!56165)) (DedentValue!8363 (value!258659 List!56165)) (NewLineValue!8363 (value!258660 List!56165)) (IntegerValue!25089 (value!258661 (_ BitVec 32)) (text!58988 List!56165)) (IntegerValue!25090 (value!258662 Int) (text!58989 List!56165)) (Times!8363) (Or!8363) (Equal!8363) (Minus!8363) (Broken!41819 (value!258663 List!56165)) (And!8363) (Div!8363) (LessEqual!8363) (Mod!8363) (Concat!21491) (Not!8363) (Plus!8363) (SpaceValue!8363 (value!258664 List!56165)) (IntegerValue!25091 (value!258665 Int) (text!58990 List!56165)) (StringLiteralValue!25090 (text!58991 List!56165)) (FloatLiteralValue!16727 (text!58992 List!56165)) (BytesLiteralValue!8363 (value!258666 List!56165)) (CommentValue!16727 (value!258667 List!56165)) (StringLiteralValue!25091 (value!258668 List!56165)) (ErrorTokenValue!8363 (msg!8424 List!56165)) )
))
(declare-datatypes ((Regex!13128 0))(
  ( (ElementMatch!13128 (c!830268 C!26454)) (Concat!21492 (regOne!26768 Regex!13128) (regTwo!26768 Regex!13128)) (EmptyExpr!13128) (Star!13128 (reg!13457 Regex!13128)) (EmptyLang!13128) (Union!13128 (regOne!26769 Regex!13128) (regTwo!26769 Regex!13128)) )
))
(declare-datatypes ((String!63259 0))(
  ( (String!63260 (value!258669 String)) )
))
(declare-datatypes ((TokenValueInjection!16034 0))(
  ( (TokenValueInjection!16035 (toValue!10940 Int) (toChars!10799 Int)) )
))
(declare-datatypes ((Rule!15906 0))(
  ( (Rule!15907 (regex!8053 Regex!13128) (tag!8917 String!63259) (isSeparator!8053 Bool) (transformation!8053 TokenValueInjection!16034)) )
))
(declare-datatypes ((List!56166 0))(
  ( (Nil!56042) (Cons!56042 (h!62490 Rule!15906) (t!364812 List!56166)) )
))
(declare-fun rulesArg!165 () List!56166)

(declare-fun inv!72038 (String!63259) Bool)

(declare-fun inv!72043 (TokenValueInjection!16034) Bool)

(assert (=> b!4881136 (= e!3050485 (and tp!1373154 (inv!72038 (tag!8917 (h!62490 rulesArg!165))) (inv!72043 (transformation!8053 (h!62490 rulesArg!165))) e!3050484))))

(declare-fun b!4881137 () Bool)

(declare-fun res!2083577 () Bool)

(assert (=> b!4881137 (=> (not res!2083577) (not e!3050486))))

(declare-fun rulesValidInductive!3032 (LexerInterface!7645 List!56166) Bool)

(assert (=> b!4881137 (= res!2083577 (rulesValidInductive!3032 thiss!14805 rulesArg!165))))

(declare-fun b!4881138 () Bool)

(assert (=> b!4881138 (= e!3050486 (not true))))

(declare-fun lt!1999385 () List!56164)

(declare-fun isPrefix!4775 (List!56164 List!56164) Bool)

(assert (=> b!4881138 (isPrefix!4775 lt!1999385 lt!1999385)))

(declare-datatypes ((Unit!146031 0))(
  ( (Unit!146032) )
))
(declare-fun lt!1999386 () Unit!146031)

(declare-fun lemmaIsPrefixRefl!3172 (List!56164 List!56164) Unit!146031)

(assert (=> b!4881138 (= lt!1999386 (lemmaIsPrefixRefl!3172 lt!1999385 lt!1999385))))

(declare-fun list!17570 (BalanceConc!28672) List!56164)

(assert (=> b!4881138 (= lt!1999385 (list!17570 input!1236))))

(declare-fun b!4881139 () Bool)

(declare-fun tp!1373151 () Bool)

(assert (=> b!4881139 (= e!3050487 (and e!3050485 tp!1373151))))

(declare-fun b!4881140 () Bool)

(declare-fun res!2083576 () Bool)

(assert (=> b!4881140 (=> (not res!2083576) (not e!3050486))))

(declare-fun isEmpty!30036 (List!56166) Bool)

(assert (=> b!4881140 (= res!2083576 (not (isEmpty!30036 rulesArg!165)))))

(assert (= (and start!510658 res!2083575) b!4881137))

(assert (= (and b!4881137 res!2083577) b!4881140))

(assert (= (and b!4881140 res!2083576) b!4881138))

(assert (= b!4881136 b!4881135))

(assert (= b!4881139 b!4881136))

(assert (= (and start!510658 (is-Cons!56042 rulesArg!165)) b!4881139))

(assert (= start!510658 b!4881134))

(declare-fun m!5885480 () Bool)

(assert (=> b!4881136 m!5885480))

(declare-fun m!5885482 () Bool)

(assert (=> b!4881136 m!5885482))

(declare-fun m!5885484 () Bool)

(assert (=> b!4881134 m!5885484))

(declare-fun m!5885486 () Bool)

(assert (=> b!4881140 m!5885486))

(declare-fun m!5885488 () Bool)

(assert (=> b!4881138 m!5885488))

(declare-fun m!5885490 () Bool)

(assert (=> b!4881138 m!5885490))

(declare-fun m!5885492 () Bool)

(assert (=> b!4881138 m!5885492))

(declare-fun m!5885494 () Bool)

(assert (=> start!510658 m!5885494))

(declare-fun m!5885496 () Bool)

(assert (=> b!4881137 m!5885496))

(push 1)

(assert (not b!4881138))

(assert (not start!510658))

(assert (not b!4881137))

(assert (not b!4881136))

(assert b_and!343697)

(assert (not b!4881139))

(assert (not b_next!131653))

(assert b_and!343695)

(assert (not b!4881134))

(assert (not b_next!131655))

(assert (not b!4881140))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343697)

(assert b_and!343695)

(assert (not b_next!131653))

(assert (not b_next!131655))

(check-sat)

(pop 1)


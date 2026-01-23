; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510986 () Bool)

(assert start!510986)

(declare-fun b!4883101 () Bool)

(declare-fun b_free!131015 () Bool)

(declare-fun b_next!131805 () Bool)

(assert (=> b!4883101 (= b_free!131015 (not b_next!131805))))

(declare-fun tp!1374002 () Bool)

(declare-fun b_and!343847 () Bool)

(assert (=> b!4883101 (= tp!1374002 b_and!343847)))

(declare-fun b_free!131017 () Bool)

(declare-fun b_next!131807 () Bool)

(assert (=> b!4883101 (= b_free!131017 (not b_next!131807))))

(declare-fun tp!1374005 () Bool)

(declare-fun b_and!343849 () Bool)

(assert (=> b!4883101 (= tp!1374005 b_and!343849)))

(declare-fun e!3051940 () Bool)

(assert (=> b!4883101 (= e!3051940 (and tp!1374002 tp!1374005))))

(declare-fun tp!1374004 () Bool)

(declare-fun b!4883102 () Bool)

(declare-fun e!3051942 () Bool)

(declare-datatypes ((C!26510 0))(
  ( (C!26511 (val!22589 Int)) )
))
(declare-datatypes ((List!56248 0))(
  ( (Nil!56124) (Cons!56124 (h!62572 C!26510) (t!364894 List!56248)) )
))
(declare-datatypes ((IArray!29359 0))(
  ( (IArray!29360 (innerList!14737 List!56248)) )
))
(declare-datatypes ((Conc!14649 0))(
  ( (Node!14649 (left!40784 Conc!14649) (right!41114 Conc!14649) (csize!29528 Int) (cheight!14860 Int)) (Leaf!24407 (xs!17965 IArray!29359) (csize!29529 Int)) (Empty!14649) )
))
(declare-datatypes ((BalanceConc!28728 0))(
  ( (BalanceConc!28729 (c!830425 Conc!14649)) )
))
(declare-datatypes ((List!56249 0))(
  ( (Nil!56125) (Cons!56125 (h!62573 (_ BitVec 16)) (t!364895 List!56249)) )
))
(declare-datatypes ((TokenValue!8391 0))(
  ( (FloatLiteralValue!16782 (text!59182 List!56249)) (TokenValueExt!8390 (__x!34075 Int)) (Broken!41955 (value!259436 List!56249)) (Object!8514) (End!8391) (Def!8391) (Underscore!8391) (Match!8391) (Else!8391) (Error!8391) (Case!8391) (If!8391) (Extends!8391) (Abstract!8391) (Class!8391) (Val!8391) (DelimiterValue!16782 (del!8451 List!56249)) (KeywordValue!8397 (value!259437 List!56249)) (CommentValue!16782 (value!259438 List!56249)) (WhitespaceValue!16782 (value!259439 List!56249)) (IndentationValue!8391 (value!259440 List!56249)) (String!63398) (Int32!8391) (Broken!41956 (value!259441 List!56249)) (Boolean!8392) (Unit!146114) (OperatorValue!8394 (op!8451 List!56249)) (IdentifierValue!16782 (value!259442 List!56249)) (IdentifierValue!16783 (value!259443 List!56249)) (WhitespaceValue!16783 (value!259444 List!56249)) (True!16782) (False!16782) (Broken!41957 (value!259445 List!56249)) (Broken!41958 (value!259446 List!56249)) (True!16783) (RightBrace!8391) (RightBracket!8391) (Colon!8391) (Null!8391) (Comma!8391) (LeftBracket!8391) (False!16783) (LeftBrace!8391) (ImaginaryLiteralValue!8391 (text!59183 List!56249)) (StringLiteralValue!25173 (value!259447 List!56249)) (EOFValue!8391 (value!259448 List!56249)) (IdentValue!8391 (value!259449 List!56249)) (DelimiterValue!16783 (value!259450 List!56249)) (DedentValue!8391 (value!259451 List!56249)) (NewLineValue!8391 (value!259452 List!56249)) (IntegerValue!25173 (value!259453 (_ BitVec 32)) (text!59184 List!56249)) (IntegerValue!25174 (value!259454 Int) (text!59185 List!56249)) (Times!8391) (Or!8391) (Equal!8391) (Minus!8391) (Broken!41959 (value!259455 List!56249)) (And!8391) (Div!8391) (LessEqual!8391) (Mod!8391) (Concat!21547) (Not!8391) (Plus!8391) (SpaceValue!8391 (value!259456 List!56249)) (IntegerValue!25175 (value!259457 Int) (text!59186 List!56249)) (StringLiteralValue!25174 (text!59187 List!56249)) (FloatLiteralValue!16783 (text!59188 List!56249)) (BytesLiteralValue!8391 (value!259458 List!56249)) (CommentValue!16783 (value!259459 List!56249)) (StringLiteralValue!25175 (value!259460 List!56249)) (ErrorTokenValue!8391 (msg!8452 List!56249)) )
))
(declare-datatypes ((Regex!13156 0))(
  ( (ElementMatch!13156 (c!830426 C!26510)) (Concat!21548 (regOne!26824 Regex!13156) (regTwo!26824 Regex!13156)) (EmptyExpr!13156) (Star!13156 (reg!13485 Regex!13156)) (EmptyLang!13156) (Union!13156 (regOne!26825 Regex!13156) (regTwo!26825 Regex!13156)) )
))
(declare-datatypes ((String!63399 0))(
  ( (String!63400 (value!259461 String)) )
))
(declare-datatypes ((TokenValueInjection!16090 0))(
  ( (TokenValueInjection!16091 (toValue!10968 Int) (toChars!10827 Int)) )
))
(declare-datatypes ((Rule!15962 0))(
  ( (Rule!15963 (regex!8081 Regex!13156) (tag!8945 String!63399) (isSeparator!8081 Bool) (transformation!8081 TokenValueInjection!16090)) )
))
(declare-datatypes ((List!56250 0))(
  ( (Nil!56126) (Cons!56126 (h!62574 Rule!15962) (t!364896 List!56250)) )
))
(declare-fun rulesArg!165 () List!56250)

(declare-fun inv!72187 (String!63399) Bool)

(declare-fun inv!72190 (TokenValueInjection!16090) Bool)

(assert (=> b!4883102 (= e!3051942 (and tp!1374004 (inv!72187 (tag!8945 (h!62574 rulesArg!165))) (inv!72190 (transformation!8081 (h!62574 rulesArg!165))) e!3051940))))

(declare-fun b!4883103 () Bool)

(declare-fun e!3051943 () Bool)

(declare-fun e!3051937 () Bool)

(assert (=> b!4883103 (= e!3051943 (not e!3051937))))

(declare-fun res!2084555 () Bool)

(assert (=> b!4883103 (=> res!2084555 e!3051937)))

(assert (=> b!4883103 (= res!2084555 (or (and (is-Cons!56126 rulesArg!165) (is-Nil!56126 (t!364896 rulesArg!165))) (not (is-Cons!56126 rulesArg!165))))))

(declare-fun lt!2000251 () List!56248)

(declare-fun isPrefix!4803 (List!56248 List!56248) Bool)

(assert (=> b!4883103 (isPrefix!4803 lt!2000251 lt!2000251)))

(declare-datatypes ((Unit!146115 0))(
  ( (Unit!146116) )
))
(declare-fun lt!2000254 () Unit!146115)

(declare-fun lemmaIsPrefixRefl!3200 (List!56248 List!56248) Unit!146115)

(assert (=> b!4883103 (= lt!2000254 (lemmaIsPrefixRefl!3200 lt!2000251 lt!2000251))))

(declare-fun input!1236 () BalanceConc!28728)

(declare-fun list!17606 (BalanceConc!28728) List!56248)

(assert (=> b!4883103 (= lt!2000251 (list!17606 input!1236))))

(declare-fun b!4883104 () Bool)

(declare-fun res!2084556 () Bool)

(assert (=> b!4883104 (=> (not res!2084556) (not e!3051943))))

(declare-datatypes ((LexerInterface!7673 0))(
  ( (LexerInterfaceExt!7670 (__x!34076 Int)) (Lexer!7671) )
))
(declare-fun thiss!14805 () LexerInterface!7673)

(declare-fun rulesValidInductive!3060 (LexerInterface!7673 List!56250) Bool)

(assert (=> b!4883104 (= res!2084556 (rulesValidInductive!3060 thiss!14805 rulesArg!165))))

(declare-fun b!4883105 () Bool)

(declare-fun e!3051938 () Bool)

(declare-fun tp!1374003 () Bool)

(declare-fun inv!72191 (Conc!14649) Bool)

(assert (=> b!4883105 (= e!3051938 (and (inv!72191 (c!830425 input!1236)) tp!1374003))))

(declare-fun b!4883106 () Bool)

(declare-fun res!2084554 () Bool)

(assert (=> b!4883106 (=> (not res!2084554) (not e!3051943))))

(declare-fun isEmpty!30082 (List!56250) Bool)

(assert (=> b!4883106 (= res!2084554 (not (isEmpty!30082 rulesArg!165)))))

(declare-fun res!2084557 () Bool)

(assert (=> start!510986 (=> (not res!2084557) (not e!3051943))))

(assert (=> start!510986 (= res!2084557 (is-Lexer!7671 thiss!14805))))

(assert (=> start!510986 e!3051943))

(assert (=> start!510986 true))

(declare-fun e!3051941 () Bool)

(assert (=> start!510986 e!3051941))

(declare-fun inv!72192 (BalanceConc!28728) Bool)

(assert (=> start!510986 (and (inv!72192 input!1236) e!3051938)))

(declare-fun b!4883107 () Bool)

(declare-fun tp!1374006 () Bool)

(assert (=> b!4883107 (= e!3051941 (and e!3051942 tp!1374006))))

(declare-fun b!4883108 () Bool)

(assert (=> b!4883108 (= e!3051937 true)))

(declare-datatypes ((Token!14730 0))(
  ( (Token!14731 (value!259462 TokenValue!8391) (rule!11243 Rule!15962) (size!37000 Int) (originalCharacters!8396 List!56248)) )
))
(declare-datatypes ((tuple2!60024 0))(
  ( (tuple2!60025 (_1!33315 Token!14730) (_2!33315 BalanceConc!28728)) )
))
(declare-datatypes ((Option!13847 0))(
  ( (None!13846) (Some!13846 (v!49796 tuple2!60024)) )
))
(declare-fun lt!2000253 () Option!13847)

(declare-fun maxPrefixZipperSequence!1242 (LexerInterface!7673 List!56250 BalanceConc!28728) Option!13847)

(assert (=> b!4883108 (= lt!2000253 (maxPrefixZipperSequence!1242 thiss!14805 (t!364896 rulesArg!165) input!1236))))

(declare-fun lt!2000252 () Option!13847)

(declare-fun maxPrefixOneRuleZipperSequence!607 (LexerInterface!7673 Rule!15962 BalanceConc!28728) Option!13847)

(assert (=> b!4883108 (= lt!2000252 (maxPrefixOneRuleZipperSequence!607 thiss!14805 (h!62574 rulesArg!165) input!1236))))

(assert (= (and start!510986 res!2084557) b!4883104))

(assert (= (and b!4883104 res!2084556) b!4883106))

(assert (= (and b!4883106 res!2084554) b!4883103))

(assert (= (and b!4883103 (not res!2084555)) b!4883108))

(assert (= b!4883102 b!4883101))

(assert (= b!4883107 b!4883102))

(assert (= (and start!510986 (is-Cons!56126 rulesArg!165)) b!4883107))

(assert (= start!510986 b!4883105))

(declare-fun m!5887136 () Bool)

(assert (=> b!4883102 m!5887136))

(declare-fun m!5887138 () Bool)

(assert (=> b!4883102 m!5887138))

(declare-fun m!5887140 () Bool)

(assert (=> b!4883103 m!5887140))

(declare-fun m!5887142 () Bool)

(assert (=> b!4883103 m!5887142))

(declare-fun m!5887144 () Bool)

(assert (=> b!4883103 m!5887144))

(declare-fun m!5887146 () Bool)

(assert (=> b!4883104 m!5887146))

(declare-fun m!5887148 () Bool)

(assert (=> b!4883105 m!5887148))

(declare-fun m!5887150 () Bool)

(assert (=> b!4883108 m!5887150))

(declare-fun m!5887152 () Bool)

(assert (=> b!4883108 m!5887152))

(declare-fun m!5887154 () Bool)

(assert (=> b!4883106 m!5887154))

(declare-fun m!5887156 () Bool)

(assert (=> start!510986 m!5887156))

(push 1)

(assert b_and!343849)

(assert (not start!510986))

(assert (not b!4883105))

(assert (not b!4883108))

(assert (not b!4883107))

(assert (not b_next!131807))

(assert b_and!343847)

(assert (not b!4883103))

(assert (not b!4883102))

(assert (not b!4883104))

(assert (not b_next!131805))

(assert (not b!4883106))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343849)

(assert b_and!343847)

(assert (not b_next!131805))

(assert (not b_next!131807))

(check-sat)

(pop 1)


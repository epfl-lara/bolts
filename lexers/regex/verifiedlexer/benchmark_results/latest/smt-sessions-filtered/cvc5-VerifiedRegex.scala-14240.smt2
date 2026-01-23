; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745030 () Bool)

(assert start!745030)

(declare-fun b!7898487 () Bool)

(declare-fun b_free!134523 () Bool)

(declare-fun b_next!135313 () Bool)

(assert (=> b!7898487 (= b_free!134523 (not b_next!135313))))

(declare-fun tp!2353102 () Bool)

(declare-fun b_and!352423 () Bool)

(assert (=> b!7898487 (= tp!2353102 b_and!352423)))

(declare-fun b_free!134525 () Bool)

(declare-fun b_next!135315 () Bool)

(assert (=> b!7898487 (= b_free!134525 (not b_next!135315))))

(declare-fun tp!2353105 () Bool)

(declare-fun b_and!352425 () Bool)

(assert (=> b!7898487 (= tp!2353105 b_and!352425)))

(declare-fun b!7898485 () Bool)

(declare-fun e!4662057 () Bool)

(assert (=> b!7898485 (= e!4662057 true)))

(declare-datatypes ((C!42826 0))(
  ( (C!42827 (val!31877 Int)) )
))
(declare-datatypes ((List!74155 0))(
  ( (Nil!74031) (Cons!74031 (h!80479 C!42826) (t!388964 List!74155)) )
))
(declare-fun input!1184 () List!74155)

(declare-datatypes ((LexerInterface!8137 0))(
  ( (LexerInterfaceExt!8134 (__x!35009 Int)) (Lexer!8135) )
))
(declare-fun thiss!14377 () LexerInterface!8137)

(declare-datatypes ((IArray!31499 0))(
  ( (IArray!31500 (innerList!15807 List!74155)) )
))
(declare-datatypes ((Conc!15719 0))(
  ( (Node!15719 (left!56499 Conc!15719) (right!56829 Conc!15719) (csize!31668 Int) (cheight!15930 Int)) (Leaf!29960 (xs!19101 IArray!31499) (csize!31669 Int)) (Empty!15719) )
))
(declare-datatypes ((BalanceConc!30556 0))(
  ( (BalanceConc!30557 (c!1449701 Conc!15719)) )
))
(declare-datatypes ((List!74156 0))(
  ( (Nil!74032) (Cons!74032 (h!80480 (_ BitVec 16)) (t!388965 List!74156)) )
))
(declare-datatypes ((TokenValue!8861 0))(
  ( (FloatLiteralValue!17722 (text!62472 List!74156)) (TokenValueExt!8860 (__x!35010 Int)) (Broken!44305 (value!285489 List!74156)) (Object!8984) (End!8861) (Def!8861) (Underscore!8861) (Match!8861) (Else!8861) (Error!8861) (Case!8861) (If!8861) (Extends!8861) (Abstract!8861) (Class!8861) (Val!8861) (DelimiterValue!17722 (del!8921 List!74156)) (KeywordValue!8867 (value!285490 List!74156)) (CommentValue!17722 (value!285491 List!74156)) (WhitespaceValue!17722 (value!285492 List!74156)) (IndentationValue!8861 (value!285493 List!74156)) (String!82728) (Int32!8861) (Broken!44306 (value!285494 List!74156)) (Boolean!8862) (Unit!169049) (OperatorValue!8864 (op!8921 List!74156)) (IdentifierValue!17722 (value!285495 List!74156)) (IdentifierValue!17723 (value!285496 List!74156)) (WhitespaceValue!17723 (value!285497 List!74156)) (True!17722) (False!17722) (Broken!44307 (value!285498 List!74156)) (Broken!44308 (value!285499 List!74156)) (True!17723) (RightBrace!8861) (RightBracket!8861) (Colon!8861) (Null!8861) (Comma!8861) (LeftBracket!8861) (False!17723) (LeftBrace!8861) (ImaginaryLiteralValue!8861 (text!62473 List!74156)) (StringLiteralValue!26583 (value!285500 List!74156)) (EOFValue!8861 (value!285501 List!74156)) (IdentValue!8861 (value!285502 List!74156)) (DelimiterValue!17723 (value!285503 List!74156)) (DedentValue!8861 (value!285504 List!74156)) (NewLineValue!8861 (value!285505 List!74156)) (IntegerValue!26583 (value!285506 (_ BitVec 32)) (text!62474 List!74156)) (IntegerValue!26584 (value!285507 Int) (text!62475 List!74156)) (Times!8861) (Or!8861) (Equal!8861) (Minus!8861) (Broken!44309 (value!285508 List!74156)) (And!8861) (Div!8861) (LessEqual!8861) (Mod!8861) (Concat!30109) (Not!8861) (Plus!8861) (SpaceValue!8861 (value!285509 List!74156)) (IntegerValue!26585 (value!285510 Int) (text!62476 List!74156)) (StringLiteralValue!26584 (text!62477 List!74156)) (FloatLiteralValue!17723 (text!62478 List!74156)) (BytesLiteralValue!8861 (value!285511 List!74156)) (CommentValue!17723 (value!285512 List!74156)) (StringLiteralValue!26585 (value!285513 List!74156)) (ErrorTokenValue!8861 (msg!8922 List!74156)) )
))
(declare-datatypes ((Regex!21248 0))(
  ( (ElementMatch!21248 (c!1449702 C!42826)) (Concat!30110 (regOne!43008 Regex!21248) (regTwo!43008 Regex!21248)) (EmptyExpr!21248) (Star!21248 (reg!21577 Regex!21248)) (EmptyLang!21248) (Union!21248 (regOne!43009 Regex!21248) (regTwo!43009 Regex!21248)) )
))
(declare-datatypes ((String!82729 0))(
  ( (String!82730 (value!285514 String)) )
))
(declare-datatypes ((TokenValueInjection!17030 0))(
  ( (TokenValueInjection!17031 (toValue!11586 Int) (toChars!11445 Int)) )
))
(declare-datatypes ((Rule!16890 0))(
  ( (Rule!16891 (regex!8545 Regex!21248) (tag!9409 String!82729) (isSeparator!8545 Bool) (transformation!8545 TokenValueInjection!17030)) )
))
(declare-datatypes ((List!74157 0))(
  ( (Nil!74033) (Cons!74033 (h!80481 Rule!16890) (t!388966 List!74157)) )
))
(declare-fun rulesArg!141 () List!74157)

(declare-datatypes ((Token!15510 0))(
  ( (Token!15511 (value!285515 TokenValue!8861) (rule!11825 Rule!16890) (size!42886 Int) (originalCharacters!8786 List!74155)) )
))
(declare-datatypes ((tuple2!70102 0))(
  ( (tuple2!70103 (_1!38354 Token!15510) (_2!38354 List!74155)) )
))
(declare-datatypes ((Option!17827 0))(
  ( (None!17826) (Some!17826 (v!54963 tuple2!70102)) )
))
(declare-fun lt!2682268 () Option!17827)

(declare-fun maxPrefixOneRule!3725 (LexerInterface!8137 Rule!16890 List!74155) Option!17827)

(assert (=> b!7898485 (= lt!2682268 (maxPrefixOneRule!3725 thiss!14377 (h!80481 rulesArg!141) input!1184))))

(declare-fun b!7898486 () Bool)

(declare-fun e!4662059 () Bool)

(declare-fun tp_is_empty!52871 () Bool)

(declare-fun tp!2353103 () Bool)

(assert (=> b!7898486 (= e!4662059 (and tp_is_empty!52871 tp!2353103))))

(declare-fun res!3133235 () Bool)

(declare-fun e!4662061 () Bool)

(assert (=> start!745030 (=> (not res!3133235) (not e!4662061))))

(assert (=> start!745030 (= res!3133235 (is-Lexer!8135 thiss!14377))))

(assert (=> start!745030 e!4662061))

(assert (=> start!745030 true))

(declare-fun e!4662063 () Bool)

(assert (=> start!745030 e!4662063))

(assert (=> start!745030 e!4662059))

(declare-fun e!4662058 () Bool)

(assert (=> b!7898487 (= e!4662058 (and tp!2353102 tp!2353105))))

(declare-fun b!7898488 () Bool)

(declare-fun res!3133237 () Bool)

(assert (=> b!7898488 (=> (not res!3133237) (not e!4662061))))

(declare-fun rulesValidInductive!3356 (LexerInterface!8137 List!74157) Bool)

(assert (=> b!7898488 (= res!3133237 (rulesValidInductive!3356 thiss!14377 rulesArg!141))))

(declare-fun b!7898489 () Bool)

(declare-fun e!4662062 () Bool)

(declare-fun tp!2353104 () Bool)

(assert (=> b!7898489 (= e!4662063 (and e!4662062 tp!2353104))))

(declare-fun b!7898490 () Bool)

(assert (=> b!7898490 (= e!4662061 (not e!4662057))))

(declare-fun res!3133234 () Bool)

(assert (=> b!7898490 (=> res!3133234 e!4662057)))

(assert (=> b!7898490 (= res!3133234 (or (and (is-Cons!74033 rulesArg!141) (is-Nil!74033 (t!388966 rulesArg!141))) (not (is-Cons!74033 rulesArg!141))))))

(declare-fun isPrefix!6378 (List!74155 List!74155) Bool)

(assert (=> b!7898490 (isPrefix!6378 input!1184 input!1184)))

(declare-datatypes ((Unit!169050 0))(
  ( (Unit!169051) )
))
(declare-fun lt!2682267 () Unit!169050)

(declare-fun lemmaIsPrefixRefl!3889 (List!74155 List!74155) Unit!169050)

(assert (=> b!7898490 (= lt!2682267 (lemmaIsPrefixRefl!3889 input!1184 input!1184))))

(declare-fun tp!2353101 () Bool)

(declare-fun b!7898491 () Bool)

(declare-fun inv!95025 (String!82729) Bool)

(declare-fun inv!95028 (TokenValueInjection!17030) Bool)

(assert (=> b!7898491 (= e!4662062 (and tp!2353101 (inv!95025 (tag!9409 (h!80481 rulesArg!141))) (inv!95028 (transformation!8545 (h!80481 rulesArg!141))) e!4662058))))

(declare-fun b!7898492 () Bool)

(declare-fun res!3133236 () Bool)

(assert (=> b!7898492 (=> (not res!3133236) (not e!4662061))))

(declare-fun isEmpty!42468 (List!74157) Bool)

(assert (=> b!7898492 (= res!3133236 (not (isEmpty!42468 rulesArg!141)))))

(assert (= (and start!745030 res!3133235) b!7898488))

(assert (= (and b!7898488 res!3133237) b!7898492))

(assert (= (and b!7898492 res!3133236) b!7898490))

(assert (= (and b!7898490 (not res!3133234)) b!7898485))

(assert (= b!7898491 b!7898487))

(assert (= b!7898489 b!7898491))

(assert (= (and start!745030 (is-Cons!74033 rulesArg!141)) b!7898489))

(assert (= (and start!745030 (is-Cons!74031 input!1184)) b!7898486))

(declare-fun m!8273500 () Bool)

(assert (=> b!7898488 m!8273500))

(declare-fun m!8273502 () Bool)

(assert (=> b!7898485 m!8273502))

(declare-fun m!8273504 () Bool)

(assert (=> b!7898492 m!8273504))

(declare-fun m!8273506 () Bool)

(assert (=> b!7898491 m!8273506))

(declare-fun m!8273508 () Bool)

(assert (=> b!7898491 m!8273508))

(declare-fun m!8273510 () Bool)

(assert (=> b!7898490 m!8273510))

(declare-fun m!8273512 () Bool)

(assert (=> b!7898490 m!8273512))

(push 1)

(assert (not b_next!135313))

(assert b_and!352425)

(assert (not b!7898485))

(assert (not b!7898489))

(assert (not b!7898491))

(assert (not b!7898486))

(assert tp_is_empty!52871)

(assert (not b_next!135315))

(assert (not b!7898490))

(assert b_and!352423)

(assert (not b!7898492))

(assert (not b!7898488))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352425)

(assert b_and!352423)

(assert (not b_next!135315))

(assert (not b_next!135313))

(check-sat)

(pop 1)


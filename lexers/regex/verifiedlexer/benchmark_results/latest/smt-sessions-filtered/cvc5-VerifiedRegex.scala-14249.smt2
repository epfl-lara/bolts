; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745122 () Bool)

(assert start!745122)

(declare-fun b!7899376 () Bool)

(declare-fun b_free!134611 () Bool)

(declare-fun b_next!135401 () Bool)

(assert (=> b!7899376 (= b_free!134611 (not b_next!135401))))

(declare-fun tp!2353495 () Bool)

(declare-fun b_and!352511 () Bool)

(assert (=> b!7899376 (= tp!2353495 b_and!352511)))

(declare-fun b_free!134613 () Bool)

(declare-fun b_next!135403 () Bool)

(assert (=> b!7899376 (= b_free!134613 (not b_next!135403))))

(declare-fun tp!2353491 () Bool)

(declare-fun b_and!352513 () Bool)

(assert (=> b!7899376 (= tp!2353491 b_and!352513)))

(declare-fun b!7899365 () Bool)

(declare-fun e!4662706 () Bool)

(declare-fun tp_is_empty!52907 () Bool)

(declare-fun tp!2353492 () Bool)

(assert (=> b!7899365 (= e!4662706 (and tp_is_empty!52907 tp!2353492))))

(declare-fun b!7899366 () Bool)

(declare-fun e!4662703 () Bool)

(declare-fun e!4662700 () Bool)

(assert (=> b!7899366 (= e!4662703 e!4662700)))

(declare-fun res!3133764 () Bool)

(assert (=> b!7899366 (=> res!3133764 e!4662700)))

(declare-datatypes ((C!42862 0))(
  ( (C!42863 (val!31895 Int)) )
))
(declare-datatypes ((List!74209 0))(
  ( (Nil!74085) (Cons!74085 (h!80533 C!42862) (t!389018 List!74209)) )
))
(declare-fun lt!2682580 () List!74209)

(declare-datatypes ((List!74210 0))(
  ( (Nil!74086) (Cons!74086 (h!80534 (_ BitVec 16)) (t!389019 List!74210)) )
))
(declare-datatypes ((TokenValue!8879 0))(
  ( (FloatLiteralValue!17758 (text!62598 List!74210)) (TokenValueExt!8878 (__x!35045 Int)) (Broken!44395 (value!286002 List!74210)) (Object!9002) (End!8879) (Def!8879) (Underscore!8879) (Match!8879) (Else!8879) (Error!8879) (Case!8879) (If!8879) (Extends!8879) (Abstract!8879) (Class!8879) (Val!8879) (DelimiterValue!17758 (del!8939 List!74210)) (KeywordValue!8885 (value!286003 List!74210)) (CommentValue!17758 (value!286004 List!74210)) (WhitespaceValue!17758 (value!286005 List!74210)) (IndentationValue!8879 (value!286006 List!74210)) (String!82818) (Int32!8879) (Broken!44396 (value!286007 List!74210)) (Boolean!8880) (Unit!169103) (OperatorValue!8882 (op!8939 List!74210)) (IdentifierValue!17758 (value!286008 List!74210)) (IdentifierValue!17759 (value!286009 List!74210)) (WhitespaceValue!17759 (value!286010 List!74210)) (True!17758) (False!17758) (Broken!44397 (value!286011 List!74210)) (Broken!44398 (value!286012 List!74210)) (True!17759) (RightBrace!8879) (RightBracket!8879) (Colon!8879) (Null!8879) (Comma!8879) (LeftBracket!8879) (False!17759) (LeftBrace!8879) (ImaginaryLiteralValue!8879 (text!62599 List!74210)) (StringLiteralValue!26637 (value!286013 List!74210)) (EOFValue!8879 (value!286014 List!74210)) (IdentValue!8879 (value!286015 List!74210)) (DelimiterValue!17759 (value!286016 List!74210)) (DedentValue!8879 (value!286017 List!74210)) (NewLineValue!8879 (value!286018 List!74210)) (IntegerValue!26637 (value!286019 (_ BitVec 32)) (text!62600 List!74210)) (IntegerValue!26638 (value!286020 Int) (text!62601 List!74210)) (Times!8879) (Or!8879) (Equal!8879) (Minus!8879) (Broken!44399 (value!286021 List!74210)) (And!8879) (Div!8879) (LessEqual!8879) (Mod!8879) (Concat!30145) (Not!8879) (Plus!8879) (SpaceValue!8879 (value!286022 List!74210)) (IntegerValue!26639 (value!286023 Int) (text!62602 List!74210)) (StringLiteralValue!26638 (text!62603 List!74210)) (FloatLiteralValue!17759 (text!62604 List!74210)) (BytesLiteralValue!8879 (value!286024 List!74210)) (CommentValue!17759 (value!286025 List!74210)) (StringLiteralValue!26639 (value!286026 List!74210)) (ErrorTokenValue!8879 (msg!8940 List!74210)) )
))
(declare-datatypes ((IArray!31535 0))(
  ( (IArray!31536 (innerList!15825 List!74209)) )
))
(declare-datatypes ((Conc!15737 0))(
  ( (Node!15737 (left!56534 Conc!15737) (right!56864 Conc!15737) (csize!31704 Int) (cheight!15948 Int)) (Leaf!29987 (xs!19119 IArray!31535) (csize!31705 Int)) (Empty!15737) )
))
(declare-datatypes ((BalanceConc!30592 0))(
  ( (BalanceConc!30593 (c!1449766 Conc!15737)) )
))
(declare-datatypes ((Regex!21266 0))(
  ( (ElementMatch!21266 (c!1449767 C!42862)) (Concat!30146 (regOne!43044 Regex!21266) (regTwo!43044 Regex!21266)) (EmptyExpr!21266) (Star!21266 (reg!21595 Regex!21266)) (EmptyLang!21266) (Union!21266 (regOne!43045 Regex!21266) (regTwo!43045 Regex!21266)) )
))
(declare-datatypes ((String!82819 0))(
  ( (String!82820 (value!286027 String)) )
))
(declare-datatypes ((TokenValueInjection!17066 0))(
  ( (TokenValueInjection!17067 (toValue!11604 Int) (toChars!11463 Int)) )
))
(declare-datatypes ((Rule!16926 0))(
  ( (Rule!16927 (regex!8563 Regex!21266) (tag!9427 String!82819) (isSeparator!8563 Bool) (transformation!8563 TokenValueInjection!17066)) )
))
(declare-datatypes ((Token!15546 0))(
  ( (Token!15547 (value!286028 TokenValue!8879) (rule!11847 Rule!16926) (size!42918 Int) (originalCharacters!8804 List!74209)) )
))
(declare-datatypes ((tuple2!70144 0))(
  ( (tuple2!70145 (_1!38375 Token!15546) (_2!38375 List!74209)) )
))
(declare-fun lt!2682581 () tuple2!70144)

(assert (=> b!7899366 (= res!3133764 (not (= lt!2682580 (originalCharacters!8804 (_1!38375 lt!2682581)))))))

(declare-fun list!19182 (BalanceConc!30592) List!74209)

(declare-fun charsOf!5507 (Token!15546) BalanceConc!30592)

(assert (=> b!7899366 (= lt!2682580 (list!19182 (charsOf!5507 (_1!38375 lt!2682581))))))

(declare-datatypes ((Option!17845 0))(
  ( (None!17844) (Some!17844 (v!54981 tuple2!70144)) )
))
(declare-fun get!26599 (Option!17845) tuple2!70144)

(assert (=> b!7899366 (= lt!2682581 (get!26599 None!17844))))

(declare-fun b!7899367 () Bool)

(declare-fun res!3133762 () Bool)

(declare-fun e!4662704 () Bool)

(assert (=> b!7899367 (=> (not res!3133762) (not e!4662704))))

(declare-datatypes ((LexerInterface!8155 0))(
  ( (LexerInterfaceExt!8152 (__x!35046 Int)) (Lexer!8153) )
))
(declare-fun thiss!14377 () LexerInterface!8155)

(declare-datatypes ((List!74211 0))(
  ( (Nil!74087) (Cons!74087 (h!80535 Rule!16926) (t!389020 List!74211)) )
))
(declare-fun rulesArg!141 () List!74211)

(declare-fun rulesValidInductive!3374 (LexerInterface!8155 List!74211) Bool)

(assert (=> b!7899367 (= res!3133762 (rulesValidInductive!3374 thiss!14377 rulesArg!141))))

(declare-fun res!3133759 () Bool)

(assert (=> start!745122 (=> (not res!3133759) (not e!4662704))))

(assert (=> start!745122 (= res!3133759 (is-Lexer!8153 thiss!14377))))

(assert (=> start!745122 e!4662704))

(assert (=> start!745122 true))

(declare-fun e!4662705 () Bool)

(assert (=> start!745122 e!4662705))

(assert (=> start!745122 e!4662706))

(declare-fun b!7899368 () Bool)

(declare-fun res!3133761 () Bool)

(assert (=> b!7899368 (=> (not res!3133761) (not e!4662704))))

(declare-fun isEmpty!42492 (List!74211) Bool)

(assert (=> b!7899368 (= res!3133761 (not (isEmpty!42492 rulesArg!141)))))

(declare-fun b!7899369 () Bool)

(declare-fun e!4662707 () Bool)

(assert (=> b!7899369 (= e!4662704 (not e!4662707))))

(declare-fun res!3133763 () Bool)

(assert (=> b!7899369 (=> res!3133763 e!4662707)))

(assert (=> b!7899369 (= res!3133763 (or (and (is-Cons!74087 rulesArg!141) (is-Nil!74087 (t!389020 rulesArg!141))) (not (is-Cons!74087 rulesArg!141))))))

(declare-fun input!1184 () List!74209)

(declare-fun isPrefix!6396 (List!74209 List!74209) Bool)

(assert (=> b!7899369 (isPrefix!6396 input!1184 input!1184)))

(declare-datatypes ((Unit!169104 0))(
  ( (Unit!169105) )
))
(declare-fun lt!2682577 () Unit!169104)

(declare-fun lemmaIsPrefixRefl!3907 (List!74209 List!74209) Unit!169104)

(assert (=> b!7899369 (= lt!2682577 (lemmaIsPrefixRefl!3907 input!1184 input!1184))))

(declare-fun b!7899370 () Bool)

(declare-fun e!4662699 () Bool)

(declare-fun tp!2353493 () Bool)

(assert (=> b!7899370 (= e!4662705 (and e!4662699 tp!2353493))))

(declare-fun b!7899371 () Bool)

(assert (=> b!7899371 (= e!4662700 true)))

(declare-fun b!7899372 () Bool)

(declare-fun res!3133765 () Bool)

(assert (=> b!7899372 (=> res!3133765 e!4662700)))

(declare-fun apply!14316 (TokenValueInjection!17066 BalanceConc!30592) TokenValue!8879)

(declare-fun seqFromList!6134 (List!74209) BalanceConc!30592)

(assert (=> b!7899372 (= res!3133765 (not (= (value!286028 (_1!38375 lt!2682581)) (apply!14316 (transformation!8563 (rule!11847 (_1!38375 lt!2682581))) (seqFromList!6134 (originalCharacters!8804 (_1!38375 lt!2682581)))))))))

(declare-fun tp!2353494 () Bool)

(declare-fun e!4662702 () Bool)

(declare-fun b!7899373 () Bool)

(declare-fun inv!95070 (String!82819) Bool)

(declare-fun inv!95073 (TokenValueInjection!17066) Bool)

(assert (=> b!7899373 (= e!4662699 (and tp!2353494 (inv!95070 (tag!9427 (h!80535 rulesArg!141))) (inv!95073 (transformation!8563 (h!80535 rulesArg!141))) e!4662702))))

(declare-fun b!7899374 () Bool)

(declare-fun res!3133767 () Bool)

(assert (=> b!7899374 (=> res!3133767 e!4662700)))

(declare-fun matchR!10635 (Regex!21266 List!74209) Bool)

(assert (=> b!7899374 (= res!3133767 (not (matchR!10635 (regex!8563 (rule!11847 (_1!38375 lt!2682581))) lt!2682580)))))

(declare-fun b!7899375 () Bool)

(declare-fun res!3133758 () Bool)

(assert (=> b!7899375 (=> res!3133758 e!4662700)))

(declare-fun ++!18137 (List!74209 List!74209) List!74209)

(assert (=> b!7899375 (= res!3133758 (not (= (++!18137 lt!2682580 (_2!38375 lt!2682581)) input!1184)))))

(assert (=> b!7899376 (= e!4662702 (and tp!2353495 tp!2353491))))

(declare-fun b!7899377 () Bool)

(assert (=> b!7899377 (= e!4662707 e!4662703)))

(declare-fun res!3133760 () Bool)

(assert (=> b!7899377 (=> res!3133760 e!4662703)))

(declare-fun lt!2682579 () Option!17845)

(declare-fun lt!2682578 () Option!17845)

(assert (=> b!7899377 (= res!3133760 true)))

(declare-fun maxPrefix!4696 (LexerInterface!8155 List!74211 List!74209) Option!17845)

(assert (=> b!7899377 (= lt!2682578 (maxPrefix!4696 thiss!14377 (t!389020 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3743 (LexerInterface!8155 Rule!16926 List!74209) Option!17845)

(assert (=> b!7899377 (= lt!2682579 (maxPrefixOneRule!3743 thiss!14377 (h!80535 rulesArg!141) input!1184))))

(declare-fun b!7899378 () Bool)

(declare-fun res!3133766 () Bool)

(assert (=> b!7899378 (=> res!3133766 e!4662700)))

(declare-fun size!42919 (List!74209) Int)

(assert (=> b!7899378 (= res!3133766 (>= (size!42919 (_2!38375 lt!2682581)) (size!42919 input!1184)))))

(assert (= (and start!745122 res!3133759) b!7899367))

(assert (= (and b!7899367 res!3133762) b!7899368))

(assert (= (and b!7899368 res!3133761) b!7899369))

(assert (= (and b!7899369 (not res!3133763)) b!7899377))

(assert (= (and b!7899377 (not res!3133760)) b!7899366))

(assert (= (and b!7899366 (not res!3133764)) b!7899378))

(assert (= (and b!7899378 (not res!3133766)) b!7899375))

(assert (= (and b!7899375 (not res!3133758)) b!7899372))

(assert (= (and b!7899372 (not res!3133765)) b!7899374))

(assert (= (and b!7899374 (not res!3133767)) b!7899371))

(assert (= b!7899373 b!7899376))

(assert (= b!7899370 b!7899373))

(assert (= (and start!745122 (is-Cons!74087 rulesArg!141)) b!7899370))

(assert (= (and start!745122 (is-Cons!74085 input!1184)) b!7899365))

(declare-fun m!8274192 () Bool)

(assert (=> b!7899375 m!8274192))

(declare-fun m!8274194 () Bool)

(assert (=> b!7899369 m!8274194))

(declare-fun m!8274196 () Bool)

(assert (=> b!7899369 m!8274196))

(declare-fun m!8274198 () Bool)

(assert (=> b!7899372 m!8274198))

(assert (=> b!7899372 m!8274198))

(declare-fun m!8274200 () Bool)

(assert (=> b!7899372 m!8274200))

(declare-fun m!8274202 () Bool)

(assert (=> b!7899374 m!8274202))

(declare-fun m!8274204 () Bool)

(assert (=> b!7899368 m!8274204))

(declare-fun m!8274206 () Bool)

(assert (=> b!7899377 m!8274206))

(declare-fun m!8274208 () Bool)

(assert (=> b!7899377 m!8274208))

(declare-fun m!8274210 () Bool)

(assert (=> b!7899366 m!8274210))

(assert (=> b!7899366 m!8274210))

(declare-fun m!8274212 () Bool)

(assert (=> b!7899366 m!8274212))

(declare-fun m!8274214 () Bool)

(assert (=> b!7899366 m!8274214))

(declare-fun m!8274216 () Bool)

(assert (=> b!7899378 m!8274216))

(declare-fun m!8274218 () Bool)

(assert (=> b!7899378 m!8274218))

(declare-fun m!8274220 () Bool)

(assert (=> b!7899373 m!8274220))

(declare-fun m!8274222 () Bool)

(assert (=> b!7899373 m!8274222))

(declare-fun m!8274224 () Bool)

(assert (=> b!7899367 m!8274224))

(push 1)

(assert (not b!7899372))

(assert (not b!7899373))

(assert (not b!7899366))

(assert (not b!7899367))

(assert (not b!7899374))

(assert (not b_next!135403))

(assert (not b!7899375))

(assert (not b_next!135401))

(assert (not b!7899377))

(assert (not b!7899365))

(assert (not b!7899368))

(assert (not b!7899378))

(assert (not b!7899369))

(assert b_and!352513)

(assert b_and!352511)

(assert (not b!7899370))

(assert tp_is_empty!52907)

(check-sat)

(pop 1)

(push 1)

(assert b_and!352513)

(assert b_and!352511)

(assert (not b_next!135403))

(assert (not b_next!135401))

(check-sat)

(pop 1)


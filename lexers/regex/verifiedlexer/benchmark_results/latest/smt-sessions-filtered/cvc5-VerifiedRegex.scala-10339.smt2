; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536950 () Bool)

(assert start!536950)

(declare-fun b!5094077 () Bool)

(declare-fun b_free!133327 () Bool)

(declare-fun b_next!134117 () Bool)

(assert (=> b!5094077 (= b_free!133327 (not b_next!134117))))

(declare-fun tp!1420248 () Bool)

(declare-fun b_and!350211 () Bool)

(assert (=> b!5094077 (= tp!1420248 b_and!350211)))

(declare-fun b_free!133329 () Bool)

(declare-fun b_next!134119 () Bool)

(assert (=> b!5094077 (= b_free!133329 (not b_next!134119))))

(declare-fun tp!1420244 () Bool)

(declare-fun b_and!350213 () Bool)

(assert (=> b!5094077 (= tp!1420244 b_and!350213)))

(declare-fun b!5094072 () Bool)

(declare-fun e!3176929 () Bool)

(assert (=> b!5094072 (= e!3176929 true)))

(declare-datatypes ((List!58710 0))(
  ( (Nil!58586) (Cons!58586 (h!65034 (_ BitVec 16)) (t!371665 List!58710)) )
))
(declare-datatypes ((TokenValue!8811 0))(
  ( (FloatLiteralValue!17622 (text!62122 List!58710)) (TokenValueExt!8810 (__x!34911 Int)) (Broken!44055 (value!272450 List!58710)) (Object!8934) (End!8811) (Def!8811) (Underscore!8811) (Match!8811) (Else!8811) (Error!8811) (Case!8811) (If!8811) (Extends!8811) (Abstract!8811) (Class!8811) (Val!8811) (DelimiterValue!17622 (del!8871 List!58710)) (KeywordValue!8817 (value!272451 List!58710)) (CommentValue!17622 (value!272452 List!58710)) (WhitespaceValue!17622 (value!272453 List!58710)) (IndentationValue!8811 (value!272454 List!58710)) (String!66978) (Int32!8811) (Broken!44056 (value!272455 List!58710)) (Boolean!8812) (Unit!149627) (OperatorValue!8814 (op!8871 List!58710)) (IdentifierValue!17622 (value!272456 List!58710)) (IdentifierValue!17623 (value!272457 List!58710)) (WhitespaceValue!17623 (value!272458 List!58710)) (True!17622) (False!17622) (Broken!44057 (value!272459 List!58710)) (Broken!44058 (value!272460 List!58710)) (True!17623) (RightBrace!8811) (RightBracket!8811) (Colon!8811) (Null!8811) (Comma!8811) (LeftBracket!8811) (False!17623) (LeftBrace!8811) (ImaginaryLiteralValue!8811 (text!62123 List!58710)) (StringLiteralValue!26433 (value!272461 List!58710)) (EOFValue!8811 (value!272462 List!58710)) (IdentValue!8811 (value!272463 List!58710)) (DelimiterValue!17623 (value!272464 List!58710)) (DedentValue!8811 (value!272465 List!58710)) (NewLineValue!8811 (value!272466 List!58710)) (IntegerValue!26433 (value!272467 (_ BitVec 32)) (text!62124 List!58710)) (IntegerValue!26434 (value!272468 Int) (text!62125 List!58710)) (Times!8811) (Or!8811) (Equal!8811) (Minus!8811) (Broken!44059 (value!272469 List!58710)) (And!8811) (Div!8811) (LessEqual!8811) (Mod!8811) (Concat!22783) (Not!8811) (Plus!8811) (SpaceValue!8811 (value!272470 List!58710)) (IntegerValue!26435 (value!272471 Int) (text!62126 List!58710)) (StringLiteralValue!26434 (text!62127 List!58710)) (FloatLiteralValue!17623 (text!62128 List!58710)) (BytesLiteralValue!8811 (value!272472 List!58710)) (CommentValue!17623 (value!272473 List!58710)) (StringLiteralValue!26435 (value!272474 List!58710)) (ErrorTokenValue!8811 (msg!8872 List!58710)) )
))
(declare-datatypes ((C!28202 0))(
  ( (C!28203 (val!23753 Int)) )
))
(declare-datatypes ((Regex!13972 0))(
  ( (ElementMatch!13972 (c!875441 C!28202)) (Concat!22784 (regOne!28456 Regex!13972) (regTwo!28456 Regex!13972)) (EmptyExpr!13972) (Star!13972 (reg!14301 Regex!13972)) (EmptyLang!13972) (Union!13972 (regOne!28457 Regex!13972) (regTwo!28457 Regex!13972)) )
))
(declare-datatypes ((String!66979 0))(
  ( (String!66980 (value!272475 String)) )
))
(declare-datatypes ((List!58711 0))(
  ( (Nil!58587) (Cons!58587 (h!65035 C!28202) (t!371666 List!58711)) )
))
(declare-datatypes ((IArray!31399 0))(
  ( (IArray!31400 (innerList!15757 List!58711)) )
))
(declare-datatypes ((Conc!15669 0))(
  ( (Node!15669 (left!43000 Conc!15669) (right!43330 Conc!15669) (csize!31568 Int) (cheight!15880 Int)) (Leaf!26009 (xs!19051 IArray!31399) (csize!31569 Int)) (Empty!15669) )
))
(declare-datatypes ((BalanceConc!30456 0))(
  ( (BalanceConc!30457 (c!875442 Conc!15669)) )
))
(declare-datatypes ((TokenValueInjection!16930 0))(
  ( (TokenValueInjection!16931 (toValue!11520 Int) (toChars!11379 Int)) )
))
(declare-datatypes ((Rule!16794 0))(
  ( (Rule!16795 (regex!8497 Regex!13972) (tag!9361 String!66979) (isSeparator!8497 Bool) (transformation!8497 TokenValueInjection!16930)) )
))
(declare-datatypes ((Token!15434 0))(
  ( (Token!15435 (value!272476 TokenValue!8811) (rule!11767 Rule!16794) (size!39261 Int) (originalCharacters!8748 List!58711)) )
))
(declare-datatypes ((tuple2!63314 0))(
  ( (tuple2!63315 (_1!34960 Token!15434) (_2!34960 List!58711)) )
))
(declare-datatypes ((Option!14626 0))(
  ( (None!14625) (Some!14625 (v!50638 tuple2!63314)) )
))
(declare-fun lt!2092932 () Option!14626)

(declare-datatypes ((List!58712 0))(
  ( (Nil!58588) (Cons!58588 (h!65036 Rule!16794) (t!371667 List!58712)) )
))
(declare-fun rulesArg!145 () List!58712)

(declare-datatypes ((LexerInterface!8089 0))(
  ( (LexerInterfaceExt!8086 (__x!34912 Int)) (Lexer!8087) )
))
(declare-fun thiss!14775 () LexerInterface!8089)

(declare-fun input!1210 () List!58711)

(declare-fun maxPrefixZipper!796 (LexerInterface!8089 List!58712 List!58711) Option!14626)

(assert (=> b!5094072 (= lt!2092932 (maxPrefixZipper!796 thiss!14775 (t!371667 rulesArg!145) input!1210))))

(declare-fun lt!2092931 () Option!14626)

(declare-fun maxPrefixOneRuleZipper!313 (LexerInterface!8089 Rule!16794 List!58711) Option!14626)

(assert (=> b!5094072 (= lt!2092931 (maxPrefixOneRuleZipper!313 thiss!14775 (h!65036 rulesArg!145) input!1210))))

(declare-fun res!2167879 () Bool)

(declare-fun e!3176928 () Bool)

(assert (=> start!536950 (=> (not res!2167879) (not e!3176928))))

(assert (=> start!536950 (= res!2167879 (is-Lexer!8087 thiss!14775))))

(assert (=> start!536950 e!3176928))

(assert (=> start!536950 true))

(declare-fun e!3176932 () Bool)

(assert (=> start!536950 e!3176932))

(declare-fun e!3176927 () Bool)

(assert (=> start!536950 e!3176927))

(declare-fun b!5094073 () Bool)

(assert (=> b!5094073 (= e!3176928 (not e!3176929))))

(declare-fun res!2167876 () Bool)

(assert (=> b!5094073 (=> res!2167876 e!3176929)))

(assert (=> b!5094073 (= res!2167876 (or (and (is-Cons!58588 rulesArg!145) (is-Nil!58588 (t!371667 rulesArg!145))) (not (is-Cons!58588 rulesArg!145))))))

(declare-fun isPrefix!5393 (List!58711 List!58711) Bool)

(assert (=> b!5094073 (isPrefix!5393 input!1210 input!1210)))

(declare-datatypes ((Unit!149628 0))(
  ( (Unit!149629) )
))
(declare-fun lt!2092933 () Unit!149628)

(declare-fun lemmaIsPrefixRefl!3652 (List!58711 List!58711) Unit!149628)

(assert (=> b!5094073 (= lt!2092933 (lemmaIsPrefixRefl!3652 input!1210 input!1210))))

(declare-fun e!3176930 () Bool)

(declare-fun tp!1420245 () Bool)

(declare-fun e!3176933 () Bool)

(declare-fun b!5094074 () Bool)

(declare-fun inv!78085 (String!66979) Bool)

(declare-fun inv!78088 (TokenValueInjection!16930) Bool)

(assert (=> b!5094074 (= e!3176933 (and tp!1420245 (inv!78085 (tag!9361 (h!65036 rulesArg!145))) (inv!78088 (transformation!8497 (h!65036 rulesArg!145))) e!3176930))))

(declare-fun b!5094075 () Bool)

(declare-fun tp_is_empty!37209 () Bool)

(declare-fun tp!1420247 () Bool)

(assert (=> b!5094075 (= e!3176927 (and tp_is_empty!37209 tp!1420247))))

(declare-fun b!5094076 () Bool)

(declare-fun tp!1420246 () Bool)

(assert (=> b!5094076 (= e!3176932 (and e!3176933 tp!1420246))))

(assert (=> b!5094077 (= e!3176930 (and tp!1420248 tp!1420244))))

(declare-fun b!5094078 () Bool)

(declare-fun res!2167877 () Bool)

(assert (=> b!5094078 (=> (not res!2167877) (not e!3176928))))

(declare-fun isEmpty!31710 (List!58712) Bool)

(assert (=> b!5094078 (= res!2167877 (not (isEmpty!31710 rulesArg!145)))))

(declare-fun b!5094079 () Bool)

(declare-fun res!2167878 () Bool)

(assert (=> b!5094079 (=> (not res!2167878) (not e!3176928))))

(declare-fun rulesValidInductive!3322 (LexerInterface!8089 List!58712) Bool)

(assert (=> b!5094079 (= res!2167878 (rulesValidInductive!3322 thiss!14775 rulesArg!145))))

(assert (= (and start!536950 res!2167879) b!5094079))

(assert (= (and b!5094079 res!2167878) b!5094078))

(assert (= (and b!5094078 res!2167877) b!5094073))

(assert (= (and b!5094073 (not res!2167876)) b!5094072))

(assert (= b!5094074 b!5094077))

(assert (= b!5094076 b!5094074))

(assert (= (and start!536950 (is-Cons!58588 rulesArg!145)) b!5094076))

(assert (= (and start!536950 (is-Cons!58587 input!1210)) b!5094075))

(declare-fun m!6151976 () Bool)

(assert (=> b!5094074 m!6151976))

(declare-fun m!6151978 () Bool)

(assert (=> b!5094074 m!6151978))

(declare-fun m!6151980 () Bool)

(assert (=> b!5094073 m!6151980))

(declare-fun m!6151982 () Bool)

(assert (=> b!5094073 m!6151982))

(declare-fun m!6151984 () Bool)

(assert (=> b!5094072 m!6151984))

(declare-fun m!6151986 () Bool)

(assert (=> b!5094072 m!6151986))

(declare-fun m!6151988 () Bool)

(assert (=> b!5094078 m!6151988))

(declare-fun m!6151990 () Bool)

(assert (=> b!5094079 m!6151990))

(push 1)

(assert (not b!5094074))

(assert (not b_next!134117))

(assert (not b!5094076))

(assert (not b!5094079))

(assert (not b!5094075))

(assert (not b!5094078))

(assert tp_is_empty!37209)

(assert (not b_next!134119))

(assert b_and!350211)

(assert (not b!5094073))

(assert (not b!5094072))

(assert b_and!350213)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350213)

(assert b_and!350211)

(assert (not b_next!134117))

(assert (not b_next!134119))

(check-sat)

(pop 1)


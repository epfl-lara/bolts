; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146816 () Bool)

(assert start!146816)

(declare-fun b!1573481 () Bool)

(declare-fun b_free!42191 () Bool)

(declare-fun b_next!42895 () Bool)

(assert (=> b!1573481 (= b_free!42191 (not b_next!42895))))

(declare-fun tp!462936 () Bool)

(declare-fun b_and!109997 () Bool)

(assert (=> b!1573481 (= tp!462936 b_and!109997)))

(declare-fun b_free!42193 () Bool)

(declare-fun b_next!42897 () Bool)

(assert (=> b!1573481 (= b_free!42193 (not b_next!42897))))

(declare-fun tp!462939 () Bool)

(declare-fun b_and!109999 () Bool)

(assert (=> b!1573481 (= tp!462939 b_and!109999)))

(declare-fun b!1573478 () Bool)

(declare-fun b_free!42195 () Bool)

(declare-fun b_next!42899 () Bool)

(assert (=> b!1573478 (= b_free!42195 (not b_next!42899))))

(declare-fun tp!462940 () Bool)

(declare-fun b_and!110001 () Bool)

(assert (=> b!1573478 (= tp!462940 b_and!110001)))

(declare-fun b_free!42197 () Bool)

(declare-fun b_next!42901 () Bool)

(assert (=> b!1573478 (= b_free!42197 (not b_next!42901))))

(declare-fun tp!462941 () Bool)

(declare-fun b_and!110003 () Bool)

(assert (=> b!1573478 (= tp!462941 b_and!110003)))

(declare-fun e!1010445 () Bool)

(declare-fun b!1573475 () Bool)

(declare-datatypes ((List!17243 0))(
  ( (Nil!17173) (Cons!17173 (h!22574 (_ BitVec 16)) (t!143146 List!17243)) )
))
(declare-datatypes ((TokenValue!3106 0))(
  ( (FloatLiteralValue!6212 (text!22187 List!17243)) (TokenValueExt!3105 (__x!11514 Int)) (Broken!15530 (value!95604 List!17243)) (Object!3175) (End!3106) (Def!3106) (Underscore!3106) (Match!3106) (Else!3106) (Error!3106) (Case!3106) (If!3106) (Extends!3106) (Abstract!3106) (Class!3106) (Val!3106) (DelimiterValue!6212 (del!3166 List!17243)) (KeywordValue!3112 (value!95605 List!17243)) (CommentValue!6212 (value!95606 List!17243)) (WhitespaceValue!6212 (value!95607 List!17243)) (IndentationValue!3106 (value!95608 List!17243)) (String!19863) (Int32!3106) (Broken!15531 (value!95609 List!17243)) (Boolean!3107) (Unit!26555) (OperatorValue!3109 (op!3166 List!17243)) (IdentifierValue!6212 (value!95610 List!17243)) (IdentifierValue!6213 (value!95611 List!17243)) (WhitespaceValue!6213 (value!95612 List!17243)) (True!6212) (False!6212) (Broken!15532 (value!95613 List!17243)) (Broken!15533 (value!95614 List!17243)) (True!6213) (RightBrace!3106) (RightBracket!3106) (Colon!3106) (Null!3106) (Comma!3106) (LeftBracket!3106) (False!6213) (LeftBrace!3106) (ImaginaryLiteralValue!3106 (text!22188 List!17243)) (StringLiteralValue!9318 (value!95615 List!17243)) (EOFValue!3106 (value!95616 List!17243)) (IdentValue!3106 (value!95617 List!17243)) (DelimiterValue!6213 (value!95618 List!17243)) (DedentValue!3106 (value!95619 List!17243)) (NewLineValue!3106 (value!95620 List!17243)) (IntegerValue!9318 (value!95621 (_ BitVec 32)) (text!22189 List!17243)) (IntegerValue!9319 (value!95622 Int) (text!22190 List!17243)) (Times!3106) (Or!3106) (Equal!3106) (Minus!3106) (Broken!15534 (value!95623 List!17243)) (And!3106) (Div!3106) (LessEqual!3106) (Mod!3106) (Concat!7450) (Not!3106) (Plus!3106) (SpaceValue!3106 (value!95624 List!17243)) (IntegerValue!9320 (value!95625 Int) (text!22191 List!17243)) (StringLiteralValue!9319 (text!22192 List!17243)) (FloatLiteralValue!6213 (text!22193 List!17243)) (BytesLiteralValue!3106 (value!95626 List!17243)) (CommentValue!6213 (value!95627 List!17243)) (StringLiteralValue!9320 (value!95628 List!17243)) (ErrorTokenValue!3106 (msg!3167 List!17243)) )
))
(declare-datatypes ((C!8862 0))(
  ( (C!8863 (val!5027 Int)) )
))
(declare-datatypes ((List!17244 0))(
  ( (Nil!17174) (Cons!17174 (h!22575 C!8862) (t!143147 List!17244)) )
))
(declare-datatypes ((IArray!11365 0))(
  ( (IArray!11366 (innerList!5740 List!17244)) )
))
(declare-datatypes ((Conc!5680 0))(
  ( (Node!5680 (left!13894 Conc!5680) (right!14224 Conc!5680) (csize!11590 Int) (cheight!5891 Int)) (Leaf!8409 (xs!8484 IArray!11365) (csize!11591 Int)) (Empty!5680) )
))
(declare-datatypes ((BalanceConc!11304 0))(
  ( (BalanceConc!11305 (c!255187 Conc!5680)) )
))
(declare-datatypes ((Regex!4344 0))(
  ( (ElementMatch!4344 (c!255188 C!8862)) (Concat!7451 (regOne!9200 Regex!4344) (regTwo!9200 Regex!4344)) (EmptyExpr!4344) (Star!4344 (reg!4673 Regex!4344)) (EmptyLang!4344) (Union!4344 (regOne!9201 Regex!4344) (regTwo!9201 Regex!4344)) )
))
(declare-datatypes ((String!19864 0))(
  ( (String!19865 (value!95629 String)) )
))
(declare-datatypes ((TokenValueInjection!5872 0))(
  ( (TokenValueInjection!5873 (toValue!4411 Int) (toChars!4270 Int)) )
))
(declare-datatypes ((Rule!5832 0))(
  ( (Rule!5833 (regex!3016 Regex!4344) (tag!3282 String!19864) (isSeparator!3016 Bool) (transformation!3016 TokenValueInjection!5872)) )
))
(declare-datatypes ((Token!5598 0))(
  ( (Token!5599 (value!95630 TokenValue!3106) (rule!4808 Rule!5832) (size!13869 Int) (originalCharacters!3830 List!17244)) )
))
(declare-datatypes ((List!17245 0))(
  ( (Nil!17175) (Cons!17175 (h!22576 Token!5598) (t!143148 List!17245)) )
))
(declare-fun tokens!457 () List!17245)

(declare-fun e!1010451 () Bool)

(declare-fun tp!462935 () Bool)

(declare-fun inv!22585 (String!19864) Bool)

(declare-fun inv!22588 (TokenValueInjection!5872) Bool)

(assert (=> b!1573475 (= e!1010445 (and tp!462935 (inv!22585 (tag!3282 (rule!4808 (h!22576 tokens!457)))) (inv!22588 (transformation!3016 (rule!4808 (h!22576 tokens!457)))) e!1010451))))

(declare-fun b!1573476 () Bool)

(declare-fun res!701270 () Bool)

(declare-fun e!1010447 () Bool)

(assert (=> b!1573476 (=> (not res!701270) (not e!1010447))))

(declare-datatypes ((List!17246 0))(
  ( (Nil!17176) (Cons!17176 (h!22577 Rule!5832) (t!143149 List!17246)) )
))
(declare-fun rules!1846 () List!17246)

(declare-datatypes ((LexerInterface!2645 0))(
  ( (LexerInterfaceExt!2642 (__x!11515 Int)) (Lexer!2643) )
))
(declare-fun thiss!17113 () LexerInterface!2645)

(declare-fun rulesProduceEachTokenIndividuallyList!847 (LexerInterface!2645 List!17246 List!17245) Bool)

(assert (=> b!1573476 (= res!701270 (rulesProduceEachTokenIndividuallyList!847 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1573477 () Bool)

(declare-fun res!701269 () Bool)

(assert (=> b!1573477 (=> (not res!701269) (not e!1010447))))

(declare-fun rulesInvariant!2314 (LexerInterface!2645 List!17246) Bool)

(assert (=> b!1573477 (= res!701269 (rulesInvariant!2314 thiss!17113 rules!1846))))

(declare-fun res!701266 () Bool)

(assert (=> start!146816 (=> (not res!701266) (not e!1010447))))

(assert (=> start!146816 (= res!701266 (is-Lexer!2643 thiss!17113))))

(assert (=> start!146816 e!1010447))

(assert (=> start!146816 true))

(declare-fun e!1010443 () Bool)

(assert (=> start!146816 e!1010443))

(declare-fun e!1010452 () Bool)

(assert (=> start!146816 e!1010452))

(declare-fun e!1010446 () Bool)

(assert (=> b!1573478 (= e!1010446 (and tp!462940 tp!462941))))

(declare-fun tp!462938 () Bool)

(declare-fun b!1573479 () Bool)

(declare-fun e!1010448 () Bool)

(assert (=> b!1573479 (= e!1010448 (and tp!462938 (inv!22585 (tag!3282 (h!22577 rules!1846))) (inv!22588 (transformation!3016 (h!22577 rules!1846))) e!1010446))))

(declare-fun b!1573480 () Bool)

(declare-fun res!701268 () Bool)

(assert (=> b!1573480 (=> (not res!701268) (not e!1010447))))

(assert (=> b!1573480 (= res!701268 (and (not (is-Nil!17175 tokens!457)) (not (is-Nil!17175 (t!143148 tokens!457)))))))

(assert (=> b!1573481 (= e!1010451 (and tp!462936 tp!462939))))

(declare-fun b!1573482 () Bool)

(declare-fun res!701267 () Bool)

(assert (=> b!1573482 (=> (not res!701267) (not e!1010447))))

(declare-fun isEmpty!10266 (List!17246) Bool)

(assert (=> b!1573482 (= res!701267 (not (isEmpty!10266 rules!1846)))))

(declare-fun tp!462943 () Bool)

(declare-fun b!1573483 () Bool)

(declare-fun e!1010450 () Bool)

(declare-fun inv!22589 (Token!5598) Bool)

(assert (=> b!1573483 (= e!1010452 (and (inv!22589 (h!22576 tokens!457)) e!1010450 tp!462943))))

(declare-fun b!1573484 () Bool)

(declare-fun tp!462942 () Bool)

(assert (=> b!1573484 (= e!1010443 (and e!1010448 tp!462942))))

(declare-fun b!1573485 () Bool)

(declare-fun tp!462937 () Bool)

(declare-fun inv!21 (TokenValue!3106) Bool)

(assert (=> b!1573485 (= e!1010450 (and (inv!21 (value!95630 (h!22576 tokens!457))) e!1010445 tp!462937))))

(declare-fun b!1573486 () Bool)

(assert (=> b!1573486 (= e!1010447 false)))

(declare-fun lt!546929 () BalanceConc!11304)

(declare-datatypes ((IArray!11367 0))(
  ( (IArray!11368 (innerList!5741 List!17245)) )
))
(declare-datatypes ((Conc!5681 0))(
  ( (Node!5681 (left!13895 Conc!5681) (right!14225 Conc!5681) (csize!11592 Int) (cheight!5892 Int)) (Leaf!8410 (xs!8485 IArray!11367) (csize!11593 Int)) (Empty!5681) )
))
(declare-datatypes ((BalanceConc!11306 0))(
  ( (BalanceConc!11307 (c!255189 Conc!5681)) )
))
(declare-fun print!1176 (LexerInterface!2645 BalanceConc!11306) BalanceConc!11304)

(declare-fun seqFromList!1813 (List!17245) BalanceConc!11306)

(assert (=> b!1573486 (= lt!546929 (print!1176 thiss!17113 (seqFromList!1813 (t!143148 tokens!457))))))

(declare-fun lt!546930 () BalanceConc!11304)

(assert (=> b!1573486 (= lt!546930 (print!1176 thiss!17113 (seqFromList!1813 tokens!457)))))

(declare-fun b!1573487 () Bool)

(declare-fun res!701265 () Bool)

(assert (=> b!1573487 (=> (not res!701265) (not e!1010447))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!338 (LexerInterface!2645 List!17245 List!17246) Bool)

(assert (=> b!1573487 (= res!701265 (tokensListTwoByTwoPredicateSeparableList!338 thiss!17113 tokens!457 rules!1846))))

(assert (= (and start!146816 res!701266) b!1573482))

(assert (= (and b!1573482 res!701267) b!1573477))

(assert (= (and b!1573477 res!701269) b!1573476))

(assert (= (and b!1573476 res!701270) b!1573487))

(assert (= (and b!1573487 res!701265) b!1573480))

(assert (= (and b!1573480 res!701268) b!1573486))

(assert (= b!1573479 b!1573478))

(assert (= b!1573484 b!1573479))

(assert (= (and start!146816 (is-Cons!17176 rules!1846)) b!1573484))

(assert (= b!1573475 b!1573481))

(assert (= b!1573485 b!1573475))

(assert (= b!1573483 b!1573485))

(assert (= (and start!146816 (is-Cons!17175 tokens!457)) b!1573483))

(declare-fun m!1852413 () Bool)

(assert (=> b!1573479 m!1852413))

(declare-fun m!1852415 () Bool)

(assert (=> b!1573479 m!1852415))

(declare-fun m!1852417 () Bool)

(assert (=> b!1573483 m!1852417))

(declare-fun m!1852419 () Bool)

(assert (=> b!1573482 m!1852419))

(declare-fun m!1852421 () Bool)

(assert (=> b!1573486 m!1852421))

(assert (=> b!1573486 m!1852421))

(declare-fun m!1852423 () Bool)

(assert (=> b!1573486 m!1852423))

(declare-fun m!1852425 () Bool)

(assert (=> b!1573486 m!1852425))

(assert (=> b!1573486 m!1852425))

(declare-fun m!1852427 () Bool)

(assert (=> b!1573486 m!1852427))

(declare-fun m!1852429 () Bool)

(assert (=> b!1573477 m!1852429))

(declare-fun m!1852431 () Bool)

(assert (=> b!1573487 m!1852431))

(declare-fun m!1852433 () Bool)

(assert (=> b!1573485 m!1852433))

(declare-fun m!1852435 () Bool)

(assert (=> b!1573476 m!1852435))

(declare-fun m!1852437 () Bool)

(assert (=> b!1573475 m!1852437))

(declare-fun m!1852439 () Bool)

(assert (=> b!1573475 m!1852439))

(push 1)

(assert (not b!1573476))

(assert (not b_next!42901))

(assert b_and!109999)

(assert b_and!110001)

(assert (not b_next!42895))

(assert (not b!1573485))

(assert (not b!1573483))

(assert (not b!1573477))

(assert (not b!1573475))

(assert b_and!110003)

(assert (not b_next!42899))

(assert (not b!1573479))

(assert (not b!1573482))

(assert (not b!1573484))

(assert (not b_next!42897))

(assert (not b!1573487))

(assert b_and!109997)

(assert (not b!1573486))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!42895))

(assert (not b_next!42901))

(assert b_and!110003)

(assert (not b_next!42899))

(assert b_and!109999)

(assert (not b_next!42897))

(assert b_and!109997)

(assert b_and!110001)

(check-sat)

(pop 1)


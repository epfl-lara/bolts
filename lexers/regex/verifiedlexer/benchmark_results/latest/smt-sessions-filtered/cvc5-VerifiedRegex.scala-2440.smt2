; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!128462 () Bool)

(assert start!128462)

(declare-fun b!1408100 () Bool)

(declare-fun e!898891 () Bool)

(assert (=> b!1408100 (= e!898891 false)))

(declare-fun lt!470051 () Int)

(declare-datatypes ((List!14417 0))(
  ( (Nil!14351) (Cons!14351 (h!19752 (_ BitVec 16)) (t!123152 List!14417)) )
))
(declare-datatypes ((TokenValue!2578 0))(
  ( (FloatLiteralValue!5156 (text!18491 List!14417)) (TokenValueExt!2577 (__x!8984 Int)) (Broken!12890 (value!80516 List!14417)) (Object!2643) (End!2578) (Def!2578) (Underscore!2578) (Match!2578) (Else!2578) (Error!2578) (Case!2578) (If!2578) (Extends!2578) (Abstract!2578) (Class!2578) (Val!2578) (DelimiterValue!5156 (del!2638 List!14417)) (KeywordValue!2584 (value!80517 List!14417)) (CommentValue!5156 (value!80518 List!14417)) (WhitespaceValue!5156 (value!80519 List!14417)) (IndentationValue!2578 (value!80520 List!14417)) (String!17127) (Int32!2578) (Broken!12891 (value!80521 List!14417)) (Boolean!2579) (Unit!20727) (OperatorValue!2581 (op!2638 List!14417)) (IdentifierValue!5156 (value!80522 List!14417)) (IdentifierValue!5157 (value!80523 List!14417)) (WhitespaceValue!5157 (value!80524 List!14417)) (True!5156) (False!5156) (Broken!12892 (value!80525 List!14417)) (Broken!12893 (value!80526 List!14417)) (True!5157) (RightBrace!2578) (RightBracket!2578) (Colon!2578) (Null!2578) (Comma!2578) (LeftBracket!2578) (False!5157) (LeftBrace!2578) (ImaginaryLiteralValue!2578 (text!18492 List!14417)) (StringLiteralValue!7734 (value!80527 List!14417)) (EOFValue!2578 (value!80528 List!14417)) (IdentValue!2578 (value!80529 List!14417)) (DelimiterValue!5157 (value!80530 List!14417)) (DedentValue!2578 (value!80531 List!14417)) (NewLineValue!2578 (value!80532 List!14417)) (IntegerValue!7734 (value!80533 (_ BitVec 32)) (text!18493 List!14417)) (IntegerValue!7735 (value!80534 Int) (text!18494 List!14417)) (Times!2578) (Or!2578) (Equal!2578) (Minus!2578) (Broken!12894 (value!80535 List!14417)) (And!2578) (Div!2578) (LessEqual!2578) (Mod!2578) (Concat!6380) (Not!2578) (Plus!2578) (SpaceValue!2578 (value!80536 List!14417)) (IntegerValue!7736 (value!80537 Int) (text!18495 List!14417)) (StringLiteralValue!7735 (text!18496 List!14417)) (FloatLiteralValue!5157 (text!18497 List!14417)) (BytesLiteralValue!2578 (value!80538 List!14417)) (CommentValue!5157 (value!80539 List!14417)) (StringLiteralValue!7736 (value!80540 List!14417)) (ErrorTokenValue!2578 (msg!2639 List!14417)) )
))
(declare-datatypes ((Regex!3802 0))(
  ( (ElementMatch!3802 (c!231469 (_ BitVec 16))) (Concat!6381 (regOne!8116 Regex!3802) (regTwo!8116 Regex!3802)) (EmptyExpr!3802) (Star!3802 (reg!4131 Regex!3802)) (EmptyLang!3802) (Union!3802 (regOne!8117 Regex!3802) (regTwo!8117 Regex!3802)) )
))
(declare-datatypes ((String!17128 0))(
  ( (String!17129 (value!80541 String)) )
))
(declare-datatypes ((IArray!9481 0))(
  ( (IArray!9482 (innerList!4798 List!14417)) )
))
(declare-datatypes ((Conc!4738 0))(
  ( (Node!4738 (left!12252 Conc!4738) (right!12582 Conc!4738) (csize!9706 Int) (cheight!4949 Int)) (Leaf!7179 (xs!7465 IArray!9481) (csize!9707 Int)) (Empty!4738) )
))
(declare-datatypes ((BalanceConc!9416 0))(
  ( (BalanceConc!9417 (c!231470 Conc!4738)) )
))
(declare-datatypes ((TokenValueInjection!4816 0))(
  ( (TokenValueInjection!4817 (toValue!3779 Int) (toChars!3638 Int)) )
))
(declare-datatypes ((Rule!4776 0))(
  ( (Rule!4777 (regex!2488 Regex!3802) (tag!2750 String!17128) (isSeparator!2488 Bool) (transformation!2488 TokenValueInjection!4816)) )
))
(declare-datatypes ((Token!4638 0))(
  ( (Token!4639 (value!80542 TokenValue!2578) (rule!4251 Rule!4776) (size!11805 Int) (originalCharacters!3350 List!14417)) )
))
(declare-datatypes ((List!14418 0))(
  ( (Nil!14352) (Cons!14352 (h!19753 Token!4638) (t!123153 List!14418)) )
))
(declare-datatypes ((IArray!9483 0))(
  ( (IArray!9484 (innerList!4799 List!14418)) )
))
(declare-datatypes ((Conc!4739 0))(
  ( (Node!4739 (left!12253 Conc!4739) (right!12583 Conc!4739) (csize!9708 Int) (cheight!4950 Int)) (Leaf!7180 (xs!7466 IArray!9483) (csize!9709 Int)) (Empty!4739) )
))
(declare-datatypes ((List!14419 0))(
  ( (Nil!14353) (Cons!14353 (h!19754 Rule!4776) (t!123154 List!14419)) )
))
(declare-datatypes ((BalanceConc!9418 0))(
  ( (BalanceConc!9419 (c!231471 Conc!4739)) )
))
(declare-datatypes ((PrintableTokens!758 0))(
  ( (PrintableTokens!759 (rules!10951 List!14419) (tokens!1705 BalanceConc!9418)) )
))
(declare-datatypes ((List!14420 0))(
  ( (Nil!14354) (Cons!14354 (h!19755 PrintableTokens!758) (t!123155 List!14420)) )
))
(declare-datatypes ((IArray!9485 0))(
  ( (IArray!9486 (innerList!4800 List!14420)) )
))
(declare-datatypes ((Conc!4740 0))(
  ( (Node!4740 (left!12254 Conc!4740) (right!12584 Conc!4740) (csize!9710 Int) (cheight!4951 Int)) (Leaf!7181 (xs!7467 IArray!9485) (csize!9711 Int)) (Empty!4740) )
))
(declare-datatypes ((BalanceConc!9420 0))(
  ( (BalanceConc!9421 (c!231472 Conc!4740)) )
))
(declare-fun objs!24 () BalanceConc!9420)

(declare-fun size!11806 (BalanceConc!9420) Int)

(assert (=> b!1408100 (= lt!470051 (size!11806 objs!24))))

(declare-fun b!1408102 () Bool)

(declare-fun e!898894 () Bool)

(declare-fun tp!399838 () Bool)

(declare-fun inv!18661 (Conc!4740) Bool)

(assert (=> b!1408102 (= e!898894 (and (inv!18661 (c!231472 objs!24)) tp!399838))))

(declare-fun b!1408103 () Bool)

(declare-fun res!637664 () Bool)

(assert (=> b!1408103 (=> (not res!637664) (not e!898891))))

(declare-fun isEmpty!8743 (BalanceConc!9420) Bool)

(assert (=> b!1408103 (= res!637664 (not (isEmpty!8743 objs!24)))))

(declare-fun b!1408104 () Bool)

(declare-fun e!898892 () Bool)

(declare-fun acc!229 () PrintableTokens!758)

(declare-fun tp!399841 () Bool)

(declare-fun inv!18662 (Conc!4739) Bool)

(assert (=> b!1408104 (= e!898892 (and (inv!18662 (c!231471 (tokens!1705 acc!229))) tp!399841))))

(declare-fun b!1408105 () Bool)

(declare-fun res!637666 () Bool)

(assert (=> b!1408105 (=> (not res!637666) (not e!898891))))

(declare-fun sep!3 () PrintableTokens!758)

(declare-fun usesJsonRules!0 (PrintableTokens!758) Bool)

(assert (=> b!1408105 (= res!637666 (usesJsonRules!0 sep!3))))

(declare-fun res!637665 () Bool)

(assert (=> start!128462 (=> (not res!637665) (not e!898891))))

(declare-fun lambda!62272 () Int)

(declare-fun forall!3476 (BalanceConc!9420 Int) Bool)

(assert (=> start!128462 (= res!637665 (forall!3476 objs!24 lambda!62272))))

(assert (=> start!128462 e!898891))

(declare-fun inv!18663 (BalanceConc!9420) Bool)

(assert (=> start!128462 (and (inv!18663 objs!24) e!898894)))

(declare-fun e!898889 () Bool)

(declare-fun inv!18664 (PrintableTokens!758) Bool)

(assert (=> start!128462 (and (inv!18664 acc!229) e!898889)))

(declare-fun e!898893 () Bool)

(assert (=> start!128462 (and (inv!18664 sep!3) e!898893)))

(declare-fun b!1408101 () Bool)

(declare-fun e!898890 () Bool)

(declare-fun tp!399839 () Bool)

(assert (=> b!1408101 (= e!898890 (and (inv!18662 (c!231471 (tokens!1705 sep!3))) tp!399839))))

(declare-fun b!1408106 () Bool)

(declare-fun tp!399837 () Bool)

(declare-fun inv!18665 (BalanceConc!9418) Bool)

(assert (=> b!1408106 (= e!898889 (and tp!399837 (inv!18665 (tokens!1705 acc!229)) e!898892))))

(declare-fun b!1408107 () Bool)

(declare-fun res!637667 () Bool)

(assert (=> b!1408107 (=> (not res!637667) (not e!898891))))

(assert (=> b!1408107 (= res!637667 (usesJsonRules!0 acc!229))))

(declare-fun tp!399840 () Bool)

(declare-fun b!1408108 () Bool)

(assert (=> b!1408108 (= e!898893 (and tp!399840 (inv!18665 (tokens!1705 sep!3)) e!898890))))

(assert (= (and start!128462 res!637665) b!1408107))

(assert (= (and b!1408107 res!637667) b!1408105))

(assert (= (and b!1408105 res!637666) b!1408103))

(assert (= (and b!1408103 res!637664) b!1408100))

(assert (= start!128462 b!1408102))

(assert (= b!1408106 b!1408104))

(assert (= start!128462 b!1408106))

(assert (= b!1408108 b!1408101))

(assert (= start!128462 b!1408108))

(declare-fun m!1585851 () Bool)

(assert (=> b!1408100 m!1585851))

(declare-fun m!1585853 () Bool)

(assert (=> b!1408104 m!1585853))

(declare-fun m!1585855 () Bool)

(assert (=> start!128462 m!1585855))

(declare-fun m!1585857 () Bool)

(assert (=> start!128462 m!1585857))

(declare-fun m!1585859 () Bool)

(assert (=> start!128462 m!1585859))

(declare-fun m!1585861 () Bool)

(assert (=> start!128462 m!1585861))

(declare-fun m!1585863 () Bool)

(assert (=> b!1408103 m!1585863))

(declare-fun m!1585865 () Bool)

(assert (=> b!1408101 m!1585865))

(declare-fun m!1585867 () Bool)

(assert (=> b!1408107 m!1585867))

(declare-fun m!1585869 () Bool)

(assert (=> b!1408106 m!1585869))

(declare-fun m!1585871 () Bool)

(assert (=> b!1408102 m!1585871))

(declare-fun m!1585873 () Bool)

(assert (=> b!1408105 m!1585873))

(declare-fun m!1585875 () Bool)

(assert (=> b!1408108 m!1585875))

(push 1)

(assert (not b!1408105))

(assert (not b!1408107))

(assert (not b!1408102))

(assert (not b!1408101))

(assert (not b!1408100))

(assert (not start!128462))

(assert (not b!1408103))

(assert (not b!1408108))

(assert (not b!1408106))

(assert (not b!1408104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


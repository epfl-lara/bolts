; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!59102 () Bool)

(assert start!59102)

(declare-fun res!268421 () Bool)

(declare-fun e!373847 () Bool)

(assert (=> start!59102 (=> (not res!268421) (not e!373847))))

(declare-datatypes ((LexerInterface!1134 0))(
  ( (LexerInterfaceExt!1131 (__x!4442 Int)) (Lexer!1132) )
))
(declare-fun thiss!25598 () LexerInterface!1134)

(assert (=> start!59102 (= res!268421 (is-Lexer!1132 thiss!25598))))

(assert (=> start!59102 e!373847))

(assert (=> start!59102 true))

(declare-fun e!373848 () Bool)

(assert (=> start!59102 e!373848))

(declare-fun e!373846 () Bool)

(assert (=> start!59102 e!373846))

(declare-fun b!616560 () Bool)

(assert (=> b!616560 (= e!373847 false)))

(declare-fun lt!264419 () Bool)

(declare-datatypes ((C!4086 0))(
  ( (C!4087 (val!2269 Int)) )
))
(declare-datatypes ((List!6204 0))(
  ( (Nil!6194) (Cons!6194 (h!11595 C!4086) (t!81443 List!6204)) )
))
(declare-fun p!2908 () List!6204)

(declare-fun input!3215 () List!6204)

(declare-fun isPrefix!876 (List!6204 List!6204) Bool)

(assert (=> b!616560 (= lt!264419 (isPrefix!876 p!2908 input!3215))))

(declare-fun b!616561 () Bool)

(declare-fun tp_is_empty!3519 () Bool)

(declare-fun tp!190533 () Bool)

(assert (=> b!616561 (= e!373848 (and tp_is_empty!3519 tp!190533))))

(declare-fun b!616562 () Bool)

(declare-fun tp!190534 () Bool)

(assert (=> b!616562 (= e!373846 (and tp_is_empty!3519 tp!190534))))

(assert (= (and start!59102 res!268421) b!616560))

(assert (= (and start!59102 (is-Cons!6194 p!2908)) b!616561))

(assert (= (and start!59102 (is-Cons!6194 input!3215)) b!616562))

(declare-fun m!885221 () Bool)

(assert (=> b!616560 m!885221))

(push 1)

(assert (not b!616560))

(assert (not b!616562))

(assert (not b!616561))

(assert tp_is_empty!3519)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


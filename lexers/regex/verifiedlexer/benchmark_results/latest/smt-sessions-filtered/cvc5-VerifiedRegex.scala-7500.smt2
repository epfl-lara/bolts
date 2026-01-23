; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396540 () Bool)

(assert start!396540)

(declare-fun b!4161419 () Bool)

(declare-fun e!2583125 () Bool)

(declare-fun tp_is_empty!21803 () Bool)

(declare-fun tp!1270143 () Bool)

(assert (=> b!4161419 (= e!2583125 (and tp_is_empty!21803 tp!1270143))))

(declare-fun b!4161420 () Bool)

(declare-fun e!2583127 () Bool)

(declare-fun tp!1270141 () Bool)

(assert (=> b!4161420 (= e!2583127 (and tp_is_empty!21803 tp!1270141))))

(declare-fun b!4161421 () Bool)

(declare-fun e!2583126 () Bool)

(assert (=> b!4161421 (= e!2583126 false)))

(declare-fun lt!1482925 () Bool)

(declare-datatypes ((C!25030 0))(
  ( (C!25031 (val!14677 Int)) )
))
(declare-datatypes ((List!45622 0))(
  ( (Nil!45498) (Cons!45498 (h!50918 C!25030) (t!343653 List!45622)) )
))
(declare-fun pBis!100 () List!45622)

(declare-fun input!3316 () List!45622)

(declare-fun isPrefix!4372 (List!45622 List!45622) Bool)

(assert (=> b!4161421 (= lt!1482925 (isPrefix!4372 pBis!100 input!3316))))

(declare-fun b!4161422 () Bool)

(declare-fun e!2583128 () Bool)

(declare-fun tp!1270142 () Bool)

(assert (=> b!4161422 (= e!2583128 (and tp_is_empty!21803 tp!1270142))))

(declare-fun res!1704692 () Bool)

(assert (=> start!396540 (=> (not res!1704692) (not e!2583126))))

(declare-datatypes ((LexerInterface!7108 0))(
  ( (LexerInterfaceExt!7105 (__x!27713 Int)) (Lexer!7106) )
))
(declare-fun thiss!25889 () LexerInterface!7108)

(assert (=> start!396540 (= res!1704692 (is-Lexer!7106 thiss!25889))))

(assert (=> start!396540 e!2583126))

(assert (=> start!396540 true))

(assert (=> start!396540 e!2583128))

(assert (=> start!396540 e!2583127))

(assert (=> start!396540 e!2583125))

(declare-fun b!4161423 () Bool)

(declare-fun res!1704691 () Bool)

(assert (=> b!4161423 (=> (not res!1704691) (not e!2583126))))

(declare-fun p!2942 () List!45622)

(assert (=> b!4161423 (= res!1704691 (isPrefix!4372 p!2942 input!3316))))

(assert (= (and start!396540 res!1704692) b!4161423))

(assert (= (and b!4161423 res!1704691) b!4161421))

(assert (= (and start!396540 (is-Cons!45498 p!2942)) b!4161422))

(assert (= (and start!396540 (is-Cons!45498 input!3316)) b!4161420))

(assert (= (and start!396540 (is-Cons!45498 pBis!100)) b!4161419))

(declare-fun m!4754387 () Bool)

(assert (=> b!4161421 m!4754387))

(declare-fun m!4754389 () Bool)

(assert (=> b!4161423 m!4754389))

(push 1)

(assert (not b!4161419))

(assert tp_is_empty!21803)

(assert (not b!4161422))

(assert (not b!4161420))

(assert (not b!4161423))

(assert (not b!4161421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


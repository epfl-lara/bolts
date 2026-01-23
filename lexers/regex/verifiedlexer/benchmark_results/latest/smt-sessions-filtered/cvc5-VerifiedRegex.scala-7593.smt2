; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!401184 () Bool)

(assert start!401184)

(declare-fun b!4199567 () Bool)

(declare-fun e!2606815 () Bool)

(declare-fun tp_is_empty!22175 () Bool)

(declare-fun tp!1282774 () Bool)

(assert (=> b!4199567 (= e!2606815 (and tp_is_empty!22175 tp!1282774))))

(declare-fun res!1724652 () Bool)

(declare-fun e!2606818 () Bool)

(assert (=> start!401184 (=> (not res!1724652) (not e!2606818))))

(declare-datatypes ((LexerInterface!7294 0))(
  ( (LexerInterfaceExt!7291 (__x!28083 Int)) (Lexer!7292) )
))
(declare-fun thiss!26544 () LexerInterface!7294)

(assert (=> start!401184 (= res!1724652 (is-Lexer!7292 thiss!26544))))

(assert (=> start!401184 e!2606818))

(assert (=> start!401184 true))

(declare-fun e!2606819 () Bool)

(assert (=> start!401184 e!2606819))

(declare-fun e!2606817 () Bool)

(assert (=> start!401184 e!2606817))

(assert (=> start!401184 e!2606815))

(declare-fun e!2606816 () Bool)

(assert (=> start!401184 e!2606816))

(declare-fun b!4199568 () Bool)

(declare-fun tp!1282776 () Bool)

(assert (=> b!4199568 (= e!2606817 (and tp_is_empty!22175 tp!1282776))))

(declare-fun b!4199569 () Bool)

(declare-fun res!1724651 () Bool)

(assert (=> b!4199569 (=> (not res!1724651) (not e!2606818))))

(declare-datatypes ((C!25402 0))(
  ( (C!25403 (val!14863 Int)) )
))
(declare-datatypes ((List!46256 0))(
  ( (Nil!46132) (Cons!46132 (h!51552 C!25402) (t!346761 List!46256)) )
))
(declare-fun p!3001 () List!46256)

(declare-fun input!3517 () List!46256)

(declare-fun suffix!1557 () List!46256)

(declare-fun ++!11773 (List!46256 List!46256) List!46256)

(assert (=> b!4199569 (= res!1724651 (= (++!11773 p!3001 suffix!1557) input!3517))))

(declare-fun b!4199570 () Bool)

(declare-fun res!1724653 () Bool)

(assert (=> b!4199570 (=> (not res!1724653) (not e!2606818))))

(declare-fun isPrefix!4558 (List!46256 List!46256) Bool)

(assert (=> b!4199570 (= res!1724653 (isPrefix!4558 p!3001 input!3517))))

(declare-fun b!4199571 () Bool)

(declare-fun tp!1282773 () Bool)

(assert (=> b!4199571 (= e!2606819 (and tp_is_empty!22175 tp!1282773))))

(declare-fun b!4199572 () Bool)

(assert (=> b!4199572 (= e!2606818 false)))

(declare-fun lt!1496223 () Bool)

(declare-fun pBis!121 () List!46256)

(assert (=> b!4199572 (= lt!1496223 (isPrefix!4558 pBis!121 input!3517))))

(declare-fun b!4199573 () Bool)

(declare-fun tp!1282775 () Bool)

(assert (=> b!4199573 (= e!2606816 (and tp_is_empty!22175 tp!1282775))))

(assert (= (and start!401184 res!1724652) b!4199569))

(assert (= (and b!4199569 res!1724651) b!4199570))

(assert (= (and b!4199570 res!1724653) b!4199572))

(assert (= (and start!401184 (is-Cons!46132 p!3001)) b!4199571))

(assert (= (and start!401184 (is-Cons!46132 input!3517)) b!4199568))

(assert (= (and start!401184 (is-Cons!46132 pBis!121)) b!4199567))

(assert (= (and start!401184 (is-Cons!46132 suffix!1557)) b!4199573))

(declare-fun m!4788343 () Bool)

(assert (=> b!4199569 m!4788343))

(declare-fun m!4788345 () Bool)

(assert (=> b!4199570 m!4788345))

(declare-fun m!4788347 () Bool)

(assert (=> b!4199572 m!4788347))

(push 1)

(assert (not b!4199572))

(assert (not b!4199569))

(assert tp_is_empty!22175)

(assert (not b!4199570))

(assert (not b!4199568))

(assert (not b!4199571))

(assert (not b!4199573))

(assert (not b!4199567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


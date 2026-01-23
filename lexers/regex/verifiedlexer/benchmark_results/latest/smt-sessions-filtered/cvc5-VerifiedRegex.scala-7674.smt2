; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404352 () Bool)

(assert start!404352)

(declare-fun res!1738563 () Bool)

(declare-fun e!2625300 () Bool)

(assert (=> start!404352 (=> (not res!1738563) (not e!2625300))))

(declare-datatypes ((LexerInterface!7454 0))(
  ( (LexerInterfaceExt!7451 (__x!28403 Int)) (Lexer!7452) )
))
(declare-fun thiss!26785 () LexerInterface!7454)

(assert (=> start!404352 (= res!1738563 (is-Lexer!7452 thiss!26785))))

(assert (=> start!404352 e!2625300))

(assert (=> start!404352 true))

(declare-fun e!2625301 () Bool)

(assert (=> start!404352 e!2625301))

(declare-fun e!2625299 () Bool)

(assert (=> start!404352 e!2625299))

(declare-fun e!2625298 () Bool)

(assert (=> start!404352 e!2625298))

(declare-fun e!2625297 () Bool)

(assert (=> start!404352 e!2625297))

(declare-fun b!4228075 () Bool)

(declare-fun tp_is_empty!22463 () Bool)

(declare-fun tp!1295019 () Bool)

(assert (=> b!4228075 (= e!2625299 (and tp_is_empty!22463 tp!1295019))))

(declare-fun b!4228076 () Bool)

(declare-fun tp!1295020 () Bool)

(assert (=> b!4228076 (= e!2625301 (and tp_is_empty!22463 tp!1295020))))

(declare-fun b!4228077 () Bool)

(declare-fun res!1738565 () Bool)

(assert (=> b!4228077 (=> (not res!1738565) (not e!2625300))))

(declare-datatypes ((C!25726 0))(
  ( (C!25727 (val!15025 Int)) )
))
(declare-datatypes ((List!46784 0))(
  ( (Nil!46660) (Cons!46660 (h!52080 C!25726) (t!349405 List!46784)) )
))
(declare-fun pBis!134 () List!46784)

(declare-fun input!3586 () List!46784)

(declare-fun size!34180 (List!46784) Int)

(assert (=> b!4228077 (= res!1738565 (<= (size!34180 pBis!134) (size!34180 input!3586)))))

(declare-fun b!4228078 () Bool)

(declare-fun res!1738561 () Bool)

(assert (=> b!4228078 (=> (not res!1738561) (not e!2625300))))

(declare-fun p!3014 () List!46784)

(declare-fun suffix!1590 () List!46784)

(declare-fun ++!11889 (List!46784 List!46784) List!46784)

(assert (=> b!4228078 (= res!1738561 (= (++!11889 p!3014 suffix!1590) input!3586))))

(declare-fun b!4228079 () Bool)

(declare-fun res!1738562 () Bool)

(assert (=> b!4228079 (=> (not res!1738562) (not e!2625300))))

(declare-fun isPrefix!4674 (List!46784 List!46784) Bool)

(assert (=> b!4228079 (= res!1738562 (isPrefix!4674 pBis!134 input!3586))))

(declare-fun b!4228080 () Bool)

(declare-fun tp!1295018 () Bool)

(assert (=> b!4228080 (= e!2625298 (and tp_is_empty!22463 tp!1295018))))

(declare-fun b!4228081 () Bool)

(assert (=> b!4228081 (= e!2625300 false)))

(declare-fun lt!1503313 () Int)

(assert (=> b!4228081 (= lt!1503313 (size!34180 p!3014))))

(declare-fun b!4228082 () Bool)

(declare-fun tp!1295017 () Bool)

(assert (=> b!4228082 (= e!2625297 (and tp_is_empty!22463 tp!1295017))))

(declare-fun b!4228083 () Bool)

(declare-fun res!1738564 () Bool)

(assert (=> b!4228083 (=> (not res!1738564) (not e!2625300))))

(assert (=> b!4228083 (= res!1738564 (isPrefix!4674 p!3014 input!3586))))

(assert (= (and start!404352 res!1738563) b!4228078))

(assert (= (and b!4228078 res!1738561) b!4228083))

(assert (= (and b!4228083 res!1738564) b!4228079))

(assert (= (and b!4228079 res!1738562) b!4228077))

(assert (= (and b!4228077 res!1738565) b!4228081))

(assert (= (and start!404352 (is-Cons!46660 p!3014)) b!4228076))

(assert (= (and start!404352 (is-Cons!46660 input!3586)) b!4228075))

(assert (= (and start!404352 (is-Cons!46660 pBis!134)) b!4228080))

(assert (= (and start!404352 (is-Cons!46660 suffix!1590)) b!4228082))

(declare-fun m!4815235 () Bool)

(assert (=> b!4228078 m!4815235))

(declare-fun m!4815237 () Bool)

(assert (=> b!4228077 m!4815237))

(declare-fun m!4815239 () Bool)

(assert (=> b!4228077 m!4815239))

(declare-fun m!4815241 () Bool)

(assert (=> b!4228083 m!4815241))

(declare-fun m!4815243 () Bool)

(assert (=> b!4228079 m!4815243))

(declare-fun m!4815245 () Bool)

(assert (=> b!4228081 m!4815245))

(push 1)

(assert (not b!4228080))

(assert (not b!4228077))

(assert (not b!4228081))

(assert (not b!4228082))

(assert (not b!4228079))

(assert (not b!4228075))

(assert tp_is_empty!22463)

(assert (not b!4228083))

(assert (not b!4228076))

(assert (not b!4228078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


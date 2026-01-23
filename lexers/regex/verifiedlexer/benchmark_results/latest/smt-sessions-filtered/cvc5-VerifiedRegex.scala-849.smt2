; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!46074 () Bool)

(assert start!46074)

(declare-fun b!510456 () Bool)

(declare-fun e!304908 () Bool)

(declare-fun tp_is_empty!2385 () Bool)

(declare-fun tp!158800 () Bool)

(assert (=> b!510456 (= e!304908 (and tp_is_empty!2385 tp!158800))))

(declare-fun b!510454 () Bool)

(declare-fun e!304906 () Bool)

(assert (=> b!510454 (= e!304906 false)))

(declare-fun lt!211753 () Int)

(declare-datatypes ((B!999 0))(
  ( (B!1000 (val!1641 Int)) )
))
(declare-datatypes ((List!4614 0))(
  ( (Nil!4604) (Cons!4604 (h!10001 B!999) (t!73132 List!4614)) )
))
(declare-fun l!3306 () List!4614)

(declare-fun size!3710 (List!4614) Int)

(assert (=> b!510454 (= lt!211753 (size!3710 l!3306))))

(declare-fun lt!211754 () Int)

(declare-fun p!1985 () List!4614)

(assert (=> b!510454 (= lt!211754 (size!3710 p!1985))))

(declare-fun b!510455 () Bool)

(declare-fun e!304907 () Bool)

(declare-fun tp!158801 () Bool)

(assert (=> b!510455 (= e!304907 (and tp_is_empty!2385 tp!158801))))

(declare-fun b!510453 () Bool)

(declare-fun res!216579 () Bool)

(assert (=> b!510453 (=> (not res!216579) (not e!304906))))

(declare-fun isPrefix!536 (List!4614 List!4614) Bool)

(assert (=> b!510453 (= res!216579 (isPrefix!536 p!1985 l!3306))))

(declare-fun res!216578 () Bool)

(assert (=> start!46074 (=> (not res!216578) (not e!304906))))

(declare-fun isEmpty!3558 (List!4614) Bool)

(assert (=> start!46074 (= res!216578 (not (isEmpty!3558 l!3306)))))

(assert (=> start!46074 e!304906))

(assert (=> start!46074 e!304907))

(assert (=> start!46074 e!304908))

(assert (= (and start!46074 res!216578) b!510453))

(assert (= (and b!510453 res!216579) b!510454))

(assert (= (and start!46074 (is-Cons!4604 l!3306)) b!510455))

(assert (= (and start!46074 (is-Cons!4604 p!1985)) b!510456))

(declare-fun m!757331 () Bool)

(assert (=> b!510454 m!757331))

(declare-fun m!757333 () Bool)

(assert (=> b!510454 m!757333))

(declare-fun m!757335 () Bool)

(assert (=> b!510453 m!757335))

(declare-fun m!757337 () Bool)

(assert (=> start!46074 m!757337))

(push 1)

(assert (not b!510454))

(assert (not b!510456))

(assert tp_is_empty!2385)

(assert (not b!510453))

(assert (not start!46074))

(assert (not b!510455))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


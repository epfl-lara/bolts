; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545954 () Bool)

(assert start!545954)

(declare-fun b_free!133549 () Bool)

(declare-fun b_next!134339 () Bool)

(assert (=> start!545954 (= b_free!133549 (not b_next!134339))))

(declare-fun tp!1447897 () Bool)

(declare-fun b_and!350529 () Bool)

(assert (=> start!545954 (= tp!1447897 b_and!350529)))

(declare-fun res!2194759 () Bool)

(declare-fun e!3216531 () Bool)

(assert (=> start!545954 (=> (not res!2194759) (not e!3216531))))

(declare-datatypes ((B!3105 0))(
  ( (B!3106 (val!24336 Int)) )
))
(declare-datatypes ((List!60002 0))(
  ( (Nil!59878) (Cons!59878 (h!66326 B!3105) (t!373099 List!60002)) )
))
(declare-fun l!3049 () List!60002)

(declare-fun p!1890 () Int)

(declare-fun forall!14062 (List!60002 Int) Bool)

(assert (=> start!545954 (= res!2194759 (forall!14062 l!3049 p!1890))))

(assert (=> start!545954 e!3216531))

(declare-fun e!3216532 () Bool)

(assert (=> start!545954 e!3216532))

(assert (=> start!545954 tp!1447897))

(declare-fun b!5162435 () Bool)

(declare-fun res!2194760 () Bool)

(assert (=> b!5162435 (=> (not res!2194760) (not e!3216531))))

(get-info :version)

(assert (=> b!5162435 (= res!2194760 ((_ is Cons!59878) l!3049))))

(declare-fun b!5162436 () Bool)

(assert (=> b!5162436 (= e!3216531 (not true))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun forall!14063 ((InoxSet B!3105) Int) Bool)

(declare-fun content!10609 (List!60002) (InoxSet B!3105))

(assert (=> b!5162436 (forall!14063 (content!10609 (t!373099 l!3049)) p!1890)))

(declare-datatypes ((Unit!151311 0))(
  ( (Unit!151312) )
))
(declare-fun lt!2122573 () Unit!151311)

(declare-fun lemmaForallThenOnContent!46 (List!60002 Int) Unit!151311)

(assert (=> b!5162436 (= lt!2122573 (lemmaForallThenOnContent!46 (t!373099 l!3049) p!1890))))

(declare-fun b!5162437 () Bool)

(declare-fun tp_is_empty!38251 () Bool)

(declare-fun tp!1447896 () Bool)

(assert (=> b!5162437 (= e!3216532 (and tp_is_empty!38251 tp!1447896))))

(assert (= (and start!545954 res!2194759) b!5162435))

(assert (= (and b!5162435 res!2194760) b!5162436))

(assert (= (and start!545954 ((_ is Cons!59878) l!3049)) b!5162437))

(declare-fun m!6213096 () Bool)

(assert (=> start!545954 m!6213096))

(declare-fun m!6213098 () Bool)

(assert (=> b!5162436 m!6213098))

(assert (=> b!5162436 m!6213098))

(declare-fun m!6213100 () Bool)

(assert (=> b!5162436 m!6213100))

(declare-fun m!6213102 () Bool)

(assert (=> b!5162436 m!6213102))

(check-sat b_and!350529 (not b_next!134339) (not b!5162436) (not start!545954) tp_is_empty!38251 (not b!5162437))
(check-sat b_and!350529 (not b_next!134339))

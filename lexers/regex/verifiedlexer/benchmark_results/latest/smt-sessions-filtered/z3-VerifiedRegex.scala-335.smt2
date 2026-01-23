; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10938 () Bool)

(assert start!10938)

(declare-fun b_free!3273 () Bool)

(declare-fun b_next!3273 () Bool)

(assert (=> start!10938 (= b_free!3273 (not b_next!3273))))

(declare-fun tp!59202 () Bool)

(declare-fun b_and!4979 () Bool)

(assert (=> start!10938 (= tp!59202 b_and!4979)))

(declare-fun b_free!3275 () Bool)

(declare-fun b_next!3275 () Bool)

(assert (=> start!10938 (= b_free!3275 (not b_next!3275))))

(declare-fun tp!59200 () Bool)

(declare-fun b_and!4981 () Bool)

(assert (=> start!10938 (= tp!59200 b_and!4981)))

(assert (=> start!10938 true))

(declare-fun order!939 () Int)

(declare-fun lambda!2394 () Int)

(declare-fun f!927 () Int)

(declare-fun order!937 () Int)

(declare-fun dynLambda!606 (Int Int) Int)

(declare-fun dynLambda!607 (Int Int) Int)

(assert (=> start!10938 (< (dynLambda!606 order!937 f!927) (dynLambda!607 order!939 lambda!2394))))

(assert (=> start!10938 true))

(declare-fun g!9 () Int)

(assert (=> start!10938 (< (dynLambda!606 order!937 g!9) (dynLambda!607 order!939 lambda!2394))))

(declare-fun res!52368 () Bool)

(declare-fun e!60705 () Bool)

(assert (=> start!10938 (=> (not res!52368) (not e!60705))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!239 0))(
  ( (A!240 (val!543 Int)) )
))
(declare-fun s!1451 () (InoxSet A!239))

(declare-fun forall!260 ((InoxSet A!239) Int) Bool)

(assert (=> start!10938 (= res!52368 (forall!260 s!1451 lambda!2394))))

(assert (=> start!10938 e!60705))

(declare-fun condSetEmpty!1393 () Bool)

(assert (=> start!10938 (= condSetEmpty!1393 (= s!1451 ((as const (Array A!239 Bool)) false)))))

(declare-fun setRes!1393 () Bool)

(assert (=> start!10938 setRes!1393))

(assert (=> start!10938 tp!59202))

(assert (=> start!10938 tp!59200))

(declare-fun b!109149 () Bool)

(assert (=> b!109149 (= e!60705 false)))

(declare-datatypes ((List!1743 0))(
  ( (Nil!1737) (Cons!1737 (h!7134 A!239) (t!21738 List!1743)) )
))
(declare-fun lt!31104 () List!1743)

(declare-fun toList!222 ((InoxSet A!239)) List!1743)

(assert (=> b!109149 (= lt!31104 (toList!222 s!1451))))

(declare-fun setIsEmpty!1393 () Bool)

(assert (=> setIsEmpty!1393 setRes!1393))

(declare-fun setNonEmpty!1393 () Bool)

(declare-fun tp!59201 () Bool)

(declare-fun tp_is_empty!829 () Bool)

(assert (=> setNonEmpty!1393 (= setRes!1393 (and tp!59201 tp_is_empty!829))))

(declare-fun setElem!1393 () A!239)

(declare-fun setRest!1393 () (InoxSet A!239))

(assert (=> setNonEmpty!1393 (= s!1451 ((_ map or) (store ((as const (Array A!239 Bool)) false) setElem!1393 true) setRest!1393))))

(assert (= (and start!10938 res!52368) b!109149))

(assert (= (and start!10938 condSetEmpty!1393) setIsEmpty!1393))

(assert (= (and start!10938 (not condSetEmpty!1393)) setNonEmpty!1393))

(declare-fun m!98286 () Bool)

(assert (=> start!10938 m!98286))

(declare-fun m!98288 () Bool)

(assert (=> b!109149 m!98288))

(check-sat b_and!4979 (not b!109149) (not start!10938) (not b_next!3275) (not b_next!3273) b_and!4981 tp_is_empty!829 (not setNonEmpty!1393))
(check-sat b_and!4979 b_and!4981 (not b_next!3275) (not b_next!3273))

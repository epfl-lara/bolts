; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!534132 () Bool)

(assert start!534132)

(declare-fun b!5049816 () Bool)

(declare-fun res!2150679 () Bool)

(declare-fun e!3152901 () Bool)

(assert (=> b!5049816 (=> (not res!2150679) (not e!3152901))))

(declare-fun i!705 () Int)

(declare-datatypes ((T!104668 0))(
  ( (T!104669 (val!23583 Int)) )
))
(declare-datatypes ((List!58493 0))(
  ( (Nil!58369) (Cons!58369 (h!64817 T!104668) (t!371132 List!58493)) )
))
(declare-fun l!2779 () List!58493)

(declare-fun size!38992 (List!58493) Int)

(assert (=> b!5049816 (= res!2150679 (<= i!705 (size!38992 l!2779)))))

(declare-fun res!2150677 () Bool)

(assert (=> start!534132 (=> (not res!2150677) (not e!3152901))))

(assert (=> start!534132 (= res!2150677 (<= 0 i!705))))

(assert (=> start!534132 e!3152901))

(assert (=> start!534132 true))

(declare-fun e!3152902 () Bool)

(assert (=> start!534132 e!3152902))

(declare-fun b!5049817 () Bool)

(declare-fun tp_is_empty!36921 () Bool)

(declare-fun tp!1412118 () Bool)

(assert (=> b!5049817 (= e!3152902 (and tp_is_empty!36921 tp!1412118))))

(declare-fun b!5049818 () Bool)

(declare-fun res!2150678 () Bool)

(assert (=> b!5049818 (=> (not res!2150678) (not e!3152901))))

(assert (=> b!5049818 (= res!2150678 (<= (- i!705 1) (size!38992 (t!371132 l!2779))))))

(declare-fun b!5049819 () Bool)

(assert (=> b!5049819 (= e!3152901 (not true))))

(declare-fun take!874 (List!58493 Int) List!58493)

(declare-fun slice!898 (List!58493 Int Int) List!58493)

(assert (=> b!5049819 (= (take!874 (t!371132 l!2779) (- i!705 1)) (slice!898 (t!371132 l!2779) 0 (- i!705 1)))))

(declare-datatypes ((Unit!149561 0))(
  ( (Unit!149562) )
))
(declare-fun lt!2086434 () Unit!149561)

(declare-fun takeSliceLemma!9 (List!58493 Int) Unit!149561)

(assert (=> b!5049819 (= lt!2086434 (takeSliceLemma!9 (t!371132 l!2779) (- i!705 1)))))

(declare-fun b!5049820 () Bool)

(declare-fun res!2150676 () Bool)

(assert (=> b!5049820 (=> (not res!2150676) (not e!3152901))))

(assert (=> b!5049820 (= res!2150676 (and (not (is-Nil!58369 l!2779)) (not (= i!705 0)) (<= 0 (- i!705 1))))))

(assert (= (and start!534132 res!2150677) b!5049816))

(assert (= (and b!5049816 res!2150679) b!5049820))

(assert (= (and b!5049820 res!2150676) b!5049818))

(assert (= (and b!5049818 res!2150678) b!5049819))

(assert (= (and start!534132 (is-Cons!58369 l!2779)) b!5049817))

(declare-fun m!6084406 () Bool)

(assert (=> b!5049816 m!6084406))

(declare-fun m!6084408 () Bool)

(assert (=> b!5049818 m!6084408))

(declare-fun m!6084410 () Bool)

(assert (=> b!5049819 m!6084410))

(declare-fun m!6084412 () Bool)

(assert (=> b!5049819 m!6084412))

(declare-fun m!6084414 () Bool)

(assert (=> b!5049819 m!6084414))

(push 1)

(assert (not b!5049818))

(assert tp_is_empty!36921)

(assert (not b!5049819))

(assert (not b!5049817))

(assert (not b!5049816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


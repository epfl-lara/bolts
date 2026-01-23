; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533970 () Bool)

(assert start!533970)

(declare-fun b!5048651 () Bool)

(declare-fun e!3152164 () Bool)

(assert (=> b!5048651 (= e!3152164 (not true))))

(declare-datatypes ((T!104432 0))(
  ( (T!104433 (val!23550 Int)) )
))
(declare-datatypes ((List!58460 0))(
  ( (Nil!58336) (Cons!58336 (h!64784 T!104432) (t!371099 List!58460)) )
))
(declare-fun l!2763 () List!58460)

(declare-fun i!658 () Int)

(declare-fun lt!2086083 () Int)

(declare-fun drop!2660 (List!58460 Int) List!58460)

(declare-fun slice!879 (List!58460 Int Int) List!58460)

(assert (=> b!5048651 (= (drop!2660 (t!371099 l!2763) (- i!658 1)) (slice!879 (t!371099 l!2763) (- i!658 1) lt!2086083))))

(declare-datatypes ((Unit!149535 0))(
  ( (Unit!149536) )
))
(declare-fun lt!2086082 () Unit!149535)

(declare-fun dropLemma!82 (List!58460 Int) Unit!149535)

(assert (=> b!5048651 (= lt!2086082 (dropLemma!82 (t!371099 l!2763) (- i!658 1)))))

(declare-fun b!5048652 () Bool)

(declare-fun res!2150266 () Bool)

(declare-fun e!3152166 () Bool)

(assert (=> b!5048652 (=> (not res!2150266) (not e!3152166))))

(declare-fun size!38961 (List!58460) Int)

(assert (=> b!5048652 (= res!2150266 (<= i!658 (size!38961 l!2763)))))

(declare-fun b!5048653 () Bool)

(assert (=> b!5048653 (= e!3152166 e!3152164)))

(declare-fun res!2150267 () Bool)

(assert (=> b!5048653 (=> (not res!2150267) (not e!3152164))))

(assert (=> b!5048653 (= res!2150267 (<= (- i!658 1) lt!2086083))))

(assert (=> b!5048653 (= lt!2086083 (size!38961 (t!371099 l!2763)))))

(declare-fun res!2150269 () Bool)

(assert (=> start!533970 (=> (not res!2150269) (not e!3152166))))

(assert (=> start!533970 (= res!2150269 (<= 0 i!658))))

(assert (=> start!533970 e!3152166))

(assert (=> start!533970 true))

(declare-fun e!3152165 () Bool)

(assert (=> start!533970 e!3152165))

(declare-fun b!5048654 () Bool)

(declare-fun tp_is_empty!36855 () Bool)

(declare-fun tp!1411963 () Bool)

(assert (=> b!5048654 (= e!3152165 (and tp_is_empty!36855 tp!1411963))))

(declare-fun b!5048655 () Bool)

(declare-fun res!2150268 () Bool)

(assert (=> b!5048655 (=> (not res!2150268) (not e!3152166))))

(get-info :version)

(assert (=> b!5048655 (= res!2150268 (and (not ((_ is Nil!58336) l!2763)) (not (= i!658 0)) (<= 0 (- i!658 1))))))

(assert (= (and start!533970 res!2150269) b!5048652))

(assert (= (and b!5048652 res!2150266) b!5048655))

(assert (= (and b!5048655 res!2150268) b!5048653))

(assert (= (and b!5048653 res!2150267) b!5048651))

(assert (= (and start!533970 ((_ is Cons!58336) l!2763)) b!5048654))

(declare-fun m!6083820 () Bool)

(assert (=> b!5048651 m!6083820))

(declare-fun m!6083822 () Bool)

(assert (=> b!5048651 m!6083822))

(declare-fun m!6083824 () Bool)

(assert (=> b!5048651 m!6083824))

(declare-fun m!6083826 () Bool)

(assert (=> b!5048652 m!6083826))

(declare-fun m!6083828 () Bool)

(assert (=> b!5048653 m!6083828))

(check-sat (not b!5048654) (not b!5048653) (not b!5048651) tp_is_empty!36855 (not b!5048652))
(check-sat)

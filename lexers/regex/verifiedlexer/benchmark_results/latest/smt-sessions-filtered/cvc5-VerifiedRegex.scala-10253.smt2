; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!534128 () Bool)

(assert start!534128)

(declare-fun b!5049786 () Bool)

(declare-fun e!3152889 () Bool)

(declare-fun tp_is_empty!36917 () Bool)

(declare-fun tp!1412112 () Bool)

(assert (=> b!5049786 (= e!3152889 (and tp_is_empty!36917 tp!1412112))))

(declare-fun b!5049787 () Bool)

(declare-fun res!2150654 () Bool)

(declare-fun e!3152890 () Bool)

(assert (=> b!5049787 (=> (not res!2150654) (not e!3152890))))

(declare-datatypes ((T!104654 0))(
  ( (T!104655 (val!23581 Int)) )
))
(declare-datatypes ((List!58491 0))(
  ( (Nil!58367) (Cons!58367 (h!64815 T!104654) (t!371130 List!58491)) )
))
(declare-fun l!2779 () List!58491)

(declare-fun i!705 () Int)

(assert (=> b!5049787 (= res!2150654 (and (not (is-Nil!58367 l!2779)) (= i!705 0)))))

(declare-fun b!5049788 () Bool)

(declare-fun res!2150655 () Bool)

(assert (=> b!5049788 (=> (not res!2150655) (not e!3152890))))

(declare-fun take!872 (List!58491 Int) List!58491)

(assert (=> b!5049788 (= res!2150655 (= (take!872 l!2779 i!705) Nil!58367))))

(declare-fun b!5049789 () Bool)

(assert (=> b!5049789 (= e!3152890 false)))

(declare-fun lt!2086428 () List!58491)

(declare-fun slice!896 (List!58491 Int Int) List!58491)

(assert (=> b!5049789 (= lt!2086428 (slice!896 l!2779 0 i!705))))

(declare-fun b!5049790 () Bool)

(declare-fun res!2150652 () Bool)

(assert (=> b!5049790 (=> (not res!2150652) (not e!3152890))))

(declare-fun size!38990 (List!58491) Int)

(assert (=> b!5049790 (= res!2150652 (<= i!705 (size!38990 l!2779)))))

(declare-fun res!2150653 () Bool)

(assert (=> start!534128 (=> (not res!2150653) (not e!3152890))))

(assert (=> start!534128 (= res!2150653 (<= 0 i!705))))

(assert (=> start!534128 e!3152890))

(assert (=> start!534128 true))

(assert (=> start!534128 e!3152889))

(assert (= (and start!534128 res!2150653) b!5049790))

(assert (= (and b!5049790 res!2150652) b!5049787))

(assert (= (and b!5049787 res!2150654) b!5049788))

(assert (= (and b!5049788 res!2150655) b!5049789))

(assert (= (and start!534128 (is-Cons!58367 l!2779)) b!5049786))

(declare-fun m!6084394 () Bool)

(assert (=> b!5049788 m!6084394))

(declare-fun m!6084396 () Bool)

(assert (=> b!5049789 m!6084396))

(declare-fun m!6084398 () Bool)

(assert (=> b!5049790 m!6084398))

(push 1)

(assert (not b!5049788))

(assert tp_is_empty!36917)

(assert (not b!5049789))

(assert (not b!5049786))

(assert (not b!5049790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


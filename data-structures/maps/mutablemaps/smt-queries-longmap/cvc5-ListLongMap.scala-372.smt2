; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7096 () Bool)

(assert start!7096)

(declare-fun res!26698 () Bool)

(declare-fun e!28990 () Bool)

(assert (=> start!7096 (=> (not res!26698) (not e!28990))))

(declare-datatypes ((V!2363 0))(
  ( (V!2364 (val!993 Int)) )
))
(declare-datatypes ((ValueCell!707 0))(
  ( (ValueCellFull!707 (v!2094 V!2363)) (EmptyCell!707) )
))
(declare-fun c!12 () ValueCell!707)

(declare-fun isFull!1 (ValueCell!707) Bool)

(assert (=> start!7096 (= res!26698 (isFull!1 c!12))))

(assert (=> start!7096 e!28990))

(declare-fun e!28991 () Bool)

(assert (=> start!7096 e!28991))

(declare-fun b!45537 () Bool)

(assert (=> b!45537 (= e!28990 (not (is-ValueCellFull!707 c!12)))))

(declare-fun b!45538 () Bool)

(declare-fun tp_is_empty!1909 () Bool)

(assert (=> b!45538 (= e!28991 tp_is_empty!1909)))

(assert (= (and start!7096 res!26698) b!45537))

(assert (= (and start!7096 (is-ValueCellFull!707 c!12)) b!45538))

(declare-fun m!40107 () Bool)

(assert (=> start!7096 m!40107))

(push 1)

(assert (not start!7096))

(assert tp_is_empty!1909)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8903 () Bool)

(assert (=> d!8903 (= (isFull!1 c!12) (is-ValueCellFull!707 c!12))))

(assert (=> start!7096 d!8903))

(push 1)

(assert tp_is_empty!1909)

(check-sat)

(pop 1)


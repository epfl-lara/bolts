; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7100 () Bool)

(assert start!7100)

(declare-fun res!26704 () Bool)

(declare-fun e!29002 () Bool)

(assert (=> start!7100 (=> (not res!26704) (not e!29002))))

(declare-datatypes ((V!2367 0))(
  ( (V!2368 (val!995 Int)) )
))
(declare-datatypes ((ValueCell!709 0))(
  ( (ValueCellFull!709 (v!2096 V!2367)) (EmptyCell!709) )
))
(declare-fun c!12 () ValueCell!709)

(declare-fun isFull!3 (ValueCell!709) Bool)

(assert (=> start!7100 (= res!26704 (isFull!3 c!12))))

(assert (=> start!7100 e!29002))

(declare-fun e!29003 () Bool)

(assert (=> start!7100 e!29003))

(declare-fun b!45549 () Bool)

(assert (=> b!45549 (= e!29002 (not (is-ValueCellFull!709 c!12)))))

(declare-fun b!45550 () Bool)

(declare-fun tp_is_empty!1913 () Bool)

(assert (=> b!45550 (= e!29003 tp_is_empty!1913)))

(assert (= (and start!7100 res!26704) b!45549))

(assert (= (and start!7100 (is-ValueCellFull!709 c!12)) b!45550))

(declare-fun m!40111 () Bool)

(assert (=> start!7100 m!40111))

(push 1)

(assert (not start!7100))

(assert tp_is_empty!1913)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8907 () Bool)

(assert (=> d!8907 (= (isFull!3 c!12) (is-ValueCellFull!709 c!12))))

(assert (=> start!7100 d!8907))

(push 1)


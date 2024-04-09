; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82610 () Bool)

(assert start!82610)

(declare-fun b_free!18715 () Bool)

(declare-fun b_next!18715 () Bool)

(assert (=> start!82610 (= b_free!18715 (not b_next!18715))))

(declare-fun tp!65266 () Bool)

(declare-fun b_and!30221 () Bool)

(assert (=> start!82610 (= tp!65266 b_and!30221)))

(declare-fun mapIsEmpty!34270 () Bool)

(declare-fun mapRes!34270 () Bool)

(assert (=> mapIsEmpty!34270 mapRes!34270))

(declare-fun b!962289 () Bool)

(declare-fun e!542696 () Bool)

(declare-fun e!542694 () Bool)

(assert (=> b!962289 (= e!542696 (and e!542694 mapRes!34270))))

(declare-fun condMapEmpty!34270 () Bool)

(declare-datatypes ((V!33673 0))(
  ( (V!33674 (val!10809 Int)) )
))
(declare-datatypes ((ValueCell!10277 0))(
  ( (ValueCellFull!10277 (v!13367 V!33673)) (EmptyCell!10277) )
))
(declare-datatypes ((array!59115 0))(
  ( (array!59116 (arr!28422 (Array (_ BitVec 32) ValueCell!10277)) (size!28902 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59115)

(declare-fun mapDefault!34270 () ValueCell!10277)


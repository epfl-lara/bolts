; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34530 () Bool)

(assert start!34530)

(declare-fun b_free!7445 () Bool)

(declare-fun b_next!7445 () Bool)

(assert (=> start!34530 (= b_free!7445 (not b_next!7445))))

(declare-fun tp!25881 () Bool)

(declare-fun b_and!14671 () Bool)

(assert (=> start!34530 (= tp!25881 b_and!14671)))

(declare-fun b!344852 () Bool)

(declare-fun res!190851 () Bool)

(declare-fun e!211380 () Bool)

(assert (=> b!344852 (=> (not res!190851) (not e!211380))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10839 0))(
  ( (V!10840 (val!3743 Int)) )
))
(declare-fun zeroValue!1467 () V!10839)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3355 0))(
  ( (ValueCellFull!3355 (v!5915 V!10839)) (EmptyCell!3355) )
))
(declare-datatypes ((array!18349 0))(
  ( (array!18350 (arr!8688 (Array (_ BitVec 32) ValueCell!3355)) (size!9040 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18349)

(declare-datatypes ((array!18351 0))(
  ( (array!18352 (arr!8689 (Array (_ BitVec 32) (_ BitVec 64))) (size!9041 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18351)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10839)

(declare-datatypes ((tuple2!5404 0))(
  ( (tuple2!5405 (_1!2712 (_ BitVec 64)) (_2!2712 V!10839)) )
))
(declare-datatypes ((List!5052 0))(
  ( (Nil!5049) (Cons!5048 (h!5904 tuple2!5404) (t!10176 List!5052)) )
))
(declare-datatypes ((ListLongMap!4331 0))(
  ( (ListLongMap!4332 (toList!2181 List!5052)) )
))
(declare-fun contains!2235 (ListLongMap!4331 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1701 (array!18351 array!18349 (_ BitVec 32) (_ BitVec 32) V!10839 V!10839 (_ BitVec 32) Int) ListLongMap!4331)

(assert (=> b!344852 (= res!190851 (not (contains!2235 (getCurrentListMap!1701 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!344853 () Bool)

(declare-fun e!211382 () Bool)

(declare-fun e!211383 () Bool)

(declare-fun mapRes!12534 () Bool)

(assert (=> b!344853 (= e!211382 (and e!211383 mapRes!12534))))

(declare-fun condMapEmpty!12534 () Bool)

(declare-fun mapDefault!12534 () ValueCell!3355)


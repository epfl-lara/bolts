; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33976 () Bool)

(assert start!33976)

(declare-fun b_free!7099 () Bool)

(declare-fun b_next!7099 () Bool)

(assert (=> start!33976 (= b_free!7099 (not b_next!7099))))

(declare-fun tp!24815 () Bool)

(declare-fun b_and!14307 () Bool)

(assert (=> start!33976 (= tp!24815 b_and!14307)))

(declare-fun b!338057 () Bool)

(declare-fun e!207443 () Bool)

(declare-fun tp_is_empty!7051 () Bool)

(assert (=> b!338057 (= e!207443 tp_is_empty!7051)))

(declare-fun b!338058 () Bool)

(declare-fun res!186803 () Bool)

(declare-fun e!207441 () Bool)

(assert (=> b!338058 (=> (not res!186803) (not e!207441))))

(declare-datatypes ((array!17669 0))(
  ( (array!17670 (arr!8357 (Array (_ BitVec 32) (_ BitVec 64))) (size!8709 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17669)

(declare-datatypes ((List!4815 0))(
  ( (Nil!4812) (Cons!4811 (h!5667 (_ BitVec 64)) (t!9921 List!4815)) )
))
(declare-fun arrayNoDuplicates!0 (array!17669 (_ BitVec 32) List!4815) Bool)

(assert (=> b!338058 (= res!186803 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4812))))

(declare-fun b!338059 () Bool)

(declare-fun res!186801 () Bool)

(assert (=> b!338059 (=> (not res!186801) (not e!207441))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338059 (= res!186801 (validKeyInArray!0 k!1348))))

(declare-fun b!338060 () Bool)

(declare-fun e!207442 () Bool)

(assert (=> b!338060 (= e!207442 tp_is_empty!7051)))

(declare-fun b!338061 () Bool)

(declare-fun res!186802 () Bool)

(assert (=> b!338061 (=> (not res!186802) (not e!207441))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10379 0))(
  ( (V!10380 (val!3570 Int)) )
))
(declare-fun zeroValue!1467 () V!10379)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3182 0))(
  ( (ValueCellFull!3182 (v!5733 V!10379)) (EmptyCell!3182) )
))
(declare-datatypes ((array!17671 0))(
  ( (array!17672 (arr!8358 (Array (_ BitVec 32) ValueCell!3182)) (size!8710 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17671)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10379)

(declare-datatypes ((tuple2!5176 0))(
  ( (tuple2!5177 (_1!2598 (_ BitVec 64)) (_2!2598 V!10379)) )
))
(declare-datatypes ((List!4816 0))(
  ( (Nil!4813) (Cons!4812 (h!5668 tuple2!5176) (t!9922 List!4816)) )
))
(declare-datatypes ((ListLongMap!4103 0))(
  ( (ListLongMap!4104 (toList!2067 List!4816)) )
))
(declare-fun contains!2112 (ListLongMap!4103 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1587 (array!17669 array!17671 (_ BitVec 32) (_ BitVec 32) V!10379 V!10379 (_ BitVec 32) Int) ListLongMap!4103)

(assert (=> b!338061 (= res!186802 (not (contains!2112 (getCurrentListMap!1587 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!338062 () Bool)

(declare-fun e!207445 () Bool)

(declare-fun mapRes!11988 () Bool)

(assert (=> b!338062 (= e!207445 (and e!207442 mapRes!11988))))

(declare-fun condMapEmpty!11988 () Bool)

(declare-fun mapDefault!11988 () ValueCell!3182)


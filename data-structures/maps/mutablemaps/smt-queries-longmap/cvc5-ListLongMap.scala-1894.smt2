; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33862 () Bool)

(assert start!33862)

(declare-fun b_free!7033 () Bool)

(declare-fun b_next!7033 () Bool)

(assert (=> start!33862 (= b_free!7033 (not b_next!7033))))

(declare-fun tp!24612 () Bool)

(declare-fun b_and!14237 () Bool)

(assert (=> start!33862 (= tp!24612 b_and!14237)))

(declare-fun b!336662 () Bool)

(declare-fun res!185934 () Bool)

(declare-fun e!206642 () Bool)

(assert (=> b!336662 (=> (not res!185934) (not e!206642))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10291 0))(
  ( (V!10292 (val!3537 Int)) )
))
(declare-fun zeroValue!1467 () V!10291)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3149 0))(
  ( (ValueCellFull!3149 (v!5698 V!10291)) (EmptyCell!3149) )
))
(declare-datatypes ((array!17547 0))(
  ( (array!17548 (arr!8298 (Array (_ BitVec 32) ValueCell!3149)) (size!8650 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17547)

(declare-datatypes ((array!17549 0))(
  ( (array!17550 (arr!8299 (Array (_ BitVec 32) (_ BitVec 64))) (size!8651 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17549)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10291)

(declare-datatypes ((tuple2!5142 0))(
  ( (tuple2!5143 (_1!2581 (_ BitVec 64)) (_2!2581 V!10291)) )
))
(declare-datatypes ((List!4779 0))(
  ( (Nil!4776) (Cons!4775 (h!5631 tuple2!5142) (t!9881 List!4779)) )
))
(declare-datatypes ((ListLongMap!4069 0))(
  ( (ListLongMap!4070 (toList!2050 List!4779)) )
))
(declare-fun contains!2093 (ListLongMap!4069 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1570 (array!17549 array!17547 (_ BitVec 32) (_ BitVec 32) V!10291 V!10291 (_ BitVec 32) Int) ListLongMap!4069)

(assert (=> b!336662 (= res!185934 (not (contains!2093 (getCurrentListMap!1570 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!336663 () Bool)

(declare-fun res!185936 () Bool)

(assert (=> b!336663 (=> (not res!185936) (not e!206642))))

(declare-datatypes ((List!4780 0))(
  ( (Nil!4777) (Cons!4776 (h!5632 (_ BitVec 64)) (t!9882 List!4780)) )
))
(declare-fun arrayNoDuplicates!0 (array!17549 (_ BitVec 32) List!4780) Bool)

(assert (=> b!336663 (= res!185936 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4777))))

(declare-fun b!336664 () Bool)

(declare-fun e!206640 () Bool)

(declare-fun e!206639 () Bool)

(declare-fun mapRes!11883 () Bool)

(assert (=> b!336664 (= e!206640 (and e!206639 mapRes!11883))))

(declare-fun condMapEmpty!11883 () Bool)

(declare-fun mapDefault!11883 () ValueCell!3149)


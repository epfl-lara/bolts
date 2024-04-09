; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33768 () Bool)

(assert start!33768)

(declare-fun b_free!6995 () Bool)

(declare-fun b_next!6995 () Bool)

(assert (=> start!33768 (= b_free!6995 (not b_next!6995))))

(declare-fun tp!24488 () Bool)

(declare-fun b_and!14193 () Bool)

(assert (=> start!33768 (= tp!24488 b_and!14193)))

(declare-fun mapIsEmpty!11817 () Bool)

(declare-fun mapRes!11817 () Bool)

(assert (=> mapIsEmpty!11817 mapRes!11817))

(declare-fun b!335685 () Bool)

(declare-fun res!185373 () Bool)

(declare-fun e!206069 () Bool)

(assert (=> b!335685 (=> (not res!185373) (not e!206069))))

(declare-datatypes ((array!17471 0))(
  ( (array!17472 (arr!8263 (Array (_ BitVec 32) (_ BitVec 64))) (size!8615 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17471)

(declare-datatypes ((List!4751 0))(
  ( (Nil!4748) (Cons!4747 (h!5603 (_ BitVec 64)) (t!9847 List!4751)) )
))
(declare-fun arrayNoDuplicates!0 (array!17471 (_ BitVec 32) List!4751) Bool)

(assert (=> b!335685 (= res!185373 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4748))))

(declare-fun b!335686 () Bool)

(declare-fun res!185374 () Bool)

(assert (=> b!335686 (=> (not res!185374) (not e!206069))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10239 0))(
  ( (V!10240 (val!3518 Int)) )
))
(declare-fun zeroValue!1467 () V!10239)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3130 0))(
  ( (ValueCellFull!3130 (v!5676 V!10239)) (EmptyCell!3130) )
))
(declare-datatypes ((array!17473 0))(
  ( (array!17474 (arr!8264 (Array (_ BitVec 32) ValueCell!3130)) (size!8616 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17473)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10239)

(declare-datatypes ((tuple2!5112 0))(
  ( (tuple2!5113 (_1!2566 (_ BitVec 64)) (_2!2566 V!10239)) )
))
(declare-datatypes ((List!4752 0))(
  ( (Nil!4749) (Cons!4748 (h!5604 tuple2!5112) (t!9848 List!4752)) )
))
(declare-datatypes ((ListLongMap!4039 0))(
  ( (ListLongMap!4040 (toList!2035 List!4752)) )
))
(declare-fun contains!2075 (ListLongMap!4039 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1555 (array!17471 array!17473 (_ BitVec 32) (_ BitVec 32) V!10239 V!10239 (_ BitVec 32) Int) ListLongMap!4039)

(assert (=> b!335686 (= res!185374 (not (contains!2075 (getCurrentListMap!1555 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!335687 () Bool)

(declare-fun e!206066 () Bool)

(declare-fun tp_is_empty!6947 () Bool)

(assert (=> b!335687 (= e!206066 tp_is_empty!6947)))

(declare-fun b!335688 () Bool)

(declare-fun res!185376 () Bool)

(assert (=> b!335688 (=> (not res!185376) (not e!206069))))

(assert (=> b!335688 (= res!185376 (and (= (size!8616 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8615 _keys!1895) (size!8616 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335689 () Bool)

(declare-fun e!206070 () Bool)

(assert (=> b!335689 (= e!206070 (and e!206066 mapRes!11817))))

(declare-fun condMapEmpty!11817 () Bool)

(declare-fun mapDefault!11817 () ValueCell!3130)


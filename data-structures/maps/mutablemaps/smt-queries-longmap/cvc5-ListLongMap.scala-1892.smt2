; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33850 () Bool)

(assert start!33850)

(declare-fun b_free!7021 () Bool)

(declare-fun b_next!7021 () Bool)

(assert (=> start!33850 (= b_free!7021 (not b_next!7021))))

(declare-fun tp!24576 () Bool)

(declare-fun b_and!14225 () Bool)

(assert (=> start!33850 (= tp!24576 b_and!14225)))

(declare-fun mapNonEmpty!11865 () Bool)

(declare-fun mapRes!11865 () Bool)

(declare-fun tp!24575 () Bool)

(declare-fun e!206531 () Bool)

(assert (=> mapNonEmpty!11865 (= mapRes!11865 (and tp!24575 e!206531))))

(declare-datatypes ((V!10275 0))(
  ( (V!10276 (val!3531 Int)) )
))
(declare-datatypes ((ValueCell!3143 0))(
  ( (ValueCellFull!3143 (v!5692 V!10275)) (EmptyCell!3143) )
))
(declare-fun mapValue!11865 () ValueCell!3143)

(declare-fun mapRest!11865 () (Array (_ BitVec 32) ValueCell!3143))

(declare-fun mapKey!11865 () (_ BitVec 32))

(declare-datatypes ((array!17525 0))(
  ( (array!17526 (arr!8287 (Array (_ BitVec 32) ValueCell!3143)) (size!8639 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17525)

(assert (=> mapNonEmpty!11865 (= (arr!8287 _values!1525) (store mapRest!11865 mapKey!11865 mapValue!11865))))

(declare-fun b!336463 () Bool)

(declare-fun res!185792 () Bool)

(declare-fun e!206534 () Bool)

(assert (=> b!336463 (=> (not res!185792) (not e!206534))))

(declare-datatypes ((array!17527 0))(
  ( (array!17528 (arr!8288 (Array (_ BitVec 32) (_ BitVec 64))) (size!8640 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17527)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336463 (= res!185792 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!336464 () Bool)

(declare-fun res!185791 () Bool)

(declare-fun e!206530 () Bool)

(assert (=> b!336464 (=> (not res!185791) (not e!206530))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10275)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10275)

(declare-datatypes ((tuple2!5132 0))(
  ( (tuple2!5133 (_1!2576 (_ BitVec 64)) (_2!2576 V!10275)) )
))
(declare-datatypes ((List!4770 0))(
  ( (Nil!4767) (Cons!4766 (h!5622 tuple2!5132) (t!9872 List!4770)) )
))
(declare-datatypes ((ListLongMap!4059 0))(
  ( (ListLongMap!4060 (toList!2045 List!4770)) )
))
(declare-fun contains!2088 (ListLongMap!4059 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1565 (array!17527 array!17525 (_ BitVec 32) (_ BitVec 32) V!10275 V!10275 (_ BitVec 32) Int) ListLongMap!4059)

(assert (=> b!336464 (= res!185791 (not (contains!2088 (getCurrentListMap!1565 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!336465 () Bool)

(declare-fun res!185789 () Bool)

(assert (=> b!336465 (=> (not res!185789) (not e!206530))))

(assert (=> b!336465 (= res!185789 (and (= (size!8639 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8640 _keys!1895) (size!8639 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11865 () Bool)

(assert (=> mapIsEmpty!11865 mapRes!11865))

(declare-fun res!185788 () Bool)

(assert (=> start!33850 (=> (not res!185788) (not e!206530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33850 (= res!185788 (validMask!0 mask!2385))))

(assert (=> start!33850 e!206530))

(assert (=> start!33850 true))

(declare-fun tp_is_empty!6973 () Bool)

(assert (=> start!33850 tp_is_empty!6973))

(assert (=> start!33850 tp!24576))

(declare-fun e!206532 () Bool)

(declare-fun array_inv!6144 (array!17525) Bool)

(assert (=> start!33850 (and (array_inv!6144 _values!1525) e!206532)))

(declare-fun array_inv!6145 (array!17527) Bool)

(assert (=> start!33850 (array_inv!6145 _keys!1895)))

(declare-fun b!336466 () Bool)

(declare-fun e!206535 () Bool)

(assert (=> b!336466 (= e!206532 (and e!206535 mapRes!11865))))

(declare-fun condMapEmpty!11865 () Bool)

(declare-fun mapDefault!11865 () ValueCell!3143)


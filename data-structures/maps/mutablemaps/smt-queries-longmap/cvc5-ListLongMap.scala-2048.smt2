; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35464 () Bool)

(assert start!35464)

(declare-fun b_free!7843 () Bool)

(declare-fun b_next!7843 () Bool)

(assert (=> start!35464 (= b_free!7843 (not b_next!7843))))

(declare-fun tp!27314 () Bool)

(declare-fun b_and!15103 () Bool)

(assert (=> start!35464 (= tp!27314 b_and!15103)))

(declare-fun mapNonEmpty!13371 () Bool)

(declare-fun mapRes!13371 () Bool)

(declare-fun tp!27315 () Bool)

(declare-fun e!217505 () Bool)

(assert (=> mapNonEmpty!13371 (= mapRes!13371 (and tp!27315 e!217505))))

(declare-fun mapKey!13371 () (_ BitVec 32))

(declare-datatypes ((V!11523 0))(
  ( (V!11524 (val!3999 Int)) )
))
(declare-datatypes ((ValueCell!3611 0))(
  ( (ValueCellFull!3611 (v!6189 V!11523)) (EmptyCell!3611) )
))
(declare-datatypes ((array!19365 0))(
  ( (array!19366 (arr!9173 (Array (_ BitVec 32) ValueCell!3611)) (size!9525 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19365)

(declare-fun mapValue!13371 () ValueCell!3611)

(declare-fun mapRest!13371 () (Array (_ BitVec 32) ValueCell!3611))

(assert (=> mapNonEmpty!13371 (= (arr!9173 _values!1208) (store mapRest!13371 mapKey!13371 mapValue!13371))))

(declare-fun b!354969 () Bool)

(declare-fun res!196942 () Bool)

(declare-fun e!217501 () Bool)

(assert (=> b!354969 (=> (not res!196942) (not e!217501))))

(declare-datatypes ((array!19367 0))(
  ( (array!19368 (arr!9174 (Array (_ BitVec 32) (_ BitVec 64))) (size!9526 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19367)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!354969 (= res!196942 (= (select (arr!9174 _keys!1456) from!1805) k!1077))))

(declare-fun res!196944 () Bool)

(assert (=> start!35464 (=> (not res!196944) (not e!217501))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35464 (= res!196944 (validMask!0 mask!1842))))

(assert (=> start!35464 e!217501))

(declare-fun tp_is_empty!7909 () Bool)

(assert (=> start!35464 tp_is_empty!7909))

(assert (=> start!35464 true))

(assert (=> start!35464 tp!27314))

(declare-fun array_inv!6752 (array!19367) Bool)

(assert (=> start!35464 (array_inv!6752 _keys!1456)))

(declare-fun e!217504 () Bool)

(declare-fun array_inv!6753 (array!19365) Bool)

(assert (=> start!35464 (and (array_inv!6753 _values!1208) e!217504)))

(declare-fun b!354970 () Bool)

(declare-fun res!196943 () Bool)

(assert (=> b!354970 (=> (not res!196943) (not e!217501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19367 (_ BitVec 32)) Bool)

(assert (=> b!354970 (= res!196943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354971 () Bool)

(declare-fun res!196945 () Bool)

(assert (=> b!354971 (=> (not res!196945) (not e!217501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354971 (= res!196945 (validKeyInArray!0 k!1077))))

(declare-fun b!354972 () Bool)

(assert (=> b!354972 (= e!217501 (not true))))

(declare-fun minValue!1150 () V!11523)

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11523)

(declare-datatypes ((tuple2!5678 0))(
  ( (tuple2!5679 (_1!2849 (_ BitVec 64)) (_2!2849 V!11523)) )
))
(declare-datatypes ((List!5343 0))(
  ( (Nil!5340) (Cons!5339 (h!6195 tuple2!5678) (t!10501 List!5343)) )
))
(declare-datatypes ((ListLongMap!4605 0))(
  ( (ListLongMap!4606 (toList!2318 List!5343)) )
))
(declare-fun contains!2394 (ListLongMap!4605 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1835 (array!19367 array!19365 (_ BitVec 32) (_ BitVec 32) V!11523 V!11523 (_ BitVec 32) Int) ListLongMap!4605)

(assert (=> b!354972 (contains!2394 (getCurrentListMap!1835 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9174 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10945 0))(
  ( (Unit!10946) )
))
(declare-fun lt!165739 () Unit!10945)

(declare-fun lemmaValidKeyInArrayIsInListMap!185 (array!19367 array!19365 (_ BitVec 32) (_ BitVec 32) V!11523 V!11523 (_ BitVec 32) Int) Unit!10945)

(assert (=> b!354972 (= lt!165739 (lemmaValidKeyInArrayIsInListMap!185 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!354973 () Bool)

(declare-fun res!196946 () Bool)

(assert (=> b!354973 (=> (not res!196946) (not e!217501))))

(assert (=> b!354973 (= res!196946 (and (= (size!9525 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9526 _keys!1456) (size!9525 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13371 () Bool)

(assert (=> mapIsEmpty!13371 mapRes!13371))

(declare-fun b!354974 () Bool)

(declare-fun e!217502 () Bool)

(assert (=> b!354974 (= e!217504 (and e!217502 mapRes!13371))))

(declare-fun condMapEmpty!13371 () Bool)

(declare-fun mapDefault!13371 () ValueCell!3611)


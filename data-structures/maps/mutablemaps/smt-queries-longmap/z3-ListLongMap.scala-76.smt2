; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1034 () Bool)

(assert start!1034)

(declare-fun b_free!363 () Bool)

(declare-fun b_next!363 () Bool)

(assert (=> start!1034 (= b_free!363 (not b_next!363))))

(declare-fun tp!1328 () Bool)

(declare-fun b_and!515 () Bool)

(assert (=> start!1034 (= tp!1328 b_and!515)))

(declare-fun b!9051 () Bool)

(declare-fun e!5163 () Bool)

(assert (=> b!9051 (= e!5163 true)))

(declare-fun lt!1962 () (_ BitVec 32))

(declare-datatypes ((array!805 0))(
  ( (array!806 (arr!388 (Array (_ BitVec 32) (_ BitVec 64))) (size!450 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!805)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!805 (_ BitVec 32)) Bool)

(assert (=> b!9051 (arrayForallSeekEntryOrOpenFound!0 lt!1962 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!179 0))(
  ( (Unit!180) )
))
(declare-fun lt!1961 () Unit!179)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!179)

(assert (=> b!9051 (= lt!1961 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1962))))

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!805 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9051 (= lt!1962 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9052 () Bool)

(declare-fun e!5165 () Bool)

(assert (=> b!9052 (= e!5165 (not e!5163))))

(declare-fun res!8298 () Bool)

(assert (=> b!9052 (=> res!8298 e!5163)))

(declare-fun arrayContainsKey!0 (array!805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9052 (= res!8298 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(declare-fun e!5166 () Bool)

(assert (=> b!9052 e!5166))

(declare-fun c!692 () Bool)

(assert (=> b!9052 (= c!692 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!765 0))(
  ( (V!766 (val!226 Int)) )
))
(declare-datatypes ((ValueCell!204 0))(
  ( (ValueCellFull!204 (v!1320 V!765)) (EmptyCell!204) )
))
(declare-datatypes ((array!807 0))(
  ( (array!808 (arr!389 (Array (_ BitVec 32) ValueCell!204)) (size!451 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!807)

(declare-fun minValue!1434 () V!765)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun lt!1960 () Unit!179)

(declare-fun zeroValue!1434 () V!765)

(declare-fun lemmaKeyInListMapIsInArray!67 (array!805 array!807 (_ BitVec 32) (_ BitVec 32) V!765 V!765 (_ BitVec 64) Int) Unit!179)

(assert (=> b!9052 (= lt!1960 (lemmaKeyInListMapIsInArray!67 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!9053 () Bool)

(declare-fun res!8297 () Bool)

(assert (=> b!9053 (=> (not res!8297) (not e!5165))))

(assert (=> b!9053 (= res!8297 (and (= (size!451 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!450 _keys!1806) (size!451 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!9054 () Bool)

(assert (=> b!9054 (= e!5166 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9055 () Bool)

(declare-fun res!8293 () Bool)

(assert (=> b!9055 (=> (not res!8293) (not e!5165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9055 (= res!8293 (validKeyInArray!0 k0!1278))))

(declare-fun mapIsEmpty!641 () Bool)

(declare-fun mapRes!641 () Bool)

(assert (=> mapIsEmpty!641 mapRes!641))

(declare-fun b!9056 () Bool)

(declare-fun res!8299 () Bool)

(assert (=> b!9056 (=> (not res!8299) (not e!5165))))

(declare-datatypes ((tuple2!242 0))(
  ( (tuple2!243 (_1!121 (_ BitVec 64)) (_2!121 V!765)) )
))
(declare-datatypes ((List!267 0))(
  ( (Nil!264) (Cons!263 (h!829 tuple2!242) (t!2408 List!267)) )
))
(declare-datatypes ((ListLongMap!247 0))(
  ( (ListLongMap!248 (toList!139 List!267)) )
))
(declare-fun contains!116 (ListLongMap!247 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!98 (array!805 array!807 (_ BitVec 32) (_ BitVec 32) V!765 V!765 (_ BitVec 32) Int) ListLongMap!247)

(assert (=> b!9056 (= res!8299 (contains!116 (getCurrentListMap!98 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!9057 () Bool)

(declare-fun e!5162 () Bool)

(declare-fun e!5167 () Bool)

(assert (=> b!9057 (= e!5162 (and e!5167 mapRes!641))))

(declare-fun condMapEmpty!641 () Bool)

(declare-fun mapDefault!641 () ValueCell!204)

(assert (=> b!9057 (= condMapEmpty!641 (= (arr!389 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!204)) mapDefault!641)))))

(declare-fun mapNonEmpty!641 () Bool)

(declare-fun tp!1327 () Bool)

(declare-fun e!5168 () Bool)

(assert (=> mapNonEmpty!641 (= mapRes!641 (and tp!1327 e!5168))))

(declare-fun mapRest!641 () (Array (_ BitVec 32) ValueCell!204))

(declare-fun mapKey!641 () (_ BitVec 32))

(declare-fun mapValue!641 () ValueCell!204)

(assert (=> mapNonEmpty!641 (= (arr!389 _values!1492) (store mapRest!641 mapKey!641 mapValue!641))))

(declare-fun res!8294 () Bool)

(assert (=> start!1034 (=> (not res!8294) (not e!5165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1034 (= res!8294 (validMask!0 mask!2250))))

(assert (=> start!1034 e!5165))

(assert (=> start!1034 tp!1328))

(assert (=> start!1034 true))

(declare-fun array_inv!279 (array!807) Bool)

(assert (=> start!1034 (and (array_inv!279 _values!1492) e!5162)))

(declare-fun tp_is_empty!441 () Bool)

(assert (=> start!1034 tp_is_empty!441))

(declare-fun array_inv!280 (array!805) Bool)

(assert (=> start!1034 (array_inv!280 _keys!1806)))

(declare-fun b!9058 () Bool)

(declare-fun res!8295 () Bool)

(assert (=> b!9058 (=> (not res!8295) (not e!5165))))

(assert (=> b!9058 (= res!8295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9059 () Bool)

(assert (=> b!9059 (= e!5168 tp_is_empty!441)))

(declare-fun b!9060 () Bool)

(assert (=> b!9060 (= e!5167 tp_is_empty!441)))

(declare-fun b!9061 () Bool)

(declare-fun res!8296 () Bool)

(assert (=> b!9061 (=> (not res!8296) (not e!5165))))

(declare-datatypes ((List!268 0))(
  ( (Nil!265) (Cons!264 (h!830 (_ BitVec 64)) (t!2409 List!268)) )
))
(declare-fun arrayNoDuplicates!0 (array!805 (_ BitVec 32) List!268) Bool)

(assert (=> b!9061 (= res!8296 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!265))))

(declare-fun b!9062 () Bool)

(assert (=> b!9062 (= e!5166 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(assert (= (and start!1034 res!8294) b!9053))

(assert (= (and b!9053 res!8297) b!9058))

(assert (= (and b!9058 res!8295) b!9061))

(assert (= (and b!9061 res!8296) b!9056))

(assert (= (and b!9056 res!8299) b!9055))

(assert (= (and b!9055 res!8293) b!9052))

(assert (= (and b!9052 c!692) b!9062))

(assert (= (and b!9052 (not c!692)) b!9054))

(assert (= (and b!9052 (not res!8298)) b!9051))

(assert (= (and b!9057 condMapEmpty!641) mapIsEmpty!641))

(assert (= (and b!9057 (not condMapEmpty!641)) mapNonEmpty!641))

(get-info :version)

(assert (= (and mapNonEmpty!641 ((_ is ValueCellFull!204) mapValue!641)) b!9059))

(assert (= (and b!9057 ((_ is ValueCellFull!204) mapDefault!641)) b!9060))

(assert (= start!1034 b!9057))

(declare-fun m!5633 () Bool)

(assert (=> b!9058 m!5633))

(declare-fun m!5635 () Bool)

(assert (=> b!9061 m!5635))

(declare-fun m!5637 () Bool)

(assert (=> b!9056 m!5637))

(assert (=> b!9056 m!5637))

(declare-fun m!5639 () Bool)

(assert (=> b!9056 m!5639))

(declare-fun m!5641 () Bool)

(assert (=> mapNonEmpty!641 m!5641))

(declare-fun m!5643 () Bool)

(assert (=> b!9051 m!5643))

(declare-fun m!5645 () Bool)

(assert (=> b!9051 m!5645))

(declare-fun m!5647 () Bool)

(assert (=> b!9051 m!5647))

(declare-fun m!5649 () Bool)

(assert (=> start!1034 m!5649))

(declare-fun m!5651 () Bool)

(assert (=> start!1034 m!5651))

(declare-fun m!5653 () Bool)

(assert (=> start!1034 m!5653))

(declare-fun m!5655 () Bool)

(assert (=> b!9062 m!5655))

(assert (=> b!9052 m!5655))

(declare-fun m!5657 () Bool)

(assert (=> b!9052 m!5657))

(declare-fun m!5659 () Bool)

(assert (=> b!9055 m!5659))

(check-sat (not b_next!363) (not mapNonEmpty!641) (not b!9058) (not b!9056) (not b!9062) b_and!515 tp_is_empty!441 (not b!9055) (not b!9052) (not start!1034) (not b!9061) (not b!9051))
(check-sat b_and!515 (not b_next!363))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4330 () Bool)

(assert start!4330)

(declare-fun b_free!1173 () Bool)

(declare-fun b_next!1173 () Bool)

(assert (=> start!4330 (= b_free!1173 (not b_next!1173))))

(declare-fun tp!4948 () Bool)

(declare-fun b_and!1991 () Bool)

(assert (=> start!4330 (= tp!4948 b_and!1991)))

(declare-fun b!33401 () Bool)

(declare-fun res!20287 () Bool)

(declare-fun e!21212 () Bool)

(assert (=> b!33401 (=> (not res!20287) (not e!21212))))

(declare-datatypes ((V!1861 0))(
  ( (V!1862 (val!790 Int)) )
))
(declare-datatypes ((ValueCell!564 0))(
  ( (ValueCellFull!564 (v!1882 V!1861)) (EmptyCell!564) )
))
(declare-datatypes ((array!2261 0))(
  ( (array!2262 (arr!1081 (Array (_ BitVec 32) ValueCell!564)) (size!1182 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2261)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2263 0))(
  ( (array!2264 (arr!1082 (Array (_ BitVec 32) (_ BitVec 64))) (size!1183 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2263)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!33401 (= res!20287 (and (= (size!1182 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1183 _keys!1833) (size!1182 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!33402 () Bool)

(declare-fun e!21214 () Bool)

(assert (=> b!33402 (= e!21212 e!21214)))

(declare-fun res!20284 () Bool)

(assert (=> b!33402 (=> (not res!20284) (not e!21214))))

(declare-datatypes ((tuple2!1274 0))(
  ( (tuple2!1275 (_1!647 (_ BitVec 64)) (_2!647 V!1861)) )
))
(declare-datatypes ((List!878 0))(
  ( (Nil!875) (Cons!874 (h!1441 tuple2!1274) (t!3579 List!878)) )
))
(declare-datatypes ((ListLongMap!855 0))(
  ( (ListLongMap!856 (toList!443 List!878)) )
))
(declare-fun lt!12165 () ListLongMap!855)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!383 (ListLongMap!855 (_ BitVec 64)) Bool)

(assert (=> b!33402 (= res!20284 (not (contains!383 lt!12165 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1861)

(declare-fun minValue!1443 () V!1861)

(declare-fun getCurrentListMap!267 (array!2263 array!2261 (_ BitVec 32) (_ BitVec 32) V!1861 V!1861 (_ BitVec 32) Int) ListLongMap!855)

(assert (=> b!33402 (= lt!12165 (getCurrentListMap!267 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!33403 () Bool)

(declare-fun res!20283 () Bool)

(assert (=> b!33403 (=> (not res!20283) (not e!21214))))

(declare-fun arrayContainsKey!0 (array!2263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33403 (= res!20283 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun res!20286 () Bool)

(assert (=> start!4330 (=> (not res!20286) (not e!21212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4330 (= res!20286 (validMask!0 mask!2294))))

(assert (=> start!4330 e!21212))

(assert (=> start!4330 true))

(assert (=> start!4330 tp!4948))

(declare-fun e!21215 () Bool)

(declare-fun array_inv!719 (array!2261) Bool)

(assert (=> start!4330 (and (array_inv!719 _values!1501) e!21215)))

(declare-fun array_inv!720 (array!2263) Bool)

(assert (=> start!4330 (array_inv!720 _keys!1833)))

(declare-fun tp_is_empty!1527 () Bool)

(assert (=> start!4330 tp_is_empty!1527))

(declare-fun mapIsEmpty!1828 () Bool)

(declare-fun mapRes!1828 () Bool)

(assert (=> mapIsEmpty!1828 mapRes!1828))

(declare-fun b!33404 () Bool)

(declare-fun e!21216 () Bool)

(assert (=> b!33404 (= e!21216 tp_is_empty!1527)))

(declare-fun b!33405 () Bool)

(declare-fun e!21213 () Bool)

(assert (=> b!33405 (= e!21213 tp_is_empty!1527)))

(declare-fun b!33406 () Bool)

(declare-fun res!20282 () Bool)

(assert (=> b!33406 (=> (not res!20282) (not e!21212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33406 (= res!20282 (validKeyInArray!0 k0!1304))))

(declare-fun mapNonEmpty!1828 () Bool)

(declare-fun tp!4947 () Bool)

(assert (=> mapNonEmpty!1828 (= mapRes!1828 (and tp!4947 e!21213))))

(declare-fun mapRest!1828 () (Array (_ BitVec 32) ValueCell!564))

(declare-fun mapKey!1828 () (_ BitVec 32))

(declare-fun mapValue!1828 () ValueCell!564)

(assert (=> mapNonEmpty!1828 (= (arr!1081 _values!1501) (store mapRest!1828 mapKey!1828 mapValue!1828))))

(declare-fun b!33407 () Bool)

(assert (=> b!33407 (= e!21214 (not (= (size!1183 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-datatypes ((SeekEntryResult!135 0))(
  ( (MissingZero!135 (index!2662 (_ BitVec 32))) (Found!135 (index!2663 (_ BitVec 32))) (Intermediate!135 (undefined!947 Bool) (index!2664 (_ BitVec 32)) (x!6819 (_ BitVec 32))) (Undefined!135) (MissingVacant!135 (index!2665 (_ BitVec 32))) )
))
(declare-fun lt!12164 () SeekEntryResult!135)

(declare-fun lt!12163 () (_ BitVec 32))

(get-info :version)

(assert (=> b!33407 (and ((_ is Found!135) lt!12164) (= (index!2663 lt!12164) lt!12163))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2263 (_ BitVec 32)) SeekEntryResult!135)

(assert (=> b!33407 (= lt!12164 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!742 0))(
  ( (Unit!743) )
))
(declare-fun lt!12166 () Unit!742)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2263 (_ BitVec 32)) Unit!742)

(assert (=> b!33407 (= lt!12166 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12163 _keys!1833 mask!2294))))

(assert (=> b!33407 (contains!383 lt!12165 (select (arr!1082 _keys!1833) lt!12163))))

(declare-fun lt!12162 () Unit!742)

(declare-fun lemmaValidKeyInArrayIsInListMap!57 (array!2263 array!2261 (_ BitVec 32) (_ BitVec 32) V!1861 V!1861 (_ BitVec 32) Int) Unit!742)

(assert (=> b!33407 (= lt!12162 (lemmaValidKeyInArrayIsInListMap!57 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12163 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2263 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33407 (= lt!12163 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!33408 () Bool)

(declare-fun res!20285 () Bool)

(assert (=> b!33408 (=> (not res!20285) (not e!21212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2263 (_ BitVec 32)) Bool)

(assert (=> b!33408 (= res!20285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!33409 () Bool)

(assert (=> b!33409 (= e!21215 (and e!21216 mapRes!1828))))

(declare-fun condMapEmpty!1828 () Bool)

(declare-fun mapDefault!1828 () ValueCell!564)

(assert (=> b!33409 (= condMapEmpty!1828 (= (arr!1081 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!564)) mapDefault!1828)))))

(declare-fun b!33410 () Bool)

(declare-fun res!20288 () Bool)

(assert (=> b!33410 (=> (not res!20288) (not e!21212))))

(declare-datatypes ((List!879 0))(
  ( (Nil!876) (Cons!875 (h!1442 (_ BitVec 64)) (t!3580 List!879)) )
))
(declare-fun arrayNoDuplicates!0 (array!2263 (_ BitVec 32) List!879) Bool)

(assert (=> b!33410 (= res!20288 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!876))))

(assert (= (and start!4330 res!20286) b!33401))

(assert (= (and b!33401 res!20287) b!33408))

(assert (= (and b!33408 res!20285) b!33410))

(assert (= (and b!33410 res!20288) b!33406))

(assert (= (and b!33406 res!20282) b!33402))

(assert (= (and b!33402 res!20284) b!33403))

(assert (= (and b!33403 res!20283) b!33407))

(assert (= (and b!33409 condMapEmpty!1828) mapIsEmpty!1828))

(assert (= (and b!33409 (not condMapEmpty!1828)) mapNonEmpty!1828))

(assert (= (and mapNonEmpty!1828 ((_ is ValueCellFull!564) mapValue!1828)) b!33405))

(assert (= (and b!33409 ((_ is ValueCellFull!564) mapDefault!1828)) b!33404))

(assert (= start!4330 b!33409))

(declare-fun m!26803 () Bool)

(assert (=> b!33403 m!26803))

(declare-fun m!26805 () Bool)

(assert (=> b!33407 m!26805))

(declare-fun m!26807 () Bool)

(assert (=> b!33407 m!26807))

(declare-fun m!26809 () Bool)

(assert (=> b!33407 m!26809))

(declare-fun m!26811 () Bool)

(assert (=> b!33407 m!26811))

(declare-fun m!26813 () Bool)

(assert (=> b!33407 m!26813))

(assert (=> b!33407 m!26805))

(declare-fun m!26815 () Bool)

(assert (=> b!33407 m!26815))

(declare-fun m!26817 () Bool)

(assert (=> b!33402 m!26817))

(declare-fun m!26819 () Bool)

(assert (=> b!33402 m!26819))

(declare-fun m!26821 () Bool)

(assert (=> b!33406 m!26821))

(declare-fun m!26823 () Bool)

(assert (=> mapNonEmpty!1828 m!26823))

(declare-fun m!26825 () Bool)

(assert (=> start!4330 m!26825))

(declare-fun m!26827 () Bool)

(assert (=> start!4330 m!26827))

(declare-fun m!26829 () Bool)

(assert (=> start!4330 m!26829))

(declare-fun m!26831 () Bool)

(assert (=> b!33410 m!26831))

(declare-fun m!26833 () Bool)

(assert (=> b!33408 m!26833))

(check-sat (not b!33410) (not b!33402) (not b!33407) b_and!1991 (not mapNonEmpty!1828) (not b!33408) tp_is_empty!1527 (not b!33406) (not b!33403) (not start!4330) (not b_next!1173))
(check-sat b_and!1991 (not b_next!1173))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108572 () Bool)

(assert start!108572)

(declare-fun b_free!28083 () Bool)

(declare-fun b_next!28083 () Bool)

(assert (=> start!108572 (= b_free!28083 (not b_next!28083))))

(declare-fun tp!99360 () Bool)

(declare-fun b_and!46153 () Bool)

(assert (=> start!108572 (= tp!99360 b_and!46153)))

(declare-fun b!1281047 () Bool)

(declare-fun res!851053 () Bool)

(declare-fun e!731962 () Bool)

(assert (=> b!1281047 (=> (not res!851053) (not e!731962))))

(declare-datatypes ((array!84471 0))(
  ( (array!84472 (arr!40735 (Array (_ BitVec 32) (_ BitVec 64))) (size!41286 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84471)

(declare-datatypes ((List!29039 0))(
  ( (Nil!29036) (Cons!29035 (h!30244 (_ BitVec 64)) (t!42586 List!29039)) )
))
(declare-fun arrayNoDuplicates!0 (array!84471 (_ BitVec 32) List!29039) Bool)

(assert (=> b!1281047 (= res!851053 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29036))))

(declare-fun b!1281048 () Bool)

(declare-fun e!731964 () Bool)

(declare-fun tp_is_empty!33723 () Bool)

(assert (=> b!1281048 (= e!731964 tp_is_empty!33723)))

(declare-fun b!1281049 () Bool)

(declare-fun res!851052 () Bool)

(assert (=> b!1281049 (=> (not res!851052) (not e!731962))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1281049 (= res!851052 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41286 _keys!1741))))))

(declare-fun b!1281050 () Bool)

(declare-fun e!731961 () Bool)

(assert (=> b!1281050 (= e!731961 tp_is_empty!33723)))

(declare-fun b!1281051 () Bool)

(declare-fun res!851054 () Bool)

(assert (=> b!1281051 (=> (not res!851054) (not e!731962))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84471 (_ BitVec 32)) Bool)

(assert (=> b!1281051 (= res!851054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281052 () Bool)

(declare-fun res!851049 () Bool)

(assert (=> b!1281052 (=> (not res!851049) (not e!731962))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1281052 (= res!851049 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41286 _keys!1741)) (not (= (select (arr!40735 _keys!1741) from!2144) k0!1205))))))

(declare-fun res!851050 () Bool)

(assert (=> start!108572 (=> (not res!851050) (not e!731962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108572 (= res!851050 (validMask!0 mask!2175))))

(assert (=> start!108572 e!731962))

(assert (=> start!108572 tp_is_empty!33723))

(assert (=> start!108572 true))

(declare-datatypes ((V!50067 0))(
  ( (V!50068 (val!16936 Int)) )
))
(declare-datatypes ((ValueCell!15963 0))(
  ( (ValueCellFull!15963 (v!19534 V!50067)) (EmptyCell!15963) )
))
(declare-datatypes ((array!84473 0))(
  ( (array!84474 (arr!40736 (Array (_ BitVec 32) ValueCell!15963)) (size!41287 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84473)

(declare-fun e!731963 () Bool)

(declare-fun array_inv!30897 (array!84473) Bool)

(assert (=> start!108572 (and (array_inv!30897 _values!1445) e!731963)))

(declare-fun array_inv!30898 (array!84471) Bool)

(assert (=> start!108572 (array_inv!30898 _keys!1741)))

(assert (=> start!108572 tp!99360))

(declare-fun b!1281053 () Bool)

(declare-fun res!851048 () Bool)

(assert (=> b!1281053 (=> (not res!851048) (not e!731962))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1281053 (= res!851048 (and (= (size!41287 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41286 _keys!1741) (size!41287 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281054 () Bool)

(declare-fun mapRes!52136 () Bool)

(assert (=> b!1281054 (= e!731963 (and e!731961 mapRes!52136))))

(declare-fun condMapEmpty!52136 () Bool)

(declare-fun mapDefault!52136 () ValueCell!15963)

(assert (=> b!1281054 (= condMapEmpty!52136 (= (arr!40736 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15963)) mapDefault!52136)))))

(declare-fun mapIsEmpty!52136 () Bool)

(assert (=> mapIsEmpty!52136 mapRes!52136))

(declare-fun b!1281055 () Bool)

(assert (=> b!1281055 (= e!731962 (not true))))

(declare-fun minValue!1387 () V!50067)

(declare-fun zeroValue!1387 () V!50067)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21830 0))(
  ( (tuple2!21831 (_1!10925 (_ BitVec 64)) (_2!10925 V!50067)) )
))
(declare-datatypes ((List!29040 0))(
  ( (Nil!29037) (Cons!29036 (h!30245 tuple2!21830) (t!42587 List!29040)) )
))
(declare-datatypes ((ListLongMap!19499 0))(
  ( (ListLongMap!19500 (toList!9765 List!29040)) )
))
(declare-fun contains!7818 (ListLongMap!19499 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4785 (array!84471 array!84473 (_ BitVec 32) (_ BitVec 32) V!50067 V!50067 (_ BitVec 32) Int) ListLongMap!19499)

(assert (=> b!1281055 (contains!7818 (getCurrentListMap!4785 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42371 0))(
  ( (Unit!42372) )
))
(declare-fun lt!576133 () Unit!42371)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!18 (array!84471 array!84473 (_ BitVec 32) (_ BitVec 32) V!50067 V!50067 (_ BitVec 64) (_ BitVec 32) Int) Unit!42371)

(assert (=> b!1281055 (= lt!576133 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!18 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!52136 () Bool)

(declare-fun tp!99359 () Bool)

(assert (=> mapNonEmpty!52136 (= mapRes!52136 (and tp!99359 e!731964))))

(declare-fun mapRest!52136 () (Array (_ BitVec 32) ValueCell!15963))

(declare-fun mapValue!52136 () ValueCell!15963)

(declare-fun mapKey!52136 () (_ BitVec 32))

(assert (=> mapNonEmpty!52136 (= (arr!40736 _values!1445) (store mapRest!52136 mapKey!52136 mapValue!52136))))

(declare-fun b!1281056 () Bool)

(declare-fun res!851051 () Bool)

(assert (=> b!1281056 (=> (not res!851051) (not e!731962))))

(assert (=> b!1281056 (= res!851051 (contains!7818 (getCurrentListMap!4785 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108572 res!851050) b!1281053))

(assert (= (and b!1281053 res!851048) b!1281051))

(assert (= (and b!1281051 res!851054) b!1281047))

(assert (= (and b!1281047 res!851053) b!1281049))

(assert (= (and b!1281049 res!851052) b!1281056))

(assert (= (and b!1281056 res!851051) b!1281052))

(assert (= (and b!1281052 res!851049) b!1281055))

(assert (= (and b!1281054 condMapEmpty!52136) mapIsEmpty!52136))

(assert (= (and b!1281054 (not condMapEmpty!52136)) mapNonEmpty!52136))

(get-info :version)

(assert (= (and mapNonEmpty!52136 ((_ is ValueCellFull!15963) mapValue!52136)) b!1281048))

(assert (= (and b!1281054 ((_ is ValueCellFull!15963) mapDefault!52136)) b!1281050))

(assert (= start!108572 b!1281054))

(declare-fun m!1175567 () Bool)

(assert (=> start!108572 m!1175567))

(declare-fun m!1175569 () Bool)

(assert (=> start!108572 m!1175569))

(declare-fun m!1175571 () Bool)

(assert (=> start!108572 m!1175571))

(declare-fun m!1175573 () Bool)

(assert (=> b!1281055 m!1175573))

(assert (=> b!1281055 m!1175573))

(declare-fun m!1175575 () Bool)

(assert (=> b!1281055 m!1175575))

(declare-fun m!1175577 () Bool)

(assert (=> b!1281055 m!1175577))

(declare-fun m!1175579 () Bool)

(assert (=> b!1281052 m!1175579))

(declare-fun m!1175581 () Bool)

(assert (=> mapNonEmpty!52136 m!1175581))

(declare-fun m!1175583 () Bool)

(assert (=> b!1281051 m!1175583))

(declare-fun m!1175585 () Bool)

(assert (=> b!1281056 m!1175585))

(assert (=> b!1281056 m!1175585))

(declare-fun m!1175587 () Bool)

(assert (=> b!1281056 m!1175587))

(declare-fun m!1175589 () Bool)

(assert (=> b!1281047 m!1175589))

(check-sat b_and!46153 (not b!1281055) (not b!1281056) (not b!1281051) (not mapNonEmpty!52136) (not start!108572) (not b_next!28083) tp_is_empty!33723 (not b!1281047))
(check-sat b_and!46153 (not b_next!28083))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108870 () Bool)

(assert start!108870)

(declare-fun b_free!28347 () Bool)

(declare-fun b_next!28347 () Bool)

(assert (=> start!108870 (= b_free!28347 (not b_next!28347))))

(declare-fun tp!100158 () Bool)

(declare-fun b_and!46423 () Bool)

(assert (=> start!108870 (= tp!100158 b_and!46423)))

(declare-fun b!1285197 () Bool)

(declare-fun res!853865 () Bool)

(declare-fun e!734137 () Bool)

(assert (=> b!1285197 (=> (not res!853865) (not e!734137))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50419 0))(
  ( (V!50420 (val!17068 Int)) )
))
(declare-datatypes ((ValueCell!16095 0))(
  ( (ValueCellFull!16095 (v!19668 V!50419)) (EmptyCell!16095) )
))
(declare-datatypes ((array!84985 0))(
  ( (array!84986 (arr!40990 (Array (_ BitVec 32) ValueCell!16095)) (size!41541 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84985)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84987 0))(
  ( (array!84988 (arr!40991 (Array (_ BitVec 32) (_ BitVec 64))) (size!41542 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84987)

(assert (=> b!1285197 (= res!853865 (and (= (size!41541 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41542 _keys!1741) (size!41541 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285198 () Bool)

(declare-fun e!734138 () Bool)

(declare-fun e!734140 () Bool)

(declare-fun mapRes!52538 () Bool)

(assert (=> b!1285198 (= e!734138 (and e!734140 mapRes!52538))))

(declare-fun condMapEmpty!52538 () Bool)

(declare-fun mapDefault!52538 () ValueCell!16095)

(assert (=> b!1285198 (= condMapEmpty!52538 (= (arr!40990 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16095)) mapDefault!52538)))))

(declare-fun b!1285199 () Bool)

(declare-fun res!853866 () Bool)

(assert (=> b!1285199 (=> (not res!853866) (not e!734137))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1285199 (= res!853866 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41542 _keys!1741))))))

(declare-fun res!853863 () Bool)

(assert (=> start!108870 (=> (not res!853863) (not e!734137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108870 (= res!853863 (validMask!0 mask!2175))))

(assert (=> start!108870 e!734137))

(declare-fun tp_is_empty!33987 () Bool)

(assert (=> start!108870 tp_is_empty!33987))

(assert (=> start!108870 true))

(declare-fun array_inv!31067 (array!84985) Bool)

(assert (=> start!108870 (and (array_inv!31067 _values!1445) e!734138)))

(declare-fun array_inv!31068 (array!84987) Bool)

(assert (=> start!108870 (array_inv!31068 _keys!1741)))

(assert (=> start!108870 tp!100158))

(declare-fun b!1285200 () Bool)

(assert (=> b!1285200 (= e!734137 false)))

(declare-fun minValue!1387 () V!50419)

(declare-fun zeroValue!1387 () V!50419)

(declare-fun lt!576834 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22008 0))(
  ( (tuple2!22009 (_1!11014 (_ BitVec 64)) (_2!11014 V!50419)) )
))
(declare-datatypes ((List!29221 0))(
  ( (Nil!29218) (Cons!29217 (h!30426 tuple2!22008) (t!42772 List!29221)) )
))
(declare-datatypes ((ListLongMap!19677 0))(
  ( (ListLongMap!19678 (toList!9854 List!29221)) )
))
(declare-fun contains!7909 (ListLongMap!19677 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4870 (array!84987 array!84985 (_ BitVec 32) (_ BitVec 32) V!50419 V!50419 (_ BitVec 32) Int) ListLongMap!19677)

(assert (=> b!1285200 (= lt!576834 (contains!7909 (getCurrentListMap!4870 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1285201 () Bool)

(declare-fun e!734139 () Bool)

(assert (=> b!1285201 (= e!734139 tp_is_empty!33987)))

(declare-fun b!1285202 () Bool)

(declare-fun res!853864 () Bool)

(assert (=> b!1285202 (=> (not res!853864) (not e!734137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84987 (_ BitVec 32)) Bool)

(assert (=> b!1285202 (= res!853864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52538 () Bool)

(assert (=> mapIsEmpty!52538 mapRes!52538))

(declare-fun b!1285203 () Bool)

(declare-fun res!853862 () Bool)

(assert (=> b!1285203 (=> (not res!853862) (not e!734137))))

(declare-datatypes ((List!29222 0))(
  ( (Nil!29219) (Cons!29218 (h!30427 (_ BitVec 64)) (t!42773 List!29222)) )
))
(declare-fun arrayNoDuplicates!0 (array!84987 (_ BitVec 32) List!29222) Bool)

(assert (=> b!1285203 (= res!853862 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29219))))

(declare-fun mapNonEmpty!52538 () Bool)

(declare-fun tp!100157 () Bool)

(assert (=> mapNonEmpty!52538 (= mapRes!52538 (and tp!100157 e!734139))))

(declare-fun mapValue!52538 () ValueCell!16095)

(declare-fun mapRest!52538 () (Array (_ BitVec 32) ValueCell!16095))

(declare-fun mapKey!52538 () (_ BitVec 32))

(assert (=> mapNonEmpty!52538 (= (arr!40990 _values!1445) (store mapRest!52538 mapKey!52538 mapValue!52538))))

(declare-fun b!1285204 () Bool)

(assert (=> b!1285204 (= e!734140 tp_is_empty!33987)))

(assert (= (and start!108870 res!853863) b!1285197))

(assert (= (and b!1285197 res!853865) b!1285202))

(assert (= (and b!1285202 res!853864) b!1285203))

(assert (= (and b!1285203 res!853862) b!1285199))

(assert (= (and b!1285199 res!853866) b!1285200))

(assert (= (and b!1285198 condMapEmpty!52538) mapIsEmpty!52538))

(assert (= (and b!1285198 (not condMapEmpty!52538)) mapNonEmpty!52538))

(get-info :version)

(assert (= (and mapNonEmpty!52538 ((_ is ValueCellFull!16095) mapValue!52538)) b!1285201))

(assert (= (and b!1285198 ((_ is ValueCellFull!16095) mapDefault!52538)) b!1285204))

(assert (= start!108870 b!1285198))

(declare-fun m!1178647 () Bool)

(assert (=> b!1285203 m!1178647))

(declare-fun m!1178649 () Bool)

(assert (=> b!1285200 m!1178649))

(assert (=> b!1285200 m!1178649))

(declare-fun m!1178651 () Bool)

(assert (=> b!1285200 m!1178651))

(declare-fun m!1178653 () Bool)

(assert (=> mapNonEmpty!52538 m!1178653))

(declare-fun m!1178655 () Bool)

(assert (=> start!108870 m!1178655))

(declare-fun m!1178657 () Bool)

(assert (=> start!108870 m!1178657))

(declare-fun m!1178659 () Bool)

(assert (=> start!108870 m!1178659))

(declare-fun m!1178661 () Bool)

(assert (=> b!1285202 m!1178661))

(check-sat (not b_next!28347) (not b!1285203) (not b!1285202) tp_is_empty!33987 (not start!108870) (not b!1285200) (not mapNonEmpty!52538) b_and!46423)
(check-sat b_and!46423 (not b_next!28347))

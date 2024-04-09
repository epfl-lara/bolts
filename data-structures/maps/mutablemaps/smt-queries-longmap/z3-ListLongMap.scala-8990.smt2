; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108738 () Bool)

(assert start!108738)

(declare-fun b_free!28215 () Bool)

(declare-fun b_next!28215 () Bool)

(assert (=> start!108738 (= b_free!28215 (not b_next!28215))))

(declare-fun tp!99762 () Bool)

(declare-fun b_and!46291 () Bool)

(assert (=> start!108738 (= tp!99762 b_and!46291)))

(declare-fun mapIsEmpty!52340 () Bool)

(declare-fun mapRes!52340 () Bool)

(assert (=> mapIsEmpty!52340 mapRes!52340))

(declare-fun b!1283210 () Bool)

(declare-fun res!852471 () Bool)

(declare-fun e!733150 () Bool)

(assert (=> b!1283210 (=> (not res!852471) (not e!733150))))

(declare-datatypes ((array!84729 0))(
  ( (array!84730 (arr!40862 (Array (_ BitVec 32) (_ BitVec 64))) (size!41413 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84729)

(declare-datatypes ((List!29126 0))(
  ( (Nil!29123) (Cons!29122 (h!30331 (_ BitVec 64)) (t!42677 List!29126)) )
))
(declare-fun arrayNoDuplicates!0 (array!84729 (_ BitVec 32) List!29126) Bool)

(assert (=> b!1283210 (= res!852471 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29123))))

(declare-fun b!1283211 () Bool)

(declare-fun res!852477 () Bool)

(assert (=> b!1283211 (=> (not res!852477) (not e!733150))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1283211 (= res!852477 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41413 _keys!1741))))))

(declare-fun b!1283212 () Bool)

(declare-fun res!852474 () Bool)

(assert (=> b!1283212 (=> (not res!852474) (not e!733150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283212 (= res!852474 (validKeyInArray!0 (select (arr!40862 _keys!1741) from!2144)))))

(declare-fun b!1283213 () Bool)

(declare-fun res!852473 () Bool)

(assert (=> b!1283213 (=> (not res!852473) (not e!733150))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1283213 (= res!852473 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41413 _keys!1741))))))

(declare-fun b!1283214 () Bool)

(declare-fun e!733146 () Bool)

(declare-fun tp_is_empty!33855 () Bool)

(assert (=> b!1283214 (= e!733146 tp_is_empty!33855)))

(declare-fun b!1283215 () Bool)

(declare-fun res!852470 () Bool)

(assert (=> b!1283215 (=> (not res!852470) (not e!733150))))

(declare-datatypes ((V!50243 0))(
  ( (V!50244 (val!17002 Int)) )
))
(declare-fun minValue!1387 () V!50243)

(declare-fun zeroValue!1387 () V!50243)

(declare-datatypes ((ValueCell!16029 0))(
  ( (ValueCellFull!16029 (v!19602 V!50243)) (EmptyCell!16029) )
))
(declare-datatypes ((array!84731 0))(
  ( (array!84732 (arr!40863 (Array (_ BitVec 32) ValueCell!16029)) (size!41414 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84731)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21916 0))(
  ( (tuple2!21917 (_1!10968 (_ BitVec 64)) (_2!10968 V!50243)) )
))
(declare-datatypes ((List!29127 0))(
  ( (Nil!29124) (Cons!29123 (h!30332 tuple2!21916) (t!42678 List!29127)) )
))
(declare-datatypes ((ListLongMap!19585 0))(
  ( (ListLongMap!19586 (toList!9808 List!29127)) )
))
(declare-fun contains!7863 (ListLongMap!19585 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4826 (array!84729 array!84731 (_ BitVec 32) (_ BitVec 32) V!50243 V!50243 (_ BitVec 32) Int) ListLongMap!19585)

(assert (=> b!1283215 (= res!852470 (contains!7863 (getCurrentListMap!4826 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1283216 () Bool)

(assert (=> b!1283216 (= e!733150 (not true))))

(declare-fun lt!576570 () ListLongMap!19585)

(assert (=> b!1283216 (contains!7863 lt!576570 k0!1205)))

(declare-datatypes ((Unit!42407 0))(
  ( (Unit!42408) )
))
(declare-fun lt!576569 () Unit!42407)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!5 ((_ BitVec 64) (_ BitVec 64) V!50243 ListLongMap!19585) Unit!42407)

(assert (=> b!1283216 (= lt!576569 (lemmaInListMapAfterAddingDiffThenInBefore!5 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576570))))

(declare-fun +!4256 (ListLongMap!19585 tuple2!21916) ListLongMap!19585)

(declare-fun getCurrentListMapNoExtraKeys!5967 (array!84729 array!84731 (_ BitVec 32) (_ BitVec 32) V!50243 V!50243 (_ BitVec 32) Int) ListLongMap!19585)

(assert (=> b!1283216 (= lt!576570 (+!4256 (getCurrentListMapNoExtraKeys!5967 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21917 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283217 () Bool)

(declare-fun res!852472 () Bool)

(assert (=> b!1283217 (=> (not res!852472) (not e!733150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84729 (_ BitVec 32)) Bool)

(assert (=> b!1283217 (= res!852472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283218 () Bool)

(declare-fun res!852469 () Bool)

(assert (=> b!1283218 (=> (not res!852469) (not e!733150))))

(assert (=> b!1283218 (= res!852469 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283219 () Bool)

(declare-fun e!733148 () Bool)

(declare-fun e!733149 () Bool)

(assert (=> b!1283219 (= e!733148 (and e!733149 mapRes!52340))))

(declare-fun condMapEmpty!52340 () Bool)

(declare-fun mapDefault!52340 () ValueCell!16029)

(assert (=> b!1283219 (= condMapEmpty!52340 (= (arr!40863 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16029)) mapDefault!52340)))))

(declare-fun b!1283220 () Bool)

(declare-fun res!852476 () Bool)

(assert (=> b!1283220 (=> (not res!852476) (not e!733150))))

(assert (=> b!1283220 (= res!852476 (and (= (size!41414 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41413 _keys!1741) (size!41414 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52340 () Bool)

(declare-fun tp!99761 () Bool)

(assert (=> mapNonEmpty!52340 (= mapRes!52340 (and tp!99761 e!733146))))

(declare-fun mapKey!52340 () (_ BitVec 32))

(declare-fun mapValue!52340 () ValueCell!16029)

(declare-fun mapRest!52340 () (Array (_ BitVec 32) ValueCell!16029))

(assert (=> mapNonEmpty!52340 (= (arr!40863 _values!1445) (store mapRest!52340 mapKey!52340 mapValue!52340))))

(declare-fun b!1283221 () Bool)

(assert (=> b!1283221 (= e!733149 tp_is_empty!33855)))

(declare-fun res!852475 () Bool)

(assert (=> start!108738 (=> (not res!852475) (not e!733150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108738 (= res!852475 (validMask!0 mask!2175))))

(assert (=> start!108738 e!733150))

(assert (=> start!108738 tp_is_empty!33855))

(assert (=> start!108738 true))

(declare-fun array_inv!30979 (array!84731) Bool)

(assert (=> start!108738 (and (array_inv!30979 _values!1445) e!733148)))

(declare-fun array_inv!30980 (array!84729) Bool)

(assert (=> start!108738 (array_inv!30980 _keys!1741)))

(assert (=> start!108738 tp!99762))

(assert (= (and start!108738 res!852475) b!1283220))

(assert (= (and b!1283220 res!852476) b!1283217))

(assert (= (and b!1283217 res!852472) b!1283210))

(assert (= (and b!1283210 res!852471) b!1283211))

(assert (= (and b!1283211 res!852477) b!1283215))

(assert (= (and b!1283215 res!852470) b!1283213))

(assert (= (and b!1283213 res!852473) b!1283212))

(assert (= (and b!1283212 res!852474) b!1283218))

(assert (= (and b!1283218 res!852469) b!1283216))

(assert (= (and b!1283219 condMapEmpty!52340) mapIsEmpty!52340))

(assert (= (and b!1283219 (not condMapEmpty!52340)) mapNonEmpty!52340))

(get-info :version)

(assert (= (and mapNonEmpty!52340 ((_ is ValueCellFull!16029) mapValue!52340)) b!1283214))

(assert (= (and b!1283219 ((_ is ValueCellFull!16029) mapDefault!52340)) b!1283221))

(assert (= start!108738 b!1283219))

(declare-fun m!1177207 () Bool)

(assert (=> b!1283212 m!1177207))

(assert (=> b!1283212 m!1177207))

(declare-fun m!1177209 () Bool)

(assert (=> b!1283212 m!1177209))

(declare-fun m!1177211 () Bool)

(assert (=> b!1283210 m!1177211))

(declare-fun m!1177213 () Bool)

(assert (=> b!1283217 m!1177213))

(declare-fun m!1177215 () Bool)

(assert (=> start!108738 m!1177215))

(declare-fun m!1177217 () Bool)

(assert (=> start!108738 m!1177217))

(declare-fun m!1177219 () Bool)

(assert (=> start!108738 m!1177219))

(declare-fun m!1177221 () Bool)

(assert (=> b!1283216 m!1177221))

(declare-fun m!1177223 () Bool)

(assert (=> b!1283216 m!1177223))

(declare-fun m!1177225 () Bool)

(assert (=> b!1283216 m!1177225))

(assert (=> b!1283216 m!1177225))

(declare-fun m!1177227 () Bool)

(assert (=> b!1283216 m!1177227))

(declare-fun m!1177229 () Bool)

(assert (=> mapNonEmpty!52340 m!1177229))

(declare-fun m!1177231 () Bool)

(assert (=> b!1283215 m!1177231))

(assert (=> b!1283215 m!1177231))

(declare-fun m!1177233 () Bool)

(assert (=> b!1283215 m!1177233))

(check-sat tp_is_empty!33855 (not b_next!28215) (not mapNonEmpty!52340) (not b!1283216) (not b!1283217) (not b!1283212) (not b!1283215) (not b!1283210) b_and!46291 (not start!108738))
(check-sat b_and!46291 (not b_next!28215))

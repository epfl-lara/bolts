; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108828 () Bool)

(assert start!108828)

(declare-fun b_free!28305 () Bool)

(declare-fun b_next!28305 () Bool)

(assert (=> start!108828 (= b_free!28305 (not b_next!28305))))

(declare-fun tp!100032 () Bool)

(declare-fun b_and!46381 () Bool)

(assert (=> start!108828 (= tp!100032 b_and!46381)))

(declare-fun b!1284594 () Bool)

(declare-fun res!853451 () Bool)

(declare-fun e!733823 () Bool)

(assert (=> b!1284594 (=> (not res!853451) (not e!733823))))

(declare-datatypes ((array!84905 0))(
  ( (array!84906 (arr!40950 (Array (_ BitVec 32) (_ BitVec 64))) (size!41501 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84905)

(declare-datatypes ((List!29189 0))(
  ( (Nil!29186) (Cons!29185 (h!30394 (_ BitVec 64)) (t!42740 List!29189)) )
))
(declare-fun arrayNoDuplicates!0 (array!84905 (_ BitVec 32) List!29189) Bool)

(assert (=> b!1284594 (= res!853451 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29186))))

(declare-fun b!1284595 () Bool)

(declare-fun e!733821 () Bool)

(declare-fun tp_is_empty!33945 () Bool)

(assert (=> b!1284595 (= e!733821 tp_is_empty!33945)))

(declare-fun b!1284596 () Bool)

(declare-fun e!733824 () Bool)

(assert (=> b!1284596 (= e!733824 tp_is_empty!33945)))

(declare-fun b!1284597 () Bool)

(declare-fun res!853448 () Bool)

(assert (=> b!1284597 (=> (not res!853448) (not e!733823))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1284597 (= res!853448 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41501 _keys!1741))))))

(declare-fun res!853449 () Bool)

(assert (=> start!108828 (=> (not res!853449) (not e!733823))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108828 (= res!853449 (validMask!0 mask!2175))))

(assert (=> start!108828 e!733823))

(assert (=> start!108828 tp_is_empty!33945))

(assert (=> start!108828 true))

(declare-datatypes ((V!50363 0))(
  ( (V!50364 (val!17047 Int)) )
))
(declare-datatypes ((ValueCell!16074 0))(
  ( (ValueCellFull!16074 (v!19647 V!50363)) (EmptyCell!16074) )
))
(declare-datatypes ((array!84907 0))(
  ( (array!84908 (arr!40951 (Array (_ BitVec 32) ValueCell!16074)) (size!41502 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84907)

(declare-fun e!733822 () Bool)

(declare-fun array_inv!31039 (array!84907) Bool)

(assert (=> start!108828 (and (array_inv!31039 _values!1445) e!733822)))

(declare-fun array_inv!31040 (array!84905) Bool)

(assert (=> start!108828 (array_inv!31040 _keys!1741)))

(assert (=> start!108828 tp!100032))

(declare-fun b!1284598 () Bool)

(declare-fun res!853452 () Bool)

(assert (=> b!1284598 (=> (not res!853452) (not e!733823))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284598 (= res!853452 (and (= (size!41502 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41501 _keys!1741) (size!41502 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284599 () Bool)

(assert (=> b!1284599 (= e!733823 false)))

(declare-fun minValue!1387 () V!50363)

(declare-fun zeroValue!1387 () V!50363)

(declare-fun lt!576780 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21978 0))(
  ( (tuple2!21979 (_1!10999 (_ BitVec 64)) (_2!10999 V!50363)) )
))
(declare-datatypes ((List!29190 0))(
  ( (Nil!29187) (Cons!29186 (h!30395 tuple2!21978) (t!42741 List!29190)) )
))
(declare-datatypes ((ListLongMap!19647 0))(
  ( (ListLongMap!19648 (toList!9839 List!29190)) )
))
(declare-fun contains!7894 (ListLongMap!19647 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4857 (array!84905 array!84907 (_ BitVec 32) (_ BitVec 32) V!50363 V!50363 (_ BitVec 32) Int) ListLongMap!19647)

(assert (=> b!1284599 (= lt!576780 (contains!7894 (getCurrentListMap!4857 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1284600 () Bool)

(declare-fun res!853450 () Bool)

(assert (=> b!1284600 (=> (not res!853450) (not e!733823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84905 (_ BitVec 32)) Bool)

(assert (=> b!1284600 (= res!853450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52475 () Bool)

(declare-fun mapRes!52475 () Bool)

(declare-fun tp!100031 () Bool)

(assert (=> mapNonEmpty!52475 (= mapRes!52475 (and tp!100031 e!733821))))

(declare-fun mapValue!52475 () ValueCell!16074)

(declare-fun mapKey!52475 () (_ BitVec 32))

(declare-fun mapRest!52475 () (Array (_ BitVec 32) ValueCell!16074))

(assert (=> mapNonEmpty!52475 (= (arr!40951 _values!1445) (store mapRest!52475 mapKey!52475 mapValue!52475))))

(declare-fun b!1284601 () Bool)

(assert (=> b!1284601 (= e!733822 (and e!733824 mapRes!52475))))

(declare-fun condMapEmpty!52475 () Bool)

(declare-fun mapDefault!52475 () ValueCell!16074)

(assert (=> b!1284601 (= condMapEmpty!52475 (= (arr!40951 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16074)) mapDefault!52475)))))

(declare-fun mapIsEmpty!52475 () Bool)

(assert (=> mapIsEmpty!52475 mapRes!52475))

(assert (= (and start!108828 res!853449) b!1284598))

(assert (= (and b!1284598 res!853452) b!1284600))

(assert (= (and b!1284600 res!853450) b!1284594))

(assert (= (and b!1284594 res!853451) b!1284597))

(assert (= (and b!1284597 res!853448) b!1284599))

(assert (= (and b!1284601 condMapEmpty!52475) mapIsEmpty!52475))

(assert (= (and b!1284601 (not condMapEmpty!52475)) mapNonEmpty!52475))

(get-info :version)

(assert (= (and mapNonEmpty!52475 ((_ is ValueCellFull!16074) mapValue!52475)) b!1284595))

(assert (= (and b!1284601 ((_ is ValueCellFull!16074) mapDefault!52475)) b!1284596))

(assert (= start!108828 b!1284601))

(declare-fun m!1178239 () Bool)

(assert (=> b!1284599 m!1178239))

(assert (=> b!1284599 m!1178239))

(declare-fun m!1178241 () Bool)

(assert (=> b!1284599 m!1178241))

(declare-fun m!1178243 () Bool)

(assert (=> mapNonEmpty!52475 m!1178243))

(declare-fun m!1178245 () Bool)

(assert (=> b!1284600 m!1178245))

(declare-fun m!1178247 () Bool)

(assert (=> start!108828 m!1178247))

(declare-fun m!1178249 () Bool)

(assert (=> start!108828 m!1178249))

(declare-fun m!1178251 () Bool)

(assert (=> start!108828 m!1178251))

(declare-fun m!1178253 () Bool)

(assert (=> b!1284594 m!1178253))

(check-sat (not start!108828) tp_is_empty!33945 (not b!1284600) (not b_next!28305) (not mapNonEmpty!52475) (not b!1284599) (not b!1284594) b_and!46381)
(check-sat b_and!46381 (not b_next!28305))

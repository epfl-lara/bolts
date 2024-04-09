; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108846 () Bool)

(assert start!108846)

(declare-fun b_free!28323 () Bool)

(declare-fun b_next!28323 () Bool)

(assert (=> start!108846 (= b_free!28323 (not b_next!28323))))

(declare-fun tp!100086 () Bool)

(declare-fun b_and!46399 () Bool)

(assert (=> start!108846 (= tp!100086 b_and!46399)))

(declare-fun b!1284857 () Bool)

(declare-fun res!853637 () Bool)

(declare-fun e!733957 () Bool)

(assert (=> b!1284857 (=> (not res!853637) (not e!733957))))

(declare-datatypes ((array!84941 0))(
  ( (array!84942 (arr!40968 (Array (_ BitVec 32) (_ BitVec 64))) (size!41519 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84941)

(declare-datatypes ((List!29204 0))(
  ( (Nil!29201) (Cons!29200 (h!30409 (_ BitVec 64)) (t!42755 List!29204)) )
))
(declare-fun arrayNoDuplicates!0 (array!84941 (_ BitVec 32) List!29204) Bool)

(assert (=> b!1284857 (= res!853637 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29201))))

(declare-fun b!1284858 () Bool)

(declare-fun res!853632 () Bool)

(assert (=> b!1284858 (=> (not res!853632) (not e!733957))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1284858 (= res!853632 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41519 _keys!1741))))))

(declare-fun b!1284859 () Bool)

(declare-fun res!853633 () Bool)

(assert (=> b!1284859 (=> (not res!853633) (not e!733957))))

(assert (=> b!1284859 (= res!853633 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41519 _keys!1741))))))

(declare-fun b!1284860 () Bool)

(declare-fun e!733958 () Bool)

(declare-fun tp_is_empty!33963 () Bool)

(assert (=> b!1284860 (= e!733958 tp_is_empty!33963)))

(declare-fun mapNonEmpty!52502 () Bool)

(declare-fun mapRes!52502 () Bool)

(declare-fun tp!100085 () Bool)

(assert (=> mapNonEmpty!52502 (= mapRes!52502 (and tp!100085 e!733958))))

(declare-fun mapKey!52502 () (_ BitVec 32))

(declare-datatypes ((V!50387 0))(
  ( (V!50388 (val!17056 Int)) )
))
(declare-datatypes ((ValueCell!16083 0))(
  ( (ValueCellFull!16083 (v!19656 V!50387)) (EmptyCell!16083) )
))
(declare-fun mapRest!52502 () (Array (_ BitVec 32) ValueCell!16083))

(declare-datatypes ((array!84943 0))(
  ( (array!84944 (arr!40969 (Array (_ BitVec 32) ValueCell!16083)) (size!41520 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84943)

(declare-fun mapValue!52502 () ValueCell!16083)

(assert (=> mapNonEmpty!52502 (= (arr!40969 _values!1445) (store mapRest!52502 mapKey!52502 mapValue!52502))))

(declare-fun b!1284861 () Bool)

(declare-fun res!853630 () Bool)

(assert (=> b!1284861 (=> (not res!853630) (not e!733957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284861 (= res!853630 (validKeyInArray!0 (select (arr!40968 _keys!1741) from!2144)))))

(declare-fun b!1284862 () Bool)

(declare-fun res!853634 () Bool)

(assert (=> b!1284862 (=> (not res!853634) (not e!733957))))

(declare-fun minValue!1387 () V!50387)

(declare-fun zeroValue!1387 () V!50387)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21990 0))(
  ( (tuple2!21991 (_1!11005 (_ BitVec 64)) (_2!11005 V!50387)) )
))
(declare-datatypes ((List!29205 0))(
  ( (Nil!29202) (Cons!29201 (h!30410 tuple2!21990) (t!42756 List!29205)) )
))
(declare-datatypes ((ListLongMap!19659 0))(
  ( (ListLongMap!19660 (toList!9845 List!29205)) )
))
(declare-fun contains!7900 (ListLongMap!19659 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4863 (array!84941 array!84943 (_ BitVec 32) (_ BitVec 32) V!50387 V!50387 (_ BitVec 32) Int) ListLongMap!19659)

(assert (=> b!1284862 (= res!853634 (contains!7900 (getCurrentListMap!4863 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!853631 () Bool)

(assert (=> start!108846 (=> (not res!853631) (not e!733957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108846 (= res!853631 (validMask!0 mask!2175))))

(assert (=> start!108846 e!733957))

(assert (=> start!108846 tp_is_empty!33963))

(assert (=> start!108846 true))

(declare-fun e!733959 () Bool)

(declare-fun array_inv!31051 (array!84943) Bool)

(assert (=> start!108846 (and (array_inv!31051 _values!1445) e!733959)))

(declare-fun array_inv!31052 (array!84941) Bool)

(assert (=> start!108846 (array_inv!31052 _keys!1741)))

(assert (=> start!108846 tp!100086))

(declare-fun b!1284863 () Bool)

(declare-fun res!853638 () Bool)

(assert (=> b!1284863 (=> (not res!853638) (not e!733957))))

(assert (=> b!1284863 (= res!853638 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1284864 () Bool)

(declare-fun e!733956 () Bool)

(assert (=> b!1284864 (= e!733956 tp_is_empty!33963)))

(declare-fun b!1284865 () Bool)

(assert (=> b!1284865 (= e!733959 (and e!733956 mapRes!52502))))

(declare-fun condMapEmpty!52502 () Bool)

(declare-fun mapDefault!52502 () ValueCell!16083)

(assert (=> b!1284865 (= condMapEmpty!52502 (= (arr!40969 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16083)) mapDefault!52502)))))

(declare-fun b!1284866 () Bool)

(declare-fun res!853635 () Bool)

(assert (=> b!1284866 (=> (not res!853635) (not e!733957))))

(assert (=> b!1284866 (= res!853635 (and (= (size!41520 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41519 _keys!1741) (size!41520 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284867 () Bool)

(declare-fun res!853636 () Bool)

(assert (=> b!1284867 (=> (not res!853636) (not e!733957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84941 (_ BitVec 32)) Bool)

(assert (=> b!1284867 (= res!853636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52502 () Bool)

(assert (=> mapIsEmpty!52502 mapRes!52502))

(declare-fun b!1284868 () Bool)

(assert (=> b!1284868 (= e!733957 false)))

(declare-fun lt!576798 () Bool)

(declare-fun +!4274 (ListLongMap!19659 tuple2!21990) ListLongMap!19659)

(declare-fun getCurrentListMapNoExtraKeys!5985 (array!84941 array!84943 (_ BitVec 32) (_ BitVec 32) V!50387 V!50387 (_ BitVec 32) Int) ListLongMap!19659)

(assert (=> b!1284868 (= lt!576798 (contains!7900 (+!4274 (getCurrentListMapNoExtraKeys!5985 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21991 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(assert (= (and start!108846 res!853631) b!1284866))

(assert (= (and b!1284866 res!853635) b!1284867))

(assert (= (and b!1284867 res!853636) b!1284857))

(assert (= (and b!1284857 res!853637) b!1284859))

(assert (= (and b!1284859 res!853633) b!1284862))

(assert (= (and b!1284862 res!853634) b!1284858))

(assert (= (and b!1284858 res!853632) b!1284861))

(assert (= (and b!1284861 res!853630) b!1284863))

(assert (= (and b!1284863 res!853638) b!1284868))

(assert (= (and b!1284865 condMapEmpty!52502) mapIsEmpty!52502))

(assert (= (and b!1284865 (not condMapEmpty!52502)) mapNonEmpty!52502))

(get-info :version)

(assert (= (and mapNonEmpty!52502 ((_ is ValueCellFull!16083) mapValue!52502)) b!1284860))

(assert (= (and b!1284865 ((_ is ValueCellFull!16083) mapDefault!52502)) b!1284864))

(assert (= start!108846 b!1284865))

(declare-fun m!1178405 () Bool)

(assert (=> mapNonEmpty!52502 m!1178405))

(declare-fun m!1178407 () Bool)

(assert (=> b!1284862 m!1178407))

(assert (=> b!1284862 m!1178407))

(declare-fun m!1178409 () Bool)

(assert (=> b!1284862 m!1178409))

(declare-fun m!1178411 () Bool)

(assert (=> b!1284861 m!1178411))

(assert (=> b!1284861 m!1178411))

(declare-fun m!1178413 () Bool)

(assert (=> b!1284861 m!1178413))

(declare-fun m!1178415 () Bool)

(assert (=> b!1284857 m!1178415))

(declare-fun m!1178417 () Bool)

(assert (=> b!1284867 m!1178417))

(declare-fun m!1178419 () Bool)

(assert (=> b!1284868 m!1178419))

(assert (=> b!1284868 m!1178419))

(declare-fun m!1178421 () Bool)

(assert (=> b!1284868 m!1178421))

(assert (=> b!1284868 m!1178421))

(declare-fun m!1178423 () Bool)

(assert (=> b!1284868 m!1178423))

(declare-fun m!1178425 () Bool)

(assert (=> start!108846 m!1178425))

(declare-fun m!1178427 () Bool)

(assert (=> start!108846 m!1178427))

(declare-fun m!1178429 () Bool)

(assert (=> start!108846 m!1178429))

(check-sat (not mapNonEmpty!52502) b_and!46399 (not b!1284868) (not b!1284867) (not start!108846) (not b!1284857) (not b_next!28323) tp_is_empty!33963 (not b!1284862) (not b!1284861))
(check-sat b_and!46399 (not b_next!28323))

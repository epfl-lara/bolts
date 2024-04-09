; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109440 () Bool)

(assert start!109440)

(declare-fun b_free!28893 () Bool)

(declare-fun b_next!28893 () Bool)

(assert (=> start!109440 (= b_free!28893 (not b_next!28893))))

(declare-fun tp!101798 () Bool)

(declare-fun b_and!46993 () Bool)

(assert (=> start!109440 (= tp!101798 b_and!46993)))

(declare-fun b!1295097 () Bool)

(declare-fun res!860820 () Bool)

(declare-fun e!738990 () Bool)

(assert (=> b!1295097 (=> (not res!860820) (not e!738990))))

(declare-datatypes ((array!86049 0))(
  ( (array!86050 (arr!41521 (Array (_ BitVec 32) (_ BitVec 64))) (size!42072 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86049)

(declare-datatypes ((List!29645 0))(
  ( (Nil!29642) (Cons!29641 (h!30850 (_ BitVec 64)) (t!43216 List!29645)) )
))
(declare-fun arrayNoDuplicates!0 (array!86049 (_ BitVec 32) List!29645) Bool)

(assert (=> b!1295097 (= res!860820 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29642))))

(declare-fun b!1295098 () Bool)

(declare-fun res!860819 () Bool)

(assert (=> b!1295098 (=> (not res!860819) (not e!738990))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295098 (= res!860819 (not (validKeyInArray!0 (select (arr!41521 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!53360 () Bool)

(declare-fun mapRes!53360 () Bool)

(declare-fun tp!101799 () Bool)

(declare-fun e!738986 () Bool)

(assert (=> mapNonEmpty!53360 (= mapRes!53360 (and tp!101799 e!738986))))

(declare-datatypes ((V!51147 0))(
  ( (V!51148 (val!17341 Int)) )
))
(declare-datatypes ((ValueCell!16368 0))(
  ( (ValueCellFull!16368 (v!19942 V!51147)) (EmptyCell!16368) )
))
(declare-fun mapRest!53360 () (Array (_ BitVec 32) ValueCell!16368))

(declare-datatypes ((array!86051 0))(
  ( (array!86052 (arr!41522 (Array (_ BitVec 32) ValueCell!16368)) (size!42073 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86051)

(declare-fun mapValue!53360 () ValueCell!16368)

(declare-fun mapKey!53360 () (_ BitVec 32))

(assert (=> mapNonEmpty!53360 (= (arr!41522 _values!1445) (store mapRest!53360 mapKey!53360 mapValue!53360))))

(declare-fun b!1295099 () Bool)

(declare-fun res!860822 () Bool)

(assert (=> b!1295099 (=> (not res!860822) (not e!738990))))

(declare-fun minValue!1387 () V!51147)

(declare-fun zeroValue!1387 () V!51147)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22476 0))(
  ( (tuple2!22477 (_1!11248 (_ BitVec 64)) (_2!11248 V!51147)) )
))
(declare-datatypes ((List!29646 0))(
  ( (Nil!29643) (Cons!29642 (h!30851 tuple2!22476) (t!43217 List!29646)) )
))
(declare-datatypes ((ListLongMap!20145 0))(
  ( (ListLongMap!20146 (toList!10088 List!29646)) )
))
(declare-fun contains!8144 (ListLongMap!20145 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5069 (array!86049 array!86051 (_ BitVec 32) (_ BitVec 32) V!51147 V!51147 (_ BitVec 32) Int) ListLongMap!20145)

(assert (=> b!1295099 (= res!860822 (contains!8144 (getCurrentListMap!5069 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1295100 () Bool)

(declare-fun e!738991 () Bool)

(declare-fun tp_is_empty!34533 () Bool)

(assert (=> b!1295100 (= e!738991 tp_is_empty!34533)))

(declare-fun b!1295102 () Bool)

(declare-fun res!860816 () Bool)

(assert (=> b!1295102 (=> (not res!860816) (not e!738990))))

(assert (=> b!1295102 (= res!860816 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42072 _keys!1741))))))

(declare-fun b!1295103 () Bool)

(declare-fun e!738988 () Bool)

(assert (=> b!1295103 (= e!738990 (not e!738988))))

(declare-fun res!860821 () Bool)

(assert (=> b!1295103 (=> res!860821 e!738988)))

(assert (=> b!1295103 (= res!860821 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295103 (not (contains!8144 (ListLongMap!20146 Nil!29643) k0!1205))))

(declare-datatypes ((Unit!42843 0))(
  ( (Unit!42844) )
))
(declare-fun lt!579775 () Unit!42843)

(declare-fun emptyContainsNothing!177 ((_ BitVec 64)) Unit!42843)

(assert (=> b!1295103 (= lt!579775 (emptyContainsNothing!177 k0!1205))))

(declare-fun b!1295104 () Bool)

(declare-fun res!860818 () Bool)

(assert (=> b!1295104 (=> (not res!860818) (not e!738990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86049 (_ BitVec 32)) Bool)

(assert (=> b!1295104 (= res!860818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295105 () Bool)

(declare-fun res!860823 () Bool)

(assert (=> b!1295105 (=> (not res!860823) (not e!738990))))

(assert (=> b!1295105 (= res!860823 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42072 _keys!1741))))))

(declare-fun mapIsEmpty!53360 () Bool)

(assert (=> mapIsEmpty!53360 mapRes!53360))

(declare-fun b!1295106 () Bool)

(assert (=> b!1295106 (= e!738986 tp_is_empty!34533)))

(declare-fun b!1295101 () Bool)

(assert (=> b!1295101 (= e!738988 true)))

(declare-fun lt!579774 () ListLongMap!20145)

(declare-fun +!4392 (ListLongMap!20145 tuple2!22476) ListLongMap!20145)

(assert (=> b!1295101 (not (contains!8144 (+!4392 lt!579774 (tuple2!22477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579773 () Unit!42843)

(declare-fun addStillNotContains!437 (ListLongMap!20145 (_ BitVec 64) V!51147 (_ BitVec 64)) Unit!42843)

(assert (=> b!1295101 (= lt!579773 (addStillNotContains!437 lt!579774 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6108 (array!86049 array!86051 (_ BitVec 32) (_ BitVec 32) V!51147 V!51147 (_ BitVec 32) Int) ListLongMap!20145)

(assert (=> b!1295101 (= lt!579774 (getCurrentListMapNoExtraKeys!6108 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun res!860815 () Bool)

(assert (=> start!109440 (=> (not res!860815) (not e!738990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109440 (= res!860815 (validMask!0 mask!2175))))

(assert (=> start!109440 e!738990))

(assert (=> start!109440 tp_is_empty!34533))

(assert (=> start!109440 true))

(declare-fun e!738989 () Bool)

(declare-fun array_inv!31421 (array!86051) Bool)

(assert (=> start!109440 (and (array_inv!31421 _values!1445) e!738989)))

(declare-fun array_inv!31422 (array!86049) Bool)

(assert (=> start!109440 (array_inv!31422 _keys!1741)))

(assert (=> start!109440 tp!101798))

(declare-fun b!1295107 () Bool)

(assert (=> b!1295107 (= e!738989 (and e!738991 mapRes!53360))))

(declare-fun condMapEmpty!53360 () Bool)

(declare-fun mapDefault!53360 () ValueCell!16368)

(assert (=> b!1295107 (= condMapEmpty!53360 (= (arr!41522 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16368)) mapDefault!53360)))))

(declare-fun b!1295108 () Bool)

(declare-fun res!860817 () Bool)

(assert (=> b!1295108 (=> (not res!860817) (not e!738990))))

(assert (=> b!1295108 (= res!860817 (and (= (size!42073 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42072 _keys!1741) (size!42073 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!109440 res!860815) b!1295108))

(assert (= (and b!1295108 res!860817) b!1295104))

(assert (= (and b!1295104 res!860818) b!1295097))

(assert (= (and b!1295097 res!860820) b!1295102))

(assert (= (and b!1295102 res!860816) b!1295099))

(assert (= (and b!1295099 res!860822) b!1295105))

(assert (= (and b!1295105 res!860823) b!1295098))

(assert (= (and b!1295098 res!860819) b!1295103))

(assert (= (and b!1295103 (not res!860821)) b!1295101))

(assert (= (and b!1295107 condMapEmpty!53360) mapIsEmpty!53360))

(assert (= (and b!1295107 (not condMapEmpty!53360)) mapNonEmpty!53360))

(get-info :version)

(assert (= (and mapNonEmpty!53360 ((_ is ValueCellFull!16368) mapValue!53360)) b!1295106))

(assert (= (and b!1295107 ((_ is ValueCellFull!16368) mapDefault!53360)) b!1295100))

(assert (= start!109440 b!1295107))

(declare-fun m!1187185 () Bool)

(assert (=> b!1295099 m!1187185))

(assert (=> b!1295099 m!1187185))

(declare-fun m!1187187 () Bool)

(assert (=> b!1295099 m!1187187))

(declare-fun m!1187189 () Bool)

(assert (=> b!1295103 m!1187189))

(declare-fun m!1187191 () Bool)

(assert (=> b!1295103 m!1187191))

(declare-fun m!1187193 () Bool)

(assert (=> start!109440 m!1187193))

(declare-fun m!1187195 () Bool)

(assert (=> start!109440 m!1187195))

(declare-fun m!1187197 () Bool)

(assert (=> start!109440 m!1187197))

(declare-fun m!1187199 () Bool)

(assert (=> b!1295104 m!1187199))

(declare-fun m!1187201 () Bool)

(assert (=> b!1295101 m!1187201))

(assert (=> b!1295101 m!1187201))

(declare-fun m!1187203 () Bool)

(assert (=> b!1295101 m!1187203))

(declare-fun m!1187205 () Bool)

(assert (=> b!1295101 m!1187205))

(declare-fun m!1187207 () Bool)

(assert (=> b!1295101 m!1187207))

(declare-fun m!1187209 () Bool)

(assert (=> mapNonEmpty!53360 m!1187209))

(declare-fun m!1187211 () Bool)

(assert (=> b!1295098 m!1187211))

(assert (=> b!1295098 m!1187211))

(declare-fun m!1187213 () Bool)

(assert (=> b!1295098 m!1187213))

(declare-fun m!1187215 () Bool)

(assert (=> b!1295097 m!1187215))

(check-sat (not b!1295098) (not b!1295101) (not b!1295097) (not start!109440) (not b!1295099) b_and!46993 (not b!1295104) (not b_next!28893) (not b!1295103) tp_is_empty!34533 (not mapNonEmpty!53360))
(check-sat b_and!46993 (not b_next!28893))

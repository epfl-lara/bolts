; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109074 () Bool)

(assert start!109074)

(declare-fun b_free!28527 () Bool)

(declare-fun b_next!28527 () Bool)

(assert (=> start!109074 (= b_free!28527 (not b_next!28527))))

(declare-fun tp!100700 () Bool)

(declare-fun b_and!46627 () Bool)

(assert (=> start!109074 (= tp!100700 b_and!46627)))

(declare-fun res!856037 () Bool)

(declare-fun e!735859 () Bool)

(assert (=> start!109074 (=> (not res!856037) (not e!735859))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109074 (= res!856037 (validMask!0 mask!2175))))

(assert (=> start!109074 e!735859))

(declare-fun tp_is_empty!34167 () Bool)

(assert (=> start!109074 tp_is_empty!34167))

(assert (=> start!109074 true))

(declare-datatypes ((V!50659 0))(
  ( (V!50660 (val!17158 Int)) )
))
(declare-datatypes ((ValueCell!16185 0))(
  ( (ValueCellFull!16185 (v!19759 V!50659)) (EmptyCell!16185) )
))
(declare-datatypes ((array!85333 0))(
  ( (array!85334 (arr!41163 (Array (_ BitVec 32) ValueCell!16185)) (size!41714 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85333)

(declare-fun e!735856 () Bool)

(declare-fun array_inv!31183 (array!85333) Bool)

(assert (=> start!109074 (and (array_inv!31183 _values!1445) e!735856)))

(declare-datatypes ((array!85335 0))(
  ( (array!85336 (arr!41164 (Array (_ BitVec 32) (_ BitVec 64))) (size!41715 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85335)

(declare-fun array_inv!31184 (array!85335) Bool)

(assert (=> start!109074 (array_inv!31184 _keys!1741)))

(assert (=> start!109074 tp!100700))

(declare-fun b!1288671 () Bool)

(declare-fun res!856039 () Bool)

(assert (=> b!1288671 (=> (not res!856039) (not e!735859))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1288671 (= res!856039 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41715 _keys!1741))))))

(declare-fun b!1288672 () Bool)

(declare-fun res!856043 () Bool)

(assert (=> b!1288672 (=> (not res!856043) (not e!735859))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1288672 (= res!856043 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41715 _keys!1741))))))

(declare-fun mapIsEmpty!52811 () Bool)

(declare-fun mapRes!52811 () Bool)

(assert (=> mapIsEmpty!52811 mapRes!52811))

(declare-fun b!1288673 () Bool)

(declare-fun res!856040 () Bool)

(assert (=> b!1288673 (=> (not res!856040) (not e!735859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85335 (_ BitVec 32)) Bool)

(assert (=> b!1288673 (= res!856040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288674 () Bool)

(declare-fun e!735854 () Bool)

(assert (=> b!1288674 (= e!735854 true)))

(declare-datatypes ((tuple2!22162 0))(
  ( (tuple2!22163 (_1!11091 (_ BitVec 64)) (_2!11091 V!50659)) )
))
(declare-datatypes ((List!29360 0))(
  ( (Nil!29357) (Cons!29356 (h!30565 tuple2!22162) (t!42931 List!29360)) )
))
(declare-datatypes ((ListLongMap!19831 0))(
  ( (ListLongMap!19832 (toList!9931 List!29360)) )
))
(declare-fun lt!578009 () ListLongMap!19831)

(declare-fun zeroValue!1387 () V!50659)

(declare-fun contains!7987 (ListLongMap!19831 (_ BitVec 64)) Bool)

(declare-fun +!4306 (ListLongMap!19831 tuple2!22162) ListLongMap!19831)

(assert (=> b!1288674 (not (contains!7987 (+!4306 lt!578009 (tuple2!22163 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42557 0))(
  ( (Unit!42558) )
))
(declare-fun lt!578010 () Unit!42557)

(declare-fun addStillNotContains!351 (ListLongMap!19831 (_ BitVec 64) V!50659 (_ BitVec 64)) Unit!42557)

(assert (=> b!1288674 (= lt!578010 (addStillNotContains!351 lt!578009 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50659)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6018 (array!85335 array!85333 (_ BitVec 32) (_ BitVec 32) V!50659 V!50659 (_ BitVec 32) Int) ListLongMap!19831)

(assert (=> b!1288674 (= lt!578009 (getCurrentListMapNoExtraKeys!6018 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288675 () Bool)

(assert (=> b!1288675 (= e!735859 (not e!735854))))

(declare-fun res!856042 () Bool)

(assert (=> b!1288675 (=> res!856042 e!735854)))

(assert (=> b!1288675 (= res!856042 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288675 (not (contains!7987 (ListLongMap!19832 Nil!29357) k0!1205))))

(declare-fun lt!578011 () Unit!42557)

(declare-fun emptyContainsNothing!44 ((_ BitVec 64)) Unit!42557)

(assert (=> b!1288675 (= lt!578011 (emptyContainsNothing!44 k0!1205))))

(declare-fun b!1288676 () Bool)

(declare-fun res!856036 () Bool)

(assert (=> b!1288676 (=> (not res!856036) (not e!735859))))

(declare-datatypes ((List!29361 0))(
  ( (Nil!29358) (Cons!29357 (h!30566 (_ BitVec 64)) (t!42932 List!29361)) )
))
(declare-fun arrayNoDuplicates!0 (array!85335 (_ BitVec 32) List!29361) Bool)

(assert (=> b!1288676 (= res!856036 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29358))))

(declare-fun b!1288677 () Bool)

(declare-fun res!856041 () Bool)

(assert (=> b!1288677 (=> (not res!856041) (not e!735859))))

(assert (=> b!1288677 (= res!856041 (and (= (size!41714 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41715 _keys!1741) (size!41714 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52811 () Bool)

(declare-fun tp!100701 () Bool)

(declare-fun e!735857 () Bool)

(assert (=> mapNonEmpty!52811 (= mapRes!52811 (and tp!100701 e!735857))))

(declare-fun mapKey!52811 () (_ BitVec 32))

(declare-fun mapValue!52811 () ValueCell!16185)

(declare-fun mapRest!52811 () (Array (_ BitVec 32) ValueCell!16185))

(assert (=> mapNonEmpty!52811 (= (arr!41163 _values!1445) (store mapRest!52811 mapKey!52811 mapValue!52811))))

(declare-fun b!1288678 () Bool)

(declare-fun res!856038 () Bool)

(assert (=> b!1288678 (=> (not res!856038) (not e!735859))))

(declare-fun getCurrentListMap!4934 (array!85335 array!85333 (_ BitVec 32) (_ BitVec 32) V!50659 V!50659 (_ BitVec 32) Int) ListLongMap!19831)

(assert (=> b!1288678 (= res!856038 (contains!7987 (getCurrentListMap!4934 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1288679 () Bool)

(declare-fun e!735858 () Bool)

(assert (=> b!1288679 (= e!735858 tp_is_empty!34167)))

(declare-fun b!1288680 () Bool)

(assert (=> b!1288680 (= e!735857 tp_is_empty!34167)))

(declare-fun b!1288681 () Bool)

(assert (=> b!1288681 (= e!735856 (and e!735858 mapRes!52811))))

(declare-fun condMapEmpty!52811 () Bool)

(declare-fun mapDefault!52811 () ValueCell!16185)

(assert (=> b!1288681 (= condMapEmpty!52811 (= (arr!41163 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16185)) mapDefault!52811)))))

(declare-fun b!1288682 () Bool)

(declare-fun res!856044 () Bool)

(assert (=> b!1288682 (=> (not res!856044) (not e!735859))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288682 (= res!856044 (not (validKeyInArray!0 (select (arr!41164 _keys!1741) from!2144))))))

(assert (= (and start!109074 res!856037) b!1288677))

(assert (= (and b!1288677 res!856041) b!1288673))

(assert (= (and b!1288673 res!856040) b!1288676))

(assert (= (and b!1288676 res!856036) b!1288671))

(assert (= (and b!1288671 res!856039) b!1288678))

(assert (= (and b!1288678 res!856038) b!1288672))

(assert (= (and b!1288672 res!856043) b!1288682))

(assert (= (and b!1288682 res!856044) b!1288675))

(assert (= (and b!1288675 (not res!856042)) b!1288674))

(assert (= (and b!1288681 condMapEmpty!52811) mapIsEmpty!52811))

(assert (= (and b!1288681 (not condMapEmpty!52811)) mapNonEmpty!52811))

(get-info :version)

(assert (= (and mapNonEmpty!52811 ((_ is ValueCellFull!16185) mapValue!52811)) b!1288680))

(assert (= (and b!1288681 ((_ is ValueCellFull!16185) mapDefault!52811)) b!1288679))

(assert (= start!109074 b!1288681))

(declare-fun m!1181293 () Bool)

(assert (=> b!1288676 m!1181293))

(declare-fun m!1181295 () Bool)

(assert (=> b!1288674 m!1181295))

(assert (=> b!1288674 m!1181295))

(declare-fun m!1181297 () Bool)

(assert (=> b!1288674 m!1181297))

(declare-fun m!1181299 () Bool)

(assert (=> b!1288674 m!1181299))

(declare-fun m!1181301 () Bool)

(assert (=> b!1288674 m!1181301))

(declare-fun m!1181303 () Bool)

(assert (=> b!1288673 m!1181303))

(declare-fun m!1181305 () Bool)

(assert (=> mapNonEmpty!52811 m!1181305))

(declare-fun m!1181307 () Bool)

(assert (=> b!1288675 m!1181307))

(declare-fun m!1181309 () Bool)

(assert (=> b!1288675 m!1181309))

(declare-fun m!1181311 () Bool)

(assert (=> start!109074 m!1181311))

(declare-fun m!1181313 () Bool)

(assert (=> start!109074 m!1181313))

(declare-fun m!1181315 () Bool)

(assert (=> start!109074 m!1181315))

(declare-fun m!1181317 () Bool)

(assert (=> b!1288678 m!1181317))

(assert (=> b!1288678 m!1181317))

(declare-fun m!1181319 () Bool)

(assert (=> b!1288678 m!1181319))

(declare-fun m!1181321 () Bool)

(assert (=> b!1288682 m!1181321))

(assert (=> b!1288682 m!1181321))

(declare-fun m!1181323 () Bool)

(assert (=> b!1288682 m!1181323))

(check-sat (not b!1288674) (not start!109074) tp_is_empty!34167 (not b!1288682) (not b_next!28527) (not b!1288678) (not b!1288675) (not mapNonEmpty!52811) (not b!1288673) b_and!46627 (not b!1288676))
(check-sat b_and!46627 (not b_next!28527))

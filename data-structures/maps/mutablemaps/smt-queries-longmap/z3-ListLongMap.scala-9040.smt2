; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109062 () Bool)

(assert start!109062)

(declare-fun b_free!28515 () Bool)

(declare-fun b_next!28515 () Bool)

(assert (=> start!109062 (= b_free!28515 (not b_next!28515))))

(declare-fun tp!100665 () Bool)

(declare-fun b_and!46615 () Bool)

(assert (=> start!109062 (= tp!100665 b_and!46615)))

(declare-fun b!1288455 () Bool)

(declare-fun res!855882 () Bool)

(declare-fun e!735750 () Bool)

(assert (=> b!1288455 (=> (not res!855882) (not e!735750))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85311 0))(
  ( (array!85312 (arr!41152 (Array (_ BitVec 32) (_ BitVec 64))) (size!41703 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85311)

(assert (=> b!1288455 (= res!855882 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41703 _keys!1741))))))

(declare-fun b!1288456 () Bool)

(declare-fun e!735748 () Bool)

(assert (=> b!1288456 (= e!735750 (not e!735748))))

(declare-fun res!855880 () Bool)

(assert (=> b!1288456 (=> res!855880 e!735748)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1288456 (= res!855880 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!50643 0))(
  ( (V!50644 (val!17152 Int)) )
))
(declare-datatypes ((tuple2!22154 0))(
  ( (tuple2!22155 (_1!11087 (_ BitVec 64)) (_2!11087 V!50643)) )
))
(declare-datatypes ((List!29352 0))(
  ( (Nil!29349) (Cons!29348 (h!30557 tuple2!22154) (t!42923 List!29352)) )
))
(declare-datatypes ((ListLongMap!19823 0))(
  ( (ListLongMap!19824 (toList!9927 List!29352)) )
))
(declare-fun contains!7983 (ListLongMap!19823 (_ BitVec 64)) Bool)

(assert (=> b!1288456 (not (contains!7983 (ListLongMap!19824 Nil!29349) k0!1205))))

(declare-datatypes ((Unit!42549 0))(
  ( (Unit!42550) )
))
(declare-fun lt!577955 () Unit!42549)

(declare-fun emptyContainsNothing!41 ((_ BitVec 64)) Unit!42549)

(assert (=> b!1288456 (= lt!577955 (emptyContainsNothing!41 k0!1205))))

(declare-fun b!1288457 () Bool)

(declare-fun res!855876 () Bool)

(assert (=> b!1288457 (=> (not res!855876) (not e!735750))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85311 (_ BitVec 32)) Bool)

(assert (=> b!1288457 (= res!855876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288458 () Bool)

(assert (=> b!1288458 (= e!735748 true)))

(declare-fun lt!577956 () ListLongMap!19823)

(declare-fun zeroValue!1387 () V!50643)

(declare-fun +!4302 (ListLongMap!19823 tuple2!22154) ListLongMap!19823)

(assert (=> b!1288458 (not (contains!7983 (+!4302 lt!577956 (tuple2!22155 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!577957 () Unit!42549)

(declare-fun addStillNotContains!347 (ListLongMap!19823 (_ BitVec 64) V!50643 (_ BitVec 64)) Unit!42549)

(assert (=> b!1288458 (= lt!577957 (addStillNotContains!347 lt!577956 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50643)

(declare-datatypes ((ValueCell!16179 0))(
  ( (ValueCellFull!16179 (v!19753 V!50643)) (EmptyCell!16179) )
))
(declare-datatypes ((array!85313 0))(
  ( (array!85314 (arr!41153 (Array (_ BitVec 32) ValueCell!16179)) (size!41704 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85313)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6014 (array!85311 array!85313 (_ BitVec 32) (_ BitVec 32) V!50643 V!50643 (_ BitVec 32) Int) ListLongMap!19823)

(assert (=> b!1288458 (= lt!577956 (getCurrentListMapNoExtraKeys!6014 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288459 () Bool)

(declare-fun res!855878 () Bool)

(assert (=> b!1288459 (=> (not res!855878) (not e!735750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288459 (= res!855878 (not (validKeyInArray!0 (select (arr!41152 _keys!1741) from!2144))))))

(declare-fun b!1288460 () Bool)

(declare-fun res!855875 () Bool)

(assert (=> b!1288460 (=> (not res!855875) (not e!735750))))

(assert (=> b!1288460 (= res!855875 (and (= (size!41704 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41703 _keys!1741) (size!41704 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288461 () Bool)

(declare-fun e!735747 () Bool)

(declare-fun tp_is_empty!34155 () Bool)

(assert (=> b!1288461 (= e!735747 tp_is_empty!34155)))

(declare-fun b!1288462 () Bool)

(declare-fun res!855874 () Bool)

(assert (=> b!1288462 (=> (not res!855874) (not e!735750))))

(declare-datatypes ((List!29353 0))(
  ( (Nil!29350) (Cons!29349 (h!30558 (_ BitVec 64)) (t!42924 List!29353)) )
))
(declare-fun arrayNoDuplicates!0 (array!85311 (_ BitVec 32) List!29353) Bool)

(assert (=> b!1288462 (= res!855874 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29350))))

(declare-fun b!1288463 () Bool)

(declare-fun res!855879 () Bool)

(assert (=> b!1288463 (=> (not res!855879) (not e!735750))))

(declare-fun getCurrentListMap!4930 (array!85311 array!85313 (_ BitVec 32) (_ BitVec 32) V!50643 V!50643 (_ BitVec 32) Int) ListLongMap!19823)

(assert (=> b!1288463 (= res!855879 (contains!7983 (getCurrentListMap!4930 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1288464 () Bool)

(declare-fun res!855877 () Bool)

(assert (=> b!1288464 (=> (not res!855877) (not e!735750))))

(assert (=> b!1288464 (= res!855877 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41703 _keys!1741))))))

(declare-fun mapNonEmpty!52793 () Bool)

(declare-fun mapRes!52793 () Bool)

(declare-fun tp!100664 () Bool)

(declare-fun e!735746 () Bool)

(assert (=> mapNonEmpty!52793 (= mapRes!52793 (and tp!100664 e!735746))))

(declare-fun mapValue!52793 () ValueCell!16179)

(declare-fun mapKey!52793 () (_ BitVec 32))

(declare-fun mapRest!52793 () (Array (_ BitVec 32) ValueCell!16179))

(assert (=> mapNonEmpty!52793 (= (arr!41153 _values!1445) (store mapRest!52793 mapKey!52793 mapValue!52793))))

(declare-fun res!855881 () Bool)

(assert (=> start!109062 (=> (not res!855881) (not e!735750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109062 (= res!855881 (validMask!0 mask!2175))))

(assert (=> start!109062 e!735750))

(assert (=> start!109062 tp_is_empty!34155))

(assert (=> start!109062 true))

(declare-fun e!735751 () Bool)

(declare-fun array_inv!31175 (array!85313) Bool)

(assert (=> start!109062 (and (array_inv!31175 _values!1445) e!735751)))

(declare-fun array_inv!31176 (array!85311) Bool)

(assert (=> start!109062 (array_inv!31176 _keys!1741)))

(assert (=> start!109062 tp!100665))

(declare-fun mapIsEmpty!52793 () Bool)

(assert (=> mapIsEmpty!52793 mapRes!52793))

(declare-fun b!1288465 () Bool)

(assert (=> b!1288465 (= e!735746 tp_is_empty!34155)))

(declare-fun b!1288466 () Bool)

(assert (=> b!1288466 (= e!735751 (and e!735747 mapRes!52793))))

(declare-fun condMapEmpty!52793 () Bool)

(declare-fun mapDefault!52793 () ValueCell!16179)

(assert (=> b!1288466 (= condMapEmpty!52793 (= (arr!41153 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16179)) mapDefault!52793)))))

(assert (= (and start!109062 res!855881) b!1288460))

(assert (= (and b!1288460 res!855875) b!1288457))

(assert (= (and b!1288457 res!855876) b!1288462))

(assert (= (and b!1288462 res!855874) b!1288464))

(assert (= (and b!1288464 res!855877) b!1288463))

(assert (= (and b!1288463 res!855879) b!1288455))

(assert (= (and b!1288455 res!855882) b!1288459))

(assert (= (and b!1288459 res!855878) b!1288456))

(assert (= (and b!1288456 (not res!855880)) b!1288458))

(assert (= (and b!1288466 condMapEmpty!52793) mapIsEmpty!52793))

(assert (= (and b!1288466 (not condMapEmpty!52793)) mapNonEmpty!52793))

(get-info :version)

(assert (= (and mapNonEmpty!52793 ((_ is ValueCellFull!16179) mapValue!52793)) b!1288465))

(assert (= (and b!1288466 ((_ is ValueCellFull!16179) mapDefault!52793)) b!1288461))

(assert (= start!109062 b!1288466))

(declare-fun m!1181101 () Bool)

(assert (=> b!1288457 m!1181101))

(declare-fun m!1181103 () Bool)

(assert (=> b!1288462 m!1181103))

(declare-fun m!1181105 () Bool)

(assert (=> b!1288456 m!1181105))

(declare-fun m!1181107 () Bool)

(assert (=> b!1288456 m!1181107))

(declare-fun m!1181109 () Bool)

(assert (=> start!109062 m!1181109))

(declare-fun m!1181111 () Bool)

(assert (=> start!109062 m!1181111))

(declare-fun m!1181113 () Bool)

(assert (=> start!109062 m!1181113))

(declare-fun m!1181115 () Bool)

(assert (=> mapNonEmpty!52793 m!1181115))

(declare-fun m!1181117 () Bool)

(assert (=> b!1288459 m!1181117))

(assert (=> b!1288459 m!1181117))

(declare-fun m!1181119 () Bool)

(assert (=> b!1288459 m!1181119))

(declare-fun m!1181121 () Bool)

(assert (=> b!1288463 m!1181121))

(assert (=> b!1288463 m!1181121))

(declare-fun m!1181123 () Bool)

(assert (=> b!1288463 m!1181123))

(declare-fun m!1181125 () Bool)

(assert (=> b!1288458 m!1181125))

(assert (=> b!1288458 m!1181125))

(declare-fun m!1181127 () Bool)

(assert (=> b!1288458 m!1181127))

(declare-fun m!1181129 () Bool)

(assert (=> b!1288458 m!1181129))

(declare-fun m!1181131 () Bool)

(assert (=> b!1288458 m!1181131))

(check-sat tp_is_empty!34155 (not b!1288462) (not b!1288459) (not start!109062) (not b!1288457) (not mapNonEmpty!52793) (not b!1288463) (not b!1288458) (not b_next!28515) b_and!46615 (not b!1288456))
(check-sat b_and!46615 (not b_next!28515))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109080 () Bool)

(assert start!109080)

(declare-fun b_free!28533 () Bool)

(declare-fun b_next!28533 () Bool)

(assert (=> start!109080 (= b_free!28533 (not b_next!28533))))

(declare-fun tp!100718 () Bool)

(declare-fun b_and!46633 () Bool)

(assert (=> start!109080 (= tp!100718 b_and!46633)))

(declare-fun mapIsEmpty!52820 () Bool)

(declare-fun mapRes!52820 () Bool)

(assert (=> mapIsEmpty!52820 mapRes!52820))

(declare-fun b!1288779 () Bool)

(declare-fun e!735913 () Bool)

(assert (=> b!1288779 (= e!735913 true)))

(declare-datatypes ((V!50667 0))(
  ( (V!50668 (val!17161 Int)) )
))
(declare-datatypes ((tuple2!22168 0))(
  ( (tuple2!22169 (_1!11094 (_ BitVec 64)) (_2!11094 V!50667)) )
))
(declare-datatypes ((List!29366 0))(
  ( (Nil!29363) (Cons!29362 (h!30571 tuple2!22168) (t!42937 List!29366)) )
))
(declare-datatypes ((ListLongMap!19837 0))(
  ( (ListLongMap!19838 (toList!9934 List!29366)) )
))
(declare-fun lt!578037 () ListLongMap!19837)

(declare-fun zeroValue!1387 () V!50667)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!7990 (ListLongMap!19837 (_ BitVec 64)) Bool)

(declare-fun +!4309 (ListLongMap!19837 tuple2!22168) ListLongMap!19837)

(assert (=> b!1288779 (not (contains!7990 (+!4309 lt!578037 (tuple2!22169 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42563 0))(
  ( (Unit!42564) )
))
(declare-fun lt!578038 () Unit!42563)

(declare-fun addStillNotContains!354 (ListLongMap!19837 (_ BitVec 64) V!50667 (_ BitVec 64)) Unit!42563)

(assert (=> b!1288779 (= lt!578038 (addStillNotContains!354 lt!578037 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50667)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16188 0))(
  ( (ValueCellFull!16188 (v!19762 V!50667)) (EmptyCell!16188) )
))
(declare-datatypes ((array!85345 0))(
  ( (array!85346 (arr!41169 (Array (_ BitVec 32) ValueCell!16188)) (size!41720 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85345)

(declare-datatypes ((array!85347 0))(
  ( (array!85348 (arr!41170 (Array (_ BitVec 32) (_ BitVec 64))) (size!41721 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85347)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6021 (array!85347 array!85345 (_ BitVec 32) (_ BitVec 32) V!50667 V!50667 (_ BitVec 32) Int) ListLongMap!19837)

(assert (=> b!1288779 (= lt!578037 (getCurrentListMapNoExtraKeys!6021 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288780 () Bool)

(declare-fun res!856122 () Bool)

(declare-fun e!735911 () Bool)

(assert (=> b!1288780 (=> (not res!856122) (not e!735911))))

(assert (=> b!1288780 (= res!856122 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41721 _keys!1741))))))

(declare-fun res!856124 () Bool)

(assert (=> start!109080 (=> (not res!856124) (not e!735911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109080 (= res!856124 (validMask!0 mask!2175))))

(assert (=> start!109080 e!735911))

(declare-fun tp_is_empty!34173 () Bool)

(assert (=> start!109080 tp_is_empty!34173))

(assert (=> start!109080 true))

(declare-fun e!735908 () Bool)

(declare-fun array_inv!31187 (array!85345) Bool)

(assert (=> start!109080 (and (array_inv!31187 _values!1445) e!735908)))

(declare-fun array_inv!31188 (array!85347) Bool)

(assert (=> start!109080 (array_inv!31188 _keys!1741)))

(assert (=> start!109080 tp!100718))

(declare-fun b!1288781 () Bool)

(declare-fun e!735910 () Bool)

(assert (=> b!1288781 (= e!735908 (and e!735910 mapRes!52820))))

(declare-fun condMapEmpty!52820 () Bool)

(declare-fun mapDefault!52820 () ValueCell!16188)

(assert (=> b!1288781 (= condMapEmpty!52820 (= (arr!41169 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16188)) mapDefault!52820)))))

(declare-fun b!1288782 () Bool)

(declare-fun res!856120 () Bool)

(assert (=> b!1288782 (=> (not res!856120) (not e!735911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85347 (_ BitVec 32)) Bool)

(assert (=> b!1288782 (= res!856120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288783 () Bool)

(assert (=> b!1288783 (= e!735911 (not e!735913))))

(declare-fun res!856121 () Bool)

(assert (=> b!1288783 (=> res!856121 e!735913)))

(assert (=> b!1288783 (= res!856121 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288783 (not (contains!7990 (ListLongMap!19838 Nil!29363) k0!1205))))

(declare-fun lt!578036 () Unit!42563)

(declare-fun emptyContainsNothing!47 ((_ BitVec 64)) Unit!42563)

(assert (=> b!1288783 (= lt!578036 (emptyContainsNothing!47 k0!1205))))

(declare-fun mapNonEmpty!52820 () Bool)

(declare-fun tp!100719 () Bool)

(declare-fun e!735912 () Bool)

(assert (=> mapNonEmpty!52820 (= mapRes!52820 (and tp!100719 e!735912))))

(declare-fun mapValue!52820 () ValueCell!16188)

(declare-fun mapKey!52820 () (_ BitVec 32))

(declare-fun mapRest!52820 () (Array (_ BitVec 32) ValueCell!16188))

(assert (=> mapNonEmpty!52820 (= (arr!41169 _values!1445) (store mapRest!52820 mapKey!52820 mapValue!52820))))

(declare-fun b!1288784 () Bool)

(assert (=> b!1288784 (= e!735912 tp_is_empty!34173)))

(declare-fun b!1288785 () Bool)

(declare-fun res!856117 () Bool)

(assert (=> b!1288785 (=> (not res!856117) (not e!735911))))

(declare-datatypes ((List!29367 0))(
  ( (Nil!29364) (Cons!29363 (h!30572 (_ BitVec 64)) (t!42938 List!29367)) )
))
(declare-fun arrayNoDuplicates!0 (array!85347 (_ BitVec 32) List!29367) Bool)

(assert (=> b!1288785 (= res!856117 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29364))))

(declare-fun b!1288786 () Bool)

(declare-fun res!856125 () Bool)

(assert (=> b!1288786 (=> (not res!856125) (not e!735911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288786 (= res!856125 (not (validKeyInArray!0 (select (arr!41170 _keys!1741) from!2144))))))

(declare-fun b!1288787 () Bool)

(declare-fun res!856118 () Bool)

(assert (=> b!1288787 (=> (not res!856118) (not e!735911))))

(declare-fun getCurrentListMap!4937 (array!85347 array!85345 (_ BitVec 32) (_ BitVec 32) V!50667 V!50667 (_ BitVec 32) Int) ListLongMap!19837)

(assert (=> b!1288787 (= res!856118 (contains!7990 (getCurrentListMap!4937 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1288788 () Bool)

(assert (=> b!1288788 (= e!735910 tp_is_empty!34173)))

(declare-fun b!1288789 () Bool)

(declare-fun res!856119 () Bool)

(assert (=> b!1288789 (=> (not res!856119) (not e!735911))))

(assert (=> b!1288789 (= res!856119 (and (= (size!41720 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41721 _keys!1741) (size!41720 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288790 () Bool)

(declare-fun res!856123 () Bool)

(assert (=> b!1288790 (=> (not res!856123) (not e!735911))))

(assert (=> b!1288790 (= res!856123 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41721 _keys!1741))))))

(assert (= (and start!109080 res!856124) b!1288789))

(assert (= (and b!1288789 res!856119) b!1288782))

(assert (= (and b!1288782 res!856120) b!1288785))

(assert (= (and b!1288785 res!856117) b!1288790))

(assert (= (and b!1288790 res!856123) b!1288787))

(assert (= (and b!1288787 res!856118) b!1288780))

(assert (= (and b!1288780 res!856122) b!1288786))

(assert (= (and b!1288786 res!856125) b!1288783))

(assert (= (and b!1288783 (not res!856121)) b!1288779))

(assert (= (and b!1288781 condMapEmpty!52820) mapIsEmpty!52820))

(assert (= (and b!1288781 (not condMapEmpty!52820)) mapNonEmpty!52820))

(get-info :version)

(assert (= (and mapNonEmpty!52820 ((_ is ValueCellFull!16188) mapValue!52820)) b!1288784))

(assert (= (and b!1288781 ((_ is ValueCellFull!16188) mapDefault!52820)) b!1288788))

(assert (= start!109080 b!1288781))

(declare-fun m!1181389 () Bool)

(assert (=> b!1288779 m!1181389))

(assert (=> b!1288779 m!1181389))

(declare-fun m!1181391 () Bool)

(assert (=> b!1288779 m!1181391))

(declare-fun m!1181393 () Bool)

(assert (=> b!1288779 m!1181393))

(declare-fun m!1181395 () Bool)

(assert (=> b!1288779 m!1181395))

(declare-fun m!1181397 () Bool)

(assert (=> b!1288785 m!1181397))

(declare-fun m!1181399 () Bool)

(assert (=> b!1288782 m!1181399))

(declare-fun m!1181401 () Bool)

(assert (=> b!1288786 m!1181401))

(assert (=> b!1288786 m!1181401))

(declare-fun m!1181403 () Bool)

(assert (=> b!1288786 m!1181403))

(declare-fun m!1181405 () Bool)

(assert (=> start!109080 m!1181405))

(declare-fun m!1181407 () Bool)

(assert (=> start!109080 m!1181407))

(declare-fun m!1181409 () Bool)

(assert (=> start!109080 m!1181409))

(declare-fun m!1181411 () Bool)

(assert (=> mapNonEmpty!52820 m!1181411))

(declare-fun m!1181413 () Bool)

(assert (=> b!1288787 m!1181413))

(assert (=> b!1288787 m!1181413))

(declare-fun m!1181415 () Bool)

(assert (=> b!1288787 m!1181415))

(declare-fun m!1181417 () Bool)

(assert (=> b!1288783 m!1181417))

(declare-fun m!1181419 () Bool)

(assert (=> b!1288783 m!1181419))

(check-sat (not start!109080) (not b!1288782) (not b!1288783) (not b!1288787) (not b!1288786) (not b_next!28533) (not mapNonEmpty!52820) b_and!46633 tp_is_empty!34173 (not b!1288779) (not b!1288785))
(check-sat b_and!46633 (not b_next!28533))

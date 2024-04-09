; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109332 () Bool)

(assert start!109332)

(declare-fun b_free!28785 () Bool)

(declare-fun b_next!28785 () Bool)

(assert (=> start!109332 (= b_free!28785 (not b_next!28785))))

(declare-fun tp!101474 () Bool)

(declare-fun b_and!46885 () Bool)

(assert (=> start!109332 (= tp!101474 b_and!46885)))

(declare-fun mapNonEmpty!53198 () Bool)

(declare-fun mapRes!53198 () Bool)

(declare-fun tp!101475 () Bool)

(declare-fun e!738096 () Bool)

(assert (=> mapNonEmpty!53198 (= mapRes!53198 (and tp!101475 e!738096))))

(declare-datatypes ((V!51003 0))(
  ( (V!51004 (val!17287 Int)) )
))
(declare-datatypes ((ValueCell!16314 0))(
  ( (ValueCellFull!16314 (v!19888 V!51003)) (EmptyCell!16314) )
))
(declare-datatypes ((array!85839 0))(
  ( (array!85840 (arr!41416 (Array (_ BitVec 32) ValueCell!16314)) (size!41967 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85839)

(declare-fun mapRest!53198 () (Array (_ BitVec 32) ValueCell!16314))

(declare-fun mapKey!53198 () (_ BitVec 32))

(declare-fun mapValue!53198 () ValueCell!16314)

(assert (=> mapNonEmpty!53198 (= (arr!41416 _values!1445) (store mapRest!53198 mapKey!53198 mapValue!53198))))

(declare-fun b!1293234 () Bool)

(declare-fun res!859445 () Bool)

(declare-fun e!738097 () Bool)

(assert (=> b!1293234 (=> (not res!859445) (not e!738097))))

(declare-datatypes ((array!85841 0))(
  ( (array!85842 (arr!41417 (Array (_ BitVec 32) (_ BitVec 64))) (size!41968 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85841)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293234 (= res!859445 (not (validKeyInArray!0 (select (arr!41417 _keys!1741) from!2144))))))

(declare-fun b!1293235 () Bool)

(declare-fun res!859438 () Bool)

(assert (=> b!1293235 (=> (not res!859438) (not e!738097))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293235 (= res!859438 (and (= (size!41967 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41968 _keys!1741) (size!41967 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293236 () Bool)

(declare-fun e!738098 () Bool)

(assert (=> b!1293236 (= e!738098 true)))

(declare-datatypes ((tuple2!22386 0))(
  ( (tuple2!22387 (_1!11203 (_ BitVec 64)) (_2!11203 V!51003)) )
))
(declare-datatypes ((List!29569 0))(
  ( (Nil!29566) (Cons!29565 (h!30774 tuple2!22386) (t!43140 List!29569)) )
))
(declare-datatypes ((ListLongMap!20055 0))(
  ( (ListLongMap!20056 (toList!10043 List!29569)) )
))
(declare-fun lt!579459 () ListLongMap!20055)

(declare-fun zeroValue!1387 () V!51003)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8099 (ListLongMap!20055 (_ BitVec 64)) Bool)

(declare-fun +!4375 (ListLongMap!20055 tuple2!22386) ListLongMap!20055)

(assert (=> b!1293236 (not (contains!8099 (+!4375 lt!579459 (tuple2!22387 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42765 0))(
  ( (Unit!42766) )
))
(declare-fun lt!579460 () Unit!42765)

(declare-fun addStillNotContains!420 (ListLongMap!20055 (_ BitVec 64) V!51003 (_ BitVec 64)) Unit!42765)

(assert (=> b!1293236 (= lt!579460 (addStillNotContains!420 lt!579459 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!51003)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6088 (array!85841 array!85839 (_ BitVec 32) (_ BitVec 32) V!51003 V!51003 (_ BitVec 32) Int) ListLongMap!20055)

(assert (=> b!1293236 (= lt!579459 (getCurrentListMapNoExtraKeys!6088 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293237 () Bool)

(declare-fun res!859441 () Bool)

(assert (=> b!1293237 (=> (not res!859441) (not e!738097))))

(assert (=> b!1293237 (= res!859441 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41968 _keys!1741))))))

(declare-fun b!1293238 () Bool)

(declare-fun res!859443 () Bool)

(assert (=> b!1293238 (=> (not res!859443) (not e!738097))))

(declare-datatypes ((List!29570 0))(
  ( (Nil!29567) (Cons!29566 (h!30775 (_ BitVec 64)) (t!43141 List!29570)) )
))
(declare-fun arrayNoDuplicates!0 (array!85841 (_ BitVec 32) List!29570) Bool)

(assert (=> b!1293238 (= res!859443 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29567))))

(declare-fun b!1293240 () Bool)

(declare-fun tp_is_empty!34425 () Bool)

(assert (=> b!1293240 (= e!738096 tp_is_empty!34425)))

(declare-fun b!1293241 () Bool)

(declare-fun res!859439 () Bool)

(assert (=> b!1293241 (=> (not res!859439) (not e!738097))))

(assert (=> b!1293241 (= res!859439 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41968 _keys!1741))))))

(declare-fun b!1293242 () Bool)

(declare-fun res!859446 () Bool)

(assert (=> b!1293242 (=> (not res!859446) (not e!738097))))

(declare-fun getCurrentListMap!5029 (array!85841 array!85839 (_ BitVec 32) (_ BitVec 32) V!51003 V!51003 (_ BitVec 32) Int) ListLongMap!20055)

(assert (=> b!1293242 (= res!859446 (contains!8099 (getCurrentListMap!5029 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1293243 () Bool)

(declare-fun res!859444 () Bool)

(assert (=> b!1293243 (=> (not res!859444) (not e!738097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85841 (_ BitVec 32)) Bool)

(assert (=> b!1293243 (= res!859444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293244 () Bool)

(declare-fun e!738095 () Bool)

(declare-fun e!738100 () Bool)

(assert (=> b!1293244 (= e!738095 (and e!738100 mapRes!53198))))

(declare-fun condMapEmpty!53198 () Bool)

(declare-fun mapDefault!53198 () ValueCell!16314)

(assert (=> b!1293244 (= condMapEmpty!53198 (= (arr!41416 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16314)) mapDefault!53198)))))

(declare-fun mapIsEmpty!53198 () Bool)

(assert (=> mapIsEmpty!53198 mapRes!53198))

(declare-fun b!1293245 () Bool)

(assert (=> b!1293245 (= e!738097 (not e!738098))))

(declare-fun res!859440 () Bool)

(assert (=> b!1293245 (=> res!859440 e!738098)))

(assert (=> b!1293245 (= res!859440 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293245 (not (contains!8099 (ListLongMap!20056 Nil!29566) k0!1205))))

(declare-fun lt!579458 () Unit!42765)

(declare-fun emptyContainsNothing!139 ((_ BitVec 64)) Unit!42765)

(assert (=> b!1293245 (= lt!579458 (emptyContainsNothing!139 k0!1205))))

(declare-fun res!859442 () Bool)

(assert (=> start!109332 (=> (not res!859442) (not e!738097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109332 (= res!859442 (validMask!0 mask!2175))))

(assert (=> start!109332 e!738097))

(assert (=> start!109332 tp_is_empty!34425))

(assert (=> start!109332 true))

(declare-fun array_inv!31353 (array!85839) Bool)

(assert (=> start!109332 (and (array_inv!31353 _values!1445) e!738095)))

(declare-fun array_inv!31354 (array!85841) Bool)

(assert (=> start!109332 (array_inv!31354 _keys!1741)))

(assert (=> start!109332 tp!101474))

(declare-fun b!1293239 () Bool)

(assert (=> b!1293239 (= e!738100 tp_is_empty!34425)))

(assert (= (and start!109332 res!859442) b!1293235))

(assert (= (and b!1293235 res!859438) b!1293243))

(assert (= (and b!1293243 res!859444) b!1293238))

(assert (= (and b!1293238 res!859443) b!1293241))

(assert (= (and b!1293241 res!859439) b!1293242))

(assert (= (and b!1293242 res!859446) b!1293237))

(assert (= (and b!1293237 res!859441) b!1293234))

(assert (= (and b!1293234 res!859445) b!1293245))

(assert (= (and b!1293245 (not res!859440)) b!1293236))

(assert (= (and b!1293244 condMapEmpty!53198) mapIsEmpty!53198))

(assert (= (and b!1293244 (not condMapEmpty!53198)) mapNonEmpty!53198))

(get-info :version)

(assert (= (and mapNonEmpty!53198 ((_ is ValueCellFull!16314) mapValue!53198)) b!1293240))

(assert (= (and b!1293244 ((_ is ValueCellFull!16314) mapDefault!53198)) b!1293239))

(assert (= start!109332 b!1293244))

(declare-fun m!1185685 () Bool)

(assert (=> mapNonEmpty!53198 m!1185685))

(declare-fun m!1185687 () Bool)

(assert (=> b!1293245 m!1185687))

(declare-fun m!1185689 () Bool)

(assert (=> b!1293245 m!1185689))

(declare-fun m!1185691 () Bool)

(assert (=> b!1293242 m!1185691))

(assert (=> b!1293242 m!1185691))

(declare-fun m!1185693 () Bool)

(assert (=> b!1293242 m!1185693))

(declare-fun m!1185695 () Bool)

(assert (=> b!1293243 m!1185695))

(declare-fun m!1185697 () Bool)

(assert (=> start!109332 m!1185697))

(declare-fun m!1185699 () Bool)

(assert (=> start!109332 m!1185699))

(declare-fun m!1185701 () Bool)

(assert (=> start!109332 m!1185701))

(declare-fun m!1185703 () Bool)

(assert (=> b!1293234 m!1185703))

(assert (=> b!1293234 m!1185703))

(declare-fun m!1185705 () Bool)

(assert (=> b!1293234 m!1185705))

(declare-fun m!1185707 () Bool)

(assert (=> b!1293238 m!1185707))

(declare-fun m!1185709 () Bool)

(assert (=> b!1293236 m!1185709))

(assert (=> b!1293236 m!1185709))

(declare-fun m!1185711 () Bool)

(assert (=> b!1293236 m!1185711))

(declare-fun m!1185713 () Bool)

(assert (=> b!1293236 m!1185713))

(declare-fun m!1185715 () Bool)

(assert (=> b!1293236 m!1185715))

(check-sat (not b!1293245) (not mapNonEmpty!53198) (not b!1293238) b_and!46885 tp_is_empty!34425 (not b!1293243) (not b_next!28785) (not start!109332) (not b!1293236) (not b!1293242) (not b!1293234))
(check-sat b_and!46885 (not b_next!28785))

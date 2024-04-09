; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132032 () Bool)

(assert start!132032)

(declare-fun b_free!31713 () Bool)

(declare-fun b_next!31713 () Bool)

(assert (=> start!132032 (= b_free!31713 (not b_next!31713))))

(declare-fun tp!111391 () Bool)

(declare-fun b_and!51133 () Bool)

(assert (=> start!132032 (= tp!111391 b_and!51133)))

(declare-fun b!1546426 () Bool)

(declare-fun e!860801 () Bool)

(assert (=> b!1546426 (= e!860801 (not true))))

(declare-datatypes ((array!103145 0))(
  ( (array!103146 (arr!49770 (Array (_ BitVec 32) (_ BitVec 64))) (size!50321 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103145)

(declare-datatypes ((V!59095 0))(
  ( (V!59096 (val!19072 Int)) )
))
(declare-datatypes ((tuple2!24670 0))(
  ( (tuple2!24671 (_1!12345 (_ BitVec 64)) (_2!12345 V!59095)) )
))
(declare-datatypes ((List!36180 0))(
  ( (Nil!36177) (Cons!36176 (h!37622 tuple2!24670) (t!50881 List!36180)) )
))
(declare-datatypes ((ListLongMap!22291 0))(
  ( (ListLongMap!22292 (toList!11161 List!36180)) )
))
(declare-fun lt!666521 () ListLongMap!22291)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun lt!666522 () Bool)

(declare-fun contains!10060 (ListLongMap!22291 (_ BitVec 64)) Bool)

(assert (=> b!1546426 (= lt!666522 (contains!10060 lt!666521 (select (arr!49770 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59095)

(declare-fun +!4889 (ListLongMap!22291 tuple2!24670) ListLongMap!22291)

(assert (=> b!1546426 (contains!10060 (+!4889 lt!666521 (tuple2!24671 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49770 _keys!618) from!762))))

(declare-datatypes ((Unit!51482 0))(
  ( (Unit!51483) )
))
(declare-fun lt!666523 () Unit!51482)

(declare-fun addStillContains!1242 (ListLongMap!22291 (_ BitVec 64) V!59095 (_ BitVec 64)) Unit!51482)

(assert (=> b!1546426 (= lt!666523 (addStillContains!1242 lt!666521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49770 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18084 0))(
  ( (ValueCellFull!18084 (v!21870 V!59095)) (EmptyCell!18084) )
))
(declare-datatypes ((array!103147 0))(
  ( (array!103148 (arr!49771 (Array (_ BitVec 32) ValueCell!18084)) (size!50322 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103147)

(declare-fun minValue!436 () V!59095)

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6607 (array!103145 array!103147 (_ BitVec 32) (_ BitVec 32) V!59095 V!59095 (_ BitVec 32) Int) ListLongMap!22291)

(assert (=> b!1546426 (= lt!666521 (getCurrentListMapNoExtraKeys!6607 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapNonEmpty!58687 () Bool)

(declare-fun mapRes!58687 () Bool)

(declare-fun tp!111392 () Bool)

(declare-fun e!860806 () Bool)

(assert (=> mapNonEmpty!58687 (= mapRes!58687 (and tp!111392 e!860806))))

(declare-fun mapKey!58687 () (_ BitVec 32))

(declare-fun mapRest!58687 () (Array (_ BitVec 32) ValueCell!18084))

(declare-fun mapValue!58687 () ValueCell!18084)

(assert (=> mapNonEmpty!58687 (= (arr!49771 _values!470) (store mapRest!58687 mapKey!58687 mapValue!58687))))

(declare-fun c!141771 () Bool)

(declare-fun call!69574 () ListLongMap!22291)

(declare-fun call!69572 () ListLongMap!22291)

(declare-fun call!69575 () ListLongMap!22291)

(declare-fun bm!69569 () Bool)

(declare-fun call!69573 () ListLongMap!22291)

(declare-fun c!141772 () Bool)

(assert (=> bm!69569 (= call!69575 (+!4889 (ite c!141772 call!69573 (ite c!141771 call!69574 call!69572)) (ite (or c!141772 c!141771) (tuple2!24671 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24671 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!69570 () Bool)

(assert (=> bm!69570 (= call!69574 call!69573)))

(declare-fun b!1546427 () Bool)

(declare-fun e!860803 () ListLongMap!22291)

(declare-fun e!860807 () ListLongMap!22291)

(assert (=> b!1546427 (= e!860803 e!860807)))

(declare-fun lt!666520 () Bool)

(assert (=> b!1546427 (= c!141771 (and (not lt!666520) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!1060305 () Bool)

(declare-fun e!860809 () Bool)

(assert (=> start!132032 (=> (not res!1060305) (not e!860809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132032 (= res!1060305 (validMask!0 mask!926))))

(assert (=> start!132032 e!860809))

(declare-fun array_inv!38633 (array!103145) Bool)

(assert (=> start!132032 (array_inv!38633 _keys!618)))

(declare-fun tp_is_empty!37989 () Bool)

(assert (=> start!132032 tp_is_empty!37989))

(assert (=> start!132032 true))

(assert (=> start!132032 tp!111391))

(declare-fun e!860808 () Bool)

(declare-fun array_inv!38634 (array!103147) Bool)

(assert (=> start!132032 (and (array_inv!38634 _values!470) e!860808)))

(declare-fun b!1546428 () Bool)

(declare-fun e!860804 () ListLongMap!22291)

(assert (=> b!1546428 (= e!860804 call!69572)))

(declare-fun bm!69571 () Bool)

(declare-fun call!69576 () ListLongMap!22291)

(assert (=> bm!69571 (= call!69576 call!69575)))

(declare-fun b!1546429 () Bool)

(declare-fun res!1060307 () Bool)

(assert (=> b!1546429 (=> (not res!1060307) (not e!860809))))

(assert (=> b!1546429 (= res!1060307 (and (= (size!50322 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50321 _keys!618) (size!50322 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1546430 () Bool)

(declare-fun c!141773 () Bool)

(assert (=> b!1546430 (= c!141773 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666520))))

(assert (=> b!1546430 (= e!860807 e!860804)))

(declare-fun mapIsEmpty!58687 () Bool)

(assert (=> mapIsEmpty!58687 mapRes!58687))

(declare-fun b!1546431 () Bool)

(declare-fun res!1060308 () Bool)

(assert (=> b!1546431 (=> (not res!1060308) (not e!860801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546431 (= res!1060308 (validKeyInArray!0 (select (arr!49770 _keys!618) from!762)))))

(declare-fun b!1546432 () Bool)

(declare-fun res!1060306 () Bool)

(assert (=> b!1546432 (=> (not res!1060306) (not e!860809))))

(assert (=> b!1546432 (= res!1060306 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50321 _keys!618))))))

(declare-fun b!1546433 () Bool)

(declare-fun e!860802 () Bool)

(assert (=> b!1546433 (= e!860808 (and e!860802 mapRes!58687))))

(declare-fun condMapEmpty!58687 () Bool)

(declare-fun mapDefault!58687 () ValueCell!18084)

(assert (=> b!1546433 (= condMapEmpty!58687 (= (arr!49771 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18084)) mapDefault!58687)))))

(declare-fun b!1546434 () Bool)

(assert (=> b!1546434 (= e!860807 call!69576)))

(declare-fun b!1546435 () Bool)

(assert (=> b!1546435 (= e!860809 e!860801)))

(declare-fun res!1060304 () Bool)

(assert (=> b!1546435 (=> (not res!1060304) (not e!860801))))

(assert (=> b!1546435 (= res!1060304 (bvslt from!762 (size!50321 _keys!618)))))

(declare-fun lt!666524 () ListLongMap!22291)

(assert (=> b!1546435 (= lt!666524 e!860803)))

(assert (=> b!1546435 (= c!141772 (and (not lt!666520) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546435 (= lt!666520 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546436 () Bool)

(declare-fun res!1060310 () Bool)

(assert (=> b!1546436 (=> (not res!1060310) (not e!860809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103145 (_ BitVec 32)) Bool)

(assert (=> b!1546436 (= res!1060310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69572 () Bool)

(assert (=> bm!69572 (= call!69572 call!69574)))

(declare-fun b!1546437 () Bool)

(assert (=> b!1546437 (= e!860803 (+!4889 call!69575 (tuple2!24671 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546438 () Bool)

(assert (=> b!1546438 (= e!860806 tp_is_empty!37989)))

(declare-fun b!1546439 () Bool)

(assert (=> b!1546439 (= e!860802 tp_is_empty!37989)))

(declare-fun bm!69573 () Bool)

(assert (=> bm!69573 (= call!69573 (getCurrentListMapNoExtraKeys!6607 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546440 () Bool)

(assert (=> b!1546440 (= e!860804 call!69576)))

(declare-fun b!1546441 () Bool)

(declare-fun res!1060309 () Bool)

(assert (=> b!1546441 (=> (not res!1060309) (not e!860809))))

(declare-datatypes ((List!36181 0))(
  ( (Nil!36178) (Cons!36177 (h!37623 (_ BitVec 64)) (t!50882 List!36181)) )
))
(declare-fun arrayNoDuplicates!0 (array!103145 (_ BitVec 32) List!36181) Bool)

(assert (=> b!1546441 (= res!1060309 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36178))))

(assert (= (and start!132032 res!1060305) b!1546429))

(assert (= (and b!1546429 res!1060307) b!1546436))

(assert (= (and b!1546436 res!1060310) b!1546441))

(assert (= (and b!1546441 res!1060309) b!1546432))

(assert (= (and b!1546432 res!1060306) b!1546435))

(assert (= (and b!1546435 c!141772) b!1546437))

(assert (= (and b!1546435 (not c!141772)) b!1546427))

(assert (= (and b!1546427 c!141771) b!1546434))

(assert (= (and b!1546427 (not c!141771)) b!1546430))

(assert (= (and b!1546430 c!141773) b!1546440))

(assert (= (and b!1546430 (not c!141773)) b!1546428))

(assert (= (or b!1546440 b!1546428) bm!69572))

(assert (= (or b!1546434 bm!69572) bm!69570))

(assert (= (or b!1546434 b!1546440) bm!69571))

(assert (= (or b!1546437 bm!69570) bm!69573))

(assert (= (or b!1546437 bm!69571) bm!69569))

(assert (= (and b!1546435 res!1060304) b!1546431))

(assert (= (and b!1546431 res!1060308) b!1546426))

(assert (= (and b!1546433 condMapEmpty!58687) mapIsEmpty!58687))

(assert (= (and b!1546433 (not condMapEmpty!58687)) mapNonEmpty!58687))

(get-info :version)

(assert (= (and mapNonEmpty!58687 ((_ is ValueCellFull!18084) mapValue!58687)) b!1546438))

(assert (= (and b!1546433 ((_ is ValueCellFull!18084) mapDefault!58687)) b!1546439))

(assert (= start!132032 b!1546433))

(declare-fun m!1426327 () Bool)

(assert (=> b!1546437 m!1426327))

(declare-fun m!1426329 () Bool)

(assert (=> mapNonEmpty!58687 m!1426329))

(declare-fun m!1426331 () Bool)

(assert (=> b!1546431 m!1426331))

(assert (=> b!1546431 m!1426331))

(declare-fun m!1426333 () Bool)

(assert (=> b!1546431 m!1426333))

(declare-fun m!1426335 () Bool)

(assert (=> b!1546436 m!1426335))

(declare-fun m!1426337 () Bool)

(assert (=> start!132032 m!1426337))

(declare-fun m!1426339 () Bool)

(assert (=> start!132032 m!1426339))

(declare-fun m!1426341 () Bool)

(assert (=> start!132032 m!1426341))

(declare-fun m!1426343 () Bool)

(assert (=> bm!69569 m!1426343))

(declare-fun m!1426345 () Bool)

(assert (=> b!1546441 m!1426345))

(declare-fun m!1426347 () Bool)

(assert (=> bm!69573 m!1426347))

(assert (=> b!1546426 m!1426331))

(declare-fun m!1426349 () Bool)

(assert (=> b!1546426 m!1426349))

(declare-fun m!1426351 () Bool)

(assert (=> b!1546426 m!1426351))

(assert (=> b!1546426 m!1426331))

(declare-fun m!1426353 () Bool)

(assert (=> b!1546426 m!1426353))

(assert (=> b!1546426 m!1426347))

(assert (=> b!1546426 m!1426331))

(assert (=> b!1546426 m!1426351))

(assert (=> b!1546426 m!1426331))

(declare-fun m!1426355 () Bool)

(assert (=> b!1546426 m!1426355))

(check-sat b_and!51133 (not mapNonEmpty!58687) (not bm!69569) (not b!1546431) (not bm!69573) (not start!132032) (not b!1546436) (not b!1546426) (not b_next!31713) (not b!1546441) (not b!1546437) tp_is_empty!37989)
(check-sat b_and!51133 (not b_next!31713))

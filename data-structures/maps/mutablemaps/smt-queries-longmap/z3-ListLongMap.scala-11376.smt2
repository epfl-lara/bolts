; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132212 () Bool)

(assert start!132212)

(declare-fun b_free!31875 () Bool)

(declare-fun b_next!31875 () Bool)

(assert (=> start!132212 (= b_free!31875 (not b_next!31875))))

(declare-fun tp!111881 () Bool)

(declare-fun b_and!51311 () Bool)

(assert (=> start!132212 (= tp!111881 b_and!51311)))

(declare-fun b!1550542 () Bool)

(declare-datatypes ((V!59311 0))(
  ( (V!59312 (val!19153 Int)) )
))
(declare-datatypes ((tuple2!24826 0))(
  ( (tuple2!24827 (_1!12423 (_ BitVec 64)) (_2!12423 V!59311)) )
))
(declare-datatypes ((List!36314 0))(
  ( (Nil!36311) (Cons!36310 (h!37756 tuple2!24826) (t!51029 List!36314)) )
))
(declare-datatypes ((ListLongMap!22447 0))(
  ( (ListLongMap!22448 (toList!11239 List!36314)) )
))
(declare-fun e!863152 () ListLongMap!22447)

(declare-fun call!70807 () ListLongMap!22447)

(assert (=> b!1550542 (= e!863152 call!70807)))

(declare-fun bm!70802 () Bool)

(declare-fun call!70805 () ListLongMap!22447)

(declare-fun call!70808 () ListLongMap!22447)

(assert (=> bm!70802 (= call!70805 call!70808)))

(declare-fun call!70806 () ListLongMap!22447)

(declare-fun zeroValue!436 () V!59311)

(declare-fun call!70809 () ListLongMap!22447)

(declare-fun c!142557 () Bool)

(declare-fun minValue!436 () V!59311)

(declare-fun c!142559 () Bool)

(declare-fun bm!70803 () Bool)

(declare-fun +!4948 (ListLongMap!22447 tuple2!24826) ListLongMap!22447)

(assert (=> bm!70803 (= call!70808 (+!4948 (ite c!142557 call!70806 (ite c!142559 call!70809 call!70807)) (ite (or c!142557 c!142559) (tuple2!24827 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24827 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1550543 () Bool)

(declare-fun c!142558 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!668283 () Bool)

(assert (=> b!1550543 (= c!142558 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668283))))

(declare-fun e!863153 () ListLongMap!22447)

(assert (=> b!1550543 (= e!863153 e!863152)))

(declare-fun bm!70804 () Bool)

(assert (=> bm!70804 (= call!70807 call!70809)))

(declare-fun b!1550544 () Bool)

(declare-fun e!863151 () Bool)

(declare-fun e!863146 () Bool)

(assert (=> b!1550544 (= e!863151 e!863146)))

(declare-fun res!1062100 () Bool)

(assert (=> b!1550544 (=> (not res!1062100) (not e!863146))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103461 0))(
  ( (array!103462 (arr!49927 (Array (_ BitVec 32) (_ BitVec 64))) (size!50478 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103461)

(assert (=> b!1550544 (= res!1062100 (bvslt from!762 (size!50478 _keys!618)))))

(declare-fun lt!668284 () ListLongMap!22447)

(declare-fun e!863148 () ListLongMap!22447)

(assert (=> b!1550544 (= lt!668284 e!863148)))

(assert (=> b!1550544 (= c!142557 (and (not lt!668283) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550544 (= lt!668283 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1550545 () Bool)

(assert (=> b!1550545 (= e!863148 e!863153)))

(assert (=> b!1550545 (= c!142559 (and (not lt!668283) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1550546 () Bool)

(declare-fun e!863149 () Bool)

(declare-fun e!863147 () Bool)

(declare-fun mapRes!58933 () Bool)

(assert (=> b!1550546 (= e!863149 (and e!863147 mapRes!58933))))

(declare-fun condMapEmpty!58933 () Bool)

(declare-datatypes ((ValueCell!18165 0))(
  ( (ValueCellFull!18165 (v!21952 V!59311)) (EmptyCell!18165) )
))
(declare-datatypes ((array!103463 0))(
  ( (array!103464 (arr!49928 (Array (_ BitVec 32) ValueCell!18165)) (size!50479 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103463)

(declare-fun mapDefault!58933 () ValueCell!18165)

(assert (=> b!1550546 (= condMapEmpty!58933 (= (arr!49928 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18165)) mapDefault!58933)))))

(declare-fun b!1550547 () Bool)

(assert (=> b!1550547 (= e!863146 (not true))))

(declare-fun lt!668286 () ListLongMap!22447)

(declare-fun contains!10108 (ListLongMap!22447 (_ BitVec 64)) Bool)

(assert (=> b!1550547 (contains!10108 (+!4948 lt!668286 (tuple2!24827 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49927 _keys!618) from!762))))

(declare-datatypes ((Unit!51581 0))(
  ( (Unit!51582) )
))
(declare-fun lt!668285 () Unit!51581)

(declare-fun addStillContains!1285 (ListLongMap!22447 (_ BitVec 64) V!59311 (_ BitVec 64)) Unit!51581)

(assert (=> b!1550547 (= lt!668285 (addStillContains!1285 lt!668286 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49927 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6666 (array!103461 array!103463 (_ BitVec 32) (_ BitVec 32) V!59311 V!59311 (_ BitVec 32) Int) ListLongMap!22447)

(assert (=> b!1550547 (= lt!668286 (getCurrentListMapNoExtraKeys!6666 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550548 () Bool)

(declare-fun res!1062099 () Bool)

(assert (=> b!1550548 (=> (not res!1062099) (not e!863151))))

(assert (=> b!1550548 (= res!1062099 (and (= (size!50479 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50478 _keys!618) (size!50479 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58933 () Bool)

(assert (=> mapIsEmpty!58933 mapRes!58933))

(declare-fun b!1550550 () Bool)

(declare-fun res!1062102 () Bool)

(assert (=> b!1550550 (=> (not res!1062102) (not e!863151))))

(assert (=> b!1550550 (= res!1062102 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50478 _keys!618))))))

(declare-fun b!1550551 () Bool)

(assert (=> b!1550551 (= e!863152 call!70805)))

(declare-fun b!1550552 () Bool)

(declare-fun e!863150 () Bool)

(declare-fun tp_is_empty!38151 () Bool)

(assert (=> b!1550552 (= e!863150 tp_is_empty!38151)))

(declare-fun b!1550553 () Bool)

(declare-fun res!1062101 () Bool)

(assert (=> b!1550553 (=> (not res!1062101) (not e!863151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103461 (_ BitVec 32)) Bool)

(assert (=> b!1550553 (= res!1062101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58933 () Bool)

(declare-fun tp!111880 () Bool)

(assert (=> mapNonEmpty!58933 (= mapRes!58933 (and tp!111880 e!863150))))

(declare-fun mapKey!58933 () (_ BitVec 32))

(declare-fun mapRest!58933 () (Array (_ BitVec 32) ValueCell!18165))

(declare-fun mapValue!58933 () ValueCell!18165)

(assert (=> mapNonEmpty!58933 (= (arr!49928 _values!470) (store mapRest!58933 mapKey!58933 mapValue!58933))))

(declare-fun b!1550554 () Bool)

(assert (=> b!1550554 (= e!863148 (+!4948 call!70808 (tuple2!24827 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1550555 () Bool)

(assert (=> b!1550555 (= e!863147 tp_is_empty!38151)))

(declare-fun b!1550549 () Bool)

(declare-fun res!1062097 () Bool)

(assert (=> b!1550549 (=> (not res!1062097) (not e!863151))))

(declare-datatypes ((List!36315 0))(
  ( (Nil!36312) (Cons!36311 (h!37757 (_ BitVec 64)) (t!51030 List!36315)) )
))
(declare-fun arrayNoDuplicates!0 (array!103461 (_ BitVec 32) List!36315) Bool)

(assert (=> b!1550549 (= res!1062097 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36312))))

(declare-fun res!1062103 () Bool)

(assert (=> start!132212 (=> (not res!1062103) (not e!863151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132212 (= res!1062103 (validMask!0 mask!926))))

(assert (=> start!132212 e!863151))

(declare-fun array_inv!38741 (array!103461) Bool)

(assert (=> start!132212 (array_inv!38741 _keys!618)))

(assert (=> start!132212 tp_is_empty!38151))

(assert (=> start!132212 true))

(assert (=> start!132212 tp!111881))

(declare-fun array_inv!38742 (array!103463) Bool)

(assert (=> start!132212 (and (array_inv!38742 _values!470) e!863149)))

(declare-fun b!1550556 () Bool)

(assert (=> b!1550556 (= e!863153 call!70805)))

(declare-fun bm!70805 () Bool)

(assert (=> bm!70805 (= call!70809 call!70806)))

(declare-fun bm!70806 () Bool)

(assert (=> bm!70806 (= call!70806 (getCurrentListMapNoExtraKeys!6666 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550557 () Bool)

(declare-fun res!1062098 () Bool)

(assert (=> b!1550557 (=> (not res!1062098) (not e!863146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1550557 (= res!1062098 (validKeyInArray!0 (select (arr!49927 _keys!618) from!762)))))

(assert (= (and start!132212 res!1062103) b!1550548))

(assert (= (and b!1550548 res!1062099) b!1550553))

(assert (= (and b!1550553 res!1062101) b!1550549))

(assert (= (and b!1550549 res!1062097) b!1550550))

(assert (= (and b!1550550 res!1062102) b!1550544))

(assert (= (and b!1550544 c!142557) b!1550554))

(assert (= (and b!1550544 (not c!142557)) b!1550545))

(assert (= (and b!1550545 c!142559) b!1550556))

(assert (= (and b!1550545 (not c!142559)) b!1550543))

(assert (= (and b!1550543 c!142558) b!1550551))

(assert (= (and b!1550543 (not c!142558)) b!1550542))

(assert (= (or b!1550551 b!1550542) bm!70804))

(assert (= (or b!1550556 bm!70804) bm!70805))

(assert (= (or b!1550556 b!1550551) bm!70802))

(assert (= (or b!1550554 bm!70805) bm!70806))

(assert (= (or b!1550554 bm!70802) bm!70803))

(assert (= (and b!1550544 res!1062100) b!1550557))

(assert (= (and b!1550557 res!1062098) b!1550547))

(assert (= (and b!1550546 condMapEmpty!58933) mapIsEmpty!58933))

(assert (= (and b!1550546 (not condMapEmpty!58933)) mapNonEmpty!58933))

(get-info :version)

(assert (= (and mapNonEmpty!58933 ((_ is ValueCellFull!18165) mapValue!58933)) b!1550552))

(assert (= (and b!1550546 ((_ is ValueCellFull!18165) mapDefault!58933)) b!1550555))

(assert (= start!132212 b!1550546))

(declare-fun m!1429425 () Bool)

(assert (=> b!1550557 m!1429425))

(assert (=> b!1550557 m!1429425))

(declare-fun m!1429427 () Bool)

(assert (=> b!1550557 m!1429427))

(declare-fun m!1429429 () Bool)

(assert (=> b!1550549 m!1429429))

(declare-fun m!1429431 () Bool)

(assert (=> b!1550553 m!1429431))

(declare-fun m!1429433 () Bool)

(assert (=> mapNonEmpty!58933 m!1429433))

(declare-fun m!1429435 () Bool)

(assert (=> bm!70806 m!1429435))

(declare-fun m!1429437 () Bool)

(assert (=> b!1550547 m!1429437))

(assert (=> b!1550547 m!1429425))

(declare-fun m!1429439 () Bool)

(assert (=> b!1550547 m!1429439))

(assert (=> b!1550547 m!1429435))

(assert (=> b!1550547 m!1429425))

(assert (=> b!1550547 m!1429437))

(assert (=> b!1550547 m!1429425))

(declare-fun m!1429441 () Bool)

(assert (=> b!1550547 m!1429441))

(declare-fun m!1429443 () Bool)

(assert (=> start!132212 m!1429443))

(declare-fun m!1429445 () Bool)

(assert (=> start!132212 m!1429445))

(declare-fun m!1429447 () Bool)

(assert (=> start!132212 m!1429447))

(declare-fun m!1429449 () Bool)

(assert (=> bm!70803 m!1429449))

(declare-fun m!1429451 () Bool)

(assert (=> b!1550554 m!1429451))

(check-sat (not bm!70803) (not b!1550553) (not b!1550557) (not b_next!31875) (not b!1550554) b_and!51311 (not start!132212) tp_is_empty!38151 (not mapNonEmpty!58933) (not b!1550549) (not b!1550547) (not bm!70806))
(check-sat b_and!51311 (not b_next!31875))

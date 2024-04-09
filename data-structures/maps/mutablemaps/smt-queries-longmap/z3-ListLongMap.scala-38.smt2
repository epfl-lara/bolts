; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682 () Bool)

(assert start!682)

(declare-fun b_free!135 () Bool)

(declare-fun b_next!135 () Bool)

(assert (=> start!682 (= b_free!135 (not b_next!135))))

(declare-fun tp!625 () Bool)

(declare-fun b_and!275 () Bool)

(assert (=> start!682 (= tp!625 b_and!275)))

(declare-fun mapNonEmpty!281 () Bool)

(declare-fun mapRes!281 () Bool)

(declare-fun tp!626 () Bool)

(declare-fun e!2418 () Bool)

(assert (=> mapNonEmpty!281 (= mapRes!281 (and tp!626 e!2418))))

(declare-datatypes ((V!461 0))(
  ( (V!462 (val!112 Int)) )
))
(declare-datatypes ((ValueCell!90 0))(
  ( (ValueCellFull!90 (v!1200 V!461)) (EmptyCell!90) )
))
(declare-fun mapRest!281 () (Array (_ BitVec 32) ValueCell!90))

(declare-fun mapValue!281 () ValueCell!90)

(declare-fun mapKey!281 () (_ BitVec 32))

(declare-datatypes ((array!357 0))(
  ( (array!358 (arr!170 (Array (_ BitVec 32) ValueCell!90)) (size!232 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!357)

(assert (=> mapNonEmpty!281 (= (arr!170 _values!1492) (store mapRest!281 mapKey!281 mapValue!281))))

(declare-fun b!4564 () Bool)

(declare-fun e!2419 () Bool)

(declare-datatypes ((array!359 0))(
  ( (array!360 (arr!171 (Array (_ BitVec 32) (_ BitVec 64))) (size!233 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!359)

(assert (=> b!4564 (= e!2419 (not (or (bvsge #b00000000000000000000000000000000 (size!233 _keys!1806)) (bvslt (size!233 _keys!1806) #b01111111111111111111111111111111))))))

(declare-fun e!2415 () Bool)

(assert (=> b!4564 e!2415))

(declare-fun c!245 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(assert (=> b!4564 (= c!245 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!461)

(declare-datatypes ((Unit!39 0))(
  ( (Unit!40) )
))
(declare-fun lt!693 () Unit!39)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!461)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun lemmaKeyInListMapIsInArray!8 (array!359 array!357 (_ BitVec 32) (_ BitVec 32) V!461 V!461 (_ BitVec 64) Int) Unit!39)

(assert (=> b!4564 (= lt!693 (lemmaKeyInListMapIsInArray!8 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun res!5791 () Bool)

(assert (=> start!682 (=> (not res!5791) (not e!2419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!682 (= res!5791 (validMask!0 mask!2250))))

(assert (=> start!682 e!2419))

(assert (=> start!682 tp!625))

(assert (=> start!682 true))

(declare-fun e!2420 () Bool)

(declare-fun array_inv!117 (array!357) Bool)

(assert (=> start!682 (and (array_inv!117 _values!1492) e!2420)))

(declare-fun tp_is_empty!213 () Bool)

(assert (=> start!682 tp_is_empty!213))

(declare-fun array_inv!118 (array!359) Bool)

(assert (=> start!682 (array_inv!118 _keys!1806)))

(declare-fun b!4565 () Bool)

(declare-fun res!5788 () Bool)

(assert (=> b!4565 (=> (not res!5788) (not e!2419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4565 (= res!5788 (validKeyInArray!0 k0!1278))))

(declare-fun b!4566 () Bool)

(declare-fun e!2417 () Bool)

(assert (=> b!4566 (= e!2417 tp_is_empty!213)))

(declare-fun b!4567 () Bool)

(assert (=> b!4567 (= e!2415 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4568 () Bool)

(assert (=> b!4568 (= e!2420 (and e!2417 mapRes!281))))

(declare-fun condMapEmpty!281 () Bool)

(declare-fun mapDefault!281 () ValueCell!90)

(assert (=> b!4568 (= condMapEmpty!281 (= (arr!170 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!90)) mapDefault!281)))))

(declare-fun b!4569 () Bool)

(declare-fun arrayContainsKey!0 (array!359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4569 (= e!2415 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!4570 () Bool)

(declare-fun res!5787 () Bool)

(assert (=> b!4570 (=> (not res!5787) (not e!2419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!359 (_ BitVec 32)) Bool)

(assert (=> b!4570 (= res!5787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!4571 () Bool)

(declare-fun res!5786 () Bool)

(assert (=> b!4571 (=> (not res!5786) (not e!2419))))

(declare-datatypes ((tuple2!102 0))(
  ( (tuple2!103 (_1!51 (_ BitVec 64)) (_2!51 V!461)) )
))
(declare-datatypes ((List!108 0))(
  ( (Nil!105) (Cons!104 (h!670 tuple2!102) (t!2237 List!108)) )
))
(declare-datatypes ((ListLongMap!107 0))(
  ( (ListLongMap!108 (toList!69 List!108)) )
))
(declare-fun contains!40 (ListLongMap!107 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!28 (array!359 array!357 (_ BitVec 32) (_ BitVec 32) V!461 V!461 (_ BitVec 32) Int) ListLongMap!107)

(assert (=> b!4571 (= res!5786 (contains!40 (getCurrentListMap!28 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!4572 () Bool)

(assert (=> b!4572 (= e!2418 tp_is_empty!213)))

(declare-fun b!4573 () Bool)

(declare-fun res!5790 () Bool)

(assert (=> b!4573 (=> (not res!5790) (not e!2419))))

(declare-datatypes ((List!109 0))(
  ( (Nil!106) (Cons!105 (h!671 (_ BitVec 64)) (t!2238 List!109)) )
))
(declare-fun arrayNoDuplicates!0 (array!359 (_ BitVec 32) List!109) Bool)

(assert (=> b!4573 (= res!5790 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!106))))

(declare-fun b!4574 () Bool)

(declare-fun res!5789 () Bool)

(assert (=> b!4574 (=> (not res!5789) (not e!2419))))

(assert (=> b!4574 (= res!5789 (and (= (size!232 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!233 _keys!1806) (size!232 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!281 () Bool)

(assert (=> mapIsEmpty!281 mapRes!281))

(assert (= (and start!682 res!5791) b!4574))

(assert (= (and b!4574 res!5789) b!4570))

(assert (= (and b!4570 res!5787) b!4573))

(assert (= (and b!4573 res!5790) b!4571))

(assert (= (and b!4571 res!5786) b!4565))

(assert (= (and b!4565 res!5788) b!4564))

(assert (= (and b!4564 c!245) b!4569))

(assert (= (and b!4564 (not c!245)) b!4567))

(assert (= (and b!4568 condMapEmpty!281) mapIsEmpty!281))

(assert (= (and b!4568 (not condMapEmpty!281)) mapNonEmpty!281))

(get-info :version)

(assert (= (and mapNonEmpty!281 ((_ is ValueCellFull!90) mapValue!281)) b!4572))

(assert (= (and b!4568 ((_ is ValueCellFull!90) mapDefault!281)) b!4566))

(assert (= start!682 b!4568))

(declare-fun m!2445 () Bool)

(assert (=> start!682 m!2445))

(declare-fun m!2447 () Bool)

(assert (=> start!682 m!2447))

(declare-fun m!2449 () Bool)

(assert (=> start!682 m!2449))

(declare-fun m!2451 () Bool)

(assert (=> b!4570 m!2451))

(declare-fun m!2453 () Bool)

(assert (=> b!4569 m!2453))

(declare-fun m!2455 () Bool)

(assert (=> b!4573 m!2455))

(declare-fun m!2457 () Bool)

(assert (=> b!4565 m!2457))

(declare-fun m!2459 () Bool)

(assert (=> b!4571 m!2459))

(assert (=> b!4571 m!2459))

(declare-fun m!2461 () Bool)

(assert (=> b!4571 m!2461))

(declare-fun m!2463 () Bool)

(assert (=> mapNonEmpty!281 m!2463))

(declare-fun m!2465 () Bool)

(assert (=> b!4564 m!2465))

(check-sat (not b!4569) (not start!682) tp_is_empty!213 (not b!4565) (not b!4570) b_and!275 (not b!4564) (not b!4573) (not b_next!135) (not mapNonEmpty!281) (not b!4571))
(check-sat b_and!275 (not b_next!135))
(get-model)

(declare-fun bm!74 () Bool)

(declare-fun call!77 () Bool)

(assert (=> bm!74 (= call!77 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!4616 () Bool)

(declare-fun e!2447 () Bool)

(declare-fun e!2445 () Bool)

(assert (=> b!4616 (= e!2447 e!2445)))

(declare-fun lt!703 () (_ BitVec 64))

(assert (=> b!4616 (= lt!703 (select (arr!171 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!705 () Unit!39)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!359 (_ BitVec 64) (_ BitVec 32)) Unit!39)

(assert (=> b!4616 (= lt!705 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!703 #b00000000000000000000000000000000))))

(assert (=> b!4616 (arrayContainsKey!0 _keys!1806 lt!703 #b00000000000000000000000000000000)))

(declare-fun lt!704 () Unit!39)

(assert (=> b!4616 (= lt!704 lt!705)))

(declare-fun res!5815 () Bool)

(declare-datatypes ((SeekEntryResult!11 0))(
  ( (MissingZero!11 (index!2163 (_ BitVec 32))) (Found!11 (index!2164 (_ BitVec 32))) (Intermediate!11 (undefined!823 Bool) (index!2165 (_ BitVec 32)) (x!2385 (_ BitVec 32))) (Undefined!11) (MissingVacant!11 (index!2166 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!359 (_ BitVec 32)) SeekEntryResult!11)

(assert (=> b!4616 (= res!5815 (= (seekEntryOrOpen!0 (select (arr!171 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!11 #b00000000000000000000000000000000)))))

(assert (=> b!4616 (=> (not res!5815) (not e!2445))))

(declare-fun b!4617 () Bool)

(assert (=> b!4617 (= e!2445 call!77)))

(declare-fun b!4618 () Bool)

(declare-fun e!2446 () Bool)

(assert (=> b!4618 (= e!2446 e!2447)))

(declare-fun c!251 () Bool)

(assert (=> b!4618 (= c!251 (validKeyInArray!0 (select (arr!171 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun d!691 () Bool)

(declare-fun res!5814 () Bool)

(assert (=> d!691 (=> res!5814 e!2446)))

(assert (=> d!691 (= res!5814 (bvsge #b00000000000000000000000000000000 (size!233 _keys!1806)))))

(assert (=> d!691 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!2446)))

(declare-fun b!4619 () Bool)

(assert (=> b!4619 (= e!2447 call!77)))

(assert (= (and d!691 (not res!5814)) b!4618))

(assert (= (and b!4618 c!251) b!4616))

(assert (= (and b!4618 (not c!251)) b!4619))

(assert (= (and b!4616 res!5815) b!4617))

(assert (= (or b!4617 b!4619) bm!74))

(declare-fun m!2489 () Bool)

(assert (=> bm!74 m!2489))

(declare-fun m!2491 () Bool)

(assert (=> b!4616 m!2491))

(declare-fun m!2493 () Bool)

(assert (=> b!4616 m!2493))

(declare-fun m!2495 () Bool)

(assert (=> b!4616 m!2495))

(assert (=> b!4616 m!2491))

(declare-fun m!2497 () Bool)

(assert (=> b!4616 m!2497))

(assert (=> b!4618 m!2491))

(assert (=> b!4618 m!2491))

(declare-fun m!2499 () Bool)

(assert (=> b!4618 m!2499))

(assert (=> b!4570 d!691))

(declare-fun d!693 () Bool)

(assert (=> d!693 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4565 d!693))

(declare-fun d!695 () Bool)

(declare-fun e!2450 () Bool)

(assert (=> d!695 e!2450))

(declare-fun c!254 () Bool)

(assert (=> d!695 (= c!254 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!708 () Unit!39)

(declare-fun choose!136 (array!359 array!357 (_ BitVec 32) (_ BitVec 32) V!461 V!461 (_ BitVec 64) Int) Unit!39)

(assert (=> d!695 (= lt!708 (choose!136 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!695 (validMask!0 mask!2250)))

(assert (=> d!695 (= (lemmaKeyInListMapIsInArray!8 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!708)))

(declare-fun b!4624 () Bool)

(assert (=> b!4624 (= e!2450 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!4625 () Bool)

(assert (=> b!4625 (= e!2450 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!695 c!254) b!4624))

(assert (= (and d!695 (not c!254)) b!4625))

(declare-fun m!2501 () Bool)

(assert (=> d!695 m!2501))

(assert (=> d!695 m!2445))

(assert (=> b!4624 m!2453))

(assert (=> b!4564 d!695))

(declare-fun d!697 () Bool)

(assert (=> d!697 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!682 d!697))

(declare-fun d!699 () Bool)

(assert (=> d!699 (= (array_inv!117 _values!1492) (bvsge (size!232 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!682 d!699))

(declare-fun d!701 () Bool)

(assert (=> d!701 (= (array_inv!118 _keys!1806) (bvsge (size!233 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!682 d!701))

(declare-fun d!703 () Bool)

(declare-fun e!2456 () Bool)

(assert (=> d!703 e!2456))

(declare-fun res!5818 () Bool)

(assert (=> d!703 (=> res!5818 e!2456)))

(declare-fun lt!717 () Bool)

(assert (=> d!703 (= res!5818 (not lt!717))))

(declare-fun lt!718 () Bool)

(assert (=> d!703 (= lt!717 lt!718)))

(declare-fun lt!720 () Unit!39)

(declare-fun e!2455 () Unit!39)

(assert (=> d!703 (= lt!720 e!2455)))

(declare-fun c!257 () Bool)

(assert (=> d!703 (= c!257 lt!718)))

(declare-fun containsKey!2 (List!108 (_ BitVec 64)) Bool)

(assert (=> d!703 (= lt!718 (containsKey!2 (toList!69 (getCurrentListMap!28 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!703 (= (contains!40 (getCurrentListMap!28 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!717)))

(declare-fun b!4632 () Bool)

(declare-fun lt!719 () Unit!39)

(assert (=> b!4632 (= e!2455 lt!719)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2 (List!108 (_ BitVec 64)) Unit!39)

(assert (=> b!4632 (= lt!719 (lemmaContainsKeyImpliesGetValueByKeyDefined!2 (toList!69 (getCurrentListMap!28 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!14 0))(
  ( (Some!13 (v!1202 V!461)) (None!12) )
))
(declare-fun isDefined!3 (Option!14) Bool)

(declare-fun getValueByKey!8 (List!108 (_ BitVec 64)) Option!14)

(assert (=> b!4632 (isDefined!3 (getValueByKey!8 (toList!69 (getCurrentListMap!28 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!4633 () Bool)

(declare-fun Unit!41 () Unit!39)

(assert (=> b!4633 (= e!2455 Unit!41)))

(declare-fun b!4634 () Bool)

(assert (=> b!4634 (= e!2456 (isDefined!3 (getValueByKey!8 (toList!69 (getCurrentListMap!28 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!703 c!257) b!4632))

(assert (= (and d!703 (not c!257)) b!4633))

(assert (= (and d!703 (not res!5818)) b!4634))

(declare-fun m!2503 () Bool)

(assert (=> d!703 m!2503))

(declare-fun m!2505 () Bool)

(assert (=> b!4632 m!2505))

(declare-fun m!2507 () Bool)

(assert (=> b!4632 m!2507))

(assert (=> b!4632 m!2507))

(declare-fun m!2509 () Bool)

(assert (=> b!4632 m!2509))

(assert (=> b!4634 m!2507))

(assert (=> b!4634 m!2507))

(assert (=> b!4634 m!2509))

(assert (=> b!4571 d!703))

(declare-fun b!4677 () Bool)

(declare-fun e!2495 () Bool)

(declare-fun call!96 () Bool)

(assert (=> b!4677 (= e!2495 (not call!96))))

(declare-fun b!4678 () Bool)

(declare-fun e!2489 () Bool)

(declare-fun lt!765 () ListLongMap!107)

(declare-fun apply!18 (ListLongMap!107 (_ BitVec 64)) V!461)

(assert (=> b!4678 (= e!2489 (= (apply!18 lt!765 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun b!4679 () Bool)

(declare-fun res!5841 () Bool)

(declare-fun e!2483 () Bool)

(assert (=> b!4679 (=> (not res!5841) (not e!2483))))

(assert (=> b!4679 (= res!5841 e!2495)))

(declare-fun c!270 () Bool)

(assert (=> b!4679 (= c!270 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!94 () ListLongMap!107)

(declare-fun c!275 () Bool)

(declare-fun call!92 () ListLongMap!107)

(declare-fun bm!89 () Bool)

(declare-fun call!95 () ListLongMap!107)

(declare-fun call!97 () ListLongMap!107)

(declare-fun c!274 () Bool)

(declare-fun +!5 (ListLongMap!107 tuple2!102) ListLongMap!107)

(assert (=> bm!89 (= call!95 (+!5 (ite c!275 call!92 (ite c!274 call!97 call!94)) (ite (or c!275 c!274) (tuple2!103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun b!4680 () Bool)

(declare-fun res!5839 () Bool)

(assert (=> b!4680 (=> (not res!5839) (not e!2483))))

(declare-fun e!2491 () Bool)

(assert (=> b!4680 (= res!5839 e!2491)))

(declare-fun res!5838 () Bool)

(assert (=> b!4680 (=> res!5838 e!2491)))

(declare-fun e!2487 () Bool)

(assert (=> b!4680 (= res!5838 (not e!2487))))

(declare-fun res!5844 () Bool)

(assert (=> b!4680 (=> (not res!5844) (not e!2487))))

(assert (=> b!4680 (= res!5844 (bvslt #b00000000000000000000000000000000 (size!233 _keys!1806)))))

(declare-fun bm!90 () Bool)

(declare-fun call!93 () Bool)

(assert (=> bm!90 (= call!93 (contains!40 lt!765 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4681 () Bool)

(assert (=> b!4681 (= e!2495 e!2489)))

(declare-fun res!5845 () Bool)

(assert (=> b!4681 (= res!5845 call!96)))

(assert (=> b!4681 (=> (not res!5845) (not e!2489))))

(declare-fun b!4682 () Bool)

(declare-fun c!273 () Bool)

(assert (=> b!4682 (= c!273 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2494 () ListLongMap!107)

(declare-fun e!2484 () ListLongMap!107)

(assert (=> b!4682 (= e!2494 e!2484)))

(declare-fun b!4683 () Bool)

(declare-fun e!2486 () Bool)

(assert (=> b!4683 (= e!2486 (= (apply!18 lt!765 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun b!4684 () Bool)

(declare-fun call!98 () ListLongMap!107)

(assert (=> b!4684 (= e!2484 call!98)))

(declare-fun bm!91 () Bool)

(assert (=> bm!91 (= call!96 (contains!40 lt!765 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2490 () Bool)

(declare-fun b!4685 () Bool)

(declare-fun get!90 (ValueCell!90 V!461) V!461)

(declare-fun dynLambda!40 (Int (_ BitVec 64)) V!461)

(assert (=> b!4685 (= e!2490 (= (apply!18 lt!765 (select (arr!171 _keys!1806) #b00000000000000000000000000000000)) (get!90 (select (arr!170 _values!1492) #b00000000000000000000000000000000) (dynLambda!40 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4685 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!232 _values!1492)))))

(assert (=> b!4685 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!233 _keys!1806)))))

(declare-fun bm!92 () Bool)

(assert (=> bm!92 (= call!98 call!95)))

(declare-fun d!705 () Bool)

(assert (=> d!705 e!2483))

(declare-fun res!5842 () Bool)

(assert (=> d!705 (=> (not res!5842) (not e!2483))))

(assert (=> d!705 (= res!5842 (or (bvsge #b00000000000000000000000000000000 (size!233 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!233 _keys!1806)))))))

(declare-fun lt!784 () ListLongMap!107)

(assert (=> d!705 (= lt!765 lt!784)))

(declare-fun lt!768 () Unit!39)

(declare-fun e!2493 () Unit!39)

(assert (=> d!705 (= lt!768 e!2493)))

(declare-fun c!271 () Bool)

(declare-fun e!2492 () Bool)

(assert (=> d!705 (= c!271 e!2492)))

(declare-fun res!5837 () Bool)

(assert (=> d!705 (=> (not res!5837) (not e!2492))))

(assert (=> d!705 (= res!5837 (bvslt #b00000000000000000000000000000000 (size!233 _keys!1806)))))

(declare-fun e!2488 () ListLongMap!107)

(assert (=> d!705 (= lt!784 e!2488)))

(assert (=> d!705 (= c!275 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!705 (validMask!0 mask!2250)))

(assert (=> d!705 (= (getCurrentListMap!28 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!765)))

(declare-fun b!4686 () Bool)

(declare-fun e!2485 () Bool)

(assert (=> b!4686 (= e!2483 e!2485)))

(declare-fun c!272 () Bool)

(assert (=> b!4686 (= c!272 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4687 () Bool)

(assert (=> b!4687 (= e!2485 e!2486)))

(declare-fun res!5843 () Bool)

(assert (=> b!4687 (= res!5843 call!93)))

(assert (=> b!4687 (=> (not res!5843) (not e!2486))))

(declare-fun b!4688 () Bool)

(assert (=> b!4688 (= e!2491 e!2490)))

(declare-fun res!5840 () Bool)

(assert (=> b!4688 (=> (not res!5840) (not e!2490))))

(assert (=> b!4688 (= res!5840 (contains!40 lt!765 (select (arr!171 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!4688 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!233 _keys!1806)))))

(declare-fun bm!93 () Bool)

(assert (=> bm!93 (= call!94 call!97)))

(declare-fun bm!94 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2 (array!359 array!357 (_ BitVec 32) (_ BitVec 32) V!461 V!461 (_ BitVec 32) Int) ListLongMap!107)

(assert (=> bm!94 (= call!92 (getCurrentListMapNoExtraKeys!2 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun b!4689 () Bool)

(assert (=> b!4689 (= e!2492 (validKeyInArray!0 (select (arr!171 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!4690 () Bool)

(assert (=> b!4690 (= e!2488 e!2494)))

(assert (=> b!4690 (= c!274 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4691 () Bool)

(assert (=> b!4691 (= e!2487 (validKeyInArray!0 (select (arr!171 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!95 () Bool)

(assert (=> bm!95 (= call!97 call!92)))

(declare-fun b!4692 () Bool)

(declare-fun lt!778 () Unit!39)

(assert (=> b!4692 (= e!2493 lt!778)))

(declare-fun lt!776 () ListLongMap!107)

(assert (=> b!4692 (= lt!776 (getCurrentListMapNoExtraKeys!2 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!772 () (_ BitVec 64))

(assert (=> b!4692 (= lt!772 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!773 () (_ BitVec 64))

(assert (=> b!4692 (= lt!773 (select (arr!171 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!771 () Unit!39)

(declare-fun addStillContains!3 (ListLongMap!107 (_ BitVec 64) V!461 (_ BitVec 64)) Unit!39)

(assert (=> b!4692 (= lt!771 (addStillContains!3 lt!776 lt!772 zeroValue!1434 lt!773))))

(assert (=> b!4692 (contains!40 (+!5 lt!776 (tuple2!103 lt!772 zeroValue!1434)) lt!773)))

(declare-fun lt!786 () Unit!39)

(assert (=> b!4692 (= lt!786 lt!771)))

(declare-fun lt!780 () ListLongMap!107)

(assert (=> b!4692 (= lt!780 (getCurrentListMapNoExtraKeys!2 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!783 () (_ BitVec 64))

(assert (=> b!4692 (= lt!783 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!774 () (_ BitVec 64))

(assert (=> b!4692 (= lt!774 (select (arr!171 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!766 () Unit!39)

(declare-fun addApplyDifferent!3 (ListLongMap!107 (_ BitVec 64) V!461 (_ BitVec 64)) Unit!39)

(assert (=> b!4692 (= lt!766 (addApplyDifferent!3 lt!780 lt!783 minValue!1434 lt!774))))

(assert (=> b!4692 (= (apply!18 (+!5 lt!780 (tuple2!103 lt!783 minValue!1434)) lt!774) (apply!18 lt!780 lt!774))))

(declare-fun lt!782 () Unit!39)

(assert (=> b!4692 (= lt!782 lt!766)))

(declare-fun lt!769 () ListLongMap!107)

(assert (=> b!4692 (= lt!769 (getCurrentListMapNoExtraKeys!2 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!781 () (_ BitVec 64))

(assert (=> b!4692 (= lt!781 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!777 () (_ BitVec 64))

(assert (=> b!4692 (= lt!777 (select (arr!171 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!779 () Unit!39)

(assert (=> b!4692 (= lt!779 (addApplyDifferent!3 lt!769 lt!781 zeroValue!1434 lt!777))))

(assert (=> b!4692 (= (apply!18 (+!5 lt!769 (tuple2!103 lt!781 zeroValue!1434)) lt!777) (apply!18 lt!769 lt!777))))

(declare-fun lt!775 () Unit!39)

(assert (=> b!4692 (= lt!775 lt!779)))

(declare-fun lt!767 () ListLongMap!107)

(assert (=> b!4692 (= lt!767 (getCurrentListMapNoExtraKeys!2 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!770 () (_ BitVec 64))

(assert (=> b!4692 (= lt!770 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!785 () (_ BitVec 64))

(assert (=> b!4692 (= lt!785 (select (arr!171 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!4692 (= lt!778 (addApplyDifferent!3 lt!767 lt!770 minValue!1434 lt!785))))

(assert (=> b!4692 (= (apply!18 (+!5 lt!767 (tuple2!103 lt!770 minValue!1434)) lt!785) (apply!18 lt!767 lt!785))))

(declare-fun b!4693 () Bool)

(declare-fun Unit!42 () Unit!39)

(assert (=> b!4693 (= e!2493 Unit!42)))

(declare-fun b!4694 () Bool)

(assert (=> b!4694 (= e!2484 call!94)))

(declare-fun b!4695 () Bool)

(assert (=> b!4695 (= e!2494 call!98)))

(declare-fun b!4696 () Bool)

(assert (=> b!4696 (= e!2485 (not call!93))))

(declare-fun b!4697 () Bool)

(assert (=> b!4697 (= e!2488 (+!5 call!95 (tuple2!103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(assert (= (and d!705 c!275) b!4697))

(assert (= (and d!705 (not c!275)) b!4690))

(assert (= (and b!4690 c!274) b!4695))

(assert (= (and b!4690 (not c!274)) b!4682))

(assert (= (and b!4682 c!273) b!4684))

(assert (= (and b!4682 (not c!273)) b!4694))

(assert (= (or b!4684 b!4694) bm!93))

(assert (= (or b!4695 bm!93) bm!95))

(assert (= (or b!4695 b!4684) bm!92))

(assert (= (or b!4697 bm!95) bm!94))

(assert (= (or b!4697 bm!92) bm!89))

(assert (= (and d!705 res!5837) b!4689))

(assert (= (and d!705 c!271) b!4692))

(assert (= (and d!705 (not c!271)) b!4693))

(assert (= (and d!705 res!5842) b!4680))

(assert (= (and b!4680 res!5844) b!4691))

(assert (= (and b!4680 (not res!5838)) b!4688))

(assert (= (and b!4688 res!5840) b!4685))

(assert (= (and b!4680 res!5839) b!4679))

(assert (= (and b!4679 c!270) b!4681))

(assert (= (and b!4679 (not c!270)) b!4677))

(assert (= (and b!4681 res!5845) b!4678))

(assert (= (or b!4681 b!4677) bm!91))

(assert (= (and b!4679 res!5841) b!4686))

(assert (= (and b!4686 c!272) b!4687))

(assert (= (and b!4686 (not c!272)) b!4696))

(assert (= (and b!4687 res!5843) b!4683))

(assert (= (or b!4687 b!4696) bm!90))

(declare-fun b_lambda!323 () Bool)

(assert (=> (not b_lambda!323) (not b!4685)))

(declare-fun t!2242 () Bool)

(declare-fun tb!129 () Bool)

(assert (=> (and start!682 (= defaultEntry!1495 defaultEntry!1495) t!2242) tb!129))

(declare-fun result!189 () Bool)

(assert (=> tb!129 (= result!189 tp_is_empty!213)))

(assert (=> b!4685 t!2242))

(declare-fun b_and!279 () Bool)

(assert (= b_and!275 (and (=> t!2242 result!189) b_and!279)))

(assert (=> b!4691 m!2491))

(assert (=> b!4691 m!2491))

(assert (=> b!4691 m!2499))

(declare-fun m!2511 () Bool)

(assert (=> bm!91 m!2511))

(declare-fun m!2513 () Bool)

(assert (=> b!4697 m!2513))

(declare-fun m!2515 () Bool)

(assert (=> bm!90 m!2515))

(declare-fun m!2517 () Bool)

(assert (=> bm!89 m!2517))

(declare-fun m!2519 () Bool)

(assert (=> bm!94 m!2519))

(assert (=> b!4689 m!2491))

(assert (=> b!4689 m!2491))

(assert (=> b!4689 m!2499))

(assert (=> d!705 m!2445))

(declare-fun m!2521 () Bool)

(assert (=> b!4692 m!2521))

(declare-fun m!2523 () Bool)

(assert (=> b!4692 m!2523))

(declare-fun m!2525 () Bool)

(assert (=> b!4692 m!2525))

(declare-fun m!2527 () Bool)

(assert (=> b!4692 m!2527))

(declare-fun m!2529 () Bool)

(assert (=> b!4692 m!2529))

(declare-fun m!2531 () Bool)

(assert (=> b!4692 m!2531))

(assert (=> b!4692 m!2491))

(declare-fun m!2533 () Bool)

(assert (=> b!4692 m!2533))

(declare-fun m!2535 () Bool)

(assert (=> b!4692 m!2535))

(assert (=> b!4692 m!2519))

(assert (=> b!4692 m!2527))

(assert (=> b!4692 m!2533))

(declare-fun m!2537 () Bool)

(assert (=> b!4692 m!2537))

(declare-fun m!2539 () Bool)

(assert (=> b!4692 m!2539))

(declare-fun m!2541 () Bool)

(assert (=> b!4692 m!2541))

(declare-fun m!2543 () Bool)

(assert (=> b!4692 m!2543))

(assert (=> b!4692 m!2531))

(declare-fun m!2545 () Bool)

(assert (=> b!4692 m!2545))

(assert (=> b!4692 m!2539))

(declare-fun m!2547 () Bool)

(assert (=> b!4692 m!2547))

(declare-fun m!2549 () Bool)

(assert (=> b!4692 m!2549))

(declare-fun m!2551 () Bool)

(assert (=> b!4685 m!2551))

(declare-fun m!2553 () Bool)

(assert (=> b!4685 m!2553))

(assert (=> b!4685 m!2551))

(declare-fun m!2555 () Bool)

(assert (=> b!4685 m!2555))

(assert (=> b!4685 m!2553))

(assert (=> b!4685 m!2491))

(assert (=> b!4685 m!2491))

(declare-fun m!2557 () Bool)

(assert (=> b!4685 m!2557))

(declare-fun m!2559 () Bool)

(assert (=> b!4678 m!2559))

(declare-fun m!2561 () Bool)

(assert (=> b!4683 m!2561))

(assert (=> b!4688 m!2491))

(assert (=> b!4688 m!2491))

(declare-fun m!2563 () Bool)

(assert (=> b!4688 m!2563))

(assert (=> b!4571 d!705))

(declare-fun b!4710 () Bool)

(declare-fun e!2506 () Bool)

(declare-fun contains!42 (List!109 (_ BitVec 64)) Bool)

(assert (=> b!4710 (= e!2506 (contains!42 Nil!106 (select (arr!171 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!4711 () Bool)

(declare-fun e!2507 () Bool)

(declare-fun call!101 () Bool)

(assert (=> b!4711 (= e!2507 call!101)))

(declare-fun bm!98 () Bool)

(declare-fun c!278 () Bool)

(assert (=> bm!98 (= call!101 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!278 (Cons!105 (select (arr!171 _keys!1806) #b00000000000000000000000000000000) Nil!106) Nil!106)))))

(declare-fun d!707 () Bool)

(declare-fun res!5852 () Bool)

(declare-fun e!2505 () Bool)

(assert (=> d!707 (=> res!5852 e!2505)))

(assert (=> d!707 (= res!5852 (bvsge #b00000000000000000000000000000000 (size!233 _keys!1806)))))

(assert (=> d!707 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!106) e!2505)))

(declare-fun b!4712 () Bool)

(declare-fun e!2504 () Bool)

(assert (=> b!4712 (= e!2504 e!2507)))

(assert (=> b!4712 (= c!278 (validKeyInArray!0 (select (arr!171 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!4713 () Bool)

(assert (=> b!4713 (= e!2505 e!2504)))

(declare-fun res!5853 () Bool)

(assert (=> b!4713 (=> (not res!5853) (not e!2504))))

(assert (=> b!4713 (= res!5853 (not e!2506))))

(declare-fun res!5854 () Bool)

(assert (=> b!4713 (=> (not res!5854) (not e!2506))))

(assert (=> b!4713 (= res!5854 (validKeyInArray!0 (select (arr!171 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!4714 () Bool)

(assert (=> b!4714 (= e!2507 call!101)))

(assert (= (and d!707 (not res!5852)) b!4713))

(assert (= (and b!4713 res!5854) b!4710))

(assert (= (and b!4713 res!5853) b!4712))

(assert (= (and b!4712 c!278) b!4711))

(assert (= (and b!4712 (not c!278)) b!4714))

(assert (= (or b!4711 b!4714) bm!98))

(assert (=> b!4710 m!2491))

(assert (=> b!4710 m!2491))

(declare-fun m!2565 () Bool)

(assert (=> b!4710 m!2565))

(assert (=> bm!98 m!2491))

(declare-fun m!2567 () Bool)

(assert (=> bm!98 m!2567))

(assert (=> b!4712 m!2491))

(assert (=> b!4712 m!2491))

(assert (=> b!4712 m!2499))

(assert (=> b!4713 m!2491))

(assert (=> b!4713 m!2491))

(assert (=> b!4713 m!2499))

(assert (=> b!4573 d!707))

(declare-fun d!709 () Bool)

(declare-fun res!5859 () Bool)

(declare-fun e!2512 () Bool)

(assert (=> d!709 (=> res!5859 e!2512)))

(assert (=> d!709 (= res!5859 (= (select (arr!171 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!709 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!2512)))

(declare-fun b!4719 () Bool)

(declare-fun e!2513 () Bool)

(assert (=> b!4719 (= e!2512 e!2513)))

(declare-fun res!5860 () Bool)

(assert (=> b!4719 (=> (not res!5860) (not e!2513))))

(assert (=> b!4719 (= res!5860 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!233 _keys!1806)))))

(declare-fun b!4720 () Bool)

(assert (=> b!4720 (= e!2513 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!709 (not res!5859)) b!4719))

(assert (= (and b!4719 res!5860) b!4720))

(assert (=> d!709 m!2491))

(declare-fun m!2569 () Bool)

(assert (=> b!4720 m!2569))

(assert (=> b!4569 d!709))

(declare-fun mapNonEmpty!287 () Bool)

(declare-fun mapRes!287 () Bool)

(declare-fun tp!635 () Bool)

(declare-fun e!2518 () Bool)

(assert (=> mapNonEmpty!287 (= mapRes!287 (and tp!635 e!2518))))

(declare-fun mapKey!287 () (_ BitVec 32))

(declare-fun mapRest!287 () (Array (_ BitVec 32) ValueCell!90))

(declare-fun mapValue!287 () ValueCell!90)

(assert (=> mapNonEmpty!287 (= mapRest!281 (store mapRest!287 mapKey!287 mapValue!287))))

(declare-fun b!4727 () Bool)

(assert (=> b!4727 (= e!2518 tp_is_empty!213)))

(declare-fun condMapEmpty!287 () Bool)

(declare-fun mapDefault!287 () ValueCell!90)

(assert (=> mapNonEmpty!281 (= condMapEmpty!287 (= mapRest!281 ((as const (Array (_ BitVec 32) ValueCell!90)) mapDefault!287)))))

(declare-fun e!2519 () Bool)

(assert (=> mapNonEmpty!281 (= tp!626 (and e!2519 mapRes!287))))

(declare-fun mapIsEmpty!287 () Bool)

(assert (=> mapIsEmpty!287 mapRes!287))

(declare-fun b!4728 () Bool)

(assert (=> b!4728 (= e!2519 tp_is_empty!213)))

(assert (= (and mapNonEmpty!281 condMapEmpty!287) mapIsEmpty!287))

(assert (= (and mapNonEmpty!281 (not condMapEmpty!287)) mapNonEmpty!287))

(assert (= (and mapNonEmpty!287 ((_ is ValueCellFull!90) mapValue!287)) b!4727))

(assert (= (and mapNonEmpty!281 ((_ is ValueCellFull!90) mapDefault!287)) b!4728))

(declare-fun m!2571 () Bool)

(assert (=> mapNonEmpty!287 m!2571))

(declare-fun b_lambda!325 () Bool)

(assert (= b_lambda!323 (or (and start!682 b_free!135) b_lambda!325)))

(check-sat (not b!4691) (not mapNonEmpty!287) (not b!4688) (not b!4678) (not d!703) tp_is_empty!213 (not b!4697) (not b!4692) (not bm!90) (not b!4616) (not bm!98) (not bm!91) b_and!279 (not d!695) (not bm!94) (not b!4618) (not b!4713) (not b!4712) (not b!4720) (not bm!74) (not b!4710) (not b!4683) (not d!705) (not b_next!135) (not b!4685) (not b!4624) (not b!4634) (not bm!89) (not b_lambda!325) (not b!4632) (not b!4689))
(check-sat b_and!279 (not b_next!135))

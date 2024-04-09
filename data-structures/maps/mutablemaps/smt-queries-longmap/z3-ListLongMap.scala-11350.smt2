; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132038 () Bool)

(assert start!132038)

(declare-fun b_free!31719 () Bool)

(declare-fun b_next!31719 () Bool)

(assert (=> start!132038 (= b_free!31719 (not b_next!31719))))

(declare-fun tp!111409 () Bool)

(declare-fun b_and!51139 () Bool)

(assert (=> start!132038 (= tp!111409 b_and!51139)))

(declare-datatypes ((V!59103 0))(
  ( (V!59104 (val!19075 Int)) )
))
(declare-datatypes ((tuple2!24674 0))(
  ( (tuple2!24675 (_1!12347 (_ BitVec 64)) (_2!12347 V!59103)) )
))
(declare-datatypes ((List!36185 0))(
  ( (Nil!36182) (Cons!36181 (h!37627 tuple2!24674) (t!50886 List!36185)) )
))
(declare-datatypes ((ListLongMap!22295 0))(
  ( (ListLongMap!22296 (toList!11163 List!36185)) )
))
(declare-fun call!69620 () ListLongMap!22295)

(declare-fun c!141800 () Bool)

(declare-fun zeroValue!436 () V!59103)

(declare-fun bm!69614 () Bool)

(declare-fun c!141799 () Bool)

(declare-fun call!69618 () ListLongMap!22295)

(declare-fun call!69617 () ListLongMap!22295)

(declare-fun minValue!436 () V!59103)

(declare-fun call!69619 () ListLongMap!22295)

(declare-fun +!4891 (ListLongMap!22295 tuple2!24674) ListLongMap!22295)

(assert (=> bm!69614 (= call!69620 (+!4891 (ite c!141800 call!69619 (ite c!141799 call!69617 call!69618)) (ite (or c!141800 c!141799) (tuple2!24675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24675 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1546570 () Bool)

(declare-fun res!1060368 () Bool)

(declare-fun e!860884 () Bool)

(assert (=> b!1546570 (=> (not res!1060368) (not e!860884))))

(declare-datatypes ((array!103157 0))(
  ( (array!103158 (arr!49776 (Array (_ BitVec 32) (_ BitVec 64))) (size!50327 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103157)

(declare-datatypes ((List!36186 0))(
  ( (Nil!36183) (Cons!36182 (h!37628 (_ BitVec 64)) (t!50887 List!36186)) )
))
(declare-fun arrayNoDuplicates!0 (array!103157 (_ BitVec 32) List!36186) Bool)

(assert (=> b!1546570 (= res!1060368 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36183))))

(declare-fun b!1546571 () Bool)

(declare-fun e!860888 () Bool)

(assert (=> b!1546571 (= e!860888 (not true))))

(declare-fun lt!666565 () ListLongMap!22295)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun apply!1077 (ListLongMap!22295 (_ BitVec 64)) V!59103)

(assert (=> b!1546571 (= (apply!1077 (+!4891 lt!666565 (tuple2!24675 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49776 _keys!618) from!762)) (apply!1077 lt!666565 (select (arr!49776 _keys!618) from!762)))))

(declare-datatypes ((Unit!51484 0))(
  ( (Unit!51485) )
))
(declare-fun lt!666567 () Unit!51484)

(declare-fun addApplyDifferent!580 (ListLongMap!22295 (_ BitVec 64) V!59103 (_ BitVec 64)) Unit!51484)

(assert (=> b!1546571 (= lt!666567 (addApplyDifferent!580 lt!666565 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49776 _keys!618) from!762)))))

(declare-fun contains!10061 (ListLongMap!22295 (_ BitVec 64)) Bool)

(assert (=> b!1546571 (contains!10061 (+!4891 lt!666565 (tuple2!24675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49776 _keys!618) from!762))))

(declare-fun lt!666566 () Unit!51484)

(declare-fun addStillContains!1243 (ListLongMap!22295 (_ BitVec 64) V!59103 (_ BitVec 64)) Unit!51484)

(assert (=> b!1546571 (= lt!666566 (addStillContains!1243 lt!666565 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49776 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18087 0))(
  ( (ValueCellFull!18087 (v!21873 V!59103)) (EmptyCell!18087) )
))
(declare-datatypes ((array!103159 0))(
  ( (array!103160 (arr!49777 (Array (_ BitVec 32) ValueCell!18087)) (size!50328 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103159)

(declare-fun getCurrentListMapNoExtraKeys!6608 (array!103157 array!103159 (_ BitVec 32) (_ BitVec 32) V!59103 V!59103 (_ BitVec 32) Int) ListLongMap!22295)

(assert (=> b!1546571 (= lt!666565 (getCurrentListMapNoExtraKeys!6608 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546572 () Bool)

(declare-fun e!860886 () ListLongMap!22295)

(declare-fun call!69621 () ListLongMap!22295)

(assert (=> b!1546572 (= e!860886 call!69621)))

(declare-fun b!1546573 () Bool)

(declare-fun e!860889 () Bool)

(declare-fun tp_is_empty!37995 () Bool)

(assert (=> b!1546573 (= e!860889 tp_is_empty!37995)))

(declare-fun bm!69615 () Bool)

(assert (=> bm!69615 (= call!69619 (getCurrentListMapNoExtraKeys!6608 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546574 () Bool)

(declare-fun e!860887 () Bool)

(declare-fun mapRes!58696 () Bool)

(assert (=> b!1546574 (= e!860887 (and e!860889 mapRes!58696))))

(declare-fun condMapEmpty!58696 () Bool)

(declare-fun mapDefault!58696 () ValueCell!18087)

(assert (=> b!1546574 (= condMapEmpty!58696 (= (arr!49777 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18087)) mapDefault!58696)))))

(declare-fun b!1546575 () Bool)

(declare-fun res!1060372 () Bool)

(assert (=> b!1546575 (=> (not res!1060372) (not e!860884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103157 (_ BitVec 32)) Bool)

(assert (=> b!1546575 (= res!1060372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58696 () Bool)

(assert (=> mapIsEmpty!58696 mapRes!58696))

(declare-fun b!1546576 () Bool)

(declare-fun res!1060370 () Bool)

(assert (=> b!1546576 (=> (not res!1060370) (not e!860888))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546576 (= res!1060370 (validKeyInArray!0 (select (arr!49776 _keys!618) from!762)))))

(declare-fun b!1546577 () Bool)

(declare-fun res!1060367 () Bool)

(assert (=> b!1546577 (=> (not res!1060367) (not e!860884))))

(assert (=> b!1546577 (= res!1060367 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50327 _keys!618))))))

(declare-fun b!1546578 () Bool)

(declare-fun e!860883 () ListLongMap!22295)

(assert (=> b!1546578 (= e!860883 (+!4891 call!69620 (tuple2!24675 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546579 () Bool)

(declare-fun e!860885 () ListLongMap!22295)

(assert (=> b!1546579 (= e!860885 call!69621)))

(declare-fun bm!69616 () Bool)

(assert (=> bm!69616 (= call!69621 call!69620)))

(declare-fun b!1546580 () Bool)

(assert (=> b!1546580 (= e!860883 e!860886)))

(declare-fun lt!666569 () Bool)

(assert (=> b!1546580 (= c!141799 (and (not lt!666569) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1546581 () Bool)

(declare-fun res!1060371 () Bool)

(assert (=> b!1546581 (=> (not res!1060371) (not e!860884))))

(assert (=> b!1546581 (= res!1060371 (and (= (size!50328 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50327 _keys!618) (size!50328 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1546582 () Bool)

(declare-fun c!141798 () Bool)

(assert (=> b!1546582 (= c!141798 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666569))))

(assert (=> b!1546582 (= e!860886 e!860885)))

(declare-fun b!1546583 () Bool)

(assert (=> b!1546583 (= e!860884 e!860888)))

(declare-fun res!1060373 () Bool)

(assert (=> b!1546583 (=> (not res!1060373) (not e!860888))))

(assert (=> b!1546583 (= res!1060373 (bvslt from!762 (size!50327 _keys!618)))))

(declare-fun lt!666568 () ListLongMap!22295)

(assert (=> b!1546583 (= lt!666568 e!860883)))

(assert (=> b!1546583 (= c!141800 (and (not lt!666569) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546583 (= lt!666569 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546584 () Bool)

(declare-fun e!860890 () Bool)

(assert (=> b!1546584 (= e!860890 tp_is_empty!37995)))

(declare-fun mapNonEmpty!58696 () Bool)

(declare-fun tp!111410 () Bool)

(assert (=> mapNonEmpty!58696 (= mapRes!58696 (and tp!111410 e!860890))))

(declare-fun mapKey!58696 () (_ BitVec 32))

(declare-fun mapValue!58696 () ValueCell!18087)

(declare-fun mapRest!58696 () (Array (_ BitVec 32) ValueCell!18087))

(assert (=> mapNonEmpty!58696 (= (arr!49777 _values!470) (store mapRest!58696 mapKey!58696 mapValue!58696))))

(declare-fun res!1060369 () Bool)

(assert (=> start!132038 (=> (not res!1060369) (not e!860884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132038 (= res!1060369 (validMask!0 mask!926))))

(assert (=> start!132038 e!860884))

(declare-fun array_inv!38637 (array!103157) Bool)

(assert (=> start!132038 (array_inv!38637 _keys!618)))

(assert (=> start!132038 tp_is_empty!37995))

(assert (=> start!132038 true))

(assert (=> start!132038 tp!111409))

(declare-fun array_inv!38638 (array!103159) Bool)

(assert (=> start!132038 (and (array_inv!38638 _values!470) e!860887)))

(declare-fun bm!69617 () Bool)

(assert (=> bm!69617 (= call!69618 call!69617)))

(declare-fun bm!69618 () Bool)

(assert (=> bm!69618 (= call!69617 call!69619)))

(declare-fun b!1546585 () Bool)

(assert (=> b!1546585 (= e!860885 call!69618)))

(assert (= (and start!132038 res!1060369) b!1546581))

(assert (= (and b!1546581 res!1060371) b!1546575))

(assert (= (and b!1546575 res!1060372) b!1546570))

(assert (= (and b!1546570 res!1060368) b!1546577))

(assert (= (and b!1546577 res!1060367) b!1546583))

(assert (= (and b!1546583 c!141800) b!1546578))

(assert (= (and b!1546583 (not c!141800)) b!1546580))

(assert (= (and b!1546580 c!141799) b!1546572))

(assert (= (and b!1546580 (not c!141799)) b!1546582))

(assert (= (and b!1546582 c!141798) b!1546579))

(assert (= (and b!1546582 (not c!141798)) b!1546585))

(assert (= (or b!1546579 b!1546585) bm!69617))

(assert (= (or b!1546572 bm!69617) bm!69618))

(assert (= (or b!1546572 b!1546579) bm!69616))

(assert (= (or b!1546578 bm!69618) bm!69615))

(assert (= (or b!1546578 bm!69616) bm!69614))

(assert (= (and b!1546583 res!1060373) b!1546576))

(assert (= (and b!1546576 res!1060370) b!1546571))

(assert (= (and b!1546574 condMapEmpty!58696) mapIsEmpty!58696))

(assert (= (and b!1546574 (not condMapEmpty!58696)) mapNonEmpty!58696))

(get-info :version)

(assert (= (and mapNonEmpty!58696 ((_ is ValueCellFull!18087) mapValue!58696)) b!1546584))

(assert (= (and b!1546574 ((_ is ValueCellFull!18087) mapDefault!58696)) b!1546573))

(assert (= start!132038 b!1546574))

(declare-fun m!1426423 () Bool)

(assert (=> b!1546570 m!1426423))

(declare-fun m!1426425 () Bool)

(assert (=> b!1546578 m!1426425))

(declare-fun m!1426427 () Bool)

(assert (=> b!1546576 m!1426427))

(assert (=> b!1546576 m!1426427))

(declare-fun m!1426429 () Bool)

(assert (=> b!1546576 m!1426429))

(declare-fun m!1426431 () Bool)

(assert (=> bm!69614 m!1426431))

(declare-fun m!1426433 () Bool)

(assert (=> start!132038 m!1426433))

(declare-fun m!1426435 () Bool)

(assert (=> start!132038 m!1426435))

(declare-fun m!1426437 () Bool)

(assert (=> start!132038 m!1426437))

(declare-fun m!1426439 () Bool)

(assert (=> bm!69615 m!1426439))

(declare-fun m!1426441 () Bool)

(assert (=> mapNonEmpty!58696 m!1426441))

(declare-fun m!1426443 () Bool)

(assert (=> b!1546575 m!1426443))

(assert (=> b!1546571 m!1426427))

(declare-fun m!1426445 () Bool)

(assert (=> b!1546571 m!1426445))

(declare-fun m!1426447 () Bool)

(assert (=> b!1546571 m!1426447))

(assert (=> b!1546571 m!1426427))

(declare-fun m!1426449 () Bool)

(assert (=> b!1546571 m!1426449))

(declare-fun m!1426451 () Bool)

(assert (=> b!1546571 m!1426451))

(assert (=> b!1546571 m!1426427))

(declare-fun m!1426453 () Bool)

(assert (=> b!1546571 m!1426453))

(assert (=> b!1546571 m!1426439))

(assert (=> b!1546571 m!1426427))

(assert (=> b!1546571 m!1426427))

(declare-fun m!1426455 () Bool)

(assert (=> b!1546571 m!1426455))

(assert (=> b!1546571 m!1426427))

(declare-fun m!1426457 () Bool)

(assert (=> b!1546571 m!1426457))

(assert (=> b!1546571 m!1426447))

(assert (=> b!1546571 m!1426451))

(check-sat (not mapNonEmpty!58696) (not bm!69614) tp_is_empty!37995 (not b!1546570) (not b!1546576) (not b!1546578) (not start!132038) (not bm!69615) (not b!1546571) b_and!51139 (not b_next!31719) (not b!1546575))
(check-sat b_and!51139 (not b_next!31719))

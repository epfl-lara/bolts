; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132218 () Bool)

(assert start!132218)

(declare-fun b_free!31881 () Bool)

(declare-fun b_next!31881 () Bool)

(assert (=> start!132218 (= b_free!31881 (not b_next!31881))))

(declare-fun tp!111898 () Bool)

(declare-fun b_and!51317 () Bool)

(assert (=> start!132218 (= tp!111898 b_and!51317)))

(declare-fun b!1550691 () Bool)

(declare-fun e!863237 () Bool)

(declare-fun e!863238 () Bool)

(assert (=> b!1550691 (= e!863237 e!863238)))

(declare-fun res!1062172 () Bool)

(assert (=> b!1550691 (=> (not res!1062172) (not e!863238))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103471 0))(
  ( (array!103472 (arr!49932 (Array (_ BitVec 32) (_ BitVec 64))) (size!50483 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103471)

(assert (=> b!1550691 (= res!1062172 (bvslt from!762 (size!50483 _keys!618)))))

(declare-datatypes ((V!59319 0))(
  ( (V!59320 (val!19156 Int)) )
))
(declare-datatypes ((tuple2!24830 0))(
  ( (tuple2!24831 (_1!12425 (_ BitVec 64)) (_2!12425 V!59319)) )
))
(declare-datatypes ((List!36318 0))(
  ( (Nil!36315) (Cons!36314 (h!37760 tuple2!24830) (t!51033 List!36318)) )
))
(declare-datatypes ((ListLongMap!22451 0))(
  ( (ListLongMap!22452 (toList!11241 List!36318)) )
))
(declare-fun lt!668321 () ListLongMap!22451)

(declare-fun e!863239 () ListLongMap!22451)

(assert (=> b!1550691 (= lt!668321 e!863239)))

(declare-fun c!142584 () Bool)

(declare-fun lt!668319 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1550691 (= c!142584 (and (not lt!668319) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550691 (= lt!668319 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1550692 () Bool)

(declare-fun call!70852 () ListLongMap!22451)

(declare-fun minValue!436 () V!59319)

(declare-fun +!4950 (ListLongMap!22451 tuple2!24830) ListLongMap!22451)

(assert (=> b!1550692 (= e!863239 (+!4950 call!70852 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1550693 () Bool)

(declare-fun e!863236 () ListLongMap!22451)

(assert (=> b!1550693 (= e!863239 e!863236)))

(declare-fun c!142586 () Bool)

(assert (=> b!1550693 (= c!142586 (and (not lt!668319) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!70847 () Bool)

(declare-fun call!70851 () ListLongMap!22451)

(declare-fun call!70854 () ListLongMap!22451)

(assert (=> bm!70847 (= call!70851 call!70854)))

(declare-fun zeroValue!436 () V!59319)

(declare-fun bm!70848 () Bool)

(declare-fun call!70853 () ListLongMap!22451)

(assert (=> bm!70848 (= call!70852 (+!4950 (ite c!142584 call!70853 (ite c!142586 call!70854 call!70851)) (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapNonEmpty!58942 () Bool)

(declare-fun mapRes!58942 () Bool)

(declare-fun tp!111899 () Bool)

(declare-fun e!863231 () Bool)

(assert (=> mapNonEmpty!58942 (= mapRes!58942 (and tp!111899 e!863231))))

(declare-datatypes ((ValueCell!18168 0))(
  ( (ValueCellFull!18168 (v!21955 V!59319)) (EmptyCell!18168) )
))
(declare-datatypes ((array!103473 0))(
  ( (array!103474 (arr!49933 (Array (_ BitVec 32) ValueCell!18168)) (size!50484 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103473)

(declare-fun mapValue!58942 () ValueCell!18168)

(declare-fun mapRest!58942 () (Array (_ BitVec 32) ValueCell!18168))

(declare-fun mapKey!58942 () (_ BitVec 32))

(assert (=> mapNonEmpty!58942 (= (arr!49933 _values!470) (store mapRest!58942 mapKey!58942 mapValue!58942))))

(declare-fun b!1550694 () Bool)

(declare-fun res!1062169 () Bool)

(assert (=> b!1550694 (=> (not res!1062169) (not e!863238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1550694 (= res!1062169 (validKeyInArray!0 (select (arr!49932 _keys!618) from!762)))))

(declare-fun b!1550695 () Bool)

(declare-fun e!863233 () ListLongMap!22451)

(assert (=> b!1550695 (= e!863233 call!70851)))

(declare-fun b!1550696 () Bool)

(declare-fun call!70850 () ListLongMap!22451)

(assert (=> b!1550696 (= e!863236 call!70850)))

(declare-fun b!1550697 () Bool)

(declare-fun e!863235 () Bool)

(declare-fun e!863234 () Bool)

(assert (=> b!1550697 (= e!863235 (and e!863234 mapRes!58942))))

(declare-fun condMapEmpty!58942 () Bool)

(declare-fun mapDefault!58942 () ValueCell!18168)

(assert (=> b!1550697 (= condMapEmpty!58942 (= (arr!49933 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18168)) mapDefault!58942)))))

(declare-fun mapIsEmpty!58942 () Bool)

(assert (=> mapIsEmpty!58942 mapRes!58942))

(declare-fun b!1550698 () Bool)

(declare-fun res!1062168 () Bool)

(assert (=> b!1550698 (=> (not res!1062168) (not e!863237))))

(declare-datatypes ((List!36319 0))(
  ( (Nil!36316) (Cons!36315 (h!37761 (_ BitVec 64)) (t!51034 List!36319)) )
))
(declare-fun arrayNoDuplicates!0 (array!103471 (_ BitVec 32) List!36319) Bool)

(assert (=> b!1550698 (= res!1062168 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36316))))

(declare-fun b!1550699 () Bool)

(declare-fun res!1062167 () Bool)

(assert (=> b!1550699 (=> (not res!1062167) (not e!863237))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103471 (_ BitVec 32)) Bool)

(assert (=> b!1550699 (= res!1062167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1550700 () Bool)

(declare-fun tp_is_empty!38157 () Bool)

(assert (=> b!1550700 (= e!863234 tp_is_empty!38157)))

(declare-fun b!1550701 () Bool)

(declare-fun c!142585 () Bool)

(assert (=> b!1550701 (= c!142585 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668319))))

(assert (=> b!1550701 (= e!863236 e!863233)))

(declare-fun b!1550702 () Bool)

(assert (=> b!1550702 (= e!863233 call!70850)))

(declare-fun b!1550703 () Bool)

(declare-fun e!863232 () Bool)

(assert (=> b!1550703 (= e!863232 (not (= (select (arr!49932 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1550704 () Bool)

(assert (=> b!1550704 (= e!863231 tp_is_empty!38157)))

(declare-fun bm!70850 () Bool)

(assert (=> bm!70850 (= call!70850 call!70852)))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70851 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6668 (array!103471 array!103473 (_ BitVec 32) (_ BitVec 32) V!59319 V!59319 (_ BitVec 32) Int) ListLongMap!22451)

(assert (=> bm!70851 (= call!70853 (getCurrentListMapNoExtraKeys!6668 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550705 () Bool)

(declare-fun res!1062171 () Bool)

(assert (=> b!1550705 (=> (not res!1062171) (not e!863237))))

(assert (=> b!1550705 (= res!1062171 (and (= (size!50484 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50483 _keys!618) (size!50484 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!70849 () Bool)

(assert (=> bm!70849 (= call!70854 call!70853)))

(declare-fun res!1062170 () Bool)

(assert (=> start!132218 (=> (not res!1062170) (not e!863237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132218 (= res!1062170 (validMask!0 mask!926))))

(assert (=> start!132218 e!863237))

(declare-fun array_inv!38745 (array!103471) Bool)

(assert (=> start!132218 (array_inv!38745 _keys!618)))

(assert (=> start!132218 tp_is_empty!38157))

(assert (=> start!132218 true))

(assert (=> start!132218 tp!111898))

(declare-fun array_inv!38746 (array!103473) Bool)

(assert (=> start!132218 (and (array_inv!38746 _values!470) e!863235)))

(declare-fun b!1550706 () Bool)

(declare-fun res!1062165 () Bool)

(assert (=> b!1550706 (=> (not res!1062165) (not e!863237))))

(assert (=> b!1550706 (= res!1062165 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50483 _keys!618))))))

(declare-fun b!1550707 () Bool)

(assert (=> b!1550707 (= e!863238 (not e!863232))))

(declare-fun res!1062166 () Bool)

(assert (=> b!1550707 (=> (not res!1062166) (not e!863232))))

(declare-fun lt!668320 () ListLongMap!22451)

(declare-fun contains!10110 (ListLongMap!22451 (_ BitVec 64)) Bool)

(assert (=> b!1550707 (= res!1062166 (contains!10110 lt!668320 (select (arr!49932 _keys!618) from!762)))))

(assert (=> b!1550707 (contains!10110 (+!4950 lt!668320 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49932 _keys!618) from!762))))

(declare-datatypes ((Unit!51585 0))(
  ( (Unit!51586) )
))
(declare-fun lt!668322 () Unit!51585)

(declare-fun addStillContains!1287 (ListLongMap!22451 (_ BitVec 64) V!59319 (_ BitVec 64)) Unit!51585)

(assert (=> b!1550707 (= lt!668322 (addStillContains!1287 lt!668320 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49932 _keys!618) from!762)))))

(assert (=> b!1550707 (= lt!668320 (getCurrentListMapNoExtraKeys!6668 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(assert (= (and start!132218 res!1062170) b!1550705))

(assert (= (and b!1550705 res!1062171) b!1550699))

(assert (= (and b!1550699 res!1062167) b!1550698))

(assert (= (and b!1550698 res!1062168) b!1550706))

(assert (= (and b!1550706 res!1062165) b!1550691))

(assert (= (and b!1550691 c!142584) b!1550692))

(assert (= (and b!1550691 (not c!142584)) b!1550693))

(assert (= (and b!1550693 c!142586) b!1550696))

(assert (= (and b!1550693 (not c!142586)) b!1550701))

(assert (= (and b!1550701 c!142585) b!1550702))

(assert (= (and b!1550701 (not c!142585)) b!1550695))

(assert (= (or b!1550702 b!1550695) bm!70847))

(assert (= (or b!1550696 bm!70847) bm!70849))

(assert (= (or b!1550696 b!1550702) bm!70850))

(assert (= (or b!1550692 bm!70849) bm!70851))

(assert (= (or b!1550692 bm!70850) bm!70848))

(assert (= (and b!1550691 res!1062172) b!1550694))

(assert (= (and b!1550694 res!1062169) b!1550707))

(assert (= (and b!1550707 res!1062166) b!1550703))

(assert (= (and b!1550697 condMapEmpty!58942) mapIsEmpty!58942))

(assert (= (and b!1550697 (not condMapEmpty!58942)) mapNonEmpty!58942))

(get-info :version)

(assert (= (and mapNonEmpty!58942 ((_ is ValueCellFull!18168) mapValue!58942)) b!1550704))

(assert (= (and b!1550697 ((_ is ValueCellFull!18168) mapDefault!58942)) b!1550700))

(assert (= start!132218 b!1550697))

(declare-fun m!1429511 () Bool)

(assert (=> b!1550707 m!1429511))

(declare-fun m!1429513 () Bool)

(assert (=> b!1550707 m!1429513))

(declare-fun m!1429515 () Bool)

(assert (=> b!1550707 m!1429515))

(assert (=> b!1550707 m!1429511))

(assert (=> b!1550707 m!1429511))

(declare-fun m!1429517 () Bool)

(assert (=> b!1550707 m!1429517))

(declare-fun m!1429519 () Bool)

(assert (=> b!1550707 m!1429519))

(assert (=> b!1550707 m!1429519))

(assert (=> b!1550707 m!1429511))

(declare-fun m!1429521 () Bool)

(assert (=> b!1550707 m!1429521))

(declare-fun m!1429523 () Bool)

(assert (=> mapNonEmpty!58942 m!1429523))

(declare-fun m!1429525 () Bool)

(assert (=> bm!70848 m!1429525))

(declare-fun m!1429527 () Bool)

(assert (=> b!1550698 m!1429527))

(assert (=> b!1550703 m!1429511))

(declare-fun m!1429529 () Bool)

(assert (=> b!1550692 m!1429529))

(declare-fun m!1429531 () Bool)

(assert (=> b!1550699 m!1429531))

(assert (=> bm!70851 m!1429515))

(declare-fun m!1429533 () Bool)

(assert (=> start!132218 m!1429533))

(declare-fun m!1429535 () Bool)

(assert (=> start!132218 m!1429535))

(declare-fun m!1429537 () Bool)

(assert (=> start!132218 m!1429537))

(assert (=> b!1550694 m!1429511))

(assert (=> b!1550694 m!1429511))

(declare-fun m!1429539 () Bool)

(assert (=> b!1550694 m!1429539))

(check-sat tp_is_empty!38157 (not b!1550707) (not mapNonEmpty!58942) (not start!132218) (not b_next!31881) b_and!51317 (not bm!70848) (not b!1550699) (not b!1550692) (not b!1550698) (not b!1550694) (not bm!70851))
(check-sat b_and!51317 (not b_next!31881))
(get-model)

(declare-fun d!160847 () Bool)

(assert (=> d!160847 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!132218 d!160847))

(declare-fun d!160849 () Bool)

(assert (=> d!160849 (= (array_inv!38745 _keys!618) (bvsge (size!50483 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!132218 d!160849))

(declare-fun d!160851 () Bool)

(assert (=> d!160851 (= (array_inv!38746 _values!470) (bvsge (size!50484 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!132218 d!160851))

(declare-fun d!160853 () Bool)

(assert (=> d!160853 (= (validKeyInArray!0 (select (arr!49932 _keys!618) from!762)) (and (not (= (select (arr!49932 _keys!618) from!762) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49932 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1550694 d!160853))

(declare-fun d!160855 () Bool)

(declare-fun e!863273 () Bool)

(assert (=> d!160855 e!863273))

(declare-fun res!1062202 () Bool)

(assert (=> d!160855 (=> (not res!1062202) (not e!863273))))

(declare-fun lt!668346 () ListLongMap!22451)

(assert (=> d!160855 (= res!1062202 (contains!10110 lt!668346 (_1!12425 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lt!668343 () List!36318)

(assert (=> d!160855 (= lt!668346 (ListLongMap!22452 lt!668343))))

(declare-fun lt!668345 () Unit!51585)

(declare-fun lt!668344 () Unit!51585)

(assert (=> d!160855 (= lt!668345 lt!668344)))

(declare-datatypes ((Option!806 0))(
  ( (Some!805 (v!21957 V!59319)) (None!804) )
))
(declare-fun getValueByKey!731 (List!36318 (_ BitVec 64)) Option!806)

(assert (=> d!160855 (= (getValueByKey!731 lt!668343 (_1!12425 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!805 (_2!12425 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun lemmaContainsTupThenGetReturnValue!371 (List!36318 (_ BitVec 64) V!59319) Unit!51585)

(assert (=> d!160855 (= lt!668344 (lemmaContainsTupThenGetReturnValue!371 lt!668343 (_1!12425 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12425 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun insertStrictlySorted!500 (List!36318 (_ BitVec 64) V!59319) List!36318)

(assert (=> d!160855 (= lt!668343 (insertStrictlySorted!500 (toList!11241 call!70852) (_1!12425 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (_2!12425 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (=> d!160855 (= (+!4950 call!70852 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) lt!668346)))

(declare-fun b!1550763 () Bool)

(declare-fun res!1062201 () Bool)

(assert (=> b!1550763 (=> (not res!1062201) (not e!863273))))

(assert (=> b!1550763 (= res!1062201 (= (getValueByKey!731 (toList!11241 lt!668346) (_1!12425 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (Some!805 (_2!12425 (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun b!1550764 () Bool)

(declare-fun contains!10112 (List!36318 tuple2!24830) Bool)

(assert (=> b!1550764 (= e!863273 (contains!10112 (toList!11241 lt!668346) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(assert (= (and d!160855 res!1062202) b!1550763))

(assert (= (and b!1550763 res!1062201) b!1550764))

(declare-fun m!1429571 () Bool)

(assert (=> d!160855 m!1429571))

(declare-fun m!1429573 () Bool)

(assert (=> d!160855 m!1429573))

(declare-fun m!1429575 () Bool)

(assert (=> d!160855 m!1429575))

(declare-fun m!1429577 () Bool)

(assert (=> d!160855 m!1429577))

(declare-fun m!1429579 () Bool)

(assert (=> b!1550763 m!1429579))

(declare-fun m!1429581 () Bool)

(assert (=> b!1550764 m!1429581))

(assert (=> b!1550692 d!160855))

(declare-fun b!1550775 () Bool)

(declare-fun e!863282 () Bool)

(declare-fun call!70872 () Bool)

(assert (=> b!1550775 (= e!863282 call!70872)))

(declare-fun b!1550776 () Bool)

(declare-fun e!863284 () Bool)

(assert (=> b!1550776 (= e!863284 e!863282)))

(declare-fun c!142598 () Bool)

(assert (=> b!1550776 (= c!142598 (validKeyInArray!0 (select (arr!49932 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1550777 () Bool)

(declare-fun e!863283 () Bool)

(assert (=> b!1550777 (= e!863283 e!863284)))

(declare-fun res!1062209 () Bool)

(assert (=> b!1550777 (=> (not res!1062209) (not e!863284))))

(declare-fun e!863285 () Bool)

(assert (=> b!1550777 (= res!1062209 (not e!863285))))

(declare-fun res!1062211 () Bool)

(assert (=> b!1550777 (=> (not res!1062211) (not e!863285))))

(assert (=> b!1550777 (= res!1062211 (validKeyInArray!0 (select (arr!49932 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1550778 () Bool)

(declare-fun contains!10113 (List!36319 (_ BitVec 64)) Bool)

(assert (=> b!1550778 (= e!863285 (contains!10113 Nil!36316 (select (arr!49932 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1550779 () Bool)

(assert (=> b!1550779 (= e!863282 call!70872)))

(declare-fun bm!70869 () Bool)

(assert (=> bm!70869 (= call!70872 (arrayNoDuplicates!0 _keys!618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!142598 (Cons!36315 (select (arr!49932 _keys!618) #b00000000000000000000000000000000) Nil!36316) Nil!36316)))))

(declare-fun d!160857 () Bool)

(declare-fun res!1062210 () Bool)

(assert (=> d!160857 (=> res!1062210 e!863283)))

(assert (=> d!160857 (= res!1062210 (bvsge #b00000000000000000000000000000000 (size!50483 _keys!618)))))

(assert (=> d!160857 (= (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36316) e!863283)))

(assert (= (and d!160857 (not res!1062210)) b!1550777))

(assert (= (and b!1550777 res!1062211) b!1550778))

(assert (= (and b!1550777 res!1062209) b!1550776))

(assert (= (and b!1550776 c!142598) b!1550775))

(assert (= (and b!1550776 (not c!142598)) b!1550779))

(assert (= (or b!1550775 b!1550779) bm!70869))

(declare-fun m!1429583 () Bool)

(assert (=> b!1550776 m!1429583))

(assert (=> b!1550776 m!1429583))

(declare-fun m!1429585 () Bool)

(assert (=> b!1550776 m!1429585))

(assert (=> b!1550777 m!1429583))

(assert (=> b!1550777 m!1429583))

(assert (=> b!1550777 m!1429585))

(assert (=> b!1550778 m!1429583))

(assert (=> b!1550778 m!1429583))

(declare-fun m!1429587 () Bool)

(assert (=> b!1550778 m!1429587))

(assert (=> bm!70869 m!1429583))

(declare-fun m!1429589 () Bool)

(assert (=> bm!70869 m!1429589))

(assert (=> b!1550698 d!160857))

(declare-fun d!160859 () Bool)

(assert (=> d!160859 (contains!10110 (+!4950 lt!668320 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49932 _keys!618) from!762))))

(declare-fun lt!668349 () Unit!51585)

(declare-fun choose!2037 (ListLongMap!22451 (_ BitVec 64) V!59319 (_ BitVec 64)) Unit!51585)

(assert (=> d!160859 (= lt!668349 (choose!2037 lt!668320 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49932 _keys!618) from!762)))))

(assert (=> d!160859 (contains!10110 lt!668320 (select (arr!49932 _keys!618) from!762))))

(assert (=> d!160859 (= (addStillContains!1287 lt!668320 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49932 _keys!618) from!762)) lt!668349)))

(declare-fun bs!44555 () Bool)

(assert (= bs!44555 d!160859))

(assert (=> bs!44555 m!1429519))

(assert (=> bs!44555 m!1429519))

(assert (=> bs!44555 m!1429511))

(assert (=> bs!44555 m!1429521))

(assert (=> bs!44555 m!1429511))

(declare-fun m!1429591 () Bool)

(assert (=> bs!44555 m!1429591))

(assert (=> bs!44555 m!1429511))

(assert (=> bs!44555 m!1429513))

(assert (=> b!1550707 d!160859))

(declare-fun b!1550805 () Bool)

(declare-fun e!863305 () Bool)

(declare-fun e!863306 () Bool)

(assert (=> b!1550805 (= e!863305 e!863306)))

(declare-fun c!142608 () Bool)

(declare-fun e!863302 () Bool)

(assert (=> b!1550805 (= c!142608 e!863302)))

(declare-fun res!1062222 () Bool)

(assert (=> b!1550805 (=> (not res!1062222) (not e!863302))))

(assert (=> b!1550805 (= res!1062222 (bvslt from!762 (size!50483 _keys!618)))))

(declare-fun b!1550806 () Bool)

(assert (=> b!1550806 (= e!863302 (validKeyInArray!0 (select (arr!49932 _keys!618) from!762)))))

(assert (=> b!1550806 (bvsge from!762 #b00000000000000000000000000000000)))

(declare-fun b!1550807 () Bool)

(declare-fun e!863300 () Bool)

(declare-fun lt!668370 () ListLongMap!22451)

(declare-fun isEmpty!1131 (ListLongMap!22451) Bool)

(assert (=> b!1550807 (= e!863300 (isEmpty!1131 lt!668370))))

(declare-fun d!160861 () Bool)

(assert (=> d!160861 e!863305))

(declare-fun res!1062220 () Bool)

(assert (=> d!160861 (=> (not res!1062220) (not e!863305))))

(assert (=> d!160861 (= res!1062220 (not (contains!10110 lt!668370 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!863304 () ListLongMap!22451)

(assert (=> d!160861 (= lt!668370 e!863304)))

(declare-fun c!142607 () Bool)

(assert (=> d!160861 (= c!142607 (bvsge from!762 (size!50483 _keys!618)))))

(assert (=> d!160861 (validMask!0 mask!926)))

(assert (=> d!160861 (= (getCurrentListMapNoExtraKeys!6668 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) lt!668370)))

(declare-fun b!1550808 () Bool)

(declare-fun e!863303 () ListLongMap!22451)

(assert (=> b!1550808 (= e!863304 e!863303)))

(declare-fun c!142610 () Bool)

(assert (=> b!1550808 (= c!142610 (validKeyInArray!0 (select (arr!49932 _keys!618) from!762)))))

(declare-fun b!1550809 () Bool)

(assert (=> b!1550809 (= e!863304 (ListLongMap!22452 Nil!36315))))

(declare-fun b!1550810 () Bool)

(assert (=> b!1550810 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50483 _keys!618)))))

(assert (=> b!1550810 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50484 _values!470)))))

(declare-fun e!863301 () Bool)

(declare-fun apply!1120 (ListLongMap!22451 (_ BitVec 64)) V!59319)

(declare-fun get!26040 (ValueCell!18168 V!59319) V!59319)

(declare-fun dynLambda!3871 (Int (_ BitVec 64)) V!59319)

(assert (=> b!1550810 (= e!863301 (= (apply!1120 lt!668370 (select (arr!49932 _keys!618) from!762)) (get!26040 (select (arr!49933 _values!470) from!762) (dynLambda!3871 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1550811 () Bool)

(assert (=> b!1550811 (= e!863300 (= lt!668370 (getCurrentListMapNoExtraKeys!6668 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478)))))

(declare-fun call!70875 () ListLongMap!22451)

(declare-fun bm!70872 () Bool)

(assert (=> bm!70872 (= call!70875 (getCurrentListMapNoExtraKeys!6668 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 (bvadd from!762 #b00000000000000000000000000000001) defaultEntry!478))))

(declare-fun b!1550812 () Bool)

(declare-fun lt!668364 () Unit!51585)

(declare-fun lt!668366 () Unit!51585)

(assert (=> b!1550812 (= lt!668364 lt!668366)))

(declare-fun lt!668369 () ListLongMap!22451)

(declare-fun lt!668368 () V!59319)

(declare-fun lt!668367 () (_ BitVec 64))

(declare-fun lt!668365 () (_ BitVec 64))

(assert (=> b!1550812 (not (contains!10110 (+!4950 lt!668369 (tuple2!24831 lt!668367 lt!668368)) lt!668365))))

(declare-fun addStillNotContains!519 (ListLongMap!22451 (_ BitVec 64) V!59319 (_ BitVec 64)) Unit!51585)

(assert (=> b!1550812 (= lt!668366 (addStillNotContains!519 lt!668369 lt!668367 lt!668368 lt!668365))))

(assert (=> b!1550812 (= lt!668365 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1550812 (= lt!668368 (get!26040 (select (arr!49933 _values!470) from!762) (dynLambda!3871 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1550812 (= lt!668367 (select (arr!49932 _keys!618) from!762))))

(assert (=> b!1550812 (= lt!668369 call!70875)))

(assert (=> b!1550812 (= e!863303 (+!4950 call!70875 (tuple2!24831 (select (arr!49932 _keys!618) from!762) (get!26040 (select (arr!49933 _values!470) from!762) (dynLambda!3871 defaultEntry!478 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1550813 () Bool)

(assert (=> b!1550813 (= e!863303 call!70875)))

(declare-fun b!1550814 () Bool)

(declare-fun res!1062223 () Bool)

(assert (=> b!1550814 (=> (not res!1062223) (not e!863305))))

(assert (=> b!1550814 (= res!1062223 (not (contains!10110 lt!668370 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1550815 () Bool)

(assert (=> b!1550815 (= e!863306 e!863300)))

(declare-fun c!142609 () Bool)

(assert (=> b!1550815 (= c!142609 (bvslt from!762 (size!50483 _keys!618)))))

(declare-fun b!1550816 () Bool)

(assert (=> b!1550816 (= e!863306 e!863301)))

(assert (=> b!1550816 (and (bvsge from!762 #b00000000000000000000000000000000) (bvslt from!762 (size!50483 _keys!618)))))

(declare-fun res!1062221 () Bool)

(assert (=> b!1550816 (= res!1062221 (contains!10110 lt!668370 (select (arr!49932 _keys!618) from!762)))))

(assert (=> b!1550816 (=> (not res!1062221) (not e!863301))))

(assert (= (and d!160861 c!142607) b!1550809))

(assert (= (and d!160861 (not c!142607)) b!1550808))

(assert (= (and b!1550808 c!142610) b!1550812))

(assert (= (and b!1550808 (not c!142610)) b!1550813))

(assert (= (or b!1550812 b!1550813) bm!70872))

(assert (= (and d!160861 res!1062220) b!1550814))

(assert (= (and b!1550814 res!1062223) b!1550805))

(assert (= (and b!1550805 res!1062222) b!1550806))

(assert (= (and b!1550805 c!142608) b!1550816))

(assert (= (and b!1550805 (not c!142608)) b!1550815))

(assert (= (and b!1550816 res!1062221) b!1550810))

(assert (= (and b!1550815 c!142609) b!1550811))

(assert (= (and b!1550815 (not c!142609)) b!1550807))

(declare-fun b_lambda!24773 () Bool)

(assert (=> (not b_lambda!24773) (not b!1550810)))

(declare-fun t!51038 () Bool)

(declare-fun tb!12485 () Bool)

(assert (=> (and start!132218 (= defaultEntry!478 defaultEntry!478) t!51038) tb!12485))

(declare-fun result!26075 () Bool)

(assert (=> tb!12485 (= result!26075 tp_is_empty!38157)))

(assert (=> b!1550810 t!51038))

(declare-fun b_and!51321 () Bool)

(assert (= b_and!51317 (and (=> t!51038 result!26075) b_and!51321)))

(declare-fun b_lambda!24775 () Bool)

(assert (=> (not b_lambda!24775) (not b!1550812)))

(assert (=> b!1550812 t!51038))

(declare-fun b_and!51323 () Bool)

(assert (= b_and!51321 (and (=> t!51038 result!26075) b_and!51323)))

(assert (=> b!1550808 m!1429511))

(assert (=> b!1550808 m!1429511))

(assert (=> b!1550808 m!1429539))

(declare-fun m!1429593 () Bool)

(assert (=> b!1550811 m!1429593))

(declare-fun m!1429595 () Bool)

(assert (=> b!1550810 m!1429595))

(assert (=> b!1550810 m!1429511))

(declare-fun m!1429597 () Bool)

(assert (=> b!1550810 m!1429597))

(assert (=> b!1550810 m!1429511))

(declare-fun m!1429599 () Bool)

(assert (=> b!1550810 m!1429599))

(assert (=> b!1550810 m!1429597))

(assert (=> b!1550810 m!1429595))

(declare-fun m!1429601 () Bool)

(assert (=> b!1550810 m!1429601))

(declare-fun m!1429603 () Bool)

(assert (=> b!1550807 m!1429603))

(assert (=> bm!70872 m!1429593))

(declare-fun m!1429605 () Bool)

(assert (=> b!1550812 m!1429605))

(declare-fun m!1429607 () Bool)

(assert (=> b!1550812 m!1429607))

(declare-fun m!1429609 () Bool)

(assert (=> b!1550812 m!1429609))

(assert (=> b!1550812 m!1429595))

(assert (=> b!1550812 m!1429597))

(declare-fun m!1429611 () Bool)

(assert (=> b!1550812 m!1429611))

(assert (=> b!1550812 m!1429511))

(assert (=> b!1550812 m!1429597))

(assert (=> b!1550812 m!1429595))

(assert (=> b!1550812 m!1429601))

(assert (=> b!1550812 m!1429607))

(assert (=> b!1550816 m!1429511))

(assert (=> b!1550816 m!1429511))

(declare-fun m!1429613 () Bool)

(assert (=> b!1550816 m!1429613))

(declare-fun m!1429615 () Bool)

(assert (=> d!160861 m!1429615))

(assert (=> d!160861 m!1429533))

(assert (=> b!1550806 m!1429511))

(assert (=> b!1550806 m!1429511))

(assert (=> b!1550806 m!1429539))

(declare-fun m!1429617 () Bool)

(assert (=> b!1550814 m!1429617))

(assert (=> b!1550707 d!160861))

(declare-fun d!160863 () Bool)

(declare-fun e!863311 () Bool)

(assert (=> d!160863 e!863311))

(declare-fun res!1062226 () Bool)

(assert (=> d!160863 (=> res!1062226 e!863311)))

(declare-fun lt!668381 () Bool)

(assert (=> d!160863 (= res!1062226 (not lt!668381))))

(declare-fun lt!668380 () Bool)

(assert (=> d!160863 (= lt!668381 lt!668380)))

(declare-fun lt!668379 () Unit!51585)

(declare-fun e!863312 () Unit!51585)

(assert (=> d!160863 (= lt!668379 e!863312)))

(declare-fun c!142613 () Bool)

(assert (=> d!160863 (= c!142613 lt!668380)))

(declare-fun containsKey!749 (List!36318 (_ BitVec 64)) Bool)

(assert (=> d!160863 (= lt!668380 (containsKey!749 (toList!11241 lt!668320) (select (arr!49932 _keys!618) from!762)))))

(assert (=> d!160863 (= (contains!10110 lt!668320 (select (arr!49932 _keys!618) from!762)) lt!668381)))

(declare-fun b!1550825 () Bool)

(declare-fun lt!668382 () Unit!51585)

(assert (=> b!1550825 (= e!863312 lt!668382)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!494 (List!36318 (_ BitVec 64)) Unit!51585)

(assert (=> b!1550825 (= lt!668382 (lemmaContainsKeyImpliesGetValueByKeyDefined!494 (toList!11241 lt!668320) (select (arr!49932 _keys!618) from!762)))))

(declare-fun isDefined!543 (Option!806) Bool)

(assert (=> b!1550825 (isDefined!543 (getValueByKey!731 (toList!11241 lt!668320) (select (arr!49932 _keys!618) from!762)))))

(declare-fun b!1550826 () Bool)

(declare-fun Unit!51589 () Unit!51585)

(assert (=> b!1550826 (= e!863312 Unit!51589)))

(declare-fun b!1550827 () Bool)

(assert (=> b!1550827 (= e!863311 (isDefined!543 (getValueByKey!731 (toList!11241 lt!668320) (select (arr!49932 _keys!618) from!762))))))

(assert (= (and d!160863 c!142613) b!1550825))

(assert (= (and d!160863 (not c!142613)) b!1550826))

(assert (= (and d!160863 (not res!1062226)) b!1550827))

(assert (=> d!160863 m!1429511))

(declare-fun m!1429619 () Bool)

(assert (=> d!160863 m!1429619))

(assert (=> b!1550825 m!1429511))

(declare-fun m!1429621 () Bool)

(assert (=> b!1550825 m!1429621))

(assert (=> b!1550825 m!1429511))

(declare-fun m!1429623 () Bool)

(assert (=> b!1550825 m!1429623))

(assert (=> b!1550825 m!1429623))

(declare-fun m!1429625 () Bool)

(assert (=> b!1550825 m!1429625))

(assert (=> b!1550827 m!1429511))

(assert (=> b!1550827 m!1429623))

(assert (=> b!1550827 m!1429623))

(assert (=> b!1550827 m!1429625))

(assert (=> b!1550707 d!160863))

(declare-fun d!160865 () Bool)

(declare-fun e!863313 () Bool)

(assert (=> d!160865 e!863313))

(declare-fun res!1062227 () Bool)

(assert (=> d!160865 (=> res!1062227 e!863313)))

(declare-fun lt!668385 () Bool)

(assert (=> d!160865 (= res!1062227 (not lt!668385))))

(declare-fun lt!668384 () Bool)

(assert (=> d!160865 (= lt!668385 lt!668384)))

(declare-fun lt!668383 () Unit!51585)

(declare-fun e!863314 () Unit!51585)

(assert (=> d!160865 (= lt!668383 e!863314)))

(declare-fun c!142614 () Bool)

(assert (=> d!160865 (= c!142614 lt!668384)))

(assert (=> d!160865 (= lt!668384 (containsKey!749 (toList!11241 (+!4950 lt!668320 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49932 _keys!618) from!762)))))

(assert (=> d!160865 (= (contains!10110 (+!4950 lt!668320 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49932 _keys!618) from!762)) lt!668385)))

(declare-fun b!1550828 () Bool)

(declare-fun lt!668386 () Unit!51585)

(assert (=> b!1550828 (= e!863314 lt!668386)))

(assert (=> b!1550828 (= lt!668386 (lemmaContainsKeyImpliesGetValueByKeyDefined!494 (toList!11241 (+!4950 lt!668320 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49932 _keys!618) from!762)))))

(assert (=> b!1550828 (isDefined!543 (getValueByKey!731 (toList!11241 (+!4950 lt!668320 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49932 _keys!618) from!762)))))

(declare-fun b!1550829 () Bool)

(declare-fun Unit!51590 () Unit!51585)

(assert (=> b!1550829 (= e!863314 Unit!51590)))

(declare-fun b!1550830 () Bool)

(assert (=> b!1550830 (= e!863313 (isDefined!543 (getValueByKey!731 (toList!11241 (+!4950 lt!668320 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (select (arr!49932 _keys!618) from!762))))))

(assert (= (and d!160865 c!142614) b!1550828))

(assert (= (and d!160865 (not c!142614)) b!1550829))

(assert (= (and d!160865 (not res!1062227)) b!1550830))

(assert (=> d!160865 m!1429511))

(declare-fun m!1429627 () Bool)

(assert (=> d!160865 m!1429627))

(assert (=> b!1550828 m!1429511))

(declare-fun m!1429629 () Bool)

(assert (=> b!1550828 m!1429629))

(assert (=> b!1550828 m!1429511))

(declare-fun m!1429631 () Bool)

(assert (=> b!1550828 m!1429631))

(assert (=> b!1550828 m!1429631))

(declare-fun m!1429633 () Bool)

(assert (=> b!1550828 m!1429633))

(assert (=> b!1550830 m!1429511))

(assert (=> b!1550830 m!1429631))

(assert (=> b!1550830 m!1429631))

(assert (=> b!1550830 m!1429633))

(assert (=> b!1550707 d!160865))

(declare-fun d!160867 () Bool)

(declare-fun e!863315 () Bool)

(assert (=> d!160867 e!863315))

(declare-fun res!1062229 () Bool)

(assert (=> d!160867 (=> (not res!1062229) (not e!863315))))

(declare-fun lt!668390 () ListLongMap!22451)

(assert (=> d!160867 (= res!1062229 (contains!10110 lt!668390 (_1!12425 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(declare-fun lt!668387 () List!36318)

(assert (=> d!160867 (= lt!668390 (ListLongMap!22452 lt!668387))))

(declare-fun lt!668389 () Unit!51585)

(declare-fun lt!668388 () Unit!51585)

(assert (=> d!160867 (= lt!668389 lt!668388)))

(assert (=> d!160867 (= (getValueByKey!731 lt!668387 (_1!12425 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!805 (_2!12425 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160867 (= lt!668388 (lemmaContainsTupThenGetReturnValue!371 lt!668387 (_1!12425 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12425 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160867 (= lt!668387 (insertStrictlySorted!500 (toList!11241 lt!668320) (_1!12425 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (_2!12425 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))))))

(assert (=> d!160867 (= (+!4950 lt!668320 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) lt!668390)))

(declare-fun b!1550831 () Bool)

(declare-fun res!1062228 () Bool)

(assert (=> b!1550831 (=> (not res!1062228) (not e!863315))))

(assert (=> b!1550831 (= res!1062228 (= (getValueByKey!731 (toList!11241 lt!668390) (_1!12425 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436))) (Some!805 (_2!12425 (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))))

(declare-fun b!1550832 () Bool)

(assert (=> b!1550832 (= e!863315 (contains!10112 (toList!11241 lt!668390) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (= (and d!160867 res!1062229) b!1550831))

(assert (= (and b!1550831 res!1062228) b!1550832))

(declare-fun m!1429635 () Bool)

(assert (=> d!160867 m!1429635))

(declare-fun m!1429637 () Bool)

(assert (=> d!160867 m!1429637))

(declare-fun m!1429639 () Bool)

(assert (=> d!160867 m!1429639))

(declare-fun m!1429641 () Bool)

(assert (=> d!160867 m!1429641))

(declare-fun m!1429643 () Bool)

(assert (=> b!1550831 m!1429643))

(declare-fun m!1429645 () Bool)

(assert (=> b!1550832 m!1429645))

(assert (=> b!1550707 d!160867))

(declare-fun b!1550841 () Bool)

(declare-fun e!863323 () Bool)

(declare-fun call!70878 () Bool)

(assert (=> b!1550841 (= e!863323 call!70878)))

(declare-fun b!1550842 () Bool)

(declare-fun e!863322 () Bool)

(assert (=> b!1550842 (= e!863322 call!70878)))

(declare-fun d!160869 () Bool)

(declare-fun res!1062234 () Bool)

(declare-fun e!863324 () Bool)

(assert (=> d!160869 (=> res!1062234 e!863324)))

(assert (=> d!160869 (= res!1062234 (bvsge #b00000000000000000000000000000000 (size!50483 _keys!618)))))

(assert (=> d!160869 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926) e!863324)))

(declare-fun bm!70875 () Bool)

(assert (=> bm!70875 (= call!70878 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1550843 () Bool)

(assert (=> b!1550843 (= e!863323 e!863322)))

(declare-fun lt!668399 () (_ BitVec 64))

(assert (=> b!1550843 (= lt!668399 (select (arr!49932 _keys!618) #b00000000000000000000000000000000))))

(declare-fun lt!668398 () Unit!51585)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!103471 (_ BitVec 64) (_ BitVec 32)) Unit!51585)

(assert (=> b!1550843 (= lt!668398 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!668399 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!103471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1550843 (arrayContainsKey!0 _keys!618 lt!668399 #b00000000000000000000000000000000)))

(declare-fun lt!668397 () Unit!51585)

(assert (=> b!1550843 (= lt!668397 lt!668398)))

(declare-fun res!1062235 () Bool)

(declare-datatypes ((SeekEntryResult!13511 0))(
  ( (MissingZero!13511 (index!56441 (_ BitVec 32))) (Found!13511 (index!56442 (_ BitVec 32))) (Intermediate!13511 (undefined!14323 Bool) (index!56443 (_ BitVec 32)) (x!139094 (_ BitVec 32))) (Undefined!13511) (MissingVacant!13511 (index!56444 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!103471 (_ BitVec 32)) SeekEntryResult!13511)

(assert (=> b!1550843 (= res!1062235 (= (seekEntryOrOpen!0 (select (arr!49932 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) (Found!13511 #b00000000000000000000000000000000)))))

(assert (=> b!1550843 (=> (not res!1062235) (not e!863322))))

(declare-fun b!1550844 () Bool)

(assert (=> b!1550844 (= e!863324 e!863323)))

(declare-fun c!142617 () Bool)

(assert (=> b!1550844 (= c!142617 (validKeyInArray!0 (select (arr!49932 _keys!618) #b00000000000000000000000000000000)))))

(assert (= (and d!160869 (not res!1062234)) b!1550844))

(assert (= (and b!1550844 c!142617) b!1550843))

(assert (= (and b!1550844 (not c!142617)) b!1550841))

(assert (= (and b!1550843 res!1062235) b!1550842))

(assert (= (or b!1550842 b!1550841) bm!70875))

(declare-fun m!1429647 () Bool)

(assert (=> bm!70875 m!1429647))

(assert (=> b!1550843 m!1429583))

(declare-fun m!1429649 () Bool)

(assert (=> b!1550843 m!1429649))

(declare-fun m!1429651 () Bool)

(assert (=> b!1550843 m!1429651))

(assert (=> b!1550843 m!1429583))

(declare-fun m!1429653 () Bool)

(assert (=> b!1550843 m!1429653))

(assert (=> b!1550844 m!1429583))

(assert (=> b!1550844 m!1429583))

(assert (=> b!1550844 m!1429585))

(assert (=> b!1550699 d!160869))

(declare-fun d!160871 () Bool)

(declare-fun e!863325 () Bool)

(assert (=> d!160871 e!863325))

(declare-fun res!1062237 () Bool)

(assert (=> d!160871 (=> (not res!1062237) (not e!863325))))

(declare-fun lt!668403 () ListLongMap!22451)

(assert (=> d!160871 (= res!1062237 (contains!10110 lt!668403 (_1!12425 (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(declare-fun lt!668400 () List!36318)

(assert (=> d!160871 (= lt!668403 (ListLongMap!22452 lt!668400))))

(declare-fun lt!668402 () Unit!51585)

(declare-fun lt!668401 () Unit!51585)

(assert (=> d!160871 (= lt!668402 lt!668401)))

(assert (=> d!160871 (= (getValueByKey!731 lt!668400 (_1!12425 (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!805 (_2!12425 (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160871 (= lt!668401 (lemmaContainsTupThenGetReturnValue!371 lt!668400 (_1!12425 (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12425 (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160871 (= lt!668400 (insertStrictlySorted!500 (toList!11241 (ite c!142584 call!70853 (ite c!142586 call!70854 call!70851))) (_1!12425 (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) (_2!12425 (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))))

(assert (=> d!160871 (= (+!4950 (ite c!142584 call!70853 (ite c!142586 call!70854 call!70851)) (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))) lt!668403)))

(declare-fun b!1550845 () Bool)

(declare-fun res!1062236 () Bool)

(assert (=> b!1550845 (=> (not res!1062236) (not e!863325))))

(assert (=> b!1550845 (= res!1062236 (= (getValueByKey!731 (toList!11241 lt!668403) (_1!12425 (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))) (Some!805 (_2!12425 (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))))

(declare-fun b!1550846 () Bool)

(assert (=> b!1550846 (= e!863325 (contains!10112 (toList!11241 lt!668403) (ite (or c!142584 c!142586) (tuple2!24831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and d!160871 res!1062237) b!1550845))

(assert (= (and b!1550845 res!1062236) b!1550846))

(declare-fun m!1429655 () Bool)

(assert (=> d!160871 m!1429655))

(declare-fun m!1429657 () Bool)

(assert (=> d!160871 m!1429657))

(declare-fun m!1429659 () Bool)

(assert (=> d!160871 m!1429659))

(declare-fun m!1429661 () Bool)

(assert (=> d!160871 m!1429661))

(declare-fun m!1429663 () Bool)

(assert (=> b!1550845 m!1429663))

(declare-fun m!1429665 () Bool)

(assert (=> b!1550846 m!1429665))

(assert (=> bm!70848 d!160871))

(assert (=> bm!70851 d!160861))

(declare-fun b!1550854 () Bool)

(declare-fun e!863331 () Bool)

(assert (=> b!1550854 (= e!863331 tp_is_empty!38157)))

(declare-fun b!1550853 () Bool)

(declare-fun e!863330 () Bool)

(assert (=> b!1550853 (= e!863330 tp_is_empty!38157)))

(declare-fun mapIsEmpty!58948 () Bool)

(declare-fun mapRes!58948 () Bool)

(assert (=> mapIsEmpty!58948 mapRes!58948))

(declare-fun condMapEmpty!58948 () Bool)

(declare-fun mapDefault!58948 () ValueCell!18168)

(assert (=> mapNonEmpty!58942 (= condMapEmpty!58948 (= mapRest!58942 ((as const (Array (_ BitVec 32) ValueCell!18168)) mapDefault!58948)))))

(assert (=> mapNonEmpty!58942 (= tp!111899 (and e!863331 mapRes!58948))))

(declare-fun mapNonEmpty!58948 () Bool)

(declare-fun tp!111908 () Bool)

(assert (=> mapNonEmpty!58948 (= mapRes!58948 (and tp!111908 e!863330))))

(declare-fun mapKey!58948 () (_ BitVec 32))

(declare-fun mapRest!58948 () (Array (_ BitVec 32) ValueCell!18168))

(declare-fun mapValue!58948 () ValueCell!18168)

(assert (=> mapNonEmpty!58948 (= mapRest!58942 (store mapRest!58948 mapKey!58948 mapValue!58948))))

(assert (= (and mapNonEmpty!58942 condMapEmpty!58948) mapIsEmpty!58948))

(assert (= (and mapNonEmpty!58942 (not condMapEmpty!58948)) mapNonEmpty!58948))

(assert (= (and mapNonEmpty!58948 ((_ is ValueCellFull!18168) mapValue!58948)) b!1550853))

(assert (= (and mapNonEmpty!58942 ((_ is ValueCellFull!18168) mapDefault!58948)) b!1550854))

(declare-fun m!1429667 () Bool)

(assert (=> mapNonEmpty!58948 m!1429667))

(declare-fun b_lambda!24777 () Bool)

(assert (= b_lambda!24775 (or (and start!132218 b_free!31881) b_lambda!24777)))

(declare-fun b_lambda!24779 () Bool)

(assert (= b_lambda!24773 (or (and start!132218 b_free!31881) b_lambda!24779)))

(check-sat (not b!1550845) (not b_lambda!24779) (not b!1550806) (not b!1550832) (not d!160859) (not d!160863) (not b!1550808) (not d!160861) tp_is_empty!38157 (not bm!70875) (not b!1550777) (not b!1550816) (not b!1550778) (not b!1550828) (not b!1550831) (not b!1550814) (not bm!70869) (not b!1550843) b_and!51323 (not b!1550763) (not mapNonEmpty!58948) (not b!1550846) (not b!1550812) (not b!1550830) (not d!160871) (not b!1550827) (not b_next!31881) (not bm!70872) (not b!1550764) (not d!160867) (not b!1550810) (not d!160855) (not b!1550811) (not b!1550807) (not b_lambda!24777) (not b!1550844) (not b!1550776) (not d!160865) (not b!1550825))
(check-sat b_and!51323 (not b_next!31881))

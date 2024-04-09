; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132072 () Bool)

(assert start!132072)

(declare-fun b_free!31753 () Bool)

(declare-fun b_next!31753 () Bool)

(assert (=> start!132072 (= b_free!31753 (not b_next!31753))))

(declare-fun tp!111512 () Bool)

(declare-fun b_and!51173 () Bool)

(assert (=> start!132072 (= tp!111512 b_and!51173)))

(declare-fun mapIsEmpty!58747 () Bool)

(declare-fun mapRes!58747 () Bool)

(assert (=> mapIsEmpty!58747 mapRes!58747))

(declare-fun b!1547386 () Bool)

(declare-fun e!861341 () Bool)

(declare-fun tp_is_empty!38029 () Bool)

(assert (=> b!1547386 (= e!861341 tp_is_empty!38029)))

(declare-fun bm!69869 () Bool)

(declare-datatypes ((V!59149 0))(
  ( (V!59150 (val!19092 Int)) )
))
(declare-datatypes ((tuple2!24708 0))(
  ( (tuple2!24709 (_1!12364 (_ BitVec 64)) (_2!12364 V!59149)) )
))
(declare-datatypes ((List!36216 0))(
  ( (Nil!36213) (Cons!36212 (h!37658 tuple2!24708) (t!50917 List!36216)) )
))
(declare-datatypes ((ListLongMap!22329 0))(
  ( (ListLongMap!22330 (toList!11180 List!36216)) )
))
(declare-fun call!69874 () ListLongMap!22329)

(declare-fun call!69873 () ListLongMap!22329)

(assert (=> bm!69869 (= call!69874 call!69873)))

(declare-fun b!1547387 () Bool)

(declare-fun res!1060726 () Bool)

(declare-fun e!861342 () Bool)

(assert (=> b!1547387 (=> (not res!1060726) (not e!861342))))

(declare-datatypes ((array!103223 0))(
  ( (array!103224 (arr!49809 (Array (_ BitVec 32) (_ BitVec 64))) (size!50360 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103223)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547387 (= res!1060726 (validKeyInArray!0 (select (arr!49809 _keys!618) from!762)))))

(declare-fun b!1547388 () Bool)

(assert (=> b!1547388 (= e!861342 (not true))))

(declare-fun minValue!436 () V!59149)

(declare-fun lt!666821 () ListLongMap!22329)

(declare-fun apply!1088 (ListLongMap!22329 (_ BitVec 64)) V!59149)

(declare-fun +!4904 (ListLongMap!22329 tuple2!24708) ListLongMap!22329)

(assert (=> b!1547388 (= (apply!1088 (+!4904 lt!666821 (tuple2!24709 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49809 _keys!618) from!762)) (apply!1088 lt!666821 (select (arr!49809 _keys!618) from!762)))))

(declare-datatypes ((Unit!51506 0))(
  ( (Unit!51507) )
))
(declare-fun lt!666824 () Unit!51506)

(declare-fun addApplyDifferent!591 (ListLongMap!22329 (_ BitVec 64) V!59149 (_ BitVec 64)) Unit!51506)

(assert (=> b!1547388 (= lt!666824 (addApplyDifferent!591 lt!666821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49809 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59149)

(declare-fun contains!10072 (ListLongMap!22329 (_ BitVec 64)) Bool)

(assert (=> b!1547388 (contains!10072 (+!4904 lt!666821 (tuple2!24709 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49809 _keys!618) from!762))))

(declare-fun lt!666822 () Unit!51506)

(declare-fun addStillContains!1254 (ListLongMap!22329 (_ BitVec 64) V!59149 (_ BitVec 64)) Unit!51506)

(assert (=> b!1547388 (= lt!666822 (addStillContains!1254 lt!666821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49809 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18104 0))(
  ( (ValueCellFull!18104 (v!21890 V!59149)) (EmptyCell!18104) )
))
(declare-datatypes ((array!103225 0))(
  ( (array!103226 (arr!49810 (Array (_ BitVec 32) ValueCell!18104)) (size!50361 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103225)

(declare-fun getCurrentListMapNoExtraKeys!6623 (array!103223 array!103225 (_ BitVec 32) (_ BitVec 32) V!59149 V!59149 (_ BitVec 32) Int) ListLongMap!22329)

(assert (=> b!1547388 (= lt!666821 (getCurrentListMapNoExtraKeys!6623 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547389 () Bool)

(declare-fun e!861348 () ListLongMap!22329)

(assert (=> b!1547389 (= e!861348 call!69874)))

(declare-fun b!1547390 () Bool)

(declare-fun res!1060724 () Bool)

(declare-fun e!861349 () Bool)

(assert (=> b!1547390 (=> (not res!1060724) (not e!861349))))

(declare-datatypes ((List!36217 0))(
  ( (Nil!36214) (Cons!36213 (h!37659 (_ BitVec 64)) (t!50918 List!36217)) )
))
(declare-fun arrayNoDuplicates!0 (array!103223 (_ BitVec 32) List!36217) Bool)

(assert (=> b!1547390 (= res!1060724 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36214))))

(declare-fun b!1547391 () Bool)

(assert (=> b!1547391 (= e!861349 e!861342)))

(declare-fun res!1060730 () Bool)

(assert (=> b!1547391 (=> (not res!1060730) (not e!861342))))

(assert (=> b!1547391 (= res!1060730 (bvslt from!762 (size!50360 _keys!618)))))

(declare-fun lt!666820 () ListLongMap!22329)

(declare-fun e!861344 () ListLongMap!22329)

(assert (=> b!1547391 (= lt!666820 e!861344)))

(declare-fun c!141951 () Bool)

(declare-fun lt!666823 () Bool)

(assert (=> b!1547391 (= c!141951 (and (not lt!666823) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547391 (= lt!666823 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547392 () Bool)

(declare-fun e!861346 () ListLongMap!22329)

(declare-fun call!69872 () ListLongMap!22329)

(assert (=> b!1547392 (= e!861346 call!69872)))

(declare-fun bm!69870 () Bool)

(declare-fun call!69876 () ListLongMap!22329)

(assert (=> bm!69870 (= call!69872 call!69876)))

(declare-fun b!1547394 () Bool)

(declare-fun res!1060728 () Bool)

(assert (=> b!1547394 (=> (not res!1060728) (not e!861349))))

(assert (=> b!1547394 (= res!1060728 (and (= (size!50361 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50360 _keys!618) (size!50361 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1547395 () Bool)

(assert (=> b!1547395 (= e!861344 (+!4904 call!69876 (tuple2!24709 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!69871 () Bool)

(declare-fun call!69875 () ListLongMap!22329)

(assert (=> bm!69871 (= call!69875 (getCurrentListMapNoExtraKeys!6623 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547396 () Bool)

(assert (=> b!1547396 (= e!861348 call!69872)))

(declare-fun bm!69872 () Bool)

(assert (=> bm!69872 (= call!69873 call!69875)))

(declare-fun b!1547397 () Bool)

(declare-fun e!861343 () Bool)

(assert (=> b!1547397 (= e!861343 (and e!861341 mapRes!58747))))

(declare-fun condMapEmpty!58747 () Bool)

(declare-fun mapDefault!58747 () ValueCell!18104)


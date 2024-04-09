; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132330 () Bool)

(assert start!132330)

(declare-fun b_free!31925 () Bool)

(declare-fun b_next!31925 () Bool)

(assert (=> start!132330 (= b_free!31925 (not b_next!31925))))

(declare-fun tp!112040 () Bool)

(declare-fun b_and!51373 () Bool)

(assert (=> start!132330 (= tp!112040 b_and!51373)))

(declare-fun b!1552104 () Bool)

(declare-datatypes ((Unit!51627 0))(
  ( (Unit!51628) )
))
(declare-fun e!864076 () Unit!51627)

(declare-fun Unit!51629 () Unit!51627)

(assert (=> b!1552104 (= e!864076 Unit!51629)))

(declare-fun b!1552105 () Bool)

(declare-fun res!1062767 () Bool)

(declare-fun e!864075 () Bool)

(assert (=> b!1552105 (=> (not res!1062767) (not e!864075))))

(declare-datatypes ((array!103561 0))(
  ( (array!103562 (arr!49974 (Array (_ BitVec 32) (_ BitVec 64))) (size!50525 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103561)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!59377 0))(
  ( (V!59378 (val!19178 Int)) )
))
(declare-datatypes ((ValueCell!18190 0))(
  ( (ValueCellFull!18190 (v!21980 V!59377)) (EmptyCell!18190) )
))
(declare-datatypes ((array!103563 0))(
  ( (array!103564 (arr!49975 (Array (_ BitVec 32) ValueCell!18190)) (size!50526 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103563)

(assert (=> b!1552105 (= res!1062767 (and (= (size!50526 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50525 _keys!618) (size!50526 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1552106 () Bool)

(declare-fun res!1062765 () Bool)

(assert (=> b!1552106 (=> (not res!1062765) (not e!864075))))

(declare-datatypes ((List!36351 0))(
  ( (Nil!36348) (Cons!36347 (h!37793 (_ BitVec 64)) (t!51072 List!36351)) )
))
(declare-fun arrayNoDuplicates!0 (array!103561 (_ BitVec 32) List!36351) Bool)

(assert (=> b!1552106 (= res!1062765 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36348))))

(declare-fun b!1552107 () Bool)

(declare-fun e!864079 () Bool)

(assert (=> b!1552107 (= e!864075 e!864079)))

(declare-fun res!1062769 () Bool)

(assert (=> b!1552107 (=> (not res!1062769) (not e!864079))))

(declare-fun lt!669088 () Bool)

(assert (=> b!1552107 (= res!1062769 (not lt!669088))))

(declare-fun lt!669096 () Unit!51627)

(assert (=> b!1552107 (= lt!669096 e!864076)))

(declare-fun c!142874 () Bool)

(assert (=> b!1552107 (= c!142874 (not lt!669088))))

(declare-fun e!864083 () Bool)

(assert (=> b!1552107 (= lt!669088 e!864083)))

(declare-fun res!1062770 () Bool)

(assert (=> b!1552107 (=> res!1062770 e!864083)))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1552107 (= res!1062770 (bvsge from!762 (size!50525 _keys!618)))))

(declare-datatypes ((tuple2!24872 0))(
  ( (tuple2!24873 (_1!12446 (_ BitVec 64)) (_2!12446 V!59377)) )
))
(declare-datatypes ((List!36352 0))(
  ( (Nil!36349) (Cons!36348 (h!37794 tuple2!24872) (t!51073 List!36352)) )
))
(declare-datatypes ((ListLongMap!22493 0))(
  ( (ListLongMap!22494 (toList!11262 List!36352)) )
))
(declare-fun lt!669094 () ListLongMap!22493)

(declare-fun e!864081 () ListLongMap!22493)

(assert (=> b!1552107 (= lt!669094 e!864081)))

(declare-fun c!142876 () Bool)

(declare-fun lt!669092 () Bool)

(assert (=> b!1552107 (= c!142876 (and (not lt!669092) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1552107 (= lt!669092 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun zeroValue!436 () V!59377)

(declare-fun defaultEntry!478 () Int)

(declare-fun minValue!436 () V!59377)

(declare-fun call!71210 () ListLongMap!22493)

(declare-fun bm!71204 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6685 (array!103561 array!103563 (_ BitVec 32) (_ BitVec 32) V!59377 V!59377 (_ BitVec 32) Int) ListLongMap!22493)

(assert (=> bm!71204 (= call!71210 (getCurrentListMapNoExtraKeys!6685 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1552109 () Bool)

(declare-fun e!864082 () Bool)

(declare-fun tp_is_empty!38201 () Bool)

(assert (=> b!1552109 (= e!864082 tp_is_empty!38201)))

(declare-fun b!1552110 () Bool)

(declare-fun res!1062771 () Bool)

(assert (=> b!1552110 (=> (not res!1062771) (not e!864075))))

(assert (=> b!1552110 (= res!1062771 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50525 _keys!618))))))

(declare-fun call!71209 () ListLongMap!22493)

(declare-fun bm!71205 () Bool)

(declare-fun call!71211 () ListLongMap!22493)

(declare-fun call!71207 () ListLongMap!22493)

(declare-fun c!142877 () Bool)

(declare-fun +!4968 (ListLongMap!22493 tuple2!24872) ListLongMap!22493)

(assert (=> bm!71205 (= call!71211 (+!4968 (ite c!142876 call!71210 (ite c!142877 call!71209 call!71207)) (ite (or c!142876 c!142877) (tuple2!24873 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24873 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552111 () Bool)

(declare-fun e!864078 () Bool)

(assert (=> b!1552111 (= e!864078 tp_is_empty!38201)))

(declare-fun b!1552112 () Bool)

(declare-fun c!142875 () Bool)

(assert (=> b!1552112 (= c!142875 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!669092))))

(declare-fun e!864080 () ListLongMap!22493)

(declare-fun e!864074 () ListLongMap!22493)

(assert (=> b!1552112 (= e!864080 e!864074)))

(declare-fun b!1552113 () Bool)

(declare-fun call!71208 () ListLongMap!22493)

(assert (=> b!1552113 (= e!864080 call!71208)))

(declare-fun b!1552114 () Bool)

(assert (=> b!1552114 (= e!864081 e!864080)))

(assert (=> b!1552114 (= c!142877 (and (not lt!669092) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1552115 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1552115 (= e!864083 (not (validKeyInArray!0 (select (arr!49974 _keys!618) from!762))))))

(declare-fun res!1062766 () Bool)

(assert (=> start!132330 (=> (not res!1062766) (not e!864075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132330 (= res!1062766 (validMask!0 mask!926))))

(assert (=> start!132330 e!864075))

(declare-fun array_inv!38771 (array!103561) Bool)

(assert (=> start!132330 (array_inv!38771 _keys!618)))

(assert (=> start!132330 tp_is_empty!38201))

(assert (=> start!132330 true))

(assert (=> start!132330 tp!112040))

(declare-fun e!864077 () Bool)

(declare-fun array_inv!38772 (array!103563) Bool)

(assert (=> start!132330 (and (array_inv!38772 _values!470) e!864077)))

(declare-fun b!1552108 () Bool)

(assert (=> b!1552108 (= e!864081 (+!4968 call!71211 (tuple2!24873 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!71206 () Bool)

(assert (=> bm!71206 (= call!71207 call!71209)))

(declare-fun b!1552116 () Bool)

(declare-fun res!1062768 () Bool)

(assert (=> b!1552116 (=> (not res!1062768) (not e!864075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103561 (_ BitVec 32)) Bool)

(assert (=> b!1552116 (= res!1062768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1552117 () Bool)

(declare-fun lt!669091 () Unit!51627)

(assert (=> b!1552117 (= e!864076 lt!669091)))

(declare-fun lt!669093 () ListLongMap!22493)

(assert (=> b!1552117 (= lt!669093 (getCurrentListMapNoExtraKeys!6685 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!669089 () Unit!51627)

(declare-fun addStillContains!1303 (ListLongMap!22493 (_ BitVec 64) V!59377 (_ BitVec 64)) Unit!51627)

(assert (=> b!1552117 (= lt!669089 (addStillContains!1303 lt!669093 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49974 _keys!618) from!762)))))

(declare-fun lt!669087 () ListLongMap!22493)

(assert (=> b!1552117 (= lt!669087 (+!4968 lt!669093 (tuple2!24873 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10132 (ListLongMap!22493 (_ BitVec 64)) Bool)

(assert (=> b!1552117 (contains!10132 lt!669087 (select (arr!49974 _keys!618) from!762))))

(declare-fun addApplyDifferent!636 (ListLongMap!22493 (_ BitVec 64) V!59377 (_ BitVec 64)) Unit!51627)

(assert (=> b!1552117 (= lt!669091 (addApplyDifferent!636 lt!669093 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49974 _keys!618) from!762)))))

(declare-fun lt!669085 () V!59377)

(declare-fun apply!1135 (ListLongMap!22493 (_ BitVec 64)) V!59377)

(assert (=> b!1552117 (= lt!669085 (apply!1135 (+!4968 lt!669093 (tuple2!24873 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49974 _keys!618) from!762)))))

(declare-fun lt!669086 () V!59377)

(assert (=> b!1552117 (= lt!669086 (apply!1135 lt!669093 (select (arr!49974 _keys!618) from!762)))))

(assert (=> b!1552117 (= lt!669085 lt!669086)))

(declare-fun lt!669090 () Unit!51627)

(assert (=> b!1552117 (= lt!669090 (addApplyDifferent!636 lt!669093 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49974 _keys!618) from!762)))))

(assert (=> b!1552117 (= (apply!1135 lt!669087 (select (arr!49974 _keys!618) from!762)) lt!669086)))

(declare-fun bm!71207 () Bool)

(assert (=> bm!71207 (= call!71209 call!71210)))

(declare-fun b!1552118 () Bool)

(declare-fun mapRes!59017 () Bool)

(assert (=> b!1552118 (= e!864077 (and e!864082 mapRes!59017))))

(declare-fun condMapEmpty!59017 () Bool)

(declare-fun mapDefault!59017 () ValueCell!18190)


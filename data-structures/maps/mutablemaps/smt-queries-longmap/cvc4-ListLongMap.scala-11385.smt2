; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132336 () Bool)

(assert start!132336)

(declare-fun b_free!31931 () Bool)

(declare-fun b_next!31931 () Bool)

(assert (=> start!132336 (= b_free!31931 (not b_next!31931))))

(declare-fun tp!112058 () Bool)

(declare-fun b_and!51379 () Bool)

(assert (=> start!132336 (= tp!112058 b_and!51379)))

(declare-fun b!1552274 () Bool)

(declare-datatypes ((Unit!51636 0))(
  ( (Unit!51637) )
))
(declare-fun e!864174 () Unit!51636)

(declare-fun lt!669191 () Unit!51636)

(assert (=> b!1552274 (= e!864174 lt!669191)))

(declare-datatypes ((array!103573 0))(
  ( (array!103574 (arr!49980 (Array (_ BitVec 32) (_ BitVec 64))) (size!50531 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103573)

(declare-datatypes ((V!59385 0))(
  ( (V!59386 (val!19181 Int)) )
))
(declare-fun zeroValue!436 () V!59385)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((tuple2!24878 0))(
  ( (tuple2!24879 (_1!12449 (_ BitVec 64)) (_2!12449 V!59385)) )
))
(declare-datatypes ((List!36357 0))(
  ( (Nil!36354) (Cons!36353 (h!37799 tuple2!24878) (t!51078 List!36357)) )
))
(declare-datatypes ((ListLongMap!22499 0))(
  ( (ListLongMap!22500 (toList!11265 List!36357)) )
))
(declare-fun lt!669193 () ListLongMap!22499)

(declare-datatypes ((ValueCell!18193 0))(
  ( (ValueCellFull!18193 (v!21983 V!59385)) (EmptyCell!18193) )
))
(declare-datatypes ((array!103575 0))(
  ( (array!103576 (arr!49981 (Array (_ BitVec 32) ValueCell!18193)) (size!50532 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103575)

(declare-fun minValue!436 () V!59385)

(declare-fun getCurrentListMapNoExtraKeys!6688 (array!103573 array!103575 (_ BitVec 32) (_ BitVec 32) V!59385 V!59385 (_ BitVec 32) Int) ListLongMap!22499)

(assert (=> b!1552274 (= lt!669193 (getCurrentListMapNoExtraKeys!6688 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!669194 () Unit!51636)

(declare-fun addStillContains!1306 (ListLongMap!22499 (_ BitVec 64) V!59385 (_ BitVec 64)) Unit!51636)

(assert (=> b!1552274 (= lt!669194 (addStillContains!1306 lt!669193 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49980 _keys!618) from!762)))))

(declare-fun lt!669192 () ListLongMap!22499)

(declare-fun +!4971 (ListLongMap!22499 tuple2!24878) ListLongMap!22499)

(assert (=> b!1552274 (= lt!669192 (+!4971 lt!669193 (tuple2!24879 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10135 (ListLongMap!22499 (_ BitVec 64)) Bool)

(assert (=> b!1552274 (contains!10135 lt!669192 (select (arr!49980 _keys!618) from!762))))

(declare-fun addApplyDifferent!639 (ListLongMap!22499 (_ BitVec 64) V!59385 (_ BitVec 64)) Unit!51636)

(assert (=> b!1552274 (= lt!669191 (addApplyDifferent!639 lt!669193 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49980 _keys!618) from!762)))))

(declare-fun lt!669186 () V!59385)

(declare-fun apply!1138 (ListLongMap!22499 (_ BitVec 64)) V!59385)

(assert (=> b!1552274 (= lt!669186 (apply!1138 (+!4971 lt!669193 (tuple2!24879 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49980 _keys!618) from!762)))))

(declare-fun lt!669187 () V!59385)

(assert (=> b!1552274 (= lt!669187 (apply!1138 lt!669193 (select (arr!49980 _keys!618) from!762)))))

(assert (=> b!1552274 (= lt!669186 lt!669187)))

(declare-fun lt!669185 () Unit!51636)

(assert (=> b!1552274 (= lt!669185 (addApplyDifferent!639 lt!669193 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49980 _keys!618) from!762)))))

(assert (=> b!1552274 (= (apply!1138 lt!669192 (select (arr!49980 _keys!618) from!762)) lt!669187)))

(declare-fun b!1552275 () Bool)

(declare-fun e!864181 () ListLongMap!22499)

(declare-fun call!71252 () ListLongMap!22499)

(assert (=> b!1552275 (= e!864181 call!71252)))

(declare-fun b!1552276 () Bool)

(declare-fun e!864175 () Bool)

(assert (=> b!1552276 (= e!864175 (bvsge from!762 (size!50532 _values!470)))))

(declare-fun b!1552277 () Bool)

(declare-fun e!864176 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1552277 (= e!864176 (not (validKeyInArray!0 (select (arr!49980 _keys!618) from!762))))))

(declare-fun b!1552278 () Bool)

(declare-fun c!142911 () Bool)

(declare-fun lt!669189 () Bool)

(assert (=> b!1552278 (= c!142911 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!669189))))

(declare-fun e!864177 () ListLongMap!22499)

(assert (=> b!1552278 (= e!864177 e!864181)))

(declare-fun b!1552279 () Bool)

(declare-fun call!71254 () ListLongMap!22499)

(assert (=> b!1552279 (= e!864181 call!71254)))

(declare-fun b!1552280 () Bool)

(declare-fun Unit!51638 () Unit!51636)

(assert (=> b!1552280 (= e!864174 Unit!51638)))

(declare-fun b!1552281 () Bool)

(declare-fun res!1062842 () Bool)

(assert (=> b!1552281 (=> (not res!1062842) (not e!864175))))

(declare-fun lt!669188 () ListLongMap!22499)

(assert (=> b!1552281 (= res!1062842 (contains!10135 lt!669188 (select (arr!49980 _keys!618) from!762)))))

(declare-fun b!1552282 () Bool)

(declare-fun res!1062838 () Bool)

(declare-fun e!864179 () Bool)

(assert (=> b!1552282 (=> (not res!1062838) (not e!864179))))

(assert (=> b!1552282 (= res!1062838 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50531 _keys!618))))))

(declare-fun res!1062840 () Bool)

(assert (=> start!132336 (=> (not res!1062840) (not e!864179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132336 (= res!1062840 (validMask!0 mask!926))))

(assert (=> start!132336 e!864179))

(declare-fun array_inv!38777 (array!103573) Bool)

(assert (=> start!132336 (array_inv!38777 _keys!618)))

(declare-fun tp_is_empty!38207 () Bool)

(assert (=> start!132336 tp_is_empty!38207))

(assert (=> start!132336 true))

(assert (=> start!132336 tp!112058))

(declare-fun e!864182 () Bool)

(declare-fun array_inv!38778 (array!103575) Bool)

(assert (=> start!132336 (and (array_inv!38778 _values!470) e!864182)))

(declare-fun mapNonEmpty!59026 () Bool)

(declare-fun mapRes!59026 () Bool)

(declare-fun tp!112057 () Bool)

(declare-fun e!864172 () Bool)

(assert (=> mapNonEmpty!59026 (= mapRes!59026 (and tp!112057 e!864172))))

(declare-fun mapKey!59026 () (_ BitVec 32))

(declare-fun mapValue!59026 () ValueCell!18193)

(declare-fun mapRest!59026 () (Array (_ BitVec 32) ValueCell!18193))

(assert (=> mapNonEmpty!59026 (= (arr!49981 _values!470) (store mapRest!59026 mapKey!59026 mapValue!59026))))

(declare-fun mapIsEmpty!59026 () Bool)

(assert (=> mapIsEmpty!59026 mapRes!59026))

(declare-fun b!1552283 () Bool)

(declare-fun e!864180 () ListLongMap!22499)

(declare-fun call!71253 () ListLongMap!22499)

(assert (=> b!1552283 (= e!864180 (+!4971 call!71253 (tuple2!24879 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!71249 () Bool)

(declare-fun call!71255 () ListLongMap!22499)

(assert (=> bm!71249 (= call!71254 call!71255)))

(declare-fun b!1552284 () Bool)

(assert (=> b!1552284 (= e!864177 call!71252)))

(declare-fun call!71256 () ListLongMap!22499)

(declare-fun bm!71250 () Bool)

(assert (=> bm!71250 (= call!71256 (getCurrentListMapNoExtraKeys!6688 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1552285 () Bool)

(declare-fun res!1062836 () Bool)

(assert (=> b!1552285 (=> (not res!1062836) (not e!864179))))

(assert (=> b!1552285 (= res!1062836 (and (= (size!50532 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50531 _keys!618) (size!50532 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1552286 () Bool)

(assert (=> b!1552286 (= e!864179 e!864175)))

(declare-fun res!1062843 () Bool)

(assert (=> b!1552286 (=> (not res!1062843) (not e!864175))))

(declare-fun lt!669195 () Bool)

(assert (=> b!1552286 (= res!1062843 (not lt!669195))))

(declare-fun lt!669190 () Unit!51636)

(assert (=> b!1552286 (= lt!669190 e!864174)))

(declare-fun c!142912 () Bool)

(assert (=> b!1552286 (= c!142912 (not lt!669195))))

(assert (=> b!1552286 (= lt!669195 e!864176)))

(declare-fun res!1062841 () Bool)

(assert (=> b!1552286 (=> res!1062841 e!864176)))

(assert (=> b!1552286 (= res!1062841 (bvsge from!762 (size!50531 _keys!618)))))

(assert (=> b!1552286 (= lt!669188 e!864180)))

(declare-fun c!142910 () Bool)

(assert (=> b!1552286 (= c!142910 (and (not lt!669189) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1552286 (= lt!669189 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1552287 () Bool)

(declare-fun e!864173 () Bool)

(assert (=> b!1552287 (= e!864173 tp_is_empty!38207)))

(declare-fun b!1552288 () Bool)

(declare-fun res!1062837 () Bool)

(assert (=> b!1552288 (=> (not res!1062837) (not e!864179))))

(declare-datatypes ((List!36358 0))(
  ( (Nil!36355) (Cons!36354 (h!37800 (_ BitVec 64)) (t!51079 List!36358)) )
))
(declare-fun arrayNoDuplicates!0 (array!103573 (_ BitVec 32) List!36358) Bool)

(assert (=> b!1552288 (= res!1062837 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36355))))

(declare-fun b!1552289 () Bool)

(assert (=> b!1552289 (= e!864182 (and e!864173 mapRes!59026))))

(declare-fun condMapEmpty!59026 () Bool)

(declare-fun mapDefault!59026 () ValueCell!18193)


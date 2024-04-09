; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132112 () Bool)

(assert start!132112)

(declare-fun b_free!31793 () Bool)

(declare-fun b_next!31793 () Bool)

(assert (=> start!132112 (= b_free!31793 (not b_next!31793))))

(declare-fun tp!111632 () Bool)

(declare-fun b_and!51213 () Bool)

(assert (=> start!132112 (= tp!111632 b_and!51213)))

(declare-fun b!1548346 () Bool)

(declare-datatypes ((V!59201 0))(
  ( (V!59202 (val!19112 Int)) )
))
(declare-datatypes ((tuple2!24748 0))(
  ( (tuple2!24749 (_1!12384 (_ BitVec 64)) (_2!12384 V!59201)) )
))
(declare-datatypes ((List!36251 0))(
  ( (Nil!36248) (Cons!36247 (h!37693 tuple2!24748) (t!50952 List!36251)) )
))
(declare-datatypes ((ListLongMap!22369 0))(
  ( (ListLongMap!22370 (toList!11200 List!36251)) )
))
(declare-fun e!861885 () ListLongMap!22369)

(declare-fun call!70172 () ListLongMap!22369)

(assert (=> b!1548346 (= e!861885 call!70172)))

(declare-fun b!1548347 () Bool)

(declare-fun res!1061144 () Bool)

(declare-fun e!861884 () Bool)

(assert (=> b!1548347 (=> (not res!1061144) (not e!861884))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103303 0))(
  ( (array!103304 (arr!49849 (Array (_ BitVec 32) (_ BitVec 64))) (size!50400 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103303)

(assert (=> b!1548347 (= res!1061144 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50400 _keys!618))))))

(declare-fun b!1548348 () Bool)

(declare-fun res!1061150 () Bool)

(declare-fun e!861881 () Bool)

(assert (=> b!1548348 (=> (not res!1061150) (not e!861881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548348 (= res!1061150 (validKeyInArray!0 (select (arr!49849 _keys!618) from!762)))))

(declare-fun b!1548349 () Bool)

(declare-fun e!861889 () Bool)

(declare-fun tp_is_empty!38069 () Bool)

(assert (=> b!1548349 (= e!861889 tp_is_empty!38069)))

(declare-fun b!1548350 () Bool)

(assert (=> b!1548350 (= e!861881 (not true))))

(declare-fun lt!667236 () ListLongMap!22369)

(declare-fun lt!667240 () V!59201)

(declare-fun apply!1103 (ListLongMap!22369 (_ BitVec 64)) V!59201)

(assert (=> b!1548350 (= (apply!1103 lt!667236 (select (arr!49849 _keys!618) from!762)) lt!667240)))

(declare-fun zeroValue!436 () V!59201)

(declare-fun lt!667238 () ListLongMap!22369)

(declare-datatypes ((Unit!51536 0))(
  ( (Unit!51537) )
))
(declare-fun lt!667237 () Unit!51536)

(declare-fun addApplyDifferent!606 (ListLongMap!22369 (_ BitVec 64) V!59201 (_ BitVec 64)) Unit!51536)

(assert (=> b!1548350 (= lt!667237 (addApplyDifferent!606 lt!667238 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49849 _keys!618) from!762)))))

(declare-fun lt!667233 () V!59201)

(assert (=> b!1548350 (= lt!667233 lt!667240)))

(assert (=> b!1548350 (= lt!667240 (apply!1103 lt!667238 (select (arr!49849 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59201)

(declare-fun +!4920 (ListLongMap!22369 tuple2!24748) ListLongMap!22369)

(assert (=> b!1548350 (= lt!667233 (apply!1103 (+!4920 lt!667238 (tuple2!24749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49849 _keys!618) from!762)))))

(declare-fun lt!667239 () Unit!51536)

(assert (=> b!1548350 (= lt!667239 (addApplyDifferent!606 lt!667238 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49849 _keys!618) from!762)))))

(declare-fun contains!10087 (ListLongMap!22369 (_ BitVec 64)) Bool)

(assert (=> b!1548350 (contains!10087 lt!667236 (select (arr!49849 _keys!618) from!762))))

(assert (=> b!1548350 (= lt!667236 (+!4920 lt!667238 (tuple2!24749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667235 () Unit!51536)

(declare-fun addStillContains!1269 (ListLongMap!22369 (_ BitVec 64) V!59201 (_ BitVec 64)) Unit!51536)

(assert (=> b!1548350 (= lt!667235 (addStillContains!1269 lt!667238 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49849 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18124 0))(
  ( (ValueCellFull!18124 (v!21910 V!59201)) (EmptyCell!18124) )
))
(declare-datatypes ((array!103305 0))(
  ( (array!103306 (arr!49850 (Array (_ BitVec 32) ValueCell!18124)) (size!50401 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103305)

(declare-fun getCurrentListMapNoExtraKeys!6640 (array!103303 array!103305 (_ BitVec 32) (_ BitVec 32) V!59201 V!59201 (_ BitVec 32) Int) ListLongMap!22369)

(assert (=> b!1548350 (= lt!667238 (getCurrentListMapNoExtraKeys!6640 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58807 () Bool)

(declare-fun mapRes!58807 () Bool)

(assert (=> mapIsEmpty!58807 mapRes!58807))

(declare-fun res!1061147 () Bool)

(assert (=> start!132112 (=> (not res!1061147) (not e!861884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132112 (= res!1061147 (validMask!0 mask!926))))

(assert (=> start!132112 e!861884))

(declare-fun array_inv!38691 (array!103303) Bool)

(assert (=> start!132112 (array_inv!38691 _keys!618)))

(assert (=> start!132112 tp_is_empty!38069))

(assert (=> start!132112 true))

(assert (=> start!132112 tp!111632))

(declare-fun e!861882 () Bool)

(declare-fun array_inv!38692 (array!103305) Bool)

(assert (=> start!132112 (and (array_inv!38692 _values!470) e!861882)))

(declare-fun bm!70169 () Bool)

(declare-fun call!70173 () ListLongMap!22369)

(assert (=> bm!70169 (= call!70172 call!70173)))

(declare-fun bm!70170 () Bool)

(declare-fun c!142133 () Bool)

(declare-fun call!70174 () ListLongMap!22369)

(declare-fun call!70175 () ListLongMap!22369)

(declare-fun c!142131 () Bool)

(declare-fun call!70176 () ListLongMap!22369)

(assert (=> bm!70170 (= call!70173 (+!4920 (ite c!142133 call!70176 (ite c!142131 call!70174 call!70175)) (ite (or c!142133 c!142131) (tuple2!24749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1548351 () Bool)

(declare-fun e!861886 () ListLongMap!22369)

(assert (=> b!1548351 (= e!861886 call!70175)))

(declare-fun b!1548352 () Bool)

(assert (=> b!1548352 (= e!861884 e!861881)))

(declare-fun res!1061148 () Bool)

(assert (=> b!1548352 (=> (not res!1061148) (not e!861881))))

(assert (=> b!1548352 (= res!1061148 (bvslt from!762 (size!50400 _keys!618)))))

(declare-fun lt!667241 () ListLongMap!22369)

(declare-fun e!861883 () ListLongMap!22369)

(assert (=> b!1548352 (= lt!667241 e!861883)))

(declare-fun lt!667234 () Bool)

(assert (=> b!1548352 (= c!142133 (and (not lt!667234) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548352 (= lt!667234 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548353 () Bool)

(declare-fun e!861888 () Bool)

(assert (=> b!1548353 (= e!861888 tp_is_empty!38069)))

(declare-fun b!1548354 () Bool)

(assert (=> b!1548354 (= e!861883 e!861885)))

(assert (=> b!1548354 (= c!142131 (and (not lt!667234) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!70171 () Bool)

(assert (=> bm!70171 (= call!70175 call!70174)))

(declare-fun b!1548355 () Bool)

(declare-fun res!1061149 () Bool)

(assert (=> b!1548355 (=> (not res!1061149) (not e!861884))))

(assert (=> b!1548355 (= res!1061149 (and (= (size!50401 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50400 _keys!618) (size!50401 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1548356 () Bool)

(assert (=> b!1548356 (= e!861882 (and e!861888 mapRes!58807))))

(declare-fun condMapEmpty!58807 () Bool)

(declare-fun mapDefault!58807 () ValueCell!18124)


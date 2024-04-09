; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98898 () Bool)

(assert start!98898)

(declare-fun b_free!24467 () Bool)

(declare-fun b_next!24467 () Bool)

(assert (=> start!98898 (= b_free!24467 (not b_next!24467))))

(declare-fun tp!86112 () Bool)

(declare-fun b_and!39797 () Bool)

(assert (=> start!98898 (= tp!86112 b_and!39797)))

(declare-fun bm!55142 () Bool)

(declare-datatypes ((V!43789 0))(
  ( (V!43790 (val!14555 Int)) )
))
(declare-datatypes ((tuple2!18584 0))(
  ( (tuple2!18585 (_1!9302 (_ BitVec 64)) (_2!9302 V!43789)) )
))
(declare-datatypes ((List!25366 0))(
  ( (Nil!25363) (Cons!25362 (h!26571 tuple2!18584) (t!36832 List!25366)) )
))
(declare-datatypes ((ListLongMap!16565 0))(
  ( (ListLongMap!16566 (toList!8298 List!25366)) )
))
(declare-fun call!55145 () ListLongMap!16565)

(declare-fun call!55152 () ListLongMap!16565)

(assert (=> bm!55142 (= call!55145 call!55152)))

(declare-fun bm!55143 () Bool)

(declare-datatypes ((Unit!37985 0))(
  ( (Unit!37986) )
))
(declare-fun call!55151 () Unit!37985)

(declare-fun call!55148 () Unit!37985)

(assert (=> bm!55143 (= call!55151 call!55148)))

(declare-fun b!1156430 () Bool)

(declare-fun e!657709 () Bool)

(assert (=> b!1156430 (= e!657709 true)))

(declare-fun e!657699 () Bool)

(assert (=> b!1156430 e!657699))

(declare-fun res!768225 () Bool)

(assert (=> b!1156430 (=> (not res!768225) (not e!657699))))

(declare-fun lt!519092 () ListLongMap!16565)

(declare-fun lt!519103 () ListLongMap!16565)

(assert (=> b!1156430 (= res!768225 (= lt!519092 lt!519103))))

(declare-fun lt!519110 () ListLongMap!16565)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1375 (ListLongMap!16565 (_ BitVec 64)) ListLongMap!16565)

(assert (=> b!1156430 (= lt!519092 (-!1375 lt!519110 k!934))))

(declare-fun lt!519107 () V!43789)

(declare-datatypes ((array!74788 0))(
  ( (array!74789 (arr!36041 (Array (_ BitVec 32) (_ BitVec 64))) (size!36578 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74788)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun +!3629 (ListLongMap!16565 tuple2!18584) ListLongMap!16565)

(assert (=> b!1156430 (= (-!1375 (+!3629 lt!519103 (tuple2!18585 (select (arr!36041 _keys!1208) from!1455) lt!519107)) (select (arr!36041 _keys!1208) from!1455)) lt!519103)))

(declare-fun lt!519101 () Unit!37985)

(declare-fun addThenRemoveForNewKeyIsSame!217 (ListLongMap!16565 (_ BitVec 64) V!43789) Unit!37985)

(assert (=> b!1156430 (= lt!519101 (addThenRemoveForNewKeyIsSame!217 lt!519103 (select (arr!36041 _keys!1208) from!1455) lt!519107))))

(declare-fun lt!519096 () V!43789)

(declare-datatypes ((ValueCell!13789 0))(
  ( (ValueCellFull!13789 (v!17193 V!43789)) (EmptyCell!13789) )
))
(declare-datatypes ((array!74790 0))(
  ( (array!74791 (arr!36042 (Array (_ BitVec 32) ValueCell!13789)) (size!36579 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74790)

(declare-fun get!18393 (ValueCell!13789 V!43789) V!43789)

(assert (=> b!1156430 (= lt!519107 (get!18393 (select (arr!36042 _values!996) from!1455) lt!519096))))

(declare-fun lt!519104 () Unit!37985)

(declare-fun e!657701 () Unit!37985)

(assert (=> b!1156430 (= lt!519104 e!657701)))

(declare-fun c!115009 () Bool)

(declare-fun contains!6785 (ListLongMap!16565 (_ BitVec 64)) Bool)

(assert (=> b!1156430 (= c!115009 (contains!6785 lt!519103 k!934))))

(declare-fun zeroValue!944 () V!43789)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43789)

(declare-fun getCurrentListMapNoExtraKeys!4736 (array!74788 array!74790 (_ BitVec 32) (_ BitVec 32) V!43789 V!43789 (_ BitVec 32) Int) ListLongMap!16565)

(assert (=> b!1156430 (= lt!519103 (getCurrentListMapNoExtraKeys!4736 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55144 () Bool)

(declare-fun c!115010 () Bool)

(declare-fun c!115013 () Bool)

(assert (=> bm!55144 (= call!55152 (+!3629 lt!519103 (ite (or c!115013 c!115010) (tuple2!18585 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18585 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1156431 () Bool)

(declare-fun e!657704 () Bool)

(declare-fun e!657703 () Bool)

(assert (=> b!1156431 (= e!657704 e!657703)))

(declare-fun res!768227 () Bool)

(assert (=> b!1156431 (=> res!768227 e!657703)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1156431 (= res!768227 (not (= from!1455 i!673)))))

(declare-fun lt!519099 () array!74788)

(declare-fun lt!519100 () array!74790)

(declare-fun lt!519094 () ListLongMap!16565)

(assert (=> b!1156431 (= lt!519094 (getCurrentListMapNoExtraKeys!4736 lt!519099 lt!519100 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1156431 (= lt!519100 (array!74791 (store (arr!36042 _values!996) i!673 (ValueCellFull!13789 lt!519096)) (size!36579 _values!996)))))

(declare-fun dynLambda!2748 (Int (_ BitVec 64)) V!43789)

(assert (=> b!1156431 (= lt!519096 (dynLambda!2748 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1156431 (= lt!519110 (getCurrentListMapNoExtraKeys!4736 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1156433 () Bool)

(declare-fun res!768228 () Bool)

(declare-fun e!657707 () Bool)

(assert (=> b!1156433 (=> (not res!768228) (not e!657707))))

(assert (=> b!1156433 (= res!768228 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36578 _keys!1208))))))

(declare-fun b!1156434 () Bool)

(declare-fun e!657708 () Bool)

(assert (=> b!1156434 (= e!657708 (not e!657704))))

(declare-fun res!768219 () Bool)

(assert (=> b!1156434 (=> res!768219 e!657704)))

(assert (=> b!1156434 (= res!768219 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1156434 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!519106 () Unit!37985)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74788 (_ BitVec 64) (_ BitVec 32)) Unit!37985)

(assert (=> b!1156434 (= lt!519106 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1156435 () Bool)

(assert (=> b!1156435 (= e!657707 e!657708)))

(declare-fun res!768221 () Bool)

(assert (=> b!1156435 (=> (not res!768221) (not e!657708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74788 (_ BitVec 32)) Bool)

(assert (=> b!1156435 (= res!768221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!519099 mask!1564))))

(assert (=> b!1156435 (= lt!519099 (array!74789 (store (arr!36041 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36578 _keys!1208)))))

(declare-fun lt!519095 () ListLongMap!16565)

(declare-fun call!55150 () Bool)

(declare-fun bm!55145 () Bool)

(assert (=> bm!55145 (= call!55150 (contains!6785 (ite c!115013 lt!519095 call!55145) k!934))))

(declare-fun call!55146 () ListLongMap!16565)

(declare-fun bm!55146 () Bool)

(assert (=> bm!55146 (= call!55146 (getCurrentListMapNoExtraKeys!4736 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156436 () Bool)

(declare-fun res!768222 () Bool)

(assert (=> b!1156436 (=> (not res!768222) (not e!657707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1156436 (= res!768222 (validKeyInArray!0 k!934))))

(declare-fun b!1156437 () Bool)

(declare-fun e!657711 () Bool)

(declare-fun call!55149 () ListLongMap!16565)

(assert (=> b!1156437 (= e!657711 (= call!55149 call!55146))))

(declare-fun b!1156438 () Bool)

(declare-fun e!657695 () Bool)

(declare-fun e!657700 () Bool)

(declare-fun mapRes!45320 () Bool)

(assert (=> b!1156438 (= e!657695 (and e!657700 mapRes!45320))))

(declare-fun condMapEmpty!45320 () Bool)

(declare-fun mapDefault!45320 () ValueCell!13789)


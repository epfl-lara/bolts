; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98676 () Bool)

(assert start!98676)

(declare-fun b_free!24245 () Bool)

(declare-fun b_next!24245 () Bool)

(assert (=> start!98676 (= b_free!24245 (not b_next!24245))))

(declare-fun tp!85447 () Bool)

(declare-fun b_and!39353 () Bool)

(assert (=> start!98676 (= tp!85447 b_and!39353)))

(declare-fun b!1146218 () Bool)

(declare-datatypes ((V!43493 0))(
  ( (V!43494 (val!14444 Int)) )
))
(declare-datatypes ((tuple2!18382 0))(
  ( (tuple2!18383 (_1!9201 (_ BitVec 64)) (_2!9201 V!43493)) )
))
(declare-datatypes ((List!25179 0))(
  ( (Nil!25176) (Cons!25175 (h!26384 tuple2!18382) (t!36423 List!25179)) )
))
(declare-datatypes ((ListLongMap!16363 0))(
  ( (ListLongMap!16364 (toList!8197 List!25179)) )
))
(declare-fun call!52485 () ListLongMap!16363)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6696 (ListLongMap!16363 (_ BitVec 64)) Bool)

(assert (=> b!1146218 (contains!6696 call!52485 k!934)))

(declare-datatypes ((Unit!37565 0))(
  ( (Unit!37566) )
))
(declare-fun lt!511866 () Unit!37565)

(declare-fun minValue!944 () V!43493)

(declare-fun lt!511867 () ListLongMap!16363)

(declare-fun addStillContains!836 (ListLongMap!16363 (_ BitVec 64) V!43493 (_ BitVec 64)) Unit!37565)

(assert (=> b!1146218 (= lt!511866 (addStillContains!836 lt!511867 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!52487 () Bool)

(assert (=> b!1146218 call!52487))

(declare-fun lt!511869 () ListLongMap!16363)

(declare-fun zeroValue!944 () V!43493)

(declare-fun +!3539 (ListLongMap!16363 tuple2!18382) ListLongMap!16363)

(assert (=> b!1146218 (= lt!511867 (+!3539 lt!511869 (tuple2!18383 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!511872 () Unit!37565)

(declare-fun call!52481 () Unit!37565)

(assert (=> b!1146218 (= lt!511872 call!52481)))

(declare-fun e!652039 () Unit!37565)

(assert (=> b!1146218 (= e!652039 lt!511866)))

(declare-fun b!1146219 () Bool)

(declare-fun e!652047 () Unit!37565)

(declare-fun Unit!37567 () Unit!37565)

(assert (=> b!1146219 (= e!652047 Unit!37567)))

(declare-fun b!1146220 () Bool)

(declare-fun call!52486 () ListLongMap!16363)

(declare-fun e!652050 () Bool)

(declare-fun call!52483 () ListLongMap!16363)

(declare-fun -!1287 (ListLongMap!16363 (_ BitVec 64)) ListLongMap!16363)

(assert (=> b!1146220 (= e!652050 (= call!52486 (-!1287 call!52483 k!934)))))

(declare-fun b!1146221 () Bool)

(declare-fun e!652037 () Unit!37565)

(assert (=> b!1146221 (= e!652037 e!652047)))

(declare-fun c!113016 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!511862 () Bool)

(assert (=> b!1146221 (= c!113016 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511862))))

(declare-datatypes ((array!74356 0))(
  ( (array!74357 (arr!35825 (Array (_ BitVec 32) (_ BitVec 64))) (size!36362 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74356)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!52478 () Bool)

(declare-datatypes ((ValueCell!13678 0))(
  ( (ValueCellFull!13678 (v!17082 V!43493)) (EmptyCell!13678) )
))
(declare-datatypes ((array!74358 0))(
  ( (array!74359 (arr!35826 (Array (_ BitVec 32) ValueCell!13678)) (size!36363 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74358)

(declare-fun getCurrentListMapNoExtraKeys!4639 (array!74356 array!74358 (_ BitVec 32) (_ BitVec 32) V!43493 V!43493 (_ BitVec 32) Int) ListLongMap!16363)

(assert (=> bm!52478 (= call!52483 (getCurrentListMapNoExtraKeys!4639 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146222 () Bool)

(declare-fun res!763228 () Bool)

(declare-fun e!652043 () Bool)

(assert (=> b!1146222 (=> (not res!763228) (not e!652043))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146222 (= res!763228 (= (select (arr!35825 _keys!1208) i!673) k!934))))

(declare-fun b!1146223 () Bool)

(declare-fun e!652034 () Unit!37565)

(declare-fun Unit!37568 () Unit!37565)

(assert (=> b!1146223 (= e!652034 Unit!37568)))

(declare-fun lt!511873 () array!74356)

(declare-fun lt!511857 () array!74358)

(declare-fun bm!52479 () Bool)

(assert (=> bm!52479 (= call!52486 (getCurrentListMapNoExtraKeys!4639 lt!511873 lt!511857 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!652041 () Bool)

(declare-fun b!1146224 () Bool)

(assert (=> b!1146224 (= e!652041 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!511862) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1146225 () Bool)

(declare-fun e!652042 () Bool)

(assert (=> b!1146225 (= e!652042 true)))

(declare-fun e!652045 () Bool)

(assert (=> b!1146225 e!652045))

(declare-fun res!763235 () Bool)

(assert (=> b!1146225 (=> (not res!763235) (not e!652045))))

(declare-fun lt!511868 () V!43493)

(assert (=> b!1146225 (= res!763235 (= (-!1287 (+!3539 lt!511869 (tuple2!18383 (select (arr!35825 _keys!1208) from!1455) lt!511868)) (select (arr!35825 _keys!1208) from!1455)) lt!511869))))

(declare-fun lt!511871 () Unit!37565)

(declare-fun addThenRemoveForNewKeyIsSame!140 (ListLongMap!16363 (_ BitVec 64) V!43493) Unit!37565)

(assert (=> b!1146225 (= lt!511871 (addThenRemoveForNewKeyIsSame!140 lt!511869 (select (arr!35825 _keys!1208) from!1455) lt!511868))))

(declare-fun lt!511865 () V!43493)

(declare-fun get!18242 (ValueCell!13678 V!43493) V!43493)

(assert (=> b!1146225 (= lt!511868 (get!18242 (select (arr!35826 _values!996) from!1455) lt!511865))))

(declare-fun lt!511858 () Unit!37565)

(assert (=> b!1146225 (= lt!511858 e!652034)))

(declare-fun c!113011 () Bool)

(assert (=> b!1146225 (= c!113011 (contains!6696 lt!511869 k!934))))

(assert (=> b!1146225 (= lt!511869 (getCurrentListMapNoExtraKeys!4639 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146226 () Bool)

(declare-fun res!763234 () Bool)

(assert (=> b!1146226 (=> (not res!763234) (not e!652043))))

(assert (=> b!1146226 (= res!763234 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36362 _keys!1208))))))

(declare-fun bm!52480 () Bool)

(declare-fun call!52484 () Unit!37565)

(assert (=> bm!52480 (= call!52484 call!52481)))

(declare-fun b!1146227 () Bool)

(assert (=> b!1146227 (= e!652050 (= call!52486 call!52483))))

(declare-fun mapNonEmpty!44987 () Bool)

(declare-fun mapRes!44987 () Bool)

(declare-fun tp!85446 () Bool)

(declare-fun e!652036 () Bool)

(assert (=> mapNonEmpty!44987 (= mapRes!44987 (and tp!85446 e!652036))))

(declare-fun mapValue!44987 () ValueCell!13678)

(declare-fun mapKey!44987 () (_ BitVec 32))

(declare-fun mapRest!44987 () (Array (_ BitVec 32) ValueCell!13678))

(assert (=> mapNonEmpty!44987 (= (arr!35826 _values!996) (store mapRest!44987 mapKey!44987 mapValue!44987))))

(declare-fun res!763237 () Bool)

(assert (=> start!98676 (=> (not res!763237) (not e!652043))))

(assert (=> start!98676 (= res!763237 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36362 _keys!1208))))))

(assert (=> start!98676 e!652043))

(declare-fun tp_is_empty!28775 () Bool)

(assert (=> start!98676 tp_is_empty!28775))

(declare-fun array_inv!27324 (array!74356) Bool)

(assert (=> start!98676 (array_inv!27324 _keys!1208)))

(assert (=> start!98676 true))

(assert (=> start!98676 tp!85447))

(declare-fun e!652035 () Bool)

(declare-fun array_inv!27325 (array!74358) Bool)

(assert (=> start!98676 (and (array_inv!27325 _values!996) e!652035)))

(declare-fun mapIsEmpty!44987 () Bool)

(assert (=> mapIsEmpty!44987 mapRes!44987))

(declare-fun b!1146228 () Bool)

(declare-fun res!763238 () Bool)

(assert (=> b!1146228 (=> (not res!763238) (not e!652043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1146228 (= res!763238 (validKeyInArray!0 k!934))))

(declare-fun c!113015 () Bool)

(declare-fun call!52482 () ListLongMap!16363)

(declare-fun bm!52481 () Bool)

(assert (=> bm!52481 (= call!52487 (contains!6696 (ite c!113015 lt!511867 call!52482) k!934))))

(declare-fun b!1146229 () Bool)

(declare-fun e!652048 () Bool)

(declare-fun arrayContainsKey!0 (array!74356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146229 (= e!652048 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1146230 () Bool)

(declare-fun res!763231 () Bool)

(declare-fun e!652040 () Bool)

(assert (=> b!1146230 (=> (not res!763231) (not e!652040))))

(declare-datatypes ((List!25180 0))(
  ( (Nil!25177) (Cons!25176 (h!26385 (_ BitVec 64)) (t!36424 List!25180)) )
))
(declare-fun arrayNoDuplicates!0 (array!74356 (_ BitVec 32) List!25180) Bool)

(assert (=> b!1146230 (= res!763231 (arrayNoDuplicates!0 lt!511873 #b00000000000000000000000000000000 Nil!25177))))

(declare-fun c!113014 () Bool)

(declare-fun bm!52482 () Bool)

(assert (=> bm!52482 (= call!52485 (+!3539 (ite c!113015 lt!511867 lt!511869) (ite c!113015 (tuple2!18383 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113014 (tuple2!18383 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18383 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1146231 () Bool)

(assert (=> b!1146231 (= e!652041 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1146232 () Bool)

(declare-fun e!652044 () Bool)

(assert (=> b!1146232 (= e!652035 (and e!652044 mapRes!44987))))

(declare-fun condMapEmpty!44987 () Bool)

(declare-fun mapDefault!44987 () ValueCell!13678)


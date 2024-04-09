; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98528 () Bool)

(assert start!98528)

(declare-fun b_free!24097 () Bool)

(declare-fun b_next!24097 () Bool)

(assert (=> start!98528 (= b_free!24097 (not b_next!24097))))

(declare-fun tp!85002 () Bool)

(declare-fun b_and!39057 () Bool)

(assert (=> start!98528 (= tp!85002 b_and!39057)))

(declare-fun b!1139561 () Bool)

(declare-datatypes ((Unit!37297 0))(
  ( (Unit!37298) )
))
(declare-fun e!648417 () Unit!37297)

(declare-fun lt!507211 () Unit!37297)

(assert (=> b!1139561 (= e!648417 lt!507211)))

(declare-fun call!50707 () Unit!37297)

(assert (=> b!1139561 (= lt!507211 call!50707)))

(declare-fun call!50708 () Bool)

(assert (=> b!1139561 call!50708))

(declare-fun b!1139562 () Bool)

(assert (=> b!1139562 call!50708))

(declare-fun lt!507197 () Unit!37297)

(assert (=> b!1139562 (= lt!507197 call!50707)))

(declare-fun e!648416 () Unit!37297)

(assert (=> b!1139562 (= e!648416 lt!507197)))

(declare-fun b!1139563 () Bool)

(declare-fun res!760046 () Bool)

(declare-fun e!648423 () Bool)

(assert (=> b!1139563 (=> (not res!760046) (not e!648423))))

(declare-datatypes ((array!74072 0))(
  ( (array!74073 (arr!35683 (Array (_ BitVec 32) (_ BitVec 64))) (size!36220 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74072)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74072 (_ BitVec 32)) Bool)

(assert (=> b!1139563 (= res!760046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1139564 () Bool)

(declare-fun res!760049 () Bool)

(assert (=> b!1139564 (=> (not res!760049) (not e!648423))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!43297 0))(
  ( (V!43298 (val!14370 Int)) )
))
(declare-datatypes ((ValueCell!13604 0))(
  ( (ValueCellFull!13604 (v!17008 V!43297)) (EmptyCell!13604) )
))
(declare-datatypes ((array!74074 0))(
  ( (array!74075 (arr!35684 (Array (_ BitVec 32) ValueCell!13604)) (size!36221 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74074)

(assert (=> b!1139564 (= res!760049 (and (= (size!36221 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36220 _keys!1208) (size!36221 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1139565 () Bool)

(declare-fun e!648424 () Bool)

(declare-fun lt!507206 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1139565 (= e!648424 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!507206) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun c!111682 () Bool)

(declare-datatypes ((tuple2!18254 0))(
  ( (tuple2!18255 (_1!9137 (_ BitVec 64)) (_2!9137 V!43297)) )
))
(declare-datatypes ((List!25057 0))(
  ( (Nil!25054) (Cons!25053 (h!26262 tuple2!18254) (t!36153 List!25057)) )
))
(declare-datatypes ((ListLongMap!16235 0))(
  ( (ListLongMap!16236 (toList!8133 List!25057)) )
))
(declare-fun lt!507193 () ListLongMap!16235)

(declare-fun call!50712 () Bool)

(declare-fun bm!50702 () Bool)

(declare-fun call!50709 () ListLongMap!16235)

(declare-fun contains!6642 (ListLongMap!16235 (_ BitVec 64)) Bool)

(assert (=> bm!50702 (= call!50712 (contains!6642 (ite c!111682 lt!507193 call!50709) k!934))))

(declare-fun b!1139566 () Bool)

(declare-fun e!648425 () Bool)

(declare-fun e!648421 () Bool)

(assert (=> b!1139566 (= e!648425 e!648421)))

(declare-fun res!760051 () Bool)

(assert (=> b!1139566 (=> res!760051 e!648421)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1139566 (= res!760051 (not (= (select (arr!35683 _keys!1208) from!1455) k!934)))))

(declare-fun e!648418 () Bool)

(assert (=> b!1139566 e!648418))

(declare-fun c!111680 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139566 (= c!111680 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43297)

(declare-fun lt!507203 () Unit!37297)

(declare-fun minValue!944 () V!43297)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!492 (array!74072 array!74074 (_ BitVec 32) (_ BitVec 32) V!43297 V!43297 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37297)

(assert (=> b!1139566 (= lt!507203 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!492 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50703 () Bool)

(declare-fun call!50706 () ListLongMap!16235)

(assert (=> bm!50703 (= call!50709 call!50706)))

(declare-fun lt!507194 () array!74074)

(declare-fun lt!507210 () array!74072)

(declare-fun bm!50704 () Bool)

(declare-fun call!50710 () ListLongMap!16235)

(declare-fun getCurrentListMapNoExtraKeys!4580 (array!74072 array!74074 (_ BitVec 32) (_ BitVec 32) V!43297 V!43297 (_ BitVec 32) Int) ListLongMap!16235)

(assert (=> bm!50704 (= call!50710 (getCurrentListMapNoExtraKeys!4580 lt!507210 lt!507194 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139567 () Bool)

(declare-fun res!760048 () Bool)

(assert (=> b!1139567 (=> (not res!760048) (not e!648423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1139567 (= res!760048 (validKeyInArray!0 k!934))))

(declare-fun bm!50705 () Bool)

(declare-fun call!50711 () ListLongMap!16235)

(assert (=> bm!50705 (= call!50711 (getCurrentListMapNoExtraKeys!4580 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139568 () Bool)

(declare-fun e!648411 () Unit!37297)

(declare-fun Unit!37299 () Unit!37297)

(assert (=> b!1139568 (= e!648411 Unit!37299)))

(declare-fun mapIsEmpty!44765 () Bool)

(declare-fun mapRes!44765 () Bool)

(assert (=> mapIsEmpty!44765 mapRes!44765))

(declare-fun b!1139569 () Bool)

(declare-fun e!648420 () Bool)

(assert (=> b!1139569 (= e!648420 e!648425)))

(declare-fun res!760054 () Bool)

(assert (=> b!1139569 (=> res!760054 e!648425)))

(assert (=> b!1139569 (= res!760054 (not (= from!1455 i!673)))))

(declare-fun lt!507202 () ListLongMap!16235)

(assert (=> b!1139569 (= lt!507202 (getCurrentListMapNoExtraKeys!4580 lt!507210 lt!507194 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!507199 () V!43297)

(assert (=> b!1139569 (= lt!507194 (array!74075 (store (arr!35684 _values!996) i!673 (ValueCellFull!13604 lt!507199)) (size!36221 _values!996)))))

(declare-fun dynLambda!2635 (Int (_ BitVec 64)) V!43297)

(assert (=> b!1139569 (= lt!507199 (dynLambda!2635 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!507207 () ListLongMap!16235)

(assert (=> b!1139569 (= lt!507207 (getCurrentListMapNoExtraKeys!4580 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1139570 () Bool)

(declare-fun res!760053 () Bool)

(assert (=> b!1139570 (=> (not res!760053) (not e!648423))))

(assert (=> b!1139570 (= res!760053 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36220 _keys!1208))))))

(declare-fun lt!507213 () ListLongMap!16235)

(declare-fun c!111683 () Bool)

(declare-fun bm!50706 () Bool)

(declare-fun call!50705 () Unit!37297)

(declare-fun addStillContains!783 (ListLongMap!16235 (_ BitVec 64) V!43297 (_ BitVec 64)) Unit!37297)

(assert (=> bm!50706 (= call!50705 (addStillContains!783 lt!507213 (ite (or c!111682 c!111683) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111682 c!111683) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1139571 () Bool)

(assert (=> b!1139571 (= e!648421 true)))

(declare-fun lt!507208 () V!43297)

(declare-fun -!1234 (ListLongMap!16235 (_ BitVec 64)) ListLongMap!16235)

(declare-fun +!3482 (ListLongMap!16235 tuple2!18254) ListLongMap!16235)

(assert (=> b!1139571 (= (-!1234 (+!3482 lt!507213 (tuple2!18255 (select (arr!35683 _keys!1208) from!1455) lt!507208)) (select (arr!35683 _keys!1208) from!1455)) lt!507213)))

(declare-fun lt!507196 () Unit!37297)

(declare-fun addThenRemoveForNewKeyIsSame!90 (ListLongMap!16235 (_ BitVec 64) V!43297) Unit!37297)

(assert (=> b!1139571 (= lt!507196 (addThenRemoveForNewKeyIsSame!90 lt!507213 (select (arr!35683 _keys!1208) from!1455) lt!507208))))

(declare-fun get!18144 (ValueCell!13604 V!43297) V!43297)

(assert (=> b!1139571 (= lt!507208 (get!18144 (select (arr!35684 _values!996) from!1455) lt!507199))))

(declare-fun lt!507195 () Unit!37297)

(assert (=> b!1139571 (= lt!507195 e!648411)))

(declare-fun c!111681 () Bool)

(assert (=> b!1139571 (= c!111681 (contains!6642 lt!507213 k!934))))

(assert (=> b!1139571 (= lt!507213 (getCurrentListMapNoExtraKeys!4580 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139572 () Bool)

(declare-fun Unit!37300 () Unit!37297)

(assert (=> b!1139572 (= e!648416 Unit!37300)))

(declare-fun b!1139573 () Bool)

(assert (=> b!1139573 (= e!648417 e!648416)))

(declare-fun c!111679 () Bool)

(assert (=> b!1139573 (= c!111679 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!507206))))

(declare-fun b!1139574 () Bool)

(declare-fun res!760056 () Bool)

(declare-fun e!648422 () Bool)

(assert (=> b!1139574 (=> (not res!760056) (not e!648422))))

(declare-datatypes ((List!25058 0))(
  ( (Nil!25055) (Cons!25054 (h!26263 (_ BitVec 64)) (t!36154 List!25058)) )
))
(declare-fun arrayNoDuplicates!0 (array!74072 (_ BitVec 32) List!25058) Bool)

(assert (=> b!1139574 (= res!760056 (arrayNoDuplicates!0 lt!507210 #b00000000000000000000000000000000 Nil!25055))))

(declare-fun b!1139575 () Bool)

(assert (=> b!1139575 (= e!648422 (not e!648420))))

(declare-fun res!760047 () Bool)

(assert (=> b!1139575 (=> res!760047 e!648420)))

(assert (=> b!1139575 (= res!760047 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1139575 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!507200 () Unit!37297)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74072 (_ BitVec 64) (_ BitVec 32)) Unit!37297)

(assert (=> b!1139575 (= lt!507200 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!50707 () Bool)

(assert (=> bm!50707 (= call!50707 call!50705)))

(declare-fun b!1139576 () Bool)

(declare-fun e!648413 () Bool)

(declare-fun tp_is_empty!28627 () Bool)

(assert (=> b!1139576 (= e!648413 tp_is_empty!28627)))

(declare-fun b!1139577 () Bool)

(declare-fun res!760055 () Bool)

(assert (=> b!1139577 (=> (not res!760055) (not e!648423))))

(assert (=> b!1139577 (= res!760055 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25055))))

(declare-fun b!1139578 () Bool)

(declare-fun res!760052 () Bool)

(assert (=> b!1139578 (=> (not res!760052) (not e!648423))))

(assert (=> b!1139578 (= res!760052 (= (select (arr!35683 _keys!1208) i!673) k!934))))

(declare-fun b!1139579 () Bool)

(assert (=> b!1139579 (= e!648418 (= call!50710 (-!1234 call!50711 k!934)))))

(declare-fun b!1139580 () Bool)

(assert (=> b!1139580 (contains!6642 call!50706 k!934)))

(declare-fun lt!507205 () Unit!37297)

(assert (=> b!1139580 (= lt!507205 (addStillContains!783 lt!507193 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1139580 call!50712))

(assert (=> b!1139580 (= lt!507193 (+!3482 lt!507213 (tuple2!18255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!507212 () Unit!37297)

(assert (=> b!1139580 (= lt!507212 call!50705)))

(declare-fun e!648414 () Unit!37297)

(assert (=> b!1139580 (= e!648414 lt!507205)))

(declare-fun b!1139581 () Bool)

(declare-fun e!648415 () Bool)

(assert (=> b!1139581 (= e!648415 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!50708 () Bool)

(assert (=> bm!50708 (= call!50708 call!50712)))

(declare-fun b!1139582 () Bool)

(declare-fun e!648426 () Bool)

(assert (=> b!1139582 (= e!648426 (and e!648413 mapRes!44765))))

(declare-fun condMapEmpty!44765 () Bool)

(declare-fun mapDefault!44765 () ValueCell!13604)


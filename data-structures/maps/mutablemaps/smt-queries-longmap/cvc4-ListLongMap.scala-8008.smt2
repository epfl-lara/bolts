; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98928 () Bool)

(assert start!98928)

(declare-fun b_free!24497 () Bool)

(declare-fun b_next!24497 () Bool)

(assert (=> start!98928 (= b_free!24497 (not b_next!24497))))

(declare-fun tp!86202 () Bool)

(declare-fun b_and!39857 () Bool)

(assert (=> start!98928 (= tp!86202 b_and!39857)))

(declare-fun b!1157810 () Bool)

(declare-fun res!768894 () Bool)

(declare-fun e!658474 () Bool)

(assert (=> b!1157810 (=> (not res!768894) (not e!658474))))

(declare-datatypes ((array!74844 0))(
  ( (array!74845 (arr!36069 (Array (_ BitVec 32) (_ BitVec 64))) (size!36606 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74844)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43829 0))(
  ( (V!43830 (val!14570 Int)) )
))
(declare-datatypes ((ValueCell!13804 0))(
  ( (ValueCellFull!13804 (v!17208 V!43829)) (EmptyCell!13804) )
))
(declare-datatypes ((array!74846 0))(
  ( (array!74847 (arr!36070 (Array (_ BitVec 32) ValueCell!13804)) (size!36607 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74846)

(assert (=> b!1157810 (= res!768894 (and (= (size!36607 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36606 _keys!1208) (size!36607 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1157811 () Bool)

(declare-fun res!768905 () Bool)

(assert (=> b!1157811 (=> (not res!768905) (not e!658474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74844 (_ BitVec 32)) Bool)

(assert (=> b!1157811 (= res!768905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!55502 () Bool)

(declare-datatypes ((Unit!38037 0))(
  ( (Unit!38038) )
))
(declare-fun call!55510 () Unit!38037)

(declare-fun call!55505 () Unit!38037)

(assert (=> bm!55502 (= call!55510 call!55505)))

(declare-fun b!1157812 () Bool)

(declare-fun e!658473 () Unit!38037)

(declare-fun Unit!38039 () Unit!38037)

(assert (=> b!1157812 (= e!658473 Unit!38039)))

(declare-fun b!1157813 () Bool)

(declare-fun e!658472 () Bool)

(declare-fun e!658471 () Bool)

(assert (=> b!1157813 (= e!658472 e!658471)))

(declare-fun res!768899 () Bool)

(assert (=> b!1157813 (=> res!768899 e!658471)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1157813 (= res!768899 (not (= (select (arr!36069 _keys!1208) from!1455) k!934)))))

(declare-fun e!658464 () Bool)

(assert (=> b!1157813 e!658464))

(declare-fun c!115284 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1157813 (= c!115284 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43829)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!520098 () Unit!38037)

(declare-fun minValue!944 () V!43829)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!613 (array!74844 array!74846 (_ BitVec 32) (_ BitVec 32) V!43829 V!43829 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38037)

(assert (=> b!1157813 (= lt!520098 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!613 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45365 () Bool)

(declare-fun mapRes!45365 () Bool)

(assert (=> mapIsEmpty!45365 mapRes!45365))

(declare-fun b!1157814 () Bool)

(declare-fun e!658466 () Bool)

(assert (=> b!1157814 (= e!658474 e!658466)))

(declare-fun res!768902 () Bool)

(assert (=> b!1157814 (=> (not res!768902) (not e!658466))))

(declare-fun lt!520095 () array!74844)

(assert (=> b!1157814 (= res!768902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520095 mask!1564))))

(assert (=> b!1157814 (= lt!520095 (array!74845 (store (arr!36069 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36606 _keys!1208)))))

(declare-fun c!115282 () Bool)

(declare-fun bm!55503 () Bool)

(declare-datatypes ((tuple2!18610 0))(
  ( (tuple2!18611 (_1!9315 (_ BitVec 64)) (_2!9315 V!43829)) )
))
(declare-datatypes ((List!25390 0))(
  ( (Nil!25387) (Cons!25386 (h!26595 tuple2!18610) (t!36886 List!25390)) )
))
(declare-datatypes ((ListLongMap!16591 0))(
  ( (ListLongMap!16592 (toList!8311 List!25390)) )
))
(declare-fun lt!520096 () ListLongMap!16591)

(declare-fun lt!520082 () ListLongMap!16591)

(declare-fun c!115280 () Bool)

(declare-fun addStillContains!935 (ListLongMap!16591 (_ BitVec 64) V!43829 (_ BitVec 64)) Unit!38037)

(assert (=> bm!55503 (= call!55505 (addStillContains!935 (ite c!115280 lt!520082 lt!520096) (ite c!115280 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115282 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115280 minValue!944 (ite c!115282 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1157815 () Bool)

(declare-fun e!658476 () Bool)

(assert (=> b!1157815 (= e!658476 e!658472)))

(declare-fun res!768906 () Bool)

(assert (=> b!1157815 (=> res!768906 e!658472)))

(assert (=> b!1157815 (= res!768906 (not (= from!1455 i!673)))))

(declare-fun lt!520081 () ListLongMap!16591)

(declare-fun lt!520087 () array!74846)

(declare-fun getCurrentListMapNoExtraKeys!4748 (array!74844 array!74846 (_ BitVec 32) (_ BitVec 32) V!43829 V!43829 (_ BitVec 32) Int) ListLongMap!16591)

(assert (=> b!1157815 (= lt!520081 (getCurrentListMapNoExtraKeys!4748 lt!520095 lt!520087 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!520100 () V!43829)

(assert (=> b!1157815 (= lt!520087 (array!74847 (store (arr!36070 _values!996) i!673 (ValueCellFull!13804 lt!520100)) (size!36607 _values!996)))))

(declare-fun dynLambda!2756 (Int (_ BitVec 64)) V!43829)

(assert (=> b!1157815 (= lt!520100 (dynLambda!2756 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!520094 () ListLongMap!16591)

(assert (=> b!1157815 (= lt!520094 (getCurrentListMapNoExtraKeys!4748 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!55504 () Bool)

(declare-fun call!55506 () Bool)

(declare-fun call!55511 () Bool)

(assert (=> bm!55504 (= call!55506 call!55511)))

(declare-fun res!768896 () Bool)

(assert (=> start!98928 (=> (not res!768896) (not e!658474))))

(assert (=> start!98928 (= res!768896 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36606 _keys!1208))))))

(assert (=> start!98928 e!658474))

(declare-fun tp_is_empty!29027 () Bool)

(assert (=> start!98928 tp_is_empty!29027))

(declare-fun array_inv!27472 (array!74844) Bool)

(assert (=> start!98928 (array_inv!27472 _keys!1208)))

(assert (=> start!98928 true))

(assert (=> start!98928 tp!86202))

(declare-fun e!658469 () Bool)

(declare-fun array_inv!27473 (array!74846) Bool)

(assert (=> start!98928 (and (array_inv!27473 _values!996) e!658469)))

(declare-fun b!1157816 () Bool)

(declare-fun res!768900 () Bool)

(assert (=> b!1157816 (=> (not res!768900) (not e!658474))))

(assert (=> b!1157816 (= res!768900 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36606 _keys!1208))))))

(declare-fun mapNonEmpty!45365 () Bool)

(declare-fun tp!86203 () Bool)

(declare-fun e!658461 () Bool)

(assert (=> mapNonEmpty!45365 (= mapRes!45365 (and tp!86203 e!658461))))

(declare-fun mapKey!45365 () (_ BitVec 32))

(declare-fun mapRest!45365 () (Array (_ BitVec 32) ValueCell!13804))

(declare-fun mapValue!45365 () ValueCell!13804)

(assert (=> mapNonEmpty!45365 (= (arr!36070 _values!996) (store mapRest!45365 mapKey!45365 mapValue!45365))))

(declare-fun b!1157817 () Bool)

(declare-fun e!658468 () Bool)

(assert (=> b!1157817 (= e!658469 (and e!658468 mapRes!45365))))

(declare-fun condMapEmpty!45365 () Bool)

(declare-fun mapDefault!45365 () ValueCell!13804)


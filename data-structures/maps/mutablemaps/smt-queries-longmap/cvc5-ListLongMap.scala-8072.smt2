; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99334 () Bool)

(assert start!99334)

(declare-fun b_free!24877 () Bool)

(declare-fun b_next!24877 () Bool)

(assert (=> start!99334 (= b_free!24877 (not b_next!24877))))

(declare-fun tp!87345 () Bool)

(declare-fun b_and!40635 () Bool)

(assert (=> start!99334 (= tp!87345 b_and!40635)))

(declare-fun b!1169948 () Bool)

(declare-fun e!664991 () Bool)

(declare-fun e!664989 () Bool)

(assert (=> b!1169948 (= e!664991 e!664989)))

(declare-fun res!776471 () Bool)

(assert (=> b!1169948 (=> res!776471 e!664989)))

(declare-datatypes ((array!75590 0))(
  ( (array!75591 (arr!36441 (Array (_ BitVec 32) (_ BitVec 64))) (size!36978 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75590)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1169948 (= res!776471 (not (= (select (arr!36441 _keys!1208) from!1455) k!934)))))

(declare-fun e!664987 () Bool)

(assert (=> b!1169948 e!664987))

(declare-fun res!776478 () Bool)

(assert (=> b!1169948 (=> (not res!776478) (not e!664987))))

(declare-datatypes ((V!44337 0))(
  ( (V!44338 (val!14760 Int)) )
))
(declare-fun lt!526850 () V!44337)

(declare-datatypes ((tuple2!18936 0))(
  ( (tuple2!18937 (_1!9478 (_ BitVec 64)) (_2!9478 V!44337)) )
))
(declare-datatypes ((List!25708 0))(
  ( (Nil!25705) (Cons!25704 (h!26913 tuple2!18936) (t!37584 List!25708)) )
))
(declare-datatypes ((ListLongMap!16917 0))(
  ( (ListLongMap!16918 (toList!8474 List!25708)) )
))
(declare-fun lt!526845 () ListLongMap!16917)

(declare-datatypes ((ValueCell!13994 0))(
  ( (ValueCellFull!13994 (v!17399 V!44337)) (EmptyCell!13994) )
))
(declare-datatypes ((array!75592 0))(
  ( (array!75593 (arr!36442 (Array (_ BitVec 32) ValueCell!13994)) (size!36979 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75592)

(declare-fun lt!526841 () ListLongMap!16917)

(declare-fun +!3719 (ListLongMap!16917 tuple2!18936) ListLongMap!16917)

(declare-fun get!18612 (ValueCell!13994 V!44337) V!44337)

(assert (=> b!1169948 (= res!776478 (= lt!526845 (+!3719 lt!526841 (tuple2!18937 (select (arr!36441 _keys!1208) from!1455) (get!18612 (select (arr!36442 _values!996) from!1455) lt!526850)))))))

(declare-fun b!1169949 () Bool)

(assert (=> b!1169949 (= e!664989 true)))

(declare-fun arrayContainsKey!0 (array!75590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169949 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38490 0))(
  ( (Unit!38491) )
))
(declare-fun lt!526851 () Unit!38490)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75590 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38490)

(assert (=> b!1169949 (= lt!526851 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1169950 () Bool)

(declare-fun res!776479 () Bool)

(declare-fun e!664994 () Bool)

(assert (=> b!1169950 (=> (not res!776479) (not e!664994))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1169950 (= res!776479 (and (= (size!36979 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36978 _keys!1208) (size!36979 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169951 () Bool)

(declare-fun e!664986 () Bool)

(assert (=> b!1169951 (= e!664986 e!664991)))

(declare-fun res!776482 () Bool)

(assert (=> b!1169951 (=> res!776482 e!664991)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169951 (= res!776482 (not (validKeyInArray!0 (select (arr!36441 _keys!1208) from!1455))))))

(declare-fun lt!526849 () ListLongMap!16917)

(assert (=> b!1169951 (= lt!526849 lt!526841)))

(declare-fun lt!526847 () ListLongMap!16917)

(declare-fun -!1496 (ListLongMap!16917 (_ BitVec 64)) ListLongMap!16917)

(assert (=> b!1169951 (= lt!526841 (-!1496 lt!526847 k!934))))

(declare-fun zeroValue!944 () V!44337)

(declare-fun lt!526846 () array!75590)

(declare-fun lt!526842 () array!75592)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44337)

(declare-fun getCurrentListMapNoExtraKeys!4907 (array!75590 array!75592 (_ BitVec 32) (_ BitVec 32) V!44337 V!44337 (_ BitVec 32) Int) ListLongMap!16917)

(assert (=> b!1169951 (= lt!526849 (getCurrentListMapNoExtraKeys!4907 lt!526846 lt!526842 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169951 (= lt!526847 (getCurrentListMapNoExtraKeys!4907 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526848 () Unit!38490)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!720 (array!75590 array!75592 (_ BitVec 32) (_ BitVec 32) V!44337 V!44337 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38490)

(assert (=> b!1169951 (= lt!526848 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!720 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169952 () Bool)

(declare-fun e!664995 () Bool)

(declare-fun tp_is_empty!29407 () Bool)

(assert (=> b!1169952 (= e!664995 tp_is_empty!29407)))

(declare-fun b!1169953 () Bool)

(declare-fun e!664993 () Bool)

(assert (=> b!1169953 (= e!664994 e!664993)))

(declare-fun res!776474 () Bool)

(assert (=> b!1169953 (=> (not res!776474) (not e!664993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75590 (_ BitVec 32)) Bool)

(assert (=> b!1169953 (= res!776474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526846 mask!1564))))

(assert (=> b!1169953 (= lt!526846 (array!75591 (store (arr!36441 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36978 _keys!1208)))))

(declare-fun b!1169954 () Bool)

(declare-fun res!776475 () Bool)

(assert (=> b!1169954 (=> (not res!776475) (not e!664994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169954 (= res!776475 (validMask!0 mask!1564))))

(declare-fun b!1169955 () Bool)

(declare-fun e!664996 () Bool)

(assert (=> b!1169955 (= e!664987 e!664996)))

(declare-fun res!776481 () Bool)

(assert (=> b!1169955 (=> res!776481 e!664996)))

(assert (=> b!1169955 (= res!776481 (not (= (select (arr!36441 _keys!1208) from!1455) k!934)))))

(declare-fun b!1169956 () Bool)

(declare-fun e!664988 () Bool)

(declare-fun e!664990 () Bool)

(declare-fun mapRes!45938 () Bool)

(assert (=> b!1169956 (= e!664988 (and e!664990 mapRes!45938))))

(declare-fun condMapEmpty!45938 () Bool)

(declare-fun mapDefault!45938 () ValueCell!13994)


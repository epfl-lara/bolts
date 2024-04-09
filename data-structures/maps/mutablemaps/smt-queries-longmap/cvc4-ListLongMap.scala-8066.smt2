; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99302 () Bool)

(assert start!99302)

(declare-fun b_free!24845 () Bool)

(declare-fun b_next!24845 () Bool)

(assert (=> start!99302 (= b_free!24845 (not b_next!24845))))

(declare-fun tp!87249 () Bool)

(declare-fun b_and!40571 () Bool)

(assert (=> start!99302 (= tp!87249 b_and!40571)))

(declare-fun b!1169050 () Bool)

(declare-fun e!664456 () Bool)

(declare-fun tp_is_empty!29375 () Bool)

(assert (=> b!1169050 (= e!664456 tp_is_empty!29375)))

(declare-fun mapIsEmpty!45890 () Bool)

(declare-fun mapRes!45890 () Bool)

(assert (=> mapIsEmpty!45890 mapRes!45890))

(declare-fun res!775748 () Bool)

(declare-fun e!664465 () Bool)

(assert (=> start!99302 (=> (not res!775748) (not e!664465))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75526 0))(
  ( (array!75527 (arr!36409 (Array (_ BitVec 32) (_ BitVec 64))) (size!36946 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75526)

(assert (=> start!99302 (= res!775748 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36946 _keys!1208))))))

(assert (=> start!99302 e!664465))

(assert (=> start!99302 tp_is_empty!29375))

(declare-fun array_inv!27706 (array!75526) Bool)

(assert (=> start!99302 (array_inv!27706 _keys!1208)))

(assert (=> start!99302 true))

(assert (=> start!99302 tp!87249))

(declare-datatypes ((V!44293 0))(
  ( (V!44294 (val!14744 Int)) )
))
(declare-datatypes ((ValueCell!13978 0))(
  ( (ValueCellFull!13978 (v!17383 V!44293)) (EmptyCell!13978) )
))
(declare-datatypes ((array!75528 0))(
  ( (array!75529 (arr!36410 (Array (_ BitVec 32) ValueCell!13978)) (size!36947 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75528)

(declare-fun e!664463 () Bool)

(declare-fun array_inv!27707 (array!75528) Bool)

(assert (=> start!99302 (and (array_inv!27707 _values!996) e!664463)))

(declare-fun b!1169051 () Bool)

(declare-fun res!775754 () Bool)

(assert (=> b!1169051 (=> (not res!775754) (not e!664465))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1169051 (= res!775754 (and (= (size!36947 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36946 _keys!1208) (size!36947 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169052 () Bool)

(declare-fun res!775760 () Bool)

(assert (=> b!1169052 (=> (not res!775760) (not e!664465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169052 (= res!775760 (validMask!0 mask!1564))))

(declare-fun b!1169053 () Bool)

(declare-fun res!775751 () Bool)

(assert (=> b!1169053 (=> (not res!775751) (not e!664465))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169053 (= res!775751 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36946 _keys!1208))))))

(declare-fun b!1169054 () Bool)

(declare-fun res!775758 () Bool)

(assert (=> b!1169054 (=> (not res!775758) (not e!664465))))

(declare-datatypes ((List!25678 0))(
  ( (Nil!25675) (Cons!25674 (h!26883 (_ BitVec 64)) (t!37522 List!25678)) )
))
(declare-fun arrayNoDuplicates!0 (array!75526 (_ BitVec 32) List!25678) Bool)

(assert (=> b!1169054 (= res!775758 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25675))))

(declare-fun mapNonEmpty!45890 () Bool)

(declare-fun tp!87250 () Bool)

(assert (=> mapNonEmpty!45890 (= mapRes!45890 (and tp!87250 e!664456))))

(declare-fun mapKey!45890 () (_ BitVec 32))

(declare-fun mapRest!45890 () (Array (_ BitVec 32) ValueCell!13978))

(declare-fun mapValue!45890 () ValueCell!13978)

(assert (=> mapNonEmpty!45890 (= (arr!36410 _values!996) (store mapRest!45890 mapKey!45890 mapValue!45890))))

(declare-fun b!1169055 () Bool)

(declare-fun res!775755 () Bool)

(assert (=> b!1169055 (=> (not res!775755) (not e!664465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75526 (_ BitVec 32)) Bool)

(assert (=> b!1169055 (= res!775755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169056 () Bool)

(declare-fun e!664458 () Bool)

(declare-fun e!664455 () Bool)

(assert (=> b!1169056 (= e!664458 (not e!664455))))

(declare-fun res!775757 () Bool)

(assert (=> b!1169056 (=> res!775757 e!664455)))

(assert (=> b!1169056 (= res!775757 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169056 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38466 0))(
  ( (Unit!38467) )
))
(declare-fun lt!526367 () Unit!38466)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75526 (_ BitVec 64) (_ BitVec 32)) Unit!38466)

(assert (=> b!1169056 (= lt!526367 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1169057 () Bool)

(assert (=> b!1169057 (= e!664465 e!664458)))

(declare-fun res!775750 () Bool)

(assert (=> b!1169057 (=> (not res!775750) (not e!664458))))

(declare-fun lt!526364 () array!75526)

(assert (=> b!1169057 (= res!775750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526364 mask!1564))))

(assert (=> b!1169057 (= lt!526364 (array!75527 (store (arr!36409 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36946 _keys!1208)))))

(declare-fun b!1169058 () Bool)

(declare-fun e!664459 () Bool)

(declare-fun e!664461 () Bool)

(assert (=> b!1169058 (= e!664459 e!664461)))

(declare-fun res!775752 () Bool)

(assert (=> b!1169058 (=> res!775752 e!664461)))

(assert (=> b!1169058 (= res!775752 (not (= (select (arr!36409 _keys!1208) from!1455) k!934)))))

(declare-fun b!1169059 () Bool)

(declare-fun e!664457 () Bool)

(assert (=> b!1169059 (= e!664457 tp_is_empty!29375)))

(declare-fun b!1169060 () Bool)

(declare-fun res!775762 () Bool)

(assert (=> b!1169060 (=> (not res!775762) (not e!664465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169060 (= res!775762 (validKeyInArray!0 k!934))))

(declare-fun b!1169061 () Bool)

(declare-fun e!664462 () Bool)

(declare-fun e!664460 () Bool)

(assert (=> b!1169061 (= e!664462 e!664460)))

(declare-fun res!775753 () Bool)

(assert (=> b!1169061 (=> res!775753 e!664460)))

(assert (=> b!1169061 (= res!775753 (not (validKeyInArray!0 (select (arr!36409 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!18906 0))(
  ( (tuple2!18907 (_1!9463 (_ BitVec 64)) (_2!9463 V!44293)) )
))
(declare-datatypes ((List!25679 0))(
  ( (Nil!25676) (Cons!25675 (h!26884 tuple2!18906) (t!37523 List!25679)) )
))
(declare-datatypes ((ListLongMap!16887 0))(
  ( (ListLongMap!16888 (toList!8459 List!25679)) )
))
(declare-fun lt!526362 () ListLongMap!16887)

(declare-fun lt!526366 () ListLongMap!16887)

(assert (=> b!1169061 (= lt!526362 lt!526366)))

(declare-fun lt!526363 () ListLongMap!16887)

(declare-fun -!1485 (ListLongMap!16887 (_ BitVec 64)) ListLongMap!16887)

(assert (=> b!1169061 (= lt!526366 (-!1485 lt!526363 k!934))))

(declare-fun zeroValue!944 () V!44293)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526359 () array!75528)

(declare-fun minValue!944 () V!44293)

(declare-fun getCurrentListMapNoExtraKeys!4892 (array!75526 array!75528 (_ BitVec 32) (_ BitVec 32) V!44293 V!44293 (_ BitVec 32) Int) ListLongMap!16887)

(assert (=> b!1169061 (= lt!526362 (getCurrentListMapNoExtraKeys!4892 lt!526364 lt!526359 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169061 (= lt!526363 (getCurrentListMapNoExtraKeys!4892 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526361 () Unit!38466)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!709 (array!75526 array!75528 (_ BitVec 32) (_ BitVec 32) V!44293 V!44293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38466)

(assert (=> b!1169061 (= lt!526361 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!709 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169062 () Bool)

(assert (=> b!1169062 (= e!664455 e!664462)))

(declare-fun res!775756 () Bool)

(assert (=> b!1169062 (=> res!775756 e!664462)))

(assert (=> b!1169062 (= res!775756 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!526365 () ListLongMap!16887)

(assert (=> b!1169062 (= lt!526365 (getCurrentListMapNoExtraKeys!4892 lt!526364 lt!526359 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526360 () V!44293)

(assert (=> b!1169062 (= lt!526359 (array!75529 (store (arr!36410 _values!996) i!673 (ValueCellFull!13978 lt!526360)) (size!36947 _values!996)))))

(declare-fun dynLambda!2884 (Int (_ BitVec 64)) V!44293)

(assert (=> b!1169062 (= lt!526360 (dynLambda!2884 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526368 () ListLongMap!16887)

(assert (=> b!1169062 (= lt!526368 (getCurrentListMapNoExtraKeys!4892 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169063 () Bool)

(declare-fun res!775759 () Bool)

(assert (=> b!1169063 (=> (not res!775759) (not e!664465))))

(assert (=> b!1169063 (= res!775759 (= (select (arr!36409 _keys!1208) i!673) k!934))))

(declare-fun b!1169064 () Bool)

(assert (=> b!1169064 (= e!664461 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1169065 () Bool)

(assert (=> b!1169065 (= e!664460 true)))

(assert (=> b!1169065 e!664459))

(declare-fun res!775761 () Bool)

(assert (=> b!1169065 (=> (not res!775761) (not e!664459))))

(declare-fun +!3709 (ListLongMap!16887 tuple2!18906) ListLongMap!16887)

(declare-fun get!18590 (ValueCell!13978 V!44293) V!44293)

(assert (=> b!1169065 (= res!775761 (= lt!526365 (+!3709 lt!526366 (tuple2!18907 (select (arr!36409 _keys!1208) from!1455) (get!18590 (select (arr!36410 _values!996) from!1455) lt!526360)))))))

(declare-fun b!1169066 () Bool)

(assert (=> b!1169066 (= e!664463 (and e!664457 mapRes!45890))))

(declare-fun condMapEmpty!45890 () Bool)

(declare-fun mapDefault!45890 () ValueCell!13978)


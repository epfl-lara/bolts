; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99538 () Bool)

(assert start!99538)

(declare-fun b_free!25081 () Bool)

(declare-fun b_next!25081 () Bool)

(assert (=> start!99538 (= b_free!25081 (not b_next!25081))))

(declare-fun tp!87958 () Bool)

(declare-fun b_and!41043 () Bool)

(assert (=> start!99538 (= tp!87958 b_and!41043)))

(declare-fun b!1176411 () Bool)

(declare-fun res!781447 () Bool)

(declare-fun e!668765 () Bool)

(assert (=> b!1176411 (=> (not res!781447) (not e!668765))))

(declare-datatypes ((array!75998 0))(
  ( (array!75999 (arr!36645 (Array (_ BitVec 32) (_ BitVec 64))) (size!37182 (_ BitVec 32))) )
))
(declare-fun lt!530948 () array!75998)

(declare-datatypes ((List!25889 0))(
  ( (Nil!25886) (Cons!25885 (h!27094 (_ BitVec 64)) (t!37969 List!25889)) )
))
(declare-fun arrayNoDuplicates!0 (array!75998 (_ BitVec 32) List!25889) Bool)

(assert (=> b!1176411 (= res!781447 (arrayNoDuplicates!0 lt!530948 #b00000000000000000000000000000000 Nil!25886))))

(declare-fun b!1176412 () Bool)

(declare-fun e!668766 () Bool)

(declare-fun e!668767 () Bool)

(assert (=> b!1176412 (= e!668766 e!668767)))

(declare-fun res!781455 () Bool)

(assert (=> b!1176412 (=> res!781455 e!668767)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176412 (= res!781455 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44609 0))(
  ( (V!44610 (val!14862 Int)) )
))
(declare-fun zeroValue!944 () V!44609)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14096 0))(
  ( (ValueCellFull!14096 (v!17501 V!44609)) (EmptyCell!14096) )
))
(declare-datatypes ((array!76000 0))(
  ( (array!76001 (arr!36646 (Array (_ BitVec 32) ValueCell!14096)) (size!37183 (_ BitVec 32))) )
))
(declare-fun lt!530946 () array!76000)

(declare-fun minValue!944 () V!44609)

(declare-datatypes ((tuple2!19122 0))(
  ( (tuple2!19123 (_1!9571 (_ BitVec 64)) (_2!9571 V!44609)) )
))
(declare-datatypes ((List!25890 0))(
  ( (Nil!25887) (Cons!25886 (h!27095 tuple2!19122) (t!37970 List!25890)) )
))
(declare-datatypes ((ListLongMap!17103 0))(
  ( (ListLongMap!17104 (toList!8567 List!25890)) )
))
(declare-fun lt!530944 () ListLongMap!17103)

(declare-fun getCurrentListMapNoExtraKeys!4998 (array!75998 array!76000 (_ BitVec 32) (_ BitVec 32) V!44609 V!44609 (_ BitVec 32) Int) ListLongMap!17103)

(assert (=> b!1176412 (= lt!530944 (getCurrentListMapNoExtraKeys!4998 lt!530948 lt!530946 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530938 () V!44609)

(declare-fun _values!996 () array!76000)

(assert (=> b!1176412 (= lt!530946 (array!76001 (store (arr!36646 _values!996) i!673 (ValueCellFull!14096 lt!530938)) (size!37183 _values!996)))))

(declare-fun dynLambda!2975 (Int (_ BitVec 64)) V!44609)

(assert (=> b!1176412 (= lt!530938 (dynLambda!2975 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75998)

(declare-fun lt!530937 () ListLongMap!17103)

(assert (=> b!1176412 (= lt!530937 (getCurrentListMapNoExtraKeys!4998 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176413 () Bool)

(declare-fun res!781448 () Bool)

(declare-fun e!668764 () Bool)

(assert (=> b!1176413 (=> (not res!781448) (not e!668764))))

(assert (=> b!1176413 (= res!781448 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37182 _keys!1208))))))

(declare-fun b!1176414 () Bool)

(declare-datatypes ((Unit!38765 0))(
  ( (Unit!38766) )
))
(declare-fun e!668760 () Unit!38765)

(declare-fun Unit!38767 () Unit!38765)

(assert (=> b!1176414 (= e!668760 Unit!38767)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!530941 () Unit!38765)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75998 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38765)

(assert (=> b!1176414 (= lt!530941 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176414 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530936 () Unit!38765)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75998 (_ BitVec 32) (_ BitVec 32)) Unit!38765)

(assert (=> b!1176414 (= lt!530936 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1176414 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25886)))

(declare-fun lt!530935 () Unit!38765)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75998 (_ BitVec 64) (_ BitVec 32) List!25889) Unit!38765)

(assert (=> b!1176414 (= lt!530935 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25886))))

(assert (=> b!1176414 false))

(declare-fun b!1176415 () Bool)

(declare-fun e!668763 () Bool)

(assert (=> b!1176415 (= e!668763 true)))

(declare-fun e!668761 () Bool)

(assert (=> b!1176415 e!668761))

(declare-fun res!781454 () Bool)

(assert (=> b!1176415 (=> (not res!781454) (not e!668761))))

(assert (=> b!1176415 (= res!781454 (not (= (select (arr!36645 _keys!1208) from!1455) k!934)))))

(declare-fun lt!530942 () Unit!38765)

(assert (=> b!1176415 (= lt!530942 e!668760)))

(declare-fun c!116693 () Bool)

(assert (=> b!1176415 (= c!116693 (= (select (arr!36645 _keys!1208) from!1455) k!934))))

(declare-fun e!668770 () Bool)

(assert (=> b!1176415 e!668770))

(declare-fun res!781460 () Bool)

(assert (=> b!1176415 (=> (not res!781460) (not e!668770))))

(declare-fun lt!530939 () ListLongMap!17103)

(declare-fun lt!530947 () tuple2!19122)

(declare-fun +!3790 (ListLongMap!17103 tuple2!19122) ListLongMap!17103)

(assert (=> b!1176415 (= res!781460 (= lt!530944 (+!3790 lt!530939 lt!530947)))))

(declare-fun get!18751 (ValueCell!14096 V!44609) V!44609)

(assert (=> b!1176415 (= lt!530947 (tuple2!19123 (select (arr!36645 _keys!1208) from!1455) (get!18751 (select (arr!36646 _values!996) from!1455) lt!530938)))))

(declare-fun res!781453 () Bool)

(assert (=> start!99538 (=> (not res!781453) (not e!668764))))

(assert (=> start!99538 (= res!781453 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37182 _keys!1208))))))

(assert (=> start!99538 e!668764))

(declare-fun tp_is_empty!29611 () Bool)

(assert (=> start!99538 tp_is_empty!29611))

(declare-fun array_inv!27872 (array!75998) Bool)

(assert (=> start!99538 (array_inv!27872 _keys!1208)))

(assert (=> start!99538 true))

(assert (=> start!99538 tp!87958))

(declare-fun e!668762 () Bool)

(declare-fun array_inv!27873 (array!76000) Bool)

(assert (=> start!99538 (and (array_inv!27873 _values!996) e!668762)))

(declare-fun b!1176416 () Bool)

(assert (=> b!1176416 (= e!668767 e!668763)))

(declare-fun res!781452 () Bool)

(assert (=> b!1176416 (=> res!781452 e!668763)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176416 (= res!781452 (not (validKeyInArray!0 (select (arr!36645 _keys!1208) from!1455))))))

(declare-fun lt!530943 () ListLongMap!17103)

(assert (=> b!1176416 (= lt!530943 lt!530939)))

(declare-fun lt!530940 () ListLongMap!17103)

(declare-fun -!1571 (ListLongMap!17103 (_ BitVec 64)) ListLongMap!17103)

(assert (=> b!1176416 (= lt!530939 (-!1571 lt!530940 k!934))))

(assert (=> b!1176416 (= lt!530943 (getCurrentListMapNoExtraKeys!4998 lt!530948 lt!530946 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176416 (= lt!530940 (getCurrentListMapNoExtraKeys!4998 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530949 () Unit!38765)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!795 (array!75998 array!76000 (_ BitVec 32) (_ BitVec 32) V!44609 V!44609 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38765)

(assert (=> b!1176416 (= lt!530949 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!795 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46244 () Bool)

(declare-fun mapRes!46244 () Bool)

(assert (=> mapIsEmpty!46244 mapRes!46244))

(declare-fun b!1176417 () Bool)

(assert (=> b!1176417 (= e!668761 (= lt!530937 (+!3790 lt!530940 lt!530947)))))

(declare-fun b!1176418 () Bool)

(declare-fun e!668759 () Bool)

(assert (=> b!1176418 (= e!668759 tp_is_empty!29611)))

(declare-fun b!1176419 () Bool)

(declare-fun e!668758 () Bool)

(assert (=> b!1176419 (= e!668762 (and e!668758 mapRes!46244))))

(declare-fun condMapEmpty!46244 () Bool)

(declare-fun mapDefault!46244 () ValueCell!14096)


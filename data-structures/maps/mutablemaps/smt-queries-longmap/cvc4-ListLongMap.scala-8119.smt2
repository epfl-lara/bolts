; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99620 () Bool)

(assert start!99620)

(declare-fun b_free!25163 () Bool)

(declare-fun b_next!25163 () Bool)

(assert (=> start!99620 (= b_free!25163 (not b_next!25163))))

(declare-fun tp!88204 () Bool)

(declare-fun b_and!41207 () Bool)

(assert (=> start!99620 (= tp!88204 b_and!41207)))

(declare-fun b!1179076 () Bool)

(declare-datatypes ((Unit!38891 0))(
  ( (Unit!38892) )
))
(declare-fun e!670363 () Unit!38891)

(declare-fun Unit!38893 () Unit!38891)

(assert (=> b!1179076 (= e!670363 Unit!38893)))

(declare-datatypes ((array!76158 0))(
  ( (array!76159 (arr!36725 (Array (_ BitVec 32) (_ BitVec 64))) (size!37262 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76158)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!532781 () Unit!38891)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76158 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38891)

(assert (=> b!1179076 (= lt!532781 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179076 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532788 () Unit!38891)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76158 (_ BitVec 32) (_ BitVec 32)) Unit!38891)

(assert (=> b!1179076 (= lt!532788 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25962 0))(
  ( (Nil!25959) (Cons!25958 (h!27167 (_ BitVec 64)) (t!38124 List!25962)) )
))
(declare-fun arrayNoDuplicates!0 (array!76158 (_ BitVec 32) List!25962) Bool)

(assert (=> b!1179076 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25959)))

(declare-fun lt!532786 () Unit!38891)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76158 (_ BitVec 64) (_ BitVec 32) List!25962) Unit!38891)

(assert (=> b!1179076 (= lt!532786 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25959))))

(assert (=> b!1179076 false))

(declare-fun b!1179077 () Bool)

(declare-fun res!783418 () Bool)

(declare-fun e!670359 () Bool)

(assert (=> b!1179077 (=> (not res!783418) (not e!670359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179077 (= res!783418 (validKeyInArray!0 k!934))))

(declare-fun b!1179078 () Bool)

(declare-fun e!670369 () Bool)

(declare-fun tp_is_empty!29693 () Bool)

(assert (=> b!1179078 (= e!670369 tp_is_empty!29693)))

(declare-fun b!1179079 () Bool)

(declare-fun res!783428 () Bool)

(assert (=> b!1179079 (=> (not res!783428) (not e!670359))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76158 (_ BitVec 32)) Bool)

(assert (=> b!1179079 (= res!783428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1179080 () Bool)

(declare-fun res!783424 () Bool)

(assert (=> b!1179080 (=> (not res!783424) (not e!670359))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44717 0))(
  ( (V!44718 (val!14903 Int)) )
))
(declare-datatypes ((ValueCell!14137 0))(
  ( (ValueCellFull!14137 (v!17542 V!44717)) (EmptyCell!14137) )
))
(declare-datatypes ((array!76160 0))(
  ( (array!76161 (arr!36726 (Array (_ BitVec 32) ValueCell!14137)) (size!37263 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76160)

(assert (=> b!1179080 (= res!783424 (and (= (size!37263 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37262 _keys!1208) (size!37263 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1179081 () Bool)

(declare-fun e!670361 () Bool)

(assert (=> b!1179081 (= e!670361 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1179082 () Bool)

(declare-fun res!783422 () Bool)

(assert (=> b!1179082 (=> (not res!783422) (not e!670359))))

(assert (=> b!1179082 (= res!783422 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25959))))

(declare-fun res!783416 () Bool)

(assert (=> start!99620 (=> (not res!783416) (not e!670359))))

(assert (=> start!99620 (= res!783416 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37262 _keys!1208))))))

(assert (=> start!99620 e!670359))

(assert (=> start!99620 tp_is_empty!29693))

(declare-fun array_inv!27930 (array!76158) Bool)

(assert (=> start!99620 (array_inv!27930 _keys!1208)))

(assert (=> start!99620 true))

(assert (=> start!99620 tp!88204))

(declare-fun e!670367 () Bool)

(declare-fun array_inv!27931 (array!76160) Bool)

(assert (=> start!99620 (and (array_inv!27931 _values!996) e!670367)))

(declare-fun b!1179083 () Bool)

(declare-fun res!783417 () Bool)

(assert (=> b!1179083 (=> (not res!783417) (not e!670359))))

(assert (=> b!1179083 (= res!783417 (= (select (arr!36725 _keys!1208) i!673) k!934))))

(declare-fun b!1179084 () Bool)

(declare-fun e!670366 () Bool)

(declare-fun e!670368 () Bool)

(assert (=> b!1179084 (= e!670366 (not e!670368))))

(declare-fun res!783415 () Bool)

(assert (=> b!1179084 (=> res!783415 e!670368)))

(assert (=> b!1179084 (= res!783415 (bvsgt from!1455 i!673))))

(assert (=> b!1179084 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!532784 () Unit!38891)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76158 (_ BitVec 64) (_ BitVec 32)) Unit!38891)

(assert (=> b!1179084 (= lt!532784 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1179085 () Bool)

(declare-fun e!670365 () Bool)

(assert (=> b!1179085 (= e!670368 e!670365)))

(declare-fun res!783421 () Bool)

(assert (=> b!1179085 (=> res!783421 e!670365)))

(assert (=> b!1179085 (= res!783421 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44717)

(declare-datatypes ((tuple2!19198 0))(
  ( (tuple2!19199 (_1!9609 (_ BitVec 64)) (_2!9609 V!44717)) )
))
(declare-datatypes ((List!25963 0))(
  ( (Nil!25960) (Cons!25959 (h!27168 tuple2!19198) (t!38125 List!25963)) )
))
(declare-datatypes ((ListLongMap!17179 0))(
  ( (ListLongMap!17180 (toList!8605 List!25963)) )
))
(declare-fun lt!532782 () ListLongMap!17179)

(declare-fun lt!532793 () array!76160)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!532789 () array!76158)

(declare-fun minValue!944 () V!44717)

(declare-fun getCurrentListMapNoExtraKeys!5033 (array!76158 array!76160 (_ BitVec 32) (_ BitVec 32) V!44717 V!44717 (_ BitVec 32) Int) ListLongMap!17179)

(assert (=> b!1179085 (= lt!532782 (getCurrentListMapNoExtraKeys!5033 lt!532789 lt!532793 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!532791 () V!44717)

(assert (=> b!1179085 (= lt!532793 (array!76161 (store (arr!36726 _values!996) i!673 (ValueCellFull!14137 lt!532791)) (size!37263 _values!996)))))

(declare-fun dynLambda!3006 (Int (_ BitVec 64)) V!44717)

(assert (=> b!1179085 (= lt!532791 (dynLambda!3006 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!532787 () ListLongMap!17179)

(assert (=> b!1179085 (= lt!532787 (getCurrentListMapNoExtraKeys!5033 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1179086 () Bool)

(declare-fun e!670360 () Bool)

(assert (=> b!1179086 (= e!670360 true)))

(declare-fun e!670357 () Bool)

(assert (=> b!1179086 e!670357))

(declare-fun res!783423 () Bool)

(assert (=> b!1179086 (=> (not res!783423) (not e!670357))))

(assert (=> b!1179086 (= res!783423 (not (= (select (arr!36725 _keys!1208) from!1455) k!934)))))

(declare-fun lt!532792 () Unit!38891)

(assert (=> b!1179086 (= lt!532792 e!670363)))

(declare-fun c!116816 () Bool)

(assert (=> b!1179086 (= c!116816 (= (select (arr!36725 _keys!1208) from!1455) k!934))))

(declare-fun e!670358 () Bool)

(assert (=> b!1179086 e!670358))

(declare-fun res!783419 () Bool)

(assert (=> b!1179086 (=> (not res!783419) (not e!670358))))

(declare-fun lt!532790 () ListLongMap!17179)

(declare-fun lt!532783 () tuple2!19198)

(declare-fun +!3826 (ListLongMap!17179 tuple2!19198) ListLongMap!17179)

(assert (=> b!1179086 (= res!783419 (= lt!532782 (+!3826 lt!532790 lt!532783)))))

(declare-fun get!18806 (ValueCell!14137 V!44717) V!44717)

(assert (=> b!1179086 (= lt!532783 (tuple2!19199 (select (arr!36725 _keys!1208) from!1455) (get!18806 (select (arr!36726 _values!996) from!1455) lt!532791)))))

(declare-fun b!1179087 () Bool)

(declare-fun Unit!38894 () Unit!38891)

(assert (=> b!1179087 (= e!670363 Unit!38894)))

(declare-fun b!1179088 () Bool)

(declare-fun e!670362 () Bool)

(assert (=> b!1179088 (= e!670362 tp_is_empty!29693)))

(declare-fun b!1179089 () Bool)

(declare-fun res!783427 () Bool)

(assert (=> b!1179089 (=> (not res!783427) (not e!670359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179089 (= res!783427 (validMask!0 mask!1564))))

(declare-fun b!1179090 () Bool)

(declare-fun res!783420 () Bool)

(assert (=> b!1179090 (=> (not res!783420) (not e!670366))))

(assert (=> b!1179090 (= res!783420 (arrayNoDuplicates!0 lt!532789 #b00000000000000000000000000000000 Nil!25959))))

(declare-fun mapNonEmpty!46367 () Bool)

(declare-fun mapRes!46367 () Bool)

(declare-fun tp!88203 () Bool)

(assert (=> mapNonEmpty!46367 (= mapRes!46367 (and tp!88203 e!670362))))

(declare-fun mapRest!46367 () (Array (_ BitVec 32) ValueCell!14137))

(declare-fun mapValue!46367 () ValueCell!14137)

(declare-fun mapKey!46367 () (_ BitVec 32))

(assert (=> mapNonEmpty!46367 (= (arr!36726 _values!996) (store mapRest!46367 mapKey!46367 mapValue!46367))))

(declare-fun b!1179091 () Bool)

(assert (=> b!1179091 (= e!670359 e!670366)))

(declare-fun res!783426 () Bool)

(assert (=> b!1179091 (=> (not res!783426) (not e!670366))))

(assert (=> b!1179091 (= res!783426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532789 mask!1564))))

(assert (=> b!1179091 (= lt!532789 (array!76159 (store (arr!36725 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37262 _keys!1208)))))

(declare-fun b!1179092 () Bool)

(assert (=> b!1179092 (= e!670367 (and e!670369 mapRes!46367))))

(declare-fun condMapEmpty!46367 () Bool)

(declare-fun mapDefault!46367 () ValueCell!14137)


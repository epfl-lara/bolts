; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101556 () Bool)

(assert start!101556)

(declare-fun b_free!26307 () Bool)

(declare-fun b_next!26307 () Bool)

(assert (=> start!101556 (= b_free!26307 (not b_next!26307))))

(declare-fun tp!91959 () Bool)

(declare-fun b_and!43831 () Bool)

(assert (=> start!101556 (= tp!91959 b_and!43831)))

(declare-fun b!1220330 () Bool)

(declare-fun e!692986 () Bool)

(declare-fun tp_is_empty!31011 () Bool)

(assert (=> b!1220330 (= e!692986 tp_is_empty!31011)))

(declare-datatypes ((array!78776 0))(
  ( (array!78777 (arr!38014 (Array (_ BitVec 32) (_ BitVec 64))) (size!38551 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78776)

(declare-fun b!1220331 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!692984 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220331 (= e!692984 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220332 () Bool)

(declare-fun e!692990 () Bool)

(assert (=> b!1220332 (= e!692990 e!692984)))

(declare-fun res!810702 () Bool)

(assert (=> b!1220332 (=> res!810702 e!692984)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1220332 (= res!810702 (not (= (select (arr!38014 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1220333 () Bool)

(declare-fun e!692992 () Bool)

(declare-fun e!692988 () Bool)

(declare-fun mapRes!48406 () Bool)

(assert (=> b!1220333 (= e!692992 (and e!692988 mapRes!48406))))

(declare-fun condMapEmpty!48406 () Bool)

(declare-datatypes ((V!46475 0))(
  ( (V!46476 (val!15562 Int)) )
))
(declare-datatypes ((ValueCell!14796 0))(
  ( (ValueCellFull!14796 (v!18221 V!46475)) (EmptyCell!14796) )
))
(declare-datatypes ((array!78778 0))(
  ( (array!78779 (arr!38015 (Array (_ BitVec 32) ValueCell!14796)) (size!38552 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78778)

(declare-fun mapDefault!48406 () ValueCell!14796)

(assert (=> b!1220333 (= condMapEmpty!48406 (= (arr!38015 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14796)) mapDefault!48406)))))

(declare-fun res!810707 () Bool)

(declare-fun e!692991 () Bool)

(assert (=> start!101556 (=> (not res!810707) (not e!692991))))

(assert (=> start!101556 (= res!810707 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38551 _keys!1208))))))

(assert (=> start!101556 e!692991))

(assert (=> start!101556 tp_is_empty!31011))

(declare-fun array_inv!28844 (array!78776) Bool)

(assert (=> start!101556 (array_inv!28844 _keys!1208)))

(assert (=> start!101556 true))

(assert (=> start!101556 tp!91959))

(declare-fun array_inv!28845 (array!78778) Bool)

(assert (=> start!101556 (and (array_inv!28845 _values!996) e!692992)))

(declare-fun b!1220334 () Bool)

(declare-fun res!810704 () Bool)

(assert (=> b!1220334 (=> (not res!810704) (not e!692991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220334 (= res!810704 (validKeyInArray!0 k0!934))))

(declare-fun b!1220335 () Bool)

(declare-fun res!810695 () Bool)

(assert (=> b!1220335 (=> (not res!810695) (not e!692991))))

(assert (=> b!1220335 (= res!810695 (= (select (arr!38014 _keys!1208) i!673) k0!934))))

(declare-fun b!1220336 () Bool)

(declare-fun res!810705 () Bool)

(assert (=> b!1220336 (=> (not res!810705) (not e!692991))))

(assert (=> b!1220336 (= res!810705 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38551 _keys!1208))))))

(declare-fun mapIsEmpty!48406 () Bool)

(assert (=> mapIsEmpty!48406 mapRes!48406))

(declare-fun b!1220337 () Bool)

(declare-fun e!692983 () Bool)

(declare-fun e!692985 () Bool)

(assert (=> b!1220337 (= e!692983 e!692985)))

(declare-fun res!810697 () Bool)

(assert (=> b!1220337 (=> res!810697 e!692985)))

(assert (=> b!1220337 (= res!810697 (not (= (select (arr!38014 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1220337 e!692990))

(declare-fun res!810693 () Bool)

(assert (=> b!1220337 (=> (not res!810693) (not e!692990))))

(declare-datatypes ((tuple2!20168 0))(
  ( (tuple2!20169 (_1!10094 (_ BitVec 64)) (_2!10094 V!46475)) )
))
(declare-datatypes ((List!26986 0))(
  ( (Nil!26983) (Cons!26982 (h!28191 tuple2!20168) (t!40280 List!26986)) )
))
(declare-datatypes ((ListLongMap!18149 0))(
  ( (ListLongMap!18150 (toList!9090 List!26986)) )
))
(declare-fun lt!554919 () ListLongMap!18149)

(declare-fun lt!554927 () V!46475)

(declare-fun lt!554926 () ListLongMap!18149)

(declare-fun +!4065 (ListLongMap!18149 tuple2!20168) ListLongMap!18149)

(declare-fun get!19435 (ValueCell!14796 V!46475) V!46475)

(assert (=> b!1220337 (= res!810693 (= lt!554919 (+!4065 lt!554926 (tuple2!20169 (select (arr!38014 _keys!1208) from!1455) (get!19435 (select (arr!38015 _values!996) from!1455) lt!554927)))))))

(declare-fun b!1220338 () Bool)

(declare-fun e!692989 () Bool)

(declare-fun e!692993 () Bool)

(assert (=> b!1220338 (= e!692989 (not e!692993))))

(declare-fun res!810692 () Bool)

(assert (=> b!1220338 (=> res!810692 e!692993)))

(assert (=> b!1220338 (= res!810692 (bvsgt from!1455 i!673))))

(assert (=> b!1220338 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40352 0))(
  ( (Unit!40353) )
))
(declare-fun lt!554921 () Unit!40352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78776 (_ BitVec 64) (_ BitVec 32)) Unit!40352)

(assert (=> b!1220338 (= lt!554921 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220339 () Bool)

(declare-fun e!692994 () Bool)

(assert (=> b!1220339 (= e!692993 e!692994)))

(declare-fun res!810703 () Bool)

(assert (=> b!1220339 (=> res!810703 e!692994)))

(assert (=> b!1220339 (= res!810703 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46475)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!554928 () array!78776)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!554929 () array!78778)

(declare-fun minValue!944 () V!46475)

(declare-fun getCurrentListMapNoExtraKeys!5489 (array!78776 array!78778 (_ BitVec 32) (_ BitVec 32) V!46475 V!46475 (_ BitVec 32) Int) ListLongMap!18149)

(assert (=> b!1220339 (= lt!554919 (getCurrentListMapNoExtraKeys!5489 lt!554928 lt!554929 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1220339 (= lt!554929 (array!78779 (store (arr!38015 _values!996) i!673 (ValueCellFull!14796 lt!554927)) (size!38552 _values!996)))))

(declare-fun dynLambda!3391 (Int (_ BitVec 64)) V!46475)

(assert (=> b!1220339 (= lt!554927 (dynLambda!3391 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554920 () ListLongMap!18149)

(assert (=> b!1220339 (= lt!554920 (getCurrentListMapNoExtraKeys!5489 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220340 () Bool)

(assert (=> b!1220340 (= e!692991 e!692989)))

(declare-fun res!810701 () Bool)

(assert (=> b!1220340 (=> (not res!810701) (not e!692989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78776 (_ BitVec 32)) Bool)

(assert (=> b!1220340 (= res!810701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554928 mask!1564))))

(assert (=> b!1220340 (= lt!554928 (array!78777 (store (arr!38014 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38551 _keys!1208)))))

(declare-fun b!1220341 () Bool)

(declare-fun res!810699 () Bool)

(assert (=> b!1220341 (=> (not res!810699) (not e!692991))))

(assert (=> b!1220341 (= res!810699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1220342 () Bool)

(assert (=> b!1220342 (= e!692994 e!692983)))

(declare-fun res!810694 () Bool)

(assert (=> b!1220342 (=> res!810694 e!692983)))

(assert (=> b!1220342 (= res!810694 (not (validKeyInArray!0 (select (arr!38014 _keys!1208) from!1455))))))

(declare-fun lt!554922 () ListLongMap!18149)

(assert (=> b!1220342 (= lt!554922 lt!554926)))

(declare-fun lt!554924 () ListLongMap!18149)

(declare-fun -!1938 (ListLongMap!18149 (_ BitVec 64)) ListLongMap!18149)

(assert (=> b!1220342 (= lt!554926 (-!1938 lt!554924 k0!934))))

(assert (=> b!1220342 (= lt!554922 (getCurrentListMapNoExtraKeys!5489 lt!554928 lt!554929 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1220342 (= lt!554924 (getCurrentListMapNoExtraKeys!5489 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!554930 () Unit!40352)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1140 (array!78776 array!78778 (_ BitVec 32) (_ BitVec 32) V!46475 V!46475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40352)

(assert (=> b!1220342 (= lt!554930 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1140 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1220343 () Bool)

(assert (=> b!1220343 (= e!692985 true)))

(declare-datatypes ((List!26987 0))(
  ( (Nil!26984) (Cons!26983 (h!28192 (_ BitVec 64)) (t!40281 List!26987)) )
))
(declare-fun arrayNoDuplicates!0 (array!78776 (_ BitVec 32) List!26987) Bool)

(assert (=> b!1220343 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26984)))

(declare-fun lt!554923 () Unit!40352)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78776 (_ BitVec 32) (_ BitVec 32)) Unit!40352)

(assert (=> b!1220343 (= lt!554923 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1220343 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!554925 () Unit!40352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78776 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40352)

(assert (=> b!1220343 (= lt!554925 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1220344 () Bool)

(declare-fun res!810696 () Bool)

(assert (=> b!1220344 (=> (not res!810696) (not e!692991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220344 (= res!810696 (validMask!0 mask!1564))))

(declare-fun b!1220345 () Bool)

(declare-fun res!810706 () Bool)

(assert (=> b!1220345 (=> (not res!810706) (not e!692991))))

(assert (=> b!1220345 (= res!810706 (and (= (size!38552 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38551 _keys!1208) (size!38552 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!48406 () Bool)

(declare-fun tp!91958 () Bool)

(assert (=> mapNonEmpty!48406 (= mapRes!48406 (and tp!91958 e!692986))))

(declare-fun mapValue!48406 () ValueCell!14796)

(declare-fun mapKey!48406 () (_ BitVec 32))

(declare-fun mapRest!48406 () (Array (_ BitVec 32) ValueCell!14796))

(assert (=> mapNonEmpty!48406 (= (arr!38015 _values!996) (store mapRest!48406 mapKey!48406 mapValue!48406))))

(declare-fun b!1220346 () Bool)

(assert (=> b!1220346 (= e!692988 tp_is_empty!31011)))

(declare-fun b!1220347 () Bool)

(declare-fun res!810698 () Bool)

(assert (=> b!1220347 (=> (not res!810698) (not e!692991))))

(assert (=> b!1220347 (= res!810698 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26984))))

(declare-fun b!1220348 () Bool)

(declare-fun res!810700 () Bool)

(assert (=> b!1220348 (=> (not res!810700) (not e!692989))))

(assert (=> b!1220348 (= res!810700 (arrayNoDuplicates!0 lt!554928 #b00000000000000000000000000000000 Nil!26984))))

(assert (= (and start!101556 res!810707) b!1220344))

(assert (= (and b!1220344 res!810696) b!1220345))

(assert (= (and b!1220345 res!810706) b!1220341))

(assert (= (and b!1220341 res!810699) b!1220347))

(assert (= (and b!1220347 res!810698) b!1220336))

(assert (= (and b!1220336 res!810705) b!1220334))

(assert (= (and b!1220334 res!810704) b!1220335))

(assert (= (and b!1220335 res!810695) b!1220340))

(assert (= (and b!1220340 res!810701) b!1220348))

(assert (= (and b!1220348 res!810700) b!1220338))

(assert (= (and b!1220338 (not res!810692)) b!1220339))

(assert (= (and b!1220339 (not res!810703)) b!1220342))

(assert (= (and b!1220342 (not res!810694)) b!1220337))

(assert (= (and b!1220337 res!810693) b!1220332))

(assert (= (and b!1220332 (not res!810702)) b!1220331))

(assert (= (and b!1220337 (not res!810697)) b!1220343))

(assert (= (and b!1220333 condMapEmpty!48406) mapIsEmpty!48406))

(assert (= (and b!1220333 (not condMapEmpty!48406)) mapNonEmpty!48406))

(get-info :version)

(assert (= (and mapNonEmpty!48406 ((_ is ValueCellFull!14796) mapValue!48406)) b!1220330))

(assert (= (and b!1220333 ((_ is ValueCellFull!14796) mapDefault!48406)) b!1220346))

(assert (= start!101556 b!1220333))

(declare-fun b_lambda!22183 () Bool)

(assert (=> (not b_lambda!22183) (not b!1220339)))

(declare-fun t!40279 () Bool)

(declare-fun tb!11115 () Bool)

(assert (=> (and start!101556 (= defaultEntry!1004 defaultEntry!1004) t!40279) tb!11115))

(declare-fun result!22829 () Bool)

(assert (=> tb!11115 (= result!22829 tp_is_empty!31011)))

(assert (=> b!1220339 t!40279))

(declare-fun b_and!43833 () Bool)

(assert (= b_and!43831 (and (=> t!40279 result!22829) b_and!43833)))

(declare-fun m!1125187 () Bool)

(assert (=> b!1220331 m!1125187))

(declare-fun m!1125189 () Bool)

(assert (=> b!1220341 m!1125189))

(declare-fun m!1125191 () Bool)

(assert (=> b!1220337 m!1125191))

(declare-fun m!1125193 () Bool)

(assert (=> b!1220337 m!1125193))

(assert (=> b!1220337 m!1125193))

(declare-fun m!1125195 () Bool)

(assert (=> b!1220337 m!1125195))

(declare-fun m!1125197 () Bool)

(assert (=> b!1220337 m!1125197))

(declare-fun m!1125199 () Bool)

(assert (=> b!1220339 m!1125199))

(declare-fun m!1125201 () Bool)

(assert (=> b!1220339 m!1125201))

(declare-fun m!1125203 () Bool)

(assert (=> b!1220339 m!1125203))

(declare-fun m!1125205 () Bool)

(assert (=> b!1220339 m!1125205))

(declare-fun m!1125207 () Bool)

(assert (=> b!1220342 m!1125207))

(declare-fun m!1125209 () Bool)

(assert (=> b!1220342 m!1125209))

(declare-fun m!1125211 () Bool)

(assert (=> b!1220342 m!1125211))

(assert (=> b!1220342 m!1125191))

(declare-fun m!1125213 () Bool)

(assert (=> b!1220342 m!1125213))

(declare-fun m!1125215 () Bool)

(assert (=> b!1220342 m!1125215))

(assert (=> b!1220342 m!1125191))

(declare-fun m!1125217 () Bool)

(assert (=> b!1220343 m!1125217))

(declare-fun m!1125219 () Bool)

(assert (=> b!1220343 m!1125219))

(declare-fun m!1125221 () Bool)

(assert (=> b!1220343 m!1125221))

(declare-fun m!1125223 () Bool)

(assert (=> b!1220343 m!1125223))

(declare-fun m!1125225 () Bool)

(assert (=> start!101556 m!1125225))

(declare-fun m!1125227 () Bool)

(assert (=> start!101556 m!1125227))

(declare-fun m!1125229 () Bool)

(assert (=> b!1220334 m!1125229))

(declare-fun m!1125231 () Bool)

(assert (=> b!1220347 m!1125231))

(assert (=> b!1220332 m!1125191))

(declare-fun m!1125233 () Bool)

(assert (=> b!1220344 m!1125233))

(declare-fun m!1125235 () Bool)

(assert (=> b!1220335 m!1125235))

(declare-fun m!1125237 () Bool)

(assert (=> b!1220338 m!1125237))

(declare-fun m!1125239 () Bool)

(assert (=> b!1220338 m!1125239))

(declare-fun m!1125241 () Bool)

(assert (=> b!1220348 m!1125241))

(declare-fun m!1125243 () Bool)

(assert (=> b!1220340 m!1125243))

(declare-fun m!1125245 () Bool)

(assert (=> b!1220340 m!1125245))

(declare-fun m!1125247 () Bool)

(assert (=> mapNonEmpty!48406 m!1125247))

(check-sat (not b!1220334) (not b!1220341) (not b_next!26307) (not mapNonEmpty!48406) (not b!1220347) (not b!1220339) (not b!1220348) tp_is_empty!31011 (not b!1220337) (not start!101556) (not b!1220331) (not b!1220344) b_and!43833 (not b!1220338) (not b!1220343) (not b!1220342) (not b_lambda!22183) (not b!1220340))
(check-sat b_and!43833 (not b_next!26307))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99504 () Bool)

(assert start!99504)

(declare-fun b_free!25047 () Bool)

(declare-fun b_next!25047 () Bool)

(assert (=> start!99504 (= b_free!25047 (not b_next!25047))))

(declare-fun tp!87856 () Bool)

(declare-fun b_and!40975 () Bool)

(assert (=> start!99504 (= tp!87856 b_and!40975)))

(declare-fun b!1175337 () Bool)

(declare-datatypes ((Unit!38707 0))(
  ( (Unit!38708) )
))
(declare-fun e!668128 () Unit!38707)

(declare-fun Unit!38709 () Unit!38707)

(assert (=> b!1175337 (= e!668128 Unit!38709)))

(declare-fun b!1175338 () Bool)

(declare-fun e!668130 () Bool)

(declare-fun e!668129 () Bool)

(assert (=> b!1175338 (= e!668130 e!668129)))

(declare-fun res!780674 () Bool)

(assert (=> b!1175338 (=> res!780674 e!668129)))

(declare-datatypes ((array!75930 0))(
  ( (array!75931 (arr!36611 (Array (_ BitVec 32) (_ BitVec 64))) (size!37148 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75930)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1175338 (= res!780674 (not (= (select (arr!36611 _keys!1208) from!1455) k0!934)))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1175339 () Bool)

(declare-fun arrayContainsKey!0 (array!75930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175339 (= e!668129 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1175340 () Bool)

(declare-fun e!668137 () Bool)

(declare-fun e!668136 () Bool)

(assert (=> b!1175340 (= e!668137 e!668136)))

(declare-fun res!780670 () Bool)

(assert (=> b!1175340 (=> (not res!780670) (not e!668136))))

(declare-fun lt!530203 () array!75930)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75930 (_ BitVec 32)) Bool)

(assert (=> b!1175340 (= res!780670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530203 mask!1564))))

(assert (=> b!1175340 (= lt!530203 (array!75931 (store (arr!36611 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37148 _keys!1208)))))

(declare-fun b!1175341 () Bool)

(declare-fun e!668126 () Bool)

(declare-fun e!668134 () Bool)

(assert (=> b!1175341 (= e!668126 e!668134)))

(declare-fun res!780666 () Bool)

(assert (=> b!1175341 (=> res!780666 e!668134)))

(assert (=> b!1175341 (= res!780666 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44563 0))(
  ( (V!44564 (val!14845 Int)) )
))
(declare-fun zeroValue!944 () V!44563)

(declare-datatypes ((ValueCell!14079 0))(
  ( (ValueCellFull!14079 (v!17484 V!44563)) (EmptyCell!14079) )
))
(declare-datatypes ((array!75932 0))(
  ( (array!75933 (arr!36612 (Array (_ BitVec 32) ValueCell!14079)) (size!37149 (_ BitVec 32))) )
))
(declare-fun lt!530213 () array!75932)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19088 0))(
  ( (tuple2!19089 (_1!9554 (_ BitVec 64)) (_2!9554 V!44563)) )
))
(declare-datatypes ((List!25856 0))(
  ( (Nil!25853) (Cons!25852 (h!27061 tuple2!19088) (t!37902 List!25856)) )
))
(declare-datatypes ((ListLongMap!17069 0))(
  ( (ListLongMap!17070 (toList!8550 List!25856)) )
))
(declare-fun lt!530212 () ListLongMap!17069)

(declare-fun minValue!944 () V!44563)

(declare-fun getCurrentListMapNoExtraKeys!4981 (array!75930 array!75932 (_ BitVec 32) (_ BitVec 32) V!44563 V!44563 (_ BitVec 32) Int) ListLongMap!17069)

(assert (=> b!1175341 (= lt!530212 (getCurrentListMapNoExtraKeys!4981 lt!530203 lt!530213 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530201 () V!44563)

(declare-fun _values!996 () array!75932)

(assert (=> b!1175341 (= lt!530213 (array!75933 (store (arr!36612 _values!996) i!673 (ValueCellFull!14079 lt!530201)) (size!37149 _values!996)))))

(declare-fun dynLambda!2961 (Int (_ BitVec 64)) V!44563)

(assert (=> b!1175341 (= lt!530201 (dynLambda!2961 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530210 () ListLongMap!17069)

(assert (=> b!1175341 (= lt!530210 (getCurrentListMapNoExtraKeys!4981 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46193 () Bool)

(declare-fun mapRes!46193 () Bool)

(declare-fun tp!87855 () Bool)

(declare-fun e!668133 () Bool)

(assert (=> mapNonEmpty!46193 (= mapRes!46193 (and tp!87855 e!668133))))

(declare-fun mapValue!46193 () ValueCell!14079)

(declare-fun mapRest!46193 () (Array (_ BitVec 32) ValueCell!14079))

(declare-fun mapKey!46193 () (_ BitVec 32))

(assert (=> mapNonEmpty!46193 (= (arr!36612 _values!996) (store mapRest!46193 mapKey!46193 mapValue!46193))))

(declare-fun b!1175342 () Bool)

(declare-fun res!780676 () Bool)

(assert (=> b!1175342 (=> (not res!780676) (not e!668136))))

(declare-datatypes ((List!25857 0))(
  ( (Nil!25854) (Cons!25853 (h!27062 (_ BitVec 64)) (t!37903 List!25857)) )
))
(declare-fun arrayNoDuplicates!0 (array!75930 (_ BitVec 32) List!25857) Bool)

(assert (=> b!1175342 (= res!780676 (arrayNoDuplicates!0 lt!530203 #b00000000000000000000000000000000 Nil!25854))))

(declare-fun b!1175343 () Bool)

(declare-fun e!668127 () Bool)

(assert (=> b!1175343 (= e!668134 e!668127)))

(declare-fun res!780669 () Bool)

(assert (=> b!1175343 (=> res!780669 e!668127)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175343 (= res!780669 (not (validKeyInArray!0 (select (arr!36611 _keys!1208) from!1455))))))

(declare-fun lt!530206 () ListLongMap!17069)

(declare-fun lt!530211 () ListLongMap!17069)

(assert (=> b!1175343 (= lt!530206 lt!530211)))

(declare-fun lt!530214 () ListLongMap!17069)

(declare-fun -!1557 (ListLongMap!17069 (_ BitVec 64)) ListLongMap!17069)

(assert (=> b!1175343 (= lt!530211 (-!1557 lt!530214 k0!934))))

(assert (=> b!1175343 (= lt!530206 (getCurrentListMapNoExtraKeys!4981 lt!530203 lt!530213 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1175343 (= lt!530214 (getCurrentListMapNoExtraKeys!4981 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530207 () Unit!38707)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!781 (array!75930 array!75932 (_ BitVec 32) (_ BitVec 32) V!44563 V!44563 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38707)

(assert (=> b!1175343 (= lt!530207 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!781 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175344 () Bool)

(declare-fun res!780664 () Bool)

(assert (=> b!1175344 (=> (not res!780664) (not e!668137))))

(assert (=> b!1175344 (= res!780664 (validKeyInArray!0 k0!934))))

(declare-fun b!1175345 () Bool)

(declare-fun Unit!38710 () Unit!38707)

(assert (=> b!1175345 (= e!668128 Unit!38710)))

(declare-fun lt!530209 () Unit!38707)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75930 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38707)

(assert (=> b!1175345 (= lt!530209 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1175345 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530202 () Unit!38707)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75930 (_ BitVec 32) (_ BitVec 32)) Unit!38707)

(assert (=> b!1175345 (= lt!530202 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1175345 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25854)))

(declare-fun lt!530205 () Unit!38707)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75930 (_ BitVec 64) (_ BitVec 32) List!25857) Unit!38707)

(assert (=> b!1175345 (= lt!530205 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25854))))

(assert (=> b!1175345 false))

(declare-fun b!1175346 () Bool)

(declare-fun res!780671 () Bool)

(assert (=> b!1175346 (=> (not res!780671) (not e!668137))))

(assert (=> b!1175346 (= res!780671 (and (= (size!37149 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37148 _keys!1208) (size!37149 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175347 () Bool)

(declare-fun res!780668 () Bool)

(assert (=> b!1175347 (=> (not res!780668) (not e!668137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175347 (= res!780668 (validMask!0 mask!1564))))

(declare-fun b!1175348 () Bool)

(declare-fun res!780667 () Bool)

(assert (=> b!1175348 (=> (not res!780667) (not e!668137))))

(assert (=> b!1175348 (= res!780667 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25854))))

(declare-fun b!1175349 () Bool)

(assert (=> b!1175349 (= e!668127 true)))

(assert (=> b!1175349 (not (= (select (arr!36611 _keys!1208) from!1455) k0!934))))

(declare-fun lt!530208 () Unit!38707)

(assert (=> b!1175349 (= lt!530208 e!668128)))

(declare-fun c!116642 () Bool)

(assert (=> b!1175349 (= c!116642 (= (select (arr!36611 _keys!1208) from!1455) k0!934))))

(assert (=> b!1175349 e!668130))

(declare-fun res!780672 () Bool)

(assert (=> b!1175349 (=> (not res!780672) (not e!668130))))

(declare-fun +!3776 (ListLongMap!17069 tuple2!19088) ListLongMap!17069)

(declare-fun get!18725 (ValueCell!14079 V!44563) V!44563)

(assert (=> b!1175349 (= res!780672 (= lt!530212 (+!3776 lt!530211 (tuple2!19089 (select (arr!36611 _keys!1208) from!1455) (get!18725 (select (arr!36612 _values!996) from!1455) lt!530201)))))))

(declare-fun b!1175350 () Bool)

(declare-fun e!668131 () Bool)

(declare-fun e!668135 () Bool)

(assert (=> b!1175350 (= e!668131 (and e!668135 mapRes!46193))))

(declare-fun condMapEmpty!46193 () Bool)

(declare-fun mapDefault!46193 () ValueCell!14079)

(assert (=> b!1175350 (= condMapEmpty!46193 (= (arr!36612 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14079)) mapDefault!46193)))))

(declare-fun b!1175351 () Bool)

(declare-fun tp_is_empty!29577 () Bool)

(assert (=> b!1175351 (= e!668133 tp_is_empty!29577)))

(declare-fun b!1175352 () Bool)

(declare-fun res!780665 () Bool)

(assert (=> b!1175352 (=> (not res!780665) (not e!668137))))

(assert (=> b!1175352 (= res!780665 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37148 _keys!1208))))))

(declare-fun res!780675 () Bool)

(assert (=> start!99504 (=> (not res!780675) (not e!668137))))

(assert (=> start!99504 (= res!780675 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37148 _keys!1208))))))

(assert (=> start!99504 e!668137))

(assert (=> start!99504 tp_is_empty!29577))

(declare-fun array_inv!27848 (array!75930) Bool)

(assert (=> start!99504 (array_inv!27848 _keys!1208)))

(assert (=> start!99504 true))

(assert (=> start!99504 tp!87856))

(declare-fun array_inv!27849 (array!75932) Bool)

(assert (=> start!99504 (and (array_inv!27849 _values!996) e!668131)))

(declare-fun b!1175353 () Bool)

(assert (=> b!1175353 (= e!668136 (not e!668126))))

(declare-fun res!780662 () Bool)

(assert (=> b!1175353 (=> res!780662 e!668126)))

(assert (=> b!1175353 (= res!780662 (bvsgt from!1455 i!673))))

(assert (=> b!1175353 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!530204 () Unit!38707)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75930 (_ BitVec 64) (_ BitVec 32)) Unit!38707)

(assert (=> b!1175353 (= lt!530204 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!46193 () Bool)

(assert (=> mapIsEmpty!46193 mapRes!46193))

(declare-fun b!1175354 () Bool)

(declare-fun res!780673 () Bool)

(assert (=> b!1175354 (=> (not res!780673) (not e!668137))))

(assert (=> b!1175354 (= res!780673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175355 () Bool)

(assert (=> b!1175355 (= e!668135 tp_is_empty!29577)))

(declare-fun b!1175356 () Bool)

(declare-fun res!780663 () Bool)

(assert (=> b!1175356 (=> (not res!780663) (not e!668137))))

(assert (=> b!1175356 (= res!780663 (= (select (arr!36611 _keys!1208) i!673) k0!934))))

(assert (= (and start!99504 res!780675) b!1175347))

(assert (= (and b!1175347 res!780668) b!1175346))

(assert (= (and b!1175346 res!780671) b!1175354))

(assert (= (and b!1175354 res!780673) b!1175348))

(assert (= (and b!1175348 res!780667) b!1175352))

(assert (= (and b!1175352 res!780665) b!1175344))

(assert (= (and b!1175344 res!780664) b!1175356))

(assert (= (and b!1175356 res!780663) b!1175340))

(assert (= (and b!1175340 res!780670) b!1175342))

(assert (= (and b!1175342 res!780676) b!1175353))

(assert (= (and b!1175353 (not res!780662)) b!1175341))

(assert (= (and b!1175341 (not res!780666)) b!1175343))

(assert (= (and b!1175343 (not res!780669)) b!1175349))

(assert (= (and b!1175349 res!780672) b!1175338))

(assert (= (and b!1175338 (not res!780674)) b!1175339))

(assert (= (and b!1175349 c!116642) b!1175345))

(assert (= (and b!1175349 (not c!116642)) b!1175337))

(assert (= (and b!1175350 condMapEmpty!46193) mapIsEmpty!46193))

(assert (= (and b!1175350 (not condMapEmpty!46193)) mapNonEmpty!46193))

(get-info :version)

(assert (= (and mapNonEmpty!46193 ((_ is ValueCellFull!14079) mapValue!46193)) b!1175351))

(assert (= (and b!1175350 ((_ is ValueCellFull!14079) mapDefault!46193)) b!1175355))

(assert (= start!99504 b!1175350))

(declare-fun b_lambda!20209 () Bool)

(assert (=> (not b_lambda!20209) (not b!1175341)))

(declare-fun t!37901 () Bool)

(declare-fun tb!9867 () Bool)

(assert (=> (and start!99504 (= defaultEntry!1004 defaultEntry!1004) t!37901) tb!9867))

(declare-fun result!20293 () Bool)

(assert (=> tb!9867 (= result!20293 tp_is_empty!29577)))

(assert (=> b!1175341 t!37901))

(declare-fun b_and!40977 () Bool)

(assert (= b_and!40975 (and (=> t!37901 result!20293) b_and!40977)))

(declare-fun m!1083297 () Bool)

(assert (=> b!1175349 m!1083297))

(declare-fun m!1083299 () Bool)

(assert (=> b!1175349 m!1083299))

(assert (=> b!1175349 m!1083299))

(declare-fun m!1083301 () Bool)

(assert (=> b!1175349 m!1083301))

(declare-fun m!1083303 () Bool)

(assert (=> b!1175349 m!1083303))

(assert (=> b!1175338 m!1083297))

(declare-fun m!1083305 () Bool)

(assert (=> b!1175345 m!1083305))

(declare-fun m!1083307 () Bool)

(assert (=> b!1175345 m!1083307))

(declare-fun m!1083309 () Bool)

(assert (=> b!1175345 m!1083309))

(declare-fun m!1083311 () Bool)

(assert (=> b!1175345 m!1083311))

(declare-fun m!1083313 () Bool)

(assert (=> b!1175345 m!1083313))

(declare-fun m!1083315 () Bool)

(assert (=> b!1175347 m!1083315))

(declare-fun m!1083317 () Bool)

(assert (=> b!1175356 m!1083317))

(declare-fun m!1083319 () Bool)

(assert (=> b!1175354 m!1083319))

(declare-fun m!1083321 () Bool)

(assert (=> b!1175348 m!1083321))

(declare-fun m!1083323 () Bool)

(assert (=> b!1175353 m!1083323))

(declare-fun m!1083325 () Bool)

(assert (=> b!1175353 m!1083325))

(declare-fun m!1083327 () Bool)

(assert (=> b!1175343 m!1083327))

(declare-fun m!1083329 () Bool)

(assert (=> b!1175343 m!1083329))

(declare-fun m!1083331 () Bool)

(assert (=> b!1175343 m!1083331))

(assert (=> b!1175343 m!1083297))

(assert (=> b!1175343 m!1083297))

(declare-fun m!1083333 () Bool)

(assert (=> b!1175343 m!1083333))

(declare-fun m!1083335 () Bool)

(assert (=> b!1175343 m!1083335))

(declare-fun m!1083337 () Bool)

(assert (=> b!1175340 m!1083337))

(declare-fun m!1083339 () Bool)

(assert (=> b!1175340 m!1083339))

(declare-fun m!1083341 () Bool)

(assert (=> b!1175344 m!1083341))

(declare-fun m!1083343 () Bool)

(assert (=> b!1175341 m!1083343))

(declare-fun m!1083345 () Bool)

(assert (=> b!1175341 m!1083345))

(declare-fun m!1083347 () Bool)

(assert (=> b!1175341 m!1083347))

(declare-fun m!1083349 () Bool)

(assert (=> b!1175341 m!1083349))

(declare-fun m!1083351 () Bool)

(assert (=> b!1175339 m!1083351))

(declare-fun m!1083353 () Bool)

(assert (=> mapNonEmpty!46193 m!1083353))

(declare-fun m!1083355 () Bool)

(assert (=> b!1175342 m!1083355))

(declare-fun m!1083357 () Bool)

(assert (=> start!99504 m!1083357))

(declare-fun m!1083359 () Bool)

(assert (=> start!99504 m!1083359))

(check-sat tp_is_empty!29577 (not mapNonEmpty!46193) (not b!1175349) (not b!1175340) (not start!99504) (not b!1175347) (not b!1175344) (not b_lambda!20209) b_and!40977 (not b!1175339) (not b!1175348) (not b!1175353) (not b!1175343) (not b!1175342) (not b_next!25047) (not b!1175345) (not b!1175354) (not b!1175341))
(check-sat b_and!40977 (not b_next!25047))

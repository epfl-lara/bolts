; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99600 () Bool)

(assert start!99600)

(declare-fun b_free!25143 () Bool)

(declare-fun b_next!25143 () Bool)

(assert (=> start!99600 (= b_free!25143 (not b_next!25143))))

(declare-fun tp!88143 () Bool)

(declare-fun b_and!41167 () Bool)

(assert (=> start!99600 (= tp!88143 b_and!41167)))

(declare-fun mapNonEmpty!46337 () Bool)

(declare-fun mapRes!46337 () Bool)

(declare-fun tp!88144 () Bool)

(declare-fun e!669967 () Bool)

(assert (=> mapNonEmpty!46337 (= mapRes!46337 (and tp!88144 e!669967))))

(declare-fun mapKey!46337 () (_ BitVec 32))

(declare-datatypes ((V!44691 0))(
  ( (V!44692 (val!14893 Int)) )
))
(declare-datatypes ((ValueCell!14127 0))(
  ( (ValueCellFull!14127 (v!17532 V!44691)) (EmptyCell!14127) )
))
(declare-fun mapValue!46337 () ValueCell!14127)

(declare-fun mapRest!46337 () (Array (_ BitVec 32) ValueCell!14127))

(declare-datatypes ((array!76118 0))(
  ( (array!76119 (arr!36705 (Array (_ BitVec 32) ValueCell!14127)) (size!37242 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76118)

(assert (=> mapNonEmpty!46337 (= (arr!36705 _values!996) (store mapRest!46337 mapKey!46337 mapValue!46337))))

(declare-fun b!1178426 () Bool)

(declare-fun e!669972 () Bool)

(declare-fun e!669976 () Bool)

(assert (=> b!1178426 (= e!669972 e!669976)))

(declare-fun res!782949 () Bool)

(assert (=> b!1178426 (=> res!782949 e!669976)))

(declare-datatypes ((array!76120 0))(
  ( (array!76121 (arr!36706 (Array (_ BitVec 32) (_ BitVec 64))) (size!37243 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76120)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1178426 (= res!782949 (not (= (select (arr!36706 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1178427 () Bool)

(declare-fun e!669975 () Bool)

(declare-fun tp_is_empty!29673 () Bool)

(assert (=> b!1178427 (= e!669975 tp_is_empty!29673)))

(declare-fun b!1178428 () Bool)

(declare-fun e!669974 () Bool)

(assert (=> b!1178428 (= e!669974 true)))

(declare-fun e!669968 () Bool)

(assert (=> b!1178428 e!669968))

(declare-fun res!782941 () Bool)

(assert (=> b!1178428 (=> (not res!782941) (not e!669968))))

(assert (=> b!1178428 (= res!782941 (not (= (select (arr!36706 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!38862 0))(
  ( (Unit!38863) )
))
(declare-fun lt!532333 () Unit!38862)

(declare-fun e!669979 () Unit!38862)

(assert (=> b!1178428 (= lt!532333 e!669979)))

(declare-fun c!116786 () Bool)

(assert (=> b!1178428 (= c!116786 (= (select (arr!36706 _keys!1208) from!1455) k0!934))))

(assert (=> b!1178428 e!669972))

(declare-fun res!782938 () Bool)

(assert (=> b!1178428 (=> (not res!782938) (not e!669972))))

(declare-datatypes ((tuple2!19180 0))(
  ( (tuple2!19181 (_1!9600 (_ BitVec 64)) (_2!9600 V!44691)) )
))
(declare-datatypes ((List!25944 0))(
  ( (Nil!25941) (Cons!25940 (h!27149 tuple2!19180) (t!38086 List!25944)) )
))
(declare-datatypes ((ListLongMap!17161 0))(
  ( (ListLongMap!17162 (toList!8596 List!25944)) )
))
(declare-fun lt!532332 () ListLongMap!17161)

(declare-fun lt!532330 () ListLongMap!17161)

(declare-fun lt!532334 () tuple2!19180)

(declare-fun +!3817 (ListLongMap!17161 tuple2!19180) ListLongMap!17161)

(assert (=> b!1178428 (= res!782938 (= lt!532330 (+!3817 lt!532332 lt!532334)))))

(declare-fun lt!532331 () V!44691)

(declare-fun get!18794 (ValueCell!14127 V!44691) V!44691)

(assert (=> b!1178428 (= lt!532334 (tuple2!19181 (select (arr!36706 _keys!1208) from!1455) (get!18794 (select (arr!36705 _values!996) from!1455) lt!532331)))))

(declare-fun b!1178430 () Bool)

(declare-fun Unit!38864 () Unit!38862)

(assert (=> b!1178430 (= e!669979 Unit!38864)))

(declare-fun b!1178431 () Bool)

(declare-fun res!782942 () Bool)

(declare-fun e!669970 () Bool)

(assert (=> b!1178431 (=> (not res!782942) (not e!669970))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1178431 (= res!782942 (and (= (size!37242 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37243 _keys!1208) (size!37242 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178432 () Bool)

(declare-fun res!782936 () Bool)

(declare-fun e!669973 () Bool)

(assert (=> b!1178432 (=> (not res!782936) (not e!669973))))

(declare-fun lt!532344 () array!76120)

(declare-datatypes ((List!25945 0))(
  ( (Nil!25942) (Cons!25941 (h!27150 (_ BitVec 64)) (t!38087 List!25945)) )
))
(declare-fun arrayNoDuplicates!0 (array!76120 (_ BitVec 32) List!25945) Bool)

(assert (=> b!1178432 (= res!782936 (arrayNoDuplicates!0 lt!532344 #b00000000000000000000000000000000 Nil!25942))))

(declare-fun b!1178433 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!76120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178433 (= e!669976 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178434 () Bool)

(declare-fun e!669969 () Bool)

(declare-fun e!669978 () Bool)

(assert (=> b!1178434 (= e!669969 e!669978)))

(declare-fun res!782940 () Bool)

(assert (=> b!1178434 (=> res!782940 e!669978)))

(assert (=> b!1178434 (= res!782940 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44691)

(declare-fun lt!532339 () array!76118)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44691)

(declare-fun getCurrentListMapNoExtraKeys!5025 (array!76120 array!76118 (_ BitVec 32) (_ BitVec 32) V!44691 V!44691 (_ BitVec 32) Int) ListLongMap!17161)

(assert (=> b!1178434 (= lt!532330 (getCurrentListMapNoExtraKeys!5025 lt!532344 lt!532339 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1178434 (= lt!532339 (array!76119 (store (arr!36705 _values!996) i!673 (ValueCellFull!14127 lt!532331)) (size!37242 _values!996)))))

(declare-fun dynLambda!2999 (Int (_ BitVec 64)) V!44691)

(assert (=> b!1178434 (= lt!532331 (dynLambda!2999 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!532341 () ListLongMap!17161)

(assert (=> b!1178434 (= lt!532341 (getCurrentListMapNoExtraKeys!5025 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1178435 () Bool)

(assert (=> b!1178435 (= e!669967 tp_is_empty!29673)))

(declare-fun b!1178436 () Bool)

(declare-fun res!782944 () Bool)

(assert (=> b!1178436 (=> (not res!782944) (not e!669970))))

(assert (=> b!1178436 (= res!782944 (= (select (arr!36706 _keys!1208) i!673) k0!934))))

(declare-fun b!1178437 () Bool)

(declare-fun e!669977 () Bool)

(assert (=> b!1178437 (= e!669977 (and e!669975 mapRes!46337))))

(declare-fun condMapEmpty!46337 () Bool)

(declare-fun mapDefault!46337 () ValueCell!14127)

(assert (=> b!1178437 (= condMapEmpty!46337 (= (arr!36705 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14127)) mapDefault!46337)))))

(declare-fun b!1178438 () Bool)

(assert (=> b!1178438 (= e!669973 (not e!669969))))

(declare-fun res!782948 () Bool)

(assert (=> b!1178438 (=> res!782948 e!669969)))

(assert (=> b!1178438 (= res!782948 (bvsgt from!1455 i!673))))

(assert (=> b!1178438 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!532342 () Unit!38862)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76120 (_ BitVec 64) (_ BitVec 32)) Unit!38862)

(assert (=> b!1178438 (= lt!532342 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178439 () Bool)

(declare-fun res!782947 () Bool)

(assert (=> b!1178439 (=> (not res!782947) (not e!669970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76120 (_ BitVec 32)) Bool)

(assert (=> b!1178439 (= res!782947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1178440 () Bool)

(declare-fun res!782937 () Bool)

(assert (=> b!1178440 (=> (not res!782937) (not e!669970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178440 (= res!782937 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!46337 () Bool)

(assert (=> mapIsEmpty!46337 mapRes!46337))

(declare-fun res!782943 () Bool)

(assert (=> start!99600 (=> (not res!782943) (not e!669970))))

(assert (=> start!99600 (= res!782943 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37243 _keys!1208))))))

(assert (=> start!99600 e!669970))

(assert (=> start!99600 tp_is_empty!29673))

(declare-fun array_inv!27916 (array!76120) Bool)

(assert (=> start!99600 (array_inv!27916 _keys!1208)))

(assert (=> start!99600 true))

(assert (=> start!99600 tp!88143))

(declare-fun array_inv!27917 (array!76118) Bool)

(assert (=> start!99600 (and (array_inv!27917 _values!996) e!669977)))

(declare-fun b!1178429 () Bool)

(assert (=> b!1178429 (= e!669978 e!669974)))

(declare-fun res!782935 () Bool)

(assert (=> b!1178429 (=> res!782935 e!669974)))

(assert (=> b!1178429 (= res!782935 (not (validKeyInArray!0 (select (arr!36706 _keys!1208) from!1455))))))

(declare-fun lt!532336 () ListLongMap!17161)

(assert (=> b!1178429 (= lt!532336 lt!532332)))

(declare-fun lt!532335 () ListLongMap!17161)

(declare-fun -!1594 (ListLongMap!17161 (_ BitVec 64)) ListLongMap!17161)

(assert (=> b!1178429 (= lt!532332 (-!1594 lt!532335 k0!934))))

(assert (=> b!1178429 (= lt!532336 (getCurrentListMapNoExtraKeys!5025 lt!532344 lt!532339 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1178429 (= lt!532335 (getCurrentListMapNoExtraKeys!5025 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!532337 () Unit!38862)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!818 (array!76120 array!76118 (_ BitVec 32) (_ BitVec 32) V!44691 V!44691 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38862)

(assert (=> b!1178429 (= lt!532337 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!818 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1178441 () Bool)

(declare-fun res!782946 () Bool)

(assert (=> b!1178441 (=> (not res!782946) (not e!669970))))

(assert (=> b!1178441 (= res!782946 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37243 _keys!1208))))))

(declare-fun b!1178442 () Bool)

(declare-fun Unit!38865 () Unit!38862)

(assert (=> b!1178442 (= e!669979 Unit!38865)))

(declare-fun lt!532340 () Unit!38862)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76120 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38862)

(assert (=> b!1178442 (= lt!532340 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1178442 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532338 () Unit!38862)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76120 (_ BitVec 32) (_ BitVec 32)) Unit!38862)

(assert (=> b!1178442 (= lt!532338 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1178442 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25942)))

(declare-fun lt!532343 () Unit!38862)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76120 (_ BitVec 64) (_ BitVec 32) List!25945) Unit!38862)

(assert (=> b!1178442 (= lt!532343 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25942))))

(assert (=> b!1178442 false))

(declare-fun b!1178443 () Bool)

(assert (=> b!1178443 (= e!669968 (= lt!532341 (+!3817 lt!532335 lt!532334)))))

(declare-fun b!1178444 () Bool)

(declare-fun res!782945 () Bool)

(assert (=> b!1178444 (=> (not res!782945) (not e!669970))))

(assert (=> b!1178444 (= res!782945 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25942))))

(declare-fun b!1178445 () Bool)

(declare-fun res!782950 () Bool)

(assert (=> b!1178445 (=> (not res!782950) (not e!669970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1178445 (= res!782950 (validMask!0 mask!1564))))

(declare-fun b!1178446 () Bool)

(assert (=> b!1178446 (= e!669970 e!669973)))

(declare-fun res!782939 () Bool)

(assert (=> b!1178446 (=> (not res!782939) (not e!669973))))

(assert (=> b!1178446 (= res!782939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532344 mask!1564))))

(assert (=> b!1178446 (= lt!532344 (array!76121 (store (arr!36706 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37243 _keys!1208)))))

(assert (= (and start!99600 res!782943) b!1178445))

(assert (= (and b!1178445 res!782950) b!1178431))

(assert (= (and b!1178431 res!782942) b!1178439))

(assert (= (and b!1178439 res!782947) b!1178444))

(assert (= (and b!1178444 res!782945) b!1178441))

(assert (= (and b!1178441 res!782946) b!1178440))

(assert (= (and b!1178440 res!782937) b!1178436))

(assert (= (and b!1178436 res!782944) b!1178446))

(assert (= (and b!1178446 res!782939) b!1178432))

(assert (= (and b!1178432 res!782936) b!1178438))

(assert (= (and b!1178438 (not res!782948)) b!1178434))

(assert (= (and b!1178434 (not res!782940)) b!1178429))

(assert (= (and b!1178429 (not res!782935)) b!1178428))

(assert (= (and b!1178428 res!782938) b!1178426))

(assert (= (and b!1178426 (not res!782949)) b!1178433))

(assert (= (and b!1178428 c!116786) b!1178442))

(assert (= (and b!1178428 (not c!116786)) b!1178430))

(assert (= (and b!1178428 res!782941) b!1178443))

(assert (= (and b!1178437 condMapEmpty!46337) mapIsEmpty!46337))

(assert (= (and b!1178437 (not condMapEmpty!46337)) mapNonEmpty!46337))

(get-info :version)

(assert (= (and mapNonEmpty!46337 ((_ is ValueCellFull!14127) mapValue!46337)) b!1178435))

(assert (= (and b!1178437 ((_ is ValueCellFull!14127) mapDefault!46337)) b!1178427))

(assert (= start!99600 b!1178437))

(declare-fun b_lambda!20305 () Bool)

(assert (=> (not b_lambda!20305) (not b!1178434)))

(declare-fun t!38085 () Bool)

(declare-fun tb!9963 () Bool)

(assert (=> (and start!99600 (= defaultEntry!1004 defaultEntry!1004) t!38085) tb!9963))

(declare-fun result!20485 () Bool)

(assert (=> tb!9963 (= result!20485 tp_is_empty!29673)))

(assert (=> b!1178434 t!38085))

(declare-fun b_and!41169 () Bool)

(assert (= b_and!41167 (and (=> t!38085 result!20485) b_and!41169)))

(declare-fun m!1086443 () Bool)

(assert (=> b!1178436 m!1086443))

(declare-fun m!1086445 () Bool)

(assert (=> b!1178444 m!1086445))

(declare-fun m!1086447 () Bool)

(assert (=> b!1178429 m!1086447))

(declare-fun m!1086449 () Bool)

(assert (=> b!1178429 m!1086449))

(declare-fun m!1086451 () Bool)

(assert (=> b!1178429 m!1086451))

(declare-fun m!1086453 () Bool)

(assert (=> b!1178429 m!1086453))

(assert (=> b!1178429 m!1086451))

(declare-fun m!1086455 () Bool)

(assert (=> b!1178429 m!1086455))

(declare-fun m!1086457 () Bool)

(assert (=> b!1178429 m!1086457))

(assert (=> b!1178428 m!1086451))

(declare-fun m!1086459 () Bool)

(assert (=> b!1178428 m!1086459))

(declare-fun m!1086461 () Bool)

(assert (=> b!1178428 m!1086461))

(assert (=> b!1178428 m!1086461))

(declare-fun m!1086463 () Bool)

(assert (=> b!1178428 m!1086463))

(declare-fun m!1086465 () Bool)

(assert (=> b!1178443 m!1086465))

(declare-fun m!1086467 () Bool)

(assert (=> start!99600 m!1086467))

(declare-fun m!1086469 () Bool)

(assert (=> start!99600 m!1086469))

(declare-fun m!1086471 () Bool)

(assert (=> b!1178440 m!1086471))

(declare-fun m!1086473 () Bool)

(assert (=> b!1178438 m!1086473))

(declare-fun m!1086475 () Bool)

(assert (=> b!1178438 m!1086475))

(declare-fun m!1086477 () Bool)

(assert (=> b!1178446 m!1086477))

(declare-fun m!1086479 () Bool)

(assert (=> b!1178446 m!1086479))

(declare-fun m!1086481 () Bool)

(assert (=> b!1178433 m!1086481))

(declare-fun m!1086483 () Bool)

(assert (=> b!1178442 m!1086483))

(declare-fun m!1086485 () Bool)

(assert (=> b!1178442 m!1086485))

(declare-fun m!1086487 () Bool)

(assert (=> b!1178442 m!1086487))

(declare-fun m!1086489 () Bool)

(assert (=> b!1178442 m!1086489))

(declare-fun m!1086491 () Bool)

(assert (=> b!1178442 m!1086491))

(declare-fun m!1086493 () Bool)

(assert (=> b!1178434 m!1086493))

(declare-fun m!1086495 () Bool)

(assert (=> b!1178434 m!1086495))

(declare-fun m!1086497 () Bool)

(assert (=> b!1178434 m!1086497))

(declare-fun m!1086499 () Bool)

(assert (=> b!1178434 m!1086499))

(declare-fun m!1086501 () Bool)

(assert (=> mapNonEmpty!46337 m!1086501))

(declare-fun m!1086503 () Bool)

(assert (=> b!1178432 m!1086503))

(assert (=> b!1178426 m!1086451))

(declare-fun m!1086505 () Bool)

(assert (=> b!1178445 m!1086505))

(declare-fun m!1086507 () Bool)

(assert (=> b!1178439 m!1086507))

(check-sat (not b!1178429) (not b!1178432) (not b!1178428) (not b!1178446) (not b_next!25143) tp_is_empty!29673 (not b!1178443) (not mapNonEmpty!46337) (not b!1178438) (not b_lambda!20305) (not b!1178440) (not b!1178434) (not start!99600) (not b!1178444) (not b!1178445) b_and!41169 (not b!1178433) (not b!1178442) (not b!1178439))
(check-sat b_and!41169 (not b_next!25143))

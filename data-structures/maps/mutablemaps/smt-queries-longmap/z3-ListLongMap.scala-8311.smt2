; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101252 () Bool)

(assert start!101252)

(declare-fun b_free!26139 () Bool)

(declare-fun b_next!26139 () Bool)

(assert (=> start!101252 (= b_free!26139 (not b_next!26139))))

(declare-fun tp!91440 () Bool)

(declare-fun b_and!43405 () Bool)

(assert (=> start!101252 (= tp!91440 b_and!43405)))

(declare-fun b!1215256 () Bool)

(declare-fun res!806966 () Bool)

(declare-fun e!690091 () Bool)

(assert (=> b!1215256 (=> (not res!806966) (not e!690091))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215256 (= res!806966 (validKeyInArray!0 k0!934))))

(declare-fun b!1215257 () Bool)

(declare-fun res!806974 () Bool)

(assert (=> b!1215257 (=> (not res!806974) (not e!690091))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215257 (= res!806974 (validMask!0 mask!1564))))

(declare-fun b!1215258 () Bool)

(declare-fun e!690089 () Bool)

(declare-fun e!690088 () Bool)

(declare-fun mapRes!48139 () Bool)

(assert (=> b!1215258 (= e!690089 (and e!690088 mapRes!48139))))

(declare-fun condMapEmpty!48139 () Bool)

(declare-datatypes ((V!46251 0))(
  ( (V!46252 (val!15478 Int)) )
))
(declare-datatypes ((ValueCell!14712 0))(
  ( (ValueCellFull!14712 (v!18132 V!46251)) (EmptyCell!14712) )
))
(declare-datatypes ((array!78440 0))(
  ( (array!78441 (arr!37851 (Array (_ BitVec 32) ValueCell!14712)) (size!38388 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78440)

(declare-fun mapDefault!48139 () ValueCell!14712)

(assert (=> b!1215258 (= condMapEmpty!48139 (= (arr!37851 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14712)) mapDefault!48139)))))

(declare-fun b!1215259 () Bool)

(declare-fun e!690090 () Bool)

(declare-fun tp_is_empty!30843 () Bool)

(assert (=> b!1215259 (= e!690090 tp_is_empty!30843)))

(declare-fun b!1215260 () Bool)

(declare-fun res!806971 () Bool)

(assert (=> b!1215260 (=> (not res!806971) (not e!690091))))

(declare-datatypes ((array!78442 0))(
  ( (array!78443 (arr!37852 (Array (_ BitVec 32) (_ BitVec 64))) (size!38389 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78442)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1215260 (= res!806971 (= (select (arr!37852 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!48139 () Bool)

(declare-fun tp!91439 () Bool)

(assert (=> mapNonEmpty!48139 (= mapRes!48139 (and tp!91439 e!690090))))

(declare-fun mapKey!48139 () (_ BitVec 32))

(declare-fun mapRest!48139 () (Array (_ BitVec 32) ValueCell!14712))

(declare-fun mapValue!48139 () ValueCell!14712)

(assert (=> mapNonEmpty!48139 (= (arr!37851 _values!996) (store mapRest!48139 mapKey!48139 mapValue!48139))))

(declare-fun b!1215261 () Bool)

(declare-fun res!806965 () Bool)

(assert (=> b!1215261 (=> (not res!806965) (not e!690091))))

(declare-datatypes ((List!26854 0))(
  ( (Nil!26851) (Cons!26850 (h!28059 (_ BitVec 64)) (t!39980 List!26854)) )
))
(declare-fun arrayNoDuplicates!0 (array!78442 (_ BitVec 32) List!26854) Bool)

(assert (=> b!1215261 (= res!806965 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26851))))

(declare-fun b!1215262 () Bool)

(declare-fun e!690092 () Bool)

(assert (=> b!1215262 (= e!690092 true)))

(declare-fun zeroValue!944 () V!46251)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!552525 () array!78442)

(declare-fun minValue!944 () V!46251)

(declare-datatypes ((tuple2!20036 0))(
  ( (tuple2!20037 (_1!10028 (_ BitVec 64)) (_2!10028 V!46251)) )
))
(declare-datatypes ((List!26855 0))(
  ( (Nil!26852) (Cons!26851 (h!28060 tuple2!20036) (t!39981 List!26855)) )
))
(declare-datatypes ((ListLongMap!18017 0))(
  ( (ListLongMap!18018 (toList!9024 List!26855)) )
))
(declare-fun lt!552527 () ListLongMap!18017)

(declare-fun getCurrentListMapNoExtraKeys!5429 (array!78442 array!78440 (_ BitVec 32) (_ BitVec 32) V!46251 V!46251 (_ BitVec 32) Int) ListLongMap!18017)

(declare-fun dynLambda!3338 (Int (_ BitVec 64)) V!46251)

(assert (=> b!1215262 (= lt!552527 (getCurrentListMapNoExtraKeys!5429 lt!552525 (array!78441 (store (arr!37851 _values!996) i!673 (ValueCellFull!14712 (dynLambda!3338 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38388 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552524 () ListLongMap!18017)

(assert (=> b!1215262 (= lt!552524 (getCurrentListMapNoExtraKeys!5429 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215263 () Bool)

(declare-fun res!806967 () Bool)

(assert (=> b!1215263 (=> (not res!806967) (not e!690091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78442 (_ BitVec 32)) Bool)

(assert (=> b!1215263 (= res!806967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215264 () Bool)

(declare-fun e!690093 () Bool)

(assert (=> b!1215264 (= e!690093 (not e!690092))))

(declare-fun res!806973 () Bool)

(assert (=> b!1215264 (=> res!806973 e!690092)))

(assert (=> b!1215264 (= res!806973 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215264 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40230 0))(
  ( (Unit!40231) )
))
(declare-fun lt!552526 () Unit!40230)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78442 (_ BitVec 64) (_ BitVec 32)) Unit!40230)

(assert (=> b!1215264 (= lt!552526 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!48139 () Bool)

(assert (=> mapIsEmpty!48139 mapRes!48139))

(declare-fun res!806964 () Bool)

(assert (=> start!101252 (=> (not res!806964) (not e!690091))))

(assert (=> start!101252 (= res!806964 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38389 _keys!1208))))))

(assert (=> start!101252 e!690091))

(assert (=> start!101252 tp_is_empty!30843))

(declare-fun array_inv!28724 (array!78442) Bool)

(assert (=> start!101252 (array_inv!28724 _keys!1208)))

(assert (=> start!101252 true))

(assert (=> start!101252 tp!91440))

(declare-fun array_inv!28725 (array!78440) Bool)

(assert (=> start!101252 (and (array_inv!28725 _values!996) e!690089)))

(declare-fun b!1215265 () Bool)

(assert (=> b!1215265 (= e!690091 e!690093)))

(declare-fun res!806972 () Bool)

(assert (=> b!1215265 (=> (not res!806972) (not e!690093))))

(assert (=> b!1215265 (= res!806972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552525 mask!1564))))

(assert (=> b!1215265 (= lt!552525 (array!78443 (store (arr!37852 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38389 _keys!1208)))))

(declare-fun b!1215266 () Bool)

(declare-fun res!806969 () Bool)

(assert (=> b!1215266 (=> (not res!806969) (not e!690091))))

(assert (=> b!1215266 (= res!806969 (and (= (size!38388 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38389 _keys!1208) (size!38388 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215267 () Bool)

(declare-fun res!806970 () Bool)

(assert (=> b!1215267 (=> (not res!806970) (not e!690093))))

(assert (=> b!1215267 (= res!806970 (arrayNoDuplicates!0 lt!552525 #b00000000000000000000000000000000 Nil!26851))))

(declare-fun b!1215268 () Bool)

(declare-fun res!806968 () Bool)

(assert (=> b!1215268 (=> (not res!806968) (not e!690091))))

(assert (=> b!1215268 (= res!806968 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38389 _keys!1208))))))

(declare-fun b!1215269 () Bool)

(assert (=> b!1215269 (= e!690088 tp_is_empty!30843)))

(assert (= (and start!101252 res!806964) b!1215257))

(assert (= (and b!1215257 res!806974) b!1215266))

(assert (= (and b!1215266 res!806969) b!1215263))

(assert (= (and b!1215263 res!806967) b!1215261))

(assert (= (and b!1215261 res!806965) b!1215268))

(assert (= (and b!1215268 res!806968) b!1215256))

(assert (= (and b!1215256 res!806966) b!1215260))

(assert (= (and b!1215260 res!806971) b!1215265))

(assert (= (and b!1215265 res!806972) b!1215267))

(assert (= (and b!1215267 res!806970) b!1215264))

(assert (= (and b!1215264 (not res!806973)) b!1215262))

(assert (= (and b!1215258 condMapEmpty!48139) mapIsEmpty!48139))

(assert (= (and b!1215258 (not condMapEmpty!48139)) mapNonEmpty!48139))

(get-info :version)

(assert (= (and mapNonEmpty!48139 ((_ is ValueCellFull!14712) mapValue!48139)) b!1215259))

(assert (= (and b!1215258 ((_ is ValueCellFull!14712) mapDefault!48139)) b!1215269))

(assert (= start!101252 b!1215258))

(declare-fun b_lambda!21825 () Bool)

(assert (=> (not b_lambda!21825) (not b!1215262)))

(declare-fun t!39979 () Bool)

(declare-fun tb!10947 () Bool)

(assert (=> (and start!101252 (= defaultEntry!1004 defaultEntry!1004) t!39979) tb!10947))

(declare-fun result!22483 () Bool)

(assert (=> tb!10947 (= result!22483 tp_is_empty!30843)))

(assert (=> b!1215262 t!39979))

(declare-fun b_and!43407 () Bool)

(assert (= b_and!43405 (and (=> t!39979 result!22483) b_and!43407)))

(declare-fun m!1120293 () Bool)

(assert (=> b!1215256 m!1120293))

(declare-fun m!1120295 () Bool)

(assert (=> b!1215265 m!1120295))

(declare-fun m!1120297 () Bool)

(assert (=> b!1215265 m!1120297))

(declare-fun m!1120299 () Bool)

(assert (=> b!1215261 m!1120299))

(declare-fun m!1120301 () Bool)

(assert (=> b!1215262 m!1120301))

(declare-fun m!1120303 () Bool)

(assert (=> b!1215262 m!1120303))

(declare-fun m!1120305 () Bool)

(assert (=> b!1215262 m!1120305))

(declare-fun m!1120307 () Bool)

(assert (=> b!1215262 m!1120307))

(declare-fun m!1120309 () Bool)

(assert (=> b!1215257 m!1120309))

(declare-fun m!1120311 () Bool)

(assert (=> b!1215267 m!1120311))

(declare-fun m!1120313 () Bool)

(assert (=> mapNonEmpty!48139 m!1120313))

(declare-fun m!1120315 () Bool)

(assert (=> b!1215260 m!1120315))

(declare-fun m!1120317 () Bool)

(assert (=> b!1215263 m!1120317))

(declare-fun m!1120319 () Bool)

(assert (=> b!1215264 m!1120319))

(declare-fun m!1120321 () Bool)

(assert (=> b!1215264 m!1120321))

(declare-fun m!1120323 () Bool)

(assert (=> start!101252 m!1120323))

(declare-fun m!1120325 () Bool)

(assert (=> start!101252 m!1120325))

(check-sat b_and!43407 (not mapNonEmpty!48139) (not b!1215256) (not b_lambda!21825) (not b!1215257) tp_is_empty!30843 (not b!1215267) (not b!1215263) (not start!101252) (not b!1215262) (not b!1215265) (not b_next!26139) (not b!1215264) (not b!1215261))
(check-sat b_and!43407 (not b_next!26139))

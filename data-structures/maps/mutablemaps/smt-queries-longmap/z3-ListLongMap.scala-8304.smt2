; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101210 () Bool)

(assert start!101210)

(declare-fun b_free!26097 () Bool)

(declare-fun b_next!26097 () Bool)

(assert (=> start!101210 (= b_free!26097 (not b_next!26097))))

(declare-fun tp!91314 () Bool)

(declare-fun b_and!43321 () Bool)

(assert (=> start!101210 (= tp!91314 b_and!43321)))

(declare-fun b!1214332 () Bool)

(declare-fun e!689650 () Bool)

(declare-fun e!689651 () Bool)

(declare-fun mapRes!48076 () Bool)

(assert (=> b!1214332 (= e!689650 (and e!689651 mapRes!48076))))

(declare-fun condMapEmpty!48076 () Bool)

(declare-datatypes ((V!46195 0))(
  ( (V!46196 (val!15457 Int)) )
))
(declare-datatypes ((ValueCell!14691 0))(
  ( (ValueCellFull!14691 (v!18111 V!46195)) (EmptyCell!14691) )
))
(declare-datatypes ((array!78362 0))(
  ( (array!78363 (arr!37812 (Array (_ BitVec 32) ValueCell!14691)) (size!38349 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78362)

(declare-fun mapDefault!48076 () ValueCell!14691)

(assert (=> b!1214332 (= condMapEmpty!48076 (= (arr!37812 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14691)) mapDefault!48076)))))

(declare-fun b!1214333 () Bool)

(declare-fun res!806271 () Bool)

(declare-fun e!689649 () Bool)

(assert (=> b!1214333 (=> (not res!806271) (not e!689649))))

(declare-datatypes ((array!78364 0))(
  ( (array!78365 (arr!37813 (Array (_ BitVec 32) (_ BitVec 64))) (size!38350 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78364)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78364 (_ BitVec 32)) Bool)

(assert (=> b!1214333 (= res!806271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1214334 () Bool)

(declare-fun res!806281 () Bool)

(assert (=> b!1214334 (=> (not res!806281) (not e!689649))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1214334 (= res!806281 (= (select (arr!37813 _keys!1208) i!673) k0!934))))

(declare-fun res!806278 () Bool)

(assert (=> start!101210 (=> (not res!806278) (not e!689649))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101210 (= res!806278 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38350 _keys!1208))))))

(assert (=> start!101210 e!689649))

(declare-fun tp_is_empty!30801 () Bool)

(assert (=> start!101210 tp_is_empty!30801))

(declare-fun array_inv!28700 (array!78364) Bool)

(assert (=> start!101210 (array_inv!28700 _keys!1208)))

(assert (=> start!101210 true))

(assert (=> start!101210 tp!91314))

(declare-fun array_inv!28701 (array!78362) Bool)

(assert (=> start!101210 (and (array_inv!28701 _values!996) e!689650)))

(declare-fun b!1214335 () Bool)

(declare-fun e!689646 () Bool)

(declare-fun e!689648 () Bool)

(assert (=> b!1214335 (= e!689646 (not e!689648))))

(declare-fun res!806280 () Bool)

(assert (=> b!1214335 (=> res!806280 e!689648)))

(assert (=> b!1214335 (= res!806280 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214335 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40206 0))(
  ( (Unit!40207) )
))
(declare-fun lt!552273 () Unit!40206)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78364 (_ BitVec 64) (_ BitVec 32)) Unit!40206)

(assert (=> b!1214335 (= lt!552273 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1214336 () Bool)

(declare-fun res!806275 () Bool)

(assert (=> b!1214336 (=> (not res!806275) (not e!689649))))

(assert (=> b!1214336 (= res!806275 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38350 _keys!1208))))))

(declare-fun b!1214337 () Bool)

(declare-fun res!806276 () Bool)

(assert (=> b!1214337 (=> (not res!806276) (not e!689649))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1214337 (= res!806276 (and (= (size!38349 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38350 _keys!1208) (size!38349 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214338 () Bool)

(assert (=> b!1214338 (= e!689648 (or (= from!1455 i!673) (bvsge from!1455 i!673) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38350 _keys!1208)))))))

(declare-fun zeroValue!944 () V!46195)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20008 0))(
  ( (tuple2!20009 (_1!10014 (_ BitVec 64)) (_2!10014 V!46195)) )
))
(declare-datatypes ((List!26826 0))(
  ( (Nil!26823) (Cons!26822 (h!28031 tuple2!20008) (t!39910 List!26826)) )
))
(declare-datatypes ((ListLongMap!17989 0))(
  ( (ListLongMap!17990 (toList!9010 List!26826)) )
))
(declare-fun lt!552275 () ListLongMap!17989)

(declare-fun minValue!944 () V!46195)

(declare-fun lt!552274 () array!78364)

(declare-fun getCurrentListMapNoExtraKeys!5415 (array!78364 array!78362 (_ BitVec 32) (_ BitVec 32) V!46195 V!46195 (_ BitVec 32) Int) ListLongMap!17989)

(declare-fun dynLambda!3324 (Int (_ BitVec 64)) V!46195)

(assert (=> b!1214338 (= lt!552275 (getCurrentListMapNoExtraKeys!5415 lt!552274 (array!78363 (store (arr!37812 _values!996) i!673 (ValueCellFull!14691 (dynLambda!3324 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38349 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552272 () ListLongMap!17989)

(assert (=> b!1214338 (= lt!552272 (getCurrentListMapNoExtraKeys!5415 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214339 () Bool)

(declare-fun e!689647 () Bool)

(assert (=> b!1214339 (= e!689647 tp_is_empty!30801)))

(declare-fun b!1214340 () Bool)

(declare-fun res!806272 () Bool)

(assert (=> b!1214340 (=> (not res!806272) (not e!689649))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214340 (= res!806272 (validKeyInArray!0 k0!934))))

(declare-fun b!1214341 () Bool)

(assert (=> b!1214341 (= e!689651 tp_is_empty!30801)))

(declare-fun mapNonEmpty!48076 () Bool)

(declare-fun tp!91313 () Bool)

(assert (=> mapNonEmpty!48076 (= mapRes!48076 (and tp!91313 e!689647))))

(declare-fun mapValue!48076 () ValueCell!14691)

(declare-fun mapKey!48076 () (_ BitVec 32))

(declare-fun mapRest!48076 () (Array (_ BitVec 32) ValueCell!14691))

(assert (=> mapNonEmpty!48076 (= (arr!37812 _values!996) (store mapRest!48076 mapKey!48076 mapValue!48076))))

(declare-fun b!1214342 () Bool)

(assert (=> b!1214342 (= e!689649 e!689646)))

(declare-fun res!806273 () Bool)

(assert (=> b!1214342 (=> (not res!806273) (not e!689646))))

(assert (=> b!1214342 (= res!806273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552274 mask!1564))))

(assert (=> b!1214342 (= lt!552274 (array!78365 (store (arr!37813 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38350 _keys!1208)))))

(declare-fun b!1214343 () Bool)

(declare-fun res!806279 () Bool)

(assert (=> b!1214343 (=> (not res!806279) (not e!689646))))

(declare-datatypes ((List!26827 0))(
  ( (Nil!26824) (Cons!26823 (h!28032 (_ BitVec 64)) (t!39911 List!26827)) )
))
(declare-fun arrayNoDuplicates!0 (array!78364 (_ BitVec 32) List!26827) Bool)

(assert (=> b!1214343 (= res!806279 (arrayNoDuplicates!0 lt!552274 #b00000000000000000000000000000000 Nil!26824))))

(declare-fun mapIsEmpty!48076 () Bool)

(assert (=> mapIsEmpty!48076 mapRes!48076))

(declare-fun b!1214344 () Bool)

(declare-fun res!806274 () Bool)

(assert (=> b!1214344 (=> (not res!806274) (not e!689649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214344 (= res!806274 (validMask!0 mask!1564))))

(declare-fun b!1214345 () Bool)

(declare-fun res!806277 () Bool)

(assert (=> b!1214345 (=> (not res!806277) (not e!689649))))

(assert (=> b!1214345 (= res!806277 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26824))))

(assert (= (and start!101210 res!806278) b!1214344))

(assert (= (and b!1214344 res!806274) b!1214337))

(assert (= (and b!1214337 res!806276) b!1214333))

(assert (= (and b!1214333 res!806271) b!1214345))

(assert (= (and b!1214345 res!806277) b!1214336))

(assert (= (and b!1214336 res!806275) b!1214340))

(assert (= (and b!1214340 res!806272) b!1214334))

(assert (= (and b!1214334 res!806281) b!1214342))

(assert (= (and b!1214342 res!806273) b!1214343))

(assert (= (and b!1214343 res!806279) b!1214335))

(assert (= (and b!1214335 (not res!806280)) b!1214338))

(assert (= (and b!1214332 condMapEmpty!48076) mapIsEmpty!48076))

(assert (= (and b!1214332 (not condMapEmpty!48076)) mapNonEmpty!48076))

(get-info :version)

(assert (= (and mapNonEmpty!48076 ((_ is ValueCellFull!14691) mapValue!48076)) b!1214339))

(assert (= (and b!1214332 ((_ is ValueCellFull!14691) mapDefault!48076)) b!1214341))

(assert (= start!101210 b!1214332))

(declare-fun b_lambda!21783 () Bool)

(assert (=> (not b_lambda!21783) (not b!1214338)))

(declare-fun t!39909 () Bool)

(declare-fun tb!10905 () Bool)

(assert (=> (and start!101210 (= defaultEntry!1004 defaultEntry!1004) t!39909) tb!10905))

(declare-fun result!22399 () Bool)

(assert (=> tb!10905 (= result!22399 tp_is_empty!30801)))

(assert (=> b!1214338 t!39909))

(declare-fun b_and!43323 () Bool)

(assert (= b_and!43321 (and (=> t!39909 result!22399) b_and!43323)))

(declare-fun m!1119579 () Bool)

(assert (=> mapNonEmpty!48076 m!1119579))

(declare-fun m!1119581 () Bool)

(assert (=> b!1214335 m!1119581))

(declare-fun m!1119583 () Bool)

(assert (=> b!1214335 m!1119583))

(declare-fun m!1119585 () Bool)

(assert (=> b!1214342 m!1119585))

(declare-fun m!1119587 () Bool)

(assert (=> b!1214342 m!1119587))

(declare-fun m!1119589 () Bool)

(assert (=> b!1214343 m!1119589))

(declare-fun m!1119591 () Bool)

(assert (=> b!1214333 m!1119591))

(declare-fun m!1119593 () Bool)

(assert (=> b!1214340 m!1119593))

(declare-fun m!1119595 () Bool)

(assert (=> start!101210 m!1119595))

(declare-fun m!1119597 () Bool)

(assert (=> start!101210 m!1119597))

(declare-fun m!1119599 () Bool)

(assert (=> b!1214334 m!1119599))

(declare-fun m!1119601 () Bool)

(assert (=> b!1214345 m!1119601))

(declare-fun m!1119603 () Bool)

(assert (=> b!1214344 m!1119603))

(declare-fun m!1119605 () Bool)

(assert (=> b!1214338 m!1119605))

(declare-fun m!1119607 () Bool)

(assert (=> b!1214338 m!1119607))

(declare-fun m!1119609 () Bool)

(assert (=> b!1214338 m!1119609))

(declare-fun m!1119611 () Bool)

(assert (=> b!1214338 m!1119611))

(check-sat (not b!1214338) b_and!43323 (not b!1214340) (not b!1214345) (not start!101210) (not b!1214335) (not b_lambda!21783) (not b!1214344) (not mapNonEmpty!48076) (not b_next!26097) (not b!1214333) (not b!1214342) (not b!1214343) tp_is_empty!30801)
(check-sat b_and!43323 (not b_next!26097))

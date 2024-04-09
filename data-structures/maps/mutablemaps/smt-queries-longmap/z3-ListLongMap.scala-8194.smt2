; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100068 () Bool)

(assert start!100068)

(declare-fun b_free!25611 () Bool)

(declare-fun b_next!25611 () Bool)

(assert (=> start!100068 (= b_free!25611 (not b_next!25611))))

(declare-fun tp!89547 () Bool)

(declare-fun b_and!42103 () Bool)

(assert (=> start!100068 (= tp!89547 b_and!42103)))

(declare-fun b!1191968 () Bool)

(declare-fun res!792987 () Bool)

(declare-fun e!677578 () Bool)

(assert (=> b!1191968 (=> (not res!792987) (not e!677578))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77046 0))(
  ( (array!77047 (arr!37169 (Array (_ BitVec 32) (_ BitVec 64))) (size!37706 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77046)

(assert (=> b!1191968 (= res!792987 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37706 _keys!1208))))))

(declare-fun b!1191969 () Bool)

(declare-fun e!677581 () Bool)

(declare-fun tp_is_empty!30141 () Bool)

(assert (=> b!1191969 (= e!677581 tp_is_empty!30141)))

(declare-fun mapNonEmpty!47039 () Bool)

(declare-fun mapRes!47039 () Bool)

(declare-fun tp!89548 () Bool)

(declare-fun e!677576 () Bool)

(assert (=> mapNonEmpty!47039 (= mapRes!47039 (and tp!89548 e!677576))))

(declare-datatypes ((V!45315 0))(
  ( (V!45316 (val!15127 Int)) )
))
(declare-datatypes ((ValueCell!14361 0))(
  ( (ValueCellFull!14361 (v!17766 V!45315)) (EmptyCell!14361) )
))
(declare-fun mapRest!47039 () (Array (_ BitVec 32) ValueCell!14361))

(declare-fun mapValue!47039 () ValueCell!14361)

(declare-datatypes ((array!77048 0))(
  ( (array!77049 (arr!37170 (Array (_ BitVec 32) ValueCell!14361)) (size!37707 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77048)

(declare-fun mapKey!47039 () (_ BitVec 32))

(assert (=> mapNonEmpty!47039 (= (arr!37170 _values!996) (store mapRest!47039 mapKey!47039 mapValue!47039))))

(declare-fun res!792978 () Bool)

(assert (=> start!100068 (=> (not res!792978) (not e!677578))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100068 (= res!792978 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37706 _keys!1208))))))

(assert (=> start!100068 e!677578))

(assert (=> start!100068 tp_is_empty!30141))

(declare-fun array_inv!28244 (array!77046) Bool)

(assert (=> start!100068 (array_inv!28244 _keys!1208)))

(assert (=> start!100068 true))

(assert (=> start!100068 tp!89547))

(declare-fun e!677580 () Bool)

(declare-fun array_inv!28245 (array!77048) Bool)

(assert (=> start!100068 (and (array_inv!28245 _values!996) e!677580)))

(declare-fun b!1191970 () Bool)

(declare-fun res!792979 () Bool)

(assert (=> b!1191970 (=> (not res!792979) (not e!677578))))

(declare-datatypes ((List!26345 0))(
  ( (Nil!26342) (Cons!26341 (h!27550 (_ BitVec 64)) (t!38955 List!26345)) )
))
(declare-fun arrayNoDuplicates!0 (array!77046 (_ BitVec 32) List!26345) Bool)

(assert (=> b!1191970 (= res!792979 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26342))))

(declare-fun b!1191971 () Bool)

(declare-fun e!677574 () Bool)

(assert (=> b!1191971 (= e!677578 e!677574)))

(declare-fun res!792980 () Bool)

(assert (=> b!1191971 (=> (not res!792980) (not e!677574))))

(declare-fun lt!542009 () array!77046)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77046 (_ BitVec 32)) Bool)

(assert (=> b!1191971 (= res!792980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542009 mask!1564))))

(assert (=> b!1191971 (= lt!542009 (array!77047 (store (arr!37169 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37706 _keys!1208)))))

(declare-fun b!1191972 () Bool)

(declare-fun res!792977 () Bool)

(assert (=> b!1191972 (=> (not res!792977) (not e!677578))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1191972 (= res!792977 (and (= (size!37707 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37706 _keys!1208) (size!37707 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191973 () Bool)

(assert (=> b!1191973 (= e!677580 (and e!677581 mapRes!47039))))

(declare-fun condMapEmpty!47039 () Bool)

(declare-fun mapDefault!47039 () ValueCell!14361)

(assert (=> b!1191973 (= condMapEmpty!47039 (= (arr!37170 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14361)) mapDefault!47039)))))

(declare-fun b!1191974 () Bool)

(declare-fun res!792988 () Bool)

(assert (=> b!1191974 (=> (not res!792988) (not e!677578))))

(assert (=> b!1191974 (= res!792988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191975 () Bool)

(declare-fun e!677577 () Bool)

(assert (=> b!1191975 (= e!677577 true)))

(declare-fun zeroValue!944 () V!45315)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!45315)

(declare-fun lt!542005 () array!77048)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19582 0))(
  ( (tuple2!19583 (_1!9801 (_ BitVec 64)) (_2!9801 V!45315)) )
))
(declare-datatypes ((List!26346 0))(
  ( (Nil!26343) (Cons!26342 (h!27551 tuple2!19582) (t!38956 List!26346)) )
))
(declare-datatypes ((ListLongMap!17563 0))(
  ( (ListLongMap!17564 (toList!8797 List!26346)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5211 (array!77046 array!77048 (_ BitVec 32) (_ BitVec 32) V!45315 V!45315 (_ BitVec 32) Int) ListLongMap!17563)

(declare-fun -!1776 (ListLongMap!17563 (_ BitVec 64)) ListLongMap!17563)

(assert (=> b!1191975 (= (getCurrentListMapNoExtraKeys!5211 lt!542009 lt!542005 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1776 (getCurrentListMapNoExtraKeys!5211 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39486 0))(
  ( (Unit!39487) )
))
(declare-fun lt!542010 () Unit!39486)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!982 (array!77046 array!77048 (_ BitVec 32) (_ BitVec 32) V!45315 V!45315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39486)

(assert (=> b!1191975 (= lt!542010 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!982 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191976 () Bool)

(declare-fun res!792981 () Bool)

(assert (=> b!1191976 (=> (not res!792981) (not e!677578))))

(assert (=> b!1191976 (= res!792981 (= (select (arr!37169 _keys!1208) i!673) k0!934))))

(declare-fun b!1191977 () Bool)

(assert (=> b!1191977 (= e!677576 tp_is_empty!30141)))

(declare-fun b!1191978 () Bool)

(declare-fun res!792986 () Bool)

(assert (=> b!1191978 (=> (not res!792986) (not e!677574))))

(assert (=> b!1191978 (= res!792986 (arrayNoDuplicates!0 lt!542009 #b00000000000000000000000000000000 Nil!26342))))

(declare-fun b!1191979 () Bool)

(declare-fun res!792983 () Bool)

(assert (=> b!1191979 (=> (not res!792983) (not e!677578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191979 (= res!792983 (validMask!0 mask!1564))))

(declare-fun b!1191980 () Bool)

(declare-fun res!792985 () Bool)

(assert (=> b!1191980 (=> (not res!792985) (not e!677578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191980 (= res!792985 (validKeyInArray!0 k0!934))))

(declare-fun b!1191981 () Bool)

(declare-fun e!677579 () Bool)

(assert (=> b!1191981 (= e!677574 (not e!677579))))

(declare-fun res!792984 () Bool)

(assert (=> b!1191981 (=> res!792984 e!677579)))

(assert (=> b!1191981 (= res!792984 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191981 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542006 () Unit!39486)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77046 (_ BitVec 64) (_ BitVec 32)) Unit!39486)

(assert (=> b!1191981 (= lt!542006 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1191982 () Bool)

(assert (=> b!1191982 (= e!677579 e!677577)))

(declare-fun res!792982 () Bool)

(assert (=> b!1191982 (=> res!792982 e!677577)))

(assert (=> b!1191982 (= res!792982 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542008 () ListLongMap!17563)

(assert (=> b!1191982 (= lt!542008 (getCurrentListMapNoExtraKeys!5211 lt!542009 lt!542005 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3154 (Int (_ BitVec 64)) V!45315)

(assert (=> b!1191982 (= lt!542005 (array!77049 (store (arr!37170 _values!996) i!673 (ValueCellFull!14361 (dynLambda!3154 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37707 _values!996)))))

(declare-fun lt!542007 () ListLongMap!17563)

(assert (=> b!1191982 (= lt!542007 (getCurrentListMapNoExtraKeys!5211 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!47039 () Bool)

(assert (=> mapIsEmpty!47039 mapRes!47039))

(assert (= (and start!100068 res!792978) b!1191979))

(assert (= (and b!1191979 res!792983) b!1191972))

(assert (= (and b!1191972 res!792977) b!1191974))

(assert (= (and b!1191974 res!792988) b!1191970))

(assert (= (and b!1191970 res!792979) b!1191968))

(assert (= (and b!1191968 res!792987) b!1191980))

(assert (= (and b!1191980 res!792985) b!1191976))

(assert (= (and b!1191976 res!792981) b!1191971))

(assert (= (and b!1191971 res!792980) b!1191978))

(assert (= (and b!1191978 res!792986) b!1191981))

(assert (= (and b!1191981 (not res!792984)) b!1191982))

(assert (= (and b!1191982 (not res!792982)) b!1191975))

(assert (= (and b!1191973 condMapEmpty!47039) mapIsEmpty!47039))

(assert (= (and b!1191973 (not condMapEmpty!47039)) mapNonEmpty!47039))

(get-info :version)

(assert (= (and mapNonEmpty!47039 ((_ is ValueCellFull!14361) mapValue!47039)) b!1191977))

(assert (= (and b!1191973 ((_ is ValueCellFull!14361) mapDefault!47039)) b!1191969))

(assert (= start!100068 b!1191973))

(declare-fun b_lambda!20773 () Bool)

(assert (=> (not b_lambda!20773) (not b!1191982)))

(declare-fun t!38954 () Bool)

(declare-fun tb!10431 () Bool)

(assert (=> (and start!100068 (= defaultEntry!1004 defaultEntry!1004) t!38954) tb!10431))

(declare-fun result!21421 () Bool)

(assert (=> tb!10431 (= result!21421 tp_is_empty!30141)))

(assert (=> b!1191982 t!38954))

(declare-fun b_and!42105 () Bool)

(assert (= b_and!42103 (and (=> t!38954 result!21421) b_and!42105)))

(declare-fun m!1100423 () Bool)

(assert (=> b!1191979 m!1100423))

(declare-fun m!1100425 () Bool)

(assert (=> b!1191974 m!1100425))

(declare-fun m!1100427 () Bool)

(assert (=> b!1191980 m!1100427))

(declare-fun m!1100429 () Bool)

(assert (=> b!1191975 m!1100429))

(declare-fun m!1100431 () Bool)

(assert (=> b!1191975 m!1100431))

(assert (=> b!1191975 m!1100431))

(declare-fun m!1100433 () Bool)

(assert (=> b!1191975 m!1100433))

(declare-fun m!1100435 () Bool)

(assert (=> b!1191975 m!1100435))

(declare-fun m!1100437 () Bool)

(assert (=> b!1191978 m!1100437))

(declare-fun m!1100439 () Bool)

(assert (=> b!1191970 m!1100439))

(declare-fun m!1100441 () Bool)

(assert (=> start!100068 m!1100441))

(declare-fun m!1100443 () Bool)

(assert (=> start!100068 m!1100443))

(declare-fun m!1100445 () Bool)

(assert (=> b!1191976 m!1100445))

(declare-fun m!1100447 () Bool)

(assert (=> mapNonEmpty!47039 m!1100447))

(declare-fun m!1100449 () Bool)

(assert (=> b!1191982 m!1100449))

(declare-fun m!1100451 () Bool)

(assert (=> b!1191982 m!1100451))

(declare-fun m!1100453 () Bool)

(assert (=> b!1191982 m!1100453))

(declare-fun m!1100455 () Bool)

(assert (=> b!1191982 m!1100455))

(declare-fun m!1100457 () Bool)

(assert (=> b!1191981 m!1100457))

(declare-fun m!1100459 () Bool)

(assert (=> b!1191981 m!1100459))

(declare-fun m!1100461 () Bool)

(assert (=> b!1191971 m!1100461))

(declare-fun m!1100463 () Bool)

(assert (=> b!1191971 m!1100463))

(check-sat (not b!1191982) tp_is_empty!30141 (not b!1191975) (not b!1191974) (not b!1191971) (not b!1191970) (not b_lambda!20773) (not b!1191980) (not mapNonEmpty!47039) (not b!1191981) (not b!1191978) (not start!100068) (not b!1191979) b_and!42105 (not b_next!25611))
(check-sat b_and!42105 (not b_next!25611))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99966 () Bool)

(assert start!99966)

(declare-fun b_free!25509 () Bool)

(declare-fun b_next!25509 () Bool)

(assert (=> start!99966 (= b_free!25509 (not b_next!25509))))

(declare-fun tp!89242 () Bool)

(declare-fun b_and!41899 () Bool)

(assert (=> start!99966 (= tp!89242 b_and!41899)))

(declare-fun b!1189571 () Bool)

(declare-fun res!791150 () Bool)

(declare-fun e!676352 () Bool)

(assert (=> b!1189571 (=> (not res!791150) (not e!676352))))

(declare-datatypes ((array!76844 0))(
  ( (array!76845 (arr!37068 (Array (_ BitVec 32) (_ BitVec 64))) (size!37605 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76844)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1189571 (= res!791150 (= (select (arr!37068 _keys!1208) i!673) k0!934))))

(declare-fun b!1189572 () Bool)

(declare-fun e!676353 () Bool)

(assert (=> b!1189572 (= e!676352 e!676353)))

(declare-fun res!791143 () Bool)

(assert (=> b!1189572 (=> (not res!791143) (not e!676353))))

(declare-fun lt!541089 () array!76844)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76844 (_ BitVec 32)) Bool)

(assert (=> b!1189572 (= res!791143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541089 mask!1564))))

(assert (=> b!1189572 (= lt!541089 (array!76845 (store (arr!37068 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37605 _keys!1208)))))

(declare-fun b!1189573 () Bool)

(declare-fun e!676357 () Bool)

(declare-fun e!676351 () Bool)

(assert (=> b!1189573 (= e!676357 e!676351)))

(declare-fun res!791141 () Bool)

(assert (=> b!1189573 (=> res!791141 e!676351)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1189573 (= res!791141 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45179 0))(
  ( (V!45180 (val!15076 Int)) )
))
(declare-fun zeroValue!944 () V!45179)

(declare-datatypes ((ValueCell!14310 0))(
  ( (ValueCellFull!14310 (v!17715 V!45179)) (EmptyCell!14310) )
))
(declare-datatypes ((array!76846 0))(
  ( (array!76847 (arr!37069 (Array (_ BitVec 32) ValueCell!14310)) (size!37606 (_ BitVec 32))) )
))
(declare-fun lt!541091 () array!76846)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19496 0))(
  ( (tuple2!19497 (_1!9758 (_ BitVec 64)) (_2!9758 V!45179)) )
))
(declare-datatypes ((List!26255 0))(
  ( (Nil!26252) (Cons!26251 (h!27460 tuple2!19496) (t!38763 List!26255)) )
))
(declare-datatypes ((ListLongMap!17477 0))(
  ( (ListLongMap!17478 (toList!8754 List!26255)) )
))
(declare-fun lt!541090 () ListLongMap!17477)

(declare-fun minValue!944 () V!45179)

(declare-fun getCurrentListMapNoExtraKeys!5168 (array!76844 array!76846 (_ BitVec 32) (_ BitVec 32) V!45179 V!45179 (_ BitVec 32) Int) ListLongMap!17477)

(assert (=> b!1189573 (= lt!541090 (getCurrentListMapNoExtraKeys!5168 lt!541089 lt!541091 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76846)

(declare-fun dynLambda!3120 (Int (_ BitVec 64)) V!45179)

(assert (=> b!1189573 (= lt!541091 (array!76847 (store (arr!37069 _values!996) i!673 (ValueCellFull!14310 (dynLambda!3120 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37606 _values!996)))))

(declare-fun lt!541087 () ListLongMap!17477)

(assert (=> b!1189573 (= lt!541087 (getCurrentListMapNoExtraKeys!5168 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189574 () Bool)

(declare-fun res!791151 () Bool)

(assert (=> b!1189574 (=> (not res!791151) (not e!676352))))

(assert (=> b!1189574 (= res!791151 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37605 _keys!1208))))))

(declare-fun b!1189575 () Bool)

(declare-fun res!791144 () Bool)

(assert (=> b!1189575 (=> (not res!791144) (not e!676352))))

(assert (=> b!1189575 (= res!791144 (and (= (size!37606 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37605 _keys!1208) (size!37606 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189576 () Bool)

(declare-fun e!676356 () Bool)

(declare-fun tp_is_empty!30039 () Bool)

(assert (=> b!1189576 (= e!676356 tp_is_empty!30039)))

(declare-fun b!1189577 () Bool)

(assert (=> b!1189577 (= e!676351 true)))

(declare-fun -!1736 (ListLongMap!17477 (_ BitVec 64)) ListLongMap!17477)

(assert (=> b!1189577 (= (getCurrentListMapNoExtraKeys!5168 lt!541089 lt!541091 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1736 (getCurrentListMapNoExtraKeys!5168 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39400 0))(
  ( (Unit!39401) )
))
(declare-fun lt!541088 () Unit!39400)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!942 (array!76844 array!76846 (_ BitVec 32) (_ BitVec 32) V!45179 V!45179 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39400)

(assert (=> b!1189577 (= lt!541088 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!942 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189578 () Bool)

(declare-fun res!791148 () Bool)

(assert (=> b!1189578 (=> (not res!791148) (not e!676353))))

(declare-datatypes ((List!26256 0))(
  ( (Nil!26253) (Cons!26252 (h!27461 (_ BitVec 64)) (t!38764 List!26256)) )
))
(declare-fun arrayNoDuplicates!0 (array!76844 (_ BitVec 32) List!26256) Bool)

(assert (=> b!1189578 (= res!791148 (arrayNoDuplicates!0 lt!541089 #b00000000000000000000000000000000 Nil!26253))))

(declare-fun mapNonEmpty!46886 () Bool)

(declare-fun mapRes!46886 () Bool)

(declare-fun tp!89241 () Bool)

(declare-fun e!676355 () Bool)

(assert (=> mapNonEmpty!46886 (= mapRes!46886 (and tp!89241 e!676355))))

(declare-fun mapKey!46886 () (_ BitVec 32))

(declare-fun mapValue!46886 () ValueCell!14310)

(declare-fun mapRest!46886 () (Array (_ BitVec 32) ValueCell!14310))

(assert (=> mapNonEmpty!46886 (= (arr!37069 _values!996) (store mapRest!46886 mapKey!46886 mapValue!46886))))

(declare-fun b!1189580 () Bool)

(declare-fun res!791145 () Bool)

(assert (=> b!1189580 (=> (not res!791145) (not e!676352))))

(assert (=> b!1189580 (= res!791145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189581 () Bool)

(declare-fun res!791147 () Bool)

(assert (=> b!1189581 (=> (not res!791147) (not e!676352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189581 (= res!791147 (validMask!0 mask!1564))))

(declare-fun b!1189582 () Bool)

(assert (=> b!1189582 (= e!676355 tp_is_empty!30039)))

(declare-fun b!1189583 () Bool)

(declare-fun e!676350 () Bool)

(assert (=> b!1189583 (= e!676350 (and e!676356 mapRes!46886))))

(declare-fun condMapEmpty!46886 () Bool)

(declare-fun mapDefault!46886 () ValueCell!14310)

(assert (=> b!1189583 (= condMapEmpty!46886 (= (arr!37069 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14310)) mapDefault!46886)))))

(declare-fun b!1189584 () Bool)

(declare-fun res!791149 () Bool)

(assert (=> b!1189584 (=> (not res!791149) (not e!676352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189584 (= res!791149 (validKeyInArray!0 k0!934))))

(declare-fun b!1189579 () Bool)

(declare-fun res!791142 () Bool)

(assert (=> b!1189579 (=> (not res!791142) (not e!676352))))

(assert (=> b!1189579 (= res!791142 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26253))))

(declare-fun res!791152 () Bool)

(assert (=> start!99966 (=> (not res!791152) (not e!676352))))

(assert (=> start!99966 (= res!791152 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37605 _keys!1208))))))

(assert (=> start!99966 e!676352))

(assert (=> start!99966 tp_is_empty!30039))

(declare-fun array_inv!28164 (array!76844) Bool)

(assert (=> start!99966 (array_inv!28164 _keys!1208)))

(assert (=> start!99966 true))

(assert (=> start!99966 tp!89242))

(declare-fun array_inv!28165 (array!76846) Bool)

(assert (=> start!99966 (and (array_inv!28165 _values!996) e!676350)))

(declare-fun b!1189585 () Bool)

(assert (=> b!1189585 (= e!676353 (not e!676357))))

(declare-fun res!791146 () Bool)

(assert (=> b!1189585 (=> res!791146 e!676357)))

(assert (=> b!1189585 (= res!791146 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189585 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541092 () Unit!39400)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76844 (_ BitVec 64) (_ BitVec 32)) Unit!39400)

(assert (=> b!1189585 (= lt!541092 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!46886 () Bool)

(assert (=> mapIsEmpty!46886 mapRes!46886))

(assert (= (and start!99966 res!791152) b!1189581))

(assert (= (and b!1189581 res!791147) b!1189575))

(assert (= (and b!1189575 res!791144) b!1189580))

(assert (= (and b!1189580 res!791145) b!1189579))

(assert (= (and b!1189579 res!791142) b!1189574))

(assert (= (and b!1189574 res!791151) b!1189584))

(assert (= (and b!1189584 res!791149) b!1189571))

(assert (= (and b!1189571 res!791150) b!1189572))

(assert (= (and b!1189572 res!791143) b!1189578))

(assert (= (and b!1189578 res!791148) b!1189585))

(assert (= (and b!1189585 (not res!791146)) b!1189573))

(assert (= (and b!1189573 (not res!791141)) b!1189577))

(assert (= (and b!1189583 condMapEmpty!46886) mapIsEmpty!46886))

(assert (= (and b!1189583 (not condMapEmpty!46886)) mapNonEmpty!46886))

(get-info :version)

(assert (= (and mapNonEmpty!46886 ((_ is ValueCellFull!14310) mapValue!46886)) b!1189582))

(assert (= (and b!1189583 ((_ is ValueCellFull!14310) mapDefault!46886)) b!1189576))

(assert (= start!99966 b!1189583))

(declare-fun b_lambda!20671 () Bool)

(assert (=> (not b_lambda!20671) (not b!1189573)))

(declare-fun t!38762 () Bool)

(declare-fun tb!10329 () Bool)

(assert (=> (and start!99966 (= defaultEntry!1004 defaultEntry!1004) t!38762) tb!10329))

(declare-fun result!21217 () Bool)

(assert (=> tb!10329 (= result!21217 tp_is_empty!30039)))

(assert (=> b!1189573 t!38762))

(declare-fun b_and!41901 () Bool)

(assert (= b_and!41899 (and (=> t!38762 result!21217) b_and!41901)))

(declare-fun m!1098281 () Bool)

(assert (=> b!1189579 m!1098281))

(declare-fun m!1098283 () Bool)

(assert (=> b!1189580 m!1098283))

(declare-fun m!1098285 () Bool)

(assert (=> b!1189581 m!1098285))

(declare-fun m!1098287 () Bool)

(assert (=> b!1189571 m!1098287))

(declare-fun m!1098289 () Bool)

(assert (=> mapNonEmpty!46886 m!1098289))

(declare-fun m!1098291 () Bool)

(assert (=> b!1189572 m!1098291))

(declare-fun m!1098293 () Bool)

(assert (=> b!1189572 m!1098293))

(declare-fun m!1098295 () Bool)

(assert (=> b!1189585 m!1098295))

(declare-fun m!1098297 () Bool)

(assert (=> b!1189585 m!1098297))

(declare-fun m!1098299 () Bool)

(assert (=> start!99966 m!1098299))

(declare-fun m!1098301 () Bool)

(assert (=> start!99966 m!1098301))

(declare-fun m!1098303 () Bool)

(assert (=> b!1189577 m!1098303))

(declare-fun m!1098305 () Bool)

(assert (=> b!1189577 m!1098305))

(assert (=> b!1189577 m!1098305))

(declare-fun m!1098307 () Bool)

(assert (=> b!1189577 m!1098307))

(declare-fun m!1098309 () Bool)

(assert (=> b!1189577 m!1098309))

(declare-fun m!1098311 () Bool)

(assert (=> b!1189573 m!1098311))

(declare-fun m!1098313 () Bool)

(assert (=> b!1189573 m!1098313))

(declare-fun m!1098315 () Bool)

(assert (=> b!1189573 m!1098315))

(declare-fun m!1098317 () Bool)

(assert (=> b!1189573 m!1098317))

(declare-fun m!1098319 () Bool)

(assert (=> b!1189584 m!1098319))

(declare-fun m!1098321 () Bool)

(assert (=> b!1189578 m!1098321))

(check-sat (not start!99966) (not b_lambda!20671) (not b!1189585) (not b!1189584) (not b_next!25509) (not b!1189579) (not b!1189580) (not b!1189577) (not b!1189572) (not b!1189581) (not b!1189578) (not mapNonEmpty!46886) (not b!1189573) b_and!41901 tp_is_empty!30039)
(check-sat b_and!41901 (not b_next!25509))

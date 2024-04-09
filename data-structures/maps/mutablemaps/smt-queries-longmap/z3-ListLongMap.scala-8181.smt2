; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99990 () Bool)

(assert start!99990)

(declare-fun b_free!25533 () Bool)

(declare-fun b_next!25533 () Bool)

(assert (=> start!99990 (= b_free!25533 (not b_next!25533))))

(declare-fun tp!89314 () Bool)

(declare-fun b_and!41947 () Bool)

(assert (=> start!99990 (= tp!89314 b_and!41947)))

(declare-fun b!1190135 () Bool)

(declare-fun e!676643 () Bool)

(declare-fun e!676642 () Bool)

(assert (=> b!1190135 (= e!676643 e!676642)))

(declare-fun res!791579 () Bool)

(assert (=> b!1190135 (=> (not res!791579) (not e!676642))))

(declare-datatypes ((array!76892 0))(
  ( (array!76893 (arr!37092 (Array (_ BitVec 32) (_ BitVec 64))) (size!37629 (_ BitVec 32))) )
))
(declare-fun lt!541305 () array!76892)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76892 (_ BitVec 32)) Bool)

(assert (=> b!1190135 (= res!791579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541305 mask!1564))))

(declare-fun _keys!1208 () array!76892)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190135 (= lt!541305 (array!76893 (store (arr!37092 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37629 _keys!1208)))))

(declare-fun b!1190136 () Bool)

(declare-fun res!791574 () Bool)

(assert (=> b!1190136 (=> (not res!791574) (not e!676643))))

(assert (=> b!1190136 (= res!791574 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37629 _keys!1208))))))

(declare-fun b!1190137 () Bool)

(declare-fun e!676639 () Bool)

(declare-fun e!676640 () Bool)

(declare-fun mapRes!46922 () Bool)

(assert (=> b!1190137 (= e!676639 (and e!676640 mapRes!46922))))

(declare-fun condMapEmpty!46922 () Bool)

(declare-datatypes ((V!45211 0))(
  ( (V!45212 (val!15088 Int)) )
))
(declare-datatypes ((ValueCell!14322 0))(
  ( (ValueCellFull!14322 (v!17727 V!45211)) (EmptyCell!14322) )
))
(declare-datatypes ((array!76894 0))(
  ( (array!76895 (arr!37093 (Array (_ BitVec 32) ValueCell!14322)) (size!37630 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76894)

(declare-fun mapDefault!46922 () ValueCell!14322)

(assert (=> b!1190137 (= condMapEmpty!46922 (= (arr!37093 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14322)) mapDefault!46922)))))

(declare-fun mapIsEmpty!46922 () Bool)

(assert (=> mapIsEmpty!46922 mapRes!46922))

(declare-fun b!1190138 () Bool)

(declare-fun res!791576 () Bool)

(assert (=> b!1190138 (=> (not res!791576) (not e!676643))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1190138 (= res!791576 (and (= (size!37630 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37629 _keys!1208) (size!37630 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190139 () Bool)

(declare-fun res!791582 () Bool)

(assert (=> b!1190139 (=> (not res!791582) (not e!676642))))

(declare-datatypes ((List!26279 0))(
  ( (Nil!26276) (Cons!26275 (h!27484 (_ BitVec 64)) (t!38811 List!26279)) )
))
(declare-fun arrayNoDuplicates!0 (array!76892 (_ BitVec 32) List!26279) Bool)

(assert (=> b!1190139 (= res!791582 (arrayNoDuplicates!0 lt!541305 #b00000000000000000000000000000000 Nil!26276))))

(declare-fun b!1190140 () Bool)

(declare-fun e!676641 () Bool)

(assert (=> b!1190140 (= e!676642 (not e!676641))))

(declare-fun res!791580 () Bool)

(assert (=> b!1190140 (=> res!791580 e!676641)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1190140 (= res!791580 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190140 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39424 0))(
  ( (Unit!39425) )
))
(declare-fun lt!541303 () Unit!39424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76892 (_ BitVec 64) (_ BitVec 32)) Unit!39424)

(assert (=> b!1190140 (= lt!541303 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1190141 () Bool)

(declare-fun e!676644 () Bool)

(declare-fun tp_is_empty!30063 () Bool)

(assert (=> b!1190141 (= e!676644 tp_is_empty!30063)))

(declare-fun b!1190142 () Bool)

(assert (=> b!1190142 (= e!676640 tp_is_empty!30063)))

(declare-fun mapNonEmpty!46922 () Bool)

(declare-fun tp!89313 () Bool)

(assert (=> mapNonEmpty!46922 (= mapRes!46922 (and tp!89313 e!676644))))

(declare-fun mapValue!46922 () ValueCell!14322)

(declare-fun mapRest!46922 () (Array (_ BitVec 32) ValueCell!14322))

(declare-fun mapKey!46922 () (_ BitVec 32))

(assert (=> mapNonEmpty!46922 (= (arr!37093 _values!996) (store mapRest!46922 mapKey!46922 mapValue!46922))))

(declare-fun b!1190143 () Bool)

(declare-fun e!676638 () Bool)

(assert (=> b!1190143 (= e!676638 true)))

(declare-fun zeroValue!944 () V!45211)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541308 () array!76894)

(declare-fun minValue!944 () V!45211)

(declare-datatypes ((tuple2!19520 0))(
  ( (tuple2!19521 (_1!9770 (_ BitVec 64)) (_2!9770 V!45211)) )
))
(declare-datatypes ((List!26280 0))(
  ( (Nil!26277) (Cons!26276 (h!27485 tuple2!19520) (t!38812 List!26280)) )
))
(declare-datatypes ((ListLongMap!17501 0))(
  ( (ListLongMap!17502 (toList!8766 List!26280)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5180 (array!76892 array!76894 (_ BitVec 32) (_ BitVec 32) V!45211 V!45211 (_ BitVec 32) Int) ListLongMap!17501)

(declare-fun -!1748 (ListLongMap!17501 (_ BitVec 64)) ListLongMap!17501)

(assert (=> b!1190143 (= (getCurrentListMapNoExtraKeys!5180 lt!541305 lt!541308 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1748 (getCurrentListMapNoExtraKeys!5180 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!541304 () Unit!39424)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!954 (array!76892 array!76894 (_ BitVec 32) (_ BitVec 32) V!45211 V!45211 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39424)

(assert (=> b!1190143 (= lt!541304 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!954 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!791573 () Bool)

(assert (=> start!99990 (=> (not res!791573) (not e!676643))))

(assert (=> start!99990 (= res!791573 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37629 _keys!1208))))))

(assert (=> start!99990 e!676643))

(assert (=> start!99990 tp_is_empty!30063))

(declare-fun array_inv!28184 (array!76892) Bool)

(assert (=> start!99990 (array_inv!28184 _keys!1208)))

(assert (=> start!99990 true))

(assert (=> start!99990 tp!89314))

(declare-fun array_inv!28185 (array!76894) Bool)

(assert (=> start!99990 (and (array_inv!28185 _values!996) e!676639)))

(declare-fun b!1190144 () Bool)

(assert (=> b!1190144 (= e!676641 e!676638)))

(declare-fun res!791583 () Bool)

(assert (=> b!1190144 (=> res!791583 e!676638)))

(assert (=> b!1190144 (= res!791583 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541307 () ListLongMap!17501)

(assert (=> b!1190144 (= lt!541307 (getCurrentListMapNoExtraKeys!5180 lt!541305 lt!541308 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3129 (Int (_ BitVec 64)) V!45211)

(assert (=> b!1190144 (= lt!541308 (array!76895 (store (arr!37093 _values!996) i!673 (ValueCellFull!14322 (dynLambda!3129 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37630 _values!996)))))

(declare-fun lt!541306 () ListLongMap!17501)

(assert (=> b!1190144 (= lt!541306 (getCurrentListMapNoExtraKeys!5180 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190145 () Bool)

(declare-fun res!791581 () Bool)

(assert (=> b!1190145 (=> (not res!791581) (not e!676643))))

(assert (=> b!1190145 (= res!791581 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26276))))

(declare-fun b!1190146 () Bool)

(declare-fun res!791577 () Bool)

(assert (=> b!1190146 (=> (not res!791577) (not e!676643))))

(assert (=> b!1190146 (= res!791577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190147 () Bool)

(declare-fun res!791578 () Bool)

(assert (=> b!1190147 (=> (not res!791578) (not e!676643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190147 (= res!791578 (validMask!0 mask!1564))))

(declare-fun b!1190148 () Bool)

(declare-fun res!791575 () Bool)

(assert (=> b!1190148 (=> (not res!791575) (not e!676643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190148 (= res!791575 (validKeyInArray!0 k0!934))))

(declare-fun b!1190149 () Bool)

(declare-fun res!791584 () Bool)

(assert (=> b!1190149 (=> (not res!791584) (not e!676643))))

(assert (=> b!1190149 (= res!791584 (= (select (arr!37092 _keys!1208) i!673) k0!934))))

(assert (= (and start!99990 res!791573) b!1190147))

(assert (= (and b!1190147 res!791578) b!1190138))

(assert (= (and b!1190138 res!791576) b!1190146))

(assert (= (and b!1190146 res!791577) b!1190145))

(assert (= (and b!1190145 res!791581) b!1190136))

(assert (= (and b!1190136 res!791574) b!1190148))

(assert (= (and b!1190148 res!791575) b!1190149))

(assert (= (and b!1190149 res!791584) b!1190135))

(assert (= (and b!1190135 res!791579) b!1190139))

(assert (= (and b!1190139 res!791582) b!1190140))

(assert (= (and b!1190140 (not res!791580)) b!1190144))

(assert (= (and b!1190144 (not res!791583)) b!1190143))

(assert (= (and b!1190137 condMapEmpty!46922) mapIsEmpty!46922))

(assert (= (and b!1190137 (not condMapEmpty!46922)) mapNonEmpty!46922))

(get-info :version)

(assert (= (and mapNonEmpty!46922 ((_ is ValueCellFull!14322) mapValue!46922)) b!1190141))

(assert (= (and b!1190137 ((_ is ValueCellFull!14322) mapDefault!46922)) b!1190142))

(assert (= start!99990 b!1190137))

(declare-fun b_lambda!20695 () Bool)

(assert (=> (not b_lambda!20695) (not b!1190144)))

(declare-fun t!38810 () Bool)

(declare-fun tb!10353 () Bool)

(assert (=> (and start!99990 (= defaultEntry!1004 defaultEntry!1004) t!38810) tb!10353))

(declare-fun result!21265 () Bool)

(assert (=> tb!10353 (= result!21265 tp_is_empty!30063)))

(assert (=> b!1190144 t!38810))

(declare-fun b_and!41949 () Bool)

(assert (= b_and!41947 (and (=> t!38810 result!21265) b_and!41949)))

(declare-fun m!1098785 () Bool)

(assert (=> b!1190135 m!1098785))

(declare-fun m!1098787 () Bool)

(assert (=> b!1190135 m!1098787))

(declare-fun m!1098789 () Bool)

(assert (=> b!1190149 m!1098789))

(declare-fun m!1098791 () Bool)

(assert (=> b!1190145 m!1098791))

(declare-fun m!1098793 () Bool)

(assert (=> b!1190147 m!1098793))

(declare-fun m!1098795 () Bool)

(assert (=> start!99990 m!1098795))

(declare-fun m!1098797 () Bool)

(assert (=> start!99990 m!1098797))

(declare-fun m!1098799 () Bool)

(assert (=> b!1190139 m!1098799))

(declare-fun m!1098801 () Bool)

(assert (=> b!1190148 m!1098801))

(declare-fun m!1098803 () Bool)

(assert (=> b!1190146 m!1098803))

(declare-fun m!1098805 () Bool)

(assert (=> b!1190144 m!1098805))

(declare-fun m!1098807 () Bool)

(assert (=> b!1190144 m!1098807))

(declare-fun m!1098809 () Bool)

(assert (=> b!1190144 m!1098809))

(declare-fun m!1098811 () Bool)

(assert (=> b!1190144 m!1098811))

(declare-fun m!1098813 () Bool)

(assert (=> b!1190143 m!1098813))

(declare-fun m!1098815 () Bool)

(assert (=> b!1190143 m!1098815))

(assert (=> b!1190143 m!1098815))

(declare-fun m!1098817 () Bool)

(assert (=> b!1190143 m!1098817))

(declare-fun m!1098819 () Bool)

(assert (=> b!1190143 m!1098819))

(declare-fun m!1098821 () Bool)

(assert (=> mapNonEmpty!46922 m!1098821))

(declare-fun m!1098823 () Bool)

(assert (=> b!1190140 m!1098823))

(declare-fun m!1098825 () Bool)

(assert (=> b!1190140 m!1098825))

(check-sat tp_is_empty!30063 (not b!1190140) (not b!1190146) (not b_lambda!20695) (not b!1190144) (not b!1190145) (not b!1190148) (not mapNonEmpty!46922) b_and!41949 (not b!1190139) (not start!99990) (not b!1190135) (not b!1190147) (not b!1190143) (not b_next!25533))
(check-sat b_and!41949 (not b_next!25533))

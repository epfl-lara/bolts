; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101700 () Bool)

(assert start!101700)

(declare-fun b_free!26385 () Bool)

(declare-fun b_next!26385 () Bool)

(assert (=> start!101700 (= b_free!26385 (not b_next!26385))))

(declare-fun tp!92199 () Bool)

(declare-fun b_and!44023 () Bool)

(assert (=> start!101700 (= tp!92199 b_and!44023)))

(declare-fun b!1223086 () Bool)

(declare-fun res!812776 () Bool)

(declare-fun e!694666 () Bool)

(assert (=> b!1223086 (=> (not res!812776) (not e!694666))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1223086 (= res!812776 (validMask!0 mask!1564))))

(declare-fun b!1223087 () Bool)

(declare-fun res!812775 () Bool)

(assert (=> b!1223087 (=> (not res!812775) (not e!694666))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78936 0))(
  ( (array!78937 (arr!38092 (Array (_ BitVec 32) (_ BitVec 64))) (size!38629 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78936)

(assert (=> b!1223087 (= res!812775 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38629 _keys!1208))))))

(declare-fun b!1223088 () Bool)

(declare-fun res!812770 () Bool)

(assert (=> b!1223088 (=> (not res!812770) (not e!694666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78936 (_ BitVec 32)) Bool)

(assert (=> b!1223088 (= res!812770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1223089 () Bool)

(declare-fun res!812768 () Bool)

(assert (=> b!1223089 (=> (not res!812768) (not e!694666))))

(declare-datatypes ((List!27054 0))(
  ( (Nil!27051) (Cons!27050 (h!28259 (_ BitVec 64)) (t!40426 List!27054)) )
))
(declare-fun arrayNoDuplicates!0 (array!78936 (_ BitVec 32) List!27054) Bool)

(assert (=> b!1223089 (= res!812768 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27051))))

(declare-fun b!1223090 () Bool)

(declare-fun e!694660 () Bool)

(declare-fun e!694663 () Bool)

(assert (=> b!1223090 (= e!694660 (not e!694663))))

(declare-fun res!812773 () Bool)

(assert (=> b!1223090 (=> res!812773 e!694663)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1223090 (= res!812773 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223090 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40440 0))(
  ( (Unit!40441) )
))
(declare-fun lt!556605 () Unit!40440)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78936 (_ BitVec 64) (_ BitVec 32)) Unit!40440)

(assert (=> b!1223090 (= lt!556605 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1223091 () Bool)

(declare-fun res!812771 () Bool)

(assert (=> b!1223091 (=> (not res!812771) (not e!694660))))

(declare-fun lt!556613 () array!78936)

(assert (=> b!1223091 (= res!812771 (arrayNoDuplicates!0 lt!556613 #b00000000000000000000000000000000 Nil!27051))))

(declare-fun b!1223092 () Bool)

(assert (=> b!1223092 (= e!694666 e!694660)))

(declare-fun res!812779 () Bool)

(assert (=> b!1223092 (=> (not res!812779) (not e!694660))))

(assert (=> b!1223092 (= res!812779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556613 mask!1564))))

(assert (=> b!1223092 (= lt!556613 (array!78937 (store (arr!38092 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38629 _keys!1208)))))

(declare-fun b!1223093 () Bool)

(declare-fun e!694667 () Bool)

(declare-fun tp_is_empty!31089 () Bool)

(assert (=> b!1223093 (= e!694667 tp_is_empty!31089)))

(declare-fun b!1223094 () Bool)

(declare-fun e!694657 () Bool)

(declare-fun e!694665 () Bool)

(assert (=> b!1223094 (= e!694657 e!694665)))

(declare-fun res!812772 () Bool)

(assert (=> b!1223094 (=> res!812772 e!694665)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1223094 (= res!812772 (not (validKeyInArray!0 (select (arr!38092 _keys!1208) from!1455))))))

(declare-datatypes ((V!46579 0))(
  ( (V!46580 (val!15601 Int)) )
))
(declare-datatypes ((tuple2!20242 0))(
  ( (tuple2!20243 (_1!10131 (_ BitVec 64)) (_2!10131 V!46579)) )
))
(declare-datatypes ((List!27055 0))(
  ( (Nil!27052) (Cons!27051 (h!28260 tuple2!20242) (t!40427 List!27055)) )
))
(declare-datatypes ((ListLongMap!18223 0))(
  ( (ListLongMap!18224 (toList!9127 List!27055)) )
))
(declare-fun lt!556609 () ListLongMap!18223)

(declare-fun lt!556611 () ListLongMap!18223)

(assert (=> b!1223094 (= lt!556609 lt!556611)))

(declare-fun lt!556612 () ListLongMap!18223)

(declare-fun -!1968 (ListLongMap!18223 (_ BitVec 64)) ListLongMap!18223)

(assert (=> b!1223094 (= lt!556611 (-!1968 lt!556612 k0!934))))

(declare-fun zeroValue!944 () V!46579)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14835 0))(
  ( (ValueCellFull!14835 (v!18263 V!46579)) (EmptyCell!14835) )
))
(declare-datatypes ((array!78938 0))(
  ( (array!78939 (arr!38093 (Array (_ BitVec 32) ValueCell!14835)) (size!38630 (_ BitVec 32))) )
))
(declare-fun lt!556604 () array!78938)

(declare-fun minValue!944 () V!46579)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5525 (array!78936 array!78938 (_ BitVec 32) (_ BitVec 32) V!46579 V!46579 (_ BitVec 32) Int) ListLongMap!18223)

(assert (=> b!1223094 (= lt!556609 (getCurrentListMapNoExtraKeys!5525 lt!556613 lt!556604 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78938)

(assert (=> b!1223094 (= lt!556612 (getCurrentListMapNoExtraKeys!5525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556608 () Unit!40440)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1170 (array!78936 array!78938 (_ BitVec 32) (_ BitVec 32) V!46579 V!46579 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40440)

(assert (=> b!1223094 (= lt!556608 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1170 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1223095 () Bool)

(declare-fun e!694662 () Unit!40440)

(declare-fun Unit!40442 () Unit!40440)

(assert (=> b!1223095 (= e!694662 Unit!40442)))

(declare-fun lt!556615 () Unit!40440)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78936 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40440)

(assert (=> b!1223095 (= lt!556615 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1223095 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556607 () Unit!40440)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78936 (_ BitVec 32) (_ BitVec 32)) Unit!40440)

(assert (=> b!1223095 (= lt!556607 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1223095 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27051)))

(declare-fun lt!556617 () Unit!40440)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78936 (_ BitVec 64) (_ BitVec 32) List!27054) Unit!40440)

(assert (=> b!1223095 (= lt!556617 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27051))))

(assert (=> b!1223095 false))

(declare-fun lt!556614 () tuple2!20242)

(declare-fun lt!556606 () ListLongMap!18223)

(declare-fun b!1223096 () Bool)

(declare-fun +!4090 (ListLongMap!18223 tuple2!20242) ListLongMap!18223)

(assert (=> b!1223096 (= e!694665 (= lt!556606 (+!4090 lt!556612 lt!556614)))))

(assert (=> b!1223096 (not (= (select (arr!38092 _keys!1208) from!1455) k0!934))))

(declare-fun lt!556616 () Unit!40440)

(assert (=> b!1223096 (= lt!556616 e!694662)))

(declare-fun c!120303 () Bool)

(assert (=> b!1223096 (= c!120303 (= (select (arr!38092 _keys!1208) from!1455) k0!934))))

(declare-fun e!694661 () Bool)

(assert (=> b!1223096 e!694661))

(declare-fun res!812767 () Bool)

(assert (=> b!1223096 (=> (not res!812767) (not e!694661))))

(declare-fun lt!556610 () ListLongMap!18223)

(assert (=> b!1223096 (= res!812767 (= lt!556610 (+!4090 lt!556611 lt!556614)))))

(declare-fun lt!556603 () V!46579)

(declare-fun get!19490 (ValueCell!14835 V!46579) V!46579)

(assert (=> b!1223096 (= lt!556614 (tuple2!20243 (select (arr!38092 _keys!1208) from!1455) (get!19490 (select (arr!38093 _values!996) from!1455) lt!556603)))))

(declare-fun b!1223097 () Bool)

(declare-fun res!812766 () Bool)

(assert (=> b!1223097 (=> (not res!812766) (not e!694666))))

(assert (=> b!1223097 (= res!812766 (validKeyInArray!0 k0!934))))

(declare-fun res!812774 () Bool)

(assert (=> start!101700 (=> (not res!812774) (not e!694666))))

(assert (=> start!101700 (= res!812774 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38629 _keys!1208))))))

(assert (=> start!101700 e!694666))

(assert (=> start!101700 tp_is_empty!31089))

(declare-fun array_inv!28896 (array!78936) Bool)

(assert (=> start!101700 (array_inv!28896 _keys!1208)))

(assert (=> start!101700 true))

(assert (=> start!101700 tp!92199))

(declare-fun e!694659 () Bool)

(declare-fun array_inv!28897 (array!78938) Bool)

(assert (=> start!101700 (and (array_inv!28897 _values!996) e!694659)))

(declare-fun b!1223098 () Bool)

(declare-fun res!812777 () Bool)

(assert (=> b!1223098 (=> (not res!812777) (not e!694666))))

(assert (=> b!1223098 (= res!812777 (and (= (size!38630 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38629 _keys!1208) (size!38630 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun e!694658 () Bool)

(declare-fun b!1223099 () Bool)

(assert (=> b!1223099 (= e!694658 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1223100 () Bool)

(assert (=> b!1223100 (= e!694663 e!694657)))

(declare-fun res!812778 () Bool)

(assert (=> b!1223100 (=> res!812778 e!694657)))

(assert (=> b!1223100 (= res!812778 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1223100 (= lt!556610 (getCurrentListMapNoExtraKeys!5525 lt!556613 lt!556604 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1223100 (= lt!556604 (array!78939 (store (arr!38093 _values!996) i!673 (ValueCellFull!14835 lt!556603)) (size!38630 _values!996)))))

(declare-fun dynLambda!3421 (Int (_ BitVec 64)) V!46579)

(assert (=> b!1223100 (= lt!556603 (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1223100 (= lt!556606 (getCurrentListMapNoExtraKeys!5525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223101 () Bool)

(declare-fun res!812765 () Bool)

(assert (=> b!1223101 (=> (not res!812765) (not e!694666))))

(assert (=> b!1223101 (= res!812765 (= (select (arr!38092 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!48529 () Bool)

(declare-fun mapRes!48529 () Bool)

(assert (=> mapIsEmpty!48529 mapRes!48529))

(declare-fun b!1223102 () Bool)

(declare-fun Unit!40443 () Unit!40440)

(assert (=> b!1223102 (= e!694662 Unit!40443)))

(declare-fun mapNonEmpty!48529 () Bool)

(declare-fun tp!92198 () Bool)

(assert (=> mapNonEmpty!48529 (= mapRes!48529 (and tp!92198 e!694667))))

(declare-fun mapRest!48529 () (Array (_ BitVec 32) ValueCell!14835))

(declare-fun mapValue!48529 () ValueCell!14835)

(declare-fun mapKey!48529 () (_ BitVec 32))

(assert (=> mapNonEmpty!48529 (= (arr!38093 _values!996) (store mapRest!48529 mapKey!48529 mapValue!48529))))

(declare-fun b!1223103 () Bool)

(declare-fun e!694664 () Bool)

(assert (=> b!1223103 (= e!694664 tp_is_empty!31089)))

(declare-fun b!1223104 () Bool)

(assert (=> b!1223104 (= e!694659 (and e!694664 mapRes!48529))))

(declare-fun condMapEmpty!48529 () Bool)

(declare-fun mapDefault!48529 () ValueCell!14835)

(assert (=> b!1223104 (= condMapEmpty!48529 (= (arr!38093 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14835)) mapDefault!48529)))))

(declare-fun b!1223105 () Bool)

(assert (=> b!1223105 (= e!694661 e!694658)))

(declare-fun res!812769 () Bool)

(assert (=> b!1223105 (=> res!812769 e!694658)))

(assert (=> b!1223105 (= res!812769 (not (= (select (arr!38092 _keys!1208) from!1455) k0!934)))))

(assert (= (and start!101700 res!812774) b!1223086))

(assert (= (and b!1223086 res!812776) b!1223098))

(assert (= (and b!1223098 res!812777) b!1223088))

(assert (= (and b!1223088 res!812770) b!1223089))

(assert (= (and b!1223089 res!812768) b!1223087))

(assert (= (and b!1223087 res!812775) b!1223097))

(assert (= (and b!1223097 res!812766) b!1223101))

(assert (= (and b!1223101 res!812765) b!1223092))

(assert (= (and b!1223092 res!812779) b!1223091))

(assert (= (and b!1223091 res!812771) b!1223090))

(assert (= (and b!1223090 (not res!812773)) b!1223100))

(assert (= (and b!1223100 (not res!812778)) b!1223094))

(assert (= (and b!1223094 (not res!812772)) b!1223096))

(assert (= (and b!1223096 res!812767) b!1223105))

(assert (= (and b!1223105 (not res!812769)) b!1223099))

(assert (= (and b!1223096 c!120303) b!1223095))

(assert (= (and b!1223096 (not c!120303)) b!1223102))

(assert (= (and b!1223104 condMapEmpty!48529) mapIsEmpty!48529))

(assert (= (and b!1223104 (not condMapEmpty!48529)) mapNonEmpty!48529))

(get-info :version)

(assert (= (and mapNonEmpty!48529 ((_ is ValueCellFull!14835) mapValue!48529)) b!1223093))

(assert (= (and b!1223104 ((_ is ValueCellFull!14835) mapDefault!48529)) b!1223103))

(assert (= start!101700 b!1223104))

(declare-fun b_lambda!22337 () Bool)

(assert (=> (not b_lambda!22337) (not b!1223100)))

(declare-fun t!40425 () Bool)

(declare-fun tb!11193 () Bool)

(assert (=> (and start!101700 (= defaultEntry!1004 defaultEntry!1004) t!40425) tb!11193))

(declare-fun result!22989 () Bool)

(assert (=> tb!11193 (= result!22989 tp_is_empty!31089)))

(assert (=> b!1223100 t!40425))

(declare-fun b_and!44025 () Bool)

(assert (= b_and!44023 (and (=> t!40425 result!22989) b_and!44025)))

(declare-fun m!1128085 () Bool)

(assert (=> b!1223091 m!1128085))

(declare-fun m!1128087 () Bool)

(assert (=> b!1223088 m!1128087))

(declare-fun m!1128089 () Bool)

(assert (=> b!1223096 m!1128089))

(declare-fun m!1128091 () Bool)

(assert (=> b!1223096 m!1128091))

(assert (=> b!1223096 m!1128089))

(declare-fun m!1128093 () Bool)

(assert (=> b!1223096 m!1128093))

(declare-fun m!1128095 () Bool)

(assert (=> b!1223096 m!1128095))

(declare-fun m!1128097 () Bool)

(assert (=> b!1223096 m!1128097))

(declare-fun m!1128099 () Bool)

(assert (=> b!1223086 m!1128099))

(declare-fun m!1128101 () Bool)

(assert (=> b!1223092 m!1128101))

(declare-fun m!1128103 () Bool)

(assert (=> b!1223092 m!1128103))

(declare-fun m!1128105 () Bool)

(assert (=> b!1223095 m!1128105))

(declare-fun m!1128107 () Bool)

(assert (=> b!1223095 m!1128107))

(declare-fun m!1128109 () Bool)

(assert (=> b!1223095 m!1128109))

(declare-fun m!1128111 () Bool)

(assert (=> b!1223095 m!1128111))

(declare-fun m!1128113 () Bool)

(assert (=> b!1223095 m!1128113))

(declare-fun m!1128115 () Bool)

(assert (=> b!1223097 m!1128115))

(declare-fun m!1128117 () Bool)

(assert (=> b!1223100 m!1128117))

(declare-fun m!1128119 () Bool)

(assert (=> b!1223100 m!1128119))

(declare-fun m!1128121 () Bool)

(assert (=> b!1223100 m!1128121))

(declare-fun m!1128123 () Bool)

(assert (=> b!1223100 m!1128123))

(declare-fun m!1128125 () Bool)

(assert (=> start!101700 m!1128125))

(declare-fun m!1128127 () Bool)

(assert (=> start!101700 m!1128127))

(assert (=> b!1223105 m!1128097))

(declare-fun m!1128129 () Bool)

(assert (=> b!1223099 m!1128129))

(declare-fun m!1128131 () Bool)

(assert (=> b!1223101 m!1128131))

(declare-fun m!1128133 () Bool)

(assert (=> mapNonEmpty!48529 m!1128133))

(declare-fun m!1128135 () Bool)

(assert (=> b!1223089 m!1128135))

(declare-fun m!1128137 () Bool)

(assert (=> b!1223090 m!1128137))

(declare-fun m!1128139 () Bool)

(assert (=> b!1223090 m!1128139))

(declare-fun m!1128141 () Bool)

(assert (=> b!1223094 m!1128141))

(declare-fun m!1128143 () Bool)

(assert (=> b!1223094 m!1128143))

(declare-fun m!1128145 () Bool)

(assert (=> b!1223094 m!1128145))

(declare-fun m!1128147 () Bool)

(assert (=> b!1223094 m!1128147))

(assert (=> b!1223094 m!1128097))

(declare-fun m!1128149 () Bool)

(assert (=> b!1223094 m!1128149))

(assert (=> b!1223094 m!1128097))

(check-sat (not b!1223097) (not b_next!26385) (not b!1223090) (not b!1223089) (not b!1223092) (not b!1223095) (not start!101700) (not b!1223086) tp_is_empty!31089 (not b!1223094) (not b_lambda!22337) (not b!1223091) (not mapNonEmpty!48529) (not b!1223088) (not b!1223096) (not b!1223099) (not b!1223100) b_and!44025)
(check-sat b_and!44025 (not b_next!26385))
(get-model)

(declare-fun b_lambda!22341 () Bool)

(assert (= b_lambda!22337 (or (and start!101700 b_free!26385) b_lambda!22341)))

(check-sat (not b!1223097) (not b_next!26385) (not b!1223090) (not b!1223089) (not b!1223092) (not b!1223095) (not start!101700) (not b!1223086) tp_is_empty!31089 (not b!1223094) (not b!1223091) (not mapNonEmpty!48529) (not b!1223088) (not b!1223096) (not b!1223099) b_and!44025 (not b!1223100) (not b_lambda!22341))
(check-sat b_and!44025 (not b_next!26385))
(get-model)

(declare-fun d!133847 () Bool)

(declare-fun res!812829 () Bool)

(declare-fun e!694708 () Bool)

(assert (=> d!133847 (=> res!812829 e!694708)))

(assert (=> d!133847 (= res!812829 (= (select (arr!38092 _keys!1208) i!673) k0!934))))

(assert (=> d!133847 (= (arrayContainsKey!0 _keys!1208 k0!934 i!673) e!694708)))

(declare-fun b!1223174 () Bool)

(declare-fun e!694709 () Bool)

(assert (=> b!1223174 (= e!694708 e!694709)))

(declare-fun res!812830 () Bool)

(assert (=> b!1223174 (=> (not res!812830) (not e!694709))))

(assert (=> b!1223174 (= res!812830 (bvslt (bvadd i!673 #b00000000000000000000000000000001) (size!38629 _keys!1208)))))

(declare-fun b!1223175 () Bool)

(assert (=> b!1223175 (= e!694709 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd i!673 #b00000000000000000000000000000001)))))

(assert (= (and d!133847 (not res!812829)) b!1223174))

(assert (= (and b!1223174 res!812830) b!1223175))

(assert (=> d!133847 m!1128131))

(declare-fun m!1128217 () Bool)

(assert (=> b!1223175 m!1128217))

(assert (=> b!1223099 d!133847))

(declare-fun b!1223184 () Bool)

(declare-fun e!694718 () Bool)

(declare-fun call!60750 () Bool)

(assert (=> b!1223184 (= e!694718 call!60750)))

(declare-fun b!1223185 () Bool)

(declare-fun e!694717 () Bool)

(assert (=> b!1223185 (= e!694717 call!60750)))

(declare-fun b!1223186 () Bool)

(assert (=> b!1223186 (= e!694717 e!694718)))

(declare-fun lt!556669 () (_ BitVec 64))

(assert (=> b!1223186 (= lt!556669 (select (arr!38092 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!556670 () Unit!40440)

(assert (=> b!1223186 (= lt!556670 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!556669 #b00000000000000000000000000000000))))

(assert (=> b!1223186 (arrayContainsKey!0 _keys!1208 lt!556669 #b00000000000000000000000000000000)))

(declare-fun lt!556671 () Unit!40440)

(assert (=> b!1223186 (= lt!556671 lt!556670)))

(declare-fun res!812835 () Bool)

(declare-datatypes ((SeekEntryResult!9947 0))(
  ( (MissingZero!9947 (index!42158 (_ BitVec 32))) (Found!9947 (index!42159 (_ BitVec 32))) (Intermediate!9947 (undefined!10759 Bool) (index!42160 (_ BitVec 32)) (x!107700 (_ BitVec 32))) (Undefined!9947) (MissingVacant!9947 (index!42161 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78936 (_ BitVec 32)) SeekEntryResult!9947)

(assert (=> b!1223186 (= res!812835 (= (seekEntryOrOpen!0 (select (arr!38092 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9947 #b00000000000000000000000000000000)))))

(assert (=> b!1223186 (=> (not res!812835) (not e!694718))))

(declare-fun d!133849 () Bool)

(declare-fun res!812836 () Bool)

(declare-fun e!694716 () Bool)

(assert (=> d!133849 (=> res!812836 e!694716)))

(assert (=> d!133849 (= res!812836 (bvsge #b00000000000000000000000000000000 (size!38629 _keys!1208)))))

(assert (=> d!133849 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!694716)))

(declare-fun bm!60747 () Bool)

(assert (=> bm!60747 (= call!60750 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1223187 () Bool)

(assert (=> b!1223187 (= e!694716 e!694717)))

(declare-fun c!120309 () Bool)

(assert (=> b!1223187 (= c!120309 (validKeyInArray!0 (select (arr!38092 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!133849 (not res!812836)) b!1223187))

(assert (= (and b!1223187 c!120309) b!1223186))

(assert (= (and b!1223187 (not c!120309)) b!1223185))

(assert (= (and b!1223186 res!812835) b!1223184))

(assert (= (or b!1223184 b!1223185) bm!60747))

(declare-fun m!1128219 () Bool)

(assert (=> b!1223186 m!1128219))

(declare-fun m!1128221 () Bool)

(assert (=> b!1223186 m!1128221))

(declare-fun m!1128223 () Bool)

(assert (=> b!1223186 m!1128223))

(assert (=> b!1223186 m!1128219))

(declare-fun m!1128225 () Bool)

(assert (=> b!1223186 m!1128225))

(declare-fun m!1128227 () Bool)

(assert (=> bm!60747 m!1128227))

(assert (=> b!1223187 m!1128219))

(assert (=> b!1223187 m!1128219))

(declare-fun m!1128229 () Bool)

(assert (=> b!1223187 m!1128229))

(assert (=> b!1223088 d!133849))

(declare-fun d!133851 () Bool)

(declare-fun res!812837 () Bool)

(declare-fun e!694719 () Bool)

(assert (=> d!133851 (=> res!812837 e!694719)))

(assert (=> d!133851 (= res!812837 (= (select (arr!38092 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133851 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!694719)))

(declare-fun b!1223188 () Bool)

(declare-fun e!694720 () Bool)

(assert (=> b!1223188 (= e!694719 e!694720)))

(declare-fun res!812838 () Bool)

(assert (=> b!1223188 (=> (not res!812838) (not e!694720))))

(assert (=> b!1223188 (= res!812838 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38629 _keys!1208)))))

(declare-fun b!1223189 () Bool)

(assert (=> b!1223189 (= e!694720 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133851 (not res!812837)) b!1223188))

(assert (= (and b!1223188 res!812838) b!1223189))

(assert (=> d!133851 m!1128219))

(declare-fun m!1128231 () Bool)

(assert (=> b!1223189 m!1128231))

(assert (=> b!1223090 d!133851))

(declare-fun d!133853 () Bool)

(assert (=> d!133853 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!556674 () Unit!40440)

(declare-fun choose!13 (array!78936 (_ BitVec 64) (_ BitVec 32)) Unit!40440)

(assert (=> d!133853 (= lt!556674 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133853 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133853 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!556674)))

(declare-fun bs!34405 () Bool)

(assert (= bs!34405 d!133853))

(assert (=> bs!34405 m!1128137))

(declare-fun m!1128233 () Bool)

(assert (=> bs!34405 m!1128233))

(assert (=> b!1223090 d!133853))

(declare-fun b!1223214 () Bool)

(assert (=> b!1223214 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38629 lt!556613)))))

(assert (=> b!1223214 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38630 lt!556604)))))

(declare-fun lt!556691 () ListLongMap!18223)

(declare-fun e!694735 () Bool)

(declare-fun apply!1012 (ListLongMap!18223 (_ BitVec 64)) V!46579)

(assert (=> b!1223214 (= e!694735 (= (apply!1012 lt!556691 (select (arr!38092 lt!556613) from!1455)) (get!19490 (select (arr!38093 lt!556604) from!1455) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133855 () Bool)

(declare-fun e!694737 () Bool)

(assert (=> d!133855 e!694737))

(declare-fun res!812848 () Bool)

(assert (=> d!133855 (=> (not res!812848) (not e!694737))))

(declare-fun contains!7051 (ListLongMap!18223 (_ BitVec 64)) Bool)

(assert (=> d!133855 (= res!812848 (not (contains!7051 lt!556691 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!694736 () ListLongMap!18223)

(assert (=> d!133855 (= lt!556691 e!694736)))

(declare-fun c!120321 () Bool)

(assert (=> d!133855 (= c!120321 (bvsge from!1455 (size!38629 lt!556613)))))

(assert (=> d!133855 (validMask!0 mask!1564)))

(assert (=> d!133855 (= (getCurrentListMapNoExtraKeys!5525 lt!556613 lt!556604 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!556691)))

(declare-fun b!1223215 () Bool)

(declare-fun e!694741 () Bool)

(assert (=> b!1223215 (= e!694741 (= lt!556691 (getCurrentListMapNoExtraKeys!5525 lt!556613 lt!556604 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1223216 () Bool)

(declare-fun e!694739 () ListLongMap!18223)

(assert (=> b!1223216 (= e!694736 e!694739)))

(declare-fun c!120318 () Bool)

(assert (=> b!1223216 (= c!120318 (validKeyInArray!0 (select (arr!38092 lt!556613) from!1455)))))

(declare-fun bm!60750 () Bool)

(declare-fun call!60753 () ListLongMap!18223)

(assert (=> bm!60750 (= call!60753 (getCurrentListMapNoExtraKeys!5525 lt!556613 lt!556604 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1223217 () Bool)

(declare-fun isEmpty!1004 (ListLongMap!18223) Bool)

(assert (=> b!1223217 (= e!694741 (isEmpty!1004 lt!556691))))

(declare-fun b!1223218 () Bool)

(declare-fun lt!556690 () Unit!40440)

(declare-fun lt!556693 () Unit!40440)

(assert (=> b!1223218 (= lt!556690 lt!556693)))

(declare-fun lt!556692 () ListLongMap!18223)

(declare-fun lt!556689 () (_ BitVec 64))

(declare-fun lt!556695 () V!46579)

(declare-fun lt!556694 () (_ BitVec 64))

(assert (=> b!1223218 (not (contains!7051 (+!4090 lt!556692 (tuple2!20243 lt!556694 lt!556695)) lt!556689))))

(declare-fun addStillNotContains!307 (ListLongMap!18223 (_ BitVec 64) V!46579 (_ BitVec 64)) Unit!40440)

(assert (=> b!1223218 (= lt!556693 (addStillNotContains!307 lt!556692 lt!556694 lt!556695 lt!556689))))

(assert (=> b!1223218 (= lt!556689 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1223218 (= lt!556695 (get!19490 (select (arr!38093 lt!556604) from!1455) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1223218 (= lt!556694 (select (arr!38092 lt!556613) from!1455))))

(assert (=> b!1223218 (= lt!556692 call!60753)))

(assert (=> b!1223218 (= e!694739 (+!4090 call!60753 (tuple2!20243 (select (arr!38092 lt!556613) from!1455) (get!19490 (select (arr!38093 lt!556604) from!1455) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1223219 () Bool)

(assert (=> b!1223219 (= e!694736 (ListLongMap!18224 Nil!27052))))

(declare-fun b!1223220 () Bool)

(declare-fun res!812847 () Bool)

(assert (=> b!1223220 (=> (not res!812847) (not e!694737))))

(assert (=> b!1223220 (= res!812847 (not (contains!7051 lt!556691 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1223221 () Bool)

(declare-fun e!694738 () Bool)

(assert (=> b!1223221 (= e!694738 (validKeyInArray!0 (select (arr!38092 lt!556613) from!1455)))))

(assert (=> b!1223221 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1223222 () Bool)

(declare-fun e!694740 () Bool)

(assert (=> b!1223222 (= e!694740 e!694735)))

(assert (=> b!1223222 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38629 lt!556613)))))

(declare-fun res!812850 () Bool)

(assert (=> b!1223222 (= res!812850 (contains!7051 lt!556691 (select (arr!38092 lt!556613) from!1455)))))

(assert (=> b!1223222 (=> (not res!812850) (not e!694735))))

(declare-fun b!1223223 () Bool)

(assert (=> b!1223223 (= e!694739 call!60753)))

(declare-fun b!1223224 () Bool)

(assert (=> b!1223224 (= e!694737 e!694740)))

(declare-fun c!120319 () Bool)

(assert (=> b!1223224 (= c!120319 e!694738)))

(declare-fun res!812849 () Bool)

(assert (=> b!1223224 (=> (not res!812849) (not e!694738))))

(assert (=> b!1223224 (= res!812849 (bvslt from!1455 (size!38629 lt!556613)))))

(declare-fun b!1223225 () Bool)

(assert (=> b!1223225 (= e!694740 e!694741)))

(declare-fun c!120320 () Bool)

(assert (=> b!1223225 (= c!120320 (bvslt from!1455 (size!38629 lt!556613)))))

(assert (= (and d!133855 c!120321) b!1223219))

(assert (= (and d!133855 (not c!120321)) b!1223216))

(assert (= (and b!1223216 c!120318) b!1223218))

(assert (= (and b!1223216 (not c!120318)) b!1223223))

(assert (= (or b!1223218 b!1223223) bm!60750))

(assert (= (and d!133855 res!812848) b!1223220))

(assert (= (and b!1223220 res!812847) b!1223224))

(assert (= (and b!1223224 res!812849) b!1223221))

(assert (= (and b!1223224 c!120319) b!1223222))

(assert (= (and b!1223224 (not c!120319)) b!1223225))

(assert (= (and b!1223222 res!812850) b!1223214))

(assert (= (and b!1223225 c!120320) b!1223215))

(assert (= (and b!1223225 (not c!120320)) b!1223217))

(declare-fun b_lambda!22343 () Bool)

(assert (=> (not b_lambda!22343) (not b!1223214)))

(assert (=> b!1223214 t!40425))

(declare-fun b_and!44031 () Bool)

(assert (= b_and!44025 (and (=> t!40425 result!22989) b_and!44031)))

(declare-fun b_lambda!22345 () Bool)

(assert (=> (not b_lambda!22345) (not b!1223218)))

(assert (=> b!1223218 t!40425))

(declare-fun b_and!44033 () Bool)

(assert (= b_and!44031 (and (=> t!40425 result!22989) b_and!44033)))

(declare-fun m!1128235 () Bool)

(assert (=> b!1223216 m!1128235))

(assert (=> b!1223216 m!1128235))

(declare-fun m!1128237 () Bool)

(assert (=> b!1223216 m!1128237))

(assert (=> b!1223214 m!1128121))

(declare-fun m!1128239 () Bool)

(assert (=> b!1223214 m!1128239))

(assert (=> b!1223214 m!1128121))

(declare-fun m!1128241 () Bool)

(assert (=> b!1223214 m!1128241))

(assert (=> b!1223214 m!1128239))

(assert (=> b!1223214 m!1128235))

(assert (=> b!1223214 m!1128235))

(declare-fun m!1128243 () Bool)

(assert (=> b!1223214 m!1128243))

(declare-fun m!1128245 () Bool)

(assert (=> bm!60750 m!1128245))

(declare-fun m!1128247 () Bool)

(assert (=> b!1223220 m!1128247))

(declare-fun m!1128249 () Bool)

(assert (=> b!1223217 m!1128249))

(assert (=> b!1223215 m!1128245))

(assert (=> b!1223218 m!1128121))

(assert (=> b!1223218 m!1128239))

(assert (=> b!1223218 m!1128121))

(assert (=> b!1223218 m!1128241))

(declare-fun m!1128251 () Bool)

(assert (=> b!1223218 m!1128251))

(assert (=> b!1223218 m!1128239))

(declare-fun m!1128253 () Bool)

(assert (=> b!1223218 m!1128253))

(declare-fun m!1128255 () Bool)

(assert (=> b!1223218 m!1128255))

(assert (=> b!1223218 m!1128235))

(assert (=> b!1223218 m!1128251))

(declare-fun m!1128257 () Bool)

(assert (=> b!1223218 m!1128257))

(assert (=> b!1223221 m!1128235))

(assert (=> b!1223221 m!1128235))

(assert (=> b!1223221 m!1128237))

(declare-fun m!1128259 () Bool)

(assert (=> d!133855 m!1128259))

(assert (=> d!133855 m!1128099))

(assert (=> b!1223222 m!1128235))

(assert (=> b!1223222 m!1128235))

(declare-fun m!1128261 () Bool)

(assert (=> b!1223222 m!1128261))

(assert (=> b!1223100 d!133855))

(declare-fun b!1223226 () Bool)

(assert (=> b!1223226 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38629 _keys!1208)))))

(assert (=> b!1223226 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38630 _values!996)))))

(declare-fun e!694742 () Bool)

(declare-fun lt!556698 () ListLongMap!18223)

(assert (=> b!1223226 (= e!694742 (= (apply!1012 lt!556698 (select (arr!38092 _keys!1208) from!1455)) (get!19490 (select (arr!38093 _values!996) from!1455) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133857 () Bool)

(declare-fun e!694744 () Bool)

(assert (=> d!133857 e!694744))

(declare-fun res!812852 () Bool)

(assert (=> d!133857 (=> (not res!812852) (not e!694744))))

(assert (=> d!133857 (= res!812852 (not (contains!7051 lt!556698 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!694743 () ListLongMap!18223)

(assert (=> d!133857 (= lt!556698 e!694743)))

(declare-fun c!120325 () Bool)

(assert (=> d!133857 (= c!120325 (bvsge from!1455 (size!38629 _keys!1208)))))

(assert (=> d!133857 (validMask!0 mask!1564)))

(assert (=> d!133857 (= (getCurrentListMapNoExtraKeys!5525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!556698)))

(declare-fun b!1223227 () Bool)

(declare-fun e!694748 () Bool)

(assert (=> b!1223227 (= e!694748 (= lt!556698 (getCurrentListMapNoExtraKeys!5525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1223228 () Bool)

(declare-fun e!694746 () ListLongMap!18223)

(assert (=> b!1223228 (= e!694743 e!694746)))

(declare-fun c!120322 () Bool)

(assert (=> b!1223228 (= c!120322 (validKeyInArray!0 (select (arr!38092 _keys!1208) from!1455)))))

(declare-fun bm!60751 () Bool)

(declare-fun call!60754 () ListLongMap!18223)

(assert (=> bm!60751 (= call!60754 (getCurrentListMapNoExtraKeys!5525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1223229 () Bool)

(assert (=> b!1223229 (= e!694748 (isEmpty!1004 lt!556698))))

(declare-fun b!1223230 () Bool)

(declare-fun lt!556697 () Unit!40440)

(declare-fun lt!556700 () Unit!40440)

(assert (=> b!1223230 (= lt!556697 lt!556700)))

(declare-fun lt!556701 () (_ BitVec 64))

(declare-fun lt!556702 () V!46579)

(declare-fun lt!556699 () ListLongMap!18223)

(declare-fun lt!556696 () (_ BitVec 64))

(assert (=> b!1223230 (not (contains!7051 (+!4090 lt!556699 (tuple2!20243 lt!556701 lt!556702)) lt!556696))))

(assert (=> b!1223230 (= lt!556700 (addStillNotContains!307 lt!556699 lt!556701 lt!556702 lt!556696))))

(assert (=> b!1223230 (= lt!556696 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1223230 (= lt!556702 (get!19490 (select (arr!38093 _values!996) from!1455) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1223230 (= lt!556701 (select (arr!38092 _keys!1208) from!1455))))

(assert (=> b!1223230 (= lt!556699 call!60754)))

(assert (=> b!1223230 (= e!694746 (+!4090 call!60754 (tuple2!20243 (select (arr!38092 _keys!1208) from!1455) (get!19490 (select (arr!38093 _values!996) from!1455) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1223231 () Bool)

(assert (=> b!1223231 (= e!694743 (ListLongMap!18224 Nil!27052))))

(declare-fun b!1223232 () Bool)

(declare-fun res!812851 () Bool)

(assert (=> b!1223232 (=> (not res!812851) (not e!694744))))

(assert (=> b!1223232 (= res!812851 (not (contains!7051 lt!556698 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1223233 () Bool)

(declare-fun e!694745 () Bool)

(assert (=> b!1223233 (= e!694745 (validKeyInArray!0 (select (arr!38092 _keys!1208) from!1455)))))

(assert (=> b!1223233 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1223234 () Bool)

(declare-fun e!694747 () Bool)

(assert (=> b!1223234 (= e!694747 e!694742)))

(assert (=> b!1223234 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38629 _keys!1208)))))

(declare-fun res!812854 () Bool)

(assert (=> b!1223234 (= res!812854 (contains!7051 lt!556698 (select (arr!38092 _keys!1208) from!1455)))))

(assert (=> b!1223234 (=> (not res!812854) (not e!694742))))

(declare-fun b!1223235 () Bool)

(assert (=> b!1223235 (= e!694746 call!60754)))

(declare-fun b!1223236 () Bool)

(assert (=> b!1223236 (= e!694744 e!694747)))

(declare-fun c!120323 () Bool)

(assert (=> b!1223236 (= c!120323 e!694745)))

(declare-fun res!812853 () Bool)

(assert (=> b!1223236 (=> (not res!812853) (not e!694745))))

(assert (=> b!1223236 (= res!812853 (bvslt from!1455 (size!38629 _keys!1208)))))

(declare-fun b!1223237 () Bool)

(assert (=> b!1223237 (= e!694747 e!694748)))

(declare-fun c!120324 () Bool)

(assert (=> b!1223237 (= c!120324 (bvslt from!1455 (size!38629 _keys!1208)))))

(assert (= (and d!133857 c!120325) b!1223231))

(assert (= (and d!133857 (not c!120325)) b!1223228))

(assert (= (and b!1223228 c!120322) b!1223230))

(assert (= (and b!1223228 (not c!120322)) b!1223235))

(assert (= (or b!1223230 b!1223235) bm!60751))

(assert (= (and d!133857 res!812852) b!1223232))

(assert (= (and b!1223232 res!812851) b!1223236))

(assert (= (and b!1223236 res!812853) b!1223233))

(assert (= (and b!1223236 c!120323) b!1223234))

(assert (= (and b!1223236 (not c!120323)) b!1223237))

(assert (= (and b!1223234 res!812854) b!1223226))

(assert (= (and b!1223237 c!120324) b!1223227))

(assert (= (and b!1223237 (not c!120324)) b!1223229))

(declare-fun b_lambda!22347 () Bool)

(assert (=> (not b_lambda!22347) (not b!1223226)))

(assert (=> b!1223226 t!40425))

(declare-fun b_and!44035 () Bool)

(assert (= b_and!44033 (and (=> t!40425 result!22989) b_and!44035)))

(declare-fun b_lambda!22349 () Bool)

(assert (=> (not b_lambda!22349) (not b!1223230)))

(assert (=> b!1223230 t!40425))

(declare-fun b_and!44037 () Bool)

(assert (= b_and!44035 (and (=> t!40425 result!22989) b_and!44037)))

(assert (=> b!1223228 m!1128097))

(assert (=> b!1223228 m!1128097))

(assert (=> b!1223228 m!1128149))

(assert (=> b!1223226 m!1128121))

(assert (=> b!1223226 m!1128089))

(assert (=> b!1223226 m!1128121))

(declare-fun m!1128263 () Bool)

(assert (=> b!1223226 m!1128263))

(assert (=> b!1223226 m!1128089))

(assert (=> b!1223226 m!1128097))

(assert (=> b!1223226 m!1128097))

(declare-fun m!1128265 () Bool)

(assert (=> b!1223226 m!1128265))

(declare-fun m!1128267 () Bool)

(assert (=> bm!60751 m!1128267))

(declare-fun m!1128269 () Bool)

(assert (=> b!1223232 m!1128269))

(declare-fun m!1128271 () Bool)

(assert (=> b!1223229 m!1128271))

(assert (=> b!1223227 m!1128267))

(assert (=> b!1223230 m!1128121))

(assert (=> b!1223230 m!1128089))

(assert (=> b!1223230 m!1128121))

(assert (=> b!1223230 m!1128263))

(declare-fun m!1128273 () Bool)

(assert (=> b!1223230 m!1128273))

(assert (=> b!1223230 m!1128089))

(declare-fun m!1128275 () Bool)

(assert (=> b!1223230 m!1128275))

(declare-fun m!1128277 () Bool)

(assert (=> b!1223230 m!1128277))

(assert (=> b!1223230 m!1128097))

(assert (=> b!1223230 m!1128273))

(declare-fun m!1128279 () Bool)

(assert (=> b!1223230 m!1128279))

(assert (=> b!1223233 m!1128097))

(assert (=> b!1223233 m!1128097))

(assert (=> b!1223233 m!1128149))

(declare-fun m!1128281 () Bool)

(assert (=> d!133857 m!1128281))

(assert (=> d!133857 m!1128099))

(assert (=> b!1223234 m!1128097))

(assert (=> b!1223234 m!1128097))

(declare-fun m!1128283 () Bool)

(assert (=> b!1223234 m!1128283))

(assert (=> b!1223100 d!133857))

(declare-fun d!133859 () Bool)

(assert (=> d!133859 (= (array_inv!28896 _keys!1208) (bvsge (size!38629 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101700 d!133859))

(declare-fun d!133861 () Bool)

(assert (=> d!133861 (= (array_inv!28897 _values!996) (bvsge (size!38630 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101700 d!133861))

(declare-fun b!1223248 () Bool)

(declare-fun e!694757 () Bool)

(declare-fun call!60757 () Bool)

(assert (=> b!1223248 (= e!694757 call!60757)))

(declare-fun b!1223249 () Bool)

(declare-fun e!694760 () Bool)

(declare-fun contains!7052 (List!27054 (_ BitVec 64)) Bool)

(assert (=> b!1223249 (= e!694760 (contains!7052 Nil!27051 (select (arr!38092 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1223250 () Bool)

(declare-fun e!694758 () Bool)

(declare-fun e!694759 () Bool)

(assert (=> b!1223250 (= e!694758 e!694759)))

(declare-fun res!812861 () Bool)

(assert (=> b!1223250 (=> (not res!812861) (not e!694759))))

(assert (=> b!1223250 (= res!812861 (not e!694760))))

(declare-fun res!812862 () Bool)

(assert (=> b!1223250 (=> (not res!812862) (not e!694760))))

(assert (=> b!1223250 (= res!812862 (validKeyInArray!0 (select (arr!38092 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!60754 () Bool)

(declare-fun c!120328 () Bool)

(assert (=> bm!60754 (= call!60757 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120328 (Cons!27050 (select (arr!38092 _keys!1208) #b00000000000000000000000000000000) Nil!27051) Nil!27051)))))

(declare-fun d!133863 () Bool)

(declare-fun res!812863 () Bool)

(assert (=> d!133863 (=> res!812863 e!694758)))

(assert (=> d!133863 (= res!812863 (bvsge #b00000000000000000000000000000000 (size!38629 _keys!1208)))))

(assert (=> d!133863 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27051) e!694758)))

(declare-fun b!1223251 () Bool)

(assert (=> b!1223251 (= e!694757 call!60757)))

(declare-fun b!1223252 () Bool)

(assert (=> b!1223252 (= e!694759 e!694757)))

(assert (=> b!1223252 (= c!120328 (validKeyInArray!0 (select (arr!38092 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!133863 (not res!812863)) b!1223250))

(assert (= (and b!1223250 res!812862) b!1223249))

(assert (= (and b!1223250 res!812861) b!1223252))

(assert (= (and b!1223252 c!120328) b!1223251))

(assert (= (and b!1223252 (not c!120328)) b!1223248))

(assert (= (or b!1223251 b!1223248) bm!60754))

(assert (=> b!1223249 m!1128219))

(assert (=> b!1223249 m!1128219))

(declare-fun m!1128285 () Bool)

(assert (=> b!1223249 m!1128285))

(assert (=> b!1223250 m!1128219))

(assert (=> b!1223250 m!1128219))

(assert (=> b!1223250 m!1128229))

(assert (=> bm!60754 m!1128219))

(declare-fun m!1128287 () Bool)

(assert (=> bm!60754 m!1128287))

(assert (=> b!1223252 m!1128219))

(assert (=> b!1223252 m!1128219))

(assert (=> b!1223252 m!1128229))

(assert (=> b!1223089 d!133863))

(declare-fun b!1223253 () Bool)

(declare-fun e!694761 () Bool)

(declare-fun call!60758 () Bool)

(assert (=> b!1223253 (= e!694761 call!60758)))

(declare-fun b!1223254 () Bool)

(declare-fun e!694764 () Bool)

(assert (=> b!1223254 (= e!694764 (contains!7052 Nil!27051 (select (arr!38092 lt!556613) #b00000000000000000000000000000000)))))

(declare-fun b!1223255 () Bool)

(declare-fun e!694762 () Bool)

(declare-fun e!694763 () Bool)

(assert (=> b!1223255 (= e!694762 e!694763)))

(declare-fun res!812864 () Bool)

(assert (=> b!1223255 (=> (not res!812864) (not e!694763))))

(assert (=> b!1223255 (= res!812864 (not e!694764))))

(declare-fun res!812865 () Bool)

(assert (=> b!1223255 (=> (not res!812865) (not e!694764))))

(assert (=> b!1223255 (= res!812865 (validKeyInArray!0 (select (arr!38092 lt!556613) #b00000000000000000000000000000000)))))

(declare-fun bm!60755 () Bool)

(declare-fun c!120329 () Bool)

(assert (=> bm!60755 (= call!60758 (arrayNoDuplicates!0 lt!556613 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120329 (Cons!27050 (select (arr!38092 lt!556613) #b00000000000000000000000000000000) Nil!27051) Nil!27051)))))

(declare-fun d!133865 () Bool)

(declare-fun res!812866 () Bool)

(assert (=> d!133865 (=> res!812866 e!694762)))

(assert (=> d!133865 (= res!812866 (bvsge #b00000000000000000000000000000000 (size!38629 lt!556613)))))

(assert (=> d!133865 (= (arrayNoDuplicates!0 lt!556613 #b00000000000000000000000000000000 Nil!27051) e!694762)))

(declare-fun b!1223256 () Bool)

(assert (=> b!1223256 (= e!694761 call!60758)))

(declare-fun b!1223257 () Bool)

(assert (=> b!1223257 (= e!694763 e!694761)))

(assert (=> b!1223257 (= c!120329 (validKeyInArray!0 (select (arr!38092 lt!556613) #b00000000000000000000000000000000)))))

(assert (= (and d!133865 (not res!812866)) b!1223255))

(assert (= (and b!1223255 res!812865) b!1223254))

(assert (= (and b!1223255 res!812864) b!1223257))

(assert (= (and b!1223257 c!120329) b!1223256))

(assert (= (and b!1223257 (not c!120329)) b!1223253))

(assert (= (or b!1223256 b!1223253) bm!60755))

(declare-fun m!1128289 () Bool)

(assert (=> b!1223254 m!1128289))

(assert (=> b!1223254 m!1128289))

(declare-fun m!1128291 () Bool)

(assert (=> b!1223254 m!1128291))

(assert (=> b!1223255 m!1128289))

(assert (=> b!1223255 m!1128289))

(declare-fun m!1128293 () Bool)

(assert (=> b!1223255 m!1128293))

(assert (=> bm!60755 m!1128289))

(declare-fun m!1128295 () Bool)

(assert (=> bm!60755 m!1128295))

(assert (=> b!1223257 m!1128289))

(assert (=> b!1223257 m!1128289))

(assert (=> b!1223257 m!1128293))

(assert (=> b!1223091 d!133865))

(declare-fun b!1223258 () Bool)

(declare-fun e!694767 () Bool)

(declare-fun call!60759 () Bool)

(assert (=> b!1223258 (= e!694767 call!60759)))

(declare-fun b!1223259 () Bool)

(declare-fun e!694766 () Bool)

(assert (=> b!1223259 (= e!694766 call!60759)))

(declare-fun b!1223260 () Bool)

(assert (=> b!1223260 (= e!694766 e!694767)))

(declare-fun lt!556703 () (_ BitVec 64))

(assert (=> b!1223260 (= lt!556703 (select (arr!38092 lt!556613) #b00000000000000000000000000000000))))

(declare-fun lt!556704 () Unit!40440)

(assert (=> b!1223260 (= lt!556704 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!556613 lt!556703 #b00000000000000000000000000000000))))

(assert (=> b!1223260 (arrayContainsKey!0 lt!556613 lt!556703 #b00000000000000000000000000000000)))

(declare-fun lt!556705 () Unit!40440)

(assert (=> b!1223260 (= lt!556705 lt!556704)))

(declare-fun res!812867 () Bool)

(assert (=> b!1223260 (= res!812867 (= (seekEntryOrOpen!0 (select (arr!38092 lt!556613) #b00000000000000000000000000000000) lt!556613 mask!1564) (Found!9947 #b00000000000000000000000000000000)))))

(assert (=> b!1223260 (=> (not res!812867) (not e!694767))))

(declare-fun d!133867 () Bool)

(declare-fun res!812868 () Bool)

(declare-fun e!694765 () Bool)

(assert (=> d!133867 (=> res!812868 e!694765)))

(assert (=> d!133867 (= res!812868 (bvsge #b00000000000000000000000000000000 (size!38629 lt!556613)))))

(assert (=> d!133867 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556613 mask!1564) e!694765)))

(declare-fun bm!60756 () Bool)

(assert (=> bm!60756 (= call!60759 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!556613 mask!1564))))

(declare-fun b!1223261 () Bool)

(assert (=> b!1223261 (= e!694765 e!694766)))

(declare-fun c!120330 () Bool)

(assert (=> b!1223261 (= c!120330 (validKeyInArray!0 (select (arr!38092 lt!556613) #b00000000000000000000000000000000)))))

(assert (= (and d!133867 (not res!812868)) b!1223261))

(assert (= (and b!1223261 c!120330) b!1223260))

(assert (= (and b!1223261 (not c!120330)) b!1223259))

(assert (= (and b!1223260 res!812867) b!1223258))

(assert (= (or b!1223258 b!1223259) bm!60756))

(assert (=> b!1223260 m!1128289))

(declare-fun m!1128297 () Bool)

(assert (=> b!1223260 m!1128297))

(declare-fun m!1128299 () Bool)

(assert (=> b!1223260 m!1128299))

(assert (=> b!1223260 m!1128289))

(declare-fun m!1128301 () Bool)

(assert (=> b!1223260 m!1128301))

(declare-fun m!1128303 () Bool)

(assert (=> bm!60756 m!1128303))

(assert (=> b!1223261 m!1128289))

(assert (=> b!1223261 m!1128289))

(assert (=> b!1223261 m!1128293))

(assert (=> b!1223092 d!133867))

(declare-fun b!1223262 () Bool)

(assert (=> b!1223262 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 lt!556613)))))

(assert (=> b!1223262 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38630 lt!556604)))))

(declare-fun lt!556708 () ListLongMap!18223)

(declare-fun e!694768 () Bool)

(assert (=> b!1223262 (= e!694768 (= (apply!1012 lt!556708 (select (arr!38092 lt!556613) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19490 (select (arr!38093 lt!556604) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133869 () Bool)

(declare-fun e!694770 () Bool)

(assert (=> d!133869 e!694770))

(declare-fun res!812870 () Bool)

(assert (=> d!133869 (=> (not res!812870) (not e!694770))))

(assert (=> d!133869 (= res!812870 (not (contains!7051 lt!556708 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!694769 () ListLongMap!18223)

(assert (=> d!133869 (= lt!556708 e!694769)))

(declare-fun c!120334 () Bool)

(assert (=> d!133869 (= c!120334 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 lt!556613)))))

(assert (=> d!133869 (validMask!0 mask!1564)))

(assert (=> d!133869 (= (getCurrentListMapNoExtraKeys!5525 lt!556613 lt!556604 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!556708)))

(declare-fun b!1223263 () Bool)

(declare-fun e!694774 () Bool)

(assert (=> b!1223263 (= e!694774 (= lt!556708 (getCurrentListMapNoExtraKeys!5525 lt!556613 lt!556604 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1223264 () Bool)

(declare-fun e!694772 () ListLongMap!18223)

(assert (=> b!1223264 (= e!694769 e!694772)))

(declare-fun c!120331 () Bool)

(assert (=> b!1223264 (= c!120331 (validKeyInArray!0 (select (arr!38092 lt!556613) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun bm!60757 () Bool)

(declare-fun call!60760 () ListLongMap!18223)

(assert (=> bm!60757 (= call!60760 (getCurrentListMapNoExtraKeys!5525 lt!556613 lt!556604 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1223265 () Bool)

(assert (=> b!1223265 (= e!694774 (isEmpty!1004 lt!556708))))

(declare-fun b!1223266 () Bool)

(declare-fun lt!556707 () Unit!40440)

(declare-fun lt!556710 () Unit!40440)

(assert (=> b!1223266 (= lt!556707 lt!556710)))

(declare-fun lt!556711 () (_ BitVec 64))

(declare-fun lt!556709 () ListLongMap!18223)

(declare-fun lt!556706 () (_ BitVec 64))

(declare-fun lt!556712 () V!46579)

(assert (=> b!1223266 (not (contains!7051 (+!4090 lt!556709 (tuple2!20243 lt!556711 lt!556712)) lt!556706))))

(assert (=> b!1223266 (= lt!556710 (addStillNotContains!307 lt!556709 lt!556711 lt!556712 lt!556706))))

(assert (=> b!1223266 (= lt!556706 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1223266 (= lt!556712 (get!19490 (select (arr!38093 lt!556604) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1223266 (= lt!556711 (select (arr!38092 lt!556613) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1223266 (= lt!556709 call!60760)))

(assert (=> b!1223266 (= e!694772 (+!4090 call!60760 (tuple2!20243 (select (arr!38092 lt!556613) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19490 (select (arr!38093 lt!556604) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1223267 () Bool)

(assert (=> b!1223267 (= e!694769 (ListLongMap!18224 Nil!27052))))

(declare-fun b!1223268 () Bool)

(declare-fun res!812869 () Bool)

(assert (=> b!1223268 (=> (not res!812869) (not e!694770))))

(assert (=> b!1223268 (= res!812869 (not (contains!7051 lt!556708 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1223269 () Bool)

(declare-fun e!694771 () Bool)

(assert (=> b!1223269 (= e!694771 (validKeyInArray!0 (select (arr!38092 lt!556613) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1223269 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1223270 () Bool)

(declare-fun e!694773 () Bool)

(assert (=> b!1223270 (= e!694773 e!694768)))

(assert (=> b!1223270 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 lt!556613)))))

(declare-fun res!812872 () Bool)

(assert (=> b!1223270 (= res!812872 (contains!7051 lt!556708 (select (arr!38092 lt!556613) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1223270 (=> (not res!812872) (not e!694768))))

(declare-fun b!1223271 () Bool)

(assert (=> b!1223271 (= e!694772 call!60760)))

(declare-fun b!1223272 () Bool)

(assert (=> b!1223272 (= e!694770 e!694773)))

(declare-fun c!120332 () Bool)

(assert (=> b!1223272 (= c!120332 e!694771)))

(declare-fun res!812871 () Bool)

(assert (=> b!1223272 (=> (not res!812871) (not e!694771))))

(assert (=> b!1223272 (= res!812871 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 lt!556613)))))

(declare-fun b!1223273 () Bool)

(assert (=> b!1223273 (= e!694773 e!694774)))

(declare-fun c!120333 () Bool)

(assert (=> b!1223273 (= c!120333 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 lt!556613)))))

(assert (= (and d!133869 c!120334) b!1223267))

(assert (= (and d!133869 (not c!120334)) b!1223264))

(assert (= (and b!1223264 c!120331) b!1223266))

(assert (= (and b!1223264 (not c!120331)) b!1223271))

(assert (= (or b!1223266 b!1223271) bm!60757))

(assert (= (and d!133869 res!812870) b!1223268))

(assert (= (and b!1223268 res!812869) b!1223272))

(assert (= (and b!1223272 res!812871) b!1223269))

(assert (= (and b!1223272 c!120332) b!1223270))

(assert (= (and b!1223272 (not c!120332)) b!1223273))

(assert (= (and b!1223270 res!812872) b!1223262))

(assert (= (and b!1223273 c!120333) b!1223263))

(assert (= (and b!1223273 (not c!120333)) b!1223265))

(declare-fun b_lambda!22351 () Bool)

(assert (=> (not b_lambda!22351) (not b!1223262)))

(assert (=> b!1223262 t!40425))

(declare-fun b_and!44039 () Bool)

(assert (= b_and!44037 (and (=> t!40425 result!22989) b_and!44039)))

(declare-fun b_lambda!22353 () Bool)

(assert (=> (not b_lambda!22353) (not b!1223266)))

(assert (=> b!1223266 t!40425))

(declare-fun b_and!44041 () Bool)

(assert (= b_and!44039 (and (=> t!40425 result!22989) b_and!44041)))

(declare-fun m!1128305 () Bool)

(assert (=> b!1223264 m!1128305))

(assert (=> b!1223264 m!1128305))

(declare-fun m!1128307 () Bool)

(assert (=> b!1223264 m!1128307))

(assert (=> b!1223262 m!1128121))

(declare-fun m!1128309 () Bool)

(assert (=> b!1223262 m!1128309))

(assert (=> b!1223262 m!1128121))

(declare-fun m!1128311 () Bool)

(assert (=> b!1223262 m!1128311))

(assert (=> b!1223262 m!1128309))

(assert (=> b!1223262 m!1128305))

(assert (=> b!1223262 m!1128305))

(declare-fun m!1128313 () Bool)

(assert (=> b!1223262 m!1128313))

(declare-fun m!1128315 () Bool)

(assert (=> bm!60757 m!1128315))

(declare-fun m!1128317 () Bool)

(assert (=> b!1223268 m!1128317))

(declare-fun m!1128319 () Bool)

(assert (=> b!1223265 m!1128319))

(assert (=> b!1223263 m!1128315))

(assert (=> b!1223266 m!1128121))

(assert (=> b!1223266 m!1128309))

(assert (=> b!1223266 m!1128121))

(assert (=> b!1223266 m!1128311))

(declare-fun m!1128321 () Bool)

(assert (=> b!1223266 m!1128321))

(assert (=> b!1223266 m!1128309))

(declare-fun m!1128323 () Bool)

(assert (=> b!1223266 m!1128323))

(declare-fun m!1128325 () Bool)

(assert (=> b!1223266 m!1128325))

(assert (=> b!1223266 m!1128305))

(assert (=> b!1223266 m!1128321))

(declare-fun m!1128327 () Bool)

(assert (=> b!1223266 m!1128327))

(assert (=> b!1223269 m!1128305))

(assert (=> b!1223269 m!1128305))

(assert (=> b!1223269 m!1128307))

(declare-fun m!1128329 () Bool)

(assert (=> d!133869 m!1128329))

(assert (=> d!133869 m!1128099))

(assert (=> b!1223270 m!1128305))

(assert (=> b!1223270 m!1128305))

(declare-fun m!1128331 () Bool)

(assert (=> b!1223270 m!1128331))

(assert (=> b!1223094 d!133869))

(declare-fun d!133871 () Bool)

(declare-fun lt!556715 () ListLongMap!18223)

(assert (=> d!133871 (not (contains!7051 lt!556715 k0!934))))

(declare-fun removeStrictlySorted!111 (List!27055 (_ BitVec 64)) List!27055)

(assert (=> d!133871 (= lt!556715 (ListLongMap!18224 (removeStrictlySorted!111 (toList!9127 lt!556612) k0!934)))))

(assert (=> d!133871 (= (-!1968 lt!556612 k0!934) lt!556715)))

(declare-fun bs!34406 () Bool)

(assert (= bs!34406 d!133871))

(declare-fun m!1128333 () Bool)

(assert (=> bs!34406 m!1128333))

(declare-fun m!1128335 () Bool)

(assert (=> bs!34406 m!1128335))

(assert (=> b!1223094 d!133871))

(declare-fun d!133873 () Bool)

(assert (=> d!133873 (= (validKeyInArray!0 (select (arr!38092 _keys!1208) from!1455)) (and (not (= (select (arr!38092 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38092 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1223094 d!133873))

(declare-fun call!60766 () ListLongMap!18223)

(declare-fun e!694779 () Bool)

(declare-fun call!60765 () ListLongMap!18223)

(declare-fun b!1223280 () Bool)

(assert (=> b!1223280 (= e!694779 (= call!60766 (-!1968 call!60765 k0!934)))))

(assert (=> b!1223280 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38630 _values!996)))))

(declare-fun b!1223281 () Bool)

(assert (=> b!1223281 (= e!694779 (= call!60766 call!60765))))

(assert (=> b!1223281 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38630 _values!996)))))

(declare-fun d!133875 () Bool)

(declare-fun e!694780 () Bool)

(assert (=> d!133875 e!694780))

(declare-fun res!812875 () Bool)

(assert (=> d!133875 (=> (not res!812875) (not e!694780))))

(assert (=> d!133875 (= res!812875 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38629 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38629 _keys!1208))))))))

(declare-fun lt!556718 () Unit!40440)

(declare-fun choose!1835 (array!78936 array!78938 (_ BitVec 32) (_ BitVec 32) V!46579 V!46579 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40440)

(assert (=> d!133875 (= lt!556718 (choose!1835 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133875 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 _keys!1208)))))

(assert (=> d!133875 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1170 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!556718)))

(declare-fun bm!60762 () Bool)

(assert (=> bm!60762 (= call!60765 (getCurrentListMapNoExtraKeys!5525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60763 () Bool)

(assert (=> bm!60763 (= call!60766 (getCurrentListMapNoExtraKeys!5525 (array!78937 (store (arr!38092 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38629 _keys!1208)) (array!78939 (store (arr!38093 _values!996) i!673 (ValueCellFull!14835 (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38630 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1223282 () Bool)

(assert (=> b!1223282 (= e!694780 e!694779)))

(declare-fun c!120337 () Bool)

(assert (=> b!1223282 (= c!120337 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(assert (= (and d!133875 res!812875) b!1223282))

(assert (= (and b!1223282 c!120337) b!1223280))

(assert (= (and b!1223282 (not c!120337)) b!1223281))

(assert (= (or b!1223280 b!1223281) bm!60762))

(assert (= (or b!1223280 b!1223281) bm!60763))

(declare-fun b_lambda!22355 () Bool)

(assert (=> (not b_lambda!22355) (not bm!60763)))

(assert (=> bm!60763 t!40425))

(declare-fun b_and!44043 () Bool)

(assert (= b_and!44041 (and (=> t!40425 result!22989) b_and!44043)))

(declare-fun m!1128337 () Bool)

(assert (=> b!1223280 m!1128337))

(declare-fun m!1128339 () Bool)

(assert (=> d!133875 m!1128339))

(assert (=> bm!60762 m!1128141))

(assert (=> bm!60763 m!1128103))

(assert (=> bm!60763 m!1128121))

(declare-fun m!1128341 () Bool)

(assert (=> bm!60763 m!1128341))

(declare-fun m!1128343 () Bool)

(assert (=> bm!60763 m!1128343))

(assert (=> b!1223094 d!133875))

(declare-fun b!1223283 () Bool)

(assert (=> b!1223283 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 _keys!1208)))))

(assert (=> b!1223283 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38630 _values!996)))))

(declare-fun lt!556721 () ListLongMap!18223)

(declare-fun e!694781 () Bool)

(assert (=> b!1223283 (= e!694781 (= (apply!1012 lt!556721 (select (arr!38092 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19490 (select (arr!38093 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133877 () Bool)

(declare-fun e!694783 () Bool)

(assert (=> d!133877 e!694783))

(declare-fun res!812877 () Bool)

(assert (=> d!133877 (=> (not res!812877) (not e!694783))))

(assert (=> d!133877 (= res!812877 (not (contains!7051 lt!556721 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!694782 () ListLongMap!18223)

(assert (=> d!133877 (= lt!556721 e!694782)))

(declare-fun c!120341 () Bool)

(assert (=> d!133877 (= c!120341 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 _keys!1208)))))

(assert (=> d!133877 (validMask!0 mask!1564)))

(assert (=> d!133877 (= (getCurrentListMapNoExtraKeys!5525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!556721)))

(declare-fun e!694787 () Bool)

(declare-fun b!1223284 () Bool)

(assert (=> b!1223284 (= e!694787 (= lt!556721 (getCurrentListMapNoExtraKeys!5525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1223285 () Bool)

(declare-fun e!694785 () ListLongMap!18223)

(assert (=> b!1223285 (= e!694782 e!694785)))

(declare-fun c!120338 () Bool)

(assert (=> b!1223285 (= c!120338 (validKeyInArray!0 (select (arr!38092 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun call!60767 () ListLongMap!18223)

(declare-fun bm!60764 () Bool)

(assert (=> bm!60764 (= call!60767 (getCurrentListMapNoExtraKeys!5525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1223286 () Bool)

(assert (=> b!1223286 (= e!694787 (isEmpty!1004 lt!556721))))

(declare-fun b!1223287 () Bool)

(declare-fun lt!556720 () Unit!40440)

(declare-fun lt!556723 () Unit!40440)

(assert (=> b!1223287 (= lt!556720 lt!556723)))

(declare-fun lt!556724 () (_ BitVec 64))

(declare-fun lt!556722 () ListLongMap!18223)

(declare-fun lt!556725 () V!46579)

(declare-fun lt!556719 () (_ BitVec 64))

(assert (=> b!1223287 (not (contains!7051 (+!4090 lt!556722 (tuple2!20243 lt!556724 lt!556725)) lt!556719))))

(assert (=> b!1223287 (= lt!556723 (addStillNotContains!307 lt!556722 lt!556724 lt!556725 lt!556719))))

(assert (=> b!1223287 (= lt!556719 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1223287 (= lt!556725 (get!19490 (select (arr!38093 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1223287 (= lt!556724 (select (arr!38092 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1223287 (= lt!556722 call!60767)))

(assert (=> b!1223287 (= e!694785 (+!4090 call!60767 (tuple2!20243 (select (arr!38092 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19490 (select (arr!38093 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1223288 () Bool)

(assert (=> b!1223288 (= e!694782 (ListLongMap!18224 Nil!27052))))

(declare-fun b!1223289 () Bool)

(declare-fun res!812876 () Bool)

(assert (=> b!1223289 (=> (not res!812876) (not e!694783))))

(assert (=> b!1223289 (= res!812876 (not (contains!7051 lt!556721 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1223290 () Bool)

(declare-fun e!694784 () Bool)

(assert (=> b!1223290 (= e!694784 (validKeyInArray!0 (select (arr!38092 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1223290 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1223291 () Bool)

(declare-fun e!694786 () Bool)

(assert (=> b!1223291 (= e!694786 e!694781)))

(assert (=> b!1223291 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 _keys!1208)))))

(declare-fun res!812879 () Bool)

(assert (=> b!1223291 (= res!812879 (contains!7051 lt!556721 (select (arr!38092 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1223291 (=> (not res!812879) (not e!694781))))

(declare-fun b!1223292 () Bool)

(assert (=> b!1223292 (= e!694785 call!60767)))

(declare-fun b!1223293 () Bool)

(assert (=> b!1223293 (= e!694783 e!694786)))

(declare-fun c!120339 () Bool)

(assert (=> b!1223293 (= c!120339 e!694784)))

(declare-fun res!812878 () Bool)

(assert (=> b!1223293 (=> (not res!812878) (not e!694784))))

(assert (=> b!1223293 (= res!812878 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 _keys!1208)))))

(declare-fun b!1223294 () Bool)

(assert (=> b!1223294 (= e!694786 e!694787)))

(declare-fun c!120340 () Bool)

(assert (=> b!1223294 (= c!120340 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38629 _keys!1208)))))

(assert (= (and d!133877 c!120341) b!1223288))

(assert (= (and d!133877 (not c!120341)) b!1223285))

(assert (= (and b!1223285 c!120338) b!1223287))

(assert (= (and b!1223285 (not c!120338)) b!1223292))

(assert (= (or b!1223287 b!1223292) bm!60764))

(assert (= (and d!133877 res!812877) b!1223289))

(assert (= (and b!1223289 res!812876) b!1223293))

(assert (= (and b!1223293 res!812878) b!1223290))

(assert (= (and b!1223293 c!120339) b!1223291))

(assert (= (and b!1223293 (not c!120339)) b!1223294))

(assert (= (and b!1223291 res!812879) b!1223283))

(assert (= (and b!1223294 c!120340) b!1223284))

(assert (= (and b!1223294 (not c!120340)) b!1223286))

(declare-fun b_lambda!22357 () Bool)

(assert (=> (not b_lambda!22357) (not b!1223283)))

(assert (=> b!1223283 t!40425))

(declare-fun b_and!44045 () Bool)

(assert (= b_and!44043 (and (=> t!40425 result!22989) b_and!44045)))

(declare-fun b_lambda!22359 () Bool)

(assert (=> (not b_lambda!22359) (not b!1223287)))

(assert (=> b!1223287 t!40425))

(declare-fun b_and!44047 () Bool)

(assert (= b_and!44045 (and (=> t!40425 result!22989) b_and!44047)))

(declare-fun m!1128345 () Bool)

(assert (=> b!1223285 m!1128345))

(assert (=> b!1223285 m!1128345))

(declare-fun m!1128347 () Bool)

(assert (=> b!1223285 m!1128347))

(assert (=> b!1223283 m!1128121))

(declare-fun m!1128349 () Bool)

(assert (=> b!1223283 m!1128349))

(assert (=> b!1223283 m!1128121))

(declare-fun m!1128351 () Bool)

(assert (=> b!1223283 m!1128351))

(assert (=> b!1223283 m!1128349))

(assert (=> b!1223283 m!1128345))

(assert (=> b!1223283 m!1128345))

(declare-fun m!1128353 () Bool)

(assert (=> b!1223283 m!1128353))

(declare-fun m!1128355 () Bool)

(assert (=> bm!60764 m!1128355))

(declare-fun m!1128357 () Bool)

(assert (=> b!1223289 m!1128357))

(declare-fun m!1128359 () Bool)

(assert (=> b!1223286 m!1128359))

(assert (=> b!1223284 m!1128355))

(assert (=> b!1223287 m!1128121))

(assert (=> b!1223287 m!1128349))

(assert (=> b!1223287 m!1128121))

(assert (=> b!1223287 m!1128351))

(declare-fun m!1128361 () Bool)

(assert (=> b!1223287 m!1128361))

(assert (=> b!1223287 m!1128349))

(declare-fun m!1128363 () Bool)

(assert (=> b!1223287 m!1128363))

(declare-fun m!1128365 () Bool)

(assert (=> b!1223287 m!1128365))

(assert (=> b!1223287 m!1128345))

(assert (=> b!1223287 m!1128361))

(declare-fun m!1128367 () Bool)

(assert (=> b!1223287 m!1128367))

(assert (=> b!1223290 m!1128345))

(assert (=> b!1223290 m!1128345))

(assert (=> b!1223290 m!1128347))

(declare-fun m!1128369 () Bool)

(assert (=> d!133877 m!1128369))

(assert (=> d!133877 m!1128099))

(assert (=> b!1223291 m!1128345))

(assert (=> b!1223291 m!1128345))

(declare-fun m!1128371 () Bool)

(assert (=> b!1223291 m!1128371))

(assert (=> b!1223094 d!133877))

(declare-fun d!133879 () Bool)

(assert (=> d!133879 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27051)))

(declare-fun lt!556728 () Unit!40440)

(declare-fun choose!39 (array!78936 (_ BitVec 32) (_ BitVec 32)) Unit!40440)

(assert (=> d!133879 (= lt!556728 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!133879 (bvslt (size!38629 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133879 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!556728)))

(declare-fun bs!34407 () Bool)

(assert (= bs!34407 d!133879))

(assert (=> bs!34407 m!1128113))

(declare-fun m!1128373 () Bool)

(assert (=> bs!34407 m!1128373))

(assert (=> b!1223095 d!133879))

(declare-fun d!133881 () Bool)

(assert (=> d!133881 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556731 () Unit!40440)

(declare-fun choose!114 (array!78936 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40440)

(assert (=> d!133881 (= lt!556731 (choose!114 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> d!133881 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133881 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)) lt!556731)))

(declare-fun bs!34408 () Bool)

(assert (= bs!34408 d!133881))

(assert (=> bs!34408 m!1128109))

(declare-fun m!1128375 () Bool)

(assert (=> bs!34408 m!1128375))

(assert (=> b!1223095 d!133881))

(declare-fun b!1223295 () Bool)

(declare-fun e!694788 () Bool)

(declare-fun call!60768 () Bool)

(assert (=> b!1223295 (= e!694788 call!60768)))

(declare-fun b!1223296 () Bool)

(declare-fun e!694791 () Bool)

(assert (=> b!1223296 (= e!694791 (contains!7052 Nil!27051 (select (arr!38092 _keys!1208) from!1455)))))

(declare-fun b!1223297 () Bool)

(declare-fun e!694789 () Bool)

(declare-fun e!694790 () Bool)

(assert (=> b!1223297 (= e!694789 e!694790)))

(declare-fun res!812880 () Bool)

(assert (=> b!1223297 (=> (not res!812880) (not e!694790))))

(assert (=> b!1223297 (= res!812880 (not e!694791))))

(declare-fun res!812881 () Bool)

(assert (=> b!1223297 (=> (not res!812881) (not e!694791))))

(assert (=> b!1223297 (= res!812881 (validKeyInArray!0 (select (arr!38092 _keys!1208) from!1455)))))

(declare-fun c!120342 () Bool)

(declare-fun bm!60765 () Bool)

(assert (=> bm!60765 (= call!60768 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!120342 (Cons!27050 (select (arr!38092 _keys!1208) from!1455) Nil!27051) Nil!27051)))))

(declare-fun d!133883 () Bool)

(declare-fun res!812882 () Bool)

(assert (=> d!133883 (=> res!812882 e!694789)))

(assert (=> d!133883 (= res!812882 (bvsge from!1455 (size!38629 _keys!1208)))))

(assert (=> d!133883 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27051) e!694789)))

(declare-fun b!1223298 () Bool)

(assert (=> b!1223298 (= e!694788 call!60768)))

(declare-fun b!1223299 () Bool)

(assert (=> b!1223299 (= e!694790 e!694788)))

(assert (=> b!1223299 (= c!120342 (validKeyInArray!0 (select (arr!38092 _keys!1208) from!1455)))))

(assert (= (and d!133883 (not res!812882)) b!1223297))

(assert (= (and b!1223297 res!812881) b!1223296))

(assert (= (and b!1223297 res!812880) b!1223299))

(assert (= (and b!1223299 c!120342) b!1223298))

(assert (= (and b!1223299 (not c!120342)) b!1223295))

(assert (= (or b!1223298 b!1223295) bm!60765))

(assert (=> b!1223296 m!1128097))

(assert (=> b!1223296 m!1128097))

(declare-fun m!1128377 () Bool)

(assert (=> b!1223296 m!1128377))

(assert (=> b!1223297 m!1128097))

(assert (=> b!1223297 m!1128097))

(assert (=> b!1223297 m!1128149))

(assert (=> bm!60765 m!1128097))

(declare-fun m!1128379 () Bool)

(assert (=> bm!60765 m!1128379))

(assert (=> b!1223299 m!1128097))

(assert (=> b!1223299 m!1128097))

(assert (=> b!1223299 m!1128149))

(assert (=> b!1223095 d!133883))

(declare-fun d!133885 () Bool)

(declare-fun res!812883 () Bool)

(declare-fun e!694792 () Bool)

(assert (=> d!133885 (=> res!812883 e!694792)))

(assert (=> d!133885 (= res!812883 (= (select (arr!38092 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!133885 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!694792)))

(declare-fun b!1223300 () Bool)

(declare-fun e!694793 () Bool)

(assert (=> b!1223300 (= e!694792 e!694793)))

(declare-fun res!812884 () Bool)

(assert (=> b!1223300 (=> (not res!812884) (not e!694793))))

(assert (=> b!1223300 (= res!812884 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38629 _keys!1208)))))

(declare-fun b!1223301 () Bool)

(assert (=> b!1223301 (= e!694793 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!133885 (not res!812883)) b!1223300))

(assert (= (and b!1223300 res!812884) b!1223301))

(assert (=> d!133885 m!1128345))

(declare-fun m!1128381 () Bool)

(assert (=> b!1223301 m!1128381))

(assert (=> b!1223095 d!133885))

(declare-fun d!133887 () Bool)

(assert (=> d!133887 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38629 _keys!1208)) (not (= (select (arr!38092 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!556734 () Unit!40440)

(declare-fun choose!21 (array!78936 (_ BitVec 64) (_ BitVec 32) List!27054) Unit!40440)

(assert (=> d!133887 (= lt!556734 (choose!21 _keys!1208 k0!934 from!1455 Nil!27051))))

(assert (=> d!133887 (bvslt (size!38629 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133887 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27051) lt!556734)))

(declare-fun bs!34409 () Bool)

(assert (= bs!34409 d!133887))

(assert (=> bs!34409 m!1128097))

(declare-fun m!1128383 () Bool)

(assert (=> bs!34409 m!1128383))

(assert (=> b!1223095 d!133887))

(declare-fun d!133889 () Bool)

(assert (=> d!133889 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1223086 d!133889))

(declare-fun d!133891 () Bool)

(declare-fun e!694796 () Bool)

(assert (=> d!133891 e!694796))

(declare-fun res!812890 () Bool)

(assert (=> d!133891 (=> (not res!812890) (not e!694796))))

(declare-fun lt!556743 () ListLongMap!18223)

(assert (=> d!133891 (= res!812890 (contains!7051 lt!556743 (_1!10131 lt!556614)))))

(declare-fun lt!556746 () List!27055)

(assert (=> d!133891 (= lt!556743 (ListLongMap!18224 lt!556746))))

(declare-fun lt!556744 () Unit!40440)

(declare-fun lt!556745 () Unit!40440)

(assert (=> d!133891 (= lt!556744 lt!556745)))

(declare-datatypes ((Option!702 0))(
  ( (Some!701 (v!18265 V!46579)) (None!700) )
))
(declare-fun getValueByKey!651 (List!27055 (_ BitVec 64)) Option!702)

(assert (=> d!133891 (= (getValueByKey!651 lt!556746 (_1!10131 lt!556614)) (Some!701 (_2!10131 lt!556614)))))

(declare-fun lemmaContainsTupThenGetReturnValue!326 (List!27055 (_ BitVec 64) V!46579) Unit!40440)

(assert (=> d!133891 (= lt!556745 (lemmaContainsTupThenGetReturnValue!326 lt!556746 (_1!10131 lt!556614) (_2!10131 lt!556614)))))

(declare-fun insertStrictlySorted!418 (List!27055 (_ BitVec 64) V!46579) List!27055)

(assert (=> d!133891 (= lt!556746 (insertStrictlySorted!418 (toList!9127 lt!556612) (_1!10131 lt!556614) (_2!10131 lt!556614)))))

(assert (=> d!133891 (= (+!4090 lt!556612 lt!556614) lt!556743)))

(declare-fun b!1223306 () Bool)

(declare-fun res!812889 () Bool)

(assert (=> b!1223306 (=> (not res!812889) (not e!694796))))

(assert (=> b!1223306 (= res!812889 (= (getValueByKey!651 (toList!9127 lt!556743) (_1!10131 lt!556614)) (Some!701 (_2!10131 lt!556614))))))

(declare-fun b!1223307 () Bool)

(declare-fun contains!7053 (List!27055 tuple2!20242) Bool)

(assert (=> b!1223307 (= e!694796 (contains!7053 (toList!9127 lt!556743) lt!556614))))

(assert (= (and d!133891 res!812890) b!1223306))

(assert (= (and b!1223306 res!812889) b!1223307))

(declare-fun m!1128385 () Bool)

(assert (=> d!133891 m!1128385))

(declare-fun m!1128387 () Bool)

(assert (=> d!133891 m!1128387))

(declare-fun m!1128389 () Bool)

(assert (=> d!133891 m!1128389))

(declare-fun m!1128391 () Bool)

(assert (=> d!133891 m!1128391))

(declare-fun m!1128393 () Bool)

(assert (=> b!1223306 m!1128393))

(declare-fun m!1128395 () Bool)

(assert (=> b!1223307 m!1128395))

(assert (=> b!1223096 d!133891))

(declare-fun d!133893 () Bool)

(declare-fun e!694797 () Bool)

(assert (=> d!133893 e!694797))

(declare-fun res!812892 () Bool)

(assert (=> d!133893 (=> (not res!812892) (not e!694797))))

(declare-fun lt!556747 () ListLongMap!18223)

(assert (=> d!133893 (= res!812892 (contains!7051 lt!556747 (_1!10131 lt!556614)))))

(declare-fun lt!556750 () List!27055)

(assert (=> d!133893 (= lt!556747 (ListLongMap!18224 lt!556750))))

(declare-fun lt!556748 () Unit!40440)

(declare-fun lt!556749 () Unit!40440)

(assert (=> d!133893 (= lt!556748 lt!556749)))

(assert (=> d!133893 (= (getValueByKey!651 lt!556750 (_1!10131 lt!556614)) (Some!701 (_2!10131 lt!556614)))))

(assert (=> d!133893 (= lt!556749 (lemmaContainsTupThenGetReturnValue!326 lt!556750 (_1!10131 lt!556614) (_2!10131 lt!556614)))))

(assert (=> d!133893 (= lt!556750 (insertStrictlySorted!418 (toList!9127 lt!556611) (_1!10131 lt!556614) (_2!10131 lt!556614)))))

(assert (=> d!133893 (= (+!4090 lt!556611 lt!556614) lt!556747)))

(declare-fun b!1223308 () Bool)

(declare-fun res!812891 () Bool)

(assert (=> b!1223308 (=> (not res!812891) (not e!694797))))

(assert (=> b!1223308 (= res!812891 (= (getValueByKey!651 (toList!9127 lt!556747) (_1!10131 lt!556614)) (Some!701 (_2!10131 lt!556614))))))

(declare-fun b!1223309 () Bool)

(assert (=> b!1223309 (= e!694797 (contains!7053 (toList!9127 lt!556747) lt!556614))))

(assert (= (and d!133893 res!812892) b!1223308))

(assert (= (and b!1223308 res!812891) b!1223309))

(declare-fun m!1128397 () Bool)

(assert (=> d!133893 m!1128397))

(declare-fun m!1128399 () Bool)

(assert (=> d!133893 m!1128399))

(declare-fun m!1128401 () Bool)

(assert (=> d!133893 m!1128401))

(declare-fun m!1128403 () Bool)

(assert (=> d!133893 m!1128403))

(declare-fun m!1128405 () Bool)

(assert (=> b!1223308 m!1128405))

(declare-fun m!1128407 () Bool)

(assert (=> b!1223309 m!1128407))

(assert (=> b!1223096 d!133893))

(declare-fun d!133895 () Bool)

(declare-fun c!120345 () Bool)

(assert (=> d!133895 (= c!120345 ((_ is ValueCellFull!14835) (select (arr!38093 _values!996) from!1455)))))

(declare-fun e!694800 () V!46579)

(assert (=> d!133895 (= (get!19490 (select (arr!38093 _values!996) from!1455) lt!556603) e!694800)))

(declare-fun b!1223314 () Bool)

(declare-fun get!19492 (ValueCell!14835 V!46579) V!46579)

(assert (=> b!1223314 (= e!694800 (get!19492 (select (arr!38093 _values!996) from!1455) lt!556603))))

(declare-fun b!1223315 () Bool)

(declare-fun get!19493 (ValueCell!14835 V!46579) V!46579)

(assert (=> b!1223315 (= e!694800 (get!19493 (select (arr!38093 _values!996) from!1455) lt!556603))))

(assert (= (and d!133895 c!120345) b!1223314))

(assert (= (and d!133895 (not c!120345)) b!1223315))

(assert (=> b!1223314 m!1128089))

(declare-fun m!1128409 () Bool)

(assert (=> b!1223314 m!1128409))

(assert (=> b!1223315 m!1128089))

(declare-fun m!1128411 () Bool)

(assert (=> b!1223315 m!1128411))

(assert (=> b!1223096 d!133895))

(declare-fun d!133897 () Bool)

(assert (=> d!133897 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1223097 d!133897))

(declare-fun b!1223323 () Bool)

(declare-fun e!694805 () Bool)

(assert (=> b!1223323 (= e!694805 tp_is_empty!31089)))

(declare-fun condMapEmpty!48535 () Bool)

(declare-fun mapDefault!48535 () ValueCell!14835)

(assert (=> mapNonEmpty!48529 (= condMapEmpty!48535 (= mapRest!48529 ((as const (Array (_ BitVec 32) ValueCell!14835)) mapDefault!48535)))))

(declare-fun mapRes!48535 () Bool)

(assert (=> mapNonEmpty!48529 (= tp!92198 (and e!694805 mapRes!48535))))

(declare-fun b!1223322 () Bool)

(declare-fun e!694806 () Bool)

(assert (=> b!1223322 (= e!694806 tp_is_empty!31089)))

(declare-fun mapNonEmpty!48535 () Bool)

(declare-fun tp!92208 () Bool)

(assert (=> mapNonEmpty!48535 (= mapRes!48535 (and tp!92208 e!694806))))

(declare-fun mapRest!48535 () (Array (_ BitVec 32) ValueCell!14835))

(declare-fun mapValue!48535 () ValueCell!14835)

(declare-fun mapKey!48535 () (_ BitVec 32))

(assert (=> mapNonEmpty!48535 (= mapRest!48529 (store mapRest!48535 mapKey!48535 mapValue!48535))))

(declare-fun mapIsEmpty!48535 () Bool)

(assert (=> mapIsEmpty!48535 mapRes!48535))

(assert (= (and mapNonEmpty!48529 condMapEmpty!48535) mapIsEmpty!48535))

(assert (= (and mapNonEmpty!48529 (not condMapEmpty!48535)) mapNonEmpty!48535))

(assert (= (and mapNonEmpty!48535 ((_ is ValueCellFull!14835) mapValue!48535)) b!1223322))

(assert (= (and mapNonEmpty!48529 ((_ is ValueCellFull!14835) mapDefault!48535)) b!1223323))

(declare-fun m!1128413 () Bool)

(assert (=> mapNonEmpty!48535 m!1128413))

(declare-fun b_lambda!22361 () Bool)

(assert (= b_lambda!22343 (or (and start!101700 b_free!26385) b_lambda!22361)))

(declare-fun b_lambda!22363 () Bool)

(assert (= b_lambda!22357 (or (and start!101700 b_free!26385) b_lambda!22363)))

(declare-fun b_lambda!22365 () Bool)

(assert (= b_lambda!22359 (or (and start!101700 b_free!26385) b_lambda!22365)))

(declare-fun b_lambda!22367 () Bool)

(assert (= b_lambda!22351 (or (and start!101700 b_free!26385) b_lambda!22367)))

(declare-fun b_lambda!22369 () Bool)

(assert (= b_lambda!22345 (or (and start!101700 b_free!26385) b_lambda!22369)))

(declare-fun b_lambda!22371 () Bool)

(assert (= b_lambda!22355 (or (and start!101700 b_free!26385) b_lambda!22371)))

(declare-fun b_lambda!22373 () Bool)

(assert (= b_lambda!22353 (or (and start!101700 b_free!26385) b_lambda!22373)))

(declare-fun b_lambda!22375 () Bool)

(assert (= b_lambda!22349 (or (and start!101700 b_free!26385) b_lambda!22375)))

(declare-fun b_lambda!22377 () Bool)

(assert (= b_lambda!22347 (or (and start!101700 b_free!26385) b_lambda!22377)))

(check-sat (not d!133853) (not b!1223296) (not b!1223234) (not b!1223306) (not b!1223290) tp_is_empty!31089 (not b!1223187) (not b_next!26385) (not d!133879) (not bm!60762) (not d!133877) (not d!133881) (not d!133875) (not bm!60750) (not b!1223189) (not b!1223227) (not b!1223280) (not b_lambda!22367) (not d!133871) (not b!1223270) (not b!1223266) (not b!1223215) (not b!1223291) (not b!1223250) (not b_lambda!22371) (not b!1223284) (not b_lambda!22363) (not bm!60757) (not b!1223262) (not b!1223254) (not bm!60747) (not b!1223226) (not b!1223315) (not d!133887) (not b!1223261) (not d!133857) (not b!1223268) (not b_lambda!22373) (not b!1223265) (not bm!60755) (not b!1223222) (not b!1223228) (not b!1223264) (not b!1223232) (not b!1223283) (not bm!60754) (not b!1223307) (not b!1223299) (not b!1223314) (not mapNonEmpty!48535) (not b!1223186) (not b_lambda!22377) (not b!1223229) (not b!1223269) (not b!1223287) (not b!1223252) (not b!1223286) (not b!1223233) (not b_lambda!22375) (not b!1223249) (not b!1223285) (not b!1223221) (not d!133855) (not d!133869) (not b_lambda!22361) (not b!1223289) (not bm!60764) (not bm!60765) (not b!1223297) (not b!1223217) (not b_lambda!22365) (not d!133891) (not b!1223301) (not b!1223216) (not b!1223218) (not b!1223260) b_and!44047 (not b!1223214) (not b!1223255) (not bm!60756) (not b!1223263) (not bm!60751) (not b!1223220) (not b!1223309) (not b!1223308) (not b_lambda!22341) (not b!1223257) (not b!1223175) (not b_lambda!22369) (not bm!60763) (not d!133893) (not b!1223230))
(check-sat b_and!44047 (not b_next!26385))

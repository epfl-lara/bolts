; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101300 () Bool)

(assert start!101300)

(declare-fun b_free!26187 () Bool)

(declare-fun b_next!26187 () Bool)

(assert (=> start!101300 (= b_free!26187 (not b_next!26187))))

(declare-fun tp!91584 () Bool)

(declare-fun b_and!43501 () Bool)

(assert (=> start!101300 (= tp!91584 b_and!43501)))

(declare-fun b!1216317 () Bool)

(declare-fun res!807762 () Bool)

(declare-fun e!690597 () Bool)

(assert (=> b!1216317 (=> (not res!807762) (not e!690597))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216317 (= res!807762 (validMask!0 mask!1564))))

(declare-fun b!1216318 () Bool)

(declare-fun res!807766 () Bool)

(assert (=> b!1216318 (=> (not res!807766) (not e!690597))))

(declare-datatypes ((array!78530 0))(
  ( (array!78531 (arr!37896 (Array (_ BitVec 32) (_ BitVec 64))) (size!38433 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78530)

(declare-datatypes ((List!26888 0))(
  ( (Nil!26885) (Cons!26884 (h!28093 (_ BitVec 64)) (t!40062 List!26888)) )
))
(declare-fun arrayNoDuplicates!0 (array!78530 (_ BitVec 32) List!26888) Bool)

(assert (=> b!1216318 (= res!807766 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26885))))

(declare-fun b!1216319 () Bool)

(declare-fun res!807771 () Bool)

(assert (=> b!1216319 (=> (not res!807771) (not e!690597))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1216319 (= res!807771 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38433 _keys!1208))))))

(declare-fun b!1216320 () Bool)

(declare-fun e!690599 () Bool)

(declare-fun e!690602 () Bool)

(assert (=> b!1216320 (= e!690599 (not e!690602))))

(declare-fun res!807763 () Bool)

(assert (=> b!1216320 (=> res!807763 e!690602)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1216320 (= res!807763 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216320 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40262 0))(
  ( (Unit!40263) )
))
(declare-fun lt!552825 () Unit!40262)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78530 (_ BitVec 64) (_ BitVec 32)) Unit!40262)

(assert (=> b!1216320 (= lt!552825 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1216321 () Bool)

(declare-fun e!690600 () Bool)

(declare-fun e!690598 () Bool)

(declare-fun mapRes!48211 () Bool)

(assert (=> b!1216321 (= e!690600 (and e!690598 mapRes!48211))))

(declare-fun condMapEmpty!48211 () Bool)

(declare-datatypes ((V!46315 0))(
  ( (V!46316 (val!15502 Int)) )
))
(declare-datatypes ((ValueCell!14736 0))(
  ( (ValueCellFull!14736 (v!18156 V!46315)) (EmptyCell!14736) )
))
(declare-datatypes ((array!78532 0))(
  ( (array!78533 (arr!37897 (Array (_ BitVec 32) ValueCell!14736)) (size!38434 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78532)

(declare-fun mapDefault!48211 () ValueCell!14736)

(assert (=> b!1216321 (= condMapEmpty!48211 (= (arr!37897 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14736)) mapDefault!48211)))))

(declare-fun b!1216322 () Bool)

(declare-fun res!807765 () Bool)

(assert (=> b!1216322 (=> (not res!807765) (not e!690597))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1216322 (= res!807765 (and (= (size!38434 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38433 _keys!1208) (size!38434 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!48211 () Bool)

(assert (=> mapIsEmpty!48211 mapRes!48211))

(declare-fun b!1216324 () Bool)

(declare-fun tp_is_empty!30891 () Bool)

(assert (=> b!1216324 (= e!690598 tp_is_empty!30891)))

(declare-fun b!1216325 () Bool)

(declare-fun res!807768 () Bool)

(assert (=> b!1216325 (=> (not res!807768) (not e!690597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78530 (_ BitVec 32)) Bool)

(assert (=> b!1216325 (= res!807768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1216326 () Bool)

(declare-fun res!807772 () Bool)

(assert (=> b!1216326 (=> (not res!807772) (not e!690597))))

(assert (=> b!1216326 (= res!807772 (= (select (arr!37896 _keys!1208) i!673) k0!934))))

(declare-fun b!1216327 () Bool)

(declare-fun e!690596 () Bool)

(assert (=> b!1216327 (= e!690596 (bvslt from!1455 (size!38433 _keys!1208)))))

(declare-fun zeroValue!944 () V!46315)

(declare-fun lt!552823 () array!78530)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46315)

(declare-fun lt!552822 () array!78532)

(declare-datatypes ((tuple2!20066 0))(
  ( (tuple2!20067 (_1!10043 (_ BitVec 64)) (_2!10043 V!46315)) )
))
(declare-datatypes ((List!26889 0))(
  ( (Nil!26886) (Cons!26885 (h!28094 tuple2!20066) (t!40063 List!26889)) )
))
(declare-datatypes ((ListLongMap!18047 0))(
  ( (ListLongMap!18048 (toList!9039 List!26889)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5444 (array!78530 array!78532 (_ BitVec 32) (_ BitVec 32) V!46315 V!46315 (_ BitVec 32) Int) ListLongMap!18047)

(declare-fun -!1902 (ListLongMap!18047 (_ BitVec 64)) ListLongMap!18047)

(assert (=> b!1216327 (= (getCurrentListMapNoExtraKeys!5444 lt!552823 lt!552822 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1902 (getCurrentListMapNoExtraKeys!5444 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!552826 () Unit!40262)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1104 (array!78530 array!78532 (_ BitVec 32) (_ BitVec 32) V!46315 V!46315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40262)

(assert (=> b!1216327 (= lt!552826 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1104 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1216328 () Bool)

(assert (=> b!1216328 (= e!690602 e!690596)))

(declare-fun res!807761 () Bool)

(assert (=> b!1216328 (=> res!807761 e!690596)))

(assert (=> b!1216328 (= res!807761 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!552824 () ListLongMap!18047)

(assert (=> b!1216328 (= lt!552824 (getCurrentListMapNoExtraKeys!5444 lt!552823 lt!552822 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3353 (Int (_ BitVec 64)) V!46315)

(assert (=> b!1216328 (= lt!552822 (array!78533 (store (arr!37897 _values!996) i!673 (ValueCellFull!14736 (dynLambda!3353 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38434 _values!996)))))

(declare-fun lt!552827 () ListLongMap!18047)

(assert (=> b!1216328 (= lt!552827 (getCurrentListMapNoExtraKeys!5444 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1216329 () Bool)

(declare-fun e!690603 () Bool)

(assert (=> b!1216329 (= e!690603 tp_is_empty!30891)))

(declare-fun b!1216330 () Bool)

(declare-fun res!807769 () Bool)

(assert (=> b!1216330 (=> (not res!807769) (not e!690599))))

(assert (=> b!1216330 (= res!807769 (arrayNoDuplicates!0 lt!552823 #b00000000000000000000000000000000 Nil!26885))))

(declare-fun mapNonEmpty!48211 () Bool)

(declare-fun tp!91583 () Bool)

(assert (=> mapNonEmpty!48211 (= mapRes!48211 (and tp!91583 e!690603))))

(declare-fun mapKey!48211 () (_ BitVec 32))

(declare-fun mapRest!48211 () (Array (_ BitVec 32) ValueCell!14736))

(declare-fun mapValue!48211 () ValueCell!14736)

(assert (=> mapNonEmpty!48211 (= (arr!37897 _values!996) (store mapRest!48211 mapKey!48211 mapValue!48211))))

(declare-fun b!1216331 () Bool)

(assert (=> b!1216331 (= e!690597 e!690599)))

(declare-fun res!807770 () Bool)

(assert (=> b!1216331 (=> (not res!807770) (not e!690599))))

(assert (=> b!1216331 (= res!807770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552823 mask!1564))))

(assert (=> b!1216331 (= lt!552823 (array!78531 (store (arr!37896 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38433 _keys!1208)))))

(declare-fun b!1216323 () Bool)

(declare-fun res!807764 () Bool)

(assert (=> b!1216323 (=> (not res!807764) (not e!690597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216323 (= res!807764 (validKeyInArray!0 k0!934))))

(declare-fun res!807767 () Bool)

(assert (=> start!101300 (=> (not res!807767) (not e!690597))))

(assert (=> start!101300 (= res!807767 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38433 _keys!1208))))))

(assert (=> start!101300 e!690597))

(assert (=> start!101300 tp_is_empty!30891))

(declare-fun array_inv!28756 (array!78530) Bool)

(assert (=> start!101300 (array_inv!28756 _keys!1208)))

(assert (=> start!101300 true))

(assert (=> start!101300 tp!91584))

(declare-fun array_inv!28757 (array!78532) Bool)

(assert (=> start!101300 (and (array_inv!28757 _values!996) e!690600)))

(assert (= (and start!101300 res!807767) b!1216317))

(assert (= (and b!1216317 res!807762) b!1216322))

(assert (= (and b!1216322 res!807765) b!1216325))

(assert (= (and b!1216325 res!807768) b!1216318))

(assert (= (and b!1216318 res!807766) b!1216319))

(assert (= (and b!1216319 res!807771) b!1216323))

(assert (= (and b!1216323 res!807764) b!1216326))

(assert (= (and b!1216326 res!807772) b!1216331))

(assert (= (and b!1216331 res!807770) b!1216330))

(assert (= (and b!1216330 res!807769) b!1216320))

(assert (= (and b!1216320 (not res!807763)) b!1216328))

(assert (= (and b!1216328 (not res!807761)) b!1216327))

(assert (= (and b!1216321 condMapEmpty!48211) mapIsEmpty!48211))

(assert (= (and b!1216321 (not condMapEmpty!48211)) mapNonEmpty!48211))

(get-info :version)

(assert (= (and mapNonEmpty!48211 ((_ is ValueCellFull!14736) mapValue!48211)) b!1216329))

(assert (= (and b!1216321 ((_ is ValueCellFull!14736) mapDefault!48211)) b!1216324))

(assert (= start!101300 b!1216321))

(declare-fun b_lambda!21873 () Bool)

(assert (=> (not b_lambda!21873) (not b!1216328)))

(declare-fun t!40061 () Bool)

(declare-fun tb!10995 () Bool)

(assert (=> (and start!101300 (= defaultEntry!1004 defaultEntry!1004) t!40061) tb!10995))

(declare-fun result!22579 () Bool)

(assert (=> tb!10995 (= result!22579 tp_is_empty!30891)))

(assert (=> b!1216328 t!40061))

(declare-fun b_and!43503 () Bool)

(assert (= b_and!43501 (and (=> t!40061 result!22579) b_and!43503)))

(declare-fun m!1121117 () Bool)

(assert (=> b!1216320 m!1121117))

(declare-fun m!1121119 () Bool)

(assert (=> b!1216320 m!1121119))

(declare-fun m!1121121 () Bool)

(assert (=> b!1216326 m!1121121))

(declare-fun m!1121123 () Bool)

(assert (=> b!1216331 m!1121123))

(declare-fun m!1121125 () Bool)

(assert (=> b!1216331 m!1121125))

(declare-fun m!1121127 () Bool)

(assert (=> b!1216317 m!1121127))

(declare-fun m!1121129 () Bool)

(assert (=> b!1216330 m!1121129))

(declare-fun m!1121131 () Bool)

(assert (=> b!1216318 m!1121131))

(declare-fun m!1121133 () Bool)

(assert (=> b!1216328 m!1121133))

(declare-fun m!1121135 () Bool)

(assert (=> b!1216328 m!1121135))

(declare-fun m!1121137 () Bool)

(assert (=> b!1216328 m!1121137))

(declare-fun m!1121139 () Bool)

(assert (=> b!1216328 m!1121139))

(declare-fun m!1121141 () Bool)

(assert (=> b!1216323 m!1121141))

(declare-fun m!1121143 () Bool)

(assert (=> b!1216325 m!1121143))

(declare-fun m!1121145 () Bool)

(assert (=> start!101300 m!1121145))

(declare-fun m!1121147 () Bool)

(assert (=> start!101300 m!1121147))

(declare-fun m!1121149 () Bool)

(assert (=> mapNonEmpty!48211 m!1121149))

(declare-fun m!1121151 () Bool)

(assert (=> b!1216327 m!1121151))

(declare-fun m!1121153 () Bool)

(assert (=> b!1216327 m!1121153))

(assert (=> b!1216327 m!1121153))

(declare-fun m!1121155 () Bool)

(assert (=> b!1216327 m!1121155))

(declare-fun m!1121157 () Bool)

(assert (=> b!1216327 m!1121157))

(check-sat (not mapNonEmpty!48211) (not b_next!26187) (not b!1216331) tp_is_empty!30891 (not b!1216317) (not b!1216328) (not b!1216323) (not b!1216320) (not b!1216327) (not b!1216325) (not b!1216330) (not b!1216318) (not start!101300) (not b_lambda!21873) b_and!43503)
(check-sat b_and!43503 (not b_next!26187))

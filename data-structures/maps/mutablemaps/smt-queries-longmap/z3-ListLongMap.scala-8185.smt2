; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100014 () Bool)

(assert start!100014)

(declare-fun b_free!25557 () Bool)

(declare-fun b_next!25557 () Bool)

(assert (=> start!100014 (= b_free!25557 (not b_next!25557))))

(declare-fun tp!89386 () Bool)

(declare-fun b_and!41995 () Bool)

(assert (=> start!100014 (= tp!89386 b_and!41995)))

(declare-fun b!1190699 () Bool)

(declare-fun res!792009 () Bool)

(declare-fun e!676932 () Bool)

(assert (=> b!1190699 (=> (not res!792009) (not e!676932))))

(declare-datatypes ((array!76940 0))(
  ( (array!76941 (arr!37116 (Array (_ BitVec 32) (_ BitVec 64))) (size!37653 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76940)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76940 (_ BitVec 32)) Bool)

(assert (=> b!1190699 (= res!792009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190700 () Bool)

(declare-fun res!792010 () Bool)

(declare-fun e!676931 () Bool)

(assert (=> b!1190700 (=> (not res!792010) (not e!676931))))

(declare-fun lt!541519 () array!76940)

(declare-datatypes ((List!26301 0))(
  ( (Nil!26298) (Cons!26297 (h!27506 (_ BitVec 64)) (t!38857 List!26301)) )
))
(declare-fun arrayNoDuplicates!0 (array!76940 (_ BitVec 32) List!26301) Bool)

(assert (=> b!1190700 (= res!792010 (arrayNoDuplicates!0 lt!541519 #b00000000000000000000000000000000 Nil!26298))))

(declare-fun res!792015 () Bool)

(assert (=> start!100014 (=> (not res!792015) (not e!676932))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100014 (= res!792015 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37653 _keys!1208))))))

(assert (=> start!100014 e!676932))

(declare-fun tp_is_empty!30087 () Bool)

(assert (=> start!100014 tp_is_empty!30087))

(declare-fun array_inv!28204 (array!76940) Bool)

(assert (=> start!100014 (array_inv!28204 _keys!1208)))

(assert (=> start!100014 true))

(assert (=> start!100014 tp!89386))

(declare-datatypes ((V!45243 0))(
  ( (V!45244 (val!15100 Int)) )
))
(declare-datatypes ((ValueCell!14334 0))(
  ( (ValueCellFull!14334 (v!17739 V!45243)) (EmptyCell!14334) )
))
(declare-datatypes ((array!76942 0))(
  ( (array!76943 (arr!37117 (Array (_ BitVec 32) ValueCell!14334)) (size!37654 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76942)

(declare-fun e!676929 () Bool)

(declare-fun array_inv!28205 (array!76942) Bool)

(assert (=> start!100014 (and (array_inv!28205 _values!996) e!676929)))

(declare-fun b!1190701 () Bool)

(declare-fun e!676926 () Bool)

(declare-fun mapRes!46958 () Bool)

(assert (=> b!1190701 (= e!676929 (and e!676926 mapRes!46958))))

(declare-fun condMapEmpty!46958 () Bool)

(declare-fun mapDefault!46958 () ValueCell!14334)

(assert (=> b!1190701 (= condMapEmpty!46958 (= (arr!37117 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14334)) mapDefault!46958)))))

(declare-fun b!1190702 () Bool)

(declare-fun e!676930 () Bool)

(declare-fun e!676933 () Bool)

(assert (=> b!1190702 (= e!676930 e!676933)))

(declare-fun res!792005 () Bool)

(assert (=> b!1190702 (=> res!792005 e!676933)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190702 (= res!792005 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45243)

(declare-datatypes ((tuple2!19540 0))(
  ( (tuple2!19541 (_1!9780 (_ BitVec 64)) (_2!9780 V!45243)) )
))
(declare-datatypes ((List!26302 0))(
  ( (Nil!26299) (Cons!26298 (h!27507 tuple2!19540) (t!38858 List!26302)) )
))
(declare-datatypes ((ListLongMap!17521 0))(
  ( (ListLongMap!17522 (toList!8776 List!26302)) )
))
(declare-fun lt!541521 () ListLongMap!17521)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541520 () array!76942)

(declare-fun minValue!944 () V!45243)

(declare-fun getCurrentListMapNoExtraKeys!5190 (array!76940 array!76942 (_ BitVec 32) (_ BitVec 32) V!45243 V!45243 (_ BitVec 32) Int) ListLongMap!17521)

(assert (=> b!1190702 (= lt!541521 (getCurrentListMapNoExtraKeys!5190 lt!541519 lt!541520 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3136 (Int (_ BitVec 64)) V!45243)

(assert (=> b!1190702 (= lt!541520 (array!76943 (store (arr!37117 _values!996) i!673 (ValueCellFull!14334 (dynLambda!3136 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37654 _values!996)))))

(declare-fun lt!541523 () ListLongMap!17521)

(assert (=> b!1190702 (= lt!541523 (getCurrentListMapNoExtraKeys!5190 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190703 () Bool)

(declare-fun res!792007 () Bool)

(assert (=> b!1190703 (=> (not res!792007) (not e!676932))))

(assert (=> b!1190703 (= res!792007 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26298))))

(declare-fun b!1190704 () Bool)

(declare-fun e!676927 () Bool)

(assert (=> b!1190704 (= e!676927 tp_is_empty!30087)))

(declare-fun b!1190705 () Bool)

(assert (=> b!1190705 (= e!676933 true)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1758 (ListLongMap!17521 (_ BitVec 64)) ListLongMap!17521)

(assert (=> b!1190705 (= (getCurrentListMapNoExtraKeys!5190 lt!541519 lt!541520 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1758 (getCurrentListMapNoExtraKeys!5190 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39444 0))(
  ( (Unit!39445) )
))
(declare-fun lt!541522 () Unit!39444)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!964 (array!76940 array!76942 (_ BitVec 32) (_ BitVec 32) V!45243 V!45243 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39444)

(assert (=> b!1190705 (= lt!541522 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!964 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1190706 () Bool)

(declare-fun res!792014 () Bool)

(assert (=> b!1190706 (=> (not res!792014) (not e!676932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190706 (= res!792014 (validKeyInArray!0 k0!934))))

(declare-fun b!1190707 () Bool)

(assert (=> b!1190707 (= e!676932 e!676931)))

(declare-fun res!792016 () Bool)

(assert (=> b!1190707 (=> (not res!792016) (not e!676931))))

(assert (=> b!1190707 (= res!792016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541519 mask!1564))))

(assert (=> b!1190707 (= lt!541519 (array!76941 (store (arr!37116 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37653 _keys!1208)))))

(declare-fun b!1190708 () Bool)

(declare-fun res!792006 () Bool)

(assert (=> b!1190708 (=> (not res!792006) (not e!676932))))

(assert (=> b!1190708 (= res!792006 (= (select (arr!37116 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!46958 () Bool)

(assert (=> mapIsEmpty!46958 mapRes!46958))

(declare-fun b!1190709 () Bool)

(assert (=> b!1190709 (= e!676931 (not e!676930))))

(declare-fun res!792008 () Bool)

(assert (=> b!1190709 (=> res!792008 e!676930)))

(assert (=> b!1190709 (= res!792008 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190709 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541524 () Unit!39444)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76940 (_ BitVec 64) (_ BitVec 32)) Unit!39444)

(assert (=> b!1190709 (= lt!541524 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1190710 () Bool)

(declare-fun res!792013 () Bool)

(assert (=> b!1190710 (=> (not res!792013) (not e!676932))))

(assert (=> b!1190710 (= res!792013 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37653 _keys!1208))))))

(declare-fun b!1190711 () Bool)

(declare-fun res!792012 () Bool)

(assert (=> b!1190711 (=> (not res!792012) (not e!676932))))

(assert (=> b!1190711 (= res!792012 (and (= (size!37654 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37653 _keys!1208) (size!37654 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190712 () Bool)

(declare-fun res!792011 () Bool)

(assert (=> b!1190712 (=> (not res!792011) (not e!676932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190712 (= res!792011 (validMask!0 mask!1564))))

(declare-fun b!1190713 () Bool)

(assert (=> b!1190713 (= e!676926 tp_is_empty!30087)))

(declare-fun mapNonEmpty!46958 () Bool)

(declare-fun tp!89385 () Bool)

(assert (=> mapNonEmpty!46958 (= mapRes!46958 (and tp!89385 e!676927))))

(declare-fun mapKey!46958 () (_ BitVec 32))

(declare-fun mapValue!46958 () ValueCell!14334)

(declare-fun mapRest!46958 () (Array (_ BitVec 32) ValueCell!14334))

(assert (=> mapNonEmpty!46958 (= (arr!37117 _values!996) (store mapRest!46958 mapKey!46958 mapValue!46958))))

(assert (= (and start!100014 res!792015) b!1190712))

(assert (= (and b!1190712 res!792011) b!1190711))

(assert (= (and b!1190711 res!792012) b!1190699))

(assert (= (and b!1190699 res!792009) b!1190703))

(assert (= (and b!1190703 res!792007) b!1190710))

(assert (= (and b!1190710 res!792013) b!1190706))

(assert (= (and b!1190706 res!792014) b!1190708))

(assert (= (and b!1190708 res!792006) b!1190707))

(assert (= (and b!1190707 res!792016) b!1190700))

(assert (= (and b!1190700 res!792010) b!1190709))

(assert (= (and b!1190709 (not res!792008)) b!1190702))

(assert (= (and b!1190702 (not res!792005)) b!1190705))

(assert (= (and b!1190701 condMapEmpty!46958) mapIsEmpty!46958))

(assert (= (and b!1190701 (not condMapEmpty!46958)) mapNonEmpty!46958))

(get-info :version)

(assert (= (and mapNonEmpty!46958 ((_ is ValueCellFull!14334) mapValue!46958)) b!1190704))

(assert (= (and b!1190701 ((_ is ValueCellFull!14334) mapDefault!46958)) b!1190713))

(assert (= start!100014 b!1190701))

(declare-fun b_lambda!20719 () Bool)

(assert (=> (not b_lambda!20719) (not b!1190702)))

(declare-fun t!38856 () Bool)

(declare-fun tb!10377 () Bool)

(assert (=> (and start!100014 (= defaultEntry!1004 defaultEntry!1004) t!38856) tb!10377))

(declare-fun result!21313 () Bool)

(assert (=> tb!10377 (= result!21313 tp_is_empty!30087)))

(assert (=> b!1190702 t!38856))

(declare-fun b_and!41997 () Bool)

(assert (= b_and!41995 (and (=> t!38856 result!21313) b_and!41997)))

(declare-fun m!1099289 () Bool)

(assert (=> b!1190705 m!1099289))

(declare-fun m!1099291 () Bool)

(assert (=> b!1190705 m!1099291))

(assert (=> b!1190705 m!1099291))

(declare-fun m!1099293 () Bool)

(assert (=> b!1190705 m!1099293))

(declare-fun m!1099295 () Bool)

(assert (=> b!1190705 m!1099295))

(declare-fun m!1099297 () Bool)

(assert (=> b!1190702 m!1099297))

(declare-fun m!1099299 () Bool)

(assert (=> b!1190702 m!1099299))

(declare-fun m!1099301 () Bool)

(assert (=> b!1190702 m!1099301))

(declare-fun m!1099303 () Bool)

(assert (=> b!1190702 m!1099303))

(declare-fun m!1099305 () Bool)

(assert (=> b!1190706 m!1099305))

(declare-fun m!1099307 () Bool)

(assert (=> b!1190709 m!1099307))

(declare-fun m!1099309 () Bool)

(assert (=> b!1190709 m!1099309))

(declare-fun m!1099311 () Bool)

(assert (=> b!1190703 m!1099311))

(declare-fun m!1099313 () Bool)

(assert (=> b!1190700 m!1099313))

(declare-fun m!1099315 () Bool)

(assert (=> mapNonEmpty!46958 m!1099315))

(declare-fun m!1099317 () Bool)

(assert (=> b!1190699 m!1099317))

(declare-fun m!1099319 () Bool)

(assert (=> b!1190712 m!1099319))

(declare-fun m!1099321 () Bool)

(assert (=> start!100014 m!1099321))

(declare-fun m!1099323 () Bool)

(assert (=> start!100014 m!1099323))

(declare-fun m!1099325 () Bool)

(assert (=> b!1190707 m!1099325))

(declare-fun m!1099327 () Bool)

(assert (=> b!1190707 m!1099327))

(declare-fun m!1099329 () Bool)

(assert (=> b!1190708 m!1099329))

(check-sat (not b!1190699) tp_is_empty!30087 (not b!1190702) b_and!41997 (not b!1190712) (not b!1190700) (not b!1190709) (not start!100014) (not b_next!25557) (not b!1190705) (not b!1190707) (not b_lambda!20719) (not b!1190706) (not mapNonEmpty!46958) (not b!1190703))
(check-sat b_and!41997 (not b_next!25557))

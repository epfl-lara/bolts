; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99516 () Bool)

(assert start!99516)

(declare-fun b_free!25059 () Bool)

(declare-fun b_next!25059 () Bool)

(assert (=> start!99516 (= b_free!25059 (not b_next!25059))))

(declare-fun tp!87892 () Bool)

(declare-fun b_and!40999 () Bool)

(assert (=> start!99516 (= tp!87892 b_and!40999)))

(declare-fun b!1175709 () Bool)

(declare-datatypes ((Unit!38730 0))(
  ( (Unit!38731) )
))
(declare-fun e!668350 () Unit!38730)

(declare-fun Unit!38732 () Unit!38730)

(assert (=> b!1175709 (= e!668350 Unit!38732)))

(declare-fun b!1175710 () Bool)

(declare-fun e!668348 () Bool)

(assert (=> b!1175710 (= e!668348 true)))

(declare-datatypes ((array!75954 0))(
  ( (array!75955 (arr!36623 (Array (_ BitVec 32) (_ BitVec 64))) (size!37160 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75954)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1175710 (not (= (select (arr!36623 _keys!1208) from!1455) k0!934))))

(declare-fun lt!530461 () Unit!38730)

(assert (=> b!1175710 (= lt!530461 e!668350)))

(declare-fun c!116660 () Bool)

(assert (=> b!1175710 (= c!116660 (= (select (arr!36623 _keys!1208) from!1455) k0!934))))

(declare-fun e!668352 () Bool)

(assert (=> b!1175710 e!668352))

(declare-fun res!780942 () Bool)

(assert (=> b!1175710 (=> (not res!780942) (not e!668352))))

(declare-datatypes ((V!44579 0))(
  ( (V!44580 (val!14851 Int)) )
))
(declare-fun lt!530453 () V!44579)

(declare-datatypes ((tuple2!19100 0))(
  ( (tuple2!19101 (_1!9560 (_ BitVec 64)) (_2!9560 V!44579)) )
))
(declare-datatypes ((List!25868 0))(
  ( (Nil!25865) (Cons!25864 (h!27073 tuple2!19100) (t!37926 List!25868)) )
))
(declare-datatypes ((ListLongMap!17081 0))(
  ( (ListLongMap!17082 (toList!8556 List!25868)) )
))
(declare-fun lt!530463 () ListLongMap!17081)

(declare-datatypes ((ValueCell!14085 0))(
  ( (ValueCellFull!14085 (v!17490 V!44579)) (EmptyCell!14085) )
))
(declare-datatypes ((array!75956 0))(
  ( (array!75957 (arr!36624 (Array (_ BitVec 32) ValueCell!14085)) (size!37161 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75956)

(declare-fun lt!530465 () ListLongMap!17081)

(declare-fun +!3781 (ListLongMap!17081 tuple2!19100) ListLongMap!17081)

(declare-fun get!18734 (ValueCell!14085 V!44579) V!44579)

(assert (=> b!1175710 (= res!780942 (= lt!530465 (+!3781 lt!530463 (tuple2!19101 (select (arr!36623 _keys!1208) from!1455) (get!18734 (select (arr!36624 _values!996) from!1455) lt!530453)))))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!668346 () Bool)

(declare-fun b!1175711 () Bool)

(declare-fun arrayContainsKey!0 (array!75954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175711 (= e!668346 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1175712 () Bool)

(declare-fun e!668345 () Bool)

(declare-fun e!668344 () Bool)

(assert (=> b!1175712 (= e!668345 (not e!668344))))

(declare-fun res!780938 () Bool)

(assert (=> b!1175712 (=> res!780938 e!668344)))

(assert (=> b!1175712 (= res!780938 (bvsgt from!1455 i!673))))

(assert (=> b!1175712 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!530458 () Unit!38730)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75954 (_ BitVec 64) (_ BitVec 32)) Unit!38730)

(assert (=> b!1175712 (= lt!530458 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1175713 () Bool)

(declare-fun e!668349 () Bool)

(declare-fun tp_is_empty!29589 () Bool)

(assert (=> b!1175713 (= e!668349 tp_is_empty!29589)))

(declare-fun b!1175714 () Bool)

(declare-fun e!668353 () Bool)

(assert (=> b!1175714 (= e!668353 tp_is_empty!29589)))

(declare-fun b!1175715 () Bool)

(declare-fun res!780941 () Bool)

(declare-fun e!668351 () Bool)

(assert (=> b!1175715 (=> (not res!780941) (not e!668351))))

(assert (=> b!1175715 (= res!780941 (= (select (arr!36623 _keys!1208) i!673) k0!934))))

(declare-fun b!1175716 () Bool)

(declare-fun e!668343 () Bool)

(assert (=> b!1175716 (= e!668343 e!668348)))

(declare-fun res!780939 () Bool)

(assert (=> b!1175716 (=> res!780939 e!668348)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175716 (= res!780939 (not (validKeyInArray!0 (select (arr!36623 _keys!1208) from!1455))))))

(declare-fun lt!530459 () ListLongMap!17081)

(assert (=> b!1175716 (= lt!530459 lt!530463)))

(declare-fun lt!530464 () ListLongMap!17081)

(declare-fun -!1563 (ListLongMap!17081 (_ BitVec 64)) ListLongMap!17081)

(assert (=> b!1175716 (= lt!530463 (-!1563 lt!530464 k0!934))))

(declare-fun zeroValue!944 () V!44579)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!530457 () array!75956)

(declare-fun minValue!944 () V!44579)

(declare-fun lt!530466 () array!75954)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4987 (array!75954 array!75956 (_ BitVec 32) (_ BitVec 32) V!44579 V!44579 (_ BitVec 32) Int) ListLongMap!17081)

(assert (=> b!1175716 (= lt!530459 (getCurrentListMapNoExtraKeys!4987 lt!530466 lt!530457 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1175716 (= lt!530464 (getCurrentListMapNoExtraKeys!4987 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530462 () Unit!38730)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!787 (array!75954 array!75956 (_ BitVec 32) (_ BitVec 32) V!44579 V!44579 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38730)

(assert (=> b!1175716 (= lt!530462 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!787 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175717 () Bool)

(assert (=> b!1175717 (= e!668351 e!668345)))

(declare-fun res!780933 () Bool)

(assert (=> b!1175717 (=> (not res!780933) (not e!668345))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75954 (_ BitVec 32)) Bool)

(assert (=> b!1175717 (= res!780933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530466 mask!1564))))

(assert (=> b!1175717 (= lt!530466 (array!75955 (store (arr!36623 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37160 _keys!1208)))))

(declare-fun res!780934 () Bool)

(assert (=> start!99516 (=> (not res!780934) (not e!668351))))

(assert (=> start!99516 (= res!780934 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37160 _keys!1208))))))

(assert (=> start!99516 e!668351))

(assert (=> start!99516 tp_is_empty!29589))

(declare-fun array_inv!27858 (array!75954) Bool)

(assert (=> start!99516 (array_inv!27858 _keys!1208)))

(assert (=> start!99516 true))

(assert (=> start!99516 tp!87892))

(declare-fun e!668347 () Bool)

(declare-fun array_inv!27859 (array!75956) Bool)

(assert (=> start!99516 (and (array_inv!27859 _values!996) e!668347)))

(declare-fun b!1175718 () Bool)

(assert (=> b!1175718 (= e!668352 e!668346)))

(declare-fun res!780940 () Bool)

(assert (=> b!1175718 (=> res!780940 e!668346)))

(assert (=> b!1175718 (= res!780940 (not (= (select (arr!36623 _keys!1208) from!1455) k0!934)))))

(declare-fun mapIsEmpty!46211 () Bool)

(declare-fun mapRes!46211 () Bool)

(assert (=> mapIsEmpty!46211 mapRes!46211))

(declare-fun b!1175719 () Bool)

(declare-fun res!780943 () Bool)

(assert (=> b!1175719 (=> (not res!780943) (not e!668345))))

(declare-datatypes ((List!25869 0))(
  ( (Nil!25866) (Cons!25865 (h!27074 (_ BitVec 64)) (t!37927 List!25869)) )
))
(declare-fun arrayNoDuplicates!0 (array!75954 (_ BitVec 32) List!25869) Bool)

(assert (=> b!1175719 (= res!780943 (arrayNoDuplicates!0 lt!530466 #b00000000000000000000000000000000 Nil!25866))))

(declare-fun mapNonEmpty!46211 () Bool)

(declare-fun tp!87891 () Bool)

(assert (=> mapNonEmpty!46211 (= mapRes!46211 (and tp!87891 e!668349))))

(declare-fun mapValue!46211 () ValueCell!14085)

(declare-fun mapKey!46211 () (_ BitVec 32))

(declare-fun mapRest!46211 () (Array (_ BitVec 32) ValueCell!14085))

(assert (=> mapNonEmpty!46211 (= (arr!36624 _values!996) (store mapRest!46211 mapKey!46211 mapValue!46211))))

(declare-fun b!1175720 () Bool)

(declare-fun res!780945 () Bool)

(assert (=> b!1175720 (=> (not res!780945) (not e!668351))))

(assert (=> b!1175720 (= res!780945 (validKeyInArray!0 k0!934))))

(declare-fun b!1175721 () Bool)

(assert (=> b!1175721 (= e!668347 (and e!668353 mapRes!46211))))

(declare-fun condMapEmpty!46211 () Bool)

(declare-fun mapDefault!46211 () ValueCell!14085)

(assert (=> b!1175721 (= condMapEmpty!46211 (= (arr!36624 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14085)) mapDefault!46211)))))

(declare-fun b!1175722 () Bool)

(declare-fun res!780944 () Bool)

(assert (=> b!1175722 (=> (not res!780944) (not e!668351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175722 (= res!780944 (validMask!0 mask!1564))))

(declare-fun b!1175723 () Bool)

(declare-fun Unit!38733 () Unit!38730)

(assert (=> b!1175723 (= e!668350 Unit!38733)))

(declare-fun lt!530456 () Unit!38730)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75954 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38730)

(assert (=> b!1175723 (= lt!530456 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1175723 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530460 () Unit!38730)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75954 (_ BitVec 32) (_ BitVec 32)) Unit!38730)

(assert (=> b!1175723 (= lt!530460 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1175723 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25866)))

(declare-fun lt!530455 () Unit!38730)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75954 (_ BitVec 64) (_ BitVec 32) List!25869) Unit!38730)

(assert (=> b!1175723 (= lt!530455 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25866))))

(assert (=> b!1175723 false))

(declare-fun b!1175724 () Bool)

(declare-fun res!780936 () Bool)

(assert (=> b!1175724 (=> (not res!780936) (not e!668351))))

(assert (=> b!1175724 (= res!780936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175725 () Bool)

(declare-fun res!780935 () Bool)

(assert (=> b!1175725 (=> (not res!780935) (not e!668351))))

(assert (=> b!1175725 (= res!780935 (and (= (size!37161 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37160 _keys!1208) (size!37161 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175726 () Bool)

(declare-fun res!780946 () Bool)

(assert (=> b!1175726 (=> (not res!780946) (not e!668351))))

(assert (=> b!1175726 (= res!780946 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37160 _keys!1208))))))

(declare-fun b!1175727 () Bool)

(assert (=> b!1175727 (= e!668344 e!668343)))

(declare-fun res!780932 () Bool)

(assert (=> b!1175727 (=> res!780932 e!668343)))

(assert (=> b!1175727 (= res!780932 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1175727 (= lt!530465 (getCurrentListMapNoExtraKeys!4987 lt!530466 lt!530457 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1175727 (= lt!530457 (array!75957 (store (arr!36624 _values!996) i!673 (ValueCellFull!14085 lt!530453)) (size!37161 _values!996)))))

(declare-fun dynLambda!2965 (Int (_ BitVec 64)) V!44579)

(assert (=> b!1175727 (= lt!530453 (dynLambda!2965 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530454 () ListLongMap!17081)

(assert (=> b!1175727 (= lt!530454 (getCurrentListMapNoExtraKeys!4987 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175728 () Bool)

(declare-fun res!780937 () Bool)

(assert (=> b!1175728 (=> (not res!780937) (not e!668351))))

(assert (=> b!1175728 (= res!780937 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25866))))

(assert (= (and start!99516 res!780934) b!1175722))

(assert (= (and b!1175722 res!780944) b!1175725))

(assert (= (and b!1175725 res!780935) b!1175724))

(assert (= (and b!1175724 res!780936) b!1175728))

(assert (= (and b!1175728 res!780937) b!1175726))

(assert (= (and b!1175726 res!780946) b!1175720))

(assert (= (and b!1175720 res!780945) b!1175715))

(assert (= (and b!1175715 res!780941) b!1175717))

(assert (= (and b!1175717 res!780933) b!1175719))

(assert (= (and b!1175719 res!780943) b!1175712))

(assert (= (and b!1175712 (not res!780938)) b!1175727))

(assert (= (and b!1175727 (not res!780932)) b!1175716))

(assert (= (and b!1175716 (not res!780939)) b!1175710))

(assert (= (and b!1175710 res!780942) b!1175718))

(assert (= (and b!1175718 (not res!780940)) b!1175711))

(assert (= (and b!1175710 c!116660) b!1175723))

(assert (= (and b!1175710 (not c!116660)) b!1175709))

(assert (= (and b!1175721 condMapEmpty!46211) mapIsEmpty!46211))

(assert (= (and b!1175721 (not condMapEmpty!46211)) mapNonEmpty!46211))

(get-info :version)

(assert (= (and mapNonEmpty!46211 ((_ is ValueCellFull!14085) mapValue!46211)) b!1175713))

(assert (= (and b!1175721 ((_ is ValueCellFull!14085) mapDefault!46211)) b!1175714))

(assert (= start!99516 b!1175721))

(declare-fun b_lambda!20221 () Bool)

(assert (=> (not b_lambda!20221) (not b!1175727)))

(declare-fun t!37925 () Bool)

(declare-fun tb!9879 () Bool)

(assert (=> (and start!99516 (= defaultEntry!1004 defaultEntry!1004) t!37925) tb!9879))

(declare-fun result!20317 () Bool)

(assert (=> tb!9879 (= result!20317 tp_is_empty!29589)))

(assert (=> b!1175727 t!37925))

(declare-fun b_and!41001 () Bool)

(assert (= b_and!40999 (and (=> t!37925 result!20317) b_and!41001)))

(declare-fun m!1083681 () Bool)

(assert (=> b!1175719 m!1083681))

(declare-fun m!1083683 () Bool)

(assert (=> b!1175722 m!1083683))

(declare-fun m!1083685 () Bool)

(assert (=> mapNonEmpty!46211 m!1083685))

(declare-fun m!1083687 () Bool)

(assert (=> b!1175724 m!1083687))

(declare-fun m!1083689 () Bool)

(assert (=> b!1175723 m!1083689))

(declare-fun m!1083691 () Bool)

(assert (=> b!1175723 m!1083691))

(declare-fun m!1083693 () Bool)

(assert (=> b!1175723 m!1083693))

(declare-fun m!1083695 () Bool)

(assert (=> b!1175723 m!1083695))

(declare-fun m!1083697 () Bool)

(assert (=> b!1175723 m!1083697))

(declare-fun m!1083699 () Bool)

(assert (=> b!1175717 m!1083699))

(declare-fun m!1083701 () Bool)

(assert (=> b!1175717 m!1083701))

(declare-fun m!1083703 () Bool)

(assert (=> b!1175720 m!1083703))

(declare-fun m!1083705 () Bool)

(assert (=> b!1175716 m!1083705))

(declare-fun m!1083707 () Bool)

(assert (=> b!1175716 m!1083707))

(declare-fun m!1083709 () Bool)

(assert (=> b!1175716 m!1083709))

(declare-fun m!1083711 () Bool)

(assert (=> b!1175716 m!1083711))

(declare-fun m!1083713 () Bool)

(assert (=> b!1175716 m!1083713))

(declare-fun m!1083715 () Bool)

(assert (=> b!1175716 m!1083715))

(assert (=> b!1175716 m!1083713))

(declare-fun m!1083717 () Bool)

(assert (=> b!1175728 m!1083717))

(declare-fun m!1083719 () Bool)

(assert (=> start!99516 m!1083719))

(declare-fun m!1083721 () Bool)

(assert (=> start!99516 m!1083721))

(declare-fun m!1083723 () Bool)

(assert (=> b!1175712 m!1083723))

(declare-fun m!1083725 () Bool)

(assert (=> b!1175712 m!1083725))

(assert (=> b!1175718 m!1083713))

(declare-fun m!1083727 () Bool)

(assert (=> b!1175727 m!1083727))

(declare-fun m!1083729 () Bool)

(assert (=> b!1175727 m!1083729))

(declare-fun m!1083731 () Bool)

(assert (=> b!1175727 m!1083731))

(declare-fun m!1083733 () Bool)

(assert (=> b!1175727 m!1083733))

(assert (=> b!1175710 m!1083713))

(declare-fun m!1083735 () Bool)

(assert (=> b!1175710 m!1083735))

(assert (=> b!1175710 m!1083735))

(declare-fun m!1083737 () Bool)

(assert (=> b!1175710 m!1083737))

(declare-fun m!1083739 () Bool)

(assert (=> b!1175710 m!1083739))

(declare-fun m!1083741 () Bool)

(assert (=> b!1175711 m!1083741))

(declare-fun m!1083743 () Bool)

(assert (=> b!1175715 m!1083743))

(check-sat (not b!1175717) (not b!1175710) (not b_lambda!20221) (not b!1175712) (not b_next!25059) (not mapNonEmpty!46211) (not b!1175722) (not b!1175716) (not start!99516) (not b!1175719) (not b!1175711) (not b!1175723) (not b!1175728) (not b!1175720) (not b!1175727) tp_is_empty!29589 (not b!1175724) b_and!41001)
(check-sat b_and!41001 (not b_next!25059))

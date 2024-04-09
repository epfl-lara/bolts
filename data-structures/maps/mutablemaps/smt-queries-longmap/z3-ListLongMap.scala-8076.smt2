; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99360 () Bool)

(assert start!99360)

(declare-fun b_free!24903 () Bool)

(declare-fun b_next!24903 () Bool)

(assert (=> start!99360 (= b_free!24903 (not b_next!24903))))

(declare-fun tp!87423 () Bool)

(declare-fun b_and!40687 () Bool)

(assert (=> start!99360 (= tp!87423 b_and!40687)))

(declare-fun b!1170715 () Bool)

(declare-fun res!777100 () Bool)

(declare-fun e!665461 () Bool)

(assert (=> b!1170715 (=> (not res!777100) (not e!665461))))

(declare-datatypes ((array!75642 0))(
  ( (array!75643 (arr!36467 (Array (_ BitVec 32) (_ BitVec 64))) (size!37004 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75642)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1170715 (= res!777100 (= (select (arr!36467 _keys!1208) i!673) k0!934))))

(declare-fun res!777094 () Bool)

(assert (=> start!99360 (=> (not res!777094) (not e!665461))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99360 (= res!777094 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37004 _keys!1208))))))

(assert (=> start!99360 e!665461))

(declare-fun tp_is_empty!29433 () Bool)

(assert (=> start!99360 tp_is_empty!29433))

(declare-fun array_inv!27750 (array!75642) Bool)

(assert (=> start!99360 (array_inv!27750 _keys!1208)))

(assert (=> start!99360 true))

(assert (=> start!99360 tp!87423))

(declare-datatypes ((V!44371 0))(
  ( (V!44372 (val!14773 Int)) )
))
(declare-datatypes ((ValueCell!14007 0))(
  ( (ValueCellFull!14007 (v!17412 V!44371)) (EmptyCell!14007) )
))
(declare-datatypes ((array!75644 0))(
  ( (array!75645 (arr!36468 (Array (_ BitVec 32) ValueCell!14007)) (size!37005 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75644)

(declare-fun e!665454 () Bool)

(declare-fun array_inv!27751 (array!75644) Bool)

(assert (=> start!99360 (and (array_inv!27751 _values!996) e!665454)))

(declare-fun b!1170716 () Bool)

(declare-fun res!777099 () Bool)

(assert (=> b!1170716 (=> (not res!777099) (not e!665461))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1170716 (= res!777099 (and (= (size!37005 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37004 _keys!1208) (size!37005 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170717 () Bool)

(declare-fun res!777108 () Bool)

(assert (=> b!1170717 (=> (not res!777108) (not e!665461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170717 (= res!777108 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45977 () Bool)

(declare-fun mapRes!45977 () Bool)

(assert (=> mapIsEmpty!45977 mapRes!45977))

(declare-fun mapNonEmpty!45977 () Bool)

(declare-fun tp!87424 () Bool)

(declare-fun e!665458 () Bool)

(assert (=> mapNonEmpty!45977 (= mapRes!45977 (and tp!87424 e!665458))))

(declare-fun mapRest!45977 () (Array (_ BitVec 32) ValueCell!14007))

(declare-fun mapValue!45977 () ValueCell!14007)

(declare-fun mapKey!45977 () (_ BitVec 32))

(assert (=> mapNonEmpty!45977 (= (arr!36468 _values!996) (store mapRest!45977 mapKey!45977 mapValue!45977))))

(declare-fun b!1170718 () Bool)

(assert (=> b!1170718 (= e!665458 tp_is_empty!29433)))

(declare-fun b!1170719 () Bool)

(declare-fun e!665463 () Bool)

(declare-fun e!665464 () Bool)

(assert (=> b!1170719 (= e!665463 e!665464)))

(declare-fun res!777104 () Bool)

(assert (=> b!1170719 (=> res!777104 e!665464)))

(assert (=> b!1170719 (= res!777104 (not (= (select (arr!36467 _keys!1208) from!1455) k0!934)))))

(declare-fun e!665459 () Bool)

(assert (=> b!1170719 e!665459))

(declare-fun res!777106 () Bool)

(assert (=> b!1170719 (=> (not res!777106) (not e!665459))))

(declare-datatypes ((tuple2!18960 0))(
  ( (tuple2!18961 (_1!9490 (_ BitVec 64)) (_2!9490 V!44371)) )
))
(declare-datatypes ((List!25730 0))(
  ( (Nil!25727) (Cons!25726 (h!26935 tuple2!18960) (t!37632 List!25730)) )
))
(declare-datatypes ((ListLongMap!16941 0))(
  ( (ListLongMap!16942 (toList!8486 List!25730)) )
))
(declare-fun lt!527280 () ListLongMap!16941)

(declare-fun lt!527274 () ListLongMap!16941)

(declare-fun lt!527272 () V!44371)

(declare-fun +!3727 (ListLongMap!16941 tuple2!18960) ListLongMap!16941)

(declare-fun get!18628 (ValueCell!14007 V!44371) V!44371)

(assert (=> b!1170719 (= res!777106 (= lt!527280 (+!3727 lt!527274 (tuple2!18961 (select (arr!36467 _keys!1208) from!1455) (get!18628 (select (arr!36468 _values!996) from!1455) lt!527272)))))))

(declare-fun b!1170720 () Bool)

(declare-fun res!777101 () Bool)

(assert (=> b!1170720 (=> (not res!777101) (not e!665461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170720 (= res!777101 (validKeyInArray!0 k0!934))))

(declare-fun b!1170721 () Bool)

(declare-fun e!665456 () Bool)

(declare-fun e!665457 () Bool)

(assert (=> b!1170721 (= e!665456 (not e!665457))))

(declare-fun res!777097 () Bool)

(assert (=> b!1170721 (=> res!777097 e!665457)))

(assert (=> b!1170721 (= res!777097 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170721 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38514 0))(
  ( (Unit!38515) )
))
(declare-fun lt!527271 () Unit!38514)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75642 (_ BitVec 64) (_ BitVec 32)) Unit!38514)

(assert (=> b!1170721 (= lt!527271 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170722 () Bool)

(declare-fun res!777096 () Bool)

(assert (=> b!1170722 (=> (not res!777096) (not e!665461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75642 (_ BitVec 32)) Bool)

(assert (=> b!1170722 (= res!777096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170723 () Bool)

(assert (=> b!1170723 (= e!665464 true)))

(assert (=> b!1170723 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527273 () Unit!38514)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75642 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38514)

(assert (=> b!1170723 (= lt!527273 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170724 () Bool)

(assert (=> b!1170724 (= e!665461 e!665456)))

(declare-fun res!777098 () Bool)

(assert (=> b!1170724 (=> (not res!777098) (not e!665456))))

(declare-fun lt!527275 () array!75642)

(assert (=> b!1170724 (= res!777098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527275 mask!1564))))

(assert (=> b!1170724 (= lt!527275 (array!75643 (store (arr!36467 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37004 _keys!1208)))))

(declare-fun b!1170725 () Bool)

(declare-fun res!777095 () Bool)

(assert (=> b!1170725 (=> (not res!777095) (not e!665461))))

(declare-datatypes ((List!25731 0))(
  ( (Nil!25728) (Cons!25727 (h!26936 (_ BitVec 64)) (t!37633 List!25731)) )
))
(declare-fun arrayNoDuplicates!0 (array!75642 (_ BitVec 32) List!25731) Bool)

(assert (=> b!1170725 (= res!777095 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25728))))

(declare-fun b!1170726 () Bool)

(declare-fun e!665453 () Bool)

(assert (=> b!1170726 (= e!665454 (and e!665453 mapRes!45977))))

(declare-fun condMapEmpty!45977 () Bool)

(declare-fun mapDefault!45977 () ValueCell!14007)

(assert (=> b!1170726 (= condMapEmpty!45977 (= (arr!36468 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14007)) mapDefault!45977)))))

(declare-fun b!1170727 () Bool)

(assert (=> b!1170727 (= e!665453 tp_is_empty!29433)))

(declare-fun e!665460 () Bool)

(declare-fun b!1170728 () Bool)

(assert (=> b!1170728 (= e!665460 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170729 () Bool)

(declare-fun res!777109 () Bool)

(assert (=> b!1170729 (=> (not res!777109) (not e!665456))))

(assert (=> b!1170729 (= res!777109 (arrayNoDuplicates!0 lt!527275 #b00000000000000000000000000000000 Nil!25728))))

(declare-fun b!1170730 () Bool)

(declare-fun e!665462 () Bool)

(assert (=> b!1170730 (= e!665457 e!665462)))

(declare-fun res!777102 () Bool)

(assert (=> b!1170730 (=> res!777102 e!665462)))

(assert (=> b!1170730 (= res!777102 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44371)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!527278 () array!75644)

(declare-fun minValue!944 () V!44371)

(declare-fun getCurrentListMapNoExtraKeys!4918 (array!75642 array!75644 (_ BitVec 32) (_ BitVec 32) V!44371 V!44371 (_ BitVec 32) Int) ListLongMap!16941)

(assert (=> b!1170730 (= lt!527280 (getCurrentListMapNoExtraKeys!4918 lt!527275 lt!527278 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1170730 (= lt!527278 (array!75645 (store (arr!36468 _values!996) i!673 (ValueCellFull!14007 lt!527272)) (size!37005 _values!996)))))

(declare-fun dynLambda!2907 (Int (_ BitVec 64)) V!44371)

(assert (=> b!1170730 (= lt!527272 (dynLambda!2907 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527277 () ListLongMap!16941)

(assert (=> b!1170730 (= lt!527277 (getCurrentListMapNoExtraKeys!4918 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170731 () Bool)

(declare-fun res!777103 () Bool)

(assert (=> b!1170731 (=> (not res!777103) (not e!665461))))

(assert (=> b!1170731 (= res!777103 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37004 _keys!1208))))))

(declare-fun b!1170732 () Bool)

(assert (=> b!1170732 (= e!665462 e!665463)))

(declare-fun res!777107 () Bool)

(assert (=> b!1170732 (=> res!777107 e!665463)))

(assert (=> b!1170732 (= res!777107 (not (validKeyInArray!0 (select (arr!36467 _keys!1208) from!1455))))))

(declare-fun lt!527270 () ListLongMap!16941)

(assert (=> b!1170732 (= lt!527270 lt!527274)))

(declare-fun lt!527276 () ListLongMap!16941)

(declare-fun -!1504 (ListLongMap!16941 (_ BitVec 64)) ListLongMap!16941)

(assert (=> b!1170732 (= lt!527274 (-!1504 lt!527276 k0!934))))

(assert (=> b!1170732 (= lt!527270 (getCurrentListMapNoExtraKeys!4918 lt!527275 lt!527278 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170732 (= lt!527276 (getCurrentListMapNoExtraKeys!4918 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527279 () Unit!38514)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!728 (array!75642 array!75644 (_ BitVec 32) (_ BitVec 32) V!44371 V!44371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38514)

(assert (=> b!1170732 (= lt!527279 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!728 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1170733 () Bool)

(assert (=> b!1170733 (= e!665459 e!665460)))

(declare-fun res!777105 () Bool)

(assert (=> b!1170733 (=> res!777105 e!665460)))

(assert (=> b!1170733 (= res!777105 (not (= (select (arr!36467 _keys!1208) from!1455) k0!934)))))

(assert (= (and start!99360 res!777094) b!1170717))

(assert (= (and b!1170717 res!777108) b!1170716))

(assert (= (and b!1170716 res!777099) b!1170722))

(assert (= (and b!1170722 res!777096) b!1170725))

(assert (= (and b!1170725 res!777095) b!1170731))

(assert (= (and b!1170731 res!777103) b!1170720))

(assert (= (and b!1170720 res!777101) b!1170715))

(assert (= (and b!1170715 res!777100) b!1170724))

(assert (= (and b!1170724 res!777098) b!1170729))

(assert (= (and b!1170729 res!777109) b!1170721))

(assert (= (and b!1170721 (not res!777097)) b!1170730))

(assert (= (and b!1170730 (not res!777102)) b!1170732))

(assert (= (and b!1170732 (not res!777107)) b!1170719))

(assert (= (and b!1170719 res!777106) b!1170733))

(assert (= (and b!1170733 (not res!777105)) b!1170728))

(assert (= (and b!1170719 (not res!777104)) b!1170723))

(assert (= (and b!1170726 condMapEmpty!45977) mapIsEmpty!45977))

(assert (= (and b!1170726 (not condMapEmpty!45977)) mapNonEmpty!45977))

(get-info :version)

(assert (= (and mapNonEmpty!45977 ((_ is ValueCellFull!14007) mapValue!45977)) b!1170718))

(assert (= (and b!1170726 ((_ is ValueCellFull!14007) mapDefault!45977)) b!1170727))

(assert (= start!99360 b!1170726))

(declare-fun b_lambda!20065 () Bool)

(assert (=> (not b_lambda!20065) (not b!1170730)))

(declare-fun t!37631 () Bool)

(declare-fun tb!9723 () Bool)

(assert (=> (and start!99360 (= defaultEntry!1004 defaultEntry!1004) t!37631) tb!9723))

(declare-fun result!20005 () Bool)

(assert (=> tb!9723 (= result!20005 tp_is_empty!29433)))

(assert (=> b!1170730 t!37631))

(declare-fun b_and!40689 () Bool)

(assert (= b_and!40687 (and (=> t!37631 result!20005) b_and!40689)))

(declare-fun m!1078593 () Bool)

(assert (=> b!1170717 m!1078593))

(declare-fun m!1078595 () Bool)

(assert (=> b!1170723 m!1078595))

(declare-fun m!1078597 () Bool)

(assert (=> b!1170723 m!1078597))

(declare-fun m!1078599 () Bool)

(assert (=> b!1170715 m!1078599))

(declare-fun m!1078601 () Bool)

(assert (=> mapNonEmpty!45977 m!1078601))

(declare-fun m!1078603 () Bool)

(assert (=> b!1170728 m!1078603))

(declare-fun m!1078605 () Bool)

(assert (=> b!1170719 m!1078605))

(declare-fun m!1078607 () Bool)

(assert (=> b!1170719 m!1078607))

(assert (=> b!1170719 m!1078607))

(declare-fun m!1078609 () Bool)

(assert (=> b!1170719 m!1078609))

(declare-fun m!1078611 () Bool)

(assert (=> b!1170719 m!1078611))

(declare-fun m!1078613 () Bool)

(assert (=> b!1170721 m!1078613))

(declare-fun m!1078615 () Bool)

(assert (=> b!1170721 m!1078615))

(declare-fun m!1078617 () Bool)

(assert (=> b!1170720 m!1078617))

(declare-fun m!1078619 () Bool)

(assert (=> b!1170725 m!1078619))

(declare-fun m!1078621 () Bool)

(assert (=> b!1170732 m!1078621))

(declare-fun m!1078623 () Bool)

(assert (=> b!1170732 m!1078623))

(declare-fun m!1078625 () Bool)

(assert (=> b!1170732 m!1078625))

(assert (=> b!1170732 m!1078605))

(declare-fun m!1078627 () Bool)

(assert (=> b!1170732 m!1078627))

(declare-fun m!1078629 () Bool)

(assert (=> b!1170732 m!1078629))

(assert (=> b!1170732 m!1078605))

(declare-fun m!1078631 () Bool)

(assert (=> b!1170730 m!1078631))

(declare-fun m!1078633 () Bool)

(assert (=> b!1170730 m!1078633))

(declare-fun m!1078635 () Bool)

(assert (=> b!1170730 m!1078635))

(declare-fun m!1078637 () Bool)

(assert (=> b!1170730 m!1078637))

(declare-fun m!1078639 () Bool)

(assert (=> b!1170729 m!1078639))

(declare-fun m!1078641 () Bool)

(assert (=> start!99360 m!1078641))

(declare-fun m!1078643 () Bool)

(assert (=> start!99360 m!1078643))

(declare-fun m!1078645 () Bool)

(assert (=> b!1170724 m!1078645))

(declare-fun m!1078647 () Bool)

(assert (=> b!1170724 m!1078647))

(assert (=> b!1170733 m!1078605))

(declare-fun m!1078649 () Bool)

(assert (=> b!1170722 m!1078649))

(check-sat (not b!1170722) b_and!40689 (not b!1170717) (not b!1170723) (not b!1170719) (not b!1170729) (not b_lambda!20065) (not b!1170720) (not b!1170732) (not b!1170724) (not mapNonEmpty!45977) (not b!1170728) (not b!1170721) tp_is_empty!29433 (not b!1170725) (not b_next!24903) (not start!99360) (not b!1170730))
(check-sat b_and!40689 (not b_next!24903))

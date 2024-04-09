; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99184 () Bool)

(assert start!99184)

(declare-fun b_free!24753 () Bool)

(declare-fun b_next!24753 () Bool)

(assert (=> start!99184 (= b_free!24753 (not b_next!24753))))

(declare-fun tp!86971 () Bool)

(declare-fun b_and!40369 () Bool)

(assert (=> start!99184 (= tp!86971 b_and!40369)))

(declare-fun b!1166685 () Bool)

(declare-fun res!773975 () Bool)

(declare-fun e!663201 () Bool)

(assert (=> b!1166685 (=> (not res!773975) (not e!663201))))

(declare-datatypes ((array!75344 0))(
  ( (array!75345 (arr!36319 (Array (_ BitVec 32) (_ BitVec 64))) (size!36856 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75344)

(declare-datatypes ((List!25602 0))(
  ( (Nil!25599) (Cons!25598 (h!26807 (_ BitVec 64)) (t!37354 List!25602)) )
))
(declare-fun arrayNoDuplicates!0 (array!75344 (_ BitVec 32) List!25602) Bool)

(assert (=> b!1166685 (= res!773975 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25599))))

(declare-fun b!1166686 () Bool)

(declare-fun res!773974 () Bool)

(assert (=> b!1166686 (=> (not res!773974) (not e!663201))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166686 (= res!773974 (validMask!0 mask!1564))))

(declare-fun res!773977 () Bool)

(assert (=> start!99184 (=> (not res!773977) (not e!663201))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99184 (= res!773977 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36856 _keys!1208))))))

(assert (=> start!99184 e!663201))

(declare-fun tp_is_empty!29283 () Bool)

(assert (=> start!99184 tp_is_empty!29283))

(declare-fun array_inv!27650 (array!75344) Bool)

(assert (=> start!99184 (array_inv!27650 _keys!1208)))

(assert (=> start!99184 true))

(assert (=> start!99184 tp!86971))

(declare-datatypes ((V!44171 0))(
  ( (V!44172 (val!14698 Int)) )
))
(declare-datatypes ((ValueCell!13932 0))(
  ( (ValueCellFull!13932 (v!17336 V!44171)) (EmptyCell!13932) )
))
(declare-datatypes ((array!75346 0))(
  ( (array!75347 (arr!36320 (Array (_ BitVec 32) ValueCell!13932)) (size!36857 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75346)

(declare-fun e!663198 () Bool)

(declare-fun array_inv!27651 (array!75346) Bool)

(assert (=> start!99184 (and (array_inv!27651 _values!996) e!663198)))

(declare-fun b!1166687 () Bool)

(declare-fun res!773984 () Bool)

(assert (=> b!1166687 (=> (not res!773984) (not e!663201))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1166687 (= res!773984 (and (= (size!36857 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36856 _keys!1208) (size!36857 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166688 () Bool)

(declare-fun res!773978 () Bool)

(declare-fun e!663199 () Bool)

(assert (=> b!1166688 (=> (not res!773978) (not e!663199))))

(declare-fun lt!525316 () array!75344)

(assert (=> b!1166688 (= res!773978 (arrayNoDuplicates!0 lt!525316 #b00000000000000000000000000000000 Nil!25599))))

(declare-fun b!1166689 () Bool)

(assert (=> b!1166689 (= e!663201 e!663199)))

(declare-fun res!773981 () Bool)

(assert (=> b!1166689 (=> (not res!773981) (not e!663199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75344 (_ BitVec 32)) Bool)

(assert (=> b!1166689 (= res!773981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525316 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166689 (= lt!525316 (array!75345 (store (arr!36319 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36856 _keys!1208)))))

(declare-fun b!1166690 () Bool)

(declare-fun e!663200 () Bool)

(declare-fun e!663203 () Bool)

(assert (=> b!1166690 (= e!663200 e!663203)))

(declare-fun res!773979 () Bool)

(assert (=> b!1166690 (=> res!773979 e!663203)))

(assert (=> b!1166690 (= res!773979 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44171)

(declare-datatypes ((tuple2!18826 0))(
  ( (tuple2!18827 (_1!9423 (_ BitVec 64)) (_2!9423 V!44171)) )
))
(declare-datatypes ((List!25603 0))(
  ( (Nil!25600) (Cons!25599 (h!26808 tuple2!18826) (t!37355 List!25603)) )
))
(declare-datatypes ((ListLongMap!16807 0))(
  ( (ListLongMap!16808 (toList!8419 List!25603)) )
))
(declare-fun lt!525321 () ListLongMap!16807)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525317 () array!75346)

(declare-fun minValue!944 () V!44171)

(declare-fun getCurrentListMapNoExtraKeys!4852 (array!75344 array!75346 (_ BitVec 32) (_ BitVec 32) V!44171 V!44171 (_ BitVec 32) Int) ListLongMap!16807)

(assert (=> b!1166690 (= lt!525321 (getCurrentListMapNoExtraKeys!4852 lt!525316 lt!525317 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2847 (Int (_ BitVec 64)) V!44171)

(assert (=> b!1166690 (= lt!525317 (array!75347 (store (arr!36320 _values!996) i!673 (ValueCellFull!13932 (dynLambda!2847 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36857 _values!996)))))

(declare-fun lt!525318 () ListLongMap!16807)

(assert (=> b!1166690 (= lt!525318 (getCurrentListMapNoExtraKeys!4852 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166691 () Bool)

(assert (=> b!1166691 (= e!663203 true)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1455 (ListLongMap!16807 (_ BitVec 64)) ListLongMap!16807)

(assert (=> b!1166691 (= (getCurrentListMapNoExtraKeys!4852 lt!525316 lt!525317 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1455 (getCurrentListMapNoExtraKeys!4852 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!38392 0))(
  ( (Unit!38393) )
))
(declare-fun lt!525320 () Unit!38392)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!679 (array!75344 array!75346 (_ BitVec 32) (_ BitVec 32) V!44171 V!44171 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38392)

(assert (=> b!1166691 (= lt!525320 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!679 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166692 () Bool)

(declare-fun e!663202 () Bool)

(declare-fun mapRes!45749 () Bool)

(assert (=> b!1166692 (= e!663198 (and e!663202 mapRes!45749))))

(declare-fun condMapEmpty!45749 () Bool)

(declare-fun mapDefault!45749 () ValueCell!13932)

(assert (=> b!1166692 (= condMapEmpty!45749 (= (arr!36320 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13932)) mapDefault!45749)))))

(declare-fun b!1166693 () Bool)

(assert (=> b!1166693 (= e!663202 tp_is_empty!29283)))

(declare-fun b!1166694 () Bool)

(declare-fun res!773980 () Bool)

(assert (=> b!1166694 (=> (not res!773980) (not e!663201))))

(assert (=> b!1166694 (= res!773980 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36856 _keys!1208))))))

(declare-fun b!1166695 () Bool)

(declare-fun res!773983 () Bool)

(assert (=> b!1166695 (=> (not res!773983) (not e!663201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166695 (= res!773983 (validKeyInArray!0 k0!934))))

(declare-fun b!1166696 () Bool)

(assert (=> b!1166696 (= e!663199 (not e!663200))))

(declare-fun res!773976 () Bool)

(assert (=> b!1166696 (=> res!773976 e!663200)))

(assert (=> b!1166696 (= res!773976 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166696 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525319 () Unit!38392)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75344 (_ BitVec 64) (_ BitVec 32)) Unit!38392)

(assert (=> b!1166696 (= lt!525319 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1166697 () Bool)

(declare-fun res!773982 () Bool)

(assert (=> b!1166697 (=> (not res!773982) (not e!663201))))

(assert (=> b!1166697 (= res!773982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!45749 () Bool)

(declare-fun tp!86970 () Bool)

(declare-fun e!663197 () Bool)

(assert (=> mapNonEmpty!45749 (= mapRes!45749 (and tp!86970 e!663197))))

(declare-fun mapValue!45749 () ValueCell!13932)

(declare-fun mapRest!45749 () (Array (_ BitVec 32) ValueCell!13932))

(declare-fun mapKey!45749 () (_ BitVec 32))

(assert (=> mapNonEmpty!45749 (= (arr!36320 _values!996) (store mapRest!45749 mapKey!45749 mapValue!45749))))

(declare-fun b!1166698 () Bool)

(declare-fun res!773973 () Bool)

(assert (=> b!1166698 (=> (not res!773973) (not e!663201))))

(assert (=> b!1166698 (= res!773973 (= (select (arr!36319 _keys!1208) i!673) k0!934))))

(declare-fun b!1166699 () Bool)

(assert (=> b!1166699 (= e!663197 tp_is_empty!29283)))

(declare-fun mapIsEmpty!45749 () Bool)

(assert (=> mapIsEmpty!45749 mapRes!45749))

(assert (= (and start!99184 res!773977) b!1166686))

(assert (= (and b!1166686 res!773974) b!1166687))

(assert (= (and b!1166687 res!773984) b!1166697))

(assert (= (and b!1166697 res!773982) b!1166685))

(assert (= (and b!1166685 res!773975) b!1166694))

(assert (= (and b!1166694 res!773980) b!1166695))

(assert (= (and b!1166695 res!773983) b!1166698))

(assert (= (and b!1166698 res!773973) b!1166689))

(assert (= (and b!1166689 res!773981) b!1166688))

(assert (= (and b!1166688 res!773978) b!1166696))

(assert (= (and b!1166696 (not res!773976)) b!1166690))

(assert (= (and b!1166690 (not res!773979)) b!1166691))

(assert (= (and b!1166692 condMapEmpty!45749) mapIsEmpty!45749))

(assert (= (and b!1166692 (not condMapEmpty!45749)) mapNonEmpty!45749))

(get-info :version)

(assert (= (and mapNonEmpty!45749 ((_ is ValueCellFull!13932) mapValue!45749)) b!1166699))

(assert (= (and b!1166692 ((_ is ValueCellFull!13932) mapDefault!45749)) b!1166693))

(assert (= start!99184 b!1166692))

(declare-fun b_lambda!19877 () Bool)

(assert (=> (not b_lambda!19877) (not b!1166690)))

(declare-fun t!37353 () Bool)

(declare-fun tb!9573 () Bool)

(assert (=> (and start!99184 (= defaultEntry!1004 defaultEntry!1004) t!37353) tb!9573))

(declare-fun result!19703 () Bool)

(assert (=> tb!9573 (= result!19703 tp_is_empty!29283)))

(assert (=> b!1166690 t!37353))

(declare-fun b_and!40371 () Bool)

(assert (= b_and!40369 (and (=> t!37353 result!19703) b_and!40371)))

(declare-fun m!1074745 () Bool)

(assert (=> b!1166691 m!1074745))

(declare-fun m!1074747 () Bool)

(assert (=> b!1166691 m!1074747))

(assert (=> b!1166691 m!1074747))

(declare-fun m!1074749 () Bool)

(assert (=> b!1166691 m!1074749))

(declare-fun m!1074751 () Bool)

(assert (=> b!1166691 m!1074751))

(declare-fun m!1074753 () Bool)

(assert (=> b!1166695 m!1074753))

(declare-fun m!1074755 () Bool)

(assert (=> start!99184 m!1074755))

(declare-fun m!1074757 () Bool)

(assert (=> start!99184 m!1074757))

(declare-fun m!1074759 () Bool)

(assert (=> b!1166688 m!1074759))

(declare-fun m!1074761 () Bool)

(assert (=> b!1166696 m!1074761))

(declare-fun m!1074763 () Bool)

(assert (=> b!1166696 m!1074763))

(declare-fun m!1074765 () Bool)

(assert (=> b!1166697 m!1074765))

(declare-fun m!1074767 () Bool)

(assert (=> b!1166685 m!1074767))

(declare-fun m!1074769 () Bool)

(assert (=> b!1166686 m!1074769))

(declare-fun m!1074771 () Bool)

(assert (=> b!1166690 m!1074771))

(declare-fun m!1074773 () Bool)

(assert (=> b!1166690 m!1074773))

(declare-fun m!1074775 () Bool)

(assert (=> b!1166690 m!1074775))

(declare-fun m!1074777 () Bool)

(assert (=> b!1166690 m!1074777))

(declare-fun m!1074779 () Bool)

(assert (=> mapNonEmpty!45749 m!1074779))

(declare-fun m!1074781 () Bool)

(assert (=> b!1166698 m!1074781))

(declare-fun m!1074783 () Bool)

(assert (=> b!1166689 m!1074783))

(declare-fun m!1074785 () Bool)

(assert (=> b!1166689 m!1074785))

(check-sat (not b!1166695) (not b!1166691) (not start!99184) (not b!1166686) (not b_lambda!19877) (not b!1166685) (not b_next!24753) (not b!1166688) (not b!1166697) (not b!1166696) tp_is_empty!29283 b_and!40371 (not b!1166689) (not mapNonEmpty!45749) (not b!1166690))
(check-sat b_and!40371 (not b_next!24753))

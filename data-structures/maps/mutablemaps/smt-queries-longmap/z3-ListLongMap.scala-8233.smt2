; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100344 () Bool)

(assert start!100344)

(declare-fun b_free!25695 () Bool)

(declare-fun b_next!25695 () Bool)

(assert (=> start!100344 (= b_free!25695 (not b_next!25695))))

(declare-fun tp!90033 () Bool)

(declare-fun b_and!42271 () Bool)

(assert (=> start!100344 (= tp!90033 b_and!42271)))

(declare-fun b!1196899 () Bool)

(declare-fun e!680024 () Bool)

(declare-datatypes ((V!45627 0))(
  ( (V!45628 (val!15244 Int)) )
))
(declare-datatypes ((tuple2!19658 0))(
  ( (tuple2!19659 (_1!9839 (_ BitVec 64)) (_2!9839 V!45627)) )
))
(declare-datatypes ((List!26475 0))(
  ( (Nil!26472) (Cons!26471 (h!27680 tuple2!19658) (t!39169 List!26475)) )
))
(declare-datatypes ((ListLongMap!17639 0))(
  ( (ListLongMap!17640 (toList!8835 List!26475)) )
))
(declare-fun call!57206 () ListLongMap!17639)

(declare-fun call!57205 () ListLongMap!17639)

(assert (=> b!1196899 (= e!680024 (= call!57206 call!57205))))

(declare-fun b!1196900 () Bool)

(declare-fun res!796642 () Bool)

(declare-fun e!680023 () Bool)

(assert (=> b!1196900 (=> (not res!796642) (not e!680023))))

(declare-datatypes ((array!77510 0))(
  ( (array!77511 (arr!37398 (Array (_ BitVec 32) (_ BitVec 64))) (size!37935 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77510)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1196900 (= res!796642 (= (select (arr!37398 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!47399 () Bool)

(declare-fun mapRes!47399 () Bool)

(assert (=> mapIsEmpty!47399 mapRes!47399))

(declare-fun mapNonEmpty!47399 () Bool)

(declare-fun tp!90034 () Bool)

(declare-fun e!680022 () Bool)

(assert (=> mapNonEmpty!47399 (= mapRes!47399 (and tp!90034 e!680022))))

(declare-datatypes ((ValueCell!14478 0))(
  ( (ValueCellFull!14478 (v!17883 V!45627)) (EmptyCell!14478) )
))
(declare-fun mapValue!47399 () ValueCell!14478)

(declare-fun mapRest!47399 () (Array (_ BitVec 32) ValueCell!14478))

(declare-datatypes ((array!77512 0))(
  ( (array!77513 (arr!37399 (Array (_ BitVec 32) ValueCell!14478)) (size!37936 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77512)

(declare-fun mapKey!47399 () (_ BitVec 32))

(assert (=> mapNonEmpty!47399 (= (arr!37399 _values!996) (store mapRest!47399 mapKey!47399 mapValue!47399))))

(declare-fun b!1196901 () Bool)

(declare-fun e!680026 () Bool)

(declare-fun e!680021 () Bool)

(assert (=> b!1196901 (= e!680026 (not e!680021))))

(declare-fun res!796645 () Bool)

(assert (=> b!1196901 (=> res!796645 e!680021)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1196901 (= res!796645 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37935 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!77510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196901 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39628 0))(
  ( (Unit!39629) )
))
(declare-fun lt!543118 () Unit!39628)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77510 (_ BitVec 64) (_ BitVec 32)) Unit!39628)

(assert (=> b!1196901 (= lt!543118 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1196902 () Bool)

(declare-fun res!796641 () Bool)

(assert (=> b!1196902 (=> (not res!796641) (not e!680023))))

(assert (=> b!1196902 (= res!796641 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37935 _keys!1208))))))

(declare-fun res!796635 () Bool)

(assert (=> start!100344 (=> (not res!796635) (not e!680023))))

(assert (=> start!100344 (= res!796635 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37935 _keys!1208))))))

(assert (=> start!100344 e!680023))

(declare-fun tp_is_empty!30375 () Bool)

(assert (=> start!100344 tp_is_empty!30375))

(declare-fun array_inv!28406 (array!77510) Bool)

(assert (=> start!100344 (array_inv!28406 _keys!1208)))

(assert (=> start!100344 true))

(assert (=> start!100344 tp!90033))

(declare-fun e!680025 () Bool)

(declare-fun array_inv!28407 (array!77512) Bool)

(assert (=> start!100344 (and (array_inv!28407 _values!996) e!680025)))

(declare-fun b!1196903 () Bool)

(declare-fun res!796644 () Bool)

(assert (=> b!1196903 (=> (not res!796644) (not e!680023))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77510 (_ BitVec 32)) Bool)

(assert (=> b!1196903 (= res!796644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196904 () Bool)

(assert (=> b!1196904 (= e!680023 e!680026)))

(declare-fun res!796637 () Bool)

(assert (=> b!1196904 (=> (not res!796637) (not e!680026))))

(declare-fun lt!543120 () array!77510)

(assert (=> b!1196904 (= res!796637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543120 mask!1564))))

(assert (=> b!1196904 (= lt!543120 (array!77511 (store (arr!37398 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37935 _keys!1208)))))

(declare-fun b!1196905 () Bool)

(assert (=> b!1196905 (= e!680022 tp_is_empty!30375)))

(declare-fun zeroValue!944 () V!45627)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!57202 () Bool)

(declare-fun minValue!944 () V!45627)

(declare-fun getCurrentListMapNoExtraKeys!5248 (array!77510 array!77512 (_ BitVec 32) (_ BitVec 32) V!45627 V!45627 (_ BitVec 32) Int) ListLongMap!17639)

(assert (=> bm!57202 (= call!57205 (getCurrentListMapNoExtraKeys!5248 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57203 () Bool)

(declare-fun dynLambda!3185 (Int (_ BitVec 64)) V!45627)

(assert (=> bm!57203 (= call!57206 (getCurrentListMapNoExtraKeys!5248 lt!543120 (array!77513 (store (arr!37399 _values!996) i!673 (ValueCellFull!14478 (dynLambda!3185 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37936 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196906 () Bool)

(declare-fun res!796638 () Bool)

(assert (=> b!1196906 (=> (not res!796638) (not e!680023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196906 (= res!796638 (validMask!0 mask!1564))))

(declare-fun b!1196907 () Bool)

(declare-fun e!680020 () Bool)

(assert (=> b!1196907 (= e!680025 (and e!680020 mapRes!47399))))

(declare-fun condMapEmpty!47399 () Bool)

(declare-fun mapDefault!47399 () ValueCell!14478)

(assert (=> b!1196907 (= condMapEmpty!47399 (= (arr!37399 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14478)) mapDefault!47399)))))

(declare-fun b!1196908 () Bool)

(declare-fun res!796636 () Bool)

(assert (=> b!1196908 (=> (not res!796636) (not e!680023))))

(assert (=> b!1196908 (= res!796636 (and (= (size!37936 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37935 _keys!1208) (size!37936 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196909 () Bool)

(declare-fun res!796640 () Bool)

(assert (=> b!1196909 (=> (not res!796640) (not e!680023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196909 (= res!796640 (validKeyInArray!0 k0!934))))

(declare-fun b!1196910 () Bool)

(assert (=> b!1196910 (= e!680020 tp_is_empty!30375)))

(declare-fun b!1196911 () Bool)

(declare-fun -!1802 (ListLongMap!17639 (_ BitVec 64)) ListLongMap!17639)

(assert (=> b!1196911 (= e!680024 (= call!57206 (-!1802 call!57205 k0!934)))))

(declare-fun b!1196912 () Bool)

(assert (=> b!1196912 (= e!680021 true)))

(assert (=> b!1196912 e!680024))

(declare-fun c!117305 () Bool)

(assert (=> b!1196912 (= c!117305 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!543119 () Unit!39628)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1008 (array!77510 array!77512 (_ BitVec 32) (_ BitVec 32) V!45627 V!45627 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39628)

(assert (=> b!1196912 (= lt!543119 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1008 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196913 () Bool)

(declare-fun res!796639 () Bool)

(assert (=> b!1196913 (=> (not res!796639) (not e!680026))))

(declare-datatypes ((List!26476 0))(
  ( (Nil!26473) (Cons!26472 (h!27681 (_ BitVec 64)) (t!39170 List!26476)) )
))
(declare-fun arrayNoDuplicates!0 (array!77510 (_ BitVec 32) List!26476) Bool)

(assert (=> b!1196913 (= res!796639 (arrayNoDuplicates!0 lt!543120 #b00000000000000000000000000000000 Nil!26473))))

(declare-fun b!1196914 () Bool)

(declare-fun res!796643 () Bool)

(assert (=> b!1196914 (=> (not res!796643) (not e!680023))))

(assert (=> b!1196914 (= res!796643 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26473))))

(assert (= (and start!100344 res!796635) b!1196906))

(assert (= (and b!1196906 res!796638) b!1196908))

(assert (= (and b!1196908 res!796636) b!1196903))

(assert (= (and b!1196903 res!796644) b!1196914))

(assert (= (and b!1196914 res!796643) b!1196902))

(assert (= (and b!1196902 res!796641) b!1196909))

(assert (= (and b!1196909 res!796640) b!1196900))

(assert (= (and b!1196900 res!796642) b!1196904))

(assert (= (and b!1196904 res!796637) b!1196913))

(assert (= (and b!1196913 res!796639) b!1196901))

(assert (= (and b!1196901 (not res!796645)) b!1196912))

(assert (= (and b!1196912 c!117305) b!1196911))

(assert (= (and b!1196912 (not c!117305)) b!1196899))

(assert (= (or b!1196911 b!1196899) bm!57203))

(assert (= (or b!1196911 b!1196899) bm!57202))

(assert (= (and b!1196907 condMapEmpty!47399) mapIsEmpty!47399))

(assert (= (and b!1196907 (not condMapEmpty!47399)) mapNonEmpty!47399))

(get-info :version)

(assert (= (and mapNonEmpty!47399 ((_ is ValueCellFull!14478) mapValue!47399)) b!1196905))

(assert (= (and b!1196907 ((_ is ValueCellFull!14478) mapDefault!47399)) b!1196910))

(assert (= start!100344 b!1196907))

(declare-fun b_lambda!20857 () Bool)

(assert (=> (not b_lambda!20857) (not bm!57203)))

(declare-fun t!39168 () Bool)

(declare-fun tb!10515 () Bool)

(assert (=> (and start!100344 (= defaultEntry!1004 defaultEntry!1004) t!39168) tb!10515))

(declare-fun result!21595 () Bool)

(assert (=> tb!10515 (= result!21595 tp_is_empty!30375)))

(assert (=> bm!57203 t!39168))

(declare-fun b_and!42273 () Bool)

(assert (= b_and!42271 (and (=> t!39168 result!21595) b_and!42273)))

(declare-fun m!1104043 () Bool)

(assert (=> start!100344 m!1104043))

(declare-fun m!1104045 () Bool)

(assert (=> start!100344 m!1104045))

(declare-fun m!1104047 () Bool)

(assert (=> b!1196903 m!1104047))

(declare-fun m!1104049 () Bool)

(assert (=> mapNonEmpty!47399 m!1104049))

(declare-fun m!1104051 () Bool)

(assert (=> bm!57202 m!1104051))

(declare-fun m!1104053 () Bool)

(assert (=> bm!57203 m!1104053))

(declare-fun m!1104055 () Bool)

(assert (=> bm!57203 m!1104055))

(declare-fun m!1104057 () Bool)

(assert (=> bm!57203 m!1104057))

(declare-fun m!1104059 () Bool)

(assert (=> b!1196904 m!1104059))

(declare-fun m!1104061 () Bool)

(assert (=> b!1196904 m!1104061))

(declare-fun m!1104063 () Bool)

(assert (=> b!1196909 m!1104063))

(declare-fun m!1104065 () Bool)

(assert (=> b!1196906 m!1104065))

(declare-fun m!1104067 () Bool)

(assert (=> b!1196914 m!1104067))

(declare-fun m!1104069 () Bool)

(assert (=> b!1196901 m!1104069))

(declare-fun m!1104071 () Bool)

(assert (=> b!1196901 m!1104071))

(declare-fun m!1104073 () Bool)

(assert (=> b!1196900 m!1104073))

(declare-fun m!1104075 () Bool)

(assert (=> b!1196913 m!1104075))

(declare-fun m!1104077 () Bool)

(assert (=> b!1196911 m!1104077))

(declare-fun m!1104079 () Bool)

(assert (=> b!1196912 m!1104079))

(check-sat tp_is_empty!30375 (not b!1196912) (not mapNonEmpty!47399) (not b_lambda!20857) (not b!1196901) (not start!100344) (not b!1196911) (not b!1196904) (not bm!57202) (not b!1196913) (not b!1196914) (not b!1196903) b_and!42273 (not bm!57203) (not b!1196906) (not b_next!25695) (not b!1196909))
(check-sat b_and!42273 (not b_next!25695))

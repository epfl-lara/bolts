; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101228 () Bool)

(assert start!101228)

(declare-fun b_free!26115 () Bool)

(declare-fun b_next!26115 () Bool)

(assert (=> start!101228 (= b_free!26115 (not b_next!26115))))

(declare-fun tp!91367 () Bool)

(declare-fun b_and!43357 () Bool)

(assert (=> start!101228 (= tp!91367 b_and!43357)))

(declare-fun b!1214728 () Bool)

(declare-fun e!689841 () Bool)

(declare-fun e!689837 () Bool)

(declare-fun mapRes!48103 () Bool)

(assert (=> b!1214728 (= e!689841 (and e!689837 mapRes!48103))))

(declare-fun condMapEmpty!48103 () Bool)

(declare-datatypes ((V!46219 0))(
  ( (V!46220 (val!15466 Int)) )
))
(declare-datatypes ((ValueCell!14700 0))(
  ( (ValueCellFull!14700 (v!18120 V!46219)) (EmptyCell!14700) )
))
(declare-datatypes ((array!78396 0))(
  ( (array!78397 (arr!37829 (Array (_ BitVec 32) ValueCell!14700)) (size!38366 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78396)

(declare-fun mapDefault!48103 () ValueCell!14700)

(assert (=> b!1214728 (= condMapEmpty!48103 (= (arr!37829 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14700)) mapDefault!48103)))))

(declare-fun b!1214729 () Bool)

(declare-fun e!689839 () Bool)

(assert (=> b!1214729 (= e!689839 true)))

(declare-fun zeroValue!944 () V!46219)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!20020 0))(
  ( (tuple2!20021 (_1!10020 (_ BitVec 64)) (_2!10020 V!46219)) )
))
(declare-datatypes ((List!26839 0))(
  ( (Nil!26836) (Cons!26835 (h!28044 tuple2!20020) (t!39941 List!26839)) )
))
(declare-datatypes ((ListLongMap!18001 0))(
  ( (ListLongMap!18002 (toList!9016 List!26839)) )
))
(declare-fun lt!552381 () ListLongMap!18001)

(declare-datatypes ((array!78398 0))(
  ( (array!78399 (arr!37830 (Array (_ BitVec 32) (_ BitVec 64))) (size!38367 (_ BitVec 32))) )
))
(declare-fun lt!552380 () array!78398)

(declare-fun minValue!944 () V!46219)

(declare-fun getCurrentListMapNoExtraKeys!5421 (array!78398 array!78396 (_ BitVec 32) (_ BitVec 32) V!46219 V!46219 (_ BitVec 32) Int) ListLongMap!18001)

(declare-fun dynLambda!3330 (Int (_ BitVec 64)) V!46219)

(assert (=> b!1214729 (= lt!552381 (getCurrentListMapNoExtraKeys!5421 lt!552380 (array!78397 (store (arr!37829 _values!996) i!673 (ValueCellFull!14700 (dynLambda!3330 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38366 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!78398)

(declare-fun lt!552383 () ListLongMap!18001)

(assert (=> b!1214729 (= lt!552383 (getCurrentListMapNoExtraKeys!5421 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!806570 () Bool)

(declare-fun e!689836 () Bool)

(assert (=> start!101228 (=> (not res!806570) (not e!689836))))

(assert (=> start!101228 (= res!806570 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38367 _keys!1208))))))

(assert (=> start!101228 e!689836))

(declare-fun tp_is_empty!30819 () Bool)

(assert (=> start!101228 tp_is_empty!30819))

(declare-fun array_inv!28710 (array!78398) Bool)

(assert (=> start!101228 (array_inv!28710 _keys!1208)))

(assert (=> start!101228 true))

(assert (=> start!101228 tp!91367))

(declare-fun array_inv!28711 (array!78396) Bool)

(assert (=> start!101228 (and (array_inv!28711 _values!996) e!689841)))

(declare-fun b!1214730 () Bool)

(assert (=> b!1214730 (= e!689837 tp_is_empty!30819)))

(declare-fun b!1214731 () Bool)

(declare-fun res!806573 () Bool)

(assert (=> b!1214731 (=> (not res!806573) (not e!689836))))

(declare-datatypes ((List!26840 0))(
  ( (Nil!26837) (Cons!26836 (h!28045 (_ BitVec 64)) (t!39942 List!26840)) )
))
(declare-fun arrayNoDuplicates!0 (array!78398 (_ BitVec 32) List!26840) Bool)

(assert (=> b!1214731 (= res!806573 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26837))))

(declare-fun mapNonEmpty!48103 () Bool)

(declare-fun tp!91368 () Bool)

(declare-fun e!689838 () Bool)

(assert (=> mapNonEmpty!48103 (= mapRes!48103 (and tp!91368 e!689838))))

(declare-fun mapValue!48103 () ValueCell!14700)

(declare-fun mapRest!48103 () (Array (_ BitVec 32) ValueCell!14700))

(declare-fun mapKey!48103 () (_ BitVec 32))

(assert (=> mapNonEmpty!48103 (= (arr!37829 _values!996) (store mapRest!48103 mapKey!48103 mapValue!48103))))

(declare-fun b!1214732 () Bool)

(declare-fun res!806574 () Bool)

(declare-fun e!689840 () Bool)

(assert (=> b!1214732 (=> (not res!806574) (not e!689840))))

(assert (=> b!1214732 (= res!806574 (arrayNoDuplicates!0 lt!552380 #b00000000000000000000000000000000 Nil!26837))))

(declare-fun b!1214733 () Bool)

(declare-fun res!806572 () Bool)

(assert (=> b!1214733 (=> (not res!806572) (not e!689836))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1214733 (= res!806572 (= (select (arr!37830 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!48103 () Bool)

(assert (=> mapIsEmpty!48103 mapRes!48103))

(declare-fun b!1214734 () Bool)

(declare-fun res!806578 () Bool)

(assert (=> b!1214734 (=> (not res!806578) (not e!689836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214734 (= res!806578 (validMask!0 mask!1564))))

(declare-fun b!1214735 () Bool)

(declare-fun res!806569 () Bool)

(assert (=> b!1214735 (=> (not res!806569) (not e!689836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214735 (= res!806569 (validKeyInArray!0 k0!934))))

(declare-fun b!1214736 () Bool)

(declare-fun res!806576 () Bool)

(assert (=> b!1214736 (=> (not res!806576) (not e!689836))))

(assert (=> b!1214736 (= res!806576 (and (= (size!38366 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38367 _keys!1208) (size!38366 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214737 () Bool)

(declare-fun res!806575 () Bool)

(assert (=> b!1214737 (=> (not res!806575) (not e!689836))))

(assert (=> b!1214737 (= res!806575 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38367 _keys!1208))))))

(declare-fun b!1214738 () Bool)

(assert (=> b!1214738 (= e!689836 e!689840)))

(declare-fun res!806568 () Bool)

(assert (=> b!1214738 (=> (not res!806568) (not e!689840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78398 (_ BitVec 32)) Bool)

(assert (=> b!1214738 (= res!806568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552380 mask!1564))))

(assert (=> b!1214738 (= lt!552380 (array!78399 (store (arr!37830 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38367 _keys!1208)))))

(declare-fun b!1214739 () Bool)

(assert (=> b!1214739 (= e!689838 tp_is_empty!30819)))

(declare-fun b!1214740 () Bool)

(assert (=> b!1214740 (= e!689840 (not e!689839))))

(declare-fun res!806571 () Bool)

(assert (=> b!1214740 (=> res!806571 e!689839)))

(assert (=> b!1214740 (= res!806571 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214740 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40214 0))(
  ( (Unit!40215) )
))
(declare-fun lt!552382 () Unit!40214)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78398 (_ BitVec 64) (_ BitVec 32)) Unit!40214)

(assert (=> b!1214740 (= lt!552382 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1214741 () Bool)

(declare-fun res!806577 () Bool)

(assert (=> b!1214741 (=> (not res!806577) (not e!689836))))

(assert (=> b!1214741 (= res!806577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!101228 res!806570) b!1214734))

(assert (= (and b!1214734 res!806578) b!1214736))

(assert (= (and b!1214736 res!806576) b!1214741))

(assert (= (and b!1214741 res!806577) b!1214731))

(assert (= (and b!1214731 res!806573) b!1214737))

(assert (= (and b!1214737 res!806575) b!1214735))

(assert (= (and b!1214735 res!806569) b!1214733))

(assert (= (and b!1214733 res!806572) b!1214738))

(assert (= (and b!1214738 res!806568) b!1214732))

(assert (= (and b!1214732 res!806574) b!1214740))

(assert (= (and b!1214740 (not res!806571)) b!1214729))

(assert (= (and b!1214728 condMapEmpty!48103) mapIsEmpty!48103))

(assert (= (and b!1214728 (not condMapEmpty!48103)) mapNonEmpty!48103))

(get-info :version)

(assert (= (and mapNonEmpty!48103 ((_ is ValueCellFull!14700) mapValue!48103)) b!1214739))

(assert (= (and b!1214728 ((_ is ValueCellFull!14700) mapDefault!48103)) b!1214730))

(assert (= start!101228 b!1214728))

(declare-fun b_lambda!21801 () Bool)

(assert (=> (not b_lambda!21801) (not b!1214729)))

(declare-fun t!39940 () Bool)

(declare-fun tb!10923 () Bool)

(assert (=> (and start!101228 (= defaultEntry!1004 defaultEntry!1004) t!39940) tb!10923))

(declare-fun result!22435 () Bool)

(assert (=> tb!10923 (= result!22435 tp_is_empty!30819)))

(assert (=> b!1214729 t!39940))

(declare-fun b_and!43359 () Bool)

(assert (= b_and!43357 (and (=> t!39940 result!22435) b_and!43359)))

(declare-fun m!1119885 () Bool)

(assert (=> b!1214732 m!1119885))

(declare-fun m!1119887 () Bool)

(assert (=> b!1214735 m!1119887))

(declare-fun m!1119889 () Bool)

(assert (=> b!1214729 m!1119889))

(declare-fun m!1119891 () Bool)

(assert (=> b!1214729 m!1119891))

(declare-fun m!1119893 () Bool)

(assert (=> b!1214729 m!1119893))

(declare-fun m!1119895 () Bool)

(assert (=> b!1214729 m!1119895))

(declare-fun m!1119897 () Bool)

(assert (=> b!1214734 m!1119897))

(declare-fun m!1119899 () Bool)

(assert (=> b!1214733 m!1119899))

(declare-fun m!1119901 () Bool)

(assert (=> b!1214738 m!1119901))

(declare-fun m!1119903 () Bool)

(assert (=> b!1214738 m!1119903))

(declare-fun m!1119905 () Bool)

(assert (=> b!1214741 m!1119905))

(declare-fun m!1119907 () Bool)

(assert (=> b!1214731 m!1119907))

(declare-fun m!1119909 () Bool)

(assert (=> mapNonEmpty!48103 m!1119909))

(declare-fun m!1119911 () Bool)

(assert (=> b!1214740 m!1119911))

(declare-fun m!1119913 () Bool)

(assert (=> b!1214740 m!1119913))

(declare-fun m!1119915 () Bool)

(assert (=> start!101228 m!1119915))

(declare-fun m!1119917 () Bool)

(assert (=> start!101228 m!1119917))

(check-sat (not b!1214734) (not b_lambda!21801) (not b!1214741) (not b!1214735) tp_is_empty!30819 (not b!1214731) (not mapNonEmpty!48103) (not start!101228) b_and!43359 (not b!1214732) (not b_next!26115) (not b!1214740) (not b!1214738) (not b!1214729))
(check-sat b_and!43359 (not b_next!26115))

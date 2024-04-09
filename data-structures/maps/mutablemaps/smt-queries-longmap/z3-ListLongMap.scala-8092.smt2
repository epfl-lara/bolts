; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99456 () Bool)

(assert start!99456)

(declare-fun b_free!24999 () Bool)

(declare-fun b_next!24999 () Bool)

(assert (=> start!99456 (= b_free!24999 (not b_next!24999))))

(declare-fun tp!87711 () Bool)

(declare-fun b_and!40879 () Bool)

(assert (=> start!99456 (= tp!87711 b_and!40879)))

(declare-fun b!1173849 () Bool)

(declare-fun res!779584 () Bool)

(declare-fun e!667265 () Bool)

(assert (=> b!1173849 (=> (not res!779584) (not e!667265))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75834 0))(
  ( (array!75835 (arr!36563 (Array (_ BitVec 32) (_ BitVec 64))) (size!37100 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75834)

(assert (=> b!1173849 (= res!779584 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37100 _keys!1208))))))

(declare-fun b!1173850 () Bool)

(declare-fun e!667271 () Bool)

(declare-fun e!667267 () Bool)

(assert (=> b!1173850 (= e!667271 e!667267)))

(declare-fun res!779591 () Bool)

(assert (=> b!1173850 (=> res!779591 e!667267)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1173850 (= res!779591 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44499 0))(
  ( (V!44500 (val!14821 Int)) )
))
(declare-fun zeroValue!944 () V!44499)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!529204 () array!75834)

(declare-fun minValue!944 () V!44499)

(declare-datatypes ((ValueCell!14055 0))(
  ( (ValueCellFull!14055 (v!17460 V!44499)) (EmptyCell!14055) )
))
(declare-datatypes ((array!75836 0))(
  ( (array!75837 (arr!36564 (Array (_ BitVec 32) ValueCell!14055)) (size!37101 (_ BitVec 32))) )
))
(declare-fun lt!529199 () array!75836)

(declare-datatypes ((tuple2!19042 0))(
  ( (tuple2!19043 (_1!9531 (_ BitVec 64)) (_2!9531 V!44499)) )
))
(declare-datatypes ((List!25814 0))(
  ( (Nil!25811) (Cons!25810 (h!27019 tuple2!19042) (t!37812 List!25814)) )
))
(declare-datatypes ((ListLongMap!17023 0))(
  ( (ListLongMap!17024 (toList!8527 List!25814)) )
))
(declare-fun lt!529205 () ListLongMap!17023)

(declare-fun getCurrentListMapNoExtraKeys!4959 (array!75834 array!75836 (_ BitVec 32) (_ BitVec 32) V!44499 V!44499 (_ BitVec 32) Int) ListLongMap!17023)

(assert (=> b!1173850 (= lt!529205 (getCurrentListMapNoExtraKeys!4959 lt!529204 lt!529199 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!529200 () V!44499)

(declare-fun _values!996 () array!75836)

(assert (=> b!1173850 (= lt!529199 (array!75837 (store (arr!36564 _values!996) i!673 (ValueCellFull!14055 lt!529200)) (size!37101 _values!996)))))

(declare-fun dynLambda!2943 (Int (_ BitVec 64)) V!44499)

(assert (=> b!1173850 (= lt!529200 (dynLambda!2943 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529206 () ListLongMap!17023)

(assert (=> b!1173850 (= lt!529206 (getCurrentListMapNoExtraKeys!4959 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!779589 () Bool)

(assert (=> start!99456 (=> (not res!779589) (not e!667265))))

(assert (=> start!99456 (= res!779589 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37100 _keys!1208))))))

(assert (=> start!99456 e!667265))

(declare-fun tp_is_empty!29529 () Bool)

(assert (=> start!99456 tp_is_empty!29529))

(declare-fun array_inv!27820 (array!75834) Bool)

(assert (=> start!99456 (array_inv!27820 _keys!1208)))

(assert (=> start!99456 true))

(assert (=> start!99456 tp!87711))

(declare-fun e!667266 () Bool)

(declare-fun array_inv!27821 (array!75836) Bool)

(assert (=> start!99456 (and (array_inv!27821 _values!996) e!667266)))

(declare-fun b!1173851 () Bool)

(declare-fun e!667270 () Bool)

(declare-fun mapRes!46121 () Bool)

(assert (=> b!1173851 (= e!667266 (and e!667270 mapRes!46121))))

(declare-fun condMapEmpty!46121 () Bool)

(declare-fun mapDefault!46121 () ValueCell!14055)

(assert (=> b!1173851 (= condMapEmpty!46121 (= (arr!36564 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14055)) mapDefault!46121)))))

(declare-fun b!1173852 () Bool)

(declare-datatypes ((Unit!38625 0))(
  ( (Unit!38626) )
))
(declare-fun e!667269 () Unit!38625)

(declare-fun Unit!38627 () Unit!38625)

(assert (=> b!1173852 (= e!667269 Unit!38627)))

(declare-fun lt!529194 () Unit!38625)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75834 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38625)

(assert (=> b!1173852 (= lt!529194 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173852 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529197 () Unit!38625)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75834 (_ BitVec 32) (_ BitVec 32)) Unit!38625)

(assert (=> b!1173852 (= lt!529197 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25815 0))(
  ( (Nil!25812) (Cons!25811 (h!27020 (_ BitVec 64)) (t!37813 List!25815)) )
))
(declare-fun arrayNoDuplicates!0 (array!75834 (_ BitVec 32) List!25815) Bool)

(assert (=> b!1173852 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25812)))

(declare-fun lt!529195 () Unit!38625)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75834 (_ BitVec 64) (_ BitVec 32) List!25815) Unit!38625)

(assert (=> b!1173852 (= lt!529195 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25812))))

(assert (=> b!1173852 false))

(declare-fun b!1173853 () Bool)

(declare-fun res!779594 () Bool)

(assert (=> b!1173853 (=> (not res!779594) (not e!667265))))

(assert (=> b!1173853 (= res!779594 (and (= (size!37101 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37100 _keys!1208) (size!37101 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1173854 () Bool)

(declare-fun e!667268 () Bool)

(assert (=> b!1173854 (= e!667267 e!667268)))

(declare-fun res!779590 () Bool)

(assert (=> b!1173854 (=> res!779590 e!667268)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173854 (= res!779590 (not (validKeyInArray!0 (select (arr!36563 _keys!1208) from!1455))))))

(declare-fun lt!529202 () ListLongMap!17023)

(declare-fun lt!529198 () ListLongMap!17023)

(assert (=> b!1173854 (= lt!529202 lt!529198)))

(declare-fun lt!529203 () ListLongMap!17023)

(declare-fun -!1539 (ListLongMap!17023 (_ BitVec 64)) ListLongMap!17023)

(assert (=> b!1173854 (= lt!529198 (-!1539 lt!529203 k0!934))))

(assert (=> b!1173854 (= lt!529202 (getCurrentListMapNoExtraKeys!4959 lt!529204 lt!529199 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1173854 (= lt!529203 (getCurrentListMapNoExtraKeys!4959 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529193 () Unit!38625)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!763 (array!75834 array!75836 (_ BitVec 32) (_ BitVec 32) V!44499 V!44499 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38625)

(assert (=> b!1173854 (= lt!529193 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!763 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1173855 () Bool)

(assert (=> b!1173855 (= e!667270 tp_is_empty!29529)))

(declare-fun b!1173856 () Bool)

(declare-fun res!779596 () Bool)

(declare-fun e!667273 () Bool)

(assert (=> b!1173856 (=> (not res!779596) (not e!667273))))

(assert (=> b!1173856 (= res!779596 (arrayNoDuplicates!0 lt!529204 #b00000000000000000000000000000000 Nil!25812))))

(declare-fun b!1173857 () Bool)

(declare-fun res!779595 () Bool)

(assert (=> b!1173857 (=> (not res!779595) (not e!667265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173857 (= res!779595 (validMask!0 mask!1564))))

(declare-fun b!1173858 () Bool)

(declare-fun res!779587 () Bool)

(assert (=> b!1173858 (=> (not res!779587) (not e!667265))))

(assert (=> b!1173858 (= res!779587 (= (select (arr!36563 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!46121 () Bool)

(assert (=> mapIsEmpty!46121 mapRes!46121))

(declare-fun b!1173859 () Bool)

(declare-fun res!779583 () Bool)

(assert (=> b!1173859 (=> (not res!779583) (not e!667265))))

(assert (=> b!1173859 (= res!779583 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25812))))

(declare-fun b!1173860 () Bool)

(assert (=> b!1173860 (= e!667265 e!667273)))

(declare-fun res!779585 () Bool)

(assert (=> b!1173860 (=> (not res!779585) (not e!667273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75834 (_ BitVec 32)) Bool)

(assert (=> b!1173860 (= res!779585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529204 mask!1564))))

(assert (=> b!1173860 (= lt!529204 (array!75835 (store (arr!36563 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37100 _keys!1208)))))

(declare-fun b!1173861 () Bool)

(assert (=> b!1173861 (= e!667268 true)))

(assert (=> b!1173861 (not (= (select (arr!36563 _keys!1208) from!1455) k0!934))))

(declare-fun lt!529201 () Unit!38625)

(assert (=> b!1173861 (= lt!529201 e!667269)))

(declare-fun c!116570 () Bool)

(assert (=> b!1173861 (= c!116570 (= (select (arr!36563 _keys!1208) from!1455) k0!934))))

(declare-fun e!667272 () Bool)

(assert (=> b!1173861 e!667272))

(declare-fun res!779582 () Bool)

(assert (=> b!1173861 (=> (not res!779582) (not e!667272))))

(declare-fun +!3761 (ListLongMap!17023 tuple2!19042) ListLongMap!17023)

(declare-fun get!18694 (ValueCell!14055 V!44499) V!44499)

(assert (=> b!1173861 (= res!779582 (= lt!529205 (+!3761 lt!529198 (tuple2!19043 (select (arr!36563 _keys!1208) from!1455) (get!18694 (select (arr!36564 _values!996) from!1455) lt!529200)))))))

(declare-fun b!1173862 () Bool)

(declare-fun e!667262 () Bool)

(assert (=> b!1173862 (= e!667272 e!667262)))

(declare-fun res!779593 () Bool)

(assert (=> b!1173862 (=> res!779593 e!667262)))

(assert (=> b!1173862 (= res!779593 (not (= (select (arr!36563 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1173863 () Bool)

(assert (=> b!1173863 (= e!667273 (not e!667271))))

(declare-fun res!779586 () Bool)

(assert (=> b!1173863 (=> res!779586 e!667271)))

(assert (=> b!1173863 (= res!779586 (bvsgt from!1455 i!673))))

(assert (=> b!1173863 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!529196 () Unit!38625)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75834 (_ BitVec 64) (_ BitVec 32)) Unit!38625)

(assert (=> b!1173863 (= lt!529196 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173864 () Bool)

(assert (=> b!1173864 (= e!667262 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173865 () Bool)

(declare-fun Unit!38628 () Unit!38625)

(assert (=> b!1173865 (= e!667269 Unit!38628)))

(declare-fun b!1173866 () Bool)

(declare-fun res!779592 () Bool)

(assert (=> b!1173866 (=> (not res!779592) (not e!667265))))

(assert (=> b!1173866 (= res!779592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!46121 () Bool)

(declare-fun tp!87712 () Bool)

(declare-fun e!667263 () Bool)

(assert (=> mapNonEmpty!46121 (= mapRes!46121 (and tp!87712 e!667263))))

(declare-fun mapRest!46121 () (Array (_ BitVec 32) ValueCell!14055))

(declare-fun mapKey!46121 () (_ BitVec 32))

(declare-fun mapValue!46121 () ValueCell!14055)

(assert (=> mapNonEmpty!46121 (= (arr!36564 _values!996) (store mapRest!46121 mapKey!46121 mapValue!46121))))

(declare-fun b!1173867 () Bool)

(assert (=> b!1173867 (= e!667263 tp_is_empty!29529)))

(declare-fun b!1173868 () Bool)

(declare-fun res!779588 () Bool)

(assert (=> b!1173868 (=> (not res!779588) (not e!667265))))

(assert (=> b!1173868 (= res!779588 (validKeyInArray!0 k0!934))))

(assert (= (and start!99456 res!779589) b!1173857))

(assert (= (and b!1173857 res!779595) b!1173853))

(assert (= (and b!1173853 res!779594) b!1173866))

(assert (= (and b!1173866 res!779592) b!1173859))

(assert (= (and b!1173859 res!779583) b!1173849))

(assert (= (and b!1173849 res!779584) b!1173868))

(assert (= (and b!1173868 res!779588) b!1173858))

(assert (= (and b!1173858 res!779587) b!1173860))

(assert (= (and b!1173860 res!779585) b!1173856))

(assert (= (and b!1173856 res!779596) b!1173863))

(assert (= (and b!1173863 (not res!779586)) b!1173850))

(assert (= (and b!1173850 (not res!779591)) b!1173854))

(assert (= (and b!1173854 (not res!779590)) b!1173861))

(assert (= (and b!1173861 res!779582) b!1173862))

(assert (= (and b!1173862 (not res!779593)) b!1173864))

(assert (= (and b!1173861 c!116570) b!1173852))

(assert (= (and b!1173861 (not c!116570)) b!1173865))

(assert (= (and b!1173851 condMapEmpty!46121) mapIsEmpty!46121))

(assert (= (and b!1173851 (not condMapEmpty!46121)) mapNonEmpty!46121))

(get-info :version)

(assert (= (and mapNonEmpty!46121 ((_ is ValueCellFull!14055) mapValue!46121)) b!1173867))

(assert (= (and b!1173851 ((_ is ValueCellFull!14055) mapDefault!46121)) b!1173855))

(assert (= start!99456 b!1173851))

(declare-fun b_lambda!20161 () Bool)

(assert (=> (not b_lambda!20161) (not b!1173850)))

(declare-fun t!37811 () Bool)

(declare-fun tb!9819 () Bool)

(assert (=> (and start!99456 (= defaultEntry!1004 defaultEntry!1004) t!37811) tb!9819))

(declare-fun result!20197 () Bool)

(assert (=> tb!9819 (= result!20197 tp_is_empty!29529)))

(assert (=> b!1173850 t!37811))

(declare-fun b_and!40881 () Bool)

(assert (= b_and!40879 (and (=> t!37811 result!20197) b_and!40881)))

(declare-fun m!1081761 () Bool)

(assert (=> b!1173862 m!1081761))

(declare-fun m!1081763 () Bool)

(assert (=> b!1173854 m!1081763))

(declare-fun m!1081765 () Bool)

(assert (=> b!1173854 m!1081765))

(assert (=> b!1173854 m!1081761))

(declare-fun m!1081767 () Bool)

(assert (=> b!1173854 m!1081767))

(assert (=> b!1173854 m!1081761))

(declare-fun m!1081769 () Bool)

(assert (=> b!1173854 m!1081769))

(declare-fun m!1081771 () Bool)

(assert (=> b!1173854 m!1081771))

(declare-fun m!1081773 () Bool)

(assert (=> b!1173866 m!1081773))

(declare-fun m!1081775 () Bool)

(assert (=> b!1173856 m!1081775))

(declare-fun m!1081777 () Bool)

(assert (=> b!1173852 m!1081777))

(declare-fun m!1081779 () Bool)

(assert (=> b!1173852 m!1081779))

(declare-fun m!1081781 () Bool)

(assert (=> b!1173852 m!1081781))

(declare-fun m!1081783 () Bool)

(assert (=> b!1173852 m!1081783))

(declare-fun m!1081785 () Bool)

(assert (=> b!1173852 m!1081785))

(declare-fun m!1081787 () Bool)

(assert (=> b!1173859 m!1081787))

(declare-fun m!1081789 () Bool)

(assert (=> b!1173860 m!1081789))

(declare-fun m!1081791 () Bool)

(assert (=> b!1173860 m!1081791))

(declare-fun m!1081793 () Bool)

(assert (=> b!1173864 m!1081793))

(declare-fun m!1081795 () Bool)

(assert (=> b!1173868 m!1081795))

(declare-fun m!1081797 () Bool)

(assert (=> mapNonEmpty!46121 m!1081797))

(declare-fun m!1081799 () Bool)

(assert (=> b!1173850 m!1081799))

(declare-fun m!1081801 () Bool)

(assert (=> b!1173850 m!1081801))

(declare-fun m!1081803 () Bool)

(assert (=> b!1173850 m!1081803))

(declare-fun m!1081805 () Bool)

(assert (=> b!1173850 m!1081805))

(declare-fun m!1081807 () Bool)

(assert (=> b!1173857 m!1081807))

(assert (=> b!1173861 m!1081761))

(declare-fun m!1081809 () Bool)

(assert (=> b!1173861 m!1081809))

(assert (=> b!1173861 m!1081809))

(declare-fun m!1081811 () Bool)

(assert (=> b!1173861 m!1081811))

(declare-fun m!1081813 () Bool)

(assert (=> b!1173861 m!1081813))

(declare-fun m!1081815 () Bool)

(assert (=> b!1173863 m!1081815))

(declare-fun m!1081817 () Bool)

(assert (=> b!1173863 m!1081817))

(declare-fun m!1081819 () Bool)

(assert (=> b!1173858 m!1081819))

(declare-fun m!1081821 () Bool)

(assert (=> start!99456 m!1081821))

(declare-fun m!1081823 () Bool)

(assert (=> start!99456 m!1081823))

(check-sat (not b!1173859) (not b!1173863) (not b!1173861) (not mapNonEmpty!46121) (not b!1173850) b_and!40881 (not b!1173868) tp_is_empty!29529 (not b!1173854) (not b!1173866) (not b_lambda!20161) (not b_next!24999) (not b!1173857) (not b!1173852) (not start!99456) (not b!1173860) (not b!1173856) (not b!1173864))
(check-sat b_and!40881 (not b_next!24999))

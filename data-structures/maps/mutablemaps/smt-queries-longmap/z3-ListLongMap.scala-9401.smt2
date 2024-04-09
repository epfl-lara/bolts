; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111938 () Bool)

(assert start!111938)

(declare-fun b_free!30501 () Bool)

(declare-fun b_next!30501 () Bool)

(assert (=> start!111938 (= b_free!30501 (not b_next!30501))))

(declare-fun tp!106983 () Bool)

(declare-fun b_and!49107 () Bool)

(assert (=> start!111938 (= tp!106983 b_and!49107)))

(declare-fun res!880116 () Bool)

(declare-fun e!755828 () Bool)

(assert (=> start!111938 (=> (not res!880116) (not e!755828))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111938 (= res!880116 (validMask!0 mask!2019))))

(assert (=> start!111938 e!755828))

(declare-datatypes ((array!89509 0))(
  ( (array!89510 (arr!43223 (Array (_ BitVec 32) (_ BitVec 64))) (size!43774 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89509)

(declare-fun array_inv!32567 (array!89509) Bool)

(assert (=> start!111938 (array_inv!32567 _keys!1609)))

(assert (=> start!111938 true))

(declare-fun tp_is_empty!36321 () Bool)

(assert (=> start!111938 tp_is_empty!36321))

(declare-datatypes ((V!53531 0))(
  ( (V!53532 (val!18235 Int)) )
))
(declare-datatypes ((ValueCell!17262 0))(
  ( (ValueCellFull!17262 (v!20866 V!53531)) (EmptyCell!17262) )
))
(declare-datatypes ((array!89511 0))(
  ( (array!89512 (arr!43224 (Array (_ BitVec 32) ValueCell!17262)) (size!43775 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89511)

(declare-fun e!755827 () Bool)

(declare-fun array_inv!32568 (array!89511) Bool)

(assert (=> start!111938 (and (array_inv!32568 _values!1337) e!755827)))

(assert (=> start!111938 tp!106983))

(declare-fun b!1325947 () Bool)

(declare-fun res!880111 () Bool)

(assert (=> b!1325947 (=> (not res!880111) (not e!755828))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1325947 (= res!880111 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43774 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325948 () Bool)

(declare-fun res!880113 () Bool)

(assert (=> b!1325948 (=> (not res!880113) (not e!755828))))

(assert (=> b!1325948 (= res!880113 (and (= (size!43775 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43774 _keys!1609) (size!43775 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1325949 () Bool)

(assert (=> b!1325949 (= e!755828 (not (bvslt from!2000 (size!43775 _values!1337))))))

(declare-datatypes ((tuple2!23674 0))(
  ( (tuple2!23675 (_1!11847 (_ BitVec 64)) (_2!11847 V!53531)) )
))
(declare-datatypes ((List!30842 0))(
  ( (Nil!30839) (Cons!30838 (h!32047 tuple2!23674) (t!44821 List!30842)) )
))
(declare-datatypes ((ListLongMap!21343 0))(
  ( (ListLongMap!21344 (toList!10687 List!30842)) )
))
(declare-fun lt!589847 () ListLongMap!21343)

(declare-fun contains!8780 (ListLongMap!21343 (_ BitVec 64)) Bool)

(assert (=> b!1325949 (contains!8780 lt!589847 k0!1164)))

(declare-datatypes ((Unit!43610 0))(
  ( (Unit!43611) )
))
(declare-fun lt!589846 () Unit!43610)

(declare-fun zeroValue!1279 () V!53531)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!212 ((_ BitVec 64) (_ BitVec 64) V!53531 ListLongMap!21343) Unit!43610)

(assert (=> b!1325949 (= lt!589846 (lemmaInListMapAfterAddingDiffThenInBefore!212 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589847))))

(declare-fun lt!589849 () ListLongMap!21343)

(assert (=> b!1325949 (contains!8780 lt!589849 k0!1164)))

(declare-fun minValue!1279 () V!53531)

(declare-fun lt!589848 () Unit!43610)

(assert (=> b!1325949 (= lt!589848 (lemmaInListMapAfterAddingDiffThenInBefore!212 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589849))))

(declare-fun +!4602 (ListLongMap!21343 tuple2!23674) ListLongMap!21343)

(assert (=> b!1325949 (= lt!589849 (+!4602 lt!589847 (tuple2!23675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6320 (array!89509 array!89511 (_ BitVec 32) (_ BitVec 32) V!53531 V!53531 (_ BitVec 32) Int) ListLongMap!21343)

(declare-fun get!21819 (ValueCell!17262 V!53531) V!53531)

(declare-fun dynLambda!3639 (Int (_ BitVec 64)) V!53531)

(assert (=> b!1325949 (= lt!589847 (+!4602 (getCurrentListMapNoExtraKeys!6320 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23675 (select (arr!43223 _keys!1609) from!2000) (get!21819 (select (arr!43224 _values!1337) from!2000) (dynLambda!3639 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1325950 () Bool)

(declare-fun res!880109 () Bool)

(assert (=> b!1325950 (=> (not res!880109) (not e!755828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325950 (= res!880109 (validKeyInArray!0 (select (arr!43223 _keys!1609) from!2000)))))

(declare-fun b!1325951 () Bool)

(declare-fun res!880114 () Bool)

(assert (=> b!1325951 (=> (not res!880114) (not e!755828))))

(assert (=> b!1325951 (= res!880114 (not (= (select (arr!43223 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1325952 () Bool)

(declare-fun res!880115 () Bool)

(assert (=> b!1325952 (=> (not res!880115) (not e!755828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89509 (_ BitVec 32)) Bool)

(assert (=> b!1325952 (= res!880115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1325953 () Bool)

(declare-fun res!880110 () Bool)

(assert (=> b!1325953 (=> (not res!880110) (not e!755828))))

(declare-fun getCurrentListMap!5621 (array!89509 array!89511 (_ BitVec 32) (_ BitVec 32) V!53531 V!53531 (_ BitVec 32) Int) ListLongMap!21343)

(assert (=> b!1325953 (= res!880110 (contains!8780 (getCurrentListMap!5621 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1325954 () Bool)

(declare-fun res!880112 () Bool)

(assert (=> b!1325954 (=> (not res!880112) (not e!755828))))

(declare-datatypes ((List!30843 0))(
  ( (Nil!30840) (Cons!30839 (h!32048 (_ BitVec 64)) (t!44822 List!30843)) )
))
(declare-fun arrayNoDuplicates!0 (array!89509 (_ BitVec 32) List!30843) Bool)

(assert (=> b!1325954 (= res!880112 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30840))))

(declare-fun mapNonEmpty!56133 () Bool)

(declare-fun mapRes!56133 () Bool)

(declare-fun tp!106984 () Bool)

(declare-fun e!755830 () Bool)

(assert (=> mapNonEmpty!56133 (= mapRes!56133 (and tp!106984 e!755830))))

(declare-fun mapKey!56133 () (_ BitVec 32))

(declare-fun mapValue!56133 () ValueCell!17262)

(declare-fun mapRest!56133 () (Array (_ BitVec 32) ValueCell!17262))

(assert (=> mapNonEmpty!56133 (= (arr!43224 _values!1337) (store mapRest!56133 mapKey!56133 mapValue!56133))))

(declare-fun b!1325955 () Bool)

(declare-fun e!755826 () Bool)

(assert (=> b!1325955 (= e!755827 (and e!755826 mapRes!56133))))

(declare-fun condMapEmpty!56133 () Bool)

(declare-fun mapDefault!56133 () ValueCell!17262)

(assert (=> b!1325955 (= condMapEmpty!56133 (= (arr!43224 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17262)) mapDefault!56133)))))

(declare-fun b!1325956 () Bool)

(assert (=> b!1325956 (= e!755830 tp_is_empty!36321)))

(declare-fun b!1325957 () Bool)

(assert (=> b!1325957 (= e!755826 tp_is_empty!36321)))

(declare-fun mapIsEmpty!56133 () Bool)

(assert (=> mapIsEmpty!56133 mapRes!56133))

(assert (= (and start!111938 res!880116) b!1325948))

(assert (= (and b!1325948 res!880113) b!1325952))

(assert (= (and b!1325952 res!880115) b!1325954))

(assert (= (and b!1325954 res!880112) b!1325947))

(assert (= (and b!1325947 res!880111) b!1325953))

(assert (= (and b!1325953 res!880110) b!1325951))

(assert (= (and b!1325951 res!880114) b!1325950))

(assert (= (and b!1325950 res!880109) b!1325949))

(assert (= (and b!1325955 condMapEmpty!56133) mapIsEmpty!56133))

(assert (= (and b!1325955 (not condMapEmpty!56133)) mapNonEmpty!56133))

(get-info :version)

(assert (= (and mapNonEmpty!56133 ((_ is ValueCellFull!17262) mapValue!56133)) b!1325956))

(assert (= (and b!1325955 ((_ is ValueCellFull!17262) mapDefault!56133)) b!1325957))

(assert (= start!111938 b!1325955))

(declare-fun b_lambda!23789 () Bool)

(assert (=> (not b_lambda!23789) (not b!1325949)))

(declare-fun t!44820 () Bool)

(declare-fun tb!11783 () Bool)

(assert (=> (and start!111938 (= defaultEntry!1340 defaultEntry!1340) t!44820) tb!11783))

(declare-fun result!24615 () Bool)

(assert (=> tb!11783 (= result!24615 tp_is_empty!36321)))

(assert (=> b!1325949 t!44820))

(declare-fun b_and!49109 () Bool)

(assert (= b_and!49107 (and (=> t!44820 result!24615) b_and!49109)))

(declare-fun m!1214909 () Bool)

(assert (=> b!1325949 m!1214909))

(declare-fun m!1214911 () Bool)

(assert (=> b!1325949 m!1214911))

(declare-fun m!1214913 () Bool)

(assert (=> b!1325949 m!1214913))

(declare-fun m!1214915 () Bool)

(assert (=> b!1325949 m!1214915))

(assert (=> b!1325949 m!1214915))

(assert (=> b!1325949 m!1214909))

(declare-fun m!1214917 () Bool)

(assert (=> b!1325949 m!1214917))

(declare-fun m!1214919 () Bool)

(assert (=> b!1325949 m!1214919))

(declare-fun m!1214921 () Bool)

(assert (=> b!1325949 m!1214921))

(declare-fun m!1214923 () Bool)

(assert (=> b!1325949 m!1214923))

(declare-fun m!1214925 () Bool)

(assert (=> b!1325949 m!1214925))

(assert (=> b!1325949 m!1214923))

(declare-fun m!1214927 () Bool)

(assert (=> b!1325949 m!1214927))

(declare-fun m!1214929 () Bool)

(assert (=> b!1325949 m!1214929))

(assert (=> b!1325951 m!1214921))

(declare-fun m!1214931 () Bool)

(assert (=> b!1325954 m!1214931))

(declare-fun m!1214933 () Bool)

(assert (=> b!1325953 m!1214933))

(assert (=> b!1325953 m!1214933))

(declare-fun m!1214935 () Bool)

(assert (=> b!1325953 m!1214935))

(declare-fun m!1214937 () Bool)

(assert (=> b!1325952 m!1214937))

(declare-fun m!1214939 () Bool)

(assert (=> mapNonEmpty!56133 m!1214939))

(declare-fun m!1214941 () Bool)

(assert (=> start!111938 m!1214941))

(declare-fun m!1214943 () Bool)

(assert (=> start!111938 m!1214943))

(declare-fun m!1214945 () Bool)

(assert (=> start!111938 m!1214945))

(assert (=> b!1325950 m!1214921))

(assert (=> b!1325950 m!1214921))

(declare-fun m!1214947 () Bool)

(assert (=> b!1325950 m!1214947))

(check-sat b_and!49109 tp_is_empty!36321 (not b!1325949) (not b!1325950) (not b!1325953) (not b!1325952) (not b!1325954) (not b_next!30501) (not start!111938) (not b_lambda!23789) (not mapNonEmpty!56133))
(check-sat b_and!49109 (not b_next!30501))

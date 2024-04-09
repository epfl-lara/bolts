; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101406 () Bool)

(assert start!101406)

(declare-fun b_free!26241 () Bool)

(declare-fun b_next!26241 () Bool)

(assert (=> start!101406 (= b_free!26241 (not b_next!26241))))

(declare-fun tp!91751 () Bool)

(declare-fun b_and!43645 () Bool)

(assert (=> start!101406 (= tp!91751 b_and!43645)))

(declare-fun b!1217979 () Bool)

(declare-fun res!808968 () Bool)

(declare-fun e!691547 () Bool)

(assert (=> b!1217979 (=> (not res!808968) (not e!691547))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217979 (= res!808968 (validKeyInArray!0 k0!934))))

(declare-fun res!808971 () Bool)

(assert (=> start!101406 (=> (not res!808971) (not e!691547))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78640 0))(
  ( (array!78641 (arr!37949 (Array (_ BitVec 32) (_ BitVec 64))) (size!38486 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78640)

(assert (=> start!101406 (= res!808971 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38486 _keys!1208))))))

(assert (=> start!101406 e!691547))

(declare-fun tp_is_empty!30945 () Bool)

(assert (=> start!101406 tp_is_empty!30945))

(declare-fun array_inv!28798 (array!78640) Bool)

(assert (=> start!101406 (array_inv!28798 _keys!1208)))

(assert (=> start!101406 true))

(assert (=> start!101406 tp!91751))

(declare-datatypes ((V!46387 0))(
  ( (V!46388 (val!15529 Int)) )
))
(declare-datatypes ((ValueCell!14763 0))(
  ( (ValueCellFull!14763 (v!18185 V!46387)) (EmptyCell!14763) )
))
(declare-datatypes ((array!78642 0))(
  ( (array!78643 (arr!37950 (Array (_ BitVec 32) ValueCell!14763)) (size!38487 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78642)

(declare-fun e!691539 () Bool)

(declare-fun array_inv!28799 (array!78642) Bool)

(assert (=> start!101406 (and (array_inv!28799 _values!996) e!691539)))

(declare-fun b!1217980 () Bool)

(declare-fun res!808969 () Bool)

(assert (=> b!1217980 (=> (not res!808969) (not e!691547))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1217980 (= res!808969 (= (select (arr!37949 _keys!1208) i!673) k0!934))))

(declare-fun b!1217981 () Bool)

(declare-fun res!808964 () Bool)

(assert (=> b!1217981 (=> (not res!808964) (not e!691547))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1217981 (= res!808964 (and (= (size!38487 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38486 _keys!1208) (size!38487 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1217982 () Bool)

(declare-fun e!691544 () Bool)

(assert (=> b!1217982 (= e!691544 tp_is_empty!30945)))

(declare-fun b!1217983 () Bool)

(declare-fun res!808958 () Bool)

(declare-fun e!691543 () Bool)

(assert (=> b!1217983 (=> (not res!808958) (not e!691543))))

(declare-fun lt!553627 () array!78640)

(declare-datatypes ((List!26931 0))(
  ( (Nil!26928) (Cons!26927 (h!28136 (_ BitVec 64)) (t!40159 List!26931)) )
))
(declare-fun arrayNoDuplicates!0 (array!78640 (_ BitVec 32) List!26931) Bool)

(assert (=> b!1217983 (= res!808958 (arrayNoDuplicates!0 lt!553627 #b00000000000000000000000000000000 Nil!26928))))

(declare-fun b!1217984 () Bool)

(assert (=> b!1217984 (= e!691547 e!691543)))

(declare-fun res!808970 () Bool)

(assert (=> b!1217984 (=> (not res!808970) (not e!691543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78640 (_ BitVec 32)) Bool)

(assert (=> b!1217984 (= res!808970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553627 mask!1564))))

(assert (=> b!1217984 (= lt!553627 (array!78641 (store (arr!37949 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38486 _keys!1208)))))

(declare-fun b!1217985 () Bool)

(declare-fun e!691545 () Bool)

(declare-fun e!691540 () Bool)

(assert (=> b!1217985 (= e!691545 e!691540)))

(declare-fun res!808959 () Bool)

(assert (=> b!1217985 (=> res!808959 e!691540)))

(assert (=> b!1217985 (= res!808959 (not (= (select (arr!37949 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1217986 () Bool)

(declare-fun res!808967 () Bool)

(assert (=> b!1217986 (=> (not res!808967) (not e!691547))))

(assert (=> b!1217986 (= res!808967 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26928))))

(declare-fun b!1217987 () Bool)

(declare-fun arrayContainsKey!0 (array!78640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217987 (= e!691540 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1217988 () Bool)

(declare-fun e!691542 () Bool)

(assert (=> b!1217988 (= e!691542 tp_is_empty!30945)))

(declare-fun b!1217989 () Bool)

(declare-fun res!808965 () Bool)

(assert (=> b!1217989 (=> (not res!808965) (not e!691547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217989 (= res!808965 (validMask!0 mask!1564))))

(declare-fun b!1217990 () Bool)

(declare-fun e!691546 () Bool)

(assert (=> b!1217990 (= e!691546 true)))

(assert (=> b!1217990 e!691545))

(declare-fun res!808960 () Bool)

(assert (=> b!1217990 (=> (not res!808960) (not e!691545))))

(declare-datatypes ((tuple2!20110 0))(
  ( (tuple2!20111 (_1!10065 (_ BitVec 64)) (_2!10065 V!46387)) )
))
(declare-datatypes ((List!26932 0))(
  ( (Nil!26929) (Cons!26928 (h!28137 tuple2!20110) (t!40160 List!26932)) )
))
(declare-datatypes ((ListLongMap!18091 0))(
  ( (ListLongMap!18092 (toList!9061 List!26932)) )
))
(declare-fun lt!553631 () ListLongMap!18091)

(declare-fun lt!553626 () ListLongMap!18091)

(declare-fun lt!553625 () V!46387)

(declare-fun +!4042 (ListLongMap!18091 tuple2!20110) ListLongMap!18091)

(declare-fun get!19384 (ValueCell!14763 V!46387) V!46387)

(assert (=> b!1217990 (= res!808960 (= lt!553631 (+!4042 lt!553626 (tuple2!20111 (select (arr!37949 _keys!1208) from!1455) (get!19384 (select (arr!37950 _values!996) from!1455) lt!553625)))))))

(declare-fun b!1217991 () Bool)

(declare-fun e!691541 () Bool)

(assert (=> b!1217991 (= e!691543 (not e!691541))))

(declare-fun res!808966 () Bool)

(assert (=> b!1217991 (=> res!808966 e!691541)))

(assert (=> b!1217991 (= res!808966 (bvsgt from!1455 i!673))))

(assert (=> b!1217991 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40308 0))(
  ( (Unit!40309) )
))
(declare-fun lt!553624 () Unit!40308)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78640 (_ BitVec 64) (_ BitVec 32)) Unit!40308)

(assert (=> b!1217991 (= lt!553624 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1217992 () Bool)

(declare-fun res!808961 () Bool)

(assert (=> b!1217992 (=> (not res!808961) (not e!691547))))

(assert (=> b!1217992 (= res!808961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1217993 () Bool)

(declare-fun e!691548 () Bool)

(assert (=> b!1217993 (= e!691541 e!691548)))

(declare-fun res!808963 () Bool)

(assert (=> b!1217993 (=> res!808963 e!691548)))

(assert (=> b!1217993 (= res!808963 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46387)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!553623 () array!78642)

(declare-fun minValue!944 () V!46387)

(declare-fun getCurrentListMapNoExtraKeys!5465 (array!78640 array!78642 (_ BitVec 32) (_ BitVec 32) V!46387 V!46387 (_ BitVec 32) Int) ListLongMap!18091)

(assert (=> b!1217993 (= lt!553631 (getCurrentListMapNoExtraKeys!5465 lt!553627 lt!553623 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1217993 (= lt!553623 (array!78643 (store (arr!37950 _values!996) i!673 (ValueCellFull!14763 lt!553625)) (size!38487 _values!996)))))

(declare-fun dynLambda!3369 (Int (_ BitVec 64)) V!46387)

(assert (=> b!1217993 (= lt!553625 (dynLambda!3369 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553629 () ListLongMap!18091)

(assert (=> b!1217993 (= lt!553629 (getCurrentListMapNoExtraKeys!5465 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!48298 () Bool)

(declare-fun mapRes!48298 () Bool)

(declare-fun tp!91752 () Bool)

(assert (=> mapNonEmpty!48298 (= mapRes!48298 (and tp!91752 e!691544))))

(declare-fun mapKey!48298 () (_ BitVec 32))

(declare-fun mapValue!48298 () ValueCell!14763)

(declare-fun mapRest!48298 () (Array (_ BitVec 32) ValueCell!14763))

(assert (=> mapNonEmpty!48298 (= (arr!37950 _values!996) (store mapRest!48298 mapKey!48298 mapValue!48298))))

(declare-fun b!1217994 () Bool)

(declare-fun res!808972 () Bool)

(assert (=> b!1217994 (=> (not res!808972) (not e!691547))))

(assert (=> b!1217994 (= res!808972 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38486 _keys!1208))))))

(declare-fun b!1217995 () Bool)

(assert (=> b!1217995 (= e!691548 e!691546)))

(declare-fun res!808962 () Bool)

(assert (=> b!1217995 (=> res!808962 e!691546)))

(assert (=> b!1217995 (= res!808962 (not (validKeyInArray!0 (select (arr!37949 _keys!1208) from!1455))))))

(declare-fun lt!553630 () ListLongMap!18091)

(assert (=> b!1217995 (= lt!553630 lt!553626)))

(declare-fun lt!553622 () ListLongMap!18091)

(declare-fun -!1922 (ListLongMap!18091 (_ BitVec 64)) ListLongMap!18091)

(assert (=> b!1217995 (= lt!553626 (-!1922 lt!553622 k0!934))))

(assert (=> b!1217995 (= lt!553630 (getCurrentListMapNoExtraKeys!5465 lt!553627 lt!553623 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1217995 (= lt!553622 (getCurrentListMapNoExtraKeys!5465 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!553628 () Unit!40308)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1124 (array!78640 array!78642 (_ BitVec 32) (_ BitVec 32) V!46387 V!46387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40308)

(assert (=> b!1217995 (= lt!553628 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1124 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1217996 () Bool)

(assert (=> b!1217996 (= e!691539 (and e!691542 mapRes!48298))))

(declare-fun condMapEmpty!48298 () Bool)

(declare-fun mapDefault!48298 () ValueCell!14763)

(assert (=> b!1217996 (= condMapEmpty!48298 (= (arr!37950 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14763)) mapDefault!48298)))))

(declare-fun mapIsEmpty!48298 () Bool)

(assert (=> mapIsEmpty!48298 mapRes!48298))

(assert (= (and start!101406 res!808971) b!1217989))

(assert (= (and b!1217989 res!808965) b!1217981))

(assert (= (and b!1217981 res!808964) b!1217992))

(assert (= (and b!1217992 res!808961) b!1217986))

(assert (= (and b!1217986 res!808967) b!1217994))

(assert (= (and b!1217994 res!808972) b!1217979))

(assert (= (and b!1217979 res!808968) b!1217980))

(assert (= (and b!1217980 res!808969) b!1217984))

(assert (= (and b!1217984 res!808970) b!1217983))

(assert (= (and b!1217983 res!808958) b!1217991))

(assert (= (and b!1217991 (not res!808966)) b!1217993))

(assert (= (and b!1217993 (not res!808963)) b!1217995))

(assert (= (and b!1217995 (not res!808962)) b!1217990))

(assert (= (and b!1217990 res!808960) b!1217985))

(assert (= (and b!1217985 (not res!808959)) b!1217987))

(assert (= (and b!1217996 condMapEmpty!48298) mapIsEmpty!48298))

(assert (= (and b!1217996 (not condMapEmpty!48298)) mapNonEmpty!48298))

(get-info :version)

(assert (= (and mapNonEmpty!48298 ((_ is ValueCellFull!14763) mapValue!48298)) b!1217982))

(assert (= (and b!1217996 ((_ is ValueCellFull!14763) mapDefault!48298)) b!1217988))

(assert (= start!101406 b!1217996))

(declare-fun b_lambda!22003 () Bool)

(assert (=> (not b_lambda!22003) (not b!1217993)))

(declare-fun t!40158 () Bool)

(declare-fun tb!11049 () Bool)

(assert (=> (and start!101406 (= defaultEntry!1004 defaultEntry!1004) t!40158) tb!11049))

(declare-fun result!22691 () Bool)

(assert (=> tb!11049 (= result!22691 tp_is_empty!30945)))

(assert (=> b!1217993 t!40158))

(declare-fun b_and!43647 () Bool)

(assert (= b_and!43645 (and (=> t!40158 result!22691) b_and!43647)))

(declare-fun m!1122777 () Bool)

(assert (=> b!1217986 m!1122777))

(declare-fun m!1122779 () Bool)

(assert (=> mapNonEmpty!48298 m!1122779))

(declare-fun m!1122781 () Bool)

(assert (=> b!1217991 m!1122781))

(declare-fun m!1122783 () Bool)

(assert (=> b!1217991 m!1122783))

(declare-fun m!1122785 () Bool)

(assert (=> b!1217992 m!1122785))

(declare-fun m!1122787 () Bool)

(assert (=> b!1217995 m!1122787))

(declare-fun m!1122789 () Bool)

(assert (=> b!1217995 m!1122789))

(declare-fun m!1122791 () Bool)

(assert (=> b!1217995 m!1122791))

(declare-fun m!1122793 () Bool)

(assert (=> b!1217995 m!1122793))

(declare-fun m!1122795 () Bool)

(assert (=> b!1217995 m!1122795))

(assert (=> b!1217995 m!1122789))

(declare-fun m!1122797 () Bool)

(assert (=> b!1217995 m!1122797))

(declare-fun m!1122799 () Bool)

(assert (=> b!1217989 m!1122799))

(declare-fun m!1122801 () Bool)

(assert (=> b!1217984 m!1122801))

(declare-fun m!1122803 () Bool)

(assert (=> b!1217984 m!1122803))

(declare-fun m!1122805 () Bool)

(assert (=> b!1217993 m!1122805))

(declare-fun m!1122807 () Bool)

(assert (=> b!1217993 m!1122807))

(declare-fun m!1122809 () Bool)

(assert (=> b!1217993 m!1122809))

(declare-fun m!1122811 () Bool)

(assert (=> b!1217993 m!1122811))

(assert (=> b!1217990 m!1122789))

(declare-fun m!1122813 () Bool)

(assert (=> b!1217990 m!1122813))

(assert (=> b!1217990 m!1122813))

(declare-fun m!1122815 () Bool)

(assert (=> b!1217990 m!1122815))

(declare-fun m!1122817 () Bool)

(assert (=> b!1217990 m!1122817))

(declare-fun m!1122819 () Bool)

(assert (=> b!1217979 m!1122819))

(declare-fun m!1122821 () Bool)

(assert (=> b!1217983 m!1122821))

(declare-fun m!1122823 () Bool)

(assert (=> b!1217980 m!1122823))

(declare-fun m!1122825 () Bool)

(assert (=> b!1217987 m!1122825))

(assert (=> b!1217985 m!1122789))

(declare-fun m!1122827 () Bool)

(assert (=> start!101406 m!1122827))

(declare-fun m!1122829 () Bool)

(assert (=> start!101406 m!1122829))

(check-sat (not b!1217990) (not b!1217993) (not b!1217995) (not b_lambda!22003) (not b!1217979) (not b!1217986) (not b!1217983) b_and!43647 (not mapNonEmpty!48298) (not b!1217984) (not b_next!26241) (not b!1217989) (not start!101406) (not b!1217992) (not b!1217987) tp_is_empty!30945 (not b!1217991))
(check-sat b_and!43647 (not b_next!26241))

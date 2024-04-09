; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79128 () Bool)

(assert start!79128)

(declare-fun b_free!17313 () Bool)

(declare-fun b_next!17313 () Bool)

(assert (=> start!79128 (= b_free!17313 (not b_next!17313))))

(declare-fun tp!60380 () Bool)

(declare-fun b_and!28381 () Bool)

(assert (=> start!79128 (= tp!60380 b_and!28381)))

(declare-fun b!927969 () Bool)

(declare-datatypes ((Unit!31402 0))(
  ( (Unit!31403) )
))
(declare-fun e!521034 () Unit!31402)

(declare-fun Unit!31404 () Unit!31402)

(assert (=> b!927969 (= e!521034 Unit!31404)))

(declare-fun mapNonEmpty!31488 () Bool)

(declare-fun mapRes!31488 () Bool)

(declare-fun tp!60381 () Bool)

(declare-fun e!521046 () Bool)

(assert (=> mapNonEmpty!31488 (= mapRes!31488 (and tp!60381 e!521046))))

(declare-fun mapKey!31488 () (_ BitVec 32))

(declare-datatypes ((V!31393 0))(
  ( (V!31394 (val!9961 Int)) )
))
(declare-datatypes ((ValueCell!9429 0))(
  ( (ValueCellFull!9429 (v!12479 V!31393)) (EmptyCell!9429) )
))
(declare-datatypes ((array!55620 0))(
  ( (array!55621 (arr!26751 (Array (_ BitVec 32) ValueCell!9429)) (size!27211 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55620)

(declare-fun mapRest!31488 () (Array (_ BitVec 32) ValueCell!9429))

(declare-fun mapValue!31488 () ValueCell!9429)

(assert (=> mapNonEmpty!31488 (= (arr!26751 _values!1231) (store mapRest!31488 mapKey!31488 mapValue!31488))))

(declare-fun b!927970 () Bool)

(declare-fun e!521036 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!927970 (= e!521036 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!625070 () Bool)

(declare-fun e!521041 () Bool)

(assert (=> start!79128 (=> (not res!625070) (not e!521041))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79128 (= res!625070 (validMask!0 mask!1881))))

(assert (=> start!79128 e!521041))

(assert (=> start!79128 true))

(declare-fun tp_is_empty!19821 () Bool)

(assert (=> start!79128 tp_is_empty!19821))

(declare-fun e!521044 () Bool)

(declare-fun array_inv!20822 (array!55620) Bool)

(assert (=> start!79128 (and (array_inv!20822 _values!1231) e!521044)))

(assert (=> start!79128 tp!60380))

(declare-datatypes ((array!55622 0))(
  ( (array!55623 (arr!26752 (Array (_ BitVec 32) (_ BitVec 64))) (size!27212 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55622)

(declare-fun array_inv!20823 (array!55622) Bool)

(assert (=> start!79128 (array_inv!20823 _keys!1487)))

(declare-fun b!927971 () Bool)

(declare-fun e!521037 () Bool)

(declare-fun e!521042 () Bool)

(assert (=> b!927971 (= e!521037 e!521042)))

(declare-fun res!625074 () Bool)

(assert (=> b!927971 (=> (not res!625074) (not e!521042))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!927971 (= res!625074 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27212 _keys!1487)))))

(declare-fun lt!418492 () Unit!31402)

(declare-fun e!521038 () Unit!31402)

(assert (=> b!927971 (= lt!418492 e!521038)))

(declare-fun c!96885 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927971 (= c!96885 (validKeyInArray!0 k0!1099))))

(declare-fun b!927972 () Bool)

(declare-fun e!521045 () Bool)

(assert (=> b!927972 (= e!521042 e!521045)))

(declare-fun res!625071 () Bool)

(assert (=> b!927972 (=> (not res!625071) (not e!521045))))

(declare-datatypes ((tuple2!13118 0))(
  ( (tuple2!13119 (_1!6569 (_ BitVec 64)) (_2!6569 V!31393)) )
))
(declare-datatypes ((List!18942 0))(
  ( (Nil!18939) (Cons!18938 (h!20084 tuple2!13118) (t!26993 List!18942)) )
))
(declare-datatypes ((ListLongMap!11829 0))(
  ( (ListLongMap!11830 (toList!5930 List!18942)) )
))
(declare-fun lt!418483 () ListLongMap!11829)

(declare-fun contains!4949 (ListLongMap!11829 (_ BitVec 64)) Bool)

(assert (=> b!927972 (= res!625071 (contains!4949 lt!418483 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31393)

(declare-fun minValue!1173 () V!31393)

(declare-fun getCurrentListMap!3143 (array!55622 array!55620 (_ BitVec 32) (_ BitVec 32) V!31393 V!31393 (_ BitVec 32) Int) ListLongMap!11829)

(assert (=> b!927972 (= lt!418483 (getCurrentListMap!3143 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31488 () Bool)

(assert (=> mapIsEmpty!31488 mapRes!31488))

(declare-fun b!927973 () Bool)

(declare-fun res!625066 () Bool)

(assert (=> b!927973 (=> (not res!625066) (not e!521041))))

(assert (=> b!927973 (= res!625066 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27212 _keys!1487))))))

(declare-fun b!927974 () Bool)

(declare-fun lt!418484 () ListLongMap!11829)

(declare-fun lt!418482 () V!31393)

(declare-fun apply!726 (ListLongMap!11829 (_ BitVec 64)) V!31393)

(assert (=> b!927974 (= (apply!726 lt!418484 k0!1099) lt!418482)))

(declare-fun lt!418495 () V!31393)

(declare-fun lt!418497 () (_ BitVec 64))

(declare-fun lt!418493 () Unit!31402)

(declare-fun lt!418490 () ListLongMap!11829)

(declare-fun addApplyDifferent!404 (ListLongMap!11829 (_ BitVec 64) V!31393 (_ BitVec 64)) Unit!31402)

(assert (=> b!927974 (= lt!418493 (addApplyDifferent!404 lt!418490 lt!418497 lt!418495 k0!1099))))

(assert (=> b!927974 (not (= lt!418497 k0!1099))))

(declare-fun lt!418489 () Unit!31402)

(declare-datatypes ((List!18943 0))(
  ( (Nil!18940) (Cons!18939 (h!20085 (_ BitVec 64)) (t!26994 List!18943)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55622 (_ BitVec 64) (_ BitVec 32) List!18943) Unit!31402)

(assert (=> b!927974 (= lt!418489 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18940))))

(assert (=> b!927974 e!521036))

(declare-fun c!96886 () Bool)

(assert (=> b!927974 (= c!96886 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!418485 () Unit!31402)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!264 (array!55622 array!55620 (_ BitVec 32) (_ BitVec 32) V!31393 V!31393 (_ BitVec 64) (_ BitVec 32) Int) Unit!31402)

(assert (=> b!927974 (= lt!418485 (lemmaListMapContainsThenArrayContainsFrom!264 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55622 (_ BitVec 32) List!18943) Bool)

(assert (=> b!927974 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18940)))

(declare-fun lt!418488 () Unit!31402)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55622 (_ BitVec 32) (_ BitVec 32)) Unit!31402)

(assert (=> b!927974 (= lt!418488 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!927974 (contains!4949 lt!418484 k0!1099)))

(declare-fun lt!418486 () tuple2!13118)

(declare-fun +!2718 (ListLongMap!11829 tuple2!13118) ListLongMap!11829)

(assert (=> b!927974 (= lt!418484 (+!2718 lt!418490 lt!418486))))

(declare-fun lt!418491 () Unit!31402)

(declare-fun addStillContains!480 (ListLongMap!11829 (_ BitVec 64) V!31393 (_ BitVec 64)) Unit!31402)

(assert (=> b!927974 (= lt!418491 (addStillContains!480 lt!418490 lt!418497 lt!418495 k0!1099))))

(assert (=> b!927974 (= (getCurrentListMap!3143 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2718 (getCurrentListMap!3143 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418486))))

(assert (=> b!927974 (= lt!418486 (tuple2!13119 lt!418497 lt!418495))))

(declare-fun get!14101 (ValueCell!9429 V!31393) V!31393)

(declare-fun dynLambda!1557 (Int (_ BitVec 64)) V!31393)

(assert (=> b!927974 (= lt!418495 (get!14101 (select (arr!26751 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1557 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418494 () Unit!31402)

(declare-fun lemmaListMapRecursiveValidKeyArray!153 (array!55622 array!55620 (_ BitVec 32) (_ BitVec 32) V!31393 V!31393 (_ BitVec 32) Int) Unit!31402)

(assert (=> b!927974 (= lt!418494 (lemmaListMapRecursiveValidKeyArray!153 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!927974 (= e!521034 lt!418493)))

(declare-fun e!521039 () Bool)

(declare-fun v!791 () V!31393)

(declare-fun b!927975 () Bool)

(declare-fun lt!418487 () ListLongMap!11829)

(assert (=> b!927975 (= e!521039 (= (apply!726 lt!418487 k0!1099) v!791))))

(declare-fun b!927976 () Bool)

(assert (=> b!927976 (= e!521046 tp_is_empty!19821)))

(declare-fun b!927977 () Bool)

(assert (=> b!927977 (= e!521045 (not true))))

(assert (=> b!927977 e!521039))

(declare-fun res!625075 () Bool)

(assert (=> b!927977 (=> (not res!625075) (not e!521039))))

(assert (=> b!927977 (= res!625075 (contains!4949 lt!418487 k0!1099))))

(assert (=> b!927977 (= lt!418487 (getCurrentListMap!3143 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!418496 () Unit!31402)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!104 (array!55622 array!55620 (_ BitVec 32) (_ BitVec 32) V!31393 V!31393 (_ BitVec 64) V!31393 (_ BitVec 32) Int) Unit!31402)

(assert (=> b!927977 (= lt!418496 (lemmaListMapApplyFromThenApplyFromZero!104 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927978 () Bool)

(declare-fun res!625068 () Bool)

(assert (=> b!927978 (=> (not res!625068) (not e!521041))))

(assert (=> b!927978 (= res!625068 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18940))))

(declare-fun b!927979 () Bool)

(declare-fun res!625072 () Bool)

(assert (=> b!927979 (=> (not res!625072) (not e!521045))))

(assert (=> b!927979 (= res!625072 (= (apply!726 lt!418483 k0!1099) v!791))))

(declare-fun b!927980 () Bool)

(declare-fun res!625067 () Bool)

(assert (=> b!927980 (=> (not res!625067) (not e!521041))))

(assert (=> b!927980 (= res!625067 (and (= (size!27211 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27212 _keys!1487) (size!27211 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927981 () Bool)

(declare-fun res!625069 () Bool)

(assert (=> b!927981 (=> (not res!625069) (not e!521041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55622 (_ BitVec 32)) Bool)

(assert (=> b!927981 (= res!625069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!927982 () Bool)

(declare-fun arrayContainsKey!0 (array!55622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927982 (= e!521036 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!927983 () Bool)

(assert (=> b!927983 (= e!521038 e!521034)))

(assert (=> b!927983 (= lt!418497 (select (arr!26752 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96887 () Bool)

(assert (=> b!927983 (= c!96887 (validKeyInArray!0 lt!418497))))

(declare-fun b!927984 () Bool)

(declare-fun e!521043 () Bool)

(assert (=> b!927984 (= e!521043 e!521037)))

(declare-fun res!625076 () Bool)

(assert (=> b!927984 (=> (not res!625076) (not e!521037))))

(assert (=> b!927984 (= res!625076 (and (= lt!418482 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!927984 (= lt!418482 (apply!726 lt!418490 k0!1099))))

(declare-fun b!927985 () Bool)

(declare-fun Unit!31405 () Unit!31402)

(assert (=> b!927985 (= e!521038 Unit!31405)))

(declare-fun b!927986 () Bool)

(declare-fun e!521040 () Bool)

(assert (=> b!927986 (= e!521040 tp_is_empty!19821)))

(declare-fun b!927987 () Bool)

(assert (=> b!927987 (= e!521041 e!521043)))

(declare-fun res!625073 () Bool)

(assert (=> b!927987 (=> (not res!625073) (not e!521043))))

(assert (=> b!927987 (= res!625073 (contains!4949 lt!418490 k0!1099))))

(assert (=> b!927987 (= lt!418490 (getCurrentListMap!3143 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927988 () Bool)

(assert (=> b!927988 (= e!521044 (and e!521040 mapRes!31488))))

(declare-fun condMapEmpty!31488 () Bool)

(declare-fun mapDefault!31488 () ValueCell!9429)

(assert (=> b!927988 (= condMapEmpty!31488 (= (arr!26751 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9429)) mapDefault!31488)))))

(assert (= (and start!79128 res!625070) b!927980))

(assert (= (and b!927980 res!625067) b!927981))

(assert (= (and b!927981 res!625069) b!927978))

(assert (= (and b!927978 res!625068) b!927973))

(assert (= (and b!927973 res!625066) b!927987))

(assert (= (and b!927987 res!625073) b!927984))

(assert (= (and b!927984 res!625076) b!927971))

(assert (= (and b!927971 c!96885) b!927983))

(assert (= (and b!927971 (not c!96885)) b!927985))

(assert (= (and b!927983 c!96887) b!927974))

(assert (= (and b!927983 (not c!96887)) b!927969))

(assert (= (and b!927974 c!96886) b!927982))

(assert (= (and b!927974 (not c!96886)) b!927970))

(assert (= (and b!927971 res!625074) b!927972))

(assert (= (and b!927972 res!625071) b!927979))

(assert (= (and b!927979 res!625072) b!927977))

(assert (= (and b!927977 res!625075) b!927975))

(assert (= (and b!927988 condMapEmpty!31488) mapIsEmpty!31488))

(assert (= (and b!927988 (not condMapEmpty!31488)) mapNonEmpty!31488))

(get-info :version)

(assert (= (and mapNonEmpty!31488 ((_ is ValueCellFull!9429) mapValue!31488)) b!927976))

(assert (= (and b!927988 ((_ is ValueCellFull!9429) mapDefault!31488)) b!927986))

(assert (= start!79128 b!927988))

(declare-fun b_lambda!13845 () Bool)

(assert (=> (not b_lambda!13845) (not b!927974)))

(declare-fun t!26992 () Bool)

(declare-fun tb!5901 () Bool)

(assert (=> (and start!79128 (= defaultEntry!1235 defaultEntry!1235) t!26992) tb!5901))

(declare-fun result!11617 () Bool)

(assert (=> tb!5901 (= result!11617 tp_is_empty!19821)))

(assert (=> b!927974 t!26992))

(declare-fun b_and!28383 () Bool)

(assert (= b_and!28381 (and (=> t!26992 result!11617) b_and!28383)))

(declare-fun m!862841 () Bool)

(assert (=> b!927982 m!862841))

(declare-fun m!862843 () Bool)

(assert (=> b!927977 m!862843))

(declare-fun m!862845 () Bool)

(assert (=> b!927977 m!862845))

(declare-fun m!862847 () Bool)

(assert (=> b!927977 m!862847))

(declare-fun m!862849 () Bool)

(assert (=> b!927978 m!862849))

(declare-fun m!862851 () Bool)

(assert (=> b!927979 m!862851))

(declare-fun m!862853 () Bool)

(assert (=> b!927972 m!862853))

(declare-fun m!862855 () Bool)

(assert (=> b!927972 m!862855))

(declare-fun m!862857 () Bool)

(assert (=> b!927983 m!862857))

(declare-fun m!862859 () Bool)

(assert (=> b!927983 m!862859))

(declare-fun m!862861 () Bool)

(assert (=> start!79128 m!862861))

(declare-fun m!862863 () Bool)

(assert (=> start!79128 m!862863))

(declare-fun m!862865 () Bool)

(assert (=> start!79128 m!862865))

(declare-fun m!862867 () Bool)

(assert (=> b!927974 m!862867))

(declare-fun m!862869 () Bool)

(assert (=> b!927974 m!862869))

(declare-fun m!862871 () Bool)

(assert (=> b!927974 m!862871))

(declare-fun m!862873 () Bool)

(assert (=> b!927974 m!862873))

(declare-fun m!862875 () Bool)

(assert (=> b!927974 m!862875))

(declare-fun m!862877 () Bool)

(assert (=> b!927974 m!862877))

(declare-fun m!862879 () Bool)

(assert (=> b!927974 m!862879))

(declare-fun m!862881 () Bool)

(assert (=> b!927974 m!862881))

(assert (=> b!927974 m!862877))

(declare-fun m!862883 () Bool)

(assert (=> b!927974 m!862883))

(declare-fun m!862885 () Bool)

(assert (=> b!927974 m!862885))

(assert (=> b!927974 m!862855))

(declare-fun m!862887 () Bool)

(assert (=> b!927974 m!862887))

(declare-fun m!862889 () Bool)

(assert (=> b!927974 m!862889))

(declare-fun m!862891 () Bool)

(assert (=> b!927974 m!862891))

(assert (=> b!927974 m!862883))

(declare-fun m!862893 () Bool)

(assert (=> b!927974 m!862893))

(assert (=> b!927974 m!862871))

(declare-fun m!862895 () Bool)

(assert (=> b!927974 m!862895))

(declare-fun m!862897 () Bool)

(assert (=> mapNonEmpty!31488 m!862897))

(declare-fun m!862899 () Bool)

(assert (=> b!927981 m!862899))

(declare-fun m!862901 () Bool)

(assert (=> b!927971 m!862901))

(declare-fun m!862903 () Bool)

(assert (=> b!927984 m!862903))

(declare-fun m!862905 () Bool)

(assert (=> b!927975 m!862905))

(declare-fun m!862907 () Bool)

(assert (=> b!927987 m!862907))

(declare-fun m!862909 () Bool)

(assert (=> b!927987 m!862909))

(check-sat tp_is_empty!19821 (not b!927987) b_and!28383 (not b!927984) (not b_lambda!13845) (not b!927977) (not b!927972) (not start!79128) (not mapNonEmpty!31488) (not b!927981) (not b!927975) (not b!927971) (not b!927978) (not b!927983) (not b!927974) (not b!927982) (not b!927979) (not b_next!17313))
(check-sat b_and!28383 (not b_next!17313))

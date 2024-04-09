; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78876 () Bool)

(assert start!78876)

(declare-fun b_free!17061 () Bool)

(declare-fun b_next!17061 () Bool)

(assert (=> start!78876 (= b_free!17061 (not b_next!17061))))

(declare-fun tp!59624 () Bool)

(declare-fun b_and!27877 () Bool)

(assert (=> start!78876 (= tp!59624 b_and!27877)))

(declare-fun b!920885 () Bool)

(declare-fun res!621125 () Bool)

(declare-fun e!516830 () Bool)

(assert (=> b!920885 (=> res!621125 e!516830)))

(declare-datatypes ((List!18728 0))(
  ( (Nil!18725) (Cons!18724 (h!19870 (_ BitVec 64)) (t!26527 List!18728)) )
))
(declare-fun contains!4834 (List!18728 (_ BitVec 64)) Bool)

(assert (=> b!920885 (= res!621125 (contains!4834 Nil!18725 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!31110 () Bool)

(declare-fun mapRes!31110 () Bool)

(declare-fun tp!59625 () Bool)

(declare-fun e!516833 () Bool)

(assert (=> mapNonEmpty!31110 (= mapRes!31110 (and tp!59625 e!516833))))

(declare-datatypes ((V!31057 0))(
  ( (V!31058 (val!9835 Int)) )
))
(declare-datatypes ((ValueCell!9303 0))(
  ( (ValueCellFull!9303 (v!12353 V!31057)) (EmptyCell!9303) )
))
(declare-fun mapRest!31110 () (Array (_ BitVec 32) ValueCell!9303))

(declare-fun mapKey!31110 () (_ BitVec 32))

(declare-fun mapValue!31110 () ValueCell!9303)

(declare-datatypes ((array!55130 0))(
  ( (array!55131 (arr!26506 (Array (_ BitVec 32) ValueCell!9303)) (size!26966 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55130)

(assert (=> mapNonEmpty!31110 (= (arr!26506 _values!1231) (store mapRest!31110 mapKey!31110 mapValue!31110))))

(declare-fun b!920886 () Bool)

(declare-fun e!516835 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!920886 (= e!516835 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!621121 () Bool)

(declare-fun e!516829 () Bool)

(assert (=> start!78876 (=> (not res!621121) (not e!516829))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78876 (= res!621121 (validMask!0 mask!1881))))

(assert (=> start!78876 e!516829))

(assert (=> start!78876 true))

(declare-fun tp_is_empty!19569 () Bool)

(assert (=> start!78876 tp_is_empty!19569))

(declare-fun e!516832 () Bool)

(declare-fun array_inv!20640 (array!55130) Bool)

(assert (=> start!78876 (and (array_inv!20640 _values!1231) e!516832)))

(assert (=> start!78876 tp!59624))

(declare-datatypes ((array!55132 0))(
  ( (array!55133 (arr!26507 (Array (_ BitVec 32) (_ BitVec 64))) (size!26967 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55132)

(declare-fun array_inv!20641 (array!55132) Bool)

(assert (=> start!78876 (array_inv!20641 _keys!1487)))

(declare-fun b!920887 () Bool)

(declare-fun res!621122 () Bool)

(declare-fun e!516831 () Bool)

(assert (=> b!920887 (=> (not res!621122) (not e!516831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920887 (= res!621122 (validKeyInArray!0 k0!1099))))

(declare-fun b!920888 () Bool)

(declare-fun res!621126 () Bool)

(assert (=> b!920888 (=> (not res!621126) (not e!516831))))

(declare-fun v!791 () V!31057)

(declare-datatypes ((tuple2!12886 0))(
  ( (tuple2!12887 (_1!6453 (_ BitVec 64)) (_2!6453 V!31057)) )
))
(declare-datatypes ((List!18729 0))(
  ( (Nil!18726) (Cons!18725 (h!19871 tuple2!12886) (t!26528 List!18729)) )
))
(declare-datatypes ((ListLongMap!11597 0))(
  ( (ListLongMap!11598 (toList!5814 List!18729)) )
))
(declare-fun lt!413445 () ListLongMap!11597)

(declare-fun apply!624 (ListLongMap!11597 (_ BitVec 64)) V!31057)

(assert (=> b!920888 (= res!621126 (= (apply!624 lt!413445 k0!1099) v!791))))

(declare-fun b!920889 () Bool)

(declare-fun res!621127 () Bool)

(assert (=> b!920889 (=> (not res!621127) (not e!516831))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!920889 (= res!621127 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!920890 () Bool)

(assert (=> b!920890 (= e!516829 e!516831)))

(declare-fun res!621120 () Bool)

(assert (=> b!920890 (=> (not res!621120) (not e!516831))))

(declare-fun contains!4835 (ListLongMap!11597 (_ BitVec 64)) Bool)

(assert (=> b!920890 (= res!621120 (contains!4835 lt!413445 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31057)

(declare-fun minValue!1173 () V!31057)

(declare-fun getCurrentListMap!3036 (array!55132 array!55130 (_ BitVec 32) (_ BitVec 32) V!31057 V!31057 (_ BitVec 32) Int) ListLongMap!11597)

(assert (=> b!920890 (= lt!413445 (getCurrentListMap!3036 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920891 () Bool)

(declare-fun arrayContainsKey!0 (array!55132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920891 (= e!516835 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!920892 () Bool)

(declare-fun res!621118 () Bool)

(assert (=> b!920892 (=> res!621118 e!516830)))

(declare-fun noDuplicate!1343 (List!18728) Bool)

(assert (=> b!920892 (= res!621118 (not (noDuplicate!1343 Nil!18725)))))

(declare-fun b!920893 () Bool)

(declare-fun e!516834 () Bool)

(assert (=> b!920893 (= e!516834 (not e!516830))))

(declare-fun res!621116 () Bool)

(assert (=> b!920893 (=> res!621116 e!516830)))

(assert (=> b!920893 (= res!621116 (or (bvsge (size!26967 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26967 _keys!1487))))))

(assert (=> b!920893 e!516835))

(declare-fun c!96011 () Bool)

(assert (=> b!920893 (= c!96011 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31071 0))(
  ( (Unit!31072) )
))
(declare-fun lt!413447 () Unit!31071)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!178 (array!55132 array!55130 (_ BitVec 32) (_ BitVec 32) V!31057 V!31057 (_ BitVec 64) (_ BitVec 32) Int) Unit!31071)

(assert (=> b!920893 (= lt!413447 (lemmaListMapContainsThenArrayContainsFrom!178 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55132 (_ BitVec 32) List!18728) Bool)

(assert (=> b!920893 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18725)))

(declare-fun lt!413451 () Unit!31071)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55132 (_ BitVec 32) (_ BitVec 32)) Unit!31071)

(assert (=> b!920893 (= lt!413451 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413448 () tuple2!12886)

(declare-fun +!2632 (ListLongMap!11597 tuple2!12886) ListLongMap!11597)

(assert (=> b!920893 (contains!4835 (+!2632 lt!413445 lt!413448) k0!1099)))

(declare-fun lt!413449 () (_ BitVec 64))

(declare-fun lt!413446 () V!31057)

(declare-fun lt!413450 () Unit!31071)

(declare-fun addStillContains!394 (ListLongMap!11597 (_ BitVec 64) V!31057 (_ BitVec 64)) Unit!31071)

(assert (=> b!920893 (= lt!413450 (addStillContains!394 lt!413445 lt!413449 lt!413446 k0!1099))))

(assert (=> b!920893 (= (getCurrentListMap!3036 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2632 (getCurrentListMap!3036 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413448))))

(assert (=> b!920893 (= lt!413448 (tuple2!12887 lt!413449 lt!413446))))

(declare-fun get!13931 (ValueCell!9303 V!31057) V!31057)

(declare-fun dynLambda!1471 (Int (_ BitVec 64)) V!31057)

(assert (=> b!920893 (= lt!413446 (get!13931 (select (arr!26506 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1471 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413443 () Unit!31071)

(declare-fun lemmaListMapRecursiveValidKeyArray!67 (array!55132 array!55130 (_ BitVec 32) (_ BitVec 32) V!31057 V!31057 (_ BitVec 32) Int) Unit!31071)

(assert (=> b!920893 (= lt!413443 (lemmaListMapRecursiveValidKeyArray!67 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920894 () Bool)

(declare-fun res!621123 () Bool)

(assert (=> b!920894 (=> (not res!621123) (not e!516829))))

(assert (=> b!920894 (= res!621123 (and (= (size!26966 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26967 _keys!1487) (size!26966 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!920895 () Bool)

(declare-fun e!516837 () Bool)

(assert (=> b!920895 (= e!516832 (and e!516837 mapRes!31110))))

(declare-fun condMapEmpty!31110 () Bool)

(declare-fun mapDefault!31110 () ValueCell!9303)

(assert (=> b!920895 (= condMapEmpty!31110 (= (arr!26506 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9303)) mapDefault!31110)))))

(declare-fun b!920896 () Bool)

(assert (=> b!920896 (= e!516831 e!516834)))

(declare-fun res!621119 () Bool)

(assert (=> b!920896 (=> (not res!621119) (not e!516834))))

(assert (=> b!920896 (= res!621119 (validKeyInArray!0 lt!413449))))

(assert (=> b!920896 (= lt!413449 (select (arr!26507 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920897 () Bool)

(assert (=> b!920897 (= e!516833 tp_is_empty!19569)))

(declare-fun b!920898 () Bool)

(declare-fun res!621124 () Bool)

(assert (=> b!920898 (=> (not res!621124) (not e!516829))))

(assert (=> b!920898 (= res!621124 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26967 _keys!1487))))))

(declare-fun mapIsEmpty!31110 () Bool)

(assert (=> mapIsEmpty!31110 mapRes!31110))

(declare-fun b!920899 () Bool)

(declare-fun res!621117 () Bool)

(assert (=> b!920899 (=> (not res!621117) (not e!516829))))

(assert (=> b!920899 (= res!621117 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18725))))

(declare-fun b!920900 () Bool)

(assert (=> b!920900 (= e!516837 tp_is_empty!19569)))

(declare-fun b!920901 () Bool)

(declare-fun res!621128 () Bool)

(assert (=> b!920901 (=> (not res!621128) (not e!516829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55132 (_ BitVec 32)) Bool)

(assert (=> b!920901 (= res!621128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920902 () Bool)

(assert (=> b!920902 (= e!516830 true)))

(declare-fun lt!413444 () Bool)

(assert (=> b!920902 (= lt!413444 (contains!4834 Nil!18725 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!78876 res!621121) b!920894))

(assert (= (and b!920894 res!621123) b!920901))

(assert (= (and b!920901 res!621128) b!920899))

(assert (= (and b!920899 res!621117) b!920898))

(assert (= (and b!920898 res!621124) b!920890))

(assert (= (and b!920890 res!621120) b!920888))

(assert (= (and b!920888 res!621126) b!920889))

(assert (= (and b!920889 res!621127) b!920887))

(assert (= (and b!920887 res!621122) b!920896))

(assert (= (and b!920896 res!621119) b!920893))

(assert (= (and b!920893 c!96011) b!920891))

(assert (= (and b!920893 (not c!96011)) b!920886))

(assert (= (and b!920893 (not res!621116)) b!920892))

(assert (= (and b!920892 (not res!621118)) b!920885))

(assert (= (and b!920885 (not res!621125)) b!920902))

(assert (= (and b!920895 condMapEmpty!31110) mapIsEmpty!31110))

(assert (= (and b!920895 (not condMapEmpty!31110)) mapNonEmpty!31110))

(get-info :version)

(assert (= (and mapNonEmpty!31110 ((_ is ValueCellFull!9303) mapValue!31110)) b!920897))

(assert (= (and b!920895 ((_ is ValueCellFull!9303) mapDefault!31110)) b!920900))

(assert (= start!78876 b!920895))

(declare-fun b_lambda!13593 () Bool)

(assert (=> (not b_lambda!13593) (not b!920893)))

(declare-fun t!26526 () Bool)

(declare-fun tb!5649 () Bool)

(assert (=> (and start!78876 (= defaultEntry!1235 defaultEntry!1235) t!26526) tb!5649))

(declare-fun result!11113 () Bool)

(assert (=> tb!5649 (= result!11113 tp_is_empty!19569)))

(assert (=> b!920893 t!26526))

(declare-fun b_and!27879 () Bool)

(assert (= b_and!27877 (and (=> t!26526 result!11113) b_and!27879)))

(declare-fun m!854933 () Bool)

(assert (=> mapNonEmpty!31110 m!854933))

(declare-fun m!854935 () Bool)

(assert (=> b!920892 m!854935))

(declare-fun m!854937 () Bool)

(assert (=> b!920891 m!854937))

(declare-fun m!854939 () Bool)

(assert (=> b!920885 m!854939))

(declare-fun m!854941 () Bool)

(assert (=> b!920896 m!854941))

(declare-fun m!854943 () Bool)

(assert (=> b!920896 m!854943))

(declare-fun m!854945 () Bool)

(assert (=> b!920899 m!854945))

(declare-fun m!854947 () Bool)

(assert (=> b!920887 m!854947))

(declare-fun m!854949 () Bool)

(assert (=> b!920901 m!854949))

(declare-fun m!854951 () Bool)

(assert (=> b!920890 m!854951))

(declare-fun m!854953 () Bool)

(assert (=> b!920890 m!854953))

(declare-fun m!854955 () Bool)

(assert (=> b!920893 m!854955))

(declare-fun m!854957 () Bool)

(assert (=> b!920893 m!854957))

(declare-fun m!854959 () Bool)

(assert (=> b!920893 m!854959))

(declare-fun m!854961 () Bool)

(assert (=> b!920893 m!854961))

(declare-fun m!854963 () Bool)

(assert (=> b!920893 m!854963))

(declare-fun m!854965 () Bool)

(assert (=> b!920893 m!854965))

(declare-fun m!854967 () Bool)

(assert (=> b!920893 m!854967))

(declare-fun m!854969 () Bool)

(assert (=> b!920893 m!854969))

(assert (=> b!920893 m!854963))

(assert (=> b!920893 m!854965))

(declare-fun m!854971 () Bool)

(assert (=> b!920893 m!854971))

(declare-fun m!854973 () Bool)

(assert (=> b!920893 m!854973))

(assert (=> b!920893 m!854957))

(declare-fun m!854975 () Bool)

(assert (=> b!920893 m!854975))

(declare-fun m!854977 () Bool)

(assert (=> b!920893 m!854977))

(assert (=> b!920893 m!854967))

(declare-fun m!854979 () Bool)

(assert (=> b!920893 m!854979))

(declare-fun m!854981 () Bool)

(assert (=> b!920888 m!854981))

(declare-fun m!854983 () Bool)

(assert (=> start!78876 m!854983))

(declare-fun m!854985 () Bool)

(assert (=> start!78876 m!854985))

(declare-fun m!854987 () Bool)

(assert (=> start!78876 m!854987))

(declare-fun m!854989 () Bool)

(assert (=> b!920902 m!854989))

(check-sat (not b_lambda!13593) (not b!920887) (not b_next!17061) (not b!920891) (not b!920893) (not b!920896) (not b!920902) (not b!920890) (not start!78876) (not b!920901) tp_is_empty!19569 b_and!27879 (not b!920892) (not mapNonEmpty!31110) (not b!920888) (not b!920885) (not b!920899))
(check-sat b_and!27879 (not b_next!17061))

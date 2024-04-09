; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79068 () Bool)

(assert start!79068)

(declare-fun b_free!17253 () Bool)

(declare-fun b_next!17253 () Bool)

(assert (=> start!79068 (= b_free!17253 (not b_next!17253))))

(declare-fun tp!60200 () Bool)

(declare-fun b_and!28261 () Bool)

(assert (=> start!79068 (= tp!60200 b_and!28261)))

(declare-fun b!926109 () Bool)

(declare-fun e!519870 () Bool)

(declare-fun e!519872 () Bool)

(assert (=> b!926109 (= e!519870 e!519872)))

(declare-fun res!624086 () Bool)

(assert (=> b!926109 (=> (not res!624086) (not e!519872))))

(declare-datatypes ((V!31313 0))(
  ( (V!31314 (val!9931 Int)) )
))
(declare-fun v!791 () V!31313)

(declare-fun lt!417057 () V!31313)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!926109 (= res!624086 (and (= lt!417057 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13058 0))(
  ( (tuple2!13059 (_1!6539 (_ BitVec 64)) (_2!6539 V!31313)) )
))
(declare-datatypes ((List!18890 0))(
  ( (Nil!18887) (Cons!18886 (h!20032 tuple2!13058) (t!26881 List!18890)) )
))
(declare-datatypes ((ListLongMap!11769 0))(
  ( (ListLongMap!11770 (toList!5900 List!18890)) )
))
(declare-fun lt!417042 () ListLongMap!11769)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!700 (ListLongMap!11769 (_ BitVec 64)) V!31313)

(assert (=> b!926109 (= lt!417057 (apply!700 lt!417042 k0!1099))))

(declare-fun lt!417044 () ListLongMap!11769)

(declare-fun e!519866 () Bool)

(declare-fun b!926110 () Bool)

(assert (=> b!926110 (= e!519866 (= (apply!700 lt!417044 k0!1099) v!791))))

(declare-fun mapIsEmpty!31398 () Bool)

(declare-fun mapRes!31398 () Bool)

(assert (=> mapIsEmpty!31398 mapRes!31398))

(declare-fun b!926111 () Bool)

(declare-datatypes ((Unit!31305 0))(
  ( (Unit!31306) )
))
(declare-fun e!519868 () Unit!31305)

(declare-fun e!519871 () Unit!31305)

(assert (=> b!926111 (= e!519868 e!519871)))

(declare-fun lt!417053 () (_ BitVec 64))

(declare-datatypes ((array!55502 0))(
  ( (array!55503 (arr!26692 (Array (_ BitVec 32) (_ BitVec 64))) (size!27152 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55502)

(assert (=> b!926111 (= lt!417053 (select (arr!26692 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96617 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926111 (= c!96617 (validKeyInArray!0 lt!417053))))

(declare-fun b!926112 () Bool)

(declare-fun Unit!31307 () Unit!31305)

(assert (=> b!926112 (= e!519871 Unit!31307)))

(declare-fun res!624079 () Bool)

(declare-fun e!519874 () Bool)

(assert (=> start!79068 (=> (not res!624079) (not e!519874))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79068 (= res!624079 (validMask!0 mask!1881))))

(assert (=> start!79068 e!519874))

(assert (=> start!79068 true))

(declare-fun tp_is_empty!19761 () Bool)

(assert (=> start!79068 tp_is_empty!19761))

(declare-datatypes ((ValueCell!9399 0))(
  ( (ValueCellFull!9399 (v!12449 V!31313)) (EmptyCell!9399) )
))
(declare-datatypes ((array!55504 0))(
  ( (array!55505 (arr!26693 (Array (_ BitVec 32) ValueCell!9399)) (size!27153 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55504)

(declare-fun e!519873 () Bool)

(declare-fun array_inv!20778 (array!55504) Bool)

(assert (=> start!79068 (and (array_inv!20778 _values!1231) e!519873)))

(assert (=> start!79068 tp!60200))

(declare-fun array_inv!20779 (array!55502) Bool)

(assert (=> start!79068 (array_inv!20779 _keys!1487)))

(declare-fun b!926113 () Bool)

(declare-fun e!519865 () Bool)

(assert (=> b!926113 (= e!519865 (not true))))

(assert (=> b!926113 e!519866))

(declare-fun res!624078 () Bool)

(assert (=> b!926113 (=> (not res!624078) (not e!519866))))

(declare-fun contains!4921 (ListLongMap!11769 (_ BitVec 64)) Bool)

(assert (=> b!926113 (= res!624078 (contains!4921 lt!417044 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31313)

(declare-fun minValue!1173 () V!31313)

(declare-fun getCurrentListMap!3115 (array!55502 array!55504 (_ BitVec 32) (_ BitVec 32) V!31313 V!31313 (_ BitVec 32) Int) ListLongMap!11769)

(assert (=> b!926113 (= lt!417044 (getCurrentListMap!3115 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!417049 () Unit!31305)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!81 (array!55502 array!55504 (_ BitVec 32) (_ BitVec 32) V!31313 V!31313 (_ BitVec 64) V!31313 (_ BitVec 32) Int) Unit!31305)

(assert (=> b!926113 (= lt!417049 (lemmaListMapApplyFromThenApplyFromZero!81 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapNonEmpty!31398 () Bool)

(declare-fun tp!60201 () Bool)

(declare-fun e!519864 () Bool)

(assert (=> mapNonEmpty!31398 (= mapRes!31398 (and tp!60201 e!519864))))

(declare-fun mapValue!31398 () ValueCell!9399)

(declare-fun mapRest!31398 () (Array (_ BitVec 32) ValueCell!9399))

(declare-fun mapKey!31398 () (_ BitVec 32))

(assert (=> mapNonEmpty!31398 (= (arr!26693 _values!1231) (store mapRest!31398 mapKey!31398 mapValue!31398))))

(declare-fun b!926114 () Bool)

(declare-fun res!624076 () Bool)

(assert (=> b!926114 (=> (not res!624076) (not e!519874))))

(declare-datatypes ((List!18891 0))(
  ( (Nil!18888) (Cons!18887 (h!20033 (_ BitVec 64)) (t!26882 List!18891)) )
))
(declare-fun arrayNoDuplicates!0 (array!55502 (_ BitVec 32) List!18891) Bool)

(assert (=> b!926114 (= res!624076 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18888))))

(declare-fun b!926115 () Bool)

(declare-fun res!624083 () Bool)

(assert (=> b!926115 (=> (not res!624083) (not e!519874))))

(assert (=> b!926115 (= res!624083 (and (= (size!27153 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27152 _keys!1487) (size!27153 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926116 () Bool)

(declare-fun e!519869 () Bool)

(assert (=> b!926116 (= e!519869 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!926117 () Bool)

(declare-fun lt!417047 () ListLongMap!11769)

(assert (=> b!926117 (= (apply!700 lt!417047 k0!1099) lt!417057)))

(declare-fun lt!417055 () V!31313)

(declare-fun lt!417054 () Unit!31305)

(declare-fun addApplyDifferent!384 (ListLongMap!11769 (_ BitVec 64) V!31313 (_ BitVec 64)) Unit!31305)

(assert (=> b!926117 (= lt!417054 (addApplyDifferent!384 lt!417042 lt!417053 lt!417055 k0!1099))))

(assert (=> b!926117 (not (= lt!417053 k0!1099))))

(declare-fun lt!417048 () Unit!31305)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55502 (_ BitVec 64) (_ BitVec 32) List!18891) Unit!31305)

(assert (=> b!926117 (= lt!417048 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18888))))

(assert (=> b!926117 e!519869))

(declare-fun c!96616 () Bool)

(assert (=> b!926117 (= c!96616 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417043 () Unit!31305)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!244 (array!55502 array!55504 (_ BitVec 32) (_ BitVec 32) V!31313 V!31313 (_ BitVec 64) (_ BitVec 32) Int) Unit!31305)

(assert (=> b!926117 (= lt!417043 (lemmaListMapContainsThenArrayContainsFrom!244 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!926117 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18888)))

(declare-fun lt!417050 () Unit!31305)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55502 (_ BitVec 32) (_ BitVec 32)) Unit!31305)

(assert (=> b!926117 (= lt!417050 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!926117 (contains!4921 lt!417047 k0!1099)))

(declare-fun lt!417056 () tuple2!13058)

(declare-fun +!2698 (ListLongMap!11769 tuple2!13058) ListLongMap!11769)

(assert (=> b!926117 (= lt!417047 (+!2698 lt!417042 lt!417056))))

(declare-fun lt!417051 () Unit!31305)

(declare-fun addStillContains!460 (ListLongMap!11769 (_ BitVec 64) V!31313 (_ BitVec 64)) Unit!31305)

(assert (=> b!926117 (= lt!417051 (addStillContains!460 lt!417042 lt!417053 lt!417055 k0!1099))))

(assert (=> b!926117 (= (getCurrentListMap!3115 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2698 (getCurrentListMap!3115 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417056))))

(assert (=> b!926117 (= lt!417056 (tuple2!13059 lt!417053 lt!417055))))

(declare-fun get!14061 (ValueCell!9399 V!31313) V!31313)

(declare-fun dynLambda!1537 (Int (_ BitVec 64)) V!31313)

(assert (=> b!926117 (= lt!417055 (get!14061 (select (arr!26693 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1537 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417046 () Unit!31305)

(declare-fun lemmaListMapRecursiveValidKeyArray!133 (array!55502 array!55504 (_ BitVec 32) (_ BitVec 32) V!31313 V!31313 (_ BitVec 32) Int) Unit!31305)

(assert (=> b!926117 (= lt!417046 (lemmaListMapRecursiveValidKeyArray!133 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!926117 (= e!519871 lt!417054)))

(declare-fun b!926118 () Bool)

(assert (=> b!926118 (= e!519864 tp_is_empty!19761)))

(declare-fun b!926119 () Bool)

(declare-fun e!519867 () Bool)

(assert (=> b!926119 (= e!519872 e!519867)))

(declare-fun res!624082 () Bool)

(assert (=> b!926119 (=> (not res!624082) (not e!519867))))

(assert (=> b!926119 (= res!624082 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27152 _keys!1487)))))

(declare-fun lt!417052 () Unit!31305)

(assert (=> b!926119 (= lt!417052 e!519868)))

(declare-fun c!96615 () Bool)

(assert (=> b!926119 (= c!96615 (validKeyInArray!0 k0!1099))))

(declare-fun b!926120 () Bool)

(declare-fun res!624084 () Bool)

(assert (=> b!926120 (=> (not res!624084) (not e!519865))))

(declare-fun lt!417045 () ListLongMap!11769)

(assert (=> b!926120 (= res!624084 (= (apply!700 lt!417045 k0!1099) v!791))))

(declare-fun b!926121 () Bool)

(assert (=> b!926121 (= e!519867 e!519865)))

(declare-fun res!624077 () Bool)

(assert (=> b!926121 (=> (not res!624077) (not e!519865))))

(assert (=> b!926121 (= res!624077 (contains!4921 lt!417045 k0!1099))))

(assert (=> b!926121 (= lt!417045 (getCurrentListMap!3115 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926122 () Bool)

(declare-fun e!519876 () Bool)

(assert (=> b!926122 (= e!519876 tp_is_empty!19761)))

(declare-fun b!926123 () Bool)

(assert (=> b!926123 (= e!519873 (and e!519876 mapRes!31398))))

(declare-fun condMapEmpty!31398 () Bool)

(declare-fun mapDefault!31398 () ValueCell!9399)

(assert (=> b!926123 (= condMapEmpty!31398 (= (arr!26693 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9399)) mapDefault!31398)))))

(declare-fun b!926124 () Bool)

(assert (=> b!926124 (= e!519874 e!519870)))

(declare-fun res!624081 () Bool)

(assert (=> b!926124 (=> (not res!624081) (not e!519870))))

(assert (=> b!926124 (= res!624081 (contains!4921 lt!417042 k0!1099))))

(assert (=> b!926124 (= lt!417042 (getCurrentListMap!3115 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926125 () Bool)

(declare-fun res!624085 () Bool)

(assert (=> b!926125 (=> (not res!624085) (not e!519874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55502 (_ BitVec 32)) Bool)

(assert (=> b!926125 (= res!624085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926126 () Bool)

(declare-fun Unit!31308 () Unit!31305)

(assert (=> b!926126 (= e!519868 Unit!31308)))

(declare-fun b!926127 () Bool)

(declare-fun res!624080 () Bool)

(assert (=> b!926127 (=> (not res!624080) (not e!519874))))

(assert (=> b!926127 (= res!624080 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27152 _keys!1487))))))

(declare-fun b!926128 () Bool)

(declare-fun arrayContainsKey!0 (array!55502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926128 (= e!519869 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(assert (= (and start!79068 res!624079) b!926115))

(assert (= (and b!926115 res!624083) b!926125))

(assert (= (and b!926125 res!624085) b!926114))

(assert (= (and b!926114 res!624076) b!926127))

(assert (= (and b!926127 res!624080) b!926124))

(assert (= (and b!926124 res!624081) b!926109))

(assert (= (and b!926109 res!624086) b!926119))

(assert (= (and b!926119 c!96615) b!926111))

(assert (= (and b!926119 (not c!96615)) b!926126))

(assert (= (and b!926111 c!96617) b!926117))

(assert (= (and b!926111 (not c!96617)) b!926112))

(assert (= (and b!926117 c!96616) b!926128))

(assert (= (and b!926117 (not c!96616)) b!926116))

(assert (= (and b!926119 res!624082) b!926121))

(assert (= (and b!926121 res!624077) b!926120))

(assert (= (and b!926120 res!624084) b!926113))

(assert (= (and b!926113 res!624078) b!926110))

(assert (= (and b!926123 condMapEmpty!31398) mapIsEmpty!31398))

(assert (= (and b!926123 (not condMapEmpty!31398)) mapNonEmpty!31398))

(get-info :version)

(assert (= (and mapNonEmpty!31398 ((_ is ValueCellFull!9399) mapValue!31398)) b!926118))

(assert (= (and b!926123 ((_ is ValueCellFull!9399) mapDefault!31398)) b!926122))

(assert (= start!79068 b!926123))

(declare-fun b_lambda!13785 () Bool)

(assert (=> (not b_lambda!13785) (not b!926117)))

(declare-fun t!26880 () Bool)

(declare-fun tb!5841 () Bool)

(assert (=> (and start!79068 (= defaultEntry!1235 defaultEntry!1235) t!26880) tb!5841))

(declare-fun result!11497 () Bool)

(assert (=> tb!5841 (= result!11497 tp_is_empty!19761)))

(assert (=> b!926117 t!26880))

(declare-fun b_and!28263 () Bool)

(assert (= b_and!28261 (and (=> t!26880 result!11497) b_and!28263)))

(declare-fun m!860741 () Bool)

(assert (=> b!926113 m!860741))

(declare-fun m!860743 () Bool)

(assert (=> b!926113 m!860743))

(declare-fun m!860745 () Bool)

(assert (=> b!926113 m!860745))

(declare-fun m!860747 () Bool)

(assert (=> mapNonEmpty!31398 m!860747))

(declare-fun m!860749 () Bool)

(assert (=> b!926121 m!860749))

(declare-fun m!860751 () Bool)

(assert (=> b!926121 m!860751))

(declare-fun m!860753 () Bool)

(assert (=> b!926114 m!860753))

(declare-fun m!860755 () Bool)

(assert (=> b!926119 m!860755))

(declare-fun m!860757 () Bool)

(assert (=> b!926124 m!860757))

(declare-fun m!860759 () Bool)

(assert (=> b!926124 m!860759))

(declare-fun m!860761 () Bool)

(assert (=> b!926111 m!860761))

(declare-fun m!860763 () Bool)

(assert (=> b!926111 m!860763))

(declare-fun m!860765 () Bool)

(assert (=> b!926109 m!860765))

(declare-fun m!860767 () Bool)

(assert (=> b!926120 m!860767))

(declare-fun m!860769 () Bool)

(assert (=> b!926125 m!860769))

(declare-fun m!860771 () Bool)

(assert (=> b!926110 m!860771))

(declare-fun m!860773 () Bool)

(assert (=> start!79068 m!860773))

(declare-fun m!860775 () Bool)

(assert (=> start!79068 m!860775))

(declare-fun m!860777 () Bool)

(assert (=> start!79068 m!860777))

(declare-fun m!860779 () Bool)

(assert (=> b!926117 m!860779))

(declare-fun m!860781 () Bool)

(assert (=> b!926117 m!860781))

(declare-fun m!860783 () Bool)

(assert (=> b!926117 m!860783))

(declare-fun m!860785 () Bool)

(assert (=> b!926117 m!860785))

(assert (=> b!926117 m!860781))

(assert (=> b!926117 m!860783))

(declare-fun m!860787 () Bool)

(assert (=> b!926117 m!860787))

(assert (=> b!926117 m!860751))

(declare-fun m!860789 () Bool)

(assert (=> b!926117 m!860789))

(declare-fun m!860791 () Bool)

(assert (=> b!926117 m!860791))

(declare-fun m!860793 () Bool)

(assert (=> b!926117 m!860793))

(declare-fun m!860795 () Bool)

(assert (=> b!926117 m!860795))

(declare-fun m!860797 () Bool)

(assert (=> b!926117 m!860797))

(declare-fun m!860799 () Bool)

(assert (=> b!926117 m!860799))

(declare-fun m!860801 () Bool)

(assert (=> b!926117 m!860801))

(assert (=> b!926117 m!860797))

(declare-fun m!860803 () Bool)

(assert (=> b!926117 m!860803))

(declare-fun m!860805 () Bool)

(assert (=> b!926117 m!860805))

(declare-fun m!860807 () Bool)

(assert (=> b!926117 m!860807))

(declare-fun m!860809 () Bool)

(assert (=> b!926128 m!860809))

(check-sat (not b!926117) (not b!926110) (not b!926119) (not b!926120) (not b!926111) (not b!926114) (not b!926124) (not b_next!17253) (not b!926125) (not b!926109) tp_is_empty!19761 (not b_lambda!13785) b_and!28263 (not b!926128) (not mapNonEmpty!31398) (not b!926121) (not start!79068) (not b!926113))
(check-sat b_and!28263 (not b_next!17253))

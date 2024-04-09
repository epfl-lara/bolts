; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78882 () Bool)

(assert start!78882)

(declare-fun b_free!17067 () Bool)

(declare-fun b_next!17067 () Bool)

(assert (=> start!78882 (= b_free!17067 (not b_next!17067))))

(declare-fun tp!59643 () Bool)

(declare-fun b_and!27889 () Bool)

(assert (=> start!78882 (= tp!59643 b_and!27889)))

(declare-fun b!921053 () Bool)

(declare-fun res!621245 () Bool)

(declare-fun e!516918 () Bool)

(assert (=> b!921053 (=> (not res!621245) (not e!516918))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921053 (= res!621245 (validKeyInArray!0 k0!1099))))

(declare-fun b!921054 () Bool)

(declare-fun res!621233 () Bool)

(declare-fun e!516917 () Bool)

(assert (=> b!921054 (=> res!621233 e!516917)))

(declare-datatypes ((List!18733 0))(
  ( (Nil!18730) (Cons!18729 (h!19875 (_ BitVec 64)) (t!26538 List!18733)) )
))
(declare-fun noDuplicate!1345 (List!18733) Bool)

(assert (=> b!921054 (= res!621233 (not (noDuplicate!1345 Nil!18730)))))

(declare-fun b!921055 () Bool)

(declare-fun res!621240 () Bool)

(assert (=> b!921055 (=> (not res!621240) (not e!516918))))

(declare-datatypes ((V!31065 0))(
  ( (V!31066 (val!9838 Int)) )
))
(declare-fun v!791 () V!31065)

(declare-datatypes ((tuple2!12892 0))(
  ( (tuple2!12893 (_1!6456 (_ BitVec 64)) (_2!6456 V!31065)) )
))
(declare-datatypes ((List!18734 0))(
  ( (Nil!18731) (Cons!18730 (h!19876 tuple2!12892) (t!26539 List!18734)) )
))
(declare-datatypes ((ListLongMap!11603 0))(
  ( (ListLongMap!11604 (toList!5817 List!18734)) )
))
(declare-fun lt!413530 () ListLongMap!11603)

(declare-fun apply!626 (ListLongMap!11603 (_ BitVec 64)) V!31065)

(assert (=> b!921055 (= res!621240 (= (apply!626 lt!413530 k0!1099) v!791))))

(declare-fun b!921056 () Bool)

(declare-fun e!516913 () Bool)

(assert (=> b!921056 (= e!516913 e!516918)))

(declare-fun res!621244 () Bool)

(assert (=> b!921056 (=> (not res!621244) (not e!516918))))

(declare-fun contains!4839 (ListLongMap!11603 (_ BitVec 64)) Bool)

(assert (=> b!921056 (= res!621244 (contains!4839 lt!413530 k0!1099))))

(declare-datatypes ((array!55142 0))(
  ( (array!55143 (arr!26512 (Array (_ BitVec 32) (_ BitVec 64))) (size!26972 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55142)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9306 0))(
  ( (ValueCellFull!9306 (v!12356 V!31065)) (EmptyCell!9306) )
))
(declare-datatypes ((array!55144 0))(
  ( (array!55145 (arr!26513 (Array (_ BitVec 32) ValueCell!9306)) (size!26973 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55144)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31065)

(declare-fun minValue!1173 () V!31065)

(declare-fun getCurrentListMap!3039 (array!55142 array!55144 (_ BitVec 32) (_ BitVec 32) V!31065 V!31065 (_ BitVec 32) Int) ListLongMap!11603)

(assert (=> b!921056 (= lt!413530 (getCurrentListMap!3039 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun e!516912 () Bool)

(declare-fun b!921057 () Bool)

(declare-fun arrayContainsKey!0 (array!55142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921057 (= e!516912 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!921058 () Bool)

(declare-fun res!621237 () Bool)

(assert (=> b!921058 (=> (not res!621237) (not e!516918))))

(assert (=> b!921058 (= res!621237 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921059 () Bool)

(declare-fun e!516910 () Bool)

(assert (=> b!921059 (= e!516918 e!516910)))

(declare-fun res!621235 () Bool)

(assert (=> b!921059 (=> (not res!621235) (not e!516910))))

(declare-fun lt!413526 () (_ BitVec 64))

(assert (=> b!921059 (= res!621235 (validKeyInArray!0 lt!413526))))

(assert (=> b!921059 (= lt!413526 (select (arr!26512 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921060 () Bool)

(assert (=> b!921060 (= e!516912 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921061 () Bool)

(declare-fun res!621239 () Bool)

(assert (=> b!921061 (=> (not res!621239) (not e!516913))))

(declare-fun arrayNoDuplicates!0 (array!55142 (_ BitVec 32) List!18733) Bool)

(assert (=> b!921061 (= res!621239 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18730))))

(declare-fun b!921062 () Bool)

(declare-fun e!516915 () Bool)

(declare-fun tp_is_empty!19575 () Bool)

(assert (=> b!921062 (= e!516915 tp_is_empty!19575)))

(declare-fun b!921063 () Bool)

(declare-fun e!516916 () Bool)

(declare-fun mapRes!31119 () Bool)

(assert (=> b!921063 (= e!516916 (and e!516915 mapRes!31119))))

(declare-fun condMapEmpty!31119 () Bool)

(declare-fun mapDefault!31119 () ValueCell!9306)

(assert (=> b!921063 (= condMapEmpty!31119 (= (arr!26513 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9306)) mapDefault!31119)))))

(declare-fun b!921064 () Bool)

(declare-fun res!621242 () Bool)

(assert (=> b!921064 (=> res!621242 e!516917)))

(declare-fun contains!4840 (List!18733 (_ BitVec 64)) Bool)

(assert (=> b!921064 (= res!621242 (contains!4840 Nil!18730 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921065 () Bool)

(assert (=> b!921065 (= e!516917 true)))

(declare-fun lt!413532 () Bool)

(assert (=> b!921065 (= lt!413532 (contains!4840 Nil!18730 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921066 () Bool)

(declare-fun e!516911 () Bool)

(assert (=> b!921066 (= e!516911 tp_is_empty!19575)))

(declare-fun b!921067 () Bool)

(declare-fun res!621241 () Bool)

(assert (=> b!921067 (=> (not res!621241) (not e!516913))))

(assert (=> b!921067 (= res!621241 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26972 _keys!1487))))))

(declare-fun b!921068 () Bool)

(declare-fun res!621236 () Bool)

(assert (=> b!921068 (=> (not res!621236) (not e!516913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55142 (_ BitVec 32)) Bool)

(assert (=> b!921068 (= res!621236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!621238 () Bool)

(assert (=> start!78882 (=> (not res!621238) (not e!516913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78882 (= res!621238 (validMask!0 mask!1881))))

(assert (=> start!78882 e!516913))

(assert (=> start!78882 true))

(assert (=> start!78882 tp_is_empty!19575))

(declare-fun array_inv!20644 (array!55144) Bool)

(assert (=> start!78882 (and (array_inv!20644 _values!1231) e!516916)))

(assert (=> start!78882 tp!59643))

(declare-fun array_inv!20645 (array!55142) Bool)

(assert (=> start!78882 (array_inv!20645 _keys!1487)))

(declare-fun mapNonEmpty!31119 () Bool)

(declare-fun tp!59642 () Bool)

(assert (=> mapNonEmpty!31119 (= mapRes!31119 (and tp!59642 e!516911))))

(declare-fun mapRest!31119 () (Array (_ BitVec 32) ValueCell!9306))

(declare-fun mapValue!31119 () ValueCell!9306)

(declare-fun mapKey!31119 () (_ BitVec 32))

(assert (=> mapNonEmpty!31119 (= (arr!26513 _values!1231) (store mapRest!31119 mapKey!31119 mapValue!31119))))

(declare-fun b!921069 () Bool)

(declare-fun res!621234 () Bool)

(assert (=> b!921069 (=> (not res!621234) (not e!516913))))

(assert (=> b!921069 (= res!621234 (and (= (size!26973 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26972 _keys!1487) (size!26973 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!921070 () Bool)

(assert (=> b!921070 (= e!516910 (not e!516917))))

(declare-fun res!621243 () Bool)

(assert (=> b!921070 (=> res!621243 e!516917)))

(assert (=> b!921070 (= res!621243 (or (bvsge (size!26972 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26972 _keys!1487))))))

(assert (=> b!921070 e!516912))

(declare-fun c!96020 () Bool)

(assert (=> b!921070 (= c!96020 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31075 0))(
  ( (Unit!31076) )
))
(declare-fun lt!413531 () Unit!31075)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!180 (array!55142 array!55144 (_ BitVec 32) (_ BitVec 32) V!31065 V!31065 (_ BitVec 64) (_ BitVec 32) Int) Unit!31075)

(assert (=> b!921070 (= lt!413531 (lemmaListMapContainsThenArrayContainsFrom!180 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!921070 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18730)))

(declare-fun lt!413527 () Unit!31075)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55142 (_ BitVec 32) (_ BitVec 32)) Unit!31075)

(assert (=> b!921070 (= lt!413527 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413525 () tuple2!12892)

(declare-fun +!2634 (ListLongMap!11603 tuple2!12892) ListLongMap!11603)

(assert (=> b!921070 (contains!4839 (+!2634 lt!413530 lt!413525) k0!1099)))

(declare-fun lt!413528 () V!31065)

(declare-fun lt!413529 () Unit!31075)

(declare-fun addStillContains!396 (ListLongMap!11603 (_ BitVec 64) V!31065 (_ BitVec 64)) Unit!31075)

(assert (=> b!921070 (= lt!413529 (addStillContains!396 lt!413530 lt!413526 lt!413528 k0!1099))))

(assert (=> b!921070 (= (getCurrentListMap!3039 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2634 (getCurrentListMap!3039 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413525))))

(assert (=> b!921070 (= lt!413525 (tuple2!12893 lt!413526 lt!413528))))

(declare-fun get!13935 (ValueCell!9306 V!31065) V!31065)

(declare-fun dynLambda!1473 (Int (_ BitVec 64)) V!31065)

(assert (=> b!921070 (= lt!413528 (get!13935 (select (arr!26513 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1473 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413524 () Unit!31075)

(declare-fun lemmaListMapRecursiveValidKeyArray!69 (array!55142 array!55144 (_ BitVec 32) (_ BitVec 32) V!31065 V!31065 (_ BitVec 32) Int) Unit!31075)

(assert (=> b!921070 (= lt!413524 (lemmaListMapRecursiveValidKeyArray!69 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31119 () Bool)

(assert (=> mapIsEmpty!31119 mapRes!31119))

(assert (= (and start!78882 res!621238) b!921069))

(assert (= (and b!921069 res!621234) b!921068))

(assert (= (and b!921068 res!621236) b!921061))

(assert (= (and b!921061 res!621239) b!921067))

(assert (= (and b!921067 res!621241) b!921056))

(assert (= (and b!921056 res!621244) b!921055))

(assert (= (and b!921055 res!621240) b!921058))

(assert (= (and b!921058 res!621237) b!921053))

(assert (= (and b!921053 res!621245) b!921059))

(assert (= (and b!921059 res!621235) b!921070))

(assert (= (and b!921070 c!96020) b!921057))

(assert (= (and b!921070 (not c!96020)) b!921060))

(assert (= (and b!921070 (not res!621243)) b!921054))

(assert (= (and b!921054 (not res!621233)) b!921064))

(assert (= (and b!921064 (not res!621242)) b!921065))

(assert (= (and b!921063 condMapEmpty!31119) mapIsEmpty!31119))

(assert (= (and b!921063 (not condMapEmpty!31119)) mapNonEmpty!31119))

(get-info :version)

(assert (= (and mapNonEmpty!31119 ((_ is ValueCellFull!9306) mapValue!31119)) b!921066))

(assert (= (and b!921063 ((_ is ValueCellFull!9306) mapDefault!31119)) b!921062))

(assert (= start!78882 b!921063))

(declare-fun b_lambda!13599 () Bool)

(assert (=> (not b_lambda!13599) (not b!921070)))

(declare-fun t!26537 () Bool)

(declare-fun tb!5655 () Bool)

(assert (=> (and start!78882 (= defaultEntry!1235 defaultEntry!1235) t!26537) tb!5655))

(declare-fun result!11125 () Bool)

(assert (=> tb!5655 (= result!11125 tp_is_empty!19575)))

(assert (=> b!921070 t!26537))

(declare-fun b_and!27891 () Bool)

(assert (= b_and!27889 (and (=> t!26537 result!11125) b_and!27891)))

(declare-fun m!855107 () Bool)

(assert (=> b!921057 m!855107))

(declare-fun m!855109 () Bool)

(assert (=> b!921064 m!855109))

(declare-fun m!855111 () Bool)

(assert (=> mapNonEmpty!31119 m!855111))

(declare-fun m!855113 () Bool)

(assert (=> b!921065 m!855113))

(declare-fun m!855115 () Bool)

(assert (=> b!921055 m!855115))

(declare-fun m!855117 () Bool)

(assert (=> b!921053 m!855117))

(declare-fun m!855119 () Bool)

(assert (=> b!921068 m!855119))

(declare-fun m!855121 () Bool)

(assert (=> b!921070 m!855121))

(declare-fun m!855123 () Bool)

(assert (=> b!921070 m!855123))

(declare-fun m!855125 () Bool)

(assert (=> b!921070 m!855125))

(declare-fun m!855127 () Bool)

(assert (=> b!921070 m!855127))

(declare-fun m!855129 () Bool)

(assert (=> b!921070 m!855129))

(declare-fun m!855131 () Bool)

(assert (=> b!921070 m!855131))

(declare-fun m!855133 () Bool)

(assert (=> b!921070 m!855133))

(assert (=> b!921070 m!855125))

(assert (=> b!921070 m!855131))

(assert (=> b!921070 m!855133))

(declare-fun m!855135 () Bool)

(assert (=> b!921070 m!855135))

(declare-fun m!855137 () Bool)

(assert (=> b!921070 m!855137))

(declare-fun m!855139 () Bool)

(assert (=> b!921070 m!855139))

(assert (=> b!921070 m!855121))

(declare-fun m!855141 () Bool)

(assert (=> b!921070 m!855141))

(declare-fun m!855143 () Bool)

(assert (=> b!921070 m!855143))

(declare-fun m!855145 () Bool)

(assert (=> b!921070 m!855145))

(declare-fun m!855147 () Bool)

(assert (=> start!78882 m!855147))

(declare-fun m!855149 () Bool)

(assert (=> start!78882 m!855149))

(declare-fun m!855151 () Bool)

(assert (=> start!78882 m!855151))

(declare-fun m!855153 () Bool)

(assert (=> b!921056 m!855153))

(declare-fun m!855155 () Bool)

(assert (=> b!921056 m!855155))

(declare-fun m!855157 () Bool)

(assert (=> b!921061 m!855157))

(declare-fun m!855159 () Bool)

(assert (=> b!921059 m!855159))

(declare-fun m!855161 () Bool)

(assert (=> b!921059 m!855161))

(declare-fun m!855163 () Bool)

(assert (=> b!921054 m!855163))

(check-sat b_and!27891 (not start!78882) (not b!921055) (not b!921059) (not b!921057) tp_is_empty!19575 (not b_lambda!13599) (not b!921056) (not b!921065) (not b!921064) (not b!921053) (not b!921054) (not b!921061) (not b!921068) (not mapNonEmpty!31119) (not b!921070) (not b_next!17067))
(check-sat b_and!27891 (not b_next!17067))

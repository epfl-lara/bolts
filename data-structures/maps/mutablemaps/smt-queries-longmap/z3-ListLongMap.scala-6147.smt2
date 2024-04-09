; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79020 () Bool)

(assert start!79020)

(declare-fun b_free!17205 () Bool)

(declare-fun b_next!17205 () Bool)

(assert (=> start!79020 (= b_free!17205 (not b_next!17205))))

(declare-fun tp!60057 () Bool)

(declare-fun b_and!28165 () Bool)

(assert (=> start!79020 (= tp!60057 b_and!28165)))

(declare-fun b!924647 () Bool)

(declare-fun e!518941 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!924647 (= e!518941 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!924648 () Bool)

(declare-fun res!623312 () Bool)

(declare-fun e!518945 () Bool)

(assert (=> b!924648 (=> (not res!623312) (not e!518945))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55410 0))(
  ( (array!55411 (arr!26646 (Array (_ BitVec 32) (_ BitVec 64))) (size!27106 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55410)

(assert (=> b!924648 (= res!623312 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27106 _keys!1487))))))

(declare-fun mapIsEmpty!31326 () Bool)

(declare-fun mapRes!31326 () Bool)

(assert (=> mapIsEmpty!31326 mapRes!31326))

(declare-fun b!924649 () Bool)

(declare-datatypes ((Unit!31231 0))(
  ( (Unit!31232) )
))
(declare-fun e!518952 () Unit!31231)

(declare-fun Unit!31233 () Unit!31231)

(assert (=> b!924649 (= e!518952 Unit!31233)))

(declare-fun b!924650 () Bool)

(declare-fun res!623316 () Bool)

(assert (=> b!924650 (=> (not res!623316) (not e!518945))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((V!31249 0))(
  ( (V!31250 (val!9907 Int)) )
))
(declare-datatypes ((ValueCell!9375 0))(
  ( (ValueCellFull!9375 (v!12425 V!31249)) (EmptyCell!9375) )
))
(declare-datatypes ((array!55412 0))(
  ( (array!55413 (arr!26647 (Array (_ BitVec 32) ValueCell!9375)) (size!27107 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55412)

(assert (=> b!924650 (= res!623316 (and (= (size!27107 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27106 _keys!1487) (size!27107 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924651 () Bool)

(declare-datatypes ((tuple2!13018 0))(
  ( (tuple2!13019 (_1!6519 (_ BitVec 64)) (_2!6519 V!31249)) )
))
(declare-datatypes ((List!18854 0))(
  ( (Nil!18851) (Cons!18850 (h!19996 tuple2!13018) (t!26797 List!18854)) )
))
(declare-datatypes ((ListLongMap!11729 0))(
  ( (ListLongMap!11730 (toList!5880 List!18854)) )
))
(declare-fun lt!415915 () ListLongMap!11729)

(declare-fun lt!415911 () V!31249)

(declare-fun apply!681 (ListLongMap!11729 (_ BitVec 64)) V!31249)

(assert (=> b!924651 (= (apply!681 lt!415915 k0!1099) lt!415911)))

(declare-fun lt!415912 () ListLongMap!11729)

(declare-fun lt!415908 () (_ BitVec 64))

(declare-fun lt!415905 () V!31249)

(declare-fun lt!415913 () Unit!31231)

(declare-fun addApplyDifferent!371 (ListLongMap!11729 (_ BitVec 64) V!31249 (_ BitVec 64)) Unit!31231)

(assert (=> b!924651 (= lt!415913 (addApplyDifferent!371 lt!415912 lt!415908 lt!415905 k0!1099))))

(assert (=> b!924651 (not (= lt!415908 k0!1099))))

(declare-fun lt!415904 () Unit!31231)

(declare-datatypes ((List!18855 0))(
  ( (Nil!18852) (Cons!18851 (h!19997 (_ BitVec 64)) (t!26798 List!18855)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55410 (_ BitVec 64) (_ BitVec 32) List!18855) Unit!31231)

(assert (=> b!924651 (= lt!415904 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18852))))

(assert (=> b!924651 e!518941))

(declare-fun c!96399 () Bool)

(assert (=> b!924651 (= c!96399 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415917 () Unit!31231)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31249)

(declare-fun minValue!1173 () V!31249)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!231 (array!55410 array!55412 (_ BitVec 32) (_ BitVec 32) V!31249 V!31249 (_ BitVec 64) (_ BitVec 32) Int) Unit!31231)

(assert (=> b!924651 (= lt!415917 (lemmaListMapContainsThenArrayContainsFrom!231 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55410 (_ BitVec 32) List!18855) Bool)

(assert (=> b!924651 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18852)))

(declare-fun lt!415910 () Unit!31231)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55410 (_ BitVec 32) (_ BitVec 32)) Unit!31231)

(assert (=> b!924651 (= lt!415910 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4904 (ListLongMap!11729 (_ BitVec 64)) Bool)

(assert (=> b!924651 (contains!4904 lt!415915 k0!1099)))

(declare-fun lt!415906 () tuple2!13018)

(declare-fun +!2685 (ListLongMap!11729 tuple2!13018) ListLongMap!11729)

(assert (=> b!924651 (= lt!415915 (+!2685 lt!415912 lt!415906))))

(declare-fun lt!415907 () Unit!31231)

(declare-fun addStillContains!447 (ListLongMap!11729 (_ BitVec 64) V!31249 (_ BitVec 64)) Unit!31231)

(assert (=> b!924651 (= lt!415907 (addStillContains!447 lt!415912 lt!415908 lt!415905 k0!1099))))

(declare-fun getCurrentListMap!3098 (array!55410 array!55412 (_ BitVec 32) (_ BitVec 32) V!31249 V!31249 (_ BitVec 32) Int) ListLongMap!11729)

(assert (=> b!924651 (= (getCurrentListMap!3098 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2685 (getCurrentListMap!3098 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415906))))

(assert (=> b!924651 (= lt!415906 (tuple2!13019 lt!415908 lt!415905))))

(declare-fun get!14032 (ValueCell!9375 V!31249) V!31249)

(declare-fun dynLambda!1524 (Int (_ BitVec 64)) V!31249)

(assert (=> b!924651 (= lt!415905 (get!14032 (select (arr!26647 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1524 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415914 () Unit!31231)

(declare-fun lemmaListMapRecursiveValidKeyArray!120 (array!55410 array!55412 (_ BitVec 32) (_ BitVec 32) V!31249 V!31249 (_ BitVec 32) Int) Unit!31231)

(assert (=> b!924651 (= lt!415914 (lemmaListMapRecursiveValidKeyArray!120 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!924651 (= e!518952 lt!415913)))

(declare-fun b!924652 () Bool)

(declare-fun e!518949 () Bool)

(declare-fun tp_is_empty!19713 () Bool)

(assert (=> b!924652 (= e!518949 tp_is_empty!19713)))

(declare-fun b!924653 () Bool)

(declare-fun res!623313 () Bool)

(assert (=> b!924653 (=> (not res!623313) (not e!518945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55410 (_ BitVec 32)) Bool)

(assert (=> b!924653 (= res!623313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924654 () Bool)

(declare-fun res!623317 () Bool)

(assert (=> b!924654 (=> (not res!623317) (not e!518945))))

(assert (=> b!924654 (= res!623317 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18852))))

(declare-fun b!924655 () Bool)

(declare-fun e!518944 () Bool)

(assert (=> b!924655 (= e!518944 false)))

(declare-fun lt!415916 () V!31249)

(declare-fun lt!415903 () ListLongMap!11729)

(assert (=> b!924655 (= lt!415916 (apply!681 lt!415903 k0!1099))))

(declare-fun b!924656 () Bool)

(declare-fun e!518947 () Bool)

(assert (=> b!924656 (= e!518947 tp_is_empty!19713)))

(declare-fun res!623315 () Bool)

(assert (=> start!79020 (=> (not res!623315) (not e!518945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79020 (= res!623315 (validMask!0 mask!1881))))

(assert (=> start!79020 e!518945))

(assert (=> start!79020 true))

(assert (=> start!79020 tp_is_empty!19713))

(declare-fun e!518943 () Bool)

(declare-fun array_inv!20750 (array!55412) Bool)

(assert (=> start!79020 (and (array_inv!20750 _values!1231) e!518943)))

(assert (=> start!79020 tp!60057))

(declare-fun array_inv!20751 (array!55410) Bool)

(assert (=> start!79020 (array_inv!20751 _keys!1487)))

(declare-fun b!924657 () Bool)

(declare-fun e!518951 () Bool)

(assert (=> b!924657 (= e!518951 e!518944)))

(declare-fun res!623318 () Bool)

(assert (=> b!924657 (=> (not res!623318) (not e!518944))))

(assert (=> b!924657 (= res!623318 (contains!4904 lt!415903 k0!1099))))

(assert (=> b!924657 (= lt!415903 (getCurrentListMap!3098 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924658 () Bool)

(declare-fun e!518950 () Unit!31231)

(declare-fun Unit!31234 () Unit!31231)

(assert (=> b!924658 (= e!518950 Unit!31234)))

(declare-fun b!924659 () Bool)

(declare-fun e!518948 () Bool)

(assert (=> b!924659 (= e!518948 e!518951)))

(declare-fun res!623311 () Bool)

(assert (=> b!924659 (=> (not res!623311) (not e!518951))))

(assert (=> b!924659 (= res!623311 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27106 _keys!1487)))))

(declare-fun lt!415909 () Unit!31231)

(assert (=> b!924659 (= lt!415909 e!518950)))

(declare-fun c!96400 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924659 (= c!96400 (validKeyInArray!0 k0!1099))))

(declare-fun b!924660 () Bool)

(assert (=> b!924660 (= e!518950 e!518952)))

(assert (=> b!924660 (= lt!415908 (select (arr!26646 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96401 () Bool)

(assert (=> b!924660 (= c!96401 (validKeyInArray!0 lt!415908))))

(declare-fun mapNonEmpty!31326 () Bool)

(declare-fun tp!60056 () Bool)

(assert (=> mapNonEmpty!31326 (= mapRes!31326 (and tp!60056 e!518947))))

(declare-fun mapKey!31326 () (_ BitVec 32))

(declare-fun mapValue!31326 () ValueCell!9375)

(declare-fun mapRest!31326 () (Array (_ BitVec 32) ValueCell!9375))

(assert (=> mapNonEmpty!31326 (= (arr!26647 _values!1231) (store mapRest!31326 mapKey!31326 mapValue!31326))))

(declare-fun b!924661 () Bool)

(declare-fun e!518942 () Bool)

(assert (=> b!924661 (= e!518942 e!518948)))

(declare-fun res!623314 () Bool)

(assert (=> b!924661 (=> (not res!623314) (not e!518948))))

(declare-fun v!791 () V!31249)

(assert (=> b!924661 (= res!623314 (and (= lt!415911 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!924661 (= lt!415911 (apply!681 lt!415912 k0!1099))))

(declare-fun b!924662 () Bool)

(assert (=> b!924662 (= e!518945 e!518942)))

(declare-fun res!623310 () Bool)

(assert (=> b!924662 (=> (not res!623310) (not e!518942))))

(assert (=> b!924662 (= res!623310 (contains!4904 lt!415912 k0!1099))))

(assert (=> b!924662 (= lt!415912 (getCurrentListMap!3098 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!924663 () Bool)

(declare-fun arrayContainsKey!0 (array!55410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924663 (= e!518941 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!924664 () Bool)

(assert (=> b!924664 (= e!518943 (and e!518949 mapRes!31326))))

(declare-fun condMapEmpty!31326 () Bool)

(declare-fun mapDefault!31326 () ValueCell!9375)

(assert (=> b!924664 (= condMapEmpty!31326 (= (arr!26647 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9375)) mapDefault!31326)))))

(assert (= (and start!79020 res!623315) b!924650))

(assert (= (and b!924650 res!623316) b!924653))

(assert (= (and b!924653 res!623313) b!924654))

(assert (= (and b!924654 res!623317) b!924648))

(assert (= (and b!924648 res!623312) b!924662))

(assert (= (and b!924662 res!623310) b!924661))

(assert (= (and b!924661 res!623314) b!924659))

(assert (= (and b!924659 c!96400) b!924660))

(assert (= (and b!924659 (not c!96400)) b!924658))

(assert (= (and b!924660 c!96401) b!924651))

(assert (= (and b!924660 (not c!96401)) b!924649))

(assert (= (and b!924651 c!96399) b!924663))

(assert (= (and b!924651 (not c!96399)) b!924647))

(assert (= (and b!924659 res!623311) b!924657))

(assert (= (and b!924657 res!623318) b!924655))

(assert (= (and b!924664 condMapEmpty!31326) mapIsEmpty!31326))

(assert (= (and b!924664 (not condMapEmpty!31326)) mapNonEmpty!31326))

(get-info :version)

(assert (= (and mapNonEmpty!31326 ((_ is ValueCellFull!9375) mapValue!31326)) b!924656))

(assert (= (and b!924664 ((_ is ValueCellFull!9375) mapDefault!31326)) b!924652))

(assert (= start!79020 b!924664))

(declare-fun b_lambda!13737 () Bool)

(assert (=> (not b_lambda!13737) (not b!924651)))

(declare-fun t!26796 () Bool)

(declare-fun tb!5793 () Bool)

(assert (=> (and start!79020 (= defaultEntry!1235 defaultEntry!1235) t!26796) tb!5793))

(declare-fun result!11401 () Bool)

(assert (=> tb!5793 (= result!11401 tp_is_empty!19713)))

(assert (=> b!924651 t!26796))

(declare-fun b_and!28167 () Bool)

(assert (= b_and!28165 (and (=> t!26796 result!11401) b_and!28167)))

(declare-fun m!859101 () Bool)

(assert (=> b!924651 m!859101))

(declare-fun m!859103 () Bool)

(assert (=> b!924651 m!859103))

(declare-fun m!859105 () Bool)

(assert (=> b!924651 m!859105))

(declare-fun m!859107 () Bool)

(assert (=> b!924651 m!859107))

(declare-fun m!859109 () Bool)

(assert (=> b!924651 m!859109))

(declare-fun m!859111 () Bool)

(assert (=> b!924651 m!859111))

(assert (=> b!924651 m!859109))

(assert (=> b!924651 m!859111))

(declare-fun m!859113 () Bool)

(assert (=> b!924651 m!859113))

(declare-fun m!859115 () Bool)

(assert (=> b!924651 m!859115))

(declare-fun m!859117 () Bool)

(assert (=> b!924651 m!859117))

(declare-fun m!859119 () Bool)

(assert (=> b!924651 m!859119))

(declare-fun m!859121 () Bool)

(assert (=> b!924651 m!859121))

(declare-fun m!859123 () Bool)

(assert (=> b!924651 m!859123))

(declare-fun m!859125 () Bool)

(assert (=> b!924651 m!859125))

(assert (=> b!924651 m!859105))

(declare-fun m!859127 () Bool)

(assert (=> b!924651 m!859127))

(declare-fun m!859129 () Bool)

(assert (=> b!924651 m!859129))

(declare-fun m!859131 () Bool)

(assert (=> b!924651 m!859131))

(declare-fun m!859133 () Bool)

(assert (=> b!924661 m!859133))

(declare-fun m!859135 () Bool)

(assert (=> b!924654 m!859135))

(declare-fun m!859137 () Bool)

(assert (=> b!924659 m!859137))

(declare-fun m!859139 () Bool)

(assert (=> b!924662 m!859139))

(declare-fun m!859141 () Bool)

(assert (=> b!924662 m!859141))

(declare-fun m!859143 () Bool)

(assert (=> b!924660 m!859143))

(declare-fun m!859145 () Bool)

(assert (=> b!924660 m!859145))

(declare-fun m!859147 () Bool)

(assert (=> b!924655 m!859147))

(declare-fun m!859149 () Bool)

(assert (=> b!924657 m!859149))

(assert (=> b!924657 m!859115))

(declare-fun m!859151 () Bool)

(assert (=> b!924663 m!859151))

(declare-fun m!859153 () Bool)

(assert (=> mapNonEmpty!31326 m!859153))

(declare-fun m!859155 () Bool)

(assert (=> start!79020 m!859155))

(declare-fun m!859157 () Bool)

(assert (=> start!79020 m!859157))

(declare-fun m!859159 () Bool)

(assert (=> start!79020 m!859159))

(declare-fun m!859161 () Bool)

(assert (=> b!924653 m!859161))

(check-sat (not b!924661) (not b!924657) (not b!924659) (not b_next!17205) (not b!924654) (not b!924651) (not mapNonEmpty!31326) (not b!924653) (not b!924663) (not b_lambda!13737) (not b!924662) b_and!28167 (not start!79020) (not b!924660) (not b!924655) tp_is_empty!19713)
(check-sat b_and!28167 (not b_next!17205))

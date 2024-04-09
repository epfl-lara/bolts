; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79134 () Bool)

(assert start!79134)

(declare-fun b_free!17319 () Bool)

(declare-fun b_next!17319 () Bool)

(assert (=> start!79134 (= b_free!17319 (not b_next!17319))))

(declare-fun tp!60399 () Bool)

(declare-fun b_and!28393 () Bool)

(assert (=> start!79134 (= tp!60399 b_and!28393)))

(declare-fun res!625169 () Bool)

(declare-fun e!521151 () Bool)

(assert (=> start!79134 (=> (not res!625169) (not e!521151))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79134 (= res!625169 (validMask!0 mask!1881))))

(assert (=> start!79134 e!521151))

(assert (=> start!79134 true))

(declare-fun tp_is_empty!19827 () Bool)

(assert (=> start!79134 tp_is_empty!19827))

(declare-datatypes ((V!31401 0))(
  ( (V!31402 (val!9964 Int)) )
))
(declare-datatypes ((ValueCell!9432 0))(
  ( (ValueCellFull!9432 (v!12482 V!31401)) (EmptyCell!9432) )
))
(declare-datatypes ((array!55630 0))(
  ( (array!55631 (arr!26756 (Array (_ BitVec 32) ValueCell!9432)) (size!27216 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55630)

(declare-fun e!521162 () Bool)

(declare-fun array_inv!20826 (array!55630) Bool)

(assert (=> start!79134 (and (array_inv!20826 _values!1231) e!521162)))

(assert (=> start!79134 tp!60399))

(declare-datatypes ((array!55632 0))(
  ( (array!55633 (arr!26757 (Array (_ BitVec 32) (_ BitVec 64))) (size!27217 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55632)

(declare-fun array_inv!20827 (array!55632) Bool)

(assert (=> start!79134 (array_inv!20827 _keys!1487)))

(declare-fun b!928155 () Bool)

(declare-fun e!521159 () Bool)

(declare-fun mapRes!31497 () Bool)

(assert (=> b!928155 (= e!521162 (and e!521159 mapRes!31497))))

(declare-fun condMapEmpty!31497 () Bool)

(declare-fun mapDefault!31497 () ValueCell!9432)

(assert (=> b!928155 (= condMapEmpty!31497 (= (arr!26756 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9432)) mapDefault!31497)))))

(declare-fun b!928156 () Bool)

(declare-fun res!625172 () Bool)

(assert (=> b!928156 (=> (not res!625172) (not e!521151))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928156 (= res!625172 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27217 _keys!1487))))))

(declare-fun b!928157 () Bool)

(declare-fun e!521154 () Bool)

(assert (=> b!928157 (= e!521154 (not (bvsle #b00000000000000000000000000000000 (size!27217 _keys!1487))))))

(declare-fun e!521163 () Bool)

(assert (=> b!928157 e!521163))

(declare-fun res!625173 () Bool)

(assert (=> b!928157 (=> (not res!625173) (not e!521163))))

(declare-datatypes ((tuple2!13122 0))(
  ( (tuple2!13123 (_1!6571 (_ BitVec 64)) (_2!6571 V!31401)) )
))
(declare-datatypes ((List!18945 0))(
  ( (Nil!18942) (Cons!18941 (h!20087 tuple2!13122) (t!27002 List!18945)) )
))
(declare-datatypes ((ListLongMap!11833 0))(
  ( (ListLongMap!11834 (toList!5932 List!18945)) )
))
(declare-fun lt!418630 () ListLongMap!11833)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4951 (ListLongMap!11833 (_ BitVec 64)) Bool)

(assert (=> b!928157 (= res!625173 (contains!4951 lt!418630 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31401)

(declare-fun minValue!1173 () V!31401)

(declare-fun getCurrentListMap!3145 (array!55632 array!55630 (_ BitVec 32) (_ BitVec 32) V!31401 V!31401 (_ BitVec 32) Int) ListLongMap!11833)

(assert (=> b!928157 (= lt!418630 (getCurrentListMap!3145 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31401)

(declare-datatypes ((Unit!31411 0))(
  ( (Unit!31412) )
))
(declare-fun lt!418640 () Unit!31411)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!106 (array!55632 array!55630 (_ BitVec 32) (_ BitVec 32) V!31401 V!31401 (_ BitVec 64) V!31401 (_ BitVec 32) Int) Unit!31411)

(assert (=> b!928157 (= lt!418640 (lemmaListMapApplyFromThenApplyFromZero!106 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928158 () Bool)

(declare-fun e!521156 () Bool)

(assert (=> b!928158 (= e!521156 e!521154)))

(declare-fun res!625174 () Bool)

(assert (=> b!928158 (=> (not res!625174) (not e!521154))))

(declare-fun lt!418628 () ListLongMap!11833)

(assert (=> b!928158 (= res!625174 (contains!4951 lt!418628 k0!1099))))

(assert (=> b!928158 (= lt!418628 (getCurrentListMap!3145 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928159 () Bool)

(declare-fun e!521155 () Unit!31411)

(declare-fun Unit!31413 () Unit!31411)

(assert (=> b!928159 (= e!521155 Unit!31413)))

(declare-fun mapIsEmpty!31497 () Bool)

(assert (=> mapIsEmpty!31497 mapRes!31497))

(declare-fun b!928160 () Bool)

(declare-fun res!625165 () Bool)

(assert (=> b!928160 (=> (not res!625165) (not e!521154))))

(declare-fun apply!728 (ListLongMap!11833 (_ BitVec 64)) V!31401)

(assert (=> b!928160 (= res!625165 (= (apply!728 lt!418628 k0!1099) v!791))))

(declare-fun b!928161 () Bool)

(declare-fun e!521157 () Bool)

(declare-fun arrayContainsKey!0 (array!55632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!928161 (= e!521157 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!928162 () Bool)

(declare-fun e!521161 () Unit!31411)

(declare-fun Unit!31414 () Unit!31411)

(assert (=> b!928162 (= e!521161 Unit!31414)))

(declare-fun b!928163 () Bool)

(declare-fun res!625167 () Bool)

(assert (=> b!928163 (=> (not res!625167) (not e!521151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55632 (_ BitVec 32)) Bool)

(assert (=> b!928163 (= res!625167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928164 () Bool)

(declare-fun e!521152 () Bool)

(declare-fun e!521158 () Bool)

(assert (=> b!928164 (= e!521152 e!521158)))

(declare-fun res!625170 () Bool)

(assert (=> b!928164 (=> (not res!625170) (not e!521158))))

(declare-fun lt!418638 () V!31401)

(assert (=> b!928164 (= res!625170 (and (= lt!418638 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!418641 () ListLongMap!11833)

(assert (=> b!928164 (= lt!418638 (apply!728 lt!418641 k0!1099))))

(declare-fun mapNonEmpty!31497 () Bool)

(declare-fun tp!60398 () Bool)

(declare-fun e!521160 () Bool)

(assert (=> mapNonEmpty!31497 (= mapRes!31497 (and tp!60398 e!521160))))

(declare-fun mapKey!31497 () (_ BitVec 32))

(declare-fun mapValue!31497 () ValueCell!9432)

(declare-fun mapRest!31497 () (Array (_ BitVec 32) ValueCell!9432))

(assert (=> mapNonEmpty!31497 (= (arr!26756 _values!1231) (store mapRest!31497 mapKey!31497 mapValue!31497))))

(declare-fun b!928165 () Bool)

(assert (=> b!928165 (= e!521160 tp_is_empty!19827)))

(declare-fun b!928166 () Bool)

(assert (=> b!928166 (= e!521161 e!521155)))

(declare-fun lt!418626 () (_ BitVec 64))

(assert (=> b!928166 (= lt!418626 (select (arr!26757 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96914 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!928166 (= c!96914 (validKeyInArray!0 lt!418626))))

(declare-fun b!928167 () Bool)

(declare-fun res!625175 () Bool)

(assert (=> b!928167 (=> (not res!625175) (not e!521151))))

(assert (=> b!928167 (= res!625175 (and (= (size!27216 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27217 _keys!1487) (size!27216 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928168 () Bool)

(declare-fun lt!418631 () ListLongMap!11833)

(assert (=> b!928168 (= (apply!728 lt!418631 k0!1099) lt!418638)))

(declare-fun lt!418639 () Unit!31411)

(declare-fun lt!418632 () V!31401)

(declare-fun addApplyDifferent!405 (ListLongMap!11833 (_ BitVec 64) V!31401 (_ BitVec 64)) Unit!31411)

(assert (=> b!928168 (= lt!418639 (addApplyDifferent!405 lt!418641 lt!418626 lt!418632 k0!1099))))

(assert (=> b!928168 (not (= lt!418626 k0!1099))))

(declare-fun lt!418634 () Unit!31411)

(declare-datatypes ((List!18946 0))(
  ( (Nil!18943) (Cons!18942 (h!20088 (_ BitVec 64)) (t!27003 List!18946)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55632 (_ BitVec 64) (_ BitVec 32) List!18946) Unit!31411)

(assert (=> b!928168 (= lt!418634 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18943))))

(assert (=> b!928168 e!521157))

(declare-fun c!96912 () Bool)

(assert (=> b!928168 (= c!96912 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!418635 () Unit!31411)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!265 (array!55632 array!55630 (_ BitVec 32) (_ BitVec 32) V!31401 V!31401 (_ BitVec 64) (_ BitVec 32) Int) Unit!31411)

(assert (=> b!928168 (= lt!418635 (lemmaListMapContainsThenArrayContainsFrom!265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55632 (_ BitVec 32) List!18946) Bool)

(assert (=> b!928168 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18943)))

(declare-fun lt!418629 () Unit!31411)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55632 (_ BitVec 32) (_ BitVec 32)) Unit!31411)

(assert (=> b!928168 (= lt!418629 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!928168 (contains!4951 lt!418631 k0!1099)))

(declare-fun lt!418633 () tuple2!13122)

(declare-fun +!2719 (ListLongMap!11833 tuple2!13122) ListLongMap!11833)

(assert (=> b!928168 (= lt!418631 (+!2719 lt!418641 lt!418633))))

(declare-fun lt!418627 () Unit!31411)

(declare-fun addStillContains!481 (ListLongMap!11833 (_ BitVec 64) V!31401 (_ BitVec 64)) Unit!31411)

(assert (=> b!928168 (= lt!418627 (addStillContains!481 lt!418641 lt!418626 lt!418632 k0!1099))))

(assert (=> b!928168 (= (getCurrentListMap!3145 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2719 (getCurrentListMap!3145 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418633))))

(assert (=> b!928168 (= lt!418633 (tuple2!13123 lt!418626 lt!418632))))

(declare-fun get!14104 (ValueCell!9432 V!31401) V!31401)

(declare-fun dynLambda!1558 (Int (_ BitVec 64)) V!31401)

(assert (=> b!928168 (= lt!418632 (get!14104 (select (arr!26756 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1558 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418636 () Unit!31411)

(declare-fun lemmaListMapRecursiveValidKeyArray!154 (array!55632 array!55630 (_ BitVec 32) (_ BitVec 32) V!31401 V!31401 (_ BitVec 32) Int) Unit!31411)

(assert (=> b!928168 (= lt!418636 (lemmaListMapRecursiveValidKeyArray!154 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!928168 (= e!521155 lt!418639)))

(declare-fun b!928169 () Bool)

(assert (=> b!928169 (= e!521159 tp_is_empty!19827)))

(declare-fun b!928170 () Bool)

(assert (=> b!928170 (= e!521158 e!521156)))

(declare-fun res!625171 () Bool)

(assert (=> b!928170 (=> (not res!625171) (not e!521156))))

(assert (=> b!928170 (= res!625171 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27217 _keys!1487)))))

(declare-fun lt!418637 () Unit!31411)

(assert (=> b!928170 (= lt!418637 e!521161)))

(declare-fun c!96913 () Bool)

(assert (=> b!928170 (= c!96913 (validKeyInArray!0 k0!1099))))

(declare-fun b!928171 () Bool)

(assert (=> b!928171 (= e!521163 (= (apply!728 lt!418630 k0!1099) v!791))))

(declare-fun b!928172 () Bool)

(declare-fun res!625168 () Bool)

(assert (=> b!928172 (=> (not res!625168) (not e!521151))))

(assert (=> b!928172 (= res!625168 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18943))))

(declare-fun b!928173 () Bool)

(assert (=> b!928173 (= e!521151 e!521152)))

(declare-fun res!625166 () Bool)

(assert (=> b!928173 (=> (not res!625166) (not e!521152))))

(assert (=> b!928173 (= res!625166 (contains!4951 lt!418641 k0!1099))))

(assert (=> b!928173 (= lt!418641 (getCurrentListMap!3145 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928174 () Bool)

(assert (=> b!928174 (= e!521157 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!79134 res!625169) b!928167))

(assert (= (and b!928167 res!625175) b!928163))

(assert (= (and b!928163 res!625167) b!928172))

(assert (= (and b!928172 res!625168) b!928156))

(assert (= (and b!928156 res!625172) b!928173))

(assert (= (and b!928173 res!625166) b!928164))

(assert (= (and b!928164 res!625170) b!928170))

(assert (= (and b!928170 c!96913) b!928166))

(assert (= (and b!928170 (not c!96913)) b!928162))

(assert (= (and b!928166 c!96914) b!928168))

(assert (= (and b!928166 (not c!96914)) b!928159))

(assert (= (and b!928168 c!96912) b!928161))

(assert (= (and b!928168 (not c!96912)) b!928174))

(assert (= (and b!928170 res!625171) b!928158))

(assert (= (and b!928158 res!625174) b!928160))

(assert (= (and b!928160 res!625165) b!928157))

(assert (= (and b!928157 res!625173) b!928171))

(assert (= (and b!928155 condMapEmpty!31497) mapIsEmpty!31497))

(assert (= (and b!928155 (not condMapEmpty!31497)) mapNonEmpty!31497))

(get-info :version)

(assert (= (and mapNonEmpty!31497 ((_ is ValueCellFull!9432) mapValue!31497)) b!928165))

(assert (= (and b!928155 ((_ is ValueCellFull!9432) mapDefault!31497)) b!928169))

(assert (= start!79134 b!928155))

(declare-fun b_lambda!13851 () Bool)

(assert (=> (not b_lambda!13851) (not b!928168)))

(declare-fun t!27001 () Bool)

(declare-fun tb!5907 () Bool)

(assert (=> (and start!79134 (= defaultEntry!1235 defaultEntry!1235) t!27001) tb!5907))

(declare-fun result!11629 () Bool)

(assert (=> tb!5907 (= result!11629 tp_is_empty!19827)))

(assert (=> b!928168 t!27001))

(declare-fun b_and!28395 () Bool)

(assert (= b_and!28393 (and (=> t!27001 result!11629) b_and!28395)))

(declare-fun m!863051 () Bool)

(assert (=> b!928166 m!863051))

(declare-fun m!863053 () Bool)

(assert (=> b!928166 m!863053))

(declare-fun m!863055 () Bool)

(assert (=> b!928172 m!863055))

(declare-fun m!863057 () Bool)

(assert (=> b!928164 m!863057))

(declare-fun m!863059 () Bool)

(assert (=> b!928171 m!863059))

(declare-fun m!863061 () Bool)

(assert (=> b!928163 m!863061))

(declare-fun m!863063 () Bool)

(assert (=> start!79134 m!863063))

(declare-fun m!863065 () Bool)

(assert (=> start!79134 m!863065))

(declare-fun m!863067 () Bool)

(assert (=> start!79134 m!863067))

(declare-fun m!863069 () Bool)

(assert (=> b!928173 m!863069))

(declare-fun m!863071 () Bool)

(assert (=> b!928173 m!863071))

(declare-fun m!863073 () Bool)

(assert (=> b!928168 m!863073))

(declare-fun m!863075 () Bool)

(assert (=> b!928168 m!863075))

(declare-fun m!863077 () Bool)

(assert (=> b!928168 m!863077))

(declare-fun m!863079 () Bool)

(assert (=> b!928168 m!863079))

(assert (=> b!928168 m!863079))

(declare-fun m!863081 () Bool)

(assert (=> b!928168 m!863081))

(declare-fun m!863083 () Bool)

(assert (=> b!928168 m!863083))

(declare-fun m!863085 () Bool)

(assert (=> b!928168 m!863085))

(declare-fun m!863087 () Bool)

(assert (=> b!928168 m!863087))

(assert (=> b!928168 m!863081))

(declare-fun m!863089 () Bool)

(assert (=> b!928168 m!863089))

(declare-fun m!863091 () Bool)

(assert (=> b!928168 m!863091))

(declare-fun m!863093 () Bool)

(assert (=> b!928168 m!863093))

(declare-fun m!863095 () Bool)

(assert (=> b!928168 m!863095))

(declare-fun m!863097 () Bool)

(assert (=> b!928168 m!863097))

(assert (=> b!928168 m!863091))

(declare-fun m!863099 () Bool)

(assert (=> b!928168 m!863099))

(declare-fun m!863101 () Bool)

(assert (=> b!928168 m!863101))

(declare-fun m!863103 () Bool)

(assert (=> b!928168 m!863103))

(declare-fun m!863105 () Bool)

(assert (=> b!928158 m!863105))

(assert (=> b!928158 m!863085))

(declare-fun m!863107 () Bool)

(assert (=> b!928157 m!863107))

(declare-fun m!863109 () Bool)

(assert (=> b!928157 m!863109))

(declare-fun m!863111 () Bool)

(assert (=> b!928157 m!863111))

(declare-fun m!863113 () Bool)

(assert (=> b!928161 m!863113))

(declare-fun m!863115 () Bool)

(assert (=> b!928160 m!863115))

(declare-fun m!863117 () Bool)

(assert (=> mapNonEmpty!31497 m!863117))

(declare-fun m!863119 () Bool)

(assert (=> b!928170 m!863119))

(check-sat (not b!928161) (not start!79134) tp_is_empty!19827 (not b!928170) (not b!928163) (not b!928166) (not b_next!17319) (not b!928157) (not b_lambda!13851) (not b!928168) (not b!928173) (not mapNonEmpty!31497) (not b!928164) (not b!928160) (not b!928172) (not b!928171) (not b!928158) b_and!28395)
(check-sat b_and!28395 (not b_next!17319))

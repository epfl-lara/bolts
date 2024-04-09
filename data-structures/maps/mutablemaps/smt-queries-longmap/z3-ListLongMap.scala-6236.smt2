; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79718 () Bool)

(assert start!79718)

(declare-fun b_free!17739 () Bool)

(declare-fun b_next!17739 () Bool)

(assert (=> start!79718 (= b_free!17739 (not b_next!17739))))

(declare-fun tp!61674 () Bool)

(declare-fun b_and!29087 () Bool)

(assert (=> start!79718 (= tp!61674 b_and!29087)))

(declare-fun b!937288 () Bool)

(declare-fun e!526361 () Bool)

(declare-fun tp_is_empty!20247 () Bool)

(assert (=> b!937288 (= e!526361 tp_is_empty!20247)))

(declare-fun b!937289 () Bool)

(declare-datatypes ((V!31961 0))(
  ( (V!31962 (val!10174 Int)) )
))
(declare-datatypes ((tuple2!13472 0))(
  ( (tuple2!13473 (_1!6746 (_ BitVec 64)) (_2!6746 V!31961)) )
))
(declare-datatypes ((List!19280 0))(
  ( (Nil!19277) (Cons!19276 (h!20422 tuple2!13472) (t!27571 List!19280)) )
))
(declare-datatypes ((ListLongMap!12183 0))(
  ( (ListLongMap!12184 (toList!6107 List!19280)) )
))
(declare-fun lt!422951 () ListLongMap!12183)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun lt!422959 () V!31961)

(declare-fun apply!885 (ListLongMap!12183 (_ BitVec 64)) V!31961)

(assert (=> b!937289 (= (apply!885 lt!422951 k0!1099) lt!422959)))

(declare-fun lt!422954 () ListLongMap!12183)

(declare-fun lt!422957 () V!31961)

(declare-datatypes ((Unit!31655 0))(
  ( (Unit!31656) )
))
(declare-fun lt!422953 () Unit!31655)

(declare-fun lt!422952 () (_ BitVec 64))

(declare-fun addApplyDifferent!433 (ListLongMap!12183 (_ BitVec 64) V!31961 (_ BitVec 64)) Unit!31655)

(assert (=> b!937289 (= lt!422953 (addApplyDifferent!433 lt!422954 lt!422952 lt!422957 k0!1099))))

(assert (=> b!937289 (not (= lt!422952 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!422958 () Unit!31655)

(declare-datatypes ((array!56458 0))(
  ( (array!56459 (arr!27165 (Array (_ BitVec 32) (_ BitVec 64))) (size!27625 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56458)

(declare-datatypes ((List!19281 0))(
  ( (Nil!19278) (Cons!19277 (h!20423 (_ BitVec 64)) (t!27572 List!19281)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56458 (_ BitVec 64) (_ BitVec 32) List!19281) Unit!31655)

(assert (=> b!937289 (= lt!422958 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19278))))

(declare-fun e!526357 () Bool)

(assert (=> b!937289 e!526357))

(declare-fun c!97496 () Bool)

(assert (=> b!937289 (= c!97496 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!422950 () Unit!31655)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9642 0))(
  ( (ValueCellFull!9642 (v!12699 V!31961)) (EmptyCell!9642) )
))
(declare-datatypes ((array!56460 0))(
  ( (array!56461 (arr!27166 (Array (_ BitVec 32) ValueCell!9642)) (size!27626 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56460)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31961)

(declare-fun minValue!1173 () V!31961)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!316 (array!56458 array!56460 (_ BitVec 32) (_ BitVec 32) V!31961 V!31961 (_ BitVec 64) (_ BitVec 32) Int) Unit!31655)

(assert (=> b!937289 (= lt!422950 (lemmaListMapContainsThenArrayContainsFrom!316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56458 (_ BitVec 32) List!19281) Bool)

(assert (=> b!937289 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19278)))

(declare-fun lt!422955 () Unit!31655)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56458 (_ BitVec 32) (_ BitVec 32)) Unit!31655)

(assert (=> b!937289 (= lt!422955 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5117 (ListLongMap!12183 (_ BitVec 64)) Bool)

(assert (=> b!937289 (contains!5117 lt!422951 k0!1099)))

(declare-fun lt!422949 () tuple2!13472)

(declare-fun +!2803 (ListLongMap!12183 tuple2!13472) ListLongMap!12183)

(assert (=> b!937289 (= lt!422951 (+!2803 lt!422954 lt!422949))))

(declare-fun lt!422956 () Unit!31655)

(declare-fun addStillContains!559 (ListLongMap!12183 (_ BitVec 64) V!31961 (_ BitVec 64)) Unit!31655)

(assert (=> b!937289 (= lt!422956 (addStillContains!559 lt!422954 lt!422952 lt!422957 k0!1099))))

(declare-fun getCurrentListMap!3296 (array!56458 array!56460 (_ BitVec 32) (_ BitVec 32) V!31961 V!31961 (_ BitVec 32) Int) ListLongMap!12183)

(assert (=> b!937289 (= (getCurrentListMap!3296 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2803 (getCurrentListMap!3296 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422949))))

(assert (=> b!937289 (= lt!422949 (tuple2!13473 lt!422952 lt!422957))))

(declare-fun get!14343 (ValueCell!9642 V!31961) V!31961)

(declare-fun dynLambda!1642 (Int (_ BitVec 64)) V!31961)

(assert (=> b!937289 (= lt!422957 (get!14343 (select (arr!27166 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1642 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422947 () Unit!31655)

(declare-fun lemmaListMapRecursiveValidKeyArray!238 (array!56458 array!56460 (_ BitVec 32) (_ BitVec 32) V!31961 V!31961 (_ BitVec 32) Int) Unit!31655)

(assert (=> b!937289 (= lt!422947 (lemmaListMapRecursiveValidKeyArray!238 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!526360 () Unit!31655)

(assert (=> b!937289 (= e!526360 lt!422953)))

(declare-fun b!937290 () Bool)

(declare-fun arrayContainsKey!0 (array!56458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!937290 (= e!526357 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun res!630968 () Bool)

(declare-fun e!526355 () Bool)

(assert (=> start!79718 (=> (not res!630968) (not e!526355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79718 (= res!630968 (validMask!0 mask!1881))))

(assert (=> start!79718 e!526355))

(assert (=> start!79718 true))

(assert (=> start!79718 tp_is_empty!20247))

(declare-fun e!526358 () Bool)

(declare-fun array_inv!21090 (array!56460) Bool)

(assert (=> start!79718 (and (array_inv!21090 _values!1231) e!526358)))

(assert (=> start!79718 tp!61674))

(declare-fun array_inv!21091 (array!56458) Bool)

(assert (=> start!79718 (array_inv!21091 _keys!1487)))

(declare-fun b!937291 () Bool)

(declare-fun e!526356 () Bool)

(assert (=> b!937291 (= e!526356 false)))

(declare-fun lt!422948 () Unit!31655)

(declare-fun e!526362 () Unit!31655)

(assert (=> b!937291 (= lt!422948 e!526362)))

(declare-fun c!97494 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937291 (= c!97494 (validKeyInArray!0 k0!1099))))

(declare-fun b!937292 () Bool)

(assert (=> b!937292 (= e!526357 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!937293 () Bool)

(declare-fun e!526364 () Bool)

(assert (=> b!937293 (= e!526355 e!526364)))

(declare-fun res!630971 () Bool)

(assert (=> b!937293 (=> (not res!630971) (not e!526364))))

(assert (=> b!937293 (= res!630971 (contains!5117 lt!422954 k0!1099))))

(assert (=> b!937293 (= lt!422954 (getCurrentListMap!3296 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!937294 () Bool)

(declare-fun Unit!31657 () Unit!31655)

(assert (=> b!937294 (= e!526362 Unit!31657)))

(declare-fun b!937295 () Bool)

(declare-fun e!526359 () Bool)

(declare-fun mapRes!32142 () Bool)

(assert (=> b!937295 (= e!526358 (and e!526359 mapRes!32142))))

(declare-fun condMapEmpty!32142 () Bool)

(declare-fun mapDefault!32142 () ValueCell!9642)

(assert (=> b!937295 (= condMapEmpty!32142 (= (arr!27166 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9642)) mapDefault!32142)))))

(declare-fun mapNonEmpty!32142 () Bool)

(declare-fun tp!61673 () Bool)

(assert (=> mapNonEmpty!32142 (= mapRes!32142 (and tp!61673 e!526361))))

(declare-fun mapValue!32142 () ValueCell!9642)

(declare-fun mapRest!32142 () (Array (_ BitVec 32) ValueCell!9642))

(declare-fun mapKey!32142 () (_ BitVec 32))

(assert (=> mapNonEmpty!32142 (= (arr!27166 _values!1231) (store mapRest!32142 mapKey!32142 mapValue!32142))))

(declare-fun b!937296 () Bool)

(declare-fun res!630966 () Bool)

(assert (=> b!937296 (=> (not res!630966) (not e!526355))))

(assert (=> b!937296 (= res!630966 (and (= (size!27626 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27625 _keys!1487) (size!27626 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!937297 () Bool)

(declare-fun Unit!31658 () Unit!31655)

(assert (=> b!937297 (= e!526360 Unit!31658)))

(declare-fun b!937298 () Bool)

(declare-fun res!630970 () Bool)

(assert (=> b!937298 (=> (not res!630970) (not e!526355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56458 (_ BitVec 32)) Bool)

(assert (=> b!937298 (= res!630970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!937299 () Bool)

(assert (=> b!937299 (= e!526362 e!526360)))

(assert (=> b!937299 (= lt!422952 (select (arr!27165 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97495 () Bool)

(assert (=> b!937299 (= c!97495 (validKeyInArray!0 lt!422952))))

(declare-fun mapIsEmpty!32142 () Bool)

(assert (=> mapIsEmpty!32142 mapRes!32142))

(declare-fun b!937300 () Bool)

(assert (=> b!937300 (= e!526364 e!526356)))

(declare-fun res!630967 () Bool)

(assert (=> b!937300 (=> (not res!630967) (not e!526356))))

(declare-fun v!791 () V!31961)

(assert (=> b!937300 (= res!630967 (and (= lt!422959 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!937300 (= lt!422959 (apply!885 lt!422954 k0!1099))))

(declare-fun b!937301 () Bool)

(assert (=> b!937301 (= e!526359 tp_is_empty!20247)))

(declare-fun b!937302 () Bool)

(declare-fun res!630965 () Bool)

(assert (=> b!937302 (=> (not res!630965) (not e!526355))))

(assert (=> b!937302 (= res!630965 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19278))))

(declare-fun b!937303 () Bool)

(declare-fun res!630969 () Bool)

(assert (=> b!937303 (=> (not res!630969) (not e!526355))))

(assert (=> b!937303 (= res!630969 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27625 _keys!1487))))))

(assert (= (and start!79718 res!630968) b!937296))

(assert (= (and b!937296 res!630966) b!937298))

(assert (= (and b!937298 res!630970) b!937302))

(assert (= (and b!937302 res!630965) b!937303))

(assert (= (and b!937303 res!630969) b!937293))

(assert (= (and b!937293 res!630971) b!937300))

(assert (= (and b!937300 res!630967) b!937291))

(assert (= (and b!937291 c!97494) b!937299))

(assert (= (and b!937291 (not c!97494)) b!937294))

(assert (= (and b!937299 c!97495) b!937289))

(assert (= (and b!937299 (not c!97495)) b!937297))

(assert (= (and b!937289 c!97496) b!937290))

(assert (= (and b!937289 (not c!97496)) b!937292))

(assert (= (and b!937295 condMapEmpty!32142) mapIsEmpty!32142))

(assert (= (and b!937295 (not condMapEmpty!32142)) mapNonEmpty!32142))

(get-info :version)

(assert (= (and mapNonEmpty!32142 ((_ is ValueCellFull!9642) mapValue!32142)) b!937288))

(assert (= (and b!937295 ((_ is ValueCellFull!9642) mapDefault!32142)) b!937301))

(assert (= start!79718 b!937295))

(declare-fun b_lambda!14175 () Bool)

(assert (=> (not b_lambda!14175) (not b!937289)))

(declare-fun t!27570 () Bool)

(declare-fun tb!6141 () Bool)

(assert (=> (and start!79718 (= defaultEntry!1235 defaultEntry!1235) t!27570) tb!6141))

(declare-fun result!12107 () Bool)

(assert (=> tb!6141 (= result!12107 tp_is_empty!20247)))

(assert (=> b!937289 t!27570))

(declare-fun b_and!29089 () Bool)

(assert (= b_and!29087 (and (=> t!27570 result!12107) b_and!29089)))

(declare-fun m!872157 () Bool)

(assert (=> b!937299 m!872157))

(declare-fun m!872159 () Bool)

(assert (=> b!937299 m!872159))

(declare-fun m!872161 () Bool)

(assert (=> b!937289 m!872161))

(declare-fun m!872163 () Bool)

(assert (=> b!937289 m!872163))

(declare-fun m!872165 () Bool)

(assert (=> b!937289 m!872165))

(declare-fun m!872167 () Bool)

(assert (=> b!937289 m!872167))

(declare-fun m!872169 () Bool)

(assert (=> b!937289 m!872169))

(declare-fun m!872171 () Bool)

(assert (=> b!937289 m!872171))

(declare-fun m!872173 () Bool)

(assert (=> b!937289 m!872173))

(declare-fun m!872175 () Bool)

(assert (=> b!937289 m!872175))

(declare-fun m!872177 () Bool)

(assert (=> b!937289 m!872177))

(declare-fun m!872179 () Bool)

(assert (=> b!937289 m!872179))

(declare-fun m!872181 () Bool)

(assert (=> b!937289 m!872181))

(declare-fun m!872183 () Bool)

(assert (=> b!937289 m!872183))

(declare-fun m!872185 () Bool)

(assert (=> b!937289 m!872185))

(assert (=> b!937289 m!872169))

(assert (=> b!937289 m!872175))

(declare-fun m!872187 () Bool)

(assert (=> b!937289 m!872187))

(declare-fun m!872189 () Bool)

(assert (=> b!937289 m!872189))

(assert (=> b!937289 m!872171))

(declare-fun m!872191 () Bool)

(assert (=> b!937289 m!872191))

(declare-fun m!872193 () Bool)

(assert (=> b!937302 m!872193))

(declare-fun m!872195 () Bool)

(assert (=> b!937300 m!872195))

(declare-fun m!872197 () Bool)

(assert (=> start!79718 m!872197))

(declare-fun m!872199 () Bool)

(assert (=> start!79718 m!872199))

(declare-fun m!872201 () Bool)

(assert (=> start!79718 m!872201))

(declare-fun m!872203 () Bool)

(assert (=> b!937298 m!872203))

(declare-fun m!872205 () Bool)

(assert (=> b!937291 m!872205))

(declare-fun m!872207 () Bool)

(assert (=> mapNonEmpty!32142 m!872207))

(declare-fun m!872209 () Bool)

(assert (=> b!937290 m!872209))

(declare-fun m!872211 () Bool)

(assert (=> b!937293 m!872211))

(declare-fun m!872213 () Bool)

(assert (=> b!937293 m!872213))

(check-sat (not b!937302) (not b!937293) (not b_next!17739) b_and!29089 tp_is_empty!20247 (not b_lambda!14175) (not start!79718) (not b!937289) (not mapNonEmpty!32142) (not b!937291) (not b!937298) (not b!937300) (not b!937299) (not b!937290))
(check-sat b_and!29089 (not b_next!17739))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79104 () Bool)

(assert start!79104)

(declare-fun b_free!17289 () Bool)

(declare-fun b_next!17289 () Bool)

(assert (=> start!79104 (= b_free!17289 (not b_next!17289))))

(declare-fun tp!60309 () Bool)

(declare-fun b_and!28333 () Bool)

(assert (=> start!79104 (= tp!60309 b_and!28333)))

(declare-fun b!927225 () Bool)

(declare-fun e!520578 () Bool)

(declare-fun e!520571 () Bool)

(assert (=> b!927225 (= e!520578 e!520571)))

(declare-fun res!624680 () Bool)

(assert (=> b!927225 (=> (not res!624680) (not e!520571))))

(declare-datatypes ((V!31361 0))(
  ( (V!31362 (val!9949 Int)) )
))
(declare-datatypes ((tuple2!13094 0))(
  ( (tuple2!13095 (_1!6557 (_ BitVec 64)) (_2!6557 V!31361)) )
))
(declare-datatypes ((List!18920 0))(
  ( (Nil!18917) (Cons!18916 (h!20062 tuple2!13094) (t!26947 List!18920)) )
))
(declare-datatypes ((ListLongMap!11805 0))(
  ( (ListLongMap!11806 (toList!5918 List!18920)) )
))
(declare-fun lt!417907 () ListLongMap!11805)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4937 (ListLongMap!11805 (_ BitVec 64)) Bool)

(assert (=> b!927225 (= res!624680 (contains!4937 lt!417907 k0!1099))))

(declare-datatypes ((array!55572 0))(
  ( (array!55573 (arr!26727 (Array (_ BitVec 32) (_ BitVec 64))) (size!27187 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55572)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((ValueCell!9417 0))(
  ( (ValueCellFull!9417 (v!12467 V!31361)) (EmptyCell!9417) )
))
(declare-datatypes ((array!55574 0))(
  ( (array!55575 (arr!26728 (Array (_ BitVec 32) ValueCell!9417)) (size!27188 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55574)

(declare-fun zeroValue!1173 () V!31361)

(declare-fun minValue!1173 () V!31361)

(declare-fun getCurrentListMap!3131 (array!55572 array!55574 (_ BitVec 32) (_ BitVec 32) V!31361 V!31361 (_ BitVec 32) Int) ListLongMap!11805)

(assert (=> b!927225 (= lt!417907 (getCurrentListMap!3131 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927226 () Bool)

(declare-fun res!624670 () Bool)

(declare-fun e!520575 () Bool)

(assert (=> b!927226 (=> (not res!624670) (not e!520575))))

(declare-datatypes ((List!18921 0))(
  ( (Nil!18918) (Cons!18917 (h!20063 (_ BitVec 64)) (t!26948 List!18921)) )
))
(declare-fun arrayNoDuplicates!0 (array!55572 (_ BitVec 32) List!18921) Bool)

(assert (=> b!927226 (= res!624670 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18918))))

(declare-fun mapNonEmpty!31452 () Bool)

(declare-fun mapRes!31452 () Bool)

(declare-fun tp!60308 () Bool)

(declare-fun e!520574 () Bool)

(assert (=> mapNonEmpty!31452 (= mapRes!31452 (and tp!60308 e!520574))))

(declare-fun mapValue!31452 () ValueCell!9417)

(declare-fun mapKey!31452 () (_ BitVec 32))

(declare-fun mapRest!31452 () (Array (_ BitVec 32) ValueCell!9417))

(assert (=> mapNonEmpty!31452 (= (arr!26728 _values!1231) (store mapRest!31452 mapKey!31452 mapValue!31452))))

(declare-fun b!927227 () Bool)

(declare-fun lt!417920 () ListLongMap!11805)

(declare-fun lt!417909 () V!31361)

(declare-fun apply!715 (ListLongMap!11805 (_ BitVec 64)) V!31361)

(assert (=> b!927227 (= (apply!715 lt!417920 k0!1099) lt!417909)))

(declare-fun lt!417908 () (_ BitVec 64))

(declare-fun lt!417906 () V!31361)

(declare-fun lt!417915 () ListLongMap!11805)

(declare-datatypes ((Unit!31362 0))(
  ( (Unit!31363) )
))
(declare-fun lt!417916 () Unit!31362)

(declare-fun addApplyDifferent!395 (ListLongMap!11805 (_ BitVec 64) V!31361 (_ BitVec 64)) Unit!31362)

(assert (=> b!927227 (= lt!417916 (addApplyDifferent!395 lt!417915 lt!417908 lt!417906 k0!1099))))

(assert (=> b!927227 (not (= lt!417908 k0!1099))))

(declare-fun lt!417912 () Unit!31362)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55572 (_ BitVec 64) (_ BitVec 32) List!18921) Unit!31362)

(assert (=> b!927227 (= lt!417912 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18918))))

(declare-fun e!520570 () Bool)

(assert (=> b!927227 e!520570))

(declare-fun c!96778 () Bool)

(assert (=> b!927227 (= c!96778 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417910 () Unit!31362)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!255 (array!55572 array!55574 (_ BitVec 32) (_ BitVec 32) V!31361 V!31361 (_ BitVec 64) (_ BitVec 32) Int) Unit!31362)

(assert (=> b!927227 (= lt!417910 (lemmaListMapContainsThenArrayContainsFrom!255 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!927227 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18918)))

(declare-fun lt!417919 () Unit!31362)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55572 (_ BitVec 32) (_ BitVec 32)) Unit!31362)

(assert (=> b!927227 (= lt!417919 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!927227 (contains!4937 lt!417920 k0!1099)))

(declare-fun lt!417917 () tuple2!13094)

(declare-fun +!2709 (ListLongMap!11805 tuple2!13094) ListLongMap!11805)

(assert (=> b!927227 (= lt!417920 (+!2709 lt!417915 lt!417917))))

(declare-fun lt!417914 () Unit!31362)

(declare-fun addStillContains!471 (ListLongMap!11805 (_ BitVec 64) V!31361 (_ BitVec 64)) Unit!31362)

(assert (=> b!927227 (= lt!417914 (addStillContains!471 lt!417915 lt!417908 lt!417906 k0!1099))))

(assert (=> b!927227 (= (getCurrentListMap!3131 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2709 (getCurrentListMap!3131 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417917))))

(assert (=> b!927227 (= lt!417917 (tuple2!13095 lt!417908 lt!417906))))

(declare-fun get!14084 (ValueCell!9417 V!31361) V!31361)

(declare-fun dynLambda!1548 (Int (_ BitVec 64)) V!31361)

(assert (=> b!927227 (= lt!417906 (get!14084 (select (arr!26728 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1548 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417918 () Unit!31362)

(declare-fun lemmaListMapRecursiveValidKeyArray!144 (array!55572 array!55574 (_ BitVec 32) (_ BitVec 32) V!31361 V!31361 (_ BitVec 32) Int) Unit!31362)

(assert (=> b!927227 (= lt!417918 (lemmaListMapRecursiveValidKeyArray!144 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!520576 () Unit!31362)

(assert (=> b!927227 (= e!520576 lt!417916)))

(declare-fun b!927228 () Bool)

(declare-fun arrayContainsKey!0 (array!55572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927228 (= e!520570 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!927229 () Bool)

(declare-fun tp_is_empty!19797 () Bool)

(assert (=> b!927229 (= e!520574 tp_is_empty!19797)))

(declare-fun mapIsEmpty!31452 () Bool)

(assert (=> mapIsEmpty!31452 mapRes!31452))

(declare-fun b!927231 () Bool)

(declare-fun e!520577 () Bool)

(declare-fun e!520573 () Bool)

(assert (=> b!927231 (= e!520577 (and e!520573 mapRes!31452))))

(declare-fun condMapEmpty!31452 () Bool)

(declare-fun mapDefault!31452 () ValueCell!9417)

(assert (=> b!927231 (= condMapEmpty!31452 (= (arr!26728 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9417)) mapDefault!31452)))))

(declare-fun b!927232 () Bool)

(declare-fun res!624673 () Bool)

(assert (=> b!927232 (=> (not res!624673) (not e!520575))))

(assert (=> b!927232 (= res!624673 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27187 _keys!1487))))))

(declare-fun b!927233 () Bool)

(declare-fun e!520568 () Unit!31362)

(assert (=> b!927233 (= e!520568 e!520576)))

(assert (=> b!927233 (= lt!417908 (select (arr!26727 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96779 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927233 (= c!96779 (validKeyInArray!0 lt!417908))))

(declare-fun b!927234 () Bool)

(declare-fun Unit!31364 () Unit!31362)

(assert (=> b!927234 (= e!520568 Unit!31364)))

(declare-fun v!791 () V!31361)

(declare-fun lt!417921 () ListLongMap!11805)

(declare-fun e!520572 () Bool)

(declare-fun b!927235 () Bool)

(assert (=> b!927235 (= e!520572 (= (apply!715 lt!417921 k0!1099) v!791))))

(declare-fun b!927236 () Bool)

(declare-fun res!624676 () Bool)

(assert (=> b!927236 (=> (not res!624676) (not e!520571))))

(assert (=> b!927236 (= res!624676 (= (apply!715 lt!417907 k0!1099) v!791))))

(declare-fun b!927237 () Bool)

(declare-fun Unit!31365 () Unit!31362)

(assert (=> b!927237 (= e!520576 Unit!31365)))

(declare-fun b!927238 () Bool)

(assert (=> b!927238 (= e!520570 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!927239 () Bool)

(declare-fun res!624677 () Bool)

(assert (=> b!927239 (=> (not res!624677) (not e!520575))))

(assert (=> b!927239 (= res!624677 (and (= (size!27188 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27187 _keys!1487) (size!27188 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927240 () Bool)

(declare-fun e!520566 () Bool)

(assert (=> b!927240 (= e!520566 e!520578)))

(declare-fun res!624678 () Bool)

(assert (=> b!927240 (=> (not res!624678) (not e!520578))))

(assert (=> b!927240 (= res!624678 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27187 _keys!1487)))))

(declare-fun lt!417911 () Unit!31362)

(assert (=> b!927240 (= lt!417911 e!520568)))

(declare-fun c!96777 () Bool)

(assert (=> b!927240 (= c!96777 (validKeyInArray!0 k0!1099))))

(declare-fun res!624671 () Bool)

(assert (=> start!79104 (=> (not res!624671) (not e!520575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79104 (= res!624671 (validMask!0 mask!1881))))

(assert (=> start!79104 e!520575))

(assert (=> start!79104 true))

(assert (=> start!79104 tp_is_empty!19797))

(declare-fun array_inv!20802 (array!55574) Bool)

(assert (=> start!79104 (and (array_inv!20802 _values!1231) e!520577)))

(assert (=> start!79104 tp!60309))

(declare-fun array_inv!20803 (array!55572) Bool)

(assert (=> start!79104 (array_inv!20803 _keys!1487)))

(declare-fun b!927230 () Bool)

(declare-fun e!520567 () Bool)

(assert (=> b!927230 (= e!520575 e!520567)))

(declare-fun res!624672 () Bool)

(assert (=> b!927230 (=> (not res!624672) (not e!520567))))

(assert (=> b!927230 (= res!624672 (contains!4937 lt!417915 k0!1099))))

(assert (=> b!927230 (= lt!417915 (getCurrentListMap!3131 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927241 () Bool)

(assert (=> b!927241 (= e!520573 tp_is_empty!19797)))

(declare-fun b!927242 () Bool)

(assert (=> b!927242 (= e!520571 (not true))))

(assert (=> b!927242 e!520572))

(declare-fun res!624674 () Bool)

(assert (=> b!927242 (=> (not res!624674) (not e!520572))))

(assert (=> b!927242 (= res!624674 (contains!4937 lt!417921 k0!1099))))

(assert (=> b!927242 (= lt!417921 (getCurrentListMap!3131 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!417913 () Unit!31362)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!95 (array!55572 array!55574 (_ BitVec 32) (_ BitVec 32) V!31361 V!31361 (_ BitVec 64) V!31361 (_ BitVec 32) Int) Unit!31362)

(assert (=> b!927242 (= lt!417913 (lemmaListMapApplyFromThenApplyFromZero!95 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927243 () Bool)

(assert (=> b!927243 (= e!520567 e!520566)))

(declare-fun res!624679 () Bool)

(assert (=> b!927243 (=> (not res!624679) (not e!520566))))

(assert (=> b!927243 (= res!624679 (and (= lt!417909 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!927243 (= lt!417909 (apply!715 lt!417915 k0!1099))))

(declare-fun b!927244 () Bool)

(declare-fun res!624675 () Bool)

(assert (=> b!927244 (=> (not res!624675) (not e!520575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55572 (_ BitVec 32)) Bool)

(assert (=> b!927244 (= res!624675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!79104 res!624671) b!927239))

(assert (= (and b!927239 res!624677) b!927244))

(assert (= (and b!927244 res!624675) b!927226))

(assert (= (and b!927226 res!624670) b!927232))

(assert (= (and b!927232 res!624673) b!927230))

(assert (= (and b!927230 res!624672) b!927243))

(assert (= (and b!927243 res!624679) b!927240))

(assert (= (and b!927240 c!96777) b!927233))

(assert (= (and b!927240 (not c!96777)) b!927234))

(assert (= (and b!927233 c!96779) b!927227))

(assert (= (and b!927233 (not c!96779)) b!927237))

(assert (= (and b!927227 c!96778) b!927228))

(assert (= (and b!927227 (not c!96778)) b!927238))

(assert (= (and b!927240 res!624678) b!927225))

(assert (= (and b!927225 res!624680) b!927236))

(assert (= (and b!927236 res!624676) b!927242))

(assert (= (and b!927242 res!624674) b!927235))

(assert (= (and b!927231 condMapEmpty!31452) mapIsEmpty!31452))

(assert (= (and b!927231 (not condMapEmpty!31452)) mapNonEmpty!31452))

(get-info :version)

(assert (= (and mapNonEmpty!31452 ((_ is ValueCellFull!9417) mapValue!31452)) b!927229))

(assert (= (and b!927231 ((_ is ValueCellFull!9417) mapDefault!31452)) b!927241))

(assert (= start!79104 b!927231))

(declare-fun b_lambda!13821 () Bool)

(assert (=> (not b_lambda!13821) (not b!927227)))

(declare-fun t!26946 () Bool)

(declare-fun tb!5877 () Bool)

(assert (=> (and start!79104 (= defaultEntry!1235 defaultEntry!1235) t!26946) tb!5877))

(declare-fun result!11569 () Bool)

(assert (=> tb!5877 (= result!11569 tp_is_empty!19797)))

(assert (=> b!927227 t!26946))

(declare-fun b_and!28335 () Bool)

(assert (= b_and!28333 (and (=> t!26946 result!11569) b_and!28335)))

(declare-fun m!862001 () Bool)

(assert (=> b!927243 m!862001))

(declare-fun m!862003 () Bool)

(assert (=> b!927236 m!862003))

(declare-fun m!862005 () Bool)

(assert (=> b!927233 m!862005))

(declare-fun m!862007 () Bool)

(assert (=> b!927233 m!862007))

(declare-fun m!862009 () Bool)

(assert (=> mapNonEmpty!31452 m!862009))

(declare-fun m!862011 () Bool)

(assert (=> b!927242 m!862011))

(declare-fun m!862013 () Bool)

(assert (=> b!927242 m!862013))

(declare-fun m!862015 () Bool)

(assert (=> b!927242 m!862015))

(declare-fun m!862017 () Bool)

(assert (=> b!927227 m!862017))

(declare-fun m!862019 () Bool)

(assert (=> b!927227 m!862019))

(declare-fun m!862021 () Bool)

(assert (=> b!927227 m!862021))

(declare-fun m!862023 () Bool)

(assert (=> b!927227 m!862023))

(declare-fun m!862025 () Bool)

(assert (=> b!927227 m!862025))

(declare-fun m!862027 () Bool)

(assert (=> b!927227 m!862027))

(declare-fun m!862029 () Bool)

(assert (=> b!927227 m!862029))

(declare-fun m!862031 () Bool)

(assert (=> b!927227 m!862031))

(assert (=> b!927227 m!862023))

(declare-fun m!862033 () Bool)

(assert (=> b!927227 m!862033))

(declare-fun m!862035 () Bool)

(assert (=> b!927227 m!862035))

(declare-fun m!862037 () Bool)

(assert (=> b!927227 m!862037))

(declare-fun m!862039 () Bool)

(assert (=> b!927227 m!862039))

(declare-fun m!862041 () Bool)

(assert (=> b!927227 m!862041))

(declare-fun m!862043 () Bool)

(assert (=> b!927227 m!862043))

(declare-fun m!862045 () Bool)

(assert (=> b!927227 m!862045))

(assert (=> b!927227 m!862031))

(assert (=> b!927227 m!862025))

(declare-fun m!862047 () Bool)

(assert (=> b!927227 m!862047))

(declare-fun m!862049 () Bool)

(assert (=> b!927226 m!862049))

(declare-fun m!862051 () Bool)

(assert (=> b!927235 m!862051))

(declare-fun m!862053 () Bool)

(assert (=> start!79104 m!862053))

(declare-fun m!862055 () Bool)

(assert (=> start!79104 m!862055))

(declare-fun m!862057 () Bool)

(assert (=> start!79104 m!862057))

(declare-fun m!862059 () Bool)

(assert (=> b!927230 m!862059))

(declare-fun m!862061 () Bool)

(assert (=> b!927230 m!862061))

(declare-fun m!862063 () Bool)

(assert (=> b!927225 m!862063))

(assert (=> b!927225 m!862035))

(declare-fun m!862065 () Bool)

(assert (=> b!927240 m!862065))

(declare-fun m!862067 () Bool)

(assert (=> b!927244 m!862067))

(declare-fun m!862069 () Bool)

(assert (=> b!927228 m!862069))

(check-sat (not b!927235) b_and!28335 (not b!927228) (not mapNonEmpty!31452) tp_is_empty!19797 (not b!927225) (not b!927230) (not b!927243) (not b!927226) (not b!927233) (not b!927227) (not b!927236) (not b_lambda!13821) (not b!927242) (not b!927244) (not b!927240) (not b_next!17289) (not start!79104))
(check-sat b_and!28335 (not b_next!17289))

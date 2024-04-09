; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79894 () Bool)

(assert start!79894)

(declare-fun b_free!17763 () Bool)

(declare-fun b_next!17763 () Bool)

(assert (=> start!79894 (= b_free!17763 (not b_next!17763))))

(declare-fun tp!61753 () Bool)

(declare-fun b_and!29183 () Bool)

(assert (=> start!79894 (= tp!61753 b_and!29183)))

(declare-fun b!938998 () Bool)

(declare-fun e!527438 () Bool)

(declare-fun e!527432 () Bool)

(assert (=> b!938998 (= e!527438 e!527432)))

(declare-fun res!631740 () Bool)

(assert (=> b!938998 (=> (not res!631740) (not e!527432))))

(declare-datatypes ((V!31993 0))(
  ( (V!31994 (val!10186 Int)) )
))
(declare-datatypes ((tuple2!13492 0))(
  ( (tuple2!13493 (_1!6756 (_ BitVec 64)) (_2!6756 V!31993)) )
))
(declare-datatypes ((List!19299 0))(
  ( (Nil!19296) (Cons!19295 (h!20441 tuple2!13492) (t!27614 List!19299)) )
))
(declare-datatypes ((ListLongMap!12203 0))(
  ( (ListLongMap!12204 (toList!6117 List!19299)) )
))
(declare-fun lt!424270 () ListLongMap!12203)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5130 (ListLongMap!12203 (_ BitVec 64)) Bool)

(assert (=> b!938998 (= res!631740 (contains!5130 lt!424270 k0!1099))))

(declare-datatypes ((array!56508 0))(
  ( (array!56509 (arr!27188 (Array (_ BitVec 32) (_ BitVec 64))) (size!27648 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56508)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9654 0))(
  ( (ValueCellFull!9654 (v!12717 V!31993)) (EmptyCell!9654) )
))
(declare-datatypes ((array!56510 0))(
  ( (array!56511 (arr!27189 (Array (_ BitVec 32) ValueCell!9654)) (size!27649 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56510)

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31993)

(declare-fun minValue!1173 () V!31993)

(declare-fun getCurrentListMap!3305 (array!56508 array!56510 (_ BitVec 32) (_ BitVec 32) V!31993 V!31993 (_ BitVec 32) Int) ListLongMap!12203)

(assert (=> b!938998 (= lt!424270 (getCurrentListMap!3305 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!938999 () Bool)

(declare-fun res!631748 () Bool)

(assert (=> b!938999 (=> (not res!631748) (not e!527438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56508 (_ BitVec 32)) Bool)

(assert (=> b!938999 (= res!631748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!939000 () Bool)

(declare-fun e!527435 () Bool)

(declare-fun tp_is_empty!20271 () Bool)

(assert (=> b!939000 (= e!527435 tp_is_empty!20271)))

(declare-fun b!939001 () Bool)

(declare-datatypes ((Unit!31737 0))(
  ( (Unit!31738) )
))
(declare-fun e!527439 () Unit!31737)

(declare-fun Unit!31739 () Unit!31737)

(assert (=> b!939001 (= e!527439 Unit!31739)))

(declare-fun b!939002 () Bool)

(declare-fun e!527440 () Bool)

(assert (=> b!939002 (= e!527440 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) from!1844))))

(declare-fun b!939003 () Bool)

(declare-fun lt!424268 () ListLongMap!12203)

(declare-fun lt!424276 () V!31993)

(declare-fun apply!895 (ListLongMap!12203 (_ BitVec 64)) V!31993)

(assert (=> b!939003 (= (apply!895 lt!424268 k0!1099) lt!424276)))

(declare-fun lt!424267 () V!31993)

(declare-fun lt!424272 () Unit!31737)

(declare-fun lt!424275 () (_ BitVec 64))

(declare-fun addApplyDifferent!441 (ListLongMap!12203 (_ BitVec 64) V!31993 (_ BitVec 64)) Unit!31737)

(assert (=> b!939003 (= lt!424272 (addApplyDifferent!441 lt!424270 lt!424275 lt!424267 k0!1099))))

(assert (=> b!939003 (not (= lt!424275 k0!1099))))

(declare-fun lt!424274 () Unit!31737)

(declare-datatypes ((List!19300 0))(
  ( (Nil!19297) (Cons!19296 (h!20442 (_ BitVec 64)) (t!27615 List!19300)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56508 (_ BitVec 64) (_ BitVec 32) List!19300) Unit!31737)

(assert (=> b!939003 (= lt!424274 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19297))))

(declare-fun e!527430 () Bool)

(assert (=> b!939003 e!527430))

(declare-fun c!97884 () Bool)

(assert (=> b!939003 (= c!97884 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!424277 () Unit!31737)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!324 (array!56508 array!56510 (_ BitVec 32) (_ BitVec 32) V!31993 V!31993 (_ BitVec 64) (_ BitVec 32) Int) Unit!31737)

(assert (=> b!939003 (= lt!424277 (lemmaListMapContainsThenArrayContainsFrom!324 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56508 (_ BitVec 32) List!19300) Bool)

(assert (=> b!939003 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19297)))

(declare-fun lt!424269 () Unit!31737)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56508 (_ BitVec 32) (_ BitVec 32)) Unit!31737)

(assert (=> b!939003 (= lt!424269 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!939003 (contains!5130 lt!424268 k0!1099)))

(declare-fun lt!424271 () tuple2!13492)

(declare-fun +!2811 (ListLongMap!12203 tuple2!13492) ListLongMap!12203)

(assert (=> b!939003 (= lt!424268 (+!2811 lt!424270 lt!424271))))

(declare-fun lt!424266 () Unit!31737)

(declare-fun addStillContains!567 (ListLongMap!12203 (_ BitVec 64) V!31993 (_ BitVec 64)) Unit!31737)

(assert (=> b!939003 (= lt!424266 (addStillContains!567 lt!424270 lt!424275 lt!424267 k0!1099))))

(assert (=> b!939003 (= (getCurrentListMap!3305 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2811 (getCurrentListMap!3305 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!424271))))

(assert (=> b!939003 (= lt!424271 (tuple2!13493 lt!424275 lt!424267))))

(declare-fun get!14365 (ValueCell!9654 V!31993) V!31993)

(declare-fun dynLambda!1650 (Int (_ BitVec 64)) V!31993)

(assert (=> b!939003 (= lt!424267 (get!14365 (select (arr!27189 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1650 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!424265 () Unit!31737)

(declare-fun lemmaListMapRecursiveValidKeyArray!246 (array!56508 array!56510 (_ BitVec 32) (_ BitVec 32) V!31993 V!31993 (_ BitVec 32) Int) Unit!31737)

(assert (=> b!939003 (= lt!424265 (lemmaListMapRecursiveValidKeyArray!246 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!527434 () Unit!31737)

(assert (=> b!939003 (= e!527434 lt!424272)))

(declare-fun b!939004 () Bool)

(declare-fun res!631739 () Bool)

(assert (=> b!939004 (=> (not res!631739) (not e!527438))))

(assert (=> b!939004 (= res!631739 (and (= (size!27649 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27648 _keys!1487) (size!27649 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!939005 () Bool)

(assert (=> b!939005 (= e!527430 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!939006 () Bool)

(declare-fun res!631746 () Bool)

(assert (=> b!939006 (=> (not res!631746) (not e!527438))))

(assert (=> b!939006 (= res!631746 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27648 _keys!1487))))))

(declare-fun b!939007 () Bool)

(declare-fun e!527437 () Bool)

(assert (=> b!939007 (= e!527437 tp_is_empty!20271)))

(declare-fun b!939008 () Bool)

(declare-fun res!631742 () Bool)

(assert (=> b!939008 (=> (not res!631742) (not e!527438))))

(assert (=> b!939008 (= res!631742 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19297))))

(declare-fun b!939009 () Bool)

(declare-fun e!527431 () Bool)

(declare-fun mapRes!32186 () Bool)

(assert (=> b!939009 (= e!527431 (and e!527437 mapRes!32186))))

(declare-fun condMapEmpty!32186 () Bool)

(declare-fun mapDefault!32186 () ValueCell!9654)

(assert (=> b!939009 (= condMapEmpty!32186 (= (arr!27189 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9654)) mapDefault!32186)))))

(declare-fun b!939010 () Bool)

(declare-fun e!527433 () Bool)

(assert (=> b!939010 (= e!527432 e!527433)))

(declare-fun res!631741 () Bool)

(assert (=> b!939010 (=> (not res!631741) (not e!527433))))

(declare-fun v!791 () V!31993)

(assert (=> b!939010 (= res!631741 (and (= lt!424276 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!939010 (= lt!424276 (apply!895 lt!424270 k0!1099))))

(declare-fun b!939011 () Bool)

(assert (=> b!939011 (= e!527439 e!527434)))

(assert (=> b!939011 (= lt!424275 (select (arr!27188 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97882 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!939011 (= c!97882 (validKeyInArray!0 lt!424275))))

(declare-fun b!939012 () Bool)

(declare-fun res!631747 () Bool)

(assert (=> b!939012 (=> (not res!631747) (not e!527440))))

(declare-fun lt!424273 () ListLongMap!12203)

(assert (=> b!939012 (= res!631747 (= (apply!895 lt!424273 k0!1099) v!791))))

(declare-fun b!939013 () Bool)

(declare-fun e!527436 () Bool)

(assert (=> b!939013 (= e!527436 e!527440)))

(declare-fun res!631745 () Bool)

(assert (=> b!939013 (=> (not res!631745) (not e!527440))))

(assert (=> b!939013 (= res!631745 (contains!5130 lt!424273 k0!1099))))

(assert (=> b!939013 (= lt!424273 (getCurrentListMap!3305 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!939014 () Bool)

(assert (=> b!939014 (= e!527433 e!527436)))

(declare-fun res!631743 () Bool)

(assert (=> b!939014 (=> (not res!631743) (not e!527436))))

(assert (=> b!939014 (= res!631743 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27648 _keys!1487)))))

(declare-fun lt!424278 () Unit!31737)

(assert (=> b!939014 (= lt!424278 e!527439)))

(declare-fun c!97883 () Bool)

(assert (=> b!939014 (= c!97883 (validKeyInArray!0 k0!1099))))

(declare-fun b!939015 () Bool)

(declare-fun arrayContainsKey!0 (array!56508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!939015 (= e!527430 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapNonEmpty!32186 () Bool)

(declare-fun tp!61754 () Bool)

(assert (=> mapNonEmpty!32186 (= mapRes!32186 (and tp!61754 e!527435))))

(declare-fun mapKey!32186 () (_ BitVec 32))

(declare-fun mapValue!32186 () ValueCell!9654)

(declare-fun mapRest!32186 () (Array (_ BitVec 32) ValueCell!9654))

(assert (=> mapNonEmpty!32186 (= (arr!27189 _values!1231) (store mapRest!32186 mapKey!32186 mapValue!32186))))

(declare-fun b!939016 () Bool)

(declare-fun Unit!31740 () Unit!31737)

(assert (=> b!939016 (= e!527434 Unit!31740)))

(declare-fun mapIsEmpty!32186 () Bool)

(assert (=> mapIsEmpty!32186 mapRes!32186))

(declare-fun res!631744 () Bool)

(assert (=> start!79894 (=> (not res!631744) (not e!527438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79894 (= res!631744 (validMask!0 mask!1881))))

(assert (=> start!79894 e!527438))

(assert (=> start!79894 true))

(assert (=> start!79894 tp_is_empty!20271))

(declare-fun array_inv!21102 (array!56510) Bool)

(assert (=> start!79894 (and (array_inv!21102 _values!1231) e!527431)))

(assert (=> start!79894 tp!61753))

(declare-fun array_inv!21103 (array!56508) Bool)

(assert (=> start!79894 (array_inv!21103 _keys!1487)))

(assert (= (and start!79894 res!631744) b!939004))

(assert (= (and b!939004 res!631739) b!938999))

(assert (= (and b!938999 res!631748) b!939008))

(assert (= (and b!939008 res!631742) b!939006))

(assert (= (and b!939006 res!631746) b!938998))

(assert (= (and b!938998 res!631740) b!939010))

(assert (= (and b!939010 res!631741) b!939014))

(assert (= (and b!939014 c!97883) b!939011))

(assert (= (and b!939014 (not c!97883)) b!939001))

(assert (= (and b!939011 c!97882) b!939003))

(assert (= (and b!939011 (not c!97882)) b!939016))

(assert (= (and b!939003 c!97884) b!939015))

(assert (= (and b!939003 (not c!97884)) b!939005))

(assert (= (and b!939014 res!631743) b!939013))

(assert (= (and b!939013 res!631745) b!939012))

(assert (= (and b!939012 res!631747) b!939002))

(assert (= (and b!939009 condMapEmpty!32186) mapIsEmpty!32186))

(assert (= (and b!939009 (not condMapEmpty!32186)) mapNonEmpty!32186))

(get-info :version)

(assert (= (and mapNonEmpty!32186 ((_ is ValueCellFull!9654) mapValue!32186)) b!939000))

(assert (= (and b!939009 ((_ is ValueCellFull!9654) mapDefault!32186)) b!939007))

(assert (= start!79894 b!939009))

(declare-fun b_lambda!14299 () Bool)

(assert (=> (not b_lambda!14299) (not b!939003)))

(declare-fun t!27613 () Bool)

(declare-fun tb!6165 () Bool)

(assert (=> (and start!79894 (= defaultEntry!1235 defaultEntry!1235) t!27613) tb!6165))

(declare-fun result!12159 () Bool)

(assert (=> tb!6165 (= result!12159 tp_is_empty!20271)))

(assert (=> b!939003 t!27613))

(declare-fun b_and!29185 () Bool)

(assert (= b_and!29183 (and (=> t!27613 result!12159) b_and!29185)))

(declare-fun m!874925 () Bool)

(assert (=> b!939015 m!874925))

(declare-fun m!874927 () Bool)

(assert (=> b!939008 m!874927))

(declare-fun m!874929 () Bool)

(assert (=> b!938998 m!874929))

(declare-fun m!874931 () Bool)

(assert (=> b!938998 m!874931))

(declare-fun m!874933 () Bool)

(assert (=> b!939003 m!874933))

(declare-fun m!874935 () Bool)

(assert (=> b!939003 m!874935))

(declare-fun m!874937 () Bool)

(assert (=> b!939003 m!874937))

(declare-fun m!874939 () Bool)

(assert (=> b!939003 m!874939))

(declare-fun m!874941 () Bool)

(assert (=> b!939003 m!874941))

(declare-fun m!874943 () Bool)

(assert (=> b!939003 m!874943))

(declare-fun m!874945 () Bool)

(assert (=> b!939003 m!874945))

(assert (=> b!939003 m!874939))

(assert (=> b!939003 m!874941))

(declare-fun m!874947 () Bool)

(assert (=> b!939003 m!874947))

(declare-fun m!874949 () Bool)

(assert (=> b!939003 m!874949))

(declare-fun m!874951 () Bool)

(assert (=> b!939003 m!874951))

(declare-fun m!874953 () Bool)

(assert (=> b!939003 m!874953))

(declare-fun m!874955 () Bool)

(assert (=> b!939003 m!874955))

(declare-fun m!874957 () Bool)

(assert (=> b!939003 m!874957))

(assert (=> b!939003 m!874935))

(declare-fun m!874959 () Bool)

(assert (=> b!939003 m!874959))

(declare-fun m!874961 () Bool)

(assert (=> b!939003 m!874961))

(declare-fun m!874963 () Bool)

(assert (=> b!939003 m!874963))

(declare-fun m!874965 () Bool)

(assert (=> start!79894 m!874965))

(declare-fun m!874967 () Bool)

(assert (=> start!79894 m!874967))

(declare-fun m!874969 () Bool)

(assert (=> start!79894 m!874969))

(declare-fun m!874971 () Bool)

(assert (=> b!939011 m!874971))

(declare-fun m!874973 () Bool)

(assert (=> b!939011 m!874973))

(declare-fun m!874975 () Bool)

(assert (=> b!939012 m!874975))

(declare-fun m!874977 () Bool)

(assert (=> mapNonEmpty!32186 m!874977))

(declare-fun m!874979 () Bool)

(assert (=> b!939014 m!874979))

(declare-fun m!874981 () Bool)

(assert (=> b!939013 m!874981))

(assert (=> b!939013 m!874953))

(declare-fun m!874983 () Bool)

(assert (=> b!938999 m!874983))

(declare-fun m!874985 () Bool)

(assert (=> b!939010 m!874985))

(check-sat b_and!29185 (not b_lambda!14299) (not mapNonEmpty!32186) tp_is_empty!20271 (not b!939013) (not b!939012) (not b!939003) (not b!939008) (not b!939014) (not b!938999) (not b!938998) (not start!79894) (not b!939011) (not b!939010) (not b_next!17763) (not b!939015))
(check-sat b_and!29185 (not b_next!17763))

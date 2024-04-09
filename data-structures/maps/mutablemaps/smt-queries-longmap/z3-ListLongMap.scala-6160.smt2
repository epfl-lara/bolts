; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79098 () Bool)

(assert start!79098)

(declare-fun b_free!17283 () Bool)

(declare-fun b_next!17283 () Bool)

(assert (=> start!79098 (= b_free!17283 (not b_next!17283))))

(declare-fun tp!60290 () Bool)

(declare-fun b_and!28321 () Bool)

(assert (=> start!79098 (= tp!60290 b_and!28321)))

(declare-fun b!927039 () Bool)

(declare-fun e!520453 () Bool)

(declare-fun e!520450 () Bool)

(assert (=> b!927039 (= e!520453 e!520450)))

(declare-fun res!624572 () Bool)

(assert (=> b!927039 (=> (not res!624572) (not e!520450))))

(declare-datatypes ((V!31353 0))(
  ( (V!31354 (val!9946 Int)) )
))
(declare-datatypes ((tuple2!13088 0))(
  ( (tuple2!13089 (_1!6554 (_ BitVec 64)) (_2!6554 V!31353)) )
))
(declare-datatypes ((List!18915 0))(
  ( (Nil!18912) (Cons!18911 (h!20057 tuple2!13088) (t!26936 List!18915)) )
))
(declare-datatypes ((ListLongMap!11799 0))(
  ( (ListLongMap!11800 (toList!5915 List!18915)) )
))
(declare-fun lt!417777 () ListLongMap!11799)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4934 (ListLongMap!11799 (_ BitVec 64)) Bool)

(assert (=> b!927039 (= res!624572 (contains!4934 lt!417777 k0!1099))))

(declare-datatypes ((array!55560 0))(
  ( (array!55561 (arr!26721 (Array (_ BitVec 32) (_ BitVec 64))) (size!27181 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55560)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9414 0))(
  ( (ValueCellFull!9414 (v!12464 V!31353)) (EmptyCell!9414) )
))
(declare-datatypes ((array!55562 0))(
  ( (array!55563 (arr!26722 (Array (_ BitVec 32) ValueCell!9414)) (size!27182 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55562)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31353)

(declare-fun minValue!1173 () V!31353)

(declare-fun getCurrentListMap!3128 (array!55560 array!55562 (_ BitVec 32) (_ BitVec 32) V!31353 V!31353 (_ BitVec 32) Int) ListLongMap!11799)

(assert (=> b!927039 (= lt!417777 (getCurrentListMap!3128 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927040 () Bool)

(declare-datatypes ((Unit!31352 0))(
  ( (Unit!31353) )
))
(declare-fun e!520456 () Unit!31352)

(declare-fun Unit!31354 () Unit!31352)

(assert (=> b!927040 (= e!520456 Unit!31354)))

(declare-fun b!927041 () Bool)

(declare-fun e!520461 () Bool)

(assert (=> b!927041 (= e!520450 e!520461)))

(declare-fun res!624571 () Bool)

(assert (=> b!927041 (=> (not res!624571) (not e!520461))))

(declare-fun v!791 () V!31353)

(declare-fun lt!417763 () V!31353)

(assert (=> b!927041 (= res!624571 (and (= lt!417763 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun apply!712 (ListLongMap!11799 (_ BitVec 64)) V!31353)

(assert (=> b!927041 (= lt!417763 (apply!712 lt!417777 k0!1099))))

(declare-fun b!927042 () Bool)

(declare-fun res!624575 () Bool)

(assert (=> b!927042 (=> (not res!624575) (not e!520453))))

(assert (=> b!927042 (= res!624575 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27181 _keys!1487))))))

(declare-fun mapIsEmpty!31443 () Bool)

(declare-fun mapRes!31443 () Bool)

(assert (=> mapIsEmpty!31443 mapRes!31443))

(declare-fun b!927043 () Bool)

(declare-fun lt!417768 () ListLongMap!11799)

(assert (=> b!927043 (= (apply!712 lt!417768 k0!1099) lt!417763)))

(declare-fun lt!417762 () (_ BitVec 64))

(declare-fun lt!417770 () Unit!31352)

(declare-fun lt!417773 () V!31353)

(declare-fun addApplyDifferent!393 (ListLongMap!11799 (_ BitVec 64) V!31353 (_ BitVec 64)) Unit!31352)

(assert (=> b!927043 (= lt!417770 (addApplyDifferent!393 lt!417777 lt!417762 lt!417773 k0!1099))))

(assert (=> b!927043 (not (= lt!417762 k0!1099))))

(declare-fun lt!417771 () Unit!31352)

(declare-datatypes ((List!18916 0))(
  ( (Nil!18913) (Cons!18912 (h!20058 (_ BitVec 64)) (t!26937 List!18916)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55560 (_ BitVec 64) (_ BitVec 32) List!18916) Unit!31352)

(assert (=> b!927043 (= lt!417771 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18913))))

(declare-fun e!520449 () Bool)

(assert (=> b!927043 e!520449))

(declare-fun c!96751 () Bool)

(assert (=> b!927043 (= c!96751 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417766 () Unit!31352)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!253 (array!55560 array!55562 (_ BitVec 32) (_ BitVec 32) V!31353 V!31353 (_ BitVec 64) (_ BitVec 32) Int) Unit!31352)

(assert (=> b!927043 (= lt!417766 (lemmaListMapContainsThenArrayContainsFrom!253 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55560 (_ BitVec 32) List!18916) Bool)

(assert (=> b!927043 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18913)))

(declare-fun lt!417775 () Unit!31352)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55560 (_ BitVec 32) (_ BitVec 32)) Unit!31352)

(assert (=> b!927043 (= lt!417775 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!927043 (contains!4934 lt!417768 k0!1099)))

(declare-fun lt!417765 () tuple2!13088)

(declare-fun +!2707 (ListLongMap!11799 tuple2!13088) ListLongMap!11799)

(assert (=> b!927043 (= lt!417768 (+!2707 lt!417777 lt!417765))))

(declare-fun lt!417774 () Unit!31352)

(declare-fun addStillContains!469 (ListLongMap!11799 (_ BitVec 64) V!31353 (_ BitVec 64)) Unit!31352)

(assert (=> b!927043 (= lt!417774 (addStillContains!469 lt!417777 lt!417762 lt!417773 k0!1099))))

(assert (=> b!927043 (= (getCurrentListMap!3128 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2707 (getCurrentListMap!3128 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417765))))

(assert (=> b!927043 (= lt!417765 (tuple2!13089 lt!417762 lt!417773))))

(declare-fun get!14080 (ValueCell!9414 V!31353) V!31353)

(declare-fun dynLambda!1546 (Int (_ BitVec 64)) V!31353)

(assert (=> b!927043 (= lt!417773 (get!14080 (select (arr!26722 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1546 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417767 () Unit!31352)

(declare-fun lemmaListMapRecursiveValidKeyArray!142 (array!55560 array!55562 (_ BitVec 32) (_ BitVec 32) V!31353 V!31353 (_ BitVec 32) Int) Unit!31352)

(assert (=> b!927043 (= lt!417767 (lemmaListMapRecursiveValidKeyArray!142 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!520459 () Unit!31352)

(assert (=> b!927043 (= e!520459 lt!417770)))

(declare-fun b!927044 () Bool)

(declare-fun e!520451 () Bool)

(declare-fun tp_is_empty!19791 () Bool)

(assert (=> b!927044 (= e!520451 tp_is_empty!19791)))

(declare-fun res!624576 () Bool)

(assert (=> start!79098 (=> (not res!624576) (not e!520453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79098 (= res!624576 (validMask!0 mask!1881))))

(assert (=> start!79098 e!520453))

(assert (=> start!79098 true))

(assert (=> start!79098 tp_is_empty!19791))

(declare-fun e!520458 () Bool)

(declare-fun array_inv!20798 (array!55562) Bool)

(assert (=> start!79098 (and (array_inv!20798 _values!1231) e!520458)))

(assert (=> start!79098 tp!60290))

(declare-fun array_inv!20799 (array!55560) Bool)

(assert (=> start!79098 (array_inv!20799 _keys!1487)))

(declare-fun b!927045 () Bool)

(declare-fun res!624578 () Bool)

(assert (=> b!927045 (=> (not res!624578) (not e!520453))))

(assert (=> b!927045 (= res!624578 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18913))))

(declare-fun b!927046 () Bool)

(assert (=> b!927046 (= e!520449 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!927047 () Bool)

(declare-fun res!624579 () Bool)

(declare-fun e!520455 () Bool)

(assert (=> b!927047 (=> (not res!624579) (not e!520455))))

(declare-fun lt!417764 () ListLongMap!11799)

(assert (=> b!927047 (= res!624579 (= (apply!712 lt!417764 k0!1099) v!791))))

(declare-fun b!927048 () Bool)

(declare-fun e!520452 () Bool)

(assert (=> b!927048 (= e!520461 e!520452)))

(declare-fun res!624581 () Bool)

(assert (=> b!927048 (=> (not res!624581) (not e!520452))))

(assert (=> b!927048 (= res!624581 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27181 _keys!1487)))))

(declare-fun lt!417772 () Unit!31352)

(assert (=> b!927048 (= lt!417772 e!520456)))

(declare-fun c!96750 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927048 (= c!96750 (validKeyInArray!0 k0!1099))))

(declare-fun b!927049 () Bool)

(declare-fun res!624577 () Bool)

(assert (=> b!927049 (=> (not res!624577) (not e!520453))))

(assert (=> b!927049 (= res!624577 (and (= (size!27182 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27181 _keys!1487) (size!27182 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927050 () Bool)

(assert (=> b!927050 (= e!520455 (not true))))

(declare-fun e!520454 () Bool)

(assert (=> b!927050 e!520454))

(declare-fun res!624580 () Bool)

(assert (=> b!927050 (=> (not res!624580) (not e!520454))))

(declare-fun lt!417769 () ListLongMap!11799)

(assert (=> b!927050 (= res!624580 (contains!4934 lt!417769 k0!1099))))

(assert (=> b!927050 (= lt!417769 (getCurrentListMap!3128 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!417776 () Unit!31352)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!92 (array!55560 array!55562 (_ BitVec 32) (_ BitVec 32) V!31353 V!31353 (_ BitVec 64) V!31353 (_ BitVec 32) Int) Unit!31352)

(assert (=> b!927050 (= lt!417776 (lemmaListMapApplyFromThenApplyFromZero!92 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927051 () Bool)

(assert (=> b!927051 (= e!520456 e!520459)))

(assert (=> b!927051 (= lt!417762 (select (arr!26721 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96752 () Bool)

(assert (=> b!927051 (= c!96752 (validKeyInArray!0 lt!417762))))

(declare-fun b!927052 () Bool)

(declare-fun e!520457 () Bool)

(assert (=> b!927052 (= e!520457 tp_is_empty!19791)))

(declare-fun b!927053 () Bool)

(declare-fun Unit!31355 () Unit!31352)

(assert (=> b!927053 (= e!520459 Unit!31355)))

(declare-fun b!927054 () Bool)

(declare-fun res!624573 () Bool)

(assert (=> b!927054 (=> (not res!624573) (not e!520453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55560 (_ BitVec 32)) Bool)

(assert (=> b!927054 (= res!624573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!927055 () Bool)

(declare-fun arrayContainsKey!0 (array!55560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927055 (= e!520449 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!927056 () Bool)

(assert (=> b!927056 (= e!520454 (= (apply!712 lt!417769 k0!1099) v!791))))

(declare-fun mapNonEmpty!31443 () Bool)

(declare-fun tp!60291 () Bool)

(assert (=> mapNonEmpty!31443 (= mapRes!31443 (and tp!60291 e!520451))))

(declare-fun mapValue!31443 () ValueCell!9414)

(declare-fun mapRest!31443 () (Array (_ BitVec 32) ValueCell!9414))

(declare-fun mapKey!31443 () (_ BitVec 32))

(assert (=> mapNonEmpty!31443 (= (arr!26722 _values!1231) (store mapRest!31443 mapKey!31443 mapValue!31443))))

(declare-fun b!927057 () Bool)

(assert (=> b!927057 (= e!520452 e!520455)))

(declare-fun res!624574 () Bool)

(assert (=> b!927057 (=> (not res!624574) (not e!520455))))

(assert (=> b!927057 (= res!624574 (contains!4934 lt!417764 k0!1099))))

(assert (=> b!927057 (= lt!417764 (getCurrentListMap!3128 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927058 () Bool)

(assert (=> b!927058 (= e!520458 (and e!520457 mapRes!31443))))

(declare-fun condMapEmpty!31443 () Bool)

(declare-fun mapDefault!31443 () ValueCell!9414)

(assert (=> b!927058 (= condMapEmpty!31443 (= (arr!26722 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9414)) mapDefault!31443)))))

(assert (= (and start!79098 res!624576) b!927049))

(assert (= (and b!927049 res!624577) b!927054))

(assert (= (and b!927054 res!624573) b!927045))

(assert (= (and b!927045 res!624578) b!927042))

(assert (= (and b!927042 res!624575) b!927039))

(assert (= (and b!927039 res!624572) b!927041))

(assert (= (and b!927041 res!624571) b!927048))

(assert (= (and b!927048 c!96750) b!927051))

(assert (= (and b!927048 (not c!96750)) b!927040))

(assert (= (and b!927051 c!96752) b!927043))

(assert (= (and b!927051 (not c!96752)) b!927053))

(assert (= (and b!927043 c!96751) b!927055))

(assert (= (and b!927043 (not c!96751)) b!927046))

(assert (= (and b!927048 res!624581) b!927057))

(assert (= (and b!927057 res!624574) b!927047))

(assert (= (and b!927047 res!624579) b!927050))

(assert (= (and b!927050 res!624580) b!927056))

(assert (= (and b!927058 condMapEmpty!31443) mapIsEmpty!31443))

(assert (= (and b!927058 (not condMapEmpty!31443)) mapNonEmpty!31443))

(get-info :version)

(assert (= (and mapNonEmpty!31443 ((_ is ValueCellFull!9414) mapValue!31443)) b!927044))

(assert (= (and b!927058 ((_ is ValueCellFull!9414) mapDefault!31443)) b!927052))

(assert (= start!79098 b!927058))

(declare-fun b_lambda!13815 () Bool)

(assert (=> (not b_lambda!13815) (not b!927043)))

(declare-fun t!26935 () Bool)

(declare-fun tb!5871 () Bool)

(assert (=> (and start!79098 (= defaultEntry!1235 defaultEntry!1235) t!26935) tb!5871))

(declare-fun result!11557 () Bool)

(assert (=> tb!5871 (= result!11557 tp_is_empty!19791)))

(assert (=> b!927043 t!26935))

(declare-fun b_and!28323 () Bool)

(assert (= b_and!28321 (and (=> t!26935 result!11557) b_and!28323)))

(declare-fun m!861791 () Bool)

(assert (=> b!927039 m!861791))

(declare-fun m!861793 () Bool)

(assert (=> b!927039 m!861793))

(declare-fun m!861795 () Bool)

(assert (=> b!927057 m!861795))

(declare-fun m!861797 () Bool)

(assert (=> b!927057 m!861797))

(declare-fun m!861799 () Bool)

(assert (=> b!927045 m!861799))

(declare-fun m!861801 () Bool)

(assert (=> b!927043 m!861801))

(declare-fun m!861803 () Bool)

(assert (=> b!927043 m!861803))

(declare-fun m!861805 () Bool)

(assert (=> b!927043 m!861805))

(declare-fun m!861807 () Bool)

(assert (=> b!927043 m!861807))

(declare-fun m!861809 () Bool)

(assert (=> b!927043 m!861809))

(declare-fun m!861811 () Bool)

(assert (=> b!927043 m!861811))

(assert (=> b!927043 m!861811))

(declare-fun m!861813 () Bool)

(assert (=> b!927043 m!861813))

(declare-fun m!861815 () Bool)

(assert (=> b!927043 m!861815))

(assert (=> b!927043 m!861797))

(declare-fun m!861817 () Bool)

(assert (=> b!927043 m!861817))

(declare-fun m!861819 () Bool)

(assert (=> b!927043 m!861819))

(declare-fun m!861821 () Bool)

(assert (=> b!927043 m!861821))

(declare-fun m!861823 () Bool)

(assert (=> b!927043 m!861823))

(assert (=> b!927043 m!861813))

(declare-fun m!861825 () Bool)

(assert (=> b!927043 m!861825))

(declare-fun m!861827 () Bool)

(assert (=> b!927043 m!861827))

(assert (=> b!927043 m!861801))

(declare-fun m!861829 () Bool)

(assert (=> b!927043 m!861829))

(declare-fun m!861831 () Bool)

(assert (=> mapNonEmpty!31443 m!861831))

(declare-fun m!861833 () Bool)

(assert (=> b!927047 m!861833))

(declare-fun m!861835 () Bool)

(assert (=> b!927055 m!861835))

(declare-fun m!861837 () Bool)

(assert (=> b!927054 m!861837))

(declare-fun m!861839 () Bool)

(assert (=> b!927048 m!861839))

(declare-fun m!861841 () Bool)

(assert (=> b!927041 m!861841))

(declare-fun m!861843 () Bool)

(assert (=> b!927050 m!861843))

(declare-fun m!861845 () Bool)

(assert (=> b!927050 m!861845))

(declare-fun m!861847 () Bool)

(assert (=> b!927050 m!861847))

(declare-fun m!861849 () Bool)

(assert (=> b!927056 m!861849))

(declare-fun m!861851 () Bool)

(assert (=> start!79098 m!861851))

(declare-fun m!861853 () Bool)

(assert (=> start!79098 m!861853))

(declare-fun m!861855 () Bool)

(assert (=> start!79098 m!861855))

(declare-fun m!861857 () Bool)

(assert (=> b!927051 m!861857))

(declare-fun m!861859 () Bool)

(assert (=> b!927051 m!861859))

(check-sat (not b!927056) (not b!927047) (not b!927050) (not b!927057) (not b!927051) b_and!28323 (not mapNonEmpty!31443) (not b!927055) (not b_next!17283) (not b!927043) (not b!927039) (not b!927041) (not b!927048) (not b_lambda!13815) (not b!927054) (not start!79098) (not b!927045) tp_is_empty!19791)
(check-sat b_and!28323 (not b_next!17283))

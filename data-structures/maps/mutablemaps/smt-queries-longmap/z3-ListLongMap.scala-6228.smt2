; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79670 () Bool)

(assert start!79670)

(declare-fun b_free!17691 () Bool)

(declare-fun b_next!17691 () Bool)

(assert (=> start!79670 (= b_free!17691 (not b_next!17691))))

(declare-fun tp!61529 () Bool)

(declare-fun b_and!28991 () Bool)

(assert (=> start!79670 (= tp!61529 b_and!28991)))

(declare-fun b!936092 () Bool)

(declare-fun e!525646 () Bool)

(declare-fun e!525650 () Bool)

(assert (=> b!936092 (= e!525646 e!525650)))

(declare-fun res!630453 () Bool)

(assert (=> b!936092 (=> (not res!630453) (not e!525650))))

(declare-datatypes ((V!31897 0))(
  ( (V!31898 (val!10150 Int)) )
))
(declare-datatypes ((tuple2!13430 0))(
  ( (tuple2!13431 (_1!6725 (_ BitVec 64)) (_2!6725 V!31897)) )
))
(declare-datatypes ((List!19237 0))(
  ( (Nil!19234) (Cons!19233 (h!20379 tuple2!13430) (t!27480 List!19237)) )
))
(declare-datatypes ((ListLongMap!12141 0))(
  ( (ListLongMap!12142 (toList!6086 List!19237)) )
))
(declare-fun lt!422027 () ListLongMap!12141)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5097 (ListLongMap!12141 (_ BitVec 64)) Bool)

(assert (=> b!936092 (= res!630453 (contains!5097 lt!422027 k0!1099))))

(declare-datatypes ((array!56362 0))(
  ( (array!56363 (arr!27117 (Array (_ BitVec 32) (_ BitVec 64))) (size!27577 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56362)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9618 0))(
  ( (ValueCellFull!9618 (v!12675 V!31897)) (EmptyCell!9618) )
))
(declare-datatypes ((array!56364 0))(
  ( (array!56365 (arr!27118 (Array (_ BitVec 32) ValueCell!9618)) (size!27578 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56364)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31897)

(declare-fun minValue!1173 () V!31897)

(declare-fun getCurrentListMap!3276 (array!56362 array!56364 (_ BitVec 32) (_ BitVec 32) V!31897 V!31897 (_ BitVec 32) Int) ListLongMap!12141)

(assert (=> b!936092 (= lt!422027 (getCurrentListMap!3276 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936093 () Bool)

(declare-fun e!525647 () Bool)

(declare-fun e!525649 () Bool)

(declare-fun mapRes!32070 () Bool)

(assert (=> b!936093 (= e!525647 (and e!525649 mapRes!32070))))

(declare-fun condMapEmpty!32070 () Bool)

(declare-fun mapDefault!32070 () ValueCell!9618)

(assert (=> b!936093 (= condMapEmpty!32070 (= (arr!27118 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9618)) mapDefault!32070)))))

(declare-fun b!936094 () Bool)

(declare-fun e!525645 () Bool)

(declare-fun lt!422032 () (_ BitVec 64))

(assert (=> b!936094 (= e!525645 (not (not (= k0!1099 lt!422032))))))

(assert (=> b!936094 (not (= lt!422032 k0!1099))))

(declare-datatypes ((Unit!31574 0))(
  ( (Unit!31575) )
))
(declare-fun lt!422031 () Unit!31574)

(declare-datatypes ((List!19238 0))(
  ( (Nil!19235) (Cons!19234 (h!20380 (_ BitVec 64)) (t!27481 List!19238)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56362 (_ BitVec 64) (_ BitVec 32) List!19238) Unit!31574)

(assert (=> b!936094 (= lt!422031 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19235))))

(declare-fun e!525643 () Bool)

(assert (=> b!936094 e!525643))

(declare-fun c!97286 () Bool)

(assert (=> b!936094 (= c!97286 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422028 () Unit!31574)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!296 (array!56362 array!56364 (_ BitVec 32) (_ BitVec 32) V!31897 V!31897 (_ BitVec 64) (_ BitVec 32) Int) Unit!31574)

(assert (=> b!936094 (= lt!422028 (lemmaListMapContainsThenArrayContainsFrom!296 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56362 (_ BitVec 32) List!19238) Bool)

(assert (=> b!936094 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19235)))

(declare-fun lt!422033 () Unit!31574)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56362 (_ BitVec 32) (_ BitVec 32)) Unit!31574)

(assert (=> b!936094 (= lt!422033 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!422035 () tuple2!13430)

(declare-fun +!2783 (ListLongMap!12141 tuple2!13430) ListLongMap!12141)

(assert (=> b!936094 (contains!5097 (+!2783 lt!422027 lt!422035) k0!1099)))

(declare-fun lt!422029 () Unit!31574)

(declare-fun lt!422030 () V!31897)

(declare-fun addStillContains!539 (ListLongMap!12141 (_ BitVec 64) V!31897 (_ BitVec 64)) Unit!31574)

(assert (=> b!936094 (= lt!422029 (addStillContains!539 lt!422027 lt!422032 lt!422030 k0!1099))))

(assert (=> b!936094 (= (getCurrentListMap!3276 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2783 (getCurrentListMap!3276 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422035))))

(assert (=> b!936094 (= lt!422035 (tuple2!13431 lt!422032 lt!422030))))

(declare-fun get!14307 (ValueCell!9618 V!31897) V!31897)

(declare-fun dynLambda!1622 (Int (_ BitVec 64)) V!31897)

(assert (=> b!936094 (= lt!422030 (get!14307 (select (arr!27118 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1622 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422034 () Unit!31574)

(declare-fun lemmaListMapRecursiveValidKeyArray!218 (array!56362 array!56364 (_ BitVec 32) (_ BitVec 32) V!31897 V!31897 (_ BitVec 32) Int) Unit!31574)

(assert (=> b!936094 (= lt!422034 (lemmaListMapRecursiveValidKeyArray!218 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!936095 () Bool)

(declare-fun e!525644 () Bool)

(declare-fun tp_is_empty!20199 () Bool)

(assert (=> b!936095 (= e!525644 tp_is_empty!20199)))

(declare-fun res!630454 () Bool)

(assert (=> start!79670 (=> (not res!630454) (not e!525646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79670 (= res!630454 (validMask!0 mask!1881))))

(assert (=> start!79670 e!525646))

(assert (=> start!79670 true))

(assert (=> start!79670 tp_is_empty!20199))

(declare-fun array_inv!21058 (array!56364) Bool)

(assert (=> start!79670 (and (array_inv!21058 _values!1231) e!525647)))

(assert (=> start!79670 tp!61529))

(declare-fun array_inv!21059 (array!56362) Bool)

(assert (=> start!79670 (array_inv!21059 _keys!1487)))

(declare-fun b!936096 () Bool)

(assert (=> b!936096 (= e!525643 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936097 () Bool)

(declare-fun res!630451 () Bool)

(assert (=> b!936097 (=> (not res!630451) (not e!525646))))

(assert (=> b!936097 (= res!630451 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27577 _keys!1487))))))

(declare-fun b!936098 () Bool)

(declare-fun res!630458 () Bool)

(assert (=> b!936098 (=> (not res!630458) (not e!525646))))

(assert (=> b!936098 (= res!630458 (and (= (size!27578 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27577 _keys!1487) (size!27578 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!32070 () Bool)

(assert (=> mapIsEmpty!32070 mapRes!32070))

(declare-fun mapNonEmpty!32070 () Bool)

(declare-fun tp!61530 () Bool)

(assert (=> mapNonEmpty!32070 (= mapRes!32070 (and tp!61530 e!525644))))

(declare-fun mapValue!32070 () ValueCell!9618)

(declare-fun mapRest!32070 () (Array (_ BitVec 32) ValueCell!9618))

(declare-fun mapKey!32070 () (_ BitVec 32))

(assert (=> mapNonEmpty!32070 (= (arr!27118 _values!1231) (store mapRest!32070 mapKey!32070 mapValue!32070))))

(declare-fun b!936099 () Bool)

(declare-fun arrayContainsKey!0 (array!56362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936099 (= e!525643 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!936100 () Bool)

(assert (=> b!936100 (= e!525650 e!525645)))

(declare-fun res!630449 () Bool)

(assert (=> b!936100 (=> (not res!630449) (not e!525645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936100 (= res!630449 (validKeyInArray!0 lt!422032))))

(assert (=> b!936100 (= lt!422032 (select (arr!27117 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!936101 () Bool)

(declare-fun res!630457 () Bool)

(assert (=> b!936101 (=> (not res!630457) (not e!525646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56362 (_ BitVec 32)) Bool)

(assert (=> b!936101 (= res!630457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!936102 () Bool)

(declare-fun res!630456 () Bool)

(assert (=> b!936102 (=> (not res!630456) (not e!525650))))

(declare-fun v!791 () V!31897)

(declare-fun apply!864 (ListLongMap!12141 (_ BitVec 64)) V!31897)

(assert (=> b!936102 (= res!630456 (= (apply!864 lt!422027 k0!1099) v!791))))

(declare-fun b!936103 () Bool)

(declare-fun res!630455 () Bool)

(assert (=> b!936103 (=> (not res!630455) (not e!525650))))

(assert (=> b!936103 (= res!630455 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!936104 () Bool)

(declare-fun res!630452 () Bool)

(assert (=> b!936104 (=> (not res!630452) (not e!525646))))

(assert (=> b!936104 (= res!630452 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19235))))

(declare-fun b!936105 () Bool)

(declare-fun res!630450 () Bool)

(assert (=> b!936105 (=> (not res!630450) (not e!525650))))

(assert (=> b!936105 (= res!630450 (validKeyInArray!0 k0!1099))))

(declare-fun b!936106 () Bool)

(assert (=> b!936106 (= e!525649 tp_is_empty!20199)))

(assert (= (and start!79670 res!630454) b!936098))

(assert (= (and b!936098 res!630458) b!936101))

(assert (= (and b!936101 res!630457) b!936104))

(assert (= (and b!936104 res!630452) b!936097))

(assert (= (and b!936097 res!630451) b!936092))

(assert (= (and b!936092 res!630453) b!936102))

(assert (= (and b!936102 res!630456) b!936103))

(assert (= (and b!936103 res!630455) b!936105))

(assert (= (and b!936105 res!630450) b!936100))

(assert (= (and b!936100 res!630449) b!936094))

(assert (= (and b!936094 c!97286) b!936099))

(assert (= (and b!936094 (not c!97286)) b!936096))

(assert (= (and b!936093 condMapEmpty!32070) mapIsEmpty!32070))

(assert (= (and b!936093 (not condMapEmpty!32070)) mapNonEmpty!32070))

(get-info :version)

(assert (= (and mapNonEmpty!32070 ((_ is ValueCellFull!9618) mapValue!32070)) b!936095))

(assert (= (and b!936093 ((_ is ValueCellFull!9618) mapDefault!32070)) b!936106))

(assert (= start!79670 b!936093))

(declare-fun b_lambda!14127 () Bool)

(assert (=> (not b_lambda!14127) (not b!936094)))

(declare-fun t!27479 () Bool)

(declare-fun tb!6093 () Bool)

(assert (=> (and start!79670 (= defaultEntry!1235 defaultEntry!1235) t!27479) tb!6093))

(declare-fun result!12011 () Bool)

(assert (=> tb!6093 (= result!12011 tp_is_empty!20199)))

(assert (=> b!936094 t!27479))

(declare-fun b_and!28993 () Bool)

(assert (= b_and!28991 (and (=> t!27479 result!12011) b_and!28993)))

(declare-fun m!870773 () Bool)

(assert (=> b!936104 m!870773))

(declare-fun m!870775 () Bool)

(assert (=> mapNonEmpty!32070 m!870775))

(declare-fun m!870777 () Bool)

(assert (=> b!936094 m!870777))

(declare-fun m!870779 () Bool)

(assert (=> b!936094 m!870779))

(declare-fun m!870781 () Bool)

(assert (=> b!936094 m!870781))

(declare-fun m!870783 () Bool)

(assert (=> b!936094 m!870783))

(declare-fun m!870785 () Bool)

(assert (=> b!936094 m!870785))

(declare-fun m!870787 () Bool)

(assert (=> b!936094 m!870787))

(declare-fun m!870789 () Bool)

(assert (=> b!936094 m!870789))

(assert (=> b!936094 m!870781))

(assert (=> b!936094 m!870783))

(declare-fun m!870791 () Bool)

(assert (=> b!936094 m!870791))

(declare-fun m!870793 () Bool)

(assert (=> b!936094 m!870793))

(declare-fun m!870795 () Bool)

(assert (=> b!936094 m!870795))

(declare-fun m!870797 () Bool)

(assert (=> b!936094 m!870797))

(declare-fun m!870799 () Bool)

(assert (=> b!936094 m!870799))

(assert (=> b!936094 m!870787))

(declare-fun m!870801 () Bool)

(assert (=> b!936094 m!870801))

(assert (=> b!936094 m!870785))

(declare-fun m!870803 () Bool)

(assert (=> b!936094 m!870803))

(declare-fun m!870805 () Bool)

(assert (=> b!936101 m!870805))

(declare-fun m!870807 () Bool)

(assert (=> b!936100 m!870807))

(declare-fun m!870809 () Bool)

(assert (=> b!936100 m!870809))

(declare-fun m!870811 () Bool)

(assert (=> b!936102 m!870811))

(declare-fun m!870813 () Bool)

(assert (=> b!936099 m!870813))

(declare-fun m!870815 () Bool)

(assert (=> start!79670 m!870815))

(declare-fun m!870817 () Bool)

(assert (=> start!79670 m!870817))

(declare-fun m!870819 () Bool)

(assert (=> start!79670 m!870819))

(declare-fun m!870821 () Bool)

(assert (=> b!936105 m!870821))

(declare-fun m!870823 () Bool)

(assert (=> b!936092 m!870823))

(declare-fun m!870825 () Bool)

(assert (=> b!936092 m!870825))

(check-sat b_and!28993 (not b_lambda!14127) (not b!936101) (not b!936100) (not b!936099) (not mapNonEmpty!32070) tp_is_empty!20199 (not b!936104) (not start!79670) (not b!936094) (not b_next!17691) (not b!936105) (not b!936102) (not b!936092))
(check-sat b_and!28993 (not b_next!17691))

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79710 () Bool)

(assert start!79710)

(declare-fun b_free!17731 () Bool)

(declare-fun b_next!17731 () Bool)

(assert (=> start!79710 (= b_free!17731 (not b_next!17731))))

(declare-fun tp!61650 () Bool)

(declare-fun b_and!29071 () Bool)

(assert (=> start!79710 (= tp!61650 b_and!29071)))

(declare-fun res!630882 () Bool)

(declare-fun e!526242 () Bool)

(assert (=> start!79710 (=> (not res!630882) (not e!526242))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79710 (= res!630882 (validMask!0 mask!1881))))

(assert (=> start!79710 e!526242))

(assert (=> start!79710 true))

(declare-fun tp_is_empty!20239 () Bool)

(assert (=> start!79710 tp_is_empty!20239))

(declare-datatypes ((V!31951 0))(
  ( (V!31952 (val!10170 Int)) )
))
(declare-datatypes ((ValueCell!9638 0))(
  ( (ValueCellFull!9638 (v!12695 V!31951)) (EmptyCell!9638) )
))
(declare-datatypes ((array!56442 0))(
  ( (array!56443 (arr!27157 (Array (_ BitVec 32) ValueCell!9638)) (size!27617 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56442)

(declare-fun e!526238 () Bool)

(declare-fun array_inv!21084 (array!56442) Bool)

(assert (=> start!79710 (and (array_inv!21084 _values!1231) e!526238)))

(assert (=> start!79710 tp!61650))

(declare-datatypes ((array!56444 0))(
  ( (array!56445 (arr!27158 (Array (_ BitVec 32) (_ BitVec 64))) (size!27618 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56444)

(declare-fun array_inv!21085 (array!56444) Bool)

(assert (=> start!79710 (array_inv!21085 _keys!1487)))

(declare-fun b!937088 () Bool)

(declare-fun res!630881 () Bool)

(assert (=> b!937088 (=> (not res!630881) (not e!526242))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!937088 (= res!630881 (and (= (size!27617 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27618 _keys!1487) (size!27617 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!937089 () Bool)

(declare-fun e!526240 () Bool)

(assert (=> b!937089 (= e!526240 tp_is_empty!20239)))

(declare-fun b!937090 () Bool)

(declare-datatypes ((tuple2!13464 0))(
  ( (tuple2!13465 (_1!6742 (_ BitVec 64)) (_2!6742 V!31951)) )
))
(declare-datatypes ((List!19272 0))(
  ( (Nil!19269) (Cons!19268 (h!20414 tuple2!13464) (t!27555 List!19272)) )
))
(declare-datatypes ((ListLongMap!12175 0))(
  ( (ListLongMap!12176 (toList!6103 List!19272)) )
))
(declare-fun lt!422795 () ListLongMap!12175)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!422794 () V!31951)

(declare-fun apply!881 (ListLongMap!12175 (_ BitVec 64)) V!31951)

(assert (=> b!937090 (= (apply!881 lt!422795 k!1099) lt!422794)))

(declare-fun lt!422792 () ListLongMap!12175)

(declare-fun lt!422791 () V!31951)

(declare-fun lt!422800 () (_ BitVec 64))

(declare-datatypes ((Unit!31641 0))(
  ( (Unit!31642) )
))
(declare-fun lt!422801 () Unit!31641)

(declare-fun addApplyDifferent!429 (ListLongMap!12175 (_ BitVec 64) V!31951 (_ BitVec 64)) Unit!31641)

(assert (=> b!937090 (= lt!422801 (addApplyDifferent!429 lt!422792 lt!422800 lt!422791 k!1099))))

(assert (=> b!937090 (not (= lt!422800 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!422793 () Unit!31641)

(declare-datatypes ((List!19273 0))(
  ( (Nil!19270) (Cons!19269 (h!20415 (_ BitVec 64)) (t!27556 List!19273)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56444 (_ BitVec 64) (_ BitVec 32) List!19273) Unit!31641)

(assert (=> b!937090 (= lt!422793 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19270))))

(declare-fun e!526235 () Bool)

(assert (=> b!937090 e!526235))

(declare-fun c!97460 () Bool)

(assert (=> b!937090 (= c!97460 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!422798 () Unit!31641)

(declare-fun zeroValue!1173 () V!31951)

(declare-fun minValue!1173 () V!31951)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!312 (array!56444 array!56442 (_ BitVec 32) (_ BitVec 32) V!31951 V!31951 (_ BitVec 64) (_ BitVec 32) Int) Unit!31641)

(assert (=> b!937090 (= lt!422798 (lemmaListMapContainsThenArrayContainsFrom!312 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56444 (_ BitVec 32) List!19273) Bool)

(assert (=> b!937090 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19270)))

(declare-fun lt!422797 () Unit!31641)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56444 (_ BitVec 32) (_ BitVec 32)) Unit!31641)

(assert (=> b!937090 (= lt!422797 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5113 (ListLongMap!12175 (_ BitVec 64)) Bool)

(assert (=> b!937090 (contains!5113 lt!422795 k!1099)))

(declare-fun lt!422799 () tuple2!13464)

(declare-fun +!2799 (ListLongMap!12175 tuple2!13464) ListLongMap!12175)

(assert (=> b!937090 (= lt!422795 (+!2799 lt!422792 lt!422799))))

(declare-fun lt!422802 () Unit!31641)

(declare-fun addStillContains!555 (ListLongMap!12175 (_ BitVec 64) V!31951 (_ BitVec 64)) Unit!31641)

(assert (=> b!937090 (= lt!422802 (addStillContains!555 lt!422792 lt!422800 lt!422791 k!1099))))

(declare-fun getCurrentListMap!3292 (array!56444 array!56442 (_ BitVec 32) (_ BitVec 32) V!31951 V!31951 (_ BitVec 32) Int) ListLongMap!12175)

(assert (=> b!937090 (= (getCurrentListMap!3292 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2799 (getCurrentListMap!3292 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422799))))

(assert (=> b!937090 (= lt!422799 (tuple2!13465 lt!422800 lt!422791))))

(declare-fun get!14337 (ValueCell!9638 V!31951) V!31951)

(declare-fun dynLambda!1638 (Int (_ BitVec 64)) V!31951)

(assert (=> b!937090 (= lt!422791 (get!14337 (select (arr!27157 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1638 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422796 () Unit!31641)

(declare-fun lemmaListMapRecursiveValidKeyArray!234 (array!56444 array!56442 (_ BitVec 32) (_ BitVec 32) V!31951 V!31951 (_ BitVec 32) Int) Unit!31641)

(assert (=> b!937090 (= lt!422796 (lemmaListMapRecursiveValidKeyArray!234 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!526237 () Unit!31641)

(assert (=> b!937090 (= e!526237 lt!422801)))

(declare-fun b!937091 () Bool)

(declare-fun res!630887 () Bool)

(assert (=> b!937091 (=> (not res!630887) (not e!526242))))

(assert (=> b!937091 (= res!630887 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27618 _keys!1487))))))

(declare-fun b!937092 () Bool)

(declare-fun e!526241 () Unit!31641)

(declare-fun Unit!31643 () Unit!31641)

(assert (=> b!937092 (= e!526241 Unit!31643)))

(declare-fun b!937093 () Bool)

(declare-fun res!630883 () Bool)

(assert (=> b!937093 (=> (not res!630883) (not e!526242))))

(assert (=> b!937093 (= res!630883 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19270))))

(declare-fun b!937094 () Bool)

(declare-fun e!526243 () Bool)

(assert (=> b!937094 (= e!526242 e!526243)))

(declare-fun res!630885 () Bool)

(assert (=> b!937094 (=> (not res!630885) (not e!526243))))

(assert (=> b!937094 (= res!630885 (contains!5113 lt!422792 k!1099))))

(assert (=> b!937094 (= lt!422792 (getCurrentListMap!3292 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!32130 () Bool)

(declare-fun mapRes!32130 () Bool)

(assert (=> mapIsEmpty!32130 mapRes!32130))

(declare-fun b!937095 () Bool)

(declare-fun Unit!31644 () Unit!31641)

(assert (=> b!937095 (= e!526237 Unit!31644)))

(declare-fun b!937096 () Bool)

(declare-fun e!526236 () Bool)

(assert (=> b!937096 (= e!526236 false)))

(declare-fun lt!422803 () Unit!31641)

(assert (=> b!937096 (= lt!422803 e!526241)))

(declare-fun c!97459 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937096 (= c!97459 (validKeyInArray!0 k!1099))))

(declare-fun b!937097 () Bool)

(assert (=> b!937097 (= e!526241 e!526237)))

(assert (=> b!937097 (= lt!422800 (select (arr!27158 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97458 () Bool)

(assert (=> b!937097 (= c!97458 (validKeyInArray!0 lt!422800))))

(declare-fun mapNonEmpty!32130 () Bool)

(declare-fun tp!61649 () Bool)

(declare-fun e!526244 () Bool)

(assert (=> mapNonEmpty!32130 (= mapRes!32130 (and tp!61649 e!526244))))

(declare-fun mapKey!32130 () (_ BitVec 32))

(declare-fun mapValue!32130 () ValueCell!9638)

(declare-fun mapRest!32130 () (Array (_ BitVec 32) ValueCell!9638))

(assert (=> mapNonEmpty!32130 (= (arr!27157 _values!1231) (store mapRest!32130 mapKey!32130 mapValue!32130))))

(declare-fun b!937098 () Bool)

(assert (=> b!937098 (= e!526243 e!526236)))

(declare-fun res!630886 () Bool)

(assert (=> b!937098 (=> (not res!630886) (not e!526236))))

(declare-fun v!791 () V!31951)

(assert (=> b!937098 (= res!630886 (and (= lt!422794 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!937098 (= lt!422794 (apply!881 lt!422792 k!1099))))

(declare-fun b!937099 () Bool)

(declare-fun arrayContainsKey!0 (array!56444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!937099 (= e!526235 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!937100 () Bool)

(assert (=> b!937100 (= e!526235 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!937101 () Bool)

(assert (=> b!937101 (= e!526244 tp_is_empty!20239)))

(declare-fun b!937102 () Bool)

(declare-fun res!630884 () Bool)

(assert (=> b!937102 (=> (not res!630884) (not e!526242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56444 (_ BitVec 32)) Bool)

(assert (=> b!937102 (= res!630884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!937103 () Bool)

(assert (=> b!937103 (= e!526238 (and e!526240 mapRes!32130))))

(declare-fun condMapEmpty!32130 () Bool)

(declare-fun mapDefault!32130 () ValueCell!9638)


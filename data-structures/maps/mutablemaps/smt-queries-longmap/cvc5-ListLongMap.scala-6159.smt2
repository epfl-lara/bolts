; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79090 () Bool)

(assert start!79090)

(declare-fun b_free!17275 () Bool)

(declare-fun b_next!17275 () Bool)

(assert (=> start!79090 (= b_free!17275 (not b_next!17275))))

(declare-fun tp!60266 () Bool)

(declare-fun b_and!28305 () Bool)

(assert (=> start!79090 (= tp!60266 b_and!28305)))

(declare-fun b!926791 () Bool)

(declare-fun res!624441 () Bool)

(declare-fun e!520301 () Bool)

(assert (=> b!926791 (=> (not res!624441) (not e!520301))))

(declare-datatypes ((array!55546 0))(
  ( (array!55547 (arr!26714 (Array (_ BitVec 32) (_ BitVec 64))) (size!27174 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55546)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31343 0))(
  ( (V!31344 (val!9942 Int)) )
))
(declare-datatypes ((ValueCell!9410 0))(
  ( (ValueCellFull!9410 (v!12460 V!31343)) (EmptyCell!9410) )
))
(declare-datatypes ((array!55548 0))(
  ( (array!55549 (arr!26715 (Array (_ BitVec 32) ValueCell!9410)) (size!27175 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55548)

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!926791 (= res!624441 (and (= (size!27175 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27174 _keys!1487) (size!27175 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926792 () Bool)

(declare-fun e!520296 () Bool)

(declare-fun tp_is_empty!19783 () Bool)

(assert (=> b!926792 (= e!520296 tp_is_empty!19783)))

(declare-fun b!926793 () Bool)

(declare-datatypes ((Unit!31340 0))(
  ( (Unit!31341) )
))
(declare-fun e!520304 () Unit!31340)

(declare-fun Unit!31342 () Unit!31340)

(assert (=> b!926793 (= e!520304 Unit!31342)))

(declare-fun res!624446 () Bool)

(assert (=> start!79090 (=> (not res!624446) (not e!520301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79090 (= res!624446 (validMask!0 mask!1881))))

(assert (=> start!79090 e!520301))

(assert (=> start!79090 true))

(assert (=> start!79090 tp_is_empty!19783))

(declare-fun e!520298 () Bool)

(declare-fun array_inv!20792 (array!55548) Bool)

(assert (=> start!79090 (and (array_inv!20792 _values!1231) e!520298)))

(assert (=> start!79090 tp!60266))

(declare-fun array_inv!20793 (array!55546) Bool)

(assert (=> start!79090 (array_inv!20793 _keys!1487)))

(declare-fun b!926794 () Bool)

(declare-fun e!520305 () Bool)

(assert (=> b!926794 (= e!520301 e!520305)))

(declare-fun res!624448 () Bool)

(assert (=> b!926794 (=> (not res!624448) (not e!520305))))

(declare-datatypes ((tuple2!13080 0))(
  ( (tuple2!13081 (_1!6550 (_ BitVec 64)) (_2!6550 V!31343)) )
))
(declare-datatypes ((List!18908 0))(
  ( (Nil!18905) (Cons!18904 (h!20050 tuple2!13080) (t!26921 List!18908)) )
))
(declare-datatypes ((ListLongMap!11791 0))(
  ( (ListLongMap!11792 (toList!5911 List!18908)) )
))
(declare-fun lt!417584 () ListLongMap!11791)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4931 (ListLongMap!11791 (_ BitVec 64)) Bool)

(assert (=> b!926794 (= res!624448 (contains!4931 lt!417584 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31343)

(declare-fun minValue!1173 () V!31343)

(declare-fun getCurrentListMap!3125 (array!55546 array!55548 (_ BitVec 32) (_ BitVec 32) V!31343 V!31343 (_ BitVec 32) Int) ListLongMap!11791)

(assert (=> b!926794 (= lt!417584 (getCurrentListMap!3125 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31431 () Bool)

(declare-fun mapRes!31431 () Bool)

(assert (=> mapIsEmpty!31431 mapRes!31431))

(declare-fun b!926795 () Bool)

(declare-fun e!520302 () Bool)

(assert (=> b!926795 (= e!520302 (not true))))

(declare-fun e!520297 () Bool)

(assert (=> b!926795 e!520297))

(declare-fun res!624449 () Bool)

(assert (=> b!926795 (=> (not res!624449) (not e!520297))))

(declare-fun lt!417575 () ListLongMap!11791)

(assert (=> b!926795 (= res!624449 (contains!4931 lt!417575 k!1099))))

(assert (=> b!926795 (= lt!417575 (getCurrentListMap!3125 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31343)

(declare-fun lt!417585 () Unit!31340)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!89 (array!55546 array!55548 (_ BitVec 32) (_ BitVec 32) V!31343 V!31343 (_ BitVec 64) V!31343 (_ BitVec 32) Int) Unit!31340)

(assert (=> b!926795 (= lt!417585 (lemmaListMapApplyFromThenApplyFromZero!89 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926796 () Bool)

(declare-fun e!520293 () Bool)

(assert (=> b!926796 (= e!520293 e!520302)))

(declare-fun res!624445 () Bool)

(assert (=> b!926796 (=> (not res!624445) (not e!520302))))

(declare-fun lt!417574 () ListLongMap!11791)

(assert (=> b!926796 (= res!624445 (contains!4931 lt!417574 k!1099))))

(assert (=> b!926796 (= lt!417574 (getCurrentListMap!3125 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926797 () Bool)

(declare-fun res!624439 () Bool)

(assert (=> b!926797 (=> (not res!624439) (not e!520301))))

(assert (=> b!926797 (= res!624439 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27174 _keys!1487))))))

(declare-fun b!926798 () Bool)

(declare-fun e!520303 () Unit!31340)

(declare-fun Unit!31343 () Unit!31340)

(assert (=> b!926798 (= e!520303 Unit!31343)))

(declare-fun b!926799 () Bool)

(declare-fun apply!708 (ListLongMap!11791 (_ BitVec 64)) V!31343)

(assert (=> b!926799 (= e!520297 (= (apply!708 lt!417575 k!1099) v!791))))

(declare-fun e!520299 () Bool)

(declare-fun b!926800 () Bool)

(declare-fun arrayContainsKey!0 (array!55546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926800 (= e!520299 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!926801 () Bool)

(declare-fun res!624442 () Bool)

(assert (=> b!926801 (=> (not res!624442) (not e!520301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55546 (_ BitVec 32)) Bool)

(assert (=> b!926801 (= res!624442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926802 () Bool)

(declare-fun e!520294 () Bool)

(assert (=> b!926802 (= e!520294 e!520293)))

(declare-fun res!624444 () Bool)

(assert (=> b!926802 (=> (not res!624444) (not e!520293))))

(assert (=> b!926802 (= res!624444 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27174 _keys!1487)))))

(declare-fun lt!417578 () Unit!31340)

(assert (=> b!926802 (= lt!417578 e!520304)))

(declare-fun c!96715 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926802 (= c!96715 (validKeyInArray!0 k!1099))))

(declare-fun b!926803 () Bool)

(declare-fun lt!417583 () ListLongMap!11791)

(declare-fun lt!417581 () V!31343)

(assert (=> b!926803 (= (apply!708 lt!417583 k!1099) lt!417581)))

(declare-fun lt!417572 () (_ BitVec 64))

(declare-fun lt!417570 () V!31343)

(declare-fun lt!417573 () Unit!31340)

(declare-fun addApplyDifferent!390 (ListLongMap!11791 (_ BitVec 64) V!31343 (_ BitVec 64)) Unit!31340)

(assert (=> b!926803 (= lt!417573 (addApplyDifferent!390 lt!417584 lt!417572 lt!417570 k!1099))))

(assert (=> b!926803 (not (= lt!417572 k!1099))))

(declare-fun lt!417580 () Unit!31340)

(declare-datatypes ((List!18909 0))(
  ( (Nil!18906) (Cons!18905 (h!20051 (_ BitVec 64)) (t!26922 List!18909)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55546 (_ BitVec 64) (_ BitVec 32) List!18909) Unit!31340)

(assert (=> b!926803 (= lt!417580 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18906))))

(assert (=> b!926803 e!520299))

(declare-fun c!96714 () Bool)

(assert (=> b!926803 (= c!96714 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417571 () Unit!31340)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!250 (array!55546 array!55548 (_ BitVec 32) (_ BitVec 32) V!31343 V!31343 (_ BitVec 64) (_ BitVec 32) Int) Unit!31340)

(assert (=> b!926803 (= lt!417571 (lemmaListMapContainsThenArrayContainsFrom!250 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55546 (_ BitVec 32) List!18909) Bool)

(assert (=> b!926803 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18906)))

(declare-fun lt!417577 () Unit!31340)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55546 (_ BitVec 32) (_ BitVec 32)) Unit!31340)

(assert (=> b!926803 (= lt!417577 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!926803 (contains!4931 lt!417583 k!1099)))

(declare-fun lt!417582 () tuple2!13080)

(declare-fun +!2704 (ListLongMap!11791 tuple2!13080) ListLongMap!11791)

(assert (=> b!926803 (= lt!417583 (+!2704 lt!417584 lt!417582))))

(declare-fun lt!417576 () Unit!31340)

(declare-fun addStillContains!466 (ListLongMap!11791 (_ BitVec 64) V!31343 (_ BitVec 64)) Unit!31340)

(assert (=> b!926803 (= lt!417576 (addStillContains!466 lt!417584 lt!417572 lt!417570 k!1099))))

(assert (=> b!926803 (= (getCurrentListMap!3125 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2704 (getCurrentListMap!3125 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417582))))

(assert (=> b!926803 (= lt!417582 (tuple2!13081 lt!417572 lt!417570))))

(declare-fun get!14075 (ValueCell!9410 V!31343) V!31343)

(declare-fun dynLambda!1543 (Int (_ BitVec 64)) V!31343)

(assert (=> b!926803 (= lt!417570 (get!14075 (select (arr!26715 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1543 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417579 () Unit!31340)

(declare-fun lemmaListMapRecursiveValidKeyArray!139 (array!55546 array!55548 (_ BitVec 32) (_ BitVec 32) V!31343 V!31343 (_ BitVec 32) Int) Unit!31340)

(assert (=> b!926803 (= lt!417579 (lemmaListMapRecursiveValidKeyArray!139 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!926803 (= e!520303 lt!417573)))

(declare-fun b!926804 () Bool)

(assert (=> b!926804 (= e!520305 e!520294)))

(declare-fun res!624440 () Bool)

(assert (=> b!926804 (=> (not res!624440) (not e!520294))))

(assert (=> b!926804 (= res!624440 (and (= lt!417581 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!926804 (= lt!417581 (apply!708 lt!417584 k!1099))))

(declare-fun b!926805 () Bool)

(declare-fun e!520300 () Bool)

(assert (=> b!926805 (= e!520298 (and e!520300 mapRes!31431))))

(declare-fun condMapEmpty!31431 () Bool)

(declare-fun mapDefault!31431 () ValueCell!9410)


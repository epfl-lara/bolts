; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78874 () Bool)

(assert start!78874)

(declare-fun b_free!17059 () Bool)

(declare-fun b_next!17059 () Bool)

(assert (=> start!78874 (= b_free!17059 (not b_next!17059))))

(declare-fun tp!59619 () Bool)

(declare-fun b_and!27873 () Bool)

(assert (=> start!78874 (= tp!59619 b_and!27873)))

(declare-fun b!920829 () Bool)

(declare-fun e!516805 () Bool)

(declare-fun e!516804 () Bool)

(assert (=> b!920829 (= e!516805 (not e!516804))))

(declare-fun res!621082 () Bool)

(assert (=> b!920829 (=> res!621082 e!516804)))

(declare-datatypes ((array!55126 0))(
  ( (array!55127 (arr!26504 (Array (_ BitVec 32) (_ BitVec 64))) (size!26964 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55126)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!920829 (= res!621082 (or (bvsge (size!26964 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26964 _keys!1487))))))

(declare-fun e!516803 () Bool)

(assert (=> b!920829 e!516803))

(declare-fun c!96008 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!920829 (= c!96008 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31055 0))(
  ( (V!31056 (val!9834 Int)) )
))
(declare-datatypes ((ValueCell!9302 0))(
  ( (ValueCellFull!9302 (v!12352 V!31055)) (EmptyCell!9302) )
))
(declare-datatypes ((array!55128 0))(
  ( (array!55129 (arr!26505 (Array (_ BitVec 32) ValueCell!9302)) (size!26965 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55128)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((Unit!31069 0))(
  ( (Unit!31070) )
))
(declare-fun lt!413420 () Unit!31069)

(declare-fun zeroValue!1173 () V!31055)

(declare-fun minValue!1173 () V!31055)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!177 (array!55126 array!55128 (_ BitVec 32) (_ BitVec 32) V!31055 V!31055 (_ BitVec 64) (_ BitVec 32) Int) Unit!31069)

(assert (=> b!920829 (= lt!413420 (lemmaListMapContainsThenArrayContainsFrom!177 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!18726 0))(
  ( (Nil!18723) (Cons!18722 (h!19868 (_ BitVec 64)) (t!26523 List!18726)) )
))
(declare-fun arrayNoDuplicates!0 (array!55126 (_ BitVec 32) List!18726) Bool)

(assert (=> b!920829 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18723)))

(declare-fun lt!413424 () Unit!31069)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55126 (_ BitVec 32) (_ BitVec 32)) Unit!31069)

(assert (=> b!920829 (= lt!413424 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12884 0))(
  ( (tuple2!12885 (_1!6452 (_ BitVec 64)) (_2!6452 V!31055)) )
))
(declare-datatypes ((List!18727 0))(
  ( (Nil!18724) (Cons!18723 (h!19869 tuple2!12884) (t!26524 List!18727)) )
))
(declare-datatypes ((ListLongMap!11595 0))(
  ( (ListLongMap!11596 (toList!5813 List!18727)) )
))
(declare-fun lt!413418 () ListLongMap!11595)

(declare-fun lt!413416 () tuple2!12884)

(declare-fun contains!4833 (ListLongMap!11595 (_ BitVec 64)) Bool)

(declare-fun +!2631 (ListLongMap!11595 tuple2!12884) ListLongMap!11595)

(assert (=> b!920829 (contains!4833 (+!2631 lt!413418 lt!413416) k!1099)))

(declare-fun lt!413417 () Unit!31069)

(declare-fun lt!413422 () (_ BitVec 64))

(declare-fun lt!413421 () V!31055)

(declare-fun addStillContains!393 (ListLongMap!11595 (_ BitVec 64) V!31055 (_ BitVec 64)) Unit!31069)

(assert (=> b!920829 (= lt!413417 (addStillContains!393 lt!413418 lt!413422 lt!413421 k!1099))))

(declare-fun getCurrentListMap!3035 (array!55126 array!55128 (_ BitVec 32) (_ BitVec 32) V!31055 V!31055 (_ BitVec 32) Int) ListLongMap!11595)

(assert (=> b!920829 (= (getCurrentListMap!3035 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2631 (getCurrentListMap!3035 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413416))))

(assert (=> b!920829 (= lt!413416 (tuple2!12885 lt!413422 lt!413421))))

(declare-fun get!13930 (ValueCell!9302 V!31055) V!31055)

(declare-fun dynLambda!1470 (Int (_ BitVec 64)) V!31055)

(assert (=> b!920829 (= lt!413421 (get!13930 (select (arr!26505 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1470 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413423 () Unit!31069)

(declare-fun lemmaListMapRecursiveValidKeyArray!66 (array!55126 array!55128 (_ BitVec 32) (_ BitVec 32) V!31055 V!31055 (_ BitVec 32) Int) Unit!31069)

(assert (=> b!920829 (= lt!413423 (lemmaListMapRecursiveValidKeyArray!66 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920830 () Bool)

(declare-fun res!621079 () Bool)

(declare-fun e!516807 () Bool)

(assert (=> b!920830 (=> (not res!621079) (not e!516807))))

(declare-fun v!791 () V!31055)

(declare-fun apply!623 (ListLongMap!11595 (_ BitVec 64)) V!31055)

(assert (=> b!920830 (= res!621079 (= (apply!623 lt!413418 k!1099) v!791))))

(declare-fun b!920831 () Bool)

(declare-fun e!516810 () Bool)

(declare-fun e!516806 () Bool)

(declare-fun mapRes!31107 () Bool)

(assert (=> b!920831 (= e!516810 (and e!516806 mapRes!31107))))

(declare-fun condMapEmpty!31107 () Bool)

(declare-fun mapDefault!31107 () ValueCell!9302)


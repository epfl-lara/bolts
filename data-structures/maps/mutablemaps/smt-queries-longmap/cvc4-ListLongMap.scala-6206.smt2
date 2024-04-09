; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79402 () Bool)

(assert start!79402)

(declare-fun b_free!17561 () Bool)

(declare-fun b_next!17561 () Bool)

(assert (=> start!79402 (= b_free!17561 (not b_next!17561))))

(declare-fun tp!61128 () Bool)

(declare-fun b_and!28699 () Bool)

(assert (=> start!79402 (= tp!61128 b_and!28699)))

(declare-fun b!932336 () Bool)

(declare-fun res!628032 () Bool)

(declare-fun e!523601 () Bool)

(assert (=> b!932336 (=> (not res!628032) (not e!523601))))

(declare-datatypes ((array!56100 0))(
  ( (array!56101 (arr!26990 (Array (_ BitVec 32) (_ BitVec 64))) (size!27450 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56100)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56100 (_ BitVec 32)) Bool)

(assert (=> b!932336 (= res!628032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932337 () Bool)

(declare-fun res!628030 () Bool)

(declare-fun e!523605 () Bool)

(assert (=> b!932337 (=> (not res!628030) (not e!523605))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31723 0))(
  ( (V!31724 (val!10085 Int)) )
))
(declare-fun v!791 () V!31723)

(declare-datatypes ((tuple2!13316 0))(
  ( (tuple2!13317 (_1!6668 (_ BitVec 64)) (_2!6668 V!31723)) )
))
(declare-datatypes ((List!19127 0))(
  ( (Nil!19124) (Cons!19123 (h!20269 tuple2!13316) (t!27240 List!19127)) )
))
(declare-datatypes ((ListLongMap!12027 0))(
  ( (ListLongMap!12028 (toList!6029 List!19127)) )
))
(declare-fun lt!419860 () ListLongMap!12027)

(declare-fun apply!814 (ListLongMap!12027 (_ BitVec 64)) V!31723)

(assert (=> b!932337 (= res!628030 (= (apply!814 lt!419860 k!1099) v!791))))

(declare-fun b!932338 () Bool)

(declare-fun e!523603 () Bool)

(declare-fun tp_is_empty!20069 () Bool)

(assert (=> b!932338 (= e!523603 tp_is_empty!20069)))

(declare-fun b!932339 () Bool)

(declare-fun e!523604 () Bool)

(assert (=> b!932339 (= e!523604 (not true))))

(declare-fun lt!419861 () tuple2!13316)

(declare-fun contains!5029 (ListLongMap!12027 (_ BitVec 64)) Bool)

(declare-fun +!2736 (ListLongMap!12027 tuple2!13316) ListLongMap!12027)

(assert (=> b!932339 (contains!5029 (+!2736 lt!419860 lt!419861) k!1099)))

(declare-fun lt!419863 () V!31723)

(declare-fun lt!419859 () (_ BitVec 64))

(declare-datatypes ((Unit!31460 0))(
  ( (Unit!31461) )
))
(declare-fun lt!419858 () Unit!31460)

(declare-fun addStillContains!492 (ListLongMap!12027 (_ BitVec 64) V!31723 (_ BitVec 64)) Unit!31460)

(assert (=> b!932339 (= lt!419858 (addStillContains!492 lt!419860 lt!419859 lt!419863 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9553 0))(
  ( (ValueCellFull!9553 (v!12604 V!31723)) (EmptyCell!9553) )
))
(declare-datatypes ((array!56102 0))(
  ( (array!56103 (arr!26991 (Array (_ BitVec 32) ValueCell!9553)) (size!27451 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56102)

(declare-fun zeroValue!1173 () V!31723)

(declare-fun minValue!1173 () V!31723)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3222 (array!56100 array!56102 (_ BitVec 32) (_ BitVec 32) V!31723 V!31723 (_ BitVec 32) Int) ListLongMap!12027)

(assert (=> b!932339 (= (getCurrentListMap!3222 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2736 (getCurrentListMap!3222 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419861))))

(assert (=> b!932339 (= lt!419861 (tuple2!13317 lt!419859 lt!419863))))

(declare-fun get!14204 (ValueCell!9553 V!31723) V!31723)

(declare-fun dynLambda!1575 (Int (_ BitVec 64)) V!31723)

(assert (=> b!932339 (= lt!419863 (get!14204 (select (arr!26991 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1575 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419862 () Unit!31460)

(declare-fun lemmaListMapRecursiveValidKeyArray!171 (array!56100 array!56102 (_ BitVec 32) (_ BitVec 32) V!31723 V!31723 (_ BitVec 32) Int) Unit!31460)

(assert (=> b!932339 (= lt!419862 (lemmaListMapRecursiveValidKeyArray!171 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932340 () Bool)

(assert (=> b!932340 (= e!523601 e!523605)))

(declare-fun res!628037 () Bool)

(assert (=> b!932340 (=> (not res!628037) (not e!523605))))

(assert (=> b!932340 (= res!628037 (contains!5029 lt!419860 k!1099))))

(assert (=> b!932340 (= lt!419860 (getCurrentListMap!3222 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31863 () Bool)

(declare-fun mapRes!31863 () Bool)

(assert (=> mapIsEmpty!31863 mapRes!31863))

(declare-fun b!932341 () Bool)

(declare-fun res!628035 () Bool)

(assert (=> b!932341 (=> (not res!628035) (not e!523605))))

(assert (=> b!932341 (= res!628035 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932342 () Bool)

(assert (=> b!932342 (= e!523605 e!523604)))

(declare-fun res!628033 () Bool)

(assert (=> b!932342 (=> (not res!628033) (not e!523604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932342 (= res!628033 (validKeyInArray!0 lt!419859))))

(assert (=> b!932342 (= lt!419859 (select (arr!26990 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932343 () Bool)

(declare-fun res!628034 () Bool)

(assert (=> b!932343 (=> (not res!628034) (not e!523601))))

(declare-datatypes ((List!19128 0))(
  ( (Nil!19125) (Cons!19124 (h!20270 (_ BitVec 64)) (t!27241 List!19128)) )
))
(declare-fun arrayNoDuplicates!0 (array!56100 (_ BitVec 32) List!19128) Bool)

(assert (=> b!932343 (= res!628034 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19125))))

(declare-fun b!932344 () Bool)

(declare-fun e!523602 () Bool)

(assert (=> b!932344 (= e!523602 (and e!523603 mapRes!31863))))

(declare-fun condMapEmpty!31863 () Bool)

(declare-fun mapDefault!31863 () ValueCell!9553)


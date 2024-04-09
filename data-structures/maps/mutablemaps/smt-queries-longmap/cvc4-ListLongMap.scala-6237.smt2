; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79726 () Bool)

(assert start!79726)

(declare-fun b_free!17747 () Bool)

(declare-fun b_next!17747 () Bool)

(assert (=> start!79726 (= b_free!17747 (not b_next!17747))))

(declare-fun tp!61697 () Bool)

(declare-fun b_and!29103 () Bool)

(assert (=> start!79726 (= tp!61697 b_and!29103)))

(declare-fun b!937488 () Bool)

(declare-fun e!526481 () Bool)

(declare-fun tp_is_empty!20255 () Bool)

(assert (=> b!937488 (= e!526481 tp_is_empty!20255)))

(declare-fun b!937489 () Bool)

(declare-datatypes ((Unit!31669 0))(
  ( (Unit!31670) )
))
(declare-fun e!526484 () Unit!31669)

(declare-fun Unit!31671 () Unit!31669)

(assert (=> b!937489 (= e!526484 Unit!31671)))

(declare-fun b!937490 () Bool)

(declare-datatypes ((V!31971 0))(
  ( (V!31972 (val!10178 Int)) )
))
(declare-datatypes ((tuple2!13480 0))(
  ( (tuple2!13481 (_1!6750 (_ BitVec 64)) (_2!6750 V!31971)) )
))
(declare-datatypes ((List!19288 0))(
  ( (Nil!19285) (Cons!19284 (h!20430 tuple2!13480) (t!27587 List!19288)) )
))
(declare-datatypes ((ListLongMap!12191 0))(
  ( (ListLongMap!12192 (toList!6111 List!19288)) )
))
(declare-fun lt!423109 () ListLongMap!12191)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!423115 () V!31971)

(declare-fun apply!889 (ListLongMap!12191 (_ BitVec 64)) V!31971)

(assert (=> b!937490 (= (apply!889 lt!423109 k!1099) lt!423115)))

(declare-fun lt!423105 () ListLongMap!12191)

(declare-fun lt!423113 () (_ BitVec 64))

(declare-fun lt!423104 () V!31971)

(declare-fun lt!423106 () Unit!31669)

(declare-fun addApplyDifferent!437 (ListLongMap!12191 (_ BitVec 64) V!31971 (_ BitVec 64)) Unit!31669)

(assert (=> b!937490 (= lt!423106 (addApplyDifferent!437 lt!423105 lt!423113 lt!423104 k!1099))))

(assert (=> b!937490 (not (= lt!423113 k!1099))))

(declare-fun lt!423107 () Unit!31669)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56474 0))(
  ( (array!56475 (arr!27173 (Array (_ BitVec 32) (_ BitVec 64))) (size!27633 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56474)

(declare-datatypes ((List!19289 0))(
  ( (Nil!19286) (Cons!19285 (h!20431 (_ BitVec 64)) (t!27588 List!19289)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56474 (_ BitVec 64) (_ BitVec 32) List!19289) Unit!31669)

(assert (=> b!937490 (= lt!423107 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19286))))

(declare-fun e!526477 () Bool)

(assert (=> b!937490 e!526477))

(declare-fun c!97530 () Bool)

(assert (=> b!937490 (= c!97530 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9646 0))(
  ( (ValueCellFull!9646 (v!12703 V!31971)) (EmptyCell!9646) )
))
(declare-datatypes ((array!56476 0))(
  ( (array!56477 (arr!27174 (Array (_ BitVec 32) ValueCell!9646)) (size!27634 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56476)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31971)

(declare-fun minValue!1173 () V!31971)

(declare-fun lt!423108 () Unit!31669)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!320 (array!56474 array!56476 (_ BitVec 32) (_ BitVec 32) V!31971 V!31971 (_ BitVec 64) (_ BitVec 32) Int) Unit!31669)

(assert (=> b!937490 (= lt!423108 (lemmaListMapContainsThenArrayContainsFrom!320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56474 (_ BitVec 32) List!19289) Bool)

(assert (=> b!937490 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19286)))

(declare-fun lt!423114 () Unit!31669)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56474 (_ BitVec 32) (_ BitVec 32)) Unit!31669)

(assert (=> b!937490 (= lt!423114 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5121 (ListLongMap!12191 (_ BitVec 64)) Bool)

(assert (=> b!937490 (contains!5121 lt!423109 k!1099)))

(declare-fun lt!423110 () tuple2!13480)

(declare-fun +!2807 (ListLongMap!12191 tuple2!13480) ListLongMap!12191)

(assert (=> b!937490 (= lt!423109 (+!2807 lt!423105 lt!423110))))

(declare-fun lt!423111 () Unit!31669)

(declare-fun addStillContains!563 (ListLongMap!12191 (_ BitVec 64) V!31971 (_ BitVec 64)) Unit!31669)

(assert (=> b!937490 (= lt!423111 (addStillContains!563 lt!423105 lt!423113 lt!423104 k!1099))))

(declare-fun getCurrentListMap!3300 (array!56474 array!56476 (_ BitVec 32) (_ BitVec 32) V!31971 V!31971 (_ BitVec 32) Int) ListLongMap!12191)

(assert (=> b!937490 (= (getCurrentListMap!3300 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2807 (getCurrentListMap!3300 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423110))))

(assert (=> b!937490 (= lt!423110 (tuple2!13481 lt!423113 lt!423104))))

(declare-fun get!14349 (ValueCell!9646 V!31971) V!31971)

(declare-fun dynLambda!1646 (Int (_ BitVec 64)) V!31971)

(assert (=> b!937490 (= lt!423104 (get!14349 (select (arr!27174 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1646 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!423112 () Unit!31669)

(declare-fun lemmaListMapRecursiveValidKeyArray!242 (array!56474 array!56476 (_ BitVec 32) (_ BitVec 32) V!31971 V!31971 (_ BitVec 32) Int) Unit!31669)

(assert (=> b!937490 (= lt!423112 (lemmaListMapRecursiveValidKeyArray!242 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!526475 () Unit!31669)

(assert (=> b!937490 (= e!526475 lt!423106)))

(declare-fun b!937491 () Bool)

(declare-fun Unit!31672 () Unit!31669)

(assert (=> b!937491 (= e!526475 Unit!31672)))

(declare-fun b!937492 () Bool)

(assert (=> b!937492 (= e!526477 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!937493 () Bool)

(declare-fun e!526478 () Bool)

(declare-fun e!526483 () Bool)

(declare-fun mapRes!32154 () Bool)

(assert (=> b!937493 (= e!526478 (and e!526483 mapRes!32154))))

(declare-fun condMapEmpty!32154 () Bool)

(declare-fun mapDefault!32154 () ValueCell!9646)


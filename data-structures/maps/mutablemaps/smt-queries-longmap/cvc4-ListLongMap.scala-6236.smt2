; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79720 () Bool)

(assert start!79720)

(declare-fun b_free!17741 () Bool)

(declare-fun b_next!17741 () Bool)

(assert (=> start!79720 (= b_free!17741 (not b_next!17741))))

(declare-fun tp!61680 () Bool)

(declare-fun b_and!29091 () Bool)

(assert (=> start!79720 (= tp!61680 b_and!29091)))

(declare-fun b!937338 () Bool)

(declare-datatypes ((V!31963 0))(
  ( (V!31964 (val!10175 Int)) )
))
(declare-datatypes ((tuple2!13474 0))(
  ( (tuple2!13475 (_1!6747 (_ BitVec 64)) (_2!6747 V!31963)) )
))
(declare-datatypes ((List!19282 0))(
  ( (Nil!19279) (Cons!19278 (h!20424 tuple2!13474) (t!27575 List!19282)) )
))
(declare-datatypes ((ListLongMap!12185 0))(
  ( (ListLongMap!12186 (toList!6108 List!19282)) )
))
(declare-fun lt!422986 () ListLongMap!12185)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!422991 () V!31963)

(declare-fun apply!886 (ListLongMap!12185 (_ BitVec 64)) V!31963)

(assert (=> b!937338 (= (apply!886 lt!422986 k!1099) lt!422991)))

(declare-fun lt!422988 () ListLongMap!12185)

(declare-fun lt!422987 () (_ BitVec 64))

(declare-fun lt!422989 () V!31963)

(declare-datatypes ((Unit!31659 0))(
  ( (Unit!31660) )
))
(declare-fun lt!422995 () Unit!31659)

(declare-fun addApplyDifferent!434 (ListLongMap!12185 (_ BitVec 64) V!31963 (_ BitVec 64)) Unit!31659)

(assert (=> b!937338 (= lt!422995 (addApplyDifferent!434 lt!422988 lt!422987 lt!422989 k!1099))))

(assert (=> b!937338 (not (= lt!422987 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!422997 () Unit!31659)

(declare-datatypes ((array!56462 0))(
  ( (array!56463 (arr!27167 (Array (_ BitVec 32) (_ BitVec 64))) (size!27627 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56462)

(declare-datatypes ((List!19283 0))(
  ( (Nil!19280) (Cons!19279 (h!20425 (_ BitVec 64)) (t!27576 List!19283)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56462 (_ BitVec 64) (_ BitVec 32) List!19283) Unit!31659)

(assert (=> b!937338 (= lt!422997 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19280))))

(declare-fun e!526394 () Bool)

(assert (=> b!937338 e!526394))

(declare-fun c!97503 () Bool)

(assert (=> b!937338 (= c!97503 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9643 0))(
  ( (ValueCellFull!9643 (v!12700 V!31963)) (EmptyCell!9643) )
))
(declare-datatypes ((array!56464 0))(
  ( (array!56465 (arr!27168 (Array (_ BitVec 32) ValueCell!9643)) (size!27628 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56464)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!422992 () Unit!31659)

(declare-fun zeroValue!1173 () V!31963)

(declare-fun minValue!1173 () V!31963)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!317 (array!56462 array!56464 (_ BitVec 32) (_ BitVec 32) V!31963 V!31963 (_ BitVec 64) (_ BitVec 32) Int) Unit!31659)

(assert (=> b!937338 (= lt!422992 (lemmaListMapContainsThenArrayContainsFrom!317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56462 (_ BitVec 32) List!19283) Bool)

(assert (=> b!937338 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19280)))

(declare-fun lt!422996 () Unit!31659)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56462 (_ BitVec 32) (_ BitVec 32)) Unit!31659)

(assert (=> b!937338 (= lt!422996 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5118 (ListLongMap!12185 (_ BitVec 64)) Bool)

(assert (=> b!937338 (contains!5118 lt!422986 k!1099)))

(declare-fun lt!422993 () tuple2!13474)

(declare-fun +!2804 (ListLongMap!12185 tuple2!13474) ListLongMap!12185)

(assert (=> b!937338 (= lt!422986 (+!2804 lt!422988 lt!422993))))

(declare-fun lt!422994 () Unit!31659)

(declare-fun addStillContains!560 (ListLongMap!12185 (_ BitVec 64) V!31963 (_ BitVec 64)) Unit!31659)

(assert (=> b!937338 (= lt!422994 (addStillContains!560 lt!422988 lt!422987 lt!422989 k!1099))))

(declare-fun getCurrentListMap!3297 (array!56462 array!56464 (_ BitVec 32) (_ BitVec 32) V!31963 V!31963 (_ BitVec 32) Int) ListLongMap!12185)

(assert (=> b!937338 (= (getCurrentListMap!3297 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2804 (getCurrentListMap!3297 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422993))))

(assert (=> b!937338 (= lt!422993 (tuple2!13475 lt!422987 lt!422989))))

(declare-fun get!14344 (ValueCell!9643 V!31963) V!31963)

(declare-fun dynLambda!1643 (Int (_ BitVec 64)) V!31963)

(assert (=> b!937338 (= lt!422989 (get!14344 (select (arr!27168 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1643 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422998 () Unit!31659)

(declare-fun lemmaListMapRecursiveValidKeyArray!239 (array!56462 array!56464 (_ BitVec 32) (_ BitVec 32) V!31963 V!31963 (_ BitVec 32) Int) Unit!31659)

(assert (=> b!937338 (= lt!422998 (lemmaListMapRecursiveValidKeyArray!239 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!526389 () Unit!31659)

(assert (=> b!937338 (= e!526389 lt!422995)))

(declare-fun b!937339 () Bool)

(declare-fun arrayContainsKey!0 (array!56462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!937339 (= e!526394 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!937340 () Bool)

(declare-fun e!526393 () Bool)

(declare-fun tp_is_empty!20249 () Bool)

(assert (=> b!937340 (= e!526393 tp_is_empty!20249)))

(declare-fun res!630987 () Bool)

(declare-fun e!526391 () Bool)

(assert (=> start!79720 (=> (not res!630987) (not e!526391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79720 (= res!630987 (validMask!0 mask!1881))))

(assert (=> start!79720 e!526391))

(assert (=> start!79720 true))

(assert (=> start!79720 tp_is_empty!20249))

(declare-fun e!526386 () Bool)

(declare-fun array_inv!21092 (array!56464) Bool)

(assert (=> start!79720 (and (array_inv!21092 _values!1231) e!526386)))

(assert (=> start!79720 tp!61680))

(declare-fun array_inv!21093 (array!56462) Bool)

(assert (=> start!79720 (array_inv!21093 _keys!1487)))

(declare-fun b!937341 () Bool)

(declare-fun e!526385 () Bool)

(declare-fun mapRes!32145 () Bool)

(assert (=> b!937341 (= e!526386 (and e!526385 mapRes!32145))))

(declare-fun condMapEmpty!32145 () Bool)

(declare-fun mapDefault!32145 () ValueCell!9643)


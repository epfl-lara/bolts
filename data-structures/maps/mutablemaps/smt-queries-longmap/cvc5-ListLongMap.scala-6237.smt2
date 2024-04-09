; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79722 () Bool)

(assert start!79722)

(declare-fun b_free!17743 () Bool)

(declare-fun b_next!17743 () Bool)

(assert (=> start!79722 (= b_free!17743 (not b_next!17743))))

(declare-fun tp!61685 () Bool)

(declare-fun b_and!29095 () Bool)

(assert (=> start!79722 (= tp!61685 b_and!29095)))

(declare-fun b!937388 () Bool)

(declare-fun e!526419 () Bool)

(declare-fun e!526417 () Bool)

(assert (=> b!937388 (= e!526419 e!526417)))

(declare-fun res!631009 () Bool)

(assert (=> b!937388 (=> (not res!631009) (not e!526417))))

(declare-datatypes ((V!31967 0))(
  ( (V!31968 (val!10176 Int)) )
))
(declare-datatypes ((tuple2!13476 0))(
  ( (tuple2!13477 (_1!6748 (_ BitVec 64)) (_2!6748 V!31967)) )
))
(declare-datatypes ((List!19284 0))(
  ( (Nil!19281) (Cons!19280 (h!20426 tuple2!13476) (t!27579 List!19284)) )
))
(declare-datatypes ((ListLongMap!12187 0))(
  ( (ListLongMap!12188 (toList!6109 List!19284)) )
))
(declare-fun lt!423032 () ListLongMap!12187)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5119 (ListLongMap!12187 (_ BitVec 64)) Bool)

(assert (=> b!937388 (= res!631009 (contains!5119 lt!423032 k!1099))))

(declare-datatypes ((array!56466 0))(
  ( (array!56467 (arr!27169 (Array (_ BitVec 32) (_ BitVec 64))) (size!27629 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56466)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9644 0))(
  ( (ValueCellFull!9644 (v!12701 V!31967)) (EmptyCell!9644) )
))
(declare-datatypes ((array!56468 0))(
  ( (array!56469 (arr!27170 (Array (_ BitVec 32) ValueCell!9644)) (size!27630 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56468)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31967)

(declare-fun minValue!1173 () V!31967)

(declare-fun getCurrentListMap!3298 (array!56466 array!56468 (_ BitVec 32) (_ BitVec 32) V!31967 V!31967 (_ BitVec 32) Int) ListLongMap!12187)

(assert (=> b!937388 (= lt!423032 (getCurrentListMap!3298 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!937389 () Bool)

(declare-fun e!526416 () Bool)

(declare-fun tp_is_empty!20251 () Bool)

(assert (=> b!937389 (= e!526416 tp_is_empty!20251)))

(declare-fun b!937390 () Bool)

(declare-fun e!526415 () Bool)

(declare-fun arrayContainsKey!0 (array!56466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!937390 (= e!526415 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapIsEmpty!32148 () Bool)

(declare-fun mapRes!32148 () Bool)

(assert (=> mapIsEmpty!32148 mapRes!32148))

(declare-fun b!937391 () Bool)

(declare-fun res!631013 () Bool)

(assert (=> b!937391 (=> (not res!631013) (not e!526419))))

(declare-datatypes ((List!19285 0))(
  ( (Nil!19282) (Cons!19281 (h!20427 (_ BitVec 64)) (t!27580 List!19285)) )
))
(declare-fun arrayNoDuplicates!0 (array!56466 (_ BitVec 32) List!19285) Bool)

(assert (=> b!937391 (= res!631013 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19282))))

(declare-fun res!631008 () Bool)

(assert (=> start!79722 (=> (not res!631008) (not e!526419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79722 (= res!631008 (validMask!0 mask!1881))))

(assert (=> start!79722 e!526419))

(assert (=> start!79722 true))

(assert (=> start!79722 tp_is_empty!20251))

(declare-fun e!526423 () Bool)

(declare-fun array_inv!21094 (array!56468) Bool)

(assert (=> start!79722 (and (array_inv!21094 _values!1231) e!526423)))

(assert (=> start!79722 tp!61685))

(declare-fun array_inv!21095 (array!56466) Bool)

(assert (=> start!79722 (array_inv!21095 _keys!1487)))

(declare-fun b!937392 () Bool)

(declare-fun e!526420 () Bool)

(assert (=> b!937392 (= e!526417 e!526420)))

(declare-fun res!631007 () Bool)

(assert (=> b!937392 (=> (not res!631007) (not e!526420))))

(declare-fun v!791 () V!31967)

(declare-fun lt!423035 () V!31967)

(assert (=> b!937392 (= res!631007 (and (= lt!423035 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun apply!887 (ListLongMap!12187 (_ BitVec 64)) V!31967)

(assert (=> b!937392 (= lt!423035 (apply!887 lt!423032 k!1099))))

(declare-fun b!937393 () Bool)

(assert (=> b!937393 (= e!526415 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!937394 () Bool)

(declare-fun e!526421 () Bool)

(assert (=> b!937394 (= e!526421 tp_is_empty!20251)))

(declare-fun b!937395 () Bool)

(declare-datatypes ((Unit!31661 0))(
  ( (Unit!31662) )
))
(declare-fun e!526418 () Unit!31661)

(declare-fun Unit!31663 () Unit!31661)

(assert (=> b!937395 (= e!526418 Unit!31663)))

(declare-fun b!937396 () Bool)

(declare-fun e!526422 () Unit!31661)

(assert (=> b!937396 (= e!526422 e!526418)))

(declare-fun lt!423028 () (_ BitVec 64))

(assert (=> b!937396 (= lt!423028 (select (arr!27169 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97514 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937396 (= c!97514 (validKeyInArray!0 lt!423028))))

(declare-fun b!937397 () Bool)

(declare-fun Unit!31664 () Unit!31661)

(assert (=> b!937397 (= e!526422 Unit!31664)))

(declare-fun b!937398 () Bool)

(declare-fun lt!423037 () ListLongMap!12187)

(assert (=> b!937398 (= (apply!887 lt!423037 k!1099) lt!423035)))

(declare-fun lt!423030 () Unit!31661)

(declare-fun lt!423025 () V!31967)

(declare-fun addApplyDifferent!435 (ListLongMap!12187 (_ BitVec 64) V!31967 (_ BitVec 64)) Unit!31661)

(assert (=> b!937398 (= lt!423030 (addApplyDifferent!435 lt!423032 lt!423028 lt!423025 k!1099))))

(assert (=> b!937398 (not (= lt!423028 k!1099))))

(declare-fun lt!423031 () Unit!31661)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56466 (_ BitVec 64) (_ BitVec 32) List!19285) Unit!31661)

(assert (=> b!937398 (= lt!423031 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19282))))

(assert (=> b!937398 e!526415))

(declare-fun c!97512 () Bool)

(assert (=> b!937398 (= c!97512 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!423027 () Unit!31661)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!318 (array!56466 array!56468 (_ BitVec 32) (_ BitVec 32) V!31967 V!31967 (_ BitVec 64) (_ BitVec 32) Int) Unit!31661)

(assert (=> b!937398 (= lt!423027 (lemmaListMapContainsThenArrayContainsFrom!318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!937398 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19282)))

(declare-fun lt!423036 () Unit!31661)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56466 (_ BitVec 32) (_ BitVec 32)) Unit!31661)

(assert (=> b!937398 (= lt!423036 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!937398 (contains!5119 lt!423037 k!1099)))

(declare-fun lt!423033 () tuple2!13476)

(declare-fun +!2805 (ListLongMap!12187 tuple2!13476) ListLongMap!12187)

(assert (=> b!937398 (= lt!423037 (+!2805 lt!423032 lt!423033))))

(declare-fun lt!423034 () Unit!31661)

(declare-fun addStillContains!561 (ListLongMap!12187 (_ BitVec 64) V!31967 (_ BitVec 64)) Unit!31661)

(assert (=> b!937398 (= lt!423034 (addStillContains!561 lt!423032 lt!423028 lt!423025 k!1099))))

(assert (=> b!937398 (= (getCurrentListMap!3298 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2805 (getCurrentListMap!3298 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423033))))

(assert (=> b!937398 (= lt!423033 (tuple2!13477 lt!423028 lt!423025))))

(declare-fun get!14347 (ValueCell!9644 V!31967) V!31967)

(declare-fun dynLambda!1644 (Int (_ BitVec 64)) V!31967)

(assert (=> b!937398 (= lt!423025 (get!14347 (select (arr!27170 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1644 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!423029 () Unit!31661)

(declare-fun lemmaListMapRecursiveValidKeyArray!240 (array!56466 array!56468 (_ BitVec 32) (_ BitVec 32) V!31967 V!31967 (_ BitVec 32) Int) Unit!31661)

(assert (=> b!937398 (= lt!423029 (lemmaListMapRecursiveValidKeyArray!240 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!937398 (= e!526418 lt!423030)))

(declare-fun mapNonEmpty!32148 () Bool)

(declare-fun tp!61686 () Bool)

(assert (=> mapNonEmpty!32148 (= mapRes!32148 (and tp!61686 e!526416))))

(declare-fun mapValue!32148 () ValueCell!9644)

(declare-fun mapRest!32148 () (Array (_ BitVec 32) ValueCell!9644))

(declare-fun mapKey!32148 () (_ BitVec 32))

(assert (=> mapNonEmpty!32148 (= (arr!27170 _values!1231) (store mapRest!32148 mapKey!32148 mapValue!32148))))

(declare-fun b!937399 () Bool)

(assert (=> b!937399 (= e!526423 (and e!526421 mapRes!32148))))

(declare-fun condMapEmpty!32148 () Bool)

(declare-fun mapDefault!32148 () ValueCell!9644)


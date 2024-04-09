; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78952 () Bool)

(assert start!78952)

(declare-fun b_free!17137 () Bool)

(declare-fun b_next!17137 () Bool)

(assert (=> start!78952 (= b_free!17137 (not b_next!17137))))

(declare-fun tp!59853 () Bool)

(declare-fun b_and!28029 () Bool)

(assert (=> start!78952 (= tp!59853 b_and!28029)))

(declare-fun mapIsEmpty!31224 () Bool)

(declare-fun mapRes!31224 () Bool)

(assert (=> mapIsEmpty!31224 mapRes!31224))

(declare-fun b!922791 () Bool)

(declare-fun res!622378 () Bool)

(declare-fun e!517786 () Bool)

(assert (=> b!922791 (=> (not res!622378) (not e!517786))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922791 (= res!622378 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!622385 () Bool)

(declare-fun e!517783 () Bool)

(assert (=> start!78952 (=> (not res!622385) (not e!517783))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78952 (= res!622385 (validMask!0 mask!1881))))

(assert (=> start!78952 e!517783))

(assert (=> start!78952 true))

(declare-fun tp_is_empty!19645 () Bool)

(assert (=> start!78952 tp_is_empty!19645))

(declare-datatypes ((V!31159 0))(
  ( (V!31160 (val!9873 Int)) )
))
(declare-datatypes ((ValueCell!9341 0))(
  ( (ValueCellFull!9341 (v!12391 V!31159)) (EmptyCell!9341) )
))
(declare-datatypes ((array!55276 0))(
  ( (array!55277 (arr!26579 (Array (_ BitVec 32) ValueCell!9341)) (size!27039 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55276)

(declare-fun e!517781 () Bool)

(declare-fun array_inv!20694 (array!55276) Bool)

(assert (=> start!78952 (and (array_inv!20694 _values!1231) e!517781)))

(assert (=> start!78952 tp!59853))

(declare-datatypes ((array!55278 0))(
  ( (array!55279 (arr!26580 (Array (_ BitVec 32) (_ BitVec 64))) (size!27040 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55278)

(declare-fun array_inv!20695 (array!55278) Bool)

(assert (=> start!78952 (array_inv!20695 _keys!1487)))

(declare-fun b!922792 () Bool)

(declare-fun res!622379 () Bool)

(assert (=> b!922792 (=> (not res!622379) (not e!517783))))

(assert (=> b!922792 (= res!622379 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27040 _keys!1487))))))

(declare-fun b!922793 () Bool)

(assert (=> b!922793 (= e!517783 e!517786)))

(declare-fun res!622381 () Bool)

(assert (=> b!922793 (=> (not res!622381) (not e!517786))))

(declare-datatypes ((tuple2!12954 0))(
  ( (tuple2!12955 (_1!6487 (_ BitVec 64)) (_2!6487 V!31159)) )
))
(declare-datatypes ((List!18791 0))(
  ( (Nil!18788) (Cons!18787 (h!19933 tuple2!12954) (t!26666 List!18791)) )
))
(declare-datatypes ((ListLongMap!11665 0))(
  ( (ListLongMap!11666 (toList!5848 List!18791)) )
))
(declare-fun lt!414474 () ListLongMap!11665)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4873 (ListLongMap!11665 (_ BitVec 64)) Bool)

(assert (=> b!922793 (= res!622381 (contains!4873 lt!414474 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31159)

(declare-fun minValue!1173 () V!31159)

(declare-fun getCurrentListMap!3067 (array!55278 array!55276 (_ BitVec 32) (_ BitVec 32) V!31159 V!31159 (_ BitVec 32) Int) ListLongMap!11665)

(assert (=> b!922793 (= lt!414474 (getCurrentListMap!3067 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922794 () Bool)

(declare-fun e!517782 () Bool)

(assert (=> b!922794 (= e!517782 (not (bvsle from!1844 (size!27040 _keys!1487))))))

(declare-fun lt!414469 () (_ BitVec 64))

(assert (=> b!922794 (not (= lt!414469 k!1099))))

(declare-datatypes ((Unit!31127 0))(
  ( (Unit!31128) )
))
(declare-fun lt!414477 () Unit!31127)

(declare-datatypes ((List!18792 0))(
  ( (Nil!18789) (Cons!18788 (h!19934 (_ BitVec 64)) (t!26667 List!18792)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55278 (_ BitVec 64) (_ BitVec 32) List!18792) Unit!31127)

(assert (=> b!922794 (= lt!414477 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18789))))

(declare-fun e!517784 () Bool)

(assert (=> b!922794 e!517784))

(declare-fun c!96125 () Bool)

(assert (=> b!922794 (= c!96125 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414470 () Unit!31127)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!206 (array!55278 array!55276 (_ BitVec 32) (_ BitVec 32) V!31159 V!31159 (_ BitVec 64) (_ BitVec 32) Int) Unit!31127)

(assert (=> b!922794 (= lt!414470 (lemmaListMapContainsThenArrayContainsFrom!206 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55278 (_ BitVec 32) List!18792) Bool)

(assert (=> b!922794 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18789)))

(declare-fun lt!414471 () Unit!31127)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55278 (_ BitVec 32) (_ BitVec 32)) Unit!31127)

(assert (=> b!922794 (= lt!414471 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414472 () tuple2!12954)

(declare-fun +!2660 (ListLongMap!11665 tuple2!12954) ListLongMap!11665)

(assert (=> b!922794 (contains!4873 (+!2660 lt!414474 lt!414472) k!1099)))

(declare-fun lt!414475 () Unit!31127)

(declare-fun lt!414473 () V!31159)

(declare-fun addStillContains!422 (ListLongMap!11665 (_ BitVec 64) V!31159 (_ BitVec 64)) Unit!31127)

(assert (=> b!922794 (= lt!414475 (addStillContains!422 lt!414474 lt!414469 lt!414473 k!1099))))

(assert (=> b!922794 (= (getCurrentListMap!3067 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2660 (getCurrentListMap!3067 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414472))))

(assert (=> b!922794 (= lt!414472 (tuple2!12955 lt!414469 lt!414473))))

(declare-fun get!13985 (ValueCell!9341 V!31159) V!31159)

(declare-fun dynLambda!1499 (Int (_ BitVec 64)) V!31159)

(assert (=> b!922794 (= lt!414473 (get!13985 (select (arr!26579 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1499 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414476 () Unit!31127)

(declare-fun lemmaListMapRecursiveValidKeyArray!95 (array!55278 array!55276 (_ BitVec 32) (_ BitVec 32) V!31159 V!31159 (_ BitVec 32) Int) Unit!31127)

(assert (=> b!922794 (= lt!414476 (lemmaListMapRecursiveValidKeyArray!95 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922795 () Bool)

(declare-fun res!622382 () Bool)

(assert (=> b!922795 (=> (not res!622382) (not e!517786))))

(declare-fun v!791 () V!31159)

(declare-fun apply!653 (ListLongMap!11665 (_ BitVec 64)) V!31159)

(assert (=> b!922795 (= res!622382 (= (apply!653 lt!414474 k!1099) v!791))))

(declare-fun b!922796 () Bool)

(declare-fun e!517785 () Bool)

(assert (=> b!922796 (= e!517781 (and e!517785 mapRes!31224))))

(declare-fun condMapEmpty!31224 () Bool)

(declare-fun mapDefault!31224 () ValueCell!9341)


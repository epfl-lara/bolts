; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79696 () Bool)

(assert start!79696)

(declare-fun b_free!17717 () Bool)

(declare-fun b_next!17717 () Bool)

(assert (=> start!79696 (= b_free!17717 (not b_next!17717))))

(declare-fun tp!61608 () Bool)

(declare-fun b_and!29043 () Bool)

(assert (=> start!79696 (= tp!61608 b_and!29043)))

(declare-fun b!936738 () Bool)

(declare-fun e!526029 () Bool)

(assert (=> b!936738 (= e!526029 false)))

(declare-datatypes ((Unit!31617 0))(
  ( (Unit!31618) )
))
(declare-fun lt!422527 () Unit!31617)

(declare-fun e!526030 () Unit!31617)

(assert (=> b!936738 (= lt!422527 e!526030)))

(declare-fun c!97396 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936738 (= c!97396 (validKeyInArray!0 k!1099))))

(declare-fun b!936739 () Bool)

(declare-fun res!630740 () Bool)

(declare-fun e!526026 () Bool)

(assert (=> b!936739 (=> (not res!630740) (not e!526026))))

(declare-datatypes ((array!56414 0))(
  ( (array!56415 (arr!27143 (Array (_ BitVec 32) (_ BitVec 64))) (size!27603 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56414)

(declare-datatypes ((List!19259 0))(
  ( (Nil!19256) (Cons!19255 (h!20401 (_ BitVec 64)) (t!27528 List!19259)) )
))
(declare-fun arrayNoDuplicates!0 (array!56414 (_ BitVec 32) List!19259) Bool)

(assert (=> b!936739 (= res!630740 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19256))))

(declare-fun b!936740 () Bool)

(declare-fun e!526033 () Unit!31617)

(declare-fun Unit!31619 () Unit!31617)

(assert (=> b!936740 (= e!526033 Unit!31619)))

(declare-fun b!936742 () Bool)

(declare-fun e!526032 () Bool)

(declare-fun tp_is_empty!20225 () Bool)

(assert (=> b!936742 (= e!526032 tp_is_empty!20225)))

(declare-fun b!936743 () Bool)

(declare-datatypes ((V!31931 0))(
  ( (V!31932 (val!10163 Int)) )
))
(declare-datatypes ((tuple2!13452 0))(
  ( (tuple2!13453 (_1!6736 (_ BitVec 64)) (_2!6736 V!31931)) )
))
(declare-datatypes ((List!19260 0))(
  ( (Nil!19257) (Cons!19256 (h!20402 tuple2!13452) (t!27529 List!19260)) )
))
(declare-datatypes ((ListLongMap!12163 0))(
  ( (ListLongMap!12164 (toList!6097 List!19260)) )
))
(declare-fun lt!422523 () ListLongMap!12163)

(declare-fun lt!422524 () V!31931)

(declare-fun apply!875 (ListLongMap!12163 (_ BitVec 64)) V!31931)

(assert (=> b!936743 (= (apply!875 lt!422523 k!1099) lt!422524)))

(declare-fun lt!422522 () Unit!31617)

(declare-fun lt!422528 () V!31931)

(declare-fun lt!422529 () ListLongMap!12163)

(declare-fun lt!422520 () (_ BitVec 64))

(declare-fun addApplyDifferent!423 (ListLongMap!12163 (_ BitVec 64) V!31931 (_ BitVec 64)) Unit!31617)

(assert (=> b!936743 (= lt!422522 (addApplyDifferent!423 lt!422529 lt!422520 lt!422528 k!1099))))

(assert (=> b!936743 (not (= lt!422520 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!422525 () Unit!31617)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56414 (_ BitVec 64) (_ BitVec 32) List!19259) Unit!31617)

(assert (=> b!936743 (= lt!422525 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19256))))

(declare-fun e!526034 () Bool)

(assert (=> b!936743 e!526034))

(declare-fun c!97395 () Bool)

(assert (=> b!936743 (= c!97395 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422519 () Unit!31617)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9631 0))(
  ( (ValueCellFull!9631 (v!12688 V!31931)) (EmptyCell!9631) )
))
(declare-datatypes ((array!56416 0))(
  ( (array!56417 (arr!27144 (Array (_ BitVec 32) ValueCell!9631)) (size!27604 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56416)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31931)

(declare-fun minValue!1173 () V!31931)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!306 (array!56414 array!56416 (_ BitVec 32) (_ BitVec 32) V!31931 V!31931 (_ BitVec 64) (_ BitVec 32) Int) Unit!31617)

(assert (=> b!936743 (= lt!422519 (lemmaListMapContainsThenArrayContainsFrom!306 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!936743 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19256)))

(declare-fun lt!422526 () Unit!31617)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56414 (_ BitVec 32) (_ BitVec 32)) Unit!31617)

(assert (=> b!936743 (= lt!422526 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5107 (ListLongMap!12163 (_ BitVec 64)) Bool)

(assert (=> b!936743 (contains!5107 lt!422523 k!1099)))

(declare-fun lt!422521 () tuple2!13452)

(declare-fun +!2793 (ListLongMap!12163 tuple2!13452) ListLongMap!12163)

(assert (=> b!936743 (= lt!422523 (+!2793 lt!422529 lt!422521))))

(declare-fun lt!422530 () Unit!31617)

(declare-fun addStillContains!549 (ListLongMap!12163 (_ BitVec 64) V!31931 (_ BitVec 64)) Unit!31617)

(assert (=> b!936743 (= lt!422530 (addStillContains!549 lt!422529 lt!422520 lt!422528 k!1099))))

(declare-fun getCurrentListMap!3286 (array!56414 array!56416 (_ BitVec 32) (_ BitVec 32) V!31931 V!31931 (_ BitVec 32) Int) ListLongMap!12163)

(assert (=> b!936743 (= (getCurrentListMap!3286 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2793 (getCurrentListMap!3286 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422521))))

(assert (=> b!936743 (= lt!422521 (tuple2!13453 lt!422520 lt!422528))))

(declare-fun get!14325 (ValueCell!9631 V!31931) V!31931)

(declare-fun dynLambda!1632 (Int (_ BitVec 64)) V!31931)

(assert (=> b!936743 (= lt!422528 (get!14325 (select (arr!27144 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1632 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422518 () Unit!31617)

(declare-fun lemmaListMapRecursiveValidKeyArray!228 (array!56414 array!56416 (_ BitVec 32) (_ BitVec 32) V!31931 V!31931 (_ BitVec 32) Int) Unit!31617)

(assert (=> b!936743 (= lt!422518 (lemmaListMapRecursiveValidKeyArray!228 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!936743 (= e!526033 lt!422522)))

(declare-fun b!936744 () Bool)

(declare-fun e!526025 () Bool)

(assert (=> b!936744 (= e!526026 e!526025)))

(declare-fun res!630738 () Bool)

(assert (=> b!936744 (=> (not res!630738) (not e!526025))))

(assert (=> b!936744 (= res!630738 (contains!5107 lt!422529 k!1099))))

(assert (=> b!936744 (= lt!422529 (getCurrentListMap!3286 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936745 () Bool)

(declare-fun e!526031 () Bool)

(declare-fun e!526027 () Bool)

(declare-fun mapRes!32109 () Bool)

(assert (=> b!936745 (= e!526031 (and e!526027 mapRes!32109))))

(declare-fun condMapEmpty!32109 () Bool)

(declare-fun mapDefault!32109 () ValueCell!9631)


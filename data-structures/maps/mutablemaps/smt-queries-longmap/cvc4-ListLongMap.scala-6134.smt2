; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78944 () Bool)

(assert start!78944)

(declare-fun b_free!17129 () Bool)

(declare-fun b_next!17129 () Bool)

(assert (=> start!78944 (= b_free!17129 (not b_next!17129))))

(declare-fun tp!59828 () Bool)

(declare-fun b_and!28013 () Bool)

(assert (=> start!78944 (= tp!59828 b_and!28013)))

(declare-fun b!922603 () Bool)

(declare-fun e!517690 () Bool)

(declare-fun tp_is_empty!19637 () Bool)

(assert (=> b!922603 (= e!517690 tp_is_empty!19637)))

(declare-fun b!922604 () Bool)

(declare-fun res!622265 () Bool)

(declare-fun e!517687 () Bool)

(assert (=> b!922604 (=> (not res!622265) (not e!517687))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922604 (= res!622265 (validKeyInArray!0 k!1099))))

(declare-fun b!922605 () Bool)

(declare-fun e!517691 () Bool)

(assert (=> b!922605 (= e!517687 e!517691)))

(declare-fun res!622256 () Bool)

(assert (=> b!922605 (=> (not res!622256) (not e!517691))))

(declare-fun lt!414361 () (_ BitVec 64))

(assert (=> b!922605 (= res!622256 (validKeyInArray!0 lt!414361))))

(declare-datatypes ((array!55260 0))(
  ( (array!55261 (arr!26571 (Array (_ BitVec 32) (_ BitVec 64))) (size!27031 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55260)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922605 (= lt!414361 (select (arr!26571 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922607 () Bool)

(assert (=> b!922607 (= e!517691 (not true))))

(assert (=> b!922607 (not (= lt!414361 k!1099))))

(declare-datatypes ((Unit!31119 0))(
  ( (Unit!31120) )
))
(declare-fun lt!414363 () Unit!31119)

(declare-datatypes ((List!18783 0))(
  ( (Nil!18780) (Cons!18779 (h!19925 (_ BitVec 64)) (t!26650 List!18783)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55260 (_ BitVec 64) (_ BitVec 32) List!18783) Unit!31119)

(assert (=> b!922607 (= lt!414363 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18780))))

(declare-fun e!517689 () Bool)

(assert (=> b!922607 e!517689))

(declare-fun c!96113 () Bool)

(assert (=> b!922607 (= c!96113 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31147 0))(
  ( (V!31148 (val!9869 Int)) )
))
(declare-datatypes ((ValueCell!9337 0))(
  ( (ValueCellFull!9337 (v!12387 V!31147)) (EmptyCell!9337) )
))
(declare-datatypes ((array!55262 0))(
  ( (array!55263 (arr!26572 (Array (_ BitVec 32) ValueCell!9337)) (size!27032 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55262)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!414369 () Unit!31119)

(declare-fun zeroValue!1173 () V!31147)

(declare-fun minValue!1173 () V!31147)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!202 (array!55260 array!55262 (_ BitVec 32) (_ BitVec 32) V!31147 V!31147 (_ BitVec 64) (_ BitVec 32) Int) Unit!31119)

(assert (=> b!922607 (= lt!414369 (lemmaListMapContainsThenArrayContainsFrom!202 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55260 (_ BitVec 32) List!18783) Bool)

(assert (=> b!922607 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18780)))

(declare-fun lt!414368 () Unit!31119)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55260 (_ BitVec 32) (_ BitVec 32)) Unit!31119)

(assert (=> b!922607 (= lt!414368 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12946 0))(
  ( (tuple2!12947 (_1!6483 (_ BitVec 64)) (_2!6483 V!31147)) )
))
(declare-datatypes ((List!18784 0))(
  ( (Nil!18781) (Cons!18780 (h!19926 tuple2!12946) (t!26651 List!18784)) )
))
(declare-datatypes ((ListLongMap!11657 0))(
  ( (ListLongMap!11658 (toList!5844 List!18784)) )
))
(declare-fun lt!414366 () ListLongMap!11657)

(declare-fun lt!414367 () tuple2!12946)

(declare-fun contains!4869 (ListLongMap!11657 (_ BitVec 64)) Bool)

(declare-fun +!2656 (ListLongMap!11657 tuple2!12946) ListLongMap!11657)

(assert (=> b!922607 (contains!4869 (+!2656 lt!414366 lt!414367) k!1099)))

(declare-fun lt!414365 () Unit!31119)

(declare-fun lt!414364 () V!31147)

(declare-fun addStillContains!418 (ListLongMap!11657 (_ BitVec 64) V!31147 (_ BitVec 64)) Unit!31119)

(assert (=> b!922607 (= lt!414365 (addStillContains!418 lt!414366 lt!414361 lt!414364 k!1099))))

(declare-fun getCurrentListMap!3063 (array!55260 array!55262 (_ BitVec 32) (_ BitVec 32) V!31147 V!31147 (_ BitVec 32) Int) ListLongMap!11657)

(assert (=> b!922607 (= (getCurrentListMap!3063 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2656 (getCurrentListMap!3063 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414367))))

(assert (=> b!922607 (= lt!414367 (tuple2!12947 lt!414361 lt!414364))))

(declare-fun get!13977 (ValueCell!9337 V!31147) V!31147)

(declare-fun dynLambda!1495 (Int (_ BitVec 64)) V!31147)

(assert (=> b!922607 (= lt!414364 (get!13977 (select (arr!26572 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1495 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414362 () Unit!31119)

(declare-fun lemmaListMapRecursiveValidKeyArray!91 (array!55260 array!55262 (_ BitVec 32) (_ BitVec 32) V!31147 V!31147 (_ BitVec 32) Int) Unit!31119)

(assert (=> b!922607 (= lt!414362 (lemmaListMapRecursiveValidKeyArray!91 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922608 () Bool)

(declare-fun res!622259 () Bool)

(declare-fun e!517685 () Bool)

(assert (=> b!922608 (=> (not res!622259) (not e!517685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55260 (_ BitVec 32)) Bool)

(assert (=> b!922608 (= res!622259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922609 () Bool)

(declare-fun res!622263 () Bool)

(assert (=> b!922609 (=> (not res!622263) (not e!517687))))

(assert (=> b!922609 (= res!622263 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922610 () Bool)

(declare-fun res!622258 () Bool)

(assert (=> b!922610 (=> (not res!622258) (not e!517687))))

(declare-fun v!791 () V!31147)

(declare-fun apply!649 (ListLongMap!11657 (_ BitVec 64)) V!31147)

(assert (=> b!922610 (= res!622258 (= (apply!649 lt!414366 k!1099) v!791))))

(declare-fun b!922611 () Bool)

(declare-fun res!622260 () Bool)

(assert (=> b!922611 (=> (not res!622260) (not e!517685))))

(assert (=> b!922611 (= res!622260 (and (= (size!27032 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27031 _keys!1487) (size!27032 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31212 () Bool)

(declare-fun mapRes!31212 () Bool)

(declare-fun tp!59829 () Bool)

(declare-fun e!517688 () Bool)

(assert (=> mapNonEmpty!31212 (= mapRes!31212 (and tp!59829 e!517688))))

(declare-fun mapKey!31212 () (_ BitVec 32))

(declare-fun mapValue!31212 () ValueCell!9337)

(declare-fun mapRest!31212 () (Array (_ BitVec 32) ValueCell!9337))

(assert (=> mapNonEmpty!31212 (= (arr!26572 _values!1231) (store mapRest!31212 mapKey!31212 mapValue!31212))))

(declare-fun b!922612 () Bool)

(declare-fun res!622262 () Bool)

(assert (=> b!922612 (=> (not res!622262) (not e!517685))))

(assert (=> b!922612 (= res!622262 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27031 _keys!1487))))))

(declare-fun b!922613 () Bool)

(declare-fun arrayContainsKey!0 (array!55260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922613 (= e!517689 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!922614 () Bool)

(declare-fun e!517692 () Bool)

(assert (=> b!922614 (= e!517692 (and e!517690 mapRes!31212))))

(declare-fun condMapEmpty!31212 () Bool)

(declare-fun mapDefault!31212 () ValueCell!9337)


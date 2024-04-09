; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78796 () Bool)

(assert start!78796)

(declare-fun b_free!16981 () Bool)

(declare-fun b_next!16981 () Bool)

(assert (=> start!78796 (= b_free!16981 (not b_next!16981))))

(declare-fun tp!59384 () Bool)

(declare-fun b_and!27717 () Bool)

(assert (=> start!78796 (= tp!59384 b_and!27717)))

(declare-fun b!919040 () Bool)

(declare-fun e!515907 () Bool)

(assert (=> b!919040 (= e!515907 (not true))))

(declare-datatypes ((array!54970 0))(
  ( (array!54971 (arr!26426 (Array (_ BitVec 32) (_ BitVec 64))) (size!26886 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54970)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((List!18654 0))(
  ( (Nil!18651) (Cons!18650 (h!19796 (_ BitVec 64)) (t!26373 List!18654)) )
))
(declare-fun arrayNoDuplicates!0 (array!54970 (_ BitVec 32) List!18654) Bool)

(assert (=> b!919040 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18651)))

(declare-datatypes ((Unit!31013 0))(
  ( (Unit!31014) )
))
(declare-fun lt!412523 () Unit!31013)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!54970 (_ BitVec 32) (_ BitVec 32)) Unit!31013)

(assert (=> b!919040 (= lt!412523 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((V!30951 0))(
  ( (V!30952 (val!9795 Int)) )
))
(declare-datatypes ((tuple2!12812 0))(
  ( (tuple2!12813 (_1!6416 (_ BitVec 64)) (_2!6416 V!30951)) )
))
(declare-datatypes ((List!18655 0))(
  ( (Nil!18652) (Cons!18651 (h!19797 tuple2!12812) (t!26374 List!18655)) )
))
(declare-datatypes ((ListLongMap!11523 0))(
  ( (ListLongMap!11524 (toList!5777 List!18655)) )
))
(declare-fun lt!412527 () ListLongMap!11523)

(declare-fun lt!412521 () tuple2!12812)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4789 (ListLongMap!11523 (_ BitVec 64)) Bool)

(declare-fun +!2603 (ListLongMap!11523 tuple2!12812) ListLongMap!11523)

(assert (=> b!919040 (contains!4789 (+!2603 lt!412527 lt!412521) k!1099)))

(declare-fun lt!412526 () V!30951)

(declare-fun lt!412522 () (_ BitVec 64))

(declare-fun lt!412525 () Unit!31013)

(declare-fun addStillContains!365 (ListLongMap!11523 (_ BitVec 64) V!30951 (_ BitVec 64)) Unit!31013)

(assert (=> b!919040 (= lt!412525 (addStillContains!365 lt!412527 lt!412522 lt!412526 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9263 0))(
  ( (ValueCellFull!9263 (v!12313 V!30951)) (EmptyCell!9263) )
))
(declare-datatypes ((array!54972 0))(
  ( (array!54973 (arr!26427 (Array (_ BitVec 32) ValueCell!9263)) (size!26887 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54972)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30951)

(declare-fun minValue!1173 () V!30951)

(declare-fun getCurrentListMap!3001 (array!54970 array!54972 (_ BitVec 32) (_ BitVec 32) V!30951 V!30951 (_ BitVec 32) Int) ListLongMap!11523)

(assert (=> b!919040 (= (getCurrentListMap!3001 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2603 (getCurrentListMap!3001 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412521))))

(assert (=> b!919040 (= lt!412521 (tuple2!12813 lt!412522 lt!412526))))

(declare-fun get!13876 (ValueCell!9263 V!30951) V!30951)

(declare-fun dynLambda!1442 (Int (_ BitVec 64)) V!30951)

(assert (=> b!919040 (= lt!412526 (get!13876 (select (arr!26427 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1442 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412524 () Unit!31013)

(declare-fun lemmaListMapRecursiveValidKeyArray!38 (array!54970 array!54972 (_ BitVec 32) (_ BitVec 32) V!30951 V!30951 (_ BitVec 32) Int) Unit!31013)

(assert (=> b!919040 (= lt!412524 (lemmaListMapRecursiveValidKeyArray!38 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919041 () Bool)

(declare-fun res!619797 () Bool)

(declare-fun e!515909 () Bool)

(assert (=> b!919041 (=> (not res!619797) (not e!515909))))

(assert (=> b!919041 (= res!619797 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26886 _keys!1487))))))

(declare-fun b!919042 () Bool)

(declare-fun e!515908 () Bool)

(declare-fun tp_is_empty!19489 () Bool)

(assert (=> b!919042 (= e!515908 tp_is_empty!19489)))

(declare-fun b!919043 () Bool)

(declare-fun res!619798 () Bool)

(declare-fun e!515911 () Bool)

(assert (=> b!919043 (=> (not res!619798) (not e!515911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919043 (= res!619798 (validKeyInArray!0 k!1099))))

(declare-fun b!919045 () Bool)

(declare-fun e!515913 () Bool)

(declare-fun e!515910 () Bool)

(declare-fun mapRes!30990 () Bool)

(assert (=> b!919045 (= e!515913 (and e!515910 mapRes!30990))))

(declare-fun condMapEmpty!30990 () Bool)

(declare-fun mapDefault!30990 () ValueCell!9263)


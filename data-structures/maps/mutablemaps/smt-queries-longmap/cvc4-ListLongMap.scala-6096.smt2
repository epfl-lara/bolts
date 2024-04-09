; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78716 () Bool)

(assert start!78716)

(declare-fun b_free!16901 () Bool)

(declare-fun b_next!16901 () Bool)

(assert (=> start!78716 (= b_free!16901 (not b_next!16901))))

(declare-fun tp!59144 () Bool)

(declare-fun b_and!27557 () Bool)

(assert (=> start!78716 (= tp!59144 b_and!27557)))

(declare-fun b!917400 () Bool)

(declare-fun res!618594 () Bool)

(declare-fun e!515068 () Bool)

(assert (=> b!917400 (=> (not res!618594) (not e!515068))))

(declare-datatypes ((array!54810 0))(
  ( (array!54811 (arr!26346 (Array (_ BitVec 32) (_ BitVec 64))) (size!26806 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54810)

(declare-datatypes ((List!18591 0))(
  ( (Nil!18588) (Cons!18587 (h!19733 (_ BitVec 64)) (t!26230 List!18591)) )
))
(declare-fun arrayNoDuplicates!0 (array!54810 (_ BitVec 32) List!18591) Bool)

(assert (=> b!917400 (= res!618594 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18588))))

(declare-fun b!917401 () Bool)

(declare-fun res!618596 () Bool)

(declare-fun e!515067 () Bool)

(assert (=> b!917401 (=> (not res!618596) (not e!515067))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917401 (= res!618596 (validKeyInArray!0 k!1099))))

(declare-fun b!917402 () Bool)

(declare-fun e!515071 () Bool)

(declare-fun tp_is_empty!19409 () Bool)

(assert (=> b!917402 (= e!515071 tp_is_empty!19409)))

(declare-fun b!917403 () Bool)

(declare-fun e!515073 () Bool)

(assert (=> b!917403 (= e!515073 (not true))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30843 0))(
  ( (V!30844 (val!9755 Int)) )
))
(declare-datatypes ((ValueCell!9223 0))(
  ( (ValueCellFull!9223 (v!12273 V!30843)) (EmptyCell!9223) )
))
(declare-datatypes ((array!54812 0))(
  ( (array!54813 (arr!26347 (Array (_ BitVec 32) ValueCell!9223)) (size!26807 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54812)

(declare-fun zeroValue!1173 () V!30843)

(declare-fun minValue!1173 () V!30843)

(declare-fun lt!411982 () (_ BitVec 64))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((tuple2!12740 0))(
  ( (tuple2!12741 (_1!6380 (_ BitVec 64)) (_2!6380 V!30843)) )
))
(declare-datatypes ((List!18592 0))(
  ( (Nil!18589) (Cons!18588 (h!19734 tuple2!12740) (t!26231 List!18592)) )
))
(declare-datatypes ((ListLongMap!11451 0))(
  ( (ListLongMap!11452 (toList!5741 List!18592)) )
))
(declare-fun getCurrentListMap!2967 (array!54810 array!54812 (_ BitVec 32) (_ BitVec 32) V!30843 V!30843 (_ BitVec 32) Int) ListLongMap!11451)

(declare-fun +!2573 (ListLongMap!11451 tuple2!12740) ListLongMap!11451)

(declare-fun get!13818 (ValueCell!9223 V!30843) V!30843)

(declare-fun dynLambda!1412 (Int (_ BitVec 64)) V!30843)

(assert (=> b!917403 (= (getCurrentListMap!2967 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2573 (getCurrentListMap!2967 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12741 lt!411982 (get!13818 (select (arr!26347 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1412 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30953 0))(
  ( (Unit!30954) )
))
(declare-fun lt!411983 () Unit!30953)

(declare-fun lemmaListMapRecursiveValidKeyArray!8 (array!54810 array!54812 (_ BitVec 32) (_ BitVec 32) V!30843 V!30843 (_ BitVec 32) Int) Unit!30953)

(assert (=> b!917403 (= lt!411983 (lemmaListMapRecursiveValidKeyArray!8 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!30870 () Bool)

(declare-fun mapRes!30870 () Bool)

(assert (=> mapIsEmpty!30870 mapRes!30870))

(declare-fun b!917404 () Bool)

(declare-fun e!515072 () Bool)

(assert (=> b!917404 (= e!515072 tp_is_empty!19409)))

(declare-fun b!917405 () Bool)

(declare-fun e!515070 () Bool)

(assert (=> b!917405 (= e!515070 (and e!515071 mapRes!30870))))

(declare-fun condMapEmpty!30870 () Bool)

(declare-fun mapDefault!30870 () ValueCell!9223)


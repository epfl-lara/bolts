; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78722 () Bool)

(assert start!78722)

(declare-fun b_free!16907 () Bool)

(declare-fun b_next!16907 () Bool)

(assert (=> start!78722 (= b_free!16907 (not b_next!16907))))

(declare-fun tp!59162 () Bool)

(declare-fun b_and!27569 () Bool)

(assert (=> start!78722 (= tp!59162 b_and!27569)))

(declare-fun b!917523 () Bool)

(declare-fun res!618686 () Bool)

(declare-fun e!515131 () Bool)

(assert (=> b!917523 (=> (not res!618686) (not e!515131))))

(declare-datatypes ((array!54822 0))(
  ( (array!54823 (arr!26352 (Array (_ BitVec 32) (_ BitVec 64))) (size!26812 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54822)

(declare-datatypes ((List!18597 0))(
  ( (Nil!18594) (Cons!18593 (h!19739 (_ BitVec 64)) (t!26242 List!18597)) )
))
(declare-fun arrayNoDuplicates!0 (array!54822 (_ BitVec 32) List!18597) Bool)

(assert (=> b!917523 (= res!618686 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18594))))

(declare-fun b!917524 () Bool)

(declare-fun e!515135 () Bool)

(declare-fun tp_is_empty!19415 () Bool)

(assert (=> b!917524 (= e!515135 tp_is_empty!19415)))

(declare-fun b!917525 () Bool)

(declare-fun res!618685 () Bool)

(assert (=> b!917525 (=> (not res!618685) (not e!515131))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917525 (= res!618685 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26812 _keys!1487))))))

(declare-fun b!917526 () Bool)

(declare-fun e!515130 () Bool)

(assert (=> b!917526 (= e!515131 e!515130)))

(declare-fun res!618684 () Bool)

(assert (=> b!917526 (=> (not res!618684) (not e!515130))))

(declare-datatypes ((V!30851 0))(
  ( (V!30852 (val!9758 Int)) )
))
(declare-datatypes ((tuple2!12746 0))(
  ( (tuple2!12747 (_1!6383 (_ BitVec 64)) (_2!6383 V!30851)) )
))
(declare-datatypes ((List!18598 0))(
  ( (Nil!18595) (Cons!18594 (h!19740 tuple2!12746) (t!26243 List!18598)) )
))
(declare-datatypes ((ListLongMap!11457 0))(
  ( (ListLongMap!11458 (toList!5744 List!18598)) )
))
(declare-fun lt!412011 () ListLongMap!11457)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4759 (ListLongMap!11457 (_ BitVec 64)) Bool)

(assert (=> b!917526 (= res!618684 (contains!4759 lt!412011 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9226 0))(
  ( (ValueCellFull!9226 (v!12276 V!30851)) (EmptyCell!9226) )
))
(declare-datatypes ((array!54824 0))(
  ( (array!54825 (arr!26353 (Array (_ BitVec 32) ValueCell!9226)) (size!26813 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54824)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30851)

(declare-fun minValue!1173 () V!30851)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!2970 (array!54822 array!54824 (_ BitVec 32) (_ BitVec 32) V!30851 V!30851 (_ BitVec 32) Int) ListLongMap!11457)

(assert (=> b!917526 (= lt!412011 (getCurrentListMap!2970 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917527 () Bool)

(declare-fun res!618683 () Bool)

(assert (=> b!917527 (=> (not res!618683) (not e!515130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917527 (= res!618683 (validKeyInArray!0 k!1099))))

(declare-fun b!917528 () Bool)

(declare-fun e!515134 () Bool)

(assert (=> b!917528 (= e!515130 e!515134)))

(declare-fun res!618690 () Bool)

(assert (=> b!917528 (=> (not res!618690) (not e!515134))))

(declare-fun lt!412010 () (_ BitVec 64))

(assert (=> b!917528 (= res!618690 (validKeyInArray!0 lt!412010))))

(assert (=> b!917528 (= lt!412010 (select (arr!26352 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!30879 () Bool)

(declare-fun mapRes!30879 () Bool)

(assert (=> mapIsEmpty!30879 mapRes!30879))

(declare-fun res!618687 () Bool)

(assert (=> start!78722 (=> (not res!618687) (not e!515131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78722 (= res!618687 (validMask!0 mask!1881))))

(assert (=> start!78722 e!515131))

(assert (=> start!78722 true))

(assert (=> start!78722 tp_is_empty!19415))

(declare-fun e!515132 () Bool)

(declare-fun array_inv!20536 (array!54824) Bool)

(assert (=> start!78722 (and (array_inv!20536 _values!1231) e!515132)))

(assert (=> start!78722 tp!59162))

(declare-fun array_inv!20537 (array!54822) Bool)

(assert (=> start!78722 (array_inv!20537 _keys!1487)))

(declare-fun b!917529 () Bool)

(declare-fun res!618692 () Bool)

(assert (=> b!917529 (=> (not res!618692) (not e!515131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54822 (_ BitVec 32)) Bool)

(assert (=> b!917529 (= res!618692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917530 () Bool)

(declare-fun res!618691 () Bool)

(assert (=> b!917530 (=> (not res!618691) (not e!515131))))

(assert (=> b!917530 (= res!618691 (and (= (size!26813 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26812 _keys!1487) (size!26813 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917531 () Bool)

(declare-fun res!618688 () Bool)

(assert (=> b!917531 (=> (not res!618688) (not e!515130))))

(declare-fun v!791 () V!30851)

(declare-fun apply!568 (ListLongMap!11457 (_ BitVec 64)) V!30851)

(assert (=> b!917531 (= res!618688 (= (apply!568 lt!412011 k!1099) v!791))))

(declare-fun b!917532 () Bool)

(declare-fun e!515136 () Bool)

(assert (=> b!917532 (= e!515136 tp_is_empty!19415)))

(declare-fun b!917533 () Bool)

(declare-fun res!618689 () Bool)

(assert (=> b!917533 (=> (not res!618689) (not e!515130))))

(assert (=> b!917533 (= res!618689 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917534 () Bool)

(assert (=> b!917534 (= e!515134 (not true))))

(declare-fun +!2576 (ListLongMap!11457 tuple2!12746) ListLongMap!11457)

(declare-fun get!13823 (ValueCell!9226 V!30851) V!30851)

(declare-fun dynLambda!1415 (Int (_ BitVec 64)) V!30851)

(assert (=> b!917534 (= (getCurrentListMap!2970 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2576 (getCurrentListMap!2970 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12747 lt!412010 (get!13823 (select (arr!26353 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1415 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30959 0))(
  ( (Unit!30960) )
))
(declare-fun lt!412009 () Unit!30959)

(declare-fun lemmaListMapRecursiveValidKeyArray!11 (array!54822 array!54824 (_ BitVec 32) (_ BitVec 32) V!30851 V!30851 (_ BitVec 32) Int) Unit!30959)

(assert (=> b!917534 (= lt!412009 (lemmaListMapRecursiveValidKeyArray!11 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917535 () Bool)

(assert (=> b!917535 (= e!515132 (and e!515135 mapRes!30879))))

(declare-fun condMapEmpty!30879 () Bool)

(declare-fun mapDefault!30879 () ValueCell!9226)


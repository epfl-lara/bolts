; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78622 () Bool)

(assert start!78622)

(declare-fun b_free!16807 () Bool)

(declare-fun b_next!16807 () Bool)

(assert (=> start!78622 (= b_free!16807 (not b_next!16807))))

(declare-fun tp!58863 () Bool)

(declare-fun b_and!27447 () Bool)

(assert (=> start!78622 (= tp!58863 b_and!27447)))

(declare-fun mapIsEmpty!30729 () Bool)

(declare-fun mapRes!30729 () Bool)

(assert (=> mapIsEmpty!30729 mapRes!30729))

(declare-fun b!916027 () Bool)

(declare-fun e!514221 () Bool)

(declare-fun tp_is_empty!19315 () Bool)

(assert (=> b!916027 (= e!514221 tp_is_empty!19315)))

(declare-fun b!916028 () Bool)

(declare-fun res!617661 () Bool)

(declare-fun e!514220 () Bool)

(assert (=> b!916028 (=> (not res!617661) (not e!514220))))

(declare-datatypes ((array!54632 0))(
  ( (array!54633 (arr!26257 (Array (_ BitVec 32) (_ BitVec 64))) (size!26717 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54632)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30719 0))(
  ( (V!30720 (val!9708 Int)) )
))
(declare-datatypes ((ValueCell!9176 0))(
  ( (ValueCellFull!9176 (v!12226 V!30719)) (EmptyCell!9176) )
))
(declare-datatypes ((array!54634 0))(
  ( (array!54635 (arr!26258 (Array (_ BitVec 32) ValueCell!9176)) (size!26718 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54634)

(assert (=> b!916028 (= res!617661 (and (= (size!26718 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26717 _keys!1487) (size!26718 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!617660 () Bool)

(assert (=> start!78622 (=> (not res!617660) (not e!514220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78622 (= res!617660 (validMask!0 mask!1881))))

(assert (=> start!78622 e!514220))

(assert (=> start!78622 true))

(declare-fun e!514222 () Bool)

(declare-fun array_inv!20476 (array!54634) Bool)

(assert (=> start!78622 (and (array_inv!20476 _values!1231) e!514222)))

(assert (=> start!78622 tp!58863))

(declare-fun array_inv!20477 (array!54632) Bool)

(assert (=> start!78622 (array_inv!20477 _keys!1487)))

(assert (=> start!78622 tp_is_empty!19315))

(declare-fun b!916029 () Bool)

(declare-fun res!617663 () Bool)

(assert (=> b!916029 (=> (not res!617663) (not e!514220))))

(declare-datatypes ((List!18523 0))(
  ( (Nil!18520) (Cons!18519 (h!19665 (_ BitVec 64)) (t!26144 List!18523)) )
))
(declare-fun arrayNoDuplicates!0 (array!54632 (_ BitVec 32) List!18523) Bool)

(assert (=> b!916029 (= res!617663 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18520))))

(declare-fun b!916030 () Bool)

(declare-fun e!514223 () Bool)

(assert (=> b!916030 (= e!514223 tp_is_empty!19315)))

(declare-fun b!916031 () Bool)

(declare-fun res!617659 () Bool)

(assert (=> b!916031 (=> (not res!617659) (not e!514220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54632 (_ BitVec 32)) Bool)

(assert (=> b!916031 (= res!617659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916032 () Bool)

(assert (=> b!916032 (= e!514220 false)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!411708 () Bool)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30719)

(declare-fun minValue!1173 () V!30719)

(declare-datatypes ((tuple2!12664 0))(
  ( (tuple2!12665 (_1!6342 (_ BitVec 64)) (_2!6342 V!30719)) )
))
(declare-datatypes ((List!18524 0))(
  ( (Nil!18521) (Cons!18520 (h!19666 tuple2!12664) (t!26145 List!18524)) )
))
(declare-datatypes ((ListLongMap!11375 0))(
  ( (ListLongMap!11376 (toList!5703 List!18524)) )
))
(declare-fun contains!4723 (ListLongMap!11375 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2932 (array!54632 array!54634 (_ BitVec 32) (_ BitVec 32) V!30719 V!30719 (_ BitVec 32) Int) ListLongMap!11375)

(assert (=> b!916032 (= lt!411708 (contains!4723 (getCurrentListMap!2932 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun mapNonEmpty!30729 () Bool)

(declare-fun tp!58862 () Bool)

(assert (=> mapNonEmpty!30729 (= mapRes!30729 (and tp!58862 e!514221))))

(declare-fun mapRest!30729 () (Array (_ BitVec 32) ValueCell!9176))

(declare-fun mapValue!30729 () ValueCell!9176)

(declare-fun mapKey!30729 () (_ BitVec 32))

(assert (=> mapNonEmpty!30729 (= (arr!26258 _values!1231) (store mapRest!30729 mapKey!30729 mapValue!30729))))

(declare-fun b!916033 () Bool)

(assert (=> b!916033 (= e!514222 (and e!514223 mapRes!30729))))

(declare-fun condMapEmpty!30729 () Bool)

(declare-fun mapDefault!30729 () ValueCell!9176)


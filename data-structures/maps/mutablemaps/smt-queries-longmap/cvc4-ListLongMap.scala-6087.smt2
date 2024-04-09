; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78662 () Bool)

(assert start!78662)

(declare-fun b_free!16847 () Bool)

(declare-fun b_next!16847 () Bool)

(assert (=> start!78662 (= b_free!16847 (not b_next!16847))))

(declare-fun tp!58982 () Bool)

(declare-fun b_and!27487 () Bool)

(assert (=> start!78662 (= tp!58982 b_and!27487)))

(declare-fun b!916551 () Bool)

(declare-fun e!514557 () Bool)

(assert (=> b!916551 (= e!514557 false)))

(declare-datatypes ((V!30771 0))(
  ( (V!30772 (val!9728 Int)) )
))
(declare-fun lt!411794 () V!30771)

(declare-datatypes ((tuple2!12696 0))(
  ( (tuple2!12697 (_1!6358 (_ BitVec 64)) (_2!6358 V!30771)) )
))
(declare-datatypes ((List!18556 0))(
  ( (Nil!18553) (Cons!18552 (h!19698 tuple2!12696) (t!26177 List!18556)) )
))
(declare-datatypes ((ListLongMap!11407 0))(
  ( (ListLongMap!11408 (toList!5719 List!18556)) )
))
(declare-fun lt!411795 () ListLongMap!11407)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!547 (ListLongMap!11407 (_ BitVec 64)) V!30771)

(assert (=> b!916551 (= lt!411794 (apply!547 lt!411795 k!1099))))

(declare-fun b!916552 () Bool)

(declare-fun e!514555 () Bool)

(declare-fun tp_is_empty!19355 () Bool)

(assert (=> b!916552 (= e!514555 tp_is_empty!19355)))

(declare-fun b!916553 () Bool)

(declare-fun e!514559 () Bool)

(assert (=> b!916553 (= e!514559 e!514557)))

(declare-fun res!618006 () Bool)

(assert (=> b!916553 (=> (not res!618006) (not e!514557))))

(declare-fun contains!4739 (ListLongMap!11407 (_ BitVec 64)) Bool)

(assert (=> b!916553 (= res!618006 (contains!4739 lt!411795 k!1099))))

(declare-datatypes ((array!54712 0))(
  ( (array!54713 (arr!26297 (Array (_ BitVec 32) (_ BitVec 64))) (size!26757 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54712)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((ValueCell!9196 0))(
  ( (ValueCellFull!9196 (v!12246 V!30771)) (EmptyCell!9196) )
))
(declare-datatypes ((array!54714 0))(
  ( (array!54715 (arr!26298 (Array (_ BitVec 32) ValueCell!9196)) (size!26758 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54714)

(declare-fun zeroValue!1173 () V!30771)

(declare-fun minValue!1173 () V!30771)

(declare-fun getCurrentListMap!2948 (array!54712 array!54714 (_ BitVec 32) (_ BitVec 32) V!30771 V!30771 (_ BitVec 32) Int) ListLongMap!11407)

(assert (=> b!916553 (= lt!411795 (getCurrentListMap!2948 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916554 () Bool)

(declare-fun e!514560 () Bool)

(declare-fun e!514558 () Bool)

(declare-fun mapRes!30789 () Bool)

(assert (=> b!916554 (= e!514560 (and e!514558 mapRes!30789))))

(declare-fun condMapEmpty!30789 () Bool)

(declare-fun mapDefault!30789 () ValueCell!9196)


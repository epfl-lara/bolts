; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78658 () Bool)

(assert start!78658)

(declare-fun b_free!16843 () Bool)

(declare-fun b_next!16843 () Bool)

(assert (=> start!78658 (= b_free!16843 (not b_next!16843))))

(declare-fun tp!58971 () Bool)

(declare-fun b_and!27483 () Bool)

(assert (=> start!78658 (= tp!58971 b_and!27483)))

(declare-fun b!916497 () Bool)

(declare-fun e!514519 () Bool)

(declare-fun e!514522 () Bool)

(assert (=> b!916497 (= e!514519 e!514522)))

(declare-fun res!617972 () Bool)

(assert (=> b!916497 (=> (not res!617972) (not e!514522))))

(declare-datatypes ((V!30767 0))(
  ( (V!30768 (val!9726 Int)) )
))
(declare-datatypes ((tuple2!12692 0))(
  ( (tuple2!12693 (_1!6356 (_ BitVec 64)) (_2!6356 V!30767)) )
))
(declare-datatypes ((List!18553 0))(
  ( (Nil!18550) (Cons!18549 (h!19695 tuple2!12692) (t!26174 List!18553)) )
))
(declare-datatypes ((ListLongMap!11403 0))(
  ( (ListLongMap!11404 (toList!5717 List!18553)) )
))
(declare-fun lt!411782 () ListLongMap!11403)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4737 (ListLongMap!11403 (_ BitVec 64)) Bool)

(assert (=> b!916497 (= res!617972 (contains!4737 lt!411782 k!1099))))

(declare-datatypes ((array!54704 0))(
  ( (array!54705 (arr!26293 (Array (_ BitVec 32) (_ BitVec 64))) (size!26753 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54704)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9194 0))(
  ( (ValueCellFull!9194 (v!12244 V!30767)) (EmptyCell!9194) )
))
(declare-datatypes ((array!54706 0))(
  ( (array!54707 (arr!26294 (Array (_ BitVec 32) ValueCell!9194)) (size!26754 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54706)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30767)

(declare-fun minValue!1173 () V!30767)

(declare-fun getCurrentListMap!2946 (array!54704 array!54706 (_ BitVec 32) (_ BitVec 32) V!30767 V!30767 (_ BitVec 32) Int) ListLongMap!11403)

(assert (=> b!916497 (= lt!411782 (getCurrentListMap!2946 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916498 () Bool)

(declare-fun res!617968 () Bool)

(assert (=> b!916498 (=> (not res!617968) (not e!514519))))

(assert (=> b!916498 (= res!617968 (and (= (size!26754 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26753 _keys!1487) (size!26754 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916499 () Bool)

(declare-fun e!514524 () Bool)

(declare-fun e!514523 () Bool)

(declare-fun mapRes!30783 () Bool)

(assert (=> b!916499 (= e!514524 (and e!514523 mapRes!30783))))

(declare-fun condMapEmpty!30783 () Bool)

(declare-fun mapDefault!30783 () ValueCell!9194)


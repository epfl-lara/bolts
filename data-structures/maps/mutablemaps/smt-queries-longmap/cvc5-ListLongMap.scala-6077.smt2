; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78598 () Bool)

(assert start!78598)

(declare-fun b_free!16783 () Bool)

(declare-fun b_next!16783 () Bool)

(assert (=> start!78598 (= b_free!16783 (not b_next!16783))))

(declare-fun tp!58791 () Bool)

(declare-fun b_and!27423 () Bool)

(assert (=> start!78598 (= tp!58791 b_and!27423)))

(declare-fun mapNonEmpty!30693 () Bool)

(declare-fun mapRes!30693 () Bool)

(declare-fun tp!58790 () Bool)

(declare-fun e!514043 () Bool)

(assert (=> mapNonEmpty!30693 (= mapRes!30693 (and tp!58790 e!514043))))

(declare-datatypes ((V!30687 0))(
  ( (V!30688 (val!9696 Int)) )
))
(declare-datatypes ((ValueCell!9164 0))(
  ( (ValueCellFull!9164 (v!12214 V!30687)) (EmptyCell!9164) )
))
(declare-fun mapRest!30693 () (Array (_ BitVec 32) ValueCell!9164))

(declare-datatypes ((array!54584 0))(
  ( (array!54585 (arr!26233 (Array (_ BitVec 32) ValueCell!9164)) (size!26693 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54584)

(declare-fun mapKey!30693 () (_ BitVec 32))

(declare-fun mapValue!30693 () ValueCell!9164)

(assert (=> mapNonEmpty!30693 (= (arr!26233 _values!1231) (store mapRest!30693 mapKey!30693 mapValue!30693))))

(declare-fun b!915739 () Bool)

(declare-fun tp_is_empty!19291 () Bool)

(assert (=> b!915739 (= e!514043 tp_is_empty!19291)))

(declare-fun b!915740 () Bool)

(declare-fun e!514044 () Bool)

(assert (=> b!915740 (= e!514044 false)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!411672 () Bool)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!54586 0))(
  ( (array!54587 (arr!26234 (Array (_ BitVec 32) (_ BitVec 64))) (size!26694 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54586)

(declare-fun zeroValue!1173 () V!30687)

(declare-fun minValue!1173 () V!30687)

(declare-datatypes ((tuple2!12646 0))(
  ( (tuple2!12647 (_1!6333 (_ BitVec 64)) (_2!6333 V!30687)) )
))
(declare-datatypes ((List!18504 0))(
  ( (Nil!18501) (Cons!18500 (h!19646 tuple2!12646) (t!26125 List!18504)) )
))
(declare-datatypes ((ListLongMap!11357 0))(
  ( (ListLongMap!11358 (toList!5694 List!18504)) )
))
(declare-fun contains!4714 (ListLongMap!11357 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2923 (array!54586 array!54584 (_ BitVec 32) (_ BitVec 32) V!30687 V!30687 (_ BitVec 32) Int) ListLongMap!11357)

(assert (=> b!915740 (= lt!411672 (contains!4714 (getCurrentListMap!2923 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun b!915741 () Bool)

(declare-fun res!617482 () Bool)

(assert (=> b!915741 (=> (not res!617482) (not e!514044))))

(assert (=> b!915741 (= res!617482 (and (= (size!26693 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26694 _keys!1487) (size!26693 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915742 () Bool)

(declare-fun res!617479 () Bool)

(assert (=> b!915742 (=> (not res!617479) (not e!514044))))

(declare-datatypes ((List!18505 0))(
  ( (Nil!18502) (Cons!18501 (h!19647 (_ BitVec 64)) (t!26126 List!18505)) )
))
(declare-fun arrayNoDuplicates!0 (array!54586 (_ BitVec 32) List!18505) Bool)

(assert (=> b!915742 (= res!617479 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18502))))

(declare-fun mapIsEmpty!30693 () Bool)

(assert (=> mapIsEmpty!30693 mapRes!30693))

(declare-fun b!915743 () Bool)

(declare-fun e!514040 () Bool)

(declare-fun e!514042 () Bool)

(assert (=> b!915743 (= e!514040 (and e!514042 mapRes!30693))))

(declare-fun condMapEmpty!30693 () Bool)

(declare-fun mapDefault!30693 () ValueCell!9164)


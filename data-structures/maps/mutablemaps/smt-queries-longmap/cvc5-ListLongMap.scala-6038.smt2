; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78156 () Bool)

(assert start!78156)

(declare-fun b_free!16639 () Bool)

(declare-fun b_next!16639 () Bool)

(assert (=> start!78156 (= b_free!16639 (not b_next!16639))))

(declare-fun tp!58192 () Bool)

(declare-fun b_and!27231 () Bool)

(assert (=> start!78156 (= tp!58192 b_and!27231)))

(declare-fun mapIsEmpty!30310 () Bool)

(declare-fun mapRes!30310 () Bool)

(assert (=> mapIsEmpty!30310 mapRes!30310))

(declare-fun b!911701 () Bool)

(declare-fun e!511396 () Bool)

(assert (=> b!911701 (= e!511396 false)))

(declare-datatypes ((V!30375 0))(
  ( (V!30376 (val!9579 Int)) )
))
(declare-datatypes ((ValueCell!9047 0))(
  ( (ValueCellFull!9047 (v!12089 V!30375)) (EmptyCell!9047) )
))
(declare-datatypes ((array!54122 0))(
  ( (array!54123 (arr!26012 (Array (_ BitVec 32) ValueCell!9047)) (size!26472 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54122)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30375)

(declare-datatypes ((array!54124 0))(
  ( (array!54125 (arr!26013 (Array (_ BitVec 32) (_ BitVec 64))) (size!26473 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54124)

(declare-fun lt!410464 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30375)

(declare-datatypes ((tuple2!12532 0))(
  ( (tuple2!12533 (_1!6276 (_ BitVec 64)) (_2!6276 V!30375)) )
))
(declare-datatypes ((List!18376 0))(
  ( (Nil!18373) (Cons!18372 (h!19518 tuple2!12532) (t!25971 List!18376)) )
))
(declare-datatypes ((ListLongMap!11243 0))(
  ( (ListLongMap!11244 (toList!5637 List!18376)) )
))
(declare-fun contains!4647 (ListLongMap!11243 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2867 (array!54124 array!54122 (_ BitVec 32) (_ BitVec 32) V!30375 V!30375 (_ BitVec 32) Int) ListLongMap!11243)

(assert (=> b!911701 (= lt!410464 (contains!4647 (getCurrentListMap!2867 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911702 () Bool)

(declare-fun res!615173 () Bool)

(assert (=> b!911702 (=> (not res!615173) (not e!511396))))

(assert (=> b!911702 (= res!615173 (and (= (size!26472 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26473 _keys!1386) (size!26472 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911703 () Bool)

(declare-fun e!511400 () Bool)

(declare-fun tp_is_empty!19057 () Bool)

(assert (=> b!911703 (= e!511400 tp_is_empty!19057)))

(declare-fun b!911704 () Bool)

(declare-fun res!615175 () Bool)

(assert (=> b!911704 (=> (not res!615175) (not e!511396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54124 (_ BitVec 32)) Bool)

(assert (=> b!911704 (= res!615175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911705 () Bool)

(declare-fun e!511399 () Bool)

(assert (=> b!911705 (= e!511399 tp_is_empty!19057)))

(declare-fun b!911706 () Bool)

(declare-fun e!511397 () Bool)

(assert (=> b!911706 (= e!511397 (and e!511399 mapRes!30310))))

(declare-fun condMapEmpty!30310 () Bool)

(declare-fun mapDefault!30310 () ValueCell!9047)


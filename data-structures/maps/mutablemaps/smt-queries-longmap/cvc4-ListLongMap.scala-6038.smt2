; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78160 () Bool)

(assert start!78160)

(declare-fun b_free!16643 () Bool)

(declare-fun b_next!16643 () Bool)

(assert (=> start!78160 (= b_free!16643 (not b_next!16643))))

(declare-fun tp!58204 () Bool)

(declare-fun b_and!27235 () Bool)

(assert (=> start!78160 (= tp!58204 b_and!27235)))

(declare-fun b!911743 () Bool)

(declare-fun e!511426 () Bool)

(assert (=> b!911743 (= e!511426 false)))

(declare-datatypes ((V!30379 0))(
  ( (V!30380 (val!9581 Int)) )
))
(declare-datatypes ((ValueCell!9049 0))(
  ( (ValueCellFull!9049 (v!12091 V!30379)) (EmptyCell!9049) )
))
(declare-datatypes ((array!54130 0))(
  ( (array!54131 (arr!26016 (Array (_ BitVec 32) ValueCell!9049)) (size!26476 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54130)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30379)

(declare-datatypes ((array!54132 0))(
  ( (array!54133 (arr!26017 (Array (_ BitVec 32) (_ BitVec 64))) (size!26477 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54132)

(declare-fun lt!410470 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30379)

(declare-datatypes ((tuple2!12536 0))(
  ( (tuple2!12537 (_1!6278 (_ BitVec 64)) (_2!6278 V!30379)) )
))
(declare-datatypes ((List!18379 0))(
  ( (Nil!18376) (Cons!18375 (h!19521 tuple2!12536) (t!25974 List!18379)) )
))
(declare-datatypes ((ListLongMap!11247 0))(
  ( (ListLongMap!11248 (toList!5639 List!18379)) )
))
(declare-fun contains!4649 (ListLongMap!11247 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2869 (array!54132 array!54130 (_ BitVec 32) (_ BitVec 32) V!30379 V!30379 (_ BitVec 32) Int) ListLongMap!11247)

(assert (=> b!911743 (= lt!410470 (contains!4649 (getCurrentListMap!2869 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911744 () Bool)

(declare-fun res!615199 () Bool)

(assert (=> b!911744 (=> (not res!615199) (not e!511426))))

(declare-datatypes ((List!18380 0))(
  ( (Nil!18377) (Cons!18376 (h!19522 (_ BitVec 64)) (t!25975 List!18380)) )
))
(declare-fun arrayNoDuplicates!0 (array!54132 (_ BitVec 32) List!18380) Bool)

(assert (=> b!911744 (= res!615199 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18377))))

(declare-fun b!911745 () Bool)

(declare-fun e!511430 () Bool)

(declare-fun e!511429 () Bool)

(declare-fun mapRes!30316 () Bool)

(assert (=> b!911745 (= e!511430 (and e!511429 mapRes!30316))))

(declare-fun condMapEmpty!30316 () Bool)

(declare-fun mapDefault!30316 () ValueCell!9049)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78342 () Bool)

(assert start!78342)

(declare-fun b_free!16735 () Bool)

(declare-fun b_next!16735 () Bool)

(assert (=> start!78342 (= b_free!16735 (not b_next!16735))))

(declare-fun tp!58490 () Bool)

(declare-fun b_and!27343 () Bool)

(assert (=> start!78342 (= tp!58490 b_and!27343)))

(declare-fun b!913603 () Bool)

(declare-fun e!512510 () Bool)

(declare-fun e!512511 () Bool)

(assert (=> b!913603 (= e!512510 e!512511)))

(declare-fun res!616322 () Bool)

(assert (=> b!913603 (=> res!616322 e!512511)))

(declare-datatypes ((V!30503 0))(
  ( (V!30504 (val!9627 Int)) )
))
(declare-datatypes ((tuple2!12606 0))(
  ( (tuple2!12607 (_1!6313 (_ BitVec 64)) (_2!6313 V!30503)) )
))
(declare-datatypes ((List!18446 0))(
  ( (Nil!18443) (Cons!18442 (h!19588 tuple2!12606) (t!26049 List!18446)) )
))
(declare-datatypes ((ListLongMap!11317 0))(
  ( (ListLongMap!11318 (toList!5674 List!18446)) )
))
(declare-fun lt!411056 () ListLongMap!11317)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4688 (ListLongMap!11317 (_ BitVec 64)) Bool)

(assert (=> b!913603 (= res!616322 (not (contains!4688 lt!411056 k!1033)))))

(declare-datatypes ((ValueCell!9095 0))(
  ( (ValueCellFull!9095 (v!12141 V!30503)) (EmptyCell!9095) )
))
(declare-datatypes ((array!54312 0))(
  ( (array!54313 (arr!26104 (Array (_ BitVec 32) ValueCell!9095)) (size!26564 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54312)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30503)

(declare-datatypes ((array!54314 0))(
  ( (array!54315 (arr!26105 (Array (_ BitVec 32) (_ BitVec 64))) (size!26565 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54314)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30503)

(declare-fun getCurrentListMap!2904 (array!54314 array!54312 (_ BitVec 32) (_ BitVec 32) V!30503 V!30503 (_ BitVec 32) Int) ListLongMap!11317)

(assert (=> b!913603 (= lt!411056 (getCurrentListMap!2904 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!913604 () Bool)

(declare-fun e!512513 () Bool)

(declare-fun e!512514 () Bool)

(declare-fun mapRes!30464 () Bool)

(assert (=> b!913604 (= e!512513 (and e!512514 mapRes!30464))))

(declare-fun condMapEmpty!30464 () Bool)

(declare-fun mapDefault!30464 () ValueCell!9095)


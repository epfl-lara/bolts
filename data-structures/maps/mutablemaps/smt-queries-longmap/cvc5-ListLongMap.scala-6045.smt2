; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78218 () Bool)

(assert start!78218)

(declare-fun b_free!16681 () Bool)

(declare-fun b_next!16681 () Bool)

(assert (=> start!78218 (= b_free!16681 (not b_next!16681))))

(declare-fun tp!58320 () Bool)

(declare-fun b_and!27275 () Bool)

(assert (=> start!78218 (= tp!58320 b_and!27275)))

(declare-fun b!912323 () Bool)

(declare-fun res!615540 () Bool)

(declare-fun e!511796 () Bool)

(assert (=> b!912323 (=> (not res!615540) (not e!511796))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54204 0))(
  ( (array!54205 (arr!26052 (Array (_ BitVec 32) (_ BitVec 64))) (size!26512 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54204)

(declare-datatypes ((V!30431 0))(
  ( (V!30432 (val!9600 Int)) )
))
(declare-datatypes ((ValueCell!9068 0))(
  ( (ValueCellFull!9068 (v!12111 V!30431)) (EmptyCell!9068) )
))
(declare-datatypes ((array!54206 0))(
  ( (array!54207 (arr!26053 (Array (_ BitVec 32) ValueCell!9068)) (size!26513 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54206)

(assert (=> b!912323 (= res!615540 (and (= (size!26513 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26512 _keys!1386) (size!26513 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912324 () Bool)

(declare-fun res!615535 () Bool)

(assert (=> b!912324 (=> (not res!615535) (not e!511796))))

(declare-datatypes ((List!18407 0))(
  ( (Nil!18404) (Cons!18403 (h!19549 (_ BitVec 64)) (t!26004 List!18407)) )
))
(declare-fun arrayNoDuplicates!0 (array!54204 (_ BitVec 32) List!18407) Bool)

(assert (=> b!912324 (= res!615535 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18404))))

(declare-fun b!912325 () Bool)

(assert (=> b!912325 (= e!511796 (not true))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912325 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30431)

(declare-fun minValue!1094 () V!30431)

(declare-datatypes ((Unit!30851 0))(
  ( (Unit!30852) )
))
(declare-fun lt!410617 () Unit!30851)

(declare-fun lemmaKeyInListMapIsInArray!271 (array!54204 array!54206 (_ BitVec 32) (_ BitVec 32) V!30431 V!30431 (_ BitVec 64) Int) Unit!30851)

(assert (=> b!912325 (= lt!410617 (lemmaKeyInListMapIsInArray!271 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!912326 () Bool)

(declare-fun e!511795 () Bool)

(declare-fun e!511794 () Bool)

(declare-fun mapRes!30376 () Bool)

(assert (=> b!912326 (= e!511795 (and e!511794 mapRes!30376))))

(declare-fun condMapEmpty!30376 () Bool)

(declare-fun mapDefault!30376 () ValueCell!9068)


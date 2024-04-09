; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78252 () Bool)

(assert start!78252)

(declare-fun b_free!16715 () Bool)

(declare-fun b_next!16715 () Bool)

(assert (=> start!78252 (= b_free!16715 (not b_next!16715))))

(declare-fun tp!58422 () Bool)

(declare-fun b_and!27309 () Bool)

(assert (=> start!78252 (= tp!58422 b_and!27309)))

(declare-fun b!912833 () Bool)

(declare-fun res!615896 () Bool)

(declare-fun e!512047 () Bool)

(assert (=> b!912833 (=> (not res!615896) (not e!512047))))

(declare-datatypes ((V!30475 0))(
  ( (V!30476 (val!9617 Int)) )
))
(declare-datatypes ((ValueCell!9085 0))(
  ( (ValueCellFull!9085 (v!12128 V!30475)) (EmptyCell!9085) )
))
(declare-datatypes ((array!54268 0))(
  ( (array!54269 (arr!26084 (Array (_ BitVec 32) ValueCell!9085)) (size!26544 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54268)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54270 0))(
  ( (array!54271 (arr!26085 (Array (_ BitVec 32) (_ BitVec 64))) (size!26545 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54270)

(assert (=> b!912833 (= res!615896 (and (= (size!26544 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26545 _keys!1386) (size!26544 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912834 () Bool)

(assert (=> b!912834 (= e!512047 (not true))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912834 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30475)

(declare-datatypes ((Unit!30875 0))(
  ( (Unit!30876) )
))
(declare-fun lt!410668 () Unit!30875)

(declare-fun minValue!1094 () V!30475)

(declare-fun lemmaKeyInListMapIsInArray!283 (array!54270 array!54268 (_ BitVec 32) (_ BitVec 32) V!30475 V!30475 (_ BitVec 64) Int) Unit!30875)

(assert (=> b!912834 (= lt!410668 (lemmaKeyInListMapIsInArray!283 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!912835 () Bool)

(declare-fun e!512048 () Bool)

(declare-fun e!512051 () Bool)

(declare-fun mapRes!30427 () Bool)

(assert (=> b!912835 (= e!512048 (and e!512051 mapRes!30427))))

(declare-fun condMapEmpty!30427 () Bool)

(declare-fun mapDefault!30427 () ValueCell!9085)


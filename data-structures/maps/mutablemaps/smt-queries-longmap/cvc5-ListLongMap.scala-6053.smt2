; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78286 () Bool)

(assert start!78286)

(declare-fun b_free!16729 () Bool)

(declare-fun b_next!16729 () Bool)

(assert (=> start!78286 (= b_free!16729 (not b_next!16729))))

(declare-fun tp!58468 () Bool)

(declare-fun b_and!27325 () Bool)

(assert (=> start!78286 (= tp!58468 b_and!27325)))

(declare-fun mapIsEmpty!30451 () Bool)

(declare-fun mapRes!30451 () Bool)

(assert (=> mapIsEmpty!30451 mapRes!30451))

(declare-fun mapNonEmpty!30451 () Bool)

(declare-fun tp!58467 () Bool)

(declare-fun e!512235 () Bool)

(assert (=> mapNonEmpty!30451 (= mapRes!30451 (and tp!58467 e!512235))))

(declare-datatypes ((V!30495 0))(
  ( (V!30496 (val!9624 Int)) )
))
(declare-datatypes ((ValueCell!9092 0))(
  ( (ValueCellFull!9092 (v!12136 V!30495)) (EmptyCell!9092) )
))
(declare-datatypes ((array!54298 0))(
  ( (array!54299 (arr!26098 (Array (_ BitVec 32) ValueCell!9092)) (size!26558 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54298)

(declare-fun mapKey!30451 () (_ BitVec 32))

(declare-fun mapValue!30451 () ValueCell!9092)

(declare-fun mapRest!30451 () (Array (_ BitVec 32) ValueCell!9092))

(assert (=> mapNonEmpty!30451 (= (arr!26098 _values!1152) (store mapRest!30451 mapKey!30451 mapValue!30451))))

(declare-fun b!913167 () Bool)

(declare-fun res!616093 () Bool)

(declare-fun e!512239 () Bool)

(assert (=> b!913167 (=> (not res!616093) (not e!512239))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54300 0))(
  ( (array!54301 (arr!26099 (Array (_ BitVec 32) (_ BitVec 64))) (size!26559 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54300)

(assert (=> b!913167 (= res!616093 (and (= (size!26558 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26559 _keys!1386) (size!26558 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!913168 () Bool)

(declare-fun res!616095 () Bool)

(assert (=> b!913168 (=> (not res!616095) (not e!512239))))

(declare-datatypes ((List!18441 0))(
  ( (Nil!18438) (Cons!18437 (h!19583 (_ BitVec 64)) (t!26040 List!18441)) )
))
(declare-fun arrayNoDuplicates!0 (array!54300 (_ BitVec 32) List!18441) Bool)

(assert (=> b!913168 (= res!616095 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18438))))

(declare-fun b!913169 () Bool)

(declare-fun e!512236 () Bool)

(declare-fun e!512240 () Bool)

(assert (=> b!913169 (= e!512236 (and e!512240 mapRes!30451))))

(declare-fun condMapEmpty!30451 () Bool)

(declare-fun mapDefault!30451 () ValueCell!9092)


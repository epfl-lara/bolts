; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40086 () Bool)

(assert start!40086)

(declare-fun b_free!10345 () Bool)

(declare-fun b_next!10345 () Bool)

(assert (=> start!40086 (= b_free!10345 (not b_next!10345))))

(declare-fun tp!36564 () Bool)

(declare-fun b_and!18331 () Bool)

(assert (=> start!40086 (= tp!36564 b_and!18331)))

(declare-fun b!437441 () Bool)

(declare-fun e!258162 () Bool)

(declare-fun tp_is_empty!11497 () Bool)

(assert (=> b!437441 (= e!258162 tp_is_empty!11497)))

(declare-fun mapIsEmpty!18867 () Bool)

(declare-fun mapRes!18867 () Bool)

(assert (=> mapIsEmpty!18867 mapRes!18867))

(declare-fun b!437442 () Bool)

(declare-fun res!258186 () Bool)

(declare-fun e!258159 () Bool)

(assert (=> b!437442 (=> (not res!258186) (not e!258159))))

(declare-datatypes ((array!26791 0))(
  ( (array!26792 (arr!12842 (Array (_ BitVec 32) (_ BitVec 64))) (size!13194 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26791)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16435 0))(
  ( (V!16436 (val!5793 Int)) )
))
(declare-datatypes ((ValueCell!5405 0))(
  ( (ValueCellFull!5405 (v!8036 V!16435)) (EmptyCell!5405) )
))
(declare-datatypes ((array!26793 0))(
  ( (array!26794 (arr!12843 (Array (_ BitVec 32) ValueCell!5405)) (size!13195 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26793)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!437442 (= res!258186 (and (= (size!13195 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13194 _keys!709) (size!13195 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437443 () Bool)

(declare-fun res!258182 () Bool)

(assert (=> b!437443 (=> (not res!258182) (not e!258159))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437443 (= res!258182 (validKeyInArray!0 k!794))))

(declare-fun res!258175 () Bool)

(assert (=> start!40086 (=> (not res!258175) (not e!258159))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40086 (= res!258175 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13194 _keys!709))))))

(assert (=> start!40086 e!258159))

(assert (=> start!40086 tp_is_empty!11497))

(assert (=> start!40086 tp!36564))

(assert (=> start!40086 true))

(declare-fun e!258158 () Bool)

(declare-fun array_inv!9328 (array!26793) Bool)

(assert (=> start!40086 (and (array_inv!9328 _values!549) e!258158)))

(declare-fun array_inv!9329 (array!26791) Bool)

(assert (=> start!40086 (array_inv!9329 _keys!709)))

(declare-fun b!437444 () Bool)

(declare-fun res!258183 () Bool)

(declare-fun e!258157 () Bool)

(assert (=> b!437444 (=> (not res!258183) (not e!258157))))

(declare-fun lt!201670 () array!26791)

(declare-datatypes ((List!7655 0))(
  ( (Nil!7652) (Cons!7651 (h!8507 (_ BitVec 64)) (t!13419 List!7655)) )
))
(declare-fun arrayNoDuplicates!0 (array!26791 (_ BitVec 32) List!7655) Bool)

(assert (=> b!437444 (= res!258183 (arrayNoDuplicates!0 lt!201670 #b00000000000000000000000000000000 Nil!7652))))

(declare-fun b!437445 () Bool)

(declare-fun res!258185 () Bool)

(assert (=> b!437445 (=> (not res!258185) (not e!258159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437445 (= res!258185 (validMask!0 mask!1025))))

(declare-fun b!437446 () Bool)

(assert (=> b!437446 (= e!258158 (and e!258162 mapRes!18867))))

(declare-fun condMapEmpty!18867 () Bool)

(declare-fun mapDefault!18867 () ValueCell!5405)


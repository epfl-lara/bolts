; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38374 () Bool)

(assert start!38374)

(declare-fun b!395583 () Bool)

(declare-fun res!226904 () Bool)

(declare-fun e!239463 () Bool)

(assert (=> b!395583 (=> (not res!226904) (not e!239463))))

(declare-datatypes ((array!23551 0))(
  ( (array!23552 (arr!11225 (Array (_ BitVec 32) (_ BitVec 64))) (size!11577 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23551)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395583 (= res!226904 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!395584 () Bool)

(declare-fun res!226902 () Bool)

(assert (=> b!395584 (=> (not res!226902) (not e!239463))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14215 0))(
  ( (V!14216 (val!4961 Int)) )
))
(declare-datatypes ((ValueCell!4573 0))(
  ( (ValueCellFull!4573 (v!7203 V!14215)) (EmptyCell!4573) )
))
(declare-datatypes ((array!23553 0))(
  ( (array!23554 (arr!11226 (Array (_ BitVec 32) ValueCell!4573)) (size!11578 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23553)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395584 (= res!226902 (and (= (size!11578 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11577 _keys!709) (size!11578 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395585 () Bool)

(declare-fun e!239462 () Bool)

(declare-fun e!239465 () Bool)

(declare-fun mapRes!16362 () Bool)

(assert (=> b!395585 (= e!239462 (and e!239465 mapRes!16362))))

(declare-fun condMapEmpty!16362 () Bool)

(declare-fun mapDefault!16362 () ValueCell!4573)


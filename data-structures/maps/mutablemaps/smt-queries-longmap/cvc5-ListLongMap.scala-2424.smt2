; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38298 () Bool)

(assert start!38298)

(declare-fun b!394755 () Bool)

(declare-fun e!239012 () Bool)

(declare-fun e!239009 () Bool)

(assert (=> b!394755 (= e!239012 e!239009)))

(declare-fun res!226346 () Bool)

(assert (=> b!394755 (=> res!226346 e!239009)))

(declare-datatypes ((List!6459 0))(
  ( (Nil!6456) (Cons!6455 (h!7311 (_ BitVec 64)) (t!11641 List!6459)) )
))
(declare-fun contains!2478 (List!6459 (_ BitVec 64)) Bool)

(assert (=> b!394755 (= res!226346 (contains!2478 Nil!6456 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!394756 () Bool)

(declare-fun res!226344 () Bool)

(assert (=> b!394756 (=> (not res!226344) (not e!239012))))

(declare-datatypes ((array!23445 0))(
  ( (array!23446 (arr!11174 (Array (_ BitVec 32) (_ BitVec 64))) (size!11526 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23445)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14147 0))(
  ( (V!14148 (val!4935 Int)) )
))
(declare-datatypes ((ValueCell!4547 0))(
  ( (ValueCellFull!4547 (v!7176 V!14147)) (EmptyCell!4547) )
))
(declare-datatypes ((array!23447 0))(
  ( (array!23448 (arr!11175 (Array (_ BitVec 32) ValueCell!4547)) (size!11527 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23447)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394756 (= res!226344 (and (= (size!11527 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11526 _keys!709) (size!11527 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394757 () Bool)

(declare-fun res!226341 () Bool)

(assert (=> b!394757 (=> (not res!226341) (not e!239012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394757 (= res!226341 (validMask!0 mask!1025))))

(declare-fun b!394758 () Bool)

(declare-fun res!226345 () Bool)

(assert (=> b!394758 (=> (not res!226345) (not e!239012))))

(declare-fun noDuplicate!194 (List!6459) Bool)

(assert (=> b!394758 (= res!226345 (noDuplicate!194 Nil!6456))))

(declare-fun mapIsEmpty!16278 () Bool)

(declare-fun mapRes!16278 () Bool)

(assert (=> mapIsEmpty!16278 mapRes!16278))

(declare-fun b!394759 () Bool)

(declare-fun e!239010 () Bool)

(declare-fun e!239011 () Bool)

(assert (=> b!394759 (= e!239010 (and e!239011 mapRes!16278))))

(declare-fun condMapEmpty!16278 () Bool)

(declare-fun mapDefault!16278 () ValueCell!4547)


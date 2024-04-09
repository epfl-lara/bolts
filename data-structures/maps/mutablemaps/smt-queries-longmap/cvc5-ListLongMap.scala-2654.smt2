; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39750 () Bool)

(assert start!39750)

(declare-fun b_free!10009 () Bool)

(declare-fun b_next!10009 () Bool)

(assert (=> start!39750 (= b_free!10009 (not b_next!10009))))

(declare-fun tp!35555 () Bool)

(declare-fun b_and!17695 () Bool)

(assert (=> start!39750 (= tp!35555 b_and!17695)))

(declare-fun b!427477 () Bool)

(declare-fun res!250860 () Bool)

(declare-fun e!253444 () Bool)

(assert (=> b!427477 (=> (not res!250860) (not e!253444))))

(declare-datatypes ((array!26141 0))(
  ( (array!26142 (arr!12517 (Array (_ BitVec 32) (_ BitVec 64))) (size!12869 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26141)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15987 0))(
  ( (V!15988 (val!5625 Int)) )
))
(declare-datatypes ((ValueCell!5237 0))(
  ( (ValueCellFull!5237 (v!7868 V!15987)) (EmptyCell!5237) )
))
(declare-datatypes ((array!26143 0))(
  ( (array!26144 (arr!12518 (Array (_ BitVec 32) ValueCell!5237)) (size!12870 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26143)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!427477 (= res!250860 (and (= (size!12870 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12869 _keys!709) (size!12870 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427478 () Bool)

(declare-fun res!250861 () Bool)

(assert (=> b!427478 (=> (not res!250861) (not e!253444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427478 (= res!250861 (validMask!0 mask!1025))))

(declare-fun b!427479 () Bool)

(declare-fun res!250859 () Bool)

(declare-fun e!253443 () Bool)

(assert (=> b!427479 (=> (not res!250859) (not e!253443))))

(declare-fun lt!195360 () array!26141)

(declare-datatypes ((List!7383 0))(
  ( (Nil!7380) (Cons!7379 (h!8235 (_ BitVec 64)) (t!12849 List!7383)) )
))
(declare-fun arrayNoDuplicates!0 (array!26141 (_ BitVec 32) List!7383) Bool)

(assert (=> b!427479 (= res!250859 (arrayNoDuplicates!0 lt!195360 #b00000000000000000000000000000000 Nil!7380))))

(declare-fun b!427480 () Bool)

(declare-fun res!250863 () Bool)

(assert (=> b!427480 (=> (not res!250863) (not e!253444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26141 (_ BitVec 32)) Bool)

(assert (=> b!427480 (= res!250863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427481 () Bool)

(declare-fun res!250850 () Bool)

(assert (=> b!427481 (=> (not res!250850) (not e!253444))))

(assert (=> b!427481 (= res!250850 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7380))))

(declare-fun b!427482 () Bool)

(declare-fun e!253448 () Bool)

(declare-fun e!253447 () Bool)

(declare-fun mapRes!18363 () Bool)

(assert (=> b!427482 (= e!253448 (and e!253447 mapRes!18363))))

(declare-fun condMapEmpty!18363 () Bool)

(declare-fun mapDefault!18363 () ValueCell!5237)


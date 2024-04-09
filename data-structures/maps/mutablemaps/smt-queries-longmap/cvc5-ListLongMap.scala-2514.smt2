; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38910 () Bool)

(assert start!38910)

(declare-fun b!406586 () Bool)

(declare-fun res!235000 () Bool)

(declare-fun e!244286 () Bool)

(assert (=> b!406586 (=> (not res!235000) (not e!244286))))

(declare-datatypes ((array!24499 0))(
  ( (array!24500 (arr!11696 (Array (_ BitVec 32) (_ BitVec 64))) (size!12048 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24499)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14867 0))(
  ( (V!14868 (val!5205 Int)) )
))
(declare-datatypes ((ValueCell!4817 0))(
  ( (ValueCellFull!4817 (v!7448 V!14867)) (EmptyCell!4817) )
))
(declare-datatypes ((array!24501 0))(
  ( (array!24502 (arr!11697 (Array (_ BitVec 32) ValueCell!4817)) (size!12049 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24501)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!406586 (= res!235000 (and (= (size!12049 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12048 _keys!709) (size!12049 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406587 () Bool)

(declare-fun e!244287 () Bool)

(declare-fun tp_is_empty!10321 () Bool)

(assert (=> b!406587 (= e!244287 tp_is_empty!10321)))

(declare-fun b!406588 () Bool)

(declare-fun e!244291 () Bool)

(assert (=> b!406588 (= e!244291 tp_is_empty!10321)))

(declare-fun b!406589 () Bool)

(declare-fun res!235001 () Bool)

(assert (=> b!406589 (=> (not res!235001) (not e!244286))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406589 (= res!235001 (validKeyInArray!0 k!794))))

(declare-fun b!406590 () Bool)

(declare-fun res!234993 () Bool)

(assert (=> b!406590 (=> (not res!234993) (not e!244286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24499 (_ BitVec 32)) Bool)

(assert (=> b!406590 (= res!234993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406591 () Bool)

(declare-fun e!244289 () Bool)

(assert (=> b!406591 (= e!244289 false)))

(declare-fun lt!188504 () Bool)

(declare-fun lt!188505 () array!24499)

(declare-datatypes ((List!6768 0))(
  ( (Nil!6765) (Cons!6764 (h!7620 (_ BitVec 64)) (t!11950 List!6768)) )
))
(declare-fun arrayNoDuplicates!0 (array!24499 (_ BitVec 32) List!6768) Bool)

(assert (=> b!406591 (= lt!188504 (arrayNoDuplicates!0 lt!188505 #b00000000000000000000000000000000 Nil!6765))))

(declare-fun b!406592 () Bool)

(declare-fun res!234996 () Bool)

(assert (=> b!406592 (=> (not res!234996) (not e!244286))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406592 (= res!234996 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12048 _keys!709))))))

(declare-fun b!406594 () Bool)

(declare-fun e!244290 () Bool)

(declare-fun mapRes!17103 () Bool)

(assert (=> b!406594 (= e!244290 (and e!244287 mapRes!17103))))

(declare-fun condMapEmpty!17103 () Bool)

(declare-fun mapDefault!17103 () ValueCell!4817)


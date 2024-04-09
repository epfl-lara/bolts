; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38890 () Bool)

(assert start!38890)

(declare-fun b!406197 () Bool)

(declare-fun res!234697 () Bool)

(declare-fun e!244111 () Bool)

(assert (=> b!406197 (=> (not res!234697) (not e!244111))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406197 (= res!234697 (validMask!0 mask!1025))))

(declare-fun b!406198 () Bool)

(declare-fun res!234702 () Bool)

(assert (=> b!406198 (=> (not res!234702) (not e!244111))))

(declare-datatypes ((array!24459 0))(
  ( (array!24460 (arr!11676 (Array (_ BitVec 32) (_ BitVec 64))) (size!12028 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24459)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24459 (_ BitVec 32)) Bool)

(assert (=> b!406198 (= res!234702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406199 () Bool)

(declare-fun res!234701 () Bool)

(assert (=> b!406199 (=> (not res!234701) (not e!244111))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14839 0))(
  ( (V!14840 (val!5195 Int)) )
))
(declare-datatypes ((ValueCell!4807 0))(
  ( (ValueCellFull!4807 (v!7438 V!14839)) (EmptyCell!4807) )
))
(declare-datatypes ((array!24461 0))(
  ( (array!24462 (arr!11677 (Array (_ BitVec 32) ValueCell!4807)) (size!12029 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24461)

(assert (=> b!406199 (= res!234701 (and (= (size!12029 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12028 _keys!709) (size!12029 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406200 () Bool)

(declare-fun e!244106 () Bool)

(assert (=> b!406200 (= e!244111 e!244106)))

(declare-fun res!234694 () Bool)

(assert (=> b!406200 (=> (not res!234694) (not e!244106))))

(declare-fun lt!188445 () array!24459)

(assert (=> b!406200 (= res!234694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188445 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406200 (= lt!188445 (array!24460 (store (arr!11676 _keys!709) i!563 k!794) (size!12028 _keys!709)))))

(declare-fun b!406201 () Bool)

(declare-fun e!244110 () Bool)

(declare-fun e!244108 () Bool)

(declare-fun mapRes!17073 () Bool)

(assert (=> b!406201 (= e!244110 (and e!244108 mapRes!17073))))

(declare-fun condMapEmpty!17073 () Bool)

(declare-fun mapDefault!17073 () ValueCell!4807)


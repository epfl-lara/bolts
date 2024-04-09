; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39012 () Bool)

(assert start!39012)

(declare-fun b!408575 () Bool)

(declare-fun res!236524 () Bool)

(declare-fun e!245205 () Bool)

(assert (=> b!408575 (=> (not res!236524) (not e!245205))))

(declare-datatypes ((array!24701 0))(
  ( (array!24702 (arr!11797 (Array (_ BitVec 32) (_ BitVec 64))) (size!12149 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24701)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15003 0))(
  ( (V!15004 (val!5256 Int)) )
))
(declare-datatypes ((ValueCell!4868 0))(
  ( (ValueCellFull!4868 (v!7499 V!15003)) (EmptyCell!4868) )
))
(declare-datatypes ((array!24703 0))(
  ( (array!24704 (arr!11798 (Array (_ BitVec 32) ValueCell!4868)) (size!12150 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24703)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!408575 (= res!236524 (and (= (size!12150 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12149 _keys!709) (size!12150 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408576 () Bool)

(declare-fun res!236532 () Bool)

(assert (=> b!408576 (=> (not res!236532) (not e!245205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24701 (_ BitVec 32)) Bool)

(assert (=> b!408576 (= res!236532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17256 () Bool)

(declare-fun mapRes!17256 () Bool)

(assert (=> mapIsEmpty!17256 mapRes!17256))

(declare-fun b!408577 () Bool)

(declare-fun e!245207 () Bool)

(declare-fun e!245208 () Bool)

(assert (=> b!408577 (= e!245207 (and e!245208 mapRes!17256))))

(declare-fun condMapEmpty!17256 () Bool)

(declare-fun mapDefault!17256 () ValueCell!4868)


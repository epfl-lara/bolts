; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39102 () Bool)

(assert start!39102)

(declare-fun b_free!9361 () Bool)

(declare-fun b_next!9361 () Bool)

(assert (=> start!39102 (= b_free!9361 (not b_next!9361))))

(declare-fun tp!33611 () Bool)

(declare-fun b_and!16765 () Bool)

(assert (=> start!39102 (= tp!33611 b_and!16765)))

(declare-fun b!410532 () Bool)

(declare-fun res!238075 () Bool)

(declare-fun e!246014 () Bool)

(assert (=> b!410532 (=> (not res!238075) (not e!246014))))

(declare-datatypes ((array!24875 0))(
  ( (array!24876 (arr!11884 (Array (_ BitVec 32) (_ BitVec 64))) (size!12236 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24875)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15123 0))(
  ( (V!15124 (val!5301 Int)) )
))
(declare-datatypes ((ValueCell!4913 0))(
  ( (ValueCellFull!4913 (v!7544 V!15123)) (EmptyCell!4913) )
))
(declare-datatypes ((array!24877 0))(
  ( (array!24878 (arr!11885 (Array (_ BitVec 32) ValueCell!4913)) (size!12237 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24877)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!410532 (= res!238075 (and (= (size!12237 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12236 _keys!709) (size!12237 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410533 () Bool)

(declare-fun res!238081 () Bool)

(assert (=> b!410533 (=> (not res!238081) (not e!246014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24875 (_ BitVec 32)) Bool)

(assert (=> b!410533 (= res!238081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410534 () Bool)

(declare-fun res!238085 () Bool)

(assert (=> b!410534 (=> (not res!238085) (not e!246014))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410534 (= res!238085 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17391 () Bool)

(declare-fun mapRes!17391 () Bool)

(assert (=> mapIsEmpty!17391 mapRes!17391))

(declare-fun b!410535 () Bool)

(declare-fun res!238084 () Bool)

(assert (=> b!410535 (=> (not res!238084) (not e!246014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410535 (= res!238084 (validMask!0 mask!1025))))

(declare-fun b!410536 () Bool)

(declare-fun e!246017 () Bool)

(declare-fun e!246018 () Bool)

(assert (=> b!410536 (= e!246017 (and e!246018 mapRes!17391))))

(declare-fun condMapEmpty!17391 () Bool)

(declare-fun mapDefault!17391 () ValueCell!4913)


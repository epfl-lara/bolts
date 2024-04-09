; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95914 () Bool)

(assert start!95914)

(declare-fun b_free!22531 () Bool)

(declare-fun b_next!22531 () Bool)

(assert (=> start!95914 (= b_free!22531 (not b_next!22531))))

(declare-fun tp!79442 () Bool)

(declare-fun b_and!35755 () Bool)

(assert (=> start!95914 (= tp!79442 b_and!35755)))

(declare-fun b!1085363 () Bool)

(declare-fun e!620077 () Bool)

(declare-fun tp_is_empty!26533 () Bool)

(assert (=> b!1085363 (= e!620077 tp_is_empty!26533)))

(declare-fun mapNonEmpty!41554 () Bool)

(declare-fun mapRes!41554 () Bool)

(declare-fun tp!79443 () Bool)

(assert (=> mapNonEmpty!41554 (= mapRes!41554 (and tp!79443 e!620077))))

(declare-datatypes ((V!40505 0))(
  ( (V!40506 (val!13323 Int)) )
))
(declare-datatypes ((ValueCell!12557 0))(
  ( (ValueCellFull!12557 (v!15945 V!40505)) (EmptyCell!12557) )
))
(declare-datatypes ((array!69966 0))(
  ( (array!69967 (arr!33653 (Array (_ BitVec 32) ValueCell!12557)) (size!34190 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69966)

(declare-fun mapValue!41554 () ValueCell!12557)

(declare-fun mapRest!41554 () (Array (_ BitVec 32) ValueCell!12557))

(declare-fun mapKey!41554 () (_ BitVec 32))

(assert (=> mapNonEmpty!41554 (= (arr!33653 _values!874) (store mapRest!41554 mapKey!41554 mapValue!41554))))

(declare-fun b!1085364 () Bool)

(declare-fun res!723736 () Bool)

(declare-fun e!620078 () Bool)

(assert (=> b!1085364 (=> (not res!723736) (not e!620078))))

(declare-datatypes ((array!69968 0))(
  ( (array!69969 (arr!33654 (Array (_ BitVec 32) (_ BitVec 64))) (size!34191 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69968)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69968 (_ BitVec 32)) Bool)

(assert (=> b!1085364 (= res!723736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!723742 () Bool)

(assert (=> start!95914 (=> (not res!723742) (not e!620078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95914 (= res!723742 (validMask!0 mask!1414))))

(assert (=> start!95914 e!620078))

(assert (=> start!95914 tp!79442))

(assert (=> start!95914 true))

(assert (=> start!95914 tp_is_empty!26533))

(declare-fun array_inv!25824 (array!69968) Bool)

(assert (=> start!95914 (array_inv!25824 _keys!1070)))

(declare-fun e!620076 () Bool)

(declare-fun array_inv!25825 (array!69966) Bool)

(assert (=> start!95914 (and (array_inv!25825 _values!874) e!620076)))

(declare-fun b!1085365 () Bool)

(declare-fun e!620079 () Bool)

(assert (=> b!1085365 (= e!620079 tp_is_empty!26533)))

(declare-fun b!1085366 () Bool)

(declare-fun res!723737 () Bool)

(assert (=> b!1085366 (=> (not res!723737) (not e!620078))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085366 (= res!723737 (= (select (arr!33654 _keys!1070) i!650) k!904))))

(declare-fun b!1085367 () Bool)

(assert (=> b!1085367 (= e!620076 (and e!620079 mapRes!41554))))

(declare-fun condMapEmpty!41554 () Bool)

(declare-fun mapDefault!41554 () ValueCell!12557)


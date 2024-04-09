; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95872 () Bool)

(assert start!95872)

(declare-fun b_free!22489 () Bool)

(declare-fun b_next!22489 () Bool)

(assert (=> start!95872 (= b_free!22489 (not b_next!22489))))

(declare-fun tp!79316 () Bool)

(declare-fun b_and!35671 () Bool)

(assert (=> start!95872 (= tp!79316 b_and!35671)))

(declare-fun res!723064 () Bool)

(declare-fun e!619597 () Bool)

(assert (=> start!95872 (=> (not res!723064) (not e!619597))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95872 (= res!723064 (validMask!0 mask!1414))))

(assert (=> start!95872 e!619597))

(assert (=> start!95872 tp!79316))

(assert (=> start!95872 true))

(declare-fun tp_is_empty!26491 () Bool)

(assert (=> start!95872 tp_is_empty!26491))

(declare-datatypes ((array!69884 0))(
  ( (array!69885 (arr!33612 (Array (_ BitVec 32) (_ BitVec 64))) (size!34149 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69884)

(declare-fun array_inv!25792 (array!69884) Bool)

(assert (=> start!95872 (array_inv!25792 _keys!1070)))

(declare-datatypes ((V!40449 0))(
  ( (V!40450 (val!13302 Int)) )
))
(declare-datatypes ((ValueCell!12536 0))(
  ( (ValueCellFull!12536 (v!15924 V!40449)) (EmptyCell!12536) )
))
(declare-datatypes ((array!69886 0))(
  ( (array!69887 (arr!33613 (Array (_ BitVec 32) ValueCell!12536)) (size!34150 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69886)

(declare-fun e!619594 () Bool)

(declare-fun array_inv!25793 (array!69886) Bool)

(assert (=> start!95872 (and (array_inv!25793 _values!874) e!619594)))

(declare-fun mapNonEmpty!41491 () Bool)

(declare-fun mapRes!41491 () Bool)

(declare-fun tp!79317 () Bool)

(declare-fun e!619593 () Bool)

(assert (=> mapNonEmpty!41491 (= mapRes!41491 (and tp!79317 e!619593))))

(declare-fun mapValue!41491 () ValueCell!12536)

(declare-fun mapRest!41491 () (Array (_ BitVec 32) ValueCell!12536))

(declare-fun mapKey!41491 () (_ BitVec 32))

(assert (=> mapNonEmpty!41491 (= (arr!33613 _values!874) (store mapRest!41491 mapKey!41491 mapValue!41491))))

(declare-fun b!1084453 () Bool)

(declare-fun e!619592 () Bool)

(assert (=> b!1084453 (= e!619594 (and e!619592 mapRes!41491))))

(declare-fun condMapEmpty!41491 () Bool)

(declare-fun mapDefault!41491 () ValueCell!12536)


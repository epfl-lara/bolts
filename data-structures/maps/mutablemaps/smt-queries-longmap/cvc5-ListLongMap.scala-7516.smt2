; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95350 () Bool)

(assert start!95350)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun e!615685 () Bool)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun b!1076918 () Bool)

(declare-datatypes ((array!69056 0))(
  ( (array!69057 (arr!33207 (Array (_ BitVec 32) (_ BitVec 64))) (size!33744 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69056)

(declare-datatypes ((V!39889 0))(
  ( (V!39890 (val!13092 Int)) )
))
(declare-datatypes ((ValueCell!12326 0))(
  ( (ValueCellFull!12326 (v!15712 V!39889)) (EmptyCell!12326) )
))
(declare-datatypes ((array!69058 0))(
  ( (array!69059 (arr!33208 (Array (_ BitVec 32) ValueCell!12326)) (size!33745 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69058)

(assert (=> b!1076918 (= e!615685 (and (= (size!33745 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33744 _keys!1070) (size!33745 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011) (not (= (size!33744 _keys!1070) (bvadd #b00000000000000000000000000000001 mask!1414)))))))

(declare-fun mapNonEmpty!40834 () Bool)

(declare-fun mapRes!40834 () Bool)

(declare-fun tp!78297 () Bool)

(declare-fun e!615683 () Bool)

(assert (=> mapNonEmpty!40834 (= mapRes!40834 (and tp!78297 e!615683))))

(declare-fun mapKey!40834 () (_ BitVec 32))

(declare-fun mapRest!40834 () (Array (_ BitVec 32) ValueCell!12326))

(declare-fun mapValue!40834 () ValueCell!12326)

(assert (=> mapNonEmpty!40834 (= (arr!33208 _values!874) (store mapRest!40834 mapKey!40834 mapValue!40834))))

(declare-fun mapIsEmpty!40834 () Bool)

(assert (=> mapIsEmpty!40834 mapRes!40834))

(declare-fun b!1076919 () Bool)

(declare-fun e!615684 () Bool)

(declare-fun e!615686 () Bool)

(assert (=> b!1076919 (= e!615684 (and e!615686 mapRes!40834))))

(declare-fun condMapEmpty!40834 () Bool)

(declare-fun mapDefault!40834 () ValueCell!12326)


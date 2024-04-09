; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94258 () Bool)

(assert start!94258)

(declare-fun b_free!21607 () Bool)

(declare-fun b_next!21607 () Bool)

(assert (=> start!94258 (= b_free!21607 (not b_next!21607))))

(declare-fun tp!76260 () Bool)

(declare-fun b_and!34385 () Bool)

(assert (=> start!94258 (= tp!76260 b_and!34385)))

(declare-fun b!1065487 () Bool)

(declare-fun e!607475 () Bool)

(declare-fun tp_is_empty!25417 () Bool)

(assert (=> b!1065487 (= e!607475 tp_is_empty!25417)))

(declare-fun mapIsEmpty!39811 () Bool)

(declare-fun mapRes!39811 () Bool)

(assert (=> mapIsEmpty!39811 mapRes!39811))

(declare-fun mapNonEmpty!39811 () Bool)

(declare-fun tp!76259 () Bool)

(declare-fun e!607472 () Bool)

(assert (=> mapNonEmpty!39811 (= mapRes!39811 (and tp!76259 e!607472))))

(declare-datatypes ((V!39025 0))(
  ( (V!39026 (val!12759 Int)) )
))
(declare-datatypes ((ValueCell!12005 0))(
  ( (ValueCellFull!12005 (v!15372 V!39025)) (EmptyCell!12005) )
))
(declare-fun mapValue!39811 () ValueCell!12005)

(declare-datatypes ((array!67794 0))(
  ( (array!67795 (arr!32596 (Array (_ BitVec 32) ValueCell!12005)) (size!33133 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67794)

(declare-fun mapRest!39811 () (Array (_ BitVec 32) ValueCell!12005))

(declare-fun mapKey!39811 () (_ BitVec 32))

(assert (=> mapNonEmpty!39811 (= (arr!32596 _values!955) (store mapRest!39811 mapKey!39811 mapValue!39811))))

(declare-fun b!1065488 () Bool)

(declare-fun e!607474 () Bool)

(assert (=> b!1065488 (= e!607474 (and e!607475 mapRes!39811))))

(declare-fun condMapEmpty!39811 () Bool)

(declare-fun mapDefault!39811 () ValueCell!12005)


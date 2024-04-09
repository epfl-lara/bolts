; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94928 () Bool)

(assert start!94928)

(declare-fun b_free!22097 () Bool)

(declare-fun b_next!22097 () Bool)

(assert (=> start!94928 (= b_free!22097 (not b_next!22097))))

(declare-fun tp!77756 () Bool)

(declare-fun b_and!34969 () Bool)

(assert (=> start!94928 (= tp!77756 b_and!34969)))

(declare-fun mapNonEmpty!40573 () Bool)

(declare-fun mapRes!40573 () Bool)

(declare-fun tp!77757 () Bool)

(declare-fun e!612934 () Bool)

(assert (=> mapNonEmpty!40573 (= mapRes!40573 (and tp!77757 e!612934))))

(declare-datatypes ((V!39677 0))(
  ( (V!39678 (val!13004 Int)) )
))
(declare-datatypes ((ValueCell!12250 0))(
  ( (ValueCellFull!12250 (v!15623 V!39677)) (EmptyCell!12250) )
))
(declare-fun mapValue!40573 () ValueCell!12250)

(declare-fun mapRest!40573 () (Array (_ BitVec 32) ValueCell!12250))

(declare-fun mapKey!40573 () (_ BitVec 32))

(declare-datatypes ((array!68744 0))(
  ( (array!68745 (arr!33062 (Array (_ BitVec 32) ValueCell!12250)) (size!33599 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68744)

(assert (=> mapNonEmpty!40573 (= (arr!33062 _values!955) (store mapRest!40573 mapKey!40573 mapValue!40573))))

(declare-fun b!1072914 () Bool)

(declare-fun e!612935 () Bool)

(declare-fun tp_is_empty!25907 () Bool)

(assert (=> b!1072914 (= e!612935 tp_is_empty!25907)))

(declare-fun b!1072915 () Bool)

(declare-fun e!612937 () Bool)

(assert (=> b!1072915 (= e!612937 (and e!612935 mapRes!40573))))

(declare-fun condMapEmpty!40573 () Bool)

(declare-fun mapDefault!40573 () ValueCell!12250)


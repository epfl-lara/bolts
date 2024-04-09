; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94722 () Bool)

(assert start!94722)

(declare-fun b_free!21955 () Bool)

(declare-fun b_next!21955 () Bool)

(assert (=> start!94722 (= b_free!21955 (not b_next!21955))))

(declare-fun tp!77322 () Bool)

(declare-fun b_and!34793 () Bool)

(assert (=> start!94722 (= tp!77322 b_and!34793)))

(declare-fun b!1070515 () Bool)

(declare-fun e!611154 () Bool)

(declare-fun tp_is_empty!25765 () Bool)

(assert (=> b!1070515 (= e!611154 tp_is_empty!25765)))

(declare-fun b!1070516 () Bool)

(declare-fun e!611155 () Bool)

(assert (=> b!1070516 (= e!611155 tp_is_empty!25765)))

(declare-fun b!1070517 () Bool)

(declare-fun e!611157 () Bool)

(declare-fun mapRes!40351 () Bool)

(assert (=> b!1070517 (= e!611157 (and e!611155 mapRes!40351))))

(declare-fun condMapEmpty!40351 () Bool)

(declare-datatypes ((V!39489 0))(
  ( (V!39490 (val!12933 Int)) )
))
(declare-datatypes ((ValueCell!12179 0))(
  ( (ValueCellFull!12179 (v!15550 V!39489)) (EmptyCell!12179) )
))
(declare-datatypes ((array!68468 0))(
  ( (array!68469 (arr!32927 (Array (_ BitVec 32) ValueCell!12179)) (size!33464 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68468)

(declare-fun mapDefault!40351 () ValueCell!12179)


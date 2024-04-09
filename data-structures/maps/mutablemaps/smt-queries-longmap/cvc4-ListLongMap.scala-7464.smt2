; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94732 () Bool)

(assert start!94732)

(declare-fun b_free!21965 () Bool)

(declare-fun b_next!21965 () Bool)

(assert (=> start!94732 (= b_free!21965 (not b_next!21965))))

(declare-fun tp!77351 () Bool)

(declare-fun b_and!34803 () Bool)

(assert (=> start!94732 (= tp!77351 b_and!34803)))

(declare-fun b!1070635 () Bool)

(declare-fun e!611245 () Bool)

(declare-fun e!611244 () Bool)

(declare-fun mapRes!40366 () Bool)

(assert (=> b!1070635 (= e!611245 (and e!611244 mapRes!40366))))

(declare-fun condMapEmpty!40366 () Bool)

(declare-datatypes ((V!39501 0))(
  ( (V!39502 (val!12938 Int)) )
))
(declare-datatypes ((ValueCell!12184 0))(
  ( (ValueCellFull!12184 (v!15555 V!39501)) (EmptyCell!12184) )
))
(declare-datatypes ((array!68486 0))(
  ( (array!68487 (arr!32936 (Array (_ BitVec 32) ValueCell!12184)) (size!33473 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68486)

(declare-fun mapDefault!40366 () ValueCell!12184)


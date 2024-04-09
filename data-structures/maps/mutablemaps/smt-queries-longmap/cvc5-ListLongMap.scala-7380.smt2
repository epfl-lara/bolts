; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94056 () Bool)

(assert start!94056)

(declare-fun b_free!21457 () Bool)

(declare-fun b_next!21457 () Bool)

(assert (=> start!94056 (= b_free!21457 (not b_next!21457))))

(declare-fun tp!75801 () Bool)

(declare-fun b_and!34207 () Bool)

(assert (=> start!94056 (= tp!75801 b_and!34207)))

(declare-fun b!1063353 () Bool)

(declare-fun e!605929 () Bool)

(declare-fun tp_is_empty!25267 () Bool)

(assert (=> b!1063353 (= e!605929 tp_is_empty!25267)))

(declare-fun b!1063354 () Bool)

(declare-fun e!605932 () Bool)

(declare-fun e!605931 () Bool)

(declare-fun mapRes!39577 () Bool)

(assert (=> b!1063354 (= e!605932 (and e!605931 mapRes!39577))))

(declare-fun condMapEmpty!39577 () Bool)

(declare-datatypes ((V!38825 0))(
  ( (V!38826 (val!12684 Int)) )
))
(declare-datatypes ((ValueCell!11930 0))(
  ( (ValueCellFull!11930 (v!15296 V!38825)) (EmptyCell!11930) )
))
(declare-datatypes ((array!67508 0))(
  ( (array!67509 (arr!32456 (Array (_ BitVec 32) ValueCell!11930)) (size!32993 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67508)

(declare-fun mapDefault!39577 () ValueCell!11930)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94708 () Bool)

(assert start!94708)

(declare-fun b_free!21941 () Bool)

(declare-fun b_next!21941 () Bool)

(assert (=> start!94708 (= b_free!21941 (not b_next!21941))))

(declare-fun tp!77280 () Bool)

(declare-fun b_and!34779 () Bool)

(assert (=> start!94708 (= tp!77280 b_and!34779)))

(declare-fun mapIsEmpty!40330 () Bool)

(declare-fun mapRes!40330 () Bool)

(assert (=> mapIsEmpty!40330 mapRes!40330))

(declare-fun b!1070347 () Bool)

(declare-fun e!611031 () Bool)

(declare-fun e!611030 () Bool)

(assert (=> b!1070347 (= e!611031 (and e!611030 mapRes!40330))))

(declare-fun condMapEmpty!40330 () Bool)

(declare-datatypes ((V!39469 0))(
  ( (V!39470 (val!12926 Int)) )
))
(declare-datatypes ((ValueCell!12172 0))(
  ( (ValueCellFull!12172 (v!15543 V!39469)) (EmptyCell!12172) )
))
(declare-datatypes ((array!68446 0))(
  ( (array!68447 (arr!32916 (Array (_ BitVec 32) ValueCell!12172)) (size!33453 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68446)

(declare-fun mapDefault!40330 () ValueCell!12172)


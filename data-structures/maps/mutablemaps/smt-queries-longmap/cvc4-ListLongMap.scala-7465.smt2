; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94754 () Bool)

(assert start!94754)

(declare-fun b_free!21971 () Bool)

(declare-fun b_next!21971 () Bool)

(assert (=> start!94754 (= b_free!21971 (not b_next!21971))))

(declare-fun tp!77372 () Bool)

(declare-fun b_and!34819 () Bool)

(assert (=> start!94754 (= tp!77372 b_and!34819)))

(declare-fun b!1070863 () Bool)

(declare-fun e!611404 () Bool)

(declare-fun e!611399 () Bool)

(declare-fun mapRes!40378 () Bool)

(assert (=> b!1070863 (= e!611404 (and e!611399 mapRes!40378))))

(declare-fun condMapEmpty!40378 () Bool)

(declare-datatypes ((V!39509 0))(
  ( (V!39510 (val!12941 Int)) )
))
(declare-datatypes ((ValueCell!12187 0))(
  ( (ValueCellFull!12187 (v!15558 V!39509)) (EmptyCell!12187) )
))
(declare-datatypes ((array!68498 0))(
  ( (array!68499 (arr!32941 (Array (_ BitVec 32) ValueCell!12187)) (size!33478 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68498)

(declare-fun mapDefault!40378 () ValueCell!12187)


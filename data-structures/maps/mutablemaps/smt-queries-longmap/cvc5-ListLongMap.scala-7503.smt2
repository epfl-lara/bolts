; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95134 () Bool)

(assert start!95134)

(declare-fun b_free!22195 () Bool)

(declare-fun b_next!22195 () Bool)

(assert (=> start!95134 (= b_free!22195 (not b_next!22195))))

(declare-fun tp!78068 () Bool)

(declare-fun b_and!35133 () Bool)

(assert (=> start!95134 (= tp!78068 b_and!35133)))

(declare-fun b!1074989 () Bool)

(declare-fun e!614369 () Bool)

(declare-fun e!614365 () Bool)

(declare-fun mapRes!40738 () Bool)

(assert (=> b!1074989 (= e!614369 (and e!614365 mapRes!40738))))

(declare-fun condMapEmpty!40738 () Bool)

(declare-datatypes ((V!39809 0))(
  ( (V!39810 (val!13053 Int)) )
))
(declare-datatypes ((ValueCell!12299 0))(
  ( (ValueCellFull!12299 (v!15677 V!39809)) (EmptyCell!12299) )
))
(declare-datatypes ((array!68942 0))(
  ( (array!68943 (arr!33155 (Array (_ BitVec 32) ValueCell!12299)) (size!33692 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68942)

(declare-fun mapDefault!40738 () ValueCell!12299)


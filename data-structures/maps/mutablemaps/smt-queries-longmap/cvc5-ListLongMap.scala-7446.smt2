; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94584 () Bool)

(assert start!94584)

(declare-fun b_free!21853 () Bool)

(declare-fun b_next!21853 () Bool)

(assert (=> start!94584 (= b_free!21853 (not b_next!21853))))

(declare-fun tp!77010 () Bool)

(declare-fun b_and!34673 () Bool)

(assert (=> start!94584 (= tp!77010 b_and!34673)))

(declare-fun b!1069123 () Bool)

(declare-fun e!610157 () Bool)

(declare-fun e!610156 () Bool)

(declare-fun mapRes!40192 () Bool)

(assert (=> b!1069123 (= e!610157 (and e!610156 mapRes!40192))))

(declare-fun condMapEmpty!40192 () Bool)

(declare-datatypes ((V!39353 0))(
  ( (V!39354 (val!12882 Int)) )
))
(declare-datatypes ((ValueCell!12128 0))(
  ( (ValueCellFull!12128 (v!15498 V!39353)) (EmptyCell!12128) )
))
(declare-datatypes ((array!68274 0))(
  ( (array!68275 (arr!32832 (Array (_ BitVec 32) ValueCell!12128)) (size!33369 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68274)

(declare-fun mapDefault!40192 () ValueCell!12128)


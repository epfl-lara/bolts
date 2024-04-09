; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94648 () Bool)

(assert start!94648)

(declare-fun b_free!21895 () Bool)

(declare-fun b_next!21895 () Bool)

(assert (=> start!94648 (= b_free!21895 (not b_next!21895))))

(declare-fun tp!77139 () Bool)

(declare-fun b_and!34725 () Bool)

(assert (=> start!94648 (= tp!77139 b_and!34725)))

(declare-fun mapIsEmpty!40258 () Bool)

(declare-fun mapRes!40258 () Bool)

(assert (=> mapIsEmpty!40258 mapRes!40258))

(declare-fun b!1069735 () Bool)

(declare-fun e!610583 () Bool)

(declare-fun tp_is_empty!25705 () Bool)

(assert (=> b!1069735 (= e!610583 tp_is_empty!25705)))

(declare-fun b!1069736 () Bool)

(declare-fun e!610586 () Bool)

(assert (=> b!1069736 (= e!610586 (and e!610583 mapRes!40258))))

(declare-fun condMapEmpty!40258 () Bool)

(declare-datatypes ((V!39409 0))(
  ( (V!39410 (val!12903 Int)) )
))
(declare-datatypes ((ValueCell!12149 0))(
  ( (ValueCellFull!12149 (v!15520 V!39409)) (EmptyCell!12149) )
))
(declare-datatypes ((array!68358 0))(
  ( (array!68359 (arr!32873 (Array (_ BitVec 32) ValueCell!12149)) (size!33410 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68358)

(declare-fun mapDefault!40258 () ValueCell!12149)


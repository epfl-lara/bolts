; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94710 () Bool)

(assert start!94710)

(declare-fun b_free!21943 () Bool)

(declare-fun b_next!21943 () Bool)

(assert (=> start!94710 (= b_free!21943 (not b_next!21943))))

(declare-fun tp!77286 () Bool)

(declare-fun b_and!34781 () Bool)

(assert (=> start!94710 (= tp!77286 b_and!34781)))

(declare-fun mapNonEmpty!40333 () Bool)

(declare-fun mapRes!40333 () Bool)

(declare-fun tp!77285 () Bool)

(declare-fun e!611049 () Bool)

(assert (=> mapNonEmpty!40333 (= mapRes!40333 (and tp!77285 e!611049))))

(declare-datatypes ((V!39473 0))(
  ( (V!39474 (val!12927 Int)) )
))
(declare-datatypes ((ValueCell!12173 0))(
  ( (ValueCellFull!12173 (v!15544 V!39473)) (EmptyCell!12173) )
))
(declare-fun mapValue!40333 () ValueCell!12173)

(declare-fun mapRest!40333 () (Array (_ BitVec 32) ValueCell!12173))

(declare-fun mapKey!40333 () (_ BitVec 32))

(declare-datatypes ((array!68448 0))(
  ( (array!68449 (arr!32917 (Array (_ BitVec 32) ValueCell!12173)) (size!33454 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68448)

(assert (=> mapNonEmpty!40333 (= (arr!32917 _values!955) (store mapRest!40333 mapKey!40333 mapValue!40333))))

(declare-fun b!1070371 () Bool)

(declare-fun e!611046 () Bool)

(declare-fun e!611044 () Bool)

(assert (=> b!1070371 (= e!611046 (and e!611044 mapRes!40333))))

(declare-fun condMapEmpty!40333 () Bool)

(declare-fun mapDefault!40333 () ValueCell!12173)


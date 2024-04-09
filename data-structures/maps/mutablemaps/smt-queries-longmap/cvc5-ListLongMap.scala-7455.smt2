; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94660 () Bool)

(assert start!94660)

(declare-fun b_free!21907 () Bool)

(declare-fun b_next!21907 () Bool)

(assert (=> start!94660 (= b_free!21907 (not b_next!21907))))

(declare-fun tp!77175 () Bool)

(declare-fun b_and!34737 () Bool)

(assert (=> start!94660 (= tp!77175 b_and!34737)))

(declare-fun b!1069861 () Bool)

(declare-fun res!713879 () Bool)

(declare-fun e!610674 () Bool)

(assert (=> b!1069861 (=> (not res!713879) (not e!610674))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39425 0))(
  ( (V!39426 (val!12909 Int)) )
))
(declare-datatypes ((ValueCell!12155 0))(
  ( (ValueCellFull!12155 (v!15526 V!39425)) (EmptyCell!12155) )
))
(declare-datatypes ((array!68380 0))(
  ( (array!68381 (arr!32884 (Array (_ BitVec 32) ValueCell!12155)) (size!33421 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68380)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68382 0))(
  ( (array!68383 (arr!32885 (Array (_ BitVec 32) (_ BitVec 64))) (size!33422 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68382)

(assert (=> b!1069861 (= res!713879 (and (= (size!33421 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33422 _keys!1163) (size!33421 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069862 () Bool)

(declare-fun e!610675 () Bool)

(declare-fun tp_is_empty!25717 () Bool)

(assert (=> b!1069862 (= e!610675 tp_is_empty!25717)))

(declare-fun mapNonEmpty!40276 () Bool)

(declare-fun mapRes!40276 () Bool)

(declare-fun tp!77174 () Bool)

(assert (=> mapNonEmpty!40276 (= mapRes!40276 (and tp!77174 e!610675))))

(declare-fun mapRest!40276 () (Array (_ BitVec 32) ValueCell!12155))

(declare-fun mapValue!40276 () ValueCell!12155)

(declare-fun mapKey!40276 () (_ BitVec 32))

(assert (=> mapNonEmpty!40276 (= (arr!32884 _values!955) (store mapRest!40276 mapKey!40276 mapValue!40276))))

(declare-fun b!1069863 () Bool)

(declare-fun e!610676 () Bool)

(assert (=> b!1069863 (= e!610676 tp_is_empty!25717)))

(declare-fun mapIsEmpty!40276 () Bool)

(assert (=> mapIsEmpty!40276 mapRes!40276))

(declare-fun b!1069864 () Bool)

(declare-fun e!610672 () Bool)

(assert (=> b!1069864 (= e!610672 (and e!610676 mapRes!40276))))

(declare-fun condMapEmpty!40276 () Bool)

(declare-fun mapDefault!40276 () ValueCell!12155)


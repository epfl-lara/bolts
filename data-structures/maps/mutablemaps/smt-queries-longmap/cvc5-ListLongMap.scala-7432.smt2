; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94478 () Bool)

(assert start!94478)

(declare-fun b_free!21769 () Bool)

(declare-fun b_next!21769 () Bool)

(assert (=> start!94478 (= b_free!21769 (not b_next!21769))))

(declare-fun tp!76755 () Bool)

(declare-fun b_and!34579 () Bool)

(assert (=> start!94478 (= tp!76755 b_and!34579)))

(declare-fun mapNonEmpty!40063 () Bool)

(declare-fun mapRes!40063 () Bool)

(declare-fun tp!76754 () Bool)

(declare-fun e!609175 () Bool)

(assert (=> mapNonEmpty!40063 (= mapRes!40063 (and tp!76754 e!609175))))

(declare-datatypes ((V!39241 0))(
  ( (V!39242 (val!12840 Int)) )
))
(declare-datatypes ((ValueCell!12086 0))(
  ( (ValueCellFull!12086 (v!15455 V!39241)) (EmptyCell!12086) )
))
(declare-fun mapRest!40063 () (Array (_ BitVec 32) ValueCell!12086))

(declare-datatypes ((array!68112 0))(
  ( (array!68113 (arr!32752 (Array (_ BitVec 32) ValueCell!12086)) (size!33289 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68112)

(declare-fun mapValue!40063 () ValueCell!12086)

(declare-fun mapKey!40063 () (_ BitVec 32))

(assert (=> mapNonEmpty!40063 (= (arr!32752 _values!955) (store mapRest!40063 mapKey!40063 mapValue!40063))))

(declare-fun b!1067832 () Bool)

(declare-fun res!712667 () Bool)

(declare-fun e!609171 () Bool)

(assert (=> b!1067832 (=> (not res!712667) (not e!609171))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68114 0))(
  ( (array!68115 (arr!32753 (Array (_ BitVec 32) (_ BitVec 64))) (size!33290 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68114)

(assert (=> b!1067832 (= res!712667 (and (= (size!33289 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33290 _keys!1163) (size!33289 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!712666 () Bool)

(assert (=> start!94478 (=> (not res!712666) (not e!609171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94478 (= res!712666 (validMask!0 mask!1515))))

(assert (=> start!94478 e!609171))

(assert (=> start!94478 true))

(declare-fun tp_is_empty!25579 () Bool)

(assert (=> start!94478 tp_is_empty!25579))

(declare-fun e!609172 () Bool)

(declare-fun array_inv!25190 (array!68112) Bool)

(assert (=> start!94478 (and (array_inv!25190 _values!955) e!609172)))

(assert (=> start!94478 tp!76755))

(declare-fun array_inv!25191 (array!68114) Bool)

(assert (=> start!94478 (array_inv!25191 _keys!1163)))

(declare-fun b!1067833 () Bool)

(declare-fun e!609173 () Bool)

(assert (=> b!1067833 (= e!609172 (and e!609173 mapRes!40063))))

(declare-fun condMapEmpty!40063 () Bool)

(declare-fun mapDefault!40063 () ValueCell!12086)


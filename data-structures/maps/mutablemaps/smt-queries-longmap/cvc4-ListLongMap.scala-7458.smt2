; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94696 () Bool)

(assert start!94696)

(declare-fun b_free!21929 () Bool)

(declare-fun b_next!21929 () Bool)

(assert (=> start!94696 (= b_free!21929 (not b_next!21929))))

(declare-fun tp!77243 () Bool)

(declare-fun b_and!34767 () Bool)

(assert (=> start!94696 (= tp!77243 b_and!34767)))

(declare-fun mapNonEmpty!40312 () Bool)

(declare-fun mapRes!40312 () Bool)

(declare-fun tp!77244 () Bool)

(declare-fun e!610922 () Bool)

(assert (=> mapNonEmpty!40312 (= mapRes!40312 (and tp!77244 e!610922))))

(declare-fun mapKey!40312 () (_ BitVec 32))

(declare-datatypes ((V!39453 0))(
  ( (V!39454 (val!12920 Int)) )
))
(declare-datatypes ((ValueCell!12166 0))(
  ( (ValueCellFull!12166 (v!15537 V!39453)) (EmptyCell!12166) )
))
(declare-datatypes ((array!68424 0))(
  ( (array!68425 (arr!32905 (Array (_ BitVec 32) ValueCell!12166)) (size!33442 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68424)

(declare-fun mapValue!40312 () ValueCell!12166)

(declare-fun mapRest!40312 () (Array (_ BitVec 32) ValueCell!12166))

(assert (=> mapNonEmpty!40312 (= (arr!32905 _values!955) (store mapRest!40312 mapKey!40312 mapValue!40312))))

(declare-fun res!714069 () Bool)

(declare-fun e!610921 () Bool)

(assert (=> start!94696 (=> (not res!714069) (not e!610921))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94696 (= res!714069 (validMask!0 mask!1515))))

(assert (=> start!94696 e!610921))

(assert (=> start!94696 true))

(declare-fun tp_is_empty!25739 () Bool)

(assert (=> start!94696 tp_is_empty!25739))

(declare-fun e!610918 () Bool)

(declare-fun array_inv!25302 (array!68424) Bool)

(assert (=> start!94696 (and (array_inv!25302 _values!955) e!610918)))

(assert (=> start!94696 tp!77243))

(declare-datatypes ((array!68426 0))(
  ( (array!68427 (arr!32906 (Array (_ BitVec 32) (_ BitVec 64))) (size!33443 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68426)

(declare-fun array_inv!25303 (array!68426) Bool)

(assert (=> start!94696 (array_inv!25303 _keys!1163)))

(declare-fun mapIsEmpty!40312 () Bool)

(assert (=> mapIsEmpty!40312 mapRes!40312))

(declare-fun b!1070203 () Bool)

(declare-fun res!714070 () Bool)

(assert (=> b!1070203 (=> (not res!714070) (not e!610921))))

(declare-datatypes ((List!23085 0))(
  ( (Nil!23082) (Cons!23081 (h!24290 (_ BitVec 64)) (t!32423 List!23085)) )
))
(declare-fun arrayNoDuplicates!0 (array!68426 (_ BitVec 32) List!23085) Bool)

(assert (=> b!1070203 (= res!714070 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23082))))

(declare-fun b!1070204 () Bool)

(declare-fun res!714067 () Bool)

(assert (=> b!1070204 (=> (not res!714067) (not e!610921))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070204 (= res!714067 (and (= (size!33442 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33443 _keys!1163) (size!33442 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070205 () Bool)

(declare-fun e!610920 () Bool)

(assert (=> b!1070205 (= e!610918 (and e!610920 mapRes!40312))))

(declare-fun condMapEmpty!40312 () Bool)

(declare-fun mapDefault!40312 () ValueCell!12166)


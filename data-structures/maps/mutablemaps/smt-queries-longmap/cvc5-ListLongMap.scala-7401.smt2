; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94234 () Bool)

(assert start!94234)

(declare-fun b_free!21583 () Bool)

(declare-fun b_next!21583 () Bool)

(assert (=> start!94234 (= b_free!21583 (not b_next!21583))))

(declare-fun tp!76187 () Bool)

(declare-fun b_and!34361 () Bool)

(assert (=> start!94234 (= tp!76187 b_and!34361)))

(declare-fun mapNonEmpty!39775 () Bool)

(declare-fun mapRes!39775 () Bool)

(declare-fun tp!76188 () Bool)

(declare-fun e!607257 () Bool)

(assert (=> mapNonEmpty!39775 (= mapRes!39775 (and tp!76188 e!607257))))

(declare-fun mapKey!39775 () (_ BitVec 32))

(declare-datatypes ((V!38993 0))(
  ( (V!38994 (val!12747 Int)) )
))
(declare-datatypes ((ValueCell!11993 0))(
  ( (ValueCellFull!11993 (v!15360 V!38993)) (EmptyCell!11993) )
))
(declare-fun mapRest!39775 () (Array (_ BitVec 32) ValueCell!11993))

(declare-datatypes ((array!67746 0))(
  ( (array!67747 (arr!32572 (Array (_ BitVec 32) ValueCell!11993)) (size!33109 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67746)

(declare-fun mapValue!39775 () ValueCell!11993)

(assert (=> mapNonEmpty!39775 (= (arr!32572 _values!955) (store mapRest!39775 mapKey!39775 mapValue!39775))))

(declare-fun mapIsEmpty!39775 () Bool)

(assert (=> mapIsEmpty!39775 mapRes!39775))

(declare-fun res!711125 () Bool)

(declare-fun e!607256 () Bool)

(assert (=> start!94234 (=> (not res!711125) (not e!607256))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94234 (= res!711125 (validMask!0 mask!1515))))

(assert (=> start!94234 e!607256))

(assert (=> start!94234 true))

(declare-fun tp_is_empty!25393 () Bool)

(assert (=> start!94234 tp_is_empty!25393))

(declare-fun e!607260 () Bool)

(declare-fun array_inv!25058 (array!67746) Bool)

(assert (=> start!94234 (and (array_inv!25058 _values!955) e!607260)))

(assert (=> start!94234 tp!76187))

(declare-datatypes ((array!67748 0))(
  ( (array!67749 (arr!32573 (Array (_ BitVec 32) (_ BitVec 64))) (size!33110 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67748)

(declare-fun array_inv!25059 (array!67748) Bool)

(assert (=> start!94234 (array_inv!25059 _keys!1163)))

(declare-fun b!1065199 () Bool)

(declare-fun res!711124 () Bool)

(assert (=> b!1065199 (=> (not res!711124) (not e!607256))))

(declare-datatypes ((List!22833 0))(
  ( (Nil!22830) (Cons!22829 (h!24038 (_ BitVec 64)) (t!32159 List!22833)) )
))
(declare-fun arrayNoDuplicates!0 (array!67748 (_ BitVec 32) List!22833) Bool)

(assert (=> b!1065199 (= res!711124 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22830))))

(declare-fun b!1065200 () Bool)

(declare-fun res!711128 () Bool)

(assert (=> b!1065200 (=> (not res!711128) (not e!607256))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065200 (= res!711128 (and (= (size!33109 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33110 _keys!1163) (size!33109 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065201 () Bool)

(declare-fun e!607259 () Bool)

(assert (=> b!1065201 (= e!607260 (and e!607259 mapRes!39775))))

(declare-fun condMapEmpty!39775 () Bool)

(declare-fun mapDefault!39775 () ValueCell!11993)


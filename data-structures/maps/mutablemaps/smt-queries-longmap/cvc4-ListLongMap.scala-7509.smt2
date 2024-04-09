; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95270 () Bool)

(assert start!95270)

(declare-fun b_free!22235 () Bool)

(declare-fun b_next!22235 () Bool)

(assert (=> start!95270 (= b_free!22235 (not b_next!22235))))

(declare-fun tp!78204 () Bool)

(declare-fun b_and!35231 () Bool)

(assert (=> start!95270 (= tp!78204 b_and!35231)))

(declare-fun mapIsEmpty!40813 () Bool)

(declare-fun mapRes!40813 () Bool)

(assert (=> mapIsEmpty!40813 mapRes!40813))

(declare-fun b!1076394 () Bool)

(declare-fun res!717502 () Bool)

(declare-fun e!615323 () Bool)

(assert (=> b!1076394 (=> (not res!717502) (not e!615323))))

(declare-datatypes ((array!69028 0))(
  ( (array!69029 (arr!33193 (Array (_ BitVec 32) (_ BitVec 64))) (size!33730 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69028)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69028 (_ BitVec 32)) Bool)

(assert (=> b!1076394 (= res!717502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-datatypes ((V!39861 0))(
  ( (V!39862 (val!13073 Int)) )
))
(declare-datatypes ((tuple2!16730 0))(
  ( (tuple2!16731 (_1!8375 (_ BitVec 64)) (_2!8375 V!39861)) )
))
(declare-datatypes ((List!23302 0))(
  ( (Nil!23299) (Cons!23298 (h!24507 tuple2!16730) (t!32668 List!23302)) )
))
(declare-datatypes ((ListLongMap!14711 0))(
  ( (ListLongMap!14712 (toList!7371 List!23302)) )
))
(declare-fun lt!478120 () ListLongMap!14711)

(declare-fun lt!478122 () tuple2!16730)

(declare-fun b!1076395 () Bool)

(declare-fun lt!478118 () ListLongMap!14711)

(declare-fun e!615327 () Bool)

(declare-fun +!3194 (ListLongMap!14711 tuple2!16730) ListLongMap!14711)

(assert (=> b!1076395 (= e!615327 (= lt!478120 (+!3194 lt!478118 lt!478122)))))

(declare-fun b!1076396 () Bool)

(declare-fun e!615326 () Bool)

(assert (=> b!1076396 (= e!615326 true)))

(declare-fun lt!478123 () ListLongMap!14711)

(declare-fun lt!478124 () tuple2!16730)

(declare-fun -!714 (ListLongMap!14711 (_ BitVec 64)) ListLongMap!14711)

(assert (=> b!1076396 (= (-!714 (+!3194 lt!478123 lt!478124) #b0000000000000000000000000000000000000000000000000000000000000000) lt!478123)))

(declare-datatypes ((Unit!35381 0))(
  ( (Unit!35382) )
))
(declare-fun lt!478117 () Unit!35381)

(declare-fun zeroValueBefore!47 () V!39861)

(declare-fun addThenRemoveForNewKeyIsSame!85 (ListLongMap!14711 (_ BitVec 64) V!39861) Unit!35381)

(assert (=> b!1076396 (= lt!478117 (addThenRemoveForNewKeyIsSame!85 lt!478123 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!478121 () ListLongMap!14711)

(assert (=> b!1076396 (= lt!478123 (+!3194 lt!478121 lt!478122))))

(assert (=> b!1076396 e!615327))

(declare-fun res!717506 () Bool)

(assert (=> b!1076396 (=> (not res!717506) (not e!615327))))

(declare-fun lt!478119 () ListLongMap!14711)

(assert (=> b!1076396 (= res!717506 (= lt!478119 (+!3194 (+!3194 lt!478121 lt!478124) lt!478122)))))

(declare-fun minValue!907 () V!39861)

(assert (=> b!1076396 (= lt!478122 (tuple2!16731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1076396 (= lt!478124 (tuple2!16731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-datatypes ((ValueCell!12319 0))(
  ( (ValueCellFull!12319 (v!15702 V!39861)) (EmptyCell!12319) )
))
(declare-datatypes ((array!69030 0))(
  ( (array!69031 (arr!33194 (Array (_ BitVec 32) ValueCell!12319)) (size!33731 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69030)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39861)

(declare-fun getCurrentListMap!4206 (array!69028 array!69030 (_ BitVec 32) (_ BitVec 32) V!39861 V!39861 (_ BitVec 32) Int) ListLongMap!14711)

(assert (=> b!1076396 (= lt!478120 (getCurrentListMap!4206 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076396 (= lt!478119 (getCurrentListMap!4206 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076397 () Bool)

(declare-fun e!615328 () Bool)

(declare-fun tp_is_empty!26045 () Bool)

(assert (=> b!1076397 (= e!615328 tp_is_empty!26045)))

(declare-fun b!1076398 () Bool)

(declare-fun res!717503 () Bool)

(assert (=> b!1076398 (=> (not res!717503) (not e!615323))))

(declare-datatypes ((List!23303 0))(
  ( (Nil!23300) (Cons!23299 (h!24508 (_ BitVec 64)) (t!32669 List!23303)) )
))
(declare-fun arrayNoDuplicates!0 (array!69028 (_ BitVec 32) List!23303) Bool)

(assert (=> b!1076398 (= res!717503 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23300))))

(declare-fun b!1076399 () Bool)

(declare-fun e!615325 () Bool)

(assert (=> b!1076399 (= e!615325 tp_is_empty!26045)))

(declare-fun b!1076400 () Bool)

(assert (=> b!1076400 (= e!615323 (not e!615326))))

(declare-fun res!717501 () Bool)

(assert (=> b!1076400 (=> res!717501 e!615326)))

(assert (=> b!1076400 (= res!717501 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1076400 (= lt!478121 lt!478118)))

(declare-fun lt!478125 () Unit!35381)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!913 (array!69028 array!69030 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39861 V!39861 V!39861 V!39861 (_ BitVec 32) Int) Unit!35381)

(assert (=> b!1076400 (= lt!478125 (lemmaNoChangeToArrayThenSameMapNoExtras!913 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3894 (array!69028 array!69030 (_ BitVec 32) (_ BitVec 32) V!39861 V!39861 (_ BitVec 32) Int) ListLongMap!14711)

(assert (=> b!1076400 (= lt!478118 (getCurrentListMapNoExtraKeys!3894 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076400 (= lt!478121 (getCurrentListMapNoExtraKeys!3894 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!717504 () Bool)

(assert (=> start!95270 (=> (not res!717504) (not e!615323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95270 (= res!717504 (validMask!0 mask!1515))))

(assert (=> start!95270 e!615323))

(assert (=> start!95270 true))

(assert (=> start!95270 tp_is_empty!26045))

(declare-fun e!615324 () Bool)

(declare-fun array_inv!25504 (array!69030) Bool)

(assert (=> start!95270 (and (array_inv!25504 _values!955) e!615324)))

(assert (=> start!95270 tp!78204))

(declare-fun array_inv!25505 (array!69028) Bool)

(assert (=> start!95270 (array_inv!25505 _keys!1163)))

(declare-fun mapNonEmpty!40813 () Bool)

(declare-fun tp!78203 () Bool)

(assert (=> mapNonEmpty!40813 (= mapRes!40813 (and tp!78203 e!615328))))

(declare-fun mapRest!40813 () (Array (_ BitVec 32) ValueCell!12319))

(declare-fun mapValue!40813 () ValueCell!12319)

(declare-fun mapKey!40813 () (_ BitVec 32))

(assert (=> mapNonEmpty!40813 (= (arr!33194 _values!955) (store mapRest!40813 mapKey!40813 mapValue!40813))))

(declare-fun b!1076401 () Bool)

(assert (=> b!1076401 (= e!615324 (and e!615325 mapRes!40813))))

(declare-fun condMapEmpty!40813 () Bool)

(declare-fun mapDefault!40813 () ValueCell!12319)


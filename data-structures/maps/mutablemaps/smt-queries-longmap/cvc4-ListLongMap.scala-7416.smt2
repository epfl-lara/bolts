; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94350 () Bool)

(assert start!94350)

(declare-fun b_free!21677 () Bool)

(declare-fun b_next!21677 () Bool)

(assert (=> start!94350 (= b_free!21677 (not b_next!21677))))

(declare-fun tp!76472 () Bool)

(declare-fun b_and!34467 () Bool)

(assert (=> start!94350 (= tp!76472 b_and!34467)))

(declare-fun mapIsEmpty!39919 () Bool)

(declare-fun mapRes!39919 () Bool)

(assert (=> mapIsEmpty!39919 mapRes!39919))

(declare-fun mapNonEmpty!39919 () Bool)

(declare-fun tp!76473 () Bool)

(declare-fun e!608222 () Bool)

(assert (=> mapNonEmpty!39919 (= mapRes!39919 (and tp!76473 e!608222))))

(declare-datatypes ((V!39117 0))(
  ( (V!39118 (val!12794 Int)) )
))
(declare-datatypes ((ValueCell!12040 0))(
  ( (ValueCellFull!12040 (v!15408 V!39117)) (EmptyCell!12040) )
))
(declare-fun mapValue!39919 () ValueCell!12040)

(declare-fun mapKey!39919 () (_ BitVec 32))

(declare-datatypes ((array!67932 0))(
  ( (array!67933 (arr!32664 (Array (_ BitVec 32) ValueCell!12040)) (size!33201 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67932)

(declare-fun mapRest!39919 () (Array (_ BitVec 32) ValueCell!12040))

(assert (=> mapNonEmpty!39919 (= (arr!32664 _values!955) (store mapRest!39919 mapKey!39919 mapValue!39919))))

(declare-fun b!1066511 () Bool)

(declare-fun e!608221 () Bool)

(assert (=> b!1066511 (= e!608221 true)))

(declare-datatypes ((tuple2!16316 0))(
  ( (tuple2!16317 (_1!8168 (_ BitVec 64)) (_2!8168 V!39117)) )
))
(declare-datatypes ((List!22908 0))(
  ( (Nil!22905) (Cons!22904 (h!24113 tuple2!16316) (t!32236 List!22908)) )
))
(declare-datatypes ((ListLongMap!14297 0))(
  ( (ListLongMap!14298 (toList!7164 List!22908)) )
))
(declare-fun lt!470905 () ListLongMap!14297)

(declare-fun lt!470908 () ListLongMap!14297)

(declare-fun -!622 (ListLongMap!14297 (_ BitVec 64)) ListLongMap!14297)

(assert (=> b!1066511 (= lt!470905 (-!622 lt!470908 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470902 () ListLongMap!14297)

(declare-fun lt!470904 () ListLongMap!14297)

(assert (=> b!1066511 (= (-!622 lt!470902 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470904)))

(declare-datatypes ((Unit!34992 0))(
  ( (Unit!34993) )
))
(declare-fun lt!470907 () Unit!34992)

(declare-fun zeroValueBefore!47 () V!39117)

(declare-fun addThenRemoveForNewKeyIsSame!31 (ListLongMap!14297 (_ BitVec 64) V!39117) Unit!34992)

(assert (=> b!1066511 (= lt!470907 (addThenRemoveForNewKeyIsSame!31 lt!470904 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470901 () ListLongMap!14297)

(declare-fun lt!470906 () ListLongMap!14297)

(assert (=> b!1066511 (and (= lt!470908 lt!470902) (= lt!470906 lt!470901))))

(declare-fun +!3113 (ListLongMap!14297 tuple2!16316) ListLongMap!14297)

(assert (=> b!1066511 (= lt!470902 (+!3113 lt!470904 (tuple2!16317 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun minValue!907 () V!39117)

(declare-datatypes ((array!67934 0))(
  ( (array!67935 (arr!32665 (Array (_ BitVec 32) (_ BitVec 64))) (size!33202 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67934)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39117)

(declare-fun getCurrentListMap!4076 (array!67934 array!67932 (_ BitVec 32) (_ BitVec 32) V!39117 V!39117 (_ BitVec 32) Int) ListLongMap!14297)

(assert (=> b!1066511 (= lt!470906 (getCurrentListMap!4076 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066511 (= lt!470908 (getCurrentListMap!4076 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066513 () Bool)

(declare-fun e!608224 () Bool)

(assert (=> b!1066513 (= e!608224 (not e!608221))))

(declare-fun res!711915 () Bool)

(assert (=> b!1066513 (=> res!711915 e!608221)))

(assert (=> b!1066513 (= res!711915 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066513 (= lt!470904 lt!470901)))

(declare-fun lt!470903 () Unit!34992)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!750 (array!67934 array!67932 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39117 V!39117 V!39117 V!39117 (_ BitVec 32) Int) Unit!34992)

(assert (=> b!1066513 (= lt!470903 (lemmaNoChangeToArrayThenSameMapNoExtras!750 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3711 (array!67934 array!67932 (_ BitVec 32) (_ BitVec 32) V!39117 V!39117 (_ BitVec 32) Int) ListLongMap!14297)

(assert (=> b!1066513 (= lt!470901 (getCurrentListMapNoExtraKeys!3711 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066513 (= lt!470904 (getCurrentListMapNoExtraKeys!3711 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066514 () Bool)

(declare-fun res!711914 () Bool)

(assert (=> b!1066514 (=> (not res!711914) (not e!608224))))

(declare-datatypes ((List!22909 0))(
  ( (Nil!22906) (Cons!22905 (h!24114 (_ BitVec 64)) (t!32237 List!22909)) )
))
(declare-fun arrayNoDuplicates!0 (array!67934 (_ BitVec 32) List!22909) Bool)

(assert (=> b!1066514 (= res!711914 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22906))))

(declare-fun b!1066515 () Bool)

(declare-fun tp_is_empty!25487 () Bool)

(assert (=> b!1066515 (= e!608222 tp_is_empty!25487)))

(declare-fun b!1066516 () Bool)

(declare-fun e!608223 () Bool)

(assert (=> b!1066516 (= e!608223 tp_is_empty!25487)))

(declare-fun res!711913 () Bool)

(assert (=> start!94350 (=> (not res!711913) (not e!608224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94350 (= res!711913 (validMask!0 mask!1515))))

(assert (=> start!94350 e!608224))

(assert (=> start!94350 true))

(assert (=> start!94350 tp_is_empty!25487))

(declare-fun e!608226 () Bool)

(declare-fun array_inv!25128 (array!67932) Bool)

(assert (=> start!94350 (and (array_inv!25128 _values!955) e!608226)))

(assert (=> start!94350 tp!76472))

(declare-fun array_inv!25129 (array!67934) Bool)

(assert (=> start!94350 (array_inv!25129 _keys!1163)))

(declare-fun b!1066512 () Bool)

(assert (=> b!1066512 (= e!608226 (and e!608223 mapRes!39919))))

(declare-fun condMapEmpty!39919 () Bool)

(declare-fun mapDefault!39919 () ValueCell!12040)


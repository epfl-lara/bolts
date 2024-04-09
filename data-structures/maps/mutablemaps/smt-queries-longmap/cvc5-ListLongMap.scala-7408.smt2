; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94276 () Bool)

(assert start!94276)

(declare-fun b_free!21625 () Bool)

(declare-fun b_next!21625 () Bool)

(assert (=> start!94276 (= b_free!21625 (not b_next!21625))))

(declare-fun tp!76313 () Bool)

(declare-fun b_and!34403 () Bool)

(assert (=> start!94276 (= tp!76313 b_and!34403)))

(declare-fun b!1065703 () Bool)

(declare-fun e!607639 () Bool)

(declare-fun tp_is_empty!25435 () Bool)

(assert (=> b!1065703 (= e!607639 tp_is_empty!25435)))

(declare-fun mapIsEmpty!39838 () Bool)

(declare-fun mapRes!39838 () Bool)

(assert (=> mapIsEmpty!39838 mapRes!39838))

(declare-fun b!1065705 () Bool)

(declare-fun e!607636 () Bool)

(declare-fun e!607638 () Bool)

(assert (=> b!1065705 (= e!607636 (not e!607638))))

(declare-fun res!711442 () Bool)

(assert (=> b!1065705 (=> res!711442 e!607638)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065705 (= res!711442 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39049 0))(
  ( (V!39050 (val!12768 Int)) )
))
(declare-datatypes ((tuple2!16270 0))(
  ( (tuple2!16271 (_1!8145 (_ BitVec 64)) (_2!8145 V!39049)) )
))
(declare-datatypes ((List!22868 0))(
  ( (Nil!22865) (Cons!22864 (h!24073 tuple2!16270) (t!32194 List!22868)) )
))
(declare-datatypes ((ListLongMap!14251 0))(
  ( (ListLongMap!14252 (toList!7141 List!22868)) )
))
(declare-fun lt!470140 () ListLongMap!14251)

(declare-fun lt!470141 () ListLongMap!14251)

(assert (=> b!1065705 (= lt!470140 lt!470141)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39049)

(declare-datatypes ((Unit!34944 0))(
  ( (Unit!34945) )
))
(declare-fun lt!470143 () Unit!34944)

(declare-datatypes ((ValueCell!12014 0))(
  ( (ValueCellFull!12014 (v!15381 V!39049)) (EmptyCell!12014) )
))
(declare-datatypes ((array!67828 0))(
  ( (array!67829 (arr!32613 (Array (_ BitVec 32) ValueCell!12014)) (size!33150 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67828)

(declare-fun minValue!907 () V!39049)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39049)

(declare-datatypes ((array!67830 0))(
  ( (array!67831 (arr!32614 (Array (_ BitVec 32) (_ BitVec 64))) (size!33151 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67830)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!728 (array!67830 array!67828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39049 V!39049 V!39049 V!39049 (_ BitVec 32) Int) Unit!34944)

(assert (=> b!1065705 (= lt!470143 (lemmaNoChangeToArrayThenSameMapNoExtras!728 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3689 (array!67830 array!67828 (_ BitVec 32) (_ BitVec 32) V!39049 V!39049 (_ BitVec 32) Int) ListLongMap!14251)

(assert (=> b!1065705 (= lt!470141 (getCurrentListMapNoExtraKeys!3689 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065705 (= lt!470140 (getCurrentListMapNoExtraKeys!3689 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065706 () Bool)

(declare-fun res!711443 () Bool)

(assert (=> b!1065706 (=> (not res!711443) (not e!607636))))

(assert (=> b!1065706 (= res!711443 (and (= (size!33150 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33151 _keys!1163) (size!33150 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065707 () Bool)

(declare-fun res!711441 () Bool)

(assert (=> b!1065707 (=> (not res!711441) (not e!607636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67830 (_ BitVec 32)) Bool)

(assert (=> b!1065707 (= res!711441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39838 () Bool)

(declare-fun tp!76314 () Bool)

(assert (=> mapNonEmpty!39838 (= mapRes!39838 (and tp!76314 e!607639))))

(declare-fun mapRest!39838 () (Array (_ BitVec 32) ValueCell!12014))

(declare-fun mapValue!39838 () ValueCell!12014)

(declare-fun mapKey!39838 () (_ BitVec 32))

(assert (=> mapNonEmpty!39838 (= (arr!32613 _values!955) (store mapRest!39838 mapKey!39838 mapValue!39838))))

(declare-fun b!1065708 () Bool)

(assert (=> b!1065708 (= e!607638 true)))

(declare-fun lt!470146 () ListLongMap!14251)

(declare-fun lt!470144 () ListLongMap!14251)

(declare-fun -!604 (ListLongMap!14251 (_ BitVec 64)) ListLongMap!14251)

(assert (=> b!1065708 (= lt!470146 (-!604 lt!470144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470145 () ListLongMap!14251)

(assert (=> b!1065708 (= (-!604 lt!470145 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470140)))

(declare-fun lt!470142 () Unit!34944)

(declare-fun addThenRemoveForNewKeyIsSame!13 (ListLongMap!14251 (_ BitVec 64) V!39049) Unit!34944)

(assert (=> b!1065708 (= lt!470142 (addThenRemoveForNewKeyIsSame!13 lt!470140 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470139 () ListLongMap!14251)

(assert (=> b!1065708 (and (= lt!470144 lt!470145) (= lt!470139 lt!470141))))

(declare-fun +!3095 (ListLongMap!14251 tuple2!16270) ListLongMap!14251)

(assert (=> b!1065708 (= lt!470145 (+!3095 lt!470140 (tuple2!16271 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4058 (array!67830 array!67828 (_ BitVec 32) (_ BitVec 32) V!39049 V!39049 (_ BitVec 32) Int) ListLongMap!14251)

(assert (=> b!1065708 (= lt!470139 (getCurrentListMap!4058 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065708 (= lt!470144 (getCurrentListMap!4058 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065704 () Bool)

(declare-fun e!607634 () Bool)

(assert (=> b!1065704 (= e!607634 tp_is_empty!25435)))

(declare-fun res!711440 () Bool)

(assert (=> start!94276 (=> (not res!711440) (not e!607636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94276 (= res!711440 (validMask!0 mask!1515))))

(assert (=> start!94276 e!607636))

(assert (=> start!94276 true))

(assert (=> start!94276 tp_is_empty!25435))

(declare-fun e!607635 () Bool)

(declare-fun array_inv!25092 (array!67828) Bool)

(assert (=> start!94276 (and (array_inv!25092 _values!955) e!607635)))

(assert (=> start!94276 tp!76313))

(declare-fun array_inv!25093 (array!67830) Bool)

(assert (=> start!94276 (array_inv!25093 _keys!1163)))

(declare-fun b!1065709 () Bool)

(declare-fun res!711439 () Bool)

(assert (=> b!1065709 (=> (not res!711439) (not e!607636))))

(declare-datatypes ((List!22869 0))(
  ( (Nil!22866) (Cons!22865 (h!24074 (_ BitVec 64)) (t!32195 List!22869)) )
))
(declare-fun arrayNoDuplicates!0 (array!67830 (_ BitVec 32) List!22869) Bool)

(assert (=> b!1065709 (= res!711439 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22866))))

(declare-fun b!1065710 () Bool)

(assert (=> b!1065710 (= e!607635 (and e!607634 mapRes!39838))))

(declare-fun condMapEmpty!39838 () Bool)

(declare-fun mapDefault!39838 () ValueCell!12014)


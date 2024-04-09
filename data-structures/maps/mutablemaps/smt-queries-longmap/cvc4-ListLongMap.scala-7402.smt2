; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94244 () Bool)

(assert start!94244)

(declare-fun b_free!21593 () Bool)

(declare-fun b_next!21593 () Bool)

(assert (=> start!94244 (= b_free!21593 (not b_next!21593))))

(declare-fun tp!76218 () Bool)

(declare-fun b_and!34371 () Bool)

(assert (=> start!94244 (= tp!76218 b_and!34371)))

(declare-fun b!1065319 () Bool)

(declare-fun e!607347 () Bool)

(declare-fun e!607351 () Bool)

(assert (=> b!1065319 (= e!607347 (not e!607351))))

(declare-fun res!711200 () Bool)

(assert (=> b!1065319 (=> res!711200 e!607351)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065319 (= res!711200 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39005 0))(
  ( (V!39006 (val!12752 Int)) )
))
(declare-datatypes ((tuple2!16242 0))(
  ( (tuple2!16243 (_1!8131 (_ BitVec 64)) (_2!8131 V!39005)) )
))
(declare-datatypes ((List!22841 0))(
  ( (Nil!22838) (Cons!22837 (h!24046 tuple2!16242) (t!32167 List!22841)) )
))
(declare-datatypes ((ListLongMap!14223 0))(
  ( (ListLongMap!14224 (toList!7127 List!22841)) )
))
(declare-fun lt!469758 () ListLongMap!14223)

(declare-fun lt!469757 () ListLongMap!14223)

(assert (=> b!1065319 (= lt!469758 lt!469757)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39005)

(declare-datatypes ((ValueCell!11998 0))(
  ( (ValueCellFull!11998 (v!15365 V!39005)) (EmptyCell!11998) )
))
(declare-datatypes ((array!67766 0))(
  ( (array!67767 (arr!32582 (Array (_ BitVec 32) ValueCell!11998)) (size!33119 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67766)

(declare-fun minValue!907 () V!39005)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39005)

(declare-datatypes ((Unit!34916 0))(
  ( (Unit!34917) )
))
(declare-fun lt!469760 () Unit!34916)

(declare-datatypes ((array!67768 0))(
  ( (array!67769 (arr!32583 (Array (_ BitVec 32) (_ BitVec 64))) (size!33120 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67768)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!716 (array!67768 array!67766 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39005 V!39005 V!39005 V!39005 (_ BitVec 32) Int) Unit!34916)

(assert (=> b!1065319 (= lt!469760 (lemmaNoChangeToArrayThenSameMapNoExtras!716 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3677 (array!67768 array!67766 (_ BitVec 32) (_ BitVec 32) V!39005 V!39005 (_ BitVec 32) Int) ListLongMap!14223)

(assert (=> b!1065319 (= lt!469757 (getCurrentListMapNoExtraKeys!3677 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065319 (= lt!469758 (getCurrentListMapNoExtraKeys!3677 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065320 () Bool)

(assert (=> b!1065320 (= e!607351 true)))

(declare-fun lt!469761 () ListLongMap!14223)

(declare-fun lt!469755 () ListLongMap!14223)

(declare-fun -!595 (ListLongMap!14223 (_ BitVec 64)) ListLongMap!14223)

(assert (=> b!1065320 (= lt!469761 (-!595 lt!469755 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!469759 () ListLongMap!14223)

(assert (=> b!1065320 (= (-!595 lt!469759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!469758)))

(declare-fun lt!469762 () Unit!34916)

(declare-fun addThenRemoveForNewKeyIsSame!4 (ListLongMap!14223 (_ BitVec 64) V!39005) Unit!34916)

(assert (=> b!1065320 (= lt!469762 (addThenRemoveForNewKeyIsSame!4 lt!469758 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!469756 () ListLongMap!14223)

(assert (=> b!1065320 (and (= lt!469755 lt!469759) (= lt!469756 lt!469757))))

(declare-fun +!3086 (ListLongMap!14223 tuple2!16242) ListLongMap!14223)

(assert (=> b!1065320 (= lt!469759 (+!3086 lt!469758 (tuple2!16243 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4049 (array!67768 array!67766 (_ BitVec 32) (_ BitVec 32) V!39005 V!39005 (_ BitVec 32) Int) ListLongMap!14223)

(assert (=> b!1065320 (= lt!469756 (getCurrentListMap!4049 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065320 (= lt!469755 (getCurrentListMap!4049 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39790 () Bool)

(declare-fun mapRes!39790 () Bool)

(declare-fun tp!76217 () Bool)

(declare-fun e!607346 () Bool)

(assert (=> mapNonEmpty!39790 (= mapRes!39790 (and tp!76217 e!607346))))

(declare-fun mapRest!39790 () (Array (_ BitVec 32) ValueCell!11998))

(declare-fun mapValue!39790 () ValueCell!11998)

(declare-fun mapKey!39790 () (_ BitVec 32))

(assert (=> mapNonEmpty!39790 (= (arr!32582 _values!955) (store mapRest!39790 mapKey!39790 mapValue!39790))))

(declare-fun b!1065321 () Bool)

(declare-fun res!711201 () Bool)

(assert (=> b!1065321 (=> (not res!711201) (not e!607347))))

(declare-datatypes ((List!22842 0))(
  ( (Nil!22839) (Cons!22838 (h!24047 (_ BitVec 64)) (t!32168 List!22842)) )
))
(declare-fun arrayNoDuplicates!0 (array!67768 (_ BitVec 32) List!22842) Bool)

(assert (=> b!1065321 (= res!711201 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22839))))

(declare-fun res!711199 () Bool)

(assert (=> start!94244 (=> (not res!711199) (not e!607347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94244 (= res!711199 (validMask!0 mask!1515))))

(assert (=> start!94244 e!607347))

(assert (=> start!94244 true))

(declare-fun tp_is_empty!25403 () Bool)

(assert (=> start!94244 tp_is_empty!25403))

(declare-fun e!607350 () Bool)

(declare-fun array_inv!25066 (array!67766) Bool)

(assert (=> start!94244 (and (array_inv!25066 _values!955) e!607350)))

(assert (=> start!94244 tp!76218))

(declare-fun array_inv!25067 (array!67768) Bool)

(assert (=> start!94244 (array_inv!25067 _keys!1163)))

(declare-fun b!1065322 () Bool)

(declare-fun e!607349 () Bool)

(assert (=> b!1065322 (= e!607349 tp_is_empty!25403)))

(declare-fun b!1065323 () Bool)

(declare-fun res!711202 () Bool)

(assert (=> b!1065323 (=> (not res!711202) (not e!607347))))

(assert (=> b!1065323 (= res!711202 (and (= (size!33119 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33120 _keys!1163) (size!33119 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065324 () Bool)

(assert (=> b!1065324 (= e!607350 (and e!607349 mapRes!39790))))

(declare-fun condMapEmpty!39790 () Bool)

(declare-fun mapDefault!39790 () ValueCell!11998)


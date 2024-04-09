; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94324 () Bool)

(assert start!94324)

(declare-fun b_free!21651 () Bool)

(declare-fun b_next!21651 () Bool)

(assert (=> start!94324 (= b_free!21651 (not b_next!21651))))

(declare-fun tp!76394 () Bool)

(declare-fun b_and!34441 () Bool)

(assert (=> start!94324 (= tp!76394 b_and!34441)))

(declare-fun b!1066199 () Bool)

(declare-fun res!711716 () Bool)

(declare-fun e!607988 () Bool)

(assert (=> b!1066199 (=> (not res!711716) (not e!607988))))

(declare-datatypes ((array!67880 0))(
  ( (array!67881 (arr!32638 (Array (_ BitVec 32) (_ BitVec 64))) (size!33175 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67880)

(declare-datatypes ((List!22888 0))(
  ( (Nil!22885) (Cons!22884 (h!24093 (_ BitVec 64)) (t!32216 List!22888)) )
))
(declare-fun arrayNoDuplicates!0 (array!67880 (_ BitVec 32) List!22888) Bool)

(assert (=> b!1066199 (= res!711716 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22885))))

(declare-fun b!1066200 () Bool)

(declare-fun e!607987 () Bool)

(assert (=> b!1066200 (= e!607987 true)))

(declare-datatypes ((V!39083 0))(
  ( (V!39084 (val!12781 Int)) )
))
(declare-datatypes ((tuple2!16292 0))(
  ( (tuple2!16293 (_1!8156 (_ BitVec 64)) (_2!8156 V!39083)) )
))
(declare-datatypes ((List!22889 0))(
  ( (Nil!22886) (Cons!22885 (h!24094 tuple2!16292) (t!32217 List!22889)) )
))
(declare-datatypes ((ListLongMap!14273 0))(
  ( (ListLongMap!14274 (toList!7152 List!22889)) )
))
(declare-fun lt!470591 () ListLongMap!14273)

(declare-fun lt!470595 () ListLongMap!14273)

(declare-fun -!613 (ListLongMap!14273 (_ BitVec 64)) ListLongMap!14273)

(assert (=> b!1066200 (= lt!470591 (-!613 lt!470595 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470596 () ListLongMap!14273)

(declare-fun lt!470592 () ListLongMap!14273)

(assert (=> b!1066200 (= (-!613 lt!470596 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470592)))

(declare-datatypes ((Unit!34968 0))(
  ( (Unit!34969) )
))
(declare-fun lt!470594 () Unit!34968)

(declare-fun zeroValueBefore!47 () V!39083)

(declare-fun addThenRemoveForNewKeyIsSame!22 (ListLongMap!14273 (_ BitVec 64) V!39083) Unit!34968)

(assert (=> b!1066200 (= lt!470594 (addThenRemoveForNewKeyIsSame!22 lt!470592 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470590 () ListLongMap!14273)

(declare-fun lt!470589 () ListLongMap!14273)

(assert (=> b!1066200 (and (= lt!470595 lt!470596) (= lt!470589 lt!470590))))

(declare-fun +!3104 (ListLongMap!14273 tuple2!16292) ListLongMap!14273)

(assert (=> b!1066200 (= lt!470596 (+!3104 lt!470592 (tuple2!16293 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12027 0))(
  ( (ValueCellFull!12027 (v!15395 V!39083)) (EmptyCell!12027) )
))
(declare-datatypes ((array!67882 0))(
  ( (array!67883 (arr!32639 (Array (_ BitVec 32) ValueCell!12027)) (size!33176 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67882)

(declare-fun minValue!907 () V!39083)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39083)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun getCurrentListMap!4067 (array!67880 array!67882 (_ BitVec 32) (_ BitVec 32) V!39083 V!39083 (_ BitVec 32) Int) ListLongMap!14273)

(assert (=> b!1066200 (= lt!470589 (getCurrentListMap!4067 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066200 (= lt!470595 (getCurrentListMap!4067 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066201 () Bool)

(declare-fun res!711719 () Bool)

(assert (=> b!1066201 (=> (not res!711719) (not e!607988))))

(assert (=> b!1066201 (= res!711719 (and (= (size!33176 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33175 _keys!1163) (size!33176 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39880 () Bool)

(declare-fun mapRes!39880 () Bool)

(assert (=> mapIsEmpty!39880 mapRes!39880))

(declare-fun mapNonEmpty!39880 () Bool)

(declare-fun tp!76395 () Bool)

(declare-fun e!607992 () Bool)

(assert (=> mapNonEmpty!39880 (= mapRes!39880 (and tp!76395 e!607992))))

(declare-fun mapRest!39880 () (Array (_ BitVec 32) ValueCell!12027))

(declare-fun mapValue!39880 () ValueCell!12027)

(declare-fun mapKey!39880 () (_ BitVec 32))

(assert (=> mapNonEmpty!39880 (= (arr!32639 _values!955) (store mapRest!39880 mapKey!39880 mapValue!39880))))

(declare-fun b!1066202 () Bool)

(declare-fun tp_is_empty!25461 () Bool)

(assert (=> b!1066202 (= e!607992 tp_is_empty!25461)))

(declare-fun b!1066203 () Bool)

(declare-fun e!607991 () Bool)

(declare-fun e!607989 () Bool)

(assert (=> b!1066203 (= e!607991 (and e!607989 mapRes!39880))))

(declare-fun condMapEmpty!39880 () Bool)

(declare-fun mapDefault!39880 () ValueCell!12027)

(assert (=> b!1066203 (= condMapEmpty!39880 (= (arr!32639 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12027)) mapDefault!39880)))))

(declare-fun b!1066204 () Bool)

(declare-fun res!711718 () Bool)

(assert (=> b!1066204 (=> (not res!711718) (not e!607988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67880 (_ BitVec 32)) Bool)

(assert (=> b!1066204 (= res!711718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066205 () Bool)

(assert (=> b!1066205 (= e!607988 (not e!607987))))

(declare-fun res!711720 () Bool)

(assert (=> b!1066205 (=> res!711720 e!607987)))

(assert (=> b!1066205 (= res!711720 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066205 (= lt!470592 lt!470590)))

(declare-fun lt!470593 () Unit!34968)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!739 (array!67880 array!67882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39083 V!39083 V!39083 V!39083 (_ BitVec 32) Int) Unit!34968)

(assert (=> b!1066205 (= lt!470593 (lemmaNoChangeToArrayThenSameMapNoExtras!739 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3700 (array!67880 array!67882 (_ BitVec 32) (_ BitVec 32) V!39083 V!39083 (_ BitVec 32) Int) ListLongMap!14273)

(assert (=> b!1066205 (= lt!470590 (getCurrentListMapNoExtraKeys!3700 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066205 (= lt!470592 (getCurrentListMapNoExtraKeys!3700 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711717 () Bool)

(assert (=> start!94324 (=> (not res!711717) (not e!607988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94324 (= res!711717 (validMask!0 mask!1515))))

(assert (=> start!94324 e!607988))

(assert (=> start!94324 true))

(assert (=> start!94324 tp_is_empty!25461))

(declare-fun array_inv!25108 (array!67882) Bool)

(assert (=> start!94324 (and (array_inv!25108 _values!955) e!607991)))

(assert (=> start!94324 tp!76394))

(declare-fun array_inv!25109 (array!67880) Bool)

(assert (=> start!94324 (array_inv!25109 _keys!1163)))

(declare-fun b!1066206 () Bool)

(assert (=> b!1066206 (= e!607989 tp_is_empty!25461)))

(assert (= (and start!94324 res!711717) b!1066201))

(assert (= (and b!1066201 res!711719) b!1066204))

(assert (= (and b!1066204 res!711718) b!1066199))

(assert (= (and b!1066199 res!711716) b!1066205))

(assert (= (and b!1066205 (not res!711720)) b!1066200))

(assert (= (and b!1066203 condMapEmpty!39880) mapIsEmpty!39880))

(assert (= (and b!1066203 (not condMapEmpty!39880)) mapNonEmpty!39880))

(get-info :version)

(assert (= (and mapNonEmpty!39880 ((_ is ValueCellFull!12027) mapValue!39880)) b!1066202))

(assert (= (and b!1066203 ((_ is ValueCellFull!12027) mapDefault!39880)) b!1066206))

(assert (= start!94324 b!1066203))

(declare-fun m!984949 () Bool)

(assert (=> start!94324 m!984949))

(declare-fun m!984951 () Bool)

(assert (=> start!94324 m!984951))

(declare-fun m!984953 () Bool)

(assert (=> start!94324 m!984953))

(declare-fun m!984955 () Bool)

(assert (=> mapNonEmpty!39880 m!984955))

(declare-fun m!984957 () Bool)

(assert (=> b!1066205 m!984957))

(declare-fun m!984959 () Bool)

(assert (=> b!1066205 m!984959))

(declare-fun m!984961 () Bool)

(assert (=> b!1066205 m!984961))

(declare-fun m!984963 () Bool)

(assert (=> b!1066204 m!984963))

(declare-fun m!984965 () Bool)

(assert (=> b!1066200 m!984965))

(declare-fun m!984967 () Bool)

(assert (=> b!1066200 m!984967))

(declare-fun m!984969 () Bool)

(assert (=> b!1066200 m!984969))

(declare-fun m!984971 () Bool)

(assert (=> b!1066200 m!984971))

(declare-fun m!984973 () Bool)

(assert (=> b!1066200 m!984973))

(declare-fun m!984975 () Bool)

(assert (=> b!1066200 m!984975))

(declare-fun m!984977 () Bool)

(assert (=> b!1066199 m!984977))

(check-sat (not b!1066199) b_and!34441 (not mapNonEmpty!39880) tp_is_empty!25461 (not b!1066205) (not b!1066204) (not b_next!21651) (not b!1066200) (not start!94324))
(check-sat b_and!34441 (not b_next!21651))

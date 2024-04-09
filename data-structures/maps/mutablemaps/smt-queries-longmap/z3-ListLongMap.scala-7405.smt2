; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94260 () Bool)

(assert start!94260)

(declare-fun b_free!21609 () Bool)

(declare-fun b_next!21609 () Bool)

(assert (=> start!94260 (= b_free!21609 (not b_next!21609))))

(declare-fun tp!76265 () Bool)

(declare-fun b_and!34387 () Bool)

(assert (=> start!94260 (= tp!76265 b_and!34387)))

(declare-fun b!1065511 () Bool)

(declare-fun e!607490 () Bool)

(declare-fun e!607494 () Bool)

(assert (=> b!1065511 (= e!607490 (not e!607494))))

(declare-fun res!711320 () Bool)

(assert (=> b!1065511 (=> res!711320 e!607494)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065511 (= res!711320 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39027 0))(
  ( (V!39028 (val!12760 Int)) )
))
(declare-datatypes ((tuple2!16254 0))(
  ( (tuple2!16255 (_1!8137 (_ BitVec 64)) (_2!8137 V!39027)) )
))
(declare-datatypes ((List!22854 0))(
  ( (Nil!22851) (Cons!22850 (h!24059 tuple2!16254) (t!32180 List!22854)) )
))
(declare-datatypes ((ListLongMap!14235 0))(
  ( (ListLongMap!14236 (toList!7133 List!22854)) )
))
(declare-fun lt!469952 () ListLongMap!14235)

(declare-fun lt!469949 () ListLongMap!14235)

(assert (=> b!1065511 (= lt!469952 lt!469949)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39027)

(declare-datatypes ((Unit!34928 0))(
  ( (Unit!34929) )
))
(declare-fun lt!469947 () Unit!34928)

(declare-datatypes ((ValueCell!12006 0))(
  ( (ValueCellFull!12006 (v!15373 V!39027)) (EmptyCell!12006) )
))
(declare-datatypes ((array!67796 0))(
  ( (array!67797 (arr!32597 (Array (_ BitVec 32) ValueCell!12006)) (size!33134 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67796)

(declare-fun minValue!907 () V!39027)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39027)

(declare-datatypes ((array!67798 0))(
  ( (array!67799 (arr!32598 (Array (_ BitVec 32) (_ BitVec 64))) (size!33135 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67798)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!722 (array!67798 array!67796 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39027 V!39027 V!39027 V!39027 (_ BitVec 32) Int) Unit!34928)

(assert (=> b!1065511 (= lt!469947 (lemmaNoChangeToArrayThenSameMapNoExtras!722 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3683 (array!67798 array!67796 (_ BitVec 32) (_ BitVec 32) V!39027 V!39027 (_ BitVec 32) Int) ListLongMap!14235)

(assert (=> b!1065511 (= lt!469949 (getCurrentListMapNoExtraKeys!3683 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065511 (= lt!469952 (getCurrentListMapNoExtraKeys!3683 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065512 () Bool)

(declare-fun res!711319 () Bool)

(assert (=> b!1065512 (=> (not res!711319) (not e!607490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67798 (_ BitVec 32)) Bool)

(assert (=> b!1065512 (= res!711319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39814 () Bool)

(declare-fun mapRes!39814 () Bool)

(assert (=> mapIsEmpty!39814 mapRes!39814))

(declare-fun mapNonEmpty!39814 () Bool)

(declare-fun tp!76266 () Bool)

(declare-fun e!607493 () Bool)

(assert (=> mapNonEmpty!39814 (= mapRes!39814 (and tp!76266 e!607493))))

(declare-fun mapValue!39814 () ValueCell!12006)

(declare-fun mapKey!39814 () (_ BitVec 32))

(declare-fun mapRest!39814 () (Array (_ BitVec 32) ValueCell!12006))

(assert (=> mapNonEmpty!39814 (= (arr!32597 _values!955) (store mapRest!39814 mapKey!39814 mapValue!39814))))

(declare-fun res!711322 () Bool)

(assert (=> start!94260 (=> (not res!711322) (not e!607490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94260 (= res!711322 (validMask!0 mask!1515))))

(assert (=> start!94260 e!607490))

(assert (=> start!94260 true))

(declare-fun tp_is_empty!25419 () Bool)

(assert (=> start!94260 tp_is_empty!25419))

(declare-fun e!607492 () Bool)

(declare-fun array_inv!25078 (array!67796) Bool)

(assert (=> start!94260 (and (array_inv!25078 _values!955) e!607492)))

(assert (=> start!94260 tp!76265))

(declare-fun array_inv!25079 (array!67798) Bool)

(assert (=> start!94260 (array_inv!25079 _keys!1163)))

(declare-fun b!1065513 () Bool)

(declare-fun res!711323 () Bool)

(assert (=> b!1065513 (=> (not res!711323) (not e!607490))))

(assert (=> b!1065513 (= res!711323 (and (= (size!33134 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33135 _keys!1163) (size!33134 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065514 () Bool)

(declare-fun res!711321 () Bool)

(assert (=> b!1065514 (=> (not res!711321) (not e!607490))))

(declare-datatypes ((List!22855 0))(
  ( (Nil!22852) (Cons!22851 (h!24060 (_ BitVec 64)) (t!32181 List!22855)) )
))
(declare-fun arrayNoDuplicates!0 (array!67798 (_ BitVec 32) List!22855) Bool)

(assert (=> b!1065514 (= res!711321 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22852))))

(declare-fun b!1065515 () Bool)

(assert (=> b!1065515 (= e!607493 tp_is_empty!25419)))

(declare-fun b!1065516 () Bool)

(declare-fun e!607495 () Bool)

(assert (=> b!1065516 (= e!607495 tp_is_empty!25419)))

(declare-fun b!1065517 () Bool)

(assert (=> b!1065517 (= e!607492 (and e!607495 mapRes!39814))))

(declare-fun condMapEmpty!39814 () Bool)

(declare-fun mapDefault!39814 () ValueCell!12006)

(assert (=> b!1065517 (= condMapEmpty!39814 (= (arr!32597 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12006)) mapDefault!39814)))))

(declare-fun b!1065518 () Bool)

(assert (=> b!1065518 (= e!607494 true)))

(declare-fun lt!469954 () ListLongMap!14235)

(declare-fun lt!469950 () ListLongMap!14235)

(declare-fun -!599 (ListLongMap!14235 (_ BitVec 64)) ListLongMap!14235)

(assert (=> b!1065518 (= lt!469954 (-!599 lt!469950 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!469951 () ListLongMap!14235)

(assert (=> b!1065518 (= (-!599 lt!469951 #b0000000000000000000000000000000000000000000000000000000000000000) lt!469952)))

(declare-fun lt!469953 () Unit!34928)

(declare-fun addThenRemoveForNewKeyIsSame!8 (ListLongMap!14235 (_ BitVec 64) V!39027) Unit!34928)

(assert (=> b!1065518 (= lt!469953 (addThenRemoveForNewKeyIsSame!8 lt!469952 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!469948 () ListLongMap!14235)

(assert (=> b!1065518 (and (= lt!469950 lt!469951) (= lt!469948 lt!469949))))

(declare-fun +!3090 (ListLongMap!14235 tuple2!16254) ListLongMap!14235)

(assert (=> b!1065518 (= lt!469951 (+!3090 lt!469952 (tuple2!16255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4053 (array!67798 array!67796 (_ BitVec 32) (_ BitVec 32) V!39027 V!39027 (_ BitVec 32) Int) ListLongMap!14235)

(assert (=> b!1065518 (= lt!469948 (getCurrentListMap!4053 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065518 (= lt!469950 (getCurrentListMap!4053 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94260 res!711322) b!1065513))

(assert (= (and b!1065513 res!711323) b!1065512))

(assert (= (and b!1065512 res!711319) b!1065514))

(assert (= (and b!1065514 res!711321) b!1065511))

(assert (= (and b!1065511 (not res!711320)) b!1065518))

(assert (= (and b!1065517 condMapEmpty!39814) mapIsEmpty!39814))

(assert (= (and b!1065517 (not condMapEmpty!39814)) mapNonEmpty!39814))

(get-info :version)

(assert (= (and mapNonEmpty!39814 ((_ is ValueCellFull!12006) mapValue!39814)) b!1065515))

(assert (= (and b!1065517 ((_ is ValueCellFull!12006) mapDefault!39814)) b!1065516))

(assert (= start!94260 b!1065517))

(declare-fun m!984135 () Bool)

(assert (=> start!94260 m!984135))

(declare-fun m!984137 () Bool)

(assert (=> start!94260 m!984137))

(declare-fun m!984139 () Bool)

(assert (=> start!94260 m!984139))

(declare-fun m!984141 () Bool)

(assert (=> b!1065514 m!984141))

(declare-fun m!984143 () Bool)

(assert (=> b!1065512 m!984143))

(declare-fun m!984145 () Bool)

(assert (=> b!1065511 m!984145))

(declare-fun m!984147 () Bool)

(assert (=> b!1065511 m!984147))

(declare-fun m!984149 () Bool)

(assert (=> b!1065511 m!984149))

(declare-fun m!984151 () Bool)

(assert (=> b!1065518 m!984151))

(declare-fun m!984153 () Bool)

(assert (=> b!1065518 m!984153))

(declare-fun m!984155 () Bool)

(assert (=> b!1065518 m!984155))

(declare-fun m!984157 () Bool)

(assert (=> b!1065518 m!984157))

(declare-fun m!984159 () Bool)

(assert (=> b!1065518 m!984159))

(declare-fun m!984161 () Bool)

(assert (=> b!1065518 m!984161))

(declare-fun m!984163 () Bool)

(assert (=> mapNonEmpty!39814 m!984163))

(check-sat b_and!34387 (not start!94260) (not b!1065511) (not b!1065518) (not b!1065512) (not b_next!21609) tp_is_empty!25419 (not mapNonEmpty!39814) (not b!1065514))
(check-sat b_and!34387 (not b_next!21609))

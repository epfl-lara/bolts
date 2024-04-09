; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94504 () Bool)

(assert start!94504)

(declare-fun b_free!21795 () Bool)

(declare-fun b_next!21795 () Bool)

(assert (=> start!94504 (= b_free!21795 (not b_next!21795))))

(declare-fun tp!76832 () Bool)

(declare-fun b_and!34605 () Bool)

(assert (=> start!94504 (= tp!76832 b_and!34605)))

(declare-fun b!1068183 () Bool)

(declare-fun e!609450 () Bool)

(declare-fun tp_is_empty!25605 () Bool)

(assert (=> b!1068183 (= e!609450 tp_is_empty!25605)))

(declare-fun b!1068184 () Bool)

(declare-fun e!609449 () Bool)

(declare-fun mapRes!40102 () Bool)

(assert (=> b!1068184 (= e!609449 (and e!609450 mapRes!40102))))

(declare-fun condMapEmpty!40102 () Bool)

(declare-datatypes ((V!39275 0))(
  ( (V!39276 (val!12853 Int)) )
))
(declare-datatypes ((ValueCell!12099 0))(
  ( (ValueCellFull!12099 (v!15468 V!39275)) (EmptyCell!12099) )
))
(declare-datatypes ((array!68164 0))(
  ( (array!68165 (arr!32778 (Array (_ BitVec 32) ValueCell!12099)) (size!33315 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68164)

(declare-fun mapDefault!40102 () ValueCell!12099)

(assert (=> b!1068184 (= condMapEmpty!40102 (= (arr!32778 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12099)) mapDefault!40102)))))

(declare-fun res!712900 () Bool)

(declare-fun e!609445 () Bool)

(assert (=> start!94504 (=> (not res!712900) (not e!609445))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94504 (= res!712900 (validMask!0 mask!1515))))

(assert (=> start!94504 e!609445))

(assert (=> start!94504 true))

(assert (=> start!94504 tp_is_empty!25605))

(declare-fun array_inv!25212 (array!68164) Bool)

(assert (=> start!94504 (and (array_inv!25212 _values!955) e!609449)))

(assert (=> start!94504 tp!76832))

(declare-datatypes ((array!68166 0))(
  ( (array!68167 (arr!32779 (Array (_ BitVec 32) (_ BitVec 64))) (size!33316 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68166)

(declare-fun array_inv!25213 (array!68166) Bool)

(assert (=> start!94504 (array_inv!25213 _keys!1163)))

(declare-fun b!1068185 () Bool)

(declare-fun res!712897 () Bool)

(assert (=> b!1068185 (=> (not res!712897) (not e!609445))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1068185 (= res!712897 (and (= (size!33315 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33316 _keys!1163) (size!33315 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1068186 () Bool)

(declare-fun res!712896 () Bool)

(assert (=> b!1068186 (=> (not res!712896) (not e!609445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68166 (_ BitVec 32)) Bool)

(assert (=> b!1068186 (= res!712896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40102 () Bool)

(assert (=> mapIsEmpty!40102 mapRes!40102))

(declare-fun b!1068187 () Bool)

(declare-fun e!609448 () Bool)

(assert (=> b!1068187 (= e!609448 true)))

(declare-datatypes ((tuple2!16402 0))(
  ( (tuple2!16403 (_1!8211 (_ BitVec 64)) (_2!8211 V!39275)) )
))
(declare-datatypes ((List!22992 0))(
  ( (Nil!22989) (Cons!22988 (h!24197 tuple2!16402) (t!32324 List!22992)) )
))
(declare-datatypes ((ListLongMap!14383 0))(
  ( (ListLongMap!14384 (toList!7207 List!22992)) )
))
(declare-fun lt!471852 () ListLongMap!14383)

(declare-fun -!644 (ListLongMap!14383 (_ BitVec 64)) ListLongMap!14383)

(assert (=> b!1068187 (= (-!644 lt!471852 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471852)))

(declare-datatypes ((Unit!35078 0))(
  ( (Unit!35079) )
))
(declare-fun lt!471851 () Unit!35078)

(declare-fun removeNotPresentStillSame!53 (ListLongMap!14383 (_ BitVec 64)) Unit!35078)

(assert (=> b!1068187 (= lt!471851 (removeNotPresentStillSame!53 lt!471852 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068188 () Bool)

(declare-fun e!609446 () Bool)

(assert (=> b!1068188 (= e!609446 e!609448)))

(declare-fun res!712899 () Bool)

(assert (=> b!1068188 (=> res!712899 e!609448)))

(declare-fun contains!6309 (ListLongMap!14383 (_ BitVec 64)) Bool)

(assert (=> b!1068188 (= res!712899 (contains!6309 lt!471852 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39275)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39275)

(declare-fun getCurrentListMap!4099 (array!68166 array!68164 (_ BitVec 32) (_ BitVec 32) V!39275 V!39275 (_ BitVec 32) Int) ListLongMap!14383)

(assert (=> b!1068188 (= lt!471852 (getCurrentListMap!4099 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068189 () Bool)

(assert (=> b!1068189 (= e!609445 (not e!609446))))

(declare-fun res!712901 () Bool)

(assert (=> b!1068189 (=> res!712901 e!609446)))

(assert (=> b!1068189 (= res!712901 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471854 () ListLongMap!14383)

(declare-fun lt!471850 () ListLongMap!14383)

(assert (=> b!1068189 (= lt!471854 lt!471850)))

(declare-fun lt!471853 () Unit!35078)

(declare-fun zeroValueAfter!47 () V!39275)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!789 (array!68166 array!68164 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39275 V!39275 V!39275 V!39275 (_ BitVec 32) Int) Unit!35078)

(assert (=> b!1068189 (= lt!471853 (lemmaNoChangeToArrayThenSameMapNoExtras!789 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3750 (array!68166 array!68164 (_ BitVec 32) (_ BitVec 32) V!39275 V!39275 (_ BitVec 32) Int) ListLongMap!14383)

(assert (=> b!1068189 (= lt!471850 (getCurrentListMapNoExtraKeys!3750 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068189 (= lt!471854 (getCurrentListMapNoExtraKeys!3750 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40102 () Bool)

(declare-fun tp!76833 () Bool)

(declare-fun e!609444 () Bool)

(assert (=> mapNonEmpty!40102 (= mapRes!40102 (and tp!76833 e!609444))))

(declare-fun mapRest!40102 () (Array (_ BitVec 32) ValueCell!12099))

(declare-fun mapKey!40102 () (_ BitVec 32))

(declare-fun mapValue!40102 () ValueCell!12099)

(assert (=> mapNonEmpty!40102 (= (arr!32778 _values!955) (store mapRest!40102 mapKey!40102 mapValue!40102))))

(declare-fun b!1068190 () Bool)

(assert (=> b!1068190 (= e!609444 tp_is_empty!25605)))

(declare-fun b!1068191 () Bool)

(declare-fun res!712898 () Bool)

(assert (=> b!1068191 (=> (not res!712898) (not e!609445))))

(declare-datatypes ((List!22993 0))(
  ( (Nil!22990) (Cons!22989 (h!24198 (_ BitVec 64)) (t!32325 List!22993)) )
))
(declare-fun arrayNoDuplicates!0 (array!68166 (_ BitVec 32) List!22993) Bool)

(assert (=> b!1068191 (= res!712898 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22990))))

(assert (= (and start!94504 res!712900) b!1068185))

(assert (= (and b!1068185 res!712897) b!1068186))

(assert (= (and b!1068186 res!712896) b!1068191))

(assert (= (and b!1068191 res!712898) b!1068189))

(assert (= (and b!1068189 (not res!712901)) b!1068188))

(assert (= (and b!1068188 (not res!712899)) b!1068187))

(assert (= (and b!1068184 condMapEmpty!40102) mapIsEmpty!40102))

(assert (= (and b!1068184 (not condMapEmpty!40102)) mapNonEmpty!40102))

(get-info :version)

(assert (= (and mapNonEmpty!40102 ((_ is ValueCellFull!12099) mapValue!40102)) b!1068190))

(assert (= (and b!1068184 ((_ is ValueCellFull!12099) mapDefault!40102)) b!1068183))

(assert (= start!94504 b!1068184))

(declare-fun m!986923 () Bool)

(assert (=> b!1068191 m!986923))

(declare-fun m!986925 () Bool)

(assert (=> mapNonEmpty!40102 m!986925))

(declare-fun m!986927 () Bool)

(assert (=> b!1068186 m!986927))

(declare-fun m!986929 () Bool)

(assert (=> b!1068187 m!986929))

(declare-fun m!986931 () Bool)

(assert (=> b!1068187 m!986931))

(declare-fun m!986933 () Bool)

(assert (=> b!1068188 m!986933))

(declare-fun m!986935 () Bool)

(assert (=> b!1068188 m!986935))

(declare-fun m!986937 () Bool)

(assert (=> start!94504 m!986937))

(declare-fun m!986939 () Bool)

(assert (=> start!94504 m!986939))

(declare-fun m!986941 () Bool)

(assert (=> start!94504 m!986941))

(declare-fun m!986943 () Bool)

(assert (=> b!1068189 m!986943))

(declare-fun m!986945 () Bool)

(assert (=> b!1068189 m!986945))

(declare-fun m!986947 () Bool)

(assert (=> b!1068189 m!986947))

(check-sat (not b!1068189) (not start!94504) b_and!34605 (not b!1068191) (not b_next!21795) (not b!1068186) tp_is_empty!25605 (not mapNonEmpty!40102) (not b!1068188) (not b!1068187))
(check-sat b_and!34605 (not b_next!21795))

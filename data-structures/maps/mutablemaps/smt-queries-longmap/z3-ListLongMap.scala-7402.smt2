; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94242 () Bool)

(assert start!94242)

(declare-fun b_free!21591 () Bool)

(declare-fun b_next!21591 () Bool)

(assert (=> start!94242 (= b_free!21591 (not b_next!21591))))

(declare-fun tp!76212 () Bool)

(declare-fun b_and!34369 () Bool)

(assert (=> start!94242 (= tp!76212 b_and!34369)))

(declare-fun b!1065295 () Bool)

(declare-fun res!711188 () Bool)

(declare-fun e!607332 () Bool)

(assert (=> b!1065295 (=> (not res!711188) (not e!607332))))

(declare-datatypes ((array!67762 0))(
  ( (array!67763 (arr!32580 (Array (_ BitVec 32) (_ BitVec 64))) (size!33117 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67762)

(declare-datatypes ((List!22839 0))(
  ( (Nil!22836) (Cons!22835 (h!24044 (_ BitVec 64)) (t!32165 List!22839)) )
))
(declare-fun arrayNoDuplicates!0 (array!67762 (_ BitVec 32) List!22839) Bool)

(assert (=> b!1065295 (= res!711188 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22836))))

(declare-fun b!1065296 () Bool)

(declare-fun res!711186 () Bool)

(assert (=> b!1065296 (=> (not res!711186) (not e!607332))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67762 (_ BitVec 32)) Bool)

(assert (=> b!1065296 (= res!711186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065297 () Bool)

(declare-fun e!607333 () Bool)

(declare-fun e!607331 () Bool)

(declare-fun mapRes!39787 () Bool)

(assert (=> b!1065297 (= e!607333 (and e!607331 mapRes!39787))))

(declare-fun condMapEmpty!39787 () Bool)

(declare-datatypes ((V!39003 0))(
  ( (V!39004 (val!12751 Int)) )
))
(declare-datatypes ((ValueCell!11997 0))(
  ( (ValueCellFull!11997 (v!15364 V!39003)) (EmptyCell!11997) )
))
(declare-datatypes ((array!67764 0))(
  ( (array!67765 (arr!32581 (Array (_ BitVec 32) ValueCell!11997)) (size!33118 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67764)

(declare-fun mapDefault!39787 () ValueCell!11997)

(assert (=> b!1065297 (= condMapEmpty!39787 (= (arr!32581 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11997)) mapDefault!39787)))))

(declare-fun b!1065298 () Bool)

(declare-fun e!607329 () Bool)

(assert (=> b!1065298 (= e!607329 true)))

(declare-datatypes ((tuple2!16240 0))(
  ( (tuple2!16241 (_1!8130 (_ BitVec 64)) (_2!8130 V!39003)) )
))
(declare-datatypes ((List!22840 0))(
  ( (Nil!22837) (Cons!22836 (h!24045 tuple2!16240) (t!32166 List!22840)) )
))
(declare-datatypes ((ListLongMap!14221 0))(
  ( (ListLongMap!14222 (toList!7126 List!22840)) )
))
(declare-fun lt!469738 () ListLongMap!14221)

(declare-fun lt!469737 () ListLongMap!14221)

(declare-fun -!594 (ListLongMap!14221 (_ BitVec 64)) ListLongMap!14221)

(assert (=> b!1065298 (= lt!469738 (-!594 lt!469737 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!469736 () ListLongMap!14221)

(declare-fun lt!469731 () ListLongMap!14221)

(assert (=> b!1065298 (= (-!594 lt!469736 #b0000000000000000000000000000000000000000000000000000000000000000) lt!469731)))

(declare-datatypes ((Unit!34914 0))(
  ( (Unit!34915) )
))
(declare-fun lt!469732 () Unit!34914)

(declare-fun zeroValueBefore!47 () V!39003)

(declare-fun addThenRemoveForNewKeyIsSame!3 (ListLongMap!14221 (_ BitVec 64) V!39003) Unit!34914)

(assert (=> b!1065298 (= lt!469732 (addThenRemoveForNewKeyIsSame!3 lt!469731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!469733 () ListLongMap!14221)

(declare-fun lt!469735 () ListLongMap!14221)

(assert (=> b!1065298 (and (= lt!469737 lt!469736) (= lt!469733 lt!469735))))

(declare-fun +!3085 (ListLongMap!14221 tuple2!16240) ListLongMap!14221)

(assert (=> b!1065298 (= lt!469736 (+!3085 lt!469731 (tuple2!16241 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39003)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39003)

(declare-fun getCurrentListMap!4048 (array!67762 array!67764 (_ BitVec 32) (_ BitVec 32) V!39003 V!39003 (_ BitVec 32) Int) ListLongMap!14221)

(assert (=> b!1065298 (= lt!469733 (getCurrentListMap!4048 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065298 (= lt!469737 (getCurrentListMap!4048 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065299 () Bool)

(declare-fun res!711184 () Bool)

(assert (=> b!1065299 (=> (not res!711184) (not e!607332))))

(assert (=> b!1065299 (= res!711184 (and (= (size!33118 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33117 _keys!1163) (size!33118 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065300 () Bool)

(declare-fun e!607328 () Bool)

(declare-fun tp_is_empty!25401 () Bool)

(assert (=> b!1065300 (= e!607328 tp_is_empty!25401)))

(declare-fun mapNonEmpty!39787 () Bool)

(declare-fun tp!76211 () Bool)

(assert (=> mapNonEmpty!39787 (= mapRes!39787 (and tp!76211 e!607328))))

(declare-fun mapKey!39787 () (_ BitVec 32))

(declare-fun mapValue!39787 () ValueCell!11997)

(declare-fun mapRest!39787 () (Array (_ BitVec 32) ValueCell!11997))

(assert (=> mapNonEmpty!39787 (= (arr!32581 _values!955) (store mapRest!39787 mapKey!39787 mapValue!39787))))

(declare-fun b!1065301 () Bool)

(assert (=> b!1065301 (= e!607332 (not e!607329))))

(declare-fun res!711185 () Bool)

(assert (=> b!1065301 (=> res!711185 e!607329)))

(assert (=> b!1065301 (= res!711185 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1065301 (= lt!469731 lt!469735)))

(declare-fun lt!469734 () Unit!34914)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!715 (array!67762 array!67764 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39003 V!39003 V!39003 V!39003 (_ BitVec 32) Int) Unit!34914)

(assert (=> b!1065301 (= lt!469734 (lemmaNoChangeToArrayThenSameMapNoExtras!715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3676 (array!67762 array!67764 (_ BitVec 32) (_ BitVec 32) V!39003 V!39003 (_ BitVec 32) Int) ListLongMap!14221)

(assert (=> b!1065301 (= lt!469735 (getCurrentListMapNoExtraKeys!3676 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065301 (= lt!469731 (getCurrentListMapNoExtraKeys!3676 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711187 () Bool)

(assert (=> start!94242 (=> (not res!711187) (not e!607332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94242 (= res!711187 (validMask!0 mask!1515))))

(assert (=> start!94242 e!607332))

(assert (=> start!94242 true))

(assert (=> start!94242 tp_is_empty!25401))

(declare-fun array_inv!25064 (array!67764) Bool)

(assert (=> start!94242 (and (array_inv!25064 _values!955) e!607333)))

(assert (=> start!94242 tp!76212))

(declare-fun array_inv!25065 (array!67762) Bool)

(assert (=> start!94242 (array_inv!25065 _keys!1163)))

(declare-fun mapIsEmpty!39787 () Bool)

(assert (=> mapIsEmpty!39787 mapRes!39787))

(declare-fun b!1065302 () Bool)

(assert (=> b!1065302 (= e!607331 tp_is_empty!25401)))

(assert (= (and start!94242 res!711187) b!1065299))

(assert (= (and b!1065299 res!711184) b!1065296))

(assert (= (and b!1065296 res!711186) b!1065295))

(assert (= (and b!1065295 res!711188) b!1065301))

(assert (= (and b!1065301 (not res!711185)) b!1065298))

(assert (= (and b!1065297 condMapEmpty!39787) mapIsEmpty!39787))

(assert (= (and b!1065297 (not condMapEmpty!39787)) mapNonEmpty!39787))

(get-info :version)

(assert (= (and mapNonEmpty!39787 ((_ is ValueCellFull!11997) mapValue!39787)) b!1065300))

(assert (= (and b!1065297 ((_ is ValueCellFull!11997) mapDefault!39787)) b!1065302))

(assert (= start!94242 b!1065297))

(declare-fun m!983865 () Bool)

(assert (=> start!94242 m!983865))

(declare-fun m!983867 () Bool)

(assert (=> start!94242 m!983867))

(declare-fun m!983869 () Bool)

(assert (=> start!94242 m!983869))

(declare-fun m!983871 () Bool)

(assert (=> b!1065296 m!983871))

(declare-fun m!983873 () Bool)

(assert (=> b!1065295 m!983873))

(declare-fun m!983875 () Bool)

(assert (=> b!1065301 m!983875))

(declare-fun m!983877 () Bool)

(assert (=> b!1065301 m!983877))

(declare-fun m!983879 () Bool)

(assert (=> b!1065301 m!983879))

(declare-fun m!983881 () Bool)

(assert (=> b!1065298 m!983881))

(declare-fun m!983883 () Bool)

(assert (=> b!1065298 m!983883))

(declare-fun m!983885 () Bool)

(assert (=> b!1065298 m!983885))

(declare-fun m!983887 () Bool)

(assert (=> b!1065298 m!983887))

(declare-fun m!983889 () Bool)

(assert (=> b!1065298 m!983889))

(declare-fun m!983891 () Bool)

(assert (=> b!1065298 m!983891))

(declare-fun m!983893 () Bool)

(assert (=> mapNonEmpty!39787 m!983893))

(check-sat (not b!1065295) (not b!1065296) (not mapNonEmpty!39787) (not b!1065298) (not b_next!21591) tp_is_empty!25401 (not b!1065301) (not start!94242) b_and!34369)
(check-sat b_and!34369 (not b_next!21591))

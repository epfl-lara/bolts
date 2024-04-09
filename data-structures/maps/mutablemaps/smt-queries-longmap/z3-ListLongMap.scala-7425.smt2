; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94424 () Bool)

(assert start!94424)

(declare-fun b_free!21729 () Bool)

(declare-fun b_next!21729 () Bool)

(assert (=> start!94424 (= b_free!21729 (not b_next!21729))))

(declare-fun tp!76632 () Bool)

(declare-fun b_and!34531 () Bool)

(assert (=> start!94424 (= tp!76632 b_and!34531)))

(declare-fun res!712324 () Bool)

(declare-fun e!608753 () Bool)

(assert (=> start!94424 (=> (not res!712324) (not e!608753))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94424 (= res!712324 (validMask!0 mask!1515))))

(assert (=> start!94424 e!608753))

(assert (=> start!94424 true))

(declare-fun tp_is_empty!25539 () Bool)

(assert (=> start!94424 tp_is_empty!25539))

(declare-datatypes ((V!39187 0))(
  ( (V!39188 (val!12820 Int)) )
))
(declare-datatypes ((ValueCell!12066 0))(
  ( (ValueCellFull!12066 (v!15435 V!39187)) (EmptyCell!12066) )
))
(declare-datatypes ((array!68032 0))(
  ( (array!68033 (arr!32713 (Array (_ BitVec 32) ValueCell!12066)) (size!33250 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68032)

(declare-fun e!608751 () Bool)

(declare-fun array_inv!25162 (array!68032) Bool)

(assert (=> start!94424 (and (array_inv!25162 _values!955) e!608751)))

(assert (=> start!94424 tp!76632))

(declare-datatypes ((array!68034 0))(
  ( (array!68035 (arr!32714 (Array (_ BitVec 32) (_ BitVec 64))) (size!33251 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68034)

(declare-fun array_inv!25163 (array!68034) Bool)

(assert (=> start!94424 (array_inv!25163 _keys!1163)))

(declare-fun mapIsEmpty!40000 () Bool)

(declare-fun mapRes!40000 () Bool)

(assert (=> mapIsEmpty!40000 mapRes!40000))

(declare-fun b!1067260 () Bool)

(declare-fun e!608750 () Bool)

(assert (=> b!1067260 (= e!608750 tp_is_empty!25539)))

(declare-fun b!1067261 () Bool)

(assert (=> b!1067261 (= e!608753 (not true))))

(declare-datatypes ((tuple2!16350 0))(
  ( (tuple2!16351 (_1!8185 (_ BitVec 64)) (_2!8185 V!39187)) )
))
(declare-datatypes ((List!22941 0))(
  ( (Nil!22938) (Cons!22937 (h!24146 tuple2!16350) (t!32271 List!22941)) )
))
(declare-datatypes ((ListLongMap!14331 0))(
  ( (ListLongMap!14332 (toList!7181 List!22941)) )
))
(declare-fun lt!471370 () ListLongMap!14331)

(declare-fun lt!471369 () ListLongMap!14331)

(assert (=> b!1067261 (= lt!471370 lt!471369)))

(declare-fun zeroValueBefore!47 () V!39187)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39187)

(declare-datatypes ((Unit!35028 0))(
  ( (Unit!35029) )
))
(declare-fun lt!471368 () Unit!35028)

(declare-fun minValue!907 () V!39187)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!765 (array!68034 array!68032 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39187 V!39187 V!39187 V!39187 (_ BitVec 32) Int) Unit!35028)

(assert (=> b!1067261 (= lt!471368 (lemmaNoChangeToArrayThenSameMapNoExtras!765 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3726 (array!68034 array!68032 (_ BitVec 32) (_ BitVec 32) V!39187 V!39187 (_ BitVec 32) Int) ListLongMap!14331)

(assert (=> b!1067261 (= lt!471369 (getCurrentListMapNoExtraKeys!3726 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067261 (= lt!471370 (getCurrentListMapNoExtraKeys!3726 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067262 () Bool)

(assert (=> b!1067262 (= e!608751 (and e!608750 mapRes!40000))))

(declare-fun condMapEmpty!40000 () Bool)

(declare-fun mapDefault!40000 () ValueCell!12066)

(assert (=> b!1067262 (= condMapEmpty!40000 (= (arr!32713 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12066)) mapDefault!40000)))))

(declare-fun b!1067263 () Bool)

(declare-fun res!712325 () Bool)

(assert (=> b!1067263 (=> (not res!712325) (not e!608753))))

(declare-datatypes ((List!22942 0))(
  ( (Nil!22939) (Cons!22938 (h!24147 (_ BitVec 64)) (t!32272 List!22942)) )
))
(declare-fun arrayNoDuplicates!0 (array!68034 (_ BitVec 32) List!22942) Bool)

(assert (=> b!1067263 (= res!712325 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22939))))

(declare-fun b!1067264 () Bool)

(declare-fun res!712327 () Bool)

(assert (=> b!1067264 (=> (not res!712327) (not e!608753))))

(assert (=> b!1067264 (= res!712327 (and (= (size!33250 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33251 _keys!1163) (size!33250 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067265 () Bool)

(declare-fun e!608749 () Bool)

(assert (=> b!1067265 (= e!608749 tp_is_empty!25539)))

(declare-fun mapNonEmpty!40000 () Bool)

(declare-fun tp!76631 () Bool)

(assert (=> mapNonEmpty!40000 (= mapRes!40000 (and tp!76631 e!608749))))

(declare-fun mapRest!40000 () (Array (_ BitVec 32) ValueCell!12066))

(declare-fun mapKey!40000 () (_ BitVec 32))

(declare-fun mapValue!40000 () ValueCell!12066)

(assert (=> mapNonEmpty!40000 (= (arr!32713 _values!955) (store mapRest!40000 mapKey!40000 mapValue!40000))))

(declare-fun b!1067266 () Bool)

(declare-fun res!712326 () Bool)

(assert (=> b!1067266 (=> (not res!712326) (not e!608753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68034 (_ BitVec 32)) Bool)

(assert (=> b!1067266 (= res!712326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94424 res!712324) b!1067264))

(assert (= (and b!1067264 res!712327) b!1067266))

(assert (= (and b!1067266 res!712326) b!1067263))

(assert (= (and b!1067263 res!712325) b!1067261))

(assert (= (and b!1067262 condMapEmpty!40000) mapIsEmpty!40000))

(assert (= (and b!1067262 (not condMapEmpty!40000)) mapNonEmpty!40000))

(get-info :version)

(assert (= (and mapNonEmpty!40000 ((_ is ValueCellFull!12066) mapValue!40000)) b!1067265))

(assert (= (and b!1067262 ((_ is ValueCellFull!12066) mapDefault!40000)) b!1067260))

(assert (= start!94424 b!1067262))

(declare-fun m!986075 () Bool)

(assert (=> start!94424 m!986075))

(declare-fun m!986077 () Bool)

(assert (=> start!94424 m!986077))

(declare-fun m!986079 () Bool)

(assert (=> start!94424 m!986079))

(declare-fun m!986081 () Bool)

(assert (=> b!1067263 m!986081))

(declare-fun m!986083 () Bool)

(assert (=> mapNonEmpty!40000 m!986083))

(declare-fun m!986085 () Bool)

(assert (=> b!1067266 m!986085))

(declare-fun m!986087 () Bool)

(assert (=> b!1067261 m!986087))

(declare-fun m!986089 () Bool)

(assert (=> b!1067261 m!986089))

(declare-fun m!986091 () Bool)

(assert (=> b!1067261 m!986091))

(check-sat tp_is_empty!25539 (not b!1067263) (not b!1067261) (not start!94424) (not b_next!21729) b_and!34531 (not b!1067266) (not mapNonEmpty!40000))
(check-sat b_and!34531 (not b_next!21729))

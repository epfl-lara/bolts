; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94562 () Bool)

(assert start!94562)

(declare-fun b_free!21831 () Bool)

(declare-fun b_next!21831 () Bool)

(assert (=> start!94562 (= b_free!21831 (not b_next!21831))))

(declare-fun tp!76944 () Bool)

(declare-fun b_and!34651 () Bool)

(assert (=> start!94562 (= tp!76944 b_and!34651)))

(declare-fun b!1068826 () Bool)

(declare-fun res!713286 () Bool)

(declare-fun e!609925 () Bool)

(assert (=> b!1068826 (=> (not res!713286) (not e!609925))))

(declare-datatypes ((array!68232 0))(
  ( (array!68233 (arr!32811 (Array (_ BitVec 32) (_ BitVec 64))) (size!33348 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68232)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68232 (_ BitVec 32)) Bool)

(assert (=> b!1068826 (= res!713286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1068827 () Bool)

(declare-fun res!713281 () Bool)

(assert (=> b!1068827 (=> (not res!713281) (not e!609925))))

(declare-datatypes ((List!23014 0))(
  ( (Nil!23011) (Cons!23010 (h!24219 (_ BitVec 64)) (t!32348 List!23014)) )
))
(declare-fun arrayNoDuplicates!0 (array!68232 (_ BitVec 32) List!23014) Bool)

(assert (=> b!1068827 (= res!713281 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23011))))

(declare-fun b!1068828 () Bool)

(declare-fun e!609926 () Bool)

(declare-fun tp_is_empty!25641 () Bool)

(assert (=> b!1068828 (= e!609926 tp_is_empty!25641)))

(declare-fun res!713285 () Bool)

(assert (=> start!94562 (=> (not res!713285) (not e!609925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94562 (= res!713285 (validMask!0 mask!1515))))

(assert (=> start!94562 e!609925))

(assert (=> start!94562 true))

(assert (=> start!94562 tp_is_empty!25641))

(declare-datatypes ((V!39323 0))(
  ( (V!39324 (val!12871 Int)) )
))
(declare-datatypes ((ValueCell!12117 0))(
  ( (ValueCellFull!12117 (v!15487 V!39323)) (EmptyCell!12117) )
))
(declare-datatypes ((array!68234 0))(
  ( (array!68235 (arr!32812 (Array (_ BitVec 32) ValueCell!12117)) (size!33349 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68234)

(declare-fun e!609923 () Bool)

(declare-fun array_inv!25238 (array!68234) Bool)

(assert (=> start!94562 (and (array_inv!25238 _values!955) e!609923)))

(assert (=> start!94562 tp!76944))

(declare-fun array_inv!25239 (array!68232) Bool)

(assert (=> start!94562 (array_inv!25239 _keys!1163)))

(declare-fun b!1068829 () Bool)

(declare-fun res!713284 () Bool)

(assert (=> b!1068829 (=> (not res!713284) (not e!609925))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1068829 (= res!713284 (and (= (size!33349 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33348 _keys!1163) (size!33349 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40159 () Bool)

(declare-fun mapRes!40159 () Bool)

(assert (=> mapIsEmpty!40159 mapRes!40159))

(declare-fun b!1068830 () Bool)

(declare-fun e!609928 () Bool)

(assert (=> b!1068830 (= e!609928 true)))

(declare-datatypes ((tuple2!16426 0))(
  ( (tuple2!16427 (_1!8223 (_ BitVec 64)) (_2!8223 V!39323)) )
))
(declare-datatypes ((List!23015 0))(
  ( (Nil!23012) (Cons!23011 (h!24220 tuple2!16426) (t!32349 List!23015)) )
))
(declare-datatypes ((ListLongMap!14407 0))(
  ( (ListLongMap!14408 (toList!7219 List!23015)) )
))
(declare-fun lt!472244 () ListLongMap!14407)

(declare-fun -!654 (ListLongMap!14407 (_ BitVec 64)) ListLongMap!14407)

(assert (=> b!1068830 (= (-!654 lt!472244 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472244)))

(declare-datatypes ((Unit!35102 0))(
  ( (Unit!35103) )
))
(declare-fun lt!472247 () Unit!35102)

(declare-fun removeNotPresentStillSame!63 (ListLongMap!14407 (_ BitVec 64)) Unit!35102)

(assert (=> b!1068830 (= lt!472247 (removeNotPresentStillSame!63 lt!472244 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068831 () Bool)

(declare-fun e!609927 () Bool)

(assert (=> b!1068831 (= e!609927 tp_is_empty!25641)))

(declare-fun mapNonEmpty!40159 () Bool)

(declare-fun tp!76943 () Bool)

(assert (=> mapNonEmpty!40159 (= mapRes!40159 (and tp!76943 e!609927))))

(declare-fun mapRest!40159 () (Array (_ BitVec 32) ValueCell!12117))

(declare-fun mapKey!40159 () (_ BitVec 32))

(declare-fun mapValue!40159 () ValueCell!12117)

(assert (=> mapNonEmpty!40159 (= (arr!32812 _values!955) (store mapRest!40159 mapKey!40159 mapValue!40159))))

(declare-fun b!1068832 () Bool)

(declare-fun e!609922 () Bool)

(assert (=> b!1068832 (= e!609922 e!609928)))

(declare-fun res!713282 () Bool)

(assert (=> b!1068832 (=> res!713282 e!609928)))

(declare-fun contains!6319 (ListLongMap!14407 (_ BitVec 64)) Bool)

(assert (=> b!1068832 (= res!713282 (contains!6319 lt!472244 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39323)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39323)

(declare-fun getCurrentListMap!4108 (array!68232 array!68234 (_ BitVec 32) (_ BitVec 32) V!39323 V!39323 (_ BitVec 32) Int) ListLongMap!14407)

(assert (=> b!1068832 (= lt!472244 (getCurrentListMap!4108 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068833 () Bool)

(assert (=> b!1068833 (= e!609923 (and e!609926 mapRes!40159))))

(declare-fun condMapEmpty!40159 () Bool)

(declare-fun mapDefault!40159 () ValueCell!12117)

(assert (=> b!1068833 (= condMapEmpty!40159 (= (arr!32812 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12117)) mapDefault!40159)))))

(declare-fun b!1068834 () Bool)

(assert (=> b!1068834 (= e!609925 (not e!609922))))

(declare-fun res!713283 () Bool)

(assert (=> b!1068834 (=> res!713283 e!609922)))

(assert (=> b!1068834 (= res!713283 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472245 () ListLongMap!14407)

(declare-fun lt!472246 () ListLongMap!14407)

(assert (=> b!1068834 (= lt!472245 lt!472246)))

(declare-fun lt!472248 () Unit!35102)

(declare-fun zeroValueAfter!47 () V!39323)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!797 (array!68232 array!68234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39323 V!39323 V!39323 V!39323 (_ BitVec 32) Int) Unit!35102)

(assert (=> b!1068834 (= lt!472248 (lemmaNoChangeToArrayThenSameMapNoExtras!797 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3758 (array!68232 array!68234 (_ BitVec 32) (_ BitVec 32) V!39323 V!39323 (_ BitVec 32) Int) ListLongMap!14407)

(assert (=> b!1068834 (= lt!472246 (getCurrentListMapNoExtraKeys!3758 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068834 (= lt!472245 (getCurrentListMapNoExtraKeys!3758 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94562 res!713285) b!1068829))

(assert (= (and b!1068829 res!713284) b!1068826))

(assert (= (and b!1068826 res!713286) b!1068827))

(assert (= (and b!1068827 res!713281) b!1068834))

(assert (= (and b!1068834 (not res!713283)) b!1068832))

(assert (= (and b!1068832 (not res!713282)) b!1068830))

(assert (= (and b!1068833 condMapEmpty!40159) mapIsEmpty!40159))

(assert (= (and b!1068833 (not condMapEmpty!40159)) mapNonEmpty!40159))

(get-info :version)

(assert (= (and mapNonEmpty!40159 ((_ is ValueCellFull!12117) mapValue!40159)) b!1068831))

(assert (= (and b!1068833 ((_ is ValueCellFull!12117) mapDefault!40159)) b!1068828))

(assert (= start!94562 b!1068833))

(declare-fun m!987517 () Bool)

(assert (=> mapNonEmpty!40159 m!987517))

(declare-fun m!987519 () Bool)

(assert (=> start!94562 m!987519))

(declare-fun m!987521 () Bool)

(assert (=> start!94562 m!987521))

(declare-fun m!987523 () Bool)

(assert (=> start!94562 m!987523))

(declare-fun m!987525 () Bool)

(assert (=> b!1068832 m!987525))

(declare-fun m!987527 () Bool)

(assert (=> b!1068832 m!987527))

(declare-fun m!987529 () Bool)

(assert (=> b!1068826 m!987529))

(declare-fun m!987531 () Bool)

(assert (=> b!1068827 m!987531))

(declare-fun m!987533 () Bool)

(assert (=> b!1068830 m!987533))

(declare-fun m!987535 () Bool)

(assert (=> b!1068830 m!987535))

(declare-fun m!987537 () Bool)

(assert (=> b!1068834 m!987537))

(declare-fun m!987539 () Bool)

(assert (=> b!1068834 m!987539))

(declare-fun m!987541 () Bool)

(assert (=> b!1068834 m!987541))

(check-sat (not mapNonEmpty!40159) tp_is_empty!25641 (not b!1068832) (not b_next!21831) (not b!1068827) (not b!1068834) (not start!94562) b_and!34651 (not b!1068826) (not b!1068830))
(check-sat b_and!34651 (not b_next!21831))

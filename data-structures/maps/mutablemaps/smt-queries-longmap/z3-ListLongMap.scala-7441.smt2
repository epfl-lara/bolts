; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94556 () Bool)

(assert start!94556)

(declare-fun b_free!21825 () Bool)

(declare-fun b_next!21825 () Bool)

(assert (=> start!94556 (= b_free!21825 (not b_next!21825))))

(declare-fun tp!76925 () Bool)

(declare-fun b_and!34645 () Bool)

(assert (=> start!94556 (= tp!76925 b_and!34645)))

(declare-fun mapNonEmpty!40150 () Bool)

(declare-fun mapRes!40150 () Bool)

(declare-fun tp!76926 () Bool)

(declare-fun e!609863 () Bool)

(assert (=> mapNonEmpty!40150 (= mapRes!40150 (and tp!76926 e!609863))))

(declare-datatypes ((V!39315 0))(
  ( (V!39316 (val!12868 Int)) )
))
(declare-datatypes ((ValueCell!12114 0))(
  ( (ValueCellFull!12114 (v!15484 V!39315)) (EmptyCell!12114) )
))
(declare-fun mapRest!40150 () (Array (_ BitVec 32) ValueCell!12114))

(declare-datatypes ((array!68220 0))(
  ( (array!68221 (arr!32805 (Array (_ BitVec 32) ValueCell!12114)) (size!33342 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68220)

(declare-fun mapValue!40150 () ValueCell!12114)

(declare-fun mapKey!40150 () (_ BitVec 32))

(assert (=> mapNonEmpty!40150 (= (arr!32805 _values!955) (store mapRest!40150 mapKey!40150 mapValue!40150))))

(declare-fun b!1068745 () Bool)

(declare-fun tp_is_empty!25635 () Bool)

(assert (=> b!1068745 (= e!609863 tp_is_empty!25635)))

(declare-fun b!1068746 () Bool)

(declare-fun e!609861 () Bool)

(assert (=> b!1068746 (= e!609861 true)))

(declare-datatypes ((tuple2!16422 0))(
  ( (tuple2!16423 (_1!8221 (_ BitVec 64)) (_2!8221 V!39315)) )
))
(declare-datatypes ((List!23011 0))(
  ( (Nil!23008) (Cons!23007 (h!24216 tuple2!16422) (t!32345 List!23011)) )
))
(declare-datatypes ((ListLongMap!14403 0))(
  ( (ListLongMap!14404 (toList!7217 List!23011)) )
))
(declare-fun lt!472203 () ListLongMap!14403)

(declare-fun -!652 (ListLongMap!14403 (_ BitVec 64)) ListLongMap!14403)

(assert (=> b!1068746 (= (-!652 lt!472203 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472203)))

(declare-datatypes ((Unit!35098 0))(
  ( (Unit!35099) )
))
(declare-fun lt!472201 () Unit!35098)

(declare-fun removeNotPresentStillSame!61 (ListLongMap!14403 (_ BitVec 64)) Unit!35098)

(assert (=> b!1068746 (= lt!472201 (removeNotPresentStillSame!61 lt!472203 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068747 () Bool)

(declare-fun e!609862 () Bool)

(declare-fun e!609864 () Bool)

(assert (=> b!1068747 (= e!609862 (and e!609864 mapRes!40150))))

(declare-fun condMapEmpty!40150 () Bool)

(declare-fun mapDefault!40150 () ValueCell!12114)

(assert (=> b!1068747 (= condMapEmpty!40150 (= (arr!32805 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12114)) mapDefault!40150)))))

(declare-fun b!1068748 () Bool)

(declare-fun e!609865 () Bool)

(assert (=> b!1068748 (= e!609865 e!609861)))

(declare-fun res!713232 () Bool)

(assert (=> b!1068748 (=> res!713232 e!609861)))

(declare-fun contains!6318 (ListLongMap!14403 (_ BitVec 64)) Bool)

(assert (=> b!1068748 (= res!713232 (contains!6318 lt!472203 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39315)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39315)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68222 0))(
  ( (array!68223 (arr!32806 (Array (_ BitVec 32) (_ BitVec 64))) (size!33343 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68222)

(declare-fun getCurrentListMap!4107 (array!68222 array!68220 (_ BitVec 32) (_ BitVec 32) V!39315 V!39315 (_ BitVec 32) Int) ListLongMap!14403)

(assert (=> b!1068748 (= lt!472203 (getCurrentListMap!4107 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40150 () Bool)

(assert (=> mapIsEmpty!40150 mapRes!40150))

(declare-fun b!1068750 () Bool)

(assert (=> b!1068750 (= e!609864 tp_is_empty!25635)))

(declare-fun b!1068751 () Bool)

(declare-fun res!713227 () Bool)

(declare-fun e!609859 () Bool)

(assert (=> b!1068751 (=> (not res!713227) (not e!609859))))

(declare-datatypes ((List!23012 0))(
  ( (Nil!23009) (Cons!23008 (h!24217 (_ BitVec 64)) (t!32346 List!23012)) )
))
(declare-fun arrayNoDuplicates!0 (array!68222 (_ BitVec 32) List!23012) Bool)

(assert (=> b!1068751 (= res!713227 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23009))))

(declare-fun b!1068752 () Bool)

(declare-fun res!713231 () Bool)

(assert (=> b!1068752 (=> (not res!713231) (not e!609859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68222 (_ BitVec 32)) Bool)

(assert (=> b!1068752 (= res!713231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1068753 () Bool)

(assert (=> b!1068753 (= e!609859 (not e!609865))))

(declare-fun res!713228 () Bool)

(assert (=> b!1068753 (=> res!713228 e!609865)))

(assert (=> b!1068753 (= res!713228 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472200 () ListLongMap!14403)

(declare-fun lt!472199 () ListLongMap!14403)

(assert (=> b!1068753 (= lt!472200 lt!472199)))

(declare-fun lt!472202 () Unit!35098)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39315)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!796 (array!68222 array!68220 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39315 V!39315 V!39315 V!39315 (_ BitVec 32) Int) Unit!35098)

(assert (=> b!1068753 (= lt!472202 (lemmaNoChangeToArrayThenSameMapNoExtras!796 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3757 (array!68222 array!68220 (_ BitVec 32) (_ BitVec 32) V!39315 V!39315 (_ BitVec 32) Int) ListLongMap!14403)

(assert (=> b!1068753 (= lt!472199 (getCurrentListMapNoExtraKeys!3757 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068753 (= lt!472200 (getCurrentListMapNoExtraKeys!3757 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!713230 () Bool)

(assert (=> start!94556 (=> (not res!713230) (not e!609859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94556 (= res!713230 (validMask!0 mask!1515))))

(assert (=> start!94556 e!609859))

(assert (=> start!94556 true))

(assert (=> start!94556 tp_is_empty!25635))

(declare-fun array_inv!25232 (array!68220) Bool)

(assert (=> start!94556 (and (array_inv!25232 _values!955) e!609862)))

(assert (=> start!94556 tp!76925))

(declare-fun array_inv!25233 (array!68222) Bool)

(assert (=> start!94556 (array_inv!25233 _keys!1163)))

(declare-fun b!1068749 () Bool)

(declare-fun res!713229 () Bool)

(assert (=> b!1068749 (=> (not res!713229) (not e!609859))))

(assert (=> b!1068749 (= res!713229 (and (= (size!33342 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33343 _keys!1163) (size!33342 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94556 res!713230) b!1068749))

(assert (= (and b!1068749 res!713229) b!1068752))

(assert (= (and b!1068752 res!713231) b!1068751))

(assert (= (and b!1068751 res!713227) b!1068753))

(assert (= (and b!1068753 (not res!713228)) b!1068748))

(assert (= (and b!1068748 (not res!713232)) b!1068746))

(assert (= (and b!1068747 condMapEmpty!40150) mapIsEmpty!40150))

(assert (= (and b!1068747 (not condMapEmpty!40150)) mapNonEmpty!40150))

(get-info :version)

(assert (= (and mapNonEmpty!40150 ((_ is ValueCellFull!12114) mapValue!40150)) b!1068745))

(assert (= (and b!1068747 ((_ is ValueCellFull!12114) mapDefault!40150)) b!1068750))

(assert (= start!94556 b!1068747))

(declare-fun m!987439 () Bool)

(assert (=> mapNonEmpty!40150 m!987439))

(declare-fun m!987441 () Bool)

(assert (=> b!1068746 m!987441))

(declare-fun m!987443 () Bool)

(assert (=> b!1068746 m!987443))

(declare-fun m!987445 () Bool)

(assert (=> b!1068752 m!987445))

(declare-fun m!987447 () Bool)

(assert (=> start!94556 m!987447))

(declare-fun m!987449 () Bool)

(assert (=> start!94556 m!987449))

(declare-fun m!987451 () Bool)

(assert (=> start!94556 m!987451))

(declare-fun m!987453 () Bool)

(assert (=> b!1068751 m!987453))

(declare-fun m!987455 () Bool)

(assert (=> b!1068748 m!987455))

(declare-fun m!987457 () Bool)

(assert (=> b!1068748 m!987457))

(declare-fun m!987459 () Bool)

(assert (=> b!1068753 m!987459))

(declare-fun m!987461 () Bool)

(assert (=> b!1068753 m!987461))

(declare-fun m!987463 () Bool)

(assert (=> b!1068753 m!987463))

(check-sat (not b!1068746) (not b!1068753) (not mapNonEmpty!40150) (not start!94556) b_and!34645 (not b!1068752) tp_is_empty!25635 (not b_next!21825) (not b!1068748) (not b!1068751))
(check-sat b_and!34645 (not b_next!21825))

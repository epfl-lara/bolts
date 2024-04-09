; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94486 () Bool)

(assert start!94486)

(declare-fun b_free!21777 () Bool)

(declare-fun b_next!21777 () Bool)

(assert (=> start!94486 (= b_free!21777 (not b_next!21777))))

(declare-fun tp!76779 () Bool)

(declare-fun b_and!34587 () Bool)

(assert (=> start!94486 (= tp!76779 b_and!34587)))

(declare-fun b!1067940 () Bool)

(declare-fun res!712739 () Bool)

(declare-fun e!609259 () Bool)

(assert (=> b!1067940 (=> (not res!712739) (not e!609259))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((V!39251 0))(
  ( (V!39252 (val!12844 Int)) )
))
(declare-datatypes ((ValueCell!12090 0))(
  ( (ValueCellFull!12090 (v!15459 V!39251)) (EmptyCell!12090) )
))
(declare-datatypes ((array!68128 0))(
  ( (array!68129 (arr!32760 (Array (_ BitVec 32) ValueCell!12090)) (size!33297 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68128)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68130 0))(
  ( (array!68131 (arr!32761 (Array (_ BitVec 32) (_ BitVec 64))) (size!33298 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68130)

(assert (=> b!1067940 (= res!712739 (and (= (size!33297 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33298 _keys!1163) (size!33297 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067942 () Bool)

(declare-fun e!609258 () Bool)

(assert (=> b!1067942 (= e!609259 (not e!609258))))

(declare-fun res!712735 () Bool)

(assert (=> b!1067942 (=> res!712735 e!609258)))

(assert (=> b!1067942 (= res!712735 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16384 0))(
  ( (tuple2!16385 (_1!8202 (_ BitVec 64)) (_2!8202 V!39251)) )
))
(declare-datatypes ((List!22975 0))(
  ( (Nil!22972) (Cons!22971 (h!24180 tuple2!16384) (t!32307 List!22975)) )
))
(declare-datatypes ((ListLongMap!14365 0))(
  ( (ListLongMap!14366 (toList!7198 List!22975)) )
))
(declare-fun lt!471715 () ListLongMap!14365)

(declare-fun lt!471719 () ListLongMap!14365)

(assert (=> b!1067942 (= lt!471715 lt!471719)))

(declare-fun zeroValueBefore!47 () V!39251)

(declare-datatypes ((Unit!35062 0))(
  ( (Unit!35063) )
))
(declare-fun lt!471717 () Unit!35062)

(declare-fun minValue!907 () V!39251)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39251)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!782 (array!68130 array!68128 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39251 V!39251 V!39251 V!39251 (_ BitVec 32) Int) Unit!35062)

(assert (=> b!1067942 (= lt!471717 (lemmaNoChangeToArrayThenSameMapNoExtras!782 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3743 (array!68130 array!68128 (_ BitVec 32) (_ BitVec 32) V!39251 V!39251 (_ BitVec 32) Int) ListLongMap!14365)

(assert (=> b!1067942 (= lt!471719 (getCurrentListMapNoExtraKeys!3743 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067942 (= lt!471715 (getCurrentListMapNoExtraKeys!3743 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067943 () Bool)

(declare-fun e!609260 () Bool)

(declare-fun tp_is_empty!25587 () Bool)

(assert (=> b!1067943 (= e!609260 tp_is_empty!25587)))

(declare-fun b!1067944 () Bool)

(declare-fun res!712738 () Bool)

(assert (=> b!1067944 (=> (not res!712738) (not e!609259))))

(declare-datatypes ((List!22976 0))(
  ( (Nil!22973) (Cons!22972 (h!24181 (_ BitVec 64)) (t!32308 List!22976)) )
))
(declare-fun arrayNoDuplicates!0 (array!68130 (_ BitVec 32) List!22976) Bool)

(assert (=> b!1067944 (= res!712738 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22973))))

(declare-fun b!1067945 () Bool)

(declare-fun res!712736 () Bool)

(assert (=> b!1067945 (=> (not res!712736) (not e!609259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68130 (_ BitVec 32)) Bool)

(assert (=> b!1067945 (= res!712736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40075 () Bool)

(declare-fun mapRes!40075 () Bool)

(assert (=> mapIsEmpty!40075 mapRes!40075))

(declare-fun mapNonEmpty!40075 () Bool)

(declare-fun tp!76778 () Bool)

(assert (=> mapNonEmpty!40075 (= mapRes!40075 (and tp!76778 e!609260))))

(declare-fun mapValue!40075 () ValueCell!12090)

(declare-fun mapRest!40075 () (Array (_ BitVec 32) ValueCell!12090))

(declare-fun mapKey!40075 () (_ BitVec 32))

(assert (=> mapNonEmpty!40075 (= (arr!32760 _values!955) (store mapRest!40075 mapKey!40075 mapValue!40075))))

(declare-fun b!1067946 () Bool)

(declare-fun e!609256 () Bool)

(assert (=> b!1067946 (= e!609256 true)))

(declare-fun lt!471716 () ListLongMap!14365)

(declare-fun -!639 (ListLongMap!14365 (_ BitVec 64)) ListLongMap!14365)

(assert (=> b!1067946 (= (-!639 lt!471716 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471716)))

(declare-fun lt!471718 () Unit!35062)

(declare-fun removeNotPresentStillSame!48 (ListLongMap!14365 (_ BitVec 64)) Unit!35062)

(assert (=> b!1067946 (= lt!471718 (removeNotPresentStillSame!48 lt!471716 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1067947 () Bool)

(declare-fun e!609261 () Bool)

(assert (=> b!1067947 (= e!609261 tp_is_empty!25587)))

(declare-fun b!1067948 () Bool)

(declare-fun e!609255 () Bool)

(assert (=> b!1067948 (= e!609255 (and e!609261 mapRes!40075))))

(declare-fun condMapEmpty!40075 () Bool)

(declare-fun mapDefault!40075 () ValueCell!12090)

(assert (=> b!1067948 (= condMapEmpty!40075 (= (arr!32760 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12090)) mapDefault!40075)))))

(declare-fun res!712734 () Bool)

(assert (=> start!94486 (=> (not res!712734) (not e!609259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94486 (= res!712734 (validMask!0 mask!1515))))

(assert (=> start!94486 e!609259))

(assert (=> start!94486 true))

(assert (=> start!94486 tp_is_empty!25587))

(declare-fun array_inv!25198 (array!68128) Bool)

(assert (=> start!94486 (and (array_inv!25198 _values!955) e!609255)))

(assert (=> start!94486 tp!76779))

(declare-fun array_inv!25199 (array!68130) Bool)

(assert (=> start!94486 (array_inv!25199 _keys!1163)))

(declare-fun b!1067941 () Bool)

(assert (=> b!1067941 (= e!609258 e!609256)))

(declare-fun res!712737 () Bool)

(assert (=> b!1067941 (=> res!712737 e!609256)))

(declare-fun contains!6303 (ListLongMap!14365 (_ BitVec 64)) Bool)

(assert (=> b!1067941 (= res!712737 (contains!6303 lt!471716 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4093 (array!68130 array!68128 (_ BitVec 32) (_ BitVec 32) V!39251 V!39251 (_ BitVec 32) Int) ListLongMap!14365)

(assert (=> b!1067941 (= lt!471716 (getCurrentListMap!4093 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94486 res!712734) b!1067940))

(assert (= (and b!1067940 res!712739) b!1067945))

(assert (= (and b!1067945 res!712736) b!1067944))

(assert (= (and b!1067944 res!712738) b!1067942))

(assert (= (and b!1067942 (not res!712735)) b!1067941))

(assert (= (and b!1067941 (not res!712737)) b!1067946))

(assert (= (and b!1067948 condMapEmpty!40075) mapIsEmpty!40075))

(assert (= (and b!1067948 (not condMapEmpty!40075)) mapNonEmpty!40075))

(get-info :version)

(assert (= (and mapNonEmpty!40075 ((_ is ValueCellFull!12090) mapValue!40075)) b!1067943))

(assert (= (and b!1067948 ((_ is ValueCellFull!12090) mapDefault!40075)) b!1067947))

(assert (= start!94486 b!1067948))

(declare-fun m!986689 () Bool)

(assert (=> b!1067944 m!986689))

(declare-fun m!986691 () Bool)

(assert (=> b!1067942 m!986691))

(declare-fun m!986693 () Bool)

(assert (=> b!1067942 m!986693))

(declare-fun m!986695 () Bool)

(assert (=> b!1067942 m!986695))

(declare-fun m!986697 () Bool)

(assert (=> start!94486 m!986697))

(declare-fun m!986699 () Bool)

(assert (=> start!94486 m!986699))

(declare-fun m!986701 () Bool)

(assert (=> start!94486 m!986701))

(declare-fun m!986703 () Bool)

(assert (=> b!1067941 m!986703))

(declare-fun m!986705 () Bool)

(assert (=> b!1067941 m!986705))

(declare-fun m!986707 () Bool)

(assert (=> b!1067945 m!986707))

(declare-fun m!986709 () Bool)

(assert (=> b!1067946 m!986709))

(declare-fun m!986711 () Bool)

(assert (=> b!1067946 m!986711))

(declare-fun m!986713 () Bool)

(assert (=> mapNonEmpty!40075 m!986713))

(check-sat (not start!94486) (not b!1067945) b_and!34587 (not b!1067942) (not b!1067944) (not mapNonEmpty!40075) (not b!1067941) tp_is_empty!25587 (not b_next!21777) (not b!1067946))
(check-sat b_and!34587 (not b_next!21777))

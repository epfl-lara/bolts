; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94806 () Bool)

(assert start!94806)

(declare-fun b_free!22023 () Bool)

(declare-fun b_next!22023 () Bool)

(assert (=> start!94806 (= b_free!22023 (not b_next!22023))))

(declare-fun tp!77529 () Bool)

(declare-fun b_and!34871 () Bool)

(assert (=> start!94806 (= tp!77529 b_and!34871)))

(declare-fun mapNonEmpty!40456 () Bool)

(declare-fun mapRes!40456 () Bool)

(declare-fun tp!77528 () Bool)

(declare-fun e!611945 () Bool)

(assert (=> mapNonEmpty!40456 (= mapRes!40456 (and tp!77528 e!611945))))

(declare-datatypes ((V!39579 0))(
  ( (V!39580 (val!12967 Int)) )
))
(declare-datatypes ((ValueCell!12213 0))(
  ( (ValueCellFull!12213 (v!15584 V!39579)) (EmptyCell!12213) )
))
(declare-fun mapValue!40456 () ValueCell!12213)

(declare-fun mapKey!40456 () (_ BitVec 32))

(declare-datatypes ((array!68596 0))(
  ( (array!68597 (arr!32990 (Array (_ BitVec 32) ValueCell!12213)) (size!33527 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68596)

(declare-fun mapRest!40456 () (Array (_ BitVec 32) ValueCell!12213))

(assert (=> mapNonEmpty!40456 (= (arr!32990 _values!955) (store mapRest!40456 mapKey!40456 mapValue!40456))))

(declare-fun b!1071565 () Bool)

(declare-fun e!611950 () Bool)

(declare-fun tp_is_empty!25833 () Bool)

(assert (=> b!1071565 (= e!611950 tp_is_empty!25833)))

(declare-fun b!1071566 () Bool)

(assert (=> b!1071566 (= e!611945 tp_is_empty!25833)))

(declare-fun b!1071567 () Bool)

(declare-fun res!714917 () Bool)

(declare-fun e!611947 () Bool)

(assert (=> b!1071567 (=> (not res!714917) (not e!611947))))

(declare-datatypes ((array!68598 0))(
  ( (array!68599 (arr!32991 (Array (_ BitVec 32) (_ BitVec 64))) (size!33528 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68598)

(declare-datatypes ((List!23150 0))(
  ( (Nil!23147) (Cons!23146 (h!24355 (_ BitVec 64)) (t!32490 List!23150)) )
))
(declare-fun arrayNoDuplicates!0 (array!68598 (_ BitVec 32) List!23150) Bool)

(assert (=> b!1071567 (= res!714917 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23147))))

(declare-fun b!1071568 () Bool)

(declare-fun e!611944 () Bool)

(assert (=> b!1071568 (= e!611944 (and e!611950 mapRes!40456))))

(declare-fun condMapEmpty!40456 () Bool)

(declare-fun mapDefault!40456 () ValueCell!12213)

(assert (=> b!1071568 (= condMapEmpty!40456 (= (arr!32990 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12213)) mapDefault!40456)))))

(declare-fun b!1071569 () Bool)

(declare-fun e!611946 () Bool)

(assert (=> b!1071569 (= e!611947 (not e!611946))))

(declare-fun res!714916 () Bool)

(assert (=> b!1071569 (=> res!714916 e!611946)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071569 (= res!714916 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16568 0))(
  ( (tuple2!16569 (_1!8294 (_ BitVec 64)) (_2!8294 V!39579)) )
))
(declare-datatypes ((List!23151 0))(
  ( (Nil!23148) (Cons!23147 (h!24356 tuple2!16568) (t!32491 List!23151)) )
))
(declare-datatypes ((ListLongMap!14549 0))(
  ( (ListLongMap!14550 (toList!7290 List!23151)) )
))
(declare-fun lt!474315 () ListLongMap!14549)

(declare-fun lt!474309 () ListLongMap!14549)

(assert (=> b!1071569 (= lt!474315 lt!474309)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39579)

(declare-fun minValue!907 () V!39579)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((Unit!35241 0))(
  ( (Unit!35242) )
))
(declare-fun lt!474310 () Unit!35241)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39579)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!862 (array!68598 array!68596 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39579 V!39579 V!39579 V!39579 (_ BitVec 32) Int) Unit!35241)

(assert (=> b!1071569 (= lt!474310 (lemmaNoChangeToArrayThenSameMapNoExtras!862 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3823 (array!68598 array!68596 (_ BitVec 32) (_ BitVec 32) V!39579 V!39579 (_ BitVec 32) Int) ListLongMap!14549)

(assert (=> b!1071569 (= lt!474309 (getCurrentListMapNoExtraKeys!3823 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071569 (= lt!474315 (getCurrentListMapNoExtraKeys!3823 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071570 () Bool)

(assert (=> b!1071570 (= e!611946 true)))

(declare-fun lt!474312 () ListLongMap!14549)

(declare-fun lt!474317 () ListLongMap!14549)

(declare-fun -!682 (ListLongMap!14549 (_ BitVec 64)) ListLongMap!14549)

(assert (=> b!1071570 (= lt!474312 (-!682 lt!474317 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474314 () ListLongMap!14549)

(declare-fun lt!474321 () ListLongMap!14549)

(assert (=> b!1071570 (= lt!474314 lt!474321)))

(declare-fun lt!474311 () Unit!35241)

(declare-fun addCommutativeForDiffKeys!726 (ListLongMap!14549 (_ BitVec 64) V!39579 (_ BitVec 64) V!39579) Unit!35241)

(assert (=> b!1071570 (= lt!474311 (addCommutativeForDiffKeys!726 lt!474315 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474313 () ListLongMap!14549)

(assert (=> b!1071570 (= (-!682 lt!474321 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474313)))

(declare-fun lt!474320 () tuple2!16568)

(declare-fun +!3146 (ListLongMap!14549 tuple2!16568) ListLongMap!14549)

(assert (=> b!1071570 (= lt!474321 (+!3146 lt!474313 lt!474320))))

(declare-fun lt!474316 () Unit!35241)

(declare-fun addThenRemoveForNewKeyIsSame!56 (ListLongMap!14549 (_ BitVec 64) V!39579) Unit!35241)

(assert (=> b!1071570 (= lt!474316 (addThenRemoveForNewKeyIsSame!56 lt!474313 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474318 () tuple2!16568)

(assert (=> b!1071570 (= lt!474313 (+!3146 lt!474315 lt!474318))))

(declare-fun e!611949 () Bool)

(assert (=> b!1071570 e!611949))

(declare-fun res!714918 () Bool)

(assert (=> b!1071570 (=> (not res!714918) (not e!611949))))

(assert (=> b!1071570 (= res!714918 (= lt!474317 lt!474314))))

(assert (=> b!1071570 (= lt!474314 (+!3146 (+!3146 lt!474315 lt!474320) lt!474318))))

(assert (=> b!1071570 (= lt!474318 (tuple2!16569 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071570 (= lt!474320 (tuple2!16569 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474319 () ListLongMap!14549)

(declare-fun getCurrentListMap!4154 (array!68598 array!68596 (_ BitVec 32) (_ BitVec 32) V!39579 V!39579 (_ BitVec 32) Int) ListLongMap!14549)

(assert (=> b!1071570 (= lt!474319 (getCurrentListMap!4154 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071570 (= lt!474317 (getCurrentListMap!4154 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071571 () Bool)

(declare-fun res!714921 () Bool)

(assert (=> b!1071571 (=> (not res!714921) (not e!611947))))

(assert (=> b!1071571 (= res!714921 (and (= (size!33527 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33528 _keys!1163) (size!33527 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!714919 () Bool)

(assert (=> start!94806 (=> (not res!714919) (not e!611947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94806 (= res!714919 (validMask!0 mask!1515))))

(assert (=> start!94806 e!611947))

(assert (=> start!94806 true))

(assert (=> start!94806 tp_is_empty!25833))

(declare-fun array_inv!25364 (array!68596) Bool)

(assert (=> start!94806 (and (array_inv!25364 _values!955) e!611944)))

(assert (=> start!94806 tp!77529))

(declare-fun array_inv!25365 (array!68598) Bool)

(assert (=> start!94806 (array_inv!25365 _keys!1163)))

(declare-fun b!1071572 () Bool)

(declare-fun res!714920 () Bool)

(assert (=> b!1071572 (=> (not res!714920) (not e!611947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68598 (_ BitVec 32)) Bool)

(assert (=> b!1071572 (= res!714920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071573 () Bool)

(assert (=> b!1071573 (= e!611949 (= lt!474319 (+!3146 lt!474309 lt!474318)))))

(declare-fun mapIsEmpty!40456 () Bool)

(assert (=> mapIsEmpty!40456 mapRes!40456))

(assert (= (and start!94806 res!714919) b!1071571))

(assert (= (and b!1071571 res!714921) b!1071572))

(assert (= (and b!1071572 res!714920) b!1071567))

(assert (= (and b!1071567 res!714917) b!1071569))

(assert (= (and b!1071569 (not res!714916)) b!1071570))

(assert (= (and b!1071570 res!714918) b!1071573))

(assert (= (and b!1071568 condMapEmpty!40456) mapIsEmpty!40456))

(assert (= (and b!1071568 (not condMapEmpty!40456)) mapNonEmpty!40456))

(get-info :version)

(assert (= (and mapNonEmpty!40456 ((_ is ValueCellFull!12213) mapValue!40456)) b!1071566))

(assert (= (and b!1071568 ((_ is ValueCellFull!12213) mapDefault!40456)) b!1071565))

(assert (= start!94806 b!1071568))

(declare-fun m!990295 () Bool)

(assert (=> b!1071569 m!990295))

(declare-fun m!990297 () Bool)

(assert (=> b!1071569 m!990297))

(declare-fun m!990299 () Bool)

(assert (=> b!1071569 m!990299))

(declare-fun m!990301 () Bool)

(assert (=> start!94806 m!990301))

(declare-fun m!990303 () Bool)

(assert (=> start!94806 m!990303))

(declare-fun m!990305 () Bool)

(assert (=> start!94806 m!990305))

(declare-fun m!990307 () Bool)

(assert (=> b!1071573 m!990307))

(declare-fun m!990309 () Bool)

(assert (=> b!1071572 m!990309))

(declare-fun m!990311 () Bool)

(assert (=> mapNonEmpty!40456 m!990311))

(declare-fun m!990313 () Bool)

(assert (=> b!1071567 m!990313))

(declare-fun m!990315 () Bool)

(assert (=> b!1071570 m!990315))

(declare-fun m!990317 () Bool)

(assert (=> b!1071570 m!990317))

(declare-fun m!990319 () Bool)

(assert (=> b!1071570 m!990319))

(declare-fun m!990321 () Bool)

(assert (=> b!1071570 m!990321))

(declare-fun m!990323 () Bool)

(assert (=> b!1071570 m!990323))

(declare-fun m!990325 () Bool)

(assert (=> b!1071570 m!990325))

(declare-fun m!990327 () Bool)

(assert (=> b!1071570 m!990327))

(declare-fun m!990329 () Bool)

(assert (=> b!1071570 m!990329))

(assert (=> b!1071570 m!990327))

(declare-fun m!990331 () Bool)

(assert (=> b!1071570 m!990331))

(declare-fun m!990333 () Bool)

(assert (=> b!1071570 m!990333))

(check-sat (not b!1071567) (not b!1071570) (not b!1071573) b_and!34871 (not b_next!22023) (not start!94806) (not mapNonEmpty!40456) tp_is_empty!25833 (not b!1071572) (not b!1071569))
(check-sat b_and!34871 (not b_next!22023))

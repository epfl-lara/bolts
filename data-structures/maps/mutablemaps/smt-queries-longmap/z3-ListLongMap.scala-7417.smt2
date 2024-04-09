; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94354 () Bool)

(assert start!94354)

(declare-fun b_free!21681 () Bool)

(declare-fun b_next!21681 () Bool)

(assert (=> start!94354 (= b_free!21681 (not b_next!21681))))

(declare-fun tp!76484 () Bool)

(declare-fun b_and!34471 () Bool)

(assert (=> start!94354 (= tp!76484 b_and!34471)))

(declare-fun b!1066559 () Bool)

(declare-fun e!608257 () Bool)

(declare-fun tp_is_empty!25491 () Bool)

(assert (=> b!1066559 (= e!608257 tp_is_empty!25491)))

(declare-fun b!1066560 () Bool)

(declare-fun e!608261 () Bool)

(assert (=> b!1066560 (= e!608261 true)))

(declare-datatypes ((V!39123 0))(
  ( (V!39124 (val!12796 Int)) )
))
(declare-datatypes ((tuple2!16320 0))(
  ( (tuple2!16321 (_1!8170 (_ BitVec 64)) (_2!8170 V!39123)) )
))
(declare-datatypes ((List!22912 0))(
  ( (Nil!22909) (Cons!22908 (h!24117 tuple2!16320) (t!32240 List!22912)) )
))
(declare-datatypes ((ListLongMap!14301 0))(
  ( (ListLongMap!14302 (toList!7166 List!22912)) )
))
(declare-fun lt!470952 () ListLongMap!14301)

(declare-fun lt!470950 () ListLongMap!14301)

(declare-fun -!624 (ListLongMap!14301 (_ BitVec 64)) ListLongMap!14301)

(assert (=> b!1066560 (= lt!470952 (-!624 lt!470950 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470949 () ListLongMap!14301)

(declare-fun lt!470955 () ListLongMap!14301)

(assert (=> b!1066560 (= (-!624 lt!470949 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470955)))

(declare-datatypes ((Unit!34996 0))(
  ( (Unit!34997) )
))
(declare-fun lt!470951 () Unit!34996)

(declare-fun zeroValueBefore!47 () V!39123)

(declare-fun addThenRemoveForNewKeyIsSame!33 (ListLongMap!14301 (_ BitVec 64) V!39123) Unit!34996)

(assert (=> b!1066560 (= lt!470951 (addThenRemoveForNewKeyIsSame!33 lt!470955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470954 () ListLongMap!14301)

(declare-fun lt!470953 () ListLongMap!14301)

(assert (=> b!1066560 (and (= lt!470950 lt!470949) (= lt!470954 lt!470953))))

(declare-fun +!3115 (ListLongMap!14301 tuple2!16320) ListLongMap!14301)

(assert (=> b!1066560 (= lt!470949 (+!3115 lt!470955 (tuple2!16321 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12042 0))(
  ( (ValueCellFull!12042 (v!15410 V!39123)) (EmptyCell!12042) )
))
(declare-datatypes ((array!67940 0))(
  ( (array!67941 (arr!32668 (Array (_ BitVec 32) ValueCell!12042)) (size!33205 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67940)

(declare-fun minValue!907 () V!39123)

(declare-datatypes ((array!67942 0))(
  ( (array!67943 (arr!32669 (Array (_ BitVec 32) (_ BitVec 64))) (size!33206 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67942)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39123)

(declare-fun getCurrentListMap!4078 (array!67942 array!67940 (_ BitVec 32) (_ BitVec 32) V!39123 V!39123 (_ BitVec 32) Int) ListLongMap!14301)

(assert (=> b!1066560 (= lt!470954 (getCurrentListMap!4078 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066560 (= lt!470950 (getCurrentListMap!4078 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711944 () Bool)

(declare-fun e!608258 () Bool)

(assert (=> start!94354 (=> (not res!711944) (not e!608258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94354 (= res!711944 (validMask!0 mask!1515))))

(assert (=> start!94354 e!608258))

(assert (=> start!94354 true))

(assert (=> start!94354 tp_is_empty!25491))

(declare-fun e!608260 () Bool)

(declare-fun array_inv!25132 (array!67940) Bool)

(assert (=> start!94354 (and (array_inv!25132 _values!955) e!608260)))

(assert (=> start!94354 tp!76484))

(declare-fun array_inv!25133 (array!67942) Bool)

(assert (=> start!94354 (array_inv!25133 _keys!1163)))

(declare-fun b!1066561 () Bool)

(declare-fun mapRes!39925 () Bool)

(assert (=> b!1066561 (= e!608260 (and e!608257 mapRes!39925))))

(declare-fun condMapEmpty!39925 () Bool)

(declare-fun mapDefault!39925 () ValueCell!12042)

(assert (=> b!1066561 (= condMapEmpty!39925 (= (arr!32668 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12042)) mapDefault!39925)))))

(declare-fun b!1066562 () Bool)

(declare-fun res!711945 () Bool)

(assert (=> b!1066562 (=> (not res!711945) (not e!608258))))

(declare-datatypes ((List!22913 0))(
  ( (Nil!22910) (Cons!22909 (h!24118 (_ BitVec 64)) (t!32241 List!22913)) )
))
(declare-fun arrayNoDuplicates!0 (array!67942 (_ BitVec 32) List!22913) Bool)

(assert (=> b!1066562 (= res!711945 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22910))))

(declare-fun mapIsEmpty!39925 () Bool)

(assert (=> mapIsEmpty!39925 mapRes!39925))

(declare-fun b!1066563 () Bool)

(declare-fun e!608259 () Bool)

(assert (=> b!1066563 (= e!608259 tp_is_empty!25491)))

(declare-fun b!1066564 () Bool)

(declare-fun res!711943 () Bool)

(assert (=> b!1066564 (=> (not res!711943) (not e!608258))))

(assert (=> b!1066564 (= res!711943 (and (= (size!33205 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33206 _keys!1163) (size!33205 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066565 () Bool)

(declare-fun res!711941 () Bool)

(assert (=> b!1066565 (=> (not res!711941) (not e!608258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67942 (_ BitVec 32)) Bool)

(assert (=> b!1066565 (= res!711941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39925 () Bool)

(declare-fun tp!76485 () Bool)

(assert (=> mapNonEmpty!39925 (= mapRes!39925 (and tp!76485 e!608259))))

(declare-fun mapKey!39925 () (_ BitVec 32))

(declare-fun mapRest!39925 () (Array (_ BitVec 32) ValueCell!12042))

(declare-fun mapValue!39925 () ValueCell!12042)

(assert (=> mapNonEmpty!39925 (= (arr!32668 _values!955) (store mapRest!39925 mapKey!39925 mapValue!39925))))

(declare-fun b!1066566 () Bool)

(assert (=> b!1066566 (= e!608258 (not e!608261))))

(declare-fun res!711942 () Bool)

(assert (=> b!1066566 (=> res!711942 e!608261)))

(assert (=> b!1066566 (= res!711942 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066566 (= lt!470955 lt!470953)))

(declare-fun lt!470956 () Unit!34996)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!752 (array!67942 array!67940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39123 V!39123 V!39123 V!39123 (_ BitVec 32) Int) Unit!34996)

(assert (=> b!1066566 (= lt!470956 (lemmaNoChangeToArrayThenSameMapNoExtras!752 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3713 (array!67942 array!67940 (_ BitVec 32) (_ BitVec 32) V!39123 V!39123 (_ BitVec 32) Int) ListLongMap!14301)

(assert (=> b!1066566 (= lt!470953 (getCurrentListMapNoExtraKeys!3713 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066566 (= lt!470955 (getCurrentListMapNoExtraKeys!3713 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94354 res!711944) b!1066564))

(assert (= (and b!1066564 res!711943) b!1066565))

(assert (= (and b!1066565 res!711941) b!1066562))

(assert (= (and b!1066562 res!711945) b!1066566))

(assert (= (and b!1066566 (not res!711942)) b!1066560))

(assert (= (and b!1066561 condMapEmpty!39925) mapIsEmpty!39925))

(assert (= (and b!1066561 (not condMapEmpty!39925)) mapNonEmpty!39925))

(get-info :version)

(assert (= (and mapNonEmpty!39925 ((_ is ValueCellFull!12042) mapValue!39925)) b!1066563))

(assert (= (and b!1066561 ((_ is ValueCellFull!12042) mapDefault!39925)) b!1066559))

(assert (= start!94354 b!1066561))

(declare-fun m!985399 () Bool)

(assert (=> start!94354 m!985399))

(declare-fun m!985401 () Bool)

(assert (=> start!94354 m!985401))

(declare-fun m!985403 () Bool)

(assert (=> start!94354 m!985403))

(declare-fun m!985405 () Bool)

(assert (=> mapNonEmpty!39925 m!985405))

(declare-fun m!985407 () Bool)

(assert (=> b!1066562 m!985407))

(declare-fun m!985409 () Bool)

(assert (=> b!1066565 m!985409))

(declare-fun m!985411 () Bool)

(assert (=> b!1066560 m!985411))

(declare-fun m!985413 () Bool)

(assert (=> b!1066560 m!985413))

(declare-fun m!985415 () Bool)

(assert (=> b!1066560 m!985415))

(declare-fun m!985417 () Bool)

(assert (=> b!1066560 m!985417))

(declare-fun m!985419 () Bool)

(assert (=> b!1066560 m!985419))

(declare-fun m!985421 () Bool)

(assert (=> b!1066560 m!985421))

(declare-fun m!985423 () Bool)

(assert (=> b!1066566 m!985423))

(declare-fun m!985425 () Bool)

(assert (=> b!1066566 m!985425))

(declare-fun m!985427 () Bool)

(assert (=> b!1066566 m!985427))

(check-sat (not start!94354) (not b!1066566) b_and!34471 (not b!1066562) (not b!1066560) tp_is_empty!25491 (not b!1066565) (not b_next!21681) (not mapNonEmpty!39925))
(check-sat b_and!34471 (not b_next!21681))

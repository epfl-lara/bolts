; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94348 () Bool)

(assert start!94348)

(declare-fun b_free!21675 () Bool)

(declare-fun b_next!21675 () Bool)

(assert (=> start!94348 (= b_free!21675 (not b_next!21675))))

(declare-fun tp!76467 () Bool)

(declare-fun b_and!34465 () Bool)

(assert (=> start!94348 (= tp!76467 b_and!34465)))

(declare-fun b!1066487 () Bool)

(declare-fun e!608204 () Bool)

(declare-fun tp_is_empty!25485 () Bool)

(assert (=> b!1066487 (= e!608204 tp_is_empty!25485)))

(declare-fun res!711900 () Bool)

(declare-fun e!608208 () Bool)

(assert (=> start!94348 (=> (not res!711900) (not e!608208))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94348 (= res!711900 (validMask!0 mask!1515))))

(assert (=> start!94348 e!608208))

(assert (=> start!94348 true))

(assert (=> start!94348 tp_is_empty!25485))

(declare-datatypes ((V!39115 0))(
  ( (V!39116 (val!12793 Int)) )
))
(declare-datatypes ((ValueCell!12039 0))(
  ( (ValueCellFull!12039 (v!15407 V!39115)) (EmptyCell!12039) )
))
(declare-datatypes ((array!67928 0))(
  ( (array!67929 (arr!32662 (Array (_ BitVec 32) ValueCell!12039)) (size!33199 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67928)

(declare-fun e!608203 () Bool)

(declare-fun array_inv!25126 (array!67928) Bool)

(assert (=> start!94348 (and (array_inv!25126 _values!955) e!608203)))

(assert (=> start!94348 tp!76467))

(declare-datatypes ((array!67930 0))(
  ( (array!67931 (arr!32663 (Array (_ BitVec 32) (_ BitVec 64))) (size!33200 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67930)

(declare-fun array_inv!25127 (array!67930) Bool)

(assert (=> start!94348 (array_inv!25127 _keys!1163)))

(declare-fun mapIsEmpty!39916 () Bool)

(declare-fun mapRes!39916 () Bool)

(assert (=> mapIsEmpty!39916 mapRes!39916))

(declare-fun b!1066488 () Bool)

(declare-fun e!608207 () Bool)

(assert (=> b!1066488 (= e!608208 (not e!608207))))

(declare-fun res!711896 () Bool)

(assert (=> b!1066488 (=> res!711896 e!608207)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066488 (= res!711896 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16314 0))(
  ( (tuple2!16315 (_1!8167 (_ BitVec 64)) (_2!8167 V!39115)) )
))
(declare-datatypes ((List!22906 0))(
  ( (Nil!22903) (Cons!22902 (h!24111 tuple2!16314) (t!32234 List!22906)) )
))
(declare-datatypes ((ListLongMap!14295 0))(
  ( (ListLongMap!14296 (toList!7163 List!22906)) )
))
(declare-fun lt!470877 () ListLongMap!14295)

(declare-fun lt!470879 () ListLongMap!14295)

(assert (=> b!1066488 (= lt!470877 lt!470879)))

(declare-fun zeroValueBefore!47 () V!39115)

(declare-fun minValue!907 () V!39115)

(declare-datatypes ((Unit!34990 0))(
  ( (Unit!34991) )
))
(declare-fun lt!470878 () Unit!34990)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39115)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!749 (array!67930 array!67928 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39115 V!39115 V!39115 V!39115 (_ BitVec 32) Int) Unit!34990)

(assert (=> b!1066488 (= lt!470878 (lemmaNoChangeToArrayThenSameMapNoExtras!749 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3710 (array!67930 array!67928 (_ BitVec 32) (_ BitVec 32) V!39115 V!39115 (_ BitVec 32) Int) ListLongMap!14295)

(assert (=> b!1066488 (= lt!470879 (getCurrentListMapNoExtraKeys!3710 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066488 (= lt!470877 (getCurrentListMapNoExtraKeys!3710 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066489 () Bool)

(declare-fun res!711899 () Bool)

(assert (=> b!1066489 (=> (not res!711899) (not e!608208))))

(assert (=> b!1066489 (= res!711899 (and (= (size!33199 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33200 _keys!1163) (size!33199 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066490 () Bool)

(declare-fun e!608205 () Bool)

(assert (=> b!1066490 (= e!608205 tp_is_empty!25485)))

(declare-fun b!1066491 () Bool)

(declare-fun res!711897 () Bool)

(assert (=> b!1066491 (=> (not res!711897) (not e!608208))))

(declare-datatypes ((List!22907 0))(
  ( (Nil!22904) (Cons!22903 (h!24112 (_ BitVec 64)) (t!32235 List!22907)) )
))
(declare-fun arrayNoDuplicates!0 (array!67930 (_ BitVec 32) List!22907) Bool)

(assert (=> b!1066491 (= res!711897 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22904))))

(declare-fun b!1066492 () Bool)

(assert (=> b!1066492 (= e!608203 (and e!608205 mapRes!39916))))

(declare-fun condMapEmpty!39916 () Bool)

(declare-fun mapDefault!39916 () ValueCell!12039)

(assert (=> b!1066492 (= condMapEmpty!39916 (= (arr!32662 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12039)) mapDefault!39916)))))

(declare-fun b!1066493 () Bool)

(assert (=> b!1066493 (= e!608207 true)))

(declare-fun lt!470881 () ListLongMap!14295)

(declare-fun lt!470882 () ListLongMap!14295)

(declare-fun -!621 (ListLongMap!14295 (_ BitVec 64)) ListLongMap!14295)

(assert (=> b!1066493 (= lt!470881 (-!621 lt!470882 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470880 () ListLongMap!14295)

(assert (=> b!1066493 (= (-!621 lt!470880 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470877)))

(declare-fun lt!470884 () Unit!34990)

(declare-fun addThenRemoveForNewKeyIsSame!30 (ListLongMap!14295 (_ BitVec 64) V!39115) Unit!34990)

(assert (=> b!1066493 (= lt!470884 (addThenRemoveForNewKeyIsSame!30 lt!470877 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470883 () ListLongMap!14295)

(assert (=> b!1066493 (and (= lt!470882 lt!470880) (= lt!470883 lt!470879))))

(declare-fun +!3112 (ListLongMap!14295 tuple2!16314) ListLongMap!14295)

(assert (=> b!1066493 (= lt!470880 (+!3112 lt!470877 (tuple2!16315 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4075 (array!67930 array!67928 (_ BitVec 32) (_ BitVec 32) V!39115 V!39115 (_ BitVec 32) Int) ListLongMap!14295)

(assert (=> b!1066493 (= lt!470883 (getCurrentListMap!4075 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066493 (= lt!470882 (getCurrentListMap!4075 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066494 () Bool)

(declare-fun res!711898 () Bool)

(assert (=> b!1066494 (=> (not res!711898) (not e!608208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67930 (_ BitVec 32)) Bool)

(assert (=> b!1066494 (= res!711898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39916 () Bool)

(declare-fun tp!76466 () Bool)

(assert (=> mapNonEmpty!39916 (= mapRes!39916 (and tp!76466 e!608204))))

(declare-fun mapValue!39916 () ValueCell!12039)

(declare-fun mapRest!39916 () (Array (_ BitVec 32) ValueCell!12039))

(declare-fun mapKey!39916 () (_ BitVec 32))

(assert (=> mapNonEmpty!39916 (= (arr!32662 _values!955) (store mapRest!39916 mapKey!39916 mapValue!39916))))

(assert (= (and start!94348 res!711900) b!1066489))

(assert (= (and b!1066489 res!711899) b!1066494))

(assert (= (and b!1066494 res!711898) b!1066491))

(assert (= (and b!1066491 res!711897) b!1066488))

(assert (= (and b!1066488 (not res!711896)) b!1066493))

(assert (= (and b!1066492 condMapEmpty!39916) mapIsEmpty!39916))

(assert (= (and b!1066492 (not condMapEmpty!39916)) mapNonEmpty!39916))

(get-info :version)

(assert (= (and mapNonEmpty!39916 ((_ is ValueCellFull!12039) mapValue!39916)) b!1066487))

(assert (= (and b!1066492 ((_ is ValueCellFull!12039) mapDefault!39916)) b!1066490))

(assert (= start!94348 b!1066492))

(declare-fun m!985309 () Bool)

(assert (=> b!1066491 m!985309))

(declare-fun m!985311 () Bool)

(assert (=> b!1066488 m!985311))

(declare-fun m!985313 () Bool)

(assert (=> b!1066488 m!985313))

(declare-fun m!985315 () Bool)

(assert (=> b!1066488 m!985315))

(declare-fun m!985317 () Bool)

(assert (=> b!1066493 m!985317))

(declare-fun m!985319 () Bool)

(assert (=> b!1066493 m!985319))

(declare-fun m!985321 () Bool)

(assert (=> b!1066493 m!985321))

(declare-fun m!985323 () Bool)

(assert (=> b!1066493 m!985323))

(declare-fun m!985325 () Bool)

(assert (=> b!1066493 m!985325))

(declare-fun m!985327 () Bool)

(assert (=> b!1066493 m!985327))

(declare-fun m!985329 () Bool)

(assert (=> mapNonEmpty!39916 m!985329))

(declare-fun m!985331 () Bool)

(assert (=> b!1066494 m!985331))

(declare-fun m!985333 () Bool)

(assert (=> start!94348 m!985333))

(declare-fun m!985335 () Bool)

(assert (=> start!94348 m!985335))

(declare-fun m!985337 () Bool)

(assert (=> start!94348 m!985337))

(check-sat (not mapNonEmpty!39916) (not b!1066488) (not b!1066494) (not b_next!21675) tp_is_empty!25485 (not start!94348) b_and!34465 (not b!1066491) (not b!1066493))
(check-sat b_and!34465 (not b_next!21675))

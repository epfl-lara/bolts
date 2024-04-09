; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94788 () Bool)

(assert start!94788)

(declare-fun b_free!22005 () Bool)

(declare-fun b_next!22005 () Bool)

(assert (=> start!94788 (= b_free!22005 (not b_next!22005))))

(declare-fun tp!77474 () Bool)

(declare-fun b_and!34853 () Bool)

(assert (=> start!94788 (= tp!77474 b_and!34853)))

(declare-fun b!1071322 () Bool)

(declare-fun res!714757 () Bool)

(declare-fun e!611756 () Bool)

(assert (=> b!1071322 (=> (not res!714757) (not e!611756))))

(declare-datatypes ((array!68562 0))(
  ( (array!68563 (arr!32973 (Array (_ BitVec 32) (_ BitVec 64))) (size!33510 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68562)

(declare-datatypes ((List!23135 0))(
  ( (Nil!23132) (Cons!23131 (h!24340 (_ BitVec 64)) (t!32475 List!23135)) )
))
(declare-fun arrayNoDuplicates!0 (array!68562 (_ BitVec 32) List!23135) Bool)

(assert (=> b!1071322 (= res!714757 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23132))))

(declare-fun b!1071323 () Bool)

(declare-fun e!611757 () Bool)

(declare-fun e!611758 () Bool)

(declare-fun mapRes!40429 () Bool)

(assert (=> b!1071323 (= e!611757 (and e!611758 mapRes!40429))))

(declare-fun condMapEmpty!40429 () Bool)

(declare-datatypes ((V!39555 0))(
  ( (V!39556 (val!12958 Int)) )
))
(declare-datatypes ((ValueCell!12204 0))(
  ( (ValueCellFull!12204 (v!15575 V!39555)) (EmptyCell!12204) )
))
(declare-datatypes ((array!68564 0))(
  ( (array!68565 (arr!32974 (Array (_ BitVec 32) ValueCell!12204)) (size!33511 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68564)

(declare-fun mapDefault!40429 () ValueCell!12204)

(assert (=> b!1071323 (= condMapEmpty!40429 (= (arr!32974 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12204)) mapDefault!40429)))))

(declare-fun b!1071324 () Bool)

(declare-fun e!611759 () Bool)

(declare-fun tp_is_empty!25815 () Bool)

(assert (=> b!1071324 (= e!611759 tp_is_empty!25815)))

(declare-fun b!1071325 () Bool)

(declare-fun e!611760 () Bool)

(assert (=> b!1071325 (= e!611760 true)))

(declare-datatypes ((tuple2!16552 0))(
  ( (tuple2!16553 (_1!8286 (_ BitVec 64)) (_2!8286 V!39555)) )
))
(declare-datatypes ((List!23136 0))(
  ( (Nil!23133) (Cons!23132 (h!24341 tuple2!16552) (t!32476 List!23136)) )
))
(declare-datatypes ((ListLongMap!14533 0))(
  ( (ListLongMap!14534 (toList!7282 List!23136)) )
))
(declare-fun lt!473959 () ListLongMap!14533)

(declare-fun lt!473958 () ListLongMap!14533)

(declare-fun -!675 (ListLongMap!14533 (_ BitVec 64)) ListLongMap!14533)

(assert (=> b!1071325 (= lt!473959 (-!675 lt!473958 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473969 () ListLongMap!14533)

(declare-fun lt!473960 () ListLongMap!14533)

(assert (=> b!1071325 (= lt!473969 lt!473960)))

(declare-fun zeroValueBefore!47 () V!39555)

(declare-datatypes ((Unit!35227 0))(
  ( (Unit!35228) )
))
(declare-fun lt!473970 () Unit!35227)

(declare-fun lt!473962 () ListLongMap!14533)

(declare-fun minValue!907 () V!39555)

(declare-fun addCommutativeForDiffKeys!719 (ListLongMap!14533 (_ BitVec 64) V!39555 (_ BitVec 64) V!39555) Unit!35227)

(assert (=> b!1071325 (= lt!473970 (addCommutativeForDiffKeys!719 lt!473962 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473961 () ListLongMap!14533)

(assert (=> b!1071325 (= (-!675 lt!473960 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473961)))

(declare-fun lt!473968 () tuple2!16552)

(declare-fun +!3138 (ListLongMap!14533 tuple2!16552) ListLongMap!14533)

(assert (=> b!1071325 (= lt!473960 (+!3138 lt!473961 lt!473968))))

(declare-fun lt!473967 () Unit!35227)

(declare-fun addThenRemoveForNewKeyIsSame!49 (ListLongMap!14533 (_ BitVec 64) V!39555) Unit!35227)

(assert (=> b!1071325 (= lt!473967 (addThenRemoveForNewKeyIsSame!49 lt!473961 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!473966 () tuple2!16552)

(assert (=> b!1071325 (= lt!473961 (+!3138 lt!473962 lt!473966))))

(declare-fun e!611755 () Bool)

(assert (=> b!1071325 e!611755))

(declare-fun res!714759 () Bool)

(assert (=> b!1071325 (=> (not res!714759) (not e!611755))))

(assert (=> b!1071325 (= res!714759 (= lt!473958 lt!473969))))

(assert (=> b!1071325 (= lt!473969 (+!3138 (+!3138 lt!473962 lt!473968) lt!473966))))

(assert (=> b!1071325 (= lt!473966 (tuple2!16553 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071325 (= lt!473968 (tuple2!16553 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun lt!473965 () ListLongMap!14533)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39555)

(declare-fun getCurrentListMap!4147 (array!68562 array!68564 (_ BitVec 32) (_ BitVec 32) V!39555 V!39555 (_ BitVec 32) Int) ListLongMap!14533)

(assert (=> b!1071325 (= lt!473965 (getCurrentListMap!4147 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071325 (= lt!473958 (getCurrentListMap!4147 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071326 () Bool)

(declare-fun lt!473964 () ListLongMap!14533)

(assert (=> b!1071326 (= e!611755 (= lt!473965 (+!3138 lt!473964 lt!473966)))))

(declare-fun b!1071327 () Bool)

(assert (=> b!1071327 (= e!611756 (not e!611760))))

(declare-fun res!714758 () Bool)

(assert (=> b!1071327 (=> res!714758 e!611760)))

(assert (=> b!1071327 (= res!714758 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1071327 (= lt!473962 lt!473964)))

(declare-fun lt!473963 () Unit!35227)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!856 (array!68562 array!68564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39555 V!39555 V!39555 V!39555 (_ BitVec 32) Int) Unit!35227)

(assert (=> b!1071327 (= lt!473963 (lemmaNoChangeToArrayThenSameMapNoExtras!856 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3817 (array!68562 array!68564 (_ BitVec 32) (_ BitVec 32) V!39555 V!39555 (_ BitVec 32) Int) ListLongMap!14533)

(assert (=> b!1071327 (= lt!473964 (getCurrentListMapNoExtraKeys!3817 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071327 (= lt!473962 (getCurrentListMapNoExtraKeys!3817 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071328 () Bool)

(declare-fun res!714755 () Bool)

(assert (=> b!1071328 (=> (not res!714755) (not e!611756))))

(assert (=> b!1071328 (= res!714755 (and (= (size!33511 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33510 _keys!1163) (size!33511 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40429 () Bool)

(assert (=> mapIsEmpty!40429 mapRes!40429))

(declare-fun mapNonEmpty!40429 () Bool)

(declare-fun tp!77475 () Bool)

(assert (=> mapNonEmpty!40429 (= mapRes!40429 (and tp!77475 e!611759))))

(declare-fun mapRest!40429 () (Array (_ BitVec 32) ValueCell!12204))

(declare-fun mapKey!40429 () (_ BitVec 32))

(declare-fun mapValue!40429 () ValueCell!12204)

(assert (=> mapNonEmpty!40429 (= (arr!32974 _values!955) (store mapRest!40429 mapKey!40429 mapValue!40429))))

(declare-fun b!1071329 () Bool)

(declare-fun res!714754 () Bool)

(assert (=> b!1071329 (=> (not res!714754) (not e!611756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68562 (_ BitVec 32)) Bool)

(assert (=> b!1071329 (= res!714754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!714756 () Bool)

(assert (=> start!94788 (=> (not res!714756) (not e!611756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94788 (= res!714756 (validMask!0 mask!1515))))

(assert (=> start!94788 e!611756))

(assert (=> start!94788 true))

(assert (=> start!94788 tp_is_empty!25815))

(declare-fun array_inv!25350 (array!68564) Bool)

(assert (=> start!94788 (and (array_inv!25350 _values!955) e!611757)))

(assert (=> start!94788 tp!77474))

(declare-fun array_inv!25351 (array!68562) Bool)

(assert (=> start!94788 (array_inv!25351 _keys!1163)))

(declare-fun b!1071330 () Bool)

(assert (=> b!1071330 (= e!611758 tp_is_empty!25815)))

(assert (= (and start!94788 res!714756) b!1071328))

(assert (= (and b!1071328 res!714755) b!1071329))

(assert (= (and b!1071329 res!714754) b!1071322))

(assert (= (and b!1071322 res!714757) b!1071327))

(assert (= (and b!1071327 (not res!714758)) b!1071325))

(assert (= (and b!1071325 res!714759) b!1071326))

(assert (= (and b!1071323 condMapEmpty!40429) mapIsEmpty!40429))

(assert (= (and b!1071323 (not condMapEmpty!40429)) mapNonEmpty!40429))

(get-info :version)

(assert (= (and mapNonEmpty!40429 ((_ is ValueCellFull!12204) mapValue!40429)) b!1071324))

(assert (= (and b!1071323 ((_ is ValueCellFull!12204) mapDefault!40429)) b!1071330))

(assert (= start!94788 b!1071323))

(declare-fun m!989935 () Bool)

(assert (=> b!1071325 m!989935))

(declare-fun m!989937 () Bool)

(assert (=> b!1071325 m!989937))

(declare-fun m!989939 () Bool)

(assert (=> b!1071325 m!989939))

(declare-fun m!989941 () Bool)

(assert (=> b!1071325 m!989941))

(declare-fun m!989943 () Bool)

(assert (=> b!1071325 m!989943))

(declare-fun m!989945 () Bool)

(assert (=> b!1071325 m!989945))

(declare-fun m!989947 () Bool)

(assert (=> b!1071325 m!989947))

(declare-fun m!989949 () Bool)

(assert (=> b!1071325 m!989949))

(declare-fun m!989951 () Bool)

(assert (=> b!1071325 m!989951))

(assert (=> b!1071325 m!989943))

(declare-fun m!989953 () Bool)

(assert (=> b!1071325 m!989953))

(declare-fun m!989955 () Bool)

(assert (=> b!1071329 m!989955))

(declare-fun m!989957 () Bool)

(assert (=> start!94788 m!989957))

(declare-fun m!989959 () Bool)

(assert (=> start!94788 m!989959))

(declare-fun m!989961 () Bool)

(assert (=> start!94788 m!989961))

(declare-fun m!989963 () Bool)

(assert (=> mapNonEmpty!40429 m!989963))

(declare-fun m!989965 () Bool)

(assert (=> b!1071327 m!989965))

(declare-fun m!989967 () Bool)

(assert (=> b!1071327 m!989967))

(declare-fun m!989969 () Bool)

(assert (=> b!1071327 m!989969))

(declare-fun m!989971 () Bool)

(assert (=> b!1071322 m!989971))

(declare-fun m!989973 () Bool)

(assert (=> b!1071326 m!989973))

(check-sat (not b!1071326) (not mapNonEmpty!40429) (not b!1071325) (not b!1071329) (not b!1071327) (not start!94788) tp_is_empty!25815 b_and!34853 (not b_next!22005) (not b!1071322))
(check-sat b_and!34853 (not b_next!22005))

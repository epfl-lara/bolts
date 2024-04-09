; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94764 () Bool)

(assert start!94764)

(declare-fun b_free!21981 () Bool)

(declare-fun b_next!21981 () Bool)

(assert (=> start!94764 (= b_free!21981 (not b_next!21981))))

(declare-fun tp!77402 () Bool)

(declare-fun b_and!34829 () Bool)

(assert (=> start!94764 (= tp!77402 b_and!34829)))

(declare-fun b!1070998 () Bool)

(declare-fun res!714541 () Bool)

(declare-fun e!611508 () Bool)

(assert (=> b!1070998 (=> (not res!714541) (not e!611508))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39523 0))(
  ( (V!39524 (val!12946 Int)) )
))
(declare-datatypes ((ValueCell!12192 0))(
  ( (ValueCellFull!12192 (v!15563 V!39523)) (EmptyCell!12192) )
))
(declare-datatypes ((array!68516 0))(
  ( (array!68517 (arr!32950 (Array (_ BitVec 32) ValueCell!12192)) (size!33487 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68516)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68518 0))(
  ( (array!68519 (arr!32951 (Array (_ BitVec 32) (_ BitVec 64))) (size!33488 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68518)

(assert (=> b!1070998 (= res!714541 (and (= (size!33487 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33488 _keys!1163) (size!33487 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40393 () Bool)

(declare-fun mapRes!40393 () Bool)

(assert (=> mapIsEmpty!40393 mapRes!40393))

(declare-fun mapNonEmpty!40393 () Bool)

(declare-fun tp!77403 () Bool)

(declare-fun e!611505 () Bool)

(assert (=> mapNonEmpty!40393 (= mapRes!40393 (and tp!77403 e!611505))))

(declare-fun mapKey!40393 () (_ BitVec 32))

(declare-fun mapRest!40393 () (Array (_ BitVec 32) ValueCell!12192))

(declare-fun mapValue!40393 () ValueCell!12192)

(assert (=> mapNonEmpty!40393 (= (arr!32950 _values!955) (store mapRest!40393 mapKey!40393 mapValue!40393))))

(declare-fun b!1070999 () Bool)

(declare-fun e!611504 () Bool)

(assert (=> b!1070999 (= e!611504 true)))

(declare-datatypes ((tuple2!16534 0))(
  ( (tuple2!16535 (_1!8277 (_ BitVec 64)) (_2!8277 V!39523)) )
))
(declare-datatypes ((List!23118 0))(
  ( (Nil!23115) (Cons!23114 (h!24323 tuple2!16534) (t!32458 List!23118)) )
))
(declare-datatypes ((ListLongMap!14515 0))(
  ( (ListLongMap!14516 (toList!7273 List!23118)) )
))
(declare-fun lt!473493 () ListLongMap!14515)

(declare-fun lt!473496 () ListLongMap!14515)

(declare-fun -!667 (ListLongMap!14515 (_ BitVec 64)) ListLongMap!14515)

(assert (=> b!1070999 (= lt!473493 (-!667 lt!473496 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473497 () ListLongMap!14515)

(declare-fun lt!473500 () ListLongMap!14515)

(assert (=> b!1070999 (= lt!473497 lt!473500)))

(declare-fun zeroValueBefore!47 () V!39523)

(declare-fun lt!473491 () ListLongMap!14515)

(declare-datatypes ((Unit!35209 0))(
  ( (Unit!35210) )
))
(declare-fun lt!473501 () Unit!35209)

(declare-fun minValue!907 () V!39523)

(declare-fun addCommutativeForDiffKeys!711 (ListLongMap!14515 (_ BitVec 64) V!39523 (_ BitVec 64) V!39523) Unit!35209)

(assert (=> b!1070999 (= lt!473501 (addCommutativeForDiffKeys!711 lt!473491 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473499 () ListLongMap!14515)

(assert (=> b!1070999 (= (-!667 lt!473500 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473499)))

(declare-fun lt!473498 () tuple2!16534)

(declare-fun +!3130 (ListLongMap!14515 tuple2!16534) ListLongMap!14515)

(assert (=> b!1070999 (= lt!473500 (+!3130 lt!473499 lt!473498))))

(declare-fun lt!473492 () Unit!35209)

(declare-fun addThenRemoveForNewKeyIsSame!41 (ListLongMap!14515 (_ BitVec 64) V!39523) Unit!35209)

(assert (=> b!1070999 (= lt!473492 (addThenRemoveForNewKeyIsSame!41 lt!473499 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!473490 () tuple2!16534)

(assert (=> b!1070999 (= lt!473499 (+!3130 lt!473491 lt!473490))))

(declare-fun e!611503 () Bool)

(assert (=> b!1070999 e!611503))

(declare-fun res!714542 () Bool)

(assert (=> b!1070999 (=> (not res!714542) (not e!611503))))

(assert (=> b!1070999 (= res!714542 (= lt!473496 lt!473497))))

(assert (=> b!1070999 (= lt!473497 (+!3130 (+!3130 lt!473491 lt!473498) lt!473490))))

(assert (=> b!1070999 (= lt!473490 (tuple2!16535 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1070999 (= lt!473498 (tuple2!16535 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!473502 () ListLongMap!14515)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39523)

(declare-fun getCurrentListMap!4139 (array!68518 array!68516 (_ BitVec 32) (_ BitVec 32) V!39523 V!39523 (_ BitVec 32) Int) ListLongMap!14515)

(assert (=> b!1070999 (= lt!473502 (getCurrentListMap!4139 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070999 (= lt!473496 (getCurrentListMap!4139 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071000 () Bool)

(declare-fun tp_is_empty!25791 () Bool)

(assert (=> b!1071000 (= e!611505 tp_is_empty!25791)))

(declare-fun b!1071001 () Bool)

(declare-fun res!714543 () Bool)

(assert (=> b!1071001 (=> (not res!714543) (not e!611508))))

(declare-datatypes ((List!23119 0))(
  ( (Nil!23116) (Cons!23115 (h!24324 (_ BitVec 64)) (t!32459 List!23119)) )
))
(declare-fun arrayNoDuplicates!0 (array!68518 (_ BitVec 32) List!23119) Bool)

(assert (=> b!1071001 (= res!714543 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23116))))

(declare-fun b!1071002 () Bool)

(declare-fun res!714539 () Bool)

(assert (=> b!1071002 (=> (not res!714539) (not e!611508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68518 (_ BitVec 32)) Bool)

(assert (=> b!1071002 (= res!714539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071003 () Bool)

(assert (=> b!1071003 (= e!611508 (not e!611504))))

(declare-fun res!714540 () Bool)

(assert (=> b!1071003 (=> res!714540 e!611504)))

(assert (=> b!1071003 (= res!714540 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473494 () ListLongMap!14515)

(assert (=> b!1071003 (= lt!473491 lt!473494)))

(declare-fun lt!473495 () Unit!35209)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!847 (array!68518 array!68516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39523 V!39523 V!39523 V!39523 (_ BitVec 32) Int) Unit!35209)

(assert (=> b!1071003 (= lt!473495 (lemmaNoChangeToArrayThenSameMapNoExtras!847 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3808 (array!68518 array!68516 (_ BitVec 32) (_ BitVec 32) V!39523 V!39523 (_ BitVec 32) Int) ListLongMap!14515)

(assert (=> b!1071003 (= lt!473494 (getCurrentListMapNoExtraKeys!3808 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071003 (= lt!473491 (getCurrentListMapNoExtraKeys!3808 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!714538 () Bool)

(assert (=> start!94764 (=> (not res!714538) (not e!611508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94764 (= res!714538 (validMask!0 mask!1515))))

(assert (=> start!94764 e!611508))

(assert (=> start!94764 true))

(assert (=> start!94764 tp_is_empty!25791))

(declare-fun e!611507 () Bool)

(declare-fun array_inv!25330 (array!68516) Bool)

(assert (=> start!94764 (and (array_inv!25330 _values!955) e!611507)))

(assert (=> start!94764 tp!77402))

(declare-fun array_inv!25331 (array!68518) Bool)

(assert (=> start!94764 (array_inv!25331 _keys!1163)))

(declare-fun b!1071004 () Bool)

(declare-fun e!611506 () Bool)

(assert (=> b!1071004 (= e!611507 (and e!611506 mapRes!40393))))

(declare-fun condMapEmpty!40393 () Bool)

(declare-fun mapDefault!40393 () ValueCell!12192)

(assert (=> b!1071004 (= condMapEmpty!40393 (= (arr!32950 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12192)) mapDefault!40393)))))

(declare-fun b!1071005 () Bool)

(assert (=> b!1071005 (= e!611503 (= lt!473502 (+!3130 lt!473494 lt!473490)))))

(declare-fun b!1071006 () Bool)

(assert (=> b!1071006 (= e!611506 tp_is_empty!25791)))

(assert (= (and start!94764 res!714538) b!1070998))

(assert (= (and b!1070998 res!714541) b!1071002))

(assert (= (and b!1071002 res!714539) b!1071001))

(assert (= (and b!1071001 res!714543) b!1071003))

(assert (= (and b!1071003 (not res!714540)) b!1070999))

(assert (= (and b!1070999 res!714542) b!1071005))

(assert (= (and b!1071004 condMapEmpty!40393) mapIsEmpty!40393))

(assert (= (and b!1071004 (not condMapEmpty!40393)) mapNonEmpty!40393))

(get-info :version)

(assert (= (and mapNonEmpty!40393 ((_ is ValueCellFull!12192) mapValue!40393)) b!1071000))

(assert (= (and b!1071004 ((_ is ValueCellFull!12192) mapDefault!40393)) b!1071006))

(assert (= start!94764 b!1071004))

(declare-fun m!989455 () Bool)

(assert (=> start!94764 m!989455))

(declare-fun m!989457 () Bool)

(assert (=> start!94764 m!989457))

(declare-fun m!989459 () Bool)

(assert (=> start!94764 m!989459))

(declare-fun m!989461 () Bool)

(assert (=> b!1071005 m!989461))

(declare-fun m!989463 () Bool)

(assert (=> b!1071003 m!989463))

(declare-fun m!989465 () Bool)

(assert (=> b!1071003 m!989465))

(declare-fun m!989467 () Bool)

(assert (=> b!1071003 m!989467))

(declare-fun m!989469 () Bool)

(assert (=> b!1071002 m!989469))

(declare-fun m!989471 () Bool)

(assert (=> mapNonEmpty!40393 m!989471))

(declare-fun m!989473 () Bool)

(assert (=> b!1071001 m!989473))

(declare-fun m!989475 () Bool)

(assert (=> b!1070999 m!989475))

(declare-fun m!989477 () Bool)

(assert (=> b!1070999 m!989477))

(declare-fun m!989479 () Bool)

(assert (=> b!1070999 m!989479))

(declare-fun m!989481 () Bool)

(assert (=> b!1070999 m!989481))

(declare-fun m!989483 () Bool)

(assert (=> b!1070999 m!989483))

(declare-fun m!989485 () Bool)

(assert (=> b!1070999 m!989485))

(assert (=> b!1070999 m!989481))

(declare-fun m!989487 () Bool)

(assert (=> b!1070999 m!989487))

(declare-fun m!989489 () Bool)

(assert (=> b!1070999 m!989489))

(declare-fun m!989491 () Bool)

(assert (=> b!1070999 m!989491))

(declare-fun m!989493 () Bool)

(assert (=> b!1070999 m!989493))

(check-sat tp_is_empty!25791 (not b!1070999) (not start!94764) b_and!34829 (not b!1071002) (not b_next!21981) (not b!1071001) (not b!1071003) (not b!1071005) (not mapNonEmpty!40393))
(check-sat b_and!34829 (not b_next!21981))

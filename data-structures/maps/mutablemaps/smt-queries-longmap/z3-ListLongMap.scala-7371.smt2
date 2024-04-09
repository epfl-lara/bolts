; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93982 () Bool)

(assert start!93982)

(declare-fun b_free!21405 () Bool)

(declare-fun b_next!21405 () Bool)

(assert (=> start!93982 (= b_free!21405 (not b_next!21405))))

(declare-fun tp!75641 () Bool)

(declare-fun b_and!34145 () Bool)

(assert (=> start!93982 (= tp!75641 b_and!34145)))

(declare-fun b!1062494 () Bool)

(declare-fun res!709559 () Bool)

(declare-fun e!605283 () Bool)

(assert (=> b!1062494 (=> (not res!709559) (not e!605283))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38755 0))(
  ( (V!38756 (val!12658 Int)) )
))
(declare-datatypes ((ValueCell!11904 0))(
  ( (ValueCellFull!11904 (v!15269 V!38755)) (EmptyCell!11904) )
))
(declare-datatypes ((array!67404 0))(
  ( (array!67405 (arr!32405 (Array (_ BitVec 32) ValueCell!11904)) (size!32942 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67404)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67406 0))(
  ( (array!67407 (arr!32406 (Array (_ BitVec 32) (_ BitVec 64))) (size!32943 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67406)

(assert (=> b!1062494 (= res!709559 (and (= (size!32942 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32943 _keys!1163) (size!32942 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062495 () Bool)

(declare-fun e!605288 () Bool)

(assert (=> b!1062495 (= e!605288 true)))

(declare-datatypes ((tuple2!16102 0))(
  ( (tuple2!16103 (_1!8061 (_ BitVec 64)) (_2!8061 V!38755)) )
))
(declare-datatypes ((List!22713 0))(
  ( (Nil!22710) (Cons!22709 (h!23918 tuple2!16102) (t!32031 List!22713)) )
))
(declare-datatypes ((ListLongMap!14083 0))(
  ( (ListLongMap!14084 (toList!7057 List!22713)) )
))
(declare-fun lt!468138 () ListLongMap!14083)

(declare-fun -!571 (ListLongMap!14083 (_ BitVec 64)) ListLongMap!14083)

(assert (=> b!1062495 (= (-!571 lt!468138 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468138)))

(declare-datatypes ((Unit!34785 0))(
  ( (Unit!34786) )
))
(declare-fun lt!468136 () Unit!34785)

(declare-fun removeNotPresentStillSame!17 (ListLongMap!14083 (_ BitVec 64)) Unit!34785)

(assert (=> b!1062495 (= lt!468136 (removeNotPresentStillSame!17 lt!468138 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!709558 () Bool)

(assert (=> start!93982 (=> (not res!709558) (not e!605283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93982 (= res!709558 (validMask!0 mask!1515))))

(assert (=> start!93982 e!605283))

(assert (=> start!93982 true))

(declare-fun tp_is_empty!25215 () Bool)

(assert (=> start!93982 tp_is_empty!25215))

(declare-fun e!605285 () Bool)

(declare-fun array_inv!24940 (array!67404) Bool)

(assert (=> start!93982 (and (array_inv!24940 _values!955) e!605285)))

(assert (=> start!93982 tp!75641))

(declare-fun array_inv!24941 (array!67406) Bool)

(assert (=> start!93982 (array_inv!24941 _keys!1163)))

(declare-fun b!1062496 () Bool)

(declare-fun e!605284 () Bool)

(declare-fun mapRes!39496 () Bool)

(assert (=> b!1062496 (= e!605285 (and e!605284 mapRes!39496))))

(declare-fun condMapEmpty!39496 () Bool)

(declare-fun mapDefault!39496 () ValueCell!11904)

(assert (=> b!1062496 (= condMapEmpty!39496 (= (arr!32405 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11904)) mapDefault!39496)))))

(declare-fun b!1062497 () Bool)

(declare-fun e!605286 () Bool)

(assert (=> b!1062497 (= e!605286 e!605288)))

(declare-fun res!709557 () Bool)

(assert (=> b!1062497 (=> res!709557 e!605288)))

(declare-fun contains!6252 (ListLongMap!14083 (_ BitVec 64)) Bool)

(assert (=> b!1062497 (= res!709557 (contains!6252 lt!468138 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38755)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38755)

(declare-fun getCurrentListMap!4002 (array!67406 array!67404 (_ BitVec 32) (_ BitVec 32) V!38755 V!38755 (_ BitVec 32) Int) ListLongMap!14083)

(assert (=> b!1062497 (= lt!468138 (getCurrentListMap!4002 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062498 () Bool)

(declare-fun res!709556 () Bool)

(assert (=> b!1062498 (=> (not res!709556) (not e!605283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67406 (_ BitVec 32)) Bool)

(assert (=> b!1062498 (= res!709556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062499 () Bool)

(declare-fun res!709560 () Bool)

(assert (=> b!1062499 (=> (not res!709560) (not e!605283))))

(declare-datatypes ((List!22714 0))(
  ( (Nil!22711) (Cons!22710 (h!23919 (_ BitVec 64)) (t!32032 List!22714)) )
))
(declare-fun arrayNoDuplicates!0 (array!67406 (_ BitVec 32) List!22714) Bool)

(assert (=> b!1062499 (= res!709560 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22711))))

(declare-fun b!1062500 () Bool)

(declare-fun e!605289 () Bool)

(assert (=> b!1062500 (= e!605289 tp_is_empty!25215)))

(declare-fun b!1062501 () Bool)

(assert (=> b!1062501 (= e!605284 tp_is_empty!25215)))

(declare-fun mapIsEmpty!39496 () Bool)

(assert (=> mapIsEmpty!39496 mapRes!39496))

(declare-fun mapNonEmpty!39496 () Bool)

(declare-fun tp!75642 () Bool)

(assert (=> mapNonEmpty!39496 (= mapRes!39496 (and tp!75642 e!605289))))

(declare-fun mapKey!39496 () (_ BitVec 32))

(declare-fun mapValue!39496 () ValueCell!11904)

(declare-fun mapRest!39496 () (Array (_ BitVec 32) ValueCell!11904))

(assert (=> mapNonEmpty!39496 (= (arr!32405 _values!955) (store mapRest!39496 mapKey!39496 mapValue!39496))))

(declare-fun b!1062502 () Bool)

(assert (=> b!1062502 (= e!605283 (not e!605286))))

(declare-fun res!709561 () Bool)

(assert (=> b!1062502 (=> res!709561 e!605286)))

(assert (=> b!1062502 (= res!709561 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468135 () ListLongMap!14083)

(declare-fun lt!468134 () ListLongMap!14083)

(assert (=> b!1062502 (= lt!468135 lt!468134)))

(declare-fun lt!468137 () Unit!34785)

(declare-fun zeroValueAfter!47 () V!38755)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!657 (array!67406 array!67404 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38755 V!38755 V!38755 V!38755 (_ BitVec 32) Int) Unit!34785)

(assert (=> b!1062502 (= lt!468137 (lemmaNoChangeToArrayThenSameMapNoExtras!657 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3618 (array!67406 array!67404 (_ BitVec 32) (_ BitVec 32) V!38755 V!38755 (_ BitVec 32) Int) ListLongMap!14083)

(assert (=> b!1062502 (= lt!468134 (getCurrentListMapNoExtraKeys!3618 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062502 (= lt!468135 (getCurrentListMapNoExtraKeys!3618 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!93982 res!709558) b!1062494))

(assert (= (and b!1062494 res!709559) b!1062498))

(assert (= (and b!1062498 res!709556) b!1062499))

(assert (= (and b!1062499 res!709560) b!1062502))

(assert (= (and b!1062502 (not res!709561)) b!1062497))

(assert (= (and b!1062497 (not res!709557)) b!1062495))

(assert (= (and b!1062496 condMapEmpty!39496) mapIsEmpty!39496))

(assert (= (and b!1062496 (not condMapEmpty!39496)) mapNonEmpty!39496))

(get-info :version)

(assert (= (and mapNonEmpty!39496 ((_ is ValueCellFull!11904) mapValue!39496)) b!1062500))

(assert (= (and b!1062496 ((_ is ValueCellFull!11904) mapDefault!39496)) b!1062501))

(assert (= start!93982 b!1062496))

(declare-fun m!981379 () Bool)

(assert (=> b!1062499 m!981379))

(declare-fun m!981381 () Bool)

(assert (=> b!1062495 m!981381))

(declare-fun m!981383 () Bool)

(assert (=> b!1062495 m!981383))

(declare-fun m!981385 () Bool)

(assert (=> b!1062497 m!981385))

(declare-fun m!981387 () Bool)

(assert (=> b!1062497 m!981387))

(declare-fun m!981389 () Bool)

(assert (=> start!93982 m!981389))

(declare-fun m!981391 () Bool)

(assert (=> start!93982 m!981391))

(declare-fun m!981393 () Bool)

(assert (=> start!93982 m!981393))

(declare-fun m!981395 () Bool)

(assert (=> b!1062498 m!981395))

(declare-fun m!981397 () Bool)

(assert (=> b!1062502 m!981397))

(declare-fun m!981399 () Bool)

(assert (=> b!1062502 m!981399))

(declare-fun m!981401 () Bool)

(assert (=> b!1062502 m!981401))

(declare-fun m!981403 () Bool)

(assert (=> mapNonEmpty!39496 m!981403))

(check-sat (not mapNonEmpty!39496) (not b_next!21405) b_and!34145 (not b!1062502) (not b!1062498) (not b!1062499) tp_is_empty!25215 (not start!93982) (not b!1062497) (not b!1062495))
(check-sat b_and!34145 (not b_next!21405))

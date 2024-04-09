; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94122 () Bool)

(assert start!94122)

(declare-fun b_free!21501 () Bool)

(declare-fun b_next!21501 () Bool)

(assert (=> start!94122 (= b_free!21501 (not b_next!21501))))

(declare-fun tp!75935 () Bool)

(declare-fun b_and!34261 () Bool)

(assert (=> start!94122 (= tp!75935 b_and!34261)))

(declare-fun b!1064004 () Bool)

(declare-fun e!606392 () Bool)

(declare-fun tp_is_empty!25311 () Bool)

(assert (=> b!1064004 (= e!606392 tp_is_empty!25311)))

(declare-fun b!1064005 () Bool)

(declare-fun res!710442 () Bool)

(declare-fun e!606391 () Bool)

(assert (=> b!1064005 (=> (not res!710442) (not e!606391))))

(declare-datatypes ((array!67590 0))(
  ( (array!67591 (arr!32496 (Array (_ BitVec 32) (_ BitVec 64))) (size!33033 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67590)

(declare-datatypes ((List!22778 0))(
  ( (Nil!22775) (Cons!22774 (h!23983 (_ BitVec 64)) (t!32100 List!22778)) )
))
(declare-fun arrayNoDuplicates!0 (array!67590 (_ BitVec 32) List!22778) Bool)

(assert (=> b!1064005 (= res!710442 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22775))))

(declare-fun b!1064006 () Bool)

(declare-fun e!606395 () Bool)

(declare-fun e!606393 () Bool)

(declare-fun mapRes!39646 () Bool)

(assert (=> b!1064006 (= e!606395 (and e!606393 mapRes!39646))))

(declare-fun condMapEmpty!39646 () Bool)

(declare-datatypes ((V!38883 0))(
  ( (V!38884 (val!12706 Int)) )
))
(declare-datatypes ((ValueCell!11952 0))(
  ( (ValueCellFull!11952 (v!15319 V!38883)) (EmptyCell!11952) )
))
(declare-datatypes ((array!67592 0))(
  ( (array!67593 (arr!32497 (Array (_ BitVec 32) ValueCell!11952)) (size!33034 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67592)

(declare-fun mapDefault!39646 () ValueCell!11952)

(assert (=> b!1064006 (= condMapEmpty!39646 (= (arr!32497 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11952)) mapDefault!39646)))))

(declare-fun res!710443 () Bool)

(assert (=> start!94122 (=> (not res!710443) (not e!606391))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94122 (= res!710443 (validMask!0 mask!1515))))

(assert (=> start!94122 e!606391))

(assert (=> start!94122 true))

(assert (=> start!94122 tp_is_empty!25311))

(declare-fun array_inv!25000 (array!67592) Bool)

(assert (=> start!94122 (and (array_inv!25000 _values!955) e!606395)))

(assert (=> start!94122 tp!75935))

(declare-fun array_inv!25001 (array!67590) Bool)

(assert (=> start!94122 (array_inv!25001 _keys!1163)))

(declare-fun b!1064007 () Bool)

(assert (=> b!1064007 (= e!606393 tp_is_empty!25311)))

(declare-fun b!1064008 () Bool)

(declare-fun res!710445 () Bool)

(assert (=> b!1064008 (=> (not res!710445) (not e!606391))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064008 (= res!710445 (and (= (size!33034 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33033 _keys!1163) (size!33034 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064009 () Bool)

(declare-fun res!710444 () Bool)

(assert (=> b!1064009 (=> (not res!710444) (not e!606391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67590 (_ BitVec 32)) Bool)

(assert (=> b!1064009 (= res!710444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064010 () Bool)

(assert (=> b!1064010 (= e!606391 (not true))))

(declare-datatypes ((tuple2!16176 0))(
  ( (tuple2!16177 (_1!8098 (_ BitVec 64)) (_2!8098 V!38883)) )
))
(declare-datatypes ((List!22779 0))(
  ( (Nil!22776) (Cons!22775 (h!23984 tuple2!16176) (t!32101 List!22779)) )
))
(declare-datatypes ((ListLongMap!14157 0))(
  ( (ListLongMap!14158 (toList!7094 List!22779)) )
))
(declare-fun lt!469004 () ListLongMap!14157)

(declare-fun lt!469003 () ListLongMap!14157)

(assert (=> b!1064010 (= lt!469004 lt!469003)))

(declare-fun zeroValueBefore!47 () V!38883)

(declare-fun minValue!907 () V!38883)

(declare-datatypes ((Unit!34855 0))(
  ( (Unit!34856) )
))
(declare-fun lt!469002 () Unit!34855)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38883)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!687 (array!67590 array!67592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38883 V!38883 V!38883 V!38883 (_ BitVec 32) Int) Unit!34855)

(assert (=> b!1064010 (= lt!469002 (lemmaNoChangeToArrayThenSameMapNoExtras!687 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3648 (array!67590 array!67592 (_ BitVec 32) (_ BitVec 32) V!38883 V!38883 (_ BitVec 32) Int) ListLongMap!14157)

(assert (=> b!1064010 (= lt!469003 (getCurrentListMapNoExtraKeys!3648 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064010 (= lt!469004 (getCurrentListMapNoExtraKeys!3648 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39646 () Bool)

(assert (=> mapIsEmpty!39646 mapRes!39646))

(declare-fun mapNonEmpty!39646 () Bool)

(declare-fun tp!75936 () Bool)

(assert (=> mapNonEmpty!39646 (= mapRes!39646 (and tp!75936 e!606392))))

(declare-fun mapRest!39646 () (Array (_ BitVec 32) ValueCell!11952))

(declare-fun mapKey!39646 () (_ BitVec 32))

(declare-fun mapValue!39646 () ValueCell!11952)

(assert (=> mapNonEmpty!39646 (= (arr!32497 _values!955) (store mapRest!39646 mapKey!39646 mapValue!39646))))

(assert (= (and start!94122 res!710443) b!1064008))

(assert (= (and b!1064008 res!710445) b!1064009))

(assert (= (and b!1064009 res!710444) b!1064005))

(assert (= (and b!1064005 res!710442) b!1064010))

(assert (= (and b!1064006 condMapEmpty!39646) mapIsEmpty!39646))

(assert (= (and b!1064006 (not condMapEmpty!39646)) mapNonEmpty!39646))

(get-info :version)

(assert (= (and mapNonEmpty!39646 ((_ is ValueCellFull!11952) mapValue!39646)) b!1064004))

(assert (= (and b!1064006 ((_ is ValueCellFull!11952) mapDefault!39646)) b!1064007))

(assert (= start!94122 b!1064006))

(declare-fun m!982751 () Bool)

(assert (=> mapNonEmpty!39646 m!982751))

(declare-fun m!982753 () Bool)

(assert (=> b!1064010 m!982753))

(declare-fun m!982755 () Bool)

(assert (=> b!1064010 m!982755))

(declare-fun m!982757 () Bool)

(assert (=> b!1064010 m!982757))

(declare-fun m!982759 () Bool)

(assert (=> start!94122 m!982759))

(declare-fun m!982761 () Bool)

(assert (=> start!94122 m!982761))

(declare-fun m!982763 () Bool)

(assert (=> start!94122 m!982763))

(declare-fun m!982765 () Bool)

(assert (=> b!1064005 m!982765))

(declare-fun m!982767 () Bool)

(assert (=> b!1064009 m!982767))

(check-sat tp_is_empty!25311 (not b!1064005) (not b_next!21501) (not start!94122) (not b!1064009) b_and!34261 (not mapNonEmpty!39646) (not b!1064010))
(check-sat b_and!34261 (not b_next!21501))

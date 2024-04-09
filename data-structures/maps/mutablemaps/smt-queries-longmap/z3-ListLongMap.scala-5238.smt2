; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70534 () Bool)

(assert start!70534)

(declare-fun b_free!12837 () Bool)

(declare-fun b_next!12837 () Bool)

(assert (=> start!70534 (= b_free!12837 (not b_next!12837))))

(declare-fun tp!45244 () Bool)

(declare-fun b_and!21685 () Bool)

(assert (=> start!70534 (= tp!45244 b_and!21685)))

(declare-fun b!818898 () Bool)

(declare-fun e!454727 () Bool)

(assert (=> b!818898 (= e!454727 true)))

(declare-datatypes ((V!24397 0))(
  ( (V!24398 (val!7321 Int)) )
))
(declare-datatypes ((tuple2!9644 0))(
  ( (tuple2!9645 (_1!4832 (_ BitVec 64)) (_2!4832 V!24397)) )
))
(declare-fun lt!367294 () tuple2!9644)

(declare-datatypes ((List!15505 0))(
  ( (Nil!15502) (Cons!15501 (h!16630 tuple2!9644) (t!21842 List!15505)) )
))
(declare-datatypes ((ListLongMap!8481 0))(
  ( (ListLongMap!8482 (toList!4256 List!15505)) )
))
(declare-fun lt!367290 () ListLongMap!8481)

(declare-fun lt!367292 () tuple2!9644)

(declare-fun lt!367295 () ListLongMap!8481)

(declare-fun +!1800 (ListLongMap!8481 tuple2!9644) ListLongMap!8481)

(assert (=> b!818898 (= lt!367295 (+!1800 (+!1800 lt!367290 lt!367292) lt!367294))))

(declare-fun lt!367288 () ListLongMap!8481)

(declare-fun lt!367296 () ListLongMap!8481)

(assert (=> b!818898 (= (+!1800 lt!367288 lt!367294) (+!1800 lt!367296 lt!367294))))

(declare-fun zeroValueBefore!34 () V!24397)

(declare-fun zeroValueAfter!34 () V!24397)

(declare-datatypes ((Unit!27961 0))(
  ( (Unit!27962) )
))
(declare-fun lt!367289 () Unit!27961)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!179 (ListLongMap!8481 (_ BitVec 64) V!24397 V!24397) Unit!27961)

(assert (=> b!818898 (= lt!367289 (addSameAsAddTwiceSameKeyDiffValues!179 lt!367288 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818898 (= lt!367294 (tuple2!9645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454723 () Bool)

(assert (=> b!818898 e!454723))

(declare-fun res!558948 () Bool)

(assert (=> b!818898 (=> (not res!558948) (not e!454723))))

(declare-fun lt!367297 () ListLongMap!8481)

(assert (=> b!818898 (= res!558948 (= lt!367297 lt!367296))))

(assert (=> b!818898 (= lt!367296 (+!1800 lt!367288 lt!367292))))

(assert (=> b!818898 (= lt!367292 (tuple2!9645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!45266 0))(
  ( (array!45267 (arr!21683 (Array (_ BitVec 32) (_ BitVec 64))) (size!22104 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45266)

(declare-fun minValue!754 () V!24397)

(declare-datatypes ((ValueCell!6858 0))(
  ( (ValueCellFull!6858 (v!9746 V!24397)) (EmptyCell!6858) )
))
(declare-datatypes ((array!45268 0))(
  ( (array!45269 (arr!21684 (Array (_ BitVec 32) ValueCell!6858)) (size!22105 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45268)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lt!367293 () ListLongMap!8481)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2414 (array!45266 array!45268 (_ BitVec 32) (_ BitVec 32) V!24397 V!24397 (_ BitVec 32) Int) ListLongMap!8481)

(assert (=> b!818898 (= lt!367293 (getCurrentListMap!2414 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818898 (= lt!367297 (getCurrentListMap!2414 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23419 () Bool)

(declare-fun mapRes!23419 () Bool)

(declare-fun tp!45243 () Bool)

(declare-fun e!454725 () Bool)

(assert (=> mapNonEmpty!23419 (= mapRes!23419 (and tp!45243 e!454725))))

(declare-fun mapValue!23419 () ValueCell!6858)

(declare-fun mapKey!23419 () (_ BitVec 32))

(declare-fun mapRest!23419 () (Array (_ BitVec 32) ValueCell!6858))

(assert (=> mapNonEmpty!23419 (= (arr!21684 _values!788) (store mapRest!23419 mapKey!23419 mapValue!23419))))

(declare-fun b!818899 () Bool)

(declare-fun res!558953 () Bool)

(declare-fun e!454724 () Bool)

(assert (=> b!818899 (=> (not res!558953) (not e!454724))))

(declare-datatypes ((List!15506 0))(
  ( (Nil!15503) (Cons!15502 (h!16631 (_ BitVec 64)) (t!21843 List!15506)) )
))
(declare-fun arrayNoDuplicates!0 (array!45266 (_ BitVec 32) List!15506) Bool)

(assert (=> b!818899 (= res!558953 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15503))))

(declare-fun b!818900 () Bool)

(assert (=> b!818900 (= e!454723 (= lt!367293 (+!1800 lt!367290 (tuple2!9645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun mapIsEmpty!23419 () Bool)

(assert (=> mapIsEmpty!23419 mapRes!23419))

(declare-fun b!818902 () Bool)

(assert (=> b!818902 (= e!454724 (not e!454727))))

(declare-fun res!558950 () Bool)

(assert (=> b!818902 (=> res!558950 e!454727)))

(assert (=> b!818902 (= res!558950 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!818902 (= lt!367288 lt!367290)))

(declare-fun lt!367291 () Unit!27961)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!411 (array!45266 array!45268 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24397 V!24397 V!24397 V!24397 (_ BitVec 32) Int) Unit!27961)

(assert (=> b!818902 (= lt!367291 (lemmaNoChangeToArrayThenSameMapNoExtras!411 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2295 (array!45266 array!45268 (_ BitVec 32) (_ BitVec 32) V!24397 V!24397 (_ BitVec 32) Int) ListLongMap!8481)

(assert (=> b!818902 (= lt!367290 (getCurrentListMapNoExtraKeys!2295 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818902 (= lt!367288 (getCurrentListMapNoExtraKeys!2295 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818903 () Bool)

(declare-fun res!558951 () Bool)

(assert (=> b!818903 (=> (not res!558951) (not e!454724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45266 (_ BitVec 32)) Bool)

(assert (=> b!818903 (= res!558951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818904 () Bool)

(declare-fun res!558952 () Bool)

(assert (=> b!818904 (=> (not res!558952) (not e!454724))))

(assert (=> b!818904 (= res!558952 (and (= (size!22105 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22104 _keys!976) (size!22105 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!558949 () Bool)

(assert (=> start!70534 (=> (not res!558949) (not e!454724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70534 (= res!558949 (validMask!0 mask!1312))))

(assert (=> start!70534 e!454724))

(declare-fun tp_is_empty!14547 () Bool)

(assert (=> start!70534 tp_is_empty!14547))

(declare-fun array_inv!17303 (array!45266) Bool)

(assert (=> start!70534 (array_inv!17303 _keys!976)))

(assert (=> start!70534 true))

(declare-fun e!454726 () Bool)

(declare-fun array_inv!17304 (array!45268) Bool)

(assert (=> start!70534 (and (array_inv!17304 _values!788) e!454726)))

(assert (=> start!70534 tp!45244))

(declare-fun b!818901 () Bool)

(declare-fun e!454729 () Bool)

(assert (=> b!818901 (= e!454726 (and e!454729 mapRes!23419))))

(declare-fun condMapEmpty!23419 () Bool)

(declare-fun mapDefault!23419 () ValueCell!6858)

(assert (=> b!818901 (= condMapEmpty!23419 (= (arr!21684 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6858)) mapDefault!23419)))))

(declare-fun b!818905 () Bool)

(assert (=> b!818905 (= e!454729 tp_is_empty!14547)))

(declare-fun b!818906 () Bool)

(assert (=> b!818906 (= e!454725 tp_is_empty!14547)))

(assert (= (and start!70534 res!558949) b!818904))

(assert (= (and b!818904 res!558952) b!818903))

(assert (= (and b!818903 res!558951) b!818899))

(assert (= (and b!818899 res!558953) b!818902))

(assert (= (and b!818902 (not res!558950)) b!818898))

(assert (= (and b!818898 res!558948) b!818900))

(assert (= (and b!818901 condMapEmpty!23419) mapIsEmpty!23419))

(assert (= (and b!818901 (not condMapEmpty!23419)) mapNonEmpty!23419))

(get-info :version)

(assert (= (and mapNonEmpty!23419 ((_ is ValueCellFull!6858) mapValue!23419)) b!818906))

(assert (= (and b!818901 ((_ is ValueCellFull!6858) mapDefault!23419)) b!818905))

(assert (= start!70534 b!818901))

(declare-fun m!760507 () Bool)

(assert (=> b!818903 m!760507))

(declare-fun m!760509 () Bool)

(assert (=> start!70534 m!760509))

(declare-fun m!760511 () Bool)

(assert (=> start!70534 m!760511))

(declare-fun m!760513 () Bool)

(assert (=> start!70534 m!760513))

(declare-fun m!760515 () Bool)

(assert (=> b!818898 m!760515))

(declare-fun m!760517 () Bool)

(assert (=> b!818898 m!760517))

(assert (=> b!818898 m!760517))

(declare-fun m!760519 () Bool)

(assert (=> b!818898 m!760519))

(declare-fun m!760521 () Bool)

(assert (=> b!818898 m!760521))

(declare-fun m!760523 () Bool)

(assert (=> b!818898 m!760523))

(declare-fun m!760525 () Bool)

(assert (=> b!818898 m!760525))

(declare-fun m!760527 () Bool)

(assert (=> b!818898 m!760527))

(declare-fun m!760529 () Bool)

(assert (=> b!818898 m!760529))

(declare-fun m!760531 () Bool)

(assert (=> b!818902 m!760531))

(declare-fun m!760533 () Bool)

(assert (=> b!818902 m!760533))

(declare-fun m!760535 () Bool)

(assert (=> b!818902 m!760535))

(declare-fun m!760537 () Bool)

(assert (=> b!818900 m!760537))

(declare-fun m!760539 () Bool)

(assert (=> mapNonEmpty!23419 m!760539))

(declare-fun m!760541 () Bool)

(assert (=> b!818899 m!760541))

(check-sat b_and!21685 (not start!70534) (not b!818902) (not b!818899) (not b!818903) (not b!818900) (not b_next!12837) (not b!818898) (not mapNonEmpty!23419) tp_is_empty!14547)
(check-sat b_and!21685 (not b_next!12837))

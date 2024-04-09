; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71488 () Bool)

(assert start!71488)

(declare-fun b_free!13491 () Bool)

(declare-fun b_next!13491 () Bool)

(assert (=> start!71488 (= b_free!13491 (not b_next!13491))))

(declare-fun tp!47256 () Bool)

(declare-fun b_and!22527 () Bool)

(assert (=> start!71488 (= tp!47256 b_and!22527)))

(declare-fun b!829774 () Bool)

(declare-fun res!565316 () Bool)

(declare-fun e!462622 () Bool)

(assert (=> b!829774 (=> (not res!565316) (not e!462622))))

(declare-datatypes ((array!46546 0))(
  ( (array!46547 (arr!22306 (Array (_ BitVec 32) (_ BitVec 64))) (size!22727 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46546)

(declare-datatypes ((List!16000 0))(
  ( (Nil!15997) (Cons!15996 (h!17125 (_ BitVec 64)) (t!22371 List!16000)) )
))
(declare-fun arrayNoDuplicates!0 (array!46546 (_ BitVec 32) List!16000) Bool)

(assert (=> b!829774 (= res!565316 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15997))))

(declare-datatypes ((V!25269 0))(
  ( (V!25270 (val!7648 Int)) )
))
(declare-fun zeroValueBefore!34 () V!25269)

(declare-fun b!829775 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!25269)

(declare-datatypes ((ValueCell!7185 0))(
  ( (ValueCellFull!7185 (v!10085 V!25269)) (EmptyCell!7185) )
))
(declare-datatypes ((array!46548 0))(
  ( (array!46549 (arr!22307 (Array (_ BitVec 32) ValueCell!7185)) (size!22728 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46548)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((tuple2!10170 0))(
  ( (tuple2!10171 (_1!5095 (_ BitVec 64)) (_2!5095 V!25269)) )
))
(declare-datatypes ((List!16001 0))(
  ( (Nil!15998) (Cons!15997 (h!17126 tuple2!10170) (t!22372 List!16001)) )
))
(declare-datatypes ((ListLongMap!9007 0))(
  ( (ListLongMap!9008 (toList!4519 List!16001)) )
))
(declare-fun lt!376425 () ListLongMap!9007)

(declare-fun defaultEntry!796 () Int)

(declare-fun e!462620 () Bool)

(declare-fun getCurrentListMap!2590 (array!46546 array!46548 (_ BitVec 32) (_ BitVec 32) V!25269 V!25269 (_ BitVec 32) Int) ListLongMap!9007)

(declare-fun +!1948 (ListLongMap!9007 tuple2!10170) ListLongMap!9007)

(assert (=> b!829775 (= e!462620 (= (getCurrentListMap!2590 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1948 (+!1948 lt!376425 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!829776 () Bool)

(declare-fun e!462624 () Bool)

(assert (=> b!829776 (= e!462622 (not e!462624))))

(declare-fun res!565315 () Bool)

(assert (=> b!829776 (=> res!565315 e!462624)))

(assert (=> b!829776 (= res!565315 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!462617 () Bool)

(assert (=> b!829776 e!462617))

(declare-fun res!565317 () Bool)

(assert (=> b!829776 (=> (not res!565317) (not e!462617))))

(declare-fun lt!376424 () ListLongMap!9007)

(assert (=> b!829776 (= res!565317 (= lt!376425 lt!376424))))

(declare-fun zeroValueAfter!34 () V!25269)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28429 0))(
  ( (Unit!28430) )
))
(declare-fun lt!376423 () Unit!28429)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!609 (array!46546 array!46548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25269 V!25269 V!25269 V!25269 (_ BitVec 32) Int) Unit!28429)

(assert (=> b!829776 (= lt!376423 (lemmaNoChangeToArrayThenSameMapNoExtras!609 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2519 (array!46546 array!46548 (_ BitVec 32) (_ BitVec 32) V!25269 V!25269 (_ BitVec 32) Int) ListLongMap!9007)

(assert (=> b!829776 (= lt!376424 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829776 (= lt!376425 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829777 () Bool)

(assert (=> b!829777 (= e!462624 (= (getCurrentListMap!2590 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1948 (+!1948 lt!376424 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun mapIsEmpty!24451 () Bool)

(declare-fun mapRes!24451 () Bool)

(assert (=> mapIsEmpty!24451 mapRes!24451))

(declare-fun b!829778 () Bool)

(declare-fun res!565320 () Bool)

(assert (=> b!829778 (=> (not res!565320) (not e!462622))))

(assert (=> b!829778 (= res!565320 (and (= (size!22728 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22727 _keys!976) (size!22728 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!829779 () Bool)

(declare-fun res!565318 () Bool)

(assert (=> b!829779 (=> (not res!565318) (not e!462622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46546 (_ BitVec 32)) Bool)

(assert (=> b!829779 (= res!565318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!829780 () Bool)

(declare-fun e!462621 () Bool)

(declare-fun e!462623 () Bool)

(assert (=> b!829780 (= e!462621 (and e!462623 mapRes!24451))))

(declare-fun condMapEmpty!24451 () Bool)

(declare-fun mapDefault!24451 () ValueCell!7185)

(assert (=> b!829780 (= condMapEmpty!24451 (= (arr!22307 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7185)) mapDefault!24451)))))

(declare-fun mapNonEmpty!24451 () Bool)

(declare-fun tp!47257 () Bool)

(declare-fun e!462619 () Bool)

(assert (=> mapNonEmpty!24451 (= mapRes!24451 (and tp!47257 e!462619))))

(declare-fun mapValue!24451 () ValueCell!7185)

(declare-fun mapKey!24451 () (_ BitVec 32))

(declare-fun mapRest!24451 () (Array (_ BitVec 32) ValueCell!7185))

(assert (=> mapNonEmpty!24451 (= (arr!22307 _values!788) (store mapRest!24451 mapKey!24451 mapValue!24451))))

(declare-fun b!829781 () Bool)

(declare-fun tp_is_empty!15201 () Bool)

(assert (=> b!829781 (= e!462619 tp_is_empty!15201)))

(declare-fun b!829782 () Bool)

(assert (=> b!829782 (= e!462617 e!462620)))

(declare-fun res!565321 () Bool)

(assert (=> b!829782 (=> res!565321 e!462620)))

(assert (=> b!829782 (= res!565321 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!829783 () Bool)

(assert (=> b!829783 (= e!462623 tp_is_empty!15201)))

(declare-fun res!565319 () Bool)

(assert (=> start!71488 (=> (not res!565319) (not e!462622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71488 (= res!565319 (validMask!0 mask!1312))))

(assert (=> start!71488 e!462622))

(assert (=> start!71488 tp_is_empty!15201))

(declare-fun array_inv!17743 (array!46546) Bool)

(assert (=> start!71488 (array_inv!17743 _keys!976)))

(assert (=> start!71488 true))

(declare-fun array_inv!17744 (array!46548) Bool)

(assert (=> start!71488 (and (array_inv!17744 _values!788) e!462621)))

(assert (=> start!71488 tp!47256))

(assert (= (and start!71488 res!565319) b!829778))

(assert (= (and b!829778 res!565320) b!829779))

(assert (= (and b!829779 res!565318) b!829774))

(assert (= (and b!829774 res!565316) b!829776))

(assert (= (and b!829776 res!565317) b!829782))

(assert (= (and b!829782 (not res!565321)) b!829775))

(assert (= (and b!829776 (not res!565315)) b!829777))

(assert (= (and b!829780 condMapEmpty!24451) mapIsEmpty!24451))

(assert (= (and b!829780 (not condMapEmpty!24451)) mapNonEmpty!24451))

(get-info :version)

(assert (= (and mapNonEmpty!24451 ((_ is ValueCellFull!7185) mapValue!24451)) b!829781))

(assert (= (and b!829780 ((_ is ValueCellFull!7185) mapDefault!24451)) b!829783))

(assert (= start!71488 b!829780))

(declare-fun m!772895 () Bool)

(assert (=> start!71488 m!772895))

(declare-fun m!772897 () Bool)

(assert (=> start!71488 m!772897))

(declare-fun m!772899 () Bool)

(assert (=> start!71488 m!772899))

(declare-fun m!772901 () Bool)

(assert (=> b!829774 m!772901))

(declare-fun m!772903 () Bool)

(assert (=> b!829777 m!772903))

(declare-fun m!772905 () Bool)

(assert (=> b!829777 m!772905))

(assert (=> b!829777 m!772905))

(declare-fun m!772907 () Bool)

(assert (=> b!829777 m!772907))

(declare-fun m!772909 () Bool)

(assert (=> b!829775 m!772909))

(declare-fun m!772911 () Bool)

(assert (=> b!829775 m!772911))

(assert (=> b!829775 m!772911))

(declare-fun m!772913 () Bool)

(assert (=> b!829775 m!772913))

(declare-fun m!772915 () Bool)

(assert (=> mapNonEmpty!24451 m!772915))

(declare-fun m!772917 () Bool)

(assert (=> b!829776 m!772917))

(declare-fun m!772919 () Bool)

(assert (=> b!829776 m!772919))

(declare-fun m!772921 () Bool)

(assert (=> b!829776 m!772921))

(declare-fun m!772923 () Bool)

(assert (=> b!829779 m!772923))

(check-sat b_and!22527 (not b!829776) tp_is_empty!15201 (not start!71488) (not b!829775) (not b!829777) (not mapNonEmpty!24451) (not b!829774) (not b_next!13491) (not b!829779))
(check-sat b_and!22527 (not b_next!13491))
(get-model)

(declare-fun call!36201 () ListLongMap!9007)

(declare-fun bm!36196 () Bool)

(assert (=> bm!36196 (= call!36201 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun bm!36197 () Bool)

(declare-fun call!36203 () ListLongMap!9007)

(declare-fun call!36205 () ListLongMap!9007)

(assert (=> bm!36197 (= call!36203 call!36205)))

(declare-fun b!829856 () Bool)

(declare-fun e!462679 () Bool)

(declare-fun lt!376495 () ListLongMap!9007)

(declare-fun apply!371 (ListLongMap!9007 (_ BitVec 64)) V!25269)

(assert (=> b!829856 (= e!462679 (= (apply!371 lt!376495 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!829857 () Bool)

(declare-fun e!462684 () Bool)

(declare-fun get!11819 (ValueCell!7185 V!25269) V!25269)

(declare-fun dynLambda!981 (Int (_ BitVec 64)) V!25269)

(assert (=> b!829857 (= e!462684 (= (apply!371 lt!376495 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)) (get!11819 (select (arr!22307 _values!788) #b00000000000000000000000000000000) (dynLambda!981 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!829857 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22728 _values!788)))))

(assert (=> b!829857 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun bm!36198 () Bool)

(declare-fun c!89751 () Bool)

(declare-fun call!36202 () ListLongMap!9007)

(declare-fun c!89752 () Bool)

(assert (=> bm!36198 (= call!36202 (+!1948 (ite c!89751 call!36201 (ite c!89752 call!36205 call!36203)) (ite (or c!89751 c!89752) (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!829858 () Bool)

(declare-fun c!89750 () Bool)

(assert (=> b!829858 (= c!89750 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!462683 () ListLongMap!9007)

(declare-fun e!462685 () ListLongMap!9007)

(assert (=> b!829858 (= e!462683 e!462685)))

(declare-fun b!829859 () Bool)

(declare-fun e!462686 () ListLongMap!9007)

(assert (=> b!829859 (= e!462686 (+!1948 call!36202 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!36199 () Bool)

(declare-fun call!36204 () Bool)

(declare-fun contains!4205 (ListLongMap!9007 (_ BitVec 64)) Bool)

(assert (=> bm!36199 (= call!36204 (contains!4205 lt!376495 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829860 () Bool)

(assert (=> b!829860 (= e!462686 e!462683)))

(assert (=> b!829860 (= c!89752 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!829862 () Bool)

(declare-fun e!462682 () Bool)

(declare-fun e!462681 () Bool)

(assert (=> b!829862 (= e!462682 e!462681)))

(declare-fun res!565367 () Bool)

(assert (=> b!829862 (= res!565367 call!36204)))

(assert (=> b!829862 (=> (not res!565367) (not e!462681))))

(declare-fun b!829863 () Bool)

(assert (=> b!829863 (= e!462682 (not call!36204))))

(declare-fun b!829864 () Bool)

(declare-fun res!565366 () Bool)

(declare-fun e!462677 () Bool)

(assert (=> b!829864 (=> (not res!565366) (not e!462677))))

(assert (=> b!829864 (= res!565366 e!462682)))

(declare-fun c!89748 () Bool)

(assert (=> b!829864 (= c!89748 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!36200 () Bool)

(declare-fun call!36200 () Bool)

(assert (=> bm!36200 (= call!36200 (contains!4205 lt!376495 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829865 () Bool)

(declare-fun call!36199 () ListLongMap!9007)

(assert (=> b!829865 (= e!462683 call!36199)))

(declare-fun b!829866 () Bool)

(declare-fun e!462687 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!829866 (= e!462687 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829867 () Bool)

(assert (=> b!829867 (= e!462685 call!36199)))

(declare-fun b!829868 () Bool)

(declare-fun res!565364 () Bool)

(assert (=> b!829868 (=> (not res!565364) (not e!462677))))

(declare-fun e!462675 () Bool)

(assert (=> b!829868 (= res!565364 e!462675)))

(declare-fun res!565365 () Bool)

(assert (=> b!829868 (=> res!565365 e!462675)))

(declare-fun e!462678 () Bool)

(assert (=> b!829868 (= res!565365 (not e!462678))))

(declare-fun res!565369 () Bool)

(assert (=> b!829868 (=> (not res!565369) (not e!462678))))

(assert (=> b!829868 (= res!565369 (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun b!829869 () Bool)

(assert (=> b!829869 (= e!462678 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829870 () Bool)

(declare-fun e!462676 () Bool)

(assert (=> b!829870 (= e!462676 (not call!36200))))

(declare-fun b!829871 () Bool)

(assert (=> b!829871 (= e!462681 (= (apply!371 lt!376495 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun d!105229 () Bool)

(assert (=> d!105229 e!462677))

(declare-fun res!565361 () Bool)

(assert (=> d!105229 (=> (not res!565361) (not e!462677))))

(assert (=> d!105229 (= res!565361 (or (bvsge #b00000000000000000000000000000000 (size!22727 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))))

(declare-fun lt!376487 () ListLongMap!9007)

(assert (=> d!105229 (= lt!376495 lt!376487)))

(declare-fun lt!376492 () Unit!28429)

(declare-fun e!462680 () Unit!28429)

(assert (=> d!105229 (= lt!376492 e!462680)))

(declare-fun c!89753 () Bool)

(assert (=> d!105229 (= c!89753 e!462687)))

(declare-fun res!565363 () Bool)

(assert (=> d!105229 (=> (not res!565363) (not e!462687))))

(assert (=> d!105229 (= res!565363 (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(assert (=> d!105229 (= lt!376487 e!462686)))

(assert (=> d!105229 (= c!89751 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105229 (validMask!0 mask!1312)))

(assert (=> d!105229 (= (getCurrentListMap!2590 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376495)))

(declare-fun b!829861 () Bool)

(assert (=> b!829861 (= e!462685 call!36203)))

(declare-fun b!829872 () Bool)

(assert (=> b!829872 (= e!462676 e!462679)))

(declare-fun res!565362 () Bool)

(assert (=> b!829872 (= res!565362 call!36200)))

(assert (=> b!829872 (=> (not res!565362) (not e!462679))))

(declare-fun b!829873 () Bool)

(declare-fun lt!376497 () Unit!28429)

(assert (=> b!829873 (= e!462680 lt!376497)))

(declare-fun lt!376485 () ListLongMap!9007)

(assert (=> b!829873 (= lt!376485 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376491 () (_ BitVec 64))

(assert (=> b!829873 (= lt!376491 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376483 () (_ BitVec 64))

(assert (=> b!829873 (= lt!376483 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376484 () Unit!28429)

(declare-fun addStillContains!322 (ListLongMap!9007 (_ BitVec 64) V!25269 (_ BitVec 64)) Unit!28429)

(assert (=> b!829873 (= lt!376484 (addStillContains!322 lt!376485 lt!376491 zeroValueAfter!34 lt!376483))))

(assert (=> b!829873 (contains!4205 (+!1948 lt!376485 (tuple2!10171 lt!376491 zeroValueAfter!34)) lt!376483)))

(declare-fun lt!376482 () Unit!28429)

(assert (=> b!829873 (= lt!376482 lt!376484)))

(declare-fun lt!376499 () ListLongMap!9007)

(assert (=> b!829873 (= lt!376499 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376498 () (_ BitVec 64))

(assert (=> b!829873 (= lt!376498 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376496 () (_ BitVec 64))

(assert (=> b!829873 (= lt!376496 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376500 () Unit!28429)

(declare-fun addApplyDifferent!322 (ListLongMap!9007 (_ BitVec 64) V!25269 (_ BitVec 64)) Unit!28429)

(assert (=> b!829873 (= lt!376500 (addApplyDifferent!322 lt!376499 lt!376498 minValue!754 lt!376496))))

(assert (=> b!829873 (= (apply!371 (+!1948 lt!376499 (tuple2!10171 lt!376498 minValue!754)) lt!376496) (apply!371 lt!376499 lt!376496))))

(declare-fun lt!376490 () Unit!28429)

(assert (=> b!829873 (= lt!376490 lt!376500)))

(declare-fun lt!376494 () ListLongMap!9007)

(assert (=> b!829873 (= lt!376494 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376488 () (_ BitVec 64))

(assert (=> b!829873 (= lt!376488 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376481 () (_ BitVec 64))

(assert (=> b!829873 (= lt!376481 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376489 () Unit!28429)

(assert (=> b!829873 (= lt!376489 (addApplyDifferent!322 lt!376494 lt!376488 zeroValueAfter!34 lt!376481))))

(assert (=> b!829873 (= (apply!371 (+!1948 lt!376494 (tuple2!10171 lt!376488 zeroValueAfter!34)) lt!376481) (apply!371 lt!376494 lt!376481))))

(declare-fun lt!376493 () Unit!28429)

(assert (=> b!829873 (= lt!376493 lt!376489)))

(declare-fun lt!376486 () ListLongMap!9007)

(assert (=> b!829873 (= lt!376486 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376480 () (_ BitVec 64))

(assert (=> b!829873 (= lt!376480 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376479 () (_ BitVec 64))

(assert (=> b!829873 (= lt!376479 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829873 (= lt!376497 (addApplyDifferent!322 lt!376486 lt!376480 minValue!754 lt!376479))))

(assert (=> b!829873 (= (apply!371 (+!1948 lt!376486 (tuple2!10171 lt!376480 minValue!754)) lt!376479) (apply!371 lt!376486 lt!376479))))

(declare-fun bm!36201 () Bool)

(assert (=> bm!36201 (= call!36199 call!36202)))

(declare-fun b!829874 () Bool)

(declare-fun Unit!28431 () Unit!28429)

(assert (=> b!829874 (= e!462680 Unit!28431)))

(declare-fun b!829875 () Bool)

(assert (=> b!829875 (= e!462675 e!462684)))

(declare-fun res!565368 () Bool)

(assert (=> b!829875 (=> (not res!565368) (not e!462684))))

(assert (=> b!829875 (= res!565368 (contains!4205 lt!376495 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829875 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun bm!36202 () Bool)

(assert (=> bm!36202 (= call!36205 call!36201)))

(declare-fun b!829876 () Bool)

(assert (=> b!829876 (= e!462677 e!462676)))

(declare-fun c!89749 () Bool)

(assert (=> b!829876 (= c!89749 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!105229 c!89751) b!829859))

(assert (= (and d!105229 (not c!89751)) b!829860))

(assert (= (and b!829860 c!89752) b!829865))

(assert (= (and b!829860 (not c!89752)) b!829858))

(assert (= (and b!829858 c!89750) b!829867))

(assert (= (and b!829858 (not c!89750)) b!829861))

(assert (= (or b!829867 b!829861) bm!36197))

(assert (= (or b!829865 bm!36197) bm!36202))

(assert (= (or b!829865 b!829867) bm!36201))

(assert (= (or b!829859 bm!36202) bm!36196))

(assert (= (or b!829859 bm!36201) bm!36198))

(assert (= (and d!105229 res!565363) b!829866))

(assert (= (and d!105229 c!89753) b!829873))

(assert (= (and d!105229 (not c!89753)) b!829874))

(assert (= (and d!105229 res!565361) b!829868))

(assert (= (and b!829868 res!565369) b!829869))

(assert (= (and b!829868 (not res!565365)) b!829875))

(assert (= (and b!829875 res!565368) b!829857))

(assert (= (and b!829868 res!565364) b!829864))

(assert (= (and b!829864 c!89748) b!829862))

(assert (= (and b!829864 (not c!89748)) b!829863))

(assert (= (and b!829862 res!565367) b!829871))

(assert (= (or b!829862 b!829863) bm!36199))

(assert (= (and b!829864 res!565366) b!829876))

(assert (= (and b!829876 c!89749) b!829872))

(assert (= (and b!829876 (not c!89749)) b!829870))

(assert (= (and b!829872 res!565362) b!829856))

(assert (= (or b!829872 b!829870) bm!36200))

(declare-fun b_lambda!11353 () Bool)

(assert (=> (not b_lambda!11353) (not b!829857)))

(declare-fun t!22374 () Bool)

(declare-fun tb!4231 () Bool)

(assert (=> (and start!71488 (= defaultEntry!796 defaultEntry!796) t!22374) tb!4231))

(declare-fun result!8017 () Bool)

(assert (=> tb!4231 (= result!8017 tp_is_empty!15201)))

(assert (=> b!829857 t!22374))

(declare-fun b_and!22531 () Bool)

(assert (= b_and!22527 (and (=> t!22374 result!8017) b_and!22531)))

(declare-fun m!772955 () Bool)

(assert (=> b!829856 m!772955))

(assert (=> bm!36196 m!772919))

(declare-fun m!772957 () Bool)

(assert (=> bm!36200 m!772957))

(declare-fun m!772959 () Bool)

(assert (=> bm!36198 m!772959))

(declare-fun m!772961 () Bool)

(assert (=> b!829857 m!772961))

(declare-fun m!772963 () Bool)

(assert (=> b!829857 m!772963))

(assert (=> b!829857 m!772961))

(declare-fun m!772965 () Bool)

(assert (=> b!829857 m!772965))

(declare-fun m!772967 () Bool)

(assert (=> b!829857 m!772967))

(assert (=> b!829857 m!772965))

(assert (=> b!829857 m!772967))

(declare-fun m!772969 () Bool)

(assert (=> b!829857 m!772969))

(declare-fun m!772971 () Bool)

(assert (=> b!829873 m!772971))

(declare-fun m!772973 () Bool)

(assert (=> b!829873 m!772973))

(declare-fun m!772975 () Bool)

(assert (=> b!829873 m!772975))

(declare-fun m!772977 () Bool)

(assert (=> b!829873 m!772977))

(declare-fun m!772979 () Bool)

(assert (=> b!829873 m!772979))

(declare-fun m!772981 () Bool)

(assert (=> b!829873 m!772981))

(assert (=> b!829873 m!772919))

(declare-fun m!772983 () Bool)

(assert (=> b!829873 m!772983))

(declare-fun m!772985 () Bool)

(assert (=> b!829873 m!772985))

(assert (=> b!829873 m!772979))

(declare-fun m!772987 () Bool)

(assert (=> b!829873 m!772987))

(declare-fun m!772989 () Bool)

(assert (=> b!829873 m!772989))

(declare-fun m!772991 () Bool)

(assert (=> b!829873 m!772991))

(declare-fun m!772993 () Bool)

(assert (=> b!829873 m!772993))

(assert (=> b!829873 m!772975))

(assert (=> b!829873 m!772961))

(assert (=> b!829873 m!772971))

(declare-fun m!772995 () Bool)

(assert (=> b!829873 m!772995))

(declare-fun m!772997 () Bool)

(assert (=> b!829873 m!772997))

(assert (=> b!829873 m!772989))

(declare-fun m!772999 () Bool)

(assert (=> b!829873 m!772999))

(assert (=> b!829869 m!772961))

(assert (=> b!829869 m!772961))

(declare-fun m!773001 () Bool)

(assert (=> b!829869 m!773001))

(declare-fun m!773003 () Bool)

(assert (=> bm!36199 m!773003))

(declare-fun m!773005 () Bool)

(assert (=> b!829871 m!773005))

(assert (=> b!829875 m!772961))

(assert (=> b!829875 m!772961))

(declare-fun m!773007 () Bool)

(assert (=> b!829875 m!773007))

(declare-fun m!773009 () Bool)

(assert (=> b!829859 m!773009))

(assert (=> b!829866 m!772961))

(assert (=> b!829866 m!772961))

(assert (=> b!829866 m!773001))

(assert (=> d!105229 m!772895))

(assert (=> b!829777 d!105229))

(declare-fun d!105231 () Bool)

(declare-fun e!462690 () Bool)

(assert (=> d!105231 e!462690))

(declare-fun res!565374 () Bool)

(assert (=> d!105231 (=> (not res!565374) (not e!462690))))

(declare-fun lt!376512 () ListLongMap!9007)

(assert (=> d!105231 (= res!565374 (contains!4205 lt!376512 (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!376510 () List!16001)

(assert (=> d!105231 (= lt!376512 (ListLongMap!9008 lt!376510))))

(declare-fun lt!376511 () Unit!28429)

(declare-fun lt!376509 () Unit!28429)

(assert (=> d!105231 (= lt!376511 lt!376509)))

(declare-datatypes ((Option!419 0))(
  ( (Some!418 (v!10087 V!25269)) (None!417) )
))
(declare-fun getValueByKey!413 (List!16001 (_ BitVec 64)) Option!419)

(assert (=> d!105231 (= (getValueByKey!413 lt!376510 (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!418 (_2!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lemmaContainsTupThenGetReturnValue!229 (List!16001 (_ BitVec 64) V!25269) Unit!28429)

(assert (=> d!105231 (= lt!376509 (lemmaContainsTupThenGetReturnValue!229 lt!376510 (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun insertStrictlySorted!267 (List!16001 (_ BitVec 64) V!25269) List!16001)

(assert (=> d!105231 (= lt!376510 (insertStrictlySorted!267 (toList!4519 (+!1948 lt!376424 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105231 (= (+!1948 (+!1948 lt!376424 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!376512)))

(declare-fun b!829883 () Bool)

(declare-fun res!565375 () Bool)

(assert (=> b!829883 (=> (not res!565375) (not e!462690))))

(assert (=> b!829883 (= res!565375 (= (getValueByKey!413 (toList!4519 lt!376512) (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!418 (_2!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!829884 () Bool)

(declare-fun contains!4206 (List!16001 tuple2!10170) Bool)

(assert (=> b!829884 (= e!462690 (contains!4206 (toList!4519 lt!376512) (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!105231 res!565374) b!829883))

(assert (= (and b!829883 res!565375) b!829884))

(declare-fun m!773011 () Bool)

(assert (=> d!105231 m!773011))

(declare-fun m!773013 () Bool)

(assert (=> d!105231 m!773013))

(declare-fun m!773015 () Bool)

(assert (=> d!105231 m!773015))

(declare-fun m!773017 () Bool)

(assert (=> d!105231 m!773017))

(declare-fun m!773019 () Bool)

(assert (=> b!829883 m!773019))

(declare-fun m!773021 () Bool)

(assert (=> b!829884 m!773021))

(assert (=> b!829777 d!105231))

(declare-fun d!105233 () Bool)

(declare-fun e!462691 () Bool)

(assert (=> d!105233 e!462691))

(declare-fun res!565376 () Bool)

(assert (=> d!105233 (=> (not res!565376) (not e!462691))))

(declare-fun lt!376516 () ListLongMap!9007)

(assert (=> d!105233 (= res!565376 (contains!4205 lt!376516 (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!376514 () List!16001)

(assert (=> d!105233 (= lt!376516 (ListLongMap!9008 lt!376514))))

(declare-fun lt!376515 () Unit!28429)

(declare-fun lt!376513 () Unit!28429)

(assert (=> d!105233 (= lt!376515 lt!376513)))

(assert (=> d!105233 (= (getValueByKey!413 lt!376514 (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!418 (_2!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105233 (= lt!376513 (lemmaContainsTupThenGetReturnValue!229 lt!376514 (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105233 (= lt!376514 (insertStrictlySorted!267 (toList!4519 lt!376424) (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105233 (= (+!1948 lt!376424 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!376516)))

(declare-fun b!829885 () Bool)

(declare-fun res!565377 () Bool)

(assert (=> b!829885 (=> (not res!565377) (not e!462691))))

(assert (=> b!829885 (= res!565377 (= (getValueByKey!413 (toList!4519 lt!376516) (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!418 (_2!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!829886 () Bool)

(assert (=> b!829886 (= e!462691 (contains!4206 (toList!4519 lt!376516) (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!105233 res!565376) b!829885))

(assert (= (and b!829885 res!565377) b!829886))

(declare-fun m!773023 () Bool)

(assert (=> d!105233 m!773023))

(declare-fun m!773025 () Bool)

(assert (=> d!105233 m!773025))

(declare-fun m!773027 () Bool)

(assert (=> d!105233 m!773027))

(declare-fun m!773029 () Bool)

(assert (=> d!105233 m!773029))

(declare-fun m!773031 () Bool)

(assert (=> b!829885 m!773031))

(declare-fun m!773033 () Bool)

(assert (=> b!829886 m!773033))

(assert (=> b!829777 d!105233))

(declare-fun bm!36203 () Bool)

(declare-fun call!36208 () ListLongMap!9007)

(assert (=> bm!36203 (= call!36208 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun bm!36204 () Bool)

(declare-fun call!36210 () ListLongMap!9007)

(declare-fun call!36212 () ListLongMap!9007)

(assert (=> bm!36204 (= call!36210 call!36212)))

(declare-fun b!829887 () Bool)

(declare-fun e!462696 () Bool)

(declare-fun lt!376533 () ListLongMap!9007)

(assert (=> b!829887 (= e!462696 (= (apply!371 lt!376533 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!829888 () Bool)

(declare-fun e!462701 () Bool)

(assert (=> b!829888 (= e!462701 (= (apply!371 lt!376533 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)) (get!11819 (select (arr!22307 _values!788) #b00000000000000000000000000000000) (dynLambda!981 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!829888 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22728 _values!788)))))

(assert (=> b!829888 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun bm!36205 () Bool)

(declare-fun c!89757 () Bool)

(declare-fun c!89758 () Bool)

(declare-fun call!36209 () ListLongMap!9007)

(assert (=> bm!36205 (= call!36209 (+!1948 (ite c!89757 call!36208 (ite c!89758 call!36212 call!36210)) (ite (or c!89757 c!89758) (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!829889 () Bool)

(declare-fun c!89756 () Bool)

(assert (=> b!829889 (= c!89756 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!462700 () ListLongMap!9007)

(declare-fun e!462702 () ListLongMap!9007)

(assert (=> b!829889 (= e!462700 e!462702)))

(declare-fun b!829890 () Bool)

(declare-fun e!462703 () ListLongMap!9007)

(assert (=> b!829890 (= e!462703 (+!1948 call!36209 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!36206 () Bool)

(declare-fun call!36211 () Bool)

(assert (=> bm!36206 (= call!36211 (contains!4205 lt!376533 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829891 () Bool)

(assert (=> b!829891 (= e!462703 e!462700)))

(assert (=> b!829891 (= c!89758 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!829893 () Bool)

(declare-fun e!462699 () Bool)

(declare-fun e!462698 () Bool)

(assert (=> b!829893 (= e!462699 e!462698)))

(declare-fun res!565384 () Bool)

(assert (=> b!829893 (= res!565384 call!36211)))

(assert (=> b!829893 (=> (not res!565384) (not e!462698))))

(declare-fun b!829894 () Bool)

(assert (=> b!829894 (= e!462699 (not call!36211))))

(declare-fun b!829895 () Bool)

(declare-fun res!565383 () Bool)

(declare-fun e!462694 () Bool)

(assert (=> b!829895 (=> (not res!565383) (not e!462694))))

(assert (=> b!829895 (= res!565383 e!462699)))

(declare-fun c!89754 () Bool)

(assert (=> b!829895 (= c!89754 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!36207 () Bool)

(declare-fun call!36207 () Bool)

(assert (=> bm!36207 (= call!36207 (contains!4205 lt!376533 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829896 () Bool)

(declare-fun call!36206 () ListLongMap!9007)

(assert (=> b!829896 (= e!462700 call!36206)))

(declare-fun b!829897 () Bool)

(declare-fun e!462704 () Bool)

(assert (=> b!829897 (= e!462704 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829898 () Bool)

(assert (=> b!829898 (= e!462702 call!36206)))

(declare-fun b!829899 () Bool)

(declare-fun res!565381 () Bool)

(assert (=> b!829899 (=> (not res!565381) (not e!462694))))

(declare-fun e!462692 () Bool)

(assert (=> b!829899 (= res!565381 e!462692)))

(declare-fun res!565382 () Bool)

(assert (=> b!829899 (=> res!565382 e!462692)))

(declare-fun e!462695 () Bool)

(assert (=> b!829899 (= res!565382 (not e!462695))))

(declare-fun res!565386 () Bool)

(assert (=> b!829899 (=> (not res!565386) (not e!462695))))

(assert (=> b!829899 (= res!565386 (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun b!829900 () Bool)

(assert (=> b!829900 (= e!462695 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829901 () Bool)

(declare-fun e!462693 () Bool)

(assert (=> b!829901 (= e!462693 (not call!36207))))

(declare-fun b!829902 () Bool)

(assert (=> b!829902 (= e!462698 (= (apply!371 lt!376533 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun d!105235 () Bool)

(assert (=> d!105235 e!462694))

(declare-fun res!565378 () Bool)

(assert (=> d!105235 (=> (not res!565378) (not e!462694))))

(assert (=> d!105235 (= res!565378 (or (bvsge #b00000000000000000000000000000000 (size!22727 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))))

(declare-fun lt!376525 () ListLongMap!9007)

(assert (=> d!105235 (= lt!376533 lt!376525)))

(declare-fun lt!376530 () Unit!28429)

(declare-fun e!462697 () Unit!28429)

(assert (=> d!105235 (= lt!376530 e!462697)))

(declare-fun c!89759 () Bool)

(assert (=> d!105235 (= c!89759 e!462704)))

(declare-fun res!565380 () Bool)

(assert (=> d!105235 (=> (not res!565380) (not e!462704))))

(assert (=> d!105235 (= res!565380 (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(assert (=> d!105235 (= lt!376525 e!462703)))

(assert (=> d!105235 (= c!89757 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105235 (validMask!0 mask!1312)))

(assert (=> d!105235 (= (getCurrentListMap!2590 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376533)))

(declare-fun b!829892 () Bool)

(assert (=> b!829892 (= e!462702 call!36210)))

(declare-fun b!829903 () Bool)

(assert (=> b!829903 (= e!462693 e!462696)))

(declare-fun res!565379 () Bool)

(assert (=> b!829903 (= res!565379 call!36207)))

(assert (=> b!829903 (=> (not res!565379) (not e!462696))))

(declare-fun b!829904 () Bool)

(declare-fun lt!376535 () Unit!28429)

(assert (=> b!829904 (= e!462697 lt!376535)))

(declare-fun lt!376523 () ListLongMap!9007)

(assert (=> b!829904 (= lt!376523 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376529 () (_ BitVec 64))

(assert (=> b!829904 (= lt!376529 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376521 () (_ BitVec 64))

(assert (=> b!829904 (= lt!376521 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376522 () Unit!28429)

(assert (=> b!829904 (= lt!376522 (addStillContains!322 lt!376523 lt!376529 zeroValueBefore!34 lt!376521))))

(assert (=> b!829904 (contains!4205 (+!1948 lt!376523 (tuple2!10171 lt!376529 zeroValueBefore!34)) lt!376521)))

(declare-fun lt!376520 () Unit!28429)

(assert (=> b!829904 (= lt!376520 lt!376522)))

(declare-fun lt!376537 () ListLongMap!9007)

(assert (=> b!829904 (= lt!376537 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376536 () (_ BitVec 64))

(assert (=> b!829904 (= lt!376536 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376534 () (_ BitVec 64))

(assert (=> b!829904 (= lt!376534 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376538 () Unit!28429)

(assert (=> b!829904 (= lt!376538 (addApplyDifferent!322 lt!376537 lt!376536 minValue!754 lt!376534))))

(assert (=> b!829904 (= (apply!371 (+!1948 lt!376537 (tuple2!10171 lt!376536 minValue!754)) lt!376534) (apply!371 lt!376537 lt!376534))))

(declare-fun lt!376528 () Unit!28429)

(assert (=> b!829904 (= lt!376528 lt!376538)))

(declare-fun lt!376532 () ListLongMap!9007)

(assert (=> b!829904 (= lt!376532 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376526 () (_ BitVec 64))

(assert (=> b!829904 (= lt!376526 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376519 () (_ BitVec 64))

(assert (=> b!829904 (= lt!376519 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376527 () Unit!28429)

(assert (=> b!829904 (= lt!376527 (addApplyDifferent!322 lt!376532 lt!376526 zeroValueBefore!34 lt!376519))))

(assert (=> b!829904 (= (apply!371 (+!1948 lt!376532 (tuple2!10171 lt!376526 zeroValueBefore!34)) lt!376519) (apply!371 lt!376532 lt!376519))))

(declare-fun lt!376531 () Unit!28429)

(assert (=> b!829904 (= lt!376531 lt!376527)))

(declare-fun lt!376524 () ListLongMap!9007)

(assert (=> b!829904 (= lt!376524 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376518 () (_ BitVec 64))

(assert (=> b!829904 (= lt!376518 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376517 () (_ BitVec 64))

(assert (=> b!829904 (= lt!376517 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829904 (= lt!376535 (addApplyDifferent!322 lt!376524 lt!376518 minValue!754 lt!376517))))

(assert (=> b!829904 (= (apply!371 (+!1948 lt!376524 (tuple2!10171 lt!376518 minValue!754)) lt!376517) (apply!371 lt!376524 lt!376517))))

(declare-fun bm!36208 () Bool)

(assert (=> bm!36208 (= call!36206 call!36209)))

(declare-fun b!829905 () Bool)

(declare-fun Unit!28432 () Unit!28429)

(assert (=> b!829905 (= e!462697 Unit!28432)))

(declare-fun b!829906 () Bool)

(assert (=> b!829906 (= e!462692 e!462701)))

(declare-fun res!565385 () Bool)

(assert (=> b!829906 (=> (not res!565385) (not e!462701))))

(assert (=> b!829906 (= res!565385 (contains!4205 lt!376533 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829906 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun bm!36209 () Bool)

(assert (=> bm!36209 (= call!36212 call!36208)))

(declare-fun b!829907 () Bool)

(assert (=> b!829907 (= e!462694 e!462693)))

(declare-fun c!89755 () Bool)

(assert (=> b!829907 (= c!89755 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!105235 c!89757) b!829890))

(assert (= (and d!105235 (not c!89757)) b!829891))

(assert (= (and b!829891 c!89758) b!829896))

(assert (= (and b!829891 (not c!89758)) b!829889))

(assert (= (and b!829889 c!89756) b!829898))

(assert (= (and b!829889 (not c!89756)) b!829892))

(assert (= (or b!829898 b!829892) bm!36204))

(assert (= (or b!829896 bm!36204) bm!36209))

(assert (= (or b!829896 b!829898) bm!36208))

(assert (= (or b!829890 bm!36209) bm!36203))

(assert (= (or b!829890 bm!36208) bm!36205))

(assert (= (and d!105235 res!565380) b!829897))

(assert (= (and d!105235 c!89759) b!829904))

(assert (= (and d!105235 (not c!89759)) b!829905))

(assert (= (and d!105235 res!565378) b!829899))

(assert (= (and b!829899 res!565386) b!829900))

(assert (= (and b!829899 (not res!565382)) b!829906))

(assert (= (and b!829906 res!565385) b!829888))

(assert (= (and b!829899 res!565381) b!829895))

(assert (= (and b!829895 c!89754) b!829893))

(assert (= (and b!829895 (not c!89754)) b!829894))

(assert (= (and b!829893 res!565384) b!829902))

(assert (= (or b!829893 b!829894) bm!36206))

(assert (= (and b!829895 res!565383) b!829907))

(assert (= (and b!829907 c!89755) b!829903))

(assert (= (and b!829907 (not c!89755)) b!829901))

(assert (= (and b!829903 res!565379) b!829887))

(assert (= (or b!829903 b!829901) bm!36207))

(declare-fun b_lambda!11355 () Bool)

(assert (=> (not b_lambda!11355) (not b!829888)))

(assert (=> b!829888 t!22374))

(declare-fun b_and!22533 () Bool)

(assert (= b_and!22531 (and (=> t!22374 result!8017) b_and!22533)))

(declare-fun m!773035 () Bool)

(assert (=> b!829887 m!773035))

(assert (=> bm!36203 m!772921))

(declare-fun m!773037 () Bool)

(assert (=> bm!36207 m!773037))

(declare-fun m!773039 () Bool)

(assert (=> bm!36205 m!773039))

(assert (=> b!829888 m!772961))

(declare-fun m!773041 () Bool)

(assert (=> b!829888 m!773041))

(assert (=> b!829888 m!772961))

(assert (=> b!829888 m!772965))

(assert (=> b!829888 m!772967))

(assert (=> b!829888 m!772965))

(assert (=> b!829888 m!772967))

(assert (=> b!829888 m!772969))

(declare-fun m!773043 () Bool)

(assert (=> b!829904 m!773043))

(declare-fun m!773045 () Bool)

(assert (=> b!829904 m!773045))

(declare-fun m!773047 () Bool)

(assert (=> b!829904 m!773047))

(declare-fun m!773049 () Bool)

(assert (=> b!829904 m!773049))

(declare-fun m!773051 () Bool)

(assert (=> b!829904 m!773051))

(declare-fun m!773053 () Bool)

(assert (=> b!829904 m!773053))

(assert (=> b!829904 m!772921))

(declare-fun m!773055 () Bool)

(assert (=> b!829904 m!773055))

(declare-fun m!773057 () Bool)

(assert (=> b!829904 m!773057))

(assert (=> b!829904 m!773051))

(declare-fun m!773059 () Bool)

(assert (=> b!829904 m!773059))

(declare-fun m!773061 () Bool)

(assert (=> b!829904 m!773061))

(declare-fun m!773063 () Bool)

(assert (=> b!829904 m!773063))

(declare-fun m!773065 () Bool)

(assert (=> b!829904 m!773065))

(assert (=> b!829904 m!773047))

(assert (=> b!829904 m!772961))

(assert (=> b!829904 m!773043))

(declare-fun m!773067 () Bool)

(assert (=> b!829904 m!773067))

(declare-fun m!773069 () Bool)

(assert (=> b!829904 m!773069))

(assert (=> b!829904 m!773061))

(declare-fun m!773071 () Bool)

(assert (=> b!829904 m!773071))

(assert (=> b!829900 m!772961))

(assert (=> b!829900 m!772961))

(assert (=> b!829900 m!773001))

(declare-fun m!773073 () Bool)

(assert (=> bm!36206 m!773073))

(declare-fun m!773075 () Bool)

(assert (=> b!829902 m!773075))

(assert (=> b!829906 m!772961))

(assert (=> b!829906 m!772961))

(declare-fun m!773077 () Bool)

(assert (=> b!829906 m!773077))

(declare-fun m!773079 () Bool)

(assert (=> b!829890 m!773079))

(assert (=> b!829897 m!772961))

(assert (=> b!829897 m!772961))

(assert (=> b!829897 m!773001))

(assert (=> d!105235 m!772895))

(assert (=> b!829775 d!105235))

(declare-fun d!105237 () Bool)

(declare-fun e!462705 () Bool)

(assert (=> d!105237 e!462705))

(declare-fun res!565387 () Bool)

(assert (=> d!105237 (=> (not res!565387) (not e!462705))))

(declare-fun lt!376542 () ListLongMap!9007)

(assert (=> d!105237 (= res!565387 (contains!4205 lt!376542 (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!376540 () List!16001)

(assert (=> d!105237 (= lt!376542 (ListLongMap!9008 lt!376540))))

(declare-fun lt!376541 () Unit!28429)

(declare-fun lt!376539 () Unit!28429)

(assert (=> d!105237 (= lt!376541 lt!376539)))

(assert (=> d!105237 (= (getValueByKey!413 lt!376540 (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!418 (_2!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105237 (= lt!376539 (lemmaContainsTupThenGetReturnValue!229 lt!376540 (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105237 (= lt!376540 (insertStrictlySorted!267 (toList!4519 (+!1948 lt!376425 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105237 (= (+!1948 (+!1948 lt!376425 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!376542)))

(declare-fun b!829908 () Bool)

(declare-fun res!565388 () Bool)

(assert (=> b!829908 (=> (not res!565388) (not e!462705))))

(assert (=> b!829908 (= res!565388 (= (getValueByKey!413 (toList!4519 lt!376542) (_1!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!418 (_2!5095 (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!829909 () Bool)

(assert (=> b!829909 (= e!462705 (contains!4206 (toList!4519 lt!376542) (tuple2!10171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!105237 res!565387) b!829908))

(assert (= (and b!829908 res!565388) b!829909))

(declare-fun m!773081 () Bool)

(assert (=> d!105237 m!773081))

(declare-fun m!773083 () Bool)

(assert (=> d!105237 m!773083))

(declare-fun m!773085 () Bool)

(assert (=> d!105237 m!773085))

(declare-fun m!773087 () Bool)

(assert (=> d!105237 m!773087))

(declare-fun m!773089 () Bool)

(assert (=> b!829908 m!773089))

(declare-fun m!773091 () Bool)

(assert (=> b!829909 m!773091))

(assert (=> b!829775 d!105237))

(declare-fun d!105239 () Bool)

(declare-fun e!462706 () Bool)

(assert (=> d!105239 e!462706))

(declare-fun res!565389 () Bool)

(assert (=> d!105239 (=> (not res!565389) (not e!462706))))

(declare-fun lt!376546 () ListLongMap!9007)

(assert (=> d!105239 (= res!565389 (contains!4205 lt!376546 (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun lt!376544 () List!16001)

(assert (=> d!105239 (= lt!376546 (ListLongMap!9008 lt!376544))))

(declare-fun lt!376545 () Unit!28429)

(declare-fun lt!376543 () Unit!28429)

(assert (=> d!105239 (= lt!376545 lt!376543)))

(assert (=> d!105239 (= (getValueByKey!413 lt!376544 (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (Some!418 (_2!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(assert (=> d!105239 (= lt!376543 (lemmaContainsTupThenGetReturnValue!229 lt!376544 (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (_2!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(assert (=> d!105239 (= lt!376544 (insertStrictlySorted!267 (toList!4519 lt!376425) (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (_2!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(assert (=> d!105239 (= (+!1948 lt!376425 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) lt!376546)))

(declare-fun b!829910 () Bool)

(declare-fun res!565390 () Bool)

(assert (=> b!829910 (=> (not res!565390) (not e!462706))))

(assert (=> b!829910 (= res!565390 (= (getValueByKey!413 (toList!4519 lt!376546) (_1!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (Some!418 (_2!5095 (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)))))))

(declare-fun b!829911 () Bool)

(assert (=> b!829911 (= e!462706 (contains!4206 (toList!4519 lt!376546) (tuple2!10171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)))))

(assert (= (and d!105239 res!565389) b!829910))

(assert (= (and b!829910 res!565390) b!829911))

(declare-fun m!773093 () Bool)

(assert (=> d!105239 m!773093))

(declare-fun m!773095 () Bool)

(assert (=> d!105239 m!773095))

(declare-fun m!773097 () Bool)

(assert (=> d!105239 m!773097))

(declare-fun m!773099 () Bool)

(assert (=> d!105239 m!773099))

(declare-fun m!773101 () Bool)

(assert (=> b!829910 m!773101))

(declare-fun m!773103 () Bool)

(assert (=> b!829911 m!773103))

(assert (=> b!829775 d!105239))

(declare-fun d!105241 () Bool)

(assert (=> d!105241 (= (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376549 () Unit!28429)

(declare-fun choose!1423 (array!46546 array!46548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25269 V!25269 V!25269 V!25269 (_ BitVec 32) Int) Unit!28429)

(assert (=> d!105241 (= lt!376549 (choose!1423 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!105241 (validMask!0 mask!1312)))

(assert (=> d!105241 (= (lemmaNoChangeToArrayThenSameMapNoExtras!609 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376549)))

(declare-fun bs!23171 () Bool)

(assert (= bs!23171 d!105241))

(assert (=> bs!23171 m!772921))

(assert (=> bs!23171 m!772919))

(declare-fun m!773105 () Bool)

(assert (=> bs!23171 m!773105))

(assert (=> bs!23171 m!772895))

(assert (=> b!829776 d!105241))

(declare-fun b!829936 () Bool)

(declare-fun res!565401 () Bool)

(declare-fun e!462726 () Bool)

(assert (=> b!829936 (=> (not res!565401) (not e!462726))))

(declare-fun lt!376567 () ListLongMap!9007)

(assert (=> b!829936 (= res!565401 (not (contains!4205 lt!376567 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!829937 () Bool)

(declare-fun e!462727 () Bool)

(assert (=> b!829937 (= e!462727 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829937 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!829938 () Bool)

(declare-fun lt!376570 () Unit!28429)

(declare-fun lt!376569 () Unit!28429)

(assert (=> b!829938 (= lt!376570 lt!376569)))

(declare-fun lt!376564 () V!25269)

(declare-fun lt!376566 () ListLongMap!9007)

(declare-fun lt!376568 () (_ BitVec 64))

(declare-fun lt!376565 () (_ BitVec 64))

(assert (=> b!829938 (not (contains!4205 (+!1948 lt!376566 (tuple2!10171 lt!376565 lt!376564)) lt!376568))))

(declare-fun addStillNotContains!198 (ListLongMap!9007 (_ BitVec 64) V!25269 (_ BitVec 64)) Unit!28429)

(assert (=> b!829938 (= lt!376569 (addStillNotContains!198 lt!376566 lt!376565 lt!376564 lt!376568))))

(assert (=> b!829938 (= lt!376568 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!829938 (= lt!376564 (get!11819 (select (arr!22307 _values!788) #b00000000000000000000000000000000) (dynLambda!981 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!829938 (= lt!376565 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36215 () ListLongMap!9007)

(assert (=> b!829938 (= lt!376566 call!36215)))

(declare-fun e!462722 () ListLongMap!9007)

(assert (=> b!829938 (= e!462722 (+!1948 call!36215 (tuple2!10171 (select (arr!22306 _keys!976) #b00000000000000000000000000000000) (get!11819 (select (arr!22307 _values!788) #b00000000000000000000000000000000) (dynLambda!981 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!829939 () Bool)

(declare-fun e!462724 () Bool)

(declare-fun isEmpty!658 (ListLongMap!9007) Bool)

(assert (=> b!829939 (= e!462724 (isEmpty!658 lt!376567))))

(declare-fun b!829940 () Bool)

(assert (=> b!829940 (= e!462722 call!36215)))

(declare-fun b!829941 () Bool)

(declare-fun e!462723 () Bool)

(declare-fun e!462721 () Bool)

(assert (=> b!829941 (= e!462723 e!462721)))

(assert (=> b!829941 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun res!565399 () Bool)

(assert (=> b!829941 (= res!565399 (contains!4205 lt!376567 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829941 (=> (not res!565399) (not e!462721))))

(declare-fun b!829942 () Bool)

(assert (=> b!829942 (= e!462726 e!462723)))

(declare-fun c!89770 () Bool)

(assert (=> b!829942 (= c!89770 e!462727)))

(declare-fun res!565402 () Bool)

(assert (=> b!829942 (=> (not res!565402) (not e!462727))))

(assert (=> b!829942 (= res!565402 (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun b!829944 () Bool)

(assert (=> b!829944 (= e!462723 e!462724)))

(declare-fun c!89769 () Bool)

(assert (=> b!829944 (= c!89769 (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun d!105243 () Bool)

(assert (=> d!105243 e!462726))

(declare-fun res!565400 () Bool)

(assert (=> d!105243 (=> (not res!565400) (not e!462726))))

(assert (=> d!105243 (= res!565400 (not (contains!4205 lt!376567 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!462725 () ListLongMap!9007)

(assert (=> d!105243 (= lt!376567 e!462725)))

(declare-fun c!89768 () Bool)

(assert (=> d!105243 (= c!89768 (bvsge #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(assert (=> d!105243 (validMask!0 mask!1312)))

(assert (=> d!105243 (= (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376567)))

(declare-fun b!829943 () Bool)

(assert (=> b!829943 (= e!462724 (= lt!376567 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!829945 () Bool)

(assert (=> b!829945 (= e!462725 e!462722)))

(declare-fun c!89771 () Bool)

(assert (=> b!829945 (= c!89771 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829946 () Bool)

(assert (=> b!829946 (= e!462725 (ListLongMap!9008 Nil!15998))))

(declare-fun bm!36212 () Bool)

(assert (=> bm!36212 (= call!36215 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!829947 () Bool)

(assert (=> b!829947 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(assert (=> b!829947 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22728 _values!788)))))

(assert (=> b!829947 (= e!462721 (= (apply!371 lt!376567 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)) (get!11819 (select (arr!22307 _values!788) #b00000000000000000000000000000000) (dynLambda!981 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!105243 c!89768) b!829946))

(assert (= (and d!105243 (not c!89768)) b!829945))

(assert (= (and b!829945 c!89771) b!829938))

(assert (= (and b!829945 (not c!89771)) b!829940))

(assert (= (or b!829938 b!829940) bm!36212))

(assert (= (and d!105243 res!565400) b!829936))

(assert (= (and b!829936 res!565401) b!829942))

(assert (= (and b!829942 res!565402) b!829937))

(assert (= (and b!829942 c!89770) b!829941))

(assert (= (and b!829942 (not c!89770)) b!829944))

(assert (= (and b!829941 res!565399) b!829947))

(assert (= (and b!829944 c!89769) b!829943))

(assert (= (and b!829944 (not c!89769)) b!829939))

(declare-fun b_lambda!11357 () Bool)

(assert (=> (not b_lambda!11357) (not b!829938)))

(assert (=> b!829938 t!22374))

(declare-fun b_and!22535 () Bool)

(assert (= b_and!22533 (and (=> t!22374 result!8017) b_and!22535)))

(declare-fun b_lambda!11359 () Bool)

(assert (=> (not b_lambda!11359) (not b!829947)))

(assert (=> b!829947 t!22374))

(declare-fun b_and!22537 () Bool)

(assert (= b_and!22535 (and (=> t!22374 result!8017) b_and!22537)))

(assert (=> b!829938 m!772967))

(assert (=> b!829938 m!772961))

(assert (=> b!829938 m!772965))

(declare-fun m!773107 () Bool)

(assert (=> b!829938 m!773107))

(declare-fun m!773109 () Bool)

(assert (=> b!829938 m!773109))

(assert (=> b!829938 m!772965))

(assert (=> b!829938 m!772967))

(assert (=> b!829938 m!772969))

(declare-fun m!773111 () Bool)

(assert (=> b!829938 m!773111))

(assert (=> b!829938 m!773111))

(declare-fun m!773113 () Bool)

(assert (=> b!829938 m!773113))

(assert (=> b!829947 m!772967))

(assert (=> b!829947 m!772965))

(assert (=> b!829947 m!772965))

(assert (=> b!829947 m!772967))

(assert (=> b!829947 m!772969))

(assert (=> b!829947 m!772961))

(assert (=> b!829947 m!772961))

(declare-fun m!773115 () Bool)

(assert (=> b!829947 m!773115))

(declare-fun m!773117 () Bool)

(assert (=> b!829939 m!773117))

(assert (=> b!829937 m!772961))

(assert (=> b!829937 m!772961))

(assert (=> b!829937 m!773001))

(declare-fun m!773119 () Bool)

(assert (=> d!105243 m!773119))

(assert (=> d!105243 m!772895))

(declare-fun m!773121 () Bool)

(assert (=> bm!36212 m!773121))

(assert (=> b!829945 m!772961))

(assert (=> b!829945 m!772961))

(assert (=> b!829945 m!773001))

(assert (=> b!829941 m!772961))

(assert (=> b!829941 m!772961))

(declare-fun m!773123 () Bool)

(assert (=> b!829941 m!773123))

(declare-fun m!773125 () Bool)

(assert (=> b!829936 m!773125))

(assert (=> b!829943 m!773121))

(assert (=> b!829776 d!105243))

(declare-fun b!829948 () Bool)

(declare-fun res!565405 () Bool)

(declare-fun e!462733 () Bool)

(assert (=> b!829948 (=> (not res!565405) (not e!462733))))

(declare-fun lt!376574 () ListLongMap!9007)

(assert (=> b!829948 (= res!565405 (not (contains!4205 lt!376574 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!829949 () Bool)

(declare-fun e!462734 () Bool)

(assert (=> b!829949 (= e!462734 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829949 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!829950 () Bool)

(declare-fun lt!376577 () Unit!28429)

(declare-fun lt!376576 () Unit!28429)

(assert (=> b!829950 (= lt!376577 lt!376576)))

(declare-fun lt!376575 () (_ BitVec 64))

(declare-fun lt!376572 () (_ BitVec 64))

(declare-fun lt!376571 () V!25269)

(declare-fun lt!376573 () ListLongMap!9007)

(assert (=> b!829950 (not (contains!4205 (+!1948 lt!376573 (tuple2!10171 lt!376572 lt!376571)) lt!376575))))

(assert (=> b!829950 (= lt!376576 (addStillNotContains!198 lt!376573 lt!376572 lt!376571 lt!376575))))

(assert (=> b!829950 (= lt!376575 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!829950 (= lt!376571 (get!11819 (select (arr!22307 _values!788) #b00000000000000000000000000000000) (dynLambda!981 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!829950 (= lt!376572 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36216 () ListLongMap!9007)

(assert (=> b!829950 (= lt!376573 call!36216)))

(declare-fun e!462729 () ListLongMap!9007)

(assert (=> b!829950 (= e!462729 (+!1948 call!36216 (tuple2!10171 (select (arr!22306 _keys!976) #b00000000000000000000000000000000) (get!11819 (select (arr!22307 _values!788) #b00000000000000000000000000000000) (dynLambda!981 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!829951 () Bool)

(declare-fun e!462731 () Bool)

(assert (=> b!829951 (= e!462731 (isEmpty!658 lt!376574))))

(declare-fun b!829952 () Bool)

(assert (=> b!829952 (= e!462729 call!36216)))

(declare-fun b!829953 () Bool)

(declare-fun e!462730 () Bool)

(declare-fun e!462728 () Bool)

(assert (=> b!829953 (= e!462730 e!462728)))

(assert (=> b!829953 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun res!565403 () Bool)

(assert (=> b!829953 (= res!565403 (contains!4205 lt!376574 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829953 (=> (not res!565403) (not e!462728))))

(declare-fun b!829954 () Bool)

(assert (=> b!829954 (= e!462733 e!462730)))

(declare-fun c!89774 () Bool)

(assert (=> b!829954 (= c!89774 e!462734)))

(declare-fun res!565406 () Bool)

(assert (=> b!829954 (=> (not res!565406) (not e!462734))))

(assert (=> b!829954 (= res!565406 (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun b!829956 () Bool)

(assert (=> b!829956 (= e!462730 e!462731)))

(declare-fun c!89773 () Bool)

(assert (=> b!829956 (= c!89773 (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(declare-fun d!105245 () Bool)

(assert (=> d!105245 e!462733))

(declare-fun res!565404 () Bool)

(assert (=> d!105245 (=> (not res!565404) (not e!462733))))

(assert (=> d!105245 (= res!565404 (not (contains!4205 lt!376574 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!462732 () ListLongMap!9007)

(assert (=> d!105245 (= lt!376574 e!462732)))

(declare-fun c!89772 () Bool)

(assert (=> d!105245 (= c!89772 (bvsge #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(assert (=> d!105245 (validMask!0 mask!1312)))

(assert (=> d!105245 (= (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376574)))

(declare-fun b!829955 () Bool)

(assert (=> b!829955 (= e!462731 (= lt!376574 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!829957 () Bool)

(assert (=> b!829957 (= e!462732 e!462729)))

(declare-fun c!89775 () Bool)

(assert (=> b!829957 (= c!89775 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829958 () Bool)

(assert (=> b!829958 (= e!462732 (ListLongMap!9008 Nil!15998))))

(declare-fun bm!36213 () Bool)

(assert (=> bm!36213 (= call!36216 (getCurrentListMapNoExtraKeys!2519 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!829959 () Bool)

(assert (=> b!829959 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(assert (=> b!829959 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22728 _values!788)))))

(assert (=> b!829959 (= e!462728 (= (apply!371 lt!376574 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)) (get!11819 (select (arr!22307 _values!788) #b00000000000000000000000000000000) (dynLambda!981 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!105245 c!89772) b!829958))

(assert (= (and d!105245 (not c!89772)) b!829957))

(assert (= (and b!829957 c!89775) b!829950))

(assert (= (and b!829957 (not c!89775)) b!829952))

(assert (= (or b!829950 b!829952) bm!36213))

(assert (= (and d!105245 res!565404) b!829948))

(assert (= (and b!829948 res!565405) b!829954))

(assert (= (and b!829954 res!565406) b!829949))

(assert (= (and b!829954 c!89774) b!829953))

(assert (= (and b!829954 (not c!89774)) b!829956))

(assert (= (and b!829953 res!565403) b!829959))

(assert (= (and b!829956 c!89773) b!829955))

(assert (= (and b!829956 (not c!89773)) b!829951))

(declare-fun b_lambda!11361 () Bool)

(assert (=> (not b_lambda!11361) (not b!829950)))

(assert (=> b!829950 t!22374))

(declare-fun b_and!22539 () Bool)

(assert (= b_and!22537 (and (=> t!22374 result!8017) b_and!22539)))

(declare-fun b_lambda!11363 () Bool)

(assert (=> (not b_lambda!11363) (not b!829959)))

(assert (=> b!829959 t!22374))

(declare-fun b_and!22541 () Bool)

(assert (= b_and!22539 (and (=> t!22374 result!8017) b_and!22541)))

(assert (=> b!829950 m!772967))

(assert (=> b!829950 m!772961))

(assert (=> b!829950 m!772965))

(declare-fun m!773127 () Bool)

(assert (=> b!829950 m!773127))

(declare-fun m!773129 () Bool)

(assert (=> b!829950 m!773129))

(assert (=> b!829950 m!772965))

(assert (=> b!829950 m!772967))

(assert (=> b!829950 m!772969))

(declare-fun m!773131 () Bool)

(assert (=> b!829950 m!773131))

(assert (=> b!829950 m!773131))

(declare-fun m!773133 () Bool)

(assert (=> b!829950 m!773133))

(assert (=> b!829959 m!772967))

(assert (=> b!829959 m!772965))

(assert (=> b!829959 m!772965))

(assert (=> b!829959 m!772967))

(assert (=> b!829959 m!772969))

(assert (=> b!829959 m!772961))

(assert (=> b!829959 m!772961))

(declare-fun m!773135 () Bool)

(assert (=> b!829959 m!773135))

(declare-fun m!773137 () Bool)

(assert (=> b!829951 m!773137))

(assert (=> b!829949 m!772961))

(assert (=> b!829949 m!772961))

(assert (=> b!829949 m!773001))

(declare-fun m!773139 () Bool)

(assert (=> d!105245 m!773139))

(assert (=> d!105245 m!772895))

(declare-fun m!773141 () Bool)

(assert (=> bm!36213 m!773141))

(assert (=> b!829957 m!772961))

(assert (=> b!829957 m!772961))

(assert (=> b!829957 m!773001))

(assert (=> b!829953 m!772961))

(assert (=> b!829953 m!772961))

(declare-fun m!773143 () Bool)

(assert (=> b!829953 m!773143))

(declare-fun m!773145 () Bool)

(assert (=> b!829948 m!773145))

(assert (=> b!829955 m!773141))

(assert (=> b!829776 d!105245))

(declare-fun b!829970 () Bool)

(declare-fun e!462745 () Bool)

(declare-fun e!462744 () Bool)

(assert (=> b!829970 (= e!462745 e!462744)))

(declare-fun res!565414 () Bool)

(assert (=> b!829970 (=> (not res!565414) (not e!462744))))

(declare-fun e!462743 () Bool)

(assert (=> b!829970 (= res!565414 (not e!462743))))

(declare-fun res!565415 () Bool)

(assert (=> b!829970 (=> (not res!565415) (not e!462743))))

(assert (=> b!829970 (= res!565415 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105247 () Bool)

(declare-fun res!565413 () Bool)

(assert (=> d!105247 (=> res!565413 e!462745)))

(assert (=> d!105247 (= res!565413 (bvsge #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(assert (=> d!105247 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15997) e!462745)))

(declare-fun bm!36216 () Bool)

(declare-fun call!36219 () Bool)

(declare-fun c!89778 () Bool)

(assert (=> bm!36216 (= call!36219 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89778 (Cons!15996 (select (arr!22306 _keys!976) #b00000000000000000000000000000000) Nil!15997) Nil!15997)))))

(declare-fun b!829971 () Bool)

(declare-fun e!462746 () Bool)

(assert (=> b!829971 (= e!462744 e!462746)))

(assert (=> b!829971 (= c!89778 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829972 () Bool)

(assert (=> b!829972 (= e!462746 call!36219)))

(declare-fun b!829973 () Bool)

(assert (=> b!829973 (= e!462746 call!36219)))

(declare-fun b!829974 () Bool)

(declare-fun contains!4207 (List!16000 (_ BitVec 64)) Bool)

(assert (=> b!829974 (= e!462743 (contains!4207 Nil!15997 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105247 (not res!565413)) b!829970))

(assert (= (and b!829970 res!565415) b!829974))

(assert (= (and b!829970 res!565414) b!829971))

(assert (= (and b!829971 c!89778) b!829973))

(assert (= (and b!829971 (not c!89778)) b!829972))

(assert (= (or b!829973 b!829972) bm!36216))

(assert (=> b!829970 m!772961))

(assert (=> b!829970 m!772961))

(assert (=> b!829970 m!773001))

(assert (=> bm!36216 m!772961))

(declare-fun m!773147 () Bool)

(assert (=> bm!36216 m!773147))

(assert (=> b!829971 m!772961))

(assert (=> b!829971 m!772961))

(assert (=> b!829971 m!773001))

(assert (=> b!829974 m!772961))

(assert (=> b!829974 m!772961))

(declare-fun m!773149 () Bool)

(assert (=> b!829974 m!773149))

(assert (=> b!829774 d!105247))

(declare-fun b!829984 () Bool)

(declare-fun e!462754 () Bool)

(declare-fun call!36222 () Bool)

(assert (=> b!829984 (= e!462754 call!36222)))

(declare-fun b!829985 () Bool)

(declare-fun e!462753 () Bool)

(declare-fun e!462755 () Bool)

(assert (=> b!829985 (= e!462753 e!462755)))

(declare-fun c!89781 () Bool)

(assert (=> b!829985 (= c!89781 (validKeyInArray!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829986 () Bool)

(assert (=> b!829986 (= e!462755 e!462754)))

(declare-fun lt!376586 () (_ BitVec 64))

(assert (=> b!829986 (= lt!376586 (select (arr!22306 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376585 () Unit!28429)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46546 (_ BitVec 64) (_ BitVec 32)) Unit!28429)

(assert (=> b!829986 (= lt!376585 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!376586 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!829986 (arrayContainsKey!0 _keys!976 lt!376586 #b00000000000000000000000000000000)))

(declare-fun lt!376584 () Unit!28429)

(assert (=> b!829986 (= lt!376584 lt!376585)))

(declare-fun res!565420 () Bool)

(declare-datatypes ((SeekEntryResult!8732 0))(
  ( (MissingZero!8732 (index!37298 (_ BitVec 32))) (Found!8732 (index!37299 (_ BitVec 32))) (Intermediate!8732 (undefined!9544 Bool) (index!37300 (_ BitVec 32)) (x!70071 (_ BitVec 32))) (Undefined!8732) (MissingVacant!8732 (index!37301 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46546 (_ BitVec 32)) SeekEntryResult!8732)

(assert (=> b!829986 (= res!565420 (= (seekEntryOrOpen!0 (select (arr!22306 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8732 #b00000000000000000000000000000000)))))

(assert (=> b!829986 (=> (not res!565420) (not e!462754))))

(declare-fun bm!36219 () Bool)

(assert (=> bm!36219 (= call!36222 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun d!105249 () Bool)

(declare-fun res!565421 () Bool)

(assert (=> d!105249 (=> res!565421 e!462753)))

(assert (=> d!105249 (= res!565421 (bvsge #b00000000000000000000000000000000 (size!22727 _keys!976)))))

(assert (=> d!105249 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!462753)))

(declare-fun b!829983 () Bool)

(assert (=> b!829983 (= e!462755 call!36222)))

(assert (= (and d!105249 (not res!565421)) b!829985))

(assert (= (and b!829985 c!89781) b!829986))

(assert (= (and b!829985 (not c!89781)) b!829983))

(assert (= (and b!829986 res!565420) b!829984))

(assert (= (or b!829984 b!829983) bm!36219))

(assert (=> b!829985 m!772961))

(assert (=> b!829985 m!772961))

(assert (=> b!829985 m!773001))

(assert (=> b!829986 m!772961))

(declare-fun m!773151 () Bool)

(assert (=> b!829986 m!773151))

(declare-fun m!773153 () Bool)

(assert (=> b!829986 m!773153))

(assert (=> b!829986 m!772961))

(declare-fun m!773155 () Bool)

(assert (=> b!829986 m!773155))

(declare-fun m!773157 () Bool)

(assert (=> bm!36219 m!773157))

(assert (=> b!829779 d!105249))

(declare-fun d!105251 () Bool)

(assert (=> d!105251 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71488 d!105251))

(declare-fun d!105253 () Bool)

(assert (=> d!105253 (= (array_inv!17743 _keys!976) (bvsge (size!22727 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71488 d!105253))

(declare-fun d!105255 () Bool)

(assert (=> d!105255 (= (array_inv!17744 _values!788) (bvsge (size!22728 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71488 d!105255))

(declare-fun b!829993 () Bool)

(declare-fun e!462761 () Bool)

(assert (=> b!829993 (= e!462761 tp_is_empty!15201)))

(declare-fun condMapEmpty!24457 () Bool)

(declare-fun mapDefault!24457 () ValueCell!7185)

(assert (=> mapNonEmpty!24451 (= condMapEmpty!24457 (= mapRest!24451 ((as const (Array (_ BitVec 32) ValueCell!7185)) mapDefault!24457)))))

(declare-fun e!462760 () Bool)

(declare-fun mapRes!24457 () Bool)

(assert (=> mapNonEmpty!24451 (= tp!47257 (and e!462760 mapRes!24457))))

(declare-fun mapIsEmpty!24457 () Bool)

(assert (=> mapIsEmpty!24457 mapRes!24457))

(declare-fun mapNonEmpty!24457 () Bool)

(declare-fun tp!47266 () Bool)

(assert (=> mapNonEmpty!24457 (= mapRes!24457 (and tp!47266 e!462761))))

(declare-fun mapRest!24457 () (Array (_ BitVec 32) ValueCell!7185))

(declare-fun mapKey!24457 () (_ BitVec 32))

(declare-fun mapValue!24457 () ValueCell!7185)

(assert (=> mapNonEmpty!24457 (= mapRest!24451 (store mapRest!24457 mapKey!24457 mapValue!24457))))

(declare-fun b!829994 () Bool)

(assert (=> b!829994 (= e!462760 tp_is_empty!15201)))

(assert (= (and mapNonEmpty!24451 condMapEmpty!24457) mapIsEmpty!24457))

(assert (= (and mapNonEmpty!24451 (not condMapEmpty!24457)) mapNonEmpty!24457))

(assert (= (and mapNonEmpty!24457 ((_ is ValueCellFull!7185) mapValue!24457)) b!829993))

(assert (= (and mapNonEmpty!24451 ((_ is ValueCellFull!7185) mapDefault!24457)) b!829994))

(declare-fun m!773159 () Bool)

(assert (=> mapNonEmpty!24457 m!773159))

(declare-fun b_lambda!11365 () Bool)

(assert (= b_lambda!11359 (or (and start!71488 b_free!13491) b_lambda!11365)))

(declare-fun b_lambda!11367 () Bool)

(assert (= b_lambda!11361 (or (and start!71488 b_free!13491) b_lambda!11367)))

(declare-fun b_lambda!11369 () Bool)

(assert (= b_lambda!11357 (or (and start!71488 b_free!13491) b_lambda!11369)))

(declare-fun b_lambda!11371 () Bool)

(assert (= b_lambda!11355 (or (and start!71488 b_free!13491) b_lambda!11371)))

(declare-fun b_lambda!11373 () Bool)

(assert (= b_lambda!11363 (or (and start!71488 b_free!13491) b_lambda!11373)))

(declare-fun b_lambda!11375 () Bool)

(assert (= b_lambda!11353 (or (and start!71488 b_free!13491) b_lambda!11375)))

(check-sat (not b!829885) (not d!105237) (not d!105233) (not b!829871) (not bm!36216) (not b!829910) (not b!829900) (not b!829936) (not b!829904) (not b!829873) (not bm!36196) (not bm!36199) (not b!829974) (not b!829955) (not b!829970) (not b!829911) (not bm!36213) (not bm!36203) (not b_lambda!11365) (not b!829856) (not b!829883) (not b!829947) (not b!829971) tp_is_empty!15201 (not b_lambda!11369) (not b!829866) (not bm!36200) (not b_next!13491) (not b!829943) (not b!829887) (not b!829875) (not d!105241) (not b!829869) (not b!829957) (not b!829859) (not b_lambda!11371) (not b!829937) (not b!829908) (not b!829884) (not d!105239) (not b!829902) (not b!829938) (not d!105229) (not bm!36207) (not b!829888) (not b!829945) (not b_lambda!11375) (not b!829941) (not b!829939) (not b!829886) (not b!829890) (not b!829959) (not d!105245) (not b_lambda!11373) (not bm!36205) (not bm!36198) (not b!829948) (not b!829985) (not b!829951) (not d!105243) (not bm!36219) (not b!829906) (not b_lambda!11367) (not b!829897) (not b!829857) (not b!829950) (not b!829909) b_and!22541 (not bm!36206) (not mapNonEmpty!24457) (not b!829949) (not d!105231) (not b!829986) (not b!829953) (not bm!36212) (not d!105235))
(check-sat b_and!22541 (not b_next!13491))

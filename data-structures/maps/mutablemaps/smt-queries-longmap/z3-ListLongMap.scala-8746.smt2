; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106156 () Bool)

(assert start!106156)

(declare-fun b_free!27513 () Bool)

(declare-fun b_next!27513 () Bool)

(assert (=> start!106156 (= b_free!27513 (not b_next!27513))))

(declare-fun tp!96095 () Bool)

(declare-fun b_and!45519 () Bool)

(assert (=> start!106156 (= tp!96095 b_and!45519)))

(declare-fun b!1263456 () Bool)

(declare-fun res!841639 () Bool)

(declare-fun e!719367 () Bool)

(assert (=> b!1263456 (=> (not res!841639) (not e!719367))))

(declare-datatypes ((array!82437 0))(
  ( (array!82438 (arr!39759 (Array (_ BitVec 32) (_ BitVec 64))) (size!40296 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82437)

(declare-datatypes ((List!28427 0))(
  ( (Nil!28424) (Cons!28423 (h!29632 (_ BitVec 64)) (t!41949 List!28427)) )
))
(declare-fun arrayNoDuplicates!0 (array!82437 (_ BitVec 32) List!28427) Bool)

(assert (=> b!1263456 (= res!841639 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28424))))

(declare-fun res!841638 () Bool)

(assert (=> start!106156 (=> (not res!841638) (not e!719367))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106156 (= res!841638 (validMask!0 mask!1466))))

(assert (=> start!106156 e!719367))

(assert (=> start!106156 true))

(assert (=> start!106156 tp!96095))

(declare-fun tp_is_empty!32415 () Bool)

(assert (=> start!106156 tp_is_empty!32415))

(declare-fun array_inv!30219 (array!82437) Bool)

(assert (=> start!106156 (array_inv!30219 _keys!1118)))

(declare-datatypes ((V!48585 0))(
  ( (V!48586 (val!16270 Int)) )
))
(declare-datatypes ((ValueCell!15444 0))(
  ( (ValueCellFull!15444 (v!18981 V!48585)) (EmptyCell!15444) )
))
(declare-datatypes ((array!82439 0))(
  ( (array!82440 (arr!39760 (Array (_ BitVec 32) ValueCell!15444)) (size!40297 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82439)

(declare-fun e!719368 () Bool)

(declare-fun array_inv!30220 (array!82439) Bool)

(assert (=> start!106156 (and (array_inv!30220 _values!914) e!719368)))

(declare-fun b!1263457 () Bool)

(declare-fun e!719365 () Bool)

(assert (=> b!1263457 (= e!719367 (not e!719365))))

(declare-fun res!841640 () Bool)

(assert (=> b!1263457 (=> res!841640 e!719365)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1263457 (= res!841640 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21208 0))(
  ( (tuple2!21209 (_1!10614 (_ BitVec 64)) (_2!10614 V!48585)) )
))
(declare-datatypes ((List!28428 0))(
  ( (Nil!28425) (Cons!28424 (h!29633 tuple2!21208) (t!41950 List!28428)) )
))
(declare-datatypes ((ListLongMap!19093 0))(
  ( (ListLongMap!19094 (toList!9562 List!28428)) )
))
(declare-fun lt!573013 () ListLongMap!19093)

(declare-fun lt!573014 () ListLongMap!19093)

(assert (=> b!1263457 (= lt!573013 lt!573014)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!42066 0))(
  ( (Unit!42067) )
))
(declare-fun lt!573012 () Unit!42066)

(declare-fun minValueAfter!43 () V!48585)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48585)

(declare-fun minValueBefore!43 () V!48585)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1198 (array!82437 array!82439 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48585 V!48585 V!48585 V!48585 (_ BitVec 32) Int) Unit!42066)

(assert (=> b!1263457 (= lt!573012 (lemmaNoChangeToArrayThenSameMapNoExtras!1198 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5902 (array!82437 array!82439 (_ BitVec 32) (_ BitVec 32) V!48585 V!48585 (_ BitVec 32) Int) ListLongMap!19093)

(assert (=> b!1263457 (= lt!573014 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263457 (= lt!573013 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263458 () Bool)

(declare-fun res!841641 () Bool)

(assert (=> b!1263458 (=> (not res!841641) (not e!719367))))

(assert (=> b!1263458 (= res!841641 (and (= (size!40297 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40296 _keys!1118) (size!40297 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263459 () Bool)

(declare-fun e!719369 () Bool)

(assert (=> b!1263459 (= e!719369 tp_is_empty!32415)))

(declare-fun mapNonEmpty!50449 () Bool)

(declare-fun mapRes!50449 () Bool)

(declare-fun tp!96096 () Bool)

(declare-fun e!719366 () Bool)

(assert (=> mapNonEmpty!50449 (= mapRes!50449 (and tp!96096 e!719366))))

(declare-fun mapRest!50449 () (Array (_ BitVec 32) ValueCell!15444))

(declare-fun mapKey!50449 () (_ BitVec 32))

(declare-fun mapValue!50449 () ValueCell!15444)

(assert (=> mapNonEmpty!50449 (= (arr!39760 _values!914) (store mapRest!50449 mapKey!50449 mapValue!50449))))

(declare-fun b!1263460 () Bool)

(assert (=> b!1263460 (= e!719368 (and e!719369 mapRes!50449))))

(declare-fun condMapEmpty!50449 () Bool)

(declare-fun mapDefault!50449 () ValueCell!15444)

(assert (=> b!1263460 (= condMapEmpty!50449 (= (arr!39760 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15444)) mapDefault!50449)))))

(declare-fun b!1263461 () Bool)

(declare-fun res!841637 () Bool)

(assert (=> b!1263461 (=> (not res!841637) (not e!719367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82437 (_ BitVec 32)) Bool)

(assert (=> b!1263461 (= res!841637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1263462 () Bool)

(declare-fun getCurrentListMap!4665 (array!82437 array!82439 (_ BitVec 32) (_ BitVec 32) V!48585 V!48585 (_ BitVec 32) Int) ListLongMap!19093)

(declare-fun +!4227 (ListLongMap!19093 tuple2!21208) ListLongMap!19093)

(assert (=> b!1263462 (= e!719365 (= (getCurrentListMap!4665 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4227 (+!4227 lt!573013 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!573015 () ListLongMap!19093)

(assert (=> b!1263462 (= lt!573015 (getCurrentListMap!4665 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50449 () Bool)

(assert (=> mapIsEmpty!50449 mapRes!50449))

(declare-fun b!1263463 () Bool)

(assert (=> b!1263463 (= e!719366 tp_is_empty!32415)))

(assert (= (and start!106156 res!841638) b!1263458))

(assert (= (and b!1263458 res!841641) b!1263461))

(assert (= (and b!1263461 res!841637) b!1263456))

(assert (= (and b!1263456 res!841639) b!1263457))

(assert (= (and b!1263457 (not res!841640)) b!1263462))

(assert (= (and b!1263460 condMapEmpty!50449) mapIsEmpty!50449))

(assert (= (and b!1263460 (not condMapEmpty!50449)) mapNonEmpty!50449))

(get-info :version)

(assert (= (and mapNonEmpty!50449 ((_ is ValueCellFull!15444) mapValue!50449)) b!1263463))

(assert (= (and b!1263460 ((_ is ValueCellFull!15444) mapDefault!50449)) b!1263459))

(assert (= start!106156 b!1263460))

(declare-fun m!1163985 () Bool)

(assert (=> b!1263461 m!1163985))

(declare-fun m!1163987 () Bool)

(assert (=> mapNonEmpty!50449 m!1163987))

(declare-fun m!1163989 () Bool)

(assert (=> start!106156 m!1163989))

(declare-fun m!1163991 () Bool)

(assert (=> start!106156 m!1163991))

(declare-fun m!1163993 () Bool)

(assert (=> start!106156 m!1163993))

(declare-fun m!1163995 () Bool)

(assert (=> b!1263462 m!1163995))

(declare-fun m!1163997 () Bool)

(assert (=> b!1263462 m!1163997))

(assert (=> b!1263462 m!1163997))

(declare-fun m!1163999 () Bool)

(assert (=> b!1263462 m!1163999))

(declare-fun m!1164001 () Bool)

(assert (=> b!1263462 m!1164001))

(declare-fun m!1164003 () Bool)

(assert (=> b!1263456 m!1164003))

(declare-fun m!1164005 () Bool)

(assert (=> b!1263457 m!1164005))

(declare-fun m!1164007 () Bool)

(assert (=> b!1263457 m!1164007))

(declare-fun m!1164009 () Bool)

(assert (=> b!1263457 m!1164009))

(check-sat (not b!1263457) b_and!45519 tp_is_empty!32415 (not b!1263456) (not b_next!27513) (not mapNonEmpty!50449) (not start!106156) (not b!1263462) (not b!1263461))
(check-sat b_and!45519 (not b_next!27513))
(get-model)

(declare-fun d!138559 () Bool)

(assert (=> d!138559 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!106156 d!138559))

(declare-fun d!138561 () Bool)

(assert (=> d!138561 (= (array_inv!30219 _keys!1118) (bvsge (size!40296 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!106156 d!138561))

(declare-fun d!138563 () Bool)

(assert (=> d!138563 (= (array_inv!30220 _values!914) (bvsge (size!40297 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!106156 d!138563))

(declare-fun bm!62226 () Bool)

(declare-fun call!62229 () ListLongMap!19093)

(declare-fun call!62235 () ListLongMap!19093)

(assert (=> bm!62226 (= call!62229 call!62235)))

(declare-fun b!1263530 () Bool)

(declare-fun e!719424 () Bool)

(declare-fun e!719426 () Bool)

(assert (=> b!1263530 (= e!719424 e!719426)))

(declare-fun res!841680 () Bool)

(assert (=> b!1263530 (=> (not res!841680) (not e!719426))))

(declare-fun lt!573089 () ListLongMap!19093)

(declare-fun contains!7624 (ListLongMap!19093 (_ BitVec 64)) Bool)

(assert (=> b!1263530 (= res!841680 (contains!7624 lt!573089 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263530 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun b!1263531 () Bool)

(declare-fun e!719418 () Bool)

(declare-fun call!62231 () Bool)

(assert (=> b!1263531 (= e!719418 (not call!62231))))

(declare-fun b!1263532 () Bool)

(declare-fun res!841677 () Bool)

(declare-fun e!719420 () Bool)

(assert (=> b!1263532 (=> (not res!841677) (not e!719420))))

(assert (=> b!1263532 (= res!841677 e!719418)))

(declare-fun c!122952 () Bool)

(assert (=> b!1263532 (= c!122952 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1263533 () Bool)

(declare-fun e!719417 () Unit!42066)

(declare-fun lt!573074 () Unit!42066)

(assert (=> b!1263533 (= e!719417 lt!573074)))

(declare-fun lt!573091 () ListLongMap!19093)

(assert (=> b!1263533 (= lt!573091 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573087 () (_ BitVec 64))

(assert (=> b!1263533 (= lt!573087 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573075 () (_ BitVec 64))

(assert (=> b!1263533 (= lt!573075 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573088 () Unit!42066)

(declare-fun addStillContains!1108 (ListLongMap!19093 (_ BitVec 64) V!48585 (_ BitVec 64)) Unit!42066)

(assert (=> b!1263533 (= lt!573088 (addStillContains!1108 lt!573091 lt!573087 zeroValue!871 lt!573075))))

(assert (=> b!1263533 (contains!7624 (+!4227 lt!573091 (tuple2!21209 lt!573087 zeroValue!871)) lt!573075)))

(declare-fun lt!573080 () Unit!42066)

(assert (=> b!1263533 (= lt!573080 lt!573088)))

(declare-fun lt!573079 () ListLongMap!19093)

(assert (=> b!1263533 (= lt!573079 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573073 () (_ BitVec 64))

(assert (=> b!1263533 (= lt!573073 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573081 () (_ BitVec 64))

(assert (=> b!1263533 (= lt!573081 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573082 () Unit!42066)

(declare-fun addApplyDifferent!542 (ListLongMap!19093 (_ BitVec 64) V!48585 (_ BitVec 64)) Unit!42066)

(assert (=> b!1263533 (= lt!573082 (addApplyDifferent!542 lt!573079 lt!573073 minValueBefore!43 lt!573081))))

(declare-fun apply!1037 (ListLongMap!19093 (_ BitVec 64)) V!48585)

(assert (=> b!1263533 (= (apply!1037 (+!4227 lt!573079 (tuple2!21209 lt!573073 minValueBefore!43)) lt!573081) (apply!1037 lt!573079 lt!573081))))

(declare-fun lt!573086 () Unit!42066)

(assert (=> b!1263533 (= lt!573086 lt!573082)))

(declare-fun lt!573085 () ListLongMap!19093)

(assert (=> b!1263533 (= lt!573085 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573084 () (_ BitVec 64))

(assert (=> b!1263533 (= lt!573084 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573077 () (_ BitVec 64))

(assert (=> b!1263533 (= lt!573077 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573072 () Unit!42066)

(assert (=> b!1263533 (= lt!573072 (addApplyDifferent!542 lt!573085 lt!573084 zeroValue!871 lt!573077))))

(assert (=> b!1263533 (= (apply!1037 (+!4227 lt!573085 (tuple2!21209 lt!573084 zeroValue!871)) lt!573077) (apply!1037 lt!573085 lt!573077))))

(declare-fun lt!573090 () Unit!42066)

(assert (=> b!1263533 (= lt!573090 lt!573072)))

(declare-fun lt!573083 () ListLongMap!19093)

(assert (=> b!1263533 (= lt!573083 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573076 () (_ BitVec 64))

(assert (=> b!1263533 (= lt!573076 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573093 () (_ BitVec 64))

(assert (=> b!1263533 (= lt!573093 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263533 (= lt!573074 (addApplyDifferent!542 lt!573083 lt!573076 minValueBefore!43 lt!573093))))

(assert (=> b!1263533 (= (apply!1037 (+!4227 lt!573083 (tuple2!21209 lt!573076 minValueBefore!43)) lt!573093) (apply!1037 lt!573083 lt!573093))))

(declare-fun b!1263534 () Bool)

(declare-fun e!719419 () Bool)

(assert (=> b!1263534 (= e!719418 e!719419)))

(declare-fun res!841676 () Bool)

(assert (=> b!1263534 (= res!841676 call!62231)))

(assert (=> b!1263534 (=> (not res!841676) (not e!719419))))

(declare-fun b!1263535 () Bool)

(declare-fun e!719425 () Bool)

(declare-fun call!62232 () Bool)

(assert (=> b!1263535 (= e!719425 (not call!62232))))

(declare-fun b!1263537 () Bool)

(declare-fun e!719414 () ListLongMap!19093)

(assert (=> b!1263537 (= e!719414 (+!4227 call!62235 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun bm!62227 () Bool)

(declare-fun call!62230 () ListLongMap!19093)

(assert (=> bm!62227 (= call!62230 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263538 () Bool)

(declare-fun e!719416 () Bool)

(assert (=> b!1263538 (= e!719425 e!719416)))

(declare-fun res!841682 () Bool)

(assert (=> b!1263538 (= res!841682 call!62232)))

(assert (=> b!1263538 (=> (not res!841682) (not e!719416))))

(declare-fun bm!62228 () Bool)

(declare-fun call!62234 () ListLongMap!19093)

(declare-fun call!62233 () ListLongMap!19093)

(assert (=> bm!62228 (= call!62234 call!62233)))

(declare-fun b!1263539 () Bool)

(declare-fun get!20331 (ValueCell!15444 V!48585) V!48585)

(declare-fun dynLambda!3482 (Int (_ BitVec 64)) V!48585)

(assert (=> b!1263539 (= e!719426 (= (apply!1037 lt!573089 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)) (get!20331 (select (arr!39760 _values!914) #b00000000000000000000000000000000) (dynLambda!3482 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1263539 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40297 _values!914)))))

(assert (=> b!1263539 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun b!1263540 () Bool)

(assert (=> b!1263540 (= e!719416 (= (apply!1037 lt!573089 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1263541 () Bool)

(declare-fun e!719415 () ListLongMap!19093)

(assert (=> b!1263541 (= e!719415 call!62229)))

(declare-fun b!1263542 () Bool)

(declare-fun e!719421 () ListLongMap!19093)

(assert (=> b!1263542 (= e!719421 call!62234)))

(declare-fun b!1263543 () Bool)

(declare-fun Unit!42068 () Unit!42066)

(assert (=> b!1263543 (= e!719417 Unit!42068)))

(declare-fun b!1263544 () Bool)

(assert (=> b!1263544 (= e!719419 (= (apply!1037 lt!573089 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1263545 () Bool)

(declare-fun e!719422 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1263545 (= e!719422 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62229 () Bool)

(assert (=> bm!62229 (= call!62232 (contains!7624 lt!573089 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263546 () Bool)

(declare-fun res!841678 () Bool)

(assert (=> b!1263546 (=> (not res!841678) (not e!719420))))

(assert (=> b!1263546 (= res!841678 e!719424)))

(declare-fun res!841679 () Bool)

(assert (=> b!1263546 (=> res!841679 e!719424)))

(assert (=> b!1263546 (= res!841679 (not e!719422))))

(declare-fun res!841675 () Bool)

(assert (=> b!1263546 (=> (not res!841675) (not e!719422))))

(assert (=> b!1263546 (= res!841675 (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun d!138565 () Bool)

(assert (=> d!138565 e!719420))

(declare-fun res!841683 () Bool)

(assert (=> d!138565 (=> (not res!841683) (not e!719420))))

(assert (=> d!138565 (= res!841683 (or (bvsge #b00000000000000000000000000000000 (size!40296 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))))

(declare-fun lt!573078 () ListLongMap!19093)

(assert (=> d!138565 (= lt!573089 lt!573078)))

(declare-fun lt!573092 () Unit!42066)

(assert (=> d!138565 (= lt!573092 e!719417)))

(declare-fun c!122956 () Bool)

(declare-fun e!719423 () Bool)

(assert (=> d!138565 (= c!122956 e!719423)))

(declare-fun res!841681 () Bool)

(assert (=> d!138565 (=> (not res!841681) (not e!719423))))

(assert (=> d!138565 (= res!841681 (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (=> d!138565 (= lt!573078 e!719414)))

(declare-fun c!122953 () Bool)

(assert (=> d!138565 (= c!122953 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138565 (validMask!0 mask!1466)))

(assert (=> d!138565 (= (getCurrentListMap!4665 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573089)))

(declare-fun b!1263536 () Bool)

(declare-fun c!122955 () Bool)

(assert (=> b!1263536 (= c!122955 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1263536 (= e!719415 e!719421)))

(declare-fun bm!62230 () Bool)

(assert (=> bm!62230 (= call!62231 (contains!7624 lt!573089 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263547 () Bool)

(assert (=> b!1263547 (= e!719420 e!719425)))

(declare-fun c!122954 () Bool)

(assert (=> b!1263547 (= c!122954 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62231 () Bool)

(declare-fun c!122951 () Bool)

(assert (=> bm!62231 (= call!62235 (+!4227 (ite c!122953 call!62230 (ite c!122951 call!62233 call!62234)) (ite (or c!122953 c!122951) (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun bm!62232 () Bool)

(assert (=> bm!62232 (= call!62233 call!62230)))

(declare-fun b!1263548 () Bool)

(assert (=> b!1263548 (= e!719421 call!62229)))

(declare-fun b!1263549 () Bool)

(assert (=> b!1263549 (= e!719414 e!719415)))

(assert (=> b!1263549 (= c!122951 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263550 () Bool)

(assert (=> b!1263550 (= e!719423 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138565 c!122953) b!1263537))

(assert (= (and d!138565 (not c!122953)) b!1263549))

(assert (= (and b!1263549 c!122951) b!1263541))

(assert (= (and b!1263549 (not c!122951)) b!1263536))

(assert (= (and b!1263536 c!122955) b!1263548))

(assert (= (and b!1263536 (not c!122955)) b!1263542))

(assert (= (or b!1263548 b!1263542) bm!62228))

(assert (= (or b!1263541 bm!62228) bm!62232))

(assert (= (or b!1263541 b!1263548) bm!62226))

(assert (= (or b!1263537 bm!62232) bm!62227))

(assert (= (or b!1263537 bm!62226) bm!62231))

(assert (= (and d!138565 res!841681) b!1263550))

(assert (= (and d!138565 c!122956) b!1263533))

(assert (= (and d!138565 (not c!122956)) b!1263543))

(assert (= (and d!138565 res!841683) b!1263546))

(assert (= (and b!1263546 res!841675) b!1263545))

(assert (= (and b!1263546 (not res!841679)) b!1263530))

(assert (= (and b!1263530 res!841680) b!1263539))

(assert (= (and b!1263546 res!841678) b!1263532))

(assert (= (and b!1263532 c!122952) b!1263534))

(assert (= (and b!1263532 (not c!122952)) b!1263531))

(assert (= (and b!1263534 res!841676) b!1263544))

(assert (= (or b!1263534 b!1263531) bm!62230))

(assert (= (and b!1263532 res!841677) b!1263547))

(assert (= (and b!1263547 c!122954) b!1263538))

(assert (= (and b!1263547 (not c!122954)) b!1263535))

(assert (= (and b!1263538 res!841682) b!1263540))

(assert (= (or b!1263538 b!1263535) bm!62229))

(declare-fun b_lambda!22977 () Bool)

(assert (=> (not b_lambda!22977) (not b!1263539)))

(declare-fun t!41953 () Bool)

(declare-fun tb!11339 () Bool)

(assert (=> (and start!106156 (= defaultEntry!922 defaultEntry!922) t!41953) tb!11339))

(declare-fun result!23409 () Bool)

(assert (=> tb!11339 (= result!23409 tp_is_empty!32415)))

(assert (=> b!1263539 t!41953))

(declare-fun b_and!45523 () Bool)

(assert (= b_and!45519 (and (=> t!41953 result!23409) b_and!45523)))

(assert (=> d!138565 m!1163989))

(declare-fun m!1164037 () Bool)

(assert (=> b!1263540 m!1164037))

(declare-fun m!1164039 () Bool)

(assert (=> bm!62229 m!1164039))

(declare-fun m!1164041 () Bool)

(assert (=> bm!62231 m!1164041))

(declare-fun m!1164043 () Bool)

(assert (=> b!1263550 m!1164043))

(assert (=> b!1263550 m!1164043))

(declare-fun m!1164045 () Bool)

(assert (=> b!1263550 m!1164045))

(declare-fun m!1164047 () Bool)

(assert (=> b!1263537 m!1164047))

(assert (=> b!1263533 m!1164043))

(declare-fun m!1164049 () Bool)

(assert (=> b!1263533 m!1164049))

(declare-fun m!1164051 () Bool)

(assert (=> b!1263533 m!1164051))

(declare-fun m!1164053 () Bool)

(assert (=> b!1263533 m!1164053))

(declare-fun m!1164055 () Bool)

(assert (=> b!1263533 m!1164055))

(declare-fun m!1164057 () Bool)

(assert (=> b!1263533 m!1164057))

(declare-fun m!1164059 () Bool)

(assert (=> b!1263533 m!1164059))

(declare-fun m!1164061 () Bool)

(assert (=> b!1263533 m!1164061))

(assert (=> b!1263533 m!1164057))

(declare-fun m!1164063 () Bool)

(assert (=> b!1263533 m!1164063))

(declare-fun m!1164065 () Bool)

(assert (=> b!1263533 m!1164065))

(declare-fun m!1164067 () Bool)

(assert (=> b!1263533 m!1164067))

(assert (=> b!1263533 m!1164009))

(assert (=> b!1263533 m!1164053))

(declare-fun m!1164069 () Bool)

(assert (=> b!1263533 m!1164069))

(declare-fun m!1164071 () Bool)

(assert (=> b!1263533 m!1164071))

(assert (=> b!1263533 m!1164049))

(declare-fun m!1164073 () Bool)

(assert (=> b!1263533 m!1164073))

(assert (=> b!1263533 m!1164069))

(declare-fun m!1164075 () Bool)

(assert (=> b!1263533 m!1164075))

(declare-fun m!1164077 () Bool)

(assert (=> b!1263533 m!1164077))

(assert (=> b!1263530 m!1164043))

(assert (=> b!1263530 m!1164043))

(declare-fun m!1164079 () Bool)

(assert (=> b!1263530 m!1164079))

(declare-fun m!1164081 () Bool)

(assert (=> bm!62230 m!1164081))

(assert (=> b!1263539 m!1164043))

(declare-fun m!1164083 () Bool)

(assert (=> b!1263539 m!1164083))

(assert (=> b!1263539 m!1164043))

(declare-fun m!1164085 () Bool)

(assert (=> b!1263539 m!1164085))

(declare-fun m!1164087 () Bool)

(assert (=> b!1263539 m!1164087))

(declare-fun m!1164089 () Bool)

(assert (=> b!1263539 m!1164089))

(assert (=> b!1263539 m!1164085))

(assert (=> b!1263539 m!1164087))

(declare-fun m!1164091 () Bool)

(assert (=> b!1263544 m!1164091))

(assert (=> bm!62227 m!1164009))

(assert (=> b!1263545 m!1164043))

(assert (=> b!1263545 m!1164043))

(assert (=> b!1263545 m!1164045))

(assert (=> b!1263462 d!138565))

(declare-fun d!138567 () Bool)

(declare-fun e!719429 () Bool)

(assert (=> d!138567 e!719429))

(declare-fun res!841688 () Bool)

(assert (=> d!138567 (=> (not res!841688) (not e!719429))))

(declare-fun lt!573104 () ListLongMap!19093)

(assert (=> d!138567 (= res!841688 (contains!7624 lt!573104 (_1!10614 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!573105 () List!28428)

(assert (=> d!138567 (= lt!573104 (ListLongMap!19094 lt!573105))))

(declare-fun lt!573102 () Unit!42066)

(declare-fun lt!573103 () Unit!42066)

(assert (=> d!138567 (= lt!573102 lt!573103)))

(declare-datatypes ((Option!721 0))(
  ( (Some!720 (v!18983 V!48585)) (None!719) )
))
(declare-fun getValueByKey!670 (List!28428 (_ BitVec 64)) Option!721)

(assert (=> d!138567 (= (getValueByKey!670 lt!573105 (_1!10614 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!720 (_2!10614 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lemmaContainsTupThenGetReturnValue!337 (List!28428 (_ BitVec 64) V!48585) Unit!42066)

(assert (=> d!138567 (= lt!573103 (lemmaContainsTupThenGetReturnValue!337 lt!573105 (_1!10614 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10614 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun insertStrictlySorted!450 (List!28428 (_ BitVec 64) V!48585) List!28428)

(assert (=> d!138567 (= lt!573105 (insertStrictlySorted!450 (toList!9562 (+!4227 lt!573013 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))) (_1!10614 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10614 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138567 (= (+!4227 (+!4227 lt!573013 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!573104)))

(declare-fun b!1263557 () Bool)

(declare-fun res!841689 () Bool)

(assert (=> b!1263557 (=> (not res!841689) (not e!719429))))

(assert (=> b!1263557 (= res!841689 (= (getValueByKey!670 (toList!9562 lt!573104) (_1!10614 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!720 (_2!10614 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1263558 () Bool)

(declare-fun contains!7625 (List!28428 tuple2!21208) Bool)

(assert (=> b!1263558 (= e!719429 (contains!7625 (toList!9562 lt!573104) (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!138567 res!841688) b!1263557))

(assert (= (and b!1263557 res!841689) b!1263558))

(declare-fun m!1164093 () Bool)

(assert (=> d!138567 m!1164093))

(declare-fun m!1164095 () Bool)

(assert (=> d!138567 m!1164095))

(declare-fun m!1164097 () Bool)

(assert (=> d!138567 m!1164097))

(declare-fun m!1164099 () Bool)

(assert (=> d!138567 m!1164099))

(declare-fun m!1164101 () Bool)

(assert (=> b!1263557 m!1164101))

(declare-fun m!1164103 () Bool)

(assert (=> b!1263558 m!1164103))

(assert (=> b!1263462 d!138567))

(declare-fun d!138569 () Bool)

(declare-fun e!719430 () Bool)

(assert (=> d!138569 e!719430))

(declare-fun res!841690 () Bool)

(assert (=> d!138569 (=> (not res!841690) (not e!719430))))

(declare-fun lt!573108 () ListLongMap!19093)

(assert (=> d!138569 (= res!841690 (contains!7624 lt!573108 (_1!10614 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(declare-fun lt!573109 () List!28428)

(assert (=> d!138569 (= lt!573108 (ListLongMap!19094 lt!573109))))

(declare-fun lt!573106 () Unit!42066)

(declare-fun lt!573107 () Unit!42066)

(assert (=> d!138569 (= lt!573106 lt!573107)))

(assert (=> d!138569 (= (getValueByKey!670 lt!573109 (_1!10614 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))) (Some!720 (_2!10614 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(assert (=> d!138569 (= lt!573107 (lemmaContainsTupThenGetReturnValue!337 lt!573109 (_1!10614 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (_2!10614 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(assert (=> d!138569 (= lt!573109 (insertStrictlySorted!450 (toList!9562 lt!573013) (_1!10614 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (_2!10614 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(assert (=> d!138569 (= (+!4227 lt!573013 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) lt!573108)))

(declare-fun b!1263559 () Bool)

(declare-fun res!841691 () Bool)

(assert (=> b!1263559 (=> (not res!841691) (not e!719430))))

(assert (=> b!1263559 (= res!841691 (= (getValueByKey!670 (toList!9562 lt!573108) (_1!10614 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))) (Some!720 (_2!10614 (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)))))))

(declare-fun b!1263560 () Bool)

(assert (=> b!1263560 (= e!719430 (contains!7625 (toList!9562 lt!573108) (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)))))

(assert (= (and d!138569 res!841690) b!1263559))

(assert (= (and b!1263559 res!841691) b!1263560))

(declare-fun m!1164105 () Bool)

(assert (=> d!138569 m!1164105))

(declare-fun m!1164107 () Bool)

(assert (=> d!138569 m!1164107))

(declare-fun m!1164109 () Bool)

(assert (=> d!138569 m!1164109))

(declare-fun m!1164111 () Bool)

(assert (=> d!138569 m!1164111))

(declare-fun m!1164113 () Bool)

(assert (=> b!1263559 m!1164113))

(declare-fun m!1164115 () Bool)

(assert (=> b!1263560 m!1164115))

(assert (=> b!1263462 d!138569))

(declare-fun bm!62233 () Bool)

(declare-fun call!62236 () ListLongMap!19093)

(declare-fun call!62242 () ListLongMap!19093)

(assert (=> bm!62233 (= call!62236 call!62242)))

(declare-fun b!1263561 () Bool)

(declare-fun e!719441 () Bool)

(declare-fun e!719443 () Bool)

(assert (=> b!1263561 (= e!719441 e!719443)))

(declare-fun res!841697 () Bool)

(assert (=> b!1263561 (=> (not res!841697) (not e!719443))))

(declare-fun lt!573127 () ListLongMap!19093)

(assert (=> b!1263561 (= res!841697 (contains!7624 lt!573127 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263561 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun b!1263562 () Bool)

(declare-fun e!719435 () Bool)

(declare-fun call!62238 () Bool)

(assert (=> b!1263562 (= e!719435 (not call!62238))))

(declare-fun b!1263563 () Bool)

(declare-fun res!841694 () Bool)

(declare-fun e!719437 () Bool)

(assert (=> b!1263563 (=> (not res!841694) (not e!719437))))

(assert (=> b!1263563 (= res!841694 e!719435)))

(declare-fun c!122958 () Bool)

(assert (=> b!1263563 (= c!122958 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1263564 () Bool)

(declare-fun e!719434 () Unit!42066)

(declare-fun lt!573112 () Unit!42066)

(assert (=> b!1263564 (= e!719434 lt!573112)))

(declare-fun lt!573129 () ListLongMap!19093)

(assert (=> b!1263564 (= lt!573129 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573125 () (_ BitVec 64))

(assert (=> b!1263564 (= lt!573125 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573113 () (_ BitVec 64))

(assert (=> b!1263564 (= lt!573113 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573126 () Unit!42066)

(assert (=> b!1263564 (= lt!573126 (addStillContains!1108 lt!573129 lt!573125 zeroValue!871 lt!573113))))

(assert (=> b!1263564 (contains!7624 (+!4227 lt!573129 (tuple2!21209 lt!573125 zeroValue!871)) lt!573113)))

(declare-fun lt!573118 () Unit!42066)

(assert (=> b!1263564 (= lt!573118 lt!573126)))

(declare-fun lt!573117 () ListLongMap!19093)

(assert (=> b!1263564 (= lt!573117 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573111 () (_ BitVec 64))

(assert (=> b!1263564 (= lt!573111 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573119 () (_ BitVec 64))

(assert (=> b!1263564 (= lt!573119 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573120 () Unit!42066)

(assert (=> b!1263564 (= lt!573120 (addApplyDifferent!542 lt!573117 lt!573111 minValueAfter!43 lt!573119))))

(assert (=> b!1263564 (= (apply!1037 (+!4227 lt!573117 (tuple2!21209 lt!573111 minValueAfter!43)) lt!573119) (apply!1037 lt!573117 lt!573119))))

(declare-fun lt!573124 () Unit!42066)

(assert (=> b!1263564 (= lt!573124 lt!573120)))

(declare-fun lt!573123 () ListLongMap!19093)

(assert (=> b!1263564 (= lt!573123 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573122 () (_ BitVec 64))

(assert (=> b!1263564 (= lt!573122 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573115 () (_ BitVec 64))

(assert (=> b!1263564 (= lt!573115 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573110 () Unit!42066)

(assert (=> b!1263564 (= lt!573110 (addApplyDifferent!542 lt!573123 lt!573122 zeroValue!871 lt!573115))))

(assert (=> b!1263564 (= (apply!1037 (+!4227 lt!573123 (tuple2!21209 lt!573122 zeroValue!871)) lt!573115) (apply!1037 lt!573123 lt!573115))))

(declare-fun lt!573128 () Unit!42066)

(assert (=> b!1263564 (= lt!573128 lt!573110)))

(declare-fun lt!573121 () ListLongMap!19093)

(assert (=> b!1263564 (= lt!573121 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573114 () (_ BitVec 64))

(assert (=> b!1263564 (= lt!573114 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573131 () (_ BitVec 64))

(assert (=> b!1263564 (= lt!573131 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263564 (= lt!573112 (addApplyDifferent!542 lt!573121 lt!573114 minValueAfter!43 lt!573131))))

(assert (=> b!1263564 (= (apply!1037 (+!4227 lt!573121 (tuple2!21209 lt!573114 minValueAfter!43)) lt!573131) (apply!1037 lt!573121 lt!573131))))

(declare-fun b!1263565 () Bool)

(declare-fun e!719436 () Bool)

(assert (=> b!1263565 (= e!719435 e!719436)))

(declare-fun res!841693 () Bool)

(assert (=> b!1263565 (= res!841693 call!62238)))

(assert (=> b!1263565 (=> (not res!841693) (not e!719436))))

(declare-fun b!1263566 () Bool)

(declare-fun e!719442 () Bool)

(declare-fun call!62239 () Bool)

(assert (=> b!1263566 (= e!719442 (not call!62239))))

(declare-fun b!1263568 () Bool)

(declare-fun e!719431 () ListLongMap!19093)

(assert (=> b!1263568 (= e!719431 (+!4227 call!62242 (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun bm!62234 () Bool)

(declare-fun call!62237 () ListLongMap!19093)

(assert (=> bm!62234 (= call!62237 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263569 () Bool)

(declare-fun e!719433 () Bool)

(assert (=> b!1263569 (= e!719442 e!719433)))

(declare-fun res!841699 () Bool)

(assert (=> b!1263569 (= res!841699 call!62239)))

(assert (=> b!1263569 (=> (not res!841699) (not e!719433))))

(declare-fun bm!62235 () Bool)

(declare-fun call!62241 () ListLongMap!19093)

(declare-fun call!62240 () ListLongMap!19093)

(assert (=> bm!62235 (= call!62241 call!62240)))

(declare-fun b!1263570 () Bool)

(assert (=> b!1263570 (= e!719443 (= (apply!1037 lt!573127 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)) (get!20331 (select (arr!39760 _values!914) #b00000000000000000000000000000000) (dynLambda!3482 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1263570 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40297 _values!914)))))

(assert (=> b!1263570 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun b!1263571 () Bool)

(assert (=> b!1263571 (= e!719433 (= (apply!1037 lt!573127 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun b!1263572 () Bool)

(declare-fun e!719432 () ListLongMap!19093)

(assert (=> b!1263572 (= e!719432 call!62236)))

(declare-fun b!1263573 () Bool)

(declare-fun e!719438 () ListLongMap!19093)

(assert (=> b!1263573 (= e!719438 call!62241)))

(declare-fun b!1263574 () Bool)

(declare-fun Unit!42069 () Unit!42066)

(assert (=> b!1263574 (= e!719434 Unit!42069)))

(declare-fun b!1263575 () Bool)

(assert (=> b!1263575 (= e!719436 (= (apply!1037 lt!573127 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1263576 () Bool)

(declare-fun e!719439 () Bool)

(assert (=> b!1263576 (= e!719439 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62236 () Bool)

(assert (=> bm!62236 (= call!62239 (contains!7624 lt!573127 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263577 () Bool)

(declare-fun res!841695 () Bool)

(assert (=> b!1263577 (=> (not res!841695) (not e!719437))))

(assert (=> b!1263577 (= res!841695 e!719441)))

(declare-fun res!841696 () Bool)

(assert (=> b!1263577 (=> res!841696 e!719441)))

(assert (=> b!1263577 (= res!841696 (not e!719439))))

(declare-fun res!841692 () Bool)

(assert (=> b!1263577 (=> (not res!841692) (not e!719439))))

(assert (=> b!1263577 (= res!841692 (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun d!138571 () Bool)

(assert (=> d!138571 e!719437))

(declare-fun res!841700 () Bool)

(assert (=> d!138571 (=> (not res!841700) (not e!719437))))

(assert (=> d!138571 (= res!841700 (or (bvsge #b00000000000000000000000000000000 (size!40296 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))))

(declare-fun lt!573116 () ListLongMap!19093)

(assert (=> d!138571 (= lt!573127 lt!573116)))

(declare-fun lt!573130 () Unit!42066)

(assert (=> d!138571 (= lt!573130 e!719434)))

(declare-fun c!122962 () Bool)

(declare-fun e!719440 () Bool)

(assert (=> d!138571 (= c!122962 e!719440)))

(declare-fun res!841698 () Bool)

(assert (=> d!138571 (=> (not res!841698) (not e!719440))))

(assert (=> d!138571 (= res!841698 (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (=> d!138571 (= lt!573116 e!719431)))

(declare-fun c!122959 () Bool)

(assert (=> d!138571 (= c!122959 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138571 (validMask!0 mask!1466)))

(assert (=> d!138571 (= (getCurrentListMap!4665 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573127)))

(declare-fun b!1263567 () Bool)

(declare-fun c!122961 () Bool)

(assert (=> b!1263567 (= c!122961 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1263567 (= e!719432 e!719438)))

(declare-fun bm!62237 () Bool)

(assert (=> bm!62237 (= call!62238 (contains!7624 lt!573127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263578 () Bool)

(assert (=> b!1263578 (= e!719437 e!719442)))

(declare-fun c!122960 () Bool)

(assert (=> b!1263578 (= c!122960 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!122957 () Bool)

(declare-fun bm!62238 () Bool)

(assert (=> bm!62238 (= call!62242 (+!4227 (ite c!122959 call!62237 (ite c!122957 call!62240 call!62241)) (ite (or c!122959 c!122957) (tuple2!21209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21209 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun bm!62239 () Bool)

(assert (=> bm!62239 (= call!62240 call!62237)))

(declare-fun b!1263579 () Bool)

(assert (=> b!1263579 (= e!719438 call!62236)))

(declare-fun b!1263580 () Bool)

(assert (=> b!1263580 (= e!719431 e!719432)))

(assert (=> b!1263580 (= c!122957 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263581 () Bool)

(assert (=> b!1263581 (= e!719440 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138571 c!122959) b!1263568))

(assert (= (and d!138571 (not c!122959)) b!1263580))

(assert (= (and b!1263580 c!122957) b!1263572))

(assert (= (and b!1263580 (not c!122957)) b!1263567))

(assert (= (and b!1263567 c!122961) b!1263579))

(assert (= (and b!1263567 (not c!122961)) b!1263573))

(assert (= (or b!1263579 b!1263573) bm!62235))

(assert (= (or b!1263572 bm!62235) bm!62239))

(assert (= (or b!1263572 b!1263579) bm!62233))

(assert (= (or b!1263568 bm!62239) bm!62234))

(assert (= (or b!1263568 bm!62233) bm!62238))

(assert (= (and d!138571 res!841698) b!1263581))

(assert (= (and d!138571 c!122962) b!1263564))

(assert (= (and d!138571 (not c!122962)) b!1263574))

(assert (= (and d!138571 res!841700) b!1263577))

(assert (= (and b!1263577 res!841692) b!1263576))

(assert (= (and b!1263577 (not res!841696)) b!1263561))

(assert (= (and b!1263561 res!841697) b!1263570))

(assert (= (and b!1263577 res!841695) b!1263563))

(assert (= (and b!1263563 c!122958) b!1263565))

(assert (= (and b!1263563 (not c!122958)) b!1263562))

(assert (= (and b!1263565 res!841693) b!1263575))

(assert (= (or b!1263565 b!1263562) bm!62237))

(assert (= (and b!1263563 res!841694) b!1263578))

(assert (= (and b!1263578 c!122960) b!1263569))

(assert (= (and b!1263578 (not c!122960)) b!1263566))

(assert (= (and b!1263569 res!841699) b!1263571))

(assert (= (or b!1263569 b!1263566) bm!62236))

(declare-fun b_lambda!22979 () Bool)

(assert (=> (not b_lambda!22979) (not b!1263570)))

(assert (=> b!1263570 t!41953))

(declare-fun b_and!45525 () Bool)

(assert (= b_and!45523 (and (=> t!41953 result!23409) b_and!45525)))

(assert (=> d!138571 m!1163989))

(declare-fun m!1164117 () Bool)

(assert (=> b!1263571 m!1164117))

(declare-fun m!1164119 () Bool)

(assert (=> bm!62236 m!1164119))

(declare-fun m!1164121 () Bool)

(assert (=> bm!62238 m!1164121))

(assert (=> b!1263581 m!1164043))

(assert (=> b!1263581 m!1164043))

(assert (=> b!1263581 m!1164045))

(declare-fun m!1164123 () Bool)

(assert (=> b!1263568 m!1164123))

(assert (=> b!1263564 m!1164043))

(declare-fun m!1164125 () Bool)

(assert (=> b!1263564 m!1164125))

(declare-fun m!1164127 () Bool)

(assert (=> b!1263564 m!1164127))

(declare-fun m!1164129 () Bool)

(assert (=> b!1263564 m!1164129))

(declare-fun m!1164131 () Bool)

(assert (=> b!1263564 m!1164131))

(declare-fun m!1164133 () Bool)

(assert (=> b!1263564 m!1164133))

(declare-fun m!1164135 () Bool)

(assert (=> b!1263564 m!1164135))

(declare-fun m!1164137 () Bool)

(assert (=> b!1263564 m!1164137))

(assert (=> b!1263564 m!1164133))

(declare-fun m!1164139 () Bool)

(assert (=> b!1263564 m!1164139))

(declare-fun m!1164141 () Bool)

(assert (=> b!1263564 m!1164141))

(declare-fun m!1164143 () Bool)

(assert (=> b!1263564 m!1164143))

(assert (=> b!1263564 m!1164007))

(assert (=> b!1263564 m!1164129))

(declare-fun m!1164145 () Bool)

(assert (=> b!1263564 m!1164145))

(declare-fun m!1164147 () Bool)

(assert (=> b!1263564 m!1164147))

(assert (=> b!1263564 m!1164125))

(declare-fun m!1164149 () Bool)

(assert (=> b!1263564 m!1164149))

(assert (=> b!1263564 m!1164145))

(declare-fun m!1164151 () Bool)

(assert (=> b!1263564 m!1164151))

(declare-fun m!1164153 () Bool)

(assert (=> b!1263564 m!1164153))

(assert (=> b!1263561 m!1164043))

(assert (=> b!1263561 m!1164043))

(declare-fun m!1164155 () Bool)

(assert (=> b!1263561 m!1164155))

(declare-fun m!1164157 () Bool)

(assert (=> bm!62237 m!1164157))

(assert (=> b!1263570 m!1164043))

(declare-fun m!1164159 () Bool)

(assert (=> b!1263570 m!1164159))

(assert (=> b!1263570 m!1164043))

(assert (=> b!1263570 m!1164085))

(assert (=> b!1263570 m!1164087))

(assert (=> b!1263570 m!1164089))

(assert (=> b!1263570 m!1164085))

(assert (=> b!1263570 m!1164087))

(declare-fun m!1164161 () Bool)

(assert (=> b!1263575 m!1164161))

(assert (=> bm!62234 m!1164007))

(assert (=> b!1263576 m!1164043))

(assert (=> b!1263576 m!1164043))

(assert (=> b!1263576 m!1164045))

(assert (=> b!1263462 d!138571))

(declare-fun d!138573 () Bool)

(assert (=> d!138573 (= (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573134 () Unit!42066)

(declare-fun choose!1886 (array!82437 array!82439 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48585 V!48585 V!48585 V!48585 (_ BitVec 32) Int) Unit!42066)

(assert (=> d!138573 (= lt!573134 (choose!1886 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138573 (validMask!0 mask!1466)))

(assert (=> d!138573 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1198 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573134)))

(declare-fun bs!35743 () Bool)

(assert (= bs!35743 d!138573))

(assert (=> bs!35743 m!1164009))

(assert (=> bs!35743 m!1164007))

(declare-fun m!1164163 () Bool)

(assert (=> bs!35743 m!1164163))

(assert (=> bs!35743 m!1163989))

(assert (=> b!1263457 d!138573))

(declare-fun b!1263606 () Bool)

(declare-fun res!841710 () Bool)

(declare-fun e!719464 () Bool)

(assert (=> b!1263606 (=> (not res!841710) (not e!719464))))

(declare-fun lt!573154 () ListLongMap!19093)

(assert (=> b!1263606 (= res!841710 (not (contains!7624 lt!573154 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!138575 () Bool)

(assert (=> d!138575 e!719464))

(declare-fun res!841712 () Bool)

(assert (=> d!138575 (=> (not res!841712) (not e!719464))))

(assert (=> d!138575 (= res!841712 (not (contains!7624 lt!573154 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!719462 () ListLongMap!19093)

(assert (=> d!138575 (= lt!573154 e!719462)))

(declare-fun c!122972 () Bool)

(assert (=> d!138575 (= c!122972 (bvsge #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (=> d!138575 (validMask!0 mask!1466)))

(assert (=> d!138575 (= (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573154)))

(declare-fun b!1263607 () Bool)

(declare-fun e!719459 () Bool)

(assert (=> b!1263607 (= e!719459 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263607 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1263608 () Bool)

(declare-fun e!719458 () Bool)

(declare-fun e!719461 () Bool)

(assert (=> b!1263608 (= e!719458 e!719461)))

(assert (=> b!1263608 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun res!841711 () Bool)

(assert (=> b!1263608 (= res!841711 (contains!7624 lt!573154 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263608 (=> (not res!841711) (not e!719461))))

(declare-fun b!1263609 () Bool)

(declare-fun e!719463 () ListLongMap!19093)

(declare-fun call!62245 () ListLongMap!19093)

(assert (=> b!1263609 (= e!719463 call!62245)))

(declare-fun e!719460 () Bool)

(declare-fun b!1263610 () Bool)

(assert (=> b!1263610 (= e!719460 (= lt!573154 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1263611 () Bool)

(declare-fun isEmpty!1047 (ListLongMap!19093) Bool)

(assert (=> b!1263611 (= e!719460 (isEmpty!1047 lt!573154))))

(declare-fun bm!62242 () Bool)

(assert (=> bm!62242 (= call!62245 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1263612 () Bool)

(assert (=> b!1263612 (= e!719462 (ListLongMap!19094 Nil!28425))))

(declare-fun b!1263613 () Bool)

(declare-fun lt!573151 () Unit!42066)

(declare-fun lt!573150 () Unit!42066)

(assert (=> b!1263613 (= lt!573151 lt!573150)))

(declare-fun lt!573149 () (_ BitVec 64))

(declare-fun lt!573155 () ListLongMap!19093)

(declare-fun lt!573152 () (_ BitVec 64))

(declare-fun lt!573153 () V!48585)

(assert (=> b!1263613 (not (contains!7624 (+!4227 lt!573155 (tuple2!21209 lt!573152 lt!573153)) lt!573149))))

(declare-fun addStillNotContains!332 (ListLongMap!19093 (_ BitVec 64) V!48585 (_ BitVec 64)) Unit!42066)

(assert (=> b!1263613 (= lt!573150 (addStillNotContains!332 lt!573155 lt!573152 lt!573153 lt!573149))))

(assert (=> b!1263613 (= lt!573149 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1263613 (= lt!573153 (get!20331 (select (arr!39760 _values!914) #b00000000000000000000000000000000) (dynLambda!3482 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1263613 (= lt!573152 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263613 (= lt!573155 call!62245)))

(assert (=> b!1263613 (= e!719463 (+!4227 call!62245 (tuple2!21209 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000) (get!20331 (select (arr!39760 _values!914) #b00000000000000000000000000000000) (dynLambda!3482 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1263614 () Bool)

(assert (=> b!1263614 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (=> b!1263614 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40297 _values!914)))))

(assert (=> b!1263614 (= e!719461 (= (apply!1037 lt!573154 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)) (get!20331 (select (arr!39760 _values!914) #b00000000000000000000000000000000) (dynLambda!3482 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1263615 () Bool)

(assert (=> b!1263615 (= e!719458 e!719460)))

(declare-fun c!122971 () Bool)

(assert (=> b!1263615 (= c!122971 (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun b!1263616 () Bool)

(assert (=> b!1263616 (= e!719462 e!719463)))

(declare-fun c!122974 () Bool)

(assert (=> b!1263616 (= c!122974 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263617 () Bool)

(assert (=> b!1263617 (= e!719464 e!719458)))

(declare-fun c!122973 () Bool)

(assert (=> b!1263617 (= c!122973 e!719459)))

(declare-fun res!841709 () Bool)

(assert (=> b!1263617 (=> (not res!841709) (not e!719459))))

(assert (=> b!1263617 (= res!841709 (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (= (and d!138575 c!122972) b!1263612))

(assert (= (and d!138575 (not c!122972)) b!1263616))

(assert (= (and b!1263616 c!122974) b!1263613))

(assert (= (and b!1263616 (not c!122974)) b!1263609))

(assert (= (or b!1263613 b!1263609) bm!62242))

(assert (= (and d!138575 res!841712) b!1263606))

(assert (= (and b!1263606 res!841710) b!1263617))

(assert (= (and b!1263617 res!841709) b!1263607))

(assert (= (and b!1263617 c!122973) b!1263608))

(assert (= (and b!1263617 (not c!122973)) b!1263615))

(assert (= (and b!1263608 res!841711) b!1263614))

(assert (= (and b!1263615 c!122971) b!1263610))

(assert (= (and b!1263615 (not c!122971)) b!1263611))

(declare-fun b_lambda!22981 () Bool)

(assert (=> (not b_lambda!22981) (not b!1263613)))

(assert (=> b!1263613 t!41953))

(declare-fun b_and!45527 () Bool)

(assert (= b_and!45525 (and (=> t!41953 result!23409) b_and!45527)))

(declare-fun b_lambda!22983 () Bool)

(assert (=> (not b_lambda!22983) (not b!1263614)))

(assert (=> b!1263614 t!41953))

(declare-fun b_and!45529 () Bool)

(assert (= b_and!45527 (and (=> t!41953 result!23409) b_and!45529)))

(declare-fun m!1164165 () Bool)

(assert (=> bm!62242 m!1164165))

(assert (=> b!1263614 m!1164087))

(assert (=> b!1263614 m!1164043))

(assert (=> b!1263614 m!1164085))

(assert (=> b!1263614 m!1164085))

(assert (=> b!1263614 m!1164087))

(assert (=> b!1263614 m!1164089))

(assert (=> b!1263614 m!1164043))

(declare-fun m!1164167 () Bool)

(assert (=> b!1263614 m!1164167))

(declare-fun m!1164169 () Bool)

(assert (=> d!138575 m!1164169))

(assert (=> d!138575 m!1163989))

(declare-fun m!1164171 () Bool)

(assert (=> b!1263606 m!1164171))

(assert (=> b!1263616 m!1164043))

(assert (=> b!1263616 m!1164043))

(assert (=> b!1263616 m!1164045))

(assert (=> b!1263613 m!1164087))

(declare-fun m!1164173 () Bool)

(assert (=> b!1263613 m!1164173))

(assert (=> b!1263613 m!1164043))

(declare-fun m!1164175 () Bool)

(assert (=> b!1263613 m!1164175))

(assert (=> b!1263613 m!1164085))

(declare-fun m!1164177 () Bool)

(assert (=> b!1263613 m!1164177))

(assert (=> b!1263613 m!1164177))

(declare-fun m!1164179 () Bool)

(assert (=> b!1263613 m!1164179))

(assert (=> b!1263613 m!1164085))

(assert (=> b!1263613 m!1164087))

(assert (=> b!1263613 m!1164089))

(assert (=> b!1263608 m!1164043))

(assert (=> b!1263608 m!1164043))

(declare-fun m!1164181 () Bool)

(assert (=> b!1263608 m!1164181))

(declare-fun m!1164183 () Bool)

(assert (=> b!1263611 m!1164183))

(assert (=> b!1263610 m!1164165))

(assert (=> b!1263607 m!1164043))

(assert (=> b!1263607 m!1164043))

(assert (=> b!1263607 m!1164045))

(assert (=> b!1263457 d!138575))

(declare-fun b!1263618 () Bool)

(declare-fun res!841714 () Bool)

(declare-fun e!719471 () Bool)

(assert (=> b!1263618 (=> (not res!841714) (not e!719471))))

(declare-fun lt!573161 () ListLongMap!19093)

(assert (=> b!1263618 (= res!841714 (not (contains!7624 lt!573161 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!138577 () Bool)

(assert (=> d!138577 e!719471))

(declare-fun res!841716 () Bool)

(assert (=> d!138577 (=> (not res!841716) (not e!719471))))

(assert (=> d!138577 (= res!841716 (not (contains!7624 lt!573161 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!719469 () ListLongMap!19093)

(assert (=> d!138577 (= lt!573161 e!719469)))

(declare-fun c!122976 () Bool)

(assert (=> d!138577 (= c!122976 (bvsge #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (=> d!138577 (validMask!0 mask!1466)))

(assert (=> d!138577 (= (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573161)))

(declare-fun b!1263619 () Bool)

(declare-fun e!719466 () Bool)

(assert (=> b!1263619 (= e!719466 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263619 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1263620 () Bool)

(declare-fun e!719465 () Bool)

(declare-fun e!719468 () Bool)

(assert (=> b!1263620 (= e!719465 e!719468)))

(assert (=> b!1263620 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun res!841715 () Bool)

(assert (=> b!1263620 (= res!841715 (contains!7624 lt!573161 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263620 (=> (not res!841715) (not e!719468))))

(declare-fun b!1263621 () Bool)

(declare-fun e!719470 () ListLongMap!19093)

(declare-fun call!62246 () ListLongMap!19093)

(assert (=> b!1263621 (= e!719470 call!62246)))

(declare-fun b!1263622 () Bool)

(declare-fun e!719467 () Bool)

(assert (=> b!1263622 (= e!719467 (= lt!573161 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1263623 () Bool)

(assert (=> b!1263623 (= e!719467 (isEmpty!1047 lt!573161))))

(declare-fun bm!62243 () Bool)

(assert (=> bm!62243 (= call!62246 (getCurrentListMapNoExtraKeys!5902 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1263624 () Bool)

(assert (=> b!1263624 (= e!719469 (ListLongMap!19094 Nil!28425))))

(declare-fun b!1263625 () Bool)

(declare-fun lt!573158 () Unit!42066)

(declare-fun lt!573157 () Unit!42066)

(assert (=> b!1263625 (= lt!573158 lt!573157)))

(declare-fun lt!573160 () V!48585)

(declare-fun lt!573162 () ListLongMap!19093)

(declare-fun lt!573159 () (_ BitVec 64))

(declare-fun lt!573156 () (_ BitVec 64))

(assert (=> b!1263625 (not (contains!7624 (+!4227 lt!573162 (tuple2!21209 lt!573159 lt!573160)) lt!573156))))

(assert (=> b!1263625 (= lt!573157 (addStillNotContains!332 lt!573162 lt!573159 lt!573160 lt!573156))))

(assert (=> b!1263625 (= lt!573156 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1263625 (= lt!573160 (get!20331 (select (arr!39760 _values!914) #b00000000000000000000000000000000) (dynLambda!3482 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1263625 (= lt!573159 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263625 (= lt!573162 call!62246)))

(assert (=> b!1263625 (= e!719470 (+!4227 call!62246 (tuple2!21209 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000) (get!20331 (select (arr!39760 _values!914) #b00000000000000000000000000000000) (dynLambda!3482 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1263626 () Bool)

(assert (=> b!1263626 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (=> b!1263626 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40297 _values!914)))))

(assert (=> b!1263626 (= e!719468 (= (apply!1037 lt!573161 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)) (get!20331 (select (arr!39760 _values!914) #b00000000000000000000000000000000) (dynLambda!3482 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1263627 () Bool)

(assert (=> b!1263627 (= e!719465 e!719467)))

(declare-fun c!122975 () Bool)

(assert (=> b!1263627 (= c!122975 (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(declare-fun b!1263628 () Bool)

(assert (=> b!1263628 (= e!719469 e!719470)))

(declare-fun c!122978 () Bool)

(assert (=> b!1263628 (= c!122978 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263629 () Bool)

(assert (=> b!1263629 (= e!719471 e!719465)))

(declare-fun c!122977 () Bool)

(assert (=> b!1263629 (= c!122977 e!719466)))

(declare-fun res!841713 () Bool)

(assert (=> b!1263629 (=> (not res!841713) (not e!719466))))

(assert (=> b!1263629 (= res!841713 (bvslt #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (= (and d!138577 c!122976) b!1263624))

(assert (= (and d!138577 (not c!122976)) b!1263628))

(assert (= (and b!1263628 c!122978) b!1263625))

(assert (= (and b!1263628 (not c!122978)) b!1263621))

(assert (= (or b!1263625 b!1263621) bm!62243))

(assert (= (and d!138577 res!841716) b!1263618))

(assert (= (and b!1263618 res!841714) b!1263629))

(assert (= (and b!1263629 res!841713) b!1263619))

(assert (= (and b!1263629 c!122977) b!1263620))

(assert (= (and b!1263629 (not c!122977)) b!1263627))

(assert (= (and b!1263620 res!841715) b!1263626))

(assert (= (and b!1263627 c!122975) b!1263622))

(assert (= (and b!1263627 (not c!122975)) b!1263623))

(declare-fun b_lambda!22985 () Bool)

(assert (=> (not b_lambda!22985) (not b!1263625)))

(assert (=> b!1263625 t!41953))

(declare-fun b_and!45531 () Bool)

(assert (= b_and!45529 (and (=> t!41953 result!23409) b_and!45531)))

(declare-fun b_lambda!22987 () Bool)

(assert (=> (not b_lambda!22987) (not b!1263626)))

(assert (=> b!1263626 t!41953))

(declare-fun b_and!45533 () Bool)

(assert (= b_and!45531 (and (=> t!41953 result!23409) b_and!45533)))

(declare-fun m!1164185 () Bool)

(assert (=> bm!62243 m!1164185))

(assert (=> b!1263626 m!1164087))

(assert (=> b!1263626 m!1164043))

(assert (=> b!1263626 m!1164085))

(assert (=> b!1263626 m!1164085))

(assert (=> b!1263626 m!1164087))

(assert (=> b!1263626 m!1164089))

(assert (=> b!1263626 m!1164043))

(declare-fun m!1164187 () Bool)

(assert (=> b!1263626 m!1164187))

(declare-fun m!1164189 () Bool)

(assert (=> d!138577 m!1164189))

(assert (=> d!138577 m!1163989))

(declare-fun m!1164191 () Bool)

(assert (=> b!1263618 m!1164191))

(assert (=> b!1263628 m!1164043))

(assert (=> b!1263628 m!1164043))

(assert (=> b!1263628 m!1164045))

(assert (=> b!1263625 m!1164087))

(declare-fun m!1164193 () Bool)

(assert (=> b!1263625 m!1164193))

(assert (=> b!1263625 m!1164043))

(declare-fun m!1164195 () Bool)

(assert (=> b!1263625 m!1164195))

(assert (=> b!1263625 m!1164085))

(declare-fun m!1164197 () Bool)

(assert (=> b!1263625 m!1164197))

(assert (=> b!1263625 m!1164197))

(declare-fun m!1164199 () Bool)

(assert (=> b!1263625 m!1164199))

(assert (=> b!1263625 m!1164085))

(assert (=> b!1263625 m!1164087))

(assert (=> b!1263625 m!1164089))

(assert (=> b!1263620 m!1164043))

(assert (=> b!1263620 m!1164043))

(declare-fun m!1164201 () Bool)

(assert (=> b!1263620 m!1164201))

(declare-fun m!1164203 () Bool)

(assert (=> b!1263623 m!1164203))

(assert (=> b!1263622 m!1164185))

(assert (=> b!1263619 m!1164043))

(assert (=> b!1263619 m!1164043))

(assert (=> b!1263619 m!1164045))

(assert (=> b!1263457 d!138577))

(declare-fun b!1263638 () Bool)

(declare-fun e!719480 () Bool)

(declare-fun e!719478 () Bool)

(assert (=> b!1263638 (= e!719480 e!719478)))

(declare-fun c!122981 () Bool)

(assert (=> b!1263638 (= c!122981 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138579 () Bool)

(declare-fun res!841721 () Bool)

(assert (=> d!138579 (=> res!841721 e!719480)))

(assert (=> d!138579 (= res!841721 (bvsge #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (=> d!138579 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!719480)))

(declare-fun b!1263639 () Bool)

(declare-fun call!62249 () Bool)

(assert (=> b!1263639 (= e!719478 call!62249)))

(declare-fun b!1263640 () Bool)

(declare-fun e!719479 () Bool)

(assert (=> b!1263640 (= e!719478 e!719479)))

(declare-fun lt!573169 () (_ BitVec 64))

(assert (=> b!1263640 (= lt!573169 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573170 () Unit!42066)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82437 (_ BitVec 64) (_ BitVec 32)) Unit!42066)

(assert (=> b!1263640 (= lt!573170 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!573169 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1263640 (arrayContainsKey!0 _keys!1118 lt!573169 #b00000000000000000000000000000000)))

(declare-fun lt!573171 () Unit!42066)

(assert (=> b!1263640 (= lt!573171 lt!573170)))

(declare-fun res!841722 () Bool)

(declare-datatypes ((SeekEntryResult!9977 0))(
  ( (MissingZero!9977 (index!42278 (_ BitVec 32))) (Found!9977 (index!42279 (_ BitVec 32))) (Intermediate!9977 (undefined!10789 Bool) (index!42280 (_ BitVec 32)) (x!111337 (_ BitVec 32))) (Undefined!9977) (MissingVacant!9977 (index!42281 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82437 (_ BitVec 32)) SeekEntryResult!9977)

(assert (=> b!1263640 (= res!841722 (= (seekEntryOrOpen!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9977 #b00000000000000000000000000000000)))))

(assert (=> b!1263640 (=> (not res!841722) (not e!719479))))

(declare-fun bm!62246 () Bool)

(assert (=> bm!62246 (= call!62249 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1263641 () Bool)

(assert (=> b!1263641 (= e!719479 call!62249)))

(assert (= (and d!138579 (not res!841721)) b!1263638))

(assert (= (and b!1263638 c!122981) b!1263640))

(assert (= (and b!1263638 (not c!122981)) b!1263639))

(assert (= (and b!1263640 res!841722) b!1263641))

(assert (= (or b!1263641 b!1263639) bm!62246))

(assert (=> b!1263638 m!1164043))

(assert (=> b!1263638 m!1164043))

(assert (=> b!1263638 m!1164045))

(assert (=> b!1263640 m!1164043))

(declare-fun m!1164205 () Bool)

(assert (=> b!1263640 m!1164205))

(declare-fun m!1164207 () Bool)

(assert (=> b!1263640 m!1164207))

(assert (=> b!1263640 m!1164043))

(declare-fun m!1164209 () Bool)

(assert (=> b!1263640 m!1164209))

(declare-fun m!1164211 () Bool)

(assert (=> bm!62246 m!1164211))

(assert (=> b!1263461 d!138579))

(declare-fun b!1263652 () Bool)

(declare-fun e!719489 () Bool)

(declare-fun call!62252 () Bool)

(assert (=> b!1263652 (= e!719489 call!62252)))

(declare-fun d!138581 () Bool)

(declare-fun res!841730 () Bool)

(declare-fun e!719492 () Bool)

(assert (=> d!138581 (=> res!841730 e!719492)))

(assert (=> d!138581 (= res!841730 (bvsge #b00000000000000000000000000000000 (size!40296 _keys!1118)))))

(assert (=> d!138581 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28424) e!719492)))

(declare-fun b!1263653 () Bool)

(declare-fun e!719490 () Bool)

(declare-fun contains!7626 (List!28427 (_ BitVec 64)) Bool)

(assert (=> b!1263653 (= e!719490 (contains!7626 Nil!28424 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263654 () Bool)

(declare-fun e!719491 () Bool)

(assert (=> b!1263654 (= e!719492 e!719491)))

(declare-fun res!841729 () Bool)

(assert (=> b!1263654 (=> (not res!841729) (not e!719491))))

(assert (=> b!1263654 (= res!841729 (not e!719490))))

(declare-fun res!841731 () Bool)

(assert (=> b!1263654 (=> (not res!841731) (not e!719490))))

(assert (=> b!1263654 (= res!841731 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263655 () Bool)

(assert (=> b!1263655 (= e!719489 call!62252)))

(declare-fun b!1263656 () Bool)

(assert (=> b!1263656 (= e!719491 e!719489)))

(declare-fun c!122984 () Bool)

(assert (=> b!1263656 (= c!122984 (validKeyInArray!0 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62249 () Bool)

(assert (=> bm!62249 (= call!62252 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122984 (Cons!28423 (select (arr!39759 _keys!1118) #b00000000000000000000000000000000) Nil!28424) Nil!28424)))))

(assert (= (and d!138581 (not res!841730)) b!1263654))

(assert (= (and b!1263654 res!841731) b!1263653))

(assert (= (and b!1263654 res!841729) b!1263656))

(assert (= (and b!1263656 c!122984) b!1263652))

(assert (= (and b!1263656 (not c!122984)) b!1263655))

(assert (= (or b!1263652 b!1263655) bm!62249))

(assert (=> b!1263653 m!1164043))

(assert (=> b!1263653 m!1164043))

(declare-fun m!1164213 () Bool)

(assert (=> b!1263653 m!1164213))

(assert (=> b!1263654 m!1164043))

(assert (=> b!1263654 m!1164043))

(assert (=> b!1263654 m!1164045))

(assert (=> b!1263656 m!1164043))

(assert (=> b!1263656 m!1164043))

(assert (=> b!1263656 m!1164045))

(assert (=> bm!62249 m!1164043))

(declare-fun m!1164215 () Bool)

(assert (=> bm!62249 m!1164215))

(assert (=> b!1263456 d!138581))

(declare-fun condMapEmpty!50455 () Bool)

(declare-fun mapDefault!50455 () ValueCell!15444)

(assert (=> mapNonEmpty!50449 (= condMapEmpty!50455 (= mapRest!50449 ((as const (Array (_ BitVec 32) ValueCell!15444)) mapDefault!50455)))))

(declare-fun e!719497 () Bool)

(declare-fun mapRes!50455 () Bool)

(assert (=> mapNonEmpty!50449 (= tp!96096 (and e!719497 mapRes!50455))))

(declare-fun mapNonEmpty!50455 () Bool)

(declare-fun tp!96105 () Bool)

(declare-fun e!719498 () Bool)

(assert (=> mapNonEmpty!50455 (= mapRes!50455 (and tp!96105 e!719498))))

(declare-fun mapValue!50455 () ValueCell!15444)

(declare-fun mapKey!50455 () (_ BitVec 32))

(declare-fun mapRest!50455 () (Array (_ BitVec 32) ValueCell!15444))

(assert (=> mapNonEmpty!50455 (= mapRest!50449 (store mapRest!50455 mapKey!50455 mapValue!50455))))

(declare-fun b!1263663 () Bool)

(assert (=> b!1263663 (= e!719498 tp_is_empty!32415)))

(declare-fun b!1263664 () Bool)

(assert (=> b!1263664 (= e!719497 tp_is_empty!32415)))

(declare-fun mapIsEmpty!50455 () Bool)

(assert (=> mapIsEmpty!50455 mapRes!50455))

(assert (= (and mapNonEmpty!50449 condMapEmpty!50455) mapIsEmpty!50455))

(assert (= (and mapNonEmpty!50449 (not condMapEmpty!50455)) mapNonEmpty!50455))

(assert (= (and mapNonEmpty!50455 ((_ is ValueCellFull!15444) mapValue!50455)) b!1263663))

(assert (= (and mapNonEmpty!50449 ((_ is ValueCellFull!15444) mapDefault!50455)) b!1263664))

(declare-fun m!1164217 () Bool)

(assert (=> mapNonEmpty!50455 m!1164217))

(declare-fun b_lambda!22989 () Bool)

(assert (= b_lambda!22983 (or (and start!106156 b_free!27513) b_lambda!22989)))

(declare-fun b_lambda!22991 () Bool)

(assert (= b_lambda!22985 (or (and start!106156 b_free!27513) b_lambda!22991)))

(declare-fun b_lambda!22993 () Bool)

(assert (= b_lambda!22977 (or (and start!106156 b_free!27513) b_lambda!22993)))

(declare-fun b_lambda!22995 () Bool)

(assert (= b_lambda!22979 (or (and start!106156 b_free!27513) b_lambda!22995)))

(declare-fun b_lambda!22997 () Bool)

(assert (= b_lambda!22981 (or (and start!106156 b_free!27513) b_lambda!22997)))

(declare-fun b_lambda!22999 () Bool)

(assert (= b_lambda!22987 (or (and start!106156 b_free!27513) b_lambda!22999)))

(check-sat (not b_lambda!22993) (not bm!62236) (not d!138567) (not b!1263557) (not d!138569) (not b!1263537) (not b!1263581) (not b!1263614) (not b!1263638) (not b_lambda!22997) (not b!1263550) (not b!1263559) (not bm!62231) (not b!1263625) (not b!1263544) (not b!1263540) (not bm!62243) (not b!1263560) (not b_lambda!22989) (not b!1263611) (not b!1263530) (not b!1263545) tp_is_empty!32415 (not b!1263618) (not b!1263653) (not bm!62246) (not b!1263616) (not b_next!27513) (not b_lambda!22999) (not d!138577) (not b!1263606) b_and!45533 (not b!1263640) (not b!1263622) (not b!1263576) (not b!1263654) (not b!1263628) (not b!1263607) (not b!1263620) (not d!138571) (not b!1263623) (not b!1263561) (not b_lambda!22995) (not b!1263626) (not bm!62249) (not bm!62227) (not d!138565) (not b!1263564) (not b!1263656) (not d!138573) (not b!1263568) (not b!1263558) (not mapNonEmpty!50455) (not bm!62238) (not bm!62237) (not b!1263539) (not b!1263533) (not b!1263570) (not bm!62229) (not b!1263613) (not bm!62242) (not b!1263610) (not bm!62234) (not b!1263608) (not bm!62230) (not b!1263571) (not d!138575) (not b!1263575) (not b_lambda!22991) (not b!1263619))
(check-sat b_and!45533 (not b_next!27513))

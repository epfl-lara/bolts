; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95080 () Bool)

(assert start!95080)

(declare-fun b_free!22179 () Bool)

(declare-fun b_next!22179 () Bool)

(assert (=> start!95080 (= b_free!22179 (not b_next!22179))))

(declare-fun tp!78015 () Bool)

(declare-fun b_and!35093 () Bool)

(assert (=> start!95080 (= tp!78015 b_and!35093)))

(declare-fun b!1074421 () Bool)

(declare-fun res!716508 () Bool)

(declare-fun e!613984 () Bool)

(assert (=> b!1074421 (=> (not res!716508) (not e!613984))))

(declare-datatypes ((array!68908 0))(
  ( (array!68909 (arr!33140 (Array (_ BitVec 32) (_ BitVec 64))) (size!33677 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68908)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68908 (_ BitVec 32)) Bool)

(assert (=> b!1074421 (= res!716508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1074422 () Bool)

(declare-fun e!613979 () Bool)

(declare-fun e!613977 () Bool)

(assert (=> b!1074422 (= e!613979 e!613977)))

(declare-fun res!716506 () Bool)

(assert (=> b!1074422 (=> res!716506 e!613977)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1074422 (= res!716506 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40708 () Bool)

(declare-fun mapRes!40708 () Bool)

(declare-fun tp!78014 () Bool)

(declare-fun e!613982 () Bool)

(assert (=> mapNonEmpty!40708 (= mapRes!40708 (and tp!78014 e!613982))))

(declare-datatypes ((V!39787 0))(
  ( (V!39788 (val!13045 Int)) )
))
(declare-datatypes ((ValueCell!12291 0))(
  ( (ValueCellFull!12291 (v!15667 V!39787)) (EmptyCell!12291) )
))
(declare-fun mapRest!40708 () (Array (_ BitVec 32) ValueCell!12291))

(declare-fun mapValue!40708 () ValueCell!12291)

(declare-fun mapKey!40708 () (_ BitVec 32))

(declare-datatypes ((array!68910 0))(
  ( (array!68911 (arr!33141 (Array (_ BitVec 32) ValueCell!12291)) (size!33678 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68910)

(assert (=> mapNonEmpty!40708 (= (arr!33141 _values!955) (store mapRest!40708 mapKey!40708 mapValue!40708))))

(declare-fun zeroValueBefore!47 () V!39787)

(declare-fun b!1074423 () Bool)

(declare-fun minValue!907 () V!39787)

(declare-fun defaultEntry!963 () Int)

(declare-datatypes ((tuple2!16684 0))(
  ( (tuple2!16685 (_1!8352 (_ BitVec 64)) (_2!8352 V!39787)) )
))
(declare-datatypes ((List!23258 0))(
  ( (Nil!23255) (Cons!23254 (h!24463 tuple2!16684) (t!32610 List!23258)) )
))
(declare-datatypes ((ListLongMap!14665 0))(
  ( (ListLongMap!14666 (toList!7348 List!23258)) )
))
(declare-fun lt!476645 () ListLongMap!14665)

(declare-fun getCurrentListMap!4186 (array!68908 array!68910 (_ BitVec 32) (_ BitVec 32) V!39787 V!39787 (_ BitVec 32) Int) ListLongMap!14665)

(declare-fun +!3177 (ListLongMap!14665 tuple2!16684) ListLongMap!14665)

(assert (=> b!1074423 (= e!613977 (= (getCurrentListMap!4186 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3177 lt!476645 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun b!1074424 () Bool)

(declare-fun res!716509 () Bool)

(assert (=> b!1074424 (=> (not res!716509) (not e!613984))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1074424 (= res!716509 (and (= (size!33678 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33677 _keys!1163) (size!33678 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!716507 () Bool)

(assert (=> start!95080 (=> (not res!716507) (not e!613984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95080 (= res!716507 (validMask!0 mask!1515))))

(assert (=> start!95080 e!613984))

(assert (=> start!95080 true))

(declare-fun tp_is_empty!25989 () Bool)

(assert (=> start!95080 tp_is_empty!25989))

(declare-fun e!613980 () Bool)

(declare-fun array_inv!25466 (array!68910) Bool)

(assert (=> start!95080 (and (array_inv!25466 _values!955) e!613980)))

(assert (=> start!95080 tp!78015))

(declare-fun array_inv!25467 (array!68908) Bool)

(assert (=> start!95080 (array_inv!25467 _keys!1163)))

(declare-fun b!1074425 () Bool)

(assert (=> b!1074425 (= e!613982 tp_is_empty!25989)))

(declare-fun lt!476644 () ListLongMap!14665)

(declare-fun b!1074426 () Bool)

(declare-fun e!613983 () Bool)

(declare-fun zeroValueAfter!47 () V!39787)

(assert (=> b!1074426 (= e!613983 (= (getCurrentListMap!4186 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476644))))

(declare-fun mapIsEmpty!40708 () Bool)

(assert (=> mapIsEmpty!40708 mapRes!40708))

(declare-fun b!1074427 () Bool)

(declare-fun e!613978 () Bool)

(assert (=> b!1074427 (= e!613978 tp_is_empty!25989)))

(declare-fun b!1074428 () Bool)

(declare-fun res!716511 () Bool)

(assert (=> b!1074428 (=> (not res!716511) (not e!613984))))

(declare-datatypes ((List!23259 0))(
  ( (Nil!23256) (Cons!23255 (h!24464 (_ BitVec 64)) (t!32611 List!23259)) )
))
(declare-fun arrayNoDuplicates!0 (array!68908 (_ BitVec 32) List!23259) Bool)

(assert (=> b!1074428 (= res!716511 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23256))))

(declare-fun b!1074429 () Bool)

(assert (=> b!1074429 (= e!613984 (not e!613983))))

(declare-fun res!716510 () Bool)

(assert (=> b!1074429 (=> res!716510 e!613983)))

(assert (=> b!1074429 (= res!716510 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1074429 e!613979))

(declare-fun res!716512 () Bool)

(assert (=> b!1074429 (=> (not res!716512) (not e!613979))))

(assert (=> b!1074429 (= res!716512 (= lt!476645 lt!476644))))

(declare-datatypes ((Unit!35322 0))(
  ( (Unit!35323) )
))
(declare-fun lt!476643 () Unit!35322)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!894 (array!68908 array!68910 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39787 V!39787 V!39787 V!39787 (_ BitVec 32) Int) Unit!35322)

(assert (=> b!1074429 (= lt!476643 (lemmaNoChangeToArrayThenSameMapNoExtras!894 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3875 (array!68908 array!68910 (_ BitVec 32) (_ BitVec 32) V!39787 V!39787 (_ BitVec 32) Int) ListLongMap!14665)

(assert (=> b!1074429 (= lt!476644 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074429 (= lt!476645 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074430 () Bool)

(assert (=> b!1074430 (= e!613980 (and e!613978 mapRes!40708))))

(declare-fun condMapEmpty!40708 () Bool)

(declare-fun mapDefault!40708 () ValueCell!12291)

(assert (=> b!1074430 (= condMapEmpty!40708 (= (arr!33141 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12291)) mapDefault!40708)))))

(assert (= (and start!95080 res!716507) b!1074424))

(assert (= (and b!1074424 res!716509) b!1074421))

(assert (= (and b!1074421 res!716508) b!1074428))

(assert (= (and b!1074428 res!716511) b!1074429))

(assert (= (and b!1074429 res!716512) b!1074422))

(assert (= (and b!1074422 (not res!716506)) b!1074423))

(assert (= (and b!1074429 (not res!716510)) b!1074426))

(assert (= (and b!1074430 condMapEmpty!40708) mapIsEmpty!40708))

(assert (= (and b!1074430 (not condMapEmpty!40708)) mapNonEmpty!40708))

(get-info :version)

(assert (= (and mapNonEmpty!40708 ((_ is ValueCellFull!12291) mapValue!40708)) b!1074425))

(assert (= (and b!1074430 ((_ is ValueCellFull!12291) mapDefault!40708)) b!1074427))

(assert (= start!95080 b!1074430))

(declare-fun m!993417 () Bool)

(assert (=> b!1074423 m!993417))

(declare-fun m!993419 () Bool)

(assert (=> b!1074423 m!993419))

(declare-fun m!993421 () Bool)

(assert (=> b!1074421 m!993421))

(declare-fun m!993423 () Bool)

(assert (=> b!1074426 m!993423))

(declare-fun m!993425 () Bool)

(assert (=> b!1074429 m!993425))

(declare-fun m!993427 () Bool)

(assert (=> b!1074429 m!993427))

(declare-fun m!993429 () Bool)

(assert (=> b!1074429 m!993429))

(declare-fun m!993431 () Bool)

(assert (=> mapNonEmpty!40708 m!993431))

(declare-fun m!993433 () Bool)

(assert (=> start!95080 m!993433))

(declare-fun m!993435 () Bool)

(assert (=> start!95080 m!993435))

(declare-fun m!993437 () Bool)

(assert (=> start!95080 m!993437))

(declare-fun m!993439 () Bool)

(assert (=> b!1074428 m!993439))

(check-sat (not b!1074423) (not start!95080) b_and!35093 (not b!1074426) (not b!1074421) (not b!1074428) (not b!1074429) (not b_next!22179) tp_is_empty!25989 (not mapNonEmpty!40708))
(check-sat b_and!35093 (not b_next!22179))
(get-model)

(declare-fun d!129465 () Bool)

(assert (=> d!129465 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95080 d!129465))

(declare-fun d!129467 () Bool)

(assert (=> d!129467 (= (array_inv!25466 _values!955) (bvsge (size!33678 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95080 d!129467))

(declare-fun d!129469 () Bool)

(assert (=> d!129469 (= (array_inv!25467 _keys!1163) (bvsge (size!33677 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95080 d!129469))

(declare-fun b!1074471 () Bool)

(declare-fun e!614019 () Bool)

(declare-fun call!45398 () Bool)

(assert (=> b!1074471 (= e!614019 call!45398)))

(declare-fun b!1074472 () Bool)

(assert (=> b!1074472 (= e!614019 call!45398)))

(declare-fun b!1074473 () Bool)

(declare-fun e!614020 () Bool)

(declare-fun e!614017 () Bool)

(assert (=> b!1074473 (= e!614020 e!614017)))

(declare-fun res!716542 () Bool)

(assert (=> b!1074473 (=> (not res!716542) (not e!614017))))

(declare-fun e!614018 () Bool)

(assert (=> b!1074473 (= res!716542 (not e!614018))))

(declare-fun res!716541 () Bool)

(assert (=> b!1074473 (=> (not res!716541) (not e!614018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1074473 (= res!716541 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074474 () Bool)

(assert (=> b!1074474 (= e!614017 e!614019)))

(declare-fun c!107852 () Bool)

(assert (=> b!1074474 (= c!107852 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074475 () Bool)

(declare-fun contains!6352 (List!23259 (_ BitVec 64)) Bool)

(assert (=> b!1074475 (= e!614018 (contains!6352 Nil!23256 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129471 () Bool)

(declare-fun res!716540 () Bool)

(assert (=> d!129471 (=> res!716540 e!614020)))

(assert (=> d!129471 (= res!716540 (bvsge #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (=> d!129471 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23256) e!614020)))

(declare-fun bm!45395 () Bool)

(assert (=> bm!45395 (= call!45398 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107852 (Cons!23255 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000) Nil!23256) Nil!23256)))))

(assert (= (and d!129471 (not res!716540)) b!1074473))

(assert (= (and b!1074473 res!716541) b!1074475))

(assert (= (and b!1074473 res!716542) b!1074474))

(assert (= (and b!1074474 c!107852) b!1074472))

(assert (= (and b!1074474 (not c!107852)) b!1074471))

(assert (= (or b!1074472 b!1074471) bm!45395))

(declare-fun m!993465 () Bool)

(assert (=> b!1074473 m!993465))

(assert (=> b!1074473 m!993465))

(declare-fun m!993467 () Bool)

(assert (=> b!1074473 m!993467))

(assert (=> b!1074474 m!993465))

(assert (=> b!1074474 m!993465))

(assert (=> b!1074474 m!993467))

(assert (=> b!1074475 m!993465))

(assert (=> b!1074475 m!993465))

(declare-fun m!993469 () Bool)

(assert (=> b!1074475 m!993469))

(assert (=> bm!45395 m!993465))

(declare-fun m!993471 () Bool)

(assert (=> bm!45395 m!993471))

(assert (=> b!1074428 d!129471))

(declare-fun b!1074518 () Bool)

(declare-fun e!614047 () Bool)

(declare-fun e!614057 () Bool)

(assert (=> b!1074518 (= e!614047 e!614057)))

(declare-fun res!716568 () Bool)

(declare-fun call!45416 () Bool)

(assert (=> b!1074518 (= res!716568 call!45416)))

(assert (=> b!1074518 (=> (not res!716568) (not e!614057))))

(declare-fun b!1074519 () Bool)

(declare-fun lt!476707 () ListLongMap!14665)

(declare-fun e!614056 () Bool)

(declare-fun apply!971 (ListLongMap!14665 (_ BitVec 64)) V!39787)

(declare-fun get!17235 (ValueCell!12291 V!39787) V!39787)

(declare-fun dynLambda!2047 (Int (_ BitVec 64)) V!39787)

(assert (=> b!1074519 (= e!614056 (= (apply!971 lt!476707 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)) (get!17235 (select (arr!33141 _values!955) #b00000000000000000000000000000000) (dynLambda!2047 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1074519 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33678 _values!955)))))

(assert (=> b!1074519 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun bm!45410 () Bool)

(declare-fun call!45415 () ListLongMap!14665)

(declare-fun call!45419 () ListLongMap!14665)

(assert (=> bm!45410 (= call!45415 call!45419)))

(declare-fun b!1074520 () Bool)

(assert (=> b!1074520 (= e!614057 (= (apply!971 lt!476707 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1074521 () Bool)

(declare-fun e!614055 () Bool)

(assert (=> b!1074521 (= e!614055 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074523 () Bool)

(declare-fun res!716566 () Bool)

(declare-fun e!614052 () Bool)

(assert (=> b!1074523 (=> (not res!716566) (not e!614052))))

(assert (=> b!1074523 (= res!716566 e!614047)))

(declare-fun c!107865 () Bool)

(assert (=> b!1074523 (= c!107865 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074524 () Bool)

(declare-fun e!614048 () ListLongMap!14665)

(declare-fun e!614053 () ListLongMap!14665)

(assert (=> b!1074524 (= e!614048 e!614053)))

(declare-fun c!107870 () Bool)

(assert (=> b!1074524 (= c!107870 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074525 () Bool)

(declare-fun e!614051 () Unit!35322)

(declare-fun Unit!35326 () Unit!35322)

(assert (=> b!1074525 (= e!614051 Unit!35326)))

(declare-fun bm!45411 () Bool)

(declare-fun call!45413 () ListLongMap!14665)

(declare-fun call!45417 () ListLongMap!14665)

(assert (=> bm!45411 (= call!45413 call!45417)))

(declare-fun b!1074526 () Bool)

(declare-fun e!614049 () Bool)

(assert (=> b!1074526 (= e!614049 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074527 () Bool)

(declare-fun e!614058 () ListLongMap!14665)

(assert (=> b!1074527 (= e!614058 call!45413)))

(declare-fun bm!45412 () Bool)

(declare-fun call!45418 () Bool)

(declare-fun contains!6353 (ListLongMap!14665 (_ BitVec 64)) Bool)

(assert (=> bm!45412 (= call!45418 (contains!6353 lt!476707 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074528 () Bool)

(declare-fun e!614059 () Bool)

(assert (=> b!1074528 (= e!614059 (= (apply!971 lt!476707 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun bm!45413 () Bool)

(assert (=> bm!45413 (= call!45416 (contains!6353 lt!476707 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074529 () Bool)

(declare-fun c!107868 () Bool)

(assert (=> b!1074529 (= c!107868 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1074529 (= e!614053 e!614058)))

(declare-fun b!1074530 () Bool)

(assert (=> b!1074530 (= e!614047 (not call!45416))))

(declare-fun call!45414 () ListLongMap!14665)

(declare-fun bm!45414 () Bool)

(declare-fun c!107867 () Bool)

(assert (=> bm!45414 (= call!45419 (+!3177 (ite c!107867 call!45414 (ite c!107870 call!45417 call!45413)) (ite (or c!107867 c!107870) (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1074531 () Bool)

(assert (=> b!1074531 (= e!614058 call!45415)))

(declare-fun b!1074532 () Bool)

(assert (=> b!1074532 (= e!614053 call!45415)))

(declare-fun b!1074533 () Bool)

(assert (=> b!1074533 (= e!614048 (+!3177 call!45419 (tuple2!16685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun bm!45415 () Bool)

(assert (=> bm!45415 (= call!45417 call!45414)))

(declare-fun b!1074534 () Bool)

(declare-fun e!614054 () Bool)

(assert (=> b!1074534 (= e!614052 e!614054)))

(declare-fun c!107866 () Bool)

(assert (=> b!1074534 (= c!107866 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074522 () Bool)

(assert (=> b!1074522 (= e!614054 (not call!45418))))

(declare-fun d!129473 () Bool)

(assert (=> d!129473 e!614052))

(declare-fun res!716563 () Bool)

(assert (=> d!129473 (=> (not res!716563) (not e!614052))))

(assert (=> d!129473 (= res!716563 (or (bvsge #b00000000000000000000000000000000 (size!33677 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))))

(declare-fun lt!476703 () ListLongMap!14665)

(assert (=> d!129473 (= lt!476707 lt!476703)))

(declare-fun lt!476700 () Unit!35322)

(assert (=> d!129473 (= lt!476700 e!614051)))

(declare-fun c!107869 () Bool)

(assert (=> d!129473 (= c!107869 e!614049)))

(declare-fun res!716564 () Bool)

(assert (=> d!129473 (=> (not res!716564) (not e!614049))))

(assert (=> d!129473 (= res!716564 (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (=> d!129473 (= lt!476703 e!614048)))

(assert (=> d!129473 (= c!107867 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129473 (validMask!0 mask!1515)))

(assert (=> d!129473 (= (getCurrentListMap!4186 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476707)))

(declare-fun b!1074535 () Bool)

(assert (=> b!1074535 (= e!614054 e!614059)))

(declare-fun res!716565 () Bool)

(assert (=> b!1074535 (= res!716565 call!45418)))

(assert (=> b!1074535 (=> (not res!716565) (not e!614059))))

(declare-fun bm!45416 () Bool)

(assert (=> bm!45416 (= call!45414 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074536 () Bool)

(declare-fun res!716562 () Bool)

(assert (=> b!1074536 (=> (not res!716562) (not e!614052))))

(declare-fun e!614050 () Bool)

(assert (=> b!1074536 (= res!716562 e!614050)))

(declare-fun res!716569 () Bool)

(assert (=> b!1074536 (=> res!716569 e!614050)))

(assert (=> b!1074536 (= res!716569 (not e!614055))))

(declare-fun res!716567 () Bool)

(assert (=> b!1074536 (=> (not res!716567) (not e!614055))))

(assert (=> b!1074536 (= res!716567 (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun b!1074537 () Bool)

(assert (=> b!1074537 (= e!614050 e!614056)))

(declare-fun res!716561 () Bool)

(assert (=> b!1074537 (=> (not res!716561) (not e!614056))))

(assert (=> b!1074537 (= res!716561 (contains!6353 lt!476707 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074537 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun b!1074538 () Bool)

(declare-fun lt!476720 () Unit!35322)

(assert (=> b!1074538 (= e!614051 lt!476720)))

(declare-fun lt!476708 () ListLongMap!14665)

(assert (=> b!1074538 (= lt!476708 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476704 () (_ BitVec 64))

(assert (=> b!1074538 (= lt!476704 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476714 () (_ BitVec 64))

(assert (=> b!1074538 (= lt!476714 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476709 () Unit!35322)

(declare-fun addStillContains!653 (ListLongMap!14665 (_ BitVec 64) V!39787 (_ BitVec 64)) Unit!35322)

(assert (=> b!1074538 (= lt!476709 (addStillContains!653 lt!476708 lt!476704 zeroValueBefore!47 lt!476714))))

(assert (=> b!1074538 (contains!6353 (+!3177 lt!476708 (tuple2!16685 lt!476704 zeroValueBefore!47)) lt!476714)))

(declare-fun lt!476702 () Unit!35322)

(assert (=> b!1074538 (= lt!476702 lt!476709)))

(declare-fun lt!476717 () ListLongMap!14665)

(assert (=> b!1074538 (= lt!476717 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476699 () (_ BitVec 64))

(assert (=> b!1074538 (= lt!476699 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476706 () (_ BitVec 64))

(assert (=> b!1074538 (= lt!476706 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476705 () Unit!35322)

(declare-fun addApplyDifferent!505 (ListLongMap!14665 (_ BitVec 64) V!39787 (_ BitVec 64)) Unit!35322)

(assert (=> b!1074538 (= lt!476705 (addApplyDifferent!505 lt!476717 lt!476699 minValue!907 lt!476706))))

(assert (=> b!1074538 (= (apply!971 (+!3177 lt!476717 (tuple2!16685 lt!476699 minValue!907)) lt!476706) (apply!971 lt!476717 lt!476706))))

(declare-fun lt!476710 () Unit!35322)

(assert (=> b!1074538 (= lt!476710 lt!476705)))

(declare-fun lt!476719 () ListLongMap!14665)

(assert (=> b!1074538 (= lt!476719 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476711 () (_ BitVec 64))

(assert (=> b!1074538 (= lt!476711 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476716 () (_ BitVec 64))

(assert (=> b!1074538 (= lt!476716 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476713 () Unit!35322)

(assert (=> b!1074538 (= lt!476713 (addApplyDifferent!505 lt!476719 lt!476711 zeroValueBefore!47 lt!476716))))

(assert (=> b!1074538 (= (apply!971 (+!3177 lt!476719 (tuple2!16685 lt!476711 zeroValueBefore!47)) lt!476716) (apply!971 lt!476719 lt!476716))))

(declare-fun lt!476718 () Unit!35322)

(assert (=> b!1074538 (= lt!476718 lt!476713)))

(declare-fun lt!476712 () ListLongMap!14665)

(assert (=> b!1074538 (= lt!476712 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476701 () (_ BitVec 64))

(assert (=> b!1074538 (= lt!476701 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476715 () (_ BitVec 64))

(assert (=> b!1074538 (= lt!476715 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074538 (= lt!476720 (addApplyDifferent!505 lt!476712 lt!476701 minValue!907 lt!476715))))

(assert (=> b!1074538 (= (apply!971 (+!3177 lt!476712 (tuple2!16685 lt!476701 minValue!907)) lt!476715) (apply!971 lt!476712 lt!476715))))

(assert (= (and d!129473 c!107867) b!1074533))

(assert (= (and d!129473 (not c!107867)) b!1074524))

(assert (= (and b!1074524 c!107870) b!1074532))

(assert (= (and b!1074524 (not c!107870)) b!1074529))

(assert (= (and b!1074529 c!107868) b!1074531))

(assert (= (and b!1074529 (not c!107868)) b!1074527))

(assert (= (or b!1074531 b!1074527) bm!45411))

(assert (= (or b!1074532 bm!45411) bm!45415))

(assert (= (or b!1074532 b!1074531) bm!45410))

(assert (= (or b!1074533 bm!45415) bm!45416))

(assert (= (or b!1074533 bm!45410) bm!45414))

(assert (= (and d!129473 res!716564) b!1074526))

(assert (= (and d!129473 c!107869) b!1074538))

(assert (= (and d!129473 (not c!107869)) b!1074525))

(assert (= (and d!129473 res!716563) b!1074536))

(assert (= (and b!1074536 res!716567) b!1074521))

(assert (= (and b!1074536 (not res!716569)) b!1074537))

(assert (= (and b!1074537 res!716561) b!1074519))

(assert (= (and b!1074536 res!716562) b!1074523))

(assert (= (and b!1074523 c!107865) b!1074518))

(assert (= (and b!1074523 (not c!107865)) b!1074530))

(assert (= (and b!1074518 res!716568) b!1074520))

(assert (= (or b!1074518 b!1074530) bm!45413))

(assert (= (and b!1074523 res!716566) b!1074534))

(assert (= (and b!1074534 c!107866) b!1074535))

(assert (= (and b!1074534 (not c!107866)) b!1074522))

(assert (= (and b!1074535 res!716565) b!1074528))

(assert (= (or b!1074535 b!1074522) bm!45412))

(declare-fun b_lambda!16839 () Bool)

(assert (=> (not b_lambda!16839) (not b!1074519)))

(declare-fun t!32615 () Bool)

(declare-fun tb!7175 () Bool)

(assert (=> (and start!95080 (= defaultEntry!963 defaultEntry!963) t!32615) tb!7175))

(declare-fun result!14817 () Bool)

(assert (=> tb!7175 (= result!14817 tp_is_empty!25989)))

(assert (=> b!1074519 t!32615))

(declare-fun b_and!35097 () Bool)

(assert (= b_and!35093 (and (=> t!32615 result!14817) b_and!35097)))

(assert (=> bm!45416 m!993429))

(assert (=> d!129473 m!993433))

(declare-fun m!993473 () Bool)

(assert (=> bm!45412 m!993473))

(declare-fun m!993475 () Bool)

(assert (=> b!1074533 m!993475))

(declare-fun m!993477 () Bool)

(assert (=> bm!45413 m!993477))

(declare-fun m!993479 () Bool)

(assert (=> bm!45414 m!993479))

(assert (=> b!1074537 m!993465))

(assert (=> b!1074537 m!993465))

(declare-fun m!993481 () Bool)

(assert (=> b!1074537 m!993481))

(declare-fun m!993483 () Bool)

(assert (=> b!1074528 m!993483))

(assert (=> b!1074521 m!993465))

(assert (=> b!1074521 m!993465))

(assert (=> b!1074521 m!993467))

(declare-fun m!993485 () Bool)

(assert (=> b!1074520 m!993485))

(declare-fun m!993487 () Bool)

(assert (=> b!1074538 m!993487))

(declare-fun m!993489 () Bool)

(assert (=> b!1074538 m!993489))

(declare-fun m!993491 () Bool)

(assert (=> b!1074538 m!993491))

(assert (=> b!1074538 m!993487))

(declare-fun m!993493 () Bool)

(assert (=> b!1074538 m!993493))

(declare-fun m!993495 () Bool)

(assert (=> b!1074538 m!993495))

(assert (=> b!1074538 m!993465))

(declare-fun m!993497 () Bool)

(assert (=> b!1074538 m!993497))

(declare-fun m!993499 () Bool)

(assert (=> b!1074538 m!993499))

(assert (=> b!1074538 m!993429))

(declare-fun m!993501 () Bool)

(assert (=> b!1074538 m!993501))

(declare-fun m!993503 () Bool)

(assert (=> b!1074538 m!993503))

(assert (=> b!1074538 m!993497))

(declare-fun m!993505 () Bool)

(assert (=> b!1074538 m!993505))

(declare-fun m!993507 () Bool)

(assert (=> b!1074538 m!993507))

(assert (=> b!1074538 m!993501))

(declare-fun m!993509 () Bool)

(assert (=> b!1074538 m!993509))

(declare-fun m!993511 () Bool)

(assert (=> b!1074538 m!993511))

(assert (=> b!1074538 m!993491))

(declare-fun m!993513 () Bool)

(assert (=> b!1074538 m!993513))

(declare-fun m!993515 () Bool)

(assert (=> b!1074538 m!993515))

(assert (=> b!1074526 m!993465))

(assert (=> b!1074526 m!993465))

(assert (=> b!1074526 m!993467))

(declare-fun m!993517 () Bool)

(assert (=> b!1074519 m!993517))

(declare-fun m!993519 () Bool)

(assert (=> b!1074519 m!993519))

(assert (=> b!1074519 m!993465))

(declare-fun m!993521 () Bool)

(assert (=> b!1074519 m!993521))

(assert (=> b!1074519 m!993517))

(assert (=> b!1074519 m!993519))

(declare-fun m!993523 () Bool)

(assert (=> b!1074519 m!993523))

(assert (=> b!1074519 m!993465))

(assert (=> b!1074423 d!129473))

(declare-fun d!129475 () Bool)

(declare-fun e!614062 () Bool)

(assert (=> d!129475 e!614062))

(declare-fun res!716574 () Bool)

(assert (=> d!129475 (=> (not res!716574) (not e!614062))))

(declare-fun lt!476731 () ListLongMap!14665)

(assert (=> d!129475 (= res!716574 (contains!6353 lt!476731 (_1!8352 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!476730 () List!23258)

(assert (=> d!129475 (= lt!476731 (ListLongMap!14666 lt!476730))))

(declare-fun lt!476729 () Unit!35322)

(declare-fun lt!476732 () Unit!35322)

(assert (=> d!129475 (= lt!476729 lt!476732)))

(declare-datatypes ((Option!662 0))(
  ( (Some!661 (v!15669 V!39787)) (None!660) )
))
(declare-fun getValueByKey!611 (List!23258 (_ BitVec 64)) Option!662)

(assert (=> d!129475 (= (getValueByKey!611 lt!476730 (_1!8352 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!661 (_2!8352 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lemmaContainsTupThenGetReturnValue!288 (List!23258 (_ BitVec 64) V!39787) Unit!35322)

(assert (=> d!129475 (= lt!476732 (lemmaContainsTupThenGetReturnValue!288 lt!476730 (_1!8352 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8352 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun insertStrictlySorted!380 (List!23258 (_ BitVec 64) V!39787) List!23258)

(assert (=> d!129475 (= lt!476730 (insertStrictlySorted!380 (toList!7348 lt!476645) (_1!8352 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8352 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129475 (= (+!3177 lt!476645 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!476731)))

(declare-fun b!1074545 () Bool)

(declare-fun res!716575 () Bool)

(assert (=> b!1074545 (=> (not res!716575) (not e!614062))))

(assert (=> b!1074545 (= res!716575 (= (getValueByKey!611 (toList!7348 lt!476731) (_1!8352 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!661 (_2!8352 (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))))

(declare-fun b!1074546 () Bool)

(declare-fun contains!6354 (List!23258 tuple2!16684) Bool)

(assert (=> b!1074546 (= e!614062 (contains!6354 (toList!7348 lt!476731) (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(assert (= (and d!129475 res!716574) b!1074545))

(assert (= (and b!1074545 res!716575) b!1074546))

(declare-fun m!993525 () Bool)

(assert (=> d!129475 m!993525))

(declare-fun m!993527 () Bool)

(assert (=> d!129475 m!993527))

(declare-fun m!993529 () Bool)

(assert (=> d!129475 m!993529))

(declare-fun m!993531 () Bool)

(assert (=> d!129475 m!993531))

(declare-fun m!993533 () Bool)

(assert (=> b!1074545 m!993533))

(declare-fun m!993535 () Bool)

(assert (=> b!1074546 m!993535))

(assert (=> b!1074423 d!129475))

(declare-fun b!1074555 () Bool)

(declare-fun e!614069 () Bool)

(declare-fun call!45422 () Bool)

(assert (=> b!1074555 (= e!614069 call!45422)))

(declare-fun b!1074556 () Bool)

(declare-fun e!614071 () Bool)

(assert (=> b!1074556 (= e!614071 call!45422)))

(declare-fun b!1074557 () Bool)

(assert (=> b!1074557 (= e!614071 e!614069)))

(declare-fun lt!476739 () (_ BitVec 64))

(assert (=> b!1074557 (= lt!476739 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476740 () Unit!35322)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68908 (_ BitVec 64) (_ BitVec 32)) Unit!35322)

(assert (=> b!1074557 (= lt!476740 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!476739 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1074557 (arrayContainsKey!0 _keys!1163 lt!476739 #b00000000000000000000000000000000)))

(declare-fun lt!476741 () Unit!35322)

(assert (=> b!1074557 (= lt!476741 lt!476740)))

(declare-fun res!716581 () Bool)

(declare-datatypes ((SeekEntryResult!9886 0))(
  ( (MissingZero!9886 (index!41914 (_ BitVec 32))) (Found!9886 (index!41915 (_ BitVec 32))) (Intermediate!9886 (undefined!10698 Bool) (index!41916 (_ BitVec 32)) (x!96298 (_ BitVec 32))) (Undefined!9886) (MissingVacant!9886 (index!41917 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68908 (_ BitVec 32)) SeekEntryResult!9886)

(assert (=> b!1074557 (= res!716581 (= (seekEntryOrOpen!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9886 #b00000000000000000000000000000000)))))

(assert (=> b!1074557 (=> (not res!716581) (not e!614069))))

(declare-fun d!129477 () Bool)

(declare-fun res!716580 () Bool)

(declare-fun e!614070 () Bool)

(assert (=> d!129477 (=> res!716580 e!614070)))

(assert (=> d!129477 (= res!716580 (bvsge #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (=> d!129477 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!614070)))

(declare-fun bm!45419 () Bool)

(assert (=> bm!45419 (= call!45422 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1074558 () Bool)

(assert (=> b!1074558 (= e!614070 e!614071)))

(declare-fun c!107873 () Bool)

(assert (=> b!1074558 (= c!107873 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129477 (not res!716580)) b!1074558))

(assert (= (and b!1074558 c!107873) b!1074557))

(assert (= (and b!1074558 (not c!107873)) b!1074556))

(assert (= (and b!1074557 res!716581) b!1074555))

(assert (= (or b!1074555 b!1074556) bm!45419))

(assert (=> b!1074557 m!993465))

(declare-fun m!993537 () Bool)

(assert (=> b!1074557 m!993537))

(declare-fun m!993539 () Bool)

(assert (=> b!1074557 m!993539))

(assert (=> b!1074557 m!993465))

(declare-fun m!993541 () Bool)

(assert (=> b!1074557 m!993541))

(declare-fun m!993543 () Bool)

(assert (=> bm!45419 m!993543))

(assert (=> b!1074558 m!993465))

(assert (=> b!1074558 m!993465))

(assert (=> b!1074558 m!993467))

(assert (=> b!1074421 d!129477))

(declare-fun d!129479 () Bool)

(assert (=> d!129479 (= (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476744 () Unit!35322)

(declare-fun choose!1757 (array!68908 array!68910 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39787 V!39787 V!39787 V!39787 (_ BitVec 32) Int) Unit!35322)

(assert (=> d!129479 (= lt!476744 (choose!1757 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129479 (validMask!0 mask!1515)))

(assert (=> d!129479 (= (lemmaNoChangeToArrayThenSameMapNoExtras!894 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476744)))

(declare-fun bs!31661 () Bool)

(assert (= bs!31661 d!129479))

(assert (=> bs!31661 m!993429))

(assert (=> bs!31661 m!993427))

(declare-fun m!993545 () Bool)

(assert (=> bs!31661 m!993545))

(assert (=> bs!31661 m!993433))

(assert (=> b!1074429 d!129479))

(declare-fun d!129481 () Bool)

(declare-fun e!614087 () Bool)

(assert (=> d!129481 e!614087))

(declare-fun res!716593 () Bool)

(assert (=> d!129481 (=> (not res!716593) (not e!614087))))

(declare-fun lt!476763 () ListLongMap!14665)

(assert (=> d!129481 (= res!716593 (not (contains!6353 lt!476763 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!614091 () ListLongMap!14665)

(assert (=> d!129481 (= lt!476763 e!614091)))

(declare-fun c!107883 () Bool)

(assert (=> d!129481 (= c!107883 (bvsge #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (=> d!129481 (validMask!0 mask!1515)))

(assert (=> d!129481 (= (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476763)))

(declare-fun b!1074583 () Bool)

(declare-fun res!716592 () Bool)

(assert (=> b!1074583 (=> (not res!716592) (not e!614087))))

(assert (=> b!1074583 (= res!716592 (not (contains!6353 lt!476763 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1074584 () Bool)

(assert (=> b!1074584 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (=> b!1074584 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33678 _values!955)))))

(declare-fun e!614086 () Bool)

(assert (=> b!1074584 (= e!614086 (= (apply!971 lt!476763 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)) (get!17235 (select (arr!33141 _values!955) #b00000000000000000000000000000000) (dynLambda!2047 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1074585 () Bool)

(declare-fun e!614090 () Bool)

(assert (=> b!1074585 (= e!614090 e!614086)))

(assert (=> b!1074585 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun res!716590 () Bool)

(assert (=> b!1074585 (= res!716590 (contains!6353 lt!476763 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074585 (=> (not res!716590) (not e!614086))))

(declare-fun b!1074586 () Bool)

(declare-fun e!614089 () ListLongMap!14665)

(declare-fun call!45425 () ListLongMap!14665)

(assert (=> b!1074586 (= e!614089 call!45425)))

(declare-fun b!1074587 () Bool)

(declare-fun e!614088 () Bool)

(declare-fun isEmpty!957 (ListLongMap!14665) Bool)

(assert (=> b!1074587 (= e!614088 (isEmpty!957 lt!476763))))

(declare-fun b!1074588 () Bool)

(declare-fun e!614092 () Bool)

(assert (=> b!1074588 (= e!614092 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074588 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1074589 () Bool)

(declare-fun lt!476761 () Unit!35322)

(declare-fun lt!476762 () Unit!35322)

(assert (=> b!1074589 (= lt!476761 lt!476762)))

(declare-fun lt!476765 () (_ BitVec 64))

(declare-fun lt!476760 () V!39787)

(declare-fun lt!476764 () ListLongMap!14665)

(declare-fun lt!476759 () (_ BitVec 64))

(assert (=> b!1074589 (not (contains!6353 (+!3177 lt!476764 (tuple2!16685 lt!476759 lt!476760)) lt!476765))))

(declare-fun addStillNotContains!266 (ListLongMap!14665 (_ BitVec 64) V!39787 (_ BitVec 64)) Unit!35322)

(assert (=> b!1074589 (= lt!476762 (addStillNotContains!266 lt!476764 lt!476759 lt!476760 lt!476765))))

(assert (=> b!1074589 (= lt!476765 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1074589 (= lt!476760 (get!17235 (select (arr!33141 _values!955) #b00000000000000000000000000000000) (dynLambda!2047 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1074589 (= lt!476759 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074589 (= lt!476764 call!45425)))

(assert (=> b!1074589 (= e!614089 (+!3177 call!45425 (tuple2!16685 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000) (get!17235 (select (arr!33141 _values!955) #b00000000000000000000000000000000) (dynLambda!2047 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1074590 () Bool)

(assert (=> b!1074590 (= e!614090 e!614088)))

(declare-fun c!107884 () Bool)

(assert (=> b!1074590 (= c!107884 (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun bm!45422 () Bool)

(assert (=> bm!45422 (= call!45425 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1074591 () Bool)

(assert (=> b!1074591 (= e!614091 e!614089)))

(declare-fun c!107882 () Bool)

(assert (=> b!1074591 (= c!107882 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074592 () Bool)

(assert (=> b!1074592 (= e!614088 (= lt!476763 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1074593 () Bool)

(assert (=> b!1074593 (= e!614091 (ListLongMap!14666 Nil!23255))))

(declare-fun b!1074594 () Bool)

(assert (=> b!1074594 (= e!614087 e!614090)))

(declare-fun c!107885 () Bool)

(assert (=> b!1074594 (= c!107885 e!614092)))

(declare-fun res!716591 () Bool)

(assert (=> b!1074594 (=> (not res!716591) (not e!614092))))

(assert (=> b!1074594 (= res!716591 (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (= (and d!129481 c!107883) b!1074593))

(assert (= (and d!129481 (not c!107883)) b!1074591))

(assert (= (and b!1074591 c!107882) b!1074589))

(assert (= (and b!1074591 (not c!107882)) b!1074586))

(assert (= (or b!1074589 b!1074586) bm!45422))

(assert (= (and d!129481 res!716593) b!1074583))

(assert (= (and b!1074583 res!716592) b!1074594))

(assert (= (and b!1074594 res!716591) b!1074588))

(assert (= (and b!1074594 c!107885) b!1074585))

(assert (= (and b!1074594 (not c!107885)) b!1074590))

(assert (= (and b!1074585 res!716590) b!1074584))

(assert (= (and b!1074590 c!107884) b!1074592))

(assert (= (and b!1074590 (not c!107884)) b!1074587))

(declare-fun b_lambda!16841 () Bool)

(assert (=> (not b_lambda!16841) (not b!1074584)))

(assert (=> b!1074584 t!32615))

(declare-fun b_and!35099 () Bool)

(assert (= b_and!35097 (and (=> t!32615 result!14817) b_and!35099)))

(declare-fun b_lambda!16843 () Bool)

(assert (=> (not b_lambda!16843) (not b!1074589)))

(assert (=> b!1074589 t!32615))

(declare-fun b_and!35101 () Bool)

(assert (= b_and!35099 (and (=> t!32615 result!14817) b_and!35101)))

(declare-fun m!993547 () Bool)

(assert (=> b!1074583 m!993547))

(assert (=> b!1074591 m!993465))

(assert (=> b!1074591 m!993465))

(assert (=> b!1074591 m!993467))

(declare-fun m!993549 () Bool)

(assert (=> b!1074587 m!993549))

(declare-fun m!993551 () Bool)

(assert (=> bm!45422 m!993551))

(declare-fun m!993553 () Bool)

(assert (=> b!1074589 m!993553))

(declare-fun m!993555 () Bool)

(assert (=> b!1074589 m!993555))

(declare-fun m!993557 () Bool)

(assert (=> b!1074589 m!993557))

(assert (=> b!1074589 m!993557))

(declare-fun m!993559 () Bool)

(assert (=> b!1074589 m!993559))

(assert (=> b!1074589 m!993519))

(assert (=> b!1074589 m!993517))

(assert (=> b!1074589 m!993517))

(assert (=> b!1074589 m!993519))

(assert (=> b!1074589 m!993523))

(assert (=> b!1074589 m!993465))

(assert (=> b!1074592 m!993551))

(assert (=> b!1074584 m!993465))

(declare-fun m!993561 () Bool)

(assert (=> b!1074584 m!993561))

(assert (=> b!1074584 m!993519))

(assert (=> b!1074584 m!993517))

(assert (=> b!1074584 m!993517))

(assert (=> b!1074584 m!993519))

(assert (=> b!1074584 m!993523))

(assert (=> b!1074584 m!993465))

(assert (=> b!1074585 m!993465))

(assert (=> b!1074585 m!993465))

(declare-fun m!993563 () Bool)

(assert (=> b!1074585 m!993563))

(declare-fun m!993565 () Bool)

(assert (=> d!129481 m!993565))

(assert (=> d!129481 m!993433))

(assert (=> b!1074588 m!993465))

(assert (=> b!1074588 m!993465))

(assert (=> b!1074588 m!993467))

(assert (=> b!1074429 d!129481))

(declare-fun d!129483 () Bool)

(declare-fun e!614094 () Bool)

(assert (=> d!129483 e!614094))

(declare-fun res!716597 () Bool)

(assert (=> d!129483 (=> (not res!716597) (not e!614094))))

(declare-fun lt!476770 () ListLongMap!14665)

(assert (=> d!129483 (= res!716597 (not (contains!6353 lt!476770 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!614098 () ListLongMap!14665)

(assert (=> d!129483 (= lt!476770 e!614098)))

(declare-fun c!107887 () Bool)

(assert (=> d!129483 (= c!107887 (bvsge #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (=> d!129483 (validMask!0 mask!1515)))

(assert (=> d!129483 (= (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476770)))

(declare-fun b!1074595 () Bool)

(declare-fun res!716596 () Bool)

(assert (=> b!1074595 (=> (not res!716596) (not e!614094))))

(assert (=> b!1074595 (= res!716596 (not (contains!6353 lt!476770 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1074596 () Bool)

(assert (=> b!1074596 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (=> b!1074596 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33678 _values!955)))))

(declare-fun e!614093 () Bool)

(assert (=> b!1074596 (= e!614093 (= (apply!971 lt!476770 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)) (get!17235 (select (arr!33141 _values!955) #b00000000000000000000000000000000) (dynLambda!2047 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1074597 () Bool)

(declare-fun e!614097 () Bool)

(assert (=> b!1074597 (= e!614097 e!614093)))

(assert (=> b!1074597 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun res!716594 () Bool)

(assert (=> b!1074597 (= res!716594 (contains!6353 lt!476770 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074597 (=> (not res!716594) (not e!614093))))

(declare-fun b!1074598 () Bool)

(declare-fun e!614096 () ListLongMap!14665)

(declare-fun call!45426 () ListLongMap!14665)

(assert (=> b!1074598 (= e!614096 call!45426)))

(declare-fun b!1074599 () Bool)

(declare-fun e!614095 () Bool)

(assert (=> b!1074599 (= e!614095 (isEmpty!957 lt!476770))))

(declare-fun b!1074600 () Bool)

(declare-fun e!614099 () Bool)

(assert (=> b!1074600 (= e!614099 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074600 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1074601 () Bool)

(declare-fun lt!476768 () Unit!35322)

(declare-fun lt!476769 () Unit!35322)

(assert (=> b!1074601 (= lt!476768 lt!476769)))

(declare-fun lt!476767 () V!39787)

(declare-fun lt!476766 () (_ BitVec 64))

(declare-fun lt!476771 () ListLongMap!14665)

(declare-fun lt!476772 () (_ BitVec 64))

(assert (=> b!1074601 (not (contains!6353 (+!3177 lt!476771 (tuple2!16685 lt!476766 lt!476767)) lt!476772))))

(assert (=> b!1074601 (= lt!476769 (addStillNotContains!266 lt!476771 lt!476766 lt!476767 lt!476772))))

(assert (=> b!1074601 (= lt!476772 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1074601 (= lt!476767 (get!17235 (select (arr!33141 _values!955) #b00000000000000000000000000000000) (dynLambda!2047 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1074601 (= lt!476766 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074601 (= lt!476771 call!45426)))

(assert (=> b!1074601 (= e!614096 (+!3177 call!45426 (tuple2!16685 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000) (get!17235 (select (arr!33141 _values!955) #b00000000000000000000000000000000) (dynLambda!2047 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1074602 () Bool)

(assert (=> b!1074602 (= e!614097 e!614095)))

(declare-fun c!107888 () Bool)

(assert (=> b!1074602 (= c!107888 (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun bm!45423 () Bool)

(assert (=> bm!45423 (= call!45426 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1074603 () Bool)

(assert (=> b!1074603 (= e!614098 e!614096)))

(declare-fun c!107886 () Bool)

(assert (=> b!1074603 (= c!107886 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074604 () Bool)

(assert (=> b!1074604 (= e!614095 (= lt!476770 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1074605 () Bool)

(assert (=> b!1074605 (= e!614098 (ListLongMap!14666 Nil!23255))))

(declare-fun b!1074606 () Bool)

(assert (=> b!1074606 (= e!614094 e!614097)))

(declare-fun c!107889 () Bool)

(assert (=> b!1074606 (= c!107889 e!614099)))

(declare-fun res!716595 () Bool)

(assert (=> b!1074606 (=> (not res!716595) (not e!614099))))

(assert (=> b!1074606 (= res!716595 (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (= (and d!129483 c!107887) b!1074605))

(assert (= (and d!129483 (not c!107887)) b!1074603))

(assert (= (and b!1074603 c!107886) b!1074601))

(assert (= (and b!1074603 (not c!107886)) b!1074598))

(assert (= (or b!1074601 b!1074598) bm!45423))

(assert (= (and d!129483 res!716597) b!1074595))

(assert (= (and b!1074595 res!716596) b!1074606))

(assert (= (and b!1074606 res!716595) b!1074600))

(assert (= (and b!1074606 c!107889) b!1074597))

(assert (= (and b!1074606 (not c!107889)) b!1074602))

(assert (= (and b!1074597 res!716594) b!1074596))

(assert (= (and b!1074602 c!107888) b!1074604))

(assert (= (and b!1074602 (not c!107888)) b!1074599))

(declare-fun b_lambda!16845 () Bool)

(assert (=> (not b_lambda!16845) (not b!1074596)))

(assert (=> b!1074596 t!32615))

(declare-fun b_and!35103 () Bool)

(assert (= b_and!35101 (and (=> t!32615 result!14817) b_and!35103)))

(declare-fun b_lambda!16847 () Bool)

(assert (=> (not b_lambda!16847) (not b!1074601)))

(assert (=> b!1074601 t!32615))

(declare-fun b_and!35105 () Bool)

(assert (= b_and!35103 (and (=> t!32615 result!14817) b_and!35105)))

(declare-fun m!993567 () Bool)

(assert (=> b!1074595 m!993567))

(assert (=> b!1074603 m!993465))

(assert (=> b!1074603 m!993465))

(assert (=> b!1074603 m!993467))

(declare-fun m!993569 () Bool)

(assert (=> b!1074599 m!993569))

(declare-fun m!993571 () Bool)

(assert (=> bm!45423 m!993571))

(declare-fun m!993573 () Bool)

(assert (=> b!1074601 m!993573))

(declare-fun m!993575 () Bool)

(assert (=> b!1074601 m!993575))

(declare-fun m!993577 () Bool)

(assert (=> b!1074601 m!993577))

(assert (=> b!1074601 m!993577))

(declare-fun m!993579 () Bool)

(assert (=> b!1074601 m!993579))

(assert (=> b!1074601 m!993519))

(assert (=> b!1074601 m!993517))

(assert (=> b!1074601 m!993517))

(assert (=> b!1074601 m!993519))

(assert (=> b!1074601 m!993523))

(assert (=> b!1074601 m!993465))

(assert (=> b!1074604 m!993571))

(assert (=> b!1074596 m!993465))

(declare-fun m!993581 () Bool)

(assert (=> b!1074596 m!993581))

(assert (=> b!1074596 m!993519))

(assert (=> b!1074596 m!993517))

(assert (=> b!1074596 m!993517))

(assert (=> b!1074596 m!993519))

(assert (=> b!1074596 m!993523))

(assert (=> b!1074596 m!993465))

(assert (=> b!1074597 m!993465))

(assert (=> b!1074597 m!993465))

(declare-fun m!993583 () Bool)

(assert (=> b!1074597 m!993583))

(declare-fun m!993585 () Bool)

(assert (=> d!129483 m!993585))

(assert (=> d!129483 m!993433))

(assert (=> b!1074600 m!993465))

(assert (=> b!1074600 m!993465))

(assert (=> b!1074600 m!993467))

(assert (=> b!1074429 d!129483))

(declare-fun b!1074607 () Bool)

(declare-fun e!614100 () Bool)

(declare-fun e!614110 () Bool)

(assert (=> b!1074607 (= e!614100 e!614110)))

(declare-fun res!716605 () Bool)

(declare-fun call!45430 () Bool)

(assert (=> b!1074607 (= res!716605 call!45430)))

(assert (=> b!1074607 (=> (not res!716605) (not e!614110))))

(declare-fun lt!476781 () ListLongMap!14665)

(declare-fun b!1074608 () Bool)

(declare-fun e!614109 () Bool)

(assert (=> b!1074608 (= e!614109 (= (apply!971 lt!476781 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)) (get!17235 (select (arr!33141 _values!955) #b00000000000000000000000000000000) (dynLambda!2047 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1074608 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33678 _values!955)))))

(assert (=> b!1074608 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun bm!45424 () Bool)

(declare-fun call!45429 () ListLongMap!14665)

(declare-fun call!45433 () ListLongMap!14665)

(assert (=> bm!45424 (= call!45429 call!45433)))

(declare-fun b!1074609 () Bool)

(assert (=> b!1074609 (= e!614110 (= (apply!971 lt!476781 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun b!1074610 () Bool)

(declare-fun e!614108 () Bool)

(assert (=> b!1074610 (= e!614108 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074612 () Bool)

(declare-fun res!716603 () Bool)

(declare-fun e!614105 () Bool)

(assert (=> b!1074612 (=> (not res!716603) (not e!614105))))

(assert (=> b!1074612 (= res!716603 e!614100)))

(declare-fun c!107890 () Bool)

(assert (=> b!1074612 (= c!107890 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074613 () Bool)

(declare-fun e!614101 () ListLongMap!14665)

(declare-fun e!614106 () ListLongMap!14665)

(assert (=> b!1074613 (= e!614101 e!614106)))

(declare-fun c!107895 () Bool)

(assert (=> b!1074613 (= c!107895 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074614 () Bool)

(declare-fun e!614104 () Unit!35322)

(declare-fun Unit!35327 () Unit!35322)

(assert (=> b!1074614 (= e!614104 Unit!35327)))

(declare-fun bm!45425 () Bool)

(declare-fun call!45427 () ListLongMap!14665)

(declare-fun call!45431 () ListLongMap!14665)

(assert (=> bm!45425 (= call!45427 call!45431)))

(declare-fun b!1074615 () Bool)

(declare-fun e!614102 () Bool)

(assert (=> b!1074615 (= e!614102 (validKeyInArray!0 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074616 () Bool)

(declare-fun e!614111 () ListLongMap!14665)

(assert (=> b!1074616 (= e!614111 call!45427)))

(declare-fun bm!45426 () Bool)

(declare-fun call!45432 () Bool)

(assert (=> bm!45426 (= call!45432 (contains!6353 lt!476781 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074617 () Bool)

(declare-fun e!614112 () Bool)

(assert (=> b!1074617 (= e!614112 (= (apply!971 lt!476781 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun bm!45427 () Bool)

(assert (=> bm!45427 (= call!45430 (contains!6353 lt!476781 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074618 () Bool)

(declare-fun c!107893 () Bool)

(assert (=> b!1074618 (= c!107893 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1074618 (= e!614106 e!614111)))

(declare-fun b!1074619 () Bool)

(assert (=> b!1074619 (= e!614100 (not call!45430))))

(declare-fun bm!45428 () Bool)

(declare-fun c!107892 () Bool)

(declare-fun call!45428 () ListLongMap!14665)

(assert (=> bm!45428 (= call!45433 (+!3177 (ite c!107892 call!45428 (ite c!107895 call!45431 call!45427)) (ite (or c!107892 c!107895) (tuple2!16685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1074620 () Bool)

(assert (=> b!1074620 (= e!614111 call!45429)))

(declare-fun b!1074621 () Bool)

(assert (=> b!1074621 (= e!614106 call!45429)))

(declare-fun b!1074622 () Bool)

(assert (=> b!1074622 (= e!614101 (+!3177 call!45433 (tuple2!16685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun bm!45429 () Bool)

(assert (=> bm!45429 (= call!45431 call!45428)))

(declare-fun b!1074623 () Bool)

(declare-fun e!614107 () Bool)

(assert (=> b!1074623 (= e!614105 e!614107)))

(declare-fun c!107891 () Bool)

(assert (=> b!1074623 (= c!107891 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074611 () Bool)

(assert (=> b!1074611 (= e!614107 (not call!45432))))

(declare-fun d!129485 () Bool)

(assert (=> d!129485 e!614105))

(declare-fun res!716600 () Bool)

(assert (=> d!129485 (=> (not res!716600) (not e!614105))))

(assert (=> d!129485 (= res!716600 (or (bvsge #b00000000000000000000000000000000 (size!33677 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))))

(declare-fun lt!476777 () ListLongMap!14665)

(assert (=> d!129485 (= lt!476781 lt!476777)))

(declare-fun lt!476774 () Unit!35322)

(assert (=> d!129485 (= lt!476774 e!614104)))

(declare-fun c!107894 () Bool)

(assert (=> d!129485 (= c!107894 e!614102)))

(declare-fun res!716601 () Bool)

(assert (=> d!129485 (=> (not res!716601) (not e!614102))))

(assert (=> d!129485 (= res!716601 (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(assert (=> d!129485 (= lt!476777 e!614101)))

(assert (=> d!129485 (= c!107892 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129485 (validMask!0 mask!1515)))

(assert (=> d!129485 (= (getCurrentListMap!4186 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476781)))

(declare-fun b!1074624 () Bool)

(assert (=> b!1074624 (= e!614107 e!614112)))

(declare-fun res!716602 () Bool)

(assert (=> b!1074624 (= res!716602 call!45432)))

(assert (=> b!1074624 (=> (not res!716602) (not e!614112))))

(declare-fun bm!45430 () Bool)

(assert (=> bm!45430 (= call!45428 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074625 () Bool)

(declare-fun res!716599 () Bool)

(assert (=> b!1074625 (=> (not res!716599) (not e!614105))))

(declare-fun e!614103 () Bool)

(assert (=> b!1074625 (= res!716599 e!614103)))

(declare-fun res!716606 () Bool)

(assert (=> b!1074625 (=> res!716606 e!614103)))

(assert (=> b!1074625 (= res!716606 (not e!614108))))

(declare-fun res!716604 () Bool)

(assert (=> b!1074625 (=> (not res!716604) (not e!614108))))

(assert (=> b!1074625 (= res!716604 (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun b!1074626 () Bool)

(assert (=> b!1074626 (= e!614103 e!614109)))

(declare-fun res!716598 () Bool)

(assert (=> b!1074626 (=> (not res!716598) (not e!614109))))

(assert (=> b!1074626 (= res!716598 (contains!6353 lt!476781 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074626 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33677 _keys!1163)))))

(declare-fun b!1074627 () Bool)

(declare-fun lt!476794 () Unit!35322)

(assert (=> b!1074627 (= e!614104 lt!476794)))

(declare-fun lt!476782 () ListLongMap!14665)

(assert (=> b!1074627 (= lt!476782 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476778 () (_ BitVec 64))

(assert (=> b!1074627 (= lt!476778 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476788 () (_ BitVec 64))

(assert (=> b!1074627 (= lt!476788 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476783 () Unit!35322)

(assert (=> b!1074627 (= lt!476783 (addStillContains!653 lt!476782 lt!476778 zeroValueAfter!47 lt!476788))))

(assert (=> b!1074627 (contains!6353 (+!3177 lt!476782 (tuple2!16685 lt!476778 zeroValueAfter!47)) lt!476788)))

(declare-fun lt!476776 () Unit!35322)

(assert (=> b!1074627 (= lt!476776 lt!476783)))

(declare-fun lt!476791 () ListLongMap!14665)

(assert (=> b!1074627 (= lt!476791 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476773 () (_ BitVec 64))

(assert (=> b!1074627 (= lt!476773 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476780 () (_ BitVec 64))

(assert (=> b!1074627 (= lt!476780 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476779 () Unit!35322)

(assert (=> b!1074627 (= lt!476779 (addApplyDifferent!505 lt!476791 lt!476773 minValue!907 lt!476780))))

(assert (=> b!1074627 (= (apply!971 (+!3177 lt!476791 (tuple2!16685 lt!476773 minValue!907)) lt!476780) (apply!971 lt!476791 lt!476780))))

(declare-fun lt!476784 () Unit!35322)

(assert (=> b!1074627 (= lt!476784 lt!476779)))

(declare-fun lt!476793 () ListLongMap!14665)

(assert (=> b!1074627 (= lt!476793 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476785 () (_ BitVec 64))

(assert (=> b!1074627 (= lt!476785 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476790 () (_ BitVec 64))

(assert (=> b!1074627 (= lt!476790 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476787 () Unit!35322)

(assert (=> b!1074627 (= lt!476787 (addApplyDifferent!505 lt!476793 lt!476785 zeroValueAfter!47 lt!476790))))

(assert (=> b!1074627 (= (apply!971 (+!3177 lt!476793 (tuple2!16685 lt!476785 zeroValueAfter!47)) lt!476790) (apply!971 lt!476793 lt!476790))))

(declare-fun lt!476792 () Unit!35322)

(assert (=> b!1074627 (= lt!476792 lt!476787)))

(declare-fun lt!476786 () ListLongMap!14665)

(assert (=> b!1074627 (= lt!476786 (getCurrentListMapNoExtraKeys!3875 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476775 () (_ BitVec 64))

(assert (=> b!1074627 (= lt!476775 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476789 () (_ BitVec 64))

(assert (=> b!1074627 (= lt!476789 (select (arr!33140 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074627 (= lt!476794 (addApplyDifferent!505 lt!476786 lt!476775 minValue!907 lt!476789))))

(assert (=> b!1074627 (= (apply!971 (+!3177 lt!476786 (tuple2!16685 lt!476775 minValue!907)) lt!476789) (apply!971 lt!476786 lt!476789))))

(assert (= (and d!129485 c!107892) b!1074622))

(assert (= (and d!129485 (not c!107892)) b!1074613))

(assert (= (and b!1074613 c!107895) b!1074621))

(assert (= (and b!1074613 (not c!107895)) b!1074618))

(assert (= (and b!1074618 c!107893) b!1074620))

(assert (= (and b!1074618 (not c!107893)) b!1074616))

(assert (= (or b!1074620 b!1074616) bm!45425))

(assert (= (or b!1074621 bm!45425) bm!45429))

(assert (= (or b!1074621 b!1074620) bm!45424))

(assert (= (or b!1074622 bm!45429) bm!45430))

(assert (= (or b!1074622 bm!45424) bm!45428))

(assert (= (and d!129485 res!716601) b!1074615))

(assert (= (and d!129485 c!107894) b!1074627))

(assert (= (and d!129485 (not c!107894)) b!1074614))

(assert (= (and d!129485 res!716600) b!1074625))

(assert (= (and b!1074625 res!716604) b!1074610))

(assert (= (and b!1074625 (not res!716606)) b!1074626))

(assert (= (and b!1074626 res!716598) b!1074608))

(assert (= (and b!1074625 res!716599) b!1074612))

(assert (= (and b!1074612 c!107890) b!1074607))

(assert (= (and b!1074612 (not c!107890)) b!1074619))

(assert (= (and b!1074607 res!716605) b!1074609))

(assert (= (or b!1074607 b!1074619) bm!45427))

(assert (= (and b!1074612 res!716603) b!1074623))

(assert (= (and b!1074623 c!107891) b!1074624))

(assert (= (and b!1074623 (not c!107891)) b!1074611))

(assert (= (and b!1074624 res!716602) b!1074617))

(assert (= (or b!1074624 b!1074611) bm!45426))

(declare-fun b_lambda!16849 () Bool)

(assert (=> (not b_lambda!16849) (not b!1074608)))

(assert (=> b!1074608 t!32615))

(declare-fun b_and!35107 () Bool)

(assert (= b_and!35105 (and (=> t!32615 result!14817) b_and!35107)))

(assert (=> bm!45430 m!993427))

(assert (=> d!129485 m!993433))

(declare-fun m!993587 () Bool)

(assert (=> bm!45426 m!993587))

(declare-fun m!993589 () Bool)

(assert (=> b!1074622 m!993589))

(declare-fun m!993591 () Bool)

(assert (=> bm!45427 m!993591))

(declare-fun m!993593 () Bool)

(assert (=> bm!45428 m!993593))

(assert (=> b!1074626 m!993465))

(assert (=> b!1074626 m!993465))

(declare-fun m!993595 () Bool)

(assert (=> b!1074626 m!993595))

(declare-fun m!993597 () Bool)

(assert (=> b!1074617 m!993597))

(assert (=> b!1074610 m!993465))

(assert (=> b!1074610 m!993465))

(assert (=> b!1074610 m!993467))

(declare-fun m!993599 () Bool)

(assert (=> b!1074609 m!993599))

(declare-fun m!993601 () Bool)

(assert (=> b!1074627 m!993601))

(declare-fun m!993603 () Bool)

(assert (=> b!1074627 m!993603))

(declare-fun m!993605 () Bool)

(assert (=> b!1074627 m!993605))

(assert (=> b!1074627 m!993601))

(declare-fun m!993607 () Bool)

(assert (=> b!1074627 m!993607))

(declare-fun m!993609 () Bool)

(assert (=> b!1074627 m!993609))

(assert (=> b!1074627 m!993465))

(declare-fun m!993611 () Bool)

(assert (=> b!1074627 m!993611))

(declare-fun m!993613 () Bool)

(assert (=> b!1074627 m!993613))

(assert (=> b!1074627 m!993427))

(declare-fun m!993615 () Bool)

(assert (=> b!1074627 m!993615))

(declare-fun m!993617 () Bool)

(assert (=> b!1074627 m!993617))

(assert (=> b!1074627 m!993611))

(declare-fun m!993619 () Bool)

(assert (=> b!1074627 m!993619))

(declare-fun m!993621 () Bool)

(assert (=> b!1074627 m!993621))

(assert (=> b!1074627 m!993615))

(declare-fun m!993623 () Bool)

(assert (=> b!1074627 m!993623))

(declare-fun m!993625 () Bool)

(assert (=> b!1074627 m!993625))

(assert (=> b!1074627 m!993605))

(declare-fun m!993627 () Bool)

(assert (=> b!1074627 m!993627))

(declare-fun m!993629 () Bool)

(assert (=> b!1074627 m!993629))

(assert (=> b!1074615 m!993465))

(assert (=> b!1074615 m!993465))

(assert (=> b!1074615 m!993467))

(assert (=> b!1074608 m!993517))

(assert (=> b!1074608 m!993519))

(assert (=> b!1074608 m!993465))

(declare-fun m!993631 () Bool)

(assert (=> b!1074608 m!993631))

(assert (=> b!1074608 m!993517))

(assert (=> b!1074608 m!993519))

(assert (=> b!1074608 m!993523))

(assert (=> b!1074608 m!993465))

(assert (=> b!1074426 d!129485))

(declare-fun mapIsEmpty!40714 () Bool)

(declare-fun mapRes!40714 () Bool)

(assert (=> mapIsEmpty!40714 mapRes!40714))

(declare-fun b!1074634 () Bool)

(declare-fun e!614118 () Bool)

(assert (=> b!1074634 (= e!614118 tp_is_empty!25989)))

(declare-fun mapNonEmpty!40714 () Bool)

(declare-fun tp!78024 () Bool)

(assert (=> mapNonEmpty!40714 (= mapRes!40714 (and tp!78024 e!614118))))

(declare-fun mapKey!40714 () (_ BitVec 32))

(declare-fun mapRest!40714 () (Array (_ BitVec 32) ValueCell!12291))

(declare-fun mapValue!40714 () ValueCell!12291)

(assert (=> mapNonEmpty!40714 (= mapRest!40708 (store mapRest!40714 mapKey!40714 mapValue!40714))))

(declare-fun condMapEmpty!40714 () Bool)

(declare-fun mapDefault!40714 () ValueCell!12291)

(assert (=> mapNonEmpty!40708 (= condMapEmpty!40714 (= mapRest!40708 ((as const (Array (_ BitVec 32) ValueCell!12291)) mapDefault!40714)))))

(declare-fun e!614117 () Bool)

(assert (=> mapNonEmpty!40708 (= tp!78014 (and e!614117 mapRes!40714))))

(declare-fun b!1074635 () Bool)

(assert (=> b!1074635 (= e!614117 tp_is_empty!25989)))

(assert (= (and mapNonEmpty!40708 condMapEmpty!40714) mapIsEmpty!40714))

(assert (= (and mapNonEmpty!40708 (not condMapEmpty!40714)) mapNonEmpty!40714))

(assert (= (and mapNonEmpty!40714 ((_ is ValueCellFull!12291) mapValue!40714)) b!1074634))

(assert (= (and mapNonEmpty!40708 ((_ is ValueCellFull!12291) mapDefault!40714)) b!1074635))

(declare-fun m!993633 () Bool)

(assert (=> mapNonEmpty!40714 m!993633))

(declare-fun b_lambda!16851 () Bool)

(assert (= b_lambda!16839 (or (and start!95080 b_free!22179) b_lambda!16851)))

(declare-fun b_lambda!16853 () Bool)

(assert (= b_lambda!16843 (or (and start!95080 b_free!22179) b_lambda!16853)))

(declare-fun b_lambda!16855 () Bool)

(assert (= b_lambda!16847 (or (and start!95080 b_free!22179) b_lambda!16855)))

(declare-fun b_lambda!16857 () Bool)

(assert (= b_lambda!16841 (or (and start!95080 b_free!22179) b_lambda!16857)))

(declare-fun b_lambda!16859 () Bool)

(assert (= b_lambda!16849 (or (and start!95080 b_free!22179) b_lambda!16859)))

(declare-fun b_lambda!16861 () Bool)

(assert (= b_lambda!16845 (or (and start!95080 b_free!22179) b_lambda!16861)))

(check-sat b_and!35107 (not bm!45426) (not b!1074538) (not b!1074626) (not b!1074474) (not b!1074608) (not b!1074589) (not b_lambda!16857) (not bm!45423) (not b!1074584) (not b!1074622) (not bm!45428) (not b!1074533) (not d!129485) (not b!1074627) (not b!1074610) (not bm!45422) (not bm!45413) (not b!1074591) (not d!129481) (not b!1074604) (not b!1074519) (not b!1074558) (not b!1074617) (not b!1074599) (not b!1074528) (not b!1074596) (not bm!45430) (not b!1074473) (not d!129479) (not b!1074475) (not b_next!22179) (not bm!45427) (not b!1074521) (not b!1074557) (not bm!45395) (not b!1074546) tp_is_empty!25989 (not b_lambda!16859) (not b!1074537) (not b!1074595) (not b!1074615) (not b!1074526) (not b!1074597) (not b!1074588) (not b!1074520) (not b!1074601) (not b_lambda!16861) (not b!1074585) (not b!1074609) (not b!1074587) (not b!1074603) (not b!1074583) (not bm!45416) (not d!129473) (not d!129475) (not mapNonEmpty!40714) (not bm!45419) (not b!1074600) (not bm!45414) (not d!129483) (not b_lambda!16855) (not bm!45412) (not b_lambda!16853) (not b_lambda!16851) (not b!1074545) (not b!1074592))
(check-sat b_and!35107 (not b_next!22179))

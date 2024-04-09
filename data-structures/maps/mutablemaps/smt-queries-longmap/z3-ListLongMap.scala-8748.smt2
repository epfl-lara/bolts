; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106204 () Bool)

(assert start!106204)

(declare-fun b_free!27525 () Bool)

(declare-fun b_next!27525 () Bool)

(assert (=> start!106204 (= b_free!27525 (not b_next!27525))))

(declare-fun tp!96138 () Bool)

(declare-fun b_and!45555 () Bool)

(assert (=> start!106204 (= tp!96138 b_and!45555)))

(declare-fun b!1263979 () Bool)

(declare-fun e!719722 () Bool)

(declare-fun tp_is_empty!32427 () Bool)

(assert (=> b!1263979 (= e!719722 tp_is_empty!32427)))

(declare-fun b!1263980 () Bool)

(declare-fun res!841905 () Bool)

(declare-fun e!719720 () Bool)

(assert (=> b!1263980 (=> (not res!841905) (not e!719720))))

(declare-datatypes ((array!82465 0))(
  ( (array!82466 (arr!39771 (Array (_ BitVec 32) (_ BitVec 64))) (size!40308 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82465)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82465 (_ BitVec 32)) Bool)

(assert (=> b!1263980 (= res!841905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!50473 () Bool)

(declare-fun mapRes!50473 () Bool)

(assert (=> mapIsEmpty!50473 mapRes!50473))

(declare-fun b!1263981 () Bool)

(declare-fun e!719718 () Bool)

(declare-datatypes ((V!48601 0))(
  ( (V!48602 (val!16276 Int)) )
))
(declare-datatypes ((tuple2!21220 0))(
  ( (tuple2!21221 (_1!10620 (_ BitVec 64)) (_2!10620 V!48601)) )
))
(declare-datatypes ((List!28438 0))(
  ( (Nil!28435) (Cons!28434 (h!29643 tuple2!21220) (t!41964 List!28438)) )
))
(declare-datatypes ((ListLongMap!19105 0))(
  ( (ListLongMap!19106 (toList!9568 List!28438)) )
))
(declare-fun lt!573382 () ListLongMap!19105)

(declare-fun contains!7631 (ListLongMap!19105 (_ BitVec 64)) Bool)

(assert (=> b!1263981 (= e!719718 (not (contains!7631 lt!573382 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!719719 () Bool)

(assert (=> b!1263981 e!719719))

(declare-fun res!841902 () Bool)

(assert (=> b!1263981 (=> (not res!841902) (not e!719719))))

(declare-fun lt!573386 () ListLongMap!19105)

(declare-fun minValueBefore!43 () V!48601)

(declare-fun +!4233 (ListLongMap!19105 tuple2!21220) ListLongMap!19105)

(assert (=> b!1263981 (= res!841902 (= lt!573386 (+!4233 lt!573382 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!573384 () ListLongMap!19105)

(declare-fun lt!573385 () tuple2!21220)

(assert (=> b!1263981 (= lt!573382 (+!4233 lt!573384 lt!573385))))

(declare-fun zeroValue!871 () V!48601)

(assert (=> b!1263981 (= lt!573385 (tuple2!21221 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48601)

(declare-fun lt!573383 () ListLongMap!19105)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15450 0))(
  ( (ValueCellFull!15450 (v!18989 V!48601)) (EmptyCell!15450) )
))
(declare-datatypes ((array!82467 0))(
  ( (array!82468 (arr!39772 (Array (_ BitVec 32) ValueCell!15450)) (size!40309 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82467)

(declare-fun getCurrentListMap!4671 (array!82465 array!82467 (_ BitVec 32) (_ BitVec 32) V!48601 V!48601 (_ BitVec 32) Int) ListLongMap!19105)

(assert (=> b!1263981 (= lt!573383 (getCurrentListMap!4671 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1263981 (= lt!573386 (getCurrentListMap!4671 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263982 () Bool)

(declare-fun res!841907 () Bool)

(assert (=> b!1263982 (=> (not res!841907) (not e!719720))))

(declare-datatypes ((List!28439 0))(
  ( (Nil!28436) (Cons!28435 (h!29644 (_ BitVec 64)) (t!41965 List!28439)) )
))
(declare-fun arrayNoDuplicates!0 (array!82465 (_ BitVec 32) List!28439) Bool)

(assert (=> b!1263982 (= res!841907 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28436))))

(declare-fun b!1263983 () Bool)

(declare-fun res!841906 () Bool)

(assert (=> b!1263983 (=> (not res!841906) (not e!719720))))

(assert (=> b!1263983 (= res!841906 (and (= (size!40309 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40308 _keys!1118) (size!40309 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263984 () Bool)

(declare-fun e!719723 () Bool)

(declare-fun e!719721 () Bool)

(assert (=> b!1263984 (= e!719723 (and e!719721 mapRes!50473))))

(declare-fun condMapEmpty!50473 () Bool)

(declare-fun mapDefault!50473 () ValueCell!15450)

(assert (=> b!1263984 (= condMapEmpty!50473 (= (arr!39772 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15450)) mapDefault!50473)))))

(declare-fun b!1263985 () Bool)

(assert (=> b!1263985 (= e!719721 tp_is_empty!32427)))

(declare-fun b!1263986 () Bool)

(assert (=> b!1263986 (= e!719720 (not e!719718))))

(declare-fun res!841904 () Bool)

(assert (=> b!1263986 (=> res!841904 e!719718)))

(assert (=> b!1263986 (= res!841904 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!573387 () ListLongMap!19105)

(assert (=> b!1263986 (= lt!573384 lt!573387)))

(declare-datatypes ((Unit!42080 0))(
  ( (Unit!42081) )
))
(declare-fun lt!573388 () Unit!42080)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1203 (array!82465 array!82467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48601 V!48601 V!48601 V!48601 (_ BitVec 32) Int) Unit!42080)

(assert (=> b!1263986 (= lt!573388 (lemmaNoChangeToArrayThenSameMapNoExtras!1203 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5907 (array!82465 array!82467 (_ BitVec 32) (_ BitVec 32) V!48601 V!48601 (_ BitVec 32) Int) ListLongMap!19105)

(assert (=> b!1263986 (= lt!573387 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263986 (= lt!573384 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263987 () Bool)

(assert (=> b!1263987 (= e!719719 (= lt!573383 (+!4233 lt!573387 lt!573385)))))

(declare-fun mapNonEmpty!50473 () Bool)

(declare-fun tp!96137 () Bool)

(assert (=> mapNonEmpty!50473 (= mapRes!50473 (and tp!96137 e!719722))))

(declare-fun mapValue!50473 () ValueCell!15450)

(declare-fun mapKey!50473 () (_ BitVec 32))

(declare-fun mapRest!50473 () (Array (_ BitVec 32) ValueCell!15450))

(assert (=> mapNonEmpty!50473 (= (arr!39772 _values!914) (store mapRest!50473 mapKey!50473 mapValue!50473))))

(declare-fun res!841903 () Bool)

(assert (=> start!106204 (=> (not res!841903) (not e!719720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106204 (= res!841903 (validMask!0 mask!1466))))

(assert (=> start!106204 e!719720))

(assert (=> start!106204 true))

(assert (=> start!106204 tp!96138))

(assert (=> start!106204 tp_is_empty!32427))

(declare-fun array_inv!30227 (array!82465) Bool)

(assert (=> start!106204 (array_inv!30227 _keys!1118)))

(declare-fun array_inv!30228 (array!82467) Bool)

(assert (=> start!106204 (and (array_inv!30228 _values!914) e!719723)))

(assert (= (and start!106204 res!841903) b!1263983))

(assert (= (and b!1263983 res!841906) b!1263980))

(assert (= (and b!1263980 res!841905) b!1263982))

(assert (= (and b!1263982 res!841907) b!1263986))

(assert (= (and b!1263986 (not res!841904)) b!1263981))

(assert (= (and b!1263981 res!841902) b!1263987))

(assert (= (and b!1263984 condMapEmpty!50473) mapIsEmpty!50473))

(assert (= (and b!1263984 (not condMapEmpty!50473)) mapNonEmpty!50473))

(get-info :version)

(assert (= (and mapNonEmpty!50473 ((_ is ValueCellFull!15450) mapValue!50473)) b!1263979))

(assert (= (and b!1263984 ((_ is ValueCellFull!15450) mapDefault!50473)) b!1263985))

(assert (= start!106204 b!1263984))

(declare-fun m!1164527 () Bool)

(assert (=> b!1263982 m!1164527))

(declare-fun m!1164529 () Bool)

(assert (=> b!1263981 m!1164529))

(declare-fun m!1164531 () Bool)

(assert (=> b!1263981 m!1164531))

(declare-fun m!1164533 () Bool)

(assert (=> b!1263981 m!1164533))

(declare-fun m!1164535 () Bool)

(assert (=> b!1263981 m!1164535))

(declare-fun m!1164537 () Bool)

(assert (=> b!1263981 m!1164537))

(declare-fun m!1164539 () Bool)

(assert (=> start!106204 m!1164539))

(declare-fun m!1164541 () Bool)

(assert (=> start!106204 m!1164541))

(declare-fun m!1164543 () Bool)

(assert (=> start!106204 m!1164543))

(declare-fun m!1164545 () Bool)

(assert (=> b!1263987 m!1164545))

(declare-fun m!1164547 () Bool)

(assert (=> b!1263980 m!1164547))

(declare-fun m!1164549 () Bool)

(assert (=> mapNonEmpty!50473 m!1164549))

(declare-fun m!1164551 () Bool)

(assert (=> b!1263986 m!1164551))

(declare-fun m!1164553 () Bool)

(assert (=> b!1263986 m!1164553))

(declare-fun m!1164555 () Bool)

(assert (=> b!1263986 m!1164555))

(check-sat (not b_next!27525) (not mapNonEmpty!50473) (not b!1263987) (not start!106204) tp_is_empty!32427 (not b!1263980) (not b!1263982) (not b!1263981) b_and!45555 (not b!1263986))
(check-sat b_and!45555 (not b_next!27525))
(get-model)

(declare-fun d!138613 () Bool)

(assert (=> d!138613 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!106204 d!138613))

(declare-fun d!138615 () Bool)

(assert (=> d!138615 (= (array_inv!30227 _keys!1118) (bvsge (size!40308 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!106204 d!138615))

(declare-fun d!138617 () Bool)

(assert (=> d!138617 (= (array_inv!30228 _values!914) (bvsge (size!40309 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!106204 d!138617))

(declare-fun d!138619 () Bool)

(declare-fun e!719748 () Bool)

(assert (=> d!138619 e!719748))

(declare-fun res!841930 () Bool)

(assert (=> d!138619 (=> (not res!841930) (not e!719748))))

(declare-fun lt!573419 () ListLongMap!19105)

(assert (=> d!138619 (= res!841930 (contains!7631 lt!573419 (_1!10620 lt!573385)))))

(declare-fun lt!573421 () List!28438)

(assert (=> d!138619 (= lt!573419 (ListLongMap!19106 lt!573421))))

(declare-fun lt!573420 () Unit!42080)

(declare-fun lt!573418 () Unit!42080)

(assert (=> d!138619 (= lt!573420 lt!573418)))

(declare-datatypes ((Option!723 0))(
  ( (Some!722 (v!18991 V!48601)) (None!721) )
))
(declare-fun getValueByKey!672 (List!28438 (_ BitVec 64)) Option!723)

(assert (=> d!138619 (= (getValueByKey!672 lt!573421 (_1!10620 lt!573385)) (Some!722 (_2!10620 lt!573385)))))

(declare-fun lemmaContainsTupThenGetReturnValue!339 (List!28438 (_ BitVec 64) V!48601) Unit!42080)

(assert (=> d!138619 (= lt!573418 (lemmaContainsTupThenGetReturnValue!339 lt!573421 (_1!10620 lt!573385) (_2!10620 lt!573385)))))

(declare-fun insertStrictlySorted!452 (List!28438 (_ BitVec 64) V!48601) List!28438)

(assert (=> d!138619 (= lt!573421 (insertStrictlySorted!452 (toList!9568 lt!573384) (_1!10620 lt!573385) (_2!10620 lt!573385)))))

(assert (=> d!138619 (= (+!4233 lt!573384 lt!573385) lt!573419)))

(declare-fun b!1264019 () Bool)

(declare-fun res!841931 () Bool)

(assert (=> b!1264019 (=> (not res!841931) (not e!719748))))

(assert (=> b!1264019 (= res!841931 (= (getValueByKey!672 (toList!9568 lt!573419) (_1!10620 lt!573385)) (Some!722 (_2!10620 lt!573385))))))

(declare-fun b!1264020 () Bool)

(declare-fun contains!7632 (List!28438 tuple2!21220) Bool)

(assert (=> b!1264020 (= e!719748 (contains!7632 (toList!9568 lt!573419) lt!573385))))

(assert (= (and d!138619 res!841930) b!1264019))

(assert (= (and b!1264019 res!841931) b!1264020))

(declare-fun m!1164587 () Bool)

(assert (=> d!138619 m!1164587))

(declare-fun m!1164589 () Bool)

(assert (=> d!138619 m!1164589))

(declare-fun m!1164591 () Bool)

(assert (=> d!138619 m!1164591))

(declare-fun m!1164593 () Bool)

(assert (=> d!138619 m!1164593))

(declare-fun m!1164595 () Bool)

(assert (=> b!1264019 m!1164595))

(declare-fun m!1164597 () Bool)

(assert (=> b!1264020 m!1164597))

(assert (=> b!1263981 d!138619))

(declare-fun d!138621 () Bool)

(declare-fun e!719753 () Bool)

(assert (=> d!138621 e!719753))

(declare-fun res!841934 () Bool)

(assert (=> d!138621 (=> res!841934 e!719753)))

(declare-fun lt!573432 () Bool)

(assert (=> d!138621 (= res!841934 (not lt!573432))))

(declare-fun lt!573430 () Bool)

(assert (=> d!138621 (= lt!573432 lt!573430)))

(declare-fun lt!573431 () Unit!42080)

(declare-fun e!719754 () Unit!42080)

(assert (=> d!138621 (= lt!573431 e!719754)))

(declare-fun c!123033 () Bool)

(assert (=> d!138621 (= c!123033 lt!573430)))

(declare-fun containsKey!626 (List!28438 (_ BitVec 64)) Bool)

(assert (=> d!138621 (= lt!573430 (containsKey!626 (toList!9568 lt!573382) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138621 (= (contains!7631 lt!573382 #b1000000000000000000000000000000000000000000000000000000000000000) lt!573432)))

(declare-fun b!1264027 () Bool)

(declare-fun lt!573433 () Unit!42080)

(assert (=> b!1264027 (= e!719754 lt!573433)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!436 (List!28438 (_ BitVec 64)) Unit!42080)

(assert (=> b!1264027 (= lt!573433 (lemmaContainsKeyImpliesGetValueByKeyDefined!436 (toList!9568 lt!573382) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!476 (Option!723) Bool)

(assert (=> b!1264027 (isDefined!476 (getValueByKey!672 (toList!9568 lt!573382) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1264028 () Bool)

(declare-fun Unit!42084 () Unit!42080)

(assert (=> b!1264028 (= e!719754 Unit!42084)))

(declare-fun b!1264029 () Bool)

(assert (=> b!1264029 (= e!719753 (isDefined!476 (getValueByKey!672 (toList!9568 lt!573382) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138621 c!123033) b!1264027))

(assert (= (and d!138621 (not c!123033)) b!1264028))

(assert (= (and d!138621 (not res!841934)) b!1264029))

(declare-fun m!1164599 () Bool)

(assert (=> d!138621 m!1164599))

(declare-fun m!1164601 () Bool)

(assert (=> b!1264027 m!1164601))

(declare-fun m!1164603 () Bool)

(assert (=> b!1264027 m!1164603))

(assert (=> b!1264027 m!1164603))

(declare-fun m!1164605 () Bool)

(assert (=> b!1264027 m!1164605))

(assert (=> b!1264029 m!1164603))

(assert (=> b!1264029 m!1164603))

(assert (=> b!1264029 m!1164605))

(assert (=> b!1263981 d!138621))

(declare-fun bm!62302 () Bool)

(declare-fun call!62305 () ListLongMap!19105)

(declare-fun call!62309 () ListLongMap!19105)

(assert (=> bm!62302 (= call!62305 call!62309)))

(declare-fun b!1264072 () Bool)

(declare-fun e!719785 () ListLongMap!19105)

(assert (=> b!1264072 (= e!719785 call!62305)))

(declare-fun b!1264073 () Bool)

(declare-fun e!719787 () ListLongMap!19105)

(declare-fun call!62310 () ListLongMap!19105)

(assert (=> b!1264073 (= e!719787 call!62310)))

(declare-fun b!1264074 () Bool)

(declare-fun res!841961 () Bool)

(declare-fun e!719793 () Bool)

(assert (=> b!1264074 (=> (not res!841961) (not e!719793))))

(declare-fun e!719790 () Bool)

(assert (=> b!1264074 (= res!841961 e!719790)))

(declare-fun c!123049 () Bool)

(assert (=> b!1264074 (= c!123049 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!62303 () Bool)

(declare-fun call!62307 () ListLongMap!19105)

(declare-fun call!62308 () ListLongMap!19105)

(assert (=> bm!62303 (= call!62307 call!62308)))

(declare-fun e!719784 () Bool)

(declare-fun lt!573481 () ListLongMap!19105)

(declare-fun b!1264075 () Bool)

(declare-fun apply!1039 (ListLongMap!19105 (_ BitVec 64)) V!48601)

(declare-fun get!20337 (ValueCell!15450 V!48601) V!48601)

(declare-fun dynLambda!3484 (Int (_ BitVec 64)) V!48601)

(assert (=> b!1264075 (= e!719784 (= (apply!1039 lt!573481 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)) (get!20337 (select (arr!39772 _values!914) #b00000000000000000000000000000000) (dynLambda!3484 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1264075 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40309 _values!914)))))

(assert (=> b!1264075 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264076 () Bool)

(declare-fun e!719783 () Bool)

(assert (=> b!1264076 (= e!719790 e!719783)))

(declare-fun res!841954 () Bool)

(declare-fun call!62311 () Bool)

(assert (=> b!1264076 (= res!841954 call!62311)))

(assert (=> b!1264076 (=> (not res!841954) (not e!719783))))

(declare-fun b!1264077 () Bool)

(declare-fun e!719792 () Unit!42080)

(declare-fun lt!573489 () Unit!42080)

(assert (=> b!1264077 (= e!719792 lt!573489)))

(declare-fun lt!573478 () ListLongMap!19105)

(assert (=> b!1264077 (= lt!573478 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573483 () (_ BitVec 64))

(assert (=> b!1264077 (= lt!573483 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573494 () (_ BitVec 64))

(assert (=> b!1264077 (= lt!573494 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573491 () Unit!42080)

(declare-fun addStillContains!1110 (ListLongMap!19105 (_ BitVec 64) V!48601 (_ BitVec 64)) Unit!42080)

(assert (=> b!1264077 (= lt!573491 (addStillContains!1110 lt!573478 lt!573483 zeroValue!871 lt!573494))))

(assert (=> b!1264077 (contains!7631 (+!4233 lt!573478 (tuple2!21221 lt!573483 zeroValue!871)) lt!573494)))

(declare-fun lt!573497 () Unit!42080)

(assert (=> b!1264077 (= lt!573497 lt!573491)))

(declare-fun lt!573479 () ListLongMap!19105)

(assert (=> b!1264077 (= lt!573479 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573482 () (_ BitVec 64))

(assert (=> b!1264077 (= lt!573482 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573490 () (_ BitVec 64))

(assert (=> b!1264077 (= lt!573490 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573486 () Unit!42080)

(declare-fun addApplyDifferent!544 (ListLongMap!19105 (_ BitVec 64) V!48601 (_ BitVec 64)) Unit!42080)

(assert (=> b!1264077 (= lt!573486 (addApplyDifferent!544 lt!573479 lt!573482 minValueAfter!43 lt!573490))))

(assert (=> b!1264077 (= (apply!1039 (+!4233 lt!573479 (tuple2!21221 lt!573482 minValueAfter!43)) lt!573490) (apply!1039 lt!573479 lt!573490))))

(declare-fun lt!573498 () Unit!42080)

(assert (=> b!1264077 (= lt!573498 lt!573486)))

(declare-fun lt!573480 () ListLongMap!19105)

(assert (=> b!1264077 (= lt!573480 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573492 () (_ BitVec 64))

(assert (=> b!1264077 (= lt!573492 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573487 () (_ BitVec 64))

(assert (=> b!1264077 (= lt!573487 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573493 () Unit!42080)

(assert (=> b!1264077 (= lt!573493 (addApplyDifferent!544 lt!573480 lt!573492 zeroValue!871 lt!573487))))

(assert (=> b!1264077 (= (apply!1039 (+!4233 lt!573480 (tuple2!21221 lt!573492 zeroValue!871)) lt!573487) (apply!1039 lt!573480 lt!573487))))

(declare-fun lt!573495 () Unit!42080)

(assert (=> b!1264077 (= lt!573495 lt!573493)))

(declare-fun lt!573485 () ListLongMap!19105)

(assert (=> b!1264077 (= lt!573485 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573484 () (_ BitVec 64))

(assert (=> b!1264077 (= lt!573484 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573488 () (_ BitVec 64))

(assert (=> b!1264077 (= lt!573488 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1264077 (= lt!573489 (addApplyDifferent!544 lt!573485 lt!573484 minValueAfter!43 lt!573488))))

(assert (=> b!1264077 (= (apply!1039 (+!4233 lt!573485 (tuple2!21221 lt!573484 minValueAfter!43)) lt!573488) (apply!1039 lt!573485 lt!573488))))

(declare-fun b!1264078 () Bool)

(declare-fun e!719781 () ListLongMap!19105)

(assert (=> b!1264078 (= e!719781 (+!4233 call!62309 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun b!1264079 () Bool)

(assert (=> b!1264079 (= e!719787 call!62305)))

(declare-fun b!1264080 () Bool)

(assert (=> b!1264080 (= e!719781 e!719785)))

(declare-fun c!123048 () Bool)

(assert (=> b!1264080 (= c!123048 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62304 () Bool)

(assert (=> bm!62304 (= call!62308 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1264081 () Bool)

(declare-fun e!719788 () Bool)

(assert (=> b!1264081 (= e!719793 e!719788)))

(declare-fun c!123051 () Bool)

(assert (=> b!1264081 (= c!123051 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1264083 () Bool)

(declare-fun e!719791 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1264083 (= e!719791 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1264084 () Bool)

(declare-fun call!62306 () Bool)

(assert (=> b!1264084 (= e!719788 (not call!62306))))

(declare-fun b!1264085 () Bool)

(assert (=> b!1264085 (= e!719783 (= (apply!1039 lt!573481 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1264086 () Bool)

(declare-fun e!719782 () Bool)

(assert (=> b!1264086 (= e!719782 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1264087 () Bool)

(declare-fun e!719789 () Bool)

(assert (=> b!1264087 (= e!719788 e!719789)))

(declare-fun res!841959 () Bool)

(assert (=> b!1264087 (= res!841959 call!62306)))

(assert (=> b!1264087 (=> (not res!841959) (not e!719789))))

(declare-fun b!1264088 () Bool)

(declare-fun e!719786 () Bool)

(assert (=> b!1264088 (= e!719786 e!719784)))

(declare-fun res!841960 () Bool)

(assert (=> b!1264088 (=> (not res!841960) (not e!719784))))

(assert (=> b!1264088 (= res!841960 (contains!7631 lt!573481 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1264088 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264089 () Bool)

(assert (=> b!1264089 (= e!719789 (= (apply!1039 lt!573481 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun bm!62305 () Bool)

(assert (=> bm!62305 (= call!62306 (contains!7631 lt!573481 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62306 () Bool)

(declare-fun c!123050 () Bool)

(assert (=> bm!62306 (= call!62309 (+!4233 (ite c!123050 call!62308 (ite c!123048 call!62307 call!62310)) (ite (or c!123050 c!123048) (tuple2!21221 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun bm!62307 () Bool)

(assert (=> bm!62307 (= call!62311 (contains!7631 lt!573481 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1264090 () Bool)

(declare-fun res!841955 () Bool)

(assert (=> b!1264090 (=> (not res!841955) (not e!719793))))

(assert (=> b!1264090 (= res!841955 e!719786)))

(declare-fun res!841953 () Bool)

(assert (=> b!1264090 (=> res!841953 e!719786)))

(assert (=> b!1264090 (= res!841953 (not e!719791))))

(declare-fun res!841956 () Bool)

(assert (=> b!1264090 (=> (not res!841956) (not e!719791))))

(assert (=> b!1264090 (= res!841956 (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264091 () Bool)

(assert (=> b!1264091 (= e!719790 (not call!62311))))

(declare-fun bm!62308 () Bool)

(assert (=> bm!62308 (= call!62310 call!62307)))

(declare-fun b!1264092 () Bool)

(declare-fun Unit!42085 () Unit!42080)

(assert (=> b!1264092 (= e!719792 Unit!42085)))

(declare-fun b!1264082 () Bool)

(declare-fun c!123047 () Bool)

(assert (=> b!1264082 (= c!123047 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1264082 (= e!719785 e!719787)))

(declare-fun d!138623 () Bool)

(assert (=> d!138623 e!719793))

(declare-fun res!841957 () Bool)

(assert (=> d!138623 (=> (not res!841957) (not e!719793))))

(assert (=> d!138623 (= res!841957 (or (bvsge #b00000000000000000000000000000000 (size!40308 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))))

(declare-fun lt!573496 () ListLongMap!19105)

(assert (=> d!138623 (= lt!573481 lt!573496)))

(declare-fun lt!573499 () Unit!42080)

(assert (=> d!138623 (= lt!573499 e!719792)))

(declare-fun c!123046 () Bool)

(assert (=> d!138623 (= c!123046 e!719782)))

(declare-fun res!841958 () Bool)

(assert (=> d!138623 (=> (not res!841958) (not e!719782))))

(assert (=> d!138623 (= res!841958 (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(assert (=> d!138623 (= lt!573496 e!719781)))

(assert (=> d!138623 (= c!123050 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138623 (validMask!0 mask!1466)))

(assert (=> d!138623 (= (getCurrentListMap!4671 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573481)))

(assert (= (and d!138623 c!123050) b!1264078))

(assert (= (and d!138623 (not c!123050)) b!1264080))

(assert (= (and b!1264080 c!123048) b!1264072))

(assert (= (and b!1264080 (not c!123048)) b!1264082))

(assert (= (and b!1264082 c!123047) b!1264079))

(assert (= (and b!1264082 (not c!123047)) b!1264073))

(assert (= (or b!1264079 b!1264073) bm!62308))

(assert (= (or b!1264072 bm!62308) bm!62303))

(assert (= (or b!1264072 b!1264079) bm!62302))

(assert (= (or b!1264078 bm!62303) bm!62304))

(assert (= (or b!1264078 bm!62302) bm!62306))

(assert (= (and d!138623 res!841958) b!1264086))

(assert (= (and d!138623 c!123046) b!1264077))

(assert (= (and d!138623 (not c!123046)) b!1264092))

(assert (= (and d!138623 res!841957) b!1264090))

(assert (= (and b!1264090 res!841956) b!1264083))

(assert (= (and b!1264090 (not res!841953)) b!1264088))

(assert (= (and b!1264088 res!841960) b!1264075))

(assert (= (and b!1264090 res!841955) b!1264074))

(assert (= (and b!1264074 c!123049) b!1264076))

(assert (= (and b!1264074 (not c!123049)) b!1264091))

(assert (= (and b!1264076 res!841954) b!1264085))

(assert (= (or b!1264076 b!1264091) bm!62307))

(assert (= (and b!1264074 res!841961) b!1264081))

(assert (= (and b!1264081 c!123051) b!1264087))

(assert (= (and b!1264081 (not c!123051)) b!1264084))

(assert (= (and b!1264087 res!841959) b!1264089))

(assert (= (or b!1264087 b!1264084) bm!62305))

(declare-fun b_lambda!23025 () Bool)

(assert (=> (not b_lambda!23025) (not b!1264075)))

(declare-fun t!41969 () Bool)

(declare-fun tb!11343 () Bool)

(assert (=> (and start!106204 (= defaultEntry!922 defaultEntry!922) t!41969) tb!11343))

(declare-fun result!23421 () Bool)

(assert (=> tb!11343 (= result!23421 tp_is_empty!32427)))

(assert (=> b!1264075 t!41969))

(declare-fun b_and!45559 () Bool)

(assert (= b_and!45555 (and (=> t!41969 result!23421) b_and!45559)))

(declare-fun m!1164607 () Bool)

(assert (=> bm!62305 m!1164607))

(assert (=> bm!62304 m!1164553))

(declare-fun m!1164609 () Bool)

(assert (=> bm!62307 m!1164609))

(declare-fun m!1164611 () Bool)

(assert (=> b!1264086 m!1164611))

(assert (=> b!1264086 m!1164611))

(declare-fun m!1164613 () Bool)

(assert (=> b!1264086 m!1164613))

(declare-fun m!1164615 () Bool)

(assert (=> b!1264085 m!1164615))

(assert (=> b!1264088 m!1164611))

(assert (=> b!1264088 m!1164611))

(declare-fun m!1164617 () Bool)

(assert (=> b!1264088 m!1164617))

(declare-fun m!1164619 () Bool)

(assert (=> b!1264077 m!1164619))

(declare-fun m!1164621 () Bool)

(assert (=> b!1264077 m!1164621))

(declare-fun m!1164623 () Bool)

(assert (=> b!1264077 m!1164623))

(declare-fun m!1164625 () Bool)

(assert (=> b!1264077 m!1164625))

(declare-fun m!1164627 () Bool)

(assert (=> b!1264077 m!1164627))

(declare-fun m!1164629 () Bool)

(assert (=> b!1264077 m!1164629))

(assert (=> b!1264077 m!1164619))

(declare-fun m!1164631 () Bool)

(assert (=> b!1264077 m!1164631))

(declare-fun m!1164633 () Bool)

(assert (=> b!1264077 m!1164633))

(assert (=> b!1264077 m!1164625))

(declare-fun m!1164635 () Bool)

(assert (=> b!1264077 m!1164635))

(declare-fun m!1164637 () Bool)

(assert (=> b!1264077 m!1164637))

(declare-fun m!1164639 () Bool)

(assert (=> b!1264077 m!1164639))

(declare-fun m!1164641 () Bool)

(assert (=> b!1264077 m!1164641))

(declare-fun m!1164643 () Bool)

(assert (=> b!1264077 m!1164643))

(assert (=> b!1264077 m!1164553))

(assert (=> b!1264077 m!1164611))

(assert (=> b!1264077 m!1164639))

(assert (=> b!1264077 m!1164643))

(declare-fun m!1164645 () Bool)

(assert (=> b!1264077 m!1164645))

(declare-fun m!1164647 () Bool)

(assert (=> b!1264077 m!1164647))

(assert (=> b!1264083 m!1164611))

(assert (=> b!1264083 m!1164611))

(assert (=> b!1264083 m!1164613))

(declare-fun m!1164649 () Bool)

(assert (=> b!1264078 m!1164649))

(declare-fun m!1164651 () Bool)

(assert (=> bm!62306 m!1164651))

(assert (=> b!1264075 m!1164611))

(declare-fun m!1164653 () Bool)

(assert (=> b!1264075 m!1164653))

(declare-fun m!1164655 () Bool)

(assert (=> b!1264075 m!1164655))

(declare-fun m!1164657 () Bool)

(assert (=> b!1264075 m!1164657))

(assert (=> b!1264075 m!1164655))

(assert (=> b!1264075 m!1164657))

(declare-fun m!1164659 () Bool)

(assert (=> b!1264075 m!1164659))

(assert (=> b!1264075 m!1164611))

(assert (=> d!138623 m!1164539))

(declare-fun m!1164661 () Bool)

(assert (=> b!1264089 m!1164661))

(assert (=> b!1263981 d!138623))

(declare-fun d!138625 () Bool)

(declare-fun e!719794 () Bool)

(assert (=> d!138625 e!719794))

(declare-fun res!841962 () Bool)

(assert (=> d!138625 (=> (not res!841962) (not e!719794))))

(declare-fun lt!573501 () ListLongMap!19105)

(assert (=> d!138625 (= res!841962 (contains!7631 lt!573501 (_1!10620 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!573503 () List!28438)

(assert (=> d!138625 (= lt!573501 (ListLongMap!19106 lt!573503))))

(declare-fun lt!573502 () Unit!42080)

(declare-fun lt!573500 () Unit!42080)

(assert (=> d!138625 (= lt!573502 lt!573500)))

(assert (=> d!138625 (= (getValueByKey!672 lt!573503 (_1!10620 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!722 (_2!10620 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138625 (= lt!573500 (lemmaContainsTupThenGetReturnValue!339 lt!573503 (_1!10620 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10620 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138625 (= lt!573503 (insertStrictlySorted!452 (toList!9568 lt!573382) (_1!10620 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10620 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138625 (= (+!4233 lt!573382 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!573501)))

(declare-fun b!1264095 () Bool)

(declare-fun res!841963 () Bool)

(assert (=> b!1264095 (=> (not res!841963) (not e!719794))))

(assert (=> b!1264095 (= res!841963 (= (getValueByKey!672 (toList!9568 lt!573501) (_1!10620 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!722 (_2!10620 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1264096 () Bool)

(assert (=> b!1264096 (= e!719794 (contains!7632 (toList!9568 lt!573501) (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!138625 res!841962) b!1264095))

(assert (= (and b!1264095 res!841963) b!1264096))

(declare-fun m!1164663 () Bool)

(assert (=> d!138625 m!1164663))

(declare-fun m!1164665 () Bool)

(assert (=> d!138625 m!1164665))

(declare-fun m!1164667 () Bool)

(assert (=> d!138625 m!1164667))

(declare-fun m!1164669 () Bool)

(assert (=> d!138625 m!1164669))

(declare-fun m!1164671 () Bool)

(assert (=> b!1264095 m!1164671))

(declare-fun m!1164673 () Bool)

(assert (=> b!1264096 m!1164673))

(assert (=> b!1263981 d!138625))

(declare-fun bm!62309 () Bool)

(declare-fun call!62312 () ListLongMap!19105)

(declare-fun call!62316 () ListLongMap!19105)

(assert (=> bm!62309 (= call!62312 call!62316)))

(declare-fun b!1264097 () Bool)

(declare-fun e!719799 () ListLongMap!19105)

(assert (=> b!1264097 (= e!719799 call!62312)))

(declare-fun b!1264098 () Bool)

(declare-fun e!719801 () ListLongMap!19105)

(declare-fun call!62317 () ListLongMap!19105)

(assert (=> b!1264098 (= e!719801 call!62317)))

(declare-fun b!1264099 () Bool)

(declare-fun res!841972 () Bool)

(declare-fun e!719807 () Bool)

(assert (=> b!1264099 (=> (not res!841972) (not e!719807))))

(declare-fun e!719804 () Bool)

(assert (=> b!1264099 (= res!841972 e!719804)))

(declare-fun c!123055 () Bool)

(assert (=> b!1264099 (= c!123055 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!62310 () Bool)

(declare-fun call!62314 () ListLongMap!19105)

(declare-fun call!62315 () ListLongMap!19105)

(assert (=> bm!62310 (= call!62314 call!62315)))

(declare-fun b!1264100 () Bool)

(declare-fun e!719798 () Bool)

(declare-fun lt!573507 () ListLongMap!19105)

(assert (=> b!1264100 (= e!719798 (= (apply!1039 lt!573507 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)) (get!20337 (select (arr!39772 _values!914) #b00000000000000000000000000000000) (dynLambda!3484 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1264100 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40309 _values!914)))))

(assert (=> b!1264100 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264101 () Bool)

(declare-fun e!719797 () Bool)

(assert (=> b!1264101 (= e!719804 e!719797)))

(declare-fun res!841965 () Bool)

(declare-fun call!62318 () Bool)

(assert (=> b!1264101 (= res!841965 call!62318)))

(assert (=> b!1264101 (=> (not res!841965) (not e!719797))))

(declare-fun b!1264102 () Bool)

(declare-fun e!719806 () Unit!42080)

(declare-fun lt!573515 () Unit!42080)

(assert (=> b!1264102 (= e!719806 lt!573515)))

(declare-fun lt!573504 () ListLongMap!19105)

(assert (=> b!1264102 (= lt!573504 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573509 () (_ BitVec 64))

(assert (=> b!1264102 (= lt!573509 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573520 () (_ BitVec 64))

(assert (=> b!1264102 (= lt!573520 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573517 () Unit!42080)

(assert (=> b!1264102 (= lt!573517 (addStillContains!1110 lt!573504 lt!573509 zeroValue!871 lt!573520))))

(assert (=> b!1264102 (contains!7631 (+!4233 lt!573504 (tuple2!21221 lt!573509 zeroValue!871)) lt!573520)))

(declare-fun lt!573523 () Unit!42080)

(assert (=> b!1264102 (= lt!573523 lt!573517)))

(declare-fun lt!573505 () ListLongMap!19105)

(assert (=> b!1264102 (= lt!573505 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573508 () (_ BitVec 64))

(assert (=> b!1264102 (= lt!573508 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573516 () (_ BitVec 64))

(assert (=> b!1264102 (= lt!573516 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573512 () Unit!42080)

(assert (=> b!1264102 (= lt!573512 (addApplyDifferent!544 lt!573505 lt!573508 minValueBefore!43 lt!573516))))

(assert (=> b!1264102 (= (apply!1039 (+!4233 lt!573505 (tuple2!21221 lt!573508 minValueBefore!43)) lt!573516) (apply!1039 lt!573505 lt!573516))))

(declare-fun lt!573524 () Unit!42080)

(assert (=> b!1264102 (= lt!573524 lt!573512)))

(declare-fun lt!573506 () ListLongMap!19105)

(assert (=> b!1264102 (= lt!573506 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573518 () (_ BitVec 64))

(assert (=> b!1264102 (= lt!573518 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573513 () (_ BitVec 64))

(assert (=> b!1264102 (= lt!573513 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573519 () Unit!42080)

(assert (=> b!1264102 (= lt!573519 (addApplyDifferent!544 lt!573506 lt!573518 zeroValue!871 lt!573513))))

(assert (=> b!1264102 (= (apply!1039 (+!4233 lt!573506 (tuple2!21221 lt!573518 zeroValue!871)) lt!573513) (apply!1039 lt!573506 lt!573513))))

(declare-fun lt!573521 () Unit!42080)

(assert (=> b!1264102 (= lt!573521 lt!573519)))

(declare-fun lt!573511 () ListLongMap!19105)

(assert (=> b!1264102 (= lt!573511 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573510 () (_ BitVec 64))

(assert (=> b!1264102 (= lt!573510 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!573514 () (_ BitVec 64))

(assert (=> b!1264102 (= lt!573514 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1264102 (= lt!573515 (addApplyDifferent!544 lt!573511 lt!573510 minValueBefore!43 lt!573514))))

(assert (=> b!1264102 (= (apply!1039 (+!4233 lt!573511 (tuple2!21221 lt!573510 minValueBefore!43)) lt!573514) (apply!1039 lt!573511 lt!573514))))

(declare-fun b!1264103 () Bool)

(declare-fun e!719795 () ListLongMap!19105)

(assert (=> b!1264103 (= e!719795 (+!4233 call!62316 (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun b!1264104 () Bool)

(assert (=> b!1264104 (= e!719801 call!62312)))

(declare-fun b!1264105 () Bool)

(assert (=> b!1264105 (= e!719795 e!719799)))

(declare-fun c!123054 () Bool)

(assert (=> b!1264105 (= c!123054 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62311 () Bool)

(assert (=> bm!62311 (= call!62315 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1264106 () Bool)

(declare-fun e!719802 () Bool)

(assert (=> b!1264106 (= e!719807 e!719802)))

(declare-fun c!123057 () Bool)

(assert (=> b!1264106 (= c!123057 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1264108 () Bool)

(declare-fun e!719805 () Bool)

(assert (=> b!1264108 (= e!719805 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1264109 () Bool)

(declare-fun call!62313 () Bool)

(assert (=> b!1264109 (= e!719802 (not call!62313))))

(declare-fun b!1264110 () Bool)

(assert (=> b!1264110 (= e!719797 (= (apply!1039 lt!573507 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1264111 () Bool)

(declare-fun e!719796 () Bool)

(assert (=> b!1264111 (= e!719796 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1264112 () Bool)

(declare-fun e!719803 () Bool)

(assert (=> b!1264112 (= e!719802 e!719803)))

(declare-fun res!841970 () Bool)

(assert (=> b!1264112 (= res!841970 call!62313)))

(assert (=> b!1264112 (=> (not res!841970) (not e!719803))))

(declare-fun b!1264113 () Bool)

(declare-fun e!719800 () Bool)

(assert (=> b!1264113 (= e!719800 e!719798)))

(declare-fun res!841971 () Bool)

(assert (=> b!1264113 (=> (not res!841971) (not e!719798))))

(assert (=> b!1264113 (= res!841971 (contains!7631 lt!573507 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1264113 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264114 () Bool)

(assert (=> b!1264114 (= e!719803 (= (apply!1039 lt!573507 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun bm!62312 () Bool)

(assert (=> bm!62312 (= call!62313 (contains!7631 lt!573507 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62313 () Bool)

(declare-fun c!123056 () Bool)

(assert (=> bm!62313 (= call!62316 (+!4233 (ite c!123056 call!62315 (ite c!123054 call!62314 call!62317)) (ite (or c!123056 c!123054) (tuple2!21221 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21221 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun bm!62314 () Bool)

(assert (=> bm!62314 (= call!62318 (contains!7631 lt!573507 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1264115 () Bool)

(declare-fun res!841966 () Bool)

(assert (=> b!1264115 (=> (not res!841966) (not e!719807))))

(assert (=> b!1264115 (= res!841966 e!719800)))

(declare-fun res!841964 () Bool)

(assert (=> b!1264115 (=> res!841964 e!719800)))

(assert (=> b!1264115 (= res!841964 (not e!719805))))

(declare-fun res!841967 () Bool)

(assert (=> b!1264115 (=> (not res!841967) (not e!719805))))

(assert (=> b!1264115 (= res!841967 (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264116 () Bool)

(assert (=> b!1264116 (= e!719804 (not call!62318))))

(declare-fun bm!62315 () Bool)

(assert (=> bm!62315 (= call!62317 call!62314)))

(declare-fun b!1264117 () Bool)

(declare-fun Unit!42086 () Unit!42080)

(assert (=> b!1264117 (= e!719806 Unit!42086)))

(declare-fun b!1264107 () Bool)

(declare-fun c!123053 () Bool)

(assert (=> b!1264107 (= c!123053 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1264107 (= e!719799 e!719801)))

(declare-fun d!138627 () Bool)

(assert (=> d!138627 e!719807))

(declare-fun res!841968 () Bool)

(assert (=> d!138627 (=> (not res!841968) (not e!719807))))

(assert (=> d!138627 (= res!841968 (or (bvsge #b00000000000000000000000000000000 (size!40308 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))))

(declare-fun lt!573522 () ListLongMap!19105)

(assert (=> d!138627 (= lt!573507 lt!573522)))

(declare-fun lt!573525 () Unit!42080)

(assert (=> d!138627 (= lt!573525 e!719806)))

(declare-fun c!123052 () Bool)

(assert (=> d!138627 (= c!123052 e!719796)))

(declare-fun res!841969 () Bool)

(assert (=> d!138627 (=> (not res!841969) (not e!719796))))

(assert (=> d!138627 (= res!841969 (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(assert (=> d!138627 (= lt!573522 e!719795)))

(assert (=> d!138627 (= c!123056 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138627 (validMask!0 mask!1466)))

(assert (=> d!138627 (= (getCurrentListMap!4671 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573507)))

(assert (= (and d!138627 c!123056) b!1264103))

(assert (= (and d!138627 (not c!123056)) b!1264105))

(assert (= (and b!1264105 c!123054) b!1264097))

(assert (= (and b!1264105 (not c!123054)) b!1264107))

(assert (= (and b!1264107 c!123053) b!1264104))

(assert (= (and b!1264107 (not c!123053)) b!1264098))

(assert (= (or b!1264104 b!1264098) bm!62315))

(assert (= (or b!1264097 bm!62315) bm!62310))

(assert (= (or b!1264097 b!1264104) bm!62309))

(assert (= (or b!1264103 bm!62310) bm!62311))

(assert (= (or b!1264103 bm!62309) bm!62313))

(assert (= (and d!138627 res!841969) b!1264111))

(assert (= (and d!138627 c!123052) b!1264102))

(assert (= (and d!138627 (not c!123052)) b!1264117))

(assert (= (and d!138627 res!841968) b!1264115))

(assert (= (and b!1264115 res!841967) b!1264108))

(assert (= (and b!1264115 (not res!841964)) b!1264113))

(assert (= (and b!1264113 res!841971) b!1264100))

(assert (= (and b!1264115 res!841966) b!1264099))

(assert (= (and b!1264099 c!123055) b!1264101))

(assert (= (and b!1264099 (not c!123055)) b!1264116))

(assert (= (and b!1264101 res!841965) b!1264110))

(assert (= (or b!1264101 b!1264116) bm!62314))

(assert (= (and b!1264099 res!841972) b!1264106))

(assert (= (and b!1264106 c!123057) b!1264112))

(assert (= (and b!1264106 (not c!123057)) b!1264109))

(assert (= (and b!1264112 res!841970) b!1264114))

(assert (= (or b!1264112 b!1264109) bm!62312))

(declare-fun b_lambda!23027 () Bool)

(assert (=> (not b_lambda!23027) (not b!1264100)))

(assert (=> b!1264100 t!41969))

(declare-fun b_and!45561 () Bool)

(assert (= b_and!45559 (and (=> t!41969 result!23421) b_and!45561)))

(declare-fun m!1164675 () Bool)

(assert (=> bm!62312 m!1164675))

(assert (=> bm!62311 m!1164555))

(declare-fun m!1164677 () Bool)

(assert (=> bm!62314 m!1164677))

(assert (=> b!1264111 m!1164611))

(assert (=> b!1264111 m!1164611))

(assert (=> b!1264111 m!1164613))

(declare-fun m!1164679 () Bool)

(assert (=> b!1264110 m!1164679))

(assert (=> b!1264113 m!1164611))

(assert (=> b!1264113 m!1164611))

(declare-fun m!1164681 () Bool)

(assert (=> b!1264113 m!1164681))

(declare-fun m!1164683 () Bool)

(assert (=> b!1264102 m!1164683))

(declare-fun m!1164685 () Bool)

(assert (=> b!1264102 m!1164685))

(declare-fun m!1164687 () Bool)

(assert (=> b!1264102 m!1164687))

(declare-fun m!1164689 () Bool)

(assert (=> b!1264102 m!1164689))

(declare-fun m!1164691 () Bool)

(assert (=> b!1264102 m!1164691))

(declare-fun m!1164693 () Bool)

(assert (=> b!1264102 m!1164693))

(assert (=> b!1264102 m!1164683))

(declare-fun m!1164695 () Bool)

(assert (=> b!1264102 m!1164695))

(declare-fun m!1164697 () Bool)

(assert (=> b!1264102 m!1164697))

(assert (=> b!1264102 m!1164689))

(declare-fun m!1164699 () Bool)

(assert (=> b!1264102 m!1164699))

(declare-fun m!1164701 () Bool)

(assert (=> b!1264102 m!1164701))

(declare-fun m!1164703 () Bool)

(assert (=> b!1264102 m!1164703))

(declare-fun m!1164705 () Bool)

(assert (=> b!1264102 m!1164705))

(declare-fun m!1164707 () Bool)

(assert (=> b!1264102 m!1164707))

(assert (=> b!1264102 m!1164555))

(assert (=> b!1264102 m!1164611))

(assert (=> b!1264102 m!1164703))

(assert (=> b!1264102 m!1164707))

(declare-fun m!1164709 () Bool)

(assert (=> b!1264102 m!1164709))

(declare-fun m!1164711 () Bool)

(assert (=> b!1264102 m!1164711))

(assert (=> b!1264108 m!1164611))

(assert (=> b!1264108 m!1164611))

(assert (=> b!1264108 m!1164613))

(declare-fun m!1164713 () Bool)

(assert (=> b!1264103 m!1164713))

(declare-fun m!1164715 () Bool)

(assert (=> bm!62313 m!1164715))

(assert (=> b!1264100 m!1164611))

(declare-fun m!1164717 () Bool)

(assert (=> b!1264100 m!1164717))

(assert (=> b!1264100 m!1164655))

(assert (=> b!1264100 m!1164657))

(assert (=> b!1264100 m!1164655))

(assert (=> b!1264100 m!1164657))

(assert (=> b!1264100 m!1164659))

(assert (=> b!1264100 m!1164611))

(assert (=> d!138627 m!1164539))

(declare-fun m!1164719 () Bool)

(assert (=> b!1264114 m!1164719))

(assert (=> b!1263981 d!138627))

(declare-fun b!1264128 () Bool)

(declare-fun e!719816 () Bool)

(declare-fun call!62321 () Bool)

(assert (=> b!1264128 (= e!719816 call!62321)))

(declare-fun b!1264129 () Bool)

(declare-fun e!719818 () Bool)

(declare-fun contains!7633 (List!28439 (_ BitVec 64)) Bool)

(assert (=> b!1264129 (= e!719818 (contains!7633 Nil!28436 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1264130 () Bool)

(declare-fun e!719817 () Bool)

(assert (=> b!1264130 (= e!719817 e!719816)))

(declare-fun c!123060 () Bool)

(assert (=> b!1264130 (= c!123060 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138629 () Bool)

(declare-fun res!841981 () Bool)

(declare-fun e!719819 () Bool)

(assert (=> d!138629 (=> res!841981 e!719819)))

(assert (=> d!138629 (= res!841981 (bvsge #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(assert (=> d!138629 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28436) e!719819)))

(declare-fun bm!62318 () Bool)

(assert (=> bm!62318 (= call!62321 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123060 (Cons!28435 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000) Nil!28436) Nil!28436)))))

(declare-fun b!1264131 () Bool)

(assert (=> b!1264131 (= e!719819 e!719817)))

(declare-fun res!841979 () Bool)

(assert (=> b!1264131 (=> (not res!841979) (not e!719817))))

(assert (=> b!1264131 (= res!841979 (not e!719818))))

(declare-fun res!841980 () Bool)

(assert (=> b!1264131 (=> (not res!841980) (not e!719818))))

(assert (=> b!1264131 (= res!841980 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1264132 () Bool)

(assert (=> b!1264132 (= e!719816 call!62321)))

(assert (= (and d!138629 (not res!841981)) b!1264131))

(assert (= (and b!1264131 res!841980) b!1264129))

(assert (= (and b!1264131 res!841979) b!1264130))

(assert (= (and b!1264130 c!123060) b!1264132))

(assert (= (and b!1264130 (not c!123060)) b!1264128))

(assert (= (or b!1264132 b!1264128) bm!62318))

(assert (=> b!1264129 m!1164611))

(assert (=> b!1264129 m!1164611))

(declare-fun m!1164721 () Bool)

(assert (=> b!1264129 m!1164721))

(assert (=> b!1264130 m!1164611))

(assert (=> b!1264130 m!1164611))

(assert (=> b!1264130 m!1164613))

(assert (=> bm!62318 m!1164611))

(declare-fun m!1164723 () Bool)

(assert (=> bm!62318 m!1164723))

(assert (=> b!1264131 m!1164611))

(assert (=> b!1264131 m!1164611))

(assert (=> b!1264131 m!1164613))

(assert (=> b!1263982 d!138629))

(declare-fun d!138631 () Bool)

(assert (=> d!138631 (= (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!573528 () Unit!42080)

(declare-fun choose!1888 (array!82465 array!82467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48601 V!48601 V!48601 V!48601 (_ BitVec 32) Int) Unit!42080)

(assert (=> d!138631 (= lt!573528 (choose!1888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138631 (validMask!0 mask!1466)))

(assert (=> d!138631 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1203 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573528)))

(declare-fun bs!35751 () Bool)

(assert (= bs!35751 d!138631))

(assert (=> bs!35751 m!1164555))

(assert (=> bs!35751 m!1164553))

(declare-fun m!1164725 () Bool)

(assert (=> bs!35751 m!1164725))

(assert (=> bs!35751 m!1164539))

(assert (=> b!1263986 d!138631))

(declare-fun b!1264157 () Bool)

(declare-fun e!719835 () Bool)

(declare-fun e!719838 () Bool)

(assert (=> b!1264157 (= e!719835 e!719838)))

(declare-fun c!123072 () Bool)

(declare-fun e!719840 () Bool)

(assert (=> b!1264157 (= c!123072 e!719840)))

(declare-fun res!841990 () Bool)

(assert (=> b!1264157 (=> (not res!841990) (not e!719840))))

(assert (=> b!1264157 (= res!841990 (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264158 () Bool)

(declare-fun e!719836 () ListLongMap!19105)

(assert (=> b!1264158 (= e!719836 (ListLongMap!19106 Nil!28435))))

(declare-fun b!1264159 () Bool)

(declare-fun e!719837 () Bool)

(assert (=> b!1264159 (= e!719838 e!719837)))

(assert (=> b!1264159 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun res!841991 () Bool)

(declare-fun lt!573549 () ListLongMap!19105)

(assert (=> b!1264159 (= res!841991 (contains!7631 lt!573549 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1264159 (=> (not res!841991) (not e!719837))))

(declare-fun b!1264160 () Bool)

(declare-fun e!719839 () Bool)

(assert (=> b!1264160 (= e!719838 e!719839)))

(declare-fun c!123070 () Bool)

(assert (=> b!1264160 (= c!123070 (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264161 () Bool)

(declare-fun res!841993 () Bool)

(assert (=> b!1264161 (=> (not res!841993) (not e!719835))))

(assert (=> b!1264161 (= res!841993 (not (contains!7631 lt!573549 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1264162 () Bool)

(declare-fun e!719834 () ListLongMap!19105)

(declare-fun call!62324 () ListLongMap!19105)

(assert (=> b!1264162 (= e!719834 call!62324)))

(declare-fun b!1264163 () Bool)

(assert (=> b!1264163 (= e!719839 (= lt!573549 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1264164 () Bool)

(declare-fun isEmpty!1049 (ListLongMap!19105) Bool)

(assert (=> b!1264164 (= e!719839 (isEmpty!1049 lt!573549))))

(declare-fun b!1264165 () Bool)

(assert (=> b!1264165 (= e!719836 e!719834)))

(declare-fun c!123071 () Bool)

(assert (=> b!1264165 (= c!123071 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1264166 () Bool)

(declare-fun lt!573547 () Unit!42080)

(declare-fun lt!573546 () Unit!42080)

(assert (=> b!1264166 (= lt!573547 lt!573546)))

(declare-fun lt!573548 () V!48601)

(declare-fun lt!573544 () (_ BitVec 64))

(declare-fun lt!573545 () ListLongMap!19105)

(declare-fun lt!573543 () (_ BitVec 64))

(assert (=> b!1264166 (not (contains!7631 (+!4233 lt!573545 (tuple2!21221 lt!573544 lt!573548)) lt!573543))))

(declare-fun addStillNotContains!334 (ListLongMap!19105 (_ BitVec 64) V!48601 (_ BitVec 64)) Unit!42080)

(assert (=> b!1264166 (= lt!573546 (addStillNotContains!334 lt!573545 lt!573544 lt!573548 lt!573543))))

(assert (=> b!1264166 (= lt!573543 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1264166 (= lt!573548 (get!20337 (select (arr!39772 _values!914) #b00000000000000000000000000000000) (dynLambda!3484 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1264166 (= lt!573544 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1264166 (= lt!573545 call!62324)))

(assert (=> b!1264166 (= e!719834 (+!4233 call!62324 (tuple2!21221 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000) (get!20337 (select (arr!39772 _values!914) #b00000000000000000000000000000000) (dynLambda!3484 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1264167 () Bool)

(assert (=> b!1264167 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(assert (=> b!1264167 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40309 _values!914)))))

(assert (=> b!1264167 (= e!719837 (= (apply!1039 lt!573549 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)) (get!20337 (select (arr!39772 _values!914) #b00000000000000000000000000000000) (dynLambda!3484 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1264168 () Bool)

(assert (=> b!1264168 (= e!719840 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1264168 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!62321 () Bool)

(assert (=> bm!62321 (= call!62324 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun d!138633 () Bool)

(assert (=> d!138633 e!719835))

(declare-fun res!841992 () Bool)

(assert (=> d!138633 (=> (not res!841992) (not e!719835))))

(assert (=> d!138633 (= res!841992 (not (contains!7631 lt!573549 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138633 (= lt!573549 e!719836)))

(declare-fun c!123069 () Bool)

(assert (=> d!138633 (= c!123069 (bvsge #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(assert (=> d!138633 (validMask!0 mask!1466)))

(assert (=> d!138633 (= (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573549)))

(assert (= (and d!138633 c!123069) b!1264158))

(assert (= (and d!138633 (not c!123069)) b!1264165))

(assert (= (and b!1264165 c!123071) b!1264166))

(assert (= (and b!1264165 (not c!123071)) b!1264162))

(assert (= (or b!1264166 b!1264162) bm!62321))

(assert (= (and d!138633 res!841992) b!1264161))

(assert (= (and b!1264161 res!841993) b!1264157))

(assert (= (and b!1264157 res!841990) b!1264168))

(assert (= (and b!1264157 c!123072) b!1264159))

(assert (= (and b!1264157 (not c!123072)) b!1264160))

(assert (= (and b!1264159 res!841991) b!1264167))

(assert (= (and b!1264160 c!123070) b!1264163))

(assert (= (and b!1264160 (not c!123070)) b!1264164))

(declare-fun b_lambda!23029 () Bool)

(assert (=> (not b_lambda!23029) (not b!1264166)))

(assert (=> b!1264166 t!41969))

(declare-fun b_and!45563 () Bool)

(assert (= b_and!45561 (and (=> t!41969 result!23421) b_and!45563)))

(declare-fun b_lambda!23031 () Bool)

(assert (=> (not b_lambda!23031) (not b!1264167)))

(assert (=> b!1264167 t!41969))

(declare-fun b_and!45565 () Bool)

(assert (= b_and!45563 (and (=> t!41969 result!23421) b_and!45565)))

(declare-fun m!1164727 () Bool)

(assert (=> bm!62321 m!1164727))

(declare-fun m!1164729 () Bool)

(assert (=> b!1264164 m!1164729))

(assert (=> b!1264167 m!1164611))

(declare-fun m!1164731 () Bool)

(assert (=> b!1264167 m!1164731))

(assert (=> b!1264167 m!1164655))

(assert (=> b!1264167 m!1164657))

(assert (=> b!1264167 m!1164659))

(assert (=> b!1264167 m!1164611))

(assert (=> b!1264167 m!1164657))

(assert (=> b!1264167 m!1164655))

(declare-fun m!1164733 () Bool)

(assert (=> d!138633 m!1164733))

(assert (=> d!138633 m!1164539))

(declare-fun m!1164735 () Bool)

(assert (=> b!1264166 m!1164735))

(assert (=> b!1264166 m!1164655))

(assert (=> b!1264166 m!1164657))

(assert (=> b!1264166 m!1164659))

(declare-fun m!1164737 () Bool)

(assert (=> b!1264166 m!1164737))

(assert (=> b!1264166 m!1164657))

(assert (=> b!1264166 m!1164655))

(declare-fun m!1164739 () Bool)

(assert (=> b!1264166 m!1164739))

(assert (=> b!1264166 m!1164735))

(declare-fun m!1164741 () Bool)

(assert (=> b!1264166 m!1164741))

(assert (=> b!1264166 m!1164611))

(assert (=> b!1264159 m!1164611))

(assert (=> b!1264159 m!1164611))

(declare-fun m!1164743 () Bool)

(assert (=> b!1264159 m!1164743))

(assert (=> b!1264165 m!1164611))

(assert (=> b!1264165 m!1164611))

(assert (=> b!1264165 m!1164613))

(assert (=> b!1264163 m!1164727))

(declare-fun m!1164745 () Bool)

(assert (=> b!1264161 m!1164745))

(assert (=> b!1264168 m!1164611))

(assert (=> b!1264168 m!1164611))

(assert (=> b!1264168 m!1164613))

(assert (=> b!1263986 d!138633))

(declare-fun b!1264169 () Bool)

(declare-fun e!719842 () Bool)

(declare-fun e!719845 () Bool)

(assert (=> b!1264169 (= e!719842 e!719845)))

(declare-fun c!123076 () Bool)

(declare-fun e!719847 () Bool)

(assert (=> b!1264169 (= c!123076 e!719847)))

(declare-fun res!841994 () Bool)

(assert (=> b!1264169 (=> (not res!841994) (not e!719847))))

(assert (=> b!1264169 (= res!841994 (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264170 () Bool)

(declare-fun e!719843 () ListLongMap!19105)

(assert (=> b!1264170 (= e!719843 (ListLongMap!19106 Nil!28435))))

(declare-fun b!1264171 () Bool)

(declare-fun e!719844 () Bool)

(assert (=> b!1264171 (= e!719845 e!719844)))

(assert (=> b!1264171 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun res!841995 () Bool)

(declare-fun lt!573556 () ListLongMap!19105)

(assert (=> b!1264171 (= res!841995 (contains!7631 lt!573556 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1264171 (=> (not res!841995) (not e!719844))))

(declare-fun b!1264172 () Bool)

(declare-fun e!719846 () Bool)

(assert (=> b!1264172 (= e!719845 e!719846)))

(declare-fun c!123074 () Bool)

(assert (=> b!1264172 (= c!123074 (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(declare-fun b!1264173 () Bool)

(declare-fun res!841997 () Bool)

(assert (=> b!1264173 (=> (not res!841997) (not e!719842))))

(assert (=> b!1264173 (= res!841997 (not (contains!7631 lt!573556 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1264174 () Bool)

(declare-fun e!719841 () ListLongMap!19105)

(declare-fun call!62325 () ListLongMap!19105)

(assert (=> b!1264174 (= e!719841 call!62325)))

(declare-fun b!1264175 () Bool)

(assert (=> b!1264175 (= e!719846 (= lt!573556 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1264176 () Bool)

(assert (=> b!1264176 (= e!719846 (isEmpty!1049 lt!573556))))

(declare-fun b!1264177 () Bool)

(assert (=> b!1264177 (= e!719843 e!719841)))

(declare-fun c!123075 () Bool)

(assert (=> b!1264177 (= c!123075 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1264178 () Bool)

(declare-fun lt!573554 () Unit!42080)

(declare-fun lt!573553 () Unit!42080)

(assert (=> b!1264178 (= lt!573554 lt!573553)))

(declare-fun lt!573552 () ListLongMap!19105)

(declare-fun lt!573555 () V!48601)

(declare-fun lt!573551 () (_ BitVec 64))

(declare-fun lt!573550 () (_ BitVec 64))

(assert (=> b!1264178 (not (contains!7631 (+!4233 lt!573552 (tuple2!21221 lt!573551 lt!573555)) lt!573550))))

(assert (=> b!1264178 (= lt!573553 (addStillNotContains!334 lt!573552 lt!573551 lt!573555 lt!573550))))

(assert (=> b!1264178 (= lt!573550 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1264178 (= lt!573555 (get!20337 (select (arr!39772 _values!914) #b00000000000000000000000000000000) (dynLambda!3484 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1264178 (= lt!573551 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1264178 (= lt!573552 call!62325)))

(assert (=> b!1264178 (= e!719841 (+!4233 call!62325 (tuple2!21221 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000) (get!20337 (select (arr!39772 _values!914) #b00000000000000000000000000000000) (dynLambda!3484 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1264179 () Bool)

(assert (=> b!1264179 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(assert (=> b!1264179 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40309 _values!914)))))

(assert (=> b!1264179 (= e!719844 (= (apply!1039 lt!573556 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)) (get!20337 (select (arr!39772 _values!914) #b00000000000000000000000000000000) (dynLambda!3484 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1264180 () Bool)

(assert (=> b!1264180 (= e!719847 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1264180 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!62322 () Bool)

(assert (=> bm!62322 (= call!62325 (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun d!138635 () Bool)

(assert (=> d!138635 e!719842))

(declare-fun res!841996 () Bool)

(assert (=> d!138635 (=> (not res!841996) (not e!719842))))

(assert (=> d!138635 (= res!841996 (not (contains!7631 lt!573556 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138635 (= lt!573556 e!719843)))

(declare-fun c!123073 () Bool)

(assert (=> d!138635 (= c!123073 (bvsge #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(assert (=> d!138635 (validMask!0 mask!1466)))

(assert (=> d!138635 (= (getCurrentListMapNoExtraKeys!5907 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!573556)))

(assert (= (and d!138635 c!123073) b!1264170))

(assert (= (and d!138635 (not c!123073)) b!1264177))

(assert (= (and b!1264177 c!123075) b!1264178))

(assert (= (and b!1264177 (not c!123075)) b!1264174))

(assert (= (or b!1264178 b!1264174) bm!62322))

(assert (= (and d!138635 res!841996) b!1264173))

(assert (= (and b!1264173 res!841997) b!1264169))

(assert (= (and b!1264169 res!841994) b!1264180))

(assert (= (and b!1264169 c!123076) b!1264171))

(assert (= (and b!1264169 (not c!123076)) b!1264172))

(assert (= (and b!1264171 res!841995) b!1264179))

(assert (= (and b!1264172 c!123074) b!1264175))

(assert (= (and b!1264172 (not c!123074)) b!1264176))

(declare-fun b_lambda!23033 () Bool)

(assert (=> (not b_lambda!23033) (not b!1264178)))

(assert (=> b!1264178 t!41969))

(declare-fun b_and!45567 () Bool)

(assert (= b_and!45565 (and (=> t!41969 result!23421) b_and!45567)))

(declare-fun b_lambda!23035 () Bool)

(assert (=> (not b_lambda!23035) (not b!1264179)))

(assert (=> b!1264179 t!41969))

(declare-fun b_and!45569 () Bool)

(assert (= b_and!45567 (and (=> t!41969 result!23421) b_and!45569)))

(declare-fun m!1164747 () Bool)

(assert (=> bm!62322 m!1164747))

(declare-fun m!1164749 () Bool)

(assert (=> b!1264176 m!1164749))

(assert (=> b!1264179 m!1164611))

(declare-fun m!1164751 () Bool)

(assert (=> b!1264179 m!1164751))

(assert (=> b!1264179 m!1164655))

(assert (=> b!1264179 m!1164657))

(assert (=> b!1264179 m!1164659))

(assert (=> b!1264179 m!1164611))

(assert (=> b!1264179 m!1164657))

(assert (=> b!1264179 m!1164655))

(declare-fun m!1164753 () Bool)

(assert (=> d!138635 m!1164753))

(assert (=> d!138635 m!1164539))

(declare-fun m!1164755 () Bool)

(assert (=> b!1264178 m!1164755))

(assert (=> b!1264178 m!1164655))

(assert (=> b!1264178 m!1164657))

(assert (=> b!1264178 m!1164659))

(declare-fun m!1164757 () Bool)

(assert (=> b!1264178 m!1164757))

(assert (=> b!1264178 m!1164657))

(assert (=> b!1264178 m!1164655))

(declare-fun m!1164759 () Bool)

(assert (=> b!1264178 m!1164759))

(assert (=> b!1264178 m!1164755))

(declare-fun m!1164761 () Bool)

(assert (=> b!1264178 m!1164761))

(assert (=> b!1264178 m!1164611))

(assert (=> b!1264171 m!1164611))

(assert (=> b!1264171 m!1164611))

(declare-fun m!1164763 () Bool)

(assert (=> b!1264171 m!1164763))

(assert (=> b!1264177 m!1164611))

(assert (=> b!1264177 m!1164611))

(assert (=> b!1264177 m!1164613))

(assert (=> b!1264175 m!1164747))

(declare-fun m!1164765 () Bool)

(assert (=> b!1264173 m!1164765))

(assert (=> b!1264180 m!1164611))

(assert (=> b!1264180 m!1164611))

(assert (=> b!1264180 m!1164613))

(assert (=> b!1263986 d!138635))

(declare-fun d!138637 () Bool)

(declare-fun e!719848 () Bool)

(assert (=> d!138637 e!719848))

(declare-fun res!841998 () Bool)

(assert (=> d!138637 (=> (not res!841998) (not e!719848))))

(declare-fun lt!573558 () ListLongMap!19105)

(assert (=> d!138637 (= res!841998 (contains!7631 lt!573558 (_1!10620 lt!573385)))))

(declare-fun lt!573560 () List!28438)

(assert (=> d!138637 (= lt!573558 (ListLongMap!19106 lt!573560))))

(declare-fun lt!573559 () Unit!42080)

(declare-fun lt!573557 () Unit!42080)

(assert (=> d!138637 (= lt!573559 lt!573557)))

(assert (=> d!138637 (= (getValueByKey!672 lt!573560 (_1!10620 lt!573385)) (Some!722 (_2!10620 lt!573385)))))

(assert (=> d!138637 (= lt!573557 (lemmaContainsTupThenGetReturnValue!339 lt!573560 (_1!10620 lt!573385) (_2!10620 lt!573385)))))

(assert (=> d!138637 (= lt!573560 (insertStrictlySorted!452 (toList!9568 lt!573387) (_1!10620 lt!573385) (_2!10620 lt!573385)))))

(assert (=> d!138637 (= (+!4233 lt!573387 lt!573385) lt!573558)))

(declare-fun b!1264181 () Bool)

(declare-fun res!841999 () Bool)

(assert (=> b!1264181 (=> (not res!841999) (not e!719848))))

(assert (=> b!1264181 (= res!841999 (= (getValueByKey!672 (toList!9568 lt!573558) (_1!10620 lt!573385)) (Some!722 (_2!10620 lt!573385))))))

(declare-fun b!1264182 () Bool)

(assert (=> b!1264182 (= e!719848 (contains!7632 (toList!9568 lt!573558) lt!573385))))

(assert (= (and d!138637 res!841998) b!1264181))

(assert (= (and b!1264181 res!841999) b!1264182))

(declare-fun m!1164767 () Bool)

(assert (=> d!138637 m!1164767))

(declare-fun m!1164769 () Bool)

(assert (=> d!138637 m!1164769))

(declare-fun m!1164771 () Bool)

(assert (=> d!138637 m!1164771))

(declare-fun m!1164773 () Bool)

(assert (=> d!138637 m!1164773))

(declare-fun m!1164775 () Bool)

(assert (=> b!1264181 m!1164775))

(declare-fun m!1164777 () Bool)

(assert (=> b!1264182 m!1164777))

(assert (=> b!1263987 d!138637))

(declare-fun b!1264191 () Bool)

(declare-fun e!719856 () Bool)

(declare-fun call!62328 () Bool)

(assert (=> b!1264191 (= e!719856 call!62328)))

(declare-fun d!138639 () Bool)

(declare-fun res!842005 () Bool)

(declare-fun e!719857 () Bool)

(assert (=> d!138639 (=> res!842005 e!719857)))

(assert (=> d!138639 (= res!842005 (bvsge #b00000000000000000000000000000000 (size!40308 _keys!1118)))))

(assert (=> d!138639 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!719857)))

(declare-fun bm!62325 () Bool)

(assert (=> bm!62325 (= call!62328 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1264192 () Bool)

(declare-fun e!719855 () Bool)

(assert (=> b!1264192 (= e!719857 e!719855)))

(declare-fun c!123079 () Bool)

(assert (=> b!1264192 (= c!123079 (validKeyInArray!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1264193 () Bool)

(assert (=> b!1264193 (= e!719855 call!62328)))

(declare-fun b!1264194 () Bool)

(assert (=> b!1264194 (= e!719855 e!719856)))

(declare-fun lt!573568 () (_ BitVec 64))

(assert (=> b!1264194 (= lt!573568 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!573569 () Unit!42080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82465 (_ BitVec 64) (_ BitVec 32)) Unit!42080)

(assert (=> b!1264194 (= lt!573569 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!573568 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1264194 (arrayContainsKey!0 _keys!1118 lt!573568 #b00000000000000000000000000000000)))

(declare-fun lt!573567 () Unit!42080)

(assert (=> b!1264194 (= lt!573567 lt!573569)))

(declare-fun res!842004 () Bool)

(declare-datatypes ((SeekEntryResult!9979 0))(
  ( (MissingZero!9979 (index!42286 (_ BitVec 32))) (Found!9979 (index!42287 (_ BitVec 32))) (Intermediate!9979 (undefined!10791 Bool) (index!42288 (_ BitVec 32)) (x!111377 (_ BitVec 32))) (Undefined!9979) (MissingVacant!9979 (index!42289 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82465 (_ BitVec 32)) SeekEntryResult!9979)

(assert (=> b!1264194 (= res!842004 (= (seekEntryOrOpen!0 (select (arr!39771 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9979 #b00000000000000000000000000000000)))))

(assert (=> b!1264194 (=> (not res!842004) (not e!719856))))

(assert (= (and d!138639 (not res!842005)) b!1264192))

(assert (= (and b!1264192 c!123079) b!1264194))

(assert (= (and b!1264192 (not c!123079)) b!1264193))

(assert (= (and b!1264194 res!842004) b!1264191))

(assert (= (or b!1264191 b!1264193) bm!62325))

(declare-fun m!1164779 () Bool)

(assert (=> bm!62325 m!1164779))

(assert (=> b!1264192 m!1164611))

(assert (=> b!1264192 m!1164611))

(assert (=> b!1264192 m!1164613))

(assert (=> b!1264194 m!1164611))

(declare-fun m!1164781 () Bool)

(assert (=> b!1264194 m!1164781))

(declare-fun m!1164783 () Bool)

(assert (=> b!1264194 m!1164783))

(assert (=> b!1264194 m!1164611))

(declare-fun m!1164785 () Bool)

(assert (=> b!1264194 m!1164785))

(assert (=> b!1263980 d!138639))

(declare-fun mapNonEmpty!50479 () Bool)

(declare-fun mapRes!50479 () Bool)

(declare-fun tp!96147 () Bool)

(declare-fun e!719862 () Bool)

(assert (=> mapNonEmpty!50479 (= mapRes!50479 (and tp!96147 e!719862))))

(declare-fun mapValue!50479 () ValueCell!15450)

(declare-fun mapKey!50479 () (_ BitVec 32))

(declare-fun mapRest!50479 () (Array (_ BitVec 32) ValueCell!15450))

(assert (=> mapNonEmpty!50479 (= mapRest!50473 (store mapRest!50479 mapKey!50479 mapValue!50479))))

(declare-fun mapIsEmpty!50479 () Bool)

(assert (=> mapIsEmpty!50479 mapRes!50479))

(declare-fun condMapEmpty!50479 () Bool)

(declare-fun mapDefault!50479 () ValueCell!15450)

(assert (=> mapNonEmpty!50473 (= condMapEmpty!50479 (= mapRest!50473 ((as const (Array (_ BitVec 32) ValueCell!15450)) mapDefault!50479)))))

(declare-fun e!719863 () Bool)

(assert (=> mapNonEmpty!50473 (= tp!96137 (and e!719863 mapRes!50479))))

(declare-fun b!1264201 () Bool)

(assert (=> b!1264201 (= e!719862 tp_is_empty!32427)))

(declare-fun b!1264202 () Bool)

(assert (=> b!1264202 (= e!719863 tp_is_empty!32427)))

(assert (= (and mapNonEmpty!50473 condMapEmpty!50479) mapIsEmpty!50479))

(assert (= (and mapNonEmpty!50473 (not condMapEmpty!50479)) mapNonEmpty!50479))

(assert (= (and mapNonEmpty!50479 ((_ is ValueCellFull!15450) mapValue!50479)) b!1264201))

(assert (= (and mapNonEmpty!50473 ((_ is ValueCellFull!15450) mapDefault!50479)) b!1264202))

(declare-fun m!1164787 () Bool)

(assert (=> mapNonEmpty!50479 m!1164787))

(declare-fun b_lambda!23037 () Bool)

(assert (= b_lambda!23035 (or (and start!106204 b_free!27525) b_lambda!23037)))

(declare-fun b_lambda!23039 () Bool)

(assert (= b_lambda!23025 (or (and start!106204 b_free!27525) b_lambda!23039)))

(declare-fun b_lambda!23041 () Bool)

(assert (= b_lambda!23031 (or (and start!106204 b_free!27525) b_lambda!23041)))

(declare-fun b_lambda!23043 () Bool)

(assert (= b_lambda!23033 (or (and start!106204 b_free!27525) b_lambda!23043)))

(declare-fun b_lambda!23045 () Bool)

(assert (= b_lambda!23029 (or (and start!106204 b_free!27525) b_lambda!23045)))

(declare-fun b_lambda!23047 () Bool)

(assert (= b_lambda!23027 (or (and start!106204 b_free!27525) b_lambda!23047)))

(check-sat (not b!1264088) (not b!1264129) (not d!138625) (not b!1264168) (not b!1264131) (not b!1264171) (not b!1264077) (not b!1264086) (not b!1264102) (not b!1264130) (not bm!62325) (not b!1264027) (not b!1264173) (not b!1264167) (not b!1264176) (not b!1264111) (not b!1264078) (not b_next!27525) (not b!1264108) (not b_lambda!23043) (not b!1264179) (not b!1264075) (not b!1264178) (not b!1264020) (not bm!62314) (not bm!62311) (not b!1264175) (not b_lambda!23045) (not b!1264181) (not d!138627) (not b!1264114) (not b!1264192) (not b!1264194) (not b!1264103) (not b!1264165) (not bm!62318) (not b!1264163) (not b_lambda!23039) (not b_lambda!23047) (not d!138635) (not bm!62321) (not b_lambda!23041) (not b!1264095) (not bm!62304) (not bm!62306) (not b!1264029) (not bm!62307) tp_is_empty!32427 (not d!138633) (not d!138619) (not b!1264159) (not b!1264096) (not b!1264113) (not b!1264100) (not bm!62305) (not bm!62312) (not d!138623) (not b!1264019) (not b!1264166) (not b!1264164) (not b!1264182) (not b!1264085) (not b!1264083) (not d!138621) (not b!1264110) (not bm!62313) (not b!1264161) (not b!1264089) (not bm!62322) b_and!45569 (not mapNonEmpty!50479) (not d!138637) (not d!138631) (not b!1264180) (not b!1264177) (not b_lambda!23037))
(check-sat b_and!45569 (not b_next!27525))

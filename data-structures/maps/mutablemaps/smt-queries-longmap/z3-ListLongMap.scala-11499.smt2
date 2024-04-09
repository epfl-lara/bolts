; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133836 () Bool)

(assert start!133836)

(declare-fun b!1564470 () Bool)

(declare-fun e!871994 () Bool)

(declare-fun tp_is_empty!38877 () Bool)

(assert (=> b!1564470 (= e!871994 tp_is_empty!38877)))

(declare-fun b!1564471 () Bool)

(declare-fun res!1069643 () Bool)

(declare-fun e!871990 () Bool)

(assert (=> b!1564471 (=> res!1069643 e!871990)))

(declare-datatypes ((V!60043 0))(
  ( (V!60044 (val!19522 Int)) )
))
(declare-datatypes ((tuple2!25354 0))(
  ( (tuple2!25355 (_1!12687 (_ BitVec 64)) (_2!12687 V!60043)) )
))
(declare-datatypes ((List!36738 0))(
  ( (Nil!36735) (Cons!36734 (h!38181 tuple2!25354) (t!51592 List!36738)) )
))
(declare-datatypes ((ListLongMap!22801 0))(
  ( (ListLongMap!22802 (toList!11416 List!36738)) )
))
(declare-fun contains!10337 (ListLongMap!22801 (_ BitVec 64)) Bool)

(assert (=> b!1564471 (= res!1069643 (contains!10337 (ListLongMap!22802 Nil!36735) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564472 () Bool)

(declare-fun res!1069640 () Bool)

(declare-fun e!871991 () Bool)

(assert (=> b!1564472 (=> (not res!1069640) (not e!871991))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104409 0))(
  ( (array!104410 (arr!50391 (Array (_ BitVec 32) (_ BitVec 64))) (size!50942 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104409)

(declare-datatypes ((ValueCell!18408 0))(
  ( (ValueCellFull!18408 (v!22271 V!60043)) (EmptyCell!18408) )
))
(declare-datatypes ((array!104411 0))(
  ( (array!104412 (arr!50392 (Array (_ BitVec 32) ValueCell!18408)) (size!50943 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104411)

(declare-fun mask!947 () (_ BitVec 32))

(assert (=> b!1564472 (= res!1069640 (and (= (size!50943 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50942 _keys!637) (size!50943 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564473 () Bool)

(assert (=> b!1564473 (= e!871991 e!871990)))

(declare-fun res!1069642 () Bool)

(assert (=> b!1564473 (=> res!1069642 e!871990)))

(assert (=> b!1564473 (= res!1069642 (contains!10337 (ListLongMap!22802 Nil!36735) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564474 () Bool)

(declare-fun res!1069639 () Bool)

(assert (=> b!1564474 (=> (not res!1069639) (not e!871991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104409 (_ BitVec 32)) Bool)

(assert (=> b!1564474 (= res!1069639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564475 () Bool)

(declare-fun res!1069641 () Bool)

(assert (=> b!1564475 (=> (not res!1069641) (not e!871991))))

(declare-datatypes ((List!36739 0))(
  ( (Nil!36736) (Cons!36735 (h!38182 (_ BitVec 64)) (t!51593 List!36739)) )
))
(declare-fun arrayNoDuplicates!0 (array!104409 (_ BitVec 32) List!36739) Bool)

(assert (=> b!1564475 (= res!1069641 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36736))))

(declare-fun res!1069638 () Bool)

(assert (=> start!133836 (=> (not res!1069638) (not e!871991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133836 (= res!1069638 (validMask!0 mask!947))))

(assert (=> start!133836 e!871991))

(assert (=> start!133836 true))

(declare-fun array_inv!39085 (array!104409) Bool)

(assert (=> start!133836 (array_inv!39085 _keys!637)))

(declare-fun e!871993 () Bool)

(declare-fun array_inv!39086 (array!104411) Bool)

(assert (=> start!133836 (and (array_inv!39086 _values!487) e!871993)))

(declare-fun b!1564476 () Bool)

(declare-fun mapRes!59694 () Bool)

(assert (=> b!1564476 (= e!871993 (and e!871994 mapRes!59694))))

(declare-fun condMapEmpty!59694 () Bool)

(declare-fun mapDefault!59694 () ValueCell!18408)

(assert (=> b!1564476 (= condMapEmpty!59694 (= (arr!50392 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18408)) mapDefault!59694)))))

(declare-fun b!1564477 () Bool)

(declare-fun isEmpty!1143 (ListLongMap!22801) Bool)

(assert (=> b!1564477 (= e!871990 (not (isEmpty!1143 (ListLongMap!22802 Nil!36735))))))

(declare-fun mapIsEmpty!59694 () Bool)

(assert (=> mapIsEmpty!59694 mapRes!59694))

(declare-fun b!1564478 () Bool)

(declare-fun res!1069637 () Bool)

(assert (=> b!1564478 (=> (not res!1069637) (not e!871991))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564478 (= res!1069637 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50942 _keys!637)) (bvsge from!782 (size!50942 _keys!637))))))

(declare-fun b!1564479 () Bool)

(declare-fun e!871989 () Bool)

(assert (=> b!1564479 (= e!871989 tp_is_empty!38877)))

(declare-fun mapNonEmpty!59694 () Bool)

(declare-fun tp!113620 () Bool)

(assert (=> mapNonEmpty!59694 (= mapRes!59694 (and tp!113620 e!871989))))

(declare-fun mapValue!59694 () ValueCell!18408)

(declare-fun mapRest!59694 () (Array (_ BitVec 32) ValueCell!18408))

(declare-fun mapKey!59694 () (_ BitVec 32))

(assert (=> mapNonEmpty!59694 (= (arr!50392 _values!487) (store mapRest!59694 mapKey!59694 mapValue!59694))))

(assert (= (and start!133836 res!1069638) b!1564472))

(assert (= (and b!1564472 res!1069640) b!1564474))

(assert (= (and b!1564474 res!1069639) b!1564475))

(assert (= (and b!1564475 res!1069641) b!1564478))

(assert (= (and b!1564478 res!1069637) b!1564473))

(assert (= (and b!1564473 (not res!1069642)) b!1564471))

(assert (= (and b!1564471 (not res!1069643)) b!1564477))

(assert (= (and b!1564476 condMapEmpty!59694) mapIsEmpty!59694))

(assert (= (and b!1564476 (not condMapEmpty!59694)) mapNonEmpty!59694))

(get-info :version)

(assert (= (and mapNonEmpty!59694 ((_ is ValueCellFull!18408) mapValue!59694)) b!1564479))

(assert (= (and b!1564476 ((_ is ValueCellFull!18408) mapDefault!59694)) b!1564470))

(assert (= start!133836 b!1564476))

(declare-fun m!1439647 () Bool)

(assert (=> b!1564475 m!1439647))

(declare-fun m!1439649 () Bool)

(assert (=> b!1564473 m!1439649))

(declare-fun m!1439651 () Bool)

(assert (=> mapNonEmpty!59694 m!1439651))

(declare-fun m!1439653 () Bool)

(assert (=> b!1564474 m!1439653))

(declare-fun m!1439655 () Bool)

(assert (=> b!1564477 m!1439655))

(declare-fun m!1439657 () Bool)

(assert (=> start!133836 m!1439657))

(declare-fun m!1439659 () Bool)

(assert (=> start!133836 m!1439659))

(declare-fun m!1439661 () Bool)

(assert (=> start!133836 m!1439661))

(declare-fun m!1439663 () Bool)

(assert (=> b!1564471 m!1439663))

(check-sat (not b!1564471) (not start!133836) (not b!1564475) (not b!1564474) tp_is_empty!38877 (not b!1564473) (not b!1564477) (not mapNonEmpty!59694))
(check-sat)
(get-model)

(declare-fun b!1564518 () Bool)

(declare-fun e!872019 () Bool)

(declare-fun call!71850 () Bool)

(assert (=> b!1564518 (= e!872019 call!71850)))

(declare-fun b!1564519 () Bool)

(declare-fun e!872021 () Bool)

(assert (=> b!1564519 (= e!872021 e!872019)))

(declare-fun c!144167 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564519 (= c!144167 (validKeyInArray!0 (select (arr!50391 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun bm!71847 () Bool)

(assert (=> bm!71847 (= call!71850 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1564520 () Bool)

(declare-fun e!872020 () Bool)

(assert (=> b!1564520 (= e!872019 e!872020)))

(declare-fun lt!671981 () (_ BitVec 64))

(assert (=> b!1564520 (= lt!671981 (select (arr!50391 _keys!637) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51928 0))(
  ( (Unit!51929) )
))
(declare-fun lt!671980 () Unit!51928)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104409 (_ BitVec 64) (_ BitVec 32)) Unit!51928)

(assert (=> b!1564520 (= lt!671980 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!671981 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1564520 (arrayContainsKey!0 _keys!637 lt!671981 #b00000000000000000000000000000000)))

(declare-fun lt!671982 () Unit!51928)

(assert (=> b!1564520 (= lt!671982 lt!671980)))

(declare-fun res!1069670 () Bool)

(declare-datatypes ((SeekEntryResult!13520 0))(
  ( (MissingZero!13520 (index!56477 (_ BitVec 32))) (Found!13520 (index!56478 (_ BitVec 32))) (Intermediate!13520 (undefined!14332 Bool) (index!56479 (_ BitVec 32)) (x!140521 (_ BitVec 32))) (Undefined!13520) (MissingVacant!13520 (index!56480 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104409 (_ BitVec 32)) SeekEntryResult!13520)

(assert (=> b!1564520 (= res!1069670 (= (seekEntryOrOpen!0 (select (arr!50391 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13520 #b00000000000000000000000000000000)))))

(assert (=> b!1564520 (=> (not res!1069670) (not e!872020))))

(declare-fun b!1564521 () Bool)

(assert (=> b!1564521 (= e!872020 call!71850)))

(declare-fun d!163007 () Bool)

(declare-fun res!1069669 () Bool)

(assert (=> d!163007 (=> res!1069669 e!872021)))

(assert (=> d!163007 (= res!1069669 (bvsge #b00000000000000000000000000000000 (size!50942 _keys!637)))))

(assert (=> d!163007 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!872021)))

(assert (= (and d!163007 (not res!1069669)) b!1564519))

(assert (= (and b!1564519 c!144167) b!1564520))

(assert (= (and b!1564519 (not c!144167)) b!1564518))

(assert (= (and b!1564520 res!1069670) b!1564521))

(assert (= (or b!1564521 b!1564518) bm!71847))

(declare-fun m!1439683 () Bool)

(assert (=> b!1564519 m!1439683))

(assert (=> b!1564519 m!1439683))

(declare-fun m!1439685 () Bool)

(assert (=> b!1564519 m!1439685))

(declare-fun m!1439687 () Bool)

(assert (=> bm!71847 m!1439687))

(assert (=> b!1564520 m!1439683))

(declare-fun m!1439689 () Bool)

(assert (=> b!1564520 m!1439689))

(declare-fun m!1439691 () Bool)

(assert (=> b!1564520 m!1439691))

(assert (=> b!1564520 m!1439683))

(declare-fun m!1439693 () Bool)

(assert (=> b!1564520 m!1439693))

(assert (=> b!1564474 d!163007))

(declare-fun d!163009 () Bool)

(declare-fun e!872027 () Bool)

(assert (=> d!163009 e!872027))

(declare-fun res!1069673 () Bool)

(assert (=> d!163009 (=> res!1069673 e!872027)))

(declare-fun lt!671993 () Bool)

(assert (=> d!163009 (= res!1069673 (not lt!671993))))

(declare-fun lt!671994 () Bool)

(assert (=> d!163009 (= lt!671993 lt!671994)))

(declare-fun lt!671991 () Unit!51928)

(declare-fun e!872026 () Unit!51928)

(assert (=> d!163009 (= lt!671991 e!872026)))

(declare-fun c!144170 () Bool)

(assert (=> d!163009 (= c!144170 lt!671994)))

(declare-fun containsKey!846 (List!36738 (_ BitVec 64)) Bool)

(assert (=> d!163009 (= lt!671994 (containsKey!846 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163009 (= (contains!10337 (ListLongMap!22802 Nil!36735) #b0000000000000000000000000000000000000000000000000000000000000000) lt!671993)))

(declare-fun b!1564528 () Bool)

(declare-fun lt!671992 () Unit!51928)

(assert (=> b!1564528 (= e!872026 lt!671992)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!527 (List!36738 (_ BitVec 64)) Unit!51928)

(assert (=> b!1564528 (= lt!671992 (lemmaContainsKeyImpliesGetValueByKeyDefined!527 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!867 0))(
  ( (Some!866 (v!22273 V!60043)) (None!865) )
))
(declare-fun isDefined!576 (Option!867) Bool)

(declare-fun getValueByKey!792 (List!36738 (_ BitVec 64)) Option!867)

(assert (=> b!1564528 (isDefined!576 (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564529 () Bool)

(declare-fun Unit!51930 () Unit!51928)

(assert (=> b!1564529 (= e!872026 Unit!51930)))

(declare-fun b!1564530 () Bool)

(assert (=> b!1564530 (= e!872027 (isDefined!576 (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163009 c!144170) b!1564528))

(assert (= (and d!163009 (not c!144170)) b!1564529))

(assert (= (and d!163009 (not res!1069673)) b!1564530))

(declare-fun m!1439695 () Bool)

(assert (=> d!163009 m!1439695))

(declare-fun m!1439697 () Bool)

(assert (=> b!1564528 m!1439697))

(declare-fun m!1439699 () Bool)

(assert (=> b!1564528 m!1439699))

(assert (=> b!1564528 m!1439699))

(declare-fun m!1439701 () Bool)

(assert (=> b!1564528 m!1439701))

(assert (=> b!1564530 m!1439699))

(assert (=> b!1564530 m!1439699))

(assert (=> b!1564530 m!1439701))

(assert (=> b!1564473 d!163009))

(declare-fun d!163011 () Bool)

(assert (=> d!163011 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133836 d!163011))

(declare-fun d!163013 () Bool)

(assert (=> d!163013 (= (array_inv!39085 _keys!637) (bvsge (size!50942 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133836 d!163013))

(declare-fun d!163015 () Bool)

(assert (=> d!163015 (= (array_inv!39086 _values!487) (bvsge (size!50943 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133836 d!163015))

(declare-fun d!163017 () Bool)

(declare-fun e!872029 () Bool)

(assert (=> d!163017 e!872029))

(declare-fun res!1069674 () Bool)

(assert (=> d!163017 (=> res!1069674 e!872029)))

(declare-fun lt!671997 () Bool)

(assert (=> d!163017 (= res!1069674 (not lt!671997))))

(declare-fun lt!671998 () Bool)

(assert (=> d!163017 (= lt!671997 lt!671998)))

(declare-fun lt!671995 () Unit!51928)

(declare-fun e!872028 () Unit!51928)

(assert (=> d!163017 (= lt!671995 e!872028)))

(declare-fun c!144171 () Bool)

(assert (=> d!163017 (= c!144171 lt!671998)))

(assert (=> d!163017 (= lt!671998 (containsKey!846 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163017 (= (contains!10337 (ListLongMap!22802 Nil!36735) #b1000000000000000000000000000000000000000000000000000000000000000) lt!671997)))

(declare-fun b!1564531 () Bool)

(declare-fun lt!671996 () Unit!51928)

(assert (=> b!1564531 (= e!872028 lt!671996)))

(assert (=> b!1564531 (= lt!671996 (lemmaContainsKeyImpliesGetValueByKeyDefined!527 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1564531 (isDefined!576 (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564532 () Bool)

(declare-fun Unit!51931 () Unit!51928)

(assert (=> b!1564532 (= e!872028 Unit!51931)))

(declare-fun b!1564533 () Bool)

(assert (=> b!1564533 (= e!872029 (isDefined!576 (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163017 c!144171) b!1564531))

(assert (= (and d!163017 (not c!144171)) b!1564532))

(assert (= (and d!163017 (not res!1069674)) b!1564533))

(declare-fun m!1439703 () Bool)

(assert (=> d!163017 m!1439703))

(declare-fun m!1439705 () Bool)

(assert (=> b!1564531 m!1439705))

(declare-fun m!1439707 () Bool)

(assert (=> b!1564531 m!1439707))

(assert (=> b!1564531 m!1439707))

(declare-fun m!1439709 () Bool)

(assert (=> b!1564531 m!1439709))

(assert (=> b!1564533 m!1439707))

(assert (=> b!1564533 m!1439707))

(assert (=> b!1564533 m!1439709))

(assert (=> b!1564471 d!163017))

(declare-fun d!163019 () Bool)

(declare-fun isEmpty!1145 (List!36738) Bool)

(assert (=> d!163019 (= (isEmpty!1143 (ListLongMap!22802 Nil!36735)) (isEmpty!1145 (toList!11416 (ListLongMap!22802 Nil!36735))))))

(declare-fun bs!45012 () Bool)

(assert (= bs!45012 d!163019))

(declare-fun m!1439711 () Bool)

(assert (=> bs!45012 m!1439711))

(assert (=> b!1564477 d!163019))

(declare-fun b!1564544 () Bool)

(declare-fun e!872038 () Bool)

(declare-fun call!71853 () Bool)

(assert (=> b!1564544 (= e!872038 call!71853)))

(declare-fun bm!71850 () Bool)

(declare-fun c!144174 () Bool)

(assert (=> bm!71850 (= call!71853 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144174 (Cons!36735 (select (arr!50391 _keys!637) #b00000000000000000000000000000000) Nil!36736) Nil!36736)))))

(declare-fun d!163021 () Bool)

(declare-fun res!1069683 () Bool)

(declare-fun e!872039 () Bool)

(assert (=> d!163021 (=> res!1069683 e!872039)))

(assert (=> d!163021 (= res!1069683 (bvsge #b00000000000000000000000000000000 (size!50942 _keys!637)))))

(assert (=> d!163021 (= (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36736) e!872039)))

(declare-fun b!1564545 () Bool)

(declare-fun e!872040 () Bool)

(assert (=> b!1564545 (= e!872039 e!872040)))

(declare-fun res!1069682 () Bool)

(assert (=> b!1564545 (=> (not res!1069682) (not e!872040))))

(declare-fun e!872041 () Bool)

(assert (=> b!1564545 (= res!1069682 (not e!872041))))

(declare-fun res!1069681 () Bool)

(assert (=> b!1564545 (=> (not res!1069681) (not e!872041))))

(assert (=> b!1564545 (= res!1069681 (validKeyInArray!0 (select (arr!50391 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1564546 () Bool)

(declare-fun contains!10339 (List!36739 (_ BitVec 64)) Bool)

(assert (=> b!1564546 (= e!872041 (contains!10339 Nil!36736 (select (arr!50391 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1564547 () Bool)

(assert (=> b!1564547 (= e!872040 e!872038)))

(assert (=> b!1564547 (= c!144174 (validKeyInArray!0 (select (arr!50391 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1564548 () Bool)

(assert (=> b!1564548 (= e!872038 call!71853)))

(assert (= (and d!163021 (not res!1069683)) b!1564545))

(assert (= (and b!1564545 res!1069681) b!1564546))

(assert (= (and b!1564545 res!1069682) b!1564547))

(assert (= (and b!1564547 c!144174) b!1564544))

(assert (= (and b!1564547 (not c!144174)) b!1564548))

(assert (= (or b!1564544 b!1564548) bm!71850))

(assert (=> bm!71850 m!1439683))

(declare-fun m!1439713 () Bool)

(assert (=> bm!71850 m!1439713))

(assert (=> b!1564545 m!1439683))

(assert (=> b!1564545 m!1439683))

(assert (=> b!1564545 m!1439685))

(assert (=> b!1564546 m!1439683))

(assert (=> b!1564546 m!1439683))

(declare-fun m!1439715 () Bool)

(assert (=> b!1564546 m!1439715))

(assert (=> b!1564547 m!1439683))

(assert (=> b!1564547 m!1439683))

(assert (=> b!1564547 m!1439685))

(assert (=> b!1564475 d!163021))

(declare-fun condMapEmpty!59700 () Bool)

(declare-fun mapDefault!59700 () ValueCell!18408)

(assert (=> mapNonEmpty!59694 (= condMapEmpty!59700 (= mapRest!59694 ((as const (Array (_ BitVec 32) ValueCell!18408)) mapDefault!59700)))))

(declare-fun e!872046 () Bool)

(declare-fun mapRes!59700 () Bool)

(assert (=> mapNonEmpty!59694 (= tp!113620 (and e!872046 mapRes!59700))))

(declare-fun b!1564556 () Bool)

(assert (=> b!1564556 (= e!872046 tp_is_empty!38877)))

(declare-fun mapIsEmpty!59700 () Bool)

(assert (=> mapIsEmpty!59700 mapRes!59700))

(declare-fun b!1564555 () Bool)

(declare-fun e!872047 () Bool)

(assert (=> b!1564555 (= e!872047 tp_is_empty!38877)))

(declare-fun mapNonEmpty!59700 () Bool)

(declare-fun tp!113626 () Bool)

(assert (=> mapNonEmpty!59700 (= mapRes!59700 (and tp!113626 e!872047))))

(declare-fun mapKey!59700 () (_ BitVec 32))

(declare-fun mapRest!59700 () (Array (_ BitVec 32) ValueCell!18408))

(declare-fun mapValue!59700 () ValueCell!18408)

(assert (=> mapNonEmpty!59700 (= mapRest!59694 (store mapRest!59700 mapKey!59700 mapValue!59700))))

(assert (= (and mapNonEmpty!59694 condMapEmpty!59700) mapIsEmpty!59700))

(assert (= (and mapNonEmpty!59694 (not condMapEmpty!59700)) mapNonEmpty!59700))

(assert (= (and mapNonEmpty!59700 ((_ is ValueCellFull!18408) mapValue!59700)) b!1564555))

(assert (= (and mapNonEmpty!59694 ((_ is ValueCellFull!18408) mapDefault!59700)) b!1564556))

(declare-fun m!1439717 () Bool)

(assert (=> mapNonEmpty!59700 m!1439717))

(check-sat (not d!163009) (not b!1564520) (not b!1564545) (not b!1564530) (not d!163017) (not b!1564546) (not bm!71847) (not bm!71850) (not b!1564528) (not b!1564519) (not d!163019) (not b!1564533) tp_is_empty!38877 (not mapNonEmpty!59700) (not b!1564531) (not b!1564547))
(check-sat)
(get-model)

(declare-fun d!163023 () Bool)

(assert (=> d!163023 (= (isEmpty!1145 (toList!11416 (ListLongMap!22802 Nil!36735))) true)))

(assert (=> d!163019 d!163023))

(declare-fun d!163025 () Bool)

(assert (=> d!163025 (= (containsKey!846 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> d!163009 d!163025))

(declare-fun d!163027 () Bool)

(assert (=> d!163027 (= (isDefined!576 (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000)) false)))

(assert (=> b!1564533 d!163027))

(declare-fun d!163029 () Bool)

(assert (=> d!163029 (= (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000) None!865)))

(assert (=> b!1564533 d!163029))

(declare-fun d!163031 () Bool)

(assert (=> d!163031 (isDefined!576 (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672001 () Unit!51928)

(declare-fun choose!2079 (List!36738 (_ BitVec 64)) Unit!51928)

(assert (=> d!163031 (= lt!672001 (choose!2079 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!872050 () Bool)

(assert (=> d!163031 e!872050))

(declare-fun res!1069686 () Bool)

(assert (=> d!163031 (=> (not res!1069686) (not e!872050))))

(declare-fun isStrictlySorted!982 (List!36738) Bool)

(assert (=> d!163031 (= res!1069686 (isStrictlySorted!982 (toList!11416 (ListLongMap!22802 Nil!36735))))))

(assert (=> d!163031 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!527 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000) lt!672001)))

(declare-fun b!1564559 () Bool)

(assert (=> b!1564559 (= e!872050 (containsKey!846 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163031 res!1069686) b!1564559))

(assert (=> d!163031 m!1439707))

(assert (=> d!163031 m!1439707))

(assert (=> d!163031 m!1439709))

(declare-fun m!1439719 () Bool)

(assert (=> d!163031 m!1439719))

(declare-fun m!1439721 () Bool)

(assert (=> d!163031 m!1439721))

(assert (=> b!1564559 m!1439703))

(assert (=> b!1564531 d!163031))

(assert (=> b!1564531 d!163027))

(assert (=> b!1564531 d!163029))

(declare-fun d!163033 () Bool)

(assert (=> d!163033 (= (containsKey!846 (toList!11416 (ListLongMap!22802 Nil!36735)) #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> d!163017 d!163033))

(declare-fun d!163035 () Bool)

(assert (=> d!163035 (arrayContainsKey!0 _keys!637 lt!671981 #b00000000000000000000000000000000)))

(declare-fun lt!672004 () Unit!51928)

(declare-fun choose!13 (array!104409 (_ BitVec 64) (_ BitVec 32)) Unit!51928)

(assert (=> d!163035 (= lt!672004 (choose!13 _keys!637 lt!671981 #b00000000000000000000000000000000))))

(assert (=> d!163035 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!163035 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!671981 #b00000000000000000000000000000000) lt!672004)))

(declare-fun bs!45013 () Bool)

(assert (= bs!45013 d!163035))

(assert (=> bs!45013 m!1439691))

(declare-fun m!1439723 () Bool)

(assert (=> bs!45013 m!1439723))

(assert (=> b!1564520 d!163035))

(declare-fun d!163037 () Bool)

(declare-fun res!1069691 () Bool)

(declare-fun e!872055 () Bool)

(assert (=> d!163037 (=> res!1069691 e!872055)))

(assert (=> d!163037 (= res!1069691 (= (select (arr!50391 _keys!637) #b00000000000000000000000000000000) lt!671981))))

(assert (=> d!163037 (= (arrayContainsKey!0 _keys!637 lt!671981 #b00000000000000000000000000000000) e!872055)))

(declare-fun b!1564564 () Bool)

(declare-fun e!872056 () Bool)

(assert (=> b!1564564 (= e!872055 e!872056)))

(declare-fun res!1069692 () Bool)

(assert (=> b!1564564 (=> (not res!1069692) (not e!872056))))

(assert (=> b!1564564 (= res!1069692 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!50942 _keys!637)))))

(declare-fun b!1564565 () Bool)

(assert (=> b!1564565 (= e!872056 (arrayContainsKey!0 _keys!637 lt!671981 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!163037 (not res!1069691)) b!1564564))

(assert (= (and b!1564564 res!1069692) b!1564565))

(assert (=> d!163037 m!1439683))

(declare-fun m!1439725 () Bool)

(assert (=> b!1564565 m!1439725))

(assert (=> b!1564520 d!163037))

(declare-fun b!1564578 () Bool)

(declare-fun e!872064 () SeekEntryResult!13520)

(declare-fun lt!672011 () SeekEntryResult!13520)

(assert (=> b!1564578 (= e!872064 (MissingZero!13520 (index!56479 lt!672011)))))

(declare-fun b!1564579 () Bool)

(declare-fun e!872063 () SeekEntryResult!13520)

(assert (=> b!1564579 (= e!872063 (Found!13520 (index!56479 lt!672011)))))

(declare-fun b!1564581 () Bool)

(declare-fun e!872065 () SeekEntryResult!13520)

(assert (=> b!1564581 (= e!872065 Undefined!13520)))

(declare-fun b!1564582 () Bool)

(declare-fun c!144182 () Bool)

(declare-fun lt!672013 () (_ BitVec 64))

(assert (=> b!1564582 (= c!144182 (= lt!672013 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1564582 (= e!872063 e!872064)))

(declare-fun b!1564583 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104409 (_ BitVec 32)) SeekEntryResult!13520)

(assert (=> b!1564583 (= e!872064 (seekKeyOrZeroReturnVacant!0 (x!140521 lt!672011) (index!56479 lt!672011) (index!56479 lt!672011) (select (arr!50391 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947))))

(declare-fun b!1564580 () Bool)

(assert (=> b!1564580 (= e!872065 e!872063)))

(assert (=> b!1564580 (= lt!672013 (select (arr!50391 _keys!637) (index!56479 lt!672011)))))

(declare-fun c!144183 () Bool)

(assert (=> b!1564580 (= c!144183 (= lt!672013 (select (arr!50391 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun d!163039 () Bool)

(declare-fun lt!672012 () SeekEntryResult!13520)

(assert (=> d!163039 (and (or ((_ is Undefined!13520) lt!672012) (not ((_ is Found!13520) lt!672012)) (and (bvsge (index!56478 lt!672012) #b00000000000000000000000000000000) (bvslt (index!56478 lt!672012) (size!50942 _keys!637)))) (or ((_ is Undefined!13520) lt!672012) ((_ is Found!13520) lt!672012) (not ((_ is MissingZero!13520) lt!672012)) (and (bvsge (index!56477 lt!672012) #b00000000000000000000000000000000) (bvslt (index!56477 lt!672012) (size!50942 _keys!637)))) (or ((_ is Undefined!13520) lt!672012) ((_ is Found!13520) lt!672012) ((_ is MissingZero!13520) lt!672012) (not ((_ is MissingVacant!13520) lt!672012)) (and (bvsge (index!56480 lt!672012) #b00000000000000000000000000000000) (bvslt (index!56480 lt!672012) (size!50942 _keys!637)))) (or ((_ is Undefined!13520) lt!672012) (ite ((_ is Found!13520) lt!672012) (= (select (arr!50391 _keys!637) (index!56478 lt!672012)) (select (arr!50391 _keys!637) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!13520) lt!672012) (= (select (arr!50391 _keys!637) (index!56477 lt!672012)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13520) lt!672012) (= (select (arr!50391 _keys!637) (index!56480 lt!672012)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163039 (= lt!672012 e!872065)))

(declare-fun c!144181 () Bool)

(assert (=> d!163039 (= c!144181 (and ((_ is Intermediate!13520) lt!672011) (undefined!14332 lt!672011)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104409 (_ BitVec 32)) SeekEntryResult!13520)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!163039 (= lt!672011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!50391 _keys!637) #b00000000000000000000000000000000) mask!947) (select (arr!50391 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947))))

(assert (=> d!163039 (validMask!0 mask!947)))

(assert (=> d!163039 (= (seekEntryOrOpen!0 (select (arr!50391 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) lt!672012)))

(assert (= (and d!163039 c!144181) b!1564581))

(assert (= (and d!163039 (not c!144181)) b!1564580))

(assert (= (and b!1564580 c!144183) b!1564579))

(assert (= (and b!1564580 (not c!144183)) b!1564582))

(assert (= (and b!1564582 c!144182) b!1564578))

(assert (= (and b!1564582 (not c!144182)) b!1564583))

(assert (=> b!1564583 m!1439683))

(declare-fun m!1439727 () Bool)

(assert (=> b!1564583 m!1439727))

(declare-fun m!1439729 () Bool)

(assert (=> b!1564580 m!1439729))

(assert (=> d!163039 m!1439683))

(declare-fun m!1439731 () Bool)

(assert (=> d!163039 m!1439731))

(declare-fun m!1439733 () Bool)

(assert (=> d!163039 m!1439733))

(assert (=> d!163039 m!1439657))

(declare-fun m!1439735 () Bool)

(assert (=> d!163039 m!1439735))

(assert (=> d!163039 m!1439731))

(assert (=> d!163039 m!1439683))

(declare-fun m!1439737 () Bool)

(assert (=> d!163039 m!1439737))

(declare-fun m!1439739 () Bool)

(assert (=> d!163039 m!1439739))

(assert (=> b!1564520 d!163039))

(declare-fun b!1564584 () Bool)

(declare-fun e!872066 () Bool)

(declare-fun call!71854 () Bool)

(assert (=> b!1564584 (= e!872066 call!71854)))

(declare-fun b!1564585 () Bool)

(declare-fun e!872068 () Bool)

(assert (=> b!1564585 (= e!872068 e!872066)))

(declare-fun c!144184 () Bool)

(assert (=> b!1564585 (= c!144184 (validKeyInArray!0 (select (arr!50391 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!71851 () Bool)

(assert (=> bm!71851 (= call!71854 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1564586 () Bool)

(declare-fun e!872067 () Bool)

(assert (=> b!1564586 (= e!872066 e!872067)))

(declare-fun lt!672015 () (_ BitVec 64))

(assert (=> b!1564586 (= lt!672015 (select (arr!50391 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!672014 () Unit!51928)

(assert (=> b!1564586 (= lt!672014 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672015 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1564586 (arrayContainsKey!0 _keys!637 lt!672015 #b00000000000000000000000000000000)))

(declare-fun lt!672016 () Unit!51928)

(assert (=> b!1564586 (= lt!672016 lt!672014)))

(declare-fun res!1069694 () Bool)

(assert (=> b!1564586 (= res!1069694 (= (seekEntryOrOpen!0 (select (arr!50391 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!637 mask!947) (Found!13520 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1564586 (=> (not res!1069694) (not e!872067))))

(declare-fun b!1564587 () Bool)

(assert (=> b!1564587 (= e!872067 call!71854)))

(declare-fun d!163041 () Bool)

(declare-fun res!1069693 () Bool)

(assert (=> d!163041 (=> res!1069693 e!872068)))

(assert (=> d!163041 (= res!1069693 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!50942 _keys!637)))))

(assert (=> d!163041 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947) e!872068)))

(assert (= (and d!163041 (not res!1069693)) b!1564585))

(assert (= (and b!1564585 c!144184) b!1564586))

(assert (= (and b!1564585 (not c!144184)) b!1564584))

(assert (= (and b!1564586 res!1069694) b!1564587))

(assert (= (or b!1564587 b!1564584) bm!71851))

(declare-fun m!1439741 () Bool)

(assert (=> b!1564585 m!1439741))

(assert (=> b!1564585 m!1439741))

(declare-fun m!1439743 () Bool)

(assert (=> b!1564585 m!1439743))

(declare-fun m!1439745 () Bool)

(assert (=> bm!71851 m!1439745))

(assert (=> b!1564586 m!1439741))

(declare-fun m!1439747 () Bool)

(assert (=> b!1564586 m!1439747))

(declare-fun m!1439749 () Bool)

(assert (=> b!1564586 m!1439749))

(assert (=> b!1564586 m!1439741))

(declare-fun m!1439751 () Bool)

(assert (=> b!1564586 m!1439751))

(assert (=> bm!71847 d!163041))

(declare-fun d!163043 () Bool)

(assert (=> d!163043 (= (isDefined!576 (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000)) false)))

(assert (=> b!1564530 d!163043))

(declare-fun d!163045 () Bool)

(assert (=> d!163045 (= (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000) None!865)))

(assert (=> b!1564530 d!163045))

(declare-fun d!163047 () Bool)

(assert (=> d!163047 (isDefined!576 (getValueByKey!792 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672017 () Unit!51928)

(assert (=> d!163047 (= lt!672017 (choose!2079 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!872069 () Bool)

(assert (=> d!163047 e!872069))

(declare-fun res!1069695 () Bool)

(assert (=> d!163047 (=> (not res!1069695) (not e!872069))))

(assert (=> d!163047 (= res!1069695 (isStrictlySorted!982 (toList!11416 (ListLongMap!22802 Nil!36735))))))

(assert (=> d!163047 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!527 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000) lt!672017)))

(declare-fun b!1564588 () Bool)

(assert (=> b!1564588 (= e!872069 (containsKey!846 (toList!11416 (ListLongMap!22802 Nil!36735)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163047 res!1069695) b!1564588))

(assert (=> d!163047 m!1439699))

(assert (=> d!163047 m!1439699))

(assert (=> d!163047 m!1439701))

(declare-fun m!1439753 () Bool)

(assert (=> d!163047 m!1439753))

(assert (=> d!163047 m!1439721))

(assert (=> b!1564588 m!1439695))

(assert (=> b!1564528 d!163047))

(assert (=> b!1564528 d!163043))

(assert (=> b!1564528 d!163045))

(declare-fun d!163049 () Bool)

(assert (=> d!163049 (= (validKeyInArray!0 (select (arr!50391 _keys!637) #b00000000000000000000000000000000)) (and (not (= (select (arr!50391 _keys!637) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50391 _keys!637) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1564519 d!163049))

(assert (=> b!1564547 d!163049))

(assert (=> b!1564545 d!163049))

(declare-fun d!163051 () Bool)

(declare-fun lt!672020 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!812 (List!36739) (InoxSet (_ BitVec 64)))

(assert (=> d!163051 (= lt!672020 (select (content!812 Nil!36736) (select (arr!50391 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun e!872074 () Bool)

(assert (=> d!163051 (= lt!672020 e!872074)))

(declare-fun res!1069700 () Bool)

(assert (=> d!163051 (=> (not res!1069700) (not e!872074))))

(assert (=> d!163051 (= res!1069700 ((_ is Cons!36735) Nil!36736))))

(assert (=> d!163051 (= (contains!10339 Nil!36736 (select (arr!50391 _keys!637) #b00000000000000000000000000000000)) lt!672020)))

(declare-fun b!1564593 () Bool)

(declare-fun e!872075 () Bool)

(assert (=> b!1564593 (= e!872074 e!872075)))

(declare-fun res!1069701 () Bool)

(assert (=> b!1564593 (=> res!1069701 e!872075)))

(assert (=> b!1564593 (= res!1069701 (= (h!38182 Nil!36736) (select (arr!50391 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1564594 () Bool)

(assert (=> b!1564594 (= e!872075 (contains!10339 (t!51593 Nil!36736) (select (arr!50391 _keys!637) #b00000000000000000000000000000000)))))

(assert (= (and d!163051 res!1069700) b!1564593))

(assert (= (and b!1564593 (not res!1069701)) b!1564594))

(declare-fun m!1439755 () Bool)

(assert (=> d!163051 m!1439755))

(assert (=> d!163051 m!1439683))

(declare-fun m!1439757 () Bool)

(assert (=> d!163051 m!1439757))

(assert (=> b!1564594 m!1439683))

(declare-fun m!1439759 () Bool)

(assert (=> b!1564594 m!1439759))

(assert (=> b!1564546 d!163051))

(declare-fun b!1564595 () Bool)

(declare-fun e!872076 () Bool)

(declare-fun call!71855 () Bool)

(assert (=> b!1564595 (= e!872076 call!71855)))

(declare-fun bm!71852 () Bool)

(declare-fun c!144185 () Bool)

(assert (=> bm!71852 (= call!71855 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!144185 (Cons!36735 (select (arr!50391 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!144174 (Cons!36735 (select (arr!50391 _keys!637) #b00000000000000000000000000000000) Nil!36736) Nil!36736)) (ite c!144174 (Cons!36735 (select (arr!50391 _keys!637) #b00000000000000000000000000000000) Nil!36736) Nil!36736))))))

(declare-fun d!163053 () Bool)

(declare-fun res!1069704 () Bool)

(declare-fun e!872077 () Bool)

(assert (=> d!163053 (=> res!1069704 e!872077)))

(assert (=> d!163053 (= res!1069704 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!50942 _keys!637)))))

(assert (=> d!163053 (= (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144174 (Cons!36735 (select (arr!50391 _keys!637) #b00000000000000000000000000000000) Nil!36736) Nil!36736)) e!872077)))

(declare-fun b!1564596 () Bool)

(declare-fun e!872078 () Bool)

(assert (=> b!1564596 (= e!872077 e!872078)))

(declare-fun res!1069703 () Bool)

(assert (=> b!1564596 (=> (not res!1069703) (not e!872078))))

(declare-fun e!872079 () Bool)

(assert (=> b!1564596 (= res!1069703 (not e!872079))))

(declare-fun res!1069702 () Bool)

(assert (=> b!1564596 (=> (not res!1069702) (not e!872079))))

(assert (=> b!1564596 (= res!1069702 (validKeyInArray!0 (select (arr!50391 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1564597 () Bool)

(assert (=> b!1564597 (= e!872079 (contains!10339 (ite c!144174 (Cons!36735 (select (arr!50391 _keys!637) #b00000000000000000000000000000000) Nil!36736) Nil!36736) (select (arr!50391 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1564598 () Bool)

(assert (=> b!1564598 (= e!872078 e!872076)))

(assert (=> b!1564598 (= c!144185 (validKeyInArray!0 (select (arr!50391 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1564599 () Bool)

(assert (=> b!1564599 (= e!872076 call!71855)))

(assert (= (and d!163053 (not res!1069704)) b!1564596))

(assert (= (and b!1564596 res!1069702) b!1564597))

(assert (= (and b!1564596 res!1069703) b!1564598))

(assert (= (and b!1564598 c!144185) b!1564595))

(assert (= (and b!1564598 (not c!144185)) b!1564599))

(assert (= (or b!1564595 b!1564599) bm!71852))

(assert (=> bm!71852 m!1439741))

(declare-fun m!1439761 () Bool)

(assert (=> bm!71852 m!1439761))

(assert (=> b!1564596 m!1439741))

(assert (=> b!1564596 m!1439741))

(assert (=> b!1564596 m!1439743))

(assert (=> b!1564597 m!1439741))

(assert (=> b!1564597 m!1439741))

(declare-fun m!1439763 () Bool)

(assert (=> b!1564597 m!1439763))

(assert (=> b!1564598 m!1439741))

(assert (=> b!1564598 m!1439741))

(assert (=> b!1564598 m!1439743))

(assert (=> bm!71850 d!163053))

(declare-fun condMapEmpty!59701 () Bool)

(declare-fun mapDefault!59701 () ValueCell!18408)

(assert (=> mapNonEmpty!59700 (= condMapEmpty!59701 (= mapRest!59700 ((as const (Array (_ BitVec 32) ValueCell!18408)) mapDefault!59701)))))

(declare-fun e!872080 () Bool)

(declare-fun mapRes!59701 () Bool)

(assert (=> mapNonEmpty!59700 (= tp!113626 (and e!872080 mapRes!59701))))

(declare-fun b!1564601 () Bool)

(assert (=> b!1564601 (= e!872080 tp_is_empty!38877)))

(declare-fun mapIsEmpty!59701 () Bool)

(assert (=> mapIsEmpty!59701 mapRes!59701))

(declare-fun b!1564600 () Bool)

(declare-fun e!872081 () Bool)

(assert (=> b!1564600 (= e!872081 tp_is_empty!38877)))

(declare-fun mapNonEmpty!59701 () Bool)

(declare-fun tp!113627 () Bool)

(assert (=> mapNonEmpty!59701 (= mapRes!59701 (and tp!113627 e!872081))))

(declare-fun mapValue!59701 () ValueCell!18408)

(declare-fun mapKey!59701 () (_ BitVec 32))

(declare-fun mapRest!59701 () (Array (_ BitVec 32) ValueCell!18408))

(assert (=> mapNonEmpty!59701 (= mapRest!59700 (store mapRest!59701 mapKey!59701 mapValue!59701))))

(assert (= (and mapNonEmpty!59700 condMapEmpty!59701) mapIsEmpty!59701))

(assert (= (and mapNonEmpty!59700 (not condMapEmpty!59701)) mapNonEmpty!59701))

(assert (= (and mapNonEmpty!59701 ((_ is ValueCellFull!18408) mapValue!59701)) b!1564600))

(assert (= (and mapNonEmpty!59700 ((_ is ValueCellFull!18408) mapDefault!59701)) b!1564601))

(declare-fun m!1439765 () Bool)

(assert (=> mapNonEmpty!59701 m!1439765))

(check-sat (not b!1564586) (not mapNonEmpty!59701) (not d!163035) (not bm!71851) (not b!1564588) (not b!1564583) (not d!163047) (not b!1564585) (not b!1564598) (not d!163051) (not b!1564596) (not b!1564565) (not b!1564594) (not b!1564597) (not b!1564559) (not d!163039) (not d!163031) tp_is_empty!38877 (not bm!71852))
(check-sat)

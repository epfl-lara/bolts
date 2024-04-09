; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4406 () Bool)

(assert start!4406)

(declare-fun b_free!1197 () Bool)

(declare-fun b_next!1197 () Bool)

(assert (=> start!4406 (= b_free!1197 (not b_next!1197))))

(declare-fun tp!5025 () Bool)

(declare-fun b_and!2019 () Bool)

(assert (=> start!4406 (= tp!5025 b_and!2019)))

(declare-fun b!34051 () Bool)

(declare-fun e!21617 () Bool)

(declare-fun tp_is_empty!1551 () Bool)

(assert (=> b!34051 (= e!21617 tp_is_empty!1551)))

(declare-fun mapNonEmpty!1870 () Bool)

(declare-fun mapRes!1870 () Bool)

(declare-fun tp!5026 () Bool)

(assert (=> mapNonEmpty!1870 (= mapRes!1870 (and tp!5026 e!21617))))

(declare-datatypes ((V!1893 0))(
  ( (V!1894 (val!802 Int)) )
))
(declare-datatypes ((ValueCell!576 0))(
  ( (ValueCellFull!576 (v!1896 V!1893)) (EmptyCell!576) )
))
(declare-datatypes ((array!2311 0))(
  ( (array!2312 (arr!1104 (Array (_ BitVec 32) ValueCell!576)) (size!1205 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2311)

(declare-fun mapKey!1870 () (_ BitVec 32))

(declare-fun mapRest!1870 () (Array (_ BitVec 32) ValueCell!576))

(declare-fun mapValue!1870 () ValueCell!576)

(assert (=> mapNonEmpty!1870 (= (arr!1104 _values!1501) (store mapRest!1870 mapKey!1870 mapValue!1870))))

(declare-fun res!20644 () Bool)

(declare-fun e!21620 () Bool)

(assert (=> start!4406 (=> (not res!20644) (not e!21620))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4406 (= res!20644 (validMask!0 mask!2294))))

(assert (=> start!4406 e!21620))

(assert (=> start!4406 true))

(assert (=> start!4406 tp!5025))

(declare-fun e!21621 () Bool)

(declare-fun array_inv!733 (array!2311) Bool)

(assert (=> start!4406 (and (array_inv!733 _values!1501) e!21621)))

(declare-datatypes ((array!2313 0))(
  ( (array!2314 (arr!1105 (Array (_ BitVec 32) (_ BitVec 64))) (size!1206 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2313)

(declare-fun array_inv!734 (array!2313) Bool)

(assert (=> start!4406 (array_inv!734 _keys!1833)))

(assert (=> start!4406 tp_is_empty!1551))

(declare-fun b!34052 () Bool)

(declare-fun e!21619 () Bool)

(assert (=> b!34052 (= e!21620 e!21619)))

(declare-fun res!20647 () Bool)

(assert (=> b!34052 (=> (not res!20647) (not e!21619))))

(declare-datatypes ((tuple2!1294 0))(
  ( (tuple2!1295 (_1!657 (_ BitVec 64)) (_2!657 V!1893)) )
))
(declare-datatypes ((List!897 0))(
  ( (Nil!894) (Cons!893 (h!1460 tuple2!1294) (t!3602 List!897)) )
))
(declare-datatypes ((ListLongMap!875 0))(
  ( (ListLongMap!876 (toList!453 List!897)) )
))
(declare-fun lt!12578 () ListLongMap!875)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!395 (ListLongMap!875 (_ BitVec 64)) Bool)

(assert (=> b!34052 (= res!20647 (not (contains!395 lt!12578 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1893)

(declare-fun minValue!1443 () V!1893)

(declare-fun getCurrentListMap!274 (array!2313 array!2311 (_ BitVec 32) (_ BitVec 32) V!1893 V!1893 (_ BitVec 32) Int) ListLongMap!875)

(assert (=> b!34052 (= lt!12578 (getCurrentListMap!274 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!34053 () Bool)

(declare-fun res!20649 () Bool)

(assert (=> b!34053 (=> (not res!20649) (not e!21620))))

(declare-datatypes ((List!898 0))(
  ( (Nil!895) (Cons!894 (h!1461 (_ BitVec 64)) (t!3603 List!898)) )
))
(declare-fun arrayNoDuplicates!0 (array!2313 (_ BitVec 32) List!898) Bool)

(assert (=> b!34053 (= res!20649 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!895))))

(declare-fun mapIsEmpty!1870 () Bool)

(assert (=> mapIsEmpty!1870 mapRes!1870))

(declare-fun b!34054 () Bool)

(declare-fun e!21618 () Bool)

(assert (=> b!34054 (= e!21618 tp_is_empty!1551)))

(declare-fun b!34055 () Bool)

(assert (=> b!34055 (= e!21619 (not false))))

(declare-fun lt!12580 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2313 (_ BitVec 32)) Bool)

(assert (=> b!34055 (arrayForallSeekEntryOrOpenFound!0 lt!12580 _keys!1833 mask!2294)))

(declare-datatypes ((Unit!766 0))(
  ( (Unit!767) )
))
(declare-fun lt!12579 () Unit!766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!2313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!766)

(assert (=> b!34055 (= lt!12579 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!12580))))

(declare-datatypes ((SeekEntryResult!144 0))(
  ( (MissingZero!144 (index!2698 (_ BitVec 32))) (Found!144 (index!2699 (_ BitVec 32))) (Intermediate!144 (undefined!956 Bool) (index!2700 (_ BitVec 32)) (x!6880 (_ BitVec 32))) (Undefined!144) (MissingVacant!144 (index!2701 (_ BitVec 32))) )
))
(declare-fun lt!12581 () SeekEntryResult!144)

(get-info :version)

(assert (=> b!34055 (and ((_ is Found!144) lt!12581) (= (index!2699 lt!12581) lt!12580))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2313 (_ BitVec 32)) SeekEntryResult!144)

(assert (=> b!34055 (= lt!12581 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun lt!12577 () Unit!766)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2313 (_ BitVec 32)) Unit!766)

(assert (=> b!34055 (= lt!12577 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12580 _keys!1833 mask!2294))))

(assert (=> b!34055 (contains!395 lt!12578 (select (arr!1105 _keys!1833) lt!12580))))

(declare-fun lt!12582 () Unit!766)

(declare-fun lemmaValidKeyInArrayIsInListMap!66 (array!2313 array!2311 (_ BitVec 32) (_ BitVec 32) V!1893 V!1893 (_ BitVec 32) Int) Unit!766)

(assert (=> b!34055 (= lt!12582 (lemmaValidKeyInArrayIsInListMap!66 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12580 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2313 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!34055 (= lt!12580 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!34056 () Bool)

(declare-fun res!20645 () Bool)

(assert (=> b!34056 (=> (not res!20645) (not e!21620))))

(assert (=> b!34056 (= res!20645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34057 () Bool)

(declare-fun res!20650 () Bool)

(assert (=> b!34057 (=> (not res!20650) (not e!21620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34057 (= res!20650 (validKeyInArray!0 k0!1304))))

(declare-fun b!34058 () Bool)

(assert (=> b!34058 (= e!21621 (and e!21618 mapRes!1870))))

(declare-fun condMapEmpty!1870 () Bool)

(declare-fun mapDefault!1870 () ValueCell!576)

(assert (=> b!34058 (= condMapEmpty!1870 (= (arr!1104 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!576)) mapDefault!1870)))))

(declare-fun b!34059 () Bool)

(declare-fun res!20648 () Bool)

(assert (=> b!34059 (=> (not res!20648) (not e!21619))))

(declare-fun arrayContainsKey!0 (array!2313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34059 (= res!20648 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!34060 () Bool)

(declare-fun res!20646 () Bool)

(assert (=> b!34060 (=> (not res!20646) (not e!21620))))

(assert (=> b!34060 (= res!20646 (and (= (size!1205 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1206 _keys!1833) (size!1205 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(assert (= (and start!4406 res!20644) b!34060))

(assert (= (and b!34060 res!20646) b!34056))

(assert (= (and b!34056 res!20645) b!34053))

(assert (= (and b!34053 res!20649) b!34057))

(assert (= (and b!34057 res!20650) b!34052))

(assert (= (and b!34052 res!20647) b!34059))

(assert (= (and b!34059 res!20648) b!34055))

(assert (= (and b!34058 condMapEmpty!1870) mapIsEmpty!1870))

(assert (= (and b!34058 (not condMapEmpty!1870)) mapNonEmpty!1870))

(assert (= (and mapNonEmpty!1870 ((_ is ValueCellFull!576) mapValue!1870)) b!34051))

(assert (= (and b!34058 ((_ is ValueCellFull!576) mapDefault!1870)) b!34054))

(assert (= start!4406 b!34058))

(declare-fun m!27411 () Bool)

(assert (=> b!34055 m!27411))

(declare-fun m!27413 () Bool)

(assert (=> b!34055 m!27413))

(declare-fun m!27415 () Bool)

(assert (=> b!34055 m!27415))

(declare-fun m!27417 () Bool)

(assert (=> b!34055 m!27417))

(declare-fun m!27419 () Bool)

(assert (=> b!34055 m!27419))

(declare-fun m!27421 () Bool)

(assert (=> b!34055 m!27421))

(declare-fun m!27423 () Bool)

(assert (=> b!34055 m!27423))

(assert (=> b!34055 m!27413))

(declare-fun m!27425 () Bool)

(assert (=> b!34055 m!27425))

(declare-fun m!27427 () Bool)

(assert (=> b!34057 m!27427))

(declare-fun m!27429 () Bool)

(assert (=> b!34053 m!27429))

(declare-fun m!27431 () Bool)

(assert (=> b!34052 m!27431))

(declare-fun m!27433 () Bool)

(assert (=> b!34052 m!27433))

(declare-fun m!27435 () Bool)

(assert (=> b!34059 m!27435))

(declare-fun m!27437 () Bool)

(assert (=> start!4406 m!27437))

(declare-fun m!27439 () Bool)

(assert (=> start!4406 m!27439))

(declare-fun m!27441 () Bool)

(assert (=> start!4406 m!27441))

(declare-fun m!27443 () Bool)

(assert (=> mapNonEmpty!1870 m!27443))

(declare-fun m!27445 () Bool)

(assert (=> b!34056 m!27445))

(check-sat (not b!34053) tp_is_empty!1551 (not b!34057) b_and!2019 (not b!34055) (not start!4406) (not b!34052) (not b!34059) (not b!34056) (not mapNonEmpty!1870) (not b_next!1197))
(check-sat b_and!2019 (not b_next!1197))
(get-model)

(declare-fun d!5229 () Bool)

(declare-fun res!20676 () Bool)

(declare-fun e!21645 () Bool)

(assert (=> d!5229 (=> res!20676 e!21645)))

(assert (=> d!5229 (= res!20676 (= (select (arr!1105 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5229 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!21645)))

(declare-fun b!34095 () Bool)

(declare-fun e!21646 () Bool)

(assert (=> b!34095 (= e!21645 e!21646)))

(declare-fun res!20677 () Bool)

(assert (=> b!34095 (=> (not res!20677) (not e!21646))))

(assert (=> b!34095 (= res!20677 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1206 _keys!1833)))))

(declare-fun b!34096 () Bool)

(assert (=> b!34096 (= e!21646 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5229 (not res!20676)) b!34095))

(assert (= (and b!34095 res!20677) b!34096))

(declare-fun m!27483 () Bool)

(assert (=> d!5229 m!27483))

(declare-fun m!27485 () Bool)

(assert (=> b!34096 m!27485))

(assert (=> b!34059 d!5229))

(declare-fun d!5231 () Bool)

(declare-fun lt!12603 () (_ BitVec 32))

(assert (=> d!5231 (and (or (bvslt lt!12603 #b00000000000000000000000000000000) (bvsge lt!12603 (size!1206 _keys!1833)) (and (bvsge lt!12603 #b00000000000000000000000000000000) (bvslt lt!12603 (size!1206 _keys!1833)))) (bvsge lt!12603 #b00000000000000000000000000000000) (bvslt lt!12603 (size!1206 _keys!1833)) (= (select (arr!1105 _keys!1833) lt!12603) k0!1304))))

(declare-fun e!21649 () (_ BitVec 32))

(assert (=> d!5231 (= lt!12603 e!21649)))

(declare-fun c!3934 () Bool)

(assert (=> d!5231 (= c!3934 (= (select (arr!1105 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5231 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1206 _keys!1833)) (bvslt (size!1206 _keys!1833) #b01111111111111111111111111111111))))

(assert (=> d!5231 (= (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) lt!12603)))

(declare-fun b!34101 () Bool)

(assert (=> b!34101 (= e!21649 #b00000000000000000000000000000000)))

(declare-fun b!34102 () Bool)

(assert (=> b!34102 (= e!21649 (arrayScanForKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5231 c!3934) b!34101))

(assert (= (and d!5231 (not c!3934)) b!34102))

(declare-fun m!27487 () Bool)

(assert (=> d!5231 m!27487))

(assert (=> d!5231 m!27483))

(declare-fun m!27489 () Bool)

(assert (=> b!34102 m!27489))

(assert (=> b!34055 d!5231))

(declare-fun d!5233 () Bool)

(declare-fun lt!12609 () SeekEntryResult!144)

(assert (=> d!5233 (and ((_ is Found!144) lt!12609) (= (index!2699 lt!12609) lt!12580))))

(assert (=> d!5233 (= lt!12609 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun lt!12608 () Unit!766)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!2313 (_ BitVec 32)) Unit!766)

(assert (=> d!5233 (= lt!12608 (choose!0 k0!1304 lt!12580 _keys!1833 mask!2294))))

(assert (=> d!5233 (validMask!0 mask!2294)))

(assert (=> d!5233 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12580 _keys!1833 mask!2294) lt!12608)))

(declare-fun bs!1316 () Bool)

(assert (= bs!1316 d!5233))

(assert (=> bs!1316 m!27417))

(declare-fun m!27491 () Bool)

(assert (=> bs!1316 m!27491))

(assert (=> bs!1316 m!27437))

(assert (=> b!34055 d!5233))

(declare-fun d!5235 () Bool)

(declare-fun e!21654 () Bool)

(assert (=> d!5235 e!21654))

(declare-fun res!20680 () Bool)

(assert (=> d!5235 (=> res!20680 e!21654)))

(declare-fun lt!12620 () Bool)

(assert (=> d!5235 (= res!20680 (not lt!12620))))

(declare-fun lt!12621 () Bool)

(assert (=> d!5235 (= lt!12620 lt!12621)))

(declare-fun lt!12619 () Unit!766)

(declare-fun e!21655 () Unit!766)

(assert (=> d!5235 (= lt!12619 e!21655)))

(declare-fun c!3937 () Bool)

(assert (=> d!5235 (= c!3937 lt!12621)))

(declare-fun containsKey!34 (List!897 (_ BitVec 64)) Bool)

(assert (=> d!5235 (= lt!12621 (containsKey!34 (toList!453 lt!12578) (select (arr!1105 _keys!1833) lt!12580)))))

(assert (=> d!5235 (= (contains!395 lt!12578 (select (arr!1105 _keys!1833) lt!12580)) lt!12620)))

(declare-fun b!34109 () Bool)

(declare-fun lt!12618 () Unit!766)

(assert (=> b!34109 (= e!21655 lt!12618)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!31 (List!897 (_ BitVec 64)) Unit!766)

(assert (=> b!34109 (= lt!12618 (lemmaContainsKeyImpliesGetValueByKeyDefined!31 (toList!453 lt!12578) (select (arr!1105 _keys!1833) lt!12580)))))

(declare-datatypes ((Option!76 0))(
  ( (Some!75 (v!1898 V!1893)) (None!74) )
))
(declare-fun isDefined!32 (Option!76) Bool)

(declare-fun getValueByKey!70 (List!897 (_ BitVec 64)) Option!76)

(assert (=> b!34109 (isDefined!32 (getValueByKey!70 (toList!453 lt!12578) (select (arr!1105 _keys!1833) lt!12580)))))

(declare-fun b!34110 () Bool)

(declare-fun Unit!770 () Unit!766)

(assert (=> b!34110 (= e!21655 Unit!770)))

(declare-fun b!34111 () Bool)

(assert (=> b!34111 (= e!21654 (isDefined!32 (getValueByKey!70 (toList!453 lt!12578) (select (arr!1105 _keys!1833) lt!12580))))))

(assert (= (and d!5235 c!3937) b!34109))

(assert (= (and d!5235 (not c!3937)) b!34110))

(assert (= (and d!5235 (not res!20680)) b!34111))

(assert (=> d!5235 m!27413))

(declare-fun m!27493 () Bool)

(assert (=> d!5235 m!27493))

(assert (=> b!34109 m!27413))

(declare-fun m!27495 () Bool)

(assert (=> b!34109 m!27495))

(assert (=> b!34109 m!27413))

(declare-fun m!27497 () Bool)

(assert (=> b!34109 m!27497))

(assert (=> b!34109 m!27497))

(declare-fun m!27499 () Bool)

(assert (=> b!34109 m!27499))

(assert (=> b!34111 m!27413))

(assert (=> b!34111 m!27497))

(assert (=> b!34111 m!27497))

(assert (=> b!34111 m!27499))

(assert (=> b!34055 d!5235))

(declare-fun d!5237 () Bool)

(declare-fun e!21658 () Bool)

(assert (=> d!5237 e!21658))

(declare-fun res!20683 () Bool)

(assert (=> d!5237 (=> (not res!20683) (not e!21658))))

(assert (=> d!5237 (= res!20683 (and (bvsge lt!12580 #b00000000000000000000000000000000) (bvslt lt!12580 (size!1206 _keys!1833))))))

(declare-fun lt!12624 () Unit!766)

(declare-fun choose!222 (array!2313 array!2311 (_ BitVec 32) (_ BitVec 32) V!1893 V!1893 (_ BitVec 32) Int) Unit!766)

(assert (=> d!5237 (= lt!12624 (choose!222 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12580 defaultEntry!1504))))

(assert (=> d!5237 (validMask!0 mask!2294)))

(assert (=> d!5237 (= (lemmaValidKeyInArrayIsInListMap!66 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12580 defaultEntry!1504) lt!12624)))

(declare-fun b!34114 () Bool)

(assert (=> b!34114 (= e!21658 (contains!395 (getCurrentListMap!274 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) (select (arr!1105 _keys!1833) lt!12580)))))

(assert (= (and d!5237 res!20683) b!34114))

(declare-fun m!27501 () Bool)

(assert (=> d!5237 m!27501))

(assert (=> d!5237 m!27437))

(assert (=> b!34114 m!27433))

(assert (=> b!34114 m!27413))

(assert (=> b!34114 m!27433))

(assert (=> b!34114 m!27413))

(declare-fun m!27503 () Bool)

(assert (=> b!34114 m!27503))

(assert (=> b!34055 d!5237))

(declare-fun d!5239 () Bool)

(assert (=> d!5239 (arrayForallSeekEntryOrOpenFound!0 lt!12580 _keys!1833 mask!2294)))

(declare-fun lt!12627 () Unit!766)

(declare-fun choose!38 (array!2313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!766)

(assert (=> d!5239 (= lt!12627 (choose!38 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!12580))))

(assert (=> d!5239 (validMask!0 mask!2294)))

(assert (=> d!5239 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!12580) lt!12627)))

(declare-fun bs!1317 () Bool)

(assert (= bs!1317 d!5239))

(assert (=> bs!1317 m!27415))

(declare-fun m!27505 () Bool)

(assert (=> bs!1317 m!27505))

(assert (=> bs!1317 m!27437))

(assert (=> b!34055 d!5239))

(declare-fun b!34128 () Bool)

(declare-fun e!21667 () SeekEntryResult!144)

(declare-fun lt!12636 () SeekEntryResult!144)

(assert (=> b!34128 (= e!21667 (ite ((_ is MissingVacant!144) lt!12636) (MissingZero!144 (index!2701 lt!12636)) lt!12636))))

(declare-fun lt!12639 () SeekEntryResult!144)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2313 (_ BitVec 32)) SeekEntryResult!144)

(assert (=> b!34128 (= lt!12636 (seekKeyOrZeroReturnVacant!0 (x!6880 lt!12639) (index!2700 lt!12639) (index!2700 lt!12639) k0!1304 _keys!1833 mask!2294))))

(declare-fun b!34129 () Bool)

(declare-fun e!21666 () SeekEntryResult!144)

(declare-fun e!21665 () SeekEntryResult!144)

(assert (=> b!34129 (= e!21666 e!21665)))

(declare-fun lt!12637 () (_ BitVec 64))

(assert (=> b!34129 (= lt!12637 (select (arr!1105 _keys!1833) (index!2700 lt!12639)))))

(declare-fun c!3944 () Bool)

(assert (=> b!34129 (= c!3944 (= lt!12637 k0!1304))))

(declare-fun b!34130 () Bool)

(assert (=> b!34130 (= e!21665 (Found!144 (index!2700 lt!12639)))))

(declare-fun b!34131 () Bool)

(assert (=> b!34131 (= e!21666 Undefined!144)))

(declare-fun b!34132 () Bool)

(assert (=> b!34132 (= e!21667 (MissingZero!144 (index!2700 lt!12639)))))

(declare-fun b!34127 () Bool)

(declare-fun c!3946 () Bool)

(assert (=> b!34127 (= c!3946 (= lt!12637 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!34127 (= e!21665 e!21667)))

(declare-fun d!5241 () Bool)

(declare-fun lt!12638 () SeekEntryResult!144)

(assert (=> d!5241 (and (or ((_ is MissingVacant!144) lt!12638) (not ((_ is Found!144) lt!12638)) (and (bvsge (index!2699 lt!12638) #b00000000000000000000000000000000) (bvslt (index!2699 lt!12638) (size!1206 _keys!1833)))) (not ((_ is MissingVacant!144) lt!12638)) (or (not ((_ is Found!144) lt!12638)) (= (select (arr!1105 _keys!1833) (index!2699 lt!12638)) k0!1304)))))

(assert (=> d!5241 (= lt!12638 e!21666)))

(declare-fun c!3945 () Bool)

(assert (=> d!5241 (= c!3945 (and ((_ is Intermediate!144) lt!12639) (undefined!956 lt!12639)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2313 (_ BitVec 32)) SeekEntryResult!144)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5241 (= lt!12639 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1304 mask!2294) k0!1304 _keys!1833 mask!2294))))

(assert (=> d!5241 (validMask!0 mask!2294)))

(assert (=> d!5241 (= (seekEntry!0 k0!1304 _keys!1833 mask!2294) lt!12638)))

(assert (= (and d!5241 c!3945) b!34131))

(assert (= (and d!5241 (not c!3945)) b!34129))

(assert (= (and b!34129 c!3944) b!34130))

(assert (= (and b!34129 (not c!3944)) b!34127))

(assert (= (and b!34127 c!3946) b!34132))

(assert (= (and b!34127 (not c!3946)) b!34128))

(declare-fun m!27507 () Bool)

(assert (=> b!34128 m!27507))

(declare-fun m!27509 () Bool)

(assert (=> b!34129 m!27509))

(declare-fun m!27511 () Bool)

(assert (=> d!5241 m!27511))

(declare-fun m!27513 () Bool)

(assert (=> d!5241 m!27513))

(assert (=> d!5241 m!27513))

(declare-fun m!27515 () Bool)

(assert (=> d!5241 m!27515))

(assert (=> d!5241 m!27437))

(assert (=> b!34055 d!5241))

(declare-fun b!34141 () Bool)

(declare-fun e!21674 () Bool)

(declare-fun call!2726 () Bool)

(assert (=> b!34141 (= e!21674 call!2726)))

(declare-fun b!34142 () Bool)

(declare-fun e!21675 () Bool)

(declare-fun e!21676 () Bool)

(assert (=> b!34142 (= e!21675 e!21676)))

(declare-fun c!3949 () Bool)

(assert (=> b!34142 (= c!3949 (validKeyInArray!0 (select (arr!1105 _keys!1833) lt!12580)))))

(declare-fun bm!2723 () Bool)

(assert (=> bm!2723 (= call!2726 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!12580 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!34144 () Bool)

(assert (=> b!34144 (= e!21676 call!2726)))

(declare-fun b!34143 () Bool)

(assert (=> b!34143 (= e!21676 e!21674)))

(declare-fun lt!12647 () (_ BitVec 64))

(assert (=> b!34143 (= lt!12647 (select (arr!1105 _keys!1833) lt!12580))))

(declare-fun lt!12648 () Unit!766)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2313 (_ BitVec 64) (_ BitVec 32)) Unit!766)

(assert (=> b!34143 (= lt!12648 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!12647 lt!12580))))

(assert (=> b!34143 (arrayContainsKey!0 _keys!1833 lt!12647 #b00000000000000000000000000000000)))

(declare-fun lt!12646 () Unit!766)

(assert (=> b!34143 (= lt!12646 lt!12648)))

(declare-fun res!20688 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2313 (_ BitVec 32)) SeekEntryResult!144)

(assert (=> b!34143 (= res!20688 (= (seekEntryOrOpen!0 (select (arr!1105 _keys!1833) lt!12580) _keys!1833 mask!2294) (Found!144 lt!12580)))))

(assert (=> b!34143 (=> (not res!20688) (not e!21674))))

(declare-fun d!5243 () Bool)

(declare-fun res!20689 () Bool)

(assert (=> d!5243 (=> res!20689 e!21675)))

(assert (=> d!5243 (= res!20689 (bvsge lt!12580 (size!1206 _keys!1833)))))

(assert (=> d!5243 (= (arrayForallSeekEntryOrOpenFound!0 lt!12580 _keys!1833 mask!2294) e!21675)))

(assert (= (and d!5243 (not res!20689)) b!34142))

(assert (= (and b!34142 c!3949) b!34143))

(assert (= (and b!34142 (not c!3949)) b!34144))

(assert (= (and b!34143 res!20688) b!34141))

(assert (= (or b!34141 b!34144) bm!2723))

(assert (=> b!34142 m!27413))

(assert (=> b!34142 m!27413))

(declare-fun m!27517 () Bool)

(assert (=> b!34142 m!27517))

(declare-fun m!27519 () Bool)

(assert (=> bm!2723 m!27519))

(assert (=> b!34143 m!27413))

(declare-fun m!27521 () Bool)

(assert (=> b!34143 m!27521))

(declare-fun m!27523 () Bool)

(assert (=> b!34143 m!27523))

(assert (=> b!34143 m!27413))

(declare-fun m!27525 () Bool)

(assert (=> b!34143 m!27525))

(assert (=> b!34055 d!5243))

(declare-fun d!5245 () Bool)

(assert (=> d!5245 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!34057 d!5245))

(declare-fun d!5247 () Bool)

(declare-fun e!21677 () Bool)

(assert (=> d!5247 e!21677))

(declare-fun res!20690 () Bool)

(assert (=> d!5247 (=> res!20690 e!21677)))

(declare-fun lt!12651 () Bool)

(assert (=> d!5247 (= res!20690 (not lt!12651))))

(declare-fun lt!12652 () Bool)

(assert (=> d!5247 (= lt!12651 lt!12652)))

(declare-fun lt!12650 () Unit!766)

(declare-fun e!21678 () Unit!766)

(assert (=> d!5247 (= lt!12650 e!21678)))

(declare-fun c!3950 () Bool)

(assert (=> d!5247 (= c!3950 lt!12652)))

(assert (=> d!5247 (= lt!12652 (containsKey!34 (toList!453 lt!12578) k0!1304))))

(assert (=> d!5247 (= (contains!395 lt!12578 k0!1304) lt!12651)))

(declare-fun b!34145 () Bool)

(declare-fun lt!12649 () Unit!766)

(assert (=> b!34145 (= e!21678 lt!12649)))

(assert (=> b!34145 (= lt!12649 (lemmaContainsKeyImpliesGetValueByKeyDefined!31 (toList!453 lt!12578) k0!1304))))

(assert (=> b!34145 (isDefined!32 (getValueByKey!70 (toList!453 lt!12578) k0!1304))))

(declare-fun b!34146 () Bool)

(declare-fun Unit!771 () Unit!766)

(assert (=> b!34146 (= e!21678 Unit!771)))

(declare-fun b!34147 () Bool)

(assert (=> b!34147 (= e!21677 (isDefined!32 (getValueByKey!70 (toList!453 lt!12578) k0!1304)))))

(assert (= (and d!5247 c!3950) b!34145))

(assert (= (and d!5247 (not c!3950)) b!34146))

(assert (= (and d!5247 (not res!20690)) b!34147))

(declare-fun m!27527 () Bool)

(assert (=> d!5247 m!27527))

(declare-fun m!27529 () Bool)

(assert (=> b!34145 m!27529))

(declare-fun m!27531 () Bool)

(assert (=> b!34145 m!27531))

(assert (=> b!34145 m!27531))

(declare-fun m!27533 () Bool)

(assert (=> b!34145 m!27533))

(assert (=> b!34147 m!27531))

(assert (=> b!34147 m!27531))

(assert (=> b!34147 m!27533))

(assert (=> b!34052 d!5247))

(declare-fun b!34190 () Bool)

(declare-fun e!21706 () Bool)

(declare-fun lt!12699 () ListLongMap!875)

(declare-fun apply!38 (ListLongMap!875 (_ BitVec 64)) V!1893)

(assert (=> b!34190 (= e!21706 (= (apply!38 lt!12699 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun bm!2738 () Bool)

(declare-fun call!2747 () Bool)

(assert (=> bm!2738 (= call!2747 (contains!395 lt!12699 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!34191 () Bool)

(declare-fun e!21707 () Unit!766)

(declare-fun Unit!772 () Unit!766)

(assert (=> b!34191 (= e!21707 Unit!772)))

(declare-fun b!34192 () Bool)

(declare-fun e!21708 () Bool)

(declare-fun e!21713 () Bool)

(assert (=> b!34192 (= e!21708 e!21713)))

(declare-fun c!3967 () Bool)

(assert (=> b!34192 (= c!3967 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!34193 () Bool)

(declare-fun lt!12700 () Unit!766)

(assert (=> b!34193 (= e!21707 lt!12700)))

(declare-fun lt!12715 () ListLongMap!875)

(declare-fun getCurrentListMapNoExtraKeys!25 (array!2313 array!2311 (_ BitVec 32) (_ BitVec 32) V!1893 V!1893 (_ BitVec 32) Int) ListLongMap!875)

(assert (=> b!34193 (= lt!12715 (getCurrentListMapNoExtraKeys!25 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12697 () (_ BitVec 64))

(assert (=> b!34193 (= lt!12697 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12717 () (_ BitVec 64))

(assert (=> b!34193 (= lt!12717 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12710 () Unit!766)

(declare-fun addStillContains!23 (ListLongMap!875 (_ BitVec 64) V!1893 (_ BitVec 64)) Unit!766)

(assert (=> b!34193 (= lt!12710 (addStillContains!23 lt!12715 lt!12697 zeroValue!1443 lt!12717))))

(declare-fun +!56 (ListLongMap!875 tuple2!1294) ListLongMap!875)

(assert (=> b!34193 (contains!395 (+!56 lt!12715 (tuple2!1295 lt!12697 zeroValue!1443)) lt!12717)))

(declare-fun lt!12703 () Unit!766)

(assert (=> b!34193 (= lt!12703 lt!12710)))

(declare-fun lt!12708 () ListLongMap!875)

(assert (=> b!34193 (= lt!12708 (getCurrentListMapNoExtraKeys!25 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12711 () (_ BitVec 64))

(assert (=> b!34193 (= lt!12711 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12718 () (_ BitVec 64))

(assert (=> b!34193 (= lt!12718 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12702 () Unit!766)

(declare-fun addApplyDifferent!23 (ListLongMap!875 (_ BitVec 64) V!1893 (_ BitVec 64)) Unit!766)

(assert (=> b!34193 (= lt!12702 (addApplyDifferent!23 lt!12708 lt!12711 minValue!1443 lt!12718))))

(assert (=> b!34193 (= (apply!38 (+!56 lt!12708 (tuple2!1295 lt!12711 minValue!1443)) lt!12718) (apply!38 lt!12708 lt!12718))))

(declare-fun lt!12712 () Unit!766)

(assert (=> b!34193 (= lt!12712 lt!12702)))

(declare-fun lt!12698 () ListLongMap!875)

(assert (=> b!34193 (= lt!12698 (getCurrentListMapNoExtraKeys!25 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12705 () (_ BitVec 64))

(assert (=> b!34193 (= lt!12705 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12716 () (_ BitVec 64))

(assert (=> b!34193 (= lt!12716 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12713 () Unit!766)

(assert (=> b!34193 (= lt!12713 (addApplyDifferent!23 lt!12698 lt!12705 zeroValue!1443 lt!12716))))

(assert (=> b!34193 (= (apply!38 (+!56 lt!12698 (tuple2!1295 lt!12705 zeroValue!1443)) lt!12716) (apply!38 lt!12698 lt!12716))))

(declare-fun lt!12714 () Unit!766)

(assert (=> b!34193 (= lt!12714 lt!12713)))

(declare-fun lt!12701 () ListLongMap!875)

(assert (=> b!34193 (= lt!12701 (getCurrentListMapNoExtraKeys!25 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12709 () (_ BitVec 64))

(assert (=> b!34193 (= lt!12709 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12707 () (_ BitVec 64))

(assert (=> b!34193 (= lt!12707 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!34193 (= lt!12700 (addApplyDifferent!23 lt!12701 lt!12709 minValue!1443 lt!12707))))

(assert (=> b!34193 (= (apply!38 (+!56 lt!12701 (tuple2!1295 lt!12709 minValue!1443)) lt!12707) (apply!38 lt!12701 lt!12707))))

(declare-fun d!5249 () Bool)

(assert (=> d!5249 e!21708))

(declare-fun res!20717 () Bool)

(assert (=> d!5249 (=> (not res!20717) (not e!21708))))

(assert (=> d!5249 (= res!20717 (or (bvsge #b00000000000000000000000000000000 (size!1206 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1206 _keys!1833)))))))

(declare-fun lt!12706 () ListLongMap!875)

(assert (=> d!5249 (= lt!12699 lt!12706)))

(declare-fun lt!12704 () Unit!766)

(assert (=> d!5249 (= lt!12704 e!21707)))

(declare-fun c!3966 () Bool)

(declare-fun e!21705 () Bool)

(assert (=> d!5249 (= c!3966 e!21705)))

(declare-fun res!20714 () Bool)

(assert (=> d!5249 (=> (not res!20714) (not e!21705))))

(assert (=> d!5249 (= res!20714 (bvslt #b00000000000000000000000000000000 (size!1206 _keys!1833)))))

(declare-fun e!21712 () ListLongMap!875)

(assert (=> d!5249 (= lt!12706 e!21712)))

(declare-fun c!3965 () Bool)

(assert (=> d!5249 (= c!3965 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5249 (validMask!0 mask!2294)))

(assert (=> d!5249 (= (getCurrentListMap!274 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!12699)))

(declare-fun b!34194 () Bool)

(declare-fun e!21710 () Bool)

(declare-fun get!579 (ValueCell!576 V!1893) V!1893)

(declare-fun dynLambda!155 (Int (_ BitVec 64)) V!1893)

(assert (=> b!34194 (= e!21710 (= (apply!38 lt!12699 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000)) (get!579 (select (arr!1104 _values!1501) #b00000000000000000000000000000000) (dynLambda!155 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!34194 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1205 _values!1501)))))

(assert (=> b!34194 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1206 _keys!1833)))))

(declare-fun b!34195 () Bool)

(declare-fun e!21714 () ListLongMap!875)

(declare-fun call!2744 () ListLongMap!875)

(assert (=> b!34195 (= e!21714 call!2744)))

(declare-fun call!2746 () ListLongMap!875)

(declare-fun bm!2739 () Bool)

(declare-fun c!3964 () Bool)

(declare-fun call!2743 () ListLongMap!875)

(declare-fun call!2741 () ListLongMap!875)

(assert (=> bm!2739 (= call!2741 (+!56 (ite c!3965 call!2746 (ite c!3964 call!2743 call!2744)) (ite (or c!3965 c!3964) (tuple2!1295 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1295 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun bm!2740 () Bool)

(declare-fun call!2745 () Bool)

(assert (=> bm!2740 (= call!2745 (contains!395 lt!12699 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!34196 () Bool)

(declare-fun e!21717 () Bool)

(assert (=> b!34196 (= e!21717 (validKeyInArray!0 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!34197 () Bool)

(declare-fun c!3968 () Bool)

(assert (=> b!34197 (= c!3968 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!21709 () ListLongMap!875)

(assert (=> b!34197 (= e!21709 e!21714)))

(declare-fun b!34198 () Bool)

(declare-fun res!20715 () Bool)

(assert (=> b!34198 (=> (not res!20715) (not e!21708))))

(declare-fun e!21716 () Bool)

(assert (=> b!34198 (= res!20715 e!21716)))

(declare-fun res!20709 () Bool)

(assert (=> b!34198 (=> res!20709 e!21716)))

(assert (=> b!34198 (= res!20709 (not e!21717))))

(declare-fun res!20712 () Bool)

(assert (=> b!34198 (=> (not res!20712) (not e!21717))))

(assert (=> b!34198 (= res!20712 (bvslt #b00000000000000000000000000000000 (size!1206 _keys!1833)))))

(declare-fun bm!2741 () Bool)

(assert (=> bm!2741 (= call!2744 call!2743)))

(declare-fun b!34199 () Bool)

(assert (=> b!34199 (= e!21716 e!21710)))

(declare-fun res!20713 () Bool)

(assert (=> b!34199 (=> (not res!20713) (not e!21710))))

(assert (=> b!34199 (= res!20713 (contains!395 lt!12699 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!34199 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1206 _keys!1833)))))

(declare-fun b!34200 () Bool)

(assert (=> b!34200 (= e!21712 e!21709)))

(assert (=> b!34200 (= c!3964 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!2742 () Bool)

(assert (=> bm!2742 (= call!2746 (getCurrentListMapNoExtraKeys!25 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!34201 () Bool)

(declare-fun e!21711 () Bool)

(assert (=> b!34201 (= e!21711 (= (apply!38 lt!12699 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!34202 () Bool)

(assert (=> b!34202 (= e!21712 (+!56 call!2741 (tuple2!1295 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!34203 () Bool)

(declare-fun call!2742 () ListLongMap!875)

(assert (=> b!34203 (= e!21714 call!2742)))

(declare-fun b!34204 () Bool)

(assert (=> b!34204 (= e!21705 (validKeyInArray!0 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!34205 () Bool)

(assert (=> b!34205 (= e!21709 call!2742)))

(declare-fun b!34206 () Bool)

(declare-fun e!21715 () Bool)

(assert (=> b!34206 (= e!21715 e!21711)))

(declare-fun res!20716 () Bool)

(assert (=> b!34206 (= res!20716 call!2745)))

(assert (=> b!34206 (=> (not res!20716) (not e!21711))))

(declare-fun b!34207 () Bool)

(assert (=> b!34207 (= e!21715 (not call!2745))))

(declare-fun bm!2743 () Bool)

(assert (=> bm!2743 (= call!2742 call!2741)))

(declare-fun bm!2744 () Bool)

(assert (=> bm!2744 (= call!2743 call!2746)))

(declare-fun b!34208 () Bool)

(assert (=> b!34208 (= e!21713 (not call!2747))))

(declare-fun b!34209 () Bool)

(declare-fun res!20711 () Bool)

(assert (=> b!34209 (=> (not res!20711) (not e!21708))))

(assert (=> b!34209 (= res!20711 e!21715)))

(declare-fun c!3963 () Bool)

(assert (=> b!34209 (= c!3963 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!34210 () Bool)

(assert (=> b!34210 (= e!21713 e!21706)))

(declare-fun res!20710 () Bool)

(assert (=> b!34210 (= res!20710 call!2747)))

(assert (=> b!34210 (=> (not res!20710) (not e!21706))))

(assert (= (and d!5249 c!3965) b!34202))

(assert (= (and d!5249 (not c!3965)) b!34200))

(assert (= (and b!34200 c!3964) b!34205))

(assert (= (and b!34200 (not c!3964)) b!34197))

(assert (= (and b!34197 c!3968) b!34203))

(assert (= (and b!34197 (not c!3968)) b!34195))

(assert (= (or b!34203 b!34195) bm!2741))

(assert (= (or b!34205 bm!2741) bm!2744))

(assert (= (or b!34205 b!34203) bm!2743))

(assert (= (or b!34202 bm!2744) bm!2742))

(assert (= (or b!34202 bm!2743) bm!2739))

(assert (= (and d!5249 res!20714) b!34204))

(assert (= (and d!5249 c!3966) b!34193))

(assert (= (and d!5249 (not c!3966)) b!34191))

(assert (= (and d!5249 res!20717) b!34198))

(assert (= (and b!34198 res!20712) b!34196))

(assert (= (and b!34198 (not res!20709)) b!34199))

(assert (= (and b!34199 res!20713) b!34194))

(assert (= (and b!34198 res!20715) b!34209))

(assert (= (and b!34209 c!3963) b!34206))

(assert (= (and b!34209 (not c!3963)) b!34207))

(assert (= (and b!34206 res!20716) b!34201))

(assert (= (or b!34206 b!34207) bm!2740))

(assert (= (and b!34209 res!20711) b!34192))

(assert (= (and b!34192 c!3967) b!34210))

(assert (= (and b!34192 (not c!3967)) b!34208))

(assert (= (and b!34210 res!20710) b!34190))

(assert (= (or b!34210 b!34208) bm!2738))

(declare-fun b_lambda!1719 () Bool)

(assert (=> (not b_lambda!1719) (not b!34194)))

(declare-fun t!3607 () Bool)

(declare-fun tb!693 () Bool)

(assert (=> (and start!4406 (= defaultEntry!1504 defaultEntry!1504) t!3607) tb!693))

(declare-fun result!1185 () Bool)

(assert (=> tb!693 (= result!1185 tp_is_empty!1551)))

(assert (=> b!34194 t!3607))

(declare-fun b_and!2023 () Bool)

(assert (= b_and!2019 (and (=> t!3607 result!1185) b_and!2023)))

(declare-fun m!27535 () Bool)

(assert (=> bm!2742 m!27535))

(declare-fun m!27537 () Bool)

(assert (=> b!34193 m!27537))

(declare-fun m!27539 () Bool)

(assert (=> b!34193 m!27539))

(declare-fun m!27541 () Bool)

(assert (=> b!34193 m!27541))

(declare-fun m!27543 () Bool)

(assert (=> b!34193 m!27543))

(assert (=> b!34193 m!27541))

(declare-fun m!27545 () Bool)

(assert (=> b!34193 m!27545))

(declare-fun m!27547 () Bool)

(assert (=> b!34193 m!27547))

(assert (=> b!34193 m!27535))

(declare-fun m!27549 () Bool)

(assert (=> b!34193 m!27549))

(declare-fun m!27551 () Bool)

(assert (=> b!34193 m!27551))

(assert (=> b!34193 m!27549))

(declare-fun m!27553 () Bool)

(assert (=> b!34193 m!27553))

(declare-fun m!27555 () Bool)

(assert (=> b!34193 m!27555))

(assert (=> b!34193 m!27483))

(declare-fun m!27557 () Bool)

(assert (=> b!34193 m!27557))

(declare-fun m!27559 () Bool)

(assert (=> b!34193 m!27559))

(assert (=> b!34193 m!27553))

(declare-fun m!27561 () Bool)

(assert (=> b!34193 m!27561))

(declare-fun m!27563 () Bool)

(assert (=> b!34193 m!27563))

(assert (=> b!34193 m!27559))

(declare-fun m!27565 () Bool)

(assert (=> b!34193 m!27565))

(declare-fun m!27567 () Bool)

(assert (=> b!34201 m!27567))

(declare-fun m!27569 () Bool)

(assert (=> b!34190 m!27569))

(declare-fun m!27571 () Bool)

(assert (=> bm!2738 m!27571))

(assert (=> d!5249 m!27437))

(assert (=> b!34199 m!27483))

(assert (=> b!34199 m!27483))

(declare-fun m!27573 () Bool)

(assert (=> b!34199 m!27573))

(assert (=> b!34204 m!27483))

(assert (=> b!34204 m!27483))

(declare-fun m!27575 () Bool)

(assert (=> b!34204 m!27575))

(declare-fun m!27577 () Bool)

(assert (=> b!34202 m!27577))

(assert (=> b!34194 m!27483))

(assert (=> b!34194 m!27483))

(declare-fun m!27579 () Bool)

(assert (=> b!34194 m!27579))

(declare-fun m!27581 () Bool)

(assert (=> b!34194 m!27581))

(declare-fun m!27583 () Bool)

(assert (=> b!34194 m!27583))

(declare-fun m!27585 () Bool)

(assert (=> b!34194 m!27585))

(assert (=> b!34194 m!27583))

(assert (=> b!34194 m!27581))

(assert (=> b!34196 m!27483))

(assert (=> b!34196 m!27483))

(assert (=> b!34196 m!27575))

(declare-fun m!27587 () Bool)

(assert (=> bm!2739 m!27587))

(declare-fun m!27589 () Bool)

(assert (=> bm!2740 m!27589))

(assert (=> b!34052 d!5249))

(declare-fun b!34213 () Bool)

(declare-fun e!21718 () Bool)

(declare-fun call!2748 () Bool)

(assert (=> b!34213 (= e!21718 call!2748)))

(declare-fun b!34214 () Bool)

(declare-fun e!21719 () Bool)

(declare-fun e!21720 () Bool)

(assert (=> b!34214 (= e!21719 e!21720)))

(declare-fun c!3969 () Bool)

(assert (=> b!34214 (= c!3969 (validKeyInArray!0 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2745 () Bool)

(assert (=> bm!2745 (= call!2748 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!34216 () Bool)

(assert (=> b!34216 (= e!21720 call!2748)))

(declare-fun b!34215 () Bool)

(assert (=> b!34215 (= e!21720 e!21718)))

(declare-fun lt!12720 () (_ BitVec 64))

(assert (=> b!34215 (= lt!12720 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12721 () Unit!766)

(assert (=> b!34215 (= lt!12721 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!12720 #b00000000000000000000000000000000))))

(assert (=> b!34215 (arrayContainsKey!0 _keys!1833 lt!12720 #b00000000000000000000000000000000)))

(declare-fun lt!12719 () Unit!766)

(assert (=> b!34215 (= lt!12719 lt!12721)))

(declare-fun res!20718 () Bool)

(assert (=> b!34215 (= res!20718 (= (seekEntryOrOpen!0 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!144 #b00000000000000000000000000000000)))))

(assert (=> b!34215 (=> (not res!20718) (not e!21718))))

(declare-fun d!5251 () Bool)

(declare-fun res!20719 () Bool)

(assert (=> d!5251 (=> res!20719 e!21719)))

(assert (=> d!5251 (= res!20719 (bvsge #b00000000000000000000000000000000 (size!1206 _keys!1833)))))

(assert (=> d!5251 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!21719)))

(assert (= (and d!5251 (not res!20719)) b!34214))

(assert (= (and b!34214 c!3969) b!34215))

(assert (= (and b!34214 (not c!3969)) b!34216))

(assert (= (and b!34215 res!20718) b!34213))

(assert (= (or b!34213 b!34216) bm!2745))

(assert (=> b!34214 m!27483))

(assert (=> b!34214 m!27483))

(assert (=> b!34214 m!27575))

(declare-fun m!27591 () Bool)

(assert (=> bm!2745 m!27591))

(assert (=> b!34215 m!27483))

(declare-fun m!27593 () Bool)

(assert (=> b!34215 m!27593))

(declare-fun m!27595 () Bool)

(assert (=> b!34215 m!27595))

(assert (=> b!34215 m!27483))

(declare-fun m!27597 () Bool)

(assert (=> b!34215 m!27597))

(assert (=> b!34056 d!5251))

(declare-fun d!5253 () Bool)

(assert (=> d!5253 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4406 d!5253))

(declare-fun d!5255 () Bool)

(assert (=> d!5255 (= (array_inv!733 _values!1501) (bvsge (size!1205 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4406 d!5255))

(declare-fun d!5257 () Bool)

(assert (=> d!5257 (= (array_inv!734 _keys!1833) (bvsge (size!1206 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4406 d!5257))

(declare-fun bm!2748 () Bool)

(declare-fun call!2751 () Bool)

(declare-fun c!3972 () Bool)

(assert (=> bm!2748 (= call!2751 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3972 (Cons!894 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000) Nil!895) Nil!895)))))

(declare-fun b!34227 () Bool)

(declare-fun e!21731 () Bool)

(assert (=> b!34227 (= e!21731 call!2751)))

(declare-fun d!5259 () Bool)

(declare-fun res!20728 () Bool)

(declare-fun e!21730 () Bool)

(assert (=> d!5259 (=> res!20728 e!21730)))

(assert (=> d!5259 (= res!20728 (bvsge #b00000000000000000000000000000000 (size!1206 _keys!1833)))))

(assert (=> d!5259 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!895) e!21730)))

(declare-fun b!34228 () Bool)

(assert (=> b!34228 (= e!21731 call!2751)))

(declare-fun b!34229 () Bool)

(declare-fun e!21729 () Bool)

(assert (=> b!34229 (= e!21729 e!21731)))

(assert (=> b!34229 (= c!3972 (validKeyInArray!0 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!34230 () Bool)

(declare-fun e!21732 () Bool)

(declare-fun contains!397 (List!898 (_ BitVec 64)) Bool)

(assert (=> b!34230 (= e!21732 (contains!397 Nil!895 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!34231 () Bool)

(assert (=> b!34231 (= e!21730 e!21729)))

(declare-fun res!20727 () Bool)

(assert (=> b!34231 (=> (not res!20727) (not e!21729))))

(assert (=> b!34231 (= res!20727 (not e!21732))))

(declare-fun res!20726 () Bool)

(assert (=> b!34231 (=> (not res!20726) (not e!21732))))

(assert (=> b!34231 (= res!20726 (validKeyInArray!0 (select (arr!1105 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5259 (not res!20728)) b!34231))

(assert (= (and b!34231 res!20726) b!34230))

(assert (= (and b!34231 res!20727) b!34229))

(assert (= (and b!34229 c!3972) b!34227))

(assert (= (and b!34229 (not c!3972)) b!34228))

(assert (= (or b!34227 b!34228) bm!2748))

(assert (=> bm!2748 m!27483))

(declare-fun m!27599 () Bool)

(assert (=> bm!2748 m!27599))

(assert (=> b!34229 m!27483))

(assert (=> b!34229 m!27483))

(assert (=> b!34229 m!27575))

(assert (=> b!34230 m!27483))

(assert (=> b!34230 m!27483))

(declare-fun m!27601 () Bool)

(assert (=> b!34230 m!27601))

(assert (=> b!34231 m!27483))

(assert (=> b!34231 m!27483))

(assert (=> b!34231 m!27575))

(assert (=> b!34053 d!5259))

(declare-fun condMapEmpty!1876 () Bool)

(declare-fun mapDefault!1876 () ValueCell!576)

(assert (=> mapNonEmpty!1870 (= condMapEmpty!1876 (= mapRest!1870 ((as const (Array (_ BitVec 32) ValueCell!576)) mapDefault!1876)))))

(declare-fun e!21737 () Bool)

(declare-fun mapRes!1876 () Bool)

(assert (=> mapNonEmpty!1870 (= tp!5026 (and e!21737 mapRes!1876))))

(declare-fun mapIsEmpty!1876 () Bool)

(assert (=> mapIsEmpty!1876 mapRes!1876))

(declare-fun mapNonEmpty!1876 () Bool)

(declare-fun tp!5035 () Bool)

(declare-fun e!21738 () Bool)

(assert (=> mapNonEmpty!1876 (= mapRes!1876 (and tp!5035 e!21738))))

(declare-fun mapValue!1876 () ValueCell!576)

(declare-fun mapKey!1876 () (_ BitVec 32))

(declare-fun mapRest!1876 () (Array (_ BitVec 32) ValueCell!576))

(assert (=> mapNonEmpty!1876 (= mapRest!1870 (store mapRest!1876 mapKey!1876 mapValue!1876))))

(declare-fun b!34239 () Bool)

(assert (=> b!34239 (= e!21737 tp_is_empty!1551)))

(declare-fun b!34238 () Bool)

(assert (=> b!34238 (= e!21738 tp_is_empty!1551)))

(assert (= (and mapNonEmpty!1870 condMapEmpty!1876) mapIsEmpty!1876))

(assert (= (and mapNonEmpty!1870 (not condMapEmpty!1876)) mapNonEmpty!1876))

(assert (= (and mapNonEmpty!1876 ((_ is ValueCellFull!576) mapValue!1876)) b!34238))

(assert (= (and mapNonEmpty!1870 ((_ is ValueCellFull!576) mapDefault!1876)) b!34239))

(declare-fun m!27603 () Bool)

(assert (=> mapNonEmpty!1876 m!27603))

(declare-fun b_lambda!1721 () Bool)

(assert (= b_lambda!1719 (or (and start!4406 b_free!1197) b_lambda!1721)))

(check-sat (not d!5235) (not d!5237) (not b!34201) (not d!5247) (not b!34194) (not b!34204) (not b_lambda!1721) (not b!34230) (not b_next!1197) (not b!34229) (not b!34128) (not b!34231) (not bm!2739) (not b!34111) (not b!34214) (not b!34190) (not b!34215) (not b!34145) (not b!34114) tp_is_empty!1551 (not b!34196) (not b!34147) (not b!34143) (not d!5239) (not b!34102) (not b!34142) (not mapNonEmpty!1876) (not bm!2742) b_and!2023 (not bm!2740) (not bm!2723) (not bm!2745) (not b!34096) (not b!34199) (not b!34109) (not d!5249) (not b!34193) (not b!34202) (not d!5233) (not bm!2748) (not d!5241) (not bm!2738))
(check-sat b_and!2023 (not b_next!1197))

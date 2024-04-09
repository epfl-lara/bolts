; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11658 () Bool)

(assert start!11658)

(declare-fun b!97336 () Bool)

(declare-fun b_free!2417 () Bool)

(declare-fun b_next!2417 () Bool)

(assert (=> b!97336 (= b_free!2417 (not b_next!2417))))

(declare-fun tp!9535 () Bool)

(declare-fun b_and!5969 () Bool)

(assert (=> b!97336 (= tp!9535 b_and!5969)))

(declare-fun b!97337 () Bool)

(declare-fun b_free!2419 () Bool)

(declare-fun b_next!2419 () Bool)

(assert (=> b!97337 (= b_free!2419 (not b_next!2419))))

(declare-fun tp!9536 () Bool)

(declare-fun b_and!5971 () Bool)

(assert (=> b!97337 (= tp!9536 b_and!5971)))

(declare-fun res!49058 () Bool)

(declare-fun e!63467 () Bool)

(assert (=> start!11658 (=> (not res!49058) (not e!63467))))

(declare-datatypes ((V!3147 0))(
  ( (V!3148 (val!1357 Int)) )
))
(declare-datatypes ((array!4228 0))(
  ( (array!4229 (arr!2008 (Array (_ BitVec 32) (_ BitVec 64))) (size!2258 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!969 0))(
  ( (ValueCellFull!969 (v!2794 V!3147)) (EmptyCell!969) )
))
(declare-datatypes ((array!4230 0))(
  ( (array!4231 (arr!2009 (Array (_ BitVec 32) ValueCell!969)) (size!2259 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!846 0))(
  ( (LongMapFixedSize!847 (defaultEntry!2478 Int) (mask!6573 (_ BitVec 32)) (extraKeys!2299 (_ BitVec 32)) (zeroValue!2361 V!3147) (minValue!2361 V!3147) (_size!472 (_ BitVec 32)) (_keys!4168 array!4228) (_values!2461 array!4230) (_vacant!472 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!650 0))(
  ( (Cell!651 (v!2795 LongMapFixedSize!846)) )
))
(declare-datatypes ((LongMap!650 0))(
  ( (LongMap!651 (underlying!336 Cell!650)) )
))
(declare-fun thiss!992 () LongMap!650)

(declare-fun valid!382 (LongMap!650) Bool)

(assert (=> start!11658 (= res!49058 (valid!382 thiss!992))))

(assert (=> start!11658 e!63467))

(declare-fun e!63466 () Bool)

(assert (=> start!11658 e!63466))

(assert (=> start!11658 true))

(declare-fun e!63461 () Bool)

(assert (=> start!11658 e!63461))

(declare-fun b!97323 () Bool)

(declare-fun e!63453 () Bool)

(declare-fun e!63452 () Bool)

(assert (=> b!97323 (= e!63453 e!63452)))

(declare-fun res!49059 () Bool)

(assert (=> b!97323 (=> (not res!49059) (not e!63452))))

(declare-datatypes ((tuple2!2342 0))(
  ( (tuple2!2343 (_1!1181 Bool) (_2!1181 LongMapFixedSize!846)) )
))
(declare-fun lt!48742 () tuple2!2342)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!97323 (= res!49059 (and (_1!1181 lt!48742) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2955 0))(
  ( (Unit!2956) )
))
(declare-fun lt!48736 () Unit!2955)

(declare-fun e!63462 () Unit!2955)

(assert (=> b!97323 (= lt!48736 e!63462)))

(declare-fun c!16489 () Bool)

(declare-datatypes ((tuple2!2344 0))(
  ( (tuple2!2345 (_1!1182 (_ BitVec 64)) (_2!1182 V!3147)) )
))
(declare-datatypes ((List!1606 0))(
  ( (Nil!1603) (Cons!1602 (h!2196 tuple2!2344) (t!5556 List!1606)) )
))
(declare-datatypes ((ListLongMap!1545 0))(
  ( (ListLongMap!1546 (toList!788 List!1606)) )
))
(declare-fun lt!48739 () ListLongMap!1545)

(declare-fun contains!803 (ListLongMap!1545 (_ BitVec 64)) Bool)

(assert (=> b!97323 (= c!16489 (contains!803 lt!48739 (select (arr!2008 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!846)

(declare-fun update!144 (LongMapFixedSize!846 (_ BitVec 64) V!3147) tuple2!2342)

(declare-fun get!1292 (ValueCell!969 V!3147) V!3147)

(declare-fun dynLambda!376 (Int (_ BitVec 64)) V!3147)

(assert (=> b!97323 (= lt!48742 (update!144 newMap!16 (select (arr!2008 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) from!355) (get!1292 (select (arr!2009 (_values!2461 (v!2795 (underlying!336 thiss!992)))) from!355) (dynLambda!376 (defaultEntry!2478 (v!2795 (underlying!336 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!97324 () Bool)

(declare-fun res!49055 () Bool)

(assert (=> b!97324 (=> (not res!49055) (not e!63467))))

(assert (=> b!97324 (= res!49055 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6573 newMap!16)) (_size!472 (v!2795 (underlying!336 thiss!992)))))))

(declare-fun b!97325 () Bool)

(declare-fun e!63459 () Bool)

(declare-fun tp_is_empty!2625 () Bool)

(assert (=> b!97325 (= e!63459 tp_is_empty!2625)))

(declare-fun mapIsEmpty!3727 () Bool)

(declare-fun mapRes!3728 () Bool)

(assert (=> mapIsEmpty!3727 mapRes!3728))

(declare-fun b!97326 () Bool)

(declare-fun e!63460 () Bool)

(assert (=> b!97326 (= e!63460 tp_is_empty!2625)))

(declare-fun b!97327 () Bool)

(assert (=> b!97327 (= e!63467 e!63453)))

(declare-fun res!49056 () Bool)

(assert (=> b!97327 (=> (not res!49056) (not e!63453))))

(declare-fun lt!48741 () ListLongMap!1545)

(assert (=> b!97327 (= res!49056 (and (= lt!48741 lt!48739) (not (= (select (arr!2008 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2008 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1250 (LongMapFixedSize!846) ListLongMap!1545)

(assert (=> b!97327 (= lt!48739 (map!1250 newMap!16))))

(declare-fun getCurrentListMap!469 (array!4228 array!4230 (_ BitVec 32) (_ BitVec 32) V!3147 V!3147 (_ BitVec 32) Int) ListLongMap!1545)

(assert (=> b!97327 (= lt!48741 (getCurrentListMap!469 (_keys!4168 (v!2795 (underlying!336 thiss!992))) (_values!2461 (v!2795 (underlying!336 thiss!992))) (mask!6573 (v!2795 (underlying!336 thiss!992))) (extraKeys!2299 (v!2795 (underlying!336 thiss!992))) (zeroValue!2361 (v!2795 (underlying!336 thiss!992))) (minValue!2361 (v!2795 (underlying!336 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2478 (v!2795 (underlying!336 thiss!992)))))))

(declare-fun b!97328 () Bool)

(declare-fun e!63464 () Bool)

(declare-fun e!63457 () Bool)

(assert (=> b!97328 (= e!63464 e!63457)))

(declare-fun b!97329 () Bool)

(declare-fun e!63463 () Bool)

(declare-fun mapRes!3727 () Bool)

(assert (=> b!97329 (= e!63463 (and e!63460 mapRes!3727))))

(declare-fun condMapEmpty!3727 () Bool)

(declare-fun mapDefault!3727 () ValueCell!969)

(assert (=> b!97329 (= condMapEmpty!3727 (= (arr!2009 (_values!2461 (v!2795 (underlying!336 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!969)) mapDefault!3727)))))

(declare-fun b!97330 () Bool)

(assert (=> b!97330 (= e!63466 e!63464)))

(declare-fun b!97331 () Bool)

(assert (=> b!97331 (= e!63452 (and (= (size!2259 (_values!2461 (v!2795 (underlying!336 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6573 (v!2795 (underlying!336 thiss!992))))) (= (size!2258 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) (size!2259 (_values!2461 (v!2795 (underlying!336 thiss!992))))) (bvslt (mask!6573 (v!2795 (underlying!336 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!97332 () Bool)

(declare-fun res!49057 () Bool)

(assert (=> b!97332 (=> (not res!49057) (not e!63467))))

(declare-fun valid!383 (LongMapFixedSize!846) Bool)

(assert (=> b!97332 (= res!49057 (valid!383 newMap!16))))

(declare-fun b!97333 () Bool)

(declare-fun res!49060 () Bool)

(assert (=> b!97333 (=> (not res!49060) (not e!63467))))

(assert (=> b!97333 (= res!49060 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2258 (_keys!4168 (v!2795 (underlying!336 thiss!992)))))))))

(declare-fun mapIsEmpty!3728 () Bool)

(assert (=> mapIsEmpty!3728 mapRes!3727))

(declare-fun mapNonEmpty!3727 () Bool)

(declare-fun tp!9534 () Bool)

(declare-fun e!63458 () Bool)

(assert (=> mapNonEmpty!3727 (= mapRes!3727 (and tp!9534 e!63458))))

(declare-fun mapValue!3728 () ValueCell!969)

(declare-fun mapRest!3727 () (Array (_ BitVec 32) ValueCell!969))

(declare-fun mapKey!3728 () (_ BitVec 32))

(assert (=> mapNonEmpty!3727 (= (arr!2009 (_values!2461 (v!2795 (underlying!336 thiss!992)))) (store mapRest!3727 mapKey!3728 mapValue!3728))))

(declare-fun b!97334 () Bool)

(declare-fun Unit!2957 () Unit!2955)

(assert (=> b!97334 (= e!63462 Unit!2957)))

(declare-fun b!97335 () Bool)

(declare-fun e!63454 () Bool)

(assert (=> b!97335 (= e!63454 (and e!63459 mapRes!3728))))

(declare-fun condMapEmpty!3728 () Bool)

(declare-fun mapDefault!3728 () ValueCell!969)

(assert (=> b!97335 (= condMapEmpty!3728 (= (arr!2009 (_values!2461 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!969)) mapDefault!3728)))))

(declare-fun mapNonEmpty!3728 () Bool)

(declare-fun tp!9533 () Bool)

(declare-fun e!63456 () Bool)

(assert (=> mapNonEmpty!3728 (= mapRes!3728 (and tp!9533 e!63456))))

(declare-fun mapKey!3727 () (_ BitVec 32))

(declare-fun mapValue!3727 () ValueCell!969)

(declare-fun mapRest!3728 () (Array (_ BitVec 32) ValueCell!969))

(assert (=> mapNonEmpty!3728 (= (arr!2009 (_values!2461 newMap!16)) (store mapRest!3728 mapKey!3727 mapValue!3727))))

(declare-fun array_inv!1205 (array!4228) Bool)

(declare-fun array_inv!1206 (array!4230) Bool)

(assert (=> b!97336 (= e!63457 (and tp!9535 tp_is_empty!2625 (array_inv!1205 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) (array_inv!1206 (_values!2461 (v!2795 (underlying!336 thiss!992)))) e!63463))))

(assert (=> b!97337 (= e!63461 (and tp!9536 tp_is_empty!2625 (array_inv!1205 (_keys!4168 newMap!16)) (array_inv!1206 (_values!2461 newMap!16)) e!63454))))

(declare-fun b!97338 () Bool)

(assert (=> b!97338 (= e!63458 tp_is_empty!2625)))

(declare-fun b!97339 () Bool)

(declare-fun Unit!2958 () Unit!2955)

(assert (=> b!97339 (= e!63462 Unit!2958)))

(declare-fun lt!48740 () Unit!2955)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!96 (array!4228 array!4230 (_ BitVec 32) (_ BitVec 32) V!3147 V!3147 (_ BitVec 64) (_ BitVec 32) Int) Unit!2955)

(assert (=> b!97339 (= lt!48740 (lemmaListMapContainsThenArrayContainsFrom!96 (_keys!4168 (v!2795 (underlying!336 thiss!992))) (_values!2461 (v!2795 (underlying!336 thiss!992))) (mask!6573 (v!2795 (underlying!336 thiss!992))) (extraKeys!2299 (v!2795 (underlying!336 thiss!992))) (zeroValue!2361 (v!2795 (underlying!336 thiss!992))) (minValue!2361 (v!2795 (underlying!336 thiss!992))) (select (arr!2008 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2478 (v!2795 (underlying!336 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!97339 (arrayContainsKey!0 (_keys!4168 (v!2795 (underlying!336 thiss!992))) (select (arr!2008 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!48738 () Unit!2955)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4228 (_ BitVec 32) (_ BitVec 32)) Unit!2955)

(assert (=> b!97339 (= lt!48738 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4168 (v!2795 (underlying!336 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1607 0))(
  ( (Nil!1604) (Cons!1603 (h!2197 (_ BitVec 64)) (t!5557 List!1607)) )
))
(declare-fun arrayNoDuplicates!0 (array!4228 (_ BitVec 32) List!1607) Bool)

(assert (=> b!97339 (arrayNoDuplicates!0 (_keys!4168 (v!2795 (underlying!336 thiss!992))) from!355 Nil!1604)))

(declare-fun lt!48737 () Unit!2955)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4228 (_ BitVec 32) (_ BitVec 64) List!1607) Unit!2955)

(assert (=> b!97339 (= lt!48737 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4168 (v!2795 (underlying!336 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2008 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) from!355) (Cons!1603 (select (arr!2008 (_keys!4168 (v!2795 (underlying!336 thiss!992)))) from!355) Nil!1604)))))

(assert (=> b!97339 false))

(declare-fun b!97340 () Bool)

(assert (=> b!97340 (= e!63456 tp_is_empty!2625)))

(declare-fun b!97341 () Bool)

(declare-fun res!49061 () Bool)

(assert (=> b!97341 (=> (not res!49061) (not e!63452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!97341 (= res!49061 (validMask!0 (mask!6573 (v!2795 (underlying!336 thiss!992)))))))

(assert (= (and start!11658 res!49058) b!97333))

(assert (= (and b!97333 res!49060) b!97332))

(assert (= (and b!97332 res!49057) b!97324))

(assert (= (and b!97324 res!49055) b!97327))

(assert (= (and b!97327 res!49056) b!97323))

(assert (= (and b!97323 c!16489) b!97339))

(assert (= (and b!97323 (not c!16489)) b!97334))

(assert (= (and b!97323 res!49059) b!97341))

(assert (= (and b!97341 res!49061) b!97331))

(assert (= (and b!97329 condMapEmpty!3727) mapIsEmpty!3728))

(assert (= (and b!97329 (not condMapEmpty!3727)) mapNonEmpty!3727))

(get-info :version)

(assert (= (and mapNonEmpty!3727 ((_ is ValueCellFull!969) mapValue!3728)) b!97338))

(assert (= (and b!97329 ((_ is ValueCellFull!969) mapDefault!3727)) b!97326))

(assert (= b!97336 b!97329))

(assert (= b!97328 b!97336))

(assert (= b!97330 b!97328))

(assert (= start!11658 b!97330))

(assert (= (and b!97335 condMapEmpty!3728) mapIsEmpty!3727))

(assert (= (and b!97335 (not condMapEmpty!3728)) mapNonEmpty!3728))

(assert (= (and mapNonEmpty!3728 ((_ is ValueCellFull!969) mapValue!3727)) b!97340))

(assert (= (and b!97335 ((_ is ValueCellFull!969) mapDefault!3728)) b!97325))

(assert (= b!97337 b!97335))

(assert (= start!11658 b!97337))

(declare-fun b_lambda!4347 () Bool)

(assert (=> (not b_lambda!4347) (not b!97323)))

(declare-fun t!5553 () Bool)

(declare-fun tb!1917 () Bool)

(assert (=> (and b!97336 (= (defaultEntry!2478 (v!2795 (underlying!336 thiss!992))) (defaultEntry!2478 (v!2795 (underlying!336 thiss!992)))) t!5553) tb!1917))

(declare-fun result!3251 () Bool)

(assert (=> tb!1917 (= result!3251 tp_is_empty!2625)))

(assert (=> b!97323 t!5553))

(declare-fun b_and!5973 () Bool)

(assert (= b_and!5969 (and (=> t!5553 result!3251) b_and!5973)))

(declare-fun t!5555 () Bool)

(declare-fun tb!1919 () Bool)

(assert (=> (and b!97337 (= (defaultEntry!2478 newMap!16) (defaultEntry!2478 (v!2795 (underlying!336 thiss!992)))) t!5555) tb!1919))

(declare-fun result!3255 () Bool)

(assert (= result!3255 result!3251))

(assert (=> b!97323 t!5555))

(declare-fun b_and!5975 () Bool)

(assert (= b_and!5971 (and (=> t!5555 result!3255) b_and!5975)))

(declare-fun m!106457 () Bool)

(assert (=> start!11658 m!106457))

(declare-fun m!106459 () Bool)

(assert (=> mapNonEmpty!3728 m!106459))

(declare-fun m!106461 () Bool)

(assert (=> b!97337 m!106461))

(declare-fun m!106463 () Bool)

(assert (=> b!97337 m!106463))

(declare-fun m!106465 () Bool)

(assert (=> mapNonEmpty!3727 m!106465))

(declare-fun m!106467 () Bool)

(assert (=> b!97332 m!106467))

(declare-fun m!106469 () Bool)

(assert (=> b!97336 m!106469))

(declare-fun m!106471 () Bool)

(assert (=> b!97336 m!106471))

(declare-fun m!106473 () Bool)

(assert (=> b!97323 m!106473))

(declare-fun m!106475 () Bool)

(assert (=> b!97323 m!106475))

(declare-fun m!106477 () Bool)

(assert (=> b!97323 m!106477))

(declare-fun m!106479 () Bool)

(assert (=> b!97323 m!106479))

(declare-fun m!106481 () Bool)

(assert (=> b!97323 m!106481))

(assert (=> b!97323 m!106473))

(assert (=> b!97323 m!106479))

(assert (=> b!97323 m!106473))

(assert (=> b!97323 m!106481))

(declare-fun m!106483 () Bool)

(assert (=> b!97323 m!106483))

(assert (=> b!97323 m!106477))

(assert (=> b!97327 m!106473))

(declare-fun m!106485 () Bool)

(assert (=> b!97327 m!106485))

(declare-fun m!106487 () Bool)

(assert (=> b!97327 m!106487))

(declare-fun m!106489 () Bool)

(assert (=> b!97341 m!106489))

(declare-fun m!106491 () Bool)

(assert (=> b!97339 m!106491))

(declare-fun m!106493 () Bool)

(assert (=> b!97339 m!106493))

(assert (=> b!97339 m!106473))

(declare-fun m!106495 () Bool)

(assert (=> b!97339 m!106495))

(assert (=> b!97339 m!106473))

(assert (=> b!97339 m!106473))

(declare-fun m!106497 () Bool)

(assert (=> b!97339 m!106497))

(assert (=> b!97339 m!106473))

(declare-fun m!106499 () Bool)

(assert (=> b!97339 m!106499))

(check-sat (not b_next!2417) (not b!97341) (not b!97339) (not b_lambda!4347) (not b!97323) b_and!5973 (not mapNonEmpty!3727) tp_is_empty!2625 (not b_next!2419) (not b!97337) (not mapNonEmpty!3728) (not b!97327) (not start!11658) (not b!97332) b_and!5975 (not b!97336))
(check-sat b_and!5973 b_and!5975 (not b_next!2417) (not b_next!2419))

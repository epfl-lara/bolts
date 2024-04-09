; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12148 () Bool)

(assert start!12148)

(declare-fun b!102407 () Bool)

(declare-fun b_free!2477 () Bool)

(declare-fun b_next!2477 () Bool)

(assert (=> b!102407 (= b_free!2477 (not b_next!2477))))

(declare-fun tp!9743 () Bool)

(declare-fun b_and!6313 () Bool)

(assert (=> b!102407 (= tp!9743 b_and!6313)))

(declare-fun b!102423 () Bool)

(declare-fun b_free!2479 () Bool)

(declare-fun b_next!2479 () Bool)

(assert (=> b!102423 (= b_free!2479 (not b_next!2479))))

(declare-fun tp!9744 () Bool)

(declare-fun b_and!6315 () Bool)

(assert (=> b!102423 (= tp!9744 b_and!6315)))

(declare-fun e!66661 () Bool)

(declare-datatypes ((V!3187 0))(
  ( (V!3188 (val!1372 Int)) )
))
(declare-datatypes ((array!4296 0))(
  ( (array!4297 (arr!2038 (Array (_ BitVec 32) (_ BitVec 64))) (size!2292 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!984 0))(
  ( (ValueCellFull!984 (v!2856 V!3187)) (EmptyCell!984) )
))
(declare-datatypes ((array!4298 0))(
  ( (array!4299 (arr!2039 (Array (_ BitVec 32) ValueCell!984)) (size!2293 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!876 0))(
  ( (LongMapFixedSize!877 (defaultEntry!2549 Int) (mask!6678 (_ BitVec 32)) (extraKeys!2358 (_ BitVec 32)) (zeroValue!2426 V!3187) (minValue!2426 V!3187) (_size!487 (_ BitVec 32)) (_keys!4251 array!4296) (_values!2532 array!4298) (_vacant!487 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!680 0))(
  ( (Cell!681 (v!2857 LongMapFixedSize!876)) )
))
(declare-datatypes ((LongMap!680 0))(
  ( (LongMap!681 (underlying!351 Cell!680)) )
))
(declare-fun thiss!992 () LongMap!680)

(declare-fun e!66666 () Bool)

(declare-fun tp_is_empty!2655 () Bool)

(declare-fun array_inv!1225 (array!4296) Bool)

(declare-fun array_inv!1226 (array!4298) Bool)

(assert (=> b!102407 (= e!66661 (and tp!9743 tp_is_empty!2655 (array_inv!1225 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) (array_inv!1226 (_values!2532 (v!2857 (underlying!351 thiss!992)))) e!66666))))

(declare-fun b!102408 () Bool)

(declare-fun e!66652 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!102408 (= e!66652 (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000))))

(declare-fun b!102410 () Bool)

(declare-fun e!66654 () Bool)

(assert (=> b!102410 (= e!66654 tp_is_empty!2655)))

(declare-fun b!102411 () Bool)

(declare-fun res!51245 () Bool)

(assert (=> b!102411 (=> (not res!51245) (not e!66652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!102411 (= res!51245 (validMask!0 (mask!6678 (v!2857 (underlying!351 thiss!992)))))))

(declare-fun b!102412 () Bool)

(declare-fun e!66664 () Bool)

(declare-fun e!66659 () Bool)

(declare-fun mapRes!3846 () Bool)

(assert (=> b!102412 (= e!66664 (and e!66659 mapRes!3846))))

(declare-fun condMapEmpty!3845 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!876)

(declare-fun mapDefault!3845 () ValueCell!984)

(assert (=> b!102412 (= condMapEmpty!3845 (= (arr!2039 (_values!2532 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!984)) mapDefault!3845)))))

(declare-fun b!102413 () Bool)

(declare-fun e!66658 () Bool)

(declare-fun e!66655 () Bool)

(assert (=> b!102413 (= e!66658 e!66655)))

(declare-fun b!102414 () Bool)

(declare-fun res!51241 () Bool)

(assert (=> b!102414 (=> (not res!51241) (not e!66652))))

(assert (=> b!102414 (= res!51241 (and (= (size!2293 (_values!2532 (v!2857 (underlying!351 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6678 (v!2857 (underlying!351 thiss!992))))) (= (size!2292 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) (size!2293 (_values!2532 (v!2857 (underlying!351 thiss!992))))) (bvsge (mask!6678 (v!2857 (underlying!351 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2358 (v!2857 (underlying!351 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2358 (v!2857 (underlying!351 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!102415 () Bool)

(declare-fun res!51248 () Bool)

(assert (=> b!102415 (=> (not res!51248) (not e!66652))))

(declare-datatypes ((List!1623 0))(
  ( (Nil!1620) (Cons!1619 (h!2215 (_ BitVec 64)) (t!5661 List!1623)) )
))
(declare-fun arrayNoDuplicates!0 (array!4296 (_ BitVec 32) List!1623) Bool)

(assert (=> b!102415 (= res!51248 (arrayNoDuplicates!0 (_keys!4251 (v!2857 (underlying!351 thiss!992))) #b00000000000000000000000000000000 Nil!1620))))

(declare-fun b!102416 () Bool)

(declare-fun e!66657 () Bool)

(assert (=> b!102416 (= e!66657 tp_is_empty!2655)))

(declare-fun b!102417 () Bool)

(declare-fun res!51247 () Bool)

(declare-fun e!66665 () Bool)

(assert (=> b!102417 (=> (not res!51247) (not e!66665))))

(assert (=> b!102417 (= res!51247 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6678 newMap!16)) (_size!487 (v!2857 (underlying!351 thiss!992)))))))

(declare-fun b!102418 () Bool)

(declare-datatypes ((Unit!3137 0))(
  ( (Unit!3138) )
))
(declare-fun e!66651 () Unit!3137)

(declare-fun Unit!3139 () Unit!3137)

(assert (=> b!102418 (= e!66651 Unit!3139)))

(declare-fun b!102419 () Bool)

(declare-fun e!66662 () Bool)

(assert (=> b!102419 (= e!66665 e!66662)))

(declare-fun res!51249 () Bool)

(assert (=> b!102419 (=> (not res!51249) (not e!66662))))

(declare-datatypes ((tuple2!2378 0))(
  ( (tuple2!2379 (_1!1199 (_ BitVec 64)) (_2!1199 V!3187)) )
))
(declare-datatypes ((List!1624 0))(
  ( (Nil!1621) (Cons!1620 (h!2216 tuple2!2378) (t!5662 List!1624)) )
))
(declare-datatypes ((ListLongMap!1565 0))(
  ( (ListLongMap!1566 (toList!798 List!1624)) )
))
(declare-fun lt!52064 () ListLongMap!1565)

(declare-fun lt!52061 () ListLongMap!1565)

(assert (=> b!102419 (= res!51249 (and (= lt!52064 lt!52061) (not (= (select (arr!2038 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2038 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1269 (LongMapFixedSize!876) ListLongMap!1565)

(assert (=> b!102419 (= lt!52061 (map!1269 newMap!16))))

(declare-fun getCurrentListMap!478 (array!4296 array!4298 (_ BitVec 32) (_ BitVec 32) V!3187 V!3187 (_ BitVec 32) Int) ListLongMap!1565)

(assert (=> b!102419 (= lt!52064 (getCurrentListMap!478 (_keys!4251 (v!2857 (underlying!351 thiss!992))) (_values!2532 (v!2857 (underlying!351 thiss!992))) (mask!6678 (v!2857 (underlying!351 thiss!992))) (extraKeys!2358 (v!2857 (underlying!351 thiss!992))) (zeroValue!2426 (v!2857 (underlying!351 thiss!992))) (minValue!2426 (v!2857 (underlying!351 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2549 (v!2857 (underlying!351 thiss!992)))))))

(declare-fun b!102420 () Bool)

(assert (=> b!102420 (= e!66655 e!66661)))

(declare-fun b!102421 () Bool)

(declare-fun Unit!3140 () Unit!3137)

(assert (=> b!102421 (= e!66651 Unit!3140)))

(declare-fun lt!52063 () Unit!3137)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!103 (array!4296 array!4298 (_ BitVec 32) (_ BitVec 32) V!3187 V!3187 (_ BitVec 64) (_ BitVec 32) Int) Unit!3137)

(assert (=> b!102421 (= lt!52063 (lemmaListMapContainsThenArrayContainsFrom!103 (_keys!4251 (v!2857 (underlying!351 thiss!992))) (_values!2532 (v!2857 (underlying!351 thiss!992))) (mask!6678 (v!2857 (underlying!351 thiss!992))) (extraKeys!2358 (v!2857 (underlying!351 thiss!992))) (zeroValue!2426 (v!2857 (underlying!351 thiss!992))) (minValue!2426 (v!2857 (underlying!351 thiss!992))) (select (arr!2038 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2549 (v!2857 (underlying!351 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!102421 (arrayContainsKey!0 (_keys!4251 (v!2857 (underlying!351 thiss!992))) (select (arr!2038 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!52060 () Unit!3137)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4296 (_ BitVec 32) (_ BitVec 32)) Unit!3137)

(assert (=> b!102421 (= lt!52060 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4251 (v!2857 (underlying!351 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> b!102421 (arrayNoDuplicates!0 (_keys!4251 (v!2857 (underlying!351 thiss!992))) from!355 Nil!1620)))

(declare-fun lt!52059 () Unit!3137)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4296 (_ BitVec 32) (_ BitVec 64) List!1623) Unit!3137)

(assert (=> b!102421 (= lt!52059 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4251 (v!2857 (underlying!351 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2038 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) from!355) (Cons!1619 (select (arr!2038 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) from!355) Nil!1620)))))

(assert (=> b!102421 false))

(declare-fun mapNonEmpty!3845 () Bool)

(declare-fun mapRes!3845 () Bool)

(declare-fun tp!9741 () Bool)

(declare-fun e!66656 () Bool)

(assert (=> mapNonEmpty!3845 (= mapRes!3845 (and tp!9741 e!66656))))

(declare-fun mapRest!3846 () (Array (_ BitVec 32) ValueCell!984))

(declare-fun mapValue!3846 () ValueCell!984)

(declare-fun mapKey!3846 () (_ BitVec 32))

(assert (=> mapNonEmpty!3845 (= (arr!2039 (_values!2532 (v!2857 (underlying!351 thiss!992)))) (store mapRest!3846 mapKey!3846 mapValue!3846))))

(declare-fun b!102422 () Bool)

(declare-fun res!51243 () Bool)

(assert (=> b!102422 (=> (not res!51243) (not e!66665))))

(declare-fun valid!396 (LongMapFixedSize!876) Bool)

(assert (=> b!102422 (= res!51243 (valid!396 newMap!16))))

(declare-fun b!102409 () Bool)

(declare-fun res!51244 () Bool)

(assert (=> b!102409 (=> (not res!51244) (not e!66665))))

(assert (=> b!102409 (= res!51244 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2292 (_keys!4251 (v!2857 (underlying!351 thiss!992)))))))))

(declare-fun res!51242 () Bool)

(assert (=> start!12148 (=> (not res!51242) (not e!66665))))

(declare-fun valid!397 (LongMap!680) Bool)

(assert (=> start!12148 (= res!51242 (valid!397 thiss!992))))

(assert (=> start!12148 e!66665))

(assert (=> start!12148 e!66658))

(assert (=> start!12148 true))

(declare-fun e!66660 () Bool)

(assert (=> start!12148 e!66660))

(assert (=> b!102423 (= e!66660 (and tp!9744 tp_is_empty!2655 (array_inv!1225 (_keys!4251 newMap!16)) (array_inv!1226 (_values!2532 newMap!16)) e!66664))))

(declare-fun mapNonEmpty!3846 () Bool)

(declare-fun tp!9742 () Bool)

(assert (=> mapNonEmpty!3846 (= mapRes!3846 (and tp!9742 e!66654))))

(declare-fun mapValue!3845 () ValueCell!984)

(declare-fun mapRest!3845 () (Array (_ BitVec 32) ValueCell!984))

(declare-fun mapKey!3845 () (_ BitVec 32))

(assert (=> mapNonEmpty!3846 (= (arr!2039 (_values!2532 newMap!16)) (store mapRest!3845 mapKey!3845 mapValue!3845))))

(declare-fun b!102424 () Bool)

(assert (=> b!102424 (= e!66666 (and e!66657 mapRes!3845))))

(declare-fun condMapEmpty!3846 () Bool)

(declare-fun mapDefault!3846 () ValueCell!984)

(assert (=> b!102424 (= condMapEmpty!3846 (= (arr!2039 (_values!2532 (v!2857 (underlying!351 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!984)) mapDefault!3846)))))

(declare-fun b!102425 () Bool)

(assert (=> b!102425 (= e!66659 tp_is_empty!2655)))

(declare-fun b!102426 () Bool)

(assert (=> b!102426 (= e!66662 e!66652)))

(declare-fun res!51246 () Bool)

(assert (=> b!102426 (=> (not res!51246) (not e!66652))))

(declare-datatypes ((tuple2!2380 0))(
  ( (tuple2!2381 (_1!1200 Bool) (_2!1200 LongMapFixedSize!876)) )
))
(declare-fun lt!52062 () tuple2!2380)

(assert (=> b!102426 (= res!51246 (and (_1!1200 lt!52062) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!52058 () Unit!3137)

(assert (=> b!102426 (= lt!52058 e!66651)))

(declare-fun c!17660 () Bool)

(declare-fun contains!819 (ListLongMap!1565 (_ BitVec 64)) Bool)

(assert (=> b!102426 (= c!17660 (contains!819 lt!52061 (select (arr!2038 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) from!355)))))

(declare-fun update!152 (LongMapFixedSize!876 (_ BitVec 64) V!3187) tuple2!2380)

(declare-fun get!1322 (ValueCell!984 V!3187) V!3187)

(declare-fun dynLambda!384 (Int (_ BitVec 64)) V!3187)

(assert (=> b!102426 (= lt!52062 (update!152 newMap!16 (select (arr!2038 (_keys!4251 (v!2857 (underlying!351 thiss!992)))) from!355) (get!1322 (select (arr!2039 (_values!2532 (v!2857 (underlying!351 thiss!992)))) from!355) (dynLambda!384 (defaultEntry!2549 (v!2857 (underlying!351 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!3845 () Bool)

(assert (=> mapIsEmpty!3845 mapRes!3846))

(declare-fun mapIsEmpty!3846 () Bool)

(assert (=> mapIsEmpty!3846 mapRes!3845))

(declare-fun b!102427 () Bool)

(assert (=> b!102427 (= e!66656 tp_is_empty!2655)))

(declare-fun b!102428 () Bool)

(declare-fun res!51250 () Bool)

(assert (=> b!102428 (=> (not res!51250) (not e!66652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4296 (_ BitVec 32)) Bool)

(assert (=> b!102428 (= res!51250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4251 (v!2857 (underlying!351 thiss!992))) (mask!6678 (v!2857 (underlying!351 thiss!992)))))))

(assert (= (and start!12148 res!51242) b!102409))

(assert (= (and b!102409 res!51244) b!102422))

(assert (= (and b!102422 res!51243) b!102417))

(assert (= (and b!102417 res!51247) b!102419))

(assert (= (and b!102419 res!51249) b!102426))

(assert (= (and b!102426 c!17660) b!102421))

(assert (= (and b!102426 (not c!17660)) b!102418))

(assert (= (and b!102426 res!51246) b!102411))

(assert (= (and b!102411 res!51245) b!102414))

(assert (= (and b!102414 res!51241) b!102428))

(assert (= (and b!102428 res!51250) b!102415))

(assert (= (and b!102415 res!51248) b!102408))

(assert (= (and b!102424 condMapEmpty!3846) mapIsEmpty!3846))

(assert (= (and b!102424 (not condMapEmpty!3846)) mapNonEmpty!3845))

(get-info :version)

(assert (= (and mapNonEmpty!3845 ((_ is ValueCellFull!984) mapValue!3846)) b!102427))

(assert (= (and b!102424 ((_ is ValueCellFull!984) mapDefault!3846)) b!102416))

(assert (= b!102407 b!102424))

(assert (= b!102420 b!102407))

(assert (= b!102413 b!102420))

(assert (= start!12148 b!102413))

(assert (= (and b!102412 condMapEmpty!3845) mapIsEmpty!3845))

(assert (= (and b!102412 (not condMapEmpty!3845)) mapNonEmpty!3846))

(assert (= (and mapNonEmpty!3846 ((_ is ValueCellFull!984) mapValue!3845)) b!102410))

(assert (= (and b!102412 ((_ is ValueCellFull!984) mapDefault!3845)) b!102425))

(assert (= b!102423 b!102412))

(assert (= start!12148 b!102423))

(declare-fun b_lambda!4603 () Bool)

(assert (=> (not b_lambda!4603) (not b!102426)))

(declare-fun t!5658 () Bool)

(declare-fun tb!2005 () Bool)

(assert (=> (and b!102407 (= (defaultEntry!2549 (v!2857 (underlying!351 thiss!992))) (defaultEntry!2549 (v!2857 (underlying!351 thiss!992)))) t!5658) tb!2005))

(declare-fun result!3377 () Bool)

(assert (=> tb!2005 (= result!3377 tp_is_empty!2655)))

(assert (=> b!102426 t!5658))

(declare-fun b_and!6317 () Bool)

(assert (= b_and!6313 (and (=> t!5658 result!3377) b_and!6317)))

(declare-fun tb!2007 () Bool)

(declare-fun t!5660 () Bool)

(assert (=> (and b!102423 (= (defaultEntry!2549 newMap!16) (defaultEntry!2549 (v!2857 (underlying!351 thiss!992)))) t!5660) tb!2007))

(declare-fun result!3381 () Bool)

(assert (= result!3381 result!3377))

(assert (=> b!102426 t!5660))

(declare-fun b_and!6319 () Bool)

(assert (= b_and!6315 (and (=> t!5660 result!3381) b_and!6319)))

(declare-fun m!113495 () Bool)

(assert (=> b!102407 m!113495))

(declare-fun m!113497 () Bool)

(assert (=> b!102407 m!113497))

(declare-fun m!113499 () Bool)

(assert (=> b!102419 m!113499))

(declare-fun m!113501 () Bool)

(assert (=> b!102419 m!113501))

(declare-fun m!113503 () Bool)

(assert (=> b!102419 m!113503))

(declare-fun m!113505 () Bool)

(assert (=> b!102422 m!113505))

(declare-fun m!113507 () Bool)

(assert (=> b!102411 m!113507))

(declare-fun m!113509 () Bool)

(assert (=> b!102415 m!113509))

(declare-fun m!113511 () Bool)

(assert (=> b!102421 m!113511))

(declare-fun m!113513 () Bool)

(assert (=> b!102421 m!113513))

(assert (=> b!102421 m!113499))

(declare-fun m!113515 () Bool)

(assert (=> b!102421 m!113515))

(assert (=> b!102421 m!113499))

(assert (=> b!102421 m!113499))

(declare-fun m!113517 () Bool)

(assert (=> b!102421 m!113517))

(assert (=> b!102421 m!113499))

(declare-fun m!113519 () Bool)

(assert (=> b!102421 m!113519))

(declare-fun m!113521 () Bool)

(assert (=> mapNonEmpty!3846 m!113521))

(declare-fun m!113523 () Bool)

(assert (=> b!102426 m!113523))

(declare-fun m!113525 () Bool)

(assert (=> b!102426 m!113525))

(declare-fun m!113527 () Bool)

(assert (=> b!102426 m!113527))

(assert (=> b!102426 m!113525))

(assert (=> b!102426 m!113499))

(assert (=> b!102426 m!113527))

(declare-fun m!113529 () Bool)

(assert (=> b!102426 m!113529))

(assert (=> b!102426 m!113523))

(assert (=> b!102426 m!113499))

(assert (=> b!102426 m!113499))

(declare-fun m!113531 () Bool)

(assert (=> b!102426 m!113531))

(declare-fun m!113533 () Bool)

(assert (=> b!102428 m!113533))

(declare-fun m!113535 () Bool)

(assert (=> b!102423 m!113535))

(declare-fun m!113537 () Bool)

(assert (=> b!102423 m!113537))

(declare-fun m!113539 () Bool)

(assert (=> start!12148 m!113539))

(declare-fun m!113541 () Bool)

(assert (=> mapNonEmpty!3845 m!113541))

(check-sat (not b!102407) (not mapNonEmpty!3845) (not b_next!2477) b_and!6317 (not b!102421) (not b!102419) (not mapNonEmpty!3846) b_and!6319 (not b!102422) (not start!12148) (not b!102415) tp_is_empty!2655 (not b!102411) (not b!102428) (not b!102423) (not b_lambda!4603) (not b!102426) (not b_next!2479))
(check-sat b_and!6317 b_and!6319 (not b_next!2477) (not b_next!2479))
